Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BDB1F7D13
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 20:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QBBxcMwKMjJRPmYgSQ3iQD/anTuI6CjzBCR7uWB323o=; b=cXYcb4PbYmRrmz
	1lAc8EqNXhZQufLAW9FfvldMJacJ0HkFWolw5ywoA5j+OYRgjuLGmnI95t1+X7qZfb/LFsO47Bndw
	+f+l6+PjLQUkUBTyy++EsrNW/nv7a+OU3MS/W15SKa95P1YSXv+0Nqlo5hECCyOIf8pLXsT5bZxAh
	W+9C5YKti2GDCjJHqc3tBB9H7IgzHVr38cHfHkkxJoKmGIDd6WAKpAFAP+1p9baN/t1AeW8yuiSQ6
	cPGhtIh/uREqE1XMNthVs/Ixjb7no2EzywNvTYfU9Z36Ju01cxZTLjI13X6m5x73WhwF+pUEyWGEB
	ownf8QBLyBnK7JlRWNNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjoez-0008C4-Q0; Fri, 12 Jun 2020 18:44:13 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjoes-0008Aq-FC
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jun 2020 18:44:08 +0000
Received: from localhost.localdomain (unknown [213.175.92.61])
 by mail.pbx.lv (MailSystem) with ESMTPSA id 709FB1A609F
 for <openwrt-devel@lists.openwrt.org>; Fri, 12 Jun 2020 21:43:55 +0300 (EEST)
From: Roman Yeryomin <roman@advem.lv>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Fri, 12 Jun 2020 21:43:46 +0300
Message-Id: <20200612184346.18877-1-roman@advem.lv>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_114406_847153_31EBF5C2 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH v2] build: improve ccache support
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

Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).
This allows to do clean and dirclean. Cache hit rate for test build
after dirclean is ~65%.
If CCACHE is enabled stats are printed out at the end of building process.
CCACHE_DIR config variable allows to override default, which could be useful
when sharing cache with many builds.
cacheclean make target allows to clean the cache.

Changes from v1:
- remove ccache directory using CCACHE_DIR variable
- remove ccache leftovers from sdk and toolchain make files
- introduce CONFIG_CCACHE_DIR variable
- introduce cacheclean make target

Signed-off-by: Roman Yeryomin <roman@advem.lv>
---
 .gitignore                | 1 +
 Makefile                  | 8 ++++++++
 config/Config-devel.in    | 7 +++++++
 include/host-build.mk     | 4 +++-
 include/package.mk        | 4 +++-
 include/toplevel.mk       | 2 +-
 rules.mk                  | 3 +++
 target/sdk/Makefile       | 8 ++------
 target/toolchain/Makefile | 2 +-
 9 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/.gitignore b/.gitignore
index 6549af83be..b6bfe1a525 100644
--- a/.gitignore
+++ b/.gitignore
@@ -28,3 +28,4 @@ TAGS*~
 git-src
 .project
 .cproject
+.ccache
diff --git a/Makefile b/Makefile
index 32c050bb48..24f5955c90 100644
--- a/Makefile
+++ b/Makefile
@@ -62,6 +62,11 @@ dirclean: clean
 	rm -rf $(TMP_DIR)
 	$(MAKE) -C $(TOPDIR)/scripts/config clean
 
+cacheclean:
+ifneq ($(CONFIG_CCACHE),)
+	rm -rf $(if $(call qstrip,$(CONFIG_CCACHE_DIR)),$(call qstrip,$(CONFIG_CCACHE_DIR)),$(TOPDIR)/.ccache)
+endif
+
 ifndef DUMP_TARGET_DB
 $(BUILD_DIR)/.prepared: Makefile
 	@mkdir -p $$(dirname $@)
@@ -119,6 +124,9 @@ world: prepare $(target/stamp-compile) $(package/stamp-compile) $(package/stamp-
 	$(_SINGLE)$(SUBMAKE) -r package/index
 	$(_SINGLE)$(SUBMAKE) -r json_overview_image_info
 	$(_SINGLE)$(SUBMAKE) -r checksum
+ifneq ($(CONFIG_CCACHE),)
+	$(STAGING_DIR_HOST)/bin/ccache -s
+endif
 
 .PHONY: clean dirclean prereq prepare world package/symlinks package/symlinks-install package/symlinks-clean
 
diff --git a/config/Config-devel.in b/config/Config-devel.in
index 70ec0ce9a7..11741c7070 100644
--- a/config/Config-devel.in
+++ b/config/Config-devel.in
@@ -69,6 +69,13 @@ menuconfig DEVEL
 		help
 		  Compiler cache; see https://ccache.samba.org/
 
+	config CCACHE_DIR
+		string "Set ccache directory" if CCACHE
+		default ""
+		help
+		  Store ccache in this directory.
+		  If not set, uses './.ccache'
+
 	config EXTERNAL_KERNEL_TREE
 		string "Use external kernel tree" if DEVEL
 		default ""
diff --git a/include/host-build.mk b/include/host-build.mk
index 9fc14241c6..7d84ab0f5f 100644
--- a/include/host-build.mk
+++ b/include/host-build.mk
@@ -132,7 +132,9 @@ define Host/Exports/Default
   $(1) : export STAGING_PREFIX=$$(HOST_BUILD_PREFIX)
   $(1) : export PKG_CONFIG_PATH=$$(STAGING_DIR_HOST)/lib/pkgconfig:$$(HOST_BUILD_PREFIX)/lib/pkgconfig
   $(1) : export PKG_CONFIG_LIBDIR=$$(HOST_BUILD_PREFIX)/lib/pkgconfig
-  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(STAGING_DIR_HOST)/ccache)
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_BASEDIR:=$(TOPDIR))
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(if $(call qstrip,$(CONFIG_CCACHE_DIR)),$(call qstrip,$(CONFIG_CCACHE_DIR)),$(TOPDIR)/.ccache))
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_COMPILERCHECK:=%compiler% -dumpmachine; %compiler% -dumpversion)
   $(if $(HOST_CONFIG_SITE),$(1) : export CONFIG_SITE:=$(HOST_CONFIG_SITE))
   $(if $(IS_PACKAGE_BUILD),$(1) : export PATH=$$(TARGET_PATH_PKG))
 endef
