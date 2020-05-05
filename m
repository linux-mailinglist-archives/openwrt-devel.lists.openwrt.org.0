Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957E91C5F12
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 19:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=83etofMf3o0TTbcph771xP/+DzzEWjqOlBV3yMSm5+8=; b=FDgQOK7KEjh1jM0dhp54QvMaFe
	5kvPJtT9kj+o91ke4pIZXs1y6oYYGqP7XPb7a3MAWuVriORVNF+ifGmwLk/H78z9VPGVaSYbJhWqN
	pI4nc5KC2w4IVp3L8FLAkbXne3X316AQTyrNBKkCBMcfQjin45f2nvodN2FVBmfXZBPr3avEM6+z7
	0/ldKirmfe/+FWLGmfA6FJEP+M0djwJiU9LgXbd4USnSz3shQPy2q3X8CKAapKKPnwLklBhiWLTJQ
	SvHu/Bwdi2fzdumiS7SV+HZmJqeFjANJ5Om8JZMjypBxc0m5ocM9dP1RTZ0WjznaBJJwFC5n8HJNG
	ztwmOt3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1am-0003eL-6I; Tue, 05 May 2020 17:42:52 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jW1ae-0003dB-S2
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 17:42:47 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F10490045476E9B312CB1C5.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f10:4900:4547:6e9b:312c:b1c5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 32FD223619
 for <openwrt-devel@lists.openwrt.org>; Tue,  5 May 2020 19:42:40 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 May 2020 19:42:31 +0200
Message-Id: <20200505174231.398817-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200505174231.398817-1-mail@david-bauer.net>
References: <20200505174231.398817-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_104245_206336_F1DC3ECD 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] mpc85xx: restructure image receipts
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

Move the image receipts into separate per-subtarget files like it is
done on most other targets.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/mpc85xx/image/Makefile | 100 +---------------------------
 target/linux/mpc85xx/image/p1010.mk |  36 ++++++++++
 target/linux/mpc85xx/image/p1020.mk |  41 ++++++++++++
 target/linux/mpc85xx/image/p2020.mk |  15 +++++
 4 files changed, 95 insertions(+), 97 deletions(-)
 create mode 100644 target/linux/mpc85xx/image/p1010.mk
 create mode 100644 target/linux/mpc85xx/image/p1020.mk
 create mode 100644 target/linux/mpc85xx/image/p2020.mk

diff --git a/target/linux/mpc85xx/image/Makefile b/target/linux/mpc85xx/image/Makefile
index 225f871699..a0e00c982a 100644
--- a/target/linux/mpc85xx/image/Makefile
+++ b/target/linux/mpc85xx/image/Makefile
@@ -5,8 +5,6 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/image.mk
 
-DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT TPLINK_HEADER_VERSION
-
 define Build/copy-file
 	cat "$(1)" > "$@"
 endef
@@ -22,107 +20,15 @@ define Device/Default
 endef
 
 ifeq ($(SUBTARGET),p1010)
-
-define Device/tplink_tl-wdr4900-v1
-  DEVICE_VENDOR := TP-Link
-  DEVICE_MODEL := TL-WDR4900
-  DEVICE_VARIANT := v1
-  TPLINK_HEADER_VERSION := 1
-  TPLINK_HWID := 0x49000001
-  TPLINK_HWREV := 1
-  TPLINK_FLASHLAYOUT := 16Mppc
-  KERNEL_SIZE := 2684k
-  KERNEL_NAME := simpleImage.tl-wdr4900-v1
-  KERNEL_INITRAMFS :=
-  KERNEL := kernel-bin | uImage none
-  KERNEL_ENTRY := 0x1000000
-  KERNEL_LOADADDR := 0x1000000
-  SUPPORTED_DEVICES += tl-wdr4900-v1
-  ARTIFACTS := fdt.bin
-  ARTIFACT/fdt.bin := append-dtb
-  IMAGES := fdt.bin factory.bin sysupgrade.bin
-  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-metadata
-  IMAGE/factory.bin := tplink-v1-image factory
-endef
-TARGET_DEVICES += tplink_tl-wdr4900-v1
-
-define Device/sophos_red-15w-rev1
-  DEVICE_VENDOR := Sophos
-  DEVICE_MODEL := RED 15w
-  DEVICE_VARIANT := Rev.1
-  # Original firmware uses a dedicated DTB-partition.
-  # The bootloader however supports FIT-images.
-  KERNEL = kernel-bin | gzip | fit gzip $(KDIR)/image-$$(DEVICE_DTS).dtb
-  IMAGES := sysupgrade.bin
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-endef
-TARGET_DEVICES += sophos_red-15w-rev1
-
+include p1010.mk
 endif
 
 ifeq ($(SUBTARGET),p1020)
