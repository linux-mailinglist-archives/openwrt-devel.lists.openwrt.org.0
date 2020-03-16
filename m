Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FC4187283
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 19:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lTlpE3/ViH357ZihyUMC91bYFmLxCni4o+pgpogZKWI=; b=SP2SIWix23T/H4661+1K9OowyW
	03dprLlkVXOOVozpfQwGaKhwIa6DTQ+oQZZn7kDjJH+f7njTaLf45Uv/daG7vzVakdq59GsH7Mc3Q
	FsN50aCp/k/zcEj2v/1QAxttoSJQB4bSvc/l+EQ0Jt/lHLCbpYk/mgPBwdGog5kkCdxOBxO0w1Xpx
	OaJwcMO9LgHH16KHhFbjoxQW4Foe6uSoFPipdRue7oIcPEjrxD+lAiuzSk3XcqwQs5W7+oFLHXkWW
	M1UPH74aWPy33QOg5ByzWy+WDgXPcMmFDonIDL4S4ofYhxKtkZ9rdgA9x7qE3T1asVyt5EaqkEeuy
	PdCpU5cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDueI-00011L-Lv; Mon, 16 Mar 2020 18:39:38 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDue0-0000q3-Mq
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 18:39:22 +0000
Received: (wp-smtpd smtp.tlen.pl 22228 invoked from network);
 16 Mar 2020 19:32:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1584383558; bh=s79DAj0CustcRO1xAv/GeR4/e1cQ/zCzkYQUnD8Ry6c=;
 h=From:To:Subject;
 b=ANk3BCgvh2ufUnovvJwuWpCgCfyCzWCIEAcknoHBwpS6NprqCMwWqIBtJVeNjs0co
 Mv/TNP7tcxJOGnvq3Kaymh0UrOZJ98+xP4HYIgaHUhgyrZRzjrmIFbXgU+uhhMHnLu
 qLtjmQh0Gahf6AV6gw2uzhVTebBNb4JC/b3FEbhs=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 16 Mar 2020 19:32:37 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 19:32:09 +0100
Message-Id: <20200316183210.90142-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316183210.90142-1-tomek_n@o2.pl>
References: <20200316183210.90142-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 10711d3d81167ddeffb7c83f5d6b1ead
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [wXN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_113920_915800_5B061C01 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 3/4] tegra: refresh patches and kernel
 config for 5.4
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

This commit also disables Trusted Foundations firmware support as this
feature won't be used by any device.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/tegra/Makefile                   |  1 +
 target/linux/tegra/config-5.4                 | 47 ++++++++++++-------
 ...interrupts-due-to-tegra2-silicon-bug.patch |  6 +--
 3 files changed, 35 insertions(+), 19 deletions(-)

diff --git a/target/linux/tegra/Makefile b/target/linux/tegra/Makefile
index db58bf53d1ff..6f7ca1861690 100644
--- a/target/linux/tegra/Makefile
+++ b/target/linux/tegra/Makefile
@@ -15,6 +15,7 @@ CPU_SUBTYPE := vfpv3
 MAINTAINER := Tomasz Maciej Nowak <tomek_n@o2.pl>
 
 KERNEL_PATCHVER := 4.19
+KERNEL_TESTING_PATCHVER := 5.4
 
 include $(INCLUDE_DIR)/target.mk
 
diff --git a/target/linux/tegra/config-5.4 b/target/linux/tegra/config-5.4
index ea2177a8657e..5313e39894ed 100644
--- a/target/linux/tegra/config-5.4
+++ b/target/linux/tegra/config-5.4
@@ -1,22 +1,27 @@
 CONFIG_AC97_BUS=y
 # CONFIG_AHCI_TEGRA is not set
 CONFIG_ALIGNMENT_TRAP=y
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
@@ -26,8 +31,6 @@ CONFIG_ARCH_NR_GPIO=1024
 CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
 CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT=y
 CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
-CONFIG_ARCH_SUPPORTS_FIRMWARE=y
-CONFIG_ARCH_SUPPORTS_TRUSTED_FOUNDATIONS=y
 CONFIG_ARCH_SUPPORTS_UPROBES=y
 CONFIG_ARCH_SUSPEND_POSSIBLE=y
 CONFIG_ARCH_TEGRA=y
