Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B6C1A7BB
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:51:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5Ma0Hpc0B4Le2RcXv7lm1ITvtWsOqrH/OjFGAU2erc=; b=CYyNIpaUjbYu48
	UWorphIKQWxCEoPzoIoxzc+22jB0CIjlu2qbrkZSWqt7ILH8HOa4gsf9YzNYIIKpel7HesjAw147X
	aydrqgOdgGPZ3znDUhUIZkUynMd1VDRc72GfIq4eWVX4ffvp80pdqktqIuk/aUKB2P6IOAZf1uaYv
	p0KzipM7O4pGmtXWX7RcNDV8T2eAQSotQl2dubIwst8xQWiXQvp2jyf8A3uUVgpQaynUlZXhPDFqP
	Ack0luYw5Py5oXWNMRiNlOPi86pqdOEA3/NMAvlrmBJtIpTRMucKKP0h/26AI9stXW0kGnRKBpxJS
	JVd/MSEK7w+TEGrROZYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQXX-0001Bo-M3; Sat, 11 May 2019 11:51:43 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQXI-00010i-So
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:51:30 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 41EAC4EB06;
 Sat, 11 May 2019 13:51:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id fG2Ldb6MBEKT; Sat, 11 May 2019 13:51:14 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:51:07 +0200
Message-Id: <20190511115108.12139-2-hauke@hauke-m.de>
In-Reply-To: <20190511115108.12139-1-hauke@hauke-m.de>
References: <20190511115108.12139-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045129_226410_8070B6F4 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/2] orion: Refresh kernel configuration
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

The configuration of the generic subtarget was used as the default
configuration and then the subtarget configurations were adapted.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/orion/config-4.9                 | 40 +++++++++++++------
 .../patches-4.9/210-wn802t_support.patch      | 23 ++++++-----
 2 files changed, 41 insertions(+), 22 deletions(-)

diff --git a/target/linux/orion/config-4.9 b/target/linux/orion/config-4.9
index 56ae5ee98a..b596274f17 100644
--- a/target/linux/orion/config-4.9
+++ b/target/linux/orion/config-4.9
@@ -1,17 +1,20 @@
 CONFIG_ALIGNMENT_TRAP=y
-CONFIG_ARCH_HAS_ATOMIC64_DEC_IF_POSITIVE=y
+CONFIG_ARCH_CLOCKSOURCE_DATA=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
-# CONFIG_ARCH_HAS_SG_CHAIN is not set
+CONFIG_ARCH_HAS_SG_CHAIN=y
 CONFIG_ARCH_HAVE_CUSTOM_GPIO_H=y
 CONFIG_ARCH_HIBERNATION_POSSIBLE=y
 CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
+CONFIG_ARCH_MULTIPLATFORM=y
+CONFIG_ARCH_MULTI_CPU_AUTO=y
 # CONFIG_ARCH_MULTI_V4 is not set
 # CONFIG_ARCH_MULTI_V4T is not set
+CONFIG_ARCH_MULTI_V4_V5=y
+CONFIG_ARCH_MULTI_V5=y
 CONFIG_ARCH_NR_GPIO=0
 CONFIG_ARCH_ORION5X=y
 # CONFIG_ARCH_ORION5X_DT is not set
-CONFIG_ARCH_REQUIRE_GPIOLIB=y
 # CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
 # CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
 CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
@@ -23,15 +26,21 @@ CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ARM=y
 # CONFIG_ARM_CPU_SUSPEND is not set
+CONFIG_ARM_HAS_SG_CHAIN=y
 CONFIG_ARM_L1_CACHE_SHIFT=5
 CONFIG_ARM_PATCH_PHYS_VIRT=y
 # CONFIG_ARM_THUMB is not set
 CONFIG_ASYNC_TX_ENABLE_CHANNEL_SWITCH=y
 CONFIG_ATAGS=y
 CONFIG_AUTO_ZRELADDR=y
+CONFIG_BLK_MQ_PCI=y
 # CONFIG_CACHE_L2X0 is not set
+CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
+# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLKSRC_MMIO=y
+CONFIG_CLKSRC_OF=y
+CONFIG_CLKSRC_PROBE=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMDLINE="rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200 earlyprintk"
 CONFIG_CMDLINE_FORCE=y
