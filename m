Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848C142DBA
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 15:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S4f1vptlmcWszxehAxuhT4fnMnzJrFrgS9YhYUaZnN4=; b=tiIiOz2iolJXeM
	XVHXYjvA32gVVG/QqaUhSFhYLs0DP+O9hgqPGnzHw4SAzwXFeJsy9qmlg62Q/umuMdxfiS14CeROz
	2z1T18HD0PKA9rWzC6gLbLkhsnAC9JymWIcTORAxC7IoiQB8hpT5z+u3WEE8PYIX5dEZo1QLaxrRN
	NQkuePQF9b3ozsfSdc/74FJIcBtaT4vZa3wiZQVMT95NsS0YL6XD64uyvHYNvAdx4Hz60PmlXZKOq
	O+2CZBA/s0OiDW1rM0opEKqOVKt/F0OMtasqJbLBSj13flJoMRv1tfEPKWdAMQIhN1Ryqtr4xVEcA
	bH66uPfo182WNps3NdVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYB7-0007qw-Nr; Mon, 20 Jan 2020 14:37:21 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYAv-0007q4-9M
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 14:37:14 +0000
Received: (wp-smtpd smtp.tlen.pl 31395 invoked from network);
 20 Jan 2020 15:37:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1579531021; bh=fu94z6PeIKjDil1gvt0DP1osjgmNcfsyRsTJWdnCjqk=;
 h=From:To:Subject;
 b=RA10Gkdvblp+YDZeV/WRyz88fLgeYxAWQOxLSXBdaQUt/ViXOf6CD9Ge1J8RgtpVr
 DZahiyICbogjiq13IeDqQg9M8YI3QuVe5oySrb7nyxiRKU/J805Q34K4PJjdOIXAiJ
 WccJfwijhvpiYA3J9AGmG+CvLrYKfgqmcBuF/AiI=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Jan 2020 15:37:01 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Jan 2020 15:36:53 +0100
Message-Id: <20200120143653.27628-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-WP-MailID: d42175f39e12f8bbb424d3fcdc8e7415
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [ERJh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_063709_656872_923FE323 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] kernel: replace SUBDIRS wih M in package
 recipes
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

The SUBDIRS variable has been removed in kernel 5.4, and was deprecated
since the beginnig of kernel git history in favour of M or KBUILD_EXTMOD.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/kernel/acx-mac80211/Makefile        | 2 +-
 package/kernel/ath10k-ct/Makefile           | 2 +-
 package/kernel/broadcom-wl/Makefile         | 8 ++++----
 package/kernel/button-hotplug/Makefile      | 2 +-
 package/kernel/gpio-button-hotplug/Makefile | 2 +-
 package/kernel/gpio-nct5104d/Makefile       | 2 +-
 package/kernel/hwmon-gsc/Makefile           | 2 +-
 package/kernel/i2c-gpio-custom/Makefile     | 2 +-
 package/kernel/kmod-sched-cake/Makefile     | 2 +-
 package/kernel/leds-apu2/Makefile           | 2 +-
 package/kernel/mt76/Makefile                | 2 +-
 package/kernel/mwlwifi/Makefile             | 2 +-
 package/kernel/nat46/Makefile               | 2 +-
 package/kernel/rtc-rv5c386a/Makefile        | 2 +-
 package/kernel/rtl8812au-ct/Makefile        | 2 +-
 package/kernel/spi-gpio-custom/Makefile     | 2 +-
 package/kernel/trelay/Makefile              | 2 +-
 package/kernel/w1-gpio-custom/Makefile      | 2 +-
 18 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/package/kernel/acx-mac80211/Makefile b/package/kernel/acx-mac80211/Makefile
index 195802f5f5..a04b9e28ba 100644
--- a/package/kernel/acx-mac80211/Makefile
+++ b/package/kernel/acx-mac80211/Makefile
@@ -181,7 +181,7 @@ PKG_EXTRA_CFLAGS:= \
 define Build/Compile
 	$(MAKE) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
