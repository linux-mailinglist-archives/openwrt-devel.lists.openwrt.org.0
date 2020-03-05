Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAF017A48C
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 12:48:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QYEWYCGAdDN6RGJXtmT73i2F9vXkf7LCAcIcVF8osnk=; b=tZyBePIlma+ARG
	X/DbniirPJGtgqaiFDa8BhHpGzPK7CLVR8W8LQ0XscVu0u7GdCWQKNQQV7toaowCastUGGjcZ/FMz
	88rl+Fud5oirG62kH6gQn3UB2x9iWwx3XRzYE3B4F8dGM7UNkP2rpB+nPZtiJZ0npMicek62OUSEa
	wsHQOo0QqenYCRIWc714XrPsvEvOeLHinaRZh3rOAouYIBYDURoi7H9XiyG78BLXChiaRO7KxslgG
	pIlirm3qLY1MbS+uZOTYI9LV06HV01lfqzEiKUPNiyy+AueqGxMvP3zdyMbK1pYxVrGZQM4qnxe/W
	ytblXncKLHA3PEWfRMmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ozT-0002yT-IZ; Thu, 05 Mar 2020 11:48:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ozN-0002y3-BZ
 for openwrt-devel@bombadil.infradead.org; Thu, 05 Mar 2020 11:48:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=dwvzXF8AbfimTfAf6lU6cJnwoB5VDYI2YE8zjGzMfMI=; b=NA7YvlLScnAcxmSrtRVwSeQ5J6
 C+NZlojcm0yYTrnlVhmdaqHUfjcplrcRhvPqT4uHIwAv7Zl6PmOIyUAkRP7dMDZiJH3sYU2nF6ha2
 14OvJXzCCj62x4cKryvDIPMyfShkc8fbJcyq5J3rhbLEZaloqayYYIpw/z9aWBEiJyJBLLvbpIuuG
 aFtryzWDkxU4b0UWLGZqqgCTSPc/yYMjyL9KWwqVAbC79OY2IQijrKPAnjqIakPaXcP1UaL1foL0p
 fjuYVKEpCkRPSBK1a3TdvHRRT11zAt+p+CJ0wF0wrAbJKYHFOS4M5WTaIQB5vMUrvVUnPRwg/LAz9
 sENMaATQ==;
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ozH-0001XU-BC
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 11:48:26 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 4F1E5C10D5;
 Thu,  5 Mar 2020 11:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1583408891; bh=dNpoEkCOTy5Wdsq7R/giQZschcTW0vEMKHtbwuJYyn0=;
 h=From:To:Cc:Subject:Date:From;
 b=ae+pLhjMxp1lz8Vkr5ure/mYH1TL5dfExgGmqdxHDVUUP83UIJ55EGQrWHXTWBhSj
 xKfaCglN5K52olzvYSDNK4/ua+Gz9PxS4X8/ZIti8NHbUlzRG1MWFhC4rUMEOiE0aB
 6GzS9KupbRMfUmyMfJAKwEJ47NUxXPFEVGpjFmRK7TnxE+libON88813dnSnRegsiy
 bqOdWEnCeC28RYoEzEp9f3JbRmy1YnzHUa9Uxysj4PyzhOnpBYGOAphgqWK1ZI8AGl
 xYti1doWf2+eEtm+dwitx1Q4JD197TWCGcJ+lzXZlznxt3a47J7iP70wQZC/h15tOf
 UljgrBMLTNFEA==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 131F8A005D;
 Thu,  5 Mar 2020 11:48:07 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Mar 2020 14:47:54 +0300
Message-Id: <20200305114754.42078-1-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_114823_904810_D2F0C1D8 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH] archs38: add support for Linux 5.4
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
Cc: Evgeniy Didin <Evgeniy.Didin@synopsys.com>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 John Crispin <john@phrozen.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Evgeniy Didin <didin@synopsys.com>

It is necessary to use GCC9 for building Linux 5.4.x version for
archs38, in GCC8 the critical fixes are missing and ICE appears
during building.

Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Koen Vandeputte <koen.vandeputte@ncentric.com>
Cc: John Crispin <john@phrozen.org>
---
 target/linux/archs38/Makefile                 |   1 +
 target/linux/archs38/config-5.4               | 297 ++++++++++++++++++
 .../archs38/generic/profiles/00-default.mk    |   3 +-
 .../332-arc-add-OWRTDTB-section.patch         |  31 +-
 toolchain/gcc/Config.version                  |   1 +
 5 files changed, 320 insertions(+), 13 deletions(-)
 create mode 100644 target/linux/archs38/config-5.4

