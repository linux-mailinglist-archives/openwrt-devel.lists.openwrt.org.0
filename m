Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439F41A7BC
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LL9FYjGmugAV8WAr9OOsbGC7wv9BPJuzrq6vYKWXVWU=; b=m0myxK2xDz+Kfr
	Ty0R8tNu6GxQbhYzlmp1nITO3DCBn4YkjSkG29jjqdxzLjLB69RzltoT2GeqlcWpBjc1/aiGEl/Qn
	2fl7nhj5/jcTQGWBZQZrk5rPH3aik2CM1MKKlA9XuZUkRGzOPyohtBN9CaL+P2YNyYNhxwBpa2tfV
	+ys9j1vrlBJLodNu57AkKBEgJ2KjER5UsQERO/GDiZk1YKVca+mEvybXPFRT/pHPf9dT8xO2YAkau
	vI+lIXHPfo6GcG2Fv5HK3w3nFb7KUi2cL46r1tLuJWfV6YA3GrFgd5f9tvOkRASI8x7KmuwymdWIG
	ApfGf4Rg1dARem6YbawA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQXh-0001QO-30; Sat, 11 May 2019 11:51:53 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQXL-00011s-KB
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:51:40 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 611974E7C9;
 Sat, 11 May 2019 13:51:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id Xvdnop5iYywa; Sat, 11 May 2019 13:51:14 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:51:08 +0200
Message-Id: <20190511115108.12139-3-hauke@hauke-m.de>
In-Reply-To: <20190511115108.12139-1-hauke@hauke-m.de>
References: <20190511115108.12139-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045132_392214_E8F74949 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] orion: Update kernel to version 4.14
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, kaloz@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support for kernel 4.14 to the target and directly make it the
default kernel version to use.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/orion/Makefile                   |  2 +-
 .../linux/orion/{config-4.9 => config-4.14}   | 28 +++++++++++++------
 target/linux/orion/harddisk/config-default    | 10 +++++--
 .../000-arm_openwrt_machtypes.patch           | 18 ++++++++++++
 .../100-wrt350nv2_openwrt_partition_map.patch |  0
 .../101-wnr854t_partition_map.patch           |  0
 .../200-dt2_board_support.patch               | 13 +++------
 .../210-wn802t_support.patch                  | 22 ++++++---------
 .../000-arm_openwrt_machtypes.patch           |  8 ------
 9 files changed, 59 insertions(+), 42 deletions(-)
 rename target/linux/orion/{config-4.9 => config-4.14} (92%)
 create mode 100644 target/linux/orion/patches-4.14/000-arm_openwrt_machtypes.patch
 rename target/linux/orion/{patches-4.9 => patches-4.14}/100-wrt350nv2_openwrt_partition_map.patch (100%)
 rename target/linux/orion/{patches-4.9 => patches-4.14}/101-wnr854t_partition_map.patch (100%)
 rename target/linux/orion/{patches-4.9 => patches-4.14}/200-dt2_board_support.patch (98%)
 rename target/linux/orion/{patches-4.9 => patches-4.14}/210-wn802t_support.patch (72%)
 delete mode 100644 target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch

diff --git a/target/linux/orion/Makefile b/target/linux/orion/Makefile
index 994c37ea6a..170f0ddb40 100644
--- a/target/linux/orion/Makefile
+++ b/target/linux/orion/Makefile
@@ -13,7 +13,7 @@ FEATURES:=broken rtc
 SUBTARGETS:=generic harddisk
 MAINTAINER:=Imre Kaloz <kaloz@openwrt.org>
 
-KERNEL_PATCHVER:=4.9
+KERNEL_PATCHVER:=4.14
 
 include $(INCLUDE_DIR)/target.mk
 
diff --git a/target/linux/orion/config-4.9 b/target/linux/orion/config-4.14
similarity index 92%
rename from target/linux/orion/config-4.9
rename to target/linux/orion/config-4.14
index b596274f17..63a6700642 100644
--- a/target/linux/orion/config-4.9
+++ b/target/linux/orion/config-4.14
@@ -1,8 +1,12 @@
 CONFIG_ALIGNMENT_TRAP=y
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
@@ -13,6 +17,8 @@ CONFIG_ARCH_MULTI_CPU_AUTO=y
 CONFIG_ARCH_MULTI_V4_V5=y
 CONFIG_ARCH_MULTI_V5=y
 CONFIG_ARCH_NR_GPIO=0
+CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
+# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
 CONFIG_ARCH_ORION5X=y
 # CONFIG_ARCH_ORION5X_DT is not set
 # CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
@@ -35,12 +41,8 @@ CONFIG_ATAGS=y
 CONFIG_AUTO_ZRELADDR=y
 CONFIG_BLK_MQ_PCI=y
 # CONFIG_CACHE_L2X0 is not set
-CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
-# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLKSRC_MMIO=y
-CONFIG_CLKSRC_OF=y
-CONFIG_CLKSRC_PROBE=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMDLINE="rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200 earlyprintk"
 CONFIG_CMDLINE_FORCE=y
@@ -55,6 +57,7 @@ CONFIG_CPU_FEROCEON=y
 CONFIG_CPU_FEROCEON_OLD_ID=y
 # CONFIG_CPU_ICACHE_DISABLE is not set
 CONFIG_CPU_PABRT_LEGACY=y
+CONFIG_CPU_THUMB_CAPABLE=y
 CONFIG_CPU_TLB_FEROCEON=y
 CONFIG_CPU_USE_DOMAINS=y
 CONFIG_CRYPTO_DES=y
@@ -92,6 +95,7 @@ CONFIG_GENERIC_ALLOCATOR=y
 CONFIG_GENERIC_ATOMIC64=y
 CONFIG_GENERIC_BUG=y
 CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CPU_AUTOPROBE=y
 CONFIG_GENERIC_EARLY_IOREMAP=y
 CONFIG_GENERIC_IDLE_POLL_SETUP=y
 CONFIG_GENERIC_IO=y
@@ -106,6 +110,7 @@ CONFIG_GENERIC_STRNLEN_USER=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_MVEBU=y
 CONFIG_GPIO_SYSFS=y
+# CONFIG_GRO_CELLS is not set
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDIRQS_SW_RESEND=y
 CONFIG_HAS_DMA=y
@@ -120,7 +125,6 @@ CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 # CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_CBPF_JIT=y
 CONFIG_HAVE_CC_STACKPROTECTOR=y
 CONFIG_HAVE_CLK=y
 CONFIG_HAVE_CLK_PREPARE=y
@@ -130,6 +134,8 @@ CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DMA_API_DEBUG=y
 CONFIG_HAVE_DMA_CONTIGUOUS=y
 CONFIG_HAVE_DYNAMIC_FTRACE=y
+CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
+CONFIG_HAVE_EBPF_JIT=y
 CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
 CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
 CONFIG_HAVE_FUNCTION_TRACER=y
@@ -155,6 +161,7 @@ CONFIG_I2C=y
 CONFIG_I2C_BOARDINFO=y
 CONFIG_I2C_CHARDEV=y
 CONFIG_I2C_MV64XXX=y
+# CONFIG_INITRAMFS_FORCE is not set
 CONFIG_INITRAMFS_SOURCE=""
 CONFIG_IOMMU_HELPER=y
 CONFIG_IRQCHIP=y
@@ -168,7 +175,6 @@ CONFIG_LIBFDT=y
 # CONFIG_MACH_DNS323 is not set
 # CONFIG_MACH_DT2 is not set
 # CONFIG_MACH_KUROBOX_PRO is not set
-# CONFIG_MACH_LINKSTATION_LSCHL is not set
 # CONFIG_MACH_LINKSTATION_LS_HGL is not set
 # CONFIG_MACH_LINKSTATION_MINI is not set
 # CONFIG_MACH_LINKSTATION_PRO is not set
@@ -187,7 +193,8 @@ CONFIG_MACH_TERASTATION_PRO2=y
 CONFIG_MACH_WN802T=y
 CONFIG_MACH_WNR854T=y
 CONFIG_MACH_WRT350N_V2=y
-CONFIG_MDIO_BOARDINFO=y
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
 CONFIG_MIGHT_HAVE_PCI=y
 CONFIG_MIGRATION=y
 CONFIG_MMC=y
@@ -199,7 +206,6 @@ CONFIG_MULTI_IRQ_HANDLER=y
 CONFIG_MV643XX_ETH=y
 CONFIG_MVEBU_MBUS=y
 CONFIG_MVMDIO=y
