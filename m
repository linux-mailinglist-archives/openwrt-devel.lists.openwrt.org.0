Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C5EFF739
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 02:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BZF+lv8X39i9pPykRaf+EDQV7YuiFFWOe6XVlWe3pwM=; b=gI7S5HuEgAidd1
	rFRozvTycs2hox5QRP8DhBUyJ8VRdO7d0OZkU/AAzflYkW5g+VdNZxaHpbZZafPLHRdlENW6Y8y3Y
	2NmjUWT4ZXptzSJPCdTlKb0rjXhqWNOPRpTlgTZFZlaI5wpmD49pxiM5fTSHHVAfW9vEHVTpHZygu
	xdGaciuP5mBxTv5hTrnbKOLMaSnQq5eozumLLBbVFka3ikMK0H411lkJYnhXPlknvwLcYe9dL2u9j
	Y71lDPUOXmj13yg4Qge0LFevDa1gEqWJdYAGeNfm0/z9NSSLf2lH6SUcX0BIB8SKPmYNUdvUJPH1L
	TVvHu3Jn/uo/i72g/3ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW9cd-00038M-Tr; Sun, 17 Nov 2019 01:45:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW9cP-00037y-BD
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 01:44:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id b18so13930089wrj.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 Nov 2019 17:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RBXOA59xtWZc9xfczNYzzRzgvLkzbVOO6pPJW9gOra8=;
 b=tbBvOGHmHC+jwhF2tJ5jPujYMfDvjpY2aeHNoCIhPEGYh7mS9DO8zH91Aj9z5yi+0p
 v1CVz9EJYp/OYOmtcwuhncOqMYrIJgYBTEU4YzKZ2xLYgmQoMMSJ+8s5/Ie8F+JAomq2
 huqN/GhZI6diRVAEK1GnYsvL1XiV8LibsugL1vGY2+1JDs0Z+6VHzHST9QrjiTCWYdwH
 y2DjD9DtBk/MJY9D2kzHAllbAx+aWuZrIydffLcJTfDWibyPcwORU5lD6KBKLSeklbt2
 Br2x1q4l/JgDLxOQsUtrGHs4oy7VojmS1RhMiZ7BGLLdRZ7jzgguw28A07q97q+95YfL
 QUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RBXOA59xtWZc9xfczNYzzRzgvLkzbVOO6pPJW9gOra8=;
 b=A3Owfo9V5igvnFpd2/TyiQiM5YhNu0ZF2zUt/pobHhLcotetC7N7UbfiersXhJbceq
 dIZ/UmcRZgnojpoqesg6Z4gs4gNRYwW46Bq6rq8UbnVpOtgY7/YxW1EhHjTBgEmgEL3t
 ZNRaaw9/jixyRAHCK3dsDjPxLpQwCAAQHmWvptdD3nCbRyTPgSe+oJ4v5n1e5vBZanQb
 ZbOYEyRDPfRgVyJxK2Wb5EN4Q52qguyHeaFhHs7YW21ZKrK0/ozAxuOe3VD7oOiF9v7z
 a1w7rEJZU15LAyDDFdYm1mxFPpYSbbhVfksQPOZYcyAKHSHqX5eLfMJDy96uYs4VIYx2
 S/+Q==
X-Gm-Message-State: APjAAAVw3wcJGNe/noH/QtMXgkzQSnWl7AbE11fu2Q+taf2/0GnJlUR3
 tmbtle0bahG7/Ms55Tj2Zhu5NTCV
X-Google-Smtp-Source: APXvYqzuh8Sumk2D4mo3tlNqbOhVGSF0q58jrTihnzy7kORJbJATUhv0N7yBSHevIclu/HpC5FN49g==
X-Received: by 2002:adf:fd4a:: with SMTP id h10mr21690110wrs.90.1573955085343; 
 Sat, 16 Nov 2019 17:44:45 -0800 (PST)
Received: from debian64.daheim
 (p200300D5FF3CEFFCD63D7EFFFEBDE96E.dip0.t-ipconnect.de.
 [2003:d5:ff3c:effc:d63d:7eff:febd:e96e])
 by smtp.gmail.com with ESMTPSA id l10sm20070347wrg.90.2019.11.16.17.44.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 17:44:44 -0800 (PST)
