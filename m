Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5348D1709E8
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 21:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/TDHD6OC2w0JkIgmuUjazeYH8N7FBDRfD6wxKNEBGIM=; b=i0GIZcLseqzvMJ
	CIis+bnvsGWTl+GO3UPJ6y4GvWpGyEYRHWsL+0avMXOsdDsufLMsxwD0c6X5cPcLQ1E2l+oyIaMjZ
	PMJ0IOK+DQcpdb6geQjHhd4E5aVpuWdyVxlY6Z8L8wQ6OFifK6RIimplHJsxP2bklvlpkhJbTCAeR
	5vRJWAXEyvEZZRhu2LvxA8/6yLLItpRA9tIv0rYyJNk/np5eBMaVq8qy9TuGoxsZcoj9nIFSI/5UW
	T8PyooV1Zkzzt4UvB8J6rDrHRn3cgjvZXEwW4ZqTAscEnImUPzOErMtCAhde2FCUGoqM0/rHacRfV
	55XNuPXaZ+GYNvN9WD6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73Tx-0007jr-9P; Wed, 26 Feb 2020 20:40:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73Tq-0007jW-Tf
 for openwrt-devel@bombadil.infradead.org; Wed, 26 Feb 2020 20:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ERAEK1vfFKFTJiutRYQ4LbXaIqlH0VLdx6fOaRUKpWU=; b=O8r6mi8eIJXBS6jktQdYl3GE6o
 L6dCvvLwW2nhWuMWl8NicgySVDRZsBc1lORTOymSuULJB9+YQNlEBGJpElVvMU7j5iY8kGbm+kGRY
 RLoTi1hJ0/q7zkbwGHP9lFMGZPt35Qj8PKqNhgNs6XcuRu4i/dVDHKnG+oiTcAyDdPAWD8I7VGm1/
 boFKhlwHfShtylu/VPPLfwy3CTplpKqvKBC4y+h6vo14o7WOwfq2GPktkQ+ezVfKheth+FyrU35gr
 xVH/dXCCm1eE5H/W45MNalbji5i0uSao5yqrvxgkWGqB/6N4ySF4D+B5mvkrUe5gdR0XpkoIJW71x
 XbMFp71Q==;
Received: from lists.gateworks.com ([108.161.130.12])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73Tl-0000uh-0O
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 20:40:29 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j73Ua-0003E5-Dp; Wed, 26 Feb 2020 20:41:16 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 26 Feb 2020 12:40:11 -0800
Message-Id: <1582749611-16164-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_204025_499728_6339C1A9 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH] octeontx: add support for Linux 5.4
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 target/linux/octeontx/config-5.4                   | 634 +++++++++++++++++++++
 ...nderx-use-proper-interface-type-for-RGMII.patch |  47 ++
 ...hunderx-workaround-BGX-TX-Underflow-issue.patch | 150 +++++
 ...03-can-mcp251x-convert-to-half-duplex-SPI.patch |  51 ++
 ...rk-for-Gateworks-PLX-PEX860x-switch-with-.patch |  64 +++
 5 files changed, 946 insertions(+)
 create mode 100644 target/linux/octeontx/config-5.4
 create mode 100644 target/linux/octeontx/patches-5.4/0001-net-thunderx-use-proper-interface-type-for-RGMII.patch
 create mode 100644 target/linux/octeontx/patches-5.4/0002-net-thunderx-workaround-BGX-TX-Underflow-issue.patch
 create mode 100644 target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch
 create mode 100644 target/linux/octeontx/patches-5.4/0004-PCI-add-quirk-for-Gateworks-PLX-PEX860x-switch-with-.patch

