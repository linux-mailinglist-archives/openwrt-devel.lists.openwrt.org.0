Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A4B2CD85
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBFjntIDGFiK4M092ZTlkPEU8h+QBTsprPniZwFedfk=; b=fJCigzE8tHP2eD
	pQZQULwfx5CkNcpINrHAViFWx2pOhpoIdP93NQcBOktyf8A4DSg8sByBkzpp3kQZauCnwIM9B1xHY
	ETRcmunu2zFvrT0oCzU8p/J1pvee1d3ep2yBniZKx3nqbqVw4ctNpmM9wvRwZ7FAq3/r/fO6fbBMD
	U9bJ3hxLhYQLu3IfBsUDHrDhG5s5Utm7RZiB3LyPzCnXZivyqKMj0gfuW1YoGwe3y3CxEWhez6J6I
	+pTNoKVGbUQsAOdPyb3eiUq/vZuoLnEVgdGWDraDq3wJvaLMB1FOa8/LlaiBer61GS33nObT0BzDJ
	Q8X2+GMFHwAss89H3jFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfoZ-0000d3-Su; Tue, 28 May 2019 17:23:07 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoC-0000RQ-Hm
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:22:51 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110472"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:26 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:25 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:09 -0700
Message-ID: <1559064079-18225-1-git-send-email-sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102248_590801_DF9C9E4A 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/4] at91: Refresh kernel configuration
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Hauke Mehrtens <hauke@hauke-m.de>

The configuration of the sama5d4 subtarget was used as the default
configuration and then the subtarget configurations were adapted.

The resulting kernel configuration without any extra modules selected is
still the same.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/at91/config-4.9             | 97 ++++++++++++++++----------------
 target/linux/at91/legacy/config-default  | 27 +++++----
 target/linux/at91/sama5d2/config-default | 42 +-------------
 target/linux/at91/sama5d3/config-default | 39 +------------
 target/linux/at91/sama5d4/config-default | 39 -------------
 5 files changed, 65 insertions(+), 179 deletions(-)
 delete mode 100644 target/linux/at91/sama5d4/config-default

diff --git a/target/linux/at91/config-4.9 b/target/linux/at91/config-4.9
index 26c4992..6a70793 100644
--- a/target/linux/at91/config-4.9
+++ b/target/linux/at91/config-4.9
@@ -9,6 +9,8 @@ CONFIG_ARCH_HIBERNATION_POSSIBLE=y
 CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
 CONFIG_ARCH_MULTIPLATFORM=y
 # CONFIG_ARCH_MULTI_CPU_AUTO is not set
+CONFIG_ARCH_MULTI_V6_V7=y
+CONFIG_ARCH_MULTI_V7=y
 CONFIG_ARCH_NR_GPIO=0
 # CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
 # CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
@@ -35,6 +37,7 @@ CONFIG_ARM_UNWIND=y
 CONFIG_ARM_VIRT_EXT=y
 CONFIG_AT91SAM9X_WATCHDOG=y
 CONFIG_AT91_ADC=y
+CONFIG_AT91_SAMA5D2_ADC=y
 CONFIG_ATMEL_AIC5_IRQ=y
 CONFIG_ATMEL_EBI=y
 CONFIG_ATMEL_PIT=y
@@ -44,12 +47,12 @@ CONFIG_ATMEL_TCB_CLKSRC=y
 CONFIG_ATMEL_TCB_CLKSRC_BLOCK=0
 CONFIG_ATMEL_TCLIB=y
 CONFIG_AT_HDMAC=y
-# CONFIG_AT_XDMAC is not set
+CONFIG_AT_XDMAC=y
 CONFIG_AUTO_ZRELADDR=y
 CONFIG_BACKLIGHT_CLASS_DEVICE=y
 CONFIG_BACKLIGHT_LCD_SUPPORT=y
 CONFIG_BACKLIGHT_PWM=y
-# CONFIG_BLK_CGROUP is not set
+CONFIG_BATTERY_ACT8945A=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
 CONFIG_BLK_DEV_RAM_COUNT=4