Received: from chuck by debian64.daheim with local (Exim 4.93-RC2)
 (envelope-from <chunkeey@gmail.com>)
 id 1iW9cI-005zRi-Pr; Sun, 17 Nov 2019 02:44:42 +0100
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 Nov 2019 02:44:42 +0100
Message-Id: <20191117014442.1427795-1-chunkeey@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_174449_416357_E5BAD03C 
X-CRM114-Status: GOOD (  25.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] mac80211: switch to upstream owl-loader
 driver
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The Owl Loader (named after the codename that Atheros gave
these devices back in the day) has been accepted upstream.

This patch removes the "misc" driver OpenWrt had and adds
the remaining differences against the version that ships
with 5.4-rc1 into a separate "120-owl-loader-compat.patch"
file that can be cut down once AR71XX is being dealt with.

Note: I decided to keep the existing (kmod-)owl-loader
package name around for now. The kernel module file in
the kmod package will be called ath9k_pci_owl_loader.ko
though.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 package/kernel/linux/modules/wireless.mk      |  21 --
 package/kernel/mac80211/ath.mk                |  20 +-
 .../patches/ath/120-owl-loader-compat.patch   |  67 +++++
 .../generic/files/drivers/misc/owl-loader.c   | 246 ------------------
 .../hack-4.14/835-misc-owl_loader.patch       |  52 ----
 .../hack-4.19/835-misc-owl_loader.patch       |  52 ----
 .../hack-4.9/835-misc-owl_loader.patch        |  52 ----
 7 files changed, 86 insertions(+), 424 deletions(-)
 create mode 100644 package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch
 delete mode 100644 target/linux/generic/files/drivers/misc/owl-loader.c
 delete mode 100644 target/linux/generic/hack-4.14/835-misc-owl_loader.patch
 delete mode 100644 target/linux/generic/hack-4.19/835-misc-owl_loader.patch
 delete mode 100644 target/linux/generic/hack-4.9/835-misc-owl_loader.patch

diff --git a/package/kernel/linux/modules/wireless.mk b/package/kernel/linux/modules/wireless.mk
index 7b1c663567..72e2bf477b 100644
--- a/package/kernel/linux/modules/wireless.mk
+++ b/package/kernel/linux/modules/wireless.mk
@@ -41,24 +41,3 @@ define KernelPackage/net-rtl8192su/description
 endef
 
 $(eval $(call KernelPackage,net-rtl8192su))
-
-
-define KernelPackage/owl-loader
-  SUBMENU:=$(WIRELESS_MENU)
-  TITLE:=Owl loader for initializing Atheros PCI(e) Wifi chips
-  DEPENDS:=@PCI_SUPPORT
-  KCONFIG:=CONFIG_OWL_LOADER
-  FILES:=$(LINUX_DIR)/drivers/misc/owl-loader.ko
-  AUTOLOAD:=$(call AutoProbe,owl-loader)
-endef
-
-define KernelPackage/owl-loader/description
-  Kernel module that helps to initialize certain Qualcomm
-  Atheros' PCI(e) Wifi chips, which have the init data
-  (which contains the PCI device ID for example) stored
-  together with the calibration data in the file system.
-
-  This is necessary for devices like the Cisco Meraki Z1.
-endef
-
-$(eval $(call KernelPackage,owl-loader))
diff --git a/package/kernel/mac80211/ath.mk b/package/kernel/mac80211/ath.mk
index 64aac41b4d..788131b751 100644
--- a/package/kernel/mac80211/ath.mk
+++ b/package/kernel/mac80211/ath.mk
@@ -1,6 +1,6 @@
 PKG_DRIVERS += \
 	ath ath5k ath6kl ath6kl-sdio ath6kl-usb ath9k ath9k-common ath9k-htc ath10k \
-	carl9170
+	carl9170 owl-loader
 
 PKG_CONFIG_DEPENDS += \
 	CONFIG_PACKAGE_ATH_DEBUG \
@@ -38,6 +38,7 @@ config-$(CONFIG_PACKAGE_ATH_SPECTRAL) += ATH9K_COMMON_SPECTRAL ATH10K_SPECTRAL
 config-$(CONFIG_PACKAGE_ATH_DYNACK) += ATH9K_DYNACK
 config-$(call config_package,ath9k) += ATH9K
 config-$(call config_package,ath9k-common) += ATH9K_COMMON
+config-$(call config_package,owl-loader) += ATH9K_PCI_NO_EEPROM
 config-$(CONFIG_TARGET_ar71xx) += ATH9K_AHB
 config-$(CONFIG_TARGET_ath79) += ATH9K_AHB
 config-$(CONFIG_TARGET_ipq40xx) += ATH10K_AHB