-
-define Device/aerohive_hiveap-330
-  DEVICE_VENDOR := Aerohive
-  DEVICE_MODEL := HiveAP-330
-  DEVICE_PACKAGES := kmod-tpm-i2c-atmel
-  BLOCKSIZE := 128k
-  KERNEL := kernel-bin | gzip | uImage gzip
-  KERNEL_SIZE := 8m
-  KERNEL_INITRAMFS := copy-file $(KDIR)/vmlinux-initramfs | uImage none
-  IMAGES := fdt.bin sysupgrade.bin
-  IMAGE/fdt.bin := append-dtb
-  IMAGE/sysupgrade.bin := append-dtb | pad-to 256k | check-size 256k | \
-	append-uImage-fakehdr ramdisk | pad-to 256k | check-size 512k | \
-	append-rootfs | pad-rootfs $$(BLOCKSIZE) | pad-to 41216k | check-size 41216k | \
-	append-kernel | append-metadata
-endef
-TARGET_DEVICES += aerohive_hiveap-330
-
-define Device/enterasys_ws-ap3710i
-  DEVICE_VENDOR := Enterasys
-  DEVICE_MODEL := WS-AP3710i
-  BLOCKSIZE := 128k
-  KERNEL = kernel-bin | lzma | fit lzma $(KDIR)/image-$$(DEVICE_DTS).dtb
-  IMAGES := sysupgrade.bin
-  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
-endef
-TARGET_DEVICES += enterasys_ws-ap3710i
-
-define Device/ocedo_panda
-  DEVICE_VENDOR := OCEDO
-  DEVICE_MODEL := Panda
-  DEVICE_PACKAGES := kmod-rtc-ds1307 uboot-envtools
-  KERNEL = kernel-bin | gzip | fit gzip $(KDIR)/image-$$(DEVICE_DTS).dtb
-  PAGESIZE := 2048
-  SUBPAGESIZE := 512
-  BLOCKSIZE := 128k
-  IMAGES := fdt.bin sysupgrade.bin
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-  IMAGE/fdt.bin := append-dtb
-endef
-TARGET_DEVICES += ocedo_panda
-
+include p1020.mk
 endif
 
 ifeq ($(SUBTARGET),p2020)
-
-define Device/freescale_p2020rdb
-  DEVICE_VENDOR := Freescale
-  DEVICE_MODEL := P2020RDB
-  DEVICE_DTS_DIR := $(DTS_DIR)/fsl
-  DEVICE_PACKAGES := kmod-hwmon-lm90 kmod-rtc-ds1307 \
-	kmod-gpio-pca953x kmod-eeprom-at24
-  BLOCKSIZE := 128k
-  KERNEL := kernel-bin | gzip | \
-	fit gzip $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb
-  SUPPORTED_DEVICES := fsl,P2020RDB
-  IMAGES := sysupgrade.bin
-  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | \
-	pad-rootfs $$(BLOCKSIZE) | append-metadata
-endef
-TARGET_DEVICES += freescale_p2020rdb
-
+include p2020.mk
 endif
 
 $(eval $(call BuildImage))