@@ -58,21 +61,28 @@ CONFIG_BLK_DEV_SD=y
 # CONFIG_BPF_SYSCALL is not set
 # CONFIG_BRIDGE is not set
 CONFIG_CACHE_L2X0=y
+CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
+# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLKSRC_OF=y
 CONFIG_CLKSRC_PROBE=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMA=y
+CONFIG_CMA_ALIGNMENT=8
 CONFIG_CMA_AREAS=7
 # CONFIG_CMA_DEBUG is not set
-# CONFIG_CMA_DEBUGFS is not set
+CONFIG_CMA_DEBUGFS=y
+CONFIG_CMA_SIZE_MBYTES=16
+# CONFIG_CMA_SIZE_SEL_MAX is not set
+CONFIG_CMA_SIZE_SEL_MBYTES=y
+# CONFIG_CMA_SIZE_SEL_MIN is not set
+# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
 CONFIG_CMDLINE="console=ttyS0,115200 initrd=0x21100000,25165824 root=/dev/ram0 rw"
 CONFIG_COMMON_CLK=y
 CONFIG_COMMON_CLK_AT91=y
 CONFIG_CONFIGFS_FS=y
 CONFIG_CONSOLE_TRANSLATIONS=y
 CONFIG_COREDUMP=y
-# CONFIG_CPUSETS is not set
 CONFIG_CPU_32v6K=y
 CONFIG_CPU_32v7=y
 CONFIG_CPU_ABRT_EV7=y
@@ -86,10 +96,13 @@ CONFIG_CPU_HAS_ASID=y
 # CONFIG_CPU_ICACHE_DISABLE is not set
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
+CONFIG_CPU_IDLE_GOV_MENU=y
 CONFIG_CPU_PABRT_V7=y
 CONFIG_CPU_PM=y
+CONFIG_CPU_SPECTRE=y
 CONFIG_CPU_TLB_V7=y
 CONFIG_CPU_V7=y
+CONFIG_CRASH_DUMP=y
 CONFIG_CRC16=y
 # CONFIG_CRC32_SARWATE is not set
 CONFIG_CRC32_SLICEBY8=y
@@ -123,14 +136,13 @@ CONFIG_CRYPTO_SHA256=y
 CONFIG_CRYPTO_WORKQUEUE=y
 CONFIG_DCACHE_WORD_ACCESS=y
 CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
+CONFIG_DEBUG_MEMORY_INIT=y
 # CONFIG_DEBUG_UART_8250 is not set
 CONFIG_DEBUG_USER=y
 CONFIG_DEFAULT_IOSCHED="noop"
 CONFIG_DEFAULT_NOOP=y
-CONFIG_DEVTMPFS=y
-CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_DMADEVICES=y
-# CONFIG_DMA_CMA is not set
+CONFIG_DMA_CMA=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
 CONFIG_DMA_SHARED_BUFFER=y
@@ -145,7 +157,6 @@ CONFIG_DRM_KMS_FB_HELPER=y
 CONFIG_DRM_KMS_HELPER=y
 CONFIG_DRM_PANEL=y
 CONFIG_DRM_PANEL_SIMPLE=y
-CONFIG_DST_CACHE=y
 CONFIG_DTC=y
 CONFIG_DUMMY_CONSOLE=y
 CONFIG_EDAC_ATOMIC_SCRUB=y
@@ -153,9 +164,7 @@ CONFIG_EDAC_SUPPORT=y
 CONFIG_EEPROM_AT24=y
 CONFIG_ELF_CORE=y
 CONFIG_ENABLE_MUST_CHECK=y
-CONFIG_EXPORTFS=y
 CONFIG_EXT4_FS=y
-CONFIG_FANOTIFY=y
 CONFIG_FAT_FS=y
 CONFIG_FB=y
 # CONFIG_FB_ATMEL is not set
@@ -168,12 +177,10 @@ CONFIG_FB_SYS_COPYAREA=y
 CONFIG_FB_SYS_FILLRECT=y
 CONFIG_FB_SYS_FOPS=y
 CONFIG_FB_SYS_IMAGEBLIT=y