-		SUBDIRS="$(PKG_BUILD_DIR)" \
+		M="$(PKG_BUILD_DIR)" \
 		$(PKG_EXTRA_KCONFIG) \
 		EXTRA_CFLAGS="$(PKG_EXTRA_CFLAGS) -DCONFIG_ACX_MAC80211_VERSION=\"KERNEL_VERSION(4,2,0)\"" \
 		LINUXINCLUDE="-I$(STAGING_DIR)/usr/include/mac80211-backport/uapi -I$(STAGING_DIR)/usr/include/mac80211-backport \
diff --git a/package/kernel/ath10k-ct/Makefile b/package/kernel/ath10k-ct/Makefile
index c29d28f41a..c2f383862c 100644
--- a/package/kernel/ath10k-ct/Makefile
+++ b/package/kernel/ath10k-ct/Makefile
@@ -112,7 +112,7 @@ endif
 define Build/Compile
 	+$(MAKE) $(CT_MAKEDEFS) $(PKG_JOBS) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
-		SUBDIRS="$(PKG_BUILD_DIR)/ath10k$(CT_KVER)" \
+		M="$(PKG_BUILD_DIR)/ath10k$(CT_KVER)" \
 		NOSTDINC_FLAGS="$(NOSTDINC_FLAGS)" \
 		modules
 endef
diff --git a/package/kernel/broadcom-wl/Makefile b/package/kernel/broadcom-wl/Makefile
index 140107df17..9e91cfea20 100644
--- a/package/kernel/broadcom-wl/Makefile
+++ b/package/kernel/broadcom-wl/Makefile
@@ -102,7 +102,7 @@ endef
 MAKE_KMOD := $(MAKE) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
 		PATH="$(TARGET_PATH)" \
-		SUBDIRS="$(PKG_BUILD_DIR)/kmod" \
+		M="$(PKG_BUILD_DIR)/kmod" \
 
 define Build/Prepare
 	$(call Build/Prepare/Default)
@@ -113,18 +113,18 @@ endef
 define Build/Compile
 	# Compile glue driver
 	$(MAKE_KMOD) -C "$(LINUX_DIR)" \
-		SUBDIRS="$(PKG_BUILD_DIR)/glue" \
+		M="$(PKG_BUILD_DIR)/glue" \
 		modules
 
 	# Compile the kernel part
 	$(MAKE_KMOD) \
-		SUBDIRS="$(PKG_BUILD_DIR)/driver" \
+		M="$(PKG_BUILD_DIR)/driver" \
 		MODFLAGS="-DMODULE -mlong-calls" \
 		KBUILD_EXTRA_SYMBOLS="$(PKG_BUILD_DIR)/glue/Module.symvers" \
 		modules
 
 	$(MAKE_KMOD) \
-		SUBDIRS="$(PKG_BUILD_DIR)/driver-mini" \
+		M="$(PKG_BUILD_DIR)/driver-mini" \
 		MODFLAGS="-DMODULE -mlong-calls" \
 		BUILD_TYPE="wl_apsta_mini" \
 		KBUILD_EXTRA_SYMBOLS="$(PKG_BUILD_DIR)/glue/Module.symvers" \
diff --git a/package/kernel/button-hotplug/Makefile b/package/kernel/button-hotplug/Makefile
index 2554ae61dd..55412e5685 100644
--- a/package/kernel/button-hotplug/Makefile
+++ b/package/kernel/button-hotplug/Makefile
@@ -37,7 +37,7 @@ EXTRA_CFLAGS:= \
 
 MAKE_OPTS:= \
 	$(KERNEL_MAKE_FLAGS) \
-	SUBDIRS="$(PKG_BUILD_DIR)" \
+	M="$(PKG_BUILD_DIR)" \
 	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
 	$(EXTRA_KCONFIG)
 
diff --git a/package/kernel/gpio-button-hotplug/Makefile b/package/kernel/gpio-button-hotplug/Makefile
index ffbc19756c..09f9c00e99 100644
--- a/package/kernel/gpio-button-hotplug/Makefile
+++ b/package/kernel/gpio-button-hotplug/Makefile
@@ -34,7 +34,7 @@ endef
 
 MAKE_OPTS:= \
 	$(KERNEL_MAKE_FLAGS) \
-	SUBDIRS="$(PKG_BUILD_DIR)"
+	M="$(PKG_BUILD_DIR)"
 
 define Build/Compile
 	$(MAKE) -C "$(LINUX_DIR)" \
diff --git a/package/kernel/gpio-nct5104d/Makefile b/package/kernel/gpio-nct5104d/Makefile
index 33352388cf..e85639c94a 100644
--- a/package/kernel/gpio-nct5104d/Makefile
+++ b/package/kernel/gpio-nct5104d/Makefile
@@ -38,7 +38,7 @@ EXTRA_CFLAGS:= \
 
 MAKE_OPTS:= \
 	$(KERNEL_MAKE_FLAGS) \
