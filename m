Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C66751D64FE
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 02:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w2zmFLkr1aDx2ubqljjqu9Bs/KHarphpZFJ037DDPao=; b=kfBGEHOQvgCXUj
	LZQAv8U80GhNxjPZZdGdoMSp2n8pXcZ3nC1mhS652B9qJ1BqgzjOw7oP2pUNEo54PdtdyHT9ncMBm
	aGZaMgMpmd5/VO6oBkIsiOLFVXnunkgAD8wqhHmmKnd8SNdskCyyQTdIZ6qZf04MycTZ6fBUXO+3m
	Cgg+WoK/CsebXXQ2hq47Xg/Yyivoti1Bx7Lqvf0lFr1GE5LSTeBdqGUBCJzffUvvyUFUBy8stYnUY
	roe8wU7eVYlJHr0wN+P9T9aG65f31s7G4y/xyYJUHzGR6VXPBZhq5lomEvzcCd3h0GET0MrjlABqE
	ycFKHAPNr3E/VbPMHeXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja7OX-0005aR-2i; Sun, 17 May 2020 00:43:09 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja7OR-0005a0-Aq
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 00:43:05 +0000
Received: by mail-pl1-x62b.google.com with SMTP id t16so2585971plo.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 May 2020 17:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gYALo2BLTHTTkbZBBNhH7Svp6OSA1I88HTBqWSLM6jg=;
 b=Q2rTjDswI7GJtXo7uFP2MY3F0c6+nICQTVSzG+KtQx6wXEBhln5zYLA9B4qu7FBv/R
 Pl3WGOQToavzWWPuPiHxs9bF5yvEosEZltdx36cws+QVfDGJoo+gHWSgA2UAAI/+CS2j
 E+MpEIMi3TKnObpboO6+3rQHVVhOPU/Grhobx2p3jCJ8tVlLow3il1PFrVJcXMDaDydd
 KXjHn3I9hxWPbstwF8xYNNn65uBuevOMH95pOHQoFkskfW5cU59Xt4YMKiOeRTli0hVG
 Tl9J2OqAH5vyGHkd9n4PxYbilXtbBeLdEpsTEN9uHSUDFDdNE7YXDVbUgV78w0teOod6
 mDdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gYALo2BLTHTTkbZBBNhH7Svp6OSA1I88HTBqWSLM6jg=;
 b=ppQF+thtlnAZluSXcadhjwxVaFQytQic+ZcnqC/e5PD/zEKNv3JJbMvsLC8H0byYUP
 42GzDzm0h5o3vjoa9zRRk/g6RAe3FaViT9p/7XG0QqLXVRYJoG3nTNP9jVK1FiO3aePe
 jBL8OVaZyN5OeuK5qFCG1+k10DWtRJY8Lrw9Dkr9V9eiZQoTngpDWbtpd02MrXe3j0Aa
 mXNyBa3fZweKdWl720vXBHBdcUbS5xeYJ1JFVPJO1dP52ICu3Av4ndiPRfGBNbVzp3mv
 gj3yOZKHbbjbZo5RnaYUQlRHhKdzq1KEqcqnRxhDYe4EZhKsSY+K+KMc2I5jCBMC3U1f
 2GiA==
X-Gm-Message-State: AOAM533zsbznRaj2qPDo35di4P0h8BAmXJJ+sYLIo1/2KdKEhZkSAEOu
 9XxOSqMZI8n+0SbhOkva3+jRbzOgCMo=
X-Google-Smtp-Source: ABdhPJwJsrcH1Ef4vFG1LDbalVmd1qqpz4weN+RMmBuN6szC1df3hPc9EQ8CE8pMo7+RTXJYIOHtUA==
X-Received: by 2002:a17:902:d915:: with SMTP id
 c21mr9921982plz.49.1589676180692; 
 Sat, 16 May 2020 17:43:00 -0700 (PDT)
Received: from localhost.localdomain (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id 2sm3768932pfz.39.2020.05.16.17.42.59
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 17:43:00 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 17:42:58 -0700
Message-Id: <20200517004258.51878-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_174303_408956_87B17FF8 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] fuse: remove
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