@@ -58,12 +67,14 @@ CONFIG_CRYPTO_WORKQUEUE=y
 CONFIG_DEBUG_LL=y
 CONFIG_DEBUG_LL_INCLUDE="debug/8250.S"
 CONFIG_DEBUG_LL_UART_8250=y
-CONFIG_DEBUG_UART_8250=y
+# CONFIG_DEBUG_MVEBU_UART0_ALTERNATE is not set
+# CONFIG_DEBUG_UART_8250 is not set
 # CONFIG_DEBUG_UART_8250_FLOW_CONTROL is not set
 CONFIG_DEBUG_UART_8250_SHIFT=2
 # CONFIG_DEBUG_UART_8250_WORD is not set
 CONFIG_DEBUG_UART_PHYS=0xf1012000
 CONFIG_DEBUG_UART_VIRT=0xfe012000
+CONFIG_DEBUG_UNCOMPRESS=y
 # CONFIG_DEBUG_USER is not set
 CONFIG_DMADEVICES=y
 CONFIG_DMA_ENGINE=y
@@ -81,6 +92,7 @@ CONFIG_GENERIC_ALLOCATOR=y
 CONFIG_GENERIC_ATOMIC64=y
 CONFIG_GENERIC_BUG=y
 CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_EARLY_IOREMAP=y
 CONFIG_GENERIC_IDLE_POLL_SETUP=y
 CONFIG_GENERIC_IO=y
 CONFIG_GENERIC_IRQ_CHIP=y
@@ -92,7 +104,6 @@ CONFIG_GENERIC_SMP_IDLE_THREAD=y
 CONFIG_GENERIC_STRNCPY_FROM_USER=y
 CONFIG_GENERIC_STRNLEN_USER=y
 CONFIG_GPIOLIB=y
-CONFIG_GPIO_DEVRES=y
 CONFIG_GPIO_MVEBU=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_HANDLE_DOMAIN_IRQ=y
@@ -109,7 +120,7 @@ CONFIG_HAVE_ARCH_PFN_VALID=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
 CONFIG_HAVE_ARCH_TRACEHOOK=y
 # CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_BPF_JIT=y
+CONFIG_HAVE_CBPF_JIT=y
 CONFIG_HAVE_CC_STACKPROTECTOR=y
 CONFIG_HAVE_CLK=y
 CONFIG_HAVE_CLK_PREPARE=y
@@ -117,7 +128,6 @@ CONFIG_HAVE_CONTEXT_TRACKING=y
 CONFIG_HAVE_C_RECORDMCOUNT=y
 CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DMA_API_DEBUG=y
-CONFIG_HAVE_DMA_ATTRS=y
 CONFIG_HAVE_DMA_CONTIGUOUS=y
 CONFIG_HAVE_DYNAMIC_FTRACE=y
 CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
@@ -126,7 +136,6 @@ CONFIG_HAVE_FUNCTION_TRACER=y
 CONFIG_HAVE_GENERIC_DMA_COHERENT=y
 CONFIG_HAVE_IDE=y
 CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
-CONFIG_HAVE_LATENCYTOP_SUPPORT=y
 CONFIG_HAVE_MEMBLOCK=y
 CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
 CONFIG_HAVE_NET_DSA=y
@@ -179,6 +188,8 @@ CONFIG_MACH_WN802T=y
 CONFIG_MACH_WNR854T=y
 CONFIG_MACH_WRT350N_V2=y
 CONFIG_MDIO_BOARDINFO=y
+CONFIG_MIGHT_HAVE_PCI=y
+CONFIG_MIGRATION=y
 CONFIG_MMC=y
 CONFIG_MMC_MVSDIO=y
 # CONFIG_MMC_TIFM_SD is not set
@@ -203,7 +214,6 @@ CONFIG_OF_FLATTREE=y
 CONFIG_OF_GPIO=y
 CONFIG_OF_IRQ=y
 CONFIG_OF_MDIO=y
-CONFIG_OF_MTD=y
 CONFIG_OF_NET=y
 CONFIG_OF_PCI=y
 CONFIG_OF_PCI_IRQ=y
