Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BFD194BED
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 00:07:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Quc+yalvRpFenNwbc5yxHcGoKpxJsTpsir7imo+PlM=; b=VNslpRkDw7aHCP
	SHU7wLeYHLxJcz4tcsl+iw5q50Q8DpSCZbmcp2hwO1RvRvPjd5bD05FJd7LGzgA/VdjVa57I38pmN
	bs96GB1Yv0Q1YW+FvSdvh9W+Yot2iRAZwoLmosT02730ej5oBbXpJDJJkkAYodBBWJTcEgXHwcKJ0
	3tqHK12+WsVlZKIK+55gXLZF8rsAuvzNFDLi5b2577WN8snTalKfDvHReVyYOk37CJF/vYY+Gv/ed
	KGjMx4BPnKX/Q7EyjPC3AXXtnzWfR8H2oXkd5EpHD8TW5+9mbU2sqyq4+7DjMtJaxGU4zpOKNicb3
	g8j1jTtCdj4CLR3scG3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbas-0003M6-6K; Thu, 26 Mar 2020 23:07:22 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbam-0003Ld-9K
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 23:07:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id np9so3087067pjb.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 16:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Kx6PlBYfSJWKpz5cjDEcGsasLAMIqlnr8RtXjT1rbc=;
 b=XbX1DBEosObQn6EQmW3LBtlon3Diks7JzQdHXVqqICNFfVwJDxBtr5hOIDFW5er71V
 WmhJHUp/vCYAUJUbK9FB9HIqrbolNWYsuGMeAtMk9ihbO1xg+MKc+R8MKBIc/D5CFCw9
 88UwN2T+iDtCYuoPZtyKGURsQwJR/qPTJyKLUnJ41Jd70t9Cqa6cYIg0O+1qpfmTRnPP
 Tt+s/jCFZsFk/vV1b0yPZbUQLcKSCAEF2g3Zb8+AFPf2FH5phUjMj2LMd9NiZhlB9HXx
 mi4xX527SFdG+qXW/6m9VifBWAO5KwCQMHw5zBsXSsl/uol6VZFKB+flBQDtHxUfcySR
 oFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9Kx6PlBYfSJWKpz5cjDEcGsasLAMIqlnr8RtXjT1rbc=;
 b=aVya2QlmN9rEf94VyFRBDdlJGP/DrM0cznEYbZrezAYBxgWy0MuugNDvcjx5K376z/
 LOs9lM4QloutQIdKE2lZzphNlbNOHaTnUkKqMPbP55UrsGf9BhyiekHWW07ZR2hglzpY
 xCSh7QnQBeU/JZ3MVyba+eJZlrwnMbbWdlAmN8fjpNK/1PvutbxnKbVUXP61Gx2iqhdh
 P9n+LV/fDz+ePCwn1/1067evZgA+u1ZGVTr4+45HDsAwlVuO9Xfscea5vH2GVNRW+G4j
 gvZUSsmxFUHoOfjyNyMS5ZCXA4/sru/YmF7x69OJd8XUi+QqqSxm6/HJnySG+nBB71Uh
 VHcg==
X-Gm-Message-State: ANhLgQ3PTJpNIreq5PxZCkzH0n0eRJYpvzsMgbuXevFZw/C5WzB2Bpsb
 Ka+uXjDFrhpPVMeWn2FkH8oqDLUhVgY=
X-Google-Smtp-Source: ADFU+vv6OlnY70LuNbD+6JI7KW2jJNJJi65brA150DacqKQdNZx29dbYGaOySBmBRXUhGYt9gaZ43A==
X-Received: by 2002:a17:90a:7f93:: with SMTP id
 m19mr2463785pjl.92.1585264034680; 
 Thu, 26 Mar 2020 16:07:14 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id s13sm2531072pfm.195.2020.03.26.16.07.13
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 16:07:14 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Mar 2020 16:07:12 -0700
Message-Id: <20200326230712.186209-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_160716_352470_77661435 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] odhcpd: fix compilation with musl 1.2.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SYS_clock_gettime is gone with musl 1.2.0. Switched to the function.

Also fixed two format strings that fail as time_t is 64-bit with 1.2.0.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 src/dhcpv6-ia.c | 8 ++++----
 src/odhcpd.c    | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/dhcpv6-ia.c b/src/dhcpv6-ia.c
index 1a13945..9f5c77e 100644
--- a/src/dhcpv6-ia.c
+++ b/src/dhcpv6-ia.c
@@ -338,12 +338,12 @@ void dhcpv6_ia_write_statefile(void)
 					odhcpd_hexlify(duidbuf, ctxt.c->clid_data, ctxt.c->clid_len);
 
 					/* iface DUID iaid hostname lifetime assigned length [addrs...] */
-					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %ld %x %u ",
+					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s " PRId64 " %x %u ",
 								ctxt.iface->ifname, duidbuf, ntohl(ctxt.c->iaid),
 								(ctxt.c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
 								(ctxt.c->hostname ? ctxt.c->hostname : "-"),
 								(ctxt.c->valid_until > now ?
-									(ctxt.c->valid_until - now + wall_time) :
+									(int64_t)(ctxt.c->valid_until - now + wall_time) :
 									(INFINITE_VALID(ctxt.c->valid_until) ? -1 : 0)),
 								ctxt.c->assigned, (unsigned)ctxt.c->length);
 
@@ -368,12 +368,12 @@ void dhcpv6_ia_write_statefile(void)
 					odhcpd_hexlify(duidbuf, c->hwaddr, sizeof(c->hwaddr));
 
 					/* iface DUID iaid hostname lifetime assigned length [addrs...] */
-					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %ld %x 32 ",
+					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s " PRId64 " %x 32 ",
 								ctxt.iface->ifname, duidbuf,
 								(c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
 								(c->hostname ? c->hostname : "-"),
 								(c->valid_until > now ?
-									(c->valid_until - now + wall_time) :
+									(int64_t)(c->valid_until - now + wall_time) :
 									(INFINITE_VALID(c->valid_until) ? -1 : 0)),
 								ntohl(c->addr));
 
diff --git a/src/odhcpd.c b/src/odhcpd.c
index 4b8e589..26094b1 100644
--- a/src/odhcpd.c
+++ b/src/odhcpd.c
@@ -440,7 +440,7 @@ int odhcpd_urandom(void *data, size_t len)
 time_t odhcpd_time(void)
 {
 	struct timespec ts;
-	syscall(SYS_clock_gettime, CLOCK_MONOTONIC, &ts);
+	clock_gettime(CLOCK_MONOTONIC, &ts);
 	return ts.tv_sec;
 }
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
