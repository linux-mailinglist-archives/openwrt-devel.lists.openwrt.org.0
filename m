Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D13196597
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 12:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dj7AZd+0X8vwQV7taZYRfujL6i2iR9s1ZRBne46X2js=; b=cL2AWXO9oywRu+F+nGhGWXCte
	MlM9enAOlVCXvDGrH5DslKkWwjrMYzoFx5+rRx/xKn6ccbZlLo2D2/mKr0KUm9wfBU2f7HOOZIiNB
	tmmt3rkk8kI/ut04UtF21FTeylQOJj8aWU/+Nf8dfnWsXMUGi5ZOA4E0N7zUCC2HpzWnL/X9/a6Zy
	h3B+P97qb2TEgQKpPEknEudpEiM/zRTpkOSqkB18fQLUpQVFW4wLm9HO2stqwvsT5+lK0SOA4+wa5
	O1D6v9+EXF1xTfxtUMYqIQ/cLBWBRA2SVP2vWxCRj0qOvnDrSqNVLlkl9uvOGs94NiCTkmiVh9jC4
	fs+bN6VsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI9Ot-0008CK-VR; Sat, 28 Mar 2020 11:13:15 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI9Of-00086Z-Pa
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 11:13:03 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 56CF843B04;
 Sat, 28 Mar 2020 11:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1585393980; bh=jqcJ3xzSSpw9MaOY6GZWfaSiJZnglahPLFC11p2BMAI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e0qBeQsnouPP1UoaLlPfp5XNVTCoqZueQ6axP7QVhLYtXQlmESyw0v/LtXzRbUatl
 SoWcrHrPfjLfPBkep3/YXDWzRoNquoovFGQka3qTqNGggQ2PXnh56Uu0ePD+GfSvym
 R9b/rec4/9i6CWc27ywigptLp5yiRz2hROB7LdYqNA5yi//yUPV/xHTbRM0b8LdSte
 ldjh4pfzFMKjuxfnqB87nQzE/Xi5+N/rjAaRZijsOAMX/5r2X3XpZuBrDNhZqHRPAv
 FHvirQPT0zvU5q8krR4xFijD+qVAheuxkdVNs9/0A0dx9Ot7ig+ddPQ9jp/4TvI7N/
 KPwiQyB/NyltQ==
Received: from ru20arcgnu1.internal.synopsys.com
 (ru20arcgnu1.internal.synopsys.com [10.121.9.48])
 by mailhost.synopsys.com (Postfix) with ESMTP id 6C60BA005C;
 Sat, 28 Mar 2020 11:12:56 +0000 (UTC)
From: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 14:12:34 +0300
Message-Id: <20200328111237.18763-2-Evgeniy.Didin@synopsys.com>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
References: <20200328111237.18763-1-Evgeniy.Didin@synopsys.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_041301_883008_AE78CDAB 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
Subject: [OpenWrt-Devel] [PATCH 1/4 v2] archs38: add kernel 5.4 config
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
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Alexey Brodkin <Alexey.Brodkin@synopsys.com>, John Crispin <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============5028695222556856083=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5028695222556856083==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Signed-off-by: Evgeniy Didin <Evgeniy.Didin@synopsys.com>
Cc: Alexey Brodkin <abrodkin@synopsys.com>
Cc: Petr Štetiar <ynezz@true.cz>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Cc: John Crispin <john@phrozen.org>
---
No changes since v1.

 target/linux/archs38/config-5.4 | 309 ++++++++++++++++++++++++++++++++
 1 file changed, 309 insertions(+)
 create mode 100644 target/linux/archs38/config-5.4

diff --git a/target/linux/archs38/config-5.4 b/target/linux/archs38/config-5.4
new file mode 100644
index 0000000000..0d8a437ab4
--- /dev/null
+++ b/target/linux/archs38/config-5.4
@@ -0,0 +1,309 @@
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
+# CONFIG_FXOS8700_I2C is not set
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
+CONFIG_I2C=y
+CONFIG_I2C_BOARDINFO=y
+CONFIG_IIO=y
+CONFIG_IIO_BUFFER=y
+CONFIG_IIO_KFIFO_BUF=y
+CONFIG_IIO_ST_PRESS=y
+CONFIG_IIO_ST_PRESS_I2C=y
+CONFIG_IIO_ST_PRESS_SPI=y
+CONFIG_IIO_ST_SENSORS_CORE=y
+CONFIG_IIO_ST_SENSORS_I2C=y
+CONFIG_IIO_ST_SENSORS_SPI=y
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
+CONFIG_REGMAP_I2C=y
+CONFIG_REGMAP_MMIO=y
+CONFIG_REGMAP_SPI=y
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
+CONFIG_WATCHDOG_CORE=y
+CONFIG_XPS=y
-- 
2.23.0



--===============5028695222556856083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5028695222556856083==--
