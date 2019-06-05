Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF23360F5
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 18:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u/YJpxPg3pB4rXiJMj2l6I8hw3qdC3OUeIFQZywkrCU=; b=W5qf2lOJj0LIe1
	mft1IMpsOSkGdaBmyTDNYMeS5yU5ojH0tOhZKwqaTsw4ajbB0zeanBKKGzEMtWPJlMe6kgO5Qw/pV
	3JwGovNZnVC0Q2QeeKF++llwTo/kkCvA4HLI+0DrVVDnCqo5mJ7YaP6osN/dlHqLW7uXliRY8FwyG
	JGF4/c6uks6i3I0dWtxRVgnqLTEbWJ4pxHkYCuzBw9rqMAnHcfKtwPY2ohzR8ZYmk4TIZhRmYqMOw
	0XorgFoUP5vhK15LLBtKPfkewt/PGbIihMG7GKONVQtn6Q+haKVslA24x4UaP2LSRbZ7jCIKaF9Ix
	V8BFRAW+jaU1abH3w6lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYZn-0004Ox-I5; Wed, 05 Jun 2019 16:15:47 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYZe-0004OK-MN
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 16:15:41 +0000
Received: from p5dcfbfee.dip0.t-ipconnect.de ([93.207.191.238] helo=bertha.lan)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1hYYZc-0002L1-8v; Wed, 05 Jun 2019 18:15:36 +0200
From: John Crispin <john@phrozen.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Wed,  5 Jun 2019 18:15:21 +0200
Message-Id: <20190605161522.24420-1-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_091538_895811_54E2A60E 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] toolchain: add support for custom
 toolchains
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The requirement for being able to add custom src toolchains to the build
system has been brought forward by the members of the prpl foundation.
This patch tries to address this requirement by allowing a ned folder to be
loaded into the tree call toolchain_custom. The subfolders contained within
have the same layout as the toolchain folder. By placing optional Makefiles
into these subfolders It is possible to override the versions of the various
toolchain components aswell as their patch sets and make templates.

Signed-off-by: John Crispin <john@phrozen.org>
---
 rules.mk                       | 5 +++++
 toolchain/Config.in            | 5 +++++
 toolchain/Makefile             | 2 ++
 toolchain/binutils/Makefile    | 4 ++++
 toolchain/gcc/common.mk        | 6 ++++++
 toolchain/gcc/initial/Makefile | 4 ++++
 toolchain/gcc/minimal/Makefile | 4 ++++
 toolchain/gdb/Makefile         | 4 ++++
 toolchain/musl/Makefile        | 2 ++
 toolchain/musl/common.mk       | 2 ++
 10 files changed, 38 insertions(+)

diff --git a/rules.mk b/rules.mk
index 80cb3d63f4..7596250388 100644
--- a/rules.mk
+++ b/rules.mk
@@ -119,8 +119,13 @@ INCLUDE_DIR:=$(TOPDIR)/include
 SCRIPT_DIR:=$(TOPDIR)/scripts
 BUILD_DIR_BASE:=$(TOPDIR)/build_dir
 ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
+ ifeq ($(CONFIG_CUSTOM_TOOLCHAIN),)
   GCCV:=$(call qstrip,$(CONFIG_GCC_VERSION))
   LIBC:=$(call qstrip,$(CONFIG_LIBC))
+ else
+  GCCV:=$(call qstrip,$(CONFIG_CUSTOM_GCC_VERSION))
+  LIBC:=$(call qstrip,$(CONFIG_CUSTOM_LIBC))
+ endif
   REAL_GNU_TARGET_NAME=$(OPTIMIZE_FOR_CPU)-openwrt-linux$(if $(TARGET_SUFFIX),-$(TARGET_SUFFIX))
   GNU_TARGET_NAME=$(OPTIMIZE_FOR_CPU)-openwrt-linux
   DIR_SUFFIX:=_$(LIBC)$(if $(CONFIG_arm),_eabi)
diff --git a/toolchain/Config.in b/toolchain/Config.in
index 82dddbc209..cad492aa1e 100644
--- a/toolchain/Config.in
+++ b/toolchain/Config.in
@@ -155,6 +155,11 @@ menuconfig EXTERNAL_TOOLCHAIN
 		  Specify additional directories searched for libraries (override LDFLAGS).
 		  Use ./DIR for directories relative to the root above.
 
+config CUSTOM_TOOLCHAIN
+	depends on DEVEL
+
+source "toolchain_custom/*.in"
+
 config NEED_TOOLCHAIN
 	bool
 	depends on DEVEL
diff --git a/toolchain/Makefile b/toolchain/Makefile
index 0336b2f72c..f067cb9c93 100644
--- a/toolchain/Makefile
+++ b/toolchain/Makefile
@@ -93,6 +93,8 @@ endif
 
 $(curdir)/install: $(curdir)/compile
 