-CONFIG_FHANDLE=y
 CONFIG_FIRMWARE_IN_KERNEL=y
 CONFIG_FIXED_PHY=y
 CONFIG_FIX_EARLYCON_MEM=y
 CONFIG_FORCE_MAX_ZONEORDER=15
-CONFIG_FRAME_VECTOR=y
 CONFIG_FREEZER=y
 CONFIG_FS_MBCACHE=y
 # CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
@@ -195,7 +202,6 @@ CONFIG_GENERIC_STRNLEN_USER=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIOLIB_IRQCHIP=y
 CONFIG_GPIO_SYSFS=y
-CONFIG_GRACE_PERIOD=y
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDEN_BRANCH_PREDICTOR=y
 CONFIG_HARDIRQS_SW_RESEND=y
@@ -211,7 +217,6 @@ CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 CONFIG_HAVE_ARM_SMCCC=y
-CONFIG_HAVE_AT91_GENERATED_CLK=y
 CONFIG_HAVE_AT91_H32MX=y
 CONFIG_HAVE_AT91_SMD=y
 CONFIG_HAVE_AT91_USB_CLK=y
@@ -255,7 +260,6 @@ CONFIG_HW_CONSOLE=y
 CONFIG_HW_RANDOM=y
 CONFIG_HW_RANDOM_ATMEL=y
 CONFIG_HZ_FIXED=0
-CONFIG_HZ_PERIODIC=y
 CONFIG_I2C=y
 CONFIG_I2C_ALGOBIT=y
 CONFIG_I2C_AT91=y
@@ -277,10 +281,6 @@ CONFIG_INPUT_LEDS=y
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_IOMMU_HELPER=y
 # CONFIG_IOSCHED_DEADLINE is not set
-CONFIG_IP_PNP=y
-# CONFIG_IP_PNP_BOOTP is not set
-CONFIG_IP_PNP_DHCP=y
-# CONFIG_IP_PNP_RARP is not set
 CONFIG_IRQCHIP=y
 CONFIG_IRQ_DOMAIN=y
 CONFIG_IRQ_DOMAIN_DEBUG=y
@@ -294,7 +294,7 @@ CONFIG_KEXEC=y
 CONFIG_KEXEC_CORE=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_QT1070=y
-# CONFIG_LCD_PLATFORM is not set
+# CONFIG_LCD_CLASS_DEVICE is not set
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_PWM=y
 CONFIG_LEDS_TRIGGER_CPU=y
@@ -305,19 +305,20 @@ CONFIG_LEGACY_PTYS=y
 CONFIG_LEGACY_PTY_COUNT=4
 CONFIG_LIBFDT=y
 CONFIG_LOCALVERSION_AUTO=y
-CONFIG_LOCKD=y
 CONFIG_LOG_BUF_SHIFT=16
 CONFIG_LZO_COMPRESS=y
 CONFIG_LZO_DECOMPRESS=y
 CONFIG_MACB=y
+CONFIG_MAGIC_SYSRQ=y
 CONFIG_MANDATORY_FILE_LOCKING=y
 CONFIG_MDIO_BOARDINFO=y
 CONFIG_MEDIA_CAMERA_SUPPORT=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_MEDIA_USB_SUPPORT=y
-# CONFIG_MEMCG is not set
 CONFIG_MEMORY=y
 CONFIG_MEMORY_ISOLATION=y
+CONFIG_MFD_ACT8945A=y
+CONFIG_MFD_ATMEL_FLEXCOM=y
 CONFIG_MFD_ATMEL_HLCDC=y
 CONFIG_MFD_CORE=y
 CONFIG_MFD_SYSCON=y