-# CONFIG_MVNETA is not set
 CONFIG_MV_XOR=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEED_KUSER_HELPERS=y
@@ -232,9 +238,11 @@ CONFIG_PLAT_ORION=y
 CONFIG_PLAT_ORION_LEGACY=y
 CONFIG_RATIONAL=y
 # CONFIG_RCU_EXPERT is not set
+# CONFIG_RCU_NEED_SEGCBLIST is not set
 # CONFIG_RCU_STALL_COMMON is not set
 CONFIG_REGMAP=y
 CONFIG_REGMAP_I2C=y
+CONFIG_REGMAP_MMIO=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_I2C_AND_SPI=y
 CONFIG_RTC_MC146818_LIB=y
@@ -245,11 +253,15 @@ CONFIG_SERIAL_8250_FSL=y
 CONFIG_SPARSE_IRQ=y
 CONFIG_SPLIT_PTLOCK_CPUS=999999
 CONFIG_SRAM=y
+CONFIG_SRAM_EXEC=y
 CONFIG_SRCU=y
 CONFIG_SWIOTLB=y
 CONFIG_SWPHY=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TIMER_OF=y
+CONFIG_TIMER_PROBE=y
+CONFIG_TINY_SRCU=y
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 CONFIG_USB_SUPPORT=y
 CONFIG_USE_OF=y
diff --git a/target/linux/orion/harddisk/config-default b/target/linux/orion/harddisk/config-default
index bf6cee1715..c25cb6265d 100644
--- a/target/linux/orion/harddisk/config-default
+++ b/target/linux/orion/harddisk/config-default
@@ -1,15 +1,20 @@
 CONFIG_ATA=y
 CONFIG_BLK_DEV_DM=y
+CONFIG_BLK_DEV_DM_BUILTIN=y
 CONFIG_BLK_DEV_MD=y
 CONFIG_BLK_DEV_SD=y
+CONFIG_BLK_SCSI_REQUEST=y
 CONFIG_CRC16=y
+CONFIG_CRYPTO_CRC32C=y
+CONFIG_DAX=y
 # CONFIG_DM_CRYPT is not set
 # CONFIG_DM_MIRROR is not set
 # CONFIG_DM_SNAPSHOT is not set
 CONFIG_EXT4_FS=y
 CONFIG_FS_MBCACHE=y
+CONFIG_GENERIC_PHY=y
+CONFIG_GLOB=y
 CONFIG_HWMON=y
-CONFIG_I2C_BOARDINFO=y
 CONFIG_JBD2=y
 CONFIG_MACH_DT2=y
 CONFIG_MACH_NET2BIG=y
@@ -25,14 +30,13 @@ CONFIG_MD_RAID1=y
 # CONFIG_MD_RAID10 is not set
 # CONFIG_MD_RAID456 is not set
 CONFIG_NLS=y
-CONFIG_RTC_CLASS=y
 CONFIG_SATA_MV=y
 CONFIG_SCSI=y
 CONFIG_SCSI_DMA=y
+CONFIG_SG_POOL=y
 CONFIG_USB=y
 CONFIG_USB_COMMON=y
 CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_HCD_ORION=y
 CONFIG_USB_EHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