diff --git a/target/linux/archs38/Makefile b/target/linux/archs38/Makefile
index be6be0472b..47791119e2 100644
--- a/target/linux/archs38/Makefile
+++ b/target/linux/archs38/Makefile
@@ -14,6 +14,7 @@ MAINTAINER:=Alexey Brodkin <abrodkin@synopsys.com>
 SUBTARGETS:=generic
 
 KERNEL_PATCHVER:=4.14
+KERNEL_TESTING_PATCHVER:=5.4
 
 DEVICE_TYPE:=developerboard
 
diff --git a/target/linux/archs38/config-5.4 b/target/linux/archs38/config-5.4
new file mode 100644
index 0000000000..d60ca83a7b
--- /dev/null
+++ b/target/linux/archs38/config-5.4
@@ -0,0 +1,297 @@
+# CONFIG_16KSTACKS is not set
+CONFIG_64BIT_TIME=y
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
+CONFIG_ARC_CACHE_LINE_SHIFT=6
+CONFIG_ARC_CACHE_PAGES=y
+CONFIG_ARC_CPU_HS=y
+CONFIG_ARC_CURR_IN_REG=y
+CONFIG_ARC_DBG=y
+# CONFIG_ARC_DBG_TLB_PARANOIA is not set
+CONFIG_ARC_DW2_UNWIND=y
+CONFIG_ARC_HAS_ACCL_REGS=y
+CONFIG_ARC_HAS_DCACHE=y
+# CONFIG_ARC_HAS_DCCM is not set
+CONFIG_ARC_HAS_DIV_REM=y
+CONFIG_ARC_HAS_ICACHE=y
+# CONFIG_ARC_HAS_ICCM is not set
+CONFIG_ARC_HAS_LL64=y
+CONFIG_ARC_HAS_LLSC=y
+# CONFIG_ARC_HAS_PAE40 is not set
+CONFIG_ARC_HAS_SWAPE=y
+CONFIG_ARC_IRQ_NO_AUTOSAVE=y
+CONFIG_ARC_KVADDR_SIZE=256
+CONFIG_ARC_MCIP=y
+# CONFIG_ARC_METAWARE_HLINK is not set
+CONFIG_ARC_MMU_V4=y
+# CONFIG_ARC_PAGE_SIZE_16K is not set
+# CONFIG_ARC_PAGE_SIZE_4K is not set
+CONFIG_ARC_PAGE_SIZE_8K=y
+CONFIG_ARC_PLAT_AXS10X=y
+# CONFIG_ARC_PLAT_EZNPS is not set
+# CONFIG_ARC_PLAT_TB10X is not set
+# CONFIG_ARC_SMP_HALT_ON_RESET is not set
+CONFIG_ARC_SOC_HSDK=y
+CONFIG_ARC_TIMERS=y
+CONFIG_ARC_TIMERS_64BIT=y
+CONFIG_ARC_USE_UNALIGNED_MEM_ACCESS=y
+CONFIG_AXS103=y
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_RAM_COUNT=16
+CONFIG_BLK_DEV_RAM_SIZE=4096
+CONFIG_BLK_DEV_SD=y
+CONFIG_BLK_SCSI_REQUEST=y
+# CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC is not set
+CONFIG_BOOTPARAM_SOFTLOCKUP_PANIC_VALUE=0
+CONFIG_CC_DISABLE_WARN_MAYBE_UNINITIALIZED=y
+CONFIG_CC_HAS_KASAN_GENERIC=y
+# CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE is not set
+CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE_O3=y
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_CLK_HSDK=y
+CONFIG_CLONE_BACKWARDS=y
+CONFIG_COMMON_CLK=y
+CONFIG_COMPAT_32BIT_TIME=y
+# CONFIG_CPU_BIG_ENDIAN is not set
+CONFIG_CPU_RMAP=y
+CONFIG_CRC16=y
+CONFIG_CRYPTO_AEAD=y
+CONFIG_CRYPTO_AEAD2=y
+CONFIG_CRYPTO_CRC32C=y
+CONFIG_CRYPTO_DRBG=y
+CONFIG_CRYPTO_DRBG_HMAC=y
+CONFIG_CRYPTO_DRBG_MENU=y
+CONFIG_CRYPTO_ECHAINIV=y
+CONFIG_CRYPTO_HASH=y
+CONFIG_CRYPTO_HASH2=y
+CONFIG_CRYPTO_HMAC=y
+CONFIG_CRYPTO_JITTERENTROPY=y
+CONFIG_CRYPTO_LIB_SHA256=y
+CONFIG_CRYPTO_MANAGER=y
+CONFIG_CRYPTO_MANAGER2=y
+CONFIG_CRYPTO_NULL=y
+CONFIG_CRYPTO_NULL2=y
+CONFIG_CRYPTO_RNG=y
+CONFIG_CRYPTO_RNG2=y
+CONFIG_CRYPTO_RNG_DEFAULT=y
+CONFIG_CRYPTO_SHA256=y
+CONFIG_DEVTMPFS=y
+CONFIG_DMADEVICES=y
+CONFIG_DMA_DECLARE_COHERENT=y
+CONFIG_DMA_DIRECT_REMAP=y
+CONFIG_DMA_ENGINE=y
+CONFIG_DMA_OF=y
+CONFIG_DMA_REMAP=y
+CONFIG_DMA_VIRTUAL_CHANNELS=y
+CONFIG_DTC=y
+CONFIG_DWMAC_ANARION=y
+# CONFIG_DWMAC_DWC_QOS_ETH is not set
+CONFIG_DWMAC_GENERIC=y
+CONFIG_DW_APB_ICTL=y
+CONFIG_DW_AXI_DMAC=y
+CONFIG_EXT3_FS=y
+# CONFIG_EXT3_FS_POSIX_ACL is not set
+# CONFIG_EXT3_FS_SECURITY is not set
+CONFIG_EXT4_FS=y
+# CONFIG_EZNPS_GIC is not set
+CONFIG_FAT_FS=y
+CONFIG_FB=y
+CONFIG_FB_CMDLINE=y
+CONFIG_FIXED_PHY=y
+CONFIG_FS_IOMAP=y
+CONFIG_FS_MBCACHE=y
+CONFIG_FS_POSIX_ACL=y
+CONFIG_FW_LOADER_PAGED_BUF=y
+# CONFIG_FXOS8700_SPI is not set
+CONFIG_GENERIC_ALLOCATOR=y
+CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CSUM=y
+CONFIG_GENERIC_FIND_FIRST_BIT=y
+CONFIG_GENERIC_IRQ_CHIP=y
+CONFIG_GENERIC_IRQ_SHOW=y
+CONFIG_GENERIC_PCI_IOMAP=y
+CONFIG_GENERIC_PENDING_IRQ=y
+CONFIG_GENERIC_SCHED_CLOCK=y
+CONFIG_GENERIC_SMP_IDLE_THREAD=y
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_DWAPB=y
+CONFIG_GPIO_GENERIC=y
+CONFIG_GPIO_SNPS_CREG=y
+CONFIG_GPIO_SYSFS=y
+CONFIG_GRACE_PERIOD=y
+CONFIG_HANDLE_DOMAIN_IRQ=y
+# CONFIG_HARDENED_USERCOPY is not set
+CONFIG_HAS_DMA=y
+CONFIG_HAS_IOMEM=y
+CONFIG_HAVE_ARCH_KGDB=y
+CONFIG_HAVE_ARCH_TRACEHOOK=y
+CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
+CONFIG_HAVE_CLK=y
+CONFIG_HAVE_CLK_PREPARE=y
+CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
+CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
+CONFIG_HAVE_FUTEX_CMPXCHG=y
+CONFIG_HAVE_IOREMAP_PROT=y
+CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
+CONFIG_HAVE_NET_DSA=y
+CONFIG_HAVE_OPROFILE=y
+CONFIG_HAVE_PCI=y
+CONFIG_HAVE_PERF_EVENTS=y
+CONFIG_HZ_PERIODIC=y
+CONFIG_IIO=y
+CONFIG_IIO_BUFFER=y
+CONFIG_IIO_KFIFO_BUF=y
+CONFIG_IIO_TRIGGER=y
+CONFIG_IIO_TRIGGERED_BUFFER=y
+CONFIG_IKCONFIG=y
+CONFIG_IKCONFIG_PROC=y
+CONFIG_INITRAMFS_SOURCE=""
+CONFIG_IRQCHIP=y
+CONFIG_IRQ_DOMAIN=y
+CONFIG_IRQ_WORK=y
+# CONFIG_ISA_ARCOMPACT is not set
+CONFIG_ISA_ARCV2=y
+CONFIG_JBD2=y
+CONFIG_KALLSYMS=y
+CONFIG_KASAN_STACK=1
+CONFIG_KERNEL_GZIP=y
+CONFIG_LIBFDT=y
+CONFIG_LINUX_LINK_BASE=0x90000000
+CONFIG_LINUX_RAM_BASE=0x80000000
+CONFIG_LOCKD=y
+CONFIG_LOCKUP_DETECTOR=y
+CONFIG_LOCK_DEBUGGING_SUPPORT=y
+CONFIG_LOCK_SPIN_ON_OWNER=y
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
+CONFIG_MEMFD_CREATE=y
+CONFIG_MFD_SYSCON=y
+CONFIG_MICREL_PHY=y
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
+CONFIG_MODULES_TREE_LOOKUP=y
+CONFIG_MODULES_USE_ELF_RELA=y
+CONFIG_MTD_SPI_NOR=y
+CONFIG_MUTEX_SPIN_ON_OWNER=y
+CONFIG_NAMESPACES=y
+CONFIG_NATIONAL_PHY=y
+CONFIG_NEED_DMA_MAP_STATE=y
+CONFIG_NET_FLOW_LIMIT=y
+CONFIG_NET_NS=y
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
+CONFIG_NFS_ACL_SUPPORT=y
+CONFIG_NFS_FS=y
+CONFIG_NFS_V3_ACL=y
+CONFIG_NLS=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
+CONFIG_NO_IOPORT_MAP=y
+CONFIG_NR_CPUS=4
+CONFIG_OF=y
+CONFIG_OF_ADDRESS=y
+CONFIG_OF_EARLY_FLATTREE=y
+CONFIG_OF_FLATTREE=y
+CONFIG_OF_GPIO=y
+CONFIG_OF_IRQ=y
+CONFIG_OF_KOBJ=y
+CONFIG_OF_MDIO=y
+CONFIG_OF_NET=y
+CONFIG_OF_RESERVED_MEM=y
+CONFIG_PADATA=y
+CONFIG_PAGE_POOL=y
+CONFIG_PERF_EVENTS=y
+CONFIG_PGTABLE_LEVELS=2
+CONFIG_PHYLIB=y
+CONFIG_PHYLINK=y
+CONFIG_PPS=y
+CONFIG_PREEMPT=y
+CONFIG_PREEMPTION=y
+CONFIG_PREEMPT_COUNT=y
+# CONFIG_PREEMPT_NONE is not set
+CONFIG_PREEMPT_RCU=y
+# CONFIG_PREVENT_FIRMWARE_BUILD is not set
+CONFIG_PTP_1588_CLOCK=y
+CONFIG_RATIONAL=y
+# CONFIG_RCU_BOOST is not set
+CONFIG_RCU_NEED_SEGCBLIST=y
+CONFIG_RCU_STALL_COMMON=y
+CONFIG_REGMAP=y
+CONFIG_REGMAP_MMIO=y
+CONFIG_RESET_AXS10X=y
+CONFIG_RESET_CONTROLLER=y
+CONFIG_RESET_HSDK=y
+CONFIG_RESET_SIMPLE=y
+CONFIG_RFS_ACCEL=y
+CONFIG_RPS=y
+CONFIG_RWSEM_SPIN_ON_OWNER=y
+CONFIG_SCSI=y
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
+CONFIG_SG_POOL=y
+CONFIG_SMP=y
+CONFIG_SOFTLOCKUP_DETECTOR=y
+CONFIG_SPI=y
+CONFIG_SPI_DESIGNWARE=y
+CONFIG_SPI_DW_MMIO=y
+CONFIG_SPI_MASTER=y
+CONFIG_SPI_MEM=y
+CONFIG_SRCU=y
+CONFIG_STACKTRACE=y
+# CONFIG_STANDALONE is not set
+CONFIG_STMMAC_ETH=y
+CONFIG_STMMAC_PLATFORM=y
+# CONFIG_STMMAC_SELFTESTS is not set
+CONFIG_SUNRPC=y
+CONFIG_SWPHY=y
+CONFIG_TASKS_RCU=y
+CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TIMER_OF=y
+CONFIG_TIMER_PROBE=y
+CONFIG_TI_ADC108S102=y
+CONFIG_TREE_SRCU=y
+CONFIG_UBSAN_ALIGNMENT=y
+CONFIG_UNINLINE_SPIN_UNLOCK=y
+CONFIG_UNIX_SCM=y
+CONFIG_USB_SUPPORT=y
+# CONFIG_USER_NS is not set
+CONFIG_VFAT_FS=y
+CONFIG_XPS=y
diff --git a/target/linux/archs38/generic/profiles/00-default.mk b/target/linux/archs38/generic/profiles/00-default.mk
index ec9bbbb19f..6c0f1bc291 100644
--- a/target/linux/archs38/generic/profiles/00-default.mk
+++ b/target/linux/archs38/generic/profiles/00-default.mk
@@ -3,11 +3,10 @@
 #
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
-#
 
 define Profile/Default
 	NAME:=Default Profile (all drivers)