+include $(wildcard toolchain_custom/*.mk)
+
 $(eval $(call stampfile,$(curdir),toolchain,compile,$(TOOLCHAIN_DIR)/stamp/.gcc-initial_installed,,$(TOOLCHAIN_DIR)))
 $(eval $(call stampfile,$(curdir),toolchain,check,$(TMP_DIR)/.build))
 $(eval $(call subdir,$(curdir)))
diff --git a/toolchain/binutils/Makefile b/toolchain/binutils/Makefile
index 24eaf70566..04620a8769 100644
--- a/toolchain/binutils/Makefile
+++ b/toolchain/binutils/Makefile
@@ -31,6 +31,8 @@ HOST_BUILD_PARALLEL:=1
 
 PATCH_DIR:=./patches/$(PKG_VERSION)
 
+include $(wildcard $(TOPDIR)/toolchain_custom/binutils/*.var)
+
 include $(INCLUDE_DIR)/toolchain-build.mk
 
 HOST_CONFIGURE_ARGS = \
@@ -99,4 +101,6 @@ define Host/Clean
 		$(BUILD_DIR_TOOLCHAIN)/$(PKG_NAME)
 endef
 
+include $(wildcard $(TOPDIR)/toolchain_custom/binutils/*.build)
+
 $(eval $(call HostBuild))
diff --git a/toolchain/gcc/common.mk b/toolchain/gcc/common.mk
index 6e0edfb36a..d6ca9b872f 100644
--- a/toolchain/gcc/common.mk
+++ b/toolchain/gcc/common.mk
@@ -47,6 +47,8 @@ PKGVERSION=OpenWrt GCC $(PKG_VERSION) $(REVISION)
 
 HOST_BUILD_PARALLEL:=1
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gcc/*.var)
+
 include $(INCLUDE_DIR)/toolchain-build.mk
 
 HOST_SOURCE_DIR:=$(HOST_BUILD_DIR)
@@ -189,6 +191,8 @@ GCC_MAKE:= \
 		CXXFLAGS_FOR_TARGET="$(TARGET_CFLAGS)" \
 		GOCFLAGS_FOR_TARGET="$(TARGET_CFLAGS)"
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gcc/*.build)
+
 define Host/SetToolchainInfo
 	$(SED) 's,TARGET_CROSS=.*,TARGET_CROSS=$(REAL_GNU_TARGET_NAME)-,' $(TOOLCHAIN_DIR)/info.mk
 	$(SED) 's,GCC_VERSION=.*,GCC_VERSION=$(GCC_VERSION),' $(TOOLCHAIN_DIR)/info.mk
@@ -229,3 +233,5 @@ define Host/Clean
 		$(TOOLCHAIN_DIR)/bin/$(REAL_GNU_TARGET_NAME)-gc* \
 		$(TOOLCHAIN_DIR)/bin/$(REAL_GNU_TARGET_NAME)-c*
 endef
+
+include $(wildcard $(TOPDIR)/toolchain_custom/gcc/*.build)
diff --git a/toolchain/gcc/initial/Makefile b/toolchain/gcc/initial/Makefile
index c71b17dd87..b9ada19ec1 100644
--- a/toolchain/gcc/initial/Makefile
+++ b/toolchain/gcc/initial/Makefile
@@ -1,6 +1,8 @@
 GCC_VARIANT:=initial
 GCC_PREPARE=$(CONFIG_USE_MUSL)
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gcc/initial/*.var)
+
 include ../common.mk
 
 GCC_CONFIGURE += \
@@ -33,4 +35,6 @@ define Host/Install
 	$$(call file_copy,$(TOOLCHAIN_DIR)/initial/.,$(TOOLCHAIN_DIR)/)
 endef
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gcc/initial/*.build)
+
 $(eval $(call HostBuild))
diff --git a/toolchain/gcc/minimal/Makefile b/toolchain/gcc/minimal/Makefile
index 31d6f675ab..0b5c485dd8 100644
--- a/toolchain/gcc/minimal/Makefile
+++ b/toolchain/gcc/minimal/Makefile
@@ -1,6 +1,8 @@
 GCC_VARIANT:=minimal
 GCC_PREPARE=$(if $(CONFIG_USE_MUSL),,1)
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gcc/minimal/*.var)
+
 include ../common.mk
 
 GCC_CONFIGURE += \
@@ -26,4 +28,6 @@ define Host/Clean
 		$(GCC_BUILD_DIR)
 endef
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gcc/minimal/*.build)
+
 $(eval $(call HostBuild))
diff --git a/toolchain/gdb/Makefile b/toolchain/gdb/Makefile
index 3b884f9e79..63cdc073fd 100644
--- a/toolchain/gdb/Makefile
+++ b/toolchain/gdb/Makefile
@@ -29,6 +29,8 @@ HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(GDB_DIR)
 
 HOST_BUILD_PARALLEL:=1
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gdb/*.var)
+
 include $(INCLUDE_DIR)/toolchain-build.mk
 
 HOST_CONFIGURE_VARS += \
@@ -65,4 +67,6 @@ define Host/Clean
 		$(TOOLCHAIN_DIR)/bin/$(GNU_TARGET_NAME)-gdb
 endef
 
+include $(wildcard $(TOPDIR)/toolchain_custom/gdb/*.build)
+
 $(eval $(call HostBuild))
diff --git a/toolchain/musl/Makefile b/toolchain/musl/Makefile
index 2b9312bcbf..aec678ebbe 100644
--- a/toolchain/musl/Makefile
+++ b/toolchain/musl/Makefile
@@ -28,4 +28,6 @@ define Host/Install
 	$(CP) ./include $(TOOLCHAIN_DIR)/
 endef
 
+include $(wildcard $(TOPDIR)/toolchain_custom/musl/*.build)
+
 $(eval $(call HostBuild))
diff --git a/toolchain/musl/common.mk b/toolchain/musl/common.mk
index ae7758e8b5..6c63ffa9bf 100644
--- a/toolchain/musl/common.mk
+++ b/toolchain/musl/common.mk
@@ -25,6 +25,8 @@ BUILD_DIR_HOST:=$(BUILD_DIR_TOOLCHAIN)
 HOST_BUILD_PREFIX:=$(TOOLCHAIN_DIR)
 HOST_BUILD_DIR:=$(BUILD_DIR_TOOLCHAIN)/$(PKG_NAME)-$(PKG_VERSION)
 
+include $(wildcard $(TOPDIR)/toolchain_custom/musl/*.var)
+
 include $(INCLUDE_DIR)/host-build.mk
 include $(INCLUDE_DIR)/hardening.mk
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