@@ -329,15 +330,21 @@ CONFIG_MMC=y
 CONFIG_MMC_ATMELMCI=y
 CONFIG_MMC_BLOCK=y
 # CONFIG_MMC_BLOCK_BOUNCE is not set
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_IO_ACCESSORS=y
+CONFIG_MMC_SDHCI_OF_AT91=y
+CONFIG_MMC_SDHCI_PLTFM=y
 CONFIG_MODULES_USE_ELF_REL=y
 # CONFIG_MTD_CFI_AMDSTD is not set
 # CONFIG_MTD_CFI_INTELEXT is not set
 CONFIG_MTD_CMDLINE_PARTS=y
 # CONFIG_MTD_COMPLEX_MAPPINGS is not set
+CONFIG_MTD_M25P80=y
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_ATMEL=y
 CONFIG_MTD_NAND_ECC=y
 # CONFIG_MTD_PHYSMAP_OF is not set
+CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_BEB_LIMIT=20
 # CONFIG_MTD_UBI_BLOCK is not set
@@ -354,6 +361,8 @@ CONFIG_NLS_CODEPAGE_850=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_NLS_UTF8=y
 CONFIG_NO_BOOTMEM=y
+CONFIG_NO_HZ_COMMON=y
+CONFIG_NO_HZ_IDLE=y
 CONFIG_NVMEM=y
 CONFIG_OF=y
 CONFIG_OF_ADDRESS=y
@@ -396,10 +405,11 @@ CONFIG_PM_SLEEP_DEBUG=y
 CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_AT91_POWEROFF=y
 CONFIG_POWER_RESET_AT91_RESET=y
-# CONFIG_POWER_RESET_AT91_SAMA5D2_SHDWC is not set
+CONFIG_POWER_RESET_AT91_SAMA5D2_SHDWC=y
 CONFIG_POWER_SUPPLY=y
 # CONFIG_PREVENT_FIRMWARE_BUILD is not set
-CONFIG_PROC_PAGE_MONITOR=y
+CONFIG_PRINTK_TIME=y
+CONFIG_PROC_VMCORE=y
 CONFIG_PWM=y
 CONFIG_PWM_ATMEL=y
 CONFIG_PWM_ATMEL_HLCDC_PWM=y
@@ -413,15 +423,17 @@ CONFIG_REGMAP_I2C=y
 CONFIG_REGMAP_MMIO=y
 CONFIG_REGMAP_SPI=y
 CONFIG_REGULATOR=y
+CONFIG_REGULATOR_ACT8865=y
+CONFIG_REGULATOR_ACT8945A=y
 CONFIG_REGULATOR_FIXED_VOLTAGE=y
-CONFIG_ROOT_NFS=y
+CONFIG_RFKILL_REGULATOR=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_AT91RM9200=y
 # CONFIG_RTC_DRV_AT91SAM9 is not set
 # CONFIG_RTC_DRV_CMOS is not set
 CONFIG_RTC_I2C_AND_SPI=y
 CONFIG_RWSEM_XCHGADD_ALGORITHM=y
-# CONFIG_SAMA5D4_WATCHDOG is not set
+CONFIG_SAMA5D4_WATCHDOG=y
 # CONFIG_SCHED_INFO is not set
 CONFIG_SCSI=y
 # CONFIG_SCSI_LOWLEVEL is not set
@@ -440,7 +452,7 @@ CONFIG_SND_ARM=y
 # CONFIG_SND_AT91_SOC_SAM9G20_WM8731 is not set
 # CONFIG_SND_AT91_SOC_SAM9X5_WM8731 is not set
 CONFIG_SND_ATMEL_SOC=y
-# CONFIG_SND_ATMEL_SOC_CLASSD is not set
+CONFIG_SND_ATMEL_SOC_CLASSD=y
 CONFIG_SND_ATMEL_SOC_DMA=y
 # CONFIG_SND_ATMEL_SOC_PDMIC is not set
 CONFIG_SND_ATMEL_SOC_SSC=y
@@ -460,13 +472,16 @@ CONFIG_SND_SPI=y
 CONFIG_SND_SUPPORT_OLD_API=y
 CONFIG_SND_TIMER=y
 CONFIG_SOC_BUS=y
+CONFIG_SOC_SAMA5=y
 # CONFIG_SOC_SAMA5D2 is not set
 # CONFIG_SOC_SAMA5D3 is not set
