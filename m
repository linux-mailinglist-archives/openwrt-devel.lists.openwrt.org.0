Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308621A7C0
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hE1fyi7UvnJd/S/Z6wheFPpiHXa5NIRWJWUyI9wsuC0=; b=pgyKiXYIxR+Nbt
	Dyd51oJHKeu+y7D2NaMLIFCZ4yP2cS4rK4h+dx/rlvlGJGRxP7GqmrG+3dcyqsLAfRys3m3BuJwsQ
	votJsssO7bCOzJpcv2ohaOs0N1VZlvQ81k22X3yWLTmq2gwgDCPZBosz9mSEbp9k0l0CUaEKrEufQ
	vXLRbmUr14A6c3QfiOv8ym3Zw8NUiZavVOB42YgrWBbjh7jO5zxa0mEX85gck++yvBkqRQzAvAI2Z
	N83jaTin/ZUNq/1g044si2xEha/91w7WiODFt1NzzIlLaNwaswfgyv/7MhVMuO9DNzXSCaaoJAae5
	ZY/eObpKrhfn9BYKOv9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQaU-0002YM-3O; Sat, 11 May 2019 11:54:46 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQZu-0001qT-Sy
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:54:23 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 84273A116F;
 Sat, 11 May 2019 13:54:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id iX3A1Qu7FuYD; Sat, 11 May 2019 13:53:58 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:53:19 +0200
Message-Id: <20190511115320.12285-4-hauke@hauke-m.de>
In-Reply-To: <20190511115320.12285-1-hauke@hauke-m.de>
References: <20190511115320.12285-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045411_592039_1D3ECEBD 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 3/4] at91: Merge SAMA5 subtargets
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
Cc: c.mignanti@gmail.com, sandeepsheriker.mallikarjun@microchip.com,
 Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Instead of maintaining 3 very similar subtargets merge them into one.
This does not use the Arm NEON extension any more, because the SAMA5D3
does not support NEON.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/boot/at91bootstrap/Makefile      | 26 ++++-----
 package/boot/uboot-at91/Makefile         | 22 ++++----
 target/linux/at91/Makefile               |  2 +-
 target/linux/at91/config-4.9             |  5 +-
 target/linux/at91/image/Makefile         | 10 +---
 target/linux/at91/image/sama5.mk         | 71 ++++++++++++++++++++++++
 target/linux/at91/image/sama5d2.mk       | 31 -----------
 target/linux/at91/image/sama5d3.mk       | 33 -----------
 target/linux/at91/image/sama5d4.mk       | 19 -------
 target/linux/at91/sama5/config-default   |  0
 target/linux/at91/sama5/target.mk        | 10 ++++
 target/linux/at91/sama5d2/config-default |  3 -
 target/linux/at91/sama5d2/target.mk      | 10 ----
 target/linux/at91/sama5d3/config-default |  2 -
 target/linux/at91/sama5d3/target.mk      | 10 ----
 target/linux/at91/sama5d4/target.mk      | 10 ----
 16 files changed, 111 insertions(+), 153 deletions(-)
 create mode 100644 target/linux/at91/image/sama5.mk
 delete mode 100644 target/linux/at91/image/sama5d2.mk
 create mode 100644 target/linux/at91/sama5/config-default
 create mode 100644 target/linux/at91/sama5/target.mk
 delete mode 100644 target/linux/at91/sama5d2/config-default
 delete mode 100644 target/linux/at91/sama5d2/target.mk
 delete mode 100644 target/linux/at91/sama5d3/config-default
 delete mode 100644 target/linux/at91/sama5d3/target.mk
 delete mode 100644 target/linux/at91/sama5d4/target.mk

diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstrap/Makefile
index 22afd1ec41..8a08a7aa2c 100644
--- a/package/boot/at91bootstrap/Makefile
+++ b/package/boot/at91bootstrap/Makefile
@@ -30,79 +30,79 @@ endef
 
 define AT91Bootstrap/sama5d2_xplaineddf_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_xplained
 endef
 
 define AT91Bootstrap/sama5d2_xplaineddf_qspi_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 Xplained board (QSPI Flash)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_xplained
 endef
 
 define AT91Bootstrap/sama5d2_xplainedsd_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 Xplained board (SDcard/EMMC)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_xplained
 endef
 
 define AT91Bootstrap/sama5d3_xplainednf_uboot
   TITLE:=AT91Bootstrap for SAMA5D3 Xplained board (Nand Flash)
-  BUILD_SUBTARGET:=sama5d3
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d3_xplained
 endef
 
 define AT91Bootstrap/sama5d3_xplainedsd_uboot
   TITLE:=AT91Bootstrap for SAMA5D3 Xplained board (SDcard)
-  BUILD_SUBTARGET:=sama5d3
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d3_xplained
 endef
 
 define AT91Bootstrap/sama5d4_xplainednf_uboot_secure
   TITLE:=AT91Bootstrap for SAMA5D4 Xplained board (Nand Flash)
-  BUILD_SUBTARGET:=sama5d4
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
 define AT91Bootstrap/sama5d4_xplaineddf_uboot_secure
   TITLE:=AT91Bootstrap for SAMA5D4 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=sama5d4
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
 define AT91Bootstrap/sama5d4_xplainedsd_uboot_secure
   TITLE:=AT91Bootstrap for SAMA5D4 Xplained board (SDcard)
-  BUILD_SUBTARGET:=sama5d4
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
 define AT91Bootstrap/sama5d27_som1_eksd_uboot
   TITLE:=AT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard0)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
 define AT91Bootstrap/sama5d27_som1_eksd1_uboot
   TITLE:=AT91Bootstrap for SAMA5D27 SOM1 Ek (SDcard1)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
 define AT91Bootstrap/sama5d27_som1_ekqspi_uboot
   TITLE:=AT91Bootstrap for SAMA5D27 SOM1 Ek (QSPI Flash)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
 define AT91Bootstrap/sama5d2_ptc_eknf_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 PTC EK (Nand Flash)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_ptc_ek
 endef
 
 define AT91Bootstrap/sama5d2_ptc_eksd_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 PTC EK (SDCard)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_ptc_ek
 endef
 
diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index f0a4ba56c2..23bd2d2b01 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -40,67 +40,67 @@ endef
 
 define U-Boot/sama5d3_xplained_nandflash
   NAME:=SAMA5D3 Xplained board (NandFlash)
-  BUILD_SUBTARGET:=sama5d3
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d3_xplained
 endef
 
 define U-Boot/sama5d3_xplained_mmc
   NAME:=SAMA5D3 Xplained board (SDcard)
-  BUILD_SUBTARGET:=sama5d3
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d3_xplained
 endef
 
 define U-Boot/sama5d2_xplained_spiflash
   NAME:=SAMA5D2 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_xplained
 endef
 
 define U-Boot/sama5d2_xplained_mmc
   NAME:=SAMA5D2 Xplained board (SDcard/EMMC)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_xplained
 endef
 
 define U-Boot/sama5d4_xplained_spiflash
   NAME:=SAMA5D4 Xplained board (SPI Flash)
-  BUILD_SUBTARGET:=sama5d4
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
 define U-Boot/sama5d4_xplained_mmc
   NAME:=SAMA5D4 Xplained board (SDcard)
-  BUILD_SUBTARGET:=sama5d4
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
 define U-Boot/sama5d4_xplained_nandflash
   NAME:=SAMA5D4 Xplained board (NandFlash)
-  BUILD_SUBTARGET:=sama5d4
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
 define U-Boot/sama5d27_som1_ek_mmc
   NAME:=SAMA5D27 SOM1 Ek (SDCard)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
 define U-Boot/sama5d27_som1_ek_spiflash
   NAME:=SAMA5D27 SOM1 Ek (QSPI Flash)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
 define U-Boot/sama5d2_ptc_ek_nandflash
   NAME:=SAMA5D2 PTC Ek (Nand Flash)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_ptc_ek
 endef
 
 define U-Boot/sama5d2_ptc_ek_mmc
   NAME:=SAMA5D2 PTC Ek (SDCard)
