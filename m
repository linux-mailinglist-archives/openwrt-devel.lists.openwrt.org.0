Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CED21A7B8
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCoveysf4Htyu8XU+2juD+yR28tTSw6bfkbNDKZvKag=; b=XsKhsIlmm5ji1o
	acs24B7uSYdi+hMgirMjpqmT+C+2k/75dCVnU4QHNVd4LVvDPn8U49avHLzlu/YV9Usd0NtIs4MVX
	+w0Ff1eZpWfQX5OZ6rMNPcQWcDSbuoYCsPE78YcJKYJP8FeBpyBrn3rHzqtvnozePzoq/7oiTh37j
	dzJX1WYXl+xhKM1KZ8NgnKmA4/nwsOc2wl+l8gNr0pdGrjeV/bN54ltRnlbh7CcxDyC0LLhoS6RbN
	sUV1l4eKVTV1gWdUZAbeapQE4J2QRYVa+F/ulX0Di9yuDjX6FILZkSJVBUN9e/B/hwN3YtW6yllqq
	axZpWCYsnuIS3EV9t/7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQWQ-0000Y2-Jt; Sat, 11 May 2019 11:50:34 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQVx-0007hA-2q
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:50:18 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id C26A2A1135;
 Sat, 11 May 2019 13:50:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id M0VaYQwIqlF3; Sat, 11 May 2019 13:49:51 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:49:18 +0200
Message-Id: <20190511114918.12033-3-hauke@hauke-m.de>
In-Reply-To: <20190511114918.12033-1-hauke@hauke-m.de>
References: <20190511114918.12033-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045005_860508_7EAC4ED7 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] ixp4xx: Update kernel to version 4.14
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, thess@kitschensync.net,
 kaloz@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support for kernel 4.14 to the target and directly make it the