-# CONFIG_USB_UHCI_HCD is not set
diff --git a/target/linux/orion/patches-4.14/000-arm_openwrt_machtypes.patch b/target/linux/orion/patches-4.14/000-arm_openwrt_machtypes.patch
new file mode 100644
index 0000000000..5d52bd0afa
--- /dev/null
+++ b/target/linux/orion/patches-4.14/000-arm_openwrt_machtypes.patch
@@ -0,0 +1,18 @@
+--- a/arch/arm/tools/mach-types
++++ b/arch/arm/tools/mach-types
+@@ -268,6 +268,7 @@ yl9200			MACH_YL9200		YL9200			1507
+ rd88f5182		MACH_RD88F5182		RD88F5182		1508
+ kurobox_pro		MACH_KUROBOX_PRO	KUROBOX_PRO		1509
+ mx31_3ds		MACH_MX31_3DS		MX31_3DS		1511
++dt2			MACH_DT2		DT2			1514
+ qong			MACH_QONG		QONG			1524
+ omap2evm		MACH_OMAP2EVM		OMAP2EVM		1534
+ omap3evm		MACH_OMAP3EVM		OMAP3EVM		1535
+@@ -530,6 +531,7 @@ mx53_loco		MACH_MX53_LOCO		MX53_LOCO		32
+ wario			MACH_WARIO		WARIO			3288
+ cm_t3730		MACH_CM_T3730		CM_T3730		3290
+ hrefv60			MACH_HREFV60		HREFV60			3293
++wn802t			MACH_WN802T		WN802T			3306
+ armlex4210		MACH_ARMLEX4210		ARMLEX4210		3361
+ snowball		MACH_SNOWBALL		SNOWBALL		3363
+ xilinx_ep107		MACH_XILINX_EP107	XILINX_EP107		3378
diff --git a/target/linux/orion/patches-4.9/100-wrt350nv2_openwrt_partition_map.patch b/target/linux/orion/patches-4.14/100-wrt350nv2_openwrt_partition_map.patch
similarity index 100%
rename from target/linux/orion/patches-4.9/100-wrt350nv2_openwrt_partition_map.patch
rename to target/linux/orion/patches-4.14/100-wrt350nv2_openwrt_partition_map.patch
diff --git a/target/linux/orion/patches-4.9/101-wnr854t_partition_map.patch b/target/linux/orion/patches-4.14/101-wnr854t_partition_map.patch
similarity index 100%
rename from target/linux/orion/patches-4.9/101-wnr854t_partition_map.patch
rename to target/linux/orion/patches-4.14/101-wnr854t_partition_map.patch
diff --git a/target/linux/orion/patches-4.9/200-dt2_board_support.patch b/target/linux/orion/patches-4.14/200-dt2_board_support.patch
similarity index 98%
rename from target/linux/orion/patches-4.9/200-dt2_board_support.patch
rename to target/linux/orion/patches-4.14/200-dt2_board_support.patch
index 5528069cd5..fcadabcd17 100644
--- a/target/linux/orion/patches-4.9/200-dt2_board_support.patch
+++ b/target/linux/orion/patches-4.14/200-dt2_board_support.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/mach-orion5x/Kconfig
 +++ b/arch/arm/mach-orion5x/Kconfig
-@@ -48,6 +48,13 @@ config MACH_RD88F5182_DT
+@@ -49,6 +49,13 @@ config MACH_RD88F5182_DT
  	  Say 'Y' here if you want your kernel to support the Marvell
  	  Orion-NAS (88F5182) RD2, Flattened Device Tree.
  
@@ -16,7 +16,7 @@
  	select I2C_BOARDINFO if I2C
 --- a/arch/arm/mach-orion5x/Makefile
 +++ b/arch/arm/mach-orion5x/Makefile
-@@ -15,6 +15,7 @@ obj-$(CONFIG_MACH_TS78XX)	+= ts78xx-setu
+@@ -16,6 +16,7 @@ obj-$(CONFIG_MACH_TS78XX)	+= ts78xx-setu
  obj-$(CONFIG_MACH_MV2120)	+= mv2120-setup.o
  obj-$(CONFIG_MACH_NET2BIG)	+= net2big-setup.o
  obj-$(CONFIG_MACH_WNR854T)	+= wnr854t-setup.o
@@ -111,7 +111,7 @@
 +#endif
 --- /dev/null
 +++ b/arch/arm/mach-orion5x/dt2-setup.c
-@@ -0,0 +1,448 @@
+@@ -0,0 +1,443 @@
 +/*
 + * arch/arm/mach-orion5x/dt2-setup.c
 + *
@@ -330,11 +330,6 @@
 +	.port_names[5] = "lan4",
 +};
 +
-+static struct dsa_platform_data dt2_switch_plat_data = {
-+	.nr_chips	= 1,
-+	.chip		= &dt2_switch_chip_data,
-+};
-+
 +/*****************************************************************************
 + * RTC ISL1208 on I2C bus
 + ****************************************************************************/
@@ -436,7 +431,7 @@
 +
 +	orion5x_eth_init(&dt2_eth_data);
 +	memcpy(dt2_eth_data.mac_addr, dt2_eeprom.gw.mac_addr[0], 6);
-+	orion5x_eth_switch_init(&dt2_switch_plat_data);
++	orion5x_eth_switch_init(&dt2_switch_chip_data);
 +
 +	i2c_register_board_info(0, &dt2_i2c_rtc, 1);
 +
