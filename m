Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3826E174D36
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:19:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkQBa/HuGQjFKYDfPHuFrDbZGm2m41Q++MUb5+YYVGM=; b=kO8N3h8Bwz8kjZ
	bim+/raEKPQbGG2sWq1wXBCdEar2g0QvWkcM2bvNA3z+7iPt+YHZVnDp1l33Yxxu3F0pB5AmBRnkA
	MNWPjyjKAahegAx/oFwIFJb8RSsOGRYMzsS/xsIjQmNCT8ncolhbdMXBc93E6nYNnEcol2n9hkULI
	CE8+Rs3bQ4LDYO8grlaDBZ8oPnvvg6CprUnRdBMGIXL5kCoHzKwX6Bt/jnNvlH5xgI5ODnhU7zuPJ
	jBlKWi/qUsHsnctUzn9lCa+QGx+PocXMjkxbFr4TaXKD8IbKvPdIWxcsa6BwHecyPQHdscoLWnwbU
	Go8WJ6bVLh+z192GXRCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NZ7-0003ao-Pm; Sun, 01 Mar 2020 12:19:25 +0000
Received: from mout-p-103.mailbox.org ([80.241.56.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NYv-0003Ze-QO
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:19:16 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-103.mailbox.org (Postfix) with ESMTPS id 48VhxQ4VH4zKmf8;
 Sun,  1 Mar 2020 13:12:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id kH3FXvCz9jWO; Sun,  1 Mar 2020 13:12:53 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Mar 2020 13:12:40 +0100
Message-Id: <20200301121241.5545-12-hauke@hauke-m.de>
In-Reply-To: <20200301121241.5545-1-hauke@hauke-m.de>
References: <20200301121241.5545-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_041914_166583_F5EC6838 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 11/12] tegra: Remove kernel 4.14 support
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This target was switched to kernel 4.19 more than 6 months ago in commit
f342ffd300da ("treewide: kernel: bump some targets to 4.19") and now
with kernel 5.4 support being added it gets harder to support kernel
4.14 in addition to kernel 4.19 and 5.4.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/tegra/config-4.14                | 558 ------------------
 ...interrupts-due-to-tegra2-silicon-bug.patch |  77 ---
 ...enable-front-panel-leds-in-TrimSlice.patch |  46 --
 3 files changed, 681 deletions(-)
 delete mode 100644 target/linux/tegra/config-4.14
 delete mode 100644 target/linux/tegra/patches-4.14/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch
 delete mode 100644 target/linux/tegra/patches-4.14/101-ARM-dtc-tegra-enable-front-panel-leds-in-TrimSlice.patch

diff --git a/target/linux/tegra/config-4.14 b/target/linux/tegra/config-4.14
deleted file mode 100644
index 42547da301ea..000000000000
--- a/target/linux/tegra/config-4.14
+++ /dev/null
@@ -1,558 +0,0 @@
-CONFIG_AC97_BUS=y
-# CONFIG_AHCI_TEGRA is not set
-CONFIG_ALIGNMENT_TRAP=y
-CONFIG_ARCH_CLOCKSOURCE_DATA=y
-CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
-CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
-CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
-CONFIG_ARCH_HAS_RESET_CONTROLLER=y
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
-CONFIG_ARCH_MULTI_V6_V7=y
-CONFIG_ARCH_MULTI_V7=y
-CONFIG_ARCH_NEEDS_CPU_IDLE_COUPLED=y
-CONFIG_ARCH_NR_GPIO=1024
-CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
-CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT=y
-# CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
-# CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
-CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
-CONFIG_ARCH_SUPPORTS_FIRMWARE=y
-CONFIG_ARCH_SUPPORTS_TRUSTED_FOUNDATIONS=y
-CONFIG_ARCH_SUPPORTS_UPROBES=y
-CONFIG_ARCH_SUSPEND_POSSIBLE=y
-CONFIG_ARCH_TEGRA=y
-# CONFIG_ARCH_TEGRA_114_SOC is not set
-# CONFIG_ARCH_TEGRA_124_SOC is not set
-CONFIG_ARCH_TEGRA_2x_SOC=y
-# CONFIG_ARCH_TEGRA_3x_SOC is not set
-CONFIG_ARCH_USE_BUILTIN_BSWAP=y
-CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
-CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
-CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
-CONFIG_ARM=y
-CONFIG_ARM_AMBA=y
-CONFIG_ARM_ARCH_TIMER=y
-CONFIG_ARM_ARCH_TIMER_EVTSTREAM=y
-CONFIG_ARM_CPU_SUSPEND=y
-CONFIG_ARM_CRYPTO=y
-CONFIG_ARM_ERRATA_720789=y
-CONFIG_ARM_ERRATA_754327=y
-CONFIG_ARM_ERRATA_764369=y
-CONFIG_ARM_GIC=y
-CONFIG_ARM_HAS_SG_CHAIN=y
-CONFIG_ARM_HEAVY_MB=y
-CONFIG_ARM_L1_CACHE_SHIFT=6
-CONFIG_ARM_L1_CACHE_SHIFT_6=y
-# CONFIG_ARM_LPAE is not set
-CONFIG_ARM_PATCH_IDIV=y
-CONFIG_ARM_PATCH_PHYS_VIRT=y
-# CONFIG_ARM_PL172_MPMC is not set
-# CONFIG_ARM_SMMU is not set
-# CONFIG_ARM_SP805_WATCHDOG is not set
-CONFIG_ARM_TEGRA20_CPUFREQ=y
-CONFIG_ARM_THUMB=y
-CONFIG_ARM_THUMBEE=y
-CONFIG_ARM_VIRT_EXT=y
-CONFIG_ASN1=y
-CONFIG_ATA=y
-CONFIG_ATAGS=y
-CONFIG_AUTO_ZRELADDR=y
-CONFIG_BLK_DEV_BSG=y
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_BLK_MQ_PCI=y
-CONFIG_BLK_SCSI_REQUEST=y
-CONFIG_BOUNCE=y
-CONFIG_CACHE_L2X0=y
-CONFIG_CLKDEV_LOOKUP=y
-CONFIG_CLKSRC_MMIO=y
-CONFIG_CLONE_BACKWARDS=y
-CONFIG_CLZ_TAB=y
-CONFIG_CMA=y
-CONFIG_CMA_ALIGNMENT=8
-CONFIG_CMA_AREAS=7
-# CONFIG_CMA_DEBUG is not set
-# CONFIG_CMA_DEBUGFS is not set
-CONFIG_CMA_SIZE_MBYTES=16
-# CONFIG_CMA_SIZE_SEL_MAX is not set
-CONFIG_CMA_SIZE_SEL_MBYTES=y
-# CONFIG_CMA_SIZE_SEL_MIN is not set
-# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
-CONFIG_COMMON_CLK=y
-# CONFIG_CPUFREQ_DT is not set
-CONFIG_CPU_32v6K=y
-CONFIG_CPU_32v7=y
-CONFIG_CPU_ABRT_EV7=y
-# CONFIG_CPU_BPREDICT_DISABLE is not set
-CONFIG_CPU_CACHE_V7=y
-CONFIG_CPU_CACHE_VIPT=y
-CONFIG_CPU_COPY_V6=y
-CONFIG_CPU_CP15=y
-CONFIG_CPU_CP15_MMU=y
-CONFIG_CPU_FREQ=y
-CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
-# CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE is not set
-CONFIG_CPU_FREQ_GOV_ATTR_SET=y
-CONFIG_CPU_FREQ_GOV_COMMON=y
-CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
-CONFIG_CPU_FREQ_GOV_ONDEMAND=y
-CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
-CONFIG_CPU_FREQ_GOV_POWERSAVE=y
-CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y
-CONFIG_CPU_FREQ_GOV_USERSPACE=y
-# CONFIG_CPU_FREQ_STAT is not set
-CONFIG_CPU_HAS_ASID=y
-# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
-# CONFIG_CPU_ICACHE_DISABLE is not set
-CONFIG_CPU_IDLE=y
-CONFIG_CPU_IDLE_GOV_LADDER=y
-CONFIG_CPU_PABRT_V7=y
-CONFIG_CPU_PM=y
-CONFIG_CPU_RMAP=y
-CONFIG_CPU_SPECTRE=y
-CONFIG_CPU_THUMB_CAPABLE=y
-CONFIG_CPU_TLB_V7=y
-CONFIG_CPU_V7=y
-CONFIG_CRC16=y
-# CONFIG_CRC32_SARWATE is not set
-CONFIG_CRC32_SLICEBY8=y
-CONFIG_CROSS_MEMORY_ATTACH=y
-CONFIG_CRYPTO_ACOMP2=y
-CONFIG_CRYPTO_AEAD=y
-CONFIG_CRYPTO_AEAD2=y
-CONFIG_CRYPTO_AES_ARM=y
-CONFIG_CRYPTO_AKCIPHER=y
-CONFIG_CRYPTO_AKCIPHER2=y
-CONFIG_CRYPTO_CRC32=y
-CONFIG_CRYPTO_CRC32C=y
-CONFIG_CRYPTO_CRYPTD=y
-CONFIG_CRYPTO_DEFLATE=y
-CONFIG_CRYPTO_DRBG=y
-CONFIG_CRYPTO_DRBG_HMAC=y
-CONFIG_CRYPTO_DRBG_MENU=y
-CONFIG_CRYPTO_ECHAINIV=y
-CONFIG_CRYPTO_HASH=y
-CONFIG_CRYPTO_HASH2=y
-CONFIG_CRYPTO_HMAC=y
-CONFIG_CRYPTO_JITTERENTROPY=y
-CONFIG_CRYPTO_LZ4=y
-CONFIG_CRYPTO_LZ4HC=y
-CONFIG_CRYPTO_LZO=y
-CONFIG_CRYPTO_MANAGER=y
-CONFIG_CRYPTO_MANAGER2=y
-CONFIG_CRYPTO_NULL=y
-CONFIG_CRYPTO_NULL2=y
-CONFIG_CRYPTO_RNG=y
-CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_RNG_DEFAULT=y
-CONFIG_CRYPTO_RSA=y
-CONFIG_CRYPTO_SEQIV=y
-CONFIG_CRYPTO_SHA1=y
-CONFIG_CRYPTO_SHA1_ARM=y
-CONFIG_CRYPTO_SHA256=y
-CONFIG_CRYPTO_SHA256_ARM=y
-CONFIG_CRYPTO_SHA512_ARM=y
-CONFIG_CRYPTO_TWOFISH=y
-CONFIG_CRYPTO_TWOFISH_COMMON=y
-CONFIG_CRYPTO_WORKQUEUE=y
-CONFIG_DCACHE_WORD_ACCESS=y
-CONFIG_DEBUG_ALIGN_RODATA=y
-CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
-# CONFIG_DEBUG_UART_8250 is not set
-# CONFIG_DEBUG_USER is not set
-# CONFIG_DEVPORT is not set
-CONFIG_DMADEVICES=y
-CONFIG_DMA_CMA=y
-CONFIG_DMA_ENGINE=y
-CONFIG_DMA_OF=y
-CONFIG_DMA_SHARED_BUFFER=y
-CONFIG_DNOTIFY=y
-CONFIG_DRM=y
-CONFIG_DRM_BRIDGE=y
-CONFIG_DRM_FBDEV_EMULATION=y
-CONFIG_DRM_FBDEV_OVERALLOC=100
-CONFIG_DRM_KMS_FB_HELPER=y
-CONFIG_DRM_KMS_HELPER=y
-CONFIG_DRM_MIPI_DSI=y
-CONFIG_DRM_PANEL=y
-CONFIG_DRM_PANEL_BRIDGE=y
-CONFIG_DRM_TEGRA=y
-# CONFIG_DRM_TEGRA_DEBUG is not set
-# CONFIG_DRM_TEGRA_STAGING is not set
-CONFIG_DTC=y
-CONFIG_EDAC_ATOMIC_SCRUB=y
-CONFIG_EDAC_SUPPORT=y
-CONFIG_ENABLE_MUST_CHECK=y
-CONFIG_EXT4_FS=y
-CONFIG_EXTCON=y
-# CONFIG_F2FS_CHECK_FS is not set
-CONFIG_F2FS_FS=y
-# CONFIG_F2FS_FS_SECURITY is not set
-CONFIG_F2FS_FS_XATTR=y
-CONFIG_F2FS_STAT_FS=y
-CONFIG_FB=y
-CONFIG_FB_CFB_COPYAREA=y
-CONFIG_FB_CFB_FILLRECT=y
-CONFIG_FB_CFB_IMAGEBLIT=y
-CONFIG_FB_CMDLINE=y
-CONFIG_FB_DEFERRED_IO=y
-# CONFIG_FB_PROVIDE_GET_FB_UNMAPPED_AREA is not set
-CONFIG_FB_SYS_COPYAREA=y
-CONFIG_FB_SYS_FILLRECT=y
-CONFIG_FB_SYS_FOPS=y
-CONFIG_FB_SYS_IMAGEBLIT=y
-CONFIG_FIX_EARLYCON_MEM=y
-CONFIG_FRAME_POINTER=y
-CONFIG_FREEZER=y
-CONFIG_FS_MBCACHE=y
-CONFIG_GENERIC_ALLOCATOR=y
-CONFIG_GENERIC_ARCH_TOPOLOGY=y
-CONFIG_GENERIC_BUG=y
-CONFIG_GENERIC_CLOCKEVENTS=y
-CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
-CONFIG_GENERIC_CPU_AUTOPROBE=y
-CONFIG_GENERIC_EARLY_IOREMAP=y
-CONFIG_GENERIC_IDLE_POLL_SETUP=y
-CONFIG_GENERIC_IO=y
-CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
-CONFIG_GENERIC_IRQ_MIGRATION=y
-CONFIG_GENERIC_IRQ_SHOW=y
-CONFIG_GENERIC_IRQ_SHOW_LEVEL=y
-CONFIG_GENERIC_MSI_IRQ=y
-CONFIG_GENERIC_MSI_IRQ_DOMAIN=y
-CONFIG_GENERIC_PCI_IOMAP=y
-CONFIG_GENERIC_PHY=y
-CONFIG_GENERIC_PINCONF=y
-CONFIG_GENERIC_PINCTRL_GROUPS=y
-CONFIG_GENERIC_PINMUX_FUNCTIONS=y
-CONFIG_GENERIC_SCHED_CLOCK=y
-CONFIG_GENERIC_SMP_IDLE_THREAD=y
-CONFIG_GENERIC_STRNCPY_FROM_USER=y
-CONFIG_GENERIC_STRNLEN_USER=y
-CONFIG_GENERIC_TIME_VSYSCALL=y
-CONFIG_GLOB=y
-CONFIG_GPIOLIB=y
-CONFIG_GPIO_SYSFS=y
-CONFIG_GPIO_TEGRA=y
-# CONFIG_GRO_CELLS is not set
-CONFIG_HANDLE_DOMAIN_IRQ=y
-CONFIG_HARDEN_BRANCH_PREDICTOR=y
-CONFIG_HARDIRQS_SW_RESEND=y
-CONFIG_HAS_DMA=y
-CONFIG_HAS_IOMEM=y
-CONFIG_HAS_IOPORT_MAP=y
-# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
-CONFIG_HAVE_ARCH_AUDITSYSCALL=y
-CONFIG_HAVE_ARCH_BITREVERSE=y
-CONFIG_HAVE_ARCH_JUMP_LABEL=y
-CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_PFN_VALID=y
-CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
-CONFIG_HAVE_ARCH_TRACEHOOK=y
-CONFIG_HAVE_ARM_ARCH_TIMER=y
-CONFIG_HAVE_ARM_SCU=y
-CONFIG_HAVE_ARM_SMCCC=y
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
-CONFIG_HDMI=y
-CONFIG_HID=y
-CONFIG_HIDRAW=y
-CONFIG_HID_GENERIC=y
-CONFIG_HIGHMEM=y
-CONFIG_HIGHPTE=y
-CONFIG_HOTPLUG_CPU=y
-CONFIG_HWMON=y
-CONFIG_HZ_FIXED=0
-CONFIG_HZ_PERIODIC=y
-CONFIG_I2C=y
-CONFIG_I2C_ALGOBIT=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_I2C_COMPAT=y
-CONFIG_I2C_TEGRA=y
-CONFIG_INITRAMFS_SOURCE=""
-CONFIG_INPUT=y
-CONFIG_INPUT_KEYBOARD=y
-CONFIG_IOMMU_API=y
-CONFIG_IOMMU_HELPER=y
-CONFIG_IOMMU_IOVA=y
-# CONFIG_IOMMU_IO_PGTABLE_ARMV7S is not set
-# CONFIG_IOMMU_IO_PGTABLE_LPAE is not set
-CONFIG_IOMMU_SUPPORT=y
-CONFIG_IRQCHIP=y
-CONFIG_IRQ_DOMAIN=y
-CONFIG_IRQ_DOMAIN_HIERARCHY=y
-CONFIG_IRQ_FORCED_THREADING=y
-CONFIG_IRQ_WORK=y
-CONFIG_JBD2=y
-CONFIG_KEYBOARD_ATKBD=y
-CONFIG_LIBFDT=y
-CONFIG_LOCK_SPIN_ON_OWNER=y
-CONFIG_LZ4HC_COMPRESS=y
-CONFIG_LZ4_COMPRESS=y
-CONFIG_LZ4_DECOMPRESS=y
-CONFIG_LZO_COMPRESS=y
-CONFIG_LZO_DECOMPRESS=y
-# CONFIG_MDIO_BUS is not set
-CONFIG_MEMORY=y
-CONFIG_MEMORY_ISOLATION=y
-# CONFIG_MFD_NVEC is not set
-CONFIG_MIGHT_HAVE_CACHE_L2X0=y
-CONFIG_MIGHT_HAVE_PCI=y
-CONFIG_MIGRATION=y
-CONFIG_MMC=y
-CONFIG_MMC_BLOCK=y
-CONFIG_MMC_SDHCI=y
-CONFIG_MMC_SDHCI_IO_ACCESSORS=y
-# CONFIG_MMC_SDHCI_PCI is not set
-CONFIG_MMC_SDHCI_PLTFM=y
-CONFIG_MMC_SDHCI_TEGRA=y
-# CONFIG_MMC_TIFM_SD is not set
-CONFIG_MODULES_USE_ELF_REL=y
-CONFIG_MPILIB=y
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_SPI_NOR=y
-CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
-CONFIG_MULTI_IRQ_HANDLER=y
-CONFIG_MUTEX_SPIN_ON_OWNER=y
-CONFIG_NEED_DMA_MAP_STATE=y
-# CONFIG_NEON is not set
-CONFIG_NET_FLOW_LIMIT=y
-CONFIG_NLS=y
-CONFIG_NO_BOOTMEM=y
-CONFIG_NR_CPUS=4
-CONFIG_NVMEM=y
-CONFIG_OF=y
-CONFIG_OF_ADDRESS=y
-CONFIG_OF_ADDRESS_PCI=y
-CONFIG_OF_EARLY_FLATTREE=y
-CONFIG_OF_FLATTREE=y
-CONFIG_OF_GPIO=y
-CONFIG_OF_IOMMU=y
-CONFIG_OF_IRQ=y
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
-CONFIG_PCIEAER=y
-CONFIG_PCIEASPM=y
-# CONFIG_PCIEASPM_DEBUG is not set
-CONFIG_PCIEASPM_DEFAULT=y
-# CONFIG_PCIEASPM_PERFORMANCE is not set
-# CONFIG_PCIEASPM_POWERSAVE is not set
-# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
-CONFIG_PCIEPORTBUS=y
-CONFIG_PCIE_PME=y
-CONFIG_PCI_DOMAINS=y
-CONFIG_PCI_DOMAINS_GENERIC=y
-CONFIG_PCI_MSI=y
-CONFIG_PCI_MSI_IRQ_DOMAIN=y
-CONFIG_PCI_TEGRA=y
-CONFIG_PERF_USE_VMALLOC=y
-CONFIG_PGTABLE_LEVELS=2
-CONFIG_PHY_TEGRA_XUSB=y
-CONFIG_PINCTRL=y
-CONFIG_PINCTRL_TEGRA=y
-CONFIG_PINCTRL_TEGRA20=y
-CONFIG_PINCTRL_TEGRA_XUSB=y
-# CONFIG_PL310_ERRATA_588369 is not set
-CONFIG_PL310_ERRATA_727915=y
-# CONFIG_PL310_ERRATA_753970 is not set
-CONFIG_PL310_ERRATA_769419=y
-CONFIG_PM=y
-CONFIG_PM_CLK=y
-# CONFIG_PM_DEBUG is not set
-CONFIG_PM_OPP=y
-CONFIG_PM_SLEEP=y
-CONFIG_PM_SLEEP_SMP=y
-CONFIG_POWER_RESET=y
-CONFIG_POWER_RESET_GPIO=y
-CONFIG_POWER_SUPPLY=y
-CONFIG_PROC_PAGE_MONITOR=y
-CONFIG_PWM=y
-CONFIG_PWM_SYSFS=y
-CONFIG_PWM_TEGRA=y
-CONFIG_RAS=y
-CONFIG_RATIONAL=y
-CONFIG_RCU_CPU_STALL_TIMEOUT=21
-# CONFIG_RCU_EXPERT is not set
-CONFIG_RCU_NEED_SEGCBLIST=y
-CONFIG_RCU_STALL_COMMON=y
-CONFIG_REGMAP=y
-CONFIG_REGMAP_I2C=y
-CONFIG_REGMAP_MMIO=y
-CONFIG_REGMAP_SPI=y
-CONFIG_REGULATOR=y
-CONFIG_REGULATOR_FIXED_VOLTAGE=y
-CONFIG_REGULATOR_GPIO=y
-CONFIG_RESET_CONTROLLER=y
-CONFIG_RFS_ACCEL=y
-CONFIG_RPS=y
-CONFIG_RTC_CLASS=y
-# CONFIG_RTC_DRV_CMOS is not set
-CONFIG_RTC_DRV_TEGRA=y
-CONFIG_RTC_I2C_AND_SPI=y
-CONFIG_RTC_NVMEM=y
-CONFIG_RWSEM_SPIN_ON_OWNER=y
-CONFIG_RWSEM_XCHGADD_ALGORITHM=y
-# CONFIG_SCHED_INFO is not set
-CONFIG_SCSI=y
-# CONFIG_SCSI_LOWLEVEL is not set
-# CONFIG_SCSI_PROC_FS is not set
-CONFIG_SERIAL_8250_FSL=y
-# CONFIG_SERIAL_AMBA_PL011 is not set
-CONFIG_SERIAL_OF_PLATFORM=y
-CONFIG_SERIAL_TEGRA=y
-CONFIG_SERIO=y
-CONFIG_SERIO_LIBPS2=y
-CONFIG_SG_POOL=y
-CONFIG_SMP=y
-CONFIG_SMP_ON_UP=y
-CONFIG_SND=y
-# CONFIG_SND_COMPRESS_OFFLOAD is not set
-CONFIG_SND_DMAENGINE_PCM=y
-# CONFIG_SND_DRIVERS is not set
-# CONFIG_SND_HDA_TEGRA is not set
-CONFIG_SND_JACK=y
-CONFIG_SND_JACK_INPUT_DEV=y
-# CONFIG_SND_PCI is not set
-CONFIG_SND_PCM=y
-# CONFIG_SND_PROC_FS is not set
-CONFIG_SND_SIMPLE_CARD=y
-CONFIG_SND_SIMPLE_CARD_UTILS=y
-CONFIG_SND_SOC=y
-CONFIG_SND_SOC_AC97_BUS=y
-CONFIG_SND_SOC_GENERIC_DMAENGINE_PCM=y
-CONFIG_SND_SOC_I2C_AND_SPI=y
-CONFIG_SND_SOC_TEGRA=y
-CONFIG_SND_SOC_TEGRA20_AC97=y
-CONFIG_SND_SOC_TEGRA20_DAS=y
-CONFIG_SND_SOC_TEGRA20_I2S=y
-CONFIG_SND_SOC_TEGRA20_SPDIF=y
-# CONFIG_SND_SOC_TEGRA30_AHUB is not set
-# CONFIG_SND_SOC_TEGRA30_I2S is not set
-# CONFIG_SND_SOC_TEGRA_ALC5632 is not set
-# CONFIG_SND_SOC_TEGRA_MAX98090 is not set
-# CONFIG_SND_SOC_TEGRA_RT5640 is not set
-# CONFIG_SND_SOC_TEGRA_RT5677 is not set
-# CONFIG_SND_SOC_TEGRA_SGTL5000 is not set
-CONFIG_SND_SOC_TEGRA_TRIMSLICE=y
-# CONFIG_SND_SOC_TEGRA_WM8753 is not set
-# CONFIG_SND_SOC_TEGRA_WM8903 is not set
-# CONFIG_SND_SOC_TEGRA_WM9712 is not set
-CONFIG_SND_SOC_TLV320AIC23=y
-CONFIG_SND_SOC_TLV320AIC23_I2C=y
-# CONFIG_SND_USB is not set
-CONFIG_SOC_BUS=y
-CONFIG_SOC_TEGRA_FLOWCTRL=y
-CONFIG_SOC_TEGRA_FUSE=y
-CONFIG_SOC_TEGRA_PMC=y
-CONFIG_SOUND=y
-CONFIG_SOUND_OSS_CORE=y
-CONFIG_SOUND_OSS_CORE_PRECLAIM=y
-CONFIG_SPARSE_IRQ=y
-CONFIG_SPI=y
-CONFIG_SPI_MASTER=y
-# CONFIG_SPI_TEGRA114 is not set
-CONFIG_SPI_TEGRA20_SFLASH=y
-CONFIG_SPI_TEGRA20_SLINK=y
-CONFIG_SRCU=y
-CONFIG_SUSPEND=y
-CONFIG_SUSPEND_FREEZER=y
-CONFIG_SWIOTLB=y
-CONFIG_SWP_EMULATE=y
-CONFIG_SYNC_FILE=y
-CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-CONFIG_TEGRA20_APB_DMA=y
-CONFIG_TEGRA20_MC=y
-CONFIG_TEGRA_AHB=y
-CONFIG_TEGRA_GMI=y
-CONFIG_TEGRA_HOST1X=y
-CONFIG_TEGRA_HOST1X_FIREWALL=y
-CONFIG_TEGRA_IOMMU_GART=y
-# CONFIG_TEGRA_IOMMU_SMMU is not set
-# CONFIG_TEGRA_IVC is not set
-CONFIG_TEGRA_MC=y
-CONFIG_TEGRA_TIMER=y
-CONFIG_TEGRA_WATCHDOG=y
-# CONFIG_THUMB2_KERNEL is not set
-CONFIG_TICK_CPU_ACCOUNTING=y
-CONFIG_TIMER_OF=y
-CONFIG_TIMER_PROBE=y
-CONFIG_TREE_RCU=y
-CONFIG_TREE_SRCU=y
-CONFIG_TRUSTED_FOUNDATIONS=y
-CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
-CONFIG_USB=y
-CONFIG_USB_COMMON=y
-CONFIG_USB_EHCI_HCD=y
-# CONFIG_USB_EHCI_HCD_PLATFORM is not set
-CONFIG_USB_EHCI_TEGRA=y
-CONFIG_USB_HID=y
-CONFIG_USB_HIDDEV=y
-CONFIG_USB_PHY=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB_ULPI=y
-CONFIG_USB_ULPI_VIEWPORT=y
-# CONFIG_USERIO is not set
-CONFIG_USE_OF=y
-CONFIG_VDSO=y
-CONFIG_VECTORS_BASE=0xffff0000
-# CONFIG_VFIO is not set
-CONFIG_VFP=y
-CONFIG_VFPv3=y
-CONFIG_WATCHDOG_CORE=y
-CONFIG_XPS=y
-CONFIG_XZ_DEC_ARM=y
-CONFIG_XZ_DEC_ARMTHUMB=y
-CONFIG_XZ_DEC_BCJ=y
-CONFIG_ZBOOT_ROM_BSS=0
-CONFIG_ZBOOT_ROM_TEXT=0
-CONFIG_ZLIB_DEFLATE=y
-CONFIG_ZLIB_INFLATE=y
diff --git a/target/linux/tegra/patches-4.14/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch b/target/linux/tegra/patches-4.14/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch
deleted file mode 100644
index cfbc5d9c4f89..000000000000
--- a/target/linux/tegra/patches-4.14/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch
+++ /dev/null
@@ -1,77 +0,0 @@
-From patchwork Fri Jul 13 11:32:42 2018
-Content-Type: text/plain; charset="utf-8"
-MIME-Version: 1.0
-Content-Transfer-Encoding: 7bit
-Subject: serial8250 on tegra hsuart: recover from spurious interrupts due to
- tegra2 silicon bug
-X-Patchwork-Submitter: "David R. Piegdon" <lkml@p23q.org>
-X-Patchwork-Id: 943440
-Message-Id: <4676ea34-69ce-5422-1ded-94218b89f7d9@p23q.org>
-To: linux-tegra@vger.kernel.org
-Date: Fri, 13 Jul 2018 11:32:42 +0000
-From: "David R. Piegdon" <lkml@p23q.org>
-List-Id: <linux-tegra.vger.kernel.org>
-
-Hi,
-a while back I sent a few mails regarding spurious interrupts in the
-UARTA (hsuart) block of the Tegra2 SoC, when using the 8250 driver for
-it instead of the hsuart driver. After going down a pretty deep
-debugging/testing hole, I think I found a patch that fixes the issue. So
-far testing in a reboot-cycle suggests that the error frequency dropped
-from >3% of all reboots to at least <0.05% of all reboots. Tests
-continue to run over the weekend.
-
-The patch below already is a second iteration; the first did not reset
-the MCR or contain the lines below '// clear interrupts'. This resulted
-in no more spurious interrupts, but in a few % of spurious interrupts
-that were recovered the UART block did not receive any characters any
-more. So further resetting was required to fully reacquire operational
-state of the UART block.
-
-I'd love any comments/suggestions on this!
-
-Cheers,
-
-David
-
---- a/drivers/tty/serial/8250/8250_core.c
-+++ b/drivers/tty/serial/8250/8250_core.c
-@@ -140,6 +140,38 @@ static irqreturn_t serial8250_interrupt(
- 				"serial8250: too much work for irq%d\n", irq);
- 			break;
- 		}
-+
-+#ifdef CONFIG_ARCH_TEGRA_2x_SOC
-+		if (!handled && (port->type == PORT_TEGRA)) {
-+			/*
-+			 * Fix Tegra 2 CPU silicon bug where sometimes
-+			 * "TX holding register empty" interrupts result in a
-+			 * bad (metastable?) state in Tegras HSUART IP core.
-+			 * Only way to recover seems to be to reset all
-+			 * interrupts as well as the TX queue and the MCR.
-+			 * But we don't want to loose any outgoing characters,
-+			 * so only do it if the RX and TX queues are empty.
-+			 */
-+			unsigned char lsr = port->serial_in(port, UART_LSR);
-+			const unsigned char fifo_empty_mask =
-+						(UART_LSR_TEMT | UART_LSR_THRE);
-+			if (((lsr & (UART_LSR_DR | fifo_empty_mask)) ==
-+							fifo_empty_mask)) {
-+				port->serial_out(port, UART_IER, 0);
-+				port->serial_out(port, UART_MCR, 0);
-+				serial8250_clear_and_reinit_fifos(up);
-+				port->serial_out(port, UART_MCR, up->mcr);
-+				port->serial_out(port, UART_IER, up->ier);
-+				// clear interrupts
-+				serial_port_in(port, UART_LSR);
-+				serial_port_in(port, UART_RX);
-+				serial_port_in(port, UART_IIR);
-+				serial_port_in(port, UART_MSR);
-+				up->lsr_saved_flags = 0;
-+				up->msr_saved_flags = 0;
-+			}
-+		}
-+#endif
- 	} while (l != end);
- 
- 	spin_unlock(&i->lock);
diff --git a/target/linux/tegra/patches-4.14/101-ARM-dtc-tegra-enable-front-panel-leds-in-TrimSlice.patch b/target/linux/tegra/patches-4.14/101-ARM-dtc-tegra-enable-front-panel-leds-in-TrimSlice.patch
deleted file mode 100644
index ae48e8d8627b..000000000000
--- a/target/linux/tegra/patches-4.14/101-ARM-dtc-tegra-enable-front-panel-leds-in-TrimSlice.patch
+++ /dev/null
@@ -1,46 +0,0 @@
---- a/arch/arm/boot/dts/tegra20-trimslice.dts
-+++ b/arch/arm/boot/dts/tegra20-trimslice.dts
-@@ -200,16 +200,17 @@
- 			conf_ata {
- 				nvidia,pins = "ata", "atc", "atd", "ate",
- 					"crtp", "dap2", "dap3", "dap4", "dta",
--					"dtb", "dtc", "dtd", "dte", "gmb",
--					"gme", "i2cp", "pta", "slxc", "slxd",
--					"spdi", "spdo", "uda";
-+					"dtb", "dtc", "dtd", "gmb", "gme",
-+					"i2cp", "pta", "slxc", "slxd", "spdi",
-+					"spdo", "uda";
- 				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
- 				nvidia,tristate = <TEGRA_PIN_ENABLE>;
- 			};
- 			conf_atb {
- 				nvidia,pins = "atb", "cdev1", "cdev2", "dap1",
--					"gma", "gmc", "gmd", "gpu", "gpu7",
--					"gpv", "sdio1", "slxa", "slxk", "uac";
-+					"dte", "gma", "gmc", "gmd", "gpu",
-+					"gpu7", "gpv", "sdio1", "slxa", "slxk",
-+					"uac";
- 				nvidia,pull = <TEGRA_PIN_PULL_NONE>;
- 				nvidia,tristate = <TEGRA_PIN_DISABLE>;
- 			};
-@@ -402,6 +403,20 @@
- 		};
- 	};
- 
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+
-+		ds2 {
-+			label = "trimslice:green:right";
-+			gpios = <&gpio TEGRA_GPIO(D, 2) GPIO_ACTIVE_LOW>;
-+		};
-+
-+		ds3 {
-+			label = "trimslice:green:left";
-+			gpios = <&gpio TEGRA_GPIO(BB, 5) GPIO_ACTIVE_LOW>;
-+		};
-+	};
-+
- 	poweroff {
- 		compatible = "gpio-poweroff";
- 		gpios = <&gpio TEGRA_GPIO(X, 7) GPIO_ACTIVE_LOW>;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
