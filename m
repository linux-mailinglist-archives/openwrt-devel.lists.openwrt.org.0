Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A8E1A7C1
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/ebqdAQiseyfSChbDWjUV+69dXGFsesCZSvc9XiM1U=; b=qWHbFVWC+t04Sq
	QddEoLUdHQWz+kSU7QWRcQnT5gelthzfjQUloUre70zNkX9O7ZmYGzWAf6M6at23uiZ9FrkuTuBAD
	pBgSBTdAxp7x71axSziwm5mx3C5d7yCqUkND6SK8gYt6d0yv2Y+LOyOMD0rp1BUjD7P8dJTJLr7ZX
	PMYS0lAno9IJV+azwxsjvHTIijzbihFcUXJuvkvBC9XV982HuJ8bpfqsWaS2Q61iq1y4Lksz6glNn
	tcNRwjRnZtelhAe4XlLnhxaF0KpmlvXg8Fx2MhMBXrs3Zj8vzJhnfehj3uZHUC/YFONBf3g4V3cxs
	Grg+OlX5jvBhSdKLR3iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQag-0002r8-Ns; Sat, 11 May 2019 11:54:58 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQZt-0001pl-PH
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:54:30 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 73213A01F6;
 Sat, 11 May 2019 13:54:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 8z1QOXjuXamI; Sat, 11 May 2019 13:53:59 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:53:20 +0200
Message-Id: <20190511115320.12285-5-hauke@hauke-m.de>
In-Reply-To: <20190511115320.12285-1-hauke@hauke-m.de>
References: <20190511115320.12285-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045410_440827_C6FFD348 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 4/4] at91: Update kernel to version 4.14
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