@@ -37,6 +40,7 @@ CONFIG_ARCH_TEGRA_2x_SOC=y
 # CONFIG_ARCH_TEGRA_3x_SOC is not set
 CONFIG_ARCH_USE_BUILTIN_BSWAP=y
 CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
+CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT=y
 CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_ARM=y
@@ -62,17 +66,21 @@ CONFIG_ARM_PATCH_PHYS_VIRT=y
 CONFIG_ARM_TEGRA20_CPUFREQ=y
 CONFIG_ARM_THUMB=y
 CONFIG_ARM_THUMBEE=y
+CONFIG_ARM_UNWIND=y
 CONFIG_ARM_VIRT_EXT=y
 CONFIG_ASN1=y
 CONFIG_ATA=y
 CONFIG_ATAGS=y
 CONFIG_AUTO_ZRELADDR=y
+CONFIG_BINFMT_FLAT_ARGVP_ENVP_ON_STACK=y
 CONFIG_BLK_DEV_BSG=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_MQ_PCI=y
+CONFIG_BLK_PM=y
 CONFIG_BLK_SCSI_REQUEST=y
 CONFIG_BOUNCE=y
 CONFIG_CACHE_L2X0=y
+CONFIG_CC_HAS_KASAN_GENERIC=y
 CONFIG_CLKDEV_LOOKUP=y
 CONFIG_CLKSRC_MMIO=y
 CONFIG_CLONE_BACKWARDS=y
@@ -88,6 +96,8 @@ CONFIG_CMA_SIZE_SEL_MBYTES=y
 # CONFIG_CMA_SIZE_SEL_MIN is not set
 # CONFIG_CMA_SIZE_SEL_PERCENTAGE is not set
 CONFIG_COMMON_CLK=y
+CONFIG_COMPAT_32BIT_TIME=y
+CONFIG_CONTIG_ALLOC=y
 # CONFIG_CPUFREQ_DT is not set
 CONFIG_CPU_32v6K=y
 CONFIG_CPU_32v7=y
@@ -113,6 +123,7 @@ CONFIG_CPU_FREQ_GOV_USERSPACE=y
 CONFIG_CPU_HAS_ASID=y
 # CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
 # CONFIG_CPU_ICACHE_DISABLE is not set
+# CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND is not set
 CONFIG_CPU_IDLE=y
 CONFIG_CPU_IDLE_GOV_LADDER=y
 CONFIG_CPU_PABRT_V7=y
@@ -144,6 +155,7 @@ CONFIG_CRYPTO_HASH=y
 CONFIG_CRYPTO_HASH2=y
 CONFIG_CRYPTO_HMAC=y
 CONFIG_CRYPTO_JITTERENTROPY=y
+CONFIG_CRYPTO_LIB_SHA256=y
 CONFIG_CRYPTO_LZ4=y
 CONFIG_CRYPTO_LZ4HC=y
 CONFIG_CRYPTO_LZO=y
@@ -163,7 +175,6 @@ CONFIG_CRYPTO_SHA256_ARM=y
 CONFIG_CRYPTO_SHA512_ARM=y
 CONFIG_CRYPTO_TWOFISH=y
 CONFIG_CRYPTO_TWOFISH_COMMON=y
-CONFIG_CRYPTO_WORKQUEUE=y
 CONFIG_DCACHE_WORD_ACCESS=y
 CONFIG_DEBUG_ALIGN_RODATA=y
 CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
@@ -173,6 +184,7 @@ CONFIG_DMADEVICES=y
 CONFIG_DMA_CMA=y
 CONFIG_DMA_ENGINE=y
 CONFIG_DMA_OF=y
+CONFIG_DMA_REMAP=y
 CONFIG_DMA_SHARED_BUFFER=y
 CONFIG_DNOTIFY=y
 CONFIG_DRM=y
@@ -181,10 +193,13 @@ CONFIG_DRM_FBDEV_EMULATION=y
 CONFIG_DRM_FBDEV_OVERALLOC=100
 CONFIG_DRM_KMS_FB_HELPER=y
 CONFIG_DRM_KMS_HELPER=y
+# CONFIG_DRM_MCDE is not set
 CONFIG_DRM_MIPI_DSI=y
 CONFIG_DRM_PANEL=y
 CONFIG_DRM_PANEL_BRIDGE=y
 CONFIG_DRM_PANEL_ORIENTATION_QUIRKS=y
