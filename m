Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9F2115C19
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 12:46:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T3hfeTXBRWevGDhYvyU9MG1ObBtcuJdbcYokhF2sddg=; b=Hfw/8BEcAn6Htb
	5ZsuencbSanmDI7L9ZWS1cuU721GHB/J2GPS9UhVQ24S/W2eCuKoXbA5gEsR2uXrUWCfOpWv0bxU+
	/ObcF5C4gAy4/TCgbM//ouYwF0c5pkgj1tIU1qPyqqTjeId3US6JxfDHB7qzlGZmPpKADu/yK6Yo6
	JPOh2jDuarbPTmfvFGhS9lozxm2thMuIFahcgySS8cef10K2/OnB/LWAIubnKpd0MybsLFBds5zo0
	fx2lPUzAEX2W+a5GzTcaB4+vzAm+I/9Gj+POZVC53vRQG6I+VSSttgJsTy+z/OLF/P5DStMrCEMKH
	y6dh4hPu0lVUOZM4Vs5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idYXh-00020a-MF; Sat, 07 Dec 2019 11:46:33 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idYXb-00020F-J2
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 11:46:29 +0000
Received: from localhost.localdomain (ip5f5ac5d9.dynamic.kabel-deutschland.de
 [95.90.197.217]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id xB7BjnPP031380
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Sat, 7 Dec 2019 12:46:20 +0100
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 12:45:47 +0100
Message-Id: <20191207114547.5209-1-peter.stadler@student.uibk.ac.at>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_034627_942441_52D7BCC9 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ubus: make libubus ready for linking into
 C++
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
Cc: Peter Stadler <peter.stadler@student.uibk.ac.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Use extern "C" { ... } if using libubus.h in a C++ project.

Signed-off-by: Peter Stadler <peter.stadler@student.uibk.ac.at>
---
 libubus.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/libubus.h b/libubus.h
index dc42ea7..6925514 100644
--- a/libubus.h
+++ b/libubus.h
@@ -14,6 +14,10 @@
 #ifndef __LIBUBUS_H
 #define __LIBUBUS_H
 
+#ifdef __cplusplus
+extern "C" {
+#endif
+
 #include <libubox/avl.h>
 #include <libubox/list.h>
 #include <libubox/blobmsg.h>
@@ -414,4 +418,8 @@ static inline int ubus_unregister_event_handler(struct ubus_context *ctx,
     return ubus_remove_object(ctx, &ev->obj);
 }
 
+#ifdef __cplusplus
+}
+#endif
+
 #endif
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