This package was last updated in 2016. All of the dependent packages
are in the packages feeds, where this will be moved.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/utils/fuse/Makefile                   | 103 ------------------
 .../fuse/patches/100-missing_includes.patch   |  10 --
 .../fuse/patches/112-no_break_on_mknod.patch  |  11 --
 ...t_arm64_fuse_kernel_h_clean_includes.patch |  30 -----
 4 files changed, 154 deletions(-)
 delete mode 100644 package/utils/fuse/Makefile
 delete mode 100644 package/utils/fuse/patches/100-missing_includes.patch
 delete mode 100644 package/utils/fuse/patches/112-no_break_on_mknod.patch
 delete mode 100644 package/utils/fuse/patches/200-backport_arm64_fuse_kernel_h_clean_includes.patch

diff --git a/package/utils/fuse/Makefile b/package/utils/fuse/Makefile
deleted file mode 100644
index be80b03c42..0000000000
--- a/package/utils/fuse/Makefile
+++ /dev/null
@@ -1,103 +0,0 @@
-#
-# Copyright (C) 2006-2015 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-include $(TOPDIR)/rules.mk
-include $(INCLUDE_DIR)/kernel.mk
-
-PKG_NAME:=fuse
-PKG_VERSION:=2.9.7
-PKG_RELEASE:=2
-
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_SOURCE_URL:=https://github.com/libfuse/libfuse/releases/download/$(PKG_NAME)-$(PKG_VERSION)
-PKG_HASH:=832432d1ad4f833c20e13b57cf40ce5277a9d33e483205fc63c78111b3358874
-
-PKG_LICENSE:=LGPLv2.1 GPLv2
-PKG_LICENSE_FILES:=COPYING.LIB COPYING
-PKG_CPE_ID:=cpe:/a:fuse_project:fuse
-
-PKG_INSTALL:=1
-
-include $(INCLUDE_DIR)/package.mk
-
-define Package/fuse/Default
-  TITLE:=FUSE
-  URL:=http://fuse.sourceforge.net/
-endef
-
-define Package/fuse/Default/description
- FUSE (Filesystem in UserSpacE)
-endef
-
-define Package/fuse-utils
-$(call Package/fuse/Default)
-  SECTION:=utils
-  CATEGORY:=Utilities
-  DEPENDS:=+libfuse
-  TITLE+= (utilities)
-  SUBMENU:=Filesystem
-endef
-
-define Package/fuse-utils/description
-$(call Package/fuse/Default/description)
- This package contains the FUSE utilities.
- - fusermount
- - ulockmgr_server
-endef
-
-define Package/libfuse
-$(call Package/fuse/Default)
-  SECTION:=libs
-  CATEGORY:=Libraries
-  TITLE+= (library)
-  DEPENDS:=+kmod-fuse +libpthread
-  SUBMENU:=Filesystem
-  ABI_VERSION:=1
-endef
-
-define Package/libfuse/description
-$(call Package/fuse/Default/description)
- This package contains the FUSE shared libraries, needed by other programs.
- - libfuse
- - libulockmgr
-endef
-
-# generic args
-CONFIGURE_ARGS += \
-	--enable-shared \
-	--enable-static \
-	--enable-lib \
-	--enable-util \
-	--disable-rpath \
-	--disable-example \
-	--disable-mtab
-
-define Build/InstallDev
-	$(INSTALL_DIR) $(1)/usr/include
-	$(CP)	$(PKG_INSTALL_DIR)/usr/include/{fuse,fuse.h,ulockmgr.h} $(1)/usr/include/
-	$(INSTALL_DIR)  $(1)/usr/lib
-	$(CP)	$(PKG_INSTALL_DIR)/usr/lib/lib{fuse,ulockmgr}.{a,so*} $(1)/usr/lib/
-	$(INSTALL_DIR)  $(1)/usr/lib/pkgconfig
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/fuse.pc $(1)/usr/lib/pkgconfig/
-	$(SED) 's,-I$$$${includedir}/fuse,,g' $(1)/usr/lib/pkgconfig/fuse.pc
-	$(SED) 's,-L$$$${libdir},,g' $(1)/usr/lib/pkgconfig/fuse.pc
-endef
-
-define Package/fuse-utils/install
-	$(INSTALL_DIR) $(1)/sbin
-	$(CP) $(PKG_INSTALL_DIR)/sbin/mount.fuse $(1)/sbin/
-	$(INSTALL_DIR) $(1)/usr/bin
-	$(CP) $(PKG_INSTALL_DIR)/usr/bin/{fusermount,ulockmgr_server} $(1)/usr/bin/
-endef
-
-define Package/libfuse/install
-	$(INSTALL_DIR) $(1)/usr/lib
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/lib{fuse,ulockmgr}.so.* $(1)/usr/lib/
-endef
-
-$(eval $(call BuildPackage,fuse-utils))
-$(eval $(call BuildPackage,libfuse))
diff --git a/package/utils/fuse/patches/100-missing_includes.patch b/package/utils/fuse/patches/100-missing_includes.patch
deleted file mode 100644
index e74a1870f0..0000000000
--- a/package/utils/fuse/patches/100-missing_includes.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- a/include/fuse.h
-+++ b/include/fuse.h
-@@ -32,6 +32,7 @@
- #include <sys/stat.h>
- #include <sys/statvfs.h>
- #include <sys/uio.h>
-+#include <sys/file.h>
- 
- #ifdef __cplusplus
- extern "C" {
diff --git a/package/utils/fuse/patches/112-no_break_on_mknod.patch b/package/utils/fuse/patches/112-no_break_on_mknod.patch
deleted file mode 100644
index f679c4116d..0000000000
--- a/package/utils/fuse/patches/112-no_break_on_mknod.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/util/Makefile.in
-+++ b/util/Makefile.in
-@@ -723,7 +723,7 @@ mount_util.c: $(top_srcdir)/lib/mount_ut
- 
- install-exec-hook:
- 	-chmod u+s $(DESTDIR)$(bindir)/fusermount
--	@if test ! -e $(DESTDIR)/dev/fuse; then \
-+	-@if test ! -e $(DESTDIR)/dev/fuse; then \
- 		$(MKDIR_P) $(DESTDIR)/dev; \
- 		echo "mknod $(DESTDIR)/dev/fuse -m 0666 c 10 229 || true"; \
- 		mknod $(DESTDIR)/dev/fuse -m 0666 c 10 229 || true; \
diff --git a/package/utils/fuse/patches/200-backport_arm64_fuse_kernel_h_clean_includes.patch b/package/utils/fuse/patches/200-backport_arm64_fuse_kernel_h_clean_includes.patch
deleted file mode 100644
index d45da84cca..0000000000
--- a/package/utils/fuse/patches/200-backport_arm64_fuse_kernel_h_clean_includes.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 914871b20a901e3e1e981c92bc42b1c93b7ab81b Mon Sep 17 00:00:00 2001
-From: Riku Voipio <riku.voipio@linaro.org>
-Date: Thu, 07 Feb 2013 11:04:21 +0000
-Subject: fuse_kernel.h: clean includes
-
-Use <linux/types.h> for linux and define types used for other operating systems
-using <stdint.h> types.
----
-(limited to 'include/fuse_kernel.h')
-
---- a/include/fuse_kernel.h
-+++ b/include/fuse_kernel.h
-@@ -88,12 +88,16 @@
- #ifndef _LINUX_FUSE_H
- #define _LINUX_FUSE_H
- 
--#include <sys/types.h>
-+#ifdef __linux__
-+#include <linux/types.h>
-+#else
-+#include <stdint.h>
- #define __u64 uint64_t
- #define __s64 int64_t
- #define __u32 uint32_t
- #define __s32 int32_t
- #define __u16 uint16_t
-+#endif
- 
- /*
-  * Version negotiation:
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
