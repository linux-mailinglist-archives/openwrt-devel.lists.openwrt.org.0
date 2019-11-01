Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6802EC67C
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 17:17:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wvoRG8GCOddoTy5nKGmzSTRhOsXeXXQpI0UuevUfvKw=; b=qFevVIpZRSn7Ef
	jKoyjh+/1eZVtAsehcWU0SLnEwdQlPfKhPzH3FKpl9sTNNh3ebMjZtG0RprX/NeEww8Gl2IgPugv7
	8YejtnDhCIFjiGjLjOxEWIb/19M6f7xzMNEadGYfXmi8x+wvYUcywv3fG68cCeVQOGw0PNG/f4RHn
	45DAVug0osp6s3RPJsSMCBQmK5eegHq9ikOV/T6V7TemAoKIYAfcKkK3udcTco+Ivs0GmIoMlCQw8
	Dlet5juVXaSoUNdxo8xJXdA2DFfMHzJsF4I7SxMPxgpf7UVJ3QB0ntBi/zaHhaYkjc+4aAKa7wSgB
	1gGunqcjP3Xp3fkBW6GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZbh-0004qg-F9; Fri, 01 Nov 2019 16:17:01 +0000
Received: from mout-u-107.mailbox.org ([2001:67c:2050:1::465:107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZbb-0004pq-0C
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 16:16:56 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 474S4j2rmKzKngw;
 Fri,  1 Nov 2019 17:16:53 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id ZFxpccoTfW1W; Fri,  1 Nov 2019 17:16:50 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 17:16:39 +0100
Message-Id: <20191101161639.26034-2-hauke@hauke-m.de>
In-Reply-To: <20191101161639.26034-1-hauke@hauke-m.de>
References: <20191101161639.26034-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_091655_188279_DDD9A4A0 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH procd 2/2] instance: Warn about unexpected
 number of parameters
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Warn when the number of allocated parameters for the jail argv does not
match the number of used parameters. This normally leads to a buffer
overflow.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 service/instance.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/service/instance.c b/service/instance.c
index 4bb2207..3098ff3 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -337,8 +337,12 @@ instance_run(struct service_instance *in, int _stdout, int _stderr)
 		ULOG_WARN("Seccomp support for %s::%s not available\n", in->srv->name, in->name);
 #endif
 
-	if (in->has_jail)
+	if (in->has_jail) {
 		argc = jail_run(in, argv);
+		if (argc != in->jail.argc)
+			ULOG_WARN("expected %i jail params, used %i for %s::%s\n",
+				in->jail.argc, argc, in->srv->name, in->name);
+	}
 
 	blobmsg_for_each_attr(cur, in->command, rem)
 		argv[argc++] = blobmsg_data(cur);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
