Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D533A183F9E
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 04:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blvxcGRWaNLL5J4BT02pppb9YB7MrgGhT7kves+9JaI=; b=ZIyWeH7kH3NMdq
	rN3YB0s+ytSwy/Poyr3pJgZBTDZslpmDVmivh0TscW4G+oBsDP7Bn5K8J4bxmaqWeVPKvsBeqEPmL
	n1bwT58YvnKEUlL15m7Z+v3ylm39Snm5TFHwFh3zslGuHXQyGtQ+SwL7fm8btEvCXbihc/LKWKdfe
	9RreGGH7OAZOseTmWpfbX0gXSKRVxHqRzbeCbyYoASQBYc1xvNtQhPkD2ThePsFlmaVyetlDKY+M6
	pnyObXWYylu+H9+yhhFfmXjLYGsnERIlApkjrxF2s+WLU341cBWB1NVaSn+MYH5ihSRw/vHi8B30F
	P9SJkAbUgkj44FAZFtGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCavl-0002Ct-PI; Fri, 13 Mar 2020 03:24:13 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCavH-0001oF-2l
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 03:23:44 +0000
Received: by mail-qv1-xf43.google.com with SMTP id cz10so3896009qvb.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Mar 2020 20:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6+IIpubd4SWH/2B7ixI8E2ZYiHF928U8EbW5ZparDyw=;
 b=Ide3ffx/PwUTybV+5Ugsbu4U1FCEpQP/KDsN7PRzj84sDsOB+Hc8lEALqEfPWYRs7W
 6iCpBjF9P0k+u1Qi19Bc9wRt7+UcC+YgcKZMeZ5AhNxa6kgVBHoKT1Jc/75ue6iS1yPI
 d81sxn3WenDSQN+U8GymT4BSmy/uisgmiKfYiqfKPs1kf+PA2C8mbl8z66YQtQ3oNKVI
 BswlYegYBxbX+0lEPYNMHlaUW+soXwEQ3dfzM0lssa3yB0K8/tWR0+3O4eYmtN374Eo3
 6YgjCMNfy/PGIdqH+1pt1spln/U4N2/cCevVLnLzrxJL+hYyWZevZsOr+a/EDrQ3f+ch
 cu9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6+IIpubd4SWH/2B7ixI8E2ZYiHF928U8EbW5ZparDyw=;
 b=awcNS4kRaAZHYkU87JfMjypVpfILdsbBiI+legegrlJ9ue/BmSSpUDQBH/yC/rsapV
 qAbyKcXb90lU21GuXVNRH1rTOolq70UwqT622RBnYWd5z0TKUhppNJuHMECV9aCoyVK1
 qPkmJlo5abs2lkqfKW8HW6d6dcE70J725spmiMIcCG3uyDjEfGmg8xGZXuko4d07tjGD
 dRJDvTIfyl8nRIXqUR4YQACWWmt6nCtZCgh3OzBb1z44+gEGhppLEEHM4EJSAFU6DiN/
 sm/3N5mC1csYyNkp4JmYJatijGYZPt6yGD/JGFywD9MEa5XjKsb4KcLVVAZSV76Chsr6
 mp/g==
X-Gm-Message-State: ANhLgQ3YmZztYKZj4toiOBPP/bbWADjhDDCzJ/7wxVocqSUIKtzQHz4H
 LGO5YjnuCXo0b0g421J5uWInK6Apyx8=
X-Google-Smtp-Source: ADFU+vtONvuuyMKrnSlzumZVqJZ8Kgf7ODp/KWNRPoaPhxGMwzaq0+KavhNdDYlefd0DDyyIaTI5Kg==
X-Received: by 2002:a0c:a910:: with SMTP id y16mr10484658qva.139.1584069821557; 
 Thu, 12 Mar 2020 20:23:41 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.38.85])
 by smtp.gmail.com with ESMTPSA id b13sm3514833qkk.95.2020.03.12.20.23.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 20:23:41 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 00:23:12 -0300