-  BUILD_SUBTARGET:=sama5d2
+  BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d2_ptc_ek
 endef
 
diff --git a/target/linux/at91/Makefile b/target/linux/at91/Makefile
index d71e0850ff..cae3c6278b 100644
--- a/target/linux/at91/Makefile
+++ b/target/linux/at91/Makefile
@@ -11,7 +11,7 @@ BOARD:=at91
 MAINTAINER:=Claudio Mignanti <c.mignanti@gmail.com>
 BOARDNAME:=Microchip (Atmel AT91)
 FEATURES:=ext4 squashfs targz usb usbgadget ubifs
-SUBTARGETS:=sama5d2 sama5d3 sama5d4 legacy
+SUBTARGETS:=sama5 legacy
 
 KERNEL_PATCHVER:=4.9
 
diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9
index 452cfd5aa3..ad18d6b826 100644
--- a/target/linux/at91/config-4.9
+++ b/target/linux/at91/config-4.9
@@ -214,6 +214,7 @@ CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 CONFIG_HAVE_ARM_SMCCC=y
+CONFIG_HAVE_AT91_GENERATED_CLK=y
 CONFIG_HAVE_AT91_H32MX=y
 CONFIG_HAVE_AT91_SMD=y
 CONFIG_HAVE_AT91_USB_CLK=y
@@ -464,8 +465,8 @@ CONFIG_SND_SUPPORT_OLD_API=y
 CONFIG_SND_TIMER=y
 CONFIG_SOC_BUS=y
 CONFIG_SOC_SAMA5=y
-# CONFIG_SOC_SAMA5D2 is not set
-# CONFIG_SOC_SAMA5D3 is not set
+CONFIG_SOC_SAMA5D2=y
+CONFIG_SOC_SAMA5D3=y
 CONFIG_SOC_SAMA5D4=y
 CONFIG_SOC_SAM_V7=y
 CONFIG_SOUND=y
diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index 49d93aa97d..f4d942b682 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -16,14 +16,8 @@ endef
 ifeq ($(SUBTARGET),legacy)
 include ./legacy.mk
 endif
-ifeq ($(SUBTARGET),sama5d2)
-include ./sama5d2.mk
-endif
-ifeq ($(SUBTARGET),sama5d3)
-include ./sama5d3.mk
-endif
-ifeq ($(SUBTARGET),sama5d4)
-include ./sama5d4.mk
+ifeq ($(SUBTARGET),sama5)
+include ./sama5.mk
 endif
 
 AT91_SD_BOOT_PARTSIZE:=64
diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
new file mode 100644
index 0000000000..f9a190c8b2
--- /dev/null
+++ b/target/linux/at91/image/sama5.mk
@@ -0,0 +1,71 @@
+
+define Device/default-nand
+  BLOCKSIZE := 128k
+  PAGESIZE := 2048
+  SUBPAGESIZE := 2048
+  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
+endef
+
+define Device/at91-sama5d2_xplained
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D2 Xplained
+  KERNEL_SIZE := 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES += at91-sama5d2_xplained
+
+define Device/at91-sama5d27_som1_ek
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D27 SOM1 Ek
+  KERNEL_SIZE := 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES += at91-sama5d27_som1_ek
+
+define Device/at91-sama5d2_ptc_ek
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D2 PTC Ek
+  KERNEL_SIZE := 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES += at91-sama5d2_ptc_ek
+
+
+define Device/at91-sama5d3_xplained
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D3 Xplained
+  KERNEL_SIZE := 6144k
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES += at91-sama5d3_xplained
+
+ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),"")
+ ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),"")
+  define Device/wb50n
+    $(Device/evaluation-fit)
+    DEVICE_TITLE := Laird WB50N
+    DEVICE_PACKAGES := \
+	  kmod-mmc-at91 kmod-ath6kl-sdio ath6k-firmware \
+	  kmod-usb-storage kmod-fs-vfat kmod-fs-msdos \
+	  kmod-leds-gpio
+    BLOCKSIZE := 128k
+    PAGESIZE := 2048
+    SUBPAGESIZE := 2048
+    MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 955
+  endef
+  TARGET_DEVICES += wb50n
+ endif
+endif
+
+
+define Device/at91-sama5d4_xplained
+  $(Device/evaluation-dtb)
+  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D4 Xplained
+  KERNEL_SIZE := 6144k
+  BLOCKSIZE := 256k
+  PAGESIZE := 4096
+  SUBPAGESIZE := 2048
+  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 248KiB -c 2082
+  $(Device/evaluation-sdimage)
+endef
+TARGET_DEVICES += at91-sama5d4_xplained
diff --git a/target/linux/at91/image/sama5d2.mk b/target/linux/at91/image/sama5d2.mk
deleted file mode 100644
index b841448633..0000000000
--- a/target/linux/at91/image/sama5d2.mk
+++ /dev/null
@@ -1,31 +0,0 @@
-
-define Device/default-nand
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  SUBPAGESIZE := 2048
-  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
-endef
-
-define Device/at91-sama5d2_xplained
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D2 Xplained
-  KERNEL_SIZE := 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES += at91-sama5d2_xplained
-
-define Device/at91-sama5d27_som1_ek
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D27 SOM1 Ek
-  KERNEL_SIZE := 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES += at91-sama5d27_som1_ek
-
-define Device/at91-sama5d2_ptc_ek
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D2 PTC Ek
-  KERNEL_SIZE := 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES += at91-sama5d2_ptc_ek
diff --git a/target/linux/at91/image/sama5d3.mk b/target/linux/at91/image/sama5d3.mk
index f48c981030..e69de29bb2 100644
--- a/target/linux/at91/image/sama5d3.mk
+++ b/target/linux/at91/image/sama5d3.mk
@@ -1,33 +0,0 @@
-
-define Device/default-nand
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  SUBPAGESIZE := 2048
-  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
-endef
-
-define Device/at91-sama5d3_xplained
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D3 Xplained
-  KERNEL_SIZE := 6144k
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES += at91-sama5d3_xplained
-
-ifeq ($(strip $(CONFIG_EXTERNAL_KERNEL_TREE)),"")
- ifeq ($(strip $(CONFIG_KERNEL_GIT_CLONE_URI)),"")
-  define Device/wb50n
-    $(Device/evaluation-fit)
-    DEVICE_TITLE := Laird WB50N
-    DEVICE_PACKAGES := \
-	  kmod-mmc-at91 kmod-ath6kl-sdio ath6k-firmware \
-	  kmod-usb-storage kmod-fs-vfat kmod-fs-msdos \
-	  kmod-leds-gpio
-    BLOCKSIZE := 128k
-    PAGESIZE := 2048
-    SUBPAGESIZE := 2048
-    MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 955
-  endef
-  TARGET_DEVICES += wb50n
- endif
-endif
diff --git a/target/linux/at91/image/sama5d4.mk b/target/linux/at91/image/sama5d4.mk
index 1140c3c4b2..e69de29bb2 100644
--- a/target/linux/at91/image/sama5d4.mk
+++ b/target/linux/at91/image/sama5d4.mk
@@ -1,19 +0,0 @@
-
-define Device/default-nand
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  SUBPAGESIZE := 2048
-  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
-endef
-
-define Device/at91-sama5d4_xplained
-  $(Device/evaluation-dtb)
-  DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D4 Xplained
-  KERNEL_SIZE := 6144k
-  BLOCKSIZE := 256k
-  PAGESIZE := 4096
-  SUBPAGESIZE := 2048
-  MKUBIFS_OPTS := -m $$(PAGESIZE) -e 248KiB -c 2082
-  $(Device/evaluation-sdimage)
-endef
-TARGET_DEVICES += at91-sama5d4_xplained
diff --git a/target/linux/at91/sama5/config-default b/target/linux/at91/sama5/config-default
new file mode 100644
index 0000000000..e69de29bb2
diff --git a/target/linux/at91/sama5/target.mk b/target/linux/at91/sama5/target.mk
new file mode 100644
index 0000000000..35df05b70d
--- /dev/null
+++ b/target/linux/at91/sama5/target.mk
@@ -0,0 +1,10 @@
+BOARDNAME:=SAMA5 boards(Cortex-A5)
+CPU_TYPE:=cortex-a5
+CPU_SUBTYPE:=vfpv4
+FEATURES+=fpu
+DEFAULT_PACKAGES += kmod-usb2
+
+define Target/Description
+	Build generic firmware for Microchip(Atmel AT91) SAMA5D2,
+	SAMA5D3 and SAMA5D4 MPU's using the ARMv7 instruction set.
+endef
diff --git a/target/linux/at91/sama5d2/config-default b/target/linux/at91/sama5d2/config-default
deleted file mode 100644
index 1724375c33..0000000000
--- a/target/linux/at91/sama5d2/config-default
+++ /dev/null
@@ -1,3 +0,0 @@
-CONFIG_HAVE_AT91_GENERATED_CLK=y
-CONFIG_SOC_SAMA5D2=y
-# CONFIG_SOC_SAMA5D4 is not set
diff --git a/target/linux/at91/sama5d2/target.mk b/target/linux/at91/sama5d2/target.mk
deleted file mode 100644
index 63f50aeea1..0000000000
--- a/target/linux/at91/sama5d2/target.mk
+++ /dev/null
@@ -1,10 +0,0 @@
-BOARDNAME:=SAMA5D2 boards(Cortex-A5)
-CPU_TYPE:=cortex-a5
-CPU_SUBTYPE:=neon-vfpv4
-FEATURES+=fpu
-DEFAULT_PACKAGES += kmod-usb2
-
-define Target/Description
-	Build generic firmware for Microchip(Atmel AT91) SAMA5D2 MPU's
-	using the ARMv7 instruction set.
-endef
diff --git a/target/linux/at91/sama5d3/config-default b/target/linux/at91/sama5d3/config-default
deleted file mode 100644
index eb0ec01cb9..0000000000
--- a/target/linux/at91/sama5d3/config-default
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_SOC_SAMA5D3=y
-# CONFIG_SOC_SAMA5D4 is not set
diff --git a/target/linux/at91/sama5d3/target.mk b/target/linux/at91/sama5d3/target.mk
deleted file mode 100644
index d30931bfc0..0000000000
--- a/target/linux/at91/sama5d3/target.mk
+++ /dev/null
@@ -1,10 +0,0 @@
-BOARDNAME:=SAMA5D3 boards(Cortex-A5)
-CPU_TYPE:=cortex-a5
-CPU_SUBTYPE:=vfpv4
-FEATURES+=fpu
-DEFAULT_PACKAGES += kmod-usb2
-
-define Target/Description
-	Build generic firmware for Microchip(Atmel AT91) SAMA5D3 MPU's
-	using the ARMv7 instruction set.
-endef
diff --git a/target/linux/at91/sama5d4/target.mk b/target/linux/at91/sama5d4/target.mk
deleted file mode 100644
index 2bbab60d81..0000000000
--- a/target/linux/at91/sama5d4/target.mk
+++ /dev/null
@@ -1,10 +0,0 @@
-BOARDNAME:=SAMA5D4 boards(Cortex-A5)
-CPU_TYPE:=cortex-a5
-CPU_SUBTYPE:=neon-vfpv4
-FEATURES+=fpu
-DEFAULT_PACKAGES += kmod-usb2
-
-define Target/Description
-	Build generic firmware for Microchip(Atmel AT91) SAMA5D4 MPU's
-	using the ARMv7 instruction set.
-endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