@@ -213,7 +223,8 @@ CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_ORION_WATCHDOG=y
 CONFIG_PAGE_OFFSET=0xC0000000
 CONFIG_PCI=y
-# CONFIG_PCI_DOMAINS_GENERIC is not set
+CONFIG_PCI_DOMAINS=y
+CONFIG_PCI_DOMAINS_GENERIC=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
 CONFIG_PHYLIB=y
@@ -222,18 +233,24 @@ CONFIG_PLAT_ORION_LEGACY=y
 CONFIG_RATIONAL=y
 # CONFIG_RCU_EXPERT is not set
 # CONFIG_RCU_STALL_COMMON is not set
+CONFIG_REGMAP=y
+CONFIG_REGMAP_I2C=y
 CONFIG_RTC_CLASS=y
+CONFIG_RTC_I2C_AND_SPI=y
+CONFIG_RTC_MC146818_LIB=y
 CONFIG_RWSEM_XCHGADD_ALGORITHM=y
 # CONFIG_SCHED_INFO is not set
 # CONFIG_SCSI_DMA is not set
 CONFIG_SERIAL_8250_FSL=y
+CONFIG_SPARSE_IRQ=y
 CONFIG_SPLIT_PTLOCK_CPUS=999999
 CONFIG_SRAM=y
 CONFIG_SRCU=y
 CONFIG_SWIOTLB=y
+CONFIG_SWPHY=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_TICK_CPU_ACCOUNTING=y
-CONFIG_UNCOMPRESS_INCLUDE="mach/uncompress.h"
+CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
 CONFIG_USB_SUPPORT=y
 CONFIG_USE_OF=y
 CONFIG_VECTORS_BASE=0xffff0000
@@ -243,4 +260,3 @@ CONFIG_XZ_DEC_ARM=y
 CONFIG_XZ_DEC_BCJ=y
 CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZONE_DMA_FLAG=0
diff --git a/target/linux/orion/patches-4.9/210-wn802t_support.patch b/target/linux/orion/patches-4.9/210-wn802t_support.patch
index a274beedc3..fc4a226e97 100644
--- a/target/linux/orion/patches-4.9/210-wn802t_support.patch
+++ b/target/linux/orion/patches-4.9/210-wn802t_support.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/mach-orion5x/Kconfig
 +++ b/arch/arm/mach-orion5x/Kconfig
-@@ -159,10 +159,13 @@ config MACH_MSS2_DT
+@@ -156,10 +156,13 @@ config MACH_MSS2_DT
  	  Maxtor Shared Storage II platform.
  
  config MACH_WNR854T
@@ -55,10 +55,15 @@
  		pci_common_init(&wnr854t_pci);
  
  	return 0;
-@@ -187,3 +199,15 @@ MACHINE_START(WNR854T, "Netgear WNR854T"
- 	.fixup		= tag_fixup_mem32,
- 	.restart	= orion5x_restart,
- MACHINE_END
+@@ -182,6 +194,18 @@ MACHINE_START(WNR854T, "Netgear WNR854T"
+ 	.init_machine	= wnr854t_init,
+ 	.map_io		= orion5x_map_io,
+ 	.init_early	= orion5x_init_early,
++	.init_irq	= orion5x_init_irq,
++	.init_time	= orion5x_timer_init,
++	.fixup		= tag_fixup_mem32,
++	.restart	= orion5x_restart,
++MACHINE_END
 +
 +MACHINE_START(WN802T, "Netgear WN802T")
 +	/* Maintainer: Imre Kaloz <kaloz@openwrt.org> */
@@ -66,8 +71,6 @@
 +	.init_machine	= wnr854t_init,
 +	.map_io		= orion5x_map_io,
 +	.init_early	= orion5x_init_early,
-+	.init_irq	= orion5x_init_irq,
-+	.init_time	= orion5x_timer_init,
-+	.fixup		= tag_fixup_mem32,
-+	.restart	= orion5x_restart,
-+MACHINE_END
+ 	.init_irq	= orion5x_init_irq,
+ 	.init_time	= orion5x_timer_init,
+ 	.fixup		= tag_fixup_mem32,
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
