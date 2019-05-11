Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C229F1A999
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 23:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sd3jnrJ/k7TJU+s7/znS1YuIy33LdOmBRlhLWzQaDfU=; b=SP2emlw7MNJ4U3
	hx72UauhMESLJ52quFBs24ftkOOZucAJaatkDdBbbybHghAZc+c7hxxA/MaDHSJZ1W4BnFMbuuehZ
	Zl99jDixEQxijOX+W/OKkKciIc5a6ZTEYWG2xBxpGoyZFFEzk+5mJ8Z3ELje0KW3QV45KUUz4Wdhe
	vQMDvTXwMXCNo5qAG9w0cQ7ZLfSEmfXGddrta9zLf6OZlZui+YhETEXlBxEYmOL6wvaTt9U0l7yyb
	zp90wVcMQjHY3RtOatrHZidAcT1YU8hMdtw09/Di3Wk3jly326SGlsJZDjKmXCuGxFllaBcZU1YYc
	Ft1/qYYufbVVzREtOJ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPZSi-0000W1-0q; Sat, 11 May 2019 21:23:20 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPZSa-0000Vg-9W
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 21:23:14 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 4E441A0031;
 Sat, 11 May 2019 23:23:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id uzc2xzCuCde2; Sat, 11 May 2019 23:22:47 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 23:22:43 +0200
Message-Id: <20190511212243.21276-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_142312_482629_3E399696 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] uboot-envtools: Update to U-Boot version
 2019.04
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, rosenp@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

I would prefer to switch back to the tar.bz2 download again as we
download the U-Boot as a tar.bz2 also in other places.

 package/boot/uboot-envtools/Makefile                  | 8 ++++----
 package/boot/uboot-envtools/patches/001-compile.patch | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/package/boot/uboot-envtools/Makefile b/package/boot/uboot-envtools/Makefile
index 71b842b96e..e64aa1163a 100644
--- a/package/boot/uboot-envtools/Makefile
+++ b/package/boot/uboot-envtools/Makefile
@@ -9,16 +9,16 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=uboot-envtools
 PKG_DISTNAME:=u-boot
-PKG_VERSION:=2018.03
-PKG_RELEASE:=3
+PKG_VERSION:=2019.04
+PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE:=$(PKG_DISTNAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_SUBDIR:=$(PKG_DISTNAME)-$(PKG_VERSION)
 PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_DISTNAME)-$(PKG_VERSION)
 PKG_SOURCE_URL:=https://git.denx.de/u-boot.git
-PKG_SOURCE_VERSION:=f95ab1fb6e37f0601f397091bb011edf7a98b890
-PKG_MIRROR_HASH:=b50d8b6fe0d90b92c8c147457b1b4c2ed1cdb03191085cfc57fdad77c0bfffab
+PKG_SOURCE_VERSION:=3c99166441bf3ea325af2da83cfe65430b49c066
+PKG_MIRROR_HASH:=aba2f0a72e51ea329d12c524cca5d4da6fd30229b1df19b17960d8590f5e2df4
 
 PKG_BUILD_DEPENDS:=fstools
 
diff --git a/package/boot/uboot-envtools/patches/001-compile.patch b/package/boot/uboot-envtools/patches/001-compile.patch
index f7ec9130d6..34072f309d 100644
--- a/package/boot/uboot-envtools/patches/001-compile.patch
+++ b/package/boot/uboot-envtools/patches/001-compile.patch
@@ -1,6 +1,6 @@
 --- a/tools/env/Makefile
 +++ b/tools/env/Makefile
-@@ -10,6 +10,10 @@
+@@ -8,6 +8,10 @@
  # with "CC" here for the maximum code reuse of scripts/Makefile.host.
  override HOSTCC = $(CC)
  
@@ -9,5 +9,5 @@
 +endif
 +
  # Compile for a hosted environment on the target
- HOST_EXTRACFLAGS  = $(patsubst -I%,-idirafter%, $(filter -I%, $(UBOOTINCLUDE))) \
- 		-idirafter $(srctree)/tools/env \
+ HOST_EXTRACFLAGS  = -I$(srctree)/tools \
+ 		$(patsubst -I%,-idirafter%, $(filter -I%, $(UBOOTINCLUDE))) \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
