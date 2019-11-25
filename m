Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AE2109596
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 23:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T4c8FcGIoV8no0wp+SRl31mSwGDVYfb5rHIfPedeR4c=; b=o8IKBrf8lNStaO
	6qU3mcbpv22v3W7tgDxrxD83SlxVvYfHc7xvs9cAlNeG4bIqePVbewWrK/db1JK7cbRvGCxTAKJpR
	6+aMP2ANbFBUbMBWKeq2KOLFuZ1l0ZxbxqgdBJUYY01y9DXppoDOOagstAjXlAtaR81fFweIK3elF
	qRTqVms0uughRFfuueZZwt1xImIy9gt6TmFgnp4qI4gQgv/LRj0wqMYiRFSUmIGFMT3ZXNwCrcZgk
	y3sd69T5pMEHrXlbXAyKxRA7t+AxCnl3MT9sW7RqzkLSQ30+YMX0274STAg0WgEry2xySCZGkTHMw
	9LQf9JvBM8pz2e1MvUHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZN5p-0004ZW-BP; Mon, 25 Nov 2019 22:44:29 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZN5h-0004ZD-Av
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 22:44:23 +0000
Received: by mail-pg1-x530.google.com with SMTP id e17so7918667pgd.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 14:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=onivg+H53u+AaXy5JTTAehwSWH949tkV8zttxPBntcg=;
 b=HkvnXPXTIBxCTTWZn20vPs5aOMrDH6oP4NeMYl+MDqZF3BJ1Qr2yeT7AnyIlYMonSn
 1/u67rzKjTbETpORMpiKweX/2zhrjtliiNEFBNeuSDuzXaFJjWv3jWatZNL7K5tI/nJR
 ZAKSunFklRR8Vu4XkGMO01vOrCdKDNppi6qmxKewk1OGh9fWmeXDyrMoQwm/jErCc82x
 LUMcXJD4X77UIIHKJpVmWUTnNFyc+L/6kwYO5wtEyNk0+nken+fgVjfgQYjxcWeFKYrb
 UIX2Ei0euIPpgNCEqC/4Wj3PKEjh/OSgsvK6f9UuT800pVzV3w/dJhNAMJcDyWJmZJUi
 eg0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=onivg+H53u+AaXy5JTTAehwSWH949tkV8zttxPBntcg=;
 b=iHN/mdhLQ9YMLEU7DuJQueKU+iAcpL7Oj8uVx5aUJzdxHynIa7bLXZ3rLKC+FpwN2s
 DCCnLpdtcKXwJq2LQS57Szq+E0e/cc6vfbN8LKKvJfpIrkxmJVXj1ijHW1umYJUyk0CP
 2UkFSKCFnyq3lTa124pvqLXZW8T4y0LiXpR3bY9pt+l+21lklXSoTH2iPcm6cXMLQv0d
 bYguoeCw911Zlr0clKUY0fB+ti9ACtOMDjn+AsBQYxADdrqabQh2o8TAy2ZvH83Uxaiq
 7i5JhLtz98F8n9U2Dd4jqFA33CniZbzT7J8CSYNbmAIg0Ubmpg4tgD1Tq94ZbNQN/Ayi
 Sr4A==
X-Gm-Message-State: APjAAAWAyA6AHR8A/HkfSqrIo7clCq/6OZ4JnBS+0W3raMOqnVIjApF6
 nQgGujtVzSU5MP1hVj/F1++d0xE9LW0=
X-Google-Smtp-Source: APXvYqxK0vOg55/hHIF0GAloSOHgwFtIuMymtn/IU8Bte9drCKozFULTgSP1mFa3x3fXwrYQ5I9Gng==
X-Received: by 2002:a63:6882:: with SMTP id
 d124mr35404629pgc.281.1574721860055; 
 Mon, 25 Nov 2019 14:44:20 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm9967806pfc.159.2019.11.25.14.44.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 14:44:19 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 14:44:18 -0800
Message-Id: <20191125224418.266082-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_144421_400737_3BD76979 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv3] tools/pkg-config: Replace with pkgconf
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

pkgconf is a newer, actively maintained implementation of pkg-config that
supports more aspects of the pkg-config file specification and provides a
library interface that applications can use to incorporate intelligent
handling of pkg-config files into themselves (such as build file
generators, IDEs, and compilers). Through its pkg-config compatibility
interface (activated when it is run as "pkg-config"), it also can
completely replace the original implementation.

