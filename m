Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3700380952
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 06:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUjBHDoxxa7NAeBjYLeLLya7Pq+2YBLhVPzkS2heVPA=; b=iQPKoLeDi4TXjR
	JCmULZMOJ5RSIHWOXqLzsaEuIH8RN9ocf1HD+J+OCSPZmCdynd387dwNVxo8tCeQ/EYDM8QfaVdaI
	fAoLf+t1iZtGuYnF7skZk568J0Gfvt1UE751v2gtnxn3Yq3vyB8U87iYnEm19X4MrriPEfeZBXwsm
	K0lKa2xKGsahDelk9y4XqgJFtpyoKqJANTwRh9enFVQupq2r2+Soj2X6qEeSEtUOGdIzXnTTNLJlC
	KWUXFxns/Vcrbd8jbkwpi0HkUG32L75PrPL3lLnAlH6+biJlB7O21FIsMZ9ERZ9WX06Ep2pIIJWJW
	YmMU+XUdWfS7JsgZ5+Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu8ET-0004kr-P9; Sun, 04 Aug 2019 04:34:57 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu8D6-0003ZC-JD
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 04:33:35 +0000
Received: by mail-ua1-x943.google.com with SMTP id g11so4308867uak.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 21:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H2wcYzGnlMTB/GmjRiXv+TMArTyw2cFfjTHj0z8D87c=;
 b=AT8A0J1FPef3E2S67YU6j7wbzcCUtVPpb59LIsj/tVtjAn41GVUlvOml0aB+GFupxB
 WnTH3U3O1ToF+y584Uv2D9ae/eqKow/en0cW71ApkZB82Qr2PU4NNEXFRD9TDBe1nH68
 2nJ6Keg45qeldhkXa36rt+jpkn6HFoj55DfwNwE9ZdzwtrRklGci04HDVM5TADRICqcM
 6XKAot1bq4rtfOB9qyy+MYBvKfML+Edfr/Lng2qpmJr0STqYeP1nPP+xaYCImG93YwWf
 a/+ZPeXRGyJhHz/KT/MjxF6nAkxJ1s+Mx9zNX1b6eEaLS9ko5fjbmCvZ+HDxflOIoZIW
 RzSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H2wcYzGnlMTB/GmjRiXv+TMArTyw2cFfjTHj0z8D87c=;
 b=Gzk5WcbFO841KlNK1+/aZ7dshQE5Zc8pBj0rKP7Sc3tolgN+IKTYt+JaabP+us7t/S
 fYPqEujWX5ePQdE7LM+Xm2D/aE9EXI8CxuGl9Ef9mldFoD5NneKlvQJr1hNPmnWX8jXh
 FU8V8c1TuPjAOgwi2f6J9gzRPGeKtvRJHPrRsaVpu4yUBuF2vY1EgYZizZABeHjYWZuU
 oRnlxyIPsi037aEODcx9bTSK3rQuVW5Xqcr6b57ORGPX6siCMkgZwOqx/9oGF3mPOzDM
 HYks39XkQyKs21TfaL/chsDJIPuxcTZB/ADLSlSaFGzUAPKd0IZ7gyv5fw7OHyG6tOU0
 P8vw==
X-Gm-Message-State: APjAAAWDwkChhNfZ9HuLk/pD7A4STU3SAz1UAR7joS8ObNYusOD9ETfh
 c94WwFFG3GWyAzaesKDt5cCGG/ba
X-Google-Smtp-Source: APXvYqzMjTkskDJ5cHLphHWm9b1rskQkDzzPP6jdTmY82N07/oDlR/z5Ly3Tz2//ObnCSkKoDennQQ==
X-Received: by 2002:ab0:6e2:: with SMTP id g89mr3675625uag.56.1564893211396;
 Sat, 03 Aug 2019 21:33:31 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.31.112])
 by smtp.gmail.com with ESMTPSA id 10sm33314346vkl.33.2019.08.03.21.33.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 21:33:31 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 00:32:06 -0400
Message-Id: <20190804043206.30580-6-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804043206.30580-1-luaraneda@gmail.com>
References: <20190804043206.30580-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_213332_901224_9BB34BA6 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [190.22.31.112 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 5/5] zynq: remove kernel 4.14 support
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 target/linux/zynq/config-4.14                 | 662 ------------------
 ...020-v4.17-add-digilent-zybo-z7-board.patch |  94 ---
 ...nufacturer-for-ZedBoard-and-MicroZed.patch |  38 -
 ...25-v4.19-update-digilent-zybo-z7-dts.patch |  52 --
 4 files changed, 846 deletions(-)
 delete mode 100644 target/linux/zynq/config-4.14
 delete mode 100644 target/linux/zynq/patches-4.14/020-v4.17-add-digilent-zybo-z7-board.patch
 delete mode 100644 target/linux/zynq/patches-4.14/022-v4.19-dts-set-correct-manufacturer-for-ZedBoard-and-MicroZed.patch
 delete mode 100644 target/linux/zynq/patches-4.14/025-v4.19-update-digilent-zybo-z7-dts.patch

