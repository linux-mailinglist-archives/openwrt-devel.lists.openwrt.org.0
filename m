Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49379174D24
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:14:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KiMoupjkYnzRj2CBQsA/4VQYWj93nCSHCIYGT4QgOhg=; b=l21TLiLucLiZyN
	MFe73Bk4cjlIUhIkaHe7/GCbFpoxLPB3JgoazJOMI7gZJ66OJaugsNxVU3nawTtqlXSWRJQyquZft
	9DZASbze7Ed5zd9jvTmGuXtzo7RQyFmqXLbjlsygXGt5kbh5GFY6Hpa/XqNH++BMbu6jjkJNd7a0E
	e0Tu766kZdu/I68cw0nKChLewpA0im5j6BCPKAc7RcElfmm1/5iYgBCfqMYVNj+hmasOvNmjRLYcI
	Yz5Zp8hJacBJWGu/OpYBkiLSEjgHqdvFwW97pByHkPZQgdnsDqYY7g4nVlTNtD9MRqxhcRmnwsTrk
	ALdHKqHN9fm+sSwzk1AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NTk-0007QA-Jc; Sun, 01 Mar 2020 12:13:52 +0000
Received: from mout-p-201.mailbox.org ([2001:67c:2050::465:201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NSq-0006gg-Q2
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:13:01 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 48VhxL2TrKzQlBp;
 Sun,  1 Mar 2020 13:12:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id D1Pqw1To6jMO; Sun,  1 Mar 2020 13:12:50 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  1 Mar 2020 13:12:36 +0100
Message-Id: <20200301121241.5545-8-hauke@hauke-m.de>
In-Reply-To: <20200301121241.5545-1-hauke@hauke-m.de>
References: <20200301121241.5545-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_041257_178141_15A5A36D 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 07/12] mpc85xx: Remove kernel 4.14 support
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
 target/linux/mpc85xx/config-4.14              | 365 ------------------
 ...85xx-add-gpio-keys-to-of-match-table.patch |  10 -
 ...0-powerpc-85xx-tl-wdr4900-v1-support.patch |  82 ----
 .../101-powerpc-85xx-hiveap-330-support.patch |  30 --
 .../102-powerpc-add-cmdline-override.patch    |  37 --
 .../103-powerpc-fix-build-cross32ar.patch     |  10 -
 ...change-P2020RDB-dts-file-for-OpenWRT.patch | 170 --------
 .../105-powerpc-85xx-red-15w-rev1.patch       |  29 --
 .../106-powerpc-85xx-panda-support.patch      |  30 --
 9 files changed, 763 deletions(-)
 delete mode 100644 target/linux/mpc85xx/config-4.14
 delete mode 100644 target/linux/mpc85xx/patches-4.14/001-powerpc-85xx-add-gpio-keys-to-of-match-table.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/100-powerpc-85xx-tl-wdr4900-v1-support.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/101-powerpc-85xx-hiveap-330-support.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/102-powerpc-add-cmdline-override.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/103-powerpc-fix-build-cross32ar.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/104-powerpc-mpc85xx-change-P2020RDB-dts-file-for-OpenWRT.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/105-powerpc-85xx-red-15w-rev1.patch
 delete mode 100644 target/linux/mpc85xx/patches-4.14/106-powerpc-85xx-panda-support.patch

diff --git a/target/linux/mpc85xx/config-4.14 b/target/linux/mpc85xx/config-4.14
deleted file mode 100644
index dd80f2cdd76a..000000000000
--- a/target/linux/mpc85xx/config-4.14
+++ /dev/null
@@ -1,365 +0,0 @@
-# CONFIG_40x is not set
-# CONFIG_44x is not set
-# CONFIG_ADVANCED_OPTIONS is not set
-CONFIG_AR8216_PHY=y
-CONFIG_AR8216_PHY_LEDS=y
-CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=y
-CONFIG_ARCH_ENABLE_MEMORY_HOTREMOVE=y
-CONFIG_ARCH_HAS_DMA_SET_COHERENT_MASK=y
-CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
-CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
-CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
-CONFIG_ARCH_HAS_SG_CHAIN=y
-CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
-# CONFIG_ARCH_HAS_STRICT_MODULE_RWX is not set
-CONFIG_ARCH_HAS_WALK_MEMORY=y
-CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=y
-CONFIG_ARCH_HIBERNATION_POSSIBLE=y
-CONFIG_ARCH_MAY_HAVE_PC_FDC=y
-CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
-CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
-CONFIG_ARCH_MMAP_RND_BITS=11
-CONFIG_ARCH_MMAP_RND_BITS_MAX=17
-CONFIG_ARCH_MMAP_RND_BITS_MIN=11
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=17
-CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=11
-CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
-# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
-# CONFIG_ARCH_RANDOM is not set
-CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
-CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
-CONFIG_ARCH_SUPPORTS_DEFERRED_STRUCT_PAGE_INIT=y
-CONFIG_ARCH_SUPPORTS_UPROBES=y
-CONFIG_ARCH_SUSPEND_POSSIBLE=y
-CONFIG_ARCH_USE_BUILTIN_BSWAP=y
-CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
-CONFIG_ARCH_WEAK_RELEASE_ACQUIRE=y
-CONFIG_ASN1=y
-CONFIG_AUDIT_ARCH=y
-CONFIG_BLK_MQ_PCI=y
-CONFIG_BOOKE=y
-CONFIG_BOOKE_WDT=y
-CONFIG_BOUNCE=y
-# CONFIG_BSC9131_RDB is not set
-# CONFIG_BSC9132_QDS is not set
-# CONFIG_C293_PCIE is not set
-CONFIG_CLONE_BACKWARDS=y
-CONFIG_CLZ_TAB=y
-CONFIG_CMDLINE="console=ttyS0,115200"
-CONFIG_CMDLINE_BOOL=y
-# CONFIG_CMDLINE_OVERRIDE is not set
-# CONFIG_CORENET_GENERIC is not set
-# CONFIG_CPM2 is not set
-CONFIG_CPU_BIG_ENDIAN=y
-CONFIG_CRYPTO_AEAD=y
-CONFIG_CRYPTO_AEAD2=y
-# CONFIG_CRYPTO_AES_PPC_SPE is not set
-CONFIG_CRYPTO_AKCIPHER=y
-CONFIG_CRYPTO_AKCIPHER2=y
-CONFIG_CRYPTO_AUTHENC=y
-CONFIG_CRYPTO_HASH=y
-CONFIG_CRYPTO_HASH2=y
-CONFIG_CRYPTO_HW=y
-CONFIG_CRYPTO_MANAGER=y
-CONFIG_CRYPTO_MANAGER2=y
-# CONFIG_CRYPTO_MD5_PPC is not set
-CONFIG_CRYPTO_NULL=y
-CONFIG_CRYPTO_NULL2=y
-CONFIG_CRYPTO_RNG=y
-CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_RSA=y
-# CONFIG_CRYPTO_SHA1_PPC is not set
-# CONFIG_CRYPTO_SHA1_PPC_SPE is not set
-# CONFIG_CRYPTO_SHA256_PPC_SPE is not set
-CONFIG_CRYPTO_WORKQUEUE=y
-CONFIG_DEBUG_BUGVERBOSE=y
-# CONFIG_DEFAULT_UIMAGE is not set
-CONFIG_DNOTIFY=y
-CONFIG_DTC=y
-# CONFIG_E200 is not set
-CONFIG_E500=y
-CONFIG_EARLY_PRINTK=y
-CONFIG_EDAC_ATOMIC_SCRUB=y
-CONFIG_EDAC_SUPPORT=y
-CONFIG_ENABLE_MUST_CHECK=y
-# CONFIG_EPAPR_BOOT is not set
-CONFIG_ETHERNET_PACKET_MANGLE=y
-# CONFIG_FHCI_DEBUG is not set
-CONFIG_FIXED_PHY=y
-# CONFIG_FORCE_SMP is not set
-CONFIG_FSL_BOOKE=y
-# CONFIG_FSL_DPAA is not set
-CONFIG_FSL_EMB_PERFMON=y
-# CONFIG_FSL_FMAN is not set
-CONFIG_FSL_GTM=y
-CONFIG_FSL_LBC=y
-CONFIG_FSL_PCI=y
-CONFIG_FSL_PQ_MDIO=y
-CONFIG_FSL_SOC=y
-CONFIG_FSL_SOC_BOOKE=y
-# CONFIG_FSL_ULI1575 is not set
-CONFIG_GENERIC_ALLOCATOR=y
-CONFIG_GENERIC_ATOMIC64=y
-CONFIG_GENERIC_BUG=y
-CONFIG_GENERIC_CLOCKEVENTS=y
-CONFIG_GENERIC_CMOS_UPDATE=y
-CONFIG_GENERIC_CPU_AUTOPROBE=y
-# CONFIG_GENERIC_CSUM is not set
-CONFIG_GENERIC_IO=y
-CONFIG_GENERIC_IRQ_SHOW=y
-CONFIG_GENERIC_IRQ_SHOW_LEVEL=y
-CONFIG_GENERIC_ISA_DMA=y
-CONFIG_GENERIC_NVRAM=y
-CONFIG_GENERIC_PCI_IOMAP=y
-CONFIG_GENERIC_SMP_IDLE_THREAD=y
-CONFIG_GENERIC_STRNCPY_FROM_USER=y
-CONFIG_GENERIC_STRNLEN_USER=y
-# CONFIG_GENERIC_TBSYNC is not set
-CONFIG_GENERIC_TIME_VSYSCALL=y
-CONFIG_GEN_RTC=y
-# CONFIG_GE_FPGA is not set
-# CONFIG_GE_IMP3A is not set
-CONFIG_GIANFAR=y
-CONFIG_GPIOLIB=y
-CONFIG_GPIO_GENERIC=y
-CONFIG_GPIO_MPC8XXX=y
-CONFIG_GPIO_SYSFS=y
-# CONFIG_GRO_CELLS is not set
-CONFIG_HAS_DMA=y
-CONFIG_HAS_IOMEM=y
-CONFIG_HAS_IOPORT_MAP=y
-# CONFIG_HAS_RAPIDIO is not set
-# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
-CONFIG_HAVE_ARCH_AUDITSYSCALL=y
-# CONFIG_HAVE_ARCH_BITREVERSE is not set
-CONFIG_HAVE_ARCH_JUMP_LABEL=y
-CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
-CONFIG_HAVE_ARCH_TRACEHOOK=y
-# CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_CBPF_JIT=y
-CONFIG_HAVE_DEBUG_KMEMLEAK=y
-CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
-CONFIG_HAVE_DMA_API_DEBUG=y
-CONFIG_HAVE_DYNAMIC_FTRACE=y
-CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
-CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
-CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
-CONFIG_HAVE_FUNCTION_TRACER=y
-# CONFIG_HAVE_GENERIC_DMA_COHERENT is not set
-CONFIG_HAVE_GENERIC_GUP=y
-CONFIG_HAVE_IDE=y
-CONFIG_HAVE_IOREMAP_PROT=y
-CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
-CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
-CONFIG_HAVE_KPROBES_ON_FTRACE=y
-CONFIG_HAVE_MEMBLOCK=y
-CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
-CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
-CONFIG_HAVE_NET_DSA=y
-CONFIG_HAVE_OPROFILE=y
-CONFIG_HAVE_PERF_EVENTS=y
-CONFIG_HAVE_PERF_REGS=y
-CONFIG_HAVE_PERF_USER_STACK_DUMP=y
-CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
-# CONFIG_HAVE_SETUP_PER_CPU_AREA is not set
-CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
-CONFIG_HAVE_VIRT_CPU_ACCOUNTING=y
-# CONFIG_HIVEAP_330 is not set
-CONFIG_HW_RANDOM=y
-CONFIG_HZ=250
-# CONFIG_HZ_100 is not set
-CONFIG_HZ_250=y
-CONFIG_HZ_PERIODIC=y
-CONFIG_I2C=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_I2C_MPC=y
-CONFIG_ILLEGAL_POINTER_VALUE=0
-CONFIG_INITRAMFS_SOURCE=""
-CONFIG_IOMMU_HELPER=y
-# CONFIG_IPIC is not set
-CONFIG_IRQCHIP=y
-CONFIG_IRQ_DOMAIN=y
-CONFIG_IRQ_FORCED_THREADING=y
-CONFIG_IRQ_WORK=y
-CONFIG_ISA_DMA_API=y
-CONFIG_KERNEL_GZIP=y
-CONFIG_KERNEL_START=0xc0000000
-# CONFIG_KSI8560 is not set
-CONFIG_LIBFDT=y
-CONFIG_LOWMEM_CAM_NUM=3
-CONFIG_LOWMEM_SIZE=0x30000000
-CONFIG_LXT_PHY=y
-# CONFIG_MATH_EMULATION is not set
-CONFIG_MDIO_BUS=y
-CONFIG_MDIO_DEVICE=y
-CONFIG_MIGRATION=y
-# CONFIG_MMIO_NVRAM is not set
-CONFIG_MODULES_USE_ELF_RELA=y
-# CONFIG_MPC8536_DS is not set
-# CONFIG_MPC8540_ADS is not set
-# CONFIG_MPC8560_ADS is not set
-# CONFIG_MPC85xx_CDS is not set
-# CONFIG_MPC85xx_DS is not set
-# CONFIG_MPC85xx_MDS is not set
-# CONFIG_MPC85xx_RDB is not set
-CONFIG_MPIC=y
-# CONFIG_MPIC_MSGR is not set
-CONFIG_MPIC_TIMER=y
-# CONFIG_MPIC_U3_HT_IRQS is not set
-# CONFIG_MPIC_WEIRD is not set
-CONFIG_MPILIB=y
-# CONFIG_MTD_CFI is not set
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_NAND=y
-CONFIG_MTD_NAND_ECC=y
-CONFIG_MTD_SPI_NOR=y
-# CONFIG_MVME2500 is not set
-# CONFIG_NEED_DMA_MAP_STATE is not set
-# CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK is not set
-CONFIG_NEED_PER_CPU_KM=y
-CONFIG_NEED_SG_DMA_LENGTH=y
-CONFIG_NLS=y
-# CONFIG_NONSTATIC_KERNEL is not set
-CONFIG_NO_BOOTMEM=y
-CONFIG_NR_IRQS=512
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
-CONFIG_OLD_SIGSUSPEND=y
-# CONFIG_P1010_RDB is not set
-# CONFIG_P1022_DS is not set
-# CONFIG_P1022_RDK is not set
-# CONFIG_P1023_RDB is not set
-CONFIG_PAGE_OFFSET=0xc0000000
-# CONFIG_PANDA is not set
-CONFIG_PCI=y
-CONFIG_PCIEAER=y
-CONFIG_PCIEASPM=y
-# CONFIG_PCIEASPM_DEBUG is not set
-CONFIG_PCIEASPM_DEFAULT=y
-# CONFIG_PCIEASPM_PERFORMANCE is not set
-# CONFIG_PCIEASPM_POWERSAVE is not set
-# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
-CONFIG_PCIEPORTBUS=y
-CONFIG_PCI_DOMAINS=y
-CONFIG_PGTABLE_LEVELS=2
-CONFIG_PHYLIB=y
-CONFIG_PHYSICAL_ALIGN=0x04000000
-CONFIG_PHYSICAL_START=0x00000000
-# CONFIG_PHYS_64BIT is not set
-# CONFIG_PPA8548 is not set
-CONFIG_PPC=y
-CONFIG_PPC32=y
-# CONFIG_PPC64 is not set
-CONFIG_PPC_85xx=y
-# CONFIG_PPC_8xx is not set
-# CONFIG_PPC_970_NAP is not set
-CONFIG_PPC_ADV_DEBUG_DACS=2
-CONFIG_PPC_ADV_DEBUG_DVCS=0
-CONFIG_PPC_ADV_DEBUG_IACS=2
-CONFIG_PPC_ADV_DEBUG_REGS=y
-CONFIG_PPC_BOOK3E_MMU=y
-# CONFIG_PPC_BOOK3S_32 is not set
-# CONFIG_PPC_CELL is not set
-# CONFIG_PPC_CELL_NATIVE is not set
-# CONFIG_PPC_COPRO_BASE is not set
-# CONFIG_PPC_DCR_MMIO is not set
-# CONFIG_PPC_DCR_NATIVE is not set
-CONFIG_PPC_DOORBELL=y
-# CONFIG_PPC_E500MC is not set
-# CONFIG_PPC_EARLY_DEBUG is not set
-# CONFIG_PPC_EPAPR_HV_PIC is not set
-CONFIG_PPC_FSL_BOOK3E=y
-# CONFIG_PPC_I8259 is not set
-# CONFIG_PPC_ICP_HV is not set
-# CONFIG_PPC_ICP_NATIVE is not set
-# CONFIG_PPC_ICS_RTAS is not set
-CONFIG_PPC_INDIRECT_PCI=y
-CONFIG_PPC_MMU_NOHASH=y
-# CONFIG_PPC_MM_SLICES is not set
-# CONFIG_PPC_MPC106 is not set
-# CONFIG_PPC_P7_NAP is not set
-CONFIG_PPC_PCI_CHOICE=y
-# CONFIG_PPC_PTDUMP is not set
-# CONFIG_PPC_QEMU_E500 is not set
-# CONFIG_PPC_RTAS is not set
-CONFIG_PPC_SMP_MUXED_IPI=y
-CONFIG_PPC_UDBG_16550=y
-CONFIG_PPC_WERROR=y
-# CONFIG_PPC_XICS is not set
-# CONFIG_PPC_XIVE is not set
-# CONFIG_PPC_XIVE_SPAPR is not set
-# CONFIG_PQ2ADS is not set
-CONFIG_QE_GPIO=y
-CONFIG_QE_USB=y
-CONFIG_QUICC_ENGINE=y
-CONFIG_RAS=y
-# CONFIG_RCU_NEED_SEGCBLIST is not set
-# CONFIG_RCU_STALL_COMMON is not set
-# CONFIG_RED_15W_REV1 is not set
-CONFIG_REGMAP=y
-CONFIG_REGMAP_I2C=y
-CONFIG_REGMAP_SPI=y
-CONFIG_RTC_CLASS=y
-CONFIG_RTC_DRV_GENERIC=y
-CONFIG_RTC_I2C_AND_SPI=y
-CONFIG_RTC_MC146818_LIB=y
-CONFIG_RWSEM_XCHGADD_ALGORITHM=y
-# CONFIG_SBC8548 is not set
-# CONFIG_SCHED_INFO is not set
-# CONFIG_SCSI_DMA is not set
-CONFIG_SERIAL_8250_EXTENDED=y
-CONFIG_SERIAL_8250_FSL=y
-CONFIG_SERIAL_8250_SHARE_IRQ=y
-CONFIG_SERIAL_OF_PLATFORM=y
-# CONFIG_SERIAL_QE is not set
-CONFIG_SIMPLE_GPIO=y
-# CONFIG_SOCRATES is not set
-CONFIG_SPARSE_IRQ=y
-CONFIG_SPE=y
-CONFIG_SPE_POSSIBLE=y
-CONFIG_SPI=y
-CONFIG_SPI_FSL_ESPI=y
-CONFIG_SPI_MASTER=y
-CONFIG_SRCU=y
-# CONFIG_STRIP_ASM_SYMS is not set
-# CONFIG_STX_GP3 is not set
-CONFIG_SWCONFIG=y
-CONFIG_SWIOTLB=y
-CONFIG_SWPHY=y
-CONFIG_SYSCTL_EXCEPTION_TRACE=y
-CONFIG_TASK_SIZE=0xc0000000
-CONFIG_THREAD_SHIFT=13
-CONFIG_TICK_CPU_ACCOUNTING=y
-CONFIG_TINY_SRCU=y
-# CONFIG_TL_WDR4900_V1 is not set
-# CONFIG_TQM8540 is not set
-# CONFIG_TQM8541 is not set
-# CONFIG_TQM8548 is not set
-# CONFIG_TQM8555 is not set
-# CONFIG_TQM8560 is not set
-# CONFIG_TWR_P102x is not set
-CONFIG_UCC=y
-CONFIG_UCC_FAST=y
-CONFIG_UCC_GETH=y
-# CONFIG_UGETH_TX_ON_DEMAND is not set
-CONFIG_USB_SUPPORT=y
-CONFIG_VDSO32=y
-# CONFIG_VIRT_CPU_ACCOUNTING_NATIVE is not set
-CONFIG_VM_EVENT_COUNTERS=y
-CONFIG_WATCHDOG_CORE=y
-# CONFIG_XES_MPC85xx is not set
-# CONFIG_XPS_USB_HCD_XILINX is not set
-CONFIG_XZ_DEC_BCJ=y
-CONFIG_XZ_DEC_POWERPC=y
diff --git a/target/linux/mpc85xx/patches-4.14/001-powerpc-85xx-add-gpio-keys-to-of-match-table.patch b/target/linux/mpc85xx/patches-4.14/001-powerpc-85xx-add-gpio-keys-to-of-match-table.patch
deleted file mode 100644
index 58c4be60070a..000000000000
--- a/target/linux/mpc85xx/patches-4.14/001-powerpc-85xx-add-gpio-keys-to-of-match-table.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- a/arch/powerpc/platforms/85xx/common.c
-+++ b/arch/powerpc/platforms/85xx/common.c
-@@ -33,6 +33,7 @@ static const struct of_device_id mpc85xx
- 	{ .compatible = "fsl,mpc8548-guts", },
- 	/* Probably unnecessary? */
- 	{ .compatible = "gpio-leds", },
-+	{ .compatible = "gpio-keys", },
- 	/* For all PCI controllers */
- 	{ .compatible = "fsl,mpc8540-pci", },
- 	{ .compatible = "fsl,mpc8548-pcie", },
diff --git a/target/linux/mpc85xx/patches-4.14/100-powerpc-85xx-tl-wdr4900-v1-support.patch b/target/linux/mpc85xx/patches-4.14/100-powerpc-85xx-tl-wdr4900-v1-support.patch
deleted file mode 100644
index 86b6a577354c..000000000000
--- a/target/linux/mpc85xx/patches-4.14/100-powerpc-85xx-tl-wdr4900-v1-support.patch
+++ /dev/null
@@ -1,82 +0,0 @@
-From 53bc6ae5da3b2902581c30ac2568f51ce35e7624 Mon Sep 17 00:00:00 2001
-From: Gabor Juhos <juhosg@openwrt.org>
-Date: Wed, 20 Feb 2013 08:40:33 +0100
-Subject: [PATCH] powerpc: 85xx: add support for the TP-Link TL-WDR4900 v1
- board
-
-This patch adds support for the TP-Link TL-WDR4900 v1
-concurrent dual-band wireless router. The devices uses
-the Freescale P1014 SoC.
-
-Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
-Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
----
- arch/powerpc/boot/Makefile           |  3 ++-
- arch/powerpc/boot/wrapper            |  5 +++++
- arch/powerpc/platforms/85xx/Kconfig  | 11 +++++++++++
- arch/powerpc/platforms/85xx/Makefile |  1 +
- 4 files changed, 19 insertions(+), 1 deletion(-)
-
---- a/arch/powerpc/boot/Makefile
-+++ b/arch/powerpc/boot/Makefile
-@@ -156,6 +156,7 @@ src-plat-$(CONFIG_PPC_PSERIES) += pserie
- src-plat-$(CONFIG_PPC_POWERNV) += pseries-head.S
- src-plat-$(CONFIG_PPC_IBM_CELL_BLADE) += pseries-head.S
- src-plat-$(CONFIG_MVME7100) += motload-head.S mvme7100.c
-+src-plat-$(CONFIG_TL_WDR4900_V1) += simpleboot.c fixed-head.S
- 
- src-wlib := $(sort $(src-wlib-y))
- src-plat := $(sort $(src-plat-y))
-@@ -335,7 +336,7 @@ image-$(CONFIG_TQM8555)			+= cuImage.tqm
- image-$(CONFIG_TQM8560)			+= cuImage.tqm8560
- image-$(CONFIG_SBC8548)			+= cuImage.sbc8548
- image-$(CONFIG_KSI8560)			+= cuImage.ksi8560
--
-+image-$(CONFIG_TL_WDR4900_V1)		+= simpleImage.tl-wdr4900-v1
- # Board ports in arch/powerpc/platform/86xx/Kconfig
- image-$(CONFIG_MVME7100)                += dtbImage.mvme7100
- 
---- a/arch/powerpc/boot/wrapper
-+++ b/arch/powerpc/boot/wrapper
-@@ -302,6 +302,11 @@ adder875-redboot)
-     platformo="$object/fixed-head.o $object/redboot-8xx.o"
-     binary=y
-     ;;
-+simpleboot-tl-wdr4900-v1)
-+    platformo="$object/fixed-head.o $object/simpleboot.o"
-+    link_address='0x1000000'
-+    binary=y
-+    ;;
- simpleboot-virtex405-*)
-     platformo="$object/virtex405-head.o $object/simpleboot.o $object/virtex.o"
-     binary=y
---- a/arch/powerpc/platforms/85xx/Kconfig
-+++ b/arch/powerpc/platforms/85xx/Kconfig
-@@ -170,6 +170,17 @@ config STX_GP3
- 	select CPM2
- 	select DEFAULT_UIMAGE
- 
-+config TL_WDR4900_V1
-+    bool "TP-Link TL-WDR4900 v1"
-+    select DEFAULT_UIMAGE
-+    select ARCH_REQUIRE_GPIOLIB
-+    select GPIO_MPC8XXX
-+    help
-+      This option enables support for the TP-Link TL-WDR4900 v1 board.
-+
-+      This board is a Concurrent Dual-Band wireless router with a
-+      Freescale P1014 SoC.
-+
- config TQM8540
- 	bool "TQ Components TQM8540"
- 	help
---- a/arch/powerpc/platforms/85xx/Makefile
-+++ b/arch/powerpc/platforms/85xx/Makefile
-@@ -26,6 +26,7 @@ obj-$(CONFIG_CORENET_GENERIC)   += coren
- obj-$(CONFIG_FB_FSL_DIU)	+= t1042rdb_diu.o
- obj-$(CONFIG_STX_GP3)	  += stx_gp3.o
- obj-$(CONFIG_TQM85xx)	  += tqm85xx.o
-+obj-$(CONFIG_TL_WDR4900_V1) += tl_wdr4900_v1.o
- obj-$(CONFIG_SBC8548)     += sbc8548.o
- obj-$(CONFIG_PPA8548)     += ppa8548.o
- obj-$(CONFIG_SOCRATES)    += socrates.o socrates_fpga_pic.o
diff --git a/target/linux/mpc85xx/patches-4.14/101-powerpc-85xx-hiveap-330-support.patch b/target/linux/mpc85xx/patches-4.14/101-powerpc-85xx-hiveap-330-support.patch
deleted file mode 100644
index 34568398c2ff..000000000000
--- a/target/linux/mpc85xx/patches-4.14/101-powerpc-85xx-hiveap-330-support.patch
+++ /dev/null
@@ -1,30 +0,0 @@
---- a/arch/powerpc/platforms/85xx/Kconfig
-+++ b/arch/powerpc/platforms/85xx/Kconfig
-@@ -49,6 +49,17 @@ config BSC9132_QDS
- 	  and dual StarCore SC3850 DSP cores.
- 	  Manufacturer : Freescale Semiconductor, Inc
- 
-+config HIVEAP_330
-+    bool "Aerohive HiveAP-330"
-+    select DEFAULT_UIMAGE
-+    select ARCH_REQUIRE_GPIOLIB
-+    select GPIO_MPC8XXX
-+    help
-+      This option enables support for the Aerohive HiveAP-330 board.
-+
-+      This board is a Concurrent Dual-Band wireless access point with a
-+      Freescale P1020 SoC.
-+
- config MPC8540_ADS
- 	bool "Freescale MPC8540 ADS"
- 	select DEFAULT_UIMAGE
---- a/arch/powerpc/platforms/85xx/Makefile
-+++ b/arch/powerpc/platforms/85xx/Makefile
-@@ -10,6 +10,7 @@ obj-y += common.o
- obj-$(CONFIG_BSC9131_RDB) += bsc913x_rdb.o
- obj-$(CONFIG_BSC9132_QDS) += bsc913x_qds.o
- obj-$(CONFIG_C293_PCIE)   += c293pcie.o
-+obj-$(CONFIG_HIVEAP_330) += hiveap-330.o
- obj-$(CONFIG_MPC8540_ADS) += mpc85xx_ads.o
- obj-$(CONFIG_MPC8560_ADS) += mpc85xx_ads.o
- obj-$(CONFIG_MPC85xx_CDS) += mpc85xx_cds.o
diff --git a/target/linux/mpc85xx/patches-4.14/102-powerpc-add-cmdline-override.patch b/target/linux/mpc85xx/patches-4.14/102-powerpc-add-cmdline-override.patch
deleted file mode 100644
index 087798e3d813..000000000000
--- a/target/linux/mpc85xx/patches-4.14/102-powerpc-add-cmdline-override.patch
+++ /dev/null
@@ -1,37 +0,0 @@
---- a/arch/powerpc/Kconfig
-+++ b/arch/powerpc/Kconfig
-@@ -837,6 +837,14 @@ config CMDLINE_FORCE
- 	  This is useful if you cannot or don't want to change the
- 	  command-line options your boot loader passes to the kernel.
- 
-+config CMDLINE_OVERRIDE
-+    bool "Use alternative cmdline from device tree"
-+    help
-+      Some bootloaders may have uneditable bootargs. While CMDLINE_FORCE can
-+      be used, this is not a good option for kernels that are shared across
-+      devices. This setting enables using "chosen/cmdline-override" as the
-+      cmdline if it exists in the device tree.
-+
- config EXTRA_TARGETS
- 	string "Additional default image types"
- 	help
---- a/drivers/of/fdt.c
-+++ b/drivers/of/fdt.c
-@@ -1131,6 +1131,17 @@ int __init early_init_dt_scan_chosen(uns
- 	if (p != NULL && l > 0)
- 		strlcpy(data, p, min((int)l, COMMAND_LINE_SIZE));
- 
-+    /* CONFIG_CMDLINE_OVERRIDE is used to fallback to a different
-+     * device tree option of chosen/bootargs-override. This is
-+     * helpful on boards where u-boot sets bootargs, and is unable
-+     * to be modified.
-+     */
-+#ifdef CONFIG_CMDLINE_OVERRIDE
-+	p = of_get_flat_dt_prop(node, "bootargs-override", &l);
-+	if (p != NULL && l > 0)
-+		strlcpy(data, p, min((int)l, COMMAND_LINE_SIZE));
-+#endif
-+
- 	/*
- 	 * CONFIG_CMDLINE is meant to be a default in case nothing else
- 	 * managed to set the command line, unless CONFIG_CMDLINE_FORCE
diff --git a/target/linux/mpc85xx/patches-4.14/103-powerpc-fix-build-cross32ar.patch b/target/linux/mpc85xx/patches-4.14/103-powerpc-fix-build-cross32ar.patch
deleted file mode 100644
index 7ed52f649c4e..000000000000
--- a/target/linux/mpc85xx/patches-4.14/103-powerpc-fix-build-cross32ar.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- a/arch/powerpc/Makefile
-+++ b/arch/powerpc/Makefile
-@@ -23,6 +23,7 @@ CROSS32AR		:= $(CROSS32_COMPILE)ar
- ifeq ($(HAS_BIARCH),y)
- ifeq ($(CROSS32_COMPILE),)
- CROSS32CC	:= $(CC) -m32
-+CROSS32AR	:= $(AR)
- KBUILD_ARFLAGS	+= --target=elf32-powerpc
- endif
- endif
diff --git a/target/linux/mpc85xx/patches-4.14/104-powerpc-mpc85xx-change-P2020RDB-dts-file-for-OpenWRT.patch b/target/linux/mpc85xx/patches-4.14/104-powerpc-mpc85xx-change-P2020RDB-dts-file-for-OpenWRT.patch
deleted file mode 100644
index 39c72314b8da..000000000000
--- a/target/linux/mpc85xx/patches-4.14/104-powerpc-mpc85xx-change-P2020RDB-dts-file-for-OpenWRT.patch
+++ /dev/null
@@ -1,170 +0,0 @@
-From 93514afd769c305182beeed1f9c4c46235879ef8 Mon Sep 17 00:00:00 2001
-From: Pawel Dembicki <paweldembicki@gmail.com>
-Date: Sun, 30 Dec 2018 23:24:41 +0100
-Subject: [PATCH] powerpc: mpc85xx: change P2020RDB dts file for OpenWRT
-
-This patch apply chages for OpenWRT in P2020RDB
-dts file.
-
-Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
----
- arch/powerpc/boot/dts/fsl/p2020rdb.dts | 98 +++++++++++++++++---------
- 1 file changed, 63 insertions(+), 35 deletions(-)
-
---- a/arch/powerpc/boot/dts/fsl/p2020rdb.dts
-+++ b/arch/powerpc/boot/dts/fsl/p2020rdb.dts
-@@ -2,6 +2,7 @@
-  * P2020 RDB Device Tree Source
-  *
-  * Copyright 2009-2012 Freescale Semiconductor Inc.
-+ * Copyright 2018      Pawel Dembicki <paweldembicki@gmail.com>
-  *
-  * This program is free software; you can redistribute  it and/or modify it
-  * under  the terms of  the GNU General  Public License as published by the
-@@ -9,10 +10,15 @@
-  * option) any later version.
-  */
- 
-+/dts-v1/;
-+
- /include/ "p2020si-pre.dtsi"
- 
-+#include <dt-bindings/gpio/gpio.h>
-+#include <dt-bindings/input/input.h>
-+
- / {
--	model = "fsl,P2020RDB";
-+	model = "Freescale P2020RDB";
- 	compatible = "fsl,P2020RDB";
- 
- 	aliases {
-@@ -38,48 +44,38 @@
- 			  0x2 0x0 0x0 0xffb00000 0x00020000>;
- 
- 		nor@0,0 {
--			#address-cells = <1>;
--			#size-cells = <1>;
- 			compatible = "cfi-flash";
- 			reg = <0x0 0x0 0x1000000>;
- 			bank-width = <2>;
- 			device-width = <1>;
- 
--			partition@0 {
--				/* This location must not be altered  */
--				/* 256KB for Vitesse 7385 Switch firmware */
--				reg = <0x0 0x00040000>;
--				label = "NOR (RO) Vitesse-7385 Firmware";
--				read-only;
--			};
--
--			partition@40000 {
--				/* 256KB for DTB Image */
--				reg = <0x00040000 0x00040000>;
--				label = "NOR (RO) DTB Image";
--				read-only;
--			};
-+			partitions {
-+				compatible = "fixed-partitions";
-+				#address-cells = <1>;
-+				#size-cells = <1>;
- 
--			partition@80000 {
--				/* 3.5 MB for Linux Kernel Image */
--				reg = <0x00080000 0x00380000>;
--				label = "NOR (RO) Linux Kernel Image";
--				read-only;
--			};
-+				partition@0 {
-+					/* This location must not be altered  */
-+					/* 256KB for Vitesse 7385 Switch firmware */
-+					reg = <0x0 0x00040000>;
-+					label = "NOR (RO) Vitesse-7385 Firmware";
-+					read-only;
-+				};
- 
--			partition@400000 {
--				/* 11MB for JFFS2 based Root file System */
--				reg = <0x00400000 0x00b00000>;
--				label = "NOR (RW) JFFS2 Root File System";
--			};
-+				partition@40000 {
-+					compatible = "denx,fit";
-+					reg = <0x00040000 0x00ec0000>;
-+					label = "firmware";
-+				};
- 
--			partition@f00000 {
--				/* This location must not be altered  */
--				/* 512KB for u-boot Bootloader Image */
--				/* 512KB for u-boot Environment Variables */
--				reg = <0x00f00000 0x00100000>;
--				label = "NOR (RO) U-Boot Image";
--				read-only;
-+				partition@f00000 {
-+					/* This location must not be altered  */
-+					/* 512KB for u-boot Bootloader Image */
-+					/* 512KB for u-boot Environment Variables */
-+					reg = <0x00f00000 0x00100000>;
-+					label = "u-boot";
-+					read-only;
-+				};
- 			};
- 		};
- 
-@@ -144,13 +140,43 @@
- 	soc: soc@ffe00000 {
- 		ranges = <0x0 0x0 0xffe00000 0x100000>;
- 
-+		gpio0: gpio-controller@fc00 {
-+		};
-+
- 		i2c@3000 {
-+			temperature-sensor@4c {
-+				compatible = "adi,adt7461";
-+				reg = <0x4c>;
-+			};
-+
-+			eeprom@50 {
-+				compatible = "atmel,24c256";
-+				reg = <0x50>;
-+			};
-+
- 			rtc@68 {
- 				compatible = "dallas,ds1339";
- 				reg = <0x68>;
- 			};
- 		};
- 
-+		i2c@3100 {
-+			pmic@11 {
-+				compatible = "zl2006";
-+				reg = <0x11>;
-+			};
-+
-+			gpio@18 {
-+				compatible = "nxp,pca9557";
-+				reg = <0x18>;
-+			};
-+
-+			eeprom@52 {
-+				compatible = "atmel,24c01";
-+				reg = <0x52>;
-+			};
-+		};
-+
- 		spi@7000 {
- 			flash@0 {
- 				#address-cells = <1>;
-@@ -204,10 +230,12 @@
- 			phy0: ethernet-phy@0 {
- 				interrupts = <3 1 0 0>;
- 				reg = <0x0>;
-+				reset-gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
- 			};
- 			phy1: ethernet-phy@1 {
- 				interrupts = <3 1 0 0>;
- 				reg = <0x1>;
-+				reset-gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
- 			};
- 			tbi-phy@2 {
- 				device_type = "tbi-phy";
diff --git a/target/linux/mpc85xx/patches-4.14/105-powerpc-85xx-red-15w-rev1.patch b/target/linux/mpc85xx/patches-4.14/105-powerpc-85xx-red-15w-rev1.patch
deleted file mode 100644
index 42bcd58de02b..000000000000
--- a/target/linux/mpc85xx/patches-4.14/105-powerpc-85xx-red-15w-rev1.patch
+++ /dev/null
@@ -1,29 +0,0 @@
---- a/arch/powerpc/platforms/85xx/Kconfig
-+++ b/arch/powerpc/platforms/85xx/Kconfig
-@@ -173,6 +173,16 @@ config XES_MPC85xx
- 	  Manufacturer: Extreme Engineering Solutions, Inc.
- 	  URL: <http://www.xes-inc.com/>
- 
-+config RED_15W_REV1
-+	bool "Sophos RED 15w Rev.1"
-+	select DEFAULT_UIMAGE
-+	select ARCH_REQUIRE_GPIOLIB
-+	select GPIO_MPC8XXX
-+	help
-+	  This option enables support for the SOPHOS RED 15w Rev.1 board.
-+
-+	  This board is a wireless VPN router with a Freescale P1010 SoC.
-+
- config STX_GP3
- 	bool "Silicon Turnkey Express GP3"
- 	help
---- a/arch/powerpc/platforms/85xx/Makefile
-+++ b/arch/powerpc/platforms/85xx/Makefile
-@@ -25,6 +25,7 @@ obj-$(CONFIG_P1023_RDB)   += p1023_rdb.o
- obj-$(CONFIG_TWR_P102x)   += twr_p102x.o
- obj-$(CONFIG_CORENET_GENERIC)   += corenet_generic.o
- obj-$(CONFIG_FB_FSL_DIU)	+= t1042rdb_diu.o
-+obj-$(CONFIG_RED_15W_REV1)	+= red15w_rev1.o
- obj-$(CONFIG_STX_GP3)	  += stx_gp3.o
- obj-$(CONFIG_TQM85xx)	  += tqm85xx.o
- obj-$(CONFIG_TL_WDR4900_V1) += tl_wdr4900_v1.o
diff --git a/target/linux/mpc85xx/patches-4.14/106-powerpc-85xx-panda-support.patch b/target/linux/mpc85xx/patches-4.14/106-powerpc-85xx-panda-support.patch
deleted file mode 100644
index a08bc302f211..000000000000
--- a/target/linux/mpc85xx/patches-4.14/106-powerpc-85xx-panda-support.patch
+++ /dev/null
@@ -1,30 +0,0 @@
---- a/arch/powerpc/platforms/85xx/Kconfig
-+++ b/arch/powerpc/platforms/85xx/Kconfig
-@@ -60,6 +60,17 @@ config HIVEAP_330
-       This board is a Concurrent Dual-Band wireless access point with a
-       Freescale P1020 SoC.
- 
-+config PANDA
-+	bool "OCEDO PANDA"
-+	select DEFAULT_UIMAGE
-+	select ARCH_REQUIRE_GPIOLIB
-+	select GPIO_MPC8XXX
-+	help
-+	  This option enables support for the OCEDO PANDA board.
-+
-+	  This board is a Concurrent Dual-Band wireless access point with a
-+	  Freescale P1020 SoC.
-+
- config MPC8540_ADS
- 	bool "Freescale MPC8540 ADS"
- 	select DEFAULT_UIMAGE
---- a/arch/powerpc/platforms/85xx/Makefile
-+++ b/arch/powerpc/platforms/85xx/Makefile
-@@ -22,6 +22,7 @@ obj-$(CONFIG_P1010_RDB)   += p1010rdb.o
- obj-$(CONFIG_P1022_DS)    += p1022_ds.o
- obj-$(CONFIG_P1022_RDK)   += p1022_rdk.o
- obj-$(CONFIG_P1023_RDB)   += p1023_rdb.o
-+obj-$(CONFIG_PANDA)       += panda.o
- obj-$(CONFIG_TWR_P102x)   += twr_p102x.o
- obj-$(CONFIG_CORENET_GENERIC)   += corenet_generic.o
- obj-$(CONFIG_FB_FSL_DIU)	+= t1042rdb_diu.o
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