-	PACKAGES:= kmod-usb2 kmod-ath9k-htc wpad-basic
+	PACKAGES:= kmod-usb2 wpad-basic
 endef
 
 define Profile/Default/Description
diff --git a/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch b/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch
index 2c48eb7f13..ba25db7a3c 100644
--- a/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch
+++ b/target/linux/generic/pending-5.4/332-arc-add-OWRTDTB-section.patch
@@ -1,4 +1,4 @@
-From 34ef04f3845ed2b47d57dd9d3b795b16e1f8185a Mon Sep 17 00:00:00 2001
+From bb0c3b0175240bf152fd7c644821a0cf9f77c37c Mon Sep 17 00:00:00 2001
 From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
 Date: Fri, 15 Mar 2019 18:53:38 +0300
 Subject: [PATCH] arc add OWRTDTB section
@@ -21,6 +21,8 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  arch/arc/kernel/vmlinux.lds.S | 13 +++++++++++++
  3 files changed, 26 insertions(+), 1 deletion(-)
 
+diff --git a/arch/arc/kernel/head.S b/arch/arc/kernel/head.S
+index 6f41265f6250..2f7ec8bdf18a 100644
 --- a/arch/arc/kernel/head.S
 +++ b/arch/arc/kernel/head.S
 @@ -61,6 +61,16 @@