diff --git a/target/linux/zynq/config-4.14 b/target/linux/zynq/config-4.14
deleted file mode 100644
index fc33ca1b51..0000000000
--- a/target/linux/zynq/config-4.14
+++ /dev/null
@@ -1,662 +0,0 @@
-CONFIG_ALIGNMENT_TRAP=y
-# CONFIG_ALTERA_PR_IP_CORE is not set
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
-CONFIG_ARCH_NR_GPIO=1024
-CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
-CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT=y
-# CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
-# CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
-CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
-CONFIG_ARCH_SUPPORTS_BIG_ENDIAN=y
-CONFIG_ARCH_SUPPORTS_UPROBES=y
-CONFIG_ARCH_SUSPEND_POSSIBLE=y
-CONFIG_ARCH_USE_BUILTIN_BSWAP=y
-CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
-CONFIG_ARCH_VEXPRESS=y
-CONFIG_ARCH_VEXPRESS_CORTEX_A5_A9_ERRATA=y
-# CONFIG_ARCH_VEXPRESS_SPC is not set
-CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
-CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
-CONFIG_ARCH_ZYNQ=y
-CONFIG_ARM=y
-CONFIG_ARM_AMBA=y
-CONFIG_ARM_CCI=y
-CONFIG_ARM_CCI400_COMMON=y
-CONFIG_ARM_CCI400_PMU=y
-CONFIG_ARM_CCI_PMU=y
-CONFIG_ARM_CPU_SUSPEND=y
-CONFIG_ARM_ERRATA_643719=y
-CONFIG_ARM_ERRATA_720789=y
-CONFIG_ARM_ERRATA_754322=y
-CONFIG_ARM_ERRATA_754327=y
-CONFIG_ARM_ERRATA_764369=y
-CONFIG_ARM_ERRATA_775420=y
-CONFIG_ARM_GIC=y
-CONFIG_ARM_GLOBAL_TIMER=y
-CONFIG_ARM_HAS_SG_CHAIN=y
-CONFIG_ARM_HEAVY_MB=y
-CONFIG_ARM_L1_CACHE_SHIFT=6
-CONFIG_ARM_L1_CACHE_SHIFT_6=y
-# CONFIG_ARM_LPAE is not set
-CONFIG_ARM_PATCH_IDIV=y
-CONFIG_ARM_PATCH_PHYS_VIRT=y
-# CONFIG_ARM_PL172_MPMC is not set
-CONFIG_ARM_PMU=y
-# CONFIG_ARM_SMMU is not set
-# CONFIG_ARM_SP805_WATCHDOG is not set
-CONFIG_ARM_THUMB=y
-# CONFIG_ARM_THUMBEE is not set
-CONFIG_ARM_TIMER_SP804=y
-CONFIG_ARM_UNWIND=y
-CONFIG_ARM_VIRT_EXT=y
-CONFIG_ARM_ZYNQ_CPUIDLE=y
-CONFIG_ATAGS=y
-CONFIG_AUTO_ZRELADDR=y
-# CONFIG_AXI_DMAC is not set
-CONFIG_BLK_DEV_LOOP=y
-CONFIG_BLK_DEV_RAM=y
-CONFIG_BLK_DEV_RAM_COUNT=16
-CONFIG_BLK_DEV_RAM_SIZE=16384
-CONFIG_BLK_MQ_PCI=y
-CONFIG_BOUNCE=y
-CONFIG_BUILD_BIN2C=y
-CONFIG_CACHE_L2X0=y
-CONFIG_CADENCE_TTC_TIMER=y
-CONFIG_CADENCE_WATCHDOG=y
-CONFIG_CLKDEV_LOOKUP=y
-CONFIG_CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK=y
-CONFIG_CLKSRC_MMIO=y
-CONFIG_CLKSRC_VERSATILE=y
-CONFIG_CLK_SP810=y
-CONFIG_CLK_VEXPRESS_OSC=y
-CONFIG_CLONE_BACKWARDS=y
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
-# CONFIG_COMMON_CLK_AXI_CLKGEN is not set
-CONFIG_COMMON_CLK_SI570=y
-CONFIG_COMMON_CLK_VERSATILE=y
-CONFIG_CONNECTOR=y
-CONFIG_CONSOLE_TRANSLATIONS=y
-CONFIG_COREDUMP=y
-# CONFIG_CPUFREQ_DT is not set
-CONFIG_CPU_32v6K=y
-CONFIG_CPU_32v7=y
-CONFIG_CPU_ABRT_EV7=y
-# CONFIG_CPU_BIG_ENDIAN is not set
-# CONFIG_CPU_BPREDICT_DISABLE is not set
-CONFIG_CPU_CACHE_V7=y
-CONFIG_CPU_CACHE_VIPT=y
-CONFIG_CPU_COPY_V6=y
-CONFIG_CPU_CP15=y
-CONFIG_CPU_CP15_MMU=y
-CONFIG_CPU_FREQ=y
-# CONFIG_CPU_FREQ_DEFAULT_GOV_PERFORMANCE is not set
-CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE=y
-CONFIG_CPU_FREQ_GOV_ATTR_SET=y
-CONFIG_CPU_FREQ_GOV_COMMON=y
-CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
-CONFIG_CPU_FREQ_GOV_ONDEMAND=y
-CONFIG_CPU_FREQ_GOV_PERFORMANCE=y
-CONFIG_CPU_FREQ_GOV_POWERSAVE=y
-CONFIG_CPU_FREQ_GOV_USERSPACE=y
-CONFIG_CPU_FREQ_STAT=y
-CONFIG_CPU_HAS_ASID=y
-# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
-# CONFIG_CPU_ICACHE_DISABLE is not set
-CONFIG_CPU_IDLE=y
-CONFIG_CPU_IDLE_GOV_LADDER=y
-CONFIG_CPU_IDLE_GOV_MENU=y
-CONFIG_CPU_PABRT_V7=y
-CONFIG_CPU_PM=y
-CONFIG_CPU_RMAP=y
-CONFIG_CPU_SPECTRE=y
-CONFIG_CPU_THERMAL=y
-CONFIG_CPU_THUMB_CAPABLE=y
-CONFIG_CPU_TLB_V7=y
-CONFIG_CPU_V7=y
-CONFIG_CRC16=y
-# CONFIG_CRC32_SARWATE is not set
-CONFIG_CRC32_SLICEBY8=y
-CONFIG_CROSS_MEMORY_ATTACH=y
-CONFIG_CRYPTO_AEAD=y
-CONFIG_CRYPTO_AEAD2=y
-CONFIG_CRYPTO_CRC32=y
-CONFIG_CRYPTO_CRC32C=y
-CONFIG_CRYPTO_HASH=y
-CONFIG_CRYPTO_HASH2=y
-CONFIG_CRYPTO_HW=y
-CONFIG_CRYPTO_MANAGER=y
-CONFIG_CRYPTO_MANAGER2=y
-CONFIG_CRYPTO_NULL2=y
-CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_WORKQUEUE=y
-CONFIG_DCACHE_WORD_ACCESS=y
-CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
-# CONFIG_DEBUG_UART_8250 is not set
-# CONFIG_DEBUG_USER is not set
-CONFIG_DEFAULT_CFQ=y
-# CONFIG_DEFAULT_DEADLINE is not set
-CONFIG_DEFAULT_IOSCHED="cfq"
-CONFIG_DMADEVICES=y
-CONFIG_DMA_CMA=y
-CONFIG_DMA_ENGINE=y
-CONFIG_DMA_OF=y
-CONFIG_DMA_SHARED_BUFFER=y
-CONFIG_DRM=y
-CONFIG_DRM_BRIDGE=y
-CONFIG_DRM_FBDEV_EMULATION=y
-CONFIG_DRM_FBDEV_OVERALLOC=100
-CONFIG_DRM_KMS_FB_HELPER=y
-CONFIG_DRM_KMS_HELPER=y
-CONFIG_DRM_PANEL=y
-CONFIG_DRM_PANEL_BRIDGE=y
-CONFIG_DTC=y
-CONFIG_DUMMY_CONSOLE=y
-CONFIG_E1000E=y
-CONFIG_EDAC=y
-CONFIG_EDAC_ATOMIC_SCRUB=y
-# CONFIG_EDAC_DEBUG is not set
-CONFIG_EDAC_LEGACY_SYSFS=y
-CONFIG_EDAC_SUPPORT=y
-# CONFIG_EDAC_SYNOPSYS is not set
-CONFIG_EEPROM_AT24=y
-CONFIG_EEPROM_AT25=y
-CONFIG_ELF_CORE=y
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
-# CONFIG_FB_XILINX is not set
-CONFIG_FHANDLE=y
-CONFIG_FIRMWARE_IN_KERNEL=y
-CONFIG_FIXED_PHY=y
-CONFIG_FIX_EARLYCON_MEM=y
-CONFIG_FPGA=y
-CONFIG_FPGA_BRIDGE=y
-# CONFIG_FPGA_MGR_ALTERA_CVP is not set
-# CONFIG_FPGA_MGR_ALTERA_PS_SPI is not set
-# CONFIG_FPGA_MGR_ICE40_SPI is not set
-# CONFIG_FPGA_MGR_XILINX_SPI is not set
-CONFIG_FPGA_MGR_ZYNQ_FPGA=y
-CONFIG_FPGA_REGION=y
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
-CONFIG_GENERIC_PINCONF=y
-CONFIG_GENERIC_SCHED_CLOCK=y
-CONFIG_GENERIC_SMP_IDLE_THREAD=y
-CONFIG_GENERIC_STRNCPY_FROM_USER=y
-CONFIG_GENERIC_STRNLEN_USER=y
-CONFIG_GLOB=y
-CONFIG_GPIOLIB=y
-CONFIG_GPIOLIB_IRQCHIP=y
-CONFIG_GPIO_GENERIC=y
-CONFIG_GPIO_GENERIC_PLATFORM=y
-CONFIG_GPIO_SYSFS=y
-CONFIG_GPIO_ZYNQ=y
-# CONFIG_GRO_CELLS is not set
-CONFIG_HANDLE_DOMAIN_IRQ=y
-CONFIG_HARDEN_BRANCH_PREDICTOR=y
-CONFIG_HARDIRQS_SW_RESEND=y
-CONFIG_HAS_DMA=y
-CONFIG_HAS_IOMEM=y
-# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
-CONFIG_HAVE_ARCH_AUDITSYSCALL=y
-CONFIG_HAVE_ARCH_BITREVERSE=y
-CONFIG_HAVE_ARCH_JUMP_LABEL=y
-CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_PFN_VALID=y
-CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
-CONFIG_HAVE_ARCH_TRACEHOOK=y
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
-CONFIG_HAVE_HW_BREAKPOINT=y
-CONFIG_HAVE_IDE=y
-CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
-CONFIG_HAVE_MEMBLOCK=y
-CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
-CONFIG_HAVE_NET_DSA=y
-CONFIG_HAVE_OPROFILE=y
-CONFIG_HAVE_OPTPROBES=y
-CONFIG_HAVE_PATA_PLATFORM=y
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
-CONFIG_HID_GENERIC=y
-CONFIG_HID_MICROSOFT=y
-CONFIG_HIGHMEM=y
-# CONFIG_HIGHPTE is not set
-CONFIG_HOTPLUG_CPU=y
-CONFIG_HWMON=y
-CONFIG_HW_CONSOLE=y
-CONFIG_HZ_FIXED=0
-CONFIG_I2C=y
-CONFIG_I2C_ALGOBIT=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_I2C_CADENCE=y
-CONFIG_I2C_CHARDEV=y
-CONFIG_I2C_COMPAT=y
-CONFIG_I2C_HELPER_AUTO=y
-CONFIG_I2C_MUX=y
-CONFIG_I2C_MUX_PCA954x=y
-CONFIG_ICST=y
-CONFIG_IIO=y
-CONFIG_IIO_BUFFER=y
-CONFIG_IIO_KFIFO_BUF=y
-CONFIG_IIO_TRIGGER=y
-CONFIG_IIO_TRIGGERED_BUFFER=y
-CONFIG_IKCONFIG=y
-CONFIG_IKCONFIG_PROC=y
-CONFIG_INITRAMFS_SOURCE=""
-CONFIG_INPUT=y
-CONFIG_INPUT_EVDEV=y
-CONFIG_INPUT_KEYBOARD=y
-# CONFIG_INPUT_MISC is not set
-CONFIG_INPUT_MOUSE=y
-CONFIG_INPUT_MOUSEDEV=y
-CONFIG_INPUT_MOUSEDEV_PSAUX=y
-CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
-CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
-CONFIG_INPUT_POLLDEV=y
-CONFIG_INPUT_SPARSEKMAP=y
-CONFIG_IOMMU_HELPER=y
-# CONFIG_IOMMU_IO_PGTABLE_ARMV7S is not set
-# CONFIG_IOMMU_IO_PGTABLE_LPAE is not set
-CONFIG_IOMMU_SUPPORT=y
-CONFIG_IOSCHED_CFQ=y
-CONFIG_IP_PNP=y
-CONFIG_IP_PNP_BOOTP=y
-CONFIG_IP_PNP_DHCP=y
-CONFIG_IP_PNP_RARP=y
-CONFIG_IRQCHIP=y
-CONFIG_IRQ_DOMAIN=y
-CONFIG_IRQ_DOMAIN_HIERARCHY=y
-CONFIG_IRQ_FORCED_THREADING=y
-CONFIG_IRQ_WORK=y
-# CONFIG_ISDN is not set
-CONFIG_JBD2=y
-# CONFIG_JFFS2_COMPRESSION_OPTIONS is not set
-# CONFIG_JFFS2_FS_XATTR is not set
-# CONFIG_JFFS2_LZMA is not set
-CONFIG_JFFS2_ZLIB=y
-CONFIG_KERNEL_GZIP=y
-# CONFIG_KERNEL_MODE_NEON is not set
-# CONFIG_KERNEL_XZ is not set
-CONFIG_KEYBOARD_ATKBD=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_KEYBOARD_GPIO_POLLED=y
-CONFIG_LEDS_GPIO=y
-CONFIG_LEDS_TRIGGER_BACKLIGHT=y
-CONFIG_LEDS_TRIGGER_CAMERA=y
-CONFIG_LEDS_TRIGGER_CPU=y
-CONFIG_LEDS_TRIGGER_GPIO=y
-CONFIG_LEDS_TRIGGER_HEARTBEAT=y
-# CONFIG_LEDS_TRIGGER_NETDEV is not set
-CONFIG_LEDS_TRIGGER_ONESHOT=y
-CONFIG_LEDS_TRIGGER_TRANSIENT=y
-CONFIG_LIBFDT=y
-CONFIG_LOCK_SPIN_ON_OWNER=y
-CONFIG_MACB=y
-# CONFIG_MACB_PCI is not set
-CONFIG_MACB_USE_HWSTAMP=y
-CONFIG_MARVELL_PHY=y
-CONFIG_MDIO_BITBANG=y
-CONFIG_MDIO_BUS=y
-CONFIG_MDIO_DEVICE=y
-# CONFIG_MDIO_GPIO is not set
-CONFIG_MEMORY=y
-CONFIG_MEMORY_ISOLATION=y
-CONFIG_MFD_CORE=y
-CONFIG_MFD_SYSCON=y
-CONFIG_MFD_VEXPRESS_SYSREG=y
-CONFIG_MIGHT_HAVE_CACHE_L2X0=y
-CONFIG_MIGHT_HAVE_PCI=y
-CONFIG_MIGRATION=y
-CONFIG_MMC=y
-CONFIG_MMC_BLOCK=y
-CONFIG_MMC_SDHCI=y
-CONFIG_MMC_SDHCI_OF_ARASAN=y
-# CONFIG_MMC_SDHCI_PCI is not set
-CONFIG_MMC_SDHCI_PLTFM=y
-# CONFIG_MMC_TIFM_SD is not set
-CONFIG_MODULES_TREE_LOOKUP=y
-CONFIG_MODULES_USE_ELF_REL=y
-CONFIG_MODULE_FORCE_UNLOAD=y
-# CONFIG_MODULE_STRIPPED is not set
-# CONFIG_MOUSE_BCM5974 is not set
-# CONFIG_MOUSE_CYAPA is not set
-CONFIG_MOUSE_PS2=y
-CONFIG_MOUSE_PS2_ALPS=y
-CONFIG_MOUSE_PS2_BYD=y
-CONFIG_MOUSE_PS2_CYPRESS=y
-# CONFIG_MOUSE_PS2_ELANTECH is not set
-CONFIG_MOUSE_PS2_FOCALTECH=y
-CONFIG_MOUSE_PS2_LOGIPS2PP=y
-CONFIG_MOUSE_PS2_SMBUS=y
-CONFIG_MOUSE_PS2_SYNAPTICS=y
-CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=y
-# CONFIG_MOUSE_PS2_TOUCHKIT is not set
-CONFIG_MOUSE_PS2_TRACKPOINT=y
-# CONFIG_MOUSE_SERIAL is not set
-# CONFIG_MOUSE_VSXXXAA is not set
-# CONFIG_MTD_CFI_INTELEXT is not set
-CONFIG_MTD_CMDLINE_PARTS=y
-# CONFIG_MTD_COMPLEX_MAPPINGS is not set
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_NAND=y
-CONFIG_MTD_NAND_ECC=y
-CONFIG_MTD_PHYSMAP=y
-CONFIG_MTD_SPI_NOR=y
-CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
-# CONFIG_MTD_SPLIT is not set
-CONFIG_MTD_SPLIT_FIRMWARE=y
-# CONFIG_MTD_SPLIT_SQUASHFS_ROOT is not set
-CONFIG_MULTI_IRQ_HANDLER=y
-CONFIG_MUTEX_SPIN_ON_OWNER=y
-CONFIG_NEED_DMA_MAP_STATE=y
-CONFIG_NEON=y
-CONFIG_NET_FLOW_LIMIT=y
-CONFIG_NET_PACKET_ENGINE=y
-CONFIG_NET_PTP_CLASSIFY=y
-# CONFIG_NET_VENDOR_CIRRUS is not set
-# CONFIG_NET_VENDOR_FARADAY is not set
-# CONFIG_NET_VENDOR_MARVELL is not set
-# CONFIG_NET_VENDOR_MICREL is not set
-# CONFIG_NET_VENDOR_MICROCHIP is not set
-# CONFIG_NET_VENDOR_NATSEMI is not set
-# CONFIG_NET_VENDOR_SEEQ is not set
-# CONFIG_NET_VENDOR_SMSC is not set
-# CONFIG_NET_VENDOR_STMICRO is not set
-# CONFIG_NET_VENDOR_VIA is not set
-CONFIG_NLS=y
-CONFIG_NLS_ASCII=y
-CONFIG_NLS_CODEPAGE_437=y
-CONFIG_NLS_ISO8859_1=y
-CONFIG_NOP_USB_XCEIV=y
-CONFIG_NO_BOOTMEM=y
-CONFIG_NO_HZ=y
-CONFIG_NO_HZ_COMMON=y
-CONFIG_NO_HZ_IDLE=y
-CONFIG_NO_IOPORT_MAP=y
-CONFIG_NR_CPUS=4
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
-# CONFIG_PARTITION_ADVANCED is not set
-CONFIG_PCI=y
-CONFIG_PCIE_XILINX=y
-CONFIG_PCI_DOMAINS=y
-CONFIG_PCI_DOMAINS_GENERIC=y
-CONFIG_PCI_MSI=y
-CONFIG_PCI_MSI_IRQ_DOMAIN=y
-CONFIG_PCI_REALLOC_ENABLE_AUTO=y
-CONFIG_PERF_EVENTS=y
-CONFIG_PERF_USE_VMALLOC=y
-CONFIG_PGTABLE_LEVELS=2
-CONFIG_PHYLIB=y
-CONFIG_PINCTRL=y
-# CONFIG_PINCTRL_SINGLE is not set
-CONFIG_PINCTRL_ZYNQ=y
-CONFIG_PL310_ERRATA_588369=y
-CONFIG_PL310_ERRATA_727915=y
-CONFIG_PL310_ERRATA_753970=y
-CONFIG_PL310_ERRATA_769419=y
-CONFIG_PL330_DMA=y
-CONFIG_PLAT_VERSATILE=y
-CONFIG_PM=y
-CONFIG_PMBUS=y
-CONFIG_PM_CLK=y
-# CONFIG_PM_DEBUG is not set
-CONFIG_PM_SLEEP=y
-CONFIG_PM_SLEEP_SMP=y
-CONFIG_POWER_RESET=y
-CONFIG_POWER_RESET_VEXPRESS=y
-CONFIG_POWER_SUPPLY=y
-CONFIG_PPS=y
-CONFIG_PREEMPT=y
-CONFIG_PREEMPT_COUNT=y
-# CONFIG_PREEMPT_NONE is not set
-CONFIG_PREEMPT_RCU=y
-CONFIG_PROC_EVENTS=y
-# CONFIG_PROC_STRIPPED is not set
-CONFIG_PTP_1588_CLOCK=y
-CONFIG_R8169=y
-CONFIG_RAS=y
-CONFIG_RATIONAL=y
-# CONFIG_RCU_BOOST is not set
-CONFIG_RCU_NEED_SEGCBLIST=y
-CONFIG_RCU_STALL_COMMON=y
-CONFIG_REGMAP=y
-CONFIG_REGMAP_I2C=y
-CONFIG_REGMAP_MMIO=y
-CONFIG_REGMAP_SPI=y
-CONFIG_REGULATOR=y
-CONFIG_REGULATOR_FIXED_VOLTAGE=y
-# CONFIG_REGULATOR_VEXPRESS is not set
-CONFIG_RESET_CONTROLLER=y
-CONFIG_RESET_ZYNQ=y
-CONFIG_RFS_ACCEL=y
-CONFIG_RPS=y
-CONFIG_RTC_CLASS=y
-# CONFIG_RTC_DRV_CMOS is not set
-CONFIG_RTC_DRV_PCF8563=y
-CONFIG_RTC_I2C_AND_SPI=y
-CONFIG_RWSEM_SPIN_ON_OWNER=y
-CONFIG_RWSEM_XCHGADD_ALGORITHM=y
-# CONFIG_SCHED_INFO is not set
-CONFIG_SCHED_MC=y
-CONFIG_SCHED_SMT=y
-# CONFIG_SCSI_DMA is not set
-CONFIG_SENSORS_PMBUS=y
-CONFIG_SENSORS_UCD9000=y
-CONFIG_SENSORS_UCD9200=y
-# CONFIG_SERIAL_8250 is not set
-# CONFIG_SERIAL_AMBA_PL011 is not set
-CONFIG_SERIAL_XILINX_PS_UART=y
-CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
-CONFIG_SERIO=y
-CONFIG_SERIO_LIBPS2=y
-CONFIG_SERIO_SERPORT=y
-CONFIG_SMP=y
-CONFIG_SMP_ON_UP=y
-CONFIG_SOC_BUS=y
-CONFIG_SPARSE_IRQ=y
-CONFIG_SPI=y
-CONFIG_SPI_BITBANG=y
-CONFIG_SPI_CADENCE=y
-CONFIG_SPI_MASTER=y
-CONFIG_SPI_XILINX=y
-CONFIG_SRAM=y
-CONFIG_SRAM_EXEC=y
-CONFIG_SRCU=y
-# CONFIG_STAGING is not set
-# CONFIG_STRIP_ASM_SYMS is not set
-CONFIG_SUSPEND=y
-CONFIG_SUSPEND_FREEZER=y
-CONFIG_SWIOTLB=y
-CONFIG_SWPHY=y
-CONFIG_SWP_EMULATE=y
-CONFIG_SYNC_FILE=y
-CONFIG_SYSCTL_SYSCALL=y
-CONFIG_SYSFS_SYSCALL=y
-CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-CONFIG_TASKS_RCU=y
-# CONFIG_TCP_CONG_ADVANCED is not set
-# CONFIG_TEXTSEARCH is not set
-CONFIG_THERMAL=y
-CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE=y
-CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS=0
-CONFIG_THERMAL_GOV_STEP_WISE=y
-CONFIG_THERMAL_HWMON=y
-CONFIG_THERMAL_OF=y
-# CONFIG_THUMB2_KERNEL is not set
-CONFIG_TICK_CPU_ACCOUNTING=y
-CONFIG_TIMER_OF=y
-CONFIG_TIMER_PROBE=y
-# CONFIG_TMPFS_XATTR is not set
-CONFIG_TREE_SRCU=y
-CONFIG_UIO=y
-# CONFIG_UIO_AEC is not set
-# CONFIG_UIO_CIF is not set
-# CONFIG_UIO_DMEM_GENIRQ is not set
-# CONFIG_UIO_MF624 is not set
-# CONFIG_UIO_NETX is not set
-# CONFIG_UIO_PCI_GENERIC is not set
-CONFIG_UIO_PDRV_GENIRQ=y
-# CONFIG_UIO_PRUSS is not set
-# CONFIG_UIO_SERCOS3 is not set
-CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
-CONFIG_UNINLINE_SPIN_UNLOCK=y
-CONFIG_USB=y
-CONFIG_USB_CHIPIDEA=y
-CONFIG_USB_CHIPIDEA_HOST=y
-CONFIG_USB_CHIPIDEA_OF=y
-CONFIG_USB_CHIPIDEA_UDC=y
-CONFIG_USB_COMMON=y
-CONFIG_USB_EHCI_HCD=y
-# CONFIG_USB_EHCI_HCD_PLATFORM is not set
-# CONFIG_USB_EHCI_TT_NEWSCHED is not set
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_XILINX=y
-CONFIG_USB_HID=y
-CONFIG_USB_NET_DRIVERS=y
-CONFIG_USB_OTG=y
-CONFIG_USB_OTG_FSM=y
-CONFIG_USB_PHY=y
-CONFIG_USB_SUPPORT=y
-CONFIG_USB_ULPI=y
-CONFIG_USB_ULPI_VIEWPORT=y
-CONFIG_USELIB=y
-# CONFIG_USERIO is not set
-CONFIG_USE_OF=y
-CONFIG_VECTORS_BASE=0xffff0000
-CONFIG_VEXPRESS_CONFIG=y
-CONFIG_VEXPRESS_SYSCFG=y
-CONFIG_VFP=y
-CONFIG_VFPv3=y
-CONFIG_VGA_ARB=y
-CONFIG_VGA_ARB_MAX_GPUS=16
-CONFIG_VITESSE_PHY=y
-CONFIG_VM_EVENT_COUNTERS=y
-CONFIG_VT=y
-CONFIG_VT_CONSOLE=y
-CONFIG_VT_CONSOLE_SLEEP=y
-# CONFIG_VT_HW_CONSOLE_BINDING is not set
-CONFIG_WATCHDOG_CORE=y
-# CONFIG_WEXT_PRIV is not set
-# CONFIG_WEXT_SPY is not set
-# CONFIG_WIRELESS_EXT is not set
-# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
-CONFIG_XILINX_EMACLITE=y
-# CONFIG_XILINX_PR_DECOUPLER is not set
-CONFIG_XILINX_WATCHDOG=y
-CONFIG_XILINX_XADC=y
-CONFIG_XPS=y
-CONFIG_XZ_DEC_ARM=y
-CONFIG_XZ_DEC_ARMTHUMB=y
-CONFIG_XZ_DEC_BCJ=y
-CONFIG_XZ_DEC_IA64=y
-CONFIG_XZ_DEC_POWERPC=y
-CONFIG_XZ_DEC_SPARC=y
-CONFIG_XZ_DEC_X86=y
-CONFIG_ZBOOT_ROM_BSS=0x0
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZLIB_DEFLATE=y
-CONFIG_ZLIB_INFLATE=y
diff --git a/target/linux/zynq/patches-4.14/020-v4.17-add-digilent-zybo-z7-board.patch b/target/linux/zynq/patches-4.14/020-v4.17-add-digilent-zybo-z7-board.patch
deleted file mode 100644
index 7ff31e374f..0000000000
--- a/target/linux/zynq/patches-4.14/020-v4.17-add-digilent-zybo-z7-board.patch
+++ /dev/null
@@ -1,94 +0,0 @@
-From ba5c7a032c2ae66d5467820daab898e5f9048405 Mon Sep 17 00:00:00 2001
-From: Nobuhiro Iwamatsu <nobuhiro.iwamatsu@cybertrust.co.jp>
-Date: Wed, 28 Feb 2018 11:25:52 +0900
-Subject: [PATCH] arm: dts: zynq: Add Digilent Zybo Z7 board
-
-This add a DTS for the Digilent Zybo Z7 board.
-This board is the successor board of Zybo, these are almost the same except
-for ps-clk-frequency specifications.
-
-Signed-off-by: Nobuhiro Iwamatsu <nobuhiro.iwamatsu@cybertrust.co.jp>
-Reviewed-by: Rob Herring <robh@kernel.org>
-Signed-off-by: Michal Simek <michal.simek@xilinx.com>
----
-Modifications:
-- Removed changes to file Documentation/devicetree/bindings/arm/xilinx.txt
----
- arch/arm/boot/dts/Makefile                    |  3 +-
- arch/arm/boot/dts/zynq-zybo-z7.dts            | 58 +++++++++++++++++++
- 2 files changed, 60 insertions(+), 1 deletion(-)
- create mode 100644 arch/arm/boot/dts/zynq-zybo-z7.dts
-
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -1006,7 +1006,8 @@ dtb-$(CONFIG_ARCH_ZYNQ) += \
- 	zynq-zc702.dtb \
- 	zynq-zc706.dtb \
- 	zynq-zed.dtb \
--	zynq-zybo.dtb
-+	zynq-zybo.dtb \
-+	zynq-zybo-z7.dtb
- dtb-$(CONFIG_MACH_ARMADA_370) += \
- 	armada-370-db.dtb \
- 	armada-370-dlink-dns327l.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/zynq-zybo-z7.dts
-@@ -0,0 +1,58 @@
-+// SPDX-License-Identifier: GPL-2.0+
-+/dts-v1/;
-+#include "zynq-7000.dtsi"
-+
-+/ {
-+	model = "Zynq ZYBO Z7 Development Board";
-+	compatible = "digilent,zynq-zybo-z7", "xlnx,zynq-7000";
-+
-+	aliases {
-+		ethernet0 = &gem0;
-+		serial0 = &uart1;
-+	};
-+
-+	memory@0 {
-+		device_type = "memory";
-+		reg = <0x0 0x20000000>;
-+	};
-+
-+	chosen {
-+		bootargs = "";
-+		stdout-path = "serial0:115200n8";
-+	};
-+
-+	usb_phy0: phy0 {
-+		#phy-cells = <0>;
-+		compatible = "usb-nop-xceiv";
-+		reset-gpios = <&gpio0 46 1>;
-+	};
-+};
-+
-+&clkc {
-+	ps-clk-frequency = <33333333>;
-+};
-+
-+&gem0 {
-+	status = "okay";
-+	phy-mode = "rgmii-id";
-+	phy-handle = <&ethernet_phy>;
-+
-+	ethernet_phy: ethernet-phy@0 {
-+		reg = <0>;
-+		device_type = "ethernet-phy";
-+	};
-+};
-+
-+&sdhci0 {
-+	status = "okay";
-+};
-+
-+&uart1 {
-+	status = "okay";
-+};
-+
-+&usb0 {
-+	status = "okay";
-+	dr_mode = "host";
-+	usb-phy = <&usb_phy0>;
-+};
diff --git a/target/linux/zynq/patches-4.14/022-v4.19-dts-set-correct-manufacturer-for-ZedBoard-and-MicroZed.patch b/target/linux/zynq/patches-4.14/022-v4.19-dts-set-correct-manufacturer-for-ZedBoard-and-MicroZed.patch
deleted file mode 100644
index 3091846a63..0000000000
--- a/target/linux/zynq/patches-4.14/022-v4.19-dts-set-correct-manufacturer-for-ZedBoard-and-MicroZed.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From ef4c422d167afcd15c8bae1f841ef59334c1f973 Mon Sep 17 00:00:00 2001
-From: Luis Araneda <luaraneda@gmail.com>
-Date: Thu, 12 Jul 2018 00:10:19 -0400
-Subject: [PATCH] ARM: dts: zynq: Set correct manufacturer for ZedBoard and
- MicroZed boards
-
-Both boards are made by Avnet, Inc. So add an additional
-value to the compatible property
-
-Signed-off-by: Luis Araneda <luaraneda@gmail.com>
-Signed-off-by: Michal Simek <michal.simek@xilinx.com>
----
- arch/arm/boot/dts/zynq-microzed.dts | 2 +-
- arch/arm/boot/dts/zynq-zed.dts      | 2 +-
- 2 files changed, 2 insertions(+), 2 deletions(-)
-
---- a/arch/arm/boot/dts/zynq-microzed.dts
-+++ b/arch/arm/boot/dts/zynq-microzed.dts
-@@ -16,7 +16,7 @@
- 
- / {
- 	model = "Zynq MicroZED Development Board";
--	compatible = "xlnx,zynq-microzed", "xlnx,zynq-7000";
-+	compatible = "avnet,zynq-microzed", "xlnx,zynq-microzed", "xlnx,zynq-7000";
- 
- 	aliases {
- 		ethernet0 = &gem0;
---- a/arch/arm/boot/dts/zynq-zed.dts
-+++ b/arch/arm/boot/dts/zynq-zed.dts
-@@ -16,7 +16,7 @@
- 
- / {
- 	model = "Zynq Zed Development Board";
--	compatible = "xlnx,zynq-zed", "xlnx,zynq-7000";
-+	compatible = "avnet,zynq-zed", "xlnx,zynq-zed", "xlnx,zynq-7000";
- 
- 	aliases {
- 		ethernet0 = &gem0;
diff --git a/target/linux/zynq/patches-4.14/025-v4.19-update-digilent-zybo-z7-dts.patch b/target/linux/zynq/patches-4.14/025-v4.19-update-digilent-zybo-z7-dts.patch
deleted file mode 100644
index d4726498d2..0000000000
--- a/target/linux/zynq/patches-4.14/025-v4.19-update-digilent-zybo-z7-dts.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From 7d90ca6f19199a54d3f8417c5f36c50dfa0accc8 Mon Sep 17 00:00:00 2001
-From: Luis Araneda <luaraneda@gmail.com>
-Date: Thu, 12 Jul 2018 01:50:46 -0400
-Subject: [PATCH] v4.19: Backport dts updates to the Digilent Zybo Z7 board
-
-- 7d90ca6: Fix memory size (512 MiB -> 1 GiB)
-- edd62b9: Use GPIO constants
-- a2b7baf: Add gpio-leds node
-
-Signed-off-by: Luis Araneda <luaraneda@gmail.com>
----
-
---- a/arch/arm/boot/dts/zynq-zybo-z7.dts
-+++ b/arch/arm/boot/dts/zynq-zybo-z7.dts
-@@ -1,6 +1,7 @@
- // SPDX-License-Identifier: GPL-2.0+
- /dts-v1/;
- #include "zynq-7000.dtsi"
-+#include <dt-bindings/gpio/gpio.h>
- 
- / {
- 	model = "Zynq ZYBO Z7 Development Board";
-@@ -13,7 +14,7 @@
- 
- 	memory@0 {
- 		device_type = "memory";
--		reg = <0x0 0x20000000>;
-+		reg = <0x0 0x40000000>;
- 	};
- 
- 	chosen {
-@@ -21,10 +22,19 @@
- 		stdout-path = "serial0:115200n8";
- 	};
- 
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+
-+		ld4 {
-+			label = "zynq-zybo-z7:green:ld4";
-+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-+		};
-+	};
-+
- 	usb_phy0: phy0 {
- 		#phy-cells = <0>;
- 		compatible = "usb-nop-xceiv";
--		reset-gpios = <&gpio0 46 1>;
-+		reset-gpios = <&gpio0 46 GPIO_ACTIVE_LOW>;
- 	};
- };
- 
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
