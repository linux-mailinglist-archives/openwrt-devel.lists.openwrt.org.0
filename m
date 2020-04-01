Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E75819B89E
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 00:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5MNT6L7yYLbFGx32LHGkdRMevkcpBEWNzJzvxvo2p9g=; b=eTs/0cFmfjb3dWKx9xWfVPb8zt
	YUt6AbX9Gs9Qajn7BeTIClzj0IWtLU/FHbbCUmRVpxw3D8Z3uoV6hmIyDENwXeCzNe8yvOMqeJ1p3
	eWSLVhfvbIrqSNSr7LkYzldlGhlE+mqwmkaVTJ0D/kNi9Eh+OIgYdwTFzyjM24wzvxgidDLm50LU8
	RHoWwx0lO/sY/2Iq/B0AX+wYe5Si1JoF9JGJdT4euJzdTXFnIjMk4ssrUTiPJJuLtV1iOB1JSttJA
	ckkEIRpmJdrUJvW1hVLNW7Mf5bQaOX7u4L9Qr8JgA9sw6rUI3dQ5FHfhrjirvEfvHtALoRBYPNgV9
	4g1P0vJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJm74-0000Ty-JJ; Wed, 01 Apr 2020 22:45:34 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJm6Q-00069l-40
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 22:44:58 +0000
Received: from buildfff.adridolf.com ([188.192.133.231]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MFb38-1jYdfm1Yuk-00H6Ra for <openwrt-devel@lists.openwrt.org>; Thu, 02
 Apr 2020 00:44:52 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Apr 2020 00:44:03 +0200
Message-Id: <20200401224403.2741-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200401224403.2741-1-freifunk@adrianschmutzler.de>
References: <20200401224403.2741-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:+5gS3DR8gdUYsOFdHMjghUFy3UD/Xs5f5gW3PpAred+bqgTL6KG
 Va0KRhlqU4XLxRl78tmToI34UxqXWeuK6RRqwjzFxojTdhda/ng9nzHfgtAR+r1zvzCk9xR
 pfMK0F6RXjiPvyu1UsUgifIZD5nBThrVrC+ZcLgQ8vnsULdeV7hE6kw8hEDqzwXWwcMvI53
 nHfAkrLFihGUl8Uy3Ukgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yywNoni4bo8=:/H7FrgVLrij+c80RcQByvV
 4ifmHmYb/NNcfA1kkrJO8F/cHxoZvcRestTmBd6uBpRMZwccisqWtWAtX4sDcyaPbDnppk21F
 QgespDRCyOdKhXrEZISb9F1jFUnJCYtAD161Xj7QX/EwjCgMOSsp/QzqVjfDXCZ2W7I/XW0bo
 ecdJ96DVOJ1VEfpnuKlcTMEgDlT/hvJcfQs0pVFvW3LbV8KWIqMid/O7bkC+liV+L/Mf5bbsI
 Ct/4eiFJRioKK/FWVi3pXtFzyQtwoM51GI2DEO3I2AIFa3oCcTTdbPV4yUdMPqbJaQlzt1q0P
 kdzmzFlsd0zMFDIwPzztof7ExRNQm0XUC2p8M5b7bDRpN289dh6G+78x+WHz0jPmfqp0BLpLO
 B11af+wnCzq10Ba0tQ2PdFSQ91bgaKLstqe2fKRNO1euQjsgVa7dZ8VcjwYhZad67aVgxlINa
 R1Z+43ZKyrJ0hokSPs0awpz+Iez4d0EXcoCbxyJc8OK8HYLqZlg2NNFn77yzkPL3q6OrgC3oU
 nUYUhtRxP6mROtnuCFEQ+5tp835qf9oXtW9u9fbHvPub2eEh1ATZr5jfjIS294+vxJ6siOKwf
 byg/xe61cxBEsHsBulFRFhulHVxMydb+TqnHq1vDwNDX0Pw10H82mcrBOO08jjxAsy7ZDNHgn
 /yr3jF9aFOA1sgKmdXRkos99MI5pDojmoe3RCL2TN6hMdbbW8xB+NbjL31ndsaVOVoT9THKNR
 vP3JvJG4wgFJ7jS3YtYJ0FmqIAkjyFQIxAOpwQdp9GkIzei15ASXop+lKp3CB0Z45g/4FOKHT
 JiSA5bTclcXJE0DSndCyvQgpWPKkEEqIoQieD4zCdyfZLZgmhy2YJugEbNO1YGjvm8vBuLt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_154454_760946_869FD6CD 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] cns3xx: remove support for kernel 4.14
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

This target has been on kernel 4.19 for nine months now [1], and
has had testing support for even longer [2].
This should be long enough to drop support for kernel 4.14.

[1] 545bfbc3a922 ("cns3xxx: switch to kernel 4.19")
[2] c6bebe1a9496 ("cns3xxx: add support for kernel 4.19")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/cns3xxx/config-4.14              | 380 ------------------
 .../000-cns3xxx_arch_include.patch            |   9 -
 .../001-arm_openwrt_machtypes.patch           |  10 -
 ...-arm_introduce-dma-fiq-irq-broadcast.patch |  80 ----
 .../patches-4.14/020-watchdog_support.patch   | 184 ---------
 .../patches-4.14/025-smp_support.patch        |  30 --
 .../cns3xxx/patches-4.14/030-pcie_clock.patch |  11 -
 .../patches-4.14/040-fiq_support.patch        |  40 --
 .../cns3xxx/patches-4.14/045-twd_base.patch   |  43 --
 .../cns3xxx/patches-4.14/055-pcie_io.patch    |  19 -
 .../cns3xxx/patches-4.14/060-pcie_abort.patch | 109 -----
 .../patches-4.14/065-pcie_skip_inactive.patch |  11 -
 .../patches-4.14/070-i2c_support.patch        |  31 --
 .../patches-4.14/075-spi_support.patch        |  51 ---
 .../patches-4.14/080-sata_support.patch       |  26 --
 .../cns3xxx/patches-4.14/090-timers.patch     | 105 -----
 .../093-add-virt-pci-io-mapping.patch         |  41 --
 .../patches-4.14/095-gpio_support.patch       |  67 ---
 .../097-l2x0_cmdline_disable.patch            |  69 ----
 .../patches-4.14/100-laguna_support.patch     |  46 ---
 .../101-laguna_sdhci_card_detect.patch        |  14 -
 .../110-pci_isolated_interrupts.patch         |  95 -----
 ...-set-MRSS-128-to-fix-CNS3xxx-BM-DMA..patch |  23 --
 .../200-broadcom_phy_reinit.patch             |  15 -
 .../patches-4.14/210-dwc2_defaults.patch      |  63 ---
 25 files changed, 1572 deletions(-)
 delete mode 100644 target/linux/cns3xxx/config-4.14
 delete mode 100644 target/linux/cns3xxx/patches-4.14/000-cns3xxx_arch_include.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/001-arm_openwrt_machtypes.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/010-arm_introduce-dma-fiq-irq-broadcast.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/020-watchdog_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/025-smp_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/030-pcie_clock.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/040-fiq_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/045-twd_base.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/055-pcie_io.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/060-pcie_abort.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/065-pcie_skip_inactive.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/070-i2c_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/075-spi_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/080-sata_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/090-timers.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/093-add-virt-pci-io-mapping.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/095-gpio_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/097-l2x0_cmdline_disable.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/100-laguna_support.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/101-laguna_sdhci_card_detect.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/110-pci_isolated_interrupts.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/130-Extend-PCIE_BUS_PEER2PEER-to-set-MRSS-128-to-fix-CNS3xxx-BM-DMA..patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/200-broadcom_phy_reinit.patch
 delete mode 100644 target/linux/cns3xxx/patches-4.14/210-dwc2_defaults.patch

