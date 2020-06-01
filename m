Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3791EA6EB
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jun 2020 17:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U+3Q2+SPWnSG4DkfR3dxH4Z30xnSBAyI3DAp8L1/5mU=; b=hOFt/iWtd6palg
	PmxV6BBN28l2DaCLCazdKotkGZf/TTWXTOaHyOh+Del3rs6+T2DyzsinkFzGB0KoiVApaIEtPtU3L
	I3kHXgmD6kkqxC54yPGnepqObTuRg7Ol8I2Pv2p9x0Ed5VDtJXiolbR36TsbSuFuubtX+faSpYGw3
	6S5Sh5jz86oTgtgi+t5sNjedT1YcOIQ0wt3GOIrsXk0FdZUojAgZQ+tqVk8o2eOLJZMQAc3Tlw5iF
	VzcFGgc3ygNSVewrhVALjFy+lvoTjDldpXq8Bw+DJlZ/rhdZpCTYWWfe34S81Vx8pJrgZ53pbdr8m
	RI0o/Pdt/V2v7RfC71kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmQy-00065c-NE; Mon, 01 Jun 2020 15:33:04 +0000
Received: from [213.175.92.62] (helo=mail.pbx.lv)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfmQs-00064y-GK
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jun 2020 15:33:00 +0000
Received: from localhost.localdomain (unknown [213.175.92.61])
 by mail.pbx.lv (MailSystem) with ESMTPSA id 3AA061A606C
 for <openwrt-devel@lists.openwrt.org>; Mon,  1 Jun 2020 18:32:46 +0300 (EEST)
From: Roman Yeryomin <roman@advem.lv>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Mon,  1 Jun 2020 18:32:26 +0300
Message-Id: <20200601153226.15229-1-roman@advem.lv>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_083258_714344_E78E9195 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH] build: improve ccache support
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

Signed-off-by: Roman Yeryomin <roman@advem.lv>
---
 .gitignore            | 1 +
 Makefile              | 3 +++
 include/host-build.mk | 4 +++-
 include/package.mk    | 4 +++-
 include/toplevel.mk   | 1 +
 rules.mk              | 3 +++
 6 files changed, 14 insertions(+), 2 deletions(-)

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
index 32c050bb48..dfeaf83e2c 100644
--- a/Makefile
+++ b/Makefile
@@ -119,6 +119,9 @@ world: prepare $(target/stamp-compile) $(package/stamp-compile) $(package/stamp-
 	$(_SINGLE)$(SUBMAKE) -r package/index
 	$(_SINGLE)$(SUBMAKE) -r json_overview_image_info
 	$(_SINGLE)$(SUBMAKE) -r checksum
+ifneq ($(CONFIG_CCACHE),)
+	$(STAGING_DIR_HOST)/bin/ccache -s
+endif
 
 .PHONY: clean dirclean prereq prepare world package/symlinks package/symlinks-install package/symlinks-clean
 
diff --git a/include/host-build.mk b/include/host-build.mk
index 9fc14241c6..4adac0883e 100644
--- a/include/host-build.mk
+++ b/include/host-build.mk
@@ -132,7 +132,9 @@ define Host/Exports/Default
   $(1) : export STAGING_PREFIX=$$(HOST_BUILD_PREFIX)
   $(1) : export PKG_CONFIG_PATH=$$(STAGING_DIR_HOST)/lib/pkgconfig:$$(HOST_BUILD_PREFIX)/lib/pkgconfig
   $(1) : export PKG_CONFIG_LIBDIR=$$(HOST_BUILD_PREFIX)/lib/pkgconfig
-  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(STAGING_DIR_HOST)/ccache)
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_BASEDIR:=$(TOPDIR))
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(TOPDIR)/.ccache)
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_COMPILERCHECK:=%compiler% -dumpmachine; %compiler% -dumpversion)
   $(if $(HOST_CONFIG_SITE),$(1) : export CONFIG_SITE:=$(HOST_CONFIG_SITE))
   $(if $(IS_PACKAGE_BUILD),$(1) : export PATH=$$(TARGET_PATH_PKG))
 endef
diff --git a/include/package.mk b/include/package.mk
index 0575692742..eee5bbbf80 100644
--- a/include/package.mk
+++ b/include/package.mk
@@ -173,7 +173,9 @@ define Build/Exports/Default
   $(1) : export CONFIG_SITE:=$$(CONFIG_SITE)
   $(1) : export PKG_CONFIG_PATH:=$$(PKG_CONFIG_PATH)
   $(1) : export PKG_CONFIG_LIBDIR:=$$(PKG_CONFIG_PATH)
-  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(STAGING_DIR)/ccache)
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_BASEDIR:=$(TOPDIR))
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_DIR:=$(TOPDIR)/.ccache)
+  $(if $(CONFIG_CCACHE),$(1) : export CCACHE_COMPILERCHECK:=%compiler% -dumpmachine; %compiler% -dumpversion)
 endef
 Build/Exports=$(Build/Exports/Default)
 
diff --git a/include/toplevel.mk b/include/toplevel.mk
index 5cf93ce7ef..f4a9dccd5e 100644
--- a/include/toplevel.mk
+++ b/include/toplevel.mk
@@ -253,6 +253,7 @@ help:
 
 distclean:
 	rm -rf bin build_dir .config* dl feeds key-build* logs package/feeds package/openwrt-packages staging_dir tmp
+	rm -rf $(TOPDIR)/.ccache
 	@$(_SINGLE)$(SUBMAKE) -C scripts/config clean
 
 ifeq ($(findstring v,$(DEBUG)),)
diff --git a/rules.mk b/rules.mk
index 66ddea2883..fb2f6bf57f 100644
--- a/rules.mk
+++ b/rules.mk
@@ -298,6 +298,9 @@ ifneq ($(CONFIG_CCACHE),)
   TARGET_CXX:= ccache_cxx
   HOSTCC:= ccache $(HOSTCC)
   HOSTCXX:= ccache $(HOSTCXX)
+  export CCACHE_BASEDIR:=$(TOPDIR)
+  export CCACHE_DIR:=$(TOPDIR)/.ccache
+  export CCACHE_COMPILERCHECK:=%compiler% -dumpmachine; %compiler% -dumpversion
 endif
 
 TARGET_CONFIGURE_OPTS = \
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