+# CONFIG_DRM_PANEL_SAMSUNG_S6D16D0 is not set
+# CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA is not set
 CONFIG_DRM_TEGRA=y
 # CONFIG_DRM_TEGRA_DEBUG is not set
 # CONFIG_DRM_TEGRA_STAGING is not set
@@ -211,10 +226,10 @@ CONFIG_FB_SYS_FILLRECT=y
 CONFIG_FB_SYS_FOPS=y
 CONFIG_FB_SYS_IMAGEBLIT=y
 CONFIG_FIX_EARLYCON_MEM=y
-CONFIG_FRAME_POINTER=y
 CONFIG_FREEZER=y
 CONFIG_FS_IOMAP=y
 CONFIG_FS_MBCACHE=y
+CONFIG_FW_LOADER_PAGED_BUF=y
 CONFIG_GENERIC_ALLOCATOR=y
 CONFIG_GENERIC_ARCH_TOPOLOGY=y
 CONFIG_GENERIC_BUG=y
@@ -265,6 +280,7 @@ CONFIG_HAVE_ARM_TWD=y
 CONFIG_HAVE_CLK=y
 CONFIG_HAVE_CLK_PREPARE=y
 CONFIG_HAVE_CONTEXT_TRACKING=y
+CONFIG_HAVE_COPY_THREAD_TLS=y
 CONFIG_HAVE_C_RECORDMCOUNT=y
 CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DMA_CONTIGUOUS=y
@@ -275,15 +291,14 @@ CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
 CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
 CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
 CONFIG_HAVE_FUNCTION_TRACER=y
-CONFIG_HAVE_GENERIC_DMA_COHERENT=y
 CONFIG_HAVE_IDE=y
 CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
 CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
-CONFIG_HAVE_MEMBLOCK=y
 CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
 CONFIG_HAVE_NET_DSA=y
 CONFIG_HAVE_OPROFILE=y
 CONFIG_HAVE_OPTPROBES=y
+CONFIG_HAVE_PCI=y
 CONFIG_HAVE_PERF_EVENTS=y
 CONFIG_HAVE_PERF_REGS=y
 CONFIG_HAVE_PERF_USER_STACK_DUMP=y
@@ -339,10 +354,10 @@ CONFIG_MEMORY=y
 CONFIG_MEMORY_ISOLATION=y
 # CONFIG_MFD_NVEC is not set
 CONFIG_MIGHT_HAVE_CACHE_L2X0=y
-CONFIG_MIGHT_HAVE_PCI=y
 CONFIG_MIGRATION=y
 CONFIG_MMC=y
 CONFIG_MMC_BLOCK=y
+CONFIG_MMC_CQHCI=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_IO_ACCESSORS=y
 # CONFIG_MMC_SDHCI_PCI is not set
@@ -351,7 +366,6 @@ CONFIG_MMC_SDHCI_TEGRA=y
 # CONFIG_MMC_TIFM_SD is not set
 CONFIG_MODULES_USE_ELF_REL=y
 CONFIG_MPILIB=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
 CONFIG_MUTEX_SPIN_ON_OWNER=y
@@ -359,7 +373,6 @@ CONFIG_NEED_DMA_MAP_STATE=y
 # CONFIG_NEON is not set
 CONFIG_NET_FLOW_LIMIT=y
 CONFIG_NLS=y
-CONFIG_NO_BOOTMEM=y
 CONFIG_NR_CPUS=4
 CONFIG_NVMEM=y
 CONFIG_OF=y
@@ -371,7 +384,6 @@ CONFIG_OF_IOMMU=y
 CONFIG_OF_IRQ=y
 CONFIG_OF_KOBJ=y
 CONFIG_OF_NET=y
-CONFIG_OF_RESERVED_MEM=y
 CONFIG_OLD_SIGACTION=y
 CONFIG_OLD_SIGSUSPEND3=y
 CONFIG_OUTER_CACHE=y
@@ -393,7 +405,6 @@ CONFIG_PCI_DOMAINS_GENERIC=y
 CONFIG_PCI_MSI=y
 CONFIG_PCI_MSI_IRQ_DOMAIN=y
 CONFIG_PCI_TEGRA=y
-# CONFIG_PCI_V3_SEMI is not set
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
 CONFIG_PHY_TEGRA_XUSB=y