-# CONFIG_SOC_SAMA5D4 is not set
+CONFIG_SOC_SAMA5D4=y
+CONFIG_SOC_SAM_V7=y
 CONFIG_SOUND=y
 CONFIG_SPARSE_IRQ=y
 CONFIG_SPI=y
 CONFIG_SPI_ATMEL=y
+CONFIG_SPI_ATMEL_QUADSPI=y
 CONFIG_SPI_BITBANG=y
 CONFIG_SPI_GPIO=y
 CONFIG_SPI_MASTER=y
@@ -475,10 +490,8 @@ CONFIG_SRAM=y
 CONFIG_SRCU=y
 # CONFIG_STAGING is not set
 # CONFIG_STANDALONE is not set
-CONFIG_SUNRPC=y
 CONFIG_SUSPEND=y
 CONFIG_SUSPEND_FREEZER=y
-# CONFIG_SWAP is not set
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 # CONFIG_SWP_EMULATE is not set
@@ -488,6 +501,8 @@ CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 # CONFIG_THUMB2_KERNEL is not set
 CONFIG_TICK_CPU_ACCOUNTING=y
 # CONFIG_TMPFS_XATTR is not set
+CONFIG_TOUCHSCREEN_ATMEL_MXT=y
+# CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
 CONFIG_TOUCHSCREEN_PROPERTIES=y
 CONFIG_UACCESS_WITH_MEMCPY=y
 CONFIG_UBIFS_FS=y
@@ -500,35 +515,17 @@ CONFIG_USB=y
 CONFIG_USB_ACM=y
 CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
 # CONFIG_USB_AT91 is not set
-# CONFIG_USB_AUDIO is not set
+# CONFIG_USB_ATMEL_USBA is not set
 CONFIG_USB_COMMON=y
-CONFIG_USB_CONFIGFS_ACM=y
-# CONFIG_USB_CONFIGFS_ECM is not set
-# CONFIG_USB_CONFIGFS_ECM_SUBSET is not set
-# CONFIG_USB_CONFIGFS_EEM is not set
-# CONFIG_USB_CONFIGFS_F_FS is not set
-# CONFIG_USB_CONFIGFS_F_HID is not set
-# CONFIG_USB_CONFIGFS_F_LB_SS is not set
-# CONFIG_USB_CONFIGFS_F_MIDI is not set
-# CONFIG_USB_CONFIGFS_F_PRINTER is not set
-# CONFIG_USB_CONFIGFS_F_UAC1 is not set
-# CONFIG_USB_CONFIGFS_F_UAC2 is not set
-# CONFIG_USB_CONFIGFS_F_UVC is not set
-CONFIG_USB_CONFIGFS_MASS_STORAGE=y
-# CONFIG_USB_CONFIGFS_NCM is not set
-# CONFIG_USB_CONFIGFS_OBEX is not set
-# CONFIG_USB_CONFIGFS_RNDIS is not set
-# CONFIG_USB_CONFIGFS_SERIAL is not set
 CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_HCD_AT91=y
 # CONFIG_USB_EHCI_HCD_PLATFORM is not set
 # CONFIG_USB_EHCI_ROOT_HUB_TT is not set
-# CONFIG_USB_ETH is not set
 CONFIG_USB_GADGET=y
 CONFIG_USB_HID=y
 CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_AT91=y
-# CONFIG_USB_OHCI_HCD_PLATFORM is not set
+CONFIG_USB_OHCI_HCD_PLATFORM=y
 # CONFIG_USB_PWC is not set
 CONFIG_USB_SERIAL=y
 # CONFIG_USB_SERIAL_CONSOLE is not set
diff --git a/target/linux/at91/legacy/config-default b/target/linux/at91/legacy/config-default
index f53f24e..4f73051 100644
--- a/target/linux/at91/legacy/config-default
+++ b/target/linux/at91/legacy/config-default
@@ -2,21 +2,16 @@
 CONFIG_ARCH_MULTI_V4T=y
 CONFIG_ARCH_MULTI_V4_V5=y
 CONFIG_ARCH_MULTI_V5=y
