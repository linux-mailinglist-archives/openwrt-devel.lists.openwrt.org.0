Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6B91A653E
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 12:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fgiQAvLijKJPd6ELLgpP4IVp0YcVBuOAlY4P21lj1oo=; b=bqkIq+sJkBXMwv
	OogIAzvtyKddKZMNoPdeviVWZy3Xw+AI3ENMks3FFyL+KJ/g4paDysMAOS+0v5DgBRned9ybrsYhA
	34MBxpF3ygasaKEw7Htp0C+d6sgi8CotJntjLEwoH9S/TAvpgefZsAc29lb8ZO1gBqu2D+q8kKtKC
	zSjPAkuY+IieOnZqKVZ2iPtHfFprcaL/uYq/i/X/CzJbyWo/FjDEInU5PH7LumUPMdVtKTt5t3wij
	Ehl6+vyDdqIIahA5x4RyaloQkUi0Ve6KLjw1wQfbdL1j6hMATsX+zAdK+yJo1QzJ99BVEzZpkyPh7
	+woy+SqJyta2G+zEEEKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNwQt-0005cO-Jw; Mon, 13 Apr 2020 10:35:15 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNwQa-0005bv-16
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 10:34:58 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MowOm-1iuzwI0aoI-00qQMW for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 12:34:52 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 12:33:52 +0200
Message-Id: <20200413103352.7429-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:zSKDj0inU0ci54Uug1tZ7fYZcMZGK5TXMzegVN4j/PbqwNfHy+i
 npAS1Q0GNFBLBCGV0ZPYuyi1aMOV+aQElyuWIhTgVyD4Xi9bkK1ycDg/gu4O31lCSGXSzXP
 WHec4QzR5UP0S1KZWOXsc2tjo/6WLETdlX/Dc3qU1fc9/X/BMDH/SNFdThX+AUrQy6yOwV2
 447zMSYrhnvEpesHkPBng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EIg698KjDKM=:CpVw646lmwowZlZxFCS/Ri
 wps+NTeiXn1VBNIU9jxxdvw07b4poI2bFYv/jwYz9XSm5SlGHBbsnImpsHxUFlRNQAZO3ZefY
 bQPfLh0bi77jOOl37ps101hKy7qZAJNoqtcNDN2kDeoOFGitTNoAxR2sEn6a9dmdT1xEeoorZ
 SS0X5xv790nsgXkNLTJQ2DVYoUgjg06W91TEOzxNLvDEcY7/RSn8b7abuRXj5L0DV1CfPlnxV
 6CCCteN0OQEpo7uc4wacWjm5/BvOT8O7fYxPkonatD2KPT6RfAAZB7K8V1KWJ4HGRQYyblNwM
 ql9OVjRhqcYGvYxpx1JeumbuR8f6dnKoR6zOcPC70HmkI4+OVUZSes0ARGt0WE/gJUiTUe/v+
 VHA3Dm8JdMaZOFWUhChlMCPR0+5dshJzox6MuCvkDRS9XJ3/QA0c96krodtF+5+NO3HQ78WS0
 cvUpyi9BqxZSbNu/8mUi/sZNHnOjGBnfjiEpudmo1Q1pDgP5am+HUWzNal/G1V969culdEy1H
 J1MAVuA1Ozal72dhyW3MwBzAIm7jAkqGNzOnAr3QmuP3cMH+0YaGK/5DiIuRBFgZ3bwg9Jvu5
 H/lkL2DyBgvNmkMESJEqTmXOuy6A1aq2Mtlnyq0DOgWmiqV6f8dN4mae5HIfqTN9IUaOMKRhU
 GdJzfOJMfC87ZdszYbE4CTCiL2CjL8XVXsC4v5u6c8SjOehq/ssbkB8rSRkg9Jg45Ee7OoeBX
 sMTqR8EOcfdeNSbLqABtkYXaooTL8aZkY9EYFvYkiUkZBUcunGYKRMfaAeoNjWCFCcmP8qKdE
 fu7EO1Arc4NIZyAjMsgwR0QSBvcja6sOo9BkjOP69fx2tli3pc5uG9t1j6SGs9xWaC5dze3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_033456_370100_08BD3A2F 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [RFT PATCH] arc770: bump kernel to 5.4
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

Update config with make kernel_oldconfig and copy patch.

Directly switch to kernel 5.4.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

I just stupidly copied/refreshed the patch and the config.

Build-tested, run-test required as I have no hardware.