default kernel version to use.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/ixp4xx/Makefile                  |  2 +-
 .../linux/ixp4xx/{config-4.9 => config-4.14}  | 18 +++++++++---
 target/linux/ixp4xx/harddisk/config-default   |  3 +-
 ...ohorent_dma_mask-for-ethernet-platfo.patch | 18 ++++++------
 ...se-parent-device-for-dma-allocations.patch |  6 ++--
 .../020-gateworks_i2c_pld.patch               |  6 ++--
 .../030-gpio_line_config.patch                |  2 +-
 .../040-arm_mach_types.patch                  |  9 +++---
 .../090-increase_entropy_pools.patch          |  4 +--
 ...00-wg302v2_gateway7001_mac_plat_info.patch |  6 ++--
 .../105-wg302v1_support.patch                 |  6 ++--
 .../110-pronghorn_series_support.patch        |  6 ++--
 .../111-pronghorn_swap_uarts.patch            |  0
 .../115-sidewinder_support.patch              |  4 +--
 .../116-sidewinder_fis_location.patch         |  8 +++---
 .../120-compex_support.patch                  |  4 +--
 .../130-wrt300nv2_support.patch               |  4 +--
 .../131-wrt300nv2_mac_plat_info.patch         |  0
 .../132-wrt300nv2_mac_fix.patch               |  0
 .../150-lanready_ap1000_support.patch         |  4 +--
 .../151-lanready_ap1000_mac_plat_info.patch   |  0
 .../160-delayed_uart_io.patch                 | 28 +++++++++----------
 .../162-wg302v1_mem_fixup.patch               |  0
 .../170-ixdpg425_mac_plat_info.patch          |  4 +--
 .../175-avila_hss_audio_support.patch         |  6 ++--
 .../180-tw5334_support.patch                  |  4 +--
 .../185-mi424wr_support.patch                 |  6 ++--
 .../190-cambria_support.patch                 |  6 ++--
 ...01-npe_driver_print_license_location.patch |  0
 ...05-npe_driver_separate_phy_functions.patch | 12 ++++----
 ...-npe_driver_add_update_link_function.patch |  2 +-
 .../207-npe_driver_multiphy_support.patch     | 18 ++----------
 .../295-latch_led_driver.patch                |  8 +++---
 .../300-avila_support.patch                   | 12 ++++----
 .../304-ixp4xx_eth_jumboframe.patch           |  6 ++--
 .../310-gtwx5717_spi_bus.patch                |  0
 .../311-gtwx5717_mac_plat_info.patch          |  0
 .../312-ixp4xx_pata_optimization.patch        |  8 +++---
 .../500-usr8200_support.patch                 |  4 +--
 .../520-tw2662_support.patch                  |  4 +--
 .../530-ap42x_support.patch                   |  4 +--
 .../600-skb_avoid_dmabounce.patch             |  4 +--
 .../900-ixp4xx-crypto-include-module.h.patch  |  0
 .../910-ixp4xx-nr_irq_lines.patch             |  0
 44 files changed, 122 insertions(+), 124 deletions(-)
 rename target/linux/ixp4xx/{config-4.9 => config-4.14} (93%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch (88%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch (94%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/020-gateworks_i2c_pld.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/030-gpio_line_config.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/040-arm_mach_types.patch (66%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/090-increase_entropy_pools.patch (88%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/100-wg302v2_gateway7001_mac_plat_info.patch (92%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/105-wg302v1_support.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/110-pronghorn_series_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/111-pronghorn_swap_uarts.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/115-sidewinder_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/116-sidewinder_fis_location.patch (83%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/120-compex_support.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/130-wrt300nv2_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/131-wrt300nv2_mac_plat_info.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/132-wrt300nv2_mac_fix.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/150-lanready_ap1000_support.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/151-lanready_ap1000_mac_plat_info.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/160-delayed_uart_io.patch (82%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/162-wg302v1_mem_fixup.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/170-ixdpg425_mac_plat_info.patch (94%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/175-avila_hss_audio_support.patch (99%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/180-tw5334_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/185-mi424wr_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/190-cambria_support.patch (99%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/201-npe_driver_print_license_location.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/205-npe_driver_separate_phy_functions.patch (89%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/206-npe_driver_add_update_link_function.patch (97%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/207-npe_driver_multiphy_support.patch (88%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/295-latch_led_driver.patch (95%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/300-avila_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/304-ixp4xx_eth_jumboframe.patch (90%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/310-gtwx5717_spi_bus.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/311-gtwx5717_mac_plat_info.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/312-ixp4xx_pata_optimization.patch (94%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/500-usr8200_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/520-tw2662_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/530-ap42x_support.patch (98%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/600-skb_avoid_dmabounce.patch (77%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/900-ixp4xx-crypto-include-module.h.patch (100%)
 rename target/linux/ixp4xx/{patches-4.9 => patches-4.14}/910-ixp4xx-nr_irq_lines.patch (100%)

diff --git a/target/linux/ixp4xx/Makefile b/target/linux/ixp4xx/Makefile
index e1964331a0..79f9a02dc6 100644
--- a/target/linux/ixp4xx/Makefile
+++ b/target/linux/ixp4xx/Makefile
@@ -14,7 +14,7 @@ MAINTAINER:=Ted Hess <thess@kitschensync.net>, \
 	    Imre Kaloz <kaloz@openwrt.org>
 SUBTARGETS:=generic harddisk
 
-KERNEL_PATCHVER:=4.9
+KERNEL_PATCHVER:=4.14
 
 include $(INCLUDE_DIR)/target.mk
 
diff --git a/target/linux/ixp4xx/config-4.9 b/target/linux/ixp4xx/config-4.14
similarity index 93%
rename from target/linux/ixp4xx/config-4.9
rename to target/linux/ixp4xx/config-4.14
index c3a88b73e0..95711d8dd3 100644
--- a/target/linux/ixp4xx/config-4.9
+++ b/target/linux/ixp4xx/config-4.14
@@ -1,10 +1,14 @@
 CONFIG_ALIGNMENT_TRAP=y
 # CONFIG_ARCH_ADI_COYOTE is not set
 CONFIG_ARCH_CLOCKSOURCE_DATA=y
+CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
 CONFIG_ARCH_HAS_DMA_SET_COHERENT_MASK=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
+CONFIG_ARCH_HAS_SET_MEMORY=y
 # CONFIG_ARCH_HAS_SG_CHAIN is not set
+CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
+CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
 CONFIG_ARCH_HAVE_CUSTOM_GPIO_H=y
 CONFIG_ARCH_HIBERNATION_POSSIBLE=y
 CONFIG_ARCH_IXCDP1100=y
@@ -13,6 +17,8 @@ CONFIG_ARCH_IXDP4XX=y
 CONFIG_ARCH_IXP4XX=y
 CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
 CONFIG_ARCH_NR_GPIO=0
+CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
+# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
 # CONFIG_ARCH_PRPMC1100 is not set
 # CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
 # CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
@@ -33,8 +39,6 @@ CONFIG_ATAGS=y
 CONFIG_BLK_MQ_PCI=y
 CONFIG_BOUNCE=y
 # CONFIG_CACHE_L2X0 is not set
-CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
-# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CLKSRC_MMIO=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMDLINE="root=/dev/mtdblock2 rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200"
@@ -50,6 +54,7 @@ CONFIG_CPU_ENDIAN_BE32=y
 CONFIG_CPU_IXP43X=y
 CONFIG_CPU_IXP46X=y
 CONFIG_CPU_PABRT_LEGACY=y
+CONFIG_CPU_THUMB_CAPABLE=y
 CONFIG_CPU_TLB_V4WBI=y
 CONFIG_CPU_USE_DOMAINS=y
 CONFIG_CPU_XSCALE=y
@@ -75,6 +80,7 @@ CONFIG_GENERIC_ALLOCATOR=y
 CONFIG_GENERIC_ATOMIC64=y
 CONFIG_GENERIC_BUG=y
 CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CPU_AUTOPROBE=y
 CONFIG_GENERIC_EARLY_IOREMAP=y
 CONFIG_GENERIC_IDLE_POLL_SETUP=y
 CONFIG_GENERIC_IO=y
@@ -87,6 +93,7 @@ CONFIG_GENERIC_STRNCPY_FROM_USER=y
 CONFIG_GENERIC_STRNLEN_USER=y
 CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
+# CONFIG_GRO_CELLS is not set
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDIRQS_SW_RESEND=y
 CONFIG_HAS_DMA=y
@@ -99,7 +106,6 @@ CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 # CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_CBPF_JIT=y
 CONFIG_HAVE_CC_STACKPROTECTOR=y
 CONFIG_HAVE_CONTEXT_TRACKING=y
 CONFIG_HAVE_C_RECORDMCOUNT=y
@@ -139,6 +145,7 @@ CONFIG_I2C_GPIO=y
 # CONFIG_I2C_IOP3XX is not set
 CONFIG_INITRAMFS_SOURCE=""
 CONFIG_IOMMU_HELPER=y
+CONFIG_IRQ_DOMAIN=y
 CONFIG_IRQ_FORCED_THREADING=y
 CONFIG_IRQ_WORK=y
 # CONFIG_IWMMXT is not set
@@ -182,7 +189,8 @@ CONFIG_MACH_USR8200=y
 CONFIG_MACH_WG302V1=y
 CONFIG_MACH_WG302V2=y
 CONFIG_MACH_WRT300NV2=y
-CONFIG_MDIO_BOARDINFO=y
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
 CONFIG_MIGHT_HAVE_PCI=y
 CONFIG_MIGRATION=y
 CONFIG_MODULES_USE_ELF_REL=y
@@ -209,6 +217,7 @@ CONFIG_PCI=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
 CONFIG_PHYLIB=y
+# CONFIG_RCU_NEED_SEGCBLIST is not set
 # CONFIG_RCU_STALL_COMMON is not set
 CONFIG_REGMAP=y
 CONFIG_REGMAP_I2C=y
@@ -233,6 +242,7 @@ CONFIG_SRCU=y
 CONFIG_SWIOTLB=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TINY_SRCU=y
 CONFIG_UNCOMPRESS_INCLUDE="mach/uncompress.h"
 CONFIG_USB_EHCI_BIG_ENDIAN_DESC=y
 CONFIG_USB_EHCI_BIG_ENDIAN_MMIO=y
diff --git a/target/linux/ixp4xx/harddisk/config-default b/target/linux/ixp4xx/harddisk/config-default
index 6cf7d82b12..504bad1317 100644
--- a/target/linux/ixp4xx/harddisk/config-default
+++ b/target/linux/ixp4xx/harddisk/config-default
@@ -1,5 +1,6 @@
 CONFIG_ATA=y
 CONFIG_BLK_DEV_SD=y
+CONFIG_BLK_SCSI_REQUEST=y
 CONFIG_CMDLINE="root=/dev/sda1 noinitrd console=ttyS0,115200"
 CONFIG_CRC16=y
 CONFIG_CRYPTO_CRC32C=y
@@ -20,8 +21,6 @@ CONFIG_USB=y
 CONFIG_USB_COMMON=y
 CONFIG_USB_EHCI_HCD=y
 # CONFIG_USB_EHCI_HCD_PLATFORM is not set
-CONFIG_USB_EHCI_PCI=y
 CONFIG_USB_OHCI_HCD=y
 # CONFIG_USB_OHCI_HCD_PLATFORM is not set
 CONFIG_USB_STORAGE=y
-# CONFIG_USB_UHCI_HCD is not set
diff --git a/target/linux/ixp4xx/patches-4.9/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch b/target/linux/ixp4xx/patches-4.14/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch
similarity index 88%
rename from target/linux/ixp4xx/patches-4.9/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch
rename to target/linux/ixp4xx/patches-4.14/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch
index 3ca3eb76a6..449afab7f6 100644
--- a/target/linux/ixp4xx/patches-4.9/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch
+++ b/target/linux/ixp4xx/patches-4.14/001-arm-ixp4xx-set-cohorent_dma_mask-for-ethernet-platfo.patch
@@ -20,7 +20,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
 
 --- a/arch/arm/mach-ixp4xx/fsg-setup.c
 +++ b/arch/arm/mach-ixp4xx/fsg-setup.c
-@@ -142,12 +142,14 @@ static struct platform_device fsg_eth[]
+@@ -143,12 +143,14 @@ static struct platform_device fsg_eth[]
  		.id			= IXP4XX_ETH_NPEB,
  		.dev = {
  			.platform_data	= fsg_plat_eth,
@@ -37,7 +37,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  };
 --- a/arch/arm/mach-ixp4xx/goramo_mlr.c
 +++ b/arch/arm/mach-ixp4xx/goramo_mlr.c
-@@ -295,10 +295,12 @@ static struct platform_device device_eth
+@@ -296,10 +296,12 @@ static struct platform_device device_eth
  		.name			= "ixp4xx_eth",
  		.id			= IXP4XX_ETH_NPEB,
  		.dev.platform_data	= eth_plat,
@@ -52,15 +52,15 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  
 --- a/arch/arm/mach-ixp4xx/ixdp425-setup.c
 +++ b/arch/arm/mach-ixp4xx/ixdp425-setup.c
-@@ -20,6 +20,7 @@
- #include <linux/mtd/nand.h>
+@@ -21,6 +21,7 @@
+ #include <linux/mtd/rawnand.h>
  #include <linux/mtd/partitions.h>
  #include <linux/delay.h>
 +#include <linux/dma-mapping.h>
  #include <linux/gpio.h>
  #include <asm/types.h>
  #include <asm/setup.h>
-@@ -196,10 +197,12 @@ static struct platform_device ixdp425_et
+@@ -197,10 +198,12 @@ static struct platform_device ixdp425_et
  		.name			= "ixp4xx_eth",
  		.id			= IXP4XX_ETH_NPEB,
  		.dev.platform_data	= ixdp425_plat_eth,
@@ -75,7 +75,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  
 --- a/arch/arm/mach-ixp4xx/nas100d-setup.c
 +++ b/arch/arm/mach-ixp4xx/nas100d-setup.c
-@@ -170,6 +170,7 @@ static struct platform_device nas100d_et
+@@ -171,6 +171,7 @@ static struct platform_device nas100d_et
  		.name			= "ixp4xx_eth",
  		.id			= IXP4XX_ETH_NPEB,
  		.dev.platform_data	= nas100d_plat_eth,
@@ -85,7 +85,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  
 --- a/arch/arm/mach-ixp4xx/nslu2-setup.c
 +++ b/arch/arm/mach-ixp4xx/nslu2-setup.c
-@@ -182,6 +182,7 @@ static struct platform_device nslu2_eth[
+@@ -183,6 +183,7 @@ static struct platform_device nslu2_eth[
  		.name			= "ixp4xx_eth",
  		.id			= IXP4XX_ETH_NPEB,
  		.dev.platform_data	= nslu2_plat_eth,
@@ -118,7 +118,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  
 --- a/arch/arm/mach-ixp4xx/vulcan-setup.c
 +++ b/arch/arm/mach-ixp4xx/vulcan-setup.c
-@@ -139,6 +139,7 @@ static struct platform_device vulcan_eth
+@@ -140,6 +140,7 @@ static struct platform_device vulcan_eth
  		.id			= IXP4XX_ETH_NPEB,
  		.dev = {
  			.platform_data	= &vulcan_plat_eth[0],
@@ -126,7 +126,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  		},
  	},
  	[1] = {
-@@ -146,6 +147,7 @@ static struct platform_device vulcan_eth
+@@ -147,6 +148,7 @@ static struct platform_device vulcan_eth
  		.id			= IXP4XX_ETH_NPEC,
  		.dev = {
  			.platform_data	= &vulcan_plat_eth[1],
diff --git a/target/linux/ixp4xx/patches-4.9/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch b/target/linux/ixp4xx/patches-4.14/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch
similarity index 94%
rename from target/linux/ixp4xx/patches-4.9/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch
rename to target/linux/ixp4xx/patches-4.14/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch
index b369b56f00..4cdf7dd6f1 100644
--- a/target/linux/ixp4xx/patches-4.9/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch
+++ b/target/linux/ixp4xx/patches-4.14/002-ixp4xx_eth-use-parent-device-for-dma-allocations.patch
@@ -63,7 +63,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  	if (dma_mapping_error(&dev->dev, phys)) {
  		dev_kfree_skb(skb);
  #ifndef __ARMEB__
-@@ -1107,7 +1108,7 @@ static int init_queues(struct port *port
+@@ -1102,7 +1103,7 @@ static int init_queues(struct port *port
  	int i;
  
  	if (!ports_open) {
@@ -72,7 +72,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  					   POOL_ALLOC_SIZE, 32, 0);
  		if (!dma_pool)
  			return -ENOMEM;
-@@ -1135,9 +1136,9 @@ static int init_queues(struct port *port
+@@ -1130,9 +1131,9 @@ static int init_queues(struct port *port
  		data = buff;
  #endif
  		desc->buf_len = MAX_MRU;
@@ -84,7 +84,7 @@ Signed-off-by: Jonas Gorski <jogo@openwrt.org>
  			free_buffer(buff);
  			return -EIO;
  		}
-@@ -1157,7 +1158,7 @@ static void destroy_queues(struct port *
+@@ -1152,7 +1153,7 @@ static void destroy_queues(struct port *
  			struct desc *desc = rx_desc_ptr(port, i);
  			buffer_t *buff = port->rx_buff_tab[i];
  			if (buff) {
diff --git a/target/linux/ixp4xx/patches-4.9/020-gateworks_i2c_pld.patch b/target/linux/ixp4xx/patches-4.14/020-gateworks_i2c_pld.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/020-gateworks_i2c_pld.patch
rename to target/linux/ixp4xx/patches-4.14/020-gateworks_i2c_pld.patch
index 185a09fff2..5bdc7f467a 100644
--- a/target/linux/ixp4xx/patches-4.9/020-gateworks_i2c_pld.patch
+++ b/target/linux/ixp4xx/patches-4.14/020-gateworks_i2c_pld.patch
@@ -1,6 +1,6 @@
 --- a/drivers/gpio/Kconfig
 +++ b/drivers/gpio/Kconfig
-@@ -656,6 +656,14 @@ config GPIO_WS16C48
+@@ -698,6 +698,14 @@ config GPIO_WS16C48
  	  parameter. The interrupt line numbers for the devices may be
  	  configured via the irq module parameter.
  
@@ -17,14 +17,14 @@
  menu "I2C GPIO expanders"
 --- a/drivers/gpio/Makefile
 +++ b/drivers/gpio/Makefile
-@@ -48,6 +48,7 @@ obj-$(CONFIG_GPIO_F7188X)	+= gpio-f7188x
+@@ -54,6 +54,7 @@ obj-$(CONFIG_GPIO_FTGPIO010)	+= gpio-ftg
  obj-$(CONFIG_GPIO_GE_FPGA)	+= gpio-ge.o
  obj-$(CONFIG_GPIO_GPIO_MM)	+= gpio-gpio-mm.o
  obj-$(CONFIG_GPIO_GRGPIO)	+= gpio-grgpio.o
 +obj-$(CONFIG_GPIO_GW_I2C_PLD)	+= gw_i2c_pld.o
  obj-$(CONFIG_HTC_EGPIO)		+= gpio-htc-egpio.o
  obj-$(CONFIG_GPIO_ICH)		+= gpio-ich.o
- obj-$(CONFIG_GPIO_IOP)		+= gpio-iop.o
+ obj-$(CONFIG_GPIO_INGENIC)	+= gpio-ingenic.o
 --- /dev/null
 +++ b/drivers/gpio/gw_i2c_pld.c
 @@ -0,0 +1,371 @@
diff --git a/target/linux/ixp4xx/patches-4.9/030-gpio_line_config.patch b/target/linux/ixp4xx/patches-4.14/030-gpio_line_config.patch
similarity index 97%
rename from target/linux/ixp4xx/patches-4.9/030-gpio_line_config.patch
rename to target/linux/ixp4xx/patches-4.14/030-gpio_line_config.patch
index 0e51793273..cb1392765c 100644
--- a/target/linux/ixp4xx/patches-4.9/030-gpio_line_config.patch
+++ b/target/linux/ixp4xx/patches-4.14/030-gpio_line_config.patch
@@ -49,7 +49,7 @@
  /*************************************************************************
 --- a/arch/arm/mach-ixp4xx/include/mach/platform.h
 +++ b/arch/arm/mach-ixp4xx/include/mach/platform.h
-@@ -131,5 +131,21 @@ struct pci_sys_data;
+@@ -132,5 +132,21 @@ struct pci_sys_data;
  extern int ixp4xx_setup(int nr, struct pci_sys_data *sys);
  extern struct pci_ops ixp4xx_ops;
  
diff --git a/target/linux/ixp4xx/patches-4.9/040-arm_mach_types.patch b/target/linux/ixp4xx/patches-4.14/040-arm_mach_types.patch
similarity index 66%
rename from target/linux/ixp4xx/patches-4.9/040-arm_mach_types.patch
rename to target/linux/ixp4xx/patches-4.14/040-arm_mach_types.patch
index c6392ef2f8..010a29a2da 100644
--- a/target/linux/ixp4xx/patches-4.9/040-arm_mach_types.patch
+++ b/target/linux/ixp4xx/patches-4.14/040-arm_mach_types.patch
@@ -1,9 +1,9 @@
 --- a/arch/arm/tools/mach-types
 +++ b/arch/arm/tools/mach-types
-@@ -1006,3 +1006,15 @@ eco5_bx2		MACH_ECO5_BX2		ECO5_BX2		4572
- eukrea_cpuimx28sd	MACH_EUKREA_CPUIMX28SD	EUKREA_CPUIMX28SD	4573
- domotab			MACH_DOMOTAB		DOMOTAB			4574
- pfla03			MACH_PFLA03		PFLA03			4575
+@@ -598,3 +598,16 @@ missouri		MACH_MISSOURI		MISSOURI		5105
+ remarkable		MACH_REMARKABLE		REMARKABLE		5106
+ fa0113			MACH_FA0113		FA0113			5107
+ innova_statnettawm	MACH_INNOVA_STATNETTAWM	INNOVA_STATNETTAWM	5108
 +wg302v1			MACH_WG302V1		WG302V1			889
 +pronghorn		MACH_PRONGHORN		PRONGHORN		928
 +pronghorn_metro		MACH_PRONGHORNMETRO	PRONGHORNMETRO		1040
@@ -16,3 +16,4 @@
 +tw5334			MACH_TW5334		TW5334			1664
 +usr8200			MACH_USR8200		USR8200			1762
 +mi424wr			MACH_MI424WR		MI424WR			1778
++ap42x                  MACH_AP42X              AP42X                   4418
diff --git a/target/linux/ixp4xx/patches-4.9/090-increase_entropy_pools.patch b/target/linux/ixp4xx/patches-4.14/090-increase_entropy_pools.patch
similarity index 88%
rename from target/linux/ixp4xx/patches-4.9/090-increase_entropy_pools.patch
rename to target/linux/ixp4xx/patches-4.14/090-increase_entropy_pools.patch
index 9da213911e..74d0d9ee38 100644
--- a/target/linux/ixp4xx/patches-4.9/090-increase_entropy_pools.patch
+++ b/target/linux/ixp4xx/patches-4.14/090-increase_entropy_pools.patch
@@ -1,6 +1,6 @@
 --- a/drivers/char/random.c
 +++ b/drivers/char/random.c
-@@ -279,11 +279,11 @@
+@@ -281,11 +281,11 @@
  /*
   * Configuration information
   */
@@ -14,4 +14,4 @@
 +#define SEC_XFER_SIZE		1024
  #define EXTRACT_SIZE		10
  
- #define DEBUG_RANDOM_BOOT 0
+ 
diff --git a/target/linux/ixp4xx/patches-4.9/100-wg302v2_gateway7001_mac_plat_info.patch b/target/linux/ixp4xx/patches-4.14/100-wg302v2_gateway7001_mac_plat_info.patch
similarity index 92%
rename from target/linux/ixp4xx/patches-4.9/100-wg302v2_gateway7001_mac_plat_info.patch
rename to target/linux/ixp4xx/patches-4.14/100-wg302v2_gateway7001_mac_plat_info.patch
index 317103fdab..c3f348dea4 100644
--- a/target/linux/ixp4xx/patches-4.9/100-wg302v2_gateway7001_mac_plat_info.patch
+++ b/target/linux/ixp4xx/patches-4.14/100-wg302v2_gateway7001_mac_plat_info.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/mach-ixp4xx/gateway7001-setup.c
 +++ b/arch/arm/mach-ixp4xx/gateway7001-setup.c
-@@ -17,6 +17,7 @@
+@@ -18,6 +18,7 @@
  #include <linux/serial.h>
  #include <linux/tty.h>
  #include <linux/serial_8250.h>
@@ -8,7 +8,7 @@
  
  #include <asm/types.h>
  #include <asm/setup.h>
-@@ -75,9 +76,37 @@ static struct platform_device gateway700
+@@ -76,9 +77,37 @@ static struct platform_device gateway700
  	.resource	= &gateway7001_uart_resource,
  };
  
@@ -49,7 +49,7 @@
  static void __init gateway7001_init(void)
 --- a/arch/arm/mach-ixp4xx/wg302v2-setup.c
 +++ b/arch/arm/mach-ixp4xx/wg302v2-setup.c
-@@ -76,9 +76,26 @@ static struct platform_device wg302v2_ua
+@@ -77,9 +77,26 @@ static struct platform_device wg302v2_ua
  	.resource	= &wg302v2_uart_resource,
  };
  
diff --git a/target/linux/ixp4xx/patches-4.9/105-wg302v1_support.patch b/target/linux/ixp4xx/patches-4.14/105-wg302v1_support.patch
similarity index 97%
rename from target/linux/ixp4xx/patches-4.9/105-wg302v1_support.patch
rename to target/linux/ixp4xx/patches-4.14/105-wg302v1_support.patch
index 8793549c64..24905323f8 100644
--- a/target/linux/ixp4xx/patches-4.9/105-wg302v1_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/105-wg302v1_support.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/configs/ixp4xx_defconfig
 +++ b/arch/arm/configs/ixp4xx_defconfig
-@@ -13,6 +13,7 @@ CONFIG_MACH_AVILA=y
+@@ -12,6 +12,7 @@ CONFIG_MACH_AVILA=y
  CONFIG_MACH_LOFT=y
  CONFIG_ARCH_ADI_COYOTE=y
  CONFIG_MACH_GATEWAY7001=y
@@ -27,7 +27,7 @@
  	select PCI
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -15,6 +15,7 @@ obj-pci-$(CONFIG_MACH_NSLU2)		+= nslu2-p
+@@ -16,6 +16,7 @@ obj-pci-$(CONFIG_MACH_NSLU2)		+= nslu2-p
  obj-pci-$(CONFIG_MACH_NAS100D)		+= nas100d-pci.o
  obj-pci-$(CONFIG_MACH_DSMG600)		+= dsmg600-pci.o
  obj-pci-$(CONFIG_MACH_GATEWAY7001)	+= gateway7001-pci.o
@@ -35,7 +35,7 @@
  obj-pci-$(CONFIG_MACH_WG302V2)		+= wg302v2-pci.o
  obj-pci-$(CONFIG_MACH_FSG)		+= fsg-pci.o
  obj-pci-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulcan-pci.o
-@@ -33,6 +34,7 @@ obj-$(CONFIG_MACH_NSLU2)	+= nslu2-setup.
+@@ -34,6 +35,7 @@ obj-$(CONFIG_MACH_NSLU2)	+= nslu2-setup.
  obj-$(CONFIG_MACH_NAS100D)	+= nas100d-setup.o
  obj-$(CONFIG_MACH_DSMG600)      += dsmg600-setup.o
  obj-$(CONFIG_MACH_GATEWAY7001)	+= gateway7001-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/110-pronghorn_series_support.patch b/target/linux/ixp4xx/patches-4.14/110-pronghorn_series_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/110-pronghorn_series_support.patch
rename to target/linux/ixp4xx/patches-4.14/110-pronghorn_series_support.patch
index d1fdfcba49..e215738b1a 100644
--- a/target/linux/ixp4xx/patches-4.9/110-pronghorn_series_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/110-pronghorn_series_support.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/configs/ixp4xx_defconfig
 +++ b/arch/arm/configs/ixp4xx_defconfig
-@@ -15,6 +15,8 @@ CONFIG_ARCH_ADI_COYOTE=y
+@@ -14,6 +14,8 @@ CONFIG_ARCH_ADI_COYOTE=y
  CONFIG_MACH_GATEWAY7001=y
  CONFIG_MACH_WG302V1=y
  CONFIG_MACH_WG302V2=y
@@ -36,7 +36,7 @@
  	help
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -19,6 +19,7 @@ obj-pci-$(CONFIG_MACH_WG302V1)		+= wg302
+@@ -20,6 +20,7 @@ obj-pci-$(CONFIG_MACH_WG302V1)		+= wg302
  obj-pci-$(CONFIG_MACH_WG302V2)		+= wg302v2-pci.o
  obj-pci-$(CONFIG_MACH_FSG)		+= fsg-pci.o
  obj-pci-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulcan-pci.o
@@ -44,7 +44,7 @@
  
  obj-y	+= common.o
  
-@@ -39,6 +40,7 @@ obj-$(CONFIG_MACH_WG302V2)	+= wg302v2-se
+@@ -40,6 +41,7 @@ obj-$(CONFIG_MACH_WG302V2)	+= wg302v2-se
  obj-$(CONFIG_MACH_FSG)		+= fsg-setup.o
  obj-$(CONFIG_MACH_GORAMO_MLR)	+= goramo_mlr.o
  obj-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulcan-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/111-pronghorn_swap_uarts.patch b/target/linux/ixp4xx/patches-4.14/111-pronghorn_swap_uarts.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/111-pronghorn_swap_uarts.patch
rename to target/linux/ixp4xx/patches-4.14/111-pronghorn_swap_uarts.patch
diff --git a/target/linux/ixp4xx/patches-4.9/115-sidewinder_support.patch b/target/linux/ixp4xx/patches-4.14/115-sidewinder_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/115-sidewinder_support.patch
rename to target/linux/ixp4xx/patches-4.14/115-sidewinder_support.patch
index 20adbb5c04..7d62d292c1 100644
--- a/target/linux/ixp4xx/patches-4.9/115-sidewinder_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/115-sidewinder_support.patch
@@ -40,7 +40,7 @@ Subject: [PATCH 07/36] 115-sidewinder_support.patch
  config CPU_IXP43X
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -20,6 +20,7 @@ obj-pci-$(CONFIG_MACH_WG302V2)		+= wg302
+@@ -21,6 +21,7 @@ obj-pci-$(CONFIG_MACH_WG302V2)		+= wg302
  obj-pci-$(CONFIG_MACH_FSG)		+= fsg-pci.o
  obj-pci-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulcan-pci.o
  obj-pci-$(CONFIG_MACH_PRONGHORN)	+= pronghorn-pci.o
@@ -48,7 +48,7 @@ Subject: [PATCH 07/36] 115-sidewinder_support.patch
  
  obj-y	+= common.o
  
-@@ -41,6 +42,7 @@ obj-$(CONFIG_MACH_FSG)		+= fsg-setup.o
+@@ -42,6 +43,7 @@ obj-$(CONFIG_MACH_FSG)		+= fsg-setup.o
  obj-$(CONFIG_MACH_GORAMO_MLR)	+= goramo_mlr.o
  obj-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulcan-setup.o
  obj-$(CONFIG_MACH_PRONGHORN)	+= pronghorn-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/116-sidewinder_fis_location.patch b/target/linux/ixp4xx/patches-4.14/116-sidewinder_fis_location.patch
similarity index 83%
rename from target/linux/ixp4xx/patches-4.9/116-sidewinder_fis_location.patch
rename to target/linux/ixp4xx/patches-4.14/116-sidewinder_fis_location.patch
index 8a28eb0a7a..7d633f7135 100644
--- a/target/linux/ixp4xx/patches-4.9/116-sidewinder_fis_location.patch
+++ b/target/linux/ixp4xx/patches-4.14/116-sidewinder_fis_location.patch
@@ -1,15 +1,15 @@
 --- a/drivers/mtd/redboot.c
 +++ b/drivers/mtd/redboot.c
-@@ -31,6 +31,8 @@
+@@ -30,6 +30,8 @@
+ #include <linux/mtd/partitions.h>
  #include <linux/module.h>
- #include <linux/mod_devicetable.h>
  
 +#include <asm/mach-types.h>
 +
  struct fis_image_desc {
      unsigned char name[16];      // Null terminated name
      uint32_t	  flash_base;    // Address within FLASH of image
-@@ -48,7 +50,8 @@ struct fis_list {
+@@ -47,7 +49,8 @@ struct fis_list {
  	struct fis_list *next;
  };
  
@@ -19,7 +19,7 @@
  module_param(directory, int, 0);
  
  static inline int redboot_checksum(struct fis_image_desc *img)
-@@ -76,6 +79,8 @@ static int parse_redboot_partitions(stru
+@@ -75,6 +78,8 @@ static int parse_redboot_partitions(stru
  #ifdef CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED
  	static char nullstring[] = "unallocated";
  #endif
diff --git a/target/linux/ixp4xx/patches-4.9/120-compex_support.patch b/target/linux/ixp4xx/patches-4.14/120-compex_support.patch
similarity index 97%
rename from target/linux/ixp4xx/patches-4.9/120-compex_support.patch
rename to target/linux/ixp4xx/patches-4.14/120-compex_support.patch
index 2abc159f04..7310413d26 100644
--- a/target/linux/ixp4xx/patches-4.9/120-compex_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/120-compex_support.patch
@@ -25,7 +25,7 @@ Signed-off-by: Imre Kaloz <kaloz@openwrt.org>
  	help
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -21,6 +21,7 @@ obj-pci-$(CONFIG_MACH_FSG)		+= fsg-pci.o
+@@ -22,6 +22,7 @@ obj-pci-$(CONFIG_MACH_FSG)		+= fsg-pci.o
  obj-pci-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulcan-pci.o
  obj-pci-$(CONFIG_MACH_PRONGHORN)	+= pronghorn-pci.o
  obj-pci-$(CONFIG_MACH_SIDEWINDER)	+= sidewinder-pci.o
@@ -33,7 +33,7 @@ Signed-off-by: Imre Kaloz <kaloz@openwrt.org>
  
  obj-y	+= common.o
  
-@@ -43,6 +44,7 @@ obj-$(CONFIG_MACH_GORAMO_MLR)	+= goramo_
+@@ -44,6 +45,7 @@ obj-$(CONFIG_MACH_GORAMO_MLR)	+= goramo_
  obj-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulcan-setup.o
  obj-$(CONFIG_MACH_PRONGHORN)	+= pronghorn-setup.o
  obj-$(CONFIG_MACH_SIDEWINDER)	+= sidewinder-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/130-wrt300nv2_support.patch b/target/linux/ixp4xx/patches-4.14/130-wrt300nv2_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/130-wrt300nv2_support.patch
rename to target/linux/ixp4xx/patches-4.14/130-wrt300nv2_support.patch
index 49359be447..6e6e53c208 100644
--- a/target/linux/ixp4xx/patches-4.9/130-wrt300nv2_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/130-wrt300nv2_support.patch
@@ -17,7 +17,7 @@
  	help
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -22,6 +22,7 @@ obj-pci-$(CONFIG_MACH_ARCOM_VULCAN)	+= v
+@@ -23,6 +23,7 @@ obj-pci-$(CONFIG_MACH_ARCOM_VULCAN)	+= v
  obj-pci-$(CONFIG_MACH_PRONGHORN)	+= pronghorn-pci.o
  obj-pci-$(CONFIG_MACH_SIDEWINDER)	+= sidewinder-pci.o
  obj-pci-$(CONFIG_MACH_COMPEXWP18)	+= ixdp425-pci.o
@@ -25,7 +25,7 @@
  
  obj-y	+= common.o
  
-@@ -45,6 +46,7 @@ obj-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulca
+@@ -46,6 +47,7 @@ obj-$(CONFIG_MACH_ARCOM_VULCAN)	+= vulca
  obj-$(CONFIG_MACH_PRONGHORN)	+= pronghorn-setup.o
  obj-$(CONFIG_MACH_SIDEWINDER)	+= sidewinder-setup.o
  obj-$(CONFIG_MACH_COMPEXWP18)	+= compex42x-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/131-wrt300nv2_mac_plat_info.patch b/target/linux/ixp4xx/patches-4.14/131-wrt300nv2_mac_plat_info.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/131-wrt300nv2_mac_plat_info.patch
rename to target/linux/ixp4xx/patches-4.14/131-wrt300nv2_mac_plat_info.patch
diff --git a/target/linux/ixp4xx/patches-4.9/132-wrt300nv2_mac_fix.patch b/target/linux/ixp4xx/patches-4.14/132-wrt300nv2_mac_fix.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/132-wrt300nv2_mac_fix.patch
rename to target/linux/ixp4xx/patches-4.14/132-wrt300nv2_mac_fix.patch
diff --git a/target/linux/ixp4xx/patches-4.9/150-lanready_ap1000_support.patch b/target/linux/ixp4xx/patches-4.14/150-lanready_ap1000_support.patch
similarity index 97%
rename from target/linux/ixp4xx/patches-4.9/150-lanready_ap1000_support.patch
rename to target/linux/ixp4xx/patches-4.14/150-lanready_ap1000_support.patch
index fb5c3adb76..eac63b41b3 100644
--- a/target/linux/ixp4xx/patches-4.9/150-lanready_ap1000_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/150-lanready_ap1000_support.patch
@@ -17,7 +17,7 @@
  	help
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -23,6 +23,7 @@ obj-pci-$(CONFIG_MACH_PRONGHORN)	+= pron
+@@ -24,6 +24,7 @@ obj-pci-$(CONFIG_MACH_PRONGHORN)	+= pron
  obj-pci-$(CONFIG_MACH_SIDEWINDER)	+= sidewinder-pci.o
  obj-pci-$(CONFIG_MACH_COMPEXWP18)	+= ixdp425-pci.o
  obj-pci-$(CONFIG_MACH_WRT300NV2)		+= wrt300nv2-pci.o
@@ -25,7 +25,7 @@
  
  obj-y	+= common.o
  
-@@ -47,6 +48,7 @@ obj-$(CONFIG_MACH_PRONGHORN)	+= pronghor
+@@ -48,6 +49,7 @@ obj-$(CONFIG_MACH_PRONGHORN)	+= pronghor
  obj-$(CONFIG_MACH_SIDEWINDER)	+= sidewinder-setup.o
  obj-$(CONFIG_MACH_COMPEXWP18)	+= compex42x-setup.o
  obj-$(CONFIG_MACH_WRT300NV2)	+= wrt300nv2-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/151-lanready_ap1000_mac_plat_info.patch b/target/linux/ixp4xx/patches-4.14/151-lanready_ap1000_mac_plat_info.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/151-lanready_ap1000_mac_plat_info.patch
rename to target/linux/ixp4xx/patches-4.14/151-lanready_ap1000_mac_plat_info.patch
diff --git a/target/linux/ixp4xx/patches-4.9/160-delayed_uart_io.patch b/target/linux/ixp4xx/patches-4.14/160-delayed_uart_io.patch
similarity index 82%
rename from target/linux/ixp4xx/patches-4.9/160-delayed_uart_io.patch
rename to target/linux/ixp4xx/patches-4.14/160-delayed_uart_io.patch
index 00a5309dcf..18719b2236 100644
--- a/target/linux/ixp4xx/patches-4.9/160-delayed_uart_io.patch
+++ b/target/linux/ixp4xx/patches-4.14/160-delayed_uart_io.patch
@@ -1,6 +1,6 @@
 --- a/drivers/tty/serial/8250/8250_core.c
 +++ b/drivers/tty/serial/8250/8250_core.c
-@@ -833,6 +833,7 @@ static int serial8250_probe(struct platf
+@@ -837,6 +837,7 @@ static int serial8250_probe(struct platf
  		uart.port.get_mctrl	= p->get_mctrl;
  		uart.port.pm		= p->pm;
  		uart.port.dev		= &dev->dev;
@@ -8,7 +8,7 @@
  		uart.port.irqflags	|= irqflag;
  		ret = serial8250_register_8250_port(&uart);
  		if (ret < 0) {
-@@ -989,6 +990,7 @@ int serial8250_register_8250_port(struct
+@@ -993,6 +994,7 @@ int serial8250_register_8250_port(struct
  		uart->bugs		= up->bugs;
  		uart->port.mapbase      = up->port.mapbase;
  		uart->port.mapsize      = up->port.mapsize;
@@ -18,7 +18,7 @@
  		uart->capabilities	= up->capabilities;
 --- a/drivers/tty/serial/serial_core.c
 +++ b/drivers/tty/serial/serial_core.c
-@@ -2260,6 +2260,7 @@ uart_report_port(struct uart_driver *drv
+@@ -2273,6 +2273,7 @@ uart_report_port(struct uart_driver *drv
  		snprintf(address, sizeof(address),
  			 "I/O 0x%lx offset 0x%x", port->iobase, port->hub6);
  		break;
@@ -26,7 +26,7 @@
  	case UPIO_MEM:
  	case UPIO_MEM16:
  	case UPIO_MEM32:
-@@ -2924,6 +2925,7 @@ int uart_match_port(struct uart_port *po
+@@ -2940,6 +2941,7 @@ int uart_match_port(struct uart_port *po
  	case UPIO_HUB6:
  		return (port1->iobase == port2->iobase) &&
  		       (port1->hub6   == port2->hub6);
@@ -46,15 +46,15 @@
  	unsigned int	type;		/* If UPF_FIXED_TYPE */
 --- a/include/linux/serial_core.h
 +++ b/include/linux/serial_core.h
-@@ -152,6 +152,7 @@ struct uart_port {
+@@ -154,6 +154,7 @@ struct uart_port {
  #define UPIO_TSI		(SERIAL_IO_TSI)		/* Tsi108/109 type IO */
  #define UPIO_MEM32BE		(SERIAL_IO_MEM32BE)	/* 32b big endian */
  #define UPIO_MEM16		(SERIAL_IO_MEM16)	/* 16b little endian */
 +#define UPIO_MEM_DELAY		(SERIAL_IO_MEM_DELAY)
  
- 	unsigned int		read_status_mask;	/* driver specific */
- 	unsigned int		ignore_status_mask;	/* driver specific */
-@@ -233,6 +234,7 @@ struct uart_port {
+ 	/* quirks must be updated while holding port mutex */
+ #define UPQ_NO_TXEN_TEST	BIT(0)
+@@ -237,6 +238,7 @@ struct uart_port {
  	int			hw_stopped;		/* sw-assisted CTS flow state */
  	unsigned int		mctrl;			/* current modem ctrl settings */
  	unsigned int		timeout;		/* character-based timeout */
@@ -64,7 +64,7 @@
  	unsigned int		custom_divisor;
 --- a/drivers/tty/serial/8250/8250_port.c
 +++ b/drivers/tty/serial/8250/8250_port.c
-@@ -383,6 +383,20 @@ static unsigned int mem16_serial_in(stru
+@@ -420,6 +420,20 @@ static unsigned int mem16_serial_in(stru
  	return readw(p->membase + offset);
  }
  
@@ -85,7 +85,7 @@
  static void mem32_serial_out(struct uart_port *p, int offset, int value)
  {
  	offset = offset << p->regshift;
-@@ -455,6 +469,11 @@ static void set_io_from_upio(struct uart
+@@ -491,6 +505,11 @@ static void set_io_from_upio(struct uart
  		p->serial_out = mem32be_serial_out;
  		break;
  
@@ -97,7 +97,7 @@
  #ifdef CONFIG_SERIAL_8250_RT288X
  	case UPIO_AU:
  		p->serial_in = au_serial_in;
-@@ -482,6 +501,7 @@ serial_port_out_sync(struct uart_port *p
+@@ -518,6 +537,7 @@ serial_port_out_sync(struct uart_port *p
  	case UPIO_MEM16:
  	case UPIO_MEM32:
  	case UPIO_MEM32BE:
@@ -105,7 +105,7 @@
  	case UPIO_AU:
  		p->serial_out(p, offset, value);
  		p->serial_in(p, UART_LCR);	/* safe, no side-effects */
-@@ -2759,6 +2779,7 @@ static int serial8250_request_std_resour
+@@ -2845,6 +2865,7 @@ static int serial8250_request_std_resour
  	case UPIO_MEM32BE:
  	case UPIO_MEM16:
  	case UPIO_MEM:
@@ -113,7 +113,7 @@
  		if (!port->mapbase)
  			break;
  
-@@ -2797,6 +2818,7 @@ static void serial8250_release_std_resou
+@@ -2883,6 +2904,7 @@ static void serial8250_release_std_resou
  	case UPIO_MEM32BE:
  	case UPIO_MEM16:
  	case UPIO_MEM:
@@ -123,7 +123,7 @@
  
 --- a/include/uapi/linux/serial.h
 +++ b/include/uapi/linux/serial.h
-@@ -70,6 +70,7 @@ struct serial_struct {
+@@ -71,6 +71,7 @@ struct serial_struct {
  #define SERIAL_IO_TSI	  5
  #define SERIAL_IO_MEM32BE 6
  #define SERIAL_IO_MEM16	7
diff --git a/target/linux/ixp4xx/patches-4.9/162-wg302v1_mem_fixup.patch b/target/linux/ixp4xx/patches-4.14/162-wg302v1_mem_fixup.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/162-wg302v1_mem_fixup.patch
rename to target/linux/ixp4xx/patches-4.14/162-wg302v1_mem_fixup.patch
diff --git a/target/linux/ixp4xx/patches-4.9/170-ixdpg425_mac_plat_info.patch b/target/linux/ixp4xx/patches-4.14/170-ixdpg425_mac_plat_info.patch
similarity index 94%
rename from target/linux/ixp4xx/patches-4.9/170-ixdpg425_mac_plat_info.patch
rename to target/linux/ixp4xx/patches-4.14/170-ixdpg425_mac_plat_info.patch
index f7090cd1b4..7d9bf9d3dd 100644
--- a/target/linux/ixp4xx/patches-4.9/170-ixdpg425_mac_plat_info.patch
+++ b/target/linux/ixp4xx/patches-4.14/170-ixdpg425_mac_plat_info.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/mach-ixp4xx/coyote-setup.c
 +++ b/arch/arm/mach-ixp4xx/coyote-setup.c
-@@ -14,6 +14,7 @@
+@@ -15,6 +15,7 @@
  #include <linux/serial.h>
  #include <linux/tty.h>
  #include <linux/serial_8250.h>
@@ -8,7 +8,7 @@
  
  #include <asm/types.h>
  #include <asm/setup.h>
-@@ -81,9 +82,39 @@ static struct platform_device coyote_uar
+@@ -82,9 +83,39 @@ static struct platform_device coyote_uar
  	.resource	= &coyote_uart_resource,
  };
  
diff --git a/target/linux/ixp4xx/patches-4.9/175-avila_hss_audio_support.patch b/target/linux/ixp4xx/patches-4.14/175-avila_hss_audio_support.patch
similarity index 99%
rename from target/linux/ixp4xx/patches-4.9/175-avila_hss_audio_support.patch
rename to target/linux/ixp4xx/patches-4.14/175-avila_hss_audio_support.patch
index 398344d188..aa8490747e 100644
--- a/target/linux/ixp4xx/patches-4.9/175-avila_hss_audio_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/175-avila_hss_audio_support.patch
@@ -5,19 +5,19 @@
  source "sound/soc/dwc/Kconfig"
  source "sound/soc/fsl/Kconfig"
 +source "sound/soc/gw-avila/Kconfig"
+ source "sound/soc/hisilicon/Kconfig"
  source "sound/soc/jz4740/Kconfig"
  source "sound/soc/nuc900/Kconfig"
- source "sound/soc/omap/Kconfig"
 --- a/sound/soc/Makefile
 +++ b/sound/soc/Makefile
-@@ -27,6 +27,7 @@ obj-$(CONFIG_SND_SOC)	+= cirrus/
+@@ -28,6 +28,7 @@ obj-$(CONFIG_SND_SOC)	+= cirrus/
  obj-$(CONFIG_SND_SOC)	+= davinci/
  obj-$(CONFIG_SND_SOC)	+= dwc/
  obj-$(CONFIG_SND_SOC)	+= fsl/
 +obj-$(CONFIG_SND_SOC)	+= gw-avila/
+ obj-$(CONFIG_SND_SOC)	+= hisilicon/
  obj-$(CONFIG_SND_SOC)	+= jz4740/
  obj-$(CONFIG_SND_SOC)	+= img/
- obj-$(CONFIG_SND_SOC)	+= intel/
 --- /dev/null
 +++ b/sound/soc/gw-avila/Kconfig
 @@ -0,0 +1,17 @@
diff --git a/target/linux/ixp4xx/patches-4.9/180-tw5334_support.patch b/target/linux/ixp4xx/patches-4.14/180-tw5334_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/180-tw5334_support.patch
rename to target/linux/ixp4xx/patches-4.14/180-tw5334_support.patch
index b56fbb732d..f967ca8e84 100644
--- a/target/linux/ixp4xx/patches-4.9/180-tw5334_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/180-tw5334_support.patch
@@ -17,7 +17,7 @@
  	prompt "NAS100D"
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -24,6 +24,7 @@ obj-pci-$(CONFIG_MACH_SIDEWINDER)	+= sid
+@@ -25,6 +25,7 @@ obj-pci-$(CONFIG_MACH_SIDEWINDER)	+= sid
  obj-pci-$(CONFIG_MACH_COMPEXWP18)	+= ixdp425-pci.o
  obj-pci-$(CONFIG_MACH_WRT300NV2)		+= wrt300nv2-pci.o
  obj-pci-$(CONFIG_MACH_AP1000)		+= ixdp425-pci.o
@@ -25,7 +25,7 @@
  
  obj-y	+= common.o
  
-@@ -49,6 +50,7 @@ obj-$(CONFIG_MACH_SIDEWINDER)	+= sidewin
+@@ -50,6 +51,7 @@ obj-$(CONFIG_MACH_SIDEWINDER)	+= sidewin
  obj-$(CONFIG_MACH_COMPEXWP18)	+= compex42x-setup.o
  obj-$(CONFIG_MACH_WRT300NV2)	+= wrt300nv2-setup.o
  obj-$(CONFIG_MACH_AP1000)	+= ap1000-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/185-mi424wr_support.patch b/target/linux/ixp4xx/patches-4.14/185-mi424wr_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/185-mi424wr_support.patch
rename to target/linux/ixp4xx/patches-4.14/185-mi424wr_support.patch
index 7c229276fc..e2b6afc723 100644
--- a/target/linux/ixp4xx/patches-4.9/185-mi424wr_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/185-mi424wr_support.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/configs/ixp4xx_defconfig
 +++ b/arch/arm/configs/ixp4xx_defconfig
-@@ -26,6 +26,7 @@ CONFIG_MACH_NAS100D=y
+@@ -25,6 +25,7 @@ CONFIG_MACH_NAS100D=y
  CONFIG_MACH_DSMG600=y
  CONFIG_MACH_FSG=y
  CONFIG_MACH_GTWX5715=y
@@ -26,7 +26,7 @@
  config IXP4XX_INDIRECT_PCI
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -25,6 +25,7 @@ obj-pci-$(CONFIG_MACH_COMPEXWP18)	+= ixd
+@@ -26,6 +26,7 @@ obj-pci-$(CONFIG_MACH_COMPEXWP18)	+= ixd
  obj-pci-$(CONFIG_MACH_WRT300NV2)		+= wrt300nv2-pci.o
  obj-pci-$(CONFIG_MACH_AP1000)		+= ixdp425-pci.o
  obj-pci-$(CONFIG_MACH_TW5334)		+= tw5334-pci.o
@@ -34,7 +34,7 @@
  
  obj-y	+= common.o
  
-@@ -51,6 +52,7 @@ obj-$(CONFIG_MACH_COMPEXWP18)	+= compex4
+@@ -52,6 +53,7 @@ obj-$(CONFIG_MACH_COMPEXWP18)	+= compex4
  obj-$(CONFIG_MACH_WRT300NV2)	+= wrt300nv2-setup.o
  obj-$(CONFIG_MACH_AP1000)	+= ap1000-setup.o
  obj-$(CONFIG_MACH_TW5334)	+= tw5334-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/190-cambria_support.patch b/target/linux/ixp4xx/patches-4.14/190-cambria_support.patch
similarity index 99%
rename from target/linux/ixp4xx/patches-4.9/190-cambria_support.patch
rename to target/linux/ixp4xx/patches-4.14/190-cambria_support.patch
index 83a3319261..4efc129c69 100644
--- a/target/linux/ixp4xx/patches-4.9/190-cambria_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/190-cambria_support.patch
@@ -26,7 +26,7 @@
  config MACH_GTWX5715
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -7,6 +7,7 @@ obj-pci-n	:=
+@@ -8,6 +8,7 @@ obj-pci-n	:=
  
  obj-pci-$(CONFIG_ARCH_IXDP4XX)		+= ixdp425-pci.o
  obj-pci-$(CONFIG_MACH_AVILA)		+= avila-pci.o
@@ -34,7 +34,7 @@
  obj-pci-$(CONFIG_MACH_IXDPG425)		+= ixdpg425-pci.o
  obj-pci-$(CONFIG_ARCH_ADI_COYOTE)	+= coyote-pci.o
  obj-pci-$(CONFIG_MACH_GTWX5715)		+= gtwx5715-pci.o
-@@ -31,6 +32,7 @@ obj-y	+= common.o
+@@ -32,6 +33,7 @@ obj-y	+= common.o
  
  obj-$(CONFIG_ARCH_IXDP4XX)	+= ixdp425-setup.o
  obj-$(CONFIG_MACH_AVILA)	+= avila-setup.o
@@ -179,7 +179,7 @@
 +	void		(*setup)(void);
 +};
 +
-+static struct cambria_board_info *cambria_info __initdata;
++static struct cambria_board_info *cambria_info;
 +
 +static struct flash_platform_data cambria_flash_data = {
 +	.map_name	= "cfi_probe",
diff --git a/target/linux/ixp4xx/patches-4.9/201-npe_driver_print_license_location.patch b/target/linux/ixp4xx/patches-4.14/201-npe_driver_print_license_location.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/201-npe_driver_print_license_location.patch
rename to target/linux/ixp4xx/patches-4.14/201-npe_driver_print_license_location.patch
diff --git a/target/linux/ixp4xx/patches-4.9/205-npe_driver_separate_phy_functions.patch b/target/linux/ixp4xx/patches-4.14/205-npe_driver_separate_phy_functions.patch
similarity index 89%
rename from target/linux/ixp4xx/patches-4.9/205-npe_driver_separate_phy_functions.patch
rename to target/linux/ixp4xx/patches-4.14/205-npe_driver_separate_phy_functions.patch
index cc77c5dddc..06e88a90df 100644
--- a/target/linux/ixp4xx/patches-4.9/205-npe_driver_separate_phy_functions.patch
+++ b/target/linux/ixp4xx/patches-4.14/205-npe_driver_separate_phy_functions.patch
@@ -61,7 +61,7 @@ Subject: [PATCH 23/36] 205-npe_driver_separate_phy_functions.patch
  
  static inline void debug_pkt(struct net_device *dev, const char *func,
  			     u8 *data, int len)
-@@ -1242,8 +1287,7 @@ static int eth_open(struct net_device *d
+@@ -1237,8 +1282,7 @@ static int eth_open(struct net_device *d
  		return err;
  	}
  
@@ -71,7 +71,7 @@ Subject: [PATCH 23/36] 205-npe_driver_separate_phy_functions.patch
  
  	for (i = 0; i < ETH_ALEN; i++)
  		__raw_writel(dev->dev_addr[i], &port->regs->hw_addr[i]);
-@@ -1364,7 +1408,7 @@ static int eth_close(struct net_device *
+@@ -1359,7 +1403,7 @@ static int eth_close(struct net_device *
  		printk(KERN_CRIT "%s: unable to disable loopback\n",
  		       dev->name);
  
@@ -80,7 +80,7 @@ Subject: [PATCH 23/36] 205-npe_driver_separate_phy_functions.patch
  
  	if (!ports_open)
  		qmgr_disable_irq(TXDONE_QUEUE);
-@@ -1391,7 +1435,6 @@ static int eth_init_one(struct platform_
+@@ -1385,7 +1429,6 @@ static int eth_init_one(struct platform_
  	struct eth_plat_info *plat = dev_get_platdata(&pdev->dev);
  	struct phy_device *phydev = NULL;
  	u32 regs_phys;
@@ -88,7 +88,7 @@ Subject: [PATCH 23/36] 205-npe_driver_separate_phy_functions.patch
  	int err;
  
  	if (!(dev = alloc_etherdev(sizeof(struct port))))
-@@ -1449,16 +1492,9 @@ static int eth_init_one(struct platform_
+@@ -1443,16 +1486,9 @@ static int eth_init_one(struct platform_
  	__raw_writel(DEFAULT_CORE_CNTRL, &port->regs->core_control);
  	udelay(50);
  
@@ -107,7 +107,7 @@ Subject: [PATCH 23/36] 205-npe_driver_separate_phy_functions.patch
  
  	if ((err = register_netdev(dev)))
  		goto err_phy_dis;
-@@ -1469,7 +1505,7 @@ static int eth_init_one(struct platform_
+@@ -1463,7 +1499,7 @@ static int eth_init_one(struct platform_
  	return 0;
  
  err_phy_dis:
@@ -116,7 +116,7 @@ Subject: [PATCH 23/36] 205-npe_driver_separate_phy_functions.patch
  err_free_mem:
  	npe_port_tab[NPE_ID(port->id)] = NULL;
  	release_resource(port->mem_res);
-@@ -1487,7 +1523,7 @@ static int eth_remove_one(struct platfor
+@@ -1481,7 +1517,7 @@ static int eth_remove_one(struct platfor
  	struct port *port = netdev_priv(dev);
  
  	unregister_netdev(dev);
diff --git a/target/linux/ixp4xx/patches-4.9/206-npe_driver_add_update_link_function.patch b/target/linux/ixp4xx/patches-4.14/206-npe_driver_add_update_link_function.patch
similarity index 97%
rename from target/linux/ixp4xx/patches-4.9/206-npe_driver_add_update_link_function.patch
rename to target/linux/ixp4xx/patches-4.14/206-npe_driver_add_update_link_function.patch
index e12764e053..b9efb5dfb2 100644
--- a/target/linux/ixp4xx/patches-4.9/206-npe_driver_add_update_link_function.patch
+++ b/target/linux/ixp4xx/patches-4.14/206-npe_driver_add_update_link_function.patch
@@ -87,7 +87,7 @@
  	phy_start(port->phydev);
  }
  
-@@ -1499,6 +1509,10 @@ static int eth_init_one(struct platform_
+@@ -1493,6 +1503,10 @@ static int eth_init_one(struct platform_
  	if ((err = register_netdev(dev)))
  		goto err_phy_dis;
  
diff --git a/target/linux/ixp4xx/patches-4.9/207-npe_driver_multiphy_support.patch b/target/linux/ixp4xx/patches-4.14/207-npe_driver_multiphy_support.patch
similarity index 88%
rename from target/linux/ixp4xx/patches-4.9/207-npe_driver_multiphy_support.patch
rename to target/linux/ixp4xx/patches-4.14/207-npe_driver_multiphy_support.patch
index a23644a167..72804b9936 100644
--- a/target/linux/ixp4xx/patches-4.9/207-npe_driver_multiphy_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/207-npe_driver_multiphy_support.patch
@@ -2,7 +2,7 @@ TODO: take care of additional PHYs through the PHY abstraction layer
 
 --- a/arch/arm/mach-ixp4xx/include/mach/platform.h
 +++ b/arch/arm/mach-ixp4xx/include/mach/platform.h
-@@ -95,12 +95,23 @@ struct ixp4xx_pata_data {
+@@ -96,12 +96,23 @@ struct ixp4xx_pata_data {
  #define IXP4XX_ETH_NPEB		0x10
  #define IXP4XX_ETH_NPEC		0x20
  
@@ -121,19 +121,7 @@ TODO: take care of additional PHYs through the PHY abstraction layer
  	return phy_mii_ioctl(dev->phydev, req, cmd);
  }
  
-@@ -1059,6 +1106,11 @@ static void ixp4xx_get_drvinfo(struct ne
- 
- static int ixp4xx_nway_reset(struct net_device *dev)
- {
-+	struct port *port = netdev_priv(dev);
-+
-+	if (!port->phydev)
-+		return -EOPNOTSUPP;
-+
- 	return phy_start_aneg(dev->phydev);
- }
- 
-@@ -1519,7 +1571,7 @@ static int eth_init_one(struct platform_
+@@ -1513,7 +1560,7 @@ static int eth_init_one(struct platform_
  	return 0;
  
  err_phy_dis:
@@ -142,7 +130,7 @@ TODO: take care of additional PHYs through the PHY abstraction layer
  err_free_mem:
  	npe_port_tab[NPE_ID(port->id)] = NULL;
  	release_resource(port->mem_res);
-@@ -1537,7 +1589,7 @@ static int eth_remove_one(struct platfor
+@@ -1531,7 +1578,7 @@ static int eth_remove_one(struct platfor
  	struct port *port = netdev_priv(dev);
  
  	unregister_netdev(dev);
diff --git a/target/linux/ixp4xx/patches-4.9/295-latch_led_driver.patch b/target/linux/ixp4xx/patches-4.14/295-latch_led_driver.patch
similarity index 95%
rename from target/linux/ixp4xx/patches-4.9/295-latch_led_driver.patch
rename to target/linux/ixp4xx/patches-4.14/295-latch_led_driver.patch
index 66bc3e86b0..996d24b5d8 100644
--- a/target/linux/ixp4xx/patches-4.9/295-latch_led_driver.patch
+++ b/target/linux/ixp4xx/patches-4.14/295-latch_led_driver.patch
@@ -1,6 +1,6 @@
 --- a/drivers/leds/Kconfig
 +++ b/drivers/leds/Kconfig
-@@ -312,6 +312,12 @@ config LEDS_LP8860
+@@ -346,6 +346,12 @@ config LEDS_LP8860
  	  on the LP8860 4 channel LED driver using the I2C communication
  	  bus.
  
@@ -15,7 +15,7 @@
  	depends on LEDS_CLASS
 --- a/drivers/leds/Makefile
 +++ b/drivers/leds/Makefile
-@@ -25,6 +25,7 @@ obj-$(CONFIG_LEDS_SUNFIRE)		+= leds-sunf
+@@ -28,6 +28,7 @@ obj-$(CONFIG_LEDS_SUNFIRE)		+= leds-sunf
  obj-$(CONFIG_LEDS_PCA9532)		+= leds-pca9532.o
  obj-$(CONFIG_LEDS_GPIO_REGISTER)	+= leds-gpio-register.o
  obj-$(CONFIG_LEDS_GPIO)			+= leds-gpio.o
@@ -180,8 +180,8 @@
 +MODULE_DESCRIPTION("Latch LED driver");
 --- a/include/linux/leds.h
 +++ b/include/linux/leds.h
-@@ -423,4 +423,18 @@ static inline void ledtrig_cpu(enum cpu_
- }
+@@ -446,4 +446,18 @@ static inline void led_classdev_notify_b
+ 	struct led_classdev *led_cdev, enum led_brightness brightness) { }
  #endif
  
 +/* For the leds-latch driver */
diff --git a/target/linux/ixp4xx/patches-4.9/300-avila_support.patch b/target/linux/ixp4xx/patches-4.14/300-avila_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/300-avila_support.patch
rename to target/linux/ixp4xx/patches-4.14/300-avila_support.patch
index c801607f4b..89260483d2 100644
--- a/target/linux/ixp4xx/patches-4.9/300-avila_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/300-avila_support.patch
@@ -26,7 +26,7 @@
  }
 --- a/arch/arm/mach-ixp4xx/avila-setup.c
 +++ b/arch/arm/mach-ixp4xx/avila-setup.c
-@@ -14,9 +14,16 @@
+@@ -15,9 +15,16 @@
  #include <linux/kernel.h>
  #include <linux/init.h>
  #include <linux/device.h>
@@ -43,7 +43,7 @@
  #include <linux/i2c-gpio.h>
  #include <asm/types.h>
  #include <asm/setup.h>
-@@ -26,10 +33,25 @@
+@@ -27,10 +34,25 @@
  #include <asm/irq.h>
  #include <asm/mach/arch.h>
  #include <asm/mach/flash.h>
@@ -64,12 +64,12 @@
 +	void		(*setup)(void);
 +};
 +
-+static struct avila_board_info *avila_info __initdata;
++static struct avila_board_info *avila_info;
 +
  static struct flash_platform_data avila_flash_data = {
  	.map_name	= "cfi_probe",
  	.width		= 2,
-@@ -105,14 +127,69 @@ static struct platform_device avila_uart
+@@ -106,14 +128,69 @@ static struct platform_device avila_uart
  	.resource		= avila_uart_resources
  };
  
@@ -143,7 +143,7 @@
  		.name	= "intrq",
  		.start	= IRQ_IXP4XX_GPIO12,
  		.end	= IRQ_IXP4XX_GPIO12,
-@@ -133,21 +210,237 @@ static struct platform_device avila_pata
+@@ -134,21 +211,237 @@ static struct platform_device avila_pata
  	.resource		= avila_pata_resources,
  };
  
@@ -388,7 +388,7 @@
  
  	avila_pata_resources[0].start = IXP4XX_EXP_BUS_BASE(1);
  	avila_pata_resources[0].end = IXP4XX_EXP_BUS_END(1);
-@@ -159,8 +452,335 @@ static void __init avila_init(void)
+@@ -160,8 +453,335 @@ static void __init avila_init(void)
  	avila_pata_data.cs1_cfg = IXP4XX_EXP_CS2;
  
  	platform_device_register(&avila_pata);
diff --git a/target/linux/ixp4xx/patches-4.9/304-ixp4xx_eth_jumboframe.patch b/target/linux/ixp4xx/patches-4.14/304-ixp4xx_eth_jumboframe.patch
similarity index 90%
rename from target/linux/ixp4xx/patches-4.9/304-ixp4xx_eth_jumboframe.patch
rename to target/linux/ixp4xx/patches-4.14/304-ixp4xx_eth_jumboframe.patch
index 108fbcb37a..ad4034e8c0 100644
--- a/target/linux/ixp4xx/patches-4.9/304-ixp4xx_eth_jumboframe.patch
+++ b/target/linux/ixp4xx/patches-4.14/304-ixp4xx_eth_jumboframe.patch
@@ -9,7 +9,7 @@
  #define RX_BUFF_SIZE		ALIGN((NET_IP_ALIGN) + MAX_MRU, 4)
  
  #define NAPI_WEIGHT		16
-@@ -1289,6 +1289,32 @@ static void destroy_queues(struct port *
+@@ -1279,6 +1279,32 @@ static void destroy_queues(struct port *
  	}
  }
  
@@ -42,7 +42,7 @@
  static int eth_open(struct net_device *dev)
  {
  	struct port *port = netdev_priv(dev);
-@@ -1340,6 +1366,8 @@ static int eth_open(struct net_device *d
+@@ -1330,6 +1356,8 @@ static int eth_open(struct net_device *d
  	if (npe_send_recv_message(port->npe, &msg, "ETH_SET_FIREWALL_MODE"))
  		return -EIO;
  
@@ -51,7 +51,7 @@
  	if ((err = request_queues(port)) != 0)
  		return err;
  
-@@ -1479,7 +1507,26 @@ static int eth_close(struct net_device *
+@@ -1469,7 +1497,26 @@ static int eth_close(struct net_device *
  	return 0;
  }
  
diff --git a/target/linux/ixp4xx/patches-4.9/310-gtwx5717_spi_bus.patch b/target/linux/ixp4xx/patches-4.14/310-gtwx5717_spi_bus.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/310-gtwx5717_spi_bus.patch
rename to target/linux/ixp4xx/patches-4.14/310-gtwx5717_spi_bus.patch
diff --git a/target/linux/ixp4xx/patches-4.9/311-gtwx5717_mac_plat_info.patch b/target/linux/ixp4xx/patches-4.14/311-gtwx5717_mac_plat_info.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/311-gtwx5717_mac_plat_info.patch
rename to target/linux/ixp4xx/patches-4.14/311-gtwx5717_mac_plat_info.patch
diff --git a/target/linux/ixp4xx/patches-4.9/312-ixp4xx_pata_optimization.patch b/target/linux/ixp4xx/patches-4.14/312-ixp4xx_pata_optimization.patch
similarity index 94%
rename from target/linux/ixp4xx/patches-4.9/312-ixp4xx_pata_optimization.patch
rename to target/linux/ixp4xx/patches-4.14/312-ixp4xx_pata_optimization.patch
index 59c2837f0c..8b6663b7bb 100644
--- a/target/linux/ixp4xx/patches-4.9/312-ixp4xx_pata_optimization.patch
+++ b/target/linux/ixp4xx/patches-4.14/312-ixp4xx_pata_optimization.patch
@@ -68,7 +68,7 @@
  	unsigned int words = buflen >> 1;
  	u16 *buf16 = (u16 *) buf;
 +	unsigned int pio_mask;
- 	struct ata_port *ap = dev->link->ap;
+ 	struct ata_port *ap = qc->dev->link->ap;
  	void __iomem *mmio = ap->ioaddr.data_addr;
  	struct ixp4xx_pata_data *data = dev_get_platdata(ap->host->dev);
 @@ -53,8 +96,34 @@ static unsigned int ixp4xx_mmio_data_xfe
@@ -77,15 +77,15 @@
  	 */
 -	*data->cs0_cfg &= ~(0x01);
 -	udelay(100);
-+	if (dev->id[ATA_ID_FIELD_VALID] & (1 << 1)){
-+		pio_mask = dev->id[ATA_ID_PIO_MODES] & 0x03;
++	if (qc->dev->id[ATA_ID_FIELD_VALID] & (1 << 1)){
++		pio_mask = qc->dev->id[ATA_ID_PIO_MODES] & 0x03;
 +		if (pio_mask & (1 << 1)){
 +			pio_mask = 4;
 +		}else{
 +			pio_mask = 3;
 +		}
 +	}else{
-+		pio_mask = (dev->id[ATA_ID_OLD_PIO_MODES] >> 8);
++		pio_mask = (qc->dev->id[ATA_ID_OLD_PIO_MODES] >> 8);
 +	}
 +	switch (pio_mask){
 +		case 0:
diff --git a/target/linux/ixp4xx/patches-4.9/500-usr8200_support.patch b/target/linux/ixp4xx/patches-4.14/500-usr8200_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/500-usr8200_support.patch
rename to target/linux/ixp4xx/patches-4.14/500-usr8200_support.patch
index fb7f03ee1a..f46ec487c7 100644
--- a/target/linux/ixp4xx/patches-4.9/500-usr8200_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/500-usr8200_support.patch
@@ -17,7 +17,7 @@
  	select PCI
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -27,6 +27,7 @@ obj-pci-$(CONFIG_MACH_WRT300NV2)		+= wrt
+@@ -28,6 +28,7 @@ obj-pci-$(CONFIG_MACH_WRT300NV2)		+= wrt
  obj-pci-$(CONFIG_MACH_AP1000)		+= ixdp425-pci.o
  obj-pci-$(CONFIG_MACH_TW5334)		+= tw5334-pci.o
  obj-pci-$(CONFIG_MACH_MI424WR)		+= mi424wr-pci.o
@@ -25,7 +25,7 @@
  
  obj-y	+= common.o
  
-@@ -55,6 +56,7 @@ obj-$(CONFIG_MACH_WRT300NV2)	+= wrt300nv
+@@ -56,6 +57,7 @@ obj-$(CONFIG_MACH_WRT300NV2)	+= wrt300nv
  obj-$(CONFIG_MACH_AP1000)	+= ap1000-setup.o
  obj-$(CONFIG_MACH_TW5334)	+= tw5334-setup.o
  obj-$(CONFIG_MACH_MI424WR)	+= mi424wr-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/520-tw2662_support.patch b/target/linux/ixp4xx/patches-4.14/520-tw2662_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/520-tw2662_support.patch
rename to target/linux/ixp4xx/patches-4.14/520-tw2662_support.patch
index 39a261b8e0..b24fb20a6c 100644
--- a/target/linux/ixp4xx/patches-4.9/520-tw2662_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/520-tw2662_support.patch
@@ -18,7 +18,7 @@
  	select PCI
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -25,6 +25,7 @@ obj-pci-$(CONFIG_MACH_SIDEWINDER)	+= sid
+@@ -26,6 +26,7 @@ obj-pci-$(CONFIG_MACH_SIDEWINDER)	+= sid
  obj-pci-$(CONFIG_MACH_COMPEXWP18)	+= ixdp425-pci.o
  obj-pci-$(CONFIG_MACH_WRT300NV2)		+= wrt300nv2-pci.o
  obj-pci-$(CONFIG_MACH_AP1000)		+= ixdp425-pci.o
@@ -26,7 +26,7 @@
  obj-pci-$(CONFIG_MACH_TW5334)		+= tw5334-pci.o
  obj-pci-$(CONFIG_MACH_MI424WR)		+= mi424wr-pci.o
  obj-pci-$(CONFIG_MACH_USR8200)		+= usr8200-pci.o
-@@ -54,6 +55,7 @@ obj-$(CONFIG_MACH_SIDEWINDER)	+= sidewin
+@@ -55,6 +56,7 @@ obj-$(CONFIG_MACH_SIDEWINDER)	+= sidewin
  obj-$(CONFIG_MACH_COMPEXWP18)	+= compex42x-setup.o
  obj-$(CONFIG_MACH_WRT300NV2)	+= wrt300nv2-setup.o
  obj-$(CONFIG_MACH_AP1000)	+= ap1000-setup.o
diff --git a/target/linux/ixp4xx/patches-4.9/530-ap42x_support.patch b/target/linux/ixp4xx/patches-4.14/530-ap42x_support.patch
similarity index 98%
rename from target/linux/ixp4xx/patches-4.9/530-ap42x_support.patch
rename to target/linux/ixp4xx/patches-4.14/530-ap42x_support.patch
index 1afbe3d61e..74286d5fe7 100644
--- a/target/linux/ixp4xx/patches-4.9/530-ap42x_support.patch
+++ b/target/linux/ixp4xx/patches-4.14/530-ap42x_support.patch
@@ -17,7 +17,7 @@
  	prompt "Linksys NSLU2"
 --- a/arch/arm/mach-ixp4xx/Makefile
 +++ b/arch/arm/mach-ixp4xx/Makefile
-@@ -5,6 +5,7 @@
+@@ -6,6 +6,7 @@
  obj-pci-y	:=
  obj-pci-n	:=
  
@@ -25,7 +25,7 @@
  obj-pci-$(CONFIG_ARCH_IXDP4XX)		+= ixdp425-pci.o
  obj-pci-$(CONFIG_MACH_AVILA)		+= avila-pci.o
  obj-pci-$(CONFIG_MACH_CAMBRIA)		+= cambria-pci.o
-@@ -32,6 +33,7 @@ obj-pci-$(CONFIG_MACH_USR8200)		+= usr82
+@@ -33,6 +34,7 @@ obj-pci-$(CONFIG_MACH_USR8200)		+= usr82
  
  obj-y	+= common.o
  
diff --git a/target/linux/ixp4xx/patches-4.9/600-skb_avoid_dmabounce.patch b/target/linux/ixp4xx/patches-4.14/600-skb_avoid_dmabounce.patch
similarity index 77%
rename from target/linux/ixp4xx/patches-4.9/600-skb_avoid_dmabounce.patch
rename to target/linux/ixp4xx/patches-4.14/600-skb_avoid_dmabounce.patch
index cdd9fde8f0..5e78690418 100644
--- a/target/linux/ixp4xx/patches-4.9/600-skb_avoid_dmabounce.patch
+++ b/target/linux/ixp4xx/patches-4.14/600-skb_avoid_dmabounce.patch
@@ -1,6 +1,6 @@
 --- a/net/core/skbuff.c
 +++ b/net/core/skbuff.c
-@@ -215,6 +215,9 @@ struct sk_buff *__alloc_skb(unsigned int
+@@ -189,6 +189,9 @@ struct sk_buff *__alloc_skb(unsigned int
  
  	if (sk_memalloc_socks() && (flags & SKB_ALLOC_RX))
  		gfp_mask |= __GFP_MEMALLOC;
@@ -10,7 +10,7 @@
  
  	/* Get the HEAD */
  	skb = kmem_cache_alloc_node(cache, gfp_mask & ~__GFP_DMA, node);
-@@ -1228,6 +1231,10 @@ int pskb_expand_head(struct sk_buff *skb
+@@ -1472,6 +1475,10 @@ int pskb_expand_head(struct sk_buff *skb
  	if (skb_shared(skb))
  		BUG();
  
diff --git a/target/linux/ixp4xx/patches-4.9/900-ixp4xx-crypto-include-module.h.patch b/target/linux/ixp4xx/patches-4.14/900-ixp4xx-crypto-include-module.h.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/900-ixp4xx-crypto-include-module.h.patch
rename to target/linux/ixp4xx/patches-4.14/900-ixp4xx-crypto-include-module.h.patch
diff --git a/target/linux/ixp4xx/patches-4.9/910-ixp4xx-nr_irq_lines.patch b/target/linux/ixp4xx/patches-4.14/910-ixp4xx-nr_irq_lines.patch
similarity index 100%
rename from target/linux/ixp4xx/patches-4.9/910-ixp4xx-nr_irq_lines.patch
rename to target/linux/ixp4xx/patches-4.14/910-ixp4xx-nr_irq_lines.patch
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