diff --git a/target/linux/cns3xxx/config-4.14 b/target/linux/cns3xxx/config-4.14
deleted file mode 100644
index 54f7576ea5..0000000000
--- a/target/linux/cns3xxx/config-4.14
+++ /dev/null
@@ -1,380 +0,0 @@
-# CONFIG_AIO is not set
-CONFIG_ALIGNMENT_TRAP=y
-CONFIG_ARCH_CLOCKSOURCE_DATA=y
-CONFIG_ARCH_CNS3XXX=y
-CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
-CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
-CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
-CONFIG_ARCH_HAS_SET_MEMORY=y
-CONFIG_ARCH_HAS_SG_CHAIN=y
-CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
-CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
-CONFIG_ARCH_HAS_TICK_BROADCAST=y
-CONFIG_ARCH_HAVE_CUSTOM_GPIO_H=y
-CONFIG_ARCH_HIBERNATION_POSSIBLE=y
-CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
-CONFIG_ARCH_MULTIPLATFORM=y
-# CONFIG_ARCH_MULTI_CPU_AUTO is not set
-CONFIG_ARCH_MULTI_V6=y
-CONFIG_ARCH_MULTI_V6_V7=y
-CONFIG_ARCH_NR_GPIO=0
-CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
-# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
-# CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
-# CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
-CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
-CONFIG_ARCH_SUPPORTS_UPROBES=y
-CONFIG_ARCH_SUSPEND_POSSIBLE=y
-CONFIG_ARCH_USE_BUILTIN_BSWAP=y
-CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
-CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
-CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
-CONFIG_ARM=y
-# CONFIG_ARM_CPU_SUSPEND is not set
-CONFIG_ARM_GIC=y
-CONFIG_ARM_HAS_SG_CHAIN=y
-CONFIG_ARM_HEAVY_MB=y
-CONFIG_ARM_L1_CACHE_SHIFT=5
-CONFIG_ARM_PATCH_PHYS_VIRT=y
-CONFIG_ARM_THUMB=y
-CONFIG_ATA=y
-CONFIG_ATAGS=y
-# CONFIG_ATA_SFF is not set
-CONFIG_ATA_VERBOSE_ERROR=y
-CONFIG_AUTO_ZRELADDR=y
-CONFIG_BCM_NET_PHYLIB=y
-CONFIG_BLK_DEV_SD=y
-CONFIG_BLK_MQ_PCI=y
-CONFIG_BLK_SCSI_REQUEST=y
-CONFIG_BROADCOM_PHY=y
-CONFIG_CACHE_L2X0=y
-CONFIG_CC_STACKPROTECTOR=y
-# CONFIG_CC_STACKPROTECTOR_NONE is not set
-CONFIG_CC_STACKPROTECTOR_REGULAR=y
-CONFIG_CLKDEV_LOOKUP=y
-CONFIG_CLONE_BACKWARDS=y
-CONFIG_CMDLINE="console=ttyS0,115200"
-CONFIG_CMDLINE_FORCE=y
-CONFIG_CNS3XXX_ETH=y
-CONFIG_COMMON_CLK=y
-CONFIG_COREDUMP=y
-CONFIG_CPU_32v6=y
-CONFIG_CPU_32v6K=y
-CONFIG_CPU_ABRT_EV6=y
-# CONFIG_CPU_BPREDICT_DISABLE is not set
-CONFIG_CPU_CACHE_V6=y
-CONFIG_CPU_CACHE_VIPT=y
-CONFIG_CPU_COPY_V6=y
-CONFIG_CPU_CP15=y
-CONFIG_CPU_CP15_MMU=y
-CONFIG_CPU_HAS_ASID=y
-# CONFIG_CPU_ICACHE_DISABLE is not set
-CONFIG_CPU_PABRT_V6=y
-CONFIG_CPU_RMAP=y
-CONFIG_CPU_THUMB_CAPABLE=y
-CONFIG_CPU_TLB_V6=y
-CONFIG_CPU_V6K=y
-CONFIG_CRASH_DUMP=y
-CONFIG_CRC_CCITT=m
-CONFIG_CRYPTO_AEAD=y
-CONFIG_CRYPTO_AEAD2=y
-CONFIG_CRYPTO_HASH2=y
-CONFIG_CRYPTO_MANAGER=y
-CONFIG_CRYPTO_MANAGER2=y
-CONFIG_CRYPTO_NULL2=y
-CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_WORKQUEUE=y
-CONFIG_DCACHE_WORD_ACCESS=y
-CONFIG_DEBUG_ALIGN_RODATA=y
-CONFIG_DEBUG_BUGVERBOSE=y
-CONFIG_DEBUG_INFO=y
-CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
-# CONFIG_DEBUG_UART_8250 is not set
-# CONFIG_DEBUG_USER is not set
-CONFIG_DMA_CACHE_FIQ_BROADCAST=y
-CONFIG_DTC=y
-CONFIG_EDAC_ATOMIC_SCRUB=y
-CONFIG_EDAC_SUPPORT=y
-CONFIG_EEPROM_AT24=y
-CONFIG_ELF_CORE=y
-CONFIG_FIQ=y
-CONFIG_FIXED_PHY=y
-CONFIG_FIX_EARLYCON_MEM=y
-CONFIG_FRAME_POINTER=y
-CONFIG_GENERIC_ALLOCATOR=y
-CONFIG_GENERIC_BUG=y
-CONFIG_GENERIC_CLOCKEVENTS=y
-CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
-CONFIG_GENERIC_CPU_AUTOPROBE=y
-CONFIG_GENERIC_EARLY_IOREMAP=y
-CONFIG_GENERIC_IDLE_POLL_SETUP=y
-CONFIG_GENERIC_IO=y
-CONFIG_GENERIC_IRQ_CHIP=y
-CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
-CONFIG_GENERIC_IRQ_SHOW=y
-CONFIG_GENERIC_IRQ_SHOW_LEVEL=y
-CONFIG_GENERIC_PCI_IOMAP=y
-CONFIG_GENERIC_SCHED_CLOCK=y
-CONFIG_GENERIC_SMP_IDLE_THREAD=y
-CONFIG_GENERIC_STRNCPY_FROM_USER=y
-CONFIG_GENERIC_STRNLEN_USER=y
-CONFIG_GLOB=y
-CONFIG_GPIOLIB=y
-CONFIG_GPIOLIB_IRQCHIP=y
-CONFIG_GPIO_PCA953X=y
-CONFIG_GPIO_PCA953X_IRQ=y
-CONFIG_GPIO_SYSFS=y
-# CONFIG_GRO_CELLS is not set
-CONFIG_HANDLE_DOMAIN_IRQ=y
-CONFIG_HARDIRQS_SW_RESEND=y
-CONFIG_HAS_DMA=y
-CONFIG_HAS_IOMEM=y
-CONFIG_HAS_IOPORT_MAP=y
-# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
-CONFIG_HAVE_ARCH_AUDITSYSCALL=y
-# CONFIG_HAVE_ARCH_BITREVERSE is not set
-CONFIG_HAVE_ARCH_JUMP_LABEL=y
-CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_PFN_VALID=y
-CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
-CONFIG_HAVE_ARCH_TRACEHOOK=y
-CONFIG_HAVE_ARM_SCU=y
-CONFIG_HAVE_ARM_TWD=y
-# CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_CC_STACKPROTECTOR=y
-CONFIG_HAVE_CLK=y
-CONFIG_HAVE_CLK_PREPARE=y
-CONFIG_HAVE_CONTEXT_TRACKING=y
-CONFIG_HAVE_C_RECORDMCOUNT=y
-CONFIG_HAVE_DEBUG_KMEMLEAK=y
-CONFIG_HAVE_DMA_API_DEBUG=y
-CONFIG_HAVE_DMA_CONTIGUOUS=y
-CONFIG_HAVE_DYNAMIC_FTRACE=y
-CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
-CONFIG_HAVE_EBPF_JIT=y
-CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
-CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
-CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
-CONFIG_HAVE_FUNCTION_TRACER=y
-CONFIG_HAVE_GENERIC_DMA_COHERENT=y
-CONFIG_HAVE_IDE=y
-CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
-CONFIG_HAVE_MEMBLOCK=y
-CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
-CONFIG_HAVE_NET_DSA=y
-CONFIG_HAVE_OPROFILE=y
-CONFIG_HAVE_OPTPROBES=y
-CONFIG_HAVE_PERF_EVENTS=y
-CONFIG_HAVE_PERF_REGS=y
-CONFIG_HAVE_PERF_USER_STACK_DUMP=y
-CONFIG_HAVE_PROC_CPU=y
-CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
-CONFIG_HAVE_SMP=y
-CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
-CONFIG_HAVE_UID16=y
-CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
-CONFIG_HWMON=y
-CONFIG_HZ_FIXED=0
-CONFIG_HZ_PERIODIC=y
-CONFIG_I2C=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_I2C_CHARDEV=y
-CONFIG_I2C_CNS3XXX=y
-# CONFIG_INITRAMFS_FORCE is not set
-CONFIG_INITRAMFS_SOURCE=""
-CONFIG_IOMMU_HELPER=y
-CONFIG_IP6_NF_FILTER=m
-CONFIG_IP6_NF_IPTABLES=m
-CONFIG_IP6_NF_MANGLE=m
-CONFIG_IP6_NF_TARGET_REJECT=m
-CONFIG_IPV6=y
-CONFIG_IPV6_MROUTE=y
-CONFIG_IPV6_MULTIPLE_TABLES=y
-# CONFIG_IPV6_PIMSM_V2 is not set
-CONFIG_IPV6_SUBTREES=y
-CONFIG_IP_NF_FILTER=m
-CONFIG_IP_NF_IPTABLES=m
-CONFIG_IP_NF_MANGLE=m
-CONFIG_IP_NF_NAT=m
-CONFIG_IP_NF_TARGET_MASQUERADE=m
-CONFIG_IP_NF_TARGET_REDIRECT=m
-CONFIG_IP_NF_TARGET_REJECT=m
-CONFIG_IRQCHIP=y
-CONFIG_IRQ_DOMAIN=y
-CONFIG_IRQ_DOMAIN_HIERARCHY=y
-CONFIG_IRQ_FORCED_THREADING=y
-CONFIG_IRQ_WORK=y
-CONFIG_KALLSYMS=y
-CONFIG_KALLSYMS_UNCOMPRESSED=y
-CONFIG_LEDS_GPIO=y
-# CONFIG_LEDS_TRIGGER_NETDEV is not set
-CONFIG_LIBFDT=y
-CONFIG_LOCK_SPIN_ON_OWNER=y
-# CONFIG_MACH_CNS3420VB is not set
-CONFIG_MACH_GW2388=y
-CONFIG_MAGIC_SYSRQ=y
-CONFIG_MDIO_BUS=y
-CONFIG_MDIO_DEVICE=y
-CONFIG_MIGHT_HAVE_CACHE_L2X0=y
-CONFIG_MIGHT_HAVE_PCI=y
-CONFIG_MIGRATION=y
-CONFIG_MMC=y
-CONFIG_MMC_BLOCK=y
-CONFIG_MMC_SDHCI=y
-CONFIG_MMC_SDHCI_CNS3XXX=y
-# CONFIG_MMC_SDHCI_PCI is not set
-CONFIG_MMC_SDHCI_PLTFM=y
-# CONFIG_MMC_TIFM_SD is not set
-CONFIG_MODULES_USE_ELF_REL=y
-CONFIG_MPCORE_WATCHDOG=y
-CONFIG_MTD_M25P80=y
-# CONFIG_MTD_OF_PARTS is not set
-CONFIG_MTD_PHYSMAP=y
-# CONFIG_MTD_PHYSMAP_OF is not set
-CONFIG_MTD_SPI_NOR=y
-CONFIG_MTD_SPLIT_FIRMWARE=y
-CONFIG_MTD_SPLIT_UIMAGE_FW=y
-CONFIG_MULTI_IRQ_HANDLER=y
-CONFIG_MUTEX_SPIN_ON_OWNER=y
-CONFIG_NEED_DMA_MAP_STATE=y
-CONFIG_NETFILTER=y
-CONFIG_NETFILTER_ADVANCED=y
-CONFIG_NETFILTER_XTABLES=m
-CONFIG_NETFILTER_XT_MARK=m
-CONFIG_NETFILTER_XT_MATCH_COMMENT=m
-CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
-CONFIG_NETFILTER_XT_MATCH_LIMIT=m
-CONFIG_NETFILTER_XT_MATCH_MAC=m
-CONFIG_NETFILTER_XT_MATCH_MULTIPORT=m
-CONFIG_NETFILTER_XT_MATCH_STATE=m
-CONFIG_NETFILTER_XT_MATCH_TIME=m
-CONFIG_NETFILTER_XT_NAT=m
-CONFIG_NETFILTER_XT_TARGET_LOG=m
-CONFIG_NETFILTER_XT_TARGET_REDIRECT=m
-CONFIG_NETFILTER_XT_TARGET_TCPMSS=m
-CONFIG_NET_FLOW_LIMIT=y
-CONFIG_NF_CONNTRACK=m
-CONFIG_NF_CONNTRACK_IPV4=m
-CONFIG_NF_CONNTRACK_IPV6=m
-CONFIG_NF_CONNTRACK_RTCACHE=m
-CONFIG_NF_DEFRAG_IPV4=m
-CONFIG_NF_DEFRAG_IPV6=m
-CONFIG_NF_LOG_COMMON=m
-CONFIG_NF_LOG_IPV4=m
-CONFIG_NF_LOG_IPV6=m
-CONFIG_NF_NAT=m
-CONFIG_NF_NAT_IPV4=m
-CONFIG_NF_NAT_MASQUERADE_IPV4=m
-CONFIG_NF_NAT_NEEDED=y
-CONFIG_NF_NAT_REDIRECT=m
-CONFIG_NF_REJECT_IPV4=m
-CONFIG_NF_REJECT_IPV6=m
-CONFIG_NLS=y
-CONFIG_NO_BOOTMEM=y
-CONFIG_NR_CPUS=2
-CONFIG_NTP_PPS=y
-CONFIG_NVMEM=y
-CONFIG_OF=y
-CONFIG_OF_ADDRESS=y
-CONFIG_OF_ADDRESS_PCI=y
-CONFIG_OF_EARLY_FLATTREE=y
-CONFIG_OF_FLATTREE=y
-CONFIG_OF_GPIO=y
-CONFIG_OF_IRQ=y
-CONFIG_OF_MDIO=y
-CONFIG_OF_NET=y
-CONFIG_OF_PCI=y
-CONFIG_OF_PCI_IRQ=y
-CONFIG_OF_RESERVED_MEM=y
-CONFIG_OLD_SIGACTION=y
-CONFIG_OLD_SIGSUSPEND3=y
-CONFIG_OUTER_CACHE=y
-CONFIG_OUTER_CACHE_SYNC=y
-CONFIG_PADATA=y
-CONFIG_PAGE_OFFSET=0xC0000000
-CONFIG_PCI=y
-CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
-CONFIG_PCI_DOMAINS=y
-CONFIG_PCI_DOMAINS_GENERIC=y
-CONFIG_PERF_USE_VMALLOC=y
-CONFIG_PGTABLE_LEVELS=2
-CONFIG_PHYLIB=y
-CONFIG_PL310_ERRATA_588369=y
-CONFIG_PL310_ERRATA_727915=y
-CONFIG_PL310_ERRATA_753970=y
-CONFIG_PL310_ERRATA_769419=y
-CONFIG_PPP=m
-CONFIG_PPPOE=m
-CONFIG_PPP_ASYNC=m
-CONFIG_PPS=y
-CONFIG_PPS_CLIENT_GPIO=y
-CONFIG_PRINTK_TIME=y
-CONFIG_PROC_VMCORE=y
-CONFIG_RAID_ATTRS=y
-CONFIG_RATIONAL=y
-CONFIG_RCU_NEED_SEGCBLIST=y
-CONFIG_RCU_STALL_COMMON=y
-CONFIG_REGMAP=y
-CONFIG_REGMAP_I2C=y
-CONFIG_REGMAP_SPI=y
-CONFIG_RELAY=y
-CONFIG_RFS_ACCEL=y
-CONFIG_RPS=y
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_DS1672=y
-CONFIG_RTC_I2C_AND_SPI=y
-CONFIG_RTC_MC146818_LIB=y
-CONFIG_RWSEM_SPIN_ON_OWNER=y
-CONFIG_RWSEM_XCHGADD_ALGORITHM=y
-CONFIG_SATA_AHCI=y
-CONFIG_SATA_AHCI_PLATFORM=y
-# CONFIG_SCHED_INFO is not set
-CONFIG_SCSI=y
-CONFIG_SENSORS_AD7418=y
-CONFIG_SERIAL_8250_FSL=y
-CONFIG_SERIAL_8250_NR_UARTS=3
-CONFIG_SERIAL_8250_RUNTIME_UARTS=3
-CONFIG_SG_POOL=y
-CONFIG_SLHC=m
-CONFIG_SMP=y
-CONFIG_SMP_ON_UP=y
-CONFIG_SPARSE_IRQ=y
-CONFIG_SPI=y
-CONFIG_SPI_BITBANG=y
-CONFIG_SPI_CNS3XXX=y
-CONFIG_SPI_MASTER=y
-CONFIG_SRCU=y
-# CONFIG_STAGING is not set
-CONFIG_SWIOTLB=y
-CONFIG_SWPHY=y
-CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-CONFIG_TICK_CPU_ACCOUNTING=y
-CONFIG_TIMER_OF=y
-CONFIG_TIMER_PROBE=y
-CONFIG_TREE_RCU=y
-CONFIG_TREE_SRCU=y
-CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
-CONFIG_USB=y
-CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
-CONFIG_USB_CNS3XXX_EHCI=y
-CONFIG_USB_CNS3XXX_OHCI=y
-CONFIG_USB_COMMON=y
-CONFIG_USB_DWC2=y
-CONFIG_USB_DWC2_HOST=y
-# CONFIG_USB_DWC2_TRACK_MISSED_SOFS is not set
-CONFIG_USB_EHCI_HCD=y
-CONFIG_USB_EHCI_HCD_PLATFORM=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_OHCI_HCD=y
-CONFIG_USB_OHCI_HCD_PLATFORM=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USE_OF=y
-CONFIG_VECTORS_BASE=0xffff0000
-CONFIG_VFP=y
-CONFIG_WATCHDOG_CORE=y
-CONFIG_WATCHDOG_NOWAYOUT=y
-CONFIG_XPS=y
-CONFIG_XZ_DEC_ARM=y
-CONFIG_XZ_DEC_BCJ=y
-CONFIG_ZBOOT_ROM_BSS=0
-CONFIG_ZBOOT_ROM_TEXT=0
diff --git a/target/linux/cns3xxx/patches-4.14/000-cns3xxx_arch_include.patch b/target/linux/cns3xxx/patches-4.14/000-cns3xxx_arch_include.patch
deleted file mode 100644
index 3ae759021a..0000000000
--- a/target/linux/cns3xxx/patches-4.14/000-cns3xxx_arch_include.patch
+++ /dev/null
@@ -1,9 +0,0 @@
---- a/arch/arm/mach-cns3xxx/Makefile
-+++ b/arch/arm/mach-cns3xxx/Makefile
-@@ -1,4 +1,6 @@
- # SPDX-License-Identifier: GPL-2.0
-+ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include
-+
- obj-$(CONFIG_ARCH_CNS3XXX)		+= cns3xxx.o
- cns3xxx-y				+= core.o pm.o
- cns3xxx-$(CONFIG_ATAGS)			+= devices.o
diff --git a/target/linux/cns3xxx/patches-4.14/001-arm_openwrt_machtypes.patch b/target/linux/cns3xxx/patches-4.14/001-arm_openwrt_machtypes.patch
deleted file mode 100644
index 17a83ea7af..0000000000
--- a/target/linux/cns3xxx/patches-4.14/001-arm_openwrt_machtypes.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- a/arch/arm/tools/mach-types
-+++ b/arch/arm/tools/mach-types
-@@ -448,6 +448,7 @@ gplugd			MACH_GPLUGD		GPLUGD			2625
- qsd8x50a_st1_5		MACH_QSD8X50A_ST1_5	QSD8X50A_ST1_5		2627
- mx23evk			MACH_MX23EVK		MX23EVK			2629
- ap4evb			MACH_AP4EVB		AP4EVB			2630
-+gw2388			MACH_GW2388		GW2388			2635
- mityomapl138		MACH_MITYOMAPL138	MITYOMAPL138		2650
- guruplug		MACH_GURUPLUG		GURUPLUG		2659
- spear310		MACH_SPEAR310		SPEAR310		2660
diff --git a/target/linux/cns3xxx/patches-4.14/010-arm_introduce-dma-fiq-irq-broadcast.patch b/target/linux/cns3xxx/patches-4.14/010-arm_introduce-dma-fiq-irq-broadcast.patch
deleted file mode 100644
index 3841ca032b..0000000000
--- a/target/linux/cns3xxx/patches-4.14/010-arm_introduce-dma-fiq-irq-broadcast.patch
+++ /dev/null
@@ -1,80 +0,0 @@
---- a/arch/arm/include/asm/glue-cache.h
-+++ b/arch/arm/include/asm/glue-cache.h
-@@ -152,9 +152,15 @@ static inline void nop_dma_unmap_area(co
- #define __cpuc_flush_user_range		__glue(_CACHE,_flush_user_cache_range)
- #define __cpuc_coherent_kern_range	__glue(_CACHE,_coherent_kern_range)
- #define __cpuc_coherent_user_range	__glue(_CACHE,_coherent_user_range)
--#define __cpuc_flush_dcache_area	__glue(_CACHE,_flush_kern_dcache_area)
- 
--#define dmac_flush_range		__glue(_CACHE,_dma_flush_range)
-+#ifndef CONFIG_DMA_CACHE_FIQ_BROADCAST
-+# define __cpuc_flush_dcache_area	__glue(_CACHE,_flush_kern_dcache_area)
-+# define dmac_flush_range		__glue(_CACHE,_dma_flush_range)
-+#else
-+# define __cpuc_flush_dcache_area	__glue(fiq,_flush_kern_dcache_area)
-+# define dmac_flush_range		__glue(fiq,_dma_flush_range)
-+#endif
-+
- #endif
- 
- #endif
---- a/arch/arm/mm/Kconfig
-+++ b/arch/arm/mm/Kconfig
-@@ -922,6 +922,17 @@ config DMA_CACHE_RWFO
- 	  in hardware, other workarounds are needed (e.g. cache
- 	  maintenance broadcasting in software via FIQ).
- 
-+config DMA_CACHE_FIQ_BROADCAST
-+	bool "Enable fiq broadcast DMA cache maintenance"
-+	depends on CPU_V6K && SMP
-+	select FIQ
-+	help
-+	  The Snoop Control Unit on ARM11MPCore does not detect the
-+	  cache maintenance operations and the dma_{map,unmap}_area()
-+	  functions may leave stale cache entries on other CPUs. By
-+	  enabling this option, fiq broadcast in the ARMv6
-+	  DMA cache maintenance functions is performed.
-+
- config OUTER_CACHE
- 	bool
- 
---- a/arch/arm/mm/flush.c
-+++ b/arch/arm/mm/flush.c
-@@ -319,6 +319,7 @@ void __sync_icache_dcache(pte_t pteval)
- void flush_dcache_page(struct page *page)
- {
- 	struct address_space *mapping;
-+	bool skip_broadcast = true;
- 
- 	/*
- 	 * The zero page is never written to, so never has any dirty
-@@ -335,7 +336,10 @@ void flush_dcache_page(struct page *page
- 
- 	mapping = page_mapping(page);
- 
--	if (!cache_ops_need_broadcast() &&
-+#ifndef CONFIG_DMA_CACHE_FIQ_BROADCAST
-+        skip_broadcast = !cache_ops_need_broadcast();
-+#endif
-+        if (skip_broadcast &&
- 	    mapping && !page_mapcount(page))
- 		clear_bit(PG_dcache_clean, &page->flags);
- 	else {
---- a/arch/arm/mm/dma.h
-+++ b/arch/arm/mm/dma.h
-@@ -5,8 +5,13 @@
- #include <asm/glue-cache.h>
- 
- #ifndef MULTI_CACHE
--#define dmac_map_area			__glue(_CACHE,_dma_map_area)
--#define dmac_unmap_area 		__glue(_CACHE,_dma_unmap_area)
-+#ifndef CONFIG_DMA_CACHE_FIQ_BROADCAST
-+# define dmac_map_area			__glue(_CACHE,_dma_map_area)
-+# define dmac_unmap_area 		__glue(_CACHE,_dma_unmap_area)
-+#else
-+# define dmac_map_area			__glue(fiq,_dma_map_area)
-+# define dmac_unmap_area			__glue(fiq,_dma_unmap_area)
-+#endif
- 
- /*
-  * These are private to the dma-mapping API.  Do not use directly.
diff --git a/target/linux/cns3xxx/patches-4.14/020-watchdog_support.patch b/target/linux/cns3xxx/patches-4.14/020-watchdog_support.patch
deleted file mode 100644
index df413c9040..0000000000
--- a/target/linux/cns3xxx/patches-4.14/020-watchdog_support.patch
+++ /dev/null
@@ -1,184 +0,0 @@
-Add a watchdog driver for ARM MPcore processors.
-
-Signed-off-by: Felix Fietkau <nbd@nbd.name>
---- a/drivers/watchdog/Kconfig
-+++ b/drivers/watchdog/Kconfig
-@@ -355,6 +355,13 @@ config KS8695_WATCHDOG
- 	  Watchdog timer embedded into KS8695 processor. This will reboot your
- 	  system when the timeout is reached.
- 
-+config MPCORE_WATCHDOG
-+	tristate "MPcore watchdog"
-+	depends on HAVE_ARM_TWD
-+	select WATCHDOG_CORE
-+	help
-+	  Watchdog timer embedded into the MPcore system
-+
- config HAVE_S3C2410_WATCHDOG
- 	bool
- 	help
---- a/drivers/watchdog/Makefile
-+++ b/drivers/watchdog/Makefile
-@@ -49,6 +49,7 @@ obj-$(CONFIG_977_WATCHDOG) += wdt977.o
- obj-$(CONFIG_GEMINI_WATCHDOG) += gemini_wdt.o
- obj-$(CONFIG_IXP4XX_WATCHDOG) += ixp4xx_wdt.o
- obj-$(CONFIG_KS8695_WATCHDOG) += ks8695_wdt.o
-+obj-$(CONFIG_MPCORE_WATCHDOG) += mpcore_wdt.o
- obj-$(CONFIG_S3C2410_WATCHDOG) += s3c2410_wdt.o
- obj-$(CONFIG_SA1100_WATCHDOG) += sa1100_wdt.o
- obj-$(CONFIG_SAMA5D4_WATCHDOG) += sama5d4_wdt.o
---- /dev/null
-+++ b/drivers/watchdog/mpcore_wdt.c
-@@ -0,0 +1,118 @@
-+/*
-+ * Watchdog driver for ARM MPcore
-+ *
-+ * Copyright (C) 2017 Felix Fietkau <nbd@nbd.name>
-+ */
-+
-+#include <linux/export.h>
-+#include <linux/module.h>
-+#include <linux/kernel.h>
-+#include <linux/watchdog.h>
-+#include <linux/platform_device.h>
-+#include <linux/io.h>
-+#include <asm/smp_twd.h>
-+
-+static void __iomem *wdt_base;
-+static int wdt_timeout = 60;
-+
-+static int mpcore_wdt_keepalive(struct watchdog_device *wdd)
-+{
-+	static int perturb;
-+	u32 count;
-+
-+	count = (twd_timer_get_rate() / 256) * wdt_timeout;
-+
-+	/* Reload register needs a different value on each refresh */
-+	count += perturb;
-+	perturb = !perturb;
-+
-+	iowrite32(count, wdt_base + TWD_WDOG_LOAD);
-+
-+	return 0;
-+}
-+
-+static int mpcore_wdt_start(struct watchdog_device *wdd)
-+{
-+	mpcore_wdt_keepalive(wdd);
-+
-+	/* prescale = 256, mode = 1, enable = 1 */
-+	iowrite32(0x0000FF09, wdt_base + TWD_WDOG_CONTROL);
-+
-+	return 0;
-+}
-+
-+static int mpcore_wdt_stop(struct watchdog_device *wdd)
-+{
-+	iowrite32(0x12345678, wdt_base + TWD_WDOG_DISABLE);
-+	iowrite32(0x87654321, wdt_base + TWD_WDOG_DISABLE);
-+	iowrite32(0x0, wdt_base + TWD_WDOG_CONTROL);
-+
-+	return 0;
-+}
-+
-+static int mpcore_wdt_set_timeout(struct watchdog_device *wdd,
-+				 unsigned int timeout)
-+{
-+	mpcore_wdt_stop(wdd);
-+	wdt_timeout = timeout;
-+	mpcore_wdt_start(wdd);
-+
-+	return 0;
-+}
-+
-+static const struct watchdog_info mpcore_wdt_info = {
-+	.options = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING | WDIOF_MAGICCLOSE,
-+	.identity = "MPcore Watchdog",
-+};
-+
-+static const struct watchdog_ops mpcore_wdt_ops = {
-+	.owner = THIS_MODULE,
-+	.start = mpcore_wdt_start,
-+	.stop  = mpcore_wdt_stop,
-+	.ping  = mpcore_wdt_keepalive,
-+	.set_timeout = mpcore_wdt_set_timeout,
-+};
-+
-+static struct watchdog_device mpcore_wdt = {
-+	.info = &mpcore_wdt_info,
-+	.ops = &mpcore_wdt_ops,
-+	.min_timeout = 1,
-+	.max_timeout = 65535,
-+};
-+
-+static int mpcore_wdt_probe(struct platform_device *pdev)
-+{
-+	struct resource *res;
-+	unsigned long rate = twd_timer_get_rate();
-+
-+	pr_info("MPCore WD init. clockrate: %lu prescaler: %u countrate: %lu timeout: %us\n", rate, 256, rate / 256, wdt_timeout);
-+
-+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-+	if (!res)
-+		return -ENODEV;
-+
-+	wdt_base = devm_ioremap_resource(&pdev->dev, res);
-+	if (IS_ERR(wdt_base))
-+		return PTR_ERR(wdt_base);
-+
-+	watchdog_register_device(&mpcore_wdt);
-+	return 0;
-+}
-+
-+static int mpcore_wdt_remove(struct platform_device *dev)
-+{
-+	watchdog_unregister_device(&mpcore_wdt);
-+	return 0;
-+}
-+
-+static struct platform_driver mpcore_wdt_driver = {
-+	.probe		= mpcore_wdt_probe,
-+	.remove		= mpcore_wdt_remove,
-+	.driver		= {
-+		.name	= "mpcore_wdt",
-+	},
-+};
-+
-+module_platform_driver(mpcore_wdt_driver);
-+MODULE_AUTHOR("Felix Fietkau <nbd@nbd.name>");
-+MODULE_LICENSE("GPL");
---- a/arch/arm/include/asm/smp_twd.h
-+++ b/arch/arm/include/asm/smp_twd.h
-@@ -34,5 +34,6 @@ struct twd_local_timer name __initdata =
- };
- 
- int twd_local_timer_register(struct twd_local_timer *);
-+unsigned long twd_timer_get_rate(void);
- 
- #endif
---- a/arch/arm/kernel/smp_twd.c
-+++ b/arch/arm/kernel/smp_twd.c
-@@ -15,6 +15,7 @@
- #include <linux/delay.h>
- #include <linux/device.h>
- #include <linux/err.h>
-+#include <linux/export.h>
- #include <linux/smp.h>
- #include <linux/jiffies.h>
- #include <linux/clockchips.h>
-@@ -380,6 +381,14 @@ int __init twd_local_timer_register(stru
- 	return twd_local_timer_common_register(NULL);
- }
- 
-+/* Needed by mpcore_wdt */
-+unsigned long twd_timer_get_rate(void)
-+{
-+	return twd_timer_rate;
-+}
-+EXPORT_SYMBOL_GPL(twd_timer_get_rate);
-+
-+
- #ifdef CONFIG_OF
- static int __init twd_local_timer_of_register(struct device_node *np)
- {
diff --git a/target/linux/cns3xxx/patches-4.14/025-smp_support.patch b/target/linux/cns3xxx/patches-4.14/025-smp_support.patch
deleted file mode 100644
index dc8e4b03c2..0000000000
--- a/target/linux/cns3xxx/patches-4.14/025-smp_support.patch
+++ /dev/null
@@ -1,30 +0,0 @@
---- a/arch/arm/mach-cns3xxx/Makefile
-+++ b/arch/arm/mach-cns3xxx/Makefile
-@@ -6,3 +6,5 @@ cns3xxx-y				+= core.o pm.o
- cns3xxx-$(CONFIG_ATAGS)			+= devices.o
- cns3xxx-$(CONFIG_PCI)			+= pcie.o
- cns3xxx-$(CONFIG_MACH_CNS3420VB)	+= cns3420vb.o
-+cns3xxx-$(CONFIG_SMP)			+= platsmp.o headsmp.o
-+cns3xxx-$(CONFIG_HOTPLUG_CPU)		+= hotplug.o
---- a/arch/arm/mach-cns3xxx/Kconfig
-+++ b/arch/arm/mach-cns3xxx/Kconfig
-@@ -3,6 +3,9 @@ menuconfig ARCH_CNS3XXX
- 	bool "Cavium Networks CNS3XXX family"
- 	depends on ARCH_MULTI_V6
- 	select ARM_GIC
-+	select HAVE_ARM_SCU if SMP
-+	select HAVE_ARM_TWD
-+	select HAVE_SMP
- 	help
- 	  Support for Cavium Networks CNS3XXX platform.
- 
---- a/arch/arm/mach-cns3xxx/core.h
-+++ b/arch/arm/mach-cns3xxx/core.h
-@@ -13,6 +13,7 @@
- 
- #include <linux/reboot.h>
- 
-+extern struct smp_operations cns3xxx_smp_ops;
- extern void cns3xxx_timer_init(void);
- 
- #ifdef CONFIG_CACHE_L2X0
diff --git a/target/linux/cns3xxx/patches-4.14/030-pcie_clock.patch b/target/linux/cns3xxx/patches-4.14/030-pcie_clock.patch
deleted file mode 100644
index 66c3a99ae1..0000000000
--- a/target/linux/cns3xxx/patches-4.14/030-pcie_clock.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/arch/arm/mach-cns3xxx/pcie.c
-+++ b/arch/arm/mach-cns3xxx/pcie.c
-@@ -281,8 +281,6 @@ void __init cns3xxx_pcie_init_late(void)
- 			"imprecise external abort");
- 
- 	for (i = 0; i < ARRAY_SIZE(cns3xxx_pcie); i++) {
--		cns3xxx_pwr_clk_en(0x1 << PM_CLK_GATE_REG_OFFSET_PCIE(i));
--		cns3xxx_pwr_soft_rst(0x1 << PM_SOFT_RST_REG_OFFST_PCIE(i));
- 		cns3xxx_pcie_check_link(&cns3xxx_pcie[i]);
- 		cns3xxx_pcie_hw_init(&cns3xxx_pcie[i]);
- 		private_data = &cns3xxx_pcie[i];
diff --git a/target/linux/cns3xxx/patches-4.14/040-fiq_support.patch b/target/linux/cns3xxx/patches-4.14/040-fiq_support.patch
deleted file mode 100644
index 5a62eb38ac..0000000000
--- a/target/linux/cns3xxx/patches-4.14/040-fiq_support.patch
+++ /dev/null
@@ -1,40 +0,0 @@
---- a/arch/arm/mach-cns3xxx/Kconfig
-+++ b/arch/arm/mach-cns3xxx/Kconfig
-@@ -6,6 +6,7 @@ menuconfig ARCH_CNS3XXX
- 	select HAVE_ARM_SCU if SMP
- 	select HAVE_ARM_TWD
- 	select HAVE_SMP
-+	select FIQ
- 	help
- 	  Support for Cavium Networks CNS3XXX platform.
- 
---- a/arch/arm/mach-cns3xxx/Makefile
-+++ b/arch/arm/mach-cns3xxx/Makefile
-@@ -6,5 +6,5 @@ cns3xxx-y				+= core.o pm.o
- cns3xxx-$(CONFIG_ATAGS)			+= devices.o
- cns3xxx-$(CONFIG_PCI)			+= pcie.o
- cns3xxx-$(CONFIG_MACH_CNS3420VB)	+= cns3420vb.o
--cns3xxx-$(CONFIG_SMP)			+= platsmp.o headsmp.o
-+cns3xxx-$(CONFIG_SMP)			+= platsmp.o headsmp.o cns3xxx_fiq.o
- cns3xxx-$(CONFIG_HOTPLUG_CPU)		+= hotplug.o
---- a/arch/arm/mach-cns3xxx/cns3xxx.h
-+++ b/arch/arm/mach-cns3xxx/cns3xxx.h
-@@ -261,6 +261,7 @@
- #define MISC_PCIE_INT_MASK(x)			MISC_MEM_MAP(0x978 + (x) * 0x100)
- #define MISC_PCIE_INT_STATUS(x)			MISC_MEM_MAP(0x97C + (x) * 0x100)
- 
-+#define MISC_FIQ_CPU(x)				MISC_MEM_MAP(0xA58 - (x) * 0x4)
- /*
-  * Power management and clock control
-  */
---- a/arch/arm/mm/Kconfig
-+++ b/arch/arm/mm/Kconfig
-@@ -905,7 +905,7 @@ config VDSO
- 
- config DMA_CACHE_RWFO
- 	bool "Enable read/write for ownership DMA cache maintenance"
--	depends on CPU_V6K && SMP
-+	depends on CPU_V6K && SMP && !ARCH_CNS3XXX
- 	default y
- 	help
- 	  The Snoop Control Unit on ARM11MPCore does not detect the
diff --git a/target/linux/cns3xxx/patches-4.14/045-twd_base.patch b/target/linux/cns3xxx/patches-4.14/045-twd_base.patch
deleted file mode 100644
index e722b01bbc..0000000000
--- a/target/linux/cns3xxx/patches-4.14/045-twd_base.patch
+++ /dev/null
@@ -1,43 +0,0 @@
---- a/arch/arm/mach-cns3xxx/core.c
-+++ b/arch/arm/mach-cns3xxx/core.c
-@@ -17,6 +17,7 @@
- #include <linux/platform_device.h>
- #include <linux/usb/ehci_pdriver.h>
- #include <linux/usb/ohci_pdriver.h>
-+#include <asm/smp_twd.h>
- #include <asm/mach/arch.h>
- #include <asm/mach/map.h>
- #include <asm/mach/time.h>
-@@ -26,6 +27,8 @@
- #include "core.h"
- #include "pm.h"
- 
-+#define IRQ_LOCALTIMER 29
-+
- static struct map_desc cns3xxx_io_desc[] __initdata = {
- 	{
- 		.virtual	= CNS3XXX_TC11MP_SCU_BASE_VIRT,
-@@ -198,6 +201,15 @@ static struct irqaction cns3xxx_timer_ir
- 	.handler	= cns3xxx_timer_interrupt,
- };
- 
-+static void __init cns3xxx_init_twd(void)
-+{
-+	static DEFINE_TWD_LOCAL_TIMER(cns3xx_twd_local_timer,
-+		CNS3XXX_TC11MP_TWD_BASE,
-+		IRQ_LOCALTIMER);
-+
-+	twd_local_timer_register(&cns3xx_twd_local_timer);
-+}
-+
- /*
-  * Set up the clock source and clock events devices
-  */
-@@ -251,6 +263,7 @@ static void __init __cns3xxx_timer_init(
- 	setup_irq(timer_irq, &cns3xxx_timer_irq);
- 
- 	cns3xxx_clockevents_init(timer_irq);
-+	cns3xxx_init_twd();
- }
- 
- void __init cns3xxx_timer_init(void)
diff --git a/target/linux/cns3xxx/patches-4.14/055-pcie_io.patch b/target/linux/cns3xxx/patches-4.14/055-pcie_io.patch
deleted file mode 100644
index 4680853e6e..0000000000
--- a/target/linux/cns3xxx/patches-4.14/055-pcie_io.patch
+++ /dev/null
@@ -1,19 +0,0 @@
---- a/arch/arm/mach-cns3xxx/core.c
-+++ b/arch/arm/mach-cns3xxx/core.c
-@@ -81,6 +81,16 @@ static struct map_desc cns3xxx_io_desc[]
- 		.pfn		= __phys_to_pfn(CNS3XXX_PCIE1_CFG1_BASE),
- 		.length		= SZ_16M,
- 		.type		= MT_DEVICE,
-+	}, {
-+		.virtual	= CNS3XXX_PCIE0_IO_BASE_VIRT,
-+		.pfn		= __phys_to_pfn(CNS3XXX_PCIE0_IO_BASE),
-+		.length		= SZ_16M,
-+		.type		= MT_DEVICE,
-+	}, {
-+		.virtual	= CNS3XXX_PCIE1_IO_BASE_VIRT,
-+		.pfn		= __phys_to_pfn(CNS3XXX_PCIE1_IO_BASE),
-+		.length		= SZ_16M,
-+		.type		= MT_DEVICE,
- #endif
- 	},
- };
diff --git a/target/linux/cns3xxx/patches-4.14/060-pcie_abort.patch b/target/linux/cns3xxx/patches-4.14/060-pcie_abort.patch
deleted file mode 100644
index 87b1526c3a..0000000000
--- a/target/linux/cns3xxx/patches-4.14/060-pcie_abort.patch
+++ /dev/null
@@ -1,109 +0,0 @@
---- a/arch/arm/mach-cns3xxx/pcie.c
-+++ b/arch/arm/mach-cns3xxx/pcie.c
-@@ -86,6 +86,79 @@ static void __iomem *cns3xxx_pci_map_bus
- 	return base + where + (devfn << 12);
- }
- 
-+static inline int check_master_abort(struct pci_bus *bus, unsigned int devfn, int where)
-+{
-+	struct cns3xxx_pcie *cnspci = pbus_to_cnspci(bus);
-+
-+  /* check PCI-compatible status register after access */
-+	if (cnspci->linked) {
-+		void __iomem *host_base;
-+		u32 sreg, ereg;
-+
-+		host_base = (void __iomem *) cnspci->cfg_bases[CNS3XXX_HOST_TYPE].virtual;
-+		sreg = __raw_readw(host_base + 0x6) & 0xF900;
-+		ereg = __raw_readl(host_base + 0x104); // Uncorrectable Error Status Reg
-+
-+		if (sreg | ereg) {
-+			/* SREG:
-+			 *  BIT15 - Detected Parity Error
-+			 *  BIT14 - Signaled System Error
-+			 *  BIT13 - Received Master Abort
-+			 *  BIT12 - Received Target Abort
-+			 *  BIT11 - Signaled Target Abort
-+			 *  BIT08 - Master Data Parity Error
-+			 *
-+			 * EREG:
-+			 *  BIT20 - Unsupported Request
-+			 *  BIT19 - ECRC
-+			 *  BIT18 - Malformed TLP
-+			 *  BIT17 - Receiver Overflow
-+			 *  BIT16 - Unexpected Completion
-+			 *  BIT15 - Completer Abort
-+			 *  BIT14 - Completion Timeout
-+			 *  BIT13 - Flow Control Protocol Error
-+			 *  BIT12 - Poisoned TLP
-+			 *  BIT04 - Data Link Protocol Error
-+			 *
-+			 * TODO: see Documentation/pci-error-recovery.txt
-+			 *    implement error_detected handler
-+			 */
-+/*
-+			printk("pci error: %04d:%02x:%02x.%02x sreg=0x%04x ereg=0x%08x", pci_domain_nr(bus), bus->number, PCI_SLOT(devfn), PCI_FUNC(devfn), sreg, ereg);
-+			if (sreg & BIT(15)) printk(" <PERR");
-+			if (sreg & BIT(14)) printk(" >SERR");
-+			if (sreg & BIT(13)) printk(" <MABRT");
-+			if (sreg & BIT(12)) printk(" <TABRT");
-+			if (sreg & BIT(11)) printk(" >TABRT");
-+			if (sreg & BIT( 8)) printk(" MPERR");
-+
-+			if (ereg & BIT(20)) printk(" Unsup");
-+			if (ereg & BIT(19)) printk(" ECRC");
-+			if (ereg & BIT(18)) printk(" MTLP");
-+			if (ereg & BIT(17)) printk(" OFLOW");
-+			if (ereg & BIT(16)) printk(" Unex");
-+			if (ereg & BIT(15)) printk(" ABRT");
-+			if (ereg & BIT(14)) printk(" COMPTO");
-+			if (ereg & BIT(13)) printk(" FLOW");
-+			if (ereg & BIT(12)) printk(" PTLP");
-+			if (ereg & BIT( 4)) printk(" DLINK");
-+			printk("\n");
-+*/
-+			pr_debug("%s failed port%d sreg=0x%04x\n", __func__,
-+				pci_domain_nr(bus), sreg);
-+
-+			/* make sure the status bits are reset */
-+			__raw_writew(sreg, host_base + 6);
-+			__raw_writel(ereg, host_base + 0x104);
-+			return 1;
-+		}
-+	}
-+	else
-+		return 1;
-+
-+  return 0;
-+}
-+
- static int cns3xxx_pci_read_config(struct pci_bus *bus, unsigned int devfn,
- 				   int where, int size, u32 *val)
- {
-@@ -95,6 +168,11 @@ static int cns3xxx_pci_read_config(struc
- 
- 	ret = pci_generic_config_read(bus, devfn, where, size, val);
- 
-+	if (check_master_abort(bus, devfn, where)) {
-+		printk(KERN_ERR "pci error: %04d:%02x:%02x.%02x %02x(%d)= master_abort on read\n", pci_domain_nr(bus), bus->number, PCI_SLOT(devfn), PCI_FUNC(devfn), where, size);
-+		return PCIBIOS_DEVICE_NOT_FOUND;
-+	}
-+
- 	if (ret == PCIBIOS_SUCCESSFUL && !bus->number && !devfn &&
- 	    (where & 0xffc) == PCI_CLASS_REVISION)
- 		/*
-@@ -257,8 +335,14 @@ static void __init cns3xxx_pcie_hw_init(
- static int cns3xxx_pcie_abort_handler(unsigned long addr, unsigned int fsr,
- 				      struct pt_regs *regs)
- {
-+#if 0
-+/* R14_ABORT = PC+4 for XSCALE but not ARM11MPCORE
-+ * ignore imprecise aborts and use PCI-compatible Status register to
-+ * determine errors instead
-+ */
- 	if (fsr & (1 << 10))
- 		regs->ARM_pc += 4;
-+#endif
- 	return 0;
- }
- 
diff --git a/target/linux/cns3xxx/patches-4.14/065-pcie_skip_inactive.patch b/target/linux/cns3xxx/patches-4.14/065-pcie_skip_inactive.patch
deleted file mode 100644
index b8b5f273a1..0000000000
--- a/target/linux/cns3xxx/patches-4.14/065-pcie_skip_inactive.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/arch/arm/mach-cns3xxx/pcie.c
-+++ b/arch/arm/mach-cns3xxx/pcie.c
-@@ -366,6 +366,8 @@ void __init cns3xxx_pcie_init_late(void)
- 
- 	for (i = 0; i < ARRAY_SIZE(cns3xxx_pcie); i++) {
- 		cns3xxx_pcie_check_link(&cns3xxx_pcie[i]);
-+		if (!cns3xxx_pcie[i].linked)
-+			continue;
- 		cns3xxx_pcie_hw_init(&cns3xxx_pcie[i]);
- 		private_data = &cns3xxx_pcie[i];
- 		pci_common_init(&hw_pci);
diff --git a/target/linux/cns3xxx/patches-4.14/070-i2c_support.patch b/target/linux/cns3xxx/patches-4.14/070-i2c_support.patch
deleted file mode 100644
index 53a6f7ff5e..0000000000
--- a/target/linux/cns3xxx/patches-4.14/070-i2c_support.patch
+++ /dev/null
@@ -1,31 +0,0 @@
---- a/drivers/i2c/busses/Kconfig
-+++ b/drivers/i2c/busses/Kconfig
-@@ -474,6 +474,18 @@ config I2C_CBUS_GPIO
- 	  This driver can also be built as a module.  If so, the module
- 	  will be called i2c-cbus-gpio.
- 
-+config I2C_CNS3XXX
-+	tristate "Cavium CNS3xxx I2C driver"
-+	depends on ARCH_CNS3XXX
-+	help
-+	  Support for Cavium CNS3xxx I2C controller driver.
-+
-+	  This driver can also be built as a module.  If so, the module
-+	  will be called i2c-cns3xxx.
-+
-+	  Please note that this driver might be needed to bring up other
-+	  devices such as Cavium CNS3xxx Ethernet.
-+
- config I2C_CPM
- 	tristate "Freescale CPM1 or CPM2 (MPC8xx/826x)"
- 	depends on CPM1 || CPM2
---- a/drivers/i2c/busses/Makefile
-+++ b/drivers/i2c/busses/Makefile
-@@ -128,6 +128,7 @@ obj-$(CONFIG_I2C_VIPERBOARD)	+= i2c-vipe
- obj-$(CONFIG_I2C_ACORN)		+= i2c-acorn.o
- obj-$(CONFIG_I2C_BCM_KONA)	+= i2c-bcm-kona.o
- obj-$(CONFIG_I2C_BRCMSTB)	+= i2c-brcmstb.o
-+obj-$(CONFIG_I2C_CNS3XXX)	+= i2c-cns3xxx.o
- obj-$(CONFIG_I2C_CROS_EC_TUNNEL)	+= i2c-cros-ec-tunnel.o
- obj-$(CONFIG_I2C_ELEKTOR)	+= i2c-elektor.o
- obj-$(CONFIG_I2C_MLXCPLD)	+= i2c-mlxcpld.o
diff --git a/target/linux/cns3xxx/patches-4.14/075-spi_support.patch b/target/linux/cns3xxx/patches-4.14/075-spi_support.patch
deleted file mode 100644
index 401ec876e9..0000000000
--- a/target/linux/cns3xxx/patches-4.14/075-spi_support.patch
+++ /dev/null
@@ -1,51 +0,0 @@
---- a/drivers/spi/Kconfig
-+++ b/drivers/spi/Kconfig
-@@ -206,6 +206,13 @@ config SPI_CLPS711X
- 	  This enables dedicated general purpose SPI/Microwire1-compatible
- 	  master mode interface (SSI1) for CLPS711X-based CPUs.
- 
-+config SPI_CNS3XXX
-+	tristate "CNS3XXX SPI controller"
-+	depends on ARCH_CNS3XXX && SPI_MASTER
-+	select SPI_BITBANG
-+	help
-+	  This enables using the CNS3XXX SPI controller in master mode.
-+
- config SPI_COLDFIRE_QSPI
- 	tristate "Freescale Coldfire QSPI controller"
- 	depends on (M520x || M523x || M5249 || M525x || M527x || M528x || M532x)
---- a/drivers/spi/Makefile
-+++ b/drivers/spi/Makefile
-@@ -31,6 +31,7 @@ obj-$(CONFIG_SPI_BITBANG)		+= spi-bitban
- obj-$(CONFIG_SPI_BUTTERFLY)		+= spi-butterfly.o
- obj-$(CONFIG_SPI_CADENCE)		+= spi-cadence.o
- obj-$(CONFIG_SPI_CLPS711X)		+= spi-clps711x.o
-+obj-$(CONFIG_SPI_CNS3XXX)		+= spi-cns3xxx.o
- obj-$(CONFIG_SPI_COLDFIRE_QSPI)		+= spi-coldfire-qspi.o
- obj-$(CONFIG_SPI_DAVINCI)		+= spi-davinci.o
- obj-$(CONFIG_SPI_DLN2)			+= spi-dln2.o
---- a/include/linux/spi/spi.h
-+++ b/include/linux/spi/spi.h
-@@ -799,6 +799,10 @@ struct spi_transfer {
- 	u32		speed_hz;
- 
- 	struct list_head transfer_list;
-+
-+#ifdef CONFIG_ARCH_CNS3XXX
-+	unsigned	last_in_message_list;
-+#endif
- };
- 
- /**
---- a/drivers/spi/spi.c
-+++ b/drivers/spi/spi.c
-@@ -1029,6 +1029,9 @@ static int spi_transfer_one_message(stru
- 	list_for_each_entry(xfer, &msg->transfers, transfer_list) {
- 		trace_spi_transfer_start(msg, xfer);
- 
-+		xfer->last_in_message_list =
-+			list_is_last(&xfer->transfer_list, &msg->transfers);
-+
- 		spi_statistics_add_transfer_stats(statm, xfer, ctlr);
- 		spi_statistics_add_transfer_stats(stats, xfer, ctlr);
- 
diff --git a/target/linux/cns3xxx/patches-4.14/080-sata_support.patch b/target/linux/cns3xxx/patches-4.14/080-sata_support.patch
deleted file mode 100644
index 479a9b634e..0000000000
--- a/target/linux/cns3xxx/patches-4.14/080-sata_support.patch
+++ /dev/null
@@ -1,26 +0,0 @@
---- a/drivers/ata/ahci_platform.c
-+++ b/drivers/ata/ahci_platform.c
-@@ -37,12 +37,23 @@ static struct scsi_host_template ahci_pl
- 	AHCI_SHT(DRV_NAME),
- };
- 
-+static const struct ata_port_info cns3xxx_port_info = {
-+	.flags		= AHCI_FLAG_COMMON,
-+	.pio_mask	= ATA_PIO4,
-+	.udma_mask	= ATA_UDMA6,
-+	.port_ops	= &ahci_pmp_retry_srst_ops,
-+};
-+
- static int ahci_probe(struct platform_device *pdev)
- {
- 	struct device *dev = &pdev->dev;
- 	struct ahci_host_priv *hpriv;
-+	const struct ata_port_info *info = &ahci_port_info;
- 	int rc;
- 
-+	if (IS_ENABLED(CONFIG_ARCH_CNS3XXX))
-+		info = &cns3xxx_port_info;
-+
- 	hpriv = ahci_platform_get_resources(pdev);
- 	if (IS_ERR(hpriv))
- 		return PTR_ERR(hpriv);
diff --git a/target/linux/cns3xxx/patches-4.14/090-timers.patch b/target/linux/cns3xxx/patches-4.14/090-timers.patch
deleted file mode 100644
index b3810f8c9b..0000000000
--- a/target/linux/cns3xxx/patches-4.14/090-timers.patch
+++ /dev/null
@@ -1,105 +0,0 @@
---- a/arch/arm/mach-cns3xxx/core.c
-+++ b/arch/arm/mach-cns3xxx/core.c
-@@ -138,6 +138,7 @@ static int cns3xxx_set_oneshot(struct cl
- 
- 	/* period set, and timer enabled in 'next_event' hook */
- 	ctrl |= (1 << 2) | (1 << 9);
-+	writel(0, cns3xxx_tmr1 + TIMER1_AUTO_RELOAD_OFFSET);
- 	writel(ctrl, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
- 	return 0;
- }
-@@ -148,7 +149,7 @@ static int cns3xxx_set_periodic(struct c
- 	int pclk = cns3xxx_cpu_clock() / 8;
- 	int reload;
- 
--	reload = pclk * 20 / (3 * HZ) * 0x25000;
-+	reload = pclk * 1000000 / HZ;
- 	writel(reload, cns3xxx_tmr1 + TIMER1_AUTO_RELOAD_OFFSET);
- 	ctrl |= (1 << 0) | (1 << 2) | (1 << 9);
- 	writel(ctrl, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
-@@ -175,8 +176,8 @@ static struct clock_event_device cns3xxx
- 	.set_state_oneshot	= cns3xxx_set_oneshot,
- 	.tick_resume		= cns3xxx_shutdown,
- 	.set_next_event		= cns3xxx_timer_set_next_event,
--	.rating			= 350,
--	.cpumask		= cpu_all_mask,
-+	.rating			= 300,
-+	.cpumask		= cpu_possible_mask,
- };
- 
- static void __init cns3xxx_clockevents_init(unsigned int timer_irq)
-@@ -220,6 +221,32 @@ static void __init cns3xxx_init_twd(void
- 	twd_local_timer_register(&cns3xx_twd_local_timer);
- }
- 
-+static u64 cns3xxx_get_cycles(struct clocksource *cs)
-+{
-+  u64 val;
-+
-+  val = readl(cns3xxx_tmr1 + TIMER_FREERUN_CONTROL_OFFSET);
-+  val &= 0xffff;
-+
-+  return ((val << 32) | readl(cns3xxx_tmr1 + TIMER_FREERUN_OFFSET));
-+}
-+
-+static struct clocksource clocksource_cns3xxx = {
-+	.name = "freerun",
-+	.rating = 200,
-+	.read = cns3xxx_get_cycles,
-+	.mask = CLOCKSOURCE_MASK(48),
-+	.flags  = CLOCK_SOURCE_IS_CONTINUOUS,
-+};
-+
-+static void __init cns3xxx_clocksource_init(void)
-+{
-+	/* Reset the FreeRunning counter */
-+	writel((1 << 16), cns3xxx_tmr1 + TIMER_FREERUN_CONTROL_OFFSET);
-+
-+	clocksource_register_khz(&clocksource_cns3xxx, 100);
-+}
-+
- /*
-  * Set up the clock source and clock events devices
-  */
-@@ -237,13 +264,12 @@ static void __init __cns3xxx_timer_init(
- 	/* stop free running timer3 */
- 	writel(0, cns3xxx_tmr1 + TIMER_FREERUN_CONTROL_OFFSET);
- 
--	/* timer1 */
--	writel(0x5C800, cns3xxx_tmr1 + TIMER1_COUNTER_OFFSET);
--	writel(0x5C800, cns3xxx_tmr1 + TIMER1_AUTO_RELOAD_OFFSET);
--
- 	writel(0, cns3xxx_tmr1 + TIMER1_MATCH_V1_OFFSET);
- 	writel(0, cns3xxx_tmr1 + TIMER1_MATCH_V2_OFFSET);
- 
-+	val = (cns3xxx_cpu_clock() >> 3) * 1000000 / HZ;
-+	writel(val, cns3xxx_tmr1 + TIMER1_COUNTER_OFFSET);
-+
- 	/* mask irq, non-mask timer1 overflow */
- 	irq_mask = readl(cns3xxx_tmr1 + TIMER1_2_INTERRUPT_MASK_OFFSET);
- 	irq_mask &= ~(1 << 2);
-@@ -255,23 +281,9 @@ static void __init __cns3xxx_timer_init(
- 	val |= (1 << 9);
- 	writel(val, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
- 
--	/* timer2 */
--	writel(0, cns3xxx_tmr1 + TIMER2_MATCH_V1_OFFSET);
--	writel(0, cns3xxx_tmr1 + TIMER2_MATCH_V2_OFFSET);
--
--	/* mask irq */
--	irq_mask = readl(cns3xxx_tmr1 + TIMER1_2_INTERRUPT_MASK_OFFSET);
--	irq_mask |= ((1 << 3) | (1 << 4) | (1 << 5));
--	writel(irq_mask, cns3xxx_tmr1 + TIMER1_2_INTERRUPT_MASK_OFFSET);
--
--	/* down counter */
--	val = readl(cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
--	val |= (1 << 10);
--	writel(val, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
--
--	/* Make irqs happen for the system timer */
- 	setup_irq(timer_irq, &cns3xxx_timer_irq);
- 
-+	cns3xxx_clocksource_init();
- 	cns3xxx_clockevents_init(timer_irq);
- 	cns3xxx_init_twd();
- }
diff --git a/target/linux/cns3xxx/patches-4.14/093-add-virt-pci-io-mapping.patch b/target/linux/cns3xxx/patches-4.14/093-add-virt-pci-io-mapping.patch
deleted file mode 100644
index 0fa7ed483f..0000000000
--- a/target/linux/cns3xxx/patches-4.14/093-add-virt-pci-io-mapping.patch
+++ /dev/null
@@ -1,41 +0,0 @@
---- a/arch/arm/mach-cns3xxx/cns3xxx.h
-+++ b/arch/arm/mach-cns3xxx/cns3xxx.h
-@@ -162,11 +162,13 @@
- #define CNS3XXX_L2C_BASE			0x92000000	/* L2 Cache Control */
- 
- #define CNS3XXX_PCIE0_MEM_BASE			0xA0000000	/* PCIe Port 0 IO/Memory Space */
-+#define CNS3XXX_PCIE0_MEM_BASE_VIRT		0xE0000000
- 
- #define CNS3XXX_PCIE0_HOST_BASE			0xAB000000	/* PCIe Port 0 RC Base */
- #define CNS3XXX_PCIE0_HOST_BASE_VIRT		0xE1000000
- 
- #define CNS3XXX_PCIE0_IO_BASE			0xAC000000	/* PCIe Port 0 */
-+#define CNS3XXX_PCIE0_IO_BASE_VIRT		0xE2000000
- 
- #define CNS3XXX_PCIE0_CFG0_BASE			0xAD000000	/* PCIe Port 0 CFG Type 0 */
- #define CNS3XXX_PCIE0_CFG0_BASE_VIRT		0xE3000000
-@@ -175,13 +177,16 @@
- #define CNS3XXX_PCIE0_CFG1_BASE_VIRT		0xE4000000
- 
- #define CNS3XXX_PCIE0_MSG_BASE			0xAF000000	/* PCIe Port 0 Message Space */
-+#define CNS3XXX_PCIE0_MSG_BASE_VIRT		0xE5000000
- 
- #define CNS3XXX_PCIE1_MEM_BASE			0xB0000000	/* PCIe Port 1 IO/Memory Space */
-+#define CNS3XXX_PCIE1_MEM_BASE_VIRT		0xE8000000
- 
- #define CNS3XXX_PCIE1_HOST_BASE			0xBB000000	/* PCIe Port 1 RC Base */
- #define CNS3XXX_PCIE1_HOST_BASE_VIRT		0xE9000000
- 
- #define CNS3XXX_PCIE1_IO_BASE			0xBC000000	/* PCIe Port 1 */
-+#define CNS3XXX_PCIE1_IO_BASE_VIRT		0xEA000000
- 
- #define CNS3XXX_PCIE1_CFG0_BASE			0xBD000000	/* PCIe Port 1 CFG Type 0 */
- #define CNS3XXX_PCIE1_CFG0_BASE_VIRT		0xEB000000
-@@ -190,6 +195,7 @@
- #define CNS3XXX_PCIE1_CFG1_BASE_VIRT		0xEC000000
- 
- #define CNS3XXX_PCIE1_MSG_BASE			0xBF000000	/* PCIe Port 1 Message Space */
-+#define CNS3XXX_PCIE1_MSG_BASE_VIRT		0xED000000
- 
- /*
-  * Testchip peripheral and fpga gic regions
diff --git a/target/linux/cns3xxx/patches-4.14/095-gpio_support.patch b/target/linux/cns3xxx/patches-4.14/095-gpio_support.patch
deleted file mode 100644
index 8345f2f144..0000000000
--- a/target/linux/cns3xxx/patches-4.14/095-gpio_support.patch
+++ /dev/null
@@ -1,67 +0,0 @@
---- a/arch/arm/mach-cns3xxx/cns3420vb.c
-+++ b/arch/arm/mach-cns3xxx/cns3420vb.c
-@@ -223,6 +223,10 @@ static void __init cns3420_init(void)
- 
- 	cns3xxx_ahci_init();
- 	cns3xxx_sdhci_init();
-+	cns3xxx_gpio_init( 0, 32, CNS3XXX_GPIOA_BASE_VIRT, IRQ_CNS3XXX_GPIOA,
-+		NR_IRQS_CNS3XXX);
-+	cns3xxx_gpio_init(32, 32, CNS3XXX_GPIOB_BASE_VIRT, IRQ_CNS3XXX_GPIOB,
-+		NR_IRQS_CNS3XXX + 32);
- 
- 	pm_power_off = cns3xxx_power_off;
- }
---- a/arch/arm/mach-cns3xxx/Kconfig
-+++ b/arch/arm/mach-cns3xxx/Kconfig
-@@ -3,6 +3,8 @@ menuconfig ARCH_CNS3XXX
- 	bool "Cavium Networks CNS3XXX family"
- 	depends on ARCH_MULTI_V6
- 	select ARM_GIC
-+	select ARCH_REQUIRE_GPIOLIB
-+	select GENERIC_IRQ_CHIP
- 	select HAVE_ARM_SCU if SMP
- 	select HAVE_ARM_TWD
- 	select HAVE_SMP
---- a/arch/arm/mach-cns3xxx/Makefile
-+++ b/arch/arm/mach-cns3xxx/Makefile
-@@ -2,7 +2,7 @@
- ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include
- 
- obj-$(CONFIG_ARCH_CNS3XXX)		+= cns3xxx.o
--cns3xxx-y				+= core.o pm.o
-+cns3xxx-y				+= core.o pm.o gpio.o
- cns3xxx-$(CONFIG_ATAGS)			+= devices.o
- cns3xxx-$(CONFIG_PCI)			+= pcie.o
- cns3xxx-$(CONFIG_MACH_CNS3420VB)	+= cns3420vb.o
---- a/arch/arm/mach-cns3xxx/cns3xxx.h
-+++ b/arch/arm/mach-cns3xxx/cns3xxx.h
-@@ -68,8 +68,10 @@
- #define SMC_PCELL_ID_3_OFFSET			0xFFC
- 
- #define CNS3XXX_GPIOA_BASE			0x74000000	/* GPIO port A */
-+#define CNS3XXX_GPIOA_BASE_VIRT			0xFB006000
- 
- #define CNS3XXX_GPIOB_BASE			0x74800000	/* GPIO port B */
-+#define CNS3XXX_GPIOB_BASE_VIRT			0xFB007000
- 
- #define CNS3XXX_RTC_BASE			0x75000000	/* Real Time Clock */
- 
---- a/arch/arm/mach-cns3xxx/core.c
-+++ b/arch/arm/mach-cns3xxx/core.c
-@@ -50,6 +50,16 @@ static struct map_desc cns3xxx_io_desc[]
- 		.pfn		= __phys_to_pfn(CNS3XXX_PM_BASE),
- 		.length		= SZ_4K,
- 		.type		= MT_DEVICE,
-+	}, {
-+		.virtual	= CNS3XXX_GPIOA_BASE_VIRT,
-+		.pfn		= __phys_to_pfn(CNS3XXX_GPIOA_BASE),
-+		.length		= SZ_4K,
-+		.type		= MT_DEVICE,
-+	}, {
-+		.virtual	= CNS3XXX_GPIOB_BASE_VIRT,
-+		.pfn		= __phys_to_pfn(CNS3XXX_GPIOB_BASE),
-+		.length		= SZ_4K,
-+		.type		= MT_DEVICE,
- #ifdef CONFIG_PCI
- 	}, {
- 		.virtual	= CNS3XXX_PCIE0_HOST_BASE_VIRT,
diff --git a/target/linux/cns3xxx/patches-4.14/097-l2x0_cmdline_disable.patch b/target/linux/cns3xxx/patches-4.14/097-l2x0_cmdline_disable.patch
deleted file mode 100644
index b4720b11de..0000000000
--- a/target/linux/cns3xxx/patches-4.14/097-l2x0_cmdline_disable.patch
+++ /dev/null
@@ -1,69 +0,0 @@
---- a/arch/arm/mach-cns3xxx/core.c
-+++ b/arch/arm/mach-cns3xxx/core.c
-@@ -307,13 +307,26 @@ void __init cns3xxx_timer_init(void)
- 
- #ifdef CONFIG_CACHE_L2X0
- 
--void __init cns3xxx_l2x0_init(void)
-+static int cns3xxx_l2x0_enable = 1;
-+
-+static int __init cns3xxx_l2x0_disable(char *s)
-+{
-+	cns3xxx_l2x0_enable = 0;
-+	return 1;
-+}
-+__setup("nol2x0", cns3xxx_l2x0_disable);
-+
-+static int __init cns3xxx_l2x0_init(void)
- {
--	void __iomem *base = ioremap(CNS3XXX_L2C_BASE, SZ_4K);
-+	void __iomem *base;
- 	u32 val;
- 
-+	if (!cns3xxx_l2x0_enable)
-+		return 0;
-+
-+	base = ioremap(CNS3XXX_L2C_BASE, SZ_4K);
- 	if (WARN_ON(!base))
--		return;
-+		return 0;
- 
- 	/*
- 	 * Tag RAM Control register
-@@ -343,7 +356,10 @@ void __init cns3xxx_l2x0_init(void)
- 
- 	/* 32 KiB, 8-way, parity disable */
- 	l2x0_init(base, 0x00500000, 0xfe0f0fff);
-+
-+	return 0;
- }
-+arch_initcall(cns3xxx_l2x0_init);
- 
- #endif /* CONFIG_CACHE_L2X0 */
- 
---- a/arch/arm/mach-cns3xxx/cns3420vb.c
-+++ b/arch/arm/mach-cns3xxx/cns3420vb.c
-@@ -217,8 +217,6 @@ static struct platform_device *cns3420_p
- 
- static void __init cns3420_init(void)
- {
--	cns3xxx_l2x0_init();
--
- 	platform_add_devices(cns3420_pdevs, ARRAY_SIZE(cns3420_pdevs));
- 
- 	cns3xxx_ahci_init();
---- a/arch/arm/mach-cns3xxx/core.h
-+++ b/arch/arm/mach-cns3xxx/core.h
-@@ -16,12 +16,6 @@
- extern struct smp_operations cns3xxx_smp_ops;
- extern void cns3xxx_timer_init(void);
- 
--#ifdef CONFIG_CACHE_L2X0
--void __init cns3xxx_l2x0_init(void);
--#else
--static inline void cns3xxx_l2x0_init(void) {}
--#endif /* CONFIG_CACHE_L2X0 */
--
- #ifdef CONFIG_PCI
- extern void __init cns3xxx_pcie_init_late(void);
- #else
diff --git a/target/linux/cns3xxx/patches-4.14/100-laguna_support.patch b/target/linux/cns3xxx/patches-4.14/100-laguna_support.patch
deleted file mode 100644
index c0160d8f12..0000000000
--- a/target/linux/cns3xxx/patches-4.14/100-laguna_support.patch
+++ /dev/null
@@ -1,46 +0,0 @@
---- a/arch/arm/mach-cns3xxx/Kconfig
-+++ b/arch/arm/mach-cns3xxx/Kconfig
-@@ -23,4 +23,12 @@ config MACH_CNS3420VB
- 	  This is a platform with an on-board ARM11 MPCore and has support
- 	  for USB, USB-OTG, MMC/SD/SDIO, SATA, PCI-E, etc.
- 
-+config MACH_GW2388
-+	bool "Support for Gateworks Laguna Platform"
-+	help
-+	  Include support for the Gateworks Laguna Platform
-+
-+	  This is a platform with an on-board ARM11 MPCore and has support
-+	  for USB, USB-OTG, MMC/SD/SDIO, SATA, PCI-E, I2C, GIG, etc.
-+
- endif
---- a/arch/arm/mach-cns3xxx/Makefile
-+++ b/arch/arm/mach-cns3xxx/Makefile
-@@ -8,3 +8,5 @@ cns3xxx-$(CONFIG_PCI)			+= pcie.o
- cns3xxx-$(CONFIG_MACH_CNS3420VB)	+= cns3420vb.o
- cns3xxx-$(CONFIG_SMP)			+= platsmp.o headsmp.o cns3xxx_fiq.o
- cns3xxx-$(CONFIG_HOTPLUG_CPU)		+= hotplug.o
-+cns3xxx-$(CONFIG_MACH_GW2388)		+= laguna.o
-+
---- a/arch/arm/mach-cns3xxx/devices.c
-+++ b/arch/arm/mach-cns3xxx/devices.c
-@@ -16,6 +16,7 @@
- #include <linux/compiler.h>
- #include <linux/dma-mapping.h>
- #include <linux/platform_device.h>
-+#include <asm/mach-types.h>
- #include "cns3xxx.h"
- #include "pm.h"
- #include "core.h"
-@@ -101,7 +102,11 @@ void __init cns3xxx_sdhci_init(void)
- 	u32 gpioa_pins = __raw_readl(gpioa);
- 
- 	/* MMC/SD pins share with GPIOA */
--	gpioa_pins |= 0x1fff0004;
-+	if (machine_is_gw2388()) {
-+		gpioa_pins |= 0x1fff0000;
-+	} else {
-+		gpioa_pins |= 0x1fff0004;
-+	}
- 	__raw_writel(gpioa_pins, gpioa);
- 
- 	cns3xxx_pwr_clk_en(CNS3XXX_PWR_CLK_EN(SDIO));
diff --git a/target/linux/cns3xxx/patches-4.14/101-laguna_sdhci_card_detect.patch b/target/linux/cns3xxx/patches-4.14/101-laguna_sdhci_card_detect.patch
deleted file mode 100644
index 72648a5f9f..0000000000
--- a/target/linux/cns3xxx/patches-4.14/101-laguna_sdhci_card_detect.patch
+++ /dev/null
@@ -1,14 +0,0 @@
---- a/drivers/mmc/host/sdhci-cns3xxx.c
-+++ b/drivers/mmc/host/sdhci-cns3xxx.c
-@@ -88,9 +88,9 @@ static const struct sdhci_pltfm_data sdh
- 	.ops = &sdhci_cns3xxx_ops,
- 	.quirks = SDHCI_QUIRK_BROKEN_DMA |
- 		  SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
--		  SDHCI_QUIRK_INVERTED_WRITE_PROTECT |
- 		  SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
--		  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
-+		  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL |
-+		  SDHCI_QUIRK_BROKEN_CARD_DETECTION,
- };
- 
- static int sdhci_cns3xxx_probe(struct platform_device *pdev)
diff --git a/target/linux/cns3xxx/patches-4.14/110-pci_isolated_interrupts.patch b/target/linux/cns3xxx/patches-4.14/110-pci_isolated_interrupts.patch
deleted file mode 100644
index 800be813b8..0000000000
--- a/target/linux/cns3xxx/patches-4.14/110-pci_isolated_interrupts.patch
+++ /dev/null
@@ -1,95 +0,0 @@
---- a/arch/arm/mach-cns3xxx/pcie.c
-+++ b/arch/arm/mach-cns3xxx/pcie.c
-@@ -18,6 +18,7 @@
- #include <linux/io.h>
- #include <linux/ioport.h>
- #include <linux/interrupt.h>
-+#include <linux/irq.h>
- #include <linux/ptrace.h>
- #include <asm/mach/map.h>
- #include "cns3xxx.h"
-@@ -27,7 +28,7 @@ struct cns3xxx_pcie {
- 	void __iomem *host_regs; /* PCI config registers for host bridge */
- 	void __iomem *cfg0_regs; /* PCI Type 0 config registers */
- 	void __iomem *cfg1_regs; /* PCI Type 1 config registers */
--	unsigned int irqs[2];
-+	unsigned int irqs[5];
- 	struct resource res_io;
- 	struct resource res_mem;
- 	int port;
-@@ -95,7 +96,7 @@ static inline int check_master_abort(str
- 		void __iomem *host_base;
- 		u32 sreg, ereg;
- 
--		host_base = (void __iomem *) cnspci->cfg_bases[CNS3XXX_HOST_TYPE].virtual;
-+		host_base = (void __iomem *) cnspci->host_regs;
- 		sreg = __raw_readw(host_base + 0x6) & 0xF900;
- 		ereg = __raw_readl(host_base + 0x104); // Uncorrectable Error Status Reg
- 
-@@ -209,7 +210,7 @@ static struct pci_ops cns3xxx_pcie_ops =
- static int cns3xxx_pcie_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
- {
- 	struct cns3xxx_pcie *cnspci = pdev_to_cnspci(dev);
--	int irq = cnspci->irqs[!!dev->bus->number];
-+	int irq = cnspci->irqs[!!dev->bus->number + pin - 1];
- 
- 	pr_info("PCIe map irq: %04d:%02x:%02x.%02x slot %d, pin %d, irq: %d\n",
- 		pci_domain_nr(dev->bus), dev->bus->number, PCI_SLOT(dev->devfn),
-@@ -235,7 +236,13 @@ static struct cns3xxx_pcie cns3xxx_pcie[
- 			.end = CNS3XXX_PCIE0_HOST_BASE - 1, /* 176 MiB */
- 			.flags = IORESOURCE_MEM,
- 		},
--		.irqs = { IRQ_CNS3XXX_PCIE0_RC, IRQ_CNS3XXX_PCIE0_DEVICE, },
-+		.irqs = {
-+			IRQ_CNS3XXX_PCIE0_RC,
-+			IRQ_CNS3XXX_PCIE0_DEVICE,
-+			IRQ_CNS3XXX_PCIE0_DEVICE,
-+			IRQ_CNS3XXX_PCIE0_DEVICE,
-+			IRQ_CNS3XXX_PCIE0_DEVICE,
-+		},
- 		.port = 0,
- 	},
- 	[1] = {
-@@ -254,7 +261,13 @@ static struct cns3xxx_pcie cns3xxx_pcie[
- 			.end = CNS3XXX_PCIE1_HOST_BASE - 1, /* 176 MiB */
- 			.flags = IORESOURCE_MEM,
- 		},
--		.irqs = { IRQ_CNS3XXX_PCIE1_RC, IRQ_CNS3XXX_PCIE1_DEVICE, },
-+		.irqs = {
-+			IRQ_CNS3XXX_PCIE1_RC,
-+			IRQ_CNS3XXX_PCIE1_DEVICE,
-+			IRQ_CNS3XXX_PCIE1_DEVICE,
-+			IRQ_CNS3XXX_PCIE1_DEVICE,
-+			IRQ_CNS3XXX_PCIE1_DEVICE,
-+		},
- 		.port = 1,
- 	},
- };
-@@ -346,6 +359,14 @@ static int cns3xxx_pcie_abort_handler(un
- 	return 0;
- }
- 
-+void __init cns3xxx_pcie_set_irqs(int bus, int *irqs)
-+{
-+	int i;
-+
-+	for (i = 0; i < 4; i++)
-+		cns3xxx_pcie[bus].irqs[i + 1] = irqs[i];
-+}
-+
- void __init cns3xxx_pcie_init_late(void)
- {
- 	int i;
---- a/arch/arm/mach-cns3xxx/core.h
-+++ b/arch/arm/mach-cns3xxx/core.h
-@@ -18,8 +18,10 @@ extern void cns3xxx_timer_init(void);
- 
- #ifdef CONFIG_PCI
- extern void __init cns3xxx_pcie_init_late(void);
-+extern void __init cns3xxx_pcie_set_irqs(int bus, int *irqs);
- #else
- static inline void __init cns3xxx_pcie_init_late(void) {}
-+static inline void cns3xxx_pcie_set_irqs(int bus, int *irqs) {}
- #endif
- 
- void __init cns3xxx_map_io(void);
diff --git a/target/linux/cns3xxx/patches-4.14/130-Extend-PCIE_BUS_PEER2PEER-to-set-MRSS-128-to-fix-CNS3xxx-BM-DMA..patch b/target/linux/cns3xxx/patches-4.14/130-Extend-PCIE_BUS_PEER2PEER-to-set-MRSS-128-to-fix-CNS3xxx-BM-DMA..patch
deleted file mode 100644
index ef7da9fe23..0000000000
--- a/target/linux/cns3xxx/patches-4.14/130-Extend-PCIE_BUS_PEER2PEER-to-set-MRSS-128-to-fix-CNS3xxx-BM-DMA..patch
+++ /dev/null
@@ -1,23 +0,0 @@
---- a/drivers/pci/probe.c
-+++ b/drivers/pci/probe.c
-@@ -2309,7 +2309,8 @@ static void pcie_write_mrrs(struct pci_d
- 	/* In the "safe" case, do not configure the MRRS.  There appear to be
- 	 * issues with setting MRRS to 0 on a number of devices.
- 	 */
--	if (pcie_bus_config != PCIE_BUS_PERFORMANCE)
-+	if (pcie_bus_config != PCIE_BUS_PERFORMANCE &&
-+	    pcie_bus_config != PCIE_BUS_PEER2PEER)
- 		return;
- 
- 	/* For Max performance, the MRRS must be set to the largest supported
---- a/include/linux/pci.h
-+++ b/include/linux/pci.h
-@@ -847,7 +847,7 @@ enum pcie_bus_config_types {
- 	PCIE_BUS_DEFAULT,	/* ensure MPS matches upstream bridge */
- 	PCIE_BUS_SAFE,		/* use largest MPS boot-time devices support */
- 	PCIE_BUS_PERFORMANCE,	/* use MPS and MRRS for best performance */
--	PCIE_BUS_PEER2PEER,	/* set MPS = 128 for all devices */
-+	PCIE_BUS_PEER2PEER,	/* set MPS and MRSS to 128 for all devices */
- };
- 
- extern enum pcie_bus_config_types pcie_bus_config;
diff --git a/target/linux/cns3xxx/patches-4.14/200-broadcom_phy_reinit.patch b/target/linux/cns3xxx/patches-4.14/200-broadcom_phy_reinit.patch
deleted file mode 100644
index 6880533a05..0000000000
--- a/target/linux/cns3xxx/patches-4.14/200-broadcom_phy_reinit.patch
+++ /dev/null
@@ -1,15 +0,0 @@
---- a/drivers/net/phy/broadcom.c
-+++ b/drivers/net/phy/broadcom.c
-@@ -417,7 +417,11 @@ static int bcm5481_config_aneg(struct ph
- 	ret = genphy_config_aneg(phydev);
- 
- 	/* Then we can set up the delay. */
--	bcm5481x_config(phydev);
-+	//bcm5481x_config(phydev);
-+
-+	phy_write(phydev, 0x18, 0xf1e7);
-+	phy_write(phydev, 0x1c, 0x8e00);
-+	phy_write(phydev, 0x1c, 0xa41f);
- 
- 	if (of_property_read_bool(np, "enet-phy-lane-swap")) {
- 		/* Lane Swap - Undocumented register...magic! */
diff --git a/target/linux/cns3xxx/patches-4.14/210-dwc2_defaults.patch b/target/linux/cns3xxx/patches-4.14/210-dwc2_defaults.patch
deleted file mode 100644
index 67f152f43d..0000000000
--- a/target/linux/cns3xxx/patches-4.14/210-dwc2_defaults.patch
+++ /dev/null
@@ -1,63 +0,0 @@
---- a/drivers/usb/dwc2/params.c
-+++ b/drivers/usb/dwc2/params.c
-@@ -136,6 +136,36 @@ static void dwc2_set_stm32f4x9_fsotg_par
- 	p->activate_stm_fs_transceiver = true;
- }
- 
-+static void dwc2_set_cns3xxx_params(struct dwc2_hsotg *hsotg)
-+{
-+	struct dwc2_core_params *p = &hsotg->params;
-+
-+	p->otg_cap			= DWC2_CAP_PARAM_NO_HNP_SRP_CAPABLE;	/* non-HNP/non-SRP capable */
-+	p->host_dma			= 1;
-+	p->dma_desc_enable		= 0;
-+	p->speed			= DWC2_SPEED_PARAM_HIGH;	/* High Speed */
-+	p->enable_dynamic_fifo		= 1;
-+	p->en_multiple_tx_fifo		= 1;
-+	p->host_rx_fifo_size		= 658;	/* 774 DWORDs */
-+	p->host_nperio_tx_fifo_size	= 128;	/* 256 DWORDs */
-+	p->host_perio_tx_fifo_size	= 658;	/* 512 DWORDs */
-+	p->max_transfer_size		= 65535,
-+	p->max_packet_count		= 511;
-+	p->host_channels		= 16;
-+	p->phy_type			= DWC2_PHY_TYPE_PARAM_UTMI;	/* UTMI */
-+	p->phy_utmi_width		= 16;	/* 8 bits */
-+	p->phy_ulpi_ddr			= 0;	/* Single */
-+	p->phy_ulpi_ext_vbus		= 0;
-+	p->i2c_enable			= 0;
-+	p->ulpi_fs_ls			= 0;
-+	p->host_support_fs_ls_low_power	= 0;
-+	p->host_ls_low_power_phy_clk	= 0;	/* 48 MHz */
-+	p->ts_dline			= 0;
-+	p->reload_ctl			= 0;
-+	p->ahbcfg			= 0x10;
-+	p->uframe_sched			= false;
-+}
-+
- const struct of_device_id dwc2_of_match_table[] = {
- 	{ .compatible = "brcm,bcm2835-usb", .data = dwc2_set_bcm_params },
- 	{ .compatible = "hisilicon,hi6220-usb", .data = dwc2_set_his_params  },
-@@ -710,17 +740,23 @@ int dwc2_get_hwparams(struct dwc2_hsotg
- 
- int dwc2_init_params(struct dwc2_hsotg *hsotg)
- {
-+	/*
- 	const struct of_device_id *match;
- 	void (*set_params)(void *data);
-+	*/
- 
- 	dwc2_set_default_params(hsotg);
- 	dwc2_get_device_properties(hsotg);
- 
-+	/*
- 	match = of_match_device(dwc2_of_match_table, hsotg->dev);
- 	if (match && match->data) {
- 		set_params = match->data;
- 		set_params(hsotg);
- 	}
-+	*/
-+
-+	dwc2_set_cns3xxx_params(hsotg);
- 
- 	dwc2_check_params(hsotg);
- 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