It is also lighterweight and does not require glib2, as pkg-config does.

On other distros, pkgconf is symlinked to pkg-config. For simplicity here,
it is renamed to pkg-config.real, as in the original package.

Initial results have been positive. As before, pkgconf works as long as
the pkg-config files point to the proper paths.

Ran pkg-config wrapper through shellcheck.

Added a patch to fix the pkg-config wrapper with meson as passing
--version with other options fails.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v3: Added meson patch
 v2: Rebased against master
 tools/Makefile                                |  6 ++--
 tools/pkg-config/files/pkg-config             |  3 --
 tools/{pkg-config => pkgconf}/Makefile        | 20 +++++-------
 tools/pkgconf/files/pkg-config                |  6 ++++
 .../patches/0001-f-pkgconf-meson.patch        | 31 +++++++++++++++++++
 5 files changed, 47 insertions(+), 19 deletions(-)
 delete mode 100755 tools/pkg-config/files/pkg-config
 rename tools/{pkg-config => pkgconf}/Makefile (54%)
 create mode 100755 tools/pkgconf/files/pkg-config
 create mode 100644 tools/pkgconf/patches/0001-f-pkgconf-meson.patch

diff --git a/tools/Makefile b/tools/Makefile
index 2f57d25525..a7d48a40a4 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -22,7 +22,7 @@ ifneq ($(CONFIG_SDK)$(CONFIG_PACKAGE_kmod-b43)$(CONFIG_PACKAGE_b43legacy-firmwar
 endif
 
 tools-$(BUILD_TOOLCHAIN) += gmp mpfr mpc libelf expat
-tools-y += m4 libtool autoconf automake flex bison pkg-config mklibs zlib
+tools-y += m4 libtool autoconf automake flex bison pkgconf mklibs zlib
 tools-y += sstrip make-ext4fs e2fsprogs mtd-utils mkimage
 tools-y += firmware-utils patch-image quilt padjffs2
 tools-y += mm-macros missing-macros cmake bc findutils gengetopt patchelf
@@ -48,7 +48,7 @@ $(curdir)/squashfs/compile := $(curdir)/lzma-old/compile
 $(curdir)/squashfskit4/compile := $(curdir)/xz/compile $(curdir)/zlib/compile
 $(curdir)/quilt/compile := $(curdir)/autoconf/compile $(curdir)/findutils/compile
 $(curdir)/autoconf/compile := $(curdir)/m4/compile
-$(curdir)/automake/compile := $(curdir)/m4/compile $(curdir)/autoconf/compile $(curdir)/pkg-config/compile $(curdir)/xz/compile
+$(curdir)/automake/compile := $(curdir)/m4/compile $(curdir)/autoconf/compile $(curdir)/pkgconf/compile $(curdir)/xz/compile
 $(curdir)/gmp/compile := $(curdir)/libtool/compile
 $(curdir)/mpc/compile := $(curdir)/mpfr/compile $(curdir)/gmp/compile
 $(curdir)/mpfr/compile := $(curdir)/gmp/compile
@@ -69,7 +69,7 @@ $(curdir)/findutils/compile := $(curdir)/bison/compile
 $(curdir)/gengetopt/compile := $(curdir)/libtool/compile
 $(curdir)/patchelf/compile := $(curdir)/libtool/compile
 $(curdir)/dosfstools/compile := $(curdir)/autoconf/compile $(curdir)/automake/compile
-$(curdir)/libressl/compile := $(curdir)/pkg-config/compile
+$(curdir)/libressl/compile := $(curdir)/pkgconf/compile
 $(curdir)/mkimage/compile += $(curdir)/libressl/compile
 $(curdir)/firmware-utils/compile += $(curdir)/libressl/compile $(curdir)/zlib/compile
 $(curdir)/cmake/compile += $(curdir)/libressl/compile
diff --git a/tools/pkg-config/files/pkg-config b/tools/pkg-config/files/pkg-config
deleted file mode 100755
index 82cc74ffcb..0000000000
--- a/tools/pkg-config/files/pkg-config
+++ /dev/null
@@ -1,3 +0,0 @@
-#!/bin/sh
-
-pkg-config.real --define-variable=prefix=${STAGING_PREFIX} --define-variable=exec_prefix=${STAGING_PREFIX} --define-variable=bindir=${STAGING_PREFIX}/bin $@
diff --git a/tools/pkg-config/Makefile b/tools/pkgconf/Makefile
similarity index 54%
rename from tools/pkg-config/Makefile
rename to tools/pkgconf/Makefile
index 17a8737be1..cefee1edf0 100644
--- a/tools/pkg-config/Makefile
+++ b/tools/pkgconf/Makefile
@@ -1,4 +1,4 @@
-# 
+#
 # Copyright (C) 2006-2016 OpenWrt.org
 #
 # This is free software, licensed under the GNU General Public License v2.
@@ -6,12 +6,12 @@
 #
 include $(TOPDIR)/rules.mk
 
-PKG_NAME:=pkg-config
-PKG_VERSION:=0.29.2
+PKG_NAME:=pkgconf
+PKG_VERSION:=1.6.3
 
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_SOURCE_URL:=https://pkgconfig.freedesktop.org/releases/
-PKG_HASH:=6fc69c01688c9458a57eb9a1664c9aba372ccda420a02bf4429fe610e7e7d591
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
+PKG_SOURCE_URL:=https://distfiles.dereferenced.org/pkgconf
+PKG_HASH:=61f0b31b0d5ea0e862b454a80c170f57bad47879c0c42bd8de89200ff62ea210
 
 HOST_BUILD_PARALLEL:=1
 
@@ -19,15 +19,9 @@ include $(INCLUDE_DIR)/host-build.mk
 
 unexport PKG_CONFIG
 
-HOST_CONFIGURE_ARGS += --with-internal-glib
-
-ifeq ($(HOST_OS),Darwin)
-HOST_LDFLAGS += -framework CoreFoundation -framework Carbon
-endif
-
 define Host/Install
 	$(MAKE) -C $(HOST_BUILD_DIR) install
-	mv $(STAGING_DIR_HOST)/bin/pkg-config $(STAGING_DIR_HOST)/bin/pkg-config.real
+	mv $(STAGING_DIR_HOST)/bin/pkgconf $(STAGING_DIR_HOST)/bin/pkg-config.real
 	$(INSTALL_BIN) ./files/pkg-config $(STAGING_DIR_HOST)/bin/pkg-config
 endef
 
diff --git a/tools/pkgconf/files/pkg-config b/tools/pkgconf/files/pkg-config
new file mode 100755
index 0000000000..6579a14f86
--- /dev/null
+++ b/tools/pkgconf/files/pkg-config
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+"$(dirname "$0")/pkg-config.real" \
+--define-variable=prefix="${STAGING_PREFIX}" \
+--define-variable=exec_prefix="${STAGING_PREFIX}" \
+--define-variable=bindir="${STAGING_PREFIX}/bin" "$@"
diff --git a/tools/pkgconf/patches/0001-f-pkgconf-meson.patch b/tools/pkgconf/patches/0001-f-pkgconf-meson.patch
new file mode 100644
index 0000000000..3ed47adc95
--- /dev/null
+++ b/tools/pkgconf/patches/0001-f-pkgconf-meson.patch
@@ -0,0 +1,31 @@
+From 05ef58532b75c36fc19eb9d2d1fe4c46195706bf Mon Sep 17 00:00:00 2001
+From: Andre Heider <a.heider@gmail.com>
+Date: Mon, 25 Nov 2019 09:36:47 +0100
+Subject: [PATCH] f pkgconf/meson
+
+---
+ tools/pkgconf/patches/meson.patch | 12 ++++++++++++
+ 1 file changed, 12 insertions(+)
+ create mode 100644 tools/pkgconf/patches/meson.patch
+
+diff --git a/tools/pkgconf/patches/meson.patch b/tools/pkgconf/patches/meson.patch
+new file mode 100644
+index 0000000000..e0a2946f32
+--- /dev/null
++++ b/tools/pkgconf/patches/meson.patch
+@@ -0,0 +1,12 @@
++diff -ur pkgconf-1.6.3-orig/cli/main.c pkgconf-1.6.3/cli/main.c
++--- pkgconf-1.6.3-orig/cli/main.c	2019-07-12 13:53:12.000000000 +0200
+++++ pkgconf-1.6.3/cli/main.c	2019-11-25 09:32:53.512784479 +0100
++@@ -1002,7 +1002,7 @@
++ 
++ 	if ((want_flags & PKG_VERSION) == PKG_VERSION)
++ 	{
++-		if (argc > 2)
+++		if (0 && argc > 2)
++ 		{
++ 			fprintf(stderr, "%s: --version specified with other options or module names, assuming --modversion.\n", argv[0]);
++ 
+-- 
+2.24.0
+
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
