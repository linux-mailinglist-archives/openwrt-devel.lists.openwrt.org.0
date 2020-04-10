Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A64351A3E09
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 04:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bq8rp14nmcMtf09kqtXlKTZAf5Sc7s3r59WDCt7n7HI=; b=IOKYpVwzNjdj1m
	gu6w2A5E2ntv1aDYmwZpjy4pZG5Dpd00F+HDAhmVXrw1qaDd4e5zi2tQH0KH12IXAsQCkY9D317vY
	HLIcE/xKgwfqPD35Vpfu0q6HG92jtGA2qNhQV1LcGzyboUHHOjme5Vuch5iNNZNIu7ntxcyjFSknU
	Tql+MkJsLuXvVGHDVKvnrCMNz1TOV6LjwgXJGXd/UsWWZI5ThFxVKoHXpGrWOyg+5Lyaw3gRV0XKB
	wsgvSD/r0dABt/SLH9nK2wv9k3sTYM+QYUhLnMpGGCk0hHGqTTQHEMCQr65IOAPwBj1YwNcPVO2Jo
	eRRv+FZrIPq5ve03YD0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjBe-0003ND-RB; Fri, 10 Apr 2020 02:14:30 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjBW-0003MZ-Ie
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 02:14:24 +0000
Received: by mail-pg1-x535.google.com with SMTP id c5so384159pgi.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Apr 2020 19:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R+COkTgczTTyCOaa2R/qByMSLFJtj5u8p6s+ASO3OoI=;
 b=kC6LH7E/fbJrOKZHVh1l9yUbrvu6TL/7I1rukYgHkMcy8ZT+BH74fcHXpaiEqkY0sz
 7hHUbjS7nuMpTXrnPn9iQvTL92HdoEC0Uk225bZCJ+p1K4U/JawmBeL+ijJrqLa/RfdL
 Ns0pkaxreDzMpkItK94QBz20EjHB6r4XwEEI7g1QJss10iAC8mFZOPyUhlwASxB3Za93
 sGlk1sg2kkxH1WH203QxW3d4oj3sUSgzKQD6u/nFgwavwpSjzQlOU23AbZElgkdInyTT
 b6rag1KOvx25BSzGnuhELT0CS0lnk7KDqYQIHwMtQzg/Xy/UvFQWt2u9M7FQyJyDGUx7
 izNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R+COkTgczTTyCOaa2R/qByMSLFJtj5u8p6s+ASO3OoI=;
 b=TOdTmOksAAD2g+4w+wQJ2H/L8i+bb4nz99IEq8YMqDIzCAPLit3cv2O0Mrb8mRfLD6
 x8xv/s6mB6GTSj03h/2NJiGZ/SXch7gtMH091AOjUsRPJ1NTZ12bIAjxe9cb+mo2Vbpn
 cZFO8fm7s/MmnUzEh4Eq6WpmJPT5tC4IYlmNwqVsSJNer5mAQsFnmmCq3AlER8M25/gB
 YCilHqwWUUlAxWUqS3Ux+Hm7nMKb2Q+DUBAeWY9OkgjkpYqQ2HmoxNSfrJNpbAQ0gg7n
 pGQtleUiwRoUIEs2colaBW5a0mHztOJBJ+aZ1mxHM6VTOgUEPQgujaEFPaeTX5YifJyu
 tmJg==
X-Gm-Message-State: AGi0PuZCc/xaJHO+jl1mFMS3RphTlWAdhvKHUb4V/MA/QbRrafwYDzIU
 zH1qfOLc8SaUQt5kC2jAQd29v361
X-Google-Smtp-Source: APiQypJAkTDBDhru9tVMibhx32blDfGNxajYk8grDnq2bsqve5F4cfLG4mKhZ/Zem6y/TBys5OHCJg==
X-Received: by 2002:a63:e443:: with SMTP id i3mr2337075pgk.436.1586484860451; 
 Thu, 09 Apr 2020 19:14:20 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id a24sm403692pfl.115.2020.04.09.19.14.18
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 19:14:19 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Apr 2020 19:14:15 -0700
Message-Id: <20200410021416.1595728-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_191422_640714_CD9F675B 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] wireguard: bump to 20191226
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

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
(cherry picked from commit ea980fb9c6de24350976dcc6c20da2bed5fc8cb8)
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
index 310d5599c2..f90209fbef 100644
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
 
-PKG_VERSION:=0.0.20190601
+PKG_VERSION:=0.0.20191226
 PKG_RELEASE:=1
 
-PKG_SOURCE:=WireGuard-$(PKG_VERSION).tar.xz
-PKG_SOURCE_URL:=https://git.zx2c4.com/WireGuard/snapshot/
-PKG_HASH:=7528461824a0174bd7d4f15e68d8f0ce9a8ea318411502b80759438e8ef65568
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
 
@@ -57,13 +57,8 @@ endef
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
@@ -74,27 +69,6 @@ define Package/wireguard/description
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
@@ -112,5 +86,4 @@ define KernelPackage/wireguard/description
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
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