+# CONFIG_ARCH_MULTI_V7 is not set
 # CONFIG_ARM_AT91_CPUIDLE is not set
 CONFIG_ARM_L1_CACHE_SHIFT=5
 # CONFIG_AT91RM9200_WATCHDOG is not set
+# CONFIG_AT91_SAMA5D2_ADC is not set
 CONFIG_ATMEL_AIC_IRQ=y
 CONFIG_ATMEL_ST=y
-CONFIG_AT_XDMAC=y
 CONFIG_BACKLIGHT_ATMEL_LCDC=y
 # CONFIG_CACHE_L2X0 is not set
-CONFIG_CMA_ALIGNMENT=8
 CONFIG_CMA_DEBUGFS=y
-CONFIG_CMA_SIZE_MBYTES=16
-# CONFIG_CMA_SIZE_SEL_MAX is not set
-CONFIG_CMA_SIZE_SEL_MBYTES=y
-# CONFIG_CMA_SIZE_SEL_MIN is not set
-# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
 CONFIG_CPU_32v4T=y
 CONFIG_CPU_32v5=y
 CONFIG_CPU_ABRT_EV4T=y
@@ -28,6 +23,7 @@ CONFIG_CPU_CACHE_V4WT=y
 CONFIG_CPU_CACHE_VIVT=y
 CONFIG_CPU_COPY_V4WB=y
 # CONFIG_CPU_DCACHE_WRITETHROUGH is not set
+# CONFIG_CPU_IDLE_GOV_MENU is not set
 CONFIG_CPU_NO_EFFICIENT_FFS=y
 CONFIG_CPU_PABRT_LEGACY=y
 CONFIG_CPU_TLB_V4WBI=y
@@ -35,8 +31,7 @@ CONFIG_CPU_USE_DOMAINS=y
 CONFIG_CRC7=y
 CONFIG_CRC_CCITT=y
 CONFIG_CRC_ITU_T=y
-CONFIG_DEBUG_MEMORY_INIT=y
-CONFIG_DMA_CMA=y
+CONFIG_DEBUG_INFO=y
 CONFIG_FB_ATMEL=y
 CONFIG_FB_BACKLIGHT=y
 CONFIG_FB_MODE_HELPERS=y
@@ -44,12 +39,20 @@ CONFIG_GENERIC_ATOMIC64=y
 # CONFIG_HAVE_ARCH_BITREVERSE is not set
 CONFIG_HZ=128
 CONFIG_HZ_FIXED=128
-# CONFIG_LCD_CLASS_DEVICE is not set
+CONFIG_HZ_PERIODIC=y
+# CONFIG_MFD_ACT8945A is not set
+# CONFIG_MFD_ATMEL_FLEXCOM is not set
+# CONFIG_MMC_SDHCI is not set
 CONFIG_MMC_SPI=y
+# CONFIG_MTD_SPI_NOR is not set
 CONFIG_NEED_KUSER_HELPERS=y
-CONFIG_RFKILL_REGULATOR=y
+# CONFIG_NO_HZ_IDLE is not set
+# CONFIG_POWER_RESET_AT91_SAMA5D2_SHDWC is not set
+# CONFIG_REGULATOR_ACT8865 is not set
 CONFIG_RTC_DRV_AT91SAM9=y
+# CONFIG_SAMA5D4_WATCHDOG is not set
 # CONFIG_SND_ARM is not set
+# CONFIG_SND_ATMEL_SOC_CLASSD is not set
 # CONFIG_SND_DRIVERS is not set
 # CONFIG_SND_SPI is not set
 CONFIG_SOC_AT91RM9200=y
@@ -57,4 +60,4 @@ CONFIG_SOC_AT91SAM9=y
 CONFIG_SOC_SAM_V4_V5=y
 CONFIG_SPLIT_PTLOCK_CPUS=999999
 CONFIG_TOUCHSCREEN_ADS7846=y