@@ -274,3 +275,20 @@ define KernelPackage/carl9170
   FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/ath/carl9170/carl9170.ko
   AUTOLOAD:=$(call AutoProbe,carl9170)
 endef
+
+define KernelPackage/owl-loader
+  $(call KernelPackage/mac80211/Default)
+  TITLE:=Owl loader for initializing Atheros PCI(e) Wifi chips
+  DEPENDS:=@PCI_SUPPORT +kmod-ath9k
+  FILES:=$(PKG_BUILD_DIR)/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.ko
+  AUTOLOAD:=$(call AutoProbe,ath9k_pci_owl_loader)
+endef
+
+define KernelPackage/owl-loader/description
+  Kernel module that helps to initialize certain Qualcomm
+  Atheros' PCI(e) Wifi chips, which have the init data
+  (which contains the PCI device ID for example) stored
+  together with the calibration data in the file system.
+
+  This is necessary for devices like the Cisco Meraki Z1.
+endef
diff --git a/package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch b/package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch
new file mode 100644
index 0000000000..256fca45e4
--- /dev/null
+++ b/package/kernel/mac80211/patches/ath/120-owl-loader-compat.patch
@@ -0,0 +1,67 @@
+From: Christian Lamparter <chunkeey@gmail.com>
+Date: Sat, 16 Nov 2019 19:25:24 +0100
+Subject: [PATCH] owl_loader: compatibility patch
+
+This patch includes OpenWrt specific changes that are
+not included in the upstream owl-loader.
+
+These include:
+	- A Byteswap fix for lantiq's PCI code
+
+	- platform data handling for ar71xx
+
+Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
+
+--- a/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
++++ b/drivers/net/wireless/ath/ath9k/ath9k_pci_owl_loader.c
+@@ -84,6 +84,10 @@
+ 			val = swahb32(val);
+ 		}
+ 
++#ifdef CONFIG_LANTIQ
++		val = swab32(val);
++#endif
++
+ 		__raw_writel(val, mem + reg);
+ 		usleep_range(100, 120);
+ 	}
+@@ -104,6 +108,7 @@
+ {
+ 	struct pci_dev *pdev = (struct pci_dev *)context;
+ 	struct owl_ctx *ctx = (struct owl_ctx *)pci_get_drvdata(pdev);
++	struct ath9k_platform_data *pdata = dev_get_platdata(&pdev->dev);
+ 	struct pci_bus *bus;
+ 
+ 	complete(&ctx->eeprom_load);
+@@ -121,6 +124,16 @@
+ 		goto release;
+ 	}
+ 
++	if (pdata) {
++		memcpy(pdata->eeprom_data, fw->data, fw->size);
++
++		/*
++		 * eeprom has been successfully loaded - pass the data to ath9k
++		 * but remove the eeprom_name, so it doesn't try to load it too.
++		 */
++		pdata->eeprom_name = NULL;
++	}
++
+ 	if (ath9k_pci_fixup(pdev, (const u16 *)fw->data, fw->size))
+ 		goto release;
+ 
+@@ -138,8 +153,14 @@
+ static const char *owl_get_eeprom_name(struct pci_dev *pdev)
+ {
+ 	struct device *dev = &pdev->dev;
++	struct ath9k_platform_data *pdata;
+ 	char *eeprom_name;
+ 
++	/* try the existing platform data first */
++	pdata = dev_get_platdata(dev);
++	if (pdata && pdata->eeprom_name)
++		return pdata->eeprom_name;
++
+ 	dev_dbg(dev, "using auto-generated eeprom filename\n");
+ 
+ 	eeprom_name = devm_kzalloc(dev, EEPROM_FILENAME_LEN, GFP_KERNEL);
diff --git a/target/linux/generic/files/drivers/misc/owl-loader.c b/target/linux/generic/files/drivers/misc/owl-loader.c
deleted file mode 100644
index a4e55ad7b1..0000000000
--- a/target/linux/generic/files/drivers/misc/owl-loader.c
+++ /dev/null
@@ -1,246 +0,0 @@
-/*
- * Initialize Owl Emulation Devices
- *
- * Copyright (C) 2016 Christian Lamparter <chunkeey@googlemail.com>
- * Copyright (C) 2016 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License version 2 as published
- * by the Free Software Foundation.
- *
- * Some devices (like the Cisco Meraki Z1 Cloud Managed Teleworker Gateway)
- * need to be able to initialize the PCIe wifi device. Normally, this is done
- * during the early stages of booting linux, because the necessary init code
- * is read from the memory mapped SPI and passed to pci_enable_ath9k_fixup.
- * However,this isn't possible for devices which have the init code for the
- * Atheros chip stored on NAND. Hence, this module can be used to initialze
- * the chip when the user-space is ready to extract the init code.
- */
-#include <linux/module.h>
-#include <linux/version.h>
-#include <linux/completion.h>
-#include <linux/etherdevice.h>
-#include <linux/firmware.h>
-#include <linux/pci.h>
-#include <linux/delay.h>
-#include <linux/platform_device.h>
-#include <linux/ath9k_platform.h>
-
-struct owl_ctx {
-	struct completion eeprom_load;
-};
-
-#define EEPROM_FILENAME_LEN 100
-
-#define AR5416_EEPROM_MAGIC 0xa55a
-
-static int ath9k_pci_fixup(struct pci_dev *pdev, const u16 *cal_data,
-			   size_t cal_len)
-{
-	void __iomem *mem;
-	const void *cal_end = (void *)cal_data + cal_len;
-	const struct {
-		u16 reg;
-		u16 low_val;
-		u16 high_val;
-	} __packed *data;
-	u16 cmd;
-	u32 bar0;
-	bool swap_needed = false;
-
-	if (*cal_data != AR5416_EEPROM_MAGIC) {
-		if (*cal_data != swab16(AR5416_EEPROM_MAGIC)) {
-			dev_err(&pdev->dev, "invalid calibration data\n");
-			return -EINVAL;
-		}
-
-		dev_dbg(&pdev->dev, "calibration data needs swapping\n");
-		swap_needed = true;
-	}
-
-	dev_info(&pdev->dev, "fixup device configuration\n");
-
-	mem = pcim_iomap(pdev, 0, 0);
-	if (!mem) {
-		dev_err(&pdev->dev, "ioremap error\n");
-		return -EINVAL;
-	}
-
-	pci_read_config_dword(pdev, PCI_BASE_ADDRESS_0, &bar0);
-	pci_write_config_dword(pdev, PCI_BASE_ADDRESS_0,
-			       pci_resource_start(pdev, 0));
-	pci_read_config_word(pdev, PCI_COMMAND, &cmd);
-	cmd |= PCI_COMMAND_MASTER | PCI_COMMAND_MEMORY;
-	pci_write_config_word(pdev, PCI_COMMAND, cmd);
-
-	/* set pointer to first reg address */
-	for (data = (const void *) (cal_data + 3);
-	     (const void *) data <= cal_end && data->reg != (u16)~0;
-	     data++) {
-		u32 val;
-		u16 reg;
-
-		reg = data->reg;
-		val = data->low_val;
-		val |= ((u32)data->high_val) << 16;
-
-		if (swap_needed) {
-			reg = swab16(reg);
-			val = swahb32(val);
-		}
-
-#ifdef CONFIG_LANTIQ
-		val = swab32(val);
-#endif
-
-		__raw_writel(val, mem + reg);
-		udelay(100);
-	}
-
-	pci_read_config_word(pdev, PCI_COMMAND, &cmd);
-	cmd &= ~(PCI_COMMAND_MASTER | PCI_COMMAND_MEMORY);
-	pci_write_config_word(pdev, PCI_COMMAND, cmd);
-
-	pci_write_config_dword(pdev, PCI_BASE_ADDRESS_0, bar0);
-	pcim_iounmap(pdev, mem);
-
-	pci_disable_device(pdev);
-
-	return 0;
-}
-
-static void owl_fw_cb(const struct firmware *fw, void *context)
-{
-	struct pci_dev *pdev = (struct pci_dev *) context;
-	struct owl_ctx *ctx = (struct owl_ctx *) pci_get_drvdata(pdev);
-	struct ath9k_platform_data *pdata = dev_get_platdata(&pdev->dev);
-	struct pci_bus *bus;
-
-	complete(&ctx->eeprom_load);
-
-	if (!fw) {
-		dev_err(&pdev->dev, "no eeprom data received.\n");
-		goto release;
-	}
-
-	/* also note that we are doing *u16 operations on the file */
-	if (fw->size > sizeof(pdata->eeprom_data) || fw->size < 0x200 ||
-	    (fw->size & 1) == 1) {
-		dev_err(&pdev->dev, "eeprom file has an invalid size.\n");
-		goto release;
-	}
-
-	if (pdata) {
-		memcpy(pdata->eeprom_data, fw->data, fw->size);
-
-		/*
-		 * eeprom has been successfully loaded - pass the data to ath9k
-		 * but remove the eeprom_name, so it doesn't try to load it too.
-		 */
-		pdata->eeprom_name = NULL;
-	}
-
-	if (ath9k_pci_fixup(pdev, (const u16 *) fw->data, fw->size))
-		goto release;
-
-	pci_lock_rescan_remove();
-	bus = pdev->bus;
-	pci_stop_and_remove_bus_device(pdev);
-	/*
-	 * the device should come back with the proper
-	 * ProductId. But we have to initiate a rescan.
-	 */
-	pci_rescan_bus(bus);
-	pci_unlock_rescan_remove();
-
-release:
-	release_firmware(fw);
-}
-
-static const char *owl_get_eeprom_name(struct pci_dev *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct ath9k_platform_data *pdata;
-	char *eeprom_name;
-
-	/* try the existing platform data first */
-	pdata = dev_get_platdata(dev);
-	if (pdata && pdata->eeprom_name)
-		return pdata->eeprom_name;
-
-	dev_dbg(dev, "using auto-generated eeprom filename\n");
-
-	eeprom_name = devm_kzalloc(dev, EEPROM_FILENAME_LEN, GFP_KERNEL);
-	if (!eeprom_name)
-		return NULL;
-
-	/* this should match the pattern used in ath9k/init.c */
-	scnprintf(eeprom_name, EEPROM_FILENAME_LEN, "ath9k-eeprom-pci-%s.bin",
-		  dev_name(dev));
-
-	return eeprom_name;
-}
-
-static int owl_probe(struct pci_dev *pdev,
-		    const struct pci_device_id *id)
-{
-	struct owl_ctx *ctx;
-	const char *eeprom_name;
-	int err = 0;
-
-	if (pcim_enable_device(pdev))
-		return -EIO;
-
-	pcim_pin_device(pdev);
-
-	eeprom_name = owl_get_eeprom_name(pdev);
-	if (!eeprom_name) {
-		dev_err(&pdev->dev, "no eeprom filename found.\n");
-		return -ENODEV;
-	}
-
-	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
-	if (!ctx) {
-		dev_err(&pdev->dev, "failed to alloc device context.\n");
-		return -ENOMEM;
-	}
-	init_completion(&ctx->eeprom_load);
-
-	pci_set_drvdata(pdev, ctx);
-	err = request_firmware_nowait(THIS_MODULE, true, eeprom_name,
-				      &pdev->dev, GFP_KERNEL, pdev, owl_fw_cb);
-	if (err) {
-		dev_err(&pdev->dev, "failed to request caldata (%d).\n", err);
-		kfree(ctx);
-	}
-	return err;
-}
-
-static void owl_remove(struct pci_dev *pdev)
-{
-	struct owl_ctx *ctx = pci_get_drvdata(pdev);
-
-	if (ctx) {
-		wait_for_completion(&ctx->eeprom_load);
-		pci_set_drvdata(pdev, NULL);
-		kfree(ctx);
-	}
-}
-
-static const struct pci_device_id owl_pci_table[] = {
-	{ PCI_VDEVICE(ATHEROS, 0xff1c) }, /* PCIe */
-	{ PCI_VDEVICE(ATHEROS, 0xff1d) }, /* PCI */
-	{ },
-};
-MODULE_DEVICE_TABLE(pci, owl_pci_table);
-
-static struct pci_driver owl_driver = {
-	.name		= "owl-loader",
-	.id_table	= owl_pci_table,
-	.probe		= owl_probe,
-	.remove		= owl_remove,
-};
-module_pci_driver(owl_driver);
-MODULE_AUTHOR("Christian Lamparter <chunkeey@googlemail.com>");
-MODULE_DESCRIPTION("Initializes Atheros' Owl Emulation devices");
-MODULE_LICENSE("GPL v2");
diff --git a/target/linux/generic/hack-4.14/835-misc-owl_loader.patch b/target/linux/generic/hack-4.14/835-misc-owl_loader.patch
deleted file mode 100644
index bf7f7d5cba..0000000000
--- a/target/linux/generic/hack-4.14/835-misc-owl_loader.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From dd36f935973d91644449bd9749f6062a2bed821b Mon Sep 17 00:00:00 2001
-From: Christian Lamparter <chunkeey@googlemail.com>
-Date: Fri, 7 Jul 2017 17:26:46 +0200
-Subject: misc: owl-loader for delayed Atheros ath9k fixup
-
-Some devices (like the Cisco Meraki Z1 Cloud Managed Teleworker Gateway)
-need to be able to initialize the PCIe wifi device. Normally, this is done
-during the early stages of booting linux, because the necessary init code
-is read from the memory mapped SPI and passed to pci_enable_ath9k_fixup.
-However,this isn't possible for devices which have the init code for the
-Atheros chip stored on NAND in an UBI volume. Hence, this module can be
-used to initialze the chip when the user-space is ready to extract the
-init code.
-
-Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
-Signed-off-by: Christian Lamparter <chunkeey@googlemail.com>
----
- drivers/misc/Kconfig  | 12 ++++++++++++
- drivers/misc/Makefile |  1 +
- 2 files changed, 13 insertions(+)
-
---- a/drivers/misc/Kconfig
-+++ b/drivers/misc/Kconfig
-@@ -151,6 +151,18 @@ config SGI_IOC4
- 	  If you have an SGI Altix with an IOC4-based card say Y.
- 	  Otherwise say N.
- 
-+config OWL_LOADER
-+	tristate "Owl loader for initializing Atheros PCI(e) Wifi chips"
-+	depends on PCI
-+	---help---
-+	This kernel module helps to initialize certain Qualcomm
-+	Atheros' PCI(e) Wifi chips, which have the init data
-+	(which contains the PCI device ID for example) stored
-+	together with the calibration data in the file system.
-+
-+	This is necessary for devices like the Cisco Meraki Z1, say M.
-+	Otherwise say N.
-+
- config TIFM_CORE
- 	tristate "TI Flash Media interface support"
- 	depends on PCI
---- a/drivers/misc/Makefile
-+++ b/drivers/misc/Makefile
-@@ -13,6 +13,7 @@ obj-$(CONFIG_ATMEL_TCLIB)	+= atmel_tclib
- obj-$(CONFIG_DUMMY_IRQ)		+= dummy-irq.o
- obj-$(CONFIG_ICS932S401)	+= ics932s401.o
- obj-$(CONFIG_LKDTM)		+= lkdtm.o
-+obj-$(CONFIG_OWL_LOADER)	+= owl-loader.o
- obj-$(CONFIG_TIFM_CORE)       	+= tifm_core.o
- obj-$(CONFIG_TIFM_7XX1)       	+= tifm_7xx1.o
- obj-$(CONFIG_PHANTOM)		+= phantom.o
diff --git a/target/linux/generic/hack-4.19/835-misc-owl_loader.patch b/target/linux/generic/hack-4.19/835-misc-owl_loader.patch
deleted file mode 100644
index bf0fa596ac..0000000000
--- a/target/linux/generic/hack-4.19/835-misc-owl_loader.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From dd36f935973d91644449bd9749f6062a2bed821b Mon Sep 17 00:00:00 2001
-From: Christian Lamparter <chunkeey@googlemail.com>
-Date: Fri, 7 Jul 2017 17:26:46 +0200
-Subject: misc: owl-loader for delayed Atheros ath9k fixup
-
-Some devices (like the Cisco Meraki Z1 Cloud Managed Teleworker Gateway)
-need to be able to initialize the PCIe wifi device. Normally, this is done
-during the early stages of booting linux, because the necessary init code
-is read from the memory mapped SPI and passed to pci_enable_ath9k_fixup.
-However,this isn't possible for devices which have the init code for the
-Atheros chip stored on NAND in an UBI volume. Hence, this module can be
-used to initialze the chip when the user-space is ready to extract the
-init code.
-
-Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
-Signed-off-by: Christian Lamparter <chunkeey@googlemail.com>
----
- drivers/misc/Kconfig  | 12 ++++++++++++
- drivers/misc/Makefile |  1 +
- 2 files changed, 13 insertions(+)
-
---- a/drivers/misc/Kconfig
-+++ b/drivers/misc/Kconfig
-@@ -164,6 +164,18 @@ config SGI_IOC4
- 	  If you have an SGI Altix with an IOC4-based card say Y.
- 	  Otherwise say N.
- 
-+config OWL_LOADER
-+	tristate "Owl loader for initializing Atheros PCI(e) Wifi chips"
-+	depends on PCI
-+	---help---
-+	This kernel module helps to initialize certain Qualcomm
-+	Atheros' PCI(e) Wifi chips, which have the init data
-+	(which contains the PCI device ID for example) stored
-+	together with the calibration data in the file system.
-+
-+	This is necessary for devices like the Cisco Meraki Z1, say M.
-+	Otherwise say N.
-+
- config TIFM_CORE
- 	tristate "TI Flash Media interface support"
- 	depends on PCI
---- a/drivers/misc/Makefile
-+++ b/drivers/misc/Makefile
-@@ -14,6 +14,7 @@ obj-$(CONFIG_ATMEL_TCLIB)	+= atmel_tclib
- obj-$(CONFIG_DUMMY_IRQ)		+= dummy-irq.o
- obj-$(CONFIG_ICS932S401)	+= ics932s401.o
- obj-$(CONFIG_LKDTM)		+= lkdtm/
-+obj-$(CONFIG_OWL_LOADER)	+= owl-loader.o
- obj-$(CONFIG_TIFM_CORE)       	+= tifm_core.o
- obj-$(CONFIG_TIFM_7XX1)       	+= tifm_7xx1.o
- obj-$(CONFIG_PHANTOM)		+= phantom.o
diff --git a/target/linux/generic/hack-4.9/835-misc-owl_loader.patch b/target/linux/generic/hack-4.9/835-misc-owl_loader.patch
deleted file mode 100644
index 07cd4e580a..0000000000
--- a/target/linux/generic/hack-4.9/835-misc-owl_loader.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From dd36f935973d91644449bd9749f6062a2bed821b Mon Sep 17 00:00:00 2001
-From: Christian Lamparter <chunkeey@googlemail.com>
-Date: Fri, 7 Jul 2017 17:26:46 +0200
-Subject: misc: owl-loader for delayed Atheros ath9k fixup
-
-Some devices (like the Cisco Meraki Z1 Cloud Managed Teleworker Gateway)
-need to be able to initialize the PCIe wifi device. Normally, this is done
-during the early stages of booting linux, because the necessary init code
-is read from the memory mapped SPI and passed to pci_enable_ath9k_fixup.
-However,this isn't possible for devices which have the init code for the
-Atheros chip stored on NAND in an UBI volume. Hence, this module can be
-used to initialze the chip when the user-space is ready to extract the
-init code.
-
-Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
-Signed-off-by: Christian Lamparter <chunkeey@googlemail.com>
----
- drivers/misc/Kconfig  | 12 ++++++++++++
- drivers/misc/Makefile |  1 +
- 2 files changed, 13 insertions(+)
-
---- a/drivers/misc/Kconfig
-+++ b/drivers/misc/Kconfig
-@@ -151,6 +151,18 @@ config SGI_IOC4
- 	  If you have an SGI Altix with an IOC4-based card say Y.
- 	  Otherwise say N.
- 
-+config OWL_LOADER
-+	tristate "Owl loader for initializing Atheros PCI(e) Wifi chips"
-+	depends on PCI
-+	---help---
-+	This kernel module helps to initialize certain Qualcomm
-+	Atheros' PCI(e) Wifi chips, which have the init data
-+	(which contains the PCI device ID for example) stored
-+	together with the calibration data in the file system.
-+
-+	This is necessary for devices like the Cisco Meraki Z1, say M.
-+	Otherwise say N.
-+
- config TIFM_CORE
- 	tristate "TI Flash Media interface support"
- 	depends on PCI
---- a/drivers/misc/Makefile
-+++ b/drivers/misc/Makefile
-@@ -12,6 +12,7 @@ obj-$(CONFIG_ATMEL_TCLIB)	+= atmel_tclib
- obj-$(CONFIG_DUMMY_IRQ)		+= dummy-irq.o
- obj-$(CONFIG_ICS932S401)	+= ics932s401.o
- obj-$(CONFIG_LKDTM)		+= lkdtm.o
-+obj-$(CONFIG_OWL_LOADER)	+= owl-loader.o
- obj-$(CONFIG_TIFM_CORE)       	+= tifm_core.o
- obj-$(CONFIG_TIFM_7XX1)       	+= tifm_7xx1.o
- obj-$(CONFIG_PHANTOM)		+= phantom.o
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