-	SUBDIRS="$(PKG_BUILD_DIR)" \
+	M="$(PKG_BUILD_DIR)" \
 	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
 	$(EXTRA_KCONFIG)
 
diff --git a/package/kernel/hwmon-gsc/Makefile b/package/kernel/hwmon-gsc/Makefile
index 3888a2f17e..454f685f8f 100644
--- a/package/kernel/hwmon-gsc/Makefile
+++ b/package/kernel/hwmon-gsc/Makefile
@@ -21,7 +21,7 @@ endef
 define Build/Compile
 	$(MAKE) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
-		SUBDIRS="$(PKG_BUILD_DIR)" \
+		M="$(PKG_BUILD_DIR)" \
 		EXTRA_CFLAGS="$(BUILDFLAGS)" \
 		modules
 endef
diff --git a/package/kernel/i2c-gpio-custom/Makefile b/package/kernel/i2c-gpio-custom/Makefile
index 4891423d5c..d9d1d311fe 100644
--- a/package/kernel/i2c-gpio-custom/Makefile
+++ b/package/kernel/i2c-gpio-custom/Makefile
@@ -34,7 +34,7 @@ EXTRA_CFLAGS:= \
 
 MAKE_OPTS:= \
 	$(KERNEL_MAKE_FLAGS) \
-	SUBDIRS="$(PKG_BUILD_DIR)" \
+	M="$(PKG_BUILD_DIR)" \
 	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
 	$(EXTRA_KCONFIG)
 
diff --git a/package/kernel/kmod-sched-cake/Makefile b/package/kernel/kmod-sched-cake/Makefile
index 7778d48041..42e45b5789 100644
--- a/package/kernel/kmod-sched-cake/Makefile
+++ b/package/kernel/kmod-sched-cake/Makefile
@@ -36,7 +36,7 @@ define KernelPackage/sched-cake/description
 endef
 
 define Build/Compile
-	$(KERNEL_MAKE) SUBDIRS="$(PKG_BUILD_DIR)" modules
+	$(KERNEL_MAKE) M="$(PKG_BUILD_DIR)" modules
 endef
 
 $(eval $(call KernelPackage,sched-cake))
diff --git a/package/kernel/leds-apu2/Makefile b/package/kernel/leds-apu2/Makefile
index 08aca1750f..1d01548ba2 100644
--- a/package/kernel/leds-apu2/Makefile
+++ b/package/kernel/leds-apu2/Makefile
@@ -38,7 +38,7 @@ EXTRA_CFLAGS:= \
 
 MAKE_OPTS:= \
 	$(KERNEL_MAKE_FLAGS) \
-	SUBDIRS="$(PKG_BUILD_DIR)" \
+	M="$(PKG_BUILD_DIR)" \
 	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
 	$(EXTRA_KCONFIG)
 
diff --git a/package/kernel/mt76/Makefile b/package/kernel/mt76/Makefile
index c64a1384f6..ba20eb41c6 100644
--- a/package/kernel/mt76/Makefile
+++ b/package/kernel/mt76/Makefile
@@ -198,7 +198,7 @@ define Build/Compile
 	+$(MAKE) $(PKG_JOBS) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
 		$(PKG_MAKE_FLAGS) \
-		SUBDIRS="$(PKG_BUILD_DIR)" \
+		M="$(PKG_BUILD_DIR)" \
 		NOSTDINC_FLAGS="$(NOSTDINC_FLAGS)" \
 		modules
 endef
diff --git a/package/kernel/mwlwifi/Makefile b/package/kernel/mwlwifi/Makefile
index aa8eea0450..b9e0e75690 100644
--- a/package/kernel/mwlwifi/Makefile
+++ b/package/kernel/mwlwifi/Makefile
@@ -44,7 +44,7 @@ NOSTDINC_FLAGS = \
 define Build/Compile
 	+$(MAKE) $(PKG_JOBS) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
-		SUBDIRS="$(PKG_BUILD_DIR)" \
+		M="$(PKG_BUILD_DIR)" \
 		NOSTDINC_FLAGS="$(NOSTDINC_FLAGS)" \
 		modules
 endef