Message-Id: <20200313032313.383555-3-luaraneda@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313032313.383555-1-luaraneda@gmail.com>
References: <20200313032313.383555-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_202343_129823_5377DFF8 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luaraneda[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
Subject: [OpenWrt-Devel] [PATCH 2/3] zynq: refresh kernel 5.4 config
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

By running make kernel_oldconfig and selecting relevant options

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 target/linux/zynq/config-5.4 | 50 +++++++++++++++++++++---------------
 1 file changed, 30 insertions(+), 20 deletions(-)

diff --git a/target/linux/zynq/config-5.4 b/target/linux/zynq/config-5.4
index ca3aa18291..f201f526b4 100644
--- a/target/linux/zynq/config-5.4
+++ b/target/linux/zynq/config-5.4
@@ -1,21 +1,27 @@
 CONFIG_ALIGNMENT_TRAP=y
+# CONFIG_ALTERA_FREEZE_BRIDGE is not set
 # CONFIG_ALTERA_PR_IP_CORE is not set
+CONFIG_ARCH_32BIT_OFF_T=y
 CONFIG_ARCH_CLOCKSOURCE_DATA=y
+CONFIG_ARCH_HAS_BINFMT_FLAT=y
 CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
 CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
 CONFIG_ARCH_HAS_KCOV=y
+CONFIG_ARCH_HAS_KEEPINITRD=y
 CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
 CONFIG_ARCH_HAS_PHYS_TO_DMA=y
 CONFIG_ARCH_HAS_RESET_CONTROLLER=y
+CONFIG_ARCH_HAS_SETUP_DMA_OPS=y
 CONFIG_ARCH_HAS_SET_MEMORY=y
-CONFIG_ARCH_HAS_SG_CHAIN=y
 CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
 CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
+CONFIG_ARCH_HAS_TEARDOWN_DMA_OPS=y
 CONFIG_ARCH_HAS_TICK_BROADCAST=y
 CONFIG_ARCH_HAVE_CUSTOM_GPIO_H=y
 CONFIG_ARCH_HIBERNATION_POSSIBLE=y
+CONFIG_ARCH_KEEP_MEMBLOCK=y
 CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
 CONFIG_ARCH_MULTIPLATFORM=y
 CONFIG_ARCH_MULTI_V6_V7=y
@@ -32,6 +38,7 @@ CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
 CONFIG_ARCH_VEXPRESS=y
 CONFIG_ARCH_VEXPRESS_CORTEX_A5_A9_ERRATA=y
 # CONFIG_ARCH_VEXPRESS_SPC is not set
+CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT=y
 CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ARCH_ZYNQ=y
@@ -70,16 +77,18 @@ CONFIG_ARM_ZYNQ_CPUIDLE=y
 CONFIG_ATAGS=y
 CONFIG_AUTO_ZRELADDR=y
 # CONFIG_AXI_DMAC is not set
+CONFIG_BINFMT_FLAT_ARGVP_ENVP_ON_STACK=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
 CONFIG_BLK_DEV_RAM_COUNT=16
 CONFIG_BLK_DEV_RAM_SIZE=16384
 CONFIG_BLK_MQ_PCI=y
+CONFIG_BLK_PM=y
 CONFIG_BOUNCE=y
-CONFIG_BUILD_BIN2C=y
 CONFIG_CACHE_L2X0=y
 CONFIG_CADENCE_TTC_TIMER=y
 CONFIG_CADENCE_WATCHDOG=y
+CONFIG_CC_HAS_KASAN_GENERIC=y
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK=y
 CONFIG_CLKSRC_MMIO=y
@@ -101,8 +110,10 @@ CONFIG_COMMON_CLK=y
 # CONFIG_COMMON_CLK_AXI_CLKGEN is not set
 CONFIG_COMMON_CLK_SI570=y
 CONFIG_COMMON_CLK_VERSATILE=y
+CONFIG_COMPAT_32BIT_TIME=y
 CONFIG_CONNECTOR=y
 CONFIG_CONSOLE_TRANSLATIONS=y
+CONFIG_CONTIG_ALLOC=y
 CONFIG_COREDUMP=y
 # CONFIG_CPUFREQ_DT is not set
 CONFIG_CPU_32v6K=y
@@ -129,9 +140,11 @@ CONFIG_CPU_FREQ_STAT=y
 CONFIG_CPU_HAS_ASID=y
 # CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
 # CONFIG_CPU_ICACHE_DISABLE is not set
+# CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND is not set
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_IDLE_GOV_MENU=y
+# CONFIG_CPU_IDLE_GOV_TEO is not set
 CONFIG_CPU_PABRT_V7=y
 CONFIG_CPU_PM=y
 CONFIG_CPU_RMAP=y
@@ -155,17 +168,14 @@ CONFIG_CRYPTO_MANAGER=y
 CONFIG_CRYPTO_MANAGER2=y
 CONFIG_CRYPTO_NULL2=y
 CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_WORKQUEUE=y
 CONFIG_DCACHE_WORD_ACCESS=y
 CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
 # CONFIG_DEBUG_USER is not set
-CONFIG_DEFAULT_CFQ=y
-# CONFIG_DEFAULT_DEADLINE is not set
-CONFIG_DEFAULT_IOSCHED="cfq"
 CONFIG_DMADEVICES=y
 CONFIG_DMA_CMA=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
+CONFIG_DMA_REMAP=y
 CONFIG_DMA_SHARED_BUFFER=y
 CONFIG_DRM=y
 CONFIG_DRM_BRIDGE=y
@@ -173,6 +183,7 @@ CONFIG_DRM_FBDEV_EMULATION=y
 CONFIG_DRM_FBDEV_OVERALLOC=100
 CONFIG_DRM_KMS_FB_HELPER=y
 CONFIG_DRM_KMS_HELPER=y
+# CONFIG_DRM_MCDE is not set
 CONFIG_DRM_PANEL=y
 CONFIG_DRM_PANEL_BRIDGE=y
 CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y
@@ -224,6 +235,9 @@ CONFIG_FPGA_REGION=y
 CONFIG_FREEZER=y
 CONFIG_FS_IOMAP=y
 CONFIG_FS_MBCACHE=y
+CONFIG_FW_LOADER_PAGED_BUF=y
+# CONFIG_FXOS8700_I2C is not set
+# CONFIG_FXOS8700_SPI is not set
 CONFIG_GENERIC_ALLOCATOR=y
 CONFIG_GENERIC_ARCH_TOPOLOGY=y
 CONFIG_GENERIC_BUG=y
@@ -271,6 +285,7 @@ CONFIG_HAVE_ARM_TWD=y
 CONFIG_HAVE_CLK=y
 CONFIG_HAVE_CLK_PREPARE=y
 CONFIG_HAVE_CONTEXT_TRACKING=y
+CONFIG_HAVE_COPY_THREAD_TLS=y
 CONFIG_HAVE_C_RECORDMCOUNT=y
 CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DMA_CONTIGUOUS=y
@@ -281,17 +296,16 @@ CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
 CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
 CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
 CONFIG_HAVE_FUNCTION_TRACER=y
-CONFIG_HAVE_GENERIC_DMA_COHERENT=y
 CONFIG_HAVE_HW_BREAKPOINT=y
 CONFIG_HAVE_IDE=y
 CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
 CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
-CONFIG_HAVE_MEMBLOCK=y
 CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
 CONFIG_HAVE_NET_DSA=y
 CONFIG_HAVE_OPROFILE=y
 CONFIG_HAVE_OPTPROBES=y
 CONFIG_HAVE_PATA_PLATFORM=y
+CONFIG_HAVE_PCI=y
 CONFIG_HAVE_PERF_EVENTS=y
 CONFIG_HAVE_PERF_REGS=y
 CONFIG_HAVE_PERF_USER_STACK_DUMP=y
@@ -332,6 +346,7 @@ CONFIG_IKCONFIG_PROC=y
 CONFIG_INITRAMFS_SOURCE=""
 CONFIG_INPUT=y
 CONFIG_INPUT_EVDEV=y
+CONFIG_INPUT_FF_MEMLESS=y
 CONFIG_INPUT_KEYBOARD=y
 # CONFIG_INPUT_MISC is not set
 CONFIG_INPUT_MOUSE=y
@@ -345,7 +360,6 @@ CONFIG_INPUT_SPARSEKMAP=y
 # CONFIG_IOMMU_IO_PGTABLE_ARMV7S is not set
 # CONFIG_IOMMU_IO_PGTABLE_LPAE is not set
 CONFIG_IOMMU_SUPPORT=y
-CONFIG_IOSCHED_CFQ=y
 CONFIG_IP_PNP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_DHCP=y
@@ -393,7 +407,6 @@ CONFIG_MFD_CORE=y
 CONFIG_MFD_SYSCON=y
 CONFIG_MFD_VEXPRESS_SYSREG=y
 CONFIG_MIGHT_HAVE_CACHE_L2X0=y
-CONFIG_MIGHT_HAVE_PCI=y
 CONFIG_MIGRATION=y
 CONFIG_MMC=y
 CONFIG_MMC_BLOCK=y
@@ -426,9 +439,6 @@ CONFIG_MOUSE_PS2_TRACKPOINT=y
 # CONFIG_MTD_CFI_INTELEXT is not set
 CONFIG_MTD_CMDLINE_PARTS=y
 # CONFIG_MTD_COMPLEX_MAPPINGS is not set
-CONFIG_MTD_M25P80=y
-CONFIG_MTD_NAND=y
-CONFIG_MTD_NAND_ECC=y
 CONFIG_MTD_PHYSMAP=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
@@ -449,19 +459,18 @@ CONFIG_NET_PTP_CLASSIFY=y
 # CONFIG_NET_VENDOR_SMSC is not set
 # CONFIG_NET_VENDOR_STMICRO is not set
 # CONFIG_NET_VENDOR_VIA is not set
-# CONFIG_NI_XGE_MANAGEMENT_ENET is not set
 CONFIG_NLS=y
 CONFIG_NLS_ASCII=y
 CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_NOP_USB_XCEIV=y
-CONFIG_NO_BOOTMEM=y
 CONFIG_NO_HZ=y
 CONFIG_NO_HZ_COMMON=y
 CONFIG_NO_HZ_IDLE=y
 CONFIG_NO_IOPORT_MAP=y
 CONFIG_NR_CPUS=4
 CONFIG_NVMEM=y
+CONFIG_NVMEM_SYSFS=y
 CONFIG_OF=y
 CONFIG_OF_ADDRESS=y
 CONFIG_OF_EARLY_FLATTREE=y
@@ -472,7 +481,6 @@ CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_MDIO=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OUTER_CACHE=y
@@ -498,6 +506,7 @@ CONFIG_PL310_ERRATA_727915=y
 CONFIG_PL310_ERRATA_753970=y
 CONFIG_PL310_ERRATA_769419=y
 CONFIG_PL330_DMA=y
+# CONFIG_PL353_SMC is not set
 CONFIG_PLAT_VERSATILE=y
 CONFIG_PLUGIN_HOSTCC="g++"
 CONFIG_PM=y
@@ -523,7 +532,6 @@ CONFIG_REFCOUNT_FULL=y
 CONFIG_REGMAP=y
 CONFIG_REGMAP_I2C=y
 CONFIG_REGMAP_MMIO=y
-CONFIG_REGMAP_SPI=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED_VOLTAGE=y
 # CONFIG_REGULATOR_VEXPRESS is not set
@@ -532,11 +540,9 @@ CONFIG_RESET_ZYNQ=y
 CONFIG_RFS_ACCEL=y
 CONFIG_RPS=y
 CONFIG_RTC_CLASS=y
-# CONFIG_RTC_DRV_CMOS is not set
 CONFIG_RTC_DRV_PCF8563=y
 CONFIG_RTC_I2C_AND_SPI=y
 CONFIG_RWSEM_SPIN_ON_OWNER=y
-CONFIG_RWSEM_XCHGADD_ALGORITHM=y
 CONFIG_SCHED_MC=y
 CONFIG_SCHED_SMT=y
 CONFIG_SENSORS_PMBUS=y
@@ -559,7 +565,7 @@ CONFIG_SPI_CADENCE=y
 CONFIG_SPI_MASTER=y
 CONFIG_SPI_MEM=y
 CONFIG_SPI_XILINX=y
-# CONFIG_SPS30 is not set
+CONFIG_SPI_ZYNQ_QSPI=y
 CONFIG_SRAM=y
 CONFIG_SRAM_EXEC=y
 CONFIG_SRCU=y
@@ -598,12 +604,15 @@ CONFIG_UIO_PDRV_GENIRQ=y
 # CONFIG_UIO_PRUSS is not set
 # CONFIG_UIO_SERCOS3 is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
+CONFIG_UNWINDER_ARM=y
+# CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
 CONFIG_USB_CHIPIDEA=y
 CONFIG_USB_CHIPIDEA_HOST=y
 CONFIG_USB_CHIPIDEA_OF=y
 CONFIG_USB_CHIPIDEA_UDC=y
 CONFIG_USB_COMMON=y
+# CONFIG_USB_EHCI_FSL is not set
 CONFIG_USB_EHCI_HCD=y
 # CONFIG_USB_EHCI_HCD_PLATFORM is not set
 # CONFIG_USB_EHCI_TT_NEWSCHED is not set
@@ -614,6 +623,7 @@ CONFIG_USB_NET_DRIVERS=y
 CONFIG_USB_OTG=y
 CONFIG_USB_OTG_FSM=y
 CONFIG_USB_PHY=y
+CONFIG_USB_ROLE_SWITCH=y
 CONFIG_USB_SUPPORT=y
 CONFIG_USB_ULPI=y
 CONFIG_USB_ULPI_BUS=y
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