diff --git a/target/linux/octeontx/config-5.4 b/target/linux/octeontx/config-5.4
new file mode 100644
index 0000000..524279f
--- /dev/null
+++ b/target/linux/octeontx/config-5.4
@@ -0,0 +1,634 @@
+CONFIG_64BIT=y
+CONFIG_64BIT_TIME=y
+# CONFIG_ARCH_AGILEX is not set
+# CONFIG_ARCH_BITMAIN is not set
+CONFIG_ARCH_CLOCKSOURCE_DATA=y
+CONFIG_ARCH_DMA_ADDR_T_64BIT=y
+CONFIG_ARCH_ENABLE_HUGEPAGE_MIGRATION=y
+CONFIG_ARCH_ENABLE_MEMORY_HOTPLUG=y
+CONFIG_ARCH_ENABLE_SPLIT_PMD_PTLOCK=y
+CONFIG_ARCH_HAS_CACHE_LINE_SIZE=y
+CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
+CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN=y
+CONFIG_ARCH_HAS_DMA_PREP_COHERENT=y
+CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
+CONFIG_ARCH_HAS_FAST_MULTIPLIER=y
+CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
+CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
+CONFIG_ARCH_HAS_GIGANTIC_PAGE=y
+CONFIG_ARCH_HAS_KCOV=y
+CONFIG_ARCH_HAS_KEEPINITRD=y
+CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
+CONFIG_ARCH_HAS_PTE_DEVMAP=y
+CONFIG_ARCH_HAS_PTE_SPECIAL=y
+CONFIG_ARCH_HAS_SETUP_DMA_OPS=y
+CONFIG_ARCH_HAS_SET_DIRECT_MAP=y
+CONFIG_ARCH_HAS_SET_MEMORY=y
+CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
+CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
+CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=y
+CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE=y
+CONFIG_ARCH_HAS_SYSCALL_WRAPPER=y
+CONFIG_ARCH_HAS_TICK_BROADCAST=y
+CONFIG_ARCH_HAVE_NMI_SAFE_CMPXCHG=y
+CONFIG_ARCH_HIBERNATION_HEADER=y
+CONFIG_ARCH_HIBERNATION_POSSIBLE=y
+CONFIG_ARCH_INLINE_READ_LOCK=y
+CONFIG_ARCH_INLINE_READ_LOCK_BH=y
+CONFIG_ARCH_INLINE_READ_LOCK_IRQ=y
+CONFIG_ARCH_INLINE_READ_LOCK_IRQSAVE=y
+CONFIG_ARCH_INLINE_READ_UNLOCK=y
+CONFIG_ARCH_INLINE_READ_UNLOCK_BH=y
+CONFIG_ARCH_INLINE_READ_UNLOCK_IRQ=y
+CONFIG_ARCH_INLINE_READ_UNLOCK_IRQRESTORE=y
+CONFIG_ARCH_INLINE_SPIN_LOCK=y
+CONFIG_ARCH_INLINE_SPIN_LOCK_BH=y
+CONFIG_ARCH_INLINE_SPIN_LOCK_IRQ=y
+CONFIG_ARCH_INLINE_SPIN_LOCK_IRQSAVE=y
+CONFIG_ARCH_INLINE_SPIN_TRYLOCK=y
+CONFIG_ARCH_INLINE_SPIN_TRYLOCK_BH=y
+CONFIG_ARCH_INLINE_SPIN_UNLOCK=y
+CONFIG_ARCH_INLINE_SPIN_UNLOCK_BH=y
+CONFIG_ARCH_INLINE_SPIN_UNLOCK_IRQ=y
+CONFIG_ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE=y
+CONFIG_ARCH_INLINE_WRITE_LOCK=y
+CONFIG_ARCH_INLINE_WRITE_LOCK_BH=y
+CONFIG_ARCH_INLINE_WRITE_LOCK_IRQ=y
+CONFIG_ARCH_INLINE_WRITE_LOCK_IRQSAVE=y
+CONFIG_ARCH_INLINE_WRITE_UNLOCK=y
+CONFIG_ARCH_INLINE_WRITE_UNLOCK_BH=y
+CONFIG_ARCH_INLINE_WRITE_UNLOCK_IRQ=y
+CONFIG_ARCH_INLINE_WRITE_UNLOCK_IRQRESTORE=y
+CONFIG_ARCH_KEEP_MEMBLOCK=y
+CONFIG_ARCH_MMAP_RND_BITS=18
+CONFIG_ARCH_MMAP_RND_BITS_MAX=33
+CONFIG_ARCH_MMAP_RND_BITS_MIN=18
+CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=11
+CONFIG_ARCH_PROC_KCORE_TEXT=y
+CONFIG_ARCH_SELECT_MEMORY_MODEL=y
+CONFIG_ARCH_SPARSEMEM_DEFAULT=y
+CONFIG_ARCH_SPARSEMEM_ENABLE=y
+CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
+CONFIG_ARCH_SUPPORTS_DEBUG_PAGEALLOC=y
+CONFIG_ARCH_SUPPORTS_INT128=y
+CONFIG_ARCH_SUPPORTS_MEMORY_FAILURE=y
+CONFIG_ARCH_SUPPORTS_NUMA_BALANCING=y
+CONFIG_ARCH_SUPPORTS_UPROBES=y
+CONFIG_ARCH_SUSPEND_POSSIBLE=y
+CONFIG_ARCH_THUNDER=y
+CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
+CONFIG_ARCH_USE_MEMREMAP_PROT=y
+CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
+CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
+CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT=y
+CONFIG_ARCH_WANT_FRAME_POINTERS=y
+CONFIG_ARCH_WANT_HUGE_PMD_SHARE=y
+CONFIG_ARM64=y
+# CONFIG_ARM64_16K_PAGES is not set
+CONFIG_ARM64_4K_PAGES=y
+# CONFIG_ARM64_64K_PAGES is not set
+CONFIG_ARM64_CNP=y
+CONFIG_ARM64_CONT_SHIFT=4
+CONFIG_ARM64_CRYPTO=y
+CONFIG_ARM64_ERRATUM_1165522=y
+CONFIG_ARM64_ERRATUM_1286807=y
+CONFIG_ARM64_ERRATUM_819472=y
+CONFIG_ARM64_ERRATUM_824069=y
+CONFIG_ARM64_ERRATUM_826319=y
+CONFIG_ARM64_ERRATUM_827319=y
+CONFIG_ARM64_ERRATUM_843419=y
+CONFIG_ARM64_HW_AFDBM=y
+# CONFIG_ARM64_LSE_ATOMICS is not set
+CONFIG_ARM64_MODULE_PLTS=y
+CONFIG_ARM64_PAGE_SHIFT=12
+CONFIG_ARM64_PAN=y
+CONFIG_ARM64_PA_BITS=48
+CONFIG_ARM64_PA_BITS_48=y
+# CONFIG_ARM64_PMEM is not set
+# CONFIG_ARM64_PSEUDO_NMI is not set
+# CONFIG_ARM64_PTDUMP_DEBUGFS is not set
+CONFIG_ARM64_PTR_AUTH=y
+# CONFIG_ARM64_RANDOMIZE_TEXT_OFFSET is not set
+CONFIG_ARM64_SSBD=y
+CONFIG_ARM64_SVE=y
+CONFIG_ARM64_TAGGED_ADDR_ABI=y
+CONFIG_ARM64_UAO=y
+CONFIG_ARM64_VA_BITS=48
+# CONFIG_ARM64_VA_BITS_39 is not set
+CONFIG_ARM64_VA_BITS_48=y
+CONFIG_ARM64_VHE=y
+CONFIG_ARM64_WORKAROUND_CLEAN_CACHE=y
+CONFIG_ARM64_WORKAROUND_REPEAT_TLBI=y
+CONFIG_ARM_AMBA=y
+CONFIG_ARM_ARCH_TIMER=y
+CONFIG_ARM_ARCH_TIMER_EVTSTREAM=y
+CONFIG_ARM_CPUIDLE=y
+CONFIG_ARM_GIC=y
+CONFIG_ARM_GIC_V2M=y
+CONFIG_ARM_GIC_V3=y
+CONFIG_ARM_GIC_V3_ITS=y
+CONFIG_ARM_GIC_V3_ITS_PCI=y
+# CONFIG_ARM_PSCI_CPUIDLE is not set
+CONFIG_ARM_PSCI_FW=y
+CONFIG_ARM_SBSA_WATCHDOG=y
+# CONFIG_ARM_SCMI_PROTOCOL is not set
+# CONFIG_ARM_SP805_WATCHDOG is not set
+CONFIG_ATA=y
+# CONFIG_ATA_SFF is not set
+CONFIG_AUDIT_ARCH_COMPAT_GENERIC=y
+CONFIG_BALLOON_COMPACTION=y
+CONFIG_BLK_DEV_BSG=y
+CONFIG_BLK_DEV_BSGLIB=y
+CONFIG_BLK_DEV_INTEGRITY=y
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_MQ_PCI=y
+CONFIG_BLK_MQ_VIRTIO=y
+CONFIG_BLK_PM=y
+CONFIG_BLK_SCSI_REQUEST=y
+CONFIG_CAVIUM_ERRATUM_22375=y
+CONFIG_CAVIUM_ERRATUM_23144=y
+CONFIG_CAVIUM_ERRATUM_23154=y
+CONFIG_CAVIUM_ERRATUM_27456=y
+CONFIG_CAVIUM_ERRATUM_30115=y
+CONFIG_CAVIUM_TX2_ERRATUM_219=y
+CONFIG_CC_HAS_KASAN_GENERIC=y
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_CLONE_BACKWARDS=y
+CONFIG_CMA=y
+CONFIG_CMA_ALIGNMENT=8
+CONFIG_CMA_AREAS=7
+# CONFIG_CMA_DEBUG is not set
+# CONFIG_CMA_DEBUGFS is not set
+CONFIG_CMA_SIZE_MBYTES=16
+# CONFIG_CMA_SIZE_SEL_MAX is not set
+CONFIG_CMA_SIZE_SEL_MBYTES=y
+# CONFIG_CMA_SIZE_SEL_MIN is not set
+# CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
+CONFIG_COMMON_CLK=y
+CONFIG_COMMON_CLK_CS2000_CP=y
+CONFIG_CONFIGFS_FS=y
+CONFIG_CONTIG_ALLOC=y
+# CONFIG_CPU_BIG_ENDIAN is not set
+# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
+CONFIG_CPU_IDLE=y
+# CONFIG_CPU_IDLE_GOV_LADDER is not set
+CONFIG_CPU_IDLE_GOV_MENU=y
+# CONFIG_CPU_IDLE_GOV_TEO is not set
+CONFIG_CPU_IDLE_MULTIPLE_DRIVERS=y
+CONFIG_CPU_PM=y
+CONFIG_CPU_RMAP=y
+CONFIG_CRASH_CORE=y
+CONFIG_CRASH_DUMP=y
+CONFIG_CRC16=y
+CONFIG_CRC7=y
+CONFIG_CRC_ITU_T=y
+CONFIG_CRC_T10DIF=y
+CONFIG_CRYPTO_AEAD=y
+CONFIG_CRYPTO_AEAD2=y
+CONFIG_CRYPTO_AES_ARM64=y
+# CONFIG_CRYPTO_AES_ARM64_BS is not set
+CONFIG_CRYPTO_AES_ARM64_CE=y
+CONFIG_CRYPTO_AES_ARM64_CE_BLK=y
+CONFIG_CRYPTO_AES_ARM64_CE_CCM=y
+# CONFIG_CRYPTO_AES_ARM64_NEON_BLK is not set
+CONFIG_CRYPTO_ANSI_CPRNG=y
+# CONFIG_CRYPTO_CHACHA20_NEON is not set
+CONFIG_CRYPTO_CRC32=y
+CONFIG_CRYPTO_CRC32C=y
+CONFIG_CRYPTO_CRCT10DIF=y
+# CONFIG_CRYPTO_CRCT10DIF_ARM64_CE is not set
+CONFIG_CRYPTO_CRYPTD=y
+CONFIG_CRYPTO_DRBG=y
+CONFIG_CRYPTO_DRBG_HMAC=y
+CONFIG_CRYPTO_DRBG_MENU=y
+CONFIG_CRYPTO_ECHAINIV=y
+CONFIG_CRYPTO_GF128MUL=y
+CONFIG_CRYPTO_GHASH_ARM64_CE=y
+CONFIG_CRYPTO_HASH=y
+CONFIG_CRYPTO_HASH2=y
+CONFIG_CRYPTO_HMAC=y
+CONFIG_CRYPTO_JITTERENTROPY=y
+CONFIG_CRYPTO_LIB_SHA256=y
+CONFIG_CRYPTO_MANAGER=y
+CONFIG_CRYPTO_MANAGER2=y
+# CONFIG_CRYPTO_NHPOLY1305_NEON is not set
+CONFIG_CRYPTO_NULL=y
+CONFIG_CRYPTO_NULL2=y
+CONFIG_CRYPTO_RNG=y
+CONFIG_CRYPTO_RNG2=y
+CONFIG_CRYPTO_RNG_DEFAULT=y
+CONFIG_CRYPTO_SHA1=y
+CONFIG_CRYPTO_SHA1_ARM64_CE=y
+CONFIG_CRYPTO_SHA256=y
+CONFIG_CRYPTO_SHA256_ARM64=y
+CONFIG_CRYPTO_SHA2_ARM64_CE=y
+# CONFIG_CRYPTO_SHA3_ARM64 is not set
+# CONFIG_CRYPTO_SHA512_ARM64 is not set
+# CONFIG_CRYPTO_SHA512_ARM64_CE is not set
+CONFIG_CRYPTO_SIMD=y
+# CONFIG_CRYPTO_SM3_ARM64_CE is not set
+# CONFIG_CRYPTO_SM4_ARM64_CE is not set
+CONFIG_DCACHE_WORD_ACCESS=y
+CONFIG_DMADEVICES=y
+CONFIG_DMA_CMA=y
+CONFIG_DMA_DECLARE_COHERENT=y
+CONFIG_DMA_DIRECT_REMAP=y
+CONFIG_DMA_ENGINE=y
+CONFIG_DMA_OF=y
+CONFIG_DMA_REMAP=y
+CONFIG_DMA_SHARED_BUFFER=y
+CONFIG_DRM_RCAR_WRITEBACK=y
+CONFIG_DTC=y
+CONFIG_DT_IDLE_STATES=y
+CONFIG_EDAC=y
+# CONFIG_EDAC_DEBUG is not set
+CONFIG_EDAC_LEGACY_SYSFS=y
+CONFIG_EDAC_SUPPORT=y
+CONFIG_EDAC_THUNDERX=y
+# CONFIG_EDAC_XGENE is not set
+CONFIG_EEPROM_AT24=y
+CONFIG_EFI_EARLYCON=y
+CONFIG_EXT4_FS=y
+CONFIG_EXT4_FS_POSIX_ACL=y
+# CONFIG_F2FS_CHECK_FS is not set
+CONFIG_F2FS_FS=y
+# CONFIG_F2FS_FS_SECURITY is not set
+CONFIG_F2FS_FS_XATTR=y
+CONFIG_F2FS_STAT_FS=y
+CONFIG_FANOTIFY=y
+CONFIG_FAT_FS=y
+CONFIG_FIXED_PHY=y
+CONFIG_FIX_EARLYCON_MEM=y
+CONFIG_FONT_8x16=y
+CONFIG_FONT_AUTOSELECT=y
+CONFIG_FONT_SUPPORT=y
+CONFIG_FRAME_POINTER=y
+CONFIG_FREEZER=y
+# CONFIG_FSL_QDMA is not set
+CONFIG_FS_IOMAP=y
+CONFIG_FS_MBCACHE=y
+CONFIG_FS_POSIX_ACL=y
+CONFIG_FUJITSU_ERRATUM_010001=y
+CONFIG_FW_LOADER_PAGED_BUF=y
+CONFIG_GENERIC_ALLOCATOR=y
+CONFIG_GENERIC_ARCH_TOPOLOGY=y
+CONFIG_GENERIC_BUG=y
+CONFIG_GENERIC_BUG_RELATIVE_POINTERS=y
+CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
+CONFIG_GENERIC_CPU_AUTOPROBE=y
+CONFIG_GENERIC_CPU_VULNERABILITIES=y
+CONFIG_GENERIC_CSUM=y
+CONFIG_GENERIC_EARLY_IOREMAP=y
+CONFIG_GENERIC_GETTIMEOFDAY=y
+CONFIG_GENERIC_IDLE_POLL_SETUP=y
+CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
+CONFIG_GENERIC_IRQ_MIGRATION=y
+CONFIG_GENERIC_IRQ_MULTI_HANDLER=y
+CONFIG_GENERIC_IRQ_SHOW=y
+CONFIG_GENERIC_IRQ_SHOW_LEVEL=y
+CONFIG_GENERIC_MSI_IRQ=y
+CONFIG_GENERIC_MSI_IRQ_DOMAIN=y
+CONFIG_GENERIC_PCI_IOMAP=y
+CONFIG_GENERIC_PHY=y
+CONFIG_GENERIC_SCHED_CLOCK=y
+CONFIG_GENERIC_SMP_IDLE_THREAD=y
+CONFIG_GENERIC_STRNCPY_FROM_USER=y
+CONFIG_GENERIC_STRNLEN_USER=y
+CONFIG_GENERIC_TIME_VSYSCALL=y
+CONFIG_GLOB=y
+CONFIG_GPIOLIB=y
+CONFIG_GPIOLIB_IRQCHIP=y
+CONFIG_GPIO_PCA953X=y
+CONFIG_GPIO_PCA953X_IRQ=y
+CONFIG_GPIO_THUNDERX=y
+# CONFIG_GVE is not set
+CONFIG_HANDLE_DOMAIN_IRQ=y
+CONFIG_HARDEN_BRANCH_PREDICTOR=y
+CONFIG_HARDIRQS_SW_RESEND=y
+CONFIG_HAS_DMA=y
+CONFIG_HAS_IOMEM=y
+CONFIG_HAS_IOPORT_MAP=y
+CONFIG_HAVE_ALIGNED_STRUCT_PAGE=y
+CONFIG_HAVE_ARCH_AUDITSYSCALL=y
+CONFIG_HAVE_ARCH_BITREVERSE=y
+CONFIG_HAVE_ARCH_HUGE_VMAP=y
+CONFIG_HAVE_ARCH_JUMP_LABEL=y
+CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE=y
+CONFIG_HAVE_ARCH_KASAN=y
+CONFIG_HAVE_ARCH_KASAN_SW_TAGS=y
+CONFIG_HAVE_ARCH_KGDB=y
+CONFIG_HAVE_ARCH_PFN_VALID=y
+CONFIG_HAVE_ARCH_PREL32_RELOCATIONS=y
+CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
+CONFIG_HAVE_ARCH_STACKLEAK=y
+CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
+CONFIG_HAVE_ARCH_TRACEHOOK=y
+CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
+CONFIG_HAVE_ARCH_VMAP_STACK=y
+CONFIG_HAVE_ARM_SMCCC=y
+CONFIG_HAVE_ASM_MODVERSIONS=y
+CONFIG_HAVE_CLK=y
+CONFIG_HAVE_CLK_PREPARE=y
+CONFIG_HAVE_CMPXCHG_DOUBLE=y
+CONFIG_HAVE_CMPXCHG_LOCAL=y
+CONFIG_HAVE_CONTEXT_TRACKING=y
+CONFIG_HAVE_COPY_THREAD_TLS=y
+CONFIG_HAVE_C_RECORDMCOUNT=y
+CONFIG_HAVE_DEBUG_BUGVERBOSE=y
+CONFIG_HAVE_DEBUG_KMEMLEAK=y
+CONFIG_HAVE_DMA_CONTIGUOUS=y
+CONFIG_HAVE_DYNAMIC_FTRACE=y
+CONFIG_HAVE_EBPF_JIT=y
+CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
+CONFIG_HAVE_FAST_GUP=y
+CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
+CONFIG_HAVE_FUNCTION_ARG_ACCESS_API=y
+CONFIG_HAVE_FUNCTION_ERROR_INJECTION=y
+CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
+CONFIG_HAVE_FUNCTION_TRACER=y
+CONFIG_HAVE_GENERIC_VDSO=y
+CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
+CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
+CONFIG_HAVE_MEMORY_PRESENT=y
+CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
+CONFIG_HAVE_NET_DSA=y
+CONFIG_HAVE_PATA_PLATFORM=y
+CONFIG_HAVE_PCI=y
+CONFIG_HAVE_PERF_EVENTS=y
+CONFIG_HAVE_PERF_REGS=y
+CONFIG_HAVE_PERF_USER_STACK_DUMP=y
+CONFIG_HAVE_RCU_TABLE_FREE=y
+CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
+CONFIG_HAVE_RSEQ=y
+CONFIG_HAVE_SCHED_AVG_IRQ=y
+CONFIG_HAVE_SETUP_PER_CPU_AREA=y
+CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
+CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
+CONFIG_HIBERNATE_CALLBACKS=y
+CONFIG_HIBERNATION=y
+CONFIG_HOLES_IN_ZONE=y
+CONFIG_HOTPLUG_CPU=y
+CONFIG_HUGETLBFS=y
+CONFIG_HUGETLB_PAGE=y
+CONFIG_HWSPINLOCK=y
+CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_CAVIUM=y
+CONFIG_HW_RANDOM_OPTEE=y
+CONFIG_I2C=y
+CONFIG_I2C_ALGOBIT=y
+CONFIG_I2C_BOARDINFO=y
+CONFIG_I2C_CHARDEV=y
+CONFIG_I2C_MUX=y
+CONFIG_I2C_SMBUS=y
+CONFIG_I2C_THUNDERX=y
+CONFIG_ILLEGAL_POINTER_VALUE=0xdead000000000000
+CONFIG_INITRAMFS_SOURCE=""
+CONFIG_INLINE_READ_LOCK=y
+CONFIG_INLINE_READ_LOCK_BH=y
+CONFIG_INLINE_READ_LOCK_IRQ=y
+CONFIG_INLINE_READ_LOCK_IRQSAVE=y
+CONFIG_INLINE_READ_UNLOCK_BH=y
+CONFIG_INLINE_READ_UNLOCK_IRQRESTORE=y
+CONFIG_INLINE_SPIN_LOCK=y
+CONFIG_INLINE_SPIN_LOCK_BH=y
+CONFIG_INLINE_SPIN_LOCK_IRQ=y
+CONFIG_INLINE_SPIN_LOCK_IRQSAVE=y
+CONFIG_INLINE_SPIN_TRYLOCK=y
+CONFIG_INLINE_SPIN_TRYLOCK_BH=y
+CONFIG_INLINE_SPIN_UNLOCK_BH=y
+CONFIG_INLINE_SPIN_UNLOCK_IRQRESTORE=y
+CONFIG_INLINE_WRITE_LOCK=y
+CONFIG_INLINE_WRITE_LOCK_BH=y
+CONFIG_INLINE_WRITE_LOCK_IRQ=y
+CONFIG_INLINE_WRITE_LOCK_IRQSAVE=y
+CONFIG_INLINE_WRITE_UNLOCK_BH=y
+CONFIG_INLINE_WRITE_UNLOCK_IRQRESTORE=y
+# CONFIG_IONIC is not set
+CONFIG_IRQCHIP=y
+CONFIG_IRQ_DOMAIN=y
+CONFIG_IRQ_DOMAIN_HIERARCHY=y
+CONFIG_IRQ_FASTEOI_HIERARCHY_HANDLERS=y
+CONFIG_IRQ_FORCED_THREADING=y
+CONFIG_IRQ_TIME_ACCOUNTING=y
+CONFIG_IRQ_WORK=y
+# CONFIG_ISDN is not set
+CONFIG_JBD2=y
+CONFIG_JUMP_LABEL=y
+CONFIG_KASAN_STACK=1
+CONFIG_KEXEC=y
+CONFIG_KEXEC_CORE=y
+CONFIG_KSM=y
+CONFIG_LIBFDT=y
+CONFIG_LOCK_DEBUGGING_SUPPORT=y
+CONFIG_LOCK_SPIN_ON_OWNER=y
+CONFIG_LZO_COMPRESS=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_MAILBOX=y
+# CONFIG_MAILBOX_TEST is not set
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_CAVIUM=y
+CONFIG_MDIO_DEVICE=y
+CONFIG_MDIO_THUNDER=y
+CONFIG_MEMFD_CREATE=y
+CONFIG_MEMORY_BALLOON=y
+# CONFIG_MEMORY_HOTPLUG is not set
+CONFIG_MEMORY_ISOLATION=y
+CONFIG_MEMTEST=y
+# CONFIG_MFD_LOCHNAGAR is not set
+# CONFIG_MFD_ROHM_BD70528 is not set
+# CONFIG_MFD_STPMIC1 is not set
+CONFIG_MFD_SYSCON=y
+CONFIG_MIGRATION=y
+CONFIG_MMC=y
+CONFIG_MMC_BLOCK=y
+CONFIG_MMC_CAVIUM_THUNDERX=y
+# CONFIG_MMC_TIFM_SD is not set
+CONFIG_MODULES_USE_ELF_RELA=y
+CONFIG_MSDOS_FS=y
+# CONFIG_MTD is not set
+CONFIG_MUTEX_SPIN_ON_OWNER=y
+CONFIG_NEED_DMA_MAP_STATE=y
+CONFIG_NEED_MULTIPLE_NODES=y
+CONFIG_NEED_PER_CPU_EMBED_FIRST_CHUNK=y
+CONFIG_NEED_SG_DMA_LENGTH=y
+CONFIG_NET_FLOW_LIMIT=y
+CONFIG_NLS=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
+CONFIG_NODES_SHIFT=2
+CONFIG_NO_HZ_COMMON=y
+CONFIG_NO_HZ_IDLE=y
+CONFIG_NR_CPUS=64
+CONFIG_NUMA=y
+CONFIG_NUMA_BALANCING=y
+CONFIG_NUMA_BALANCING_DEFAULT_ENABLED=y
+CONFIG_NVMEM=y
+# CONFIG_NVMEM_REBOOT_MODE is not set
+CONFIG_NVMEM_SYSFS=y
+# CONFIG_OCTEONTX2_AF is not set
+CONFIG_OF=y
+CONFIG_OF_ADDRESS=y
+CONFIG_OF_EARLY_FLATTREE=y
+CONFIG_OF_FLATTREE=y
+CONFIG_OF_GPIO=y
+CONFIG_OF_IRQ=y
+CONFIG_OF_KOBJ=y
+CONFIG_OF_MDIO=y
+CONFIG_OF_NET=y
+CONFIG_OF_NUMA=y
+CONFIG_OF_RESERVED_MEM=y
+CONFIG_OPTEE=y
+CONFIG_OPTEE_SHM_NUM_PRIV_PAGES=1
+CONFIG_PADATA=y
+CONFIG_PARAVIRT=y
+CONFIG_PARTITION_PERCPU=y
+CONFIG_PCI=y
+CONFIG_PCIEAER=y
+CONFIG_PCIEPORTBUS=y
+# CONFIG_PCIE_AL is not set
+# CONFIG_PCIE_BW is not set
+CONFIG_PCIE_PME=y
+CONFIG_PCI_ATS=y
+CONFIG_PCI_DOMAINS=y
+CONFIG_PCI_DOMAINS_GENERIC=y
+CONFIG_PCI_ECAM=y
+CONFIG_PCI_HOST_COMMON=y
+CONFIG_PCI_HOST_GENERIC=y
+CONFIG_PCI_HOST_THUNDER_ECAM=y
+CONFIG_PCI_HOST_THUNDER_PEM=y
+CONFIG_PCI_IOV=y
+# CONFIG_PCI_MESON is not set
+CONFIG_PCI_MSI=y
+CONFIG_PCI_MSI_IRQ_DOMAIN=y
+CONFIG_PGTABLE_LEVELS=4
+CONFIG_PHYLIB=y
+CONFIG_PHYS_ADDR_T_64BIT=y
+CONFIG_PM=y
+CONFIG_PM_CLK=y
+# CONFIG_PM_DEBUG is not set
+CONFIG_PM_SLEEP=y
+CONFIG_PM_SLEEP_SMP=y
+CONFIG_PM_STD_PARTITION=""
+CONFIG_POSIX_MQUEUE=y
+CONFIG_POSIX_MQUEUE_SYSCTL=y
+CONFIG_POWER_RESET=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_POWER_RESET_XGENE=y
+CONFIG_POWER_SUPPLY=y
+CONFIG_PROC_VMCORE=y
+CONFIG_QUEUED_RWLOCKS=y
+CONFIG_QUEUED_SPINLOCKS=y
+# CONFIG_RANDOMIZE_BASE is not set
+CONFIG_RAS=y
+CONFIG_RATIONAL=y
+# CONFIG_RAVE_SP_CORE is not set
+CONFIG_RCU_NEED_SEGCBLIST=y
+CONFIG_RCU_STALL_COMMON=y
+# CONFIG_READ_ONLY_THP_FOR_FS is not set
+CONFIG_REBOOT_MODE=y
+CONFIG_REFCOUNT_FULL=y
+CONFIG_REGMAP=y
+CONFIG_REGMAP_I2C=y
+CONFIG_REGMAP_MMIO=y
+CONFIG_RESET_CONTROLLER=y
+CONFIG_RFS_ACCEL=y
+CONFIG_RODATA_FULL_DEFAULT_ENABLED=y
+CONFIG_RPS=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_DS1672=y
+CONFIG_RTC_I2C_AND_SPI=y
+CONFIG_RWSEM_SPIN_ON_OWNER=y
+CONFIG_SATA_AHCI=y
+CONFIG_SATA_AHCI_PLATFORM=y
+CONFIG_SCHED_INFO=y
+CONFIG_SCHED_MC=y
+CONFIG_SCSI=y
+# CONFIG_SCSI_LOWLEVEL is not set
+# CONFIG_SCSI_PROC_FS is not set
+CONFIG_SCSI_SAS_ATA=y
+CONFIG_SCSI_SAS_ATTRS=y
+CONFIG_SCSI_SAS_HOST_SMP=y
+CONFIG_SCSI_SAS_LIBSAS=y
+CONFIG_SECCOMP=y
+CONFIG_SECCOMP_FILTER=y
+CONFIG_SERIAL_8250_DW=y
+CONFIG_SERIAL_8250_DWLIB=y
+CONFIG_SERIAL_8250_EXTENDED=y
+CONFIG_SERIAL_8250_FSL=y
+CONFIG_SERIAL_8250_SHARE_IRQ=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
+CONFIG_SERIAL_DEV_BUS=y
+CONFIG_SERIAL_DEV_CTRL_TTYPORT=y
+CONFIG_SERIAL_MCTRL_GPIO=y
+CONFIG_SERIAL_OF_PLATFORM=y
+CONFIG_SERIAL_XILINX_PS_UART=y
+CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
+CONFIG_SG_POOL=y
+CONFIG_SMP=y
+CONFIG_SPARSEMEM=y
+CONFIG_SPARSEMEM_EXTREME=y
+CONFIG_SPARSEMEM_MANUAL=y
+CONFIG_SPARSEMEM_VMEMMAP=y
+CONFIG_SPARSEMEM_VMEMMAP_ENABLE=y
+CONFIG_SPARSE_IRQ=y
+CONFIG_SPI=y
+CONFIG_SPI_MASTER=y
+CONFIG_SPI_THUNDERX=y
+CONFIG_SRAM=y
+CONFIG_SRCU=y
+CONFIG_SWIOTLB=y
+CONFIG_SWPHY=y
+CONFIG_SYNC_FILE=y
+CONFIG_SYSCON_REBOOT_MODE=y
+CONFIG_SYSCTL_EXCEPTION_TRACE=y
+CONFIG_SYS_SUPPORTS_HUGETLBFS=y
+CONFIG_TASKSTATS=y
+CONFIG_TASK_DELAY_ACCT=y
+CONFIG_TASK_IO_ACCOUNTING=y
+CONFIG_TASK_XACCT=y
+CONFIG_TEE=y
+CONFIG_THREAD_INFO_IN_TASK=y
+CONFIG_THUNDER_NIC_BGX=y
+CONFIG_THUNDER_NIC_PF=y
+CONFIG_THUNDER_NIC_RGX=y
+CONFIG_THUNDER_NIC_VF=y
+CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TIMER_OF=y
+CONFIG_TIMER_PROBE=y
+CONFIG_TRANSPARENT_HUGEPAGE=y
+CONFIG_TRANSPARENT_HUGEPAGE_ALWAYS=y
+# CONFIG_TRANSPARENT_HUGEPAGE_MADVISE is not set
+CONFIG_TRANSPARENT_HUGE_PAGECACHE=y
+CONFIG_TREE_RCU=y
+CONFIG_TREE_SRCU=y
+CONFIG_UBSAN_ALIGNMENT=y
+CONFIG_UNIX_SCM=y
+CONFIG_UNMAP_KERNEL_AT_EL0=y
+CONFIG_USB=y
+CONFIG_USB_COMMON=y
+# CONFIG_USB_EHCI_HCD is not set
+CONFIG_USB_PCI=y
+CONFIG_USB_SUPPORT=y
+# CONFIG_USB_UHCI_HCD is not set
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_PCI=y
+CONFIG_USB_XHCI_PLATFORM=y
+CONFIG_USE_PERCPU_NUMA_NODE_ID=y
+CONFIG_VIRTIO=y
+CONFIG_VIRTIO_BALLOON=y
+# CONFIG_VIRTIO_BLK is not set
+# CONFIG_VIRTIO_CONSOLE is not set
+CONFIG_VIRTIO_MMIO=y
+# CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES is not set
+# CONFIG_VIRTIO_NET is not set
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_PCI_LEGACY=y
+CONFIG_VMAP_STACK=y
+CONFIG_WATCHDOG_CORE=y
+CONFIG_XARRAY_MULTI=y
+CONFIG_XPS=y
+CONFIG_XXHASH=y
+CONFIG_ZONE_DMA32=y
diff --git a/target/linux/octeontx/patches-5.4/0001-net-thunderx-use-proper-interface-type-for-RGMII.patch b/target/linux/octeontx/patches-5.4/0001-net-thunderx-use-proper-interface-type-for-RGMII.patch
new file mode 100644
index 0000000..0369e6f
--- /dev/null
+++ b/target/linux/octeontx/patches-5.4/0001-net-thunderx-use-proper-interface-type-for-RGMII.patch
@@ -0,0 +1,47 @@
+From 2d3da16317086ba6048c601ee88cdc96f19fd741 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Fri, 7 Feb 2020 12:40:26 -0800
+Subject: [PATCH 01/12] net: thunderx: use proper interface type for RGMII
+
+The configuration of the OCTEONTX XCV_DLL_CTL register via
+xcv_init_hw() is such that the RGMII RX delay is bypassed
+leaving the RGMII TX delay enabled in the MAC:
+
+	/* Configure DLL - enable or bypass
+	 * TX no bypass, RX bypass
+	 */
+	cfg = readq_relaxed(xcv->reg_base + XCV_DLL_CTL);
+	cfg &= ~0xFF03;
+	cfg |= CLKRX_BYP;
+	writeq_relaxed(cfg, xcv->reg_base + XCV_DLL_CTL);
+
+This would coorespond to a interface type of PHY_INTERFACE_MODE_RGMII_RXID
+and not PHY_INTERFACE_MODE_RGMII.
+
+Fixing this allows RGMII PHY drivers to do the right thing (enable
+RX delay in the PHY) instead of erroneously enabling both delays in the
+PHY.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Reviewed-by: Andrew Lunn <andrew@lunn.ch>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+index 8ae28f8..5f2db9c 100644
+--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
++++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+@@ -1042,7 +1042,7 @@ static int phy_interface_mode(u8 lmac_type)
+ 	if (lmac_type == BGX_MODE_QSGMII)
+ 		return PHY_INTERFACE_MODE_QSGMII;
+ 	if (lmac_type == BGX_MODE_RGMII)
+-		return PHY_INTERFACE_MODE_RGMII;
++		return PHY_INTERFACE_MODE_RGMII_RXID;
+ 
+ 	return PHY_INTERFACE_MODE_SGMII;
+ }
+-- 
+2.7.4
+
diff --git a/target/linux/octeontx/patches-5.4/0002-net-thunderx-workaround-BGX-TX-Underflow-issue.patch b/target/linux/octeontx/patches-5.4/0002-net-thunderx-workaround-BGX-TX-Underflow-issue.patch
new file mode 100644
index 0000000..597dd9d
--- /dev/null
+++ b/target/linux/octeontx/patches-5.4/0002-net-thunderx-workaround-BGX-TX-Underflow-issue.patch
@@ -0,0 +1,150 @@
+From 585ddca487c827178cf697f8bc2e87346061d155 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Wed, 19 Feb 2020 15:19:36 -0800
+Subject: [PATCH 02/12] net: thunderx: workaround BGX TX Underflow issue
+
+While it is not yet understood why a TX underflow can easily occur
+for SGMII interfaces resulting in a TX wedge. It has been found that
+disabling/re-enabling the LMAC resolves the issue.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Reviewed-by: Robert Jones <rjones@gateworks.com>
+Signed-off-by: David S. Miller <davem@davemloft.net>
+---
+ drivers/net/ethernet/cavium/thunder/thunder_bgx.c | 62 +++++++++++++++++++++--
+ drivers/net/ethernet/cavium/thunder/thunder_bgx.h |  9 ++++
+ 2 files changed, 68 insertions(+), 3 deletions(-)
+
+diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+index 5f2db9c..ade414a 100644
+--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
++++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.c
+@@ -413,10 +413,19 @@ void bgx_lmac_rx_tx_enable(int node, int bgx_idx, int lmacid, bool enable)
+ 	lmac = &bgx->lmac[lmacid];
+ 
+ 	cfg = bgx_reg_read(bgx, lmacid, BGX_CMRX_CFG);
+-	if (enable)
++	if (enable) {
+ 		cfg |= CMR_PKT_RX_EN | CMR_PKT_TX_EN;
+-	else
++
++		/* enable TX FIFO Underflow interrupt */
++		bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_TXX_INT_ENA_W1S,
++			       GMI_TXX_INT_UNDFLW);
++	} else {
+ 		cfg &= ~(CMR_PKT_RX_EN | CMR_PKT_TX_EN);
++
++		/* Disable TX FIFO Underflow interrupt */
++		bgx_reg_modify(bgx, lmacid, BGX_GMP_GMI_TXX_INT_ENA_W1C,
++			       GMI_TXX_INT_UNDFLW);
++	}
+ 	bgx_reg_write(bgx, lmacid, BGX_CMRX_CFG, cfg);
+ 
+ 	if (bgx->is_rgx)
+@@ -1544,6 +1553,48 @@ static int bgx_init_phy(struct bgx *bgx)
+ 	return bgx_init_of_phy(bgx);
+ }
+ 
++static irqreturn_t bgx_intr_handler(int irq, void *data)
++{
++	struct bgx *bgx = (struct bgx *)data;
++	u64 status, val;
++	int lmac;
++
++	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
++		status = bgx_reg_read(bgx, lmac, BGX_GMP_GMI_TXX_INT);
++		if (status & GMI_TXX_INT_UNDFLW) {
++			pci_err(bgx->pdev, "BGX%d lmac%d UNDFLW\n",
++				bgx->bgx_id, lmac);
++			val = bgx_reg_read(bgx, lmac, BGX_CMRX_CFG);
++			val &= ~CMR_EN;
++			bgx_reg_write(bgx, lmac, BGX_CMRX_CFG, val);
++			val |= CMR_EN;
++			bgx_reg_write(bgx, lmac, BGX_CMRX_CFG, val);
++		}
++		/* clear interrupts */
++		bgx_reg_write(bgx, lmac, BGX_GMP_GMI_TXX_INT, status);
++	}
++
++	return IRQ_HANDLED;
++}
++
++static void bgx_register_intr(struct pci_dev *pdev)
++{
++	struct bgx *bgx = pci_get_drvdata(pdev);
++	int ret;
++
++	ret = pci_alloc_irq_vectors(pdev, BGX_LMAC_VEC_OFFSET,
++				    BGX_LMAC_VEC_OFFSET, PCI_IRQ_ALL_TYPES);
++	if (ret < 0) {
++		pci_err(pdev, "Req for #%d msix vectors failed\n",
++			BGX_LMAC_VEC_OFFSET);
++		return;
++	}
++	ret = pci_request_irq(pdev, GMPX_GMI_TX_INT, bgx_intr_handler, NULL,
++			      bgx, "BGX%d", bgx->bgx_id);
++	if (ret)
++		pci_free_irq(pdev, GMPX_GMI_TX_INT, bgx);
++}
++
+ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+ {
+ 	int err;
+@@ -1559,7 +1610,7 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+ 
+ 	pci_set_drvdata(pdev, bgx);
+ 
+-	err = pci_enable_device(pdev);
++	err = pcim_enable_device(pdev);
+ 	if (err) {
+ 		dev_err(dev, "Failed to enable PCI device\n");
+ 		pci_set_drvdata(pdev, NULL);
+@@ -1613,6 +1664,8 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+ 
+ 	bgx_init_hw(bgx);
+ 
++	bgx_register_intr(pdev);
++
+ 	/* Enable all LMACs */
+ 	for (lmac = 0; lmac < bgx->lmac_count; lmac++) {
+ 		err = bgx_lmac_enable(bgx, lmac);
+@@ -1629,6 +1682,7 @@ static int bgx_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
+ 
+ err_enable:
+ 	bgx_vnic[bgx->bgx_id] = NULL;
++	pci_free_irq(pdev, GMPX_GMI_TX_INT, bgx);
+ err_release_regions:
+ 	pci_release_regions(pdev);
+ err_disable_device:
+@@ -1646,6 +1700,8 @@ static void bgx_remove(struct pci_dev *pdev)
+ 	for (lmac = 0; lmac < bgx->lmac_count; lmac++)
+ 		bgx_lmac_disable(bgx, lmac);
+ 
++	pci_free_irq(pdev, GMPX_GMI_TX_INT, bgx);
++
+ 	bgx_vnic[bgx->bgx_id] = NULL;
+ 	pci_release_regions(pdev);
+ 	pci_disable_device(pdev);
+diff --git a/drivers/net/ethernet/cavium/thunder/thunder_bgx.h b/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
+index cbdd20b..ac0c89c 100644
+--- a/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
++++ b/drivers/net/ethernet/cavium/thunder/thunder_bgx.h
+@@ -183,6 +183,15 @@
+ #define BGX_GMP_GMI_TXX_BURST		0x38228
+ #define BGX_GMP_GMI_TXX_MIN_PKT		0x38240
+ #define BGX_GMP_GMI_TXX_SGMII_CTL	0x38300
++#define BGX_GMP_GMI_TXX_INT		0x38500
++#define BGX_GMP_GMI_TXX_INT_W1S		0x38508
++#define BGX_GMP_GMI_TXX_INT_ENA_W1C	0x38510
++#define BGX_GMP_GMI_TXX_INT_ENA_W1S	0x38518
++#define  GMI_TXX_INT_PTP_LOST			BIT_ULL(4)
++#define  GMI_TXX_INT_LATE_COL			BIT_ULL(3)
++#define  GMI_TXX_INT_XSDEF			BIT_ULL(2)
++#define  GMI_TXX_INT_XSCOL			BIT_ULL(1)
++#define  GMI_TXX_INT_UNDFLW			BIT_ULL(0)
+ 
+ #define BGX_MSIX_VEC_0_29_ADDR		0x400000 /* +(0..29) << 4 */
+ #define BGX_MSIX_VEC_0_29_CTL		0x400008
+-- 
+2.7.4
+
diff --git a/target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch b/target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch
new file mode 100644
index 0000000..aabf1b9
--- /dev/null
+++ b/target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch
@@ -0,0 +1,51 @@
+From 6edfb172ff1dd3cfc84c19790c245a4005474bb7 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Tue, 25 Feb 2020 12:01:36 -0800
+Subject: [PATCH 03/12] can: mcp251x: convert to half-duplex SPI
+
+Some SPI host controllers such as the Cavium Thunder do not support
+full-duplex SPI. Using half-duplex transfers allows the driver to work
+with those host controllers.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+---
+ drivers/net/can/spi/mcp251x.c | 10 +++++-----
+ 1 file changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/drivers/net/can/spi/mcp251x.c b/drivers/net/can/spi/mcp251x.c
+index 0b0dd3f0..c655b29 100644
+--- a/drivers/net/can/spi/mcp251x.c
++++ b/drivers/net/can/spi/mcp251x.c
+@@ -345,8 +345,7 @@ static u8 mcp251x_read_reg(struct spi_device *spi, uint8_t reg)
+ 	priv->spi_tx_buf[0] = INSTRUCTION_READ;
+ 	priv->spi_tx_buf[1] = reg;
+ 
+-	mcp251x_spi_trans(spi, 3);
+-	val = priv->spi_rx_buf[2];
++	spi_write_then_read(spi, priv->spi_tx_buf, 2, &val, 1);
+ 
+ 	return val;
+ }
+@@ -354,15 +353,16 @@ static u8 mcp251x_read_reg(struct spi_device *spi, uint8_t reg)
+ static void mcp251x_read_2regs(struct spi_device *spi, uint8_t reg,
+ 		uint8_t *v1, uint8_t *v2)
+ {
++	u8 val[4] = {0};
+ 	struct mcp251x_priv *priv = spi_get_drvdata(spi);
+ 
+ 	priv->spi_tx_buf[0] = INSTRUCTION_READ;
+ 	priv->spi_tx_buf[1] = reg;
+ 
+-	mcp251x_spi_trans(spi, 4);
++	spi_write_then_read(spi, priv->spi_tx_buf, 2, val, 2);
+ 
+-	*v1 = priv->spi_rx_buf[2];
+-	*v2 = priv->spi_rx_buf[3];
++	*v1 = val[0];
++	*v2 = val[1];
+ }
+ 
+ static void mcp251x_write_reg(struct spi_device *spi, u8 reg, uint8_t val)
+-- 
+2.7.4
+
diff --git a/target/linux/octeontx/patches-5.4/0004-PCI-add-quirk-for-Gateworks-PLX-PEX860x-switch-with-.patch b/target/linux/octeontx/patches-5.4/0004-PCI-add-quirk-for-Gateworks-PLX-PEX860x-switch-with-.patch
new file mode 100644
index 0000000..f7bc97c
--- /dev/null
+++ b/target/linux/octeontx/patches-5.4/0004-PCI-add-quirk-for-Gateworks-PLX-PEX860x-switch-with-.patch
@@ -0,0 +1,64 @@
+From d0ff7a1bcfe886cab1a237895b08ac51ecfe10e7 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Wed, 10 Apr 2019 08:00:47 -0700
+Subject: [PATCH 04/12] PCI: add quirk for Gateworks PLX PEX860x switch with
+ GPIO PERST#
+
+Gateworks boards use PLX PEX860x switches where downstream ports
+have their PERST# driven from the PEX GPIO.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+---
+ drivers/pci/quirks.c | 32 ++++++++++++++++++++++++++++++++
+ 1 file changed, 32 insertions(+)
+
+diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
+index 419dda6..40e2ddb 100644
+--- a/drivers/pci/quirks.c
++++ b/drivers/pci/quirks.c
+@@ -26,6 +26,7 @@
+ #include <linux/ktime.h>
+ #include <linux/mm.h>
+ #include <linux/nvme.h>
++#include <linux/of.h>
+ #include <linux/platform_data/x86/apple.h>
+ #include <linux/pm_runtime.h>
+ #include <linux/switchtec.h>
+@@ -5216,3 +5217,34 @@ static void quirk_reset_lenovo_thinkpad_p50_nvgpu(struct pci_dev *pdev)
+ DECLARE_PCI_FIXUP_CLASS_FINAL(PCI_VENDOR_ID_NVIDIA, 0x13b1,
+ 			      PCI_CLASS_DISPLAY_VGA, 8,
+ 			      quirk_reset_lenovo_thinkpad_p50_nvgpu);
++
++#ifdef CONFIG_PCI_HOST_THUNDER_PEM
++/*
++ * fixup for PLX PEX8909 bridge to configure GPIO1-7 as output High
++ * as they are used for slots1-7 PERST#
++ */
++static void newport_pciesw_early_fixup(struct pci_dev *dev)
++{
++	u32 dw;
++
++	if (!of_machine_is_compatible("gw,newport"))
++		return;
++
++	if (dev->devfn != 0)
++		return;
++
++	dev_info(&dev->dev, "de-asserting PERST#\n");
++	pci_read_config_dword(dev, 0x62c, &dw);
++	dw |= 0xaaa8; /* GPIO1-7 outputs */
++	pci_write_config_dword(dev, 0x62c, dw);
++
++	pci_read_config_dword(dev, 0x644, &dw);
++	dw |= 0xfe;   /* GPIO1-7 output high */
++	pci_write_config_dword(dev, 0x644, dw);
++
++	msleep(100);
++}
++DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_PLX, 0x8609, newport_pciesw_early_fixup);
++DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_PLX, 0x8606, newport_pciesw_early_fixup);
++DECLARE_PCI_FIXUP_EARLY(PCI_VENDOR_ID_PLX, 0x8604, newport_pciesw_early_fixup);
++#endif /* CONFIG_PCI_HOST_THUNDER_PEM */
+-- 
+2.7.4
+
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