diff --git a/package/kernel/nat46/Makefile b/package/kernel/nat46/Makefile
index 755a2958c9..dfe7539c53 100644
--- a/package/kernel/nat46/Makefile
+++ b/package/kernel/nat46/Makefile
@@ -26,7 +26,7 @@ endef
 include $(INCLUDE_DIR)/kernel-defaults.mk
 
 define Build/Compile
-	$(KERNEL_MAKE) SUBDIRS="$(PKG_BUILD_DIR)/nat46/modules" \
+	$(KERNEL_MAKE) M="$(PKG_BUILD_DIR)/nat46/modules" \
 		MODFLAGS="-DMODULE -mlong-calls" \
 		EXTRA_CFLAGS="-DNAT46_VERSION=\\\"$(PKG_SOURCE_VERSION)\\\"" \
 		modules
diff --git a/package/kernel/rtc-rv5c386a/Makefile b/package/kernel/rtc-rv5c386a/Makefile
index a268ad508c..4bb227bc69 100644
--- a/package/kernel/rtc-rv5c386a/Makefile
+++ b/package/kernel/rtc-rv5c386a/Makefile
@@ -24,7 +24,7 @@ endef
 define Build/Compile
 	$(MAKE) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
-		SUBDIRS="$(PKG_BUILD_DIR)" \
+		M="$(PKG_BUILD_DIR)" \
 		EXTRA_CFLAGS="$(BUILDFLAGS)" \
 		modules
 endef
diff --git a/package/kernel/rtl8812au-ct/Makefile b/package/kernel/rtl8812au-ct/Makefile
index 2d7cfebd54..b7f6d225b1 100644
--- a/package/kernel/rtl8812au-ct/Makefile
+++ b/package/kernel/rtl8812au-ct/Makefile
@@ -45,7 +45,7 @@ NOSTDINC_FLAGS+=-DCONFIG_IOCTL_CFG80211 -DRTW_USE_CFG80211_STA_EVENT -DBUILD_OPE
 define Build/Compile
 	+$(MAKE) $(PKG_JOBS) -C "$(LINUX_DIR)" \
 		$(KERNEL_MAKE_FLAGS) \
-		SUBDIRS="$(PKG_BUILD_DIR)" \
+		M="$(PKG_BUILD_DIR)" \
 		NOSTDINC_FLAGS="$(NOSTDINC_FLAGS)" \
 		modules
 endef
diff --git a/package/kernel/spi-gpio-custom/Makefile b/package/kernel/spi-gpio-custom/Makefile
index b0da3db188..710a2c2b70 100644
--- a/package/kernel/spi-gpio-custom/Makefile
+++ b/package/kernel/spi-gpio-custom/Makefile
@@ -34,7 +34,7 @@ EXTRA_CFLAGS:= \
 
 MAKE_OPTS:= \
 	$(KERNEL_MAKE_FLAGS) \
-	SUBDIRS="$(PKG_BUILD_DIR)" \
+	M="$(PKG_BUILD_DIR)" \
 	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
 	$(EXTRA_KCONFIG)
 
diff --git a/package/kernel/trelay/Makefile b/package/kernel/trelay/Makefile
index 258cbb184a..a6bada1a9b 100644
--- a/package/kernel/trelay/Makefile
+++ b/package/kernel/trelay/Makefile
@@ -32,7 +32,7 @@ endef
 include $(INCLUDE_DIR)/kernel-defaults.mk
 
 define Build/Compile
-	$(KERNEL_MAKE) SUBDIRS="$(PKG_BUILD_DIR)" modules
+	$(KERNEL_MAKE) M="$(PKG_BUILD_DIR)" modules
 endef
 
 define KernelPackage/trelay/conffiles
diff --git a/package/kernel/w1-gpio-custom/Makefile b/package/kernel/w1-gpio-custom/Makefile
index 021791ff94..719974a5cc 100644
--- a/package/kernel/w1-gpio-custom/Makefile
+++ b/package/kernel/w1-gpio-custom/Makefile
@@ -34,7 +34,7 @@ EXTRA_CFLAGS:= \
 
 MAKE_OPTS:= \
 	$(KERNEL_MAKE_FLAGS) \
-	SUBDIRS="$(PKG_BUILD_DIR)" \
+	M="$(PKG_BUILD_DIR)" \
 	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
 	$(EXTRA_KCONFIG)
 
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
