Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED6C1ACC2
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 17:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G88nzVqE5WmF0yv85KDRVLw+FxrwKt/Gm637yFNtSCI=; b=JPYh+shvuYpkyB
	P+SPExfD0MKLJqYzbd+06ZjMRdNnruMIkq3rLulG1uQiTxiLcjBD7GTqSGcxikU7oc69mf+w2Zx19
	Z4Unp4i3R9lDK9VMxTL5S5llnyUyCG7yCeRaVnWQPJmXKso5JE9aiQ4ENFYKrZZf90b3gFAS+zXwg
	G4JMUEmLvrRqmt5wRjBZ+ZOGBn2DvM8x3L1w4HZqJLX41BIr6pwoLvBI11L9h3W+UwYcr/gX4dEOA
	lnD3JHWKCJzdc6UbwZuiNVJmud5XpJafaEKXsOJeHS3iutz/0Oh7xqur4WKRWs9hdVqKhIz+q31jd
	+sJ342NXYiRhmAorgoQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqJL-0003aG-FC; Sun, 12 May 2019 15:22:47 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqJE-0003Zp-CP
 for openwrt-devel@lists.openwrt.org; Sun, 12 May 2019 15:22:41 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 168AB4E9E6;
 Sun, 12 May 2019 17:22:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id 6nP1Sb9eZAEw; Sun, 12 May 2019 17:22:32 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 17:22:26 +0200
Message-Id: <20190512152227.13719-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_082240_566611_BEA67790 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] valgrind: Update to version 3.15.0
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/devel/valgrind/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/devel/valgrind/Makefile b/package/devel/valgrind/Makefile
index d3844c2388..0c5b0cffd4 100644
--- a/package/devel/valgrind/Makefile
+++ b/package/devel/valgrind/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=valgrind
-PKG_VERSION:=3.14.0
+PKG_VERSION:=3.15.0
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=http://sourceware.org/pub/valgrind/
-PKG_HASH:=037c11bfefd477cc6e9ebe8f193bb237fe397f7ce791b4a4ce3fa1c6a520baa5
+PKG_HASH:=417c7a9da8f60dd05698b3a7bc6002e4ef996f14c13f0ff96679a16873e78ab1
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 PKG_LICENSE:=GPL-2.0+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
