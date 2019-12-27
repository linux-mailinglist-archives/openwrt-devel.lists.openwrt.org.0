Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EEF12B543
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Dec 2019 15:41:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kQo6PKBhbkSHBAg+CV5R5zvliqsJCwG5+6epgCt2UYA=; b=ulFLO+JvNFS/zG
	0R2dEw/eSAGBKTctexcsQVa4Ww3JON242orsCcKs8O1S9oxGrXNJxYtrctVvl+FuGDkaG9YFZWow0
	Zv+8Wfjjk0NJr8dMC7z3qY2byF6BGUtU5K6KD2YAvGKtNBXBrmgnULL8/aLooRBYCDPiKk/ApAvH6
	1rUkvHYvDlgIobRgsyY/ZsiqNDjWxiSBlgThswAmZoK6vK92DyuWPZ6GzvWY77gpeNT20WIai4/VJ
	tVM34pIsYaC6mEjAMcEPPU/ZcqkAOB3MKMEljxlND7pi6QdoFhGPi1y1lYXXSHB4SgLwPmWrcJzlR
	Hc8h2zPwueNB+kycB6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikqoA-0005qU-Om; Fri, 27 Dec 2019 14:41:42 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikqnz-0005q3-Ll
 for openwrt-devel@lists.openwrt.org; Fri, 27 Dec 2019 14:41:34 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 382cb6e0;
 Fri, 27 Dec 2019 13:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
 :subject:date:message-id:mime-version:content-transfer-encoding;
 s=mail; bh=zq3TlvhIdBtJPoTusPgVqG8sNGg=; b=L53ImlHZ8jSETdkuIrMQ
 ComMtUHPmvxYjLh2t/7jSud18RG1x/zXV8MB3d2rptw63wWoC5b6XgfsZ5zxe/+E
 6cJn0GQ6cfUoBNFYEDqy0qqlL2jKea1sVVZpti66xKy4KWfEL+O/49N92zFOSZgY
 XipqPqaGKo20Fbg34oukg1X6fB1kBb19JUPTk4+UBy/jlDWPyijJGE1QMyRpVtEJ
 SgAGnf847GLq6LK8r8BHwje4f/qgaUgBkaU0JBn8JD5XN4A+mc3/HIH9ayPooFsb
 8FXtuLNW2KTIYqWHoyGPmWJjcyC6ujJZ3Y4Lz2Rz6RD33876RaPutQjOOB0N2yAX
 /g==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id bbb8b24c
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 27 Dec 2019 13:43:43 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 27 Dec 2019 15:41:12 +0100
Message-Id: <20191227144112.984987-1-Jason@zx2c4.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_064131_922847_6E29B5EF 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] wireguard: bump to 20191226
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

As announced on the mailing list, WireGuard will be in Linux 5.6. As a
result, the wg(8) tool, used by OpenWRT in the same manner as ip(8), is
moving to its own wireguard-tools repo. Meanwhile, the out-of-tree
kernel module for kernels 3.10 - 5.5 moved to its own wireguard-linux-
compat repo. Yesterday, releases were cut out of these repos, so this
commit bumps packages to match. Since wg(8) and the compat kernel module
are versioned and released separately, we create a wireguard-tools
Makefile to contain the source for the new tools repo. Later, when
OpenWRT moves permanently to Linux 5.6, we'll drop the original module
package, leaving only the tools. So this commit shuffles the build
definition around a bit but is basically the same idea as before.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile   | 41 +++-----------
 .../network/utils/wireguard-tools/Makefile    | 54 +++++++++++++++++++
 .../wireguard-tools}/files/wireguard.sh       |  0
 .../wireguard-tools}/files/wireguard_watchdog |  0
 4 files changed, 61 insertions(+), 34 deletions(-)
 create mode 100644 package/network/utils/wireguard-tools/Makefile
 rename package/network/{services/wireguard => utils/wireguard-tools}/files/wireguard.sh (100%)
 rename package/network/{services/wireguard => utils/wireguard-tools}/files/wireguard_watchdog (100%)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index 2849361733..c379b712dd 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -1,5 +1,5 @@
 #
-# Copyright (C) 2016-2018 Jason A. Donenfeld <Jason@zx2c4.com>
+# Copyright (C) 2016-2019 Jason A. Donenfeld <Jason@zx2c4.com>
 # Copyright (C) 2016 Baptiste Jonglez <openwrt@bitsofnetworks.org>
 # Copyright (C) 2016-2017 Dan Luedtke <mail@danrl.com>
 #
@@ -11,17 +11,17 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20191219
+PKG_VERSION:=0.0.20191226
 PKG_RELEASE:=1
 
-PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
-PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
-PKG_HASH:=5aba6f0c38e97faa0b155623ba594bb0e4bd5e29deacd8d5ed8bda8d8283b0e7
+PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
+PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
+PKG_HASH:=7c0e576459c6337bcdea692bdbec561719a15da207dc739e0e3e60ff821a5491
 
-PKG_LICENSE:=GPL-2.0 Apache-2.0
+PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
 
-PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/WireGuard-$(PKG_VERSION)
+PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/wireguard-linux-compat-$(PKG_VERSION)
 PKG_BUILD_PARALLEL:=1
 PKG_USE_MIPS16:=0
 
@@ -56,13 +56,8 @@ endef
 include $(INCLUDE_DIR)/kernel-defaults.mk
 include $(INCLUDE_DIR)/package-defaults.mk
 
-# Used by Build/Compile/Default
-MAKE_PATH:=src/tools
-MAKE_VARS += PLATFORM=linux
-
 define Build/Compile
 	$(MAKE) $(KERNEL_MAKEOPTS) M="$(PKG_BUILD_DIR)/src" modules
-	$(call Build/Compile/Default)
 endef
 
 define Package/wireguard/install
@@ -73,27 +68,6 @@ define Package/wireguard/description
   $(call Package/wireguard/Default/description)
 endef
 
-define Package/wireguard-tools
-  $(call Package/wireguard/Default)
-  TITLE:=WireGuard userspace control program (wg)
-  DEPENDS:=+libmnl +ip
-endef
-
-define Package/wireguard-tools/description
-  $(call Package/wireguard/Default/description)
-
-  This package provides the userspace control program for WireGuard,
-  `wg(8)`, a netifd protocol helper, and a re-resolve watchdog script.
-endef
-
-define Package/wireguard-tools/install
-	$(INSTALL_DIR) $(1)/usr/bin/
-	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/tools/wg $(1)/usr/bin/
-	$(INSTALL_BIN) ./files/wireguard_watchdog $(1)/usr/bin/
-	$(INSTALL_DIR) $(1)/lib/netifd/proto/
-	$(INSTALL_BIN) ./files/wireguard.sh $(1)/lib/netifd/proto/
-endef
-
 define KernelPackage/wireguard
   SECTION:=kernel
   CATEGORY:=Kernel modules
@@ -111,5 +85,4 @@ define KernelPackage/wireguard/description
 endef
 
 $(eval $(call BuildPackage,wireguard))
-$(eval $(call BuildPackage,wireguard-tools))
 $(eval $(call KernelPackage,wireguard))
diff --git a/package/network/utils/wireguard-tools/Makefile b/package/network/utils/wireguard-tools/Makefile
new file mode 100644
index 0000000000..2f6d307094
--- /dev/null
+++ b/package/network/utils/wireguard-tools/Makefile
@@ -0,0 +1,54 @@
+#
+# Copyright (C) 2016-2019 Jason A. Donenfeld <Jason@zx2c4.com>
+# Copyright (C) 2016 Baptiste Jonglez <openwrt@bitsofnetworks.org>
+# Copyright (C) 2016-2017 Dan Luedtke <mail@danrl.com>
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+
+include $(TOPDIR)/rules.mk
+include $(INCLUDE_DIR)/kernel.mk
+
+PKG_NAME:=wireguard-tools
+
+PKG_VERSION:=1.0.20191226
+PKG_RELEASE:=1
+
+PKG_SOURCE:=wireguard-tools-$(PKG_VERSION).tar.xz
+PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-tools/snapshot/
+PKG_HASH:=aa8af0fdc9872d369d8c890a84dbc2a2466b55795dccd5b47721b2d97644b04f
+
+PKG_LICENSE:=GPL-2.0
+PKG_LICENSE_FILES:=COPYING
+
+PKG_BUILD_PARALLEL:=1
+PKG_USE_MIPS16:=0
+
+include $(INCLUDE_DIR)/package.mk
+include $(INCLUDE_DIR)/package-defaults.mk
+
+MAKE_PATH:=src
+MAKE_VARS += PLATFORM=linux
+
+define Package/wireguard-tools
+  $(call Package/wireguard/Default)
+  TITLE:=WireGuard userspace control program (wg)
+  DEPENDS:=+libmnl +ip
+endef
+
+define Package/wireguard-tools/description
+  $(call Package/wireguard/Default/description)
+
+  This package provides the userspace control program for WireGuard,
+  `wg(8)`, a netifd protocol helper, and a re-resolve watchdog script.
+endef
+
+define Package/wireguard-tools/install
+	$(INSTALL_DIR) $(1)/usr/bin/
+	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/wg $(1)/usr/bin/
+	$(INSTALL_BIN) ./files/wireguard_watchdog $(1)/usr/bin/
+	$(INSTALL_DIR) $(1)/lib/netifd/proto/
+	$(INSTALL_BIN) ./files/wireguard.sh $(1)/lib/netifd/proto/
+endef
+
+$(eval $(call BuildPackage,wireguard-tools))
diff --git a/package/network/services/wireguard/files/wireguard.sh b/package/network/utils/wireguard-tools/files/wireguard.sh
similarity index 100%
rename from package/network/services/wireguard/files/wireguard.sh
rename to package/network/utils/wireguard-tools/files/wireguard.sh
diff --git a/package/network/services/wireguard/files/wireguard_watchdog b/package/network/utils/wireguard-tools/files/wireguard_watchdog
similarity index 100%
rename from package/network/services/wireguard/files/wireguard_watchdog
rename to package/network/utils/wireguard-tools/files/wireguard_watchdog
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