diff --git a/include/package.mk b/include/package.mk
index 0575692742..a93d6b78f3 100644
--- a/include/package.mk
+++ b/include/package.mk
@@ -173,7 +173,9 @@ define Build/Exports/Default
   $(1) : export CONFIG_SITE:=$$(CONFIG_SITE)
   $(1) : export PKG_CONFIG_PATH:=$$(PKG_CONFIG_PATH)
   $(1) : export PKG_CONFIG_LIBDIR:=$$(PKG_CONFIG_PATH)
-  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(STAGING_DIR)/ccache)
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_BASEDIR:=$(TOPDIR))
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(if $(call qstrip,$(CONFIG_CCACHE_DIR)),$(call qstrip,$(CONFIG_CCACHE_DIR)),$(TOPDIR)/.ccache))
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_COMPILERCHECK:=%compiler% -dumpmachine; %compiler% -dumpversion)
 endef
 Build/Exports=$(Build/Exports/Default)
 
diff --git a/include/toplevel.mk b/include/toplevel.mk
index 5cf93ce7ef..c773206e6a 100644
--- a/include/toplevel.mk
+++ b/include/toplevel.mk
@@ -251,7 +251,7 @@ package/symlinks-clean:
 help:
 	cat README
 
-distclean:
+distclean: cacheclean
 	rm -rf bin build_dir .config* dl feeds key-build* logs package/feeds package/openwrt-packages staging_dir tmp
 	@$(_SINGLE)$(SUBMAKE) -C scripts/config clean
 
diff --git a/rules.mk b/rules.mk
index 66ddea2883..e734b4a582 100644
--- a/rules.mk
+++ b/rules.mk
@@ -298,6 +298,9 @@ ifneq ($(CONFIG_CCACHE),)
   TARGET_CXX:= ccache_cxx
   HOSTCC:= ccache $(HOSTCC)
   HOSTCXX:= ccache $(HOSTCXX)
+  export CCACHE_BASEDIR:=$(TOPDIR)
+  export CCACHE_DIR:=$(if $(call qstrip,$(CONFIG_CCACHE_DIR)),$(call qstrip,$(CONFIG_CCACHE_DIR)),$(TOPDIR)/.ccache)
+  export CCACHE_COMPILERCHECK:=%compiler% -dumpmachine; %compiler% -dumpversion
 endif
 
 TARGET_CONFIGURE_OPTS = \
diff --git a/target/sdk/Makefile b/target/sdk/Makefile
index 6d81834720..d3552b47eb 100644
--- a/target/sdk/Makefile
+++ b/target/sdk/Makefile
@@ -20,7 +20,7 @@ STAGING_SUBDIR_HOST := staging_dir/host
 STAGING_SUBDIR_TARGET := staging_dir/$(TARGET_DIR_NAME)
 STAGING_SUBDIR_TOOLCHAIN := staging_dir/toolchain-$(ARCH)$(ARCH_SUFFIX)_gcc-$(GCCV)_$(LIBC)$(if $(CONFIG_arm),_eabi)
 
-EXCLUDE_DIRS:=*/ccache/* \
+EXCLUDE_DIRS:= \
 	*/stamp \
 	*/stampfiles \
 	*/man \
@@ -135,11 +135,7 @@ $(BIN_DIR)/$(SDK_NAME).tar.xz: clean
 		$(TOPDIR)/package/kernel/linux \
 		$(SDK_BUILD_DIR)/package/
 
-	-rm -rf \
-		$(SDK_BUILD_DIR)/$(STAGING_SUBDIR_HOST)/ccache \
-		$(SDK_BUILD_DIR)/$(STAGING_SUBDIR_TARGET)/ccache \
-		$(SDK_BUILD_DIR)/$(STAGING_SUBDIR_TOOLCHAIN)/ccache \
-		$(SDK_BUILD_DIR)/$(STAGING_SUBDIR_HOST)/.prereq-build
+	-rm -rf $(SDK_BUILD_DIR)/$(STAGING_SUBDIR_HOST)/.prereq-build
 
 	-rm -f $(SDK_BUILD_DIR)/feeds.conf.default
 	$(if $(BASE_FEED),echo "$(BASE_FEED)" > $(SDK_BUILD_DIR)/feeds.conf.default)
diff --git a/target/toolchain/Makefile b/target/toolchain/Makefile
index ef2dc68a97..5002ff7835 100644
--- a/target/toolchain/Makefile
+++ b/target/toolchain/Makefile
@@ -15,7 +15,7 @@ override MAKEFLAGS=
 
 TOOLCHAIN_NAME:=$(VERSION_DIST_SANITIZED)-toolchain-$(if $(CONFIG_VERSION_FILENAMES),$(VERSION_NUMBER)-)$(BOARD)$(if $(SUBTARGET),-$(SUBTARGET))_gcc-$(GCCV)$(DIR_SUFFIX).$(HOST_OS)-$(HOST_ARCH)
 TOOLCHAIN_BUILD_DIR:=$(BUILD_DIR)/$(TOOLCHAIN_NAME)
-EXCLUDE_DIRS:=*/ccache \
+EXCLUDE_DIRS:= \
 	*/initial \
 	*/stamp \
 	*/stampfiles \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