diff --git a/target/linux/mpc85xx/image/p1010.mk b/target/linux/mpc85xx/image/p1010.mk
new file mode 100644
index 0000000000..e12621e82c
--- /dev/null
+++ b/target/linux/mpc85xx/image/p1010.mk
@@ -0,0 +1,36 @@
+DEVICE_VARS += TPLINK_HWID TPLINK_HWREV TPLINK_FLASHLAYOUT TPLINK_HEADER_VERSION
+
+define Device/tplink_tl-wdr4900-v1
+  DEVICE_VENDOR := TP-Link
+  DEVICE_MODEL := TL-WDR4900
+  DEVICE_VARIANT := v1
+  TPLINK_HEADER_VERSION := 1
+  TPLINK_HWID := 0x49000001
+  TPLINK_HWREV := 1
+  TPLINK_FLASHLAYOUT := 16Mppc
+  KERNEL_SIZE := 2684k
+  KERNEL_NAME := simpleImage.tl-wdr4900-v1
+  KERNEL_INITRAMFS :=
+  KERNEL := kernel-bin | uImage none
+  KERNEL_ENTRY := 0x1000000
+  KERNEL_LOADADDR := 0x1000000
+  SUPPORTED_DEVICES += tl-wdr4900-v1
+  ARTIFACTS := fdt.bin
+  ARTIFACT/fdt.bin := append-dtb
+  IMAGES := fdt.bin factory.bin sysupgrade.bin
+  IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-metadata
+  IMAGE/factory.bin := tplink-v1-image factory
+endef
+TARGET_DEVICES += tplink_tl-wdr4900-v1
+
+define Device/sophos_red-15w-rev1
+  DEVICE_VENDOR := Sophos
+  DEVICE_MODEL := RED 15w
+  DEVICE_VARIANT := Rev.1
+  # Original firmware uses a dedicated DTB-partition.
+  # The bootloader however supports FIT-images.
+  KERNEL = kernel-bin | gzip | fit gzip $(KDIR)/image-$$(DEVICE_DTS).dtb
+  IMAGES := sysupgrade.bin
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+endef
+TARGET_DEVICES += sophos_red-15w-rev1
diff --git a/target/linux/mpc85xx/image/p1020.mk b/target/linux/mpc85xx/image/p1020.mk
new file mode 100644
index 0000000000..a127723e89
--- /dev/null
+++ b/target/linux/mpc85xx/image/p1020.mk
@@ -0,0 +1,41 @@
+define Device/aerohive_hiveap-330
+  DEVICE_VENDOR := Aerohive
+  DEVICE_MODEL := HiveAP-330
+  DEVICE_PACKAGES := kmod-tpm-i2c-atmel
+  BLOCKSIZE := 128k
+  KERNEL := kernel-bin | gzip | uImage gzip
+  KERNEL_SIZE := 8m
+  KERNEL_INITRAMFS := copy-file $(KDIR)/vmlinux-initramfs | uImage none
+  IMAGES := fdt.bin sysupgrade.bin
+  IMAGE/fdt.bin := append-dtb
+  IMAGE/sysupgrade.bin := append-dtb | pad-to 256k | check-size 256k | \
+	append-uImage-fakehdr ramdisk | pad-to 256k | check-size 512k | \
+	append-rootfs | pad-rootfs $$(BLOCKSIZE) | pad-to 41216k | check-size 41216k | \
+	append-kernel | append-metadata
+endef
+TARGET_DEVICES += aerohive_hiveap-330
+
+define Device/enterasys_ws-ap3710i
+  DEVICE_VENDOR := Enterasys
+  DEVICE_MODEL := WS-AP3710i
+  BLOCKSIZE := 128k
+  KERNEL = kernel-bin | lzma | fit lzma $(KDIR)/image-$$(DEVICE_DTS).dtb
+  IMAGES := sysupgrade.bin
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
+endef
+TARGET_DEVICES += enterasys_ws-ap3710i
+
+define Device/ocedo_panda
+  DEVICE_VENDOR := OCEDO
+  DEVICE_MODEL := Panda
+  DEVICE_PACKAGES := kmod-rtc-ds1307 uboot-envtools
+  KERNEL = kernel-bin | gzip | fit gzip $(KDIR)/image-$$(DEVICE_DTS).dtb
+  PAGESIZE := 2048
+  SUBPAGESIZE := 512
+  BLOCKSIZE := 128k
+  IMAGES := fdt.bin sysupgrade.bin
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  IMAGE/fdt.bin := append-dtb
+endef
+TARGET_DEVICES += ocedo_panda
+
diff --git a/target/linux/mpc85xx/image/p2020.mk b/target/linux/mpc85xx/image/p2020.mk
new file mode 100644
index 0000000000..79b5fa660c
--- /dev/null
+++ b/target/linux/mpc85xx/image/p2020.mk
@@ -0,0 +1,15 @@
+define Device/freescale_p2020rdb
+  DEVICE_VENDOR := Freescale
+  DEVICE_MODEL := P2020RDB
+  DEVICE_DTS_DIR := $(DTS_DIR)/fsl
+  DEVICE_PACKAGES := kmod-hwmon-lm90 kmod-rtc-ds1307 \
+	kmod-gpio-pca953x kmod-eeprom-at24
+  BLOCKSIZE := 128k
+  KERNEL := kernel-bin | gzip | \
+	fit gzip $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb
+  SUPPORTED_DEVICES := fsl,P2020RDB
+  IMAGES := sysupgrade.bin
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | \
+	pad-rootfs $$(BLOCKSIZE) | append-metadata
+endef
+TARGET_DEVICES += freescale_p2020rdb
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