This adds support for kernel 4.14 to the target and directly make it the
default kernel version to use.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/at91/Makefile                    |   2 +-
 target/linux/at91/{config-4.9 => config-4.14} |  45 +-
 target/linux/at91/legacy/config-default       |   1 +
 .../100-ARM-at91-build-dtb-for-LMU5000.patch  |   2 +-
 .../101-ARM-at91-build-dtb-for-q5xr5.patch    |   2 +-
 .../102-ARM-at91-build-dtb-for-wb45n.patch    |   4 +-
 .../103-ARM-at91-build-dtb-for-wb50n.patch    |   2 +-
 ...RM-at91-build-dtb-for-sama5d2-ptc-Ek.patch |   5 +-
 ...-at91-build-dtb-for-sama5d27-SOM1-Ek.patch | 893 ------------------
 target/linux/generic/config-4.14              |   2 +
 target/linux/generic/config-4.19              |   2 +
 11 files changed, 48 insertions(+), 912 deletions(-)
 rename target/linux/at91/{config-4.9 => config-4.14} (93%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/100-ARM-at91-build-dtb-for-LMU5000.patch (80%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/101-ARM-at91-build-dtb-for-q5xr5.patch (82%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/102-ARM-at91-build-dtb-for-wb45n.patch (74%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/103-ARM-at91-build-dtb-for-wb50n.patch (85%)
 rename target/linux/at91/{patches-4.9 => patches-4.14}/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch (98%)
 delete mode 100644 target/linux/at91/patches-4.9/104-ARM-at91-build-dtb-for-sama5d27-SOM1-Ek.patch

diff --git a/target/linux/at91/Makefile b/target/linux/at91/Makefile
index cae3c6278b..4dc70ebac1 100644
--- a/target/linux/at91/Makefile
+++ b/target/linux/at91/Makefile
@@ -13,7 +13,7 @@ BOARDNAME:=Microchip (Atmel AT91)
 FEATURES:=ext4 squashfs targz usb usbgadget ubifs
 SUBTARGETS:=sama5 legacy
 
-KERNEL_PATCHVER:=4.9
+KERNEL_PATCHVER:=4.14
 
 include $(INCLUDE_DIR)/target.mk
 
diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.14
similarity index 93%
rename from target/linux/at91/config-4.9
rename to target/linux/at91/config-4.14
index ad18d6b826..ca526b9d74 100644
--- a/target/linux/at91/config-4.9
+++ b/target/linux/at91/config-4.14
@@ -1,9 +1,13 @@
 CONFIG_ALIGNMENT_TRAP=y
 CONFIG_ARCH_AT91=y
 CONFIG_ARCH_CLOCKSOURCE_DATA=y
+CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
+CONFIG_ARCH_HAS_SET_MEMORY=y
 CONFIG_ARCH_HAS_SG_CHAIN=y
+CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
+CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
 CONFIG_ARCH_HAVE_CUSTOM_GPIO_H=y
 CONFIG_ARCH_HIBERNATION_POSSIBLE=y
 CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
@@ -12,6 +16,8 @@ CONFIG_ARCH_MULTIPLATFORM=y
 CONFIG_ARCH_MULTI_V6_V7=y
 CONFIG_ARCH_MULTI_V7=y
 CONFIG_ARCH_NR_GPIO=0
+CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
+CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT=y
 # CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
 # CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
 CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
@@ -38,9 +44,11 @@ CONFIG_ARM_VIRT_EXT=y
 CONFIG_AT91SAM9X_WATCHDOG=y
 CONFIG_AT91_ADC=y
 CONFIG_AT91_SAMA5D2_ADC=y
+CONFIG_AT91_SOC_ID=y
 CONFIG_ATMEL_AIC5_IRQ=y
 CONFIG_ATMEL_EBI=y
 CONFIG_ATMEL_PIT=y
+CONFIG_ATMEL_PM=y
 CONFIG_ATMEL_SDRAMC=y
 CONFIG_ATMEL_SSC=y
 CONFIG_ATMEL_TCB_CLKSRC=y
@@ -58,12 +66,9 @@ CONFIG_BLK_DEV_RAM=y
 CONFIG_BLK_DEV_RAM_COUNT=4
 CONFIG_BLK_DEV_RAM_SIZE=8192
 CONFIG_BLK_DEV_SD=y
+CONFIG_BLK_SCSI_REQUEST=y
 CONFIG_CACHE_L2X0=y
-CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
-# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CLKDEV_LOOKUP=y
-CONFIG_CLKSRC_OF=y
-CONFIG_CLKSRC_PROBE=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMA=y
 CONFIG_CMA_ALIGNMENT=8
@@ -98,13 +103,16 @@ CONFIG_CPU_IDLE_GOV_MENU=y
 CONFIG_CPU_PABRT_V7=y
 CONFIG_CPU_PM=y
 CONFIG_CPU_SPECTRE=y
+CONFIG_CPU_THUMB_CAPABLE=y
 CONFIG_CPU_TLB_V7=y
 CONFIG_CPU_V7=y
+CONFIG_CRASH_CORE=y
 CONFIG_CRASH_DUMP=y
 CONFIG_CRC16=y
 # CONFIG_CRC32_SARWATE is not set
 CONFIG_CRC32_SLICEBY8=y
 CONFIG_CROSS_MEMORY_ATTACH=y
+CONFIG_CRYPTO_ACOMP2=y
 CONFIG_CRYPTO_AEAD=y
 CONFIG_CRYPTO_AEAD2=y
 CONFIG_CRYPTO_CCM=y
@@ -149,11 +157,13 @@ CONFIG_DRM=y
 CONFIG_DRM_ATMEL_HLCDC=y
 CONFIG_DRM_BRIDGE=y
 CONFIG_DRM_FBDEV_EMULATION=y
+CONFIG_DRM_FBDEV_OVERALLOC=100
 CONFIG_DRM_GEM_CMA_HELPER=y
 CONFIG_DRM_KMS_CMA_HELPER=y
 CONFIG_DRM_KMS_FB_HELPER=y
 CONFIG_DRM_KMS_HELPER=y
 CONFIG_DRM_PANEL=y
+CONFIG_DRM_PANEL_BRIDGE=y
 CONFIG_DRM_PANEL_SIMPLE=y
 CONFIG_DTC=y
 CONFIG_DUMMY_CONSOLE=y
@@ -171,6 +181,7 @@ CONFIG_FB_CFB_FILLRECT=y
 CONFIG_FB_CFB_IMAGEBLIT=y
 CONFIG_FB_CMDLINE=y
 CONFIG_FB_DEFERRED_IO=y
+# CONFIG_FB_PROVIDE_GET_FB_UNMAPPED_AREA is not set
 CONFIG_FB_SYS_COPYAREA=y
 CONFIG_FB_SYS_FILLRECT=y
 CONFIG_FB_SYS_FOPS=y
@@ -184,6 +195,7 @@ CONFIG_FS_MBCACHE=y
 CONFIG_GENERIC_ALLOCATOR=y
 CONFIG_GENERIC_BUG=y
 CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CPU_AUTOPROBE=y
 CONFIG_GENERIC_EARLY_IOREMAP=y
 CONFIG_GENERIC_IDLE_POLL_SETUP=y
 CONFIG_GENERIC_IO=y
@@ -196,9 +208,11 @@ CONFIG_GENERIC_SCHED_CLOCK=y
 CONFIG_GENERIC_SMP_IDLE_THREAD=y
 CONFIG_GENERIC_STRNCPY_FROM_USER=y
 CONFIG_GENERIC_STRNLEN_USER=y
+CONFIG_GLOB=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIOLIB_IRQCHIP=y
 CONFIG_GPIO_SYSFS=y
+# CONFIG_GRO_CELLS is not set
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDEN_BRANCH_PREDICTOR=y
 CONFIG_HARDIRQS_SW_RESEND=y
@@ -214,13 +228,13 @@ CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 CONFIG_HAVE_ARM_SMCCC=y
+CONFIG_HAVE_AT91_AUDIO_PLL=y
 CONFIG_HAVE_AT91_GENERATED_CLK=y
 CONFIG_HAVE_AT91_H32MX=y
 CONFIG_HAVE_AT91_SMD=y
 CONFIG_HAVE_AT91_USB_CLK=y
 CONFIG_HAVE_AT91_UTMI=y
 # CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_CBPF_JIT=y
 CONFIG_HAVE_CC_STACKPROTECTOR=y
 CONFIG_HAVE_CLK=y
 CONFIG_HAVE_CLK_PREPARE=y
@@ -230,6 +244,8 @@ CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DMA_API_DEBUG=y
 CONFIG_HAVE_DMA_CONTIGUOUS=y
 CONFIG_HAVE_DYNAMIC_FTRACE=y
+CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
+CONFIG_HAVE_EBPF_JIT=y
 CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
 CONFIG_HAVE_FB_ATMEL=y
 CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
@@ -307,9 +323,11 @@ CONFIG_LOG_BUF_SHIFT=16
 CONFIG_LZO_COMPRESS=y
 CONFIG_LZO_DECOMPRESS=y
 CONFIG_MACB=y
+CONFIG_MACB_USE_HWSTAMP=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_MANDATORY_FILE_LOCKING=y
-CONFIG_MDIO_BOARDINFO=y
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
 CONFIG_MEDIA_CAMERA_SUPPORT=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_MEDIA_USB_SUPPORT=y
@@ -318,6 +336,7 @@ CONFIG_MEMORY_ISOLATION=y
 CONFIG_MFD_ACT8945A=y
 CONFIG_MFD_ATMEL_FLEXCOM=y
 CONFIG_MFD_ATMEL_HLCDC=y
+CONFIG_MFD_ATMEL_SMC=y
 CONFIG_MFD_CORE=y
 CONFIG_MFD_SYSCON=y
 CONFIG_MICREL_PHY=y
@@ -327,9 +346,7 @@ CONFIG_MIGRATION=y
 CONFIG_MMC=y
 CONFIG_MMC_ATMELMCI=y
 CONFIG_MMC_BLOCK=y
-# CONFIG_MMC_BLOCK_BOUNCE is not set
 CONFIG_MMC_SDHCI=y
-CONFIG_MMC_SDHCI_IO_ACCESSORS=y
 CONFIG_MMC_SDHCI_OF_AT91=y
 CONFIG_MMC_SDHCI_PLTFM=y
 CONFIG_MODULES_USE_ELF_REL=y
@@ -411,6 +428,7 @@ CONFIG_PWM_ATMEL_HLCDC_PWM=y
 CONFIG_PWM_ATMEL_TCB=y
 CONFIG_PWM_SYSFS=y
 CONFIG_RATIONAL=y
+# CONFIG_RCU_NEED_SEGCBLIST is not set
 # CONFIG_RCU_STALL_COMMON is not set
 CONFIG_REGMAP=y
 CONFIG_REGMAP_I2C=y
@@ -420,7 +438,6 @@ CONFIG_REGULATOR=y
 CONFIG_REGULATOR_ACT8865=y
 CONFIG_REGULATOR_ACT8945A=y
 CONFIG_REGULATOR_FIXED_VOLTAGE=y
-CONFIG_RFKILL_REGULATOR=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_AT91RM9200=y
 # CONFIG_RTC_DRV_AT91SAM9 is not set
@@ -449,6 +466,7 @@ CONFIG_SND_ATMEL_SOC_DMA=y
 # CONFIG_SND_ATMEL_SOC_PDMIC is not set
 CONFIG_SND_ATMEL_SOC_SSC=y
 CONFIG_SND_ATMEL_SOC_SSC_DMA=y
+# CONFIG_SND_ATMEL_SOC_TSE850_PCM5142 is not set
 CONFIG_SND_ATMEL_SOC_WM8904=y
 # CONFIG_SND_COMPRESS_OFFLOAD is not set
 CONFIG_SND_DMAENGINE_PCM=y
@@ -470,6 +488,8 @@ CONFIG_SOC_SAMA5D3=y
 CONFIG_SOC_SAMA5D4=y
 CONFIG_SOC_SAM_V7=y
 CONFIG_SOUND=y
+CONFIG_SOUND_OSS_CORE=y
+# CONFIG_SOUND_OSS_CORE_PRECLAIM is not set
 CONFIG_SPARSE_IRQ=y
 CONFIG_SPI=y
 CONFIG_SPI_ATMEL=y
@@ -479,6 +499,7 @@ CONFIG_SPI_GPIO=y
 CONFIG_SPI_MASTER=y
 # CONFIG_SQUASHFS is not set
 CONFIG_SRAM=y
+CONFIG_SRAM_EXEC=y
 CONFIG_SRCU=y
 # CONFIG_STANDALONE is not set
 CONFIG_SUSPEND=y
@@ -486,11 +507,14 @@ CONFIG_SUSPEND_FREEZER=y
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 # CONFIG_SWP_EMULATE is not set
+CONFIG_SYNC_FILE=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 # CONFIG_THUMB2_KERNEL is not set
 CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TIMER_OF=y
+CONFIG_TIMER_PROBE=y
+CONFIG_TINY_SRCU=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=y
-# CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
 CONFIG_TOUCHSCREEN_PROPERTIES=y
 CONFIG_UACCESS_WITH_MEMCPY=y
 CONFIG_UBIFS_FS=y
@@ -527,6 +551,7 @@ CONFIG_VFAT_FS=y
 CONFIG_VFP=y
 CONFIG_VFPv3=y
 CONFIG_VIDEOMODE_HELPERS=y
+# CONFIG_VIDEO_ATMEL_ISI is not set
 # CONFIG_VIDEO_CPIA2 is not set
 CONFIG_VIDEO_DEV=y
 CONFIG_VIDEO_V4L2=y
diff --git a/target/linux/at91/legacy/config-default b/target/linux/at91/legacy/config-default
index 4f73051f1c..a8923a6efe 100644
--- a/target/linux/at91/legacy/config-default
+++ b/target/linux/at91/legacy/config-default
@@ -3,6 +3,7 @@ CONFIG_ARCH_MULTI_V4T=y
 CONFIG_ARCH_MULTI_V4_V5=y
 CONFIG_ARCH_MULTI_V5=y
 # CONFIG_ARCH_MULTI_V7 is not set
+# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
 # CONFIG_ARM_AT91_CPUIDLE is not set
 CONFIG_ARM_L1_CACHE_SHIFT=5
 # CONFIG_AT91RM9200_WATCHDOG is not set
diff --git a/target/linux/at91/patches-4.9/100-ARM-at91-build-dtb-for-LMU5000.patch b/target/linux/at91/patches-4.14/100-ARM-at91-build-dtb-for-LMU5000.patch
similarity index 80%
rename from target/linux/at91/patches-4.9/100-ARM-at91-build-dtb-for-LMU5000.patch
rename to target/linux/at91/patches-4.14/100-ARM-at91-build-dtb-for-LMU5000.patch
index 2a64fb8a5c..c0eb6dafb2 100644
--- a/target/linux/at91/patches-4.9/100-ARM-at91-build-dtb-for-LMU5000.patch
+++ b/target/linux/at91/patches-4.14/100-ARM-at91-build-dtb-for-LMU5000.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -32,6 +32,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
+@@ -33,6 +33,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
  	usb_a9g20.dtb \
  	usb_a9g20_lpw.dtb \
  	at91sam9m10g45ek.dtb \
diff --git a/target/linux/at91/patches-4.9/101-ARM-at91-build-dtb-for-q5xr5.patch b/target/linux/at91/patches-4.14/101-ARM-at91-build-dtb-for-q5xr5.patch
similarity index 82%
rename from target/linux/at91/patches-4.9/101-ARM-at91-build-dtb-for-q5xr5.patch
rename to target/linux/at91/patches-4.14/101-ARM-at91-build-dtb-for-q5xr5.patch
index 1cee5588a0..6c84c9401b 100644
--- a/target/linux/at91/patches-4.9/101-ARM-at91-build-dtb-for-q5xr5.patch
+++ b/target/linux/at91/patches-4.14/101-ARM-at91-build-dtb-for-q5xr5.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -40,6 +40,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
+@@ -41,6 +41,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
  	at91-ariettag25.dtb \
  	at91-cosino_mega2560.dtb \
  	at91-kizboxmini.dtb \
diff --git a/target/linux/at91/patches-4.9/102-ARM-at91-build-dtb-for-wb45n.patch b/target/linux/at91/patches-4.14/102-ARM-at91-build-dtb-for-wb45n.patch
similarity index 74%
rename from target/linux/at91/patches-4.9/102-ARM-at91-build-dtb-for-wb45n.patch
rename to target/linux/at91/patches-4.14/102-ARM-at91-build-dtb-for-wb45n.patch
index aeb523a5b9..f6190c4959 100644
--- a/target/linux/at91/patches-4.9/102-ARM-at91-build-dtb-for-wb45n.patch
+++ b/target/linux/at91/patches-4.14/102-ARM-at91-build-dtb-for-wb45n.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -45,7 +45,8 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
+@@ -46,7 +46,8 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
  	at91sam9g25ek.dtb \
  	at91sam9g35ek.dtb \
  	at91sam9x25ek.dtb \
@@ -9,4 +9,4 @@
 +	wb45n.dtb
  dtb-$(CONFIG_SOC_SAM_V7) += \
  	at91-kizbox2.dtb \
- 	at91-sama5d2_xplained.dtb \
+ 	at91-sama5d27_som1_ek.dtb \
diff --git a/target/linux/at91/patches-4.9/103-ARM-at91-build-dtb-for-wb50n.patch b/target/linux/at91/patches-4.14/103-ARM-at91-build-dtb-for-wb50n.patch
similarity index 85%
rename from target/linux/at91/patches-4.9/103-ARM-at91-build-dtb-for-wb50n.patch
rename to target/linux/at91/patches-4.14/103-ARM-at91-build-dtb-for-wb50n.patch
index a30a803c98..324017c517 100644
--- a/target/linux/at91/patches-4.9/103-ARM-at91-build-dtb-for-wb50n.patch
+++ b/target/linux/at91/patches-4.14/103-ARM-at91-build-dtb-for-wb50n.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -59,7 +59,8 @@ dtb-$(CONFIG_SOC_SAM_V7) += \
+@@ -63,7 +63,8 @@ dtb-$(CONFIG_SOC_SAM_V7) += \
  	at91-sama5d4_ma5d4evk.dtb \
  	at91-sama5d4_xplained.dtb \
  	at91-sama5d4ek.dtb \
diff --git a/target/linux/at91/patches-4.9/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch b/target/linux/at91/patches-4.14/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch
similarity index 98%
rename from target/linux/at91/patches-4.9/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch
rename to target/linux/at91/patches-4.14/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch
index e33840cfd8..b3bede41dc 100644
--- a/target/linux/at91/patches-4.9/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch
+++ b/target/linux/at91/patches-4.14/105-ARM-at91-build-dtb-for-sama5d2-ptc-Ek.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -49,6 +49,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
+@@ -50,6 +50,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
  	wb45n.dtb
  dtb-$(CONFIG_SOC_SAM_V7) += \
  	at91-kizbox2.dtb \
@@ -10,7 +10,7 @@
  	at91-sama5d3_xplained.dtb \
 --- /dev/null
 +++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
-@@ -0,0 +1,422 @@
+@@ -0,0 +1,421 @@
 +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
 +/*
 + * at91-sama5d2_ptc_ek.dts - Device Tree file for SAMA5D2 PTC EK board
@@ -316,7 +316,6 @@
 +							 <PIN_PA30__NWE_NANDWE>,
 +							 <PIN_PB2__NRD_NANDOE>;
 +						bias-pull-up;
-+						drive-strength = <ATMEL_PIO_DRVSTR_ME>;
 +					};
 +
 +					ale_cle_rdy_cs {
diff --git a/target/linux/at91/patches-4.9/104-ARM-at91-build-dtb-for-sama5d27-SOM1-Ek.patch b/target/linux/at91/patches-4.9/104-ARM-at91-build-dtb-for-sama5d27-SOM1-Ek.patch
deleted file mode 100644
index 20c69f39ed..0000000000
--- a/target/linux/at91/patches-4.9/104-ARM-at91-build-dtb-for-sama5d27-SOM1-Ek.patch
+++ /dev/null
@@ -1,893 +0,0 @@
---- a/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt
-+++ b/Documentation/devicetree/bindings/pinctrl/atmel,at91-pio4-pinctrl.txt
-@@ -35,7 +35,12 @@ right representation of the pin.
- Optional properties:
- - GENERIC_PINCONFIG: generic pinconfig options to use, bias-disable,
- bias-pull-down, bias-pull-up, drive-open-drain, input-schmitt-enable,
--input-debounce, output-low, output-high.
-+input-debounce, output-low, output-high, drive-strength.
-+
-+Concerning the drive-strength property, the values accepted are
-+ATMEL_PIO_DRVSTR_LO, ATMEL_PIO_DRVSTR_ME, ATMEL_PIO_DRVSTR_HI. The current
-+depends on VDDIOP. You can find the details in the DC Characteristics table
-+from the datasheet.
- 
- Example:
- 
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -49,6 +49,7 @@ dtb-$(CONFIG_SOC_AT91SAM9) += \
- 	wb45n.dtb
- dtb-$(CONFIG_SOC_SAM_V7) += \
- 	at91-kizbox2.dtb \
-+	at91-sama5d27_som1_ek.dtb \
- 	at91-sama5d2_xplained.dtb \
- 	at91-sama5d3_xplained.dtb \
- 	sama5d31ek.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
-@@ -0,0 +1,175 @@
-+/*
-+ * at91-sama5d27_som1.dtsi - Device Tree file for SAMA5D27 SoM1 board
-+ *
-+ *  Copyright (c) 2017, Microchip Technology Inc.
-+ *                2017 Cristian Birsan <cristian.birsan@microchip.com>
-+ *                2017 Claudiu Beznea <claudiu.beznea@microchip.com>
-+ *
-+ * This file is dual-licensed: you can use it either under the terms
-+ * of the GPL or the X11 license, at your option. Note that this dual
-+ * licensing only applies to this file, and not this project as a
-+ * whole.
-+ *
-+ *  a) This file is free software; you can redistribute it and/or
-+ *     modify it under the terms of the GNU General Public License as
-+ *     published by the Free Software Foundation; either version 2 of the
-+ *     License, or (at your option) any later version.
-+ *
-+ *     This file is distributed in the hope that it will be useful,
-+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ *     GNU General Public License for more details.
-+ *
-+ * Or, alternatively,
-+ *
-+ *  b) Permission is hereby granted, free of charge, to any person
-+ *     obtaining a copy of this software and associated documentation
-+ *     files (the "Software"), to deal in the Software without
-+ *     restriction, including without limitation the rights to use,
-+ *     copy, modify, merge, publish, distribute, sublicense, and/or
-+ *     sell copies of the Software, and to permit persons to whom the
-+ *     Software is furnished to do so, subject to the following
-+ *     conditions:
-+ *
-+ *     The above copyright notice and this permission notice shall be
-+ *     included in all copies or substantial portions of the Software.
-+ *
-+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
-+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
-+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
-+ *     OTHER DEALINGS IN THE SOFTWARE.
-+ */
-+#include "sama5d2.dtsi"
-+#include "sama5d2-pinfunc.h"
-+
-+/ {
-+	model = "Atmel SAMA5D27 SoM1";
-+	compatible = "atmel,sama5d27-som1", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
-+
-+	clocks {
-+		slow_xtal {
-+			clock-frequency = <32768>;
-+		};
-+
-+		main_xtal {
-+			clock-frequency = <24000000>;
-+		};
-+	};
-+
-+	ahb {
-+		apb {
-+			qspi1: spi@f0024000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_qspi1_default>;
-+
-+				flash@0 {
-+					#address-cells = <1>;
-+					#size-cells = <1>;
-+					compatible = "jedec,spi-nor";
-+					reg = <0>;
-+					spi-max-frequency = <80000000>;
-+					m25p,fast-read;
-+
-+					at91bootstrap@00000000 {
-+						label = "at91bootstrap";
-+						reg = <0x00000000 0x00010000>;
-+					};
-+
-+					bootloader@00010000 {
-+						label = "bootloader";
-+						reg = <0x00010000 0x000a0000>;
-+					};
-+
-+					bootloaderenv@000b0000 {
-+						label = "bootloader env";
-+						reg = <0x000b0000 0x00010000>;
-+					};
-+
-+					dtb@000c0000 {
-+						label = "device tree";
-+						reg = <0x000c0000 0x0020000>;
-+					};
-+
-+					kernel@000e0000 {
-+						label = "kernel";
-+						reg = <0x000e0000 0x0400000>;
-+					};
-+				};
-+			};
-+
-+			macb0: ethernet@f8008000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_macb0_default>;
-+				phy-mode = "rmii";
-+
-+				ethernet-phy@0 {
-+					reg = <0x0>;
-+					interrupt-parent = <&pioA>;
-+					interrupts = <PIN_PD31 IRQ_TYPE_LEVEL_LOW>;
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_macb0_phy_irq>;
-+				};
-+			};
-+
-+			i2c0: i2c@f8028000 {
-+				dmas = <0>, <0>;
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_i2c0_default>;
-+				status = "okay";
-+
-+				at24@50 {
-+					compatible = "24c02";
-+					reg = <0x50>;
-+					pagesize = <8>;
-+				};
-+			};
-+
-+			pinctrl@fc038000 {
-+				pinctrl_i2c0_default: i2c0_default {
-+					pinmux = <PIN_PD21__TWD0>,
-+						 <PIN_PD22__TWCK0>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_qspi1_default: qspi1_default {
-+					sck_cs {
-+						pinmux = <PIN_PB5__QSPI1_SCK>,
-+							 <PIN_PB6__QSPI1_CS>;
-+						bias-disable;
-+					};
-+
-+					data {
-+						pinmux = <PIN_PB7__QSPI1_IO0>,
-+							 <PIN_PB8__QSPI1_IO1>,
-+							 <PIN_PB9__QSPI1_IO2>,
-+							 <PIN_PB10__QSPI1_IO3>;
-+						bias-pull-up;
-+					};
-+				};
-+
-+				pinctrl_macb0_default: macb0_default {
-+					pinmux = <PIN_PD9__GTXCK>,
-+						 <PIN_PD10__GTXEN>,
-+						 <PIN_PD11__GRXDV>,
-+						 <PIN_PD12__GRXER>,
-+						 <PIN_PD13__GRX0>,
-+						 <PIN_PD14__GRX1>,
-+						 <PIN_PD15__GTX0>,
-+						 <PIN_PD16__GTX1>,
-+						 <PIN_PD17__GMDC>,
-+						 <PIN_PD18__GMDIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_macb0_phy_irq: macb0_phy_irq {
-+					pinmux = <PIN_PD31__GPIO>;
-+					bias-disable;
-+				};
-+			};
-+		};
-+	};
-+};
---- /dev/null
-+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
-@@ -0,0 +1,53 @@
-+/*
-+ * at91-sama5d27_som1_ek.dts - Device Tree file for SAMA5D27-SOM1-EK board
-+ *
-+ *  Copyright (c) 2017, Microchip Technology Inc.
-+ *                2016 Nicolas Ferre <nicolas.ferre@atmel.com>
-+ *                2017 Cristian Birsan <cristian.birsan@microchip.com>
-+ *                2017 Claudiu Beznea <claudiu.beznea@microchip.com>
-+ *
-+ * This file is dual-licensed: you can use it either under the terms
-+ * of the GPL or the X11 license, at your option. Note that this dual
-+ * licensing only applies to this file, and not this project as a
-+ * whole.
-+ *
-+ *  a) This file is free software; you can redistribute it and/or
-+ *     modify it under the terms of the GNU General Public License as
-+ *     published by the Free Software Foundation; either version 2 of the
-+ *     License, or (at your option) any later version.
-+ *
-+ *     This file is distributed in the hope that it will be useful,
-+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ *     GNU General Public License for more details.
-+ *
-+ * Or, alternatively,
-+ *
-+ *  b) Permission is hereby granted, free of charge, to any person
-+ *     obtaining a copy of this software and associated documentation
-+ *     files (the "Software"), to deal in the Software without
-+ *     restriction, including without limitation the rights to use,
-+ *     copy, modify, merge, publish, distribute, sublicense, and/or
-+ *     sell copies of the Software, and to permit persons to whom the
-+ *     Software is furnished to do so, subject to the following
-+ *     conditions:
-+ *
-+ *     The above copyright notice and this permission notice shall be
-+ *     included in all copies or substantial portions of the Software.
-+ *
-+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
-+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
-+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
-+ *     OTHER DEALINGS IN THE SOFTWARE.
-+ */
-+/dts-v1/;
-+#include "at91-sama5d27_som1_ek_common.dtsi"
-+
-+/ {
-+	model = "Atmel SAMA5D27 SOM1 EK";
-+	compatible = "atmel,sama5d27-som1-ek", "atmel,sama5d27-som1", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
-+};
---- /dev/null
-+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek_common.dtsi
-@@ -0,0 +1,619 @@
-+/*
-+ * at91-sama5d27_som1_ek_common.dtsi - Device Tree file for SAMA5D27-SOM1-EK board
-+ *
-+ *  Copyright (c) 2017, Microchip Technology Inc.
-+ *                2016 Nicolas Ferre <nicolas.ferre@atmel.com>
-+ *                2017 Cristian Birsan <cristian.birsan@microchip.com>
-+ *                2017 Claudiu Beznea <claudiu.beznea@microchip.com>
-+ *
-+ * This file is dual-licensed: you can use it either under the terms
-+ * of the GPL or the X11 license, at your option. Note that this dual
-+ * licensing only applies to this file, and not this project as a
-+ * whole.
-+ *
-+ *  a) This file is free software; you can redistribute it and/or
-+ *     modify it under the terms of the GNU General Public License as
-+ *     published by the Free Software Foundation; either version 2 of the
-+ *     License, or (at your option) any later version.
-+ *
-+ *     This file is distributed in the hope that it will be useful,
-+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
-+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-+ *     GNU General Public License for more details.
-+ *
-+ * Or, alternatively,
-+ *
-+ *  b) Permission is hereby granted, free of charge, to any person
-+ *     obtaining a copy of this software and associated documentation
-+ *     files (the "Software"), to deal in the Software without
-+ *     restriction, including without limitation the rights to use,
-+ *     copy, modify, merge, publish, distribute, sublicense, and/or
-+ *     sell copies of the Software, and to permit persons to whom the
-+ *     Software is furnished to do so, subject to the following
-+ *     conditions:
-+ *
-+ *     The above copyright notice and this permission notice shall be
-+ *     included in all copies or substantial portions of the Software.
-+ *
-+ *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-+ *     EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
-+ *     OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-+ *     NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-+ *     HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
-+ *     WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-+ *     FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
-+ *     OTHER DEALINGS IN THE SOFTWARE.
-+ */
-+#include "at91-sama5d27_som1.dtsi"
-+#include <dt-bindings/mfd/atmel-flexcom.h>
-+#include <dt-bindings/gpio/gpio.h>
-+#include <dt-bindings/pinctrl/at91.h>
-+
-+/ {
-+	model = "Atmel SAMA5D27 SOM1 EK";
-+	compatible = "atmel,sama5d27-som1-ek", "atmel,sama5d27-som1", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
-+
-+	aliases {
-+		serial0 = &uart1;	/* DBGU */
-+		serial1 = &uart4;	/* mikro BUS 1 */
-+		serial2 = &uart2;	/* mikro BUS 2 */
-+		i2c1	= &i2c1;
-+		i2c2	= &i2c2;
-+	};
-+
-+	chosen {
-+		stdout-path = "serial0:115200n8";
-+	};
-+
-+	ahb {
-+		usb0: gadget@00300000 {
-+			atmel,vbus-gpio = <&pioA PIN_PD20 GPIO_ACTIVE_HIGH>;
-+			pinctrl-names = "default";
-+			pinctrl-0 = <&pinctrl_usba_vbus>;
-+			status = "okay";
-+		};
-+
-+		usb1: ohci@00400000 {
-+			num-ports = <3>;
-+			atmel,vbus-gpio = <0 /* &pioA PIN_PD20 GPIO_ACTIVE_HIGH */
-+					   &pioA PIN_PA27 GPIO_ACTIVE_HIGH
-+					   0
-+					  >;
-+			pinctrl-names = "default";
-+			pinctrl-0 = <&pinctrl_usb_default>;
-+			status = "okay";
-+		};
-+
-+		usb2: ehci@00500000 {
-+			status = "okay";
-+		};
-+
-+		sdmmc0: sdio-host@a0000000 {
-+			bus-width = <8>;
-+			pinctrl-names = "default";
-+			pinctrl-0 = <&pinctrl_sdmmc0_default>;
-+			status = "okay";
-+		};
-+
-+		sdmmc1: sdio-host@b0000000 {
-+			bus-width = <4>;
-+			pinctrl-names = "default";
-+			pinctrl-0 = <&pinctrl_sdmmc1_default>;
-+			status = "okay";
-+		};
-+
-+		apb {
-+			hlcdc: hlcdc@f0000000 {
-+				status = "disabled";
-+
-+				hlcdc-display-controller {
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_lcd_base &pinctrl_lcd_rgb>;
-+				};
-+
-+				hlcdc_pwm: hlcdc-pwm {
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_lcd_pwm>;
-+				};
-+			};
-+
-+			pmc: pmc@f0014000 {
-+				pmc_fast_restart {
-+					compatible = "atmel,sama5d2-pmc-fast-startup";
-+					#address-cells = <1>;
-+					#size-cells = <0>;
-+
-+					atmel,wakeup-rtc-timer;
-+
-+					wkpin: input@0 {
-+						reg = <0>;
-+					};
-+
-+					gmac_wol: input@10 {
-+						reg = <10>;
-+						atmel,wakeup-active-high;
-+					};
-+				};
-+			};
-+
-+			isc: isc@f0008000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_isc_base &pinctrl_isc_data_8bit &pinctrl_isc_data_9_10 &pinctrl_isc_data_11_12>;
-+				status = "okay";
-+			};
-+
-+			qspi1: spi@f0024000 {
-+				status = "okay";
-+			};
-+
-+			spi0: spi@f8000000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_spi0_default>;
-+				status = "okay";
-+			};
-+
-+			macb0: ethernet@f8008000 {
-+				status = "okay";
-+			};
-+
-+			uart1: serial@f8020000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_uart1_default>;
-+				atmel,use-dma-rx;
-+				atmel,use-dma-tx;
-+				status = "okay";
-+			};
-+
-+			uart2: serial@f8024000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_mikrobus2_uart>;
-+				atmel,use-dma-rx;
-+				atmel,use-dma-tx;
-+				status = "okay";
-+			};
-+
-+			pwm0: pwm@f802c000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_mikrobus1_pwm &pinctrl_mikrobus2_pwm>;
-+				status = "disabled"; /* Conflict with leds. */
-+			};
-+
-+			flx1: flexcom@f8038000 {
-+				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_TWI>;
-+				status = "okay";
-+
-+				i2c2: i2c@600 {
-+					compatible = "atmel,sama5d2-i2c";
-+					reg = <0x600 0x200>;
-+					interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
-+					dmas = <0>, <0>;
-+					dma-names = "tx", "rx";
-+					#address-cells = <1>;
-+					#size-cells = <0>;
-+					clocks = <&flx1_clk>;
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_mikrobus_i2c>;
-+					atmel,fifo-size = <16>;
-+					status = "okay";
-+				};
-+			};
-+
-+			shdwc@f8048010 {
-+				atmel,shdwc-debouncer = <976>;
-+				atmel,wakeup-rtc-timer;
-+
-+				input@0 {
-+					reg = <0>;
-+					atmel,wakeup-type = "low";
-+				};
-+			};
-+
-+			watchdog@f8048040 {
-+				status = "okay";
-+			};
-+
-+			uart3: serial@fc008000 {
-+				atmel,use-dma-rx;
-+				atmel,use-dma-tx;
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_uart3_default>;
-+				status = "disabled"; /* Conflict with isc. */
-+			};
-+
-+			uart4: serial@fc00c000 {
-+				atmel,use-dma-rx;
-+				atmel,use-dma-tx;
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_mikrobus1_uart>;
-+				status = "okay";
-+			};
-+
-+			flx3: flexcom@fc014000 {
-+				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_SPI>;
-+				status = "disabled";
-+
-+				uart7: serial@200 {
-+					compatible = "atmel,at91sam9260-usart";
-+					reg = <0x200 0x200>;
-+					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
-+					clocks = <&flx3_clk>;
-+					clock-names = "usart";
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_flx3_default>;
-+					atmel,fifo-size = <32>;
-+					status = "disabled"; /* Conflict with isc. */
-+				};
-+
-+				spi2: spi@400 {
-+					compatible = "atmel,at91rm9200-spi";
-+					reg = <0x400 0x200>;
-+					interrupts = <22 IRQ_TYPE_LEVEL_HIGH 7>;
-+					clocks = <&flx3_clk>;
-+					clock-names = "spi_clk";
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_flx3_default>;
-+					atmel,fifo-size = <16>;
-+					status = "disabled"; /* Conflict with isc. */
-+				};
-+			};
-+
-+			flx4: flexcom@fc018000 {
-+				atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_SPI>;
-+				status = "okay";
-+
-+				uart6: serial@200 {
-+					compatible = "atmel,at91sam9260-usart";
-+					reg = <0x200 0x200>;
-+					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
-+					clocks = <&flx4_clk>;
-+					clock-names = "usart";
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_flx4_default>;
-+					atmel,fifo-size = <32>;
-+					status = "disabled"; /* Conflict with spi3 and i2c3. */
-+				};
-+
-+				spi3: spi@400 {
-+					compatible = "atmel,at91rm9200-spi";
-+					reg = <0x400 0x200>;
-+					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
-+					clocks = <&flx4_clk>;
-+					clock-names = "spi_clk";
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_mikrobus_spi &pinctrl_mikrobus1_spi_cs &pinctrl_mikrobus2_spi_cs>;
-+					atmel,fifo-size = <16>;
-+					status = "okay";
-+				};
-+
-+				i2c3: i2c@600 {
-+					compatible = "atmel,sama5d2-i2c";
-+					reg = <0x600 0x200>;
-+					interrupts = <23 IRQ_TYPE_LEVEL_HIGH 7>;
-+					dmas = <0>, <0>;
-+					dma-names = "tx", "rx";
-+					#address-cells = <1>;
-+					#size-cells = <0>;
-+					clocks = <&flx4_clk>;
-+					pinctrl-names = "default";
-+					pinctrl-0 = <&pinctrl_flx4_default>;
-+					atmel,fifo-size = <16>;
-+					status = "disabled"; /* Conflict with uart6 and spi3. */
-+				};
-+			};
-+
-+			i2c1: i2c@fc028000 {
-+				dmas = <0>, <0>;
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_i2c1_default>;
-+				status = "okay";
-+			};
-+
-+			pinctrl@fc038000 {
-+
-+				pinctrl_lcd_base: pinctrl_lcd_base {
-+					pinmux = <PIN_PC5__LCDVSYNC>,
-+						 <PIN_PC6__LCDHSYNC>,
-+						 <PIN_PC8__LCDDEN>,
-+						 <PIN_PC7__LCDPCK>;
-+					bias-disable;
-+					drive-strength = <ATMEL_PIO_DRVSTR_ME>;
-+				};
-+
-+				pinctrl_lcd_rgb: pinctrl_lcd_rgb {
-+					pinmux = <PIN_PB11__LCDDAT0>,
-+						 <PIN_PB12__LCDDAT1>,
-+						 <PIN_PB13__LCDDAT2>,
-+						 <PIN_PB14__LCDDAT3>,
-+						 <PIN_PB15__LCDDAT4>,
-+						 <PIN_PB16__LCDDAT5>,
-+						 <PIN_PB17__LCDDAT6>,
-+						 <PIN_PB18__LCDDAT7>,
-+						 <PIN_PB19__LCDDAT8>,
-+						 <PIN_PB20__LCDDAT9>,
-+						 <PIN_PB21__LCDDAT10>,
-+						 <PIN_PB22__LCDDAT11>,
-+						 <PIN_PB23__LCDDAT12>,
-+						 <PIN_PB24__LCDDAT13>,
-+						 <PIN_PB25__LCDDAT14>,
-+						 <PIN_PB26__LCDDAT15>,
-+						 <PIN_PB27__LCDDAT16>,
-+						 <PIN_PB28__LCDDAT17>,
-+						 <PIN_PB29__LCDDAT18>,
-+						 <PIN_PB30__LCDDAT19>,
-+						 <PIN_PB31__LCDDAT20>,
-+						 <PIN_PC0__LCDDAT21>,
-+						 <PIN_PC1__LCDDAT22>,
-+						 <PIN_PC2__LCDDAT23>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_lcd_pwm: pinctrl_lcd_pwm {
-+					pinmux = <PIN_PC3__LCDPWM>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_can1_default: can1_default {
-+					pinmux = <PIN_PC26__CANTX1>,
-+						 <PIN_PC27__CANRX1>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_flx3_default: flx3_default {
-+					pinmux = <PIN_PC20__FLEXCOM3_IO0>,
-+						 <PIN_PC19__FLEXCOM3_IO1>,
-+						 <PIN_PC18__FLEXCOM3_IO2>,
-+						 <PIN_PC21__FLEXCOM3_IO3>,
-+						 <PIN_PC22__FLEXCOM3_IO4>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_i2c1_default: i2c1_default {
-+					pinmux = <PIN_PD4__TWD1>,
-+						 <PIN_PD5__TWCK1>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_isc_base: isc_base {
-+					pinmux = <PIN_PC21__ISC_PCK>,
-+						 <PIN_PC22__ISC_VSYNC>,
-+						 <PIN_PC23__ISC_HSYNC>,
-+						 <PIN_PC24__ISC_MCK>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_isc_data_8bit: isc_data_8bit {
-+					pinmux = <PIN_PC20__ISC_D11>,
-+						 <PIN_PC19__ISC_D10>,
-+						 <PIN_PC18__ISC_D9>,
-+						 <PIN_PC17__ISC_D8>,
-+						 <PIN_PC16__ISC_D7>,
-+						 <PIN_PC15__ISC_D6>,
-+						 <PIN_PC14__ISC_D5>,
-+						 <PIN_PC13__ISC_D4>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_isc_data_9_10: isc_data_9_10 {
-+					pinmux = <PIN_PC12__ISC_D3>,
-+						 <PIN_PC11__ISC_D2>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_isc_data_11_12: isc_data_11_12 {
-+					pinmux = <PIN_PC10__ISC_D1>,
-+						 <PIN_PC9__ISC_D0>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_key_gpio_default: key_gpio_default {
-+					pinmux = <PIN_PA29__GPIO>;
-+					bias-pull-up;
-+				};
-+
-+				pinctrl_led_gpio_default: led_gpio_default {
-+					pinmux = <PIN_PA10__GPIO>,
-+						 <PIN_PB1__GPIO>,
-+						 <PIN_PA31__GPIO>;
-+					bias-pull-up;
-+				};
-+
-+				pinctrl_sdmmc0_default: sdmmc0_default {
-+					cmd_data {
-+						pinmux = <PIN_PA1__SDMMC0_CMD>,
-+							 <PIN_PA2__SDMMC0_DAT0>,
-+							 <PIN_PA3__SDMMC0_DAT1>,
-+							 <PIN_PA4__SDMMC0_DAT2>,
-+							 <PIN_PA5__SDMMC0_DAT3>,
-+							 <PIN_PA6__SDMMC0_DAT4>,
-+							 <PIN_PA7__SDMMC0_DAT5>,
-+							 <PIN_PA8__SDMMC0_DAT6>,
-+							 <PIN_PA9__SDMMC0_DAT7>;
-+						bias-disable;
-+					};
-+
-+					ck_cd_vddsel {
-+						pinmux = <PIN_PA0__SDMMC0_CK>,
-+							 <PIN_PA11__SDMMC0_VDDSEL>,
-+							 <PIN_PA13__SDMMC0_CD>;
-+						bias-disable;
-+					};
-+				};
-+
-+				pinctrl_sdmmc1_default: sdmmc1_default {
-+					cmd_data {
-+						pinmux = <PIN_PA28__SDMMC1_CMD>,
-+							 <PIN_PA18__SDMMC1_DAT0>,
-+							 <PIN_PA19__SDMMC1_DAT1>,
-+							 <PIN_PA20__SDMMC1_DAT2>,
-+							 <PIN_PA21__SDMMC1_DAT3>;
-+						bias-disable;
-+					};
-+
-+					conf-ck_cd {
-+						pinmux = <PIN_PA22__SDMMC1_CK>,
-+							 <PIN_PA30__SDMMC1_CD>;
-+						bias-disable;
-+					};
-+				};
-+
-+				pinctrl_spi0_default: spi0_default {
-+					pinmux = <PIN_PA14__SPI0_SPCK>,
-+						 <PIN_PA15__SPI0_MOSI>,
-+						 <PIN_PA16__SPI0_MISO>,
-+						 <PIN_PA17__SPI0_NPCS0>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_uart1_default: uart1_default {
-+					pinmux = <PIN_PD2__URXD1>,
-+						 <PIN_PD3__UTXD1>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_uart3_default: uart3_default {
-+					pinmux = <PIN_PC12__URXD3>,
-+						 <PIN_PC13__UTXD3>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_usb_default: usb_default {
-+					pinmux = <PIN_PA27__GPIO>,
-+						 <PIN_PD19__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_usba_vbus: usba_vbus {
-+					pinmux = <PIN_PD20__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus1_an: mikrobus1_an {
-+					pinmux = <PIN_PD25__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus2_an: mikrobus2_an {
-+					pinmux = <PIN_PD26__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus1_rst: mikrobus1_rst {
-+					pinmux = <PIN_PB2__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus2_rst: mikrobus2_rst {
-+					pinmux = <PIN_PA26__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus1_spi_cs: mikrobus1_spi_cs {
-+					pinmux = <PIN_PD0__FLEXCOM4_IO4>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus2_spi_cs: mikrobus2_spi_cs {
-+					pinmux = <PIN_PC31__FLEXCOM4_IO3>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus_spi: mikrobus_spi {
-+					pinmux = <PIN_PC28__FLEXCOM4_IO0>,
-+						 <PIN_PC29__FLEXCOM4_IO1>,
-+						 <PIN_PC30__FLEXCOM4_IO2>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus1_pwm: mikrobus1_pwm {
-+					pinmux = <PIN_PB1__PWML1>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus2_pwm: mikrobus2_pwm {
-+					pinmux = <PIN_PA31__PWML0>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus1_int: mikrobus1_int {
-+					pinmux = <PIN_PB0__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus2_int: mikrobus2_int {
-+					pinmux = <PIN_PA25__GPIO>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus1_uart: mikrobus1_uart {
-+					pinmux = <PIN_PB3__URXD4>,
-+						 <PIN_PB4__UTXD4>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus2_uart: mikrobus2_uart {
-+					pinmux = <PIN_PD23__URXD2>,
-+						 <PIN_PD24__UTXD2>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_mikrobus_i2c: mikrobus1_i2c {
-+					pinmux = <PIN_PA24__FLEXCOM1_IO0>,
-+						 <PIN_PA23__FLEXCOM1_IO1>;
-+					bias-disable;
-+				};
-+
-+				pinctrl_flx4_default: flx4_uart_default {
-+					pinmux = <PIN_PC28__FLEXCOM4_IO0>,
-+						 <PIN_PC29__FLEXCOM4_IO1>,
-+						 <PIN_PC30__FLEXCOM4_IO2>,
-+						 <PIN_PC31__FLEXCOM4_IO3>,
-+						 <PIN_PD0__FLEXCOM4_IO4>;
-+					bias-disable;
-+				};
-+			};
-+
-+			can1: can@fc050000 {
-+				pinctrl-names = "default";
-+				pinctrl-0 = <&pinctrl_can1_default>;
-+				status = "okay";
-+			};
-+		};
-+	};
-+
-+	gpio_keys {
-+		compatible = "gpio-keys";
-+
-+		pinctrl-names = "default";
-+		pinctrl-0 = <&pinctrl_key_gpio_default>;
-+
-+		pb4 {
-+			label = "USER";
-+			gpios = <&pioA PIN_PA29 GPIO_ACTIVE_LOW>;
-+			linux,code = <0x104>;
-+			wakeup-source;
-+		};
-+	};
-+
-+	leds {
-+		compatible = "gpio-leds";
-+		pinctrl-names = "default";
-+		pinctrl-0 = <&pinctrl_led_gpio_default>;
-+		status = "okay"; /* Conflict with pwm0. */
-+
-+		red {
-+			label = "red";
-+			gpios = <&pioA PIN_PA10 GPIO_ACTIVE_HIGH>;
-+		};
-+
-+		green {
-+			label = "green";
-+			gpios = <&pioA PIN_PB1 GPIO_ACTIVE_HIGH>;
-+		};
-+
-+		blue {
-+			label = "blue";
-+			gpios = <&pioA PIN_PA31 GPIO_ACTIVE_HIGH>;
-+			linux,default-trigger = "heartbeat";
-+		};
-+	};
-+};
---- a/include/dt-bindings/pinctrl/at91.h
-+++ b/include/dt-bindings/pinctrl/at91.h
-@@ -37,4 +37,8 @@
- #define AT91_PERIPH_C		3
- #define AT91_PERIPH_D		4
- 
-+#define ATMEL_PIO_DRVSTR_LO	1
-+#define ATMEL_PIO_DRVSTR_ME	2
-+#define ATMEL_PIO_DRVSTR_HI	3
-+
- #endif /* __DT_BINDINGS_AT91_PINCTRL_H__ */
diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 888401376c..1f09ed3c82 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -900,6 +900,8 @@ CONFIG_CRYPTO_BLKCIPHER2=y
 # CONFIG_CRYPTO_DEFLATE is not set
 # CONFIG_CRYPTO_DES is not set
 # CONFIG_CRYPTO_DEV_ATMEL_AES is not set
+# CONFIG_CRYPTO_DEV_ATMEL_AUTHENC is not set
+# CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
 # CONFIG_CRYPTO_DEV_ATMEL_SHA is not set
 # CONFIG_CRYPTO_DEV_ATMEL_TDES is not set
 # CONFIG_CRYPTO_DEV_CAVIUM_ZIP is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index de8eb9d53a..fb19363e2e 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -944,6 +944,8 @@ CONFIG_CRYPTO_BLKCIPHER2=y
 # CONFIG_CRYPTO_DEFLATE is not set
 # CONFIG_CRYPTO_DES is not set
 # CONFIG_CRYPTO_DEV_ATMEL_AES is not set
+# CONFIG_CRYPTO_DEV_ATMEL_AUTHENC is not set
+# CONFIG_CRYPTO_DEV_ATMEL_ECC is not set
 # CONFIG_CRYPTO_DEV_ATMEL_SHA is not set
 # CONFIG_CRYPTO_DEV_ATMEL_TDES is not set
 # CONFIG_CRYPTO_DEV_CAVIUM_ZIP is not set
-- 
2.20.1



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