diff --git a/target/linux/orion/patches-4.9/210-wn802t_support.patch b/target/linux/orion/patches-4.14/210-wn802t_support.patch
similarity index 72%
rename from target/linux/orion/patches-4.9/210-wn802t_support.patch
rename to target/linux/orion/patches-4.14/210-wn802t_support.patch
index fc4a226e97..2a3393f283 100644
--- a/target/linux/orion/patches-4.9/210-wn802t_support.patch
+++ b/target/linux/orion/patches-4.14/210-wn802t_support.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/mach-orion5x/Kconfig
 +++ b/arch/arm/mach-orion5x/Kconfig
-@@ -156,10 +156,13 @@ config MACH_MSS2_DT
+@@ -150,10 +150,13 @@ config MACH_MSS2_DT
  	  Maxtor Shared Storage II platform.
  
  config MACH_WNR854T
@@ -18,8 +18,8 @@
  	bool "Marvell Orion-VoIP GE Reference Design"
 --- a/arch/arm/mach-orion5x/wnr854t-setup.c
 +++ b/arch/arm/mach-orion5x/wnr854t-setup.c
-@@ -115,6 +115,15 @@ static struct dsa_platform_data __initda
- 	.chip		= &wnr854t_switch_chip_data,
+@@ -110,6 +110,11 @@ static struct dsa_chip_data wnr854t_swit
+ 	.port_names[7] = "lan2",
  };
  
 +static struct dsa_chip_data wn802t_switch_chip_data = {
@@ -27,26 +27,22 @@
 +	.port_names[3] = "cpu",
 +};
 +
-+static struct dsa_platform_data wn802t_switch_plat_data = {
-+	.nr_chips	= 1,
-+	.chip		= &wn802t_switch_chip_data,
-+};
  static void __init wnr854t_init(void)
  {
  	/*
-@@ -128,7 +137,10 @@ static void __init wnr854t_init(void)
+@@ -123,7 +128,10 @@ static void __init wnr854t_init(void)
  	 * Configure peripherals.
  	 */
  	orion5x_eth_init(&wnr854t_eth_data);
--	orion5x_eth_switch_init(&wnr854t_switch_plat_data);
+-	orion5x_eth_switch_init(&wnr854t_switch_chip_data);
 +	if (machine_is_wn802t())
-+		orion5x_eth_switch_init(&wn802t_switch_plat_data);
++		orion5x_eth_switch_init(&wn802t_switch_chip_data);
 +	else
-+		orion5x_eth_switch_init(&wnr854t_switch_plat_data);
++		orion5x_eth_switch_init(&wnr854t_switch_chip_data);
  	orion5x_uart0_init();
  
  	mvebu_mbus_add_window_by_id(ORION_MBUS_DEVBUS_BOOT_TARGET,
-@@ -168,7 +180,7 @@ static struct hw_pci wnr854t_pci __initd
+@@ -163,7 +171,7 @@ static struct hw_pci wnr854t_pci __initd
  
  static int __init wnr854t_pci_init(void)
  {
@@ -55,7 +51,7 @@
  		pci_common_init(&wnr854t_pci);
  
  	return 0;
-@@ -182,6 +194,18 @@ MACHINE_START(WNR854T, "Netgear WNR854T"
+@@ -177,6 +185,18 @@ MACHINE_START(WNR854T, "Netgear WNR854T"
  	.init_machine	= wnr854t_init,
  	.map_io		= orion5x_map_io,
  	.init_early	= orion5x_init_early,
diff --git a/target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch b/target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch
deleted file mode 100644
index 764f992288..0000000000
--- a/target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch
+++ /dev/null
@@ -1,8 +0,0 @@
---- a/arch/arm/tools/mach-types
-+++ b/arch/arm/tools/mach-types
-@@ -1006,3 +1006,5 @@ eco5_bx2		MACH_ECO5_BX2		ECO5_BX2		4572
- eukrea_cpuimx28sd	MACH_EUKREA_CPUIMX28SD	EUKREA_CPUIMX28SD	4573
- domotab			MACH_DOMOTAB		DOMOTAB			4574
- pfla03			MACH_PFLA03		PFLA03			4575
-+dt2			MACH_DT2		DT2			1514
-+wn802t			MACH_WN802T		WN802T			3306
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
