Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B909210430F
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 19:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=81FnWpGnBCEFR69rmSf75HUzvS/QBZXSE4rISfOiuY0=; b=AGxCJaf7aUm8pA
	Ul5QdKGYDt38l7RSEh+t1/X677OkhyQBU76h33dYM7pc5hDzZ9BqqXrz6H1pCJSalkITHm+XDVvQq
	We5Wvnf6xcFrIRCgXHk57EUByxCg8PFIijT5tBhSULunj3TsQa03gJtuxRgf29fWnScrxbCsCqlY8
	5S/XrBwGZ32h+eGLr08xYnumpM4fK3PIWbYXRC9j0wWL5X3CqEnFIZqqpfYzQ3CDSx3n5EGgfAGGb
	wC3TGlpWTvZGmQ7E9lnKdzdV4ny2nNNaJv+tNTWMOzaTw0b5vKEGNZhHut+90A+3lX6ukqJYc+IKw
	PtCDvG8l1F99vm8LdqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUSL-0003KM-0B; Wed, 20 Nov 2019 18:11:57 +0000
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUS5-0003FO-GL
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 18:11:44 +0000
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
 id BD7EB843602; Wed, 20 Nov 2019 19:11:36 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Felix Fietkau <nbd@nbd.name>
Date: Wed, 20 Nov 2019 19:11:31 +0100
Message-Id: <20191120181131.2622-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_101141_699675_29737303 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.130.110.236 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH netifd] interface: warn if ip6hint is
 truncated
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When for example a /60 is assigned to a network the last 4 bits of the
ip6hint are unused. Emit a warning if any of these unused bits is set as
it indicates that someone didn't understand how the hint is used. (As I
did earlier today resulting in spending some time understanding the
code.)
---
 interface.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/interface.c b/interface.c
index 028dc6ccd5e5..839de0bb88ad 100644
--- a/interface.c
+++ b/interface.c
@@ -863,9 +863,15 @@ interface_alloc(const char *name, struct blob_attr *config, bool dynamic)
 	}
 
 	iface->assignment_hint = -1;
-	if ((cur = tb[IFACE_ATTR_IP6HINT]))
-		iface->assignment_hint = strtol(blobmsg_get_string(cur), NULL, 16) &
-				~((1 << (64 - iface->assignment_length)) - 1);
+	if ((cur = tb[IFACE_ATTR_IP6HINT])) {
+		int32_t assignment_hint = strtol(blobmsg_get_string(cur), NULL, 16);
+
+		iface->assignment_hint = assignment_hint & ~((1 << (64 - iface->assignment_length)) - 1);
+
+		if (iface->assignment_hint != assignment_hint)
+			netifd_log_message(L_WARNING, "Ignoring set bits of assignment hint for interface '%s'\n",
+					   iface->name);
+	}
 
 	if ((cur = tb[IFACE_ATTR_IP6CLASS]))
 		interface_add_assignment_classes(iface, cur);
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