-# CONFIG_USB_ATMEL_USBA is not set
+# CONFIG_TOUCHSCREEN_ATMEL_MXT is not set
diff --git a/target/linux/at91/sama5d2/config-default b/target/linux/at91/sama5d2/config-default
index 43f8d24..e8f0854 100644
--- a/target/linux/at91/sama5d2/config-default
+++ b/target/linux/at91/sama5d2/config-default
@@ -1,44 +1,6 @@
-CONFIG_ARCH_MULTI_V6_V7=y
-CONFIG_ARCH_MULTI_V7=y
-CONFIG_AT91_SAMA5D2_ADC=y
-CONFIG_AT_XDMAC=y
-CONFIG_BATTERY_ACT8945A=y
 CONFIG_CAN=y
-CONFIG_CMA_ALIGNMENT=8
-CONFIG_CMA_DEBUGFS=y
-CONFIG_CMA_SIZE_MBYTES=16
-# CONFIG_CMA_SIZE_SEL_MAX is not set
-CONFIG_CMA_SIZE_SEL_MBYTES=y
-# CONFIG_CMA_SIZE_SEL_MIN is not set
-# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
-CONFIG_CPU_IDLE_GOV_MENU=y
-CONFIG_DEBUG_MEMORY_INIT=y
-CONFIG_DMA_CMA=y
-# CONFIG_HZ_PERIODIC is not set
-# CONFIG_LCD_CLASS_DEVICE is not set
-CONFIG_MEMCG=y
-CONFIG_MFD_ACT8945A=y
-CONFIG_MFD_ATMEL_FLEXCOM=y
-CONFIG_MMC_SDHCI=y
-CONFIG_MMC_SDHCI_IO_ACCESSORS=y
-CONFIG_MMC_SDHCI_OF_AT91=y
-CONFIG_MMC_SDHCI_PLTFM=y
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_SPI_NOR=y
-CONFIG_NO_HZ_COMMON=y
-CONFIG_NO_HZ_IDLE=y
-CONFIG_PAGE_COUNTER=y
+CONFIG_HAVE_AT91_GENERATED_CLK=y
 CONFIG_POSIX_MQUEUE=y
 CONFIG_POSIX_MQUEUE_SYSCTL=y
-CONFIG_POWER_RESET_AT91_SAMA5D2_SHDWC=y
-CONFIG_REGULATOR_ACT8865=y
-CONFIG_REGULATOR_ACT8945A=y
-CONFIG_RFKILL_REGULATOR=y
-CONFIG_SAMA5D4_WATCHDOG=y
-CONFIG_SND_ATMEL_SOC_CLASSD=y
 CONFIG_SOC_SAMA5D2=y
-CONFIG_SOC_SAM_V7=y
-CONFIG_SPI_ATMEL_QUADSPI=y
-CONFIG_TOUCHSCREEN_ATMEL_MXT=y
-# CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
-# CONFIG_USB_ATMEL_USBA is not set
+# CONFIG_SOC_SAMA5D4 is not set
diff --git a/target/linux/at91/sama5d3/config-default b/target/linux/at91/sama5d3/config-default
index 88b4031..eb0ec01 100644
--- a/target/linux/at91/sama5d3/config-default
+++ b/target/linux/at91/sama5d3/config-default
@@ -1,39 +1,2 @@
-CONFIG_ARCH_MULTI_V6_V7=y
-CONFIG_ARCH_MULTI_V7=y
-CONFIG_AT91_SAMA5D2_ADC=y
-CONFIG_AT_XDMAC=y
-CONFIG_BATTERY_ACT8945A=y
-CONFIG_CMA_ALIGNMENT=8
-CONFIG_CMA_DEBUGFS=y
-CONFIG_CMA_SIZE_MBYTES=16
-# CONFIG_CMA_SIZE_SEL_MAX is not set
-CONFIG_CMA_SIZE_SEL_MBYTES=y
-# CONFIG_CMA_SIZE_SEL_MIN is not set
-# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
-CONFIG_CPU_IDLE_GOV_MENU=y
-CONFIG_DEBUG_MEMORY_INIT=y
-CONFIG_DMA_CMA=y
-# CONFIG_HZ_PERIODIC is not set
-# CONFIG_LCD_CLASS_DEVICE is not set
-CONFIG_MFD_ACT8945A=y
-CONFIG_MFD_ATMEL_FLEXCOM=y
-CONFIG_MMC_SDHCI=y
-CONFIG_MMC_SDHCI_IO_ACCESSORS=y
-CONFIG_MMC_SDHCI_OF_AT91=y
-CONFIG_MMC_SDHCI_PLTFM=y
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_SPI_NOR=y
-CONFIG_NO_HZ_COMMON=y
-CONFIG_NO_HZ_IDLE=y
-CONFIG_POWER_RESET_AT91_SAMA5D2_SHDWC=y
-CONFIG_REGULATOR_ACT8865=y
-CONFIG_REGULATOR_ACT8945A=y
-CONFIG_RFKILL_REGULATOR=y
-CONFIG_SAMA5D4_WATCHDOG=y
-CONFIG_SND_ATMEL_SOC_CLASSD=y
 CONFIG_SOC_SAMA5D3=y