---
 target/linux/arc770/Makefile                  |   2 +-
 target/linux/arc770/config-5.4                | 198 ++++++++++++++++++
 ...c-Disable-frame-filtering-completely.patch |  31 +++
 3 files changed, 230 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/arc770/config-5.4
 create mode 100644 target/linux/arc770/patches-5.4/700-stmmac-Disable-frame-filtering-completely.patch

diff --git a/target/linux/arc770/Makefile b/target/linux/arc770/Makefile
index 8150f147c5..a182ef16a5 100644
--- a/target/linux/arc770/Makefile
+++ b/target/linux/arc770/Makefile
@@ -11,7 +11,7 @@ BOARD:=arc770
 BOARDNAME:=Synopsys DesignWare ARC 770D
 SUBTARGETS:=generic
 
-KERNEL_PATCHVER:=4.14
+KERNEL_PATCHVER:=5.4
 
 DEVICE_TYPE:=developerboard
 
diff --git a/target/linux/arc770/config-5.4 b/target/linux/arc770/config-5.4
new file mode 100644
index 0000000000..ce712b4c34
--- /dev/null
+++ b/target/linux/arc770/config-5.4
@@ -0,0 +1,198 @@
+# CONFIG_16KSTACKS is not set
+CONFIG_ARC=y
+CONFIG_ARCH_32BIT_OFF_T=y
+CONFIG_ARCH_HAS_CACHE_LINE_SIZE=y
+CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN=y
+CONFIG_ARCH_HAS_DMA_PREP_COHERENT=y
+CONFIG_ARCH_HAS_PTE_SPECIAL=y
+CONFIG_ARCH_HAS_SETUP_DMA_OPS=y
+CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=y
+CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=y
+CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
+CONFIG_ARC_BUILTIN_DTB_NAME=""
+CONFIG_ARC_CACHE=y
+CONFIG_ARC_CACHE_LINE_SHIFT=5
+CONFIG_ARC_CACHE_PAGES=y
+# CONFIG_ARC_CACHE_VIPT_ALIASING is not set
+# CONFIG_ARC_COMPACT_IRQ_LEVELS is not set
+# CONFIG_ARC_CPU_750D is not set
+CONFIG_ARC_CPU_770=y
+CONFIG_ARC_CURR_IN_REG=y
+CONFIG_ARC_DBG=y
+# CONFIG_ARC_DBG_TLB_PARANOIA is not set
+CONFIG_ARC_DW2_UNWIND=y
+CONFIG_ARC_EMUL_UNALIGNED=y
+# CONFIG_ARC_FPU_SAVE_RESTORE is not set
+CONFIG_ARC_HAS_DCACHE=y
+# CONFIG_ARC_HAS_DCCM is not set
+CONFIG_ARC_HAS_ICACHE=y
+# CONFIG_ARC_HAS_ICCM is not set
+CONFIG_ARC_HAS_LLSC=y
+CONFIG_ARC_HAS_SWAPE=y
+CONFIG_ARC_KVADDR_SIZE=256
+# CONFIG_ARC_METAWARE_HLINK is not set
+# CONFIG_ARC_MMU_V1 is not set
+# CONFIG_ARC_MMU_V2 is not set
+CONFIG_ARC_MMU_V3=y
+# CONFIG_ARC_PAGE_SIZE_16K is not set
+# CONFIG_ARC_PAGE_SIZE_4K is not set
+CONFIG_ARC_PAGE_SIZE_8K=y
+CONFIG_ARC_PLAT_AXS10X=y
+# CONFIG_ARC_PLAT_EZNPS is not set
+# CONFIG_ARC_PLAT_TB10X is not set
+CONFIG_ARC_TIMERS=y
+CONFIG_AXS101=y
+CONFIG_CC_HAS_KASAN_GENERIC=y
+# CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3 is not set
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_CLONE_BACKWARDS=y
+CONFIG_COMMON_CLK=y
+CONFIG_COMPAT_32BIT_TIME=y
+CONFIG_CPU_NO_EFFICIENT_FFS=y
+CONFIG_CRC16=y
+CONFIG_CRYPTO_CRC32C=y
+CONFIG_CRYPTO_HASH=y
+CONFIG_CRYPTO_HASH2=y
+CONFIG_CRYPTO_RNG2=y
+CONFIG_DMA_DIRECT_REMAP=y
+CONFIG_DMA_REMAP=y
+CONFIG_DTC=y
+CONFIG_DWMAC_ANARION=y
+CONFIG_DWMAC_GENERIC=y
+CONFIG_DW_APB_ICTL=y
+CONFIG_EXT4_FS=y
+# CONFIG_EZNPS_GIC is not set
+CONFIG_FIXED_PHY=y
+CONFIG_FS_IOMAP=y
+CONFIG_FS_MBCACHE=y
+CONFIG_FW_LOADER_PAGED_BUF=y
+CONFIG_GENERIC_ALLOCATOR=y
+CONFIG_GENERIC_ATOMIC64=y
+CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CSUM=y
+CONFIG_GENERIC_FIND_FIRST_BIT=y
+CONFIG_GENERIC_IRQ_CHIP=y
+CONFIG_GENERIC_IRQ_SHOW=y
+CONFIG_GENERIC_PCI_IOMAP=y
+CONFIG_GENERIC_SCHED_CLOCK=y
+CONFIG_GENERIC_SMP_IDLE_THREAD=y
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_DWAPB=y
+CONFIG_GPIO_GENERIC=y
+# CONFIG_GPIO_SNPS_CREG is not set
+CONFIG_HANDLE_DOMAIN_IRQ=y
+CONFIG_HAS_DMA=y
+CONFIG_HAS_IOMEM=y
+CONFIG_HAVE_ARCH_KGDB=y
+CONFIG_HAVE_ARCH_TRACEHOOK=y
+CONFIG_HAVE_CLK=y
+CONFIG_HAVE_CLK_PREPARE=y
+CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
+CONFIG_HAVE_FUTEX_CMPXCHG=y
+CONFIG_HAVE_IOREMAP_PROT=y
+CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
+CONFIG_HAVE_NET_DSA=y
+CONFIG_HAVE_OPROFILE=y
+CONFIG_HAVE_PCI=y
+CONFIG_HAVE_PERF_EVENTS=y
+CONFIG_HZ=100
+CONFIG_HZ_PERIODIC=y
+CONFIG_INITRAMFS_SOURCE=""
+CONFIG_IRQCHIP=y
+CONFIG_IRQ_DOMAIN=y
+CONFIG_IRQ_WORK=y
+CONFIG_ISA_ARCOMPACT=y
+# CONFIG_ISA_ARCV2 is not set
+CONFIG_JBD2=y
+CONFIG_KALLSYMS=y
+CONFIG_KERNEL_GZIP=y
+CONFIG_LIBFDT=y
+CONFIG_LINUX_LINK_BASE=0x80000000
+CONFIG_LINUX_RAM_BASE=0x80000000
+CONFIG_LOCK_DEBUGGING_SUPPORT=y
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
+CONFIG_MEMFD_CREATE=y
+CONFIG_MFD_SYSCON=y
+CONFIG_MIGRATION=y
+CONFIG_MMC=y
+CONFIG_MMC_BLOCK=y
+CONFIG_MMC_DW=y
+# CONFIG_MMC_DW_BLUEFIELD is not set
+# CONFIG_MMC_DW_EXYNOS is not set
+# CONFIG_MMC_DW_HI3798CV200 is not set
+# CONFIG_MMC_DW_K3 is not set
+CONFIG_MMC_DW_PLTFM=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MODULES_USE_ELF_RELA=y
+CONFIG_NATIONAL_PHY=y
+CONFIG_NEED_DMA_MAP_STATE=y
+CONFIG_NEED_PER_CPU_KM=y
+CONFIG_NET_PTP_CLASSIFY=y
+# CONFIG_NET_VENDOR_ARC is not set
+# CONFIG_NET_VENDOR_BROADCOM is not set
+# CONFIG_NET_VENDOR_INTEL is not set
+# CONFIG_NET_VENDOR_MARVELL is not set
+# CONFIG_NET_VENDOR_MICREL is not set
+# CONFIG_NET_VENDOR_NATSEMI is not set
+# CONFIG_NET_VENDOR_QUALCOMM is not set
+# CONFIG_NET_VENDOR_ROCKER is not set
+# CONFIG_NET_VENDOR_SAMSUNG is not set
+# CONFIG_NET_VENDOR_SEEQ is not set
+# CONFIG_NET_VENDOR_VIA is not set
+# CONFIG_NET_VENDOR_WIZNET is not set
+CONFIG_NO_IOPORT_MAP=y
+CONFIG_OF=y
+CONFIG_OF_ADDRESS=y
+CONFIG_OF_EARLY_FLATTREE=y
+CONFIG_OF_FLATTREE=y
+CONFIG_OF_GPIO=y
+CONFIG_OF_IRQ=y
+CONFIG_OF_KOBJ=y
+CONFIG_OF_MDIO=y
+CONFIG_OF_NET=y
+CONFIG_PAGE_POOL=y
+CONFIG_PGTABLE_LEVELS=2
+CONFIG_PHYLIB=y
+CONFIG_PHYLINK=y
+CONFIG_PPS=y
+CONFIG_PREEMPT=y
+CONFIG_PREEMPTION=y
+CONFIG_PREEMPT_COUNT=y
+# CONFIG_PREEMPT_NONE is not set
+CONFIG_PREEMPT_RCU=y
+CONFIG_PTP_1588_CLOCK=y
+CONFIG_RATIONAL=y
+CONFIG_RCU_NEED_SEGCBLIST=y
+CONFIG_RCU_STALL_COMMON=y
+CONFIG_REGMAP=y
+CONFIG_REGMAP_MMIO=y
+CONFIG_RESET_AXS10X=y
+CONFIG_RESET_CONTROLLER=y
+CONFIG_RESET_SIMPLE=y
+CONFIG_SERIAL_8250_DEPRECATED_OPTIONS=y
+CONFIG_SERIAL_8250_DW=y
+CONFIG_SERIAL_8250_DWLIB=y
+CONFIG_SERIAL_8250_NR_UARTS=4
+CONFIG_SERIAL_8250_RUNTIME_UARTS=4
+CONFIG_SERIAL_ARC=y
+CONFIG_SERIAL_ARC_CONSOLE=y
+CONFIG_SERIAL_ARC_NR_PORTS=1
+CONFIG_SERIAL_MCTRL_GPIO=y
+CONFIG_SERIAL_OF_PLATFORM=y
+CONFIG_SRCU=y
+CONFIG_STACKTRACE=y
+CONFIG_STMMAC_ETH=y
+CONFIG_STMMAC_PLATFORM=y
+# CONFIG_STMMAC_SELFTESTS is not set
+CONFIG_SWPHY=y
+CONFIG_SYSCTL_ARCH_UNALIGN_ALLOW=y
+CONFIG_SYSCTL_ARCH_UNALIGN_NO_WARN=y
+CONFIG_TASKS_RCU=y
+CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TIMER_OF=y
+CONFIG_TIMER_PROBE=y
+CONFIG_TREE_SRCU=y
+CONFIG_UNINLINE_SPIN_UNLOCK=y
+CONFIG_USB_SUPPORT=y
diff --git a/target/linux/arc770/patches-5.4/700-stmmac-Disable-frame-filtering-completely.patch b/target/linux/arc770/patches-5.4/700-stmmac-Disable-frame-filtering-completely.patch
new file mode 100644
index 0000000000..9adfcb1be2
--- /dev/null
+++ b/target/linux/arc770/patches-5.4/700-stmmac-Disable-frame-filtering-completely.patch
@@ -0,0 +1,31 @@
+From 0031b9011cb2b2b1de4dbb4f9620303aec760db4 Mon Sep 17 00:00:00 2001
+From: Alexey Brodkin <abrodkin@synopsys.com>
+Date: Wed, 27 Jul 2016 11:33:14 +0300
+Subject: [PATCH] stmmac: Disable frame filtering completely
+
+For some [still unknown] reason in ARC SDP boards
+DW GMAC doesn't enter promiscuous mode if eth0 gets
+added to the br-lan interface before Ethernet PHY finishes
+autonegotiation (PHY gets reset on DW GMAC start).
+
+As a work-around we completely disable frame filtering
+in GMAC hardware which gives us working bridge that consists
+of eth0 and wlan0 (USB Wi-Fi dongle). I.e. we finally have
+working "Dumb AP" setup made of ARC AXS10x boards.
+
+Signed-off-by: Alexey Brodkin <abrodkin@synopsys.com>
+---
+ drivers/net/ethernet/stmicro/stmmac/common.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- a/drivers/net/ethernet/stmicro/stmmac/common.h
++++ b/drivers/net/ethernet/stmicro/stmmac/common.h
+@@ -42,7 +42,7 @@
+ #define STMMAC_GET_ENTRY(x, size)	((x + 1) & (size - 1))
+ 
+ #undef FRAME_FILTER_DEBUG
+-/* #define FRAME_FILTER_DEBUG */
++#define FRAME_FILTER_DEBUG
+ 
+ /* Extra statistic and debug information exposed by ethtool */
+ struct stmmac_extra_stats {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