@@ -40,9 +42,20 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  	.section .init.text, "ax",@progbits
  
  ;----------------------------------------------------------------
+diff --git a/arch/arc/kernel/setup.c b/arch/arc/kernel/setup.c
+index 7ee89dc61f6e..4095c0b5e0ac 100644
 --- a/arch/arc/kernel/setup.c
 +++ b/arch/arc/kernel/setup.c
-@@ -529,7 +529,7 @@ void __init handle_uboot_args(void)
+@@ -491,6 +491,8 @@ static inline bool uboot_arg_invalid(unsigned long addr)
+ /* We always pass 0 as magic from U-boot */
+ #define UBOOT_MAGIC_VALUE	0
+ 
++extern struct boot_param_header __image_dtb;
++
+ void __init handle_uboot_args(void)
+ {
+ 	bool use_embedded_dtb = true;
+@@ -529,7 +531,7 @@ void __init handle_uboot_args(void)
  ignore_uboot_args:
  
  	if (use_embedded_dtb) {
@@ -51,15 +64,8 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  		if (!machine_desc)
  			panic("Embedded DT invalid\n");
  	}
-@@ -545,6 +545,8 @@ ignore_uboot_args:
- 	}
- }
- 
-+extern struct boot_param_header __image_dtb;
-+
- void __init setup_arch(char **cmdline_p)
- {
- 	handle_uboot_args();
+diff --git a/arch/arc/kernel/vmlinux.lds.S b/arch/arc/kernel/vmlinux.lds.S
+index 6c693a9d29b6..21f188c6d18c 100644
 --- a/arch/arc/kernel/vmlinux.lds.S
 +++ b/arch/arc/kernel/vmlinux.lds.S
 @@ -27,6 +27,19 @@ SECTIONS
@@ -82,3 +88,6 @@ Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
  	_int_vec_base_lds = .;
  	.vector : {
  		*(.vector)
+-- 
+2.23.0
+
diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index 7819e9d039..235a126598 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -8,6 +8,7 @@ config GCC_VERSION_7
 
 config GCC_VERSION_9
 	default y if GCC_USE_VERSION_9
+	default y if TARGET_archs38
 	bool
 
 config GCC_VERSION
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