-CONFIG_SOC_SAM_V7=y
-CONFIG_SPI_ATMEL_QUADSPI=y
-CONFIG_TOUCHSCREEN_ATMEL_MXT=y
-# CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
-# CONFIG_USB_ATMEL_USBA is not set
+# CONFIG_SOC_SAMA5D4 is not set
diff --git a/target/linux/at91/sama5d4/config-default b/target/linux/at91/sama5d4/config-default
deleted file mode 100644
index baa2d5f..0000000
--- a/target/linux/at91/sama5d4/config-default
+++ /dev/null
@@ -1,39 +0,0 @@
-CONFIG_ARCH_MULTI_V6_V7=y
-CONFIG_ARCH_MULTI_V7=y
-CONFIG_AT91_SAMA5D2_ADC=y
-CONFIG_AT_XDMAC=y
-CONFIG_BATTERY_ACT8945A=y
-CONFIG_CMA_ALIGNMENT=8
-CONFIG_CMA_DEBUGFS=y
-CONFIG_CMA_SIZE_MBYTES=16
-# CONFIG_CMA_SIZE_SEL_MAX is not set
-CONFIG_CMA_SIZE_SEL_MBYTES=y
-# CONFIG_CMA_SIZE_SEL_MIN is not set
-# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
-CONFIG_CPU_IDLE_GOV_MENU=y
-CONFIG_DEBUG_MEMORY_INIT=y
-CONFIG_DMA_CMA=y
-# CONFIG_HZ_PERIODIC is not set
-# CONFIG_LCD_CLASS_DEVICE is not set
-CONFIG_MFD_ACT8945A=y
-CONFIG_MFD_ATMEL_FLEXCOM=y
-CONFIG_MMC_SDHCI=y
-CONFIG_MMC_SDHCI_IO_ACCESSORS=y
-CONFIG_MMC_SDHCI_OF_AT91=y
-CONFIG_MMC_SDHCI_PLTFM=y
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_SPI_NOR=y
-CONFIG_NO_HZ_COMMON=y
-CONFIG_NO_HZ_IDLE=y
-CONFIG_POWER_RESET_AT91_SAMA5D2_SHDWC=y
-CONFIG_REGULATOR_ACT8865=y
-CONFIG_REGULATOR_ACT8945A=y
-CONFIG_RFKILL_REGULATOR=y
-CONFIG_SAMA5D4_WATCHDOG=y
-CONFIG_SND_ATMEL_SOC_CLASSD=y
-CONFIG_SOC_SAMA5D4=y
-CONFIG_SOC_SAM_V7=y
-CONFIG_SPI_ATMEL_QUADSPI=y
-CONFIG_TOUCHSCREEN_ATMEL_MXT=y
-# CONFIG_TOUCHSCREEN_ATMEL_MXT_T37 is not set
-# CONFIG_USB_ATMEL_USBA is not set
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