@@ -405,6 +416,7 @@ CONFIG_PINCTRL_TEGRA_XUSB=y
 CONFIG_PL310_ERRATA_727915=y
 # CONFIG_PL310_ERRATA_753970 is not set
 CONFIG_PL310_ERRATA_769419=y
+CONFIG_PL353_SMC=y
 CONFIG_PM=y
 CONFIG_PM_CLK=y
 # CONFIG_PM_DEBUG is not set
@@ -436,17 +448,16 @@ CONFIG_RESET_CONTROLLER=y
 CONFIG_RFS_ACCEL=y
 CONFIG_RPS=y
 CONFIG_RTC_CLASS=y
-# CONFIG_RTC_DRV_CMOS is not set
 CONFIG_RTC_DRV_TEGRA=y
 CONFIG_RTC_I2C_AND_SPI=y
 CONFIG_RTC_NVMEM=y
 CONFIG_RWSEM_SPIN_ON_OWNER=y
-CONFIG_RWSEM_XCHGADD_ALGORITHM=y
 CONFIG_SCSI=y
 # CONFIG_SCSI_LOWLEVEL is not set
 # CONFIG_SCSI_PROC_FS is not set
 CONFIG_SERIAL_8250_FSL=y
 # CONFIG_SERIAL_AMBA_PL011 is not set
+CONFIG_SERIAL_MCTRL_GPIO=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_TEGRA=y
 CONFIG_SERIO=y
@@ -469,6 +480,7 @@ CONFIG_SND_SIMPLE_CARD=y
 CONFIG_SND_SIMPLE_CARD_UTILS=y
 CONFIG_SND_SOC=y
 CONFIG_SND_SOC_AC97_BUS=y
+# CONFIG_SND_SOC_DMIC is not set
 CONFIG_SND_SOC_GENERIC_DMAENGINE_PCM=y
 CONFIG_SND_SOC_I2C_AND_SPI=y
 CONFIG_SND_SOC_TEGRA=y
@@ -511,6 +523,7 @@ CONFIG_SWP_EMULATE=y
 CONFIG_SYNC_FILE=y
 CONFIG_SYS_SUPPORTS_APM_EMULATION=y
 CONFIG_TEGRA20_APB_DMA=y
+CONFIG_TEGRA20_EMC=y
 CONFIG_TEGRA_AHB=y
 CONFIG_TEGRA_GMI=y
 CONFIG_TEGRA_HOST1X=y
@@ -527,12 +540,14 @@ CONFIG_TIMER_OF=y
 CONFIG_TIMER_PROBE=y
 CONFIG_TREE_RCU=y
 CONFIG_TREE_SRCU=y
-CONFIG_TRUSTED_FOUNDATIONS=y
+# CONFIG_UCLAMP_TASK is not set
 CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
+CONFIG_UNWINDER_ARM=y
+# CONFIG_UNWINDER_FRAME_POINTER is not set
 CONFIG_USB=y
 CONFIG_USB_COMMON=y
+# CONFIG_USB_EHCI_FSL is not set
 CONFIG_USB_EHCI_HCD=y
-# CONFIG_USB_XHCI_TEGRA is not set
 # CONFIG_USB_EHCI_HCD_PLATFORM is not set
 CONFIG_USB_EHCI_TEGRA=y
 CONFIG_USB_HID=y
diff --git a/target/linux/tegra/patches-5.4/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch b/target/linux/tegra/patches-5.4/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch
index 9e8c331934c0..08ed9d441c5f 100644
--- a/target/linux/tegra/patches-5.4/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch
+++ b/target/linux/tegra/patches-5.4/100-serial8250-on-tegra-hsuart-recover-from-spurious-interrupts-due-to-tegra2-silicon-bug.patch
@@ -36,10 +36,10 @@ David
 
 --- a/drivers/tty/serial/8250/8250_core.c
 +++ b/drivers/tty/serial/8250/8250_core.c
-@@ -136,6 +136,38 @@ static irqreturn_t serial8250_interrupt(
- 				"serial8250: too much work for irq%d\n", irq);
+@@ -133,6 +133,38 @@ static irqreturn_t serial8250_interrupt(
+ 
+ 		if (l == i->head && pass_counter++ > PASS_LIMIT)
  			break;
- 		}
 +
 +#ifdef CONFIG_ARCH_TEGRA_2x_SOC
 +		if (!handled && (port->type == PORT_TEGRA)) {
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
