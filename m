Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E69D91A6B14
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 19:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CKWTkQnT48pg+kqiNpxcHfwO6yZjHJrHq1esr3YDEIs=; b=uBL/7PltQmrw4NM1MXGnSdI6q5
	cI9gKwQ25hCRYyBL6kK8FSl5pg2aPfKWWUJ+Fm6phujHax3JlUzzH/I+fVFneJRci6MylIbFU3oeI
	4XTd5bMiWeZm51JPH+HIDlPV1PPhr8RdFmhSpNg7QFr3a0IQ03UF88KHhFhYPJtuX6typ6VAi+UUD
	LvjEoGLe4YDgvaYXN5gflHNSTVyb0OYuhkKZeawveYaS/PuvOgljx/DbaZEbDW+hyhnoSwRY9HZoz
	8Wdh+OxZkhi9CAkR6E+nSueIWLyc9x5DhexQj4cfPv9czTepYcbBqoijzSjbRJyGJ3v/mgBm+DwYI
	Dc25kwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2ek-00087O-HE; Mon, 13 Apr 2020 17:13:58 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2dL-0006Ce-K0
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 17:12:38 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MKd92-1jgnP41Gw8-00L0SZ for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 19:12:26 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 19:11:19 +0200
Message-Id: <20200413171123.48647-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
References: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:cnNu8XPEr8sivy9tboh2phAQlo6lh4XiFA8SPoR0Fhy6nPpBGAb
 VFU27ykHwNbQ6msem0gBE2LmpYGl01M9trk0sYbM/Xltfzb+ShmwT3oc1Y5WQ13tkEvjpKs
 gt3Xi8S+ORxppufyOJNq3jrogL/3htWwYMz8t2magvrTsPK/I78djrzxddCVgdoTR4s/lJ/
 69i7CM/VK4mwYjJezraNw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:b12Oz8v9BLk=:rc3XWB8TL70Hd3CoiKzy8Y
 XyYemMVySG4mlUg0bmNIcXX9u9enHg4qT9jtawlJBEzF+kuSkpFvFEbLrxD/w/3JJLON7OXd/
 2ibhR3Iho5obr9VkrFDPqVBdBXT0K7//pbK3prAZbeuPW/gTQrIoGy+OF5lsm9sKziKX08pMe
 0qjI8lYto/Jjys8LMVEJLxXD+dILhgwRVdSjjKnuilBj/qQ2GU2p+Ti5BCodbSskz9g4cQlb/
 4pkdNjfjeg399MLJXnS4NYp7YX7eB4bWh8pUxMr51D7fgS4fcFfB17vfyMWq9zoGKLXwSwYNI
 n1hwxwD+8tj0+js5jz//LPds6Kky+5v5MZiKFzUQfM07FqHjz++Y0crOIsfRa4EoQ68UhLFvn
 nqJZtDAdwAwB6EF6KiNOHcHOgEfTMvX7mgGm9V4W4XGmTF4PoOkBspyULBlXqhyBK6dQqWWmR
 P460StS8t4oUPBFQA5Q/+/80Yeh5mR21aEsQONFunxqu2MLGDxj8rHrGoVB+aX7r0oELcuFtZ
 k3kPH8to8JpA9y4qRrLo7FD61lp/SdtYBe09ZJs7hKaZGXAwl/gdNtStmVLl4jsjKaywaPynn
 fT00/3gYPpV51ez2gHOTSmOkl/VDSTjPAb3qMBE7OXo1L0MOyErE6Zj9uycZ+F0+S+Rrlzrzv
 6YzN9URG+/vQ4/rAQ1++ouTMi38lsvoqfloYj5JBZGHbbBGJqE0cWMpGP2PqFnYtleY9bizpx
 gIN9bzp2nb07sBb5DNevXq9stHd6b506iQA3epJFvTBvDzLVkP9Rm+t6UnmVifDySMYd051AN
 ezyMkzlAXJ6LPOGPYudD+SQ2og2eT/exMF8akF/84tu63gyJCjD2nWDymXO4FXSJ64AUB1D
X-Spam-Note: CRM114 run bypassed due to message size (117226 bytes)
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFT PATCH 2/6] ath25: copy files to kernel 5.4
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

Copy config and patches to kernel 5.4.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath25/config-5.4                 |  171 ++
 .../ath25/patches-5.4/107-ar5312_gpio.patch   |  212 ++
 .../ath25/patches-5.4/108-ar2315_gpio.patch   |  363 ++++
 .../patches-5.4/110-ar2313_ethernet.patch     | 1734 +++++++++++++++++
 .../ath25/patches-5.4/120-spiflash.patch      |  634 ++++++
 .../ath25/patches-5.4/130-watchdog.patch      |  277 +++
 .../patches-5.4/140-redboot_boardconfig.patch |   60 +
 .../141-redboot_partition_scan.patch          |   44 +
 .../142-redboot_various_erase_size_fix.patch  |   72 +
 .../ath25/patches-5.4/210-reset_button.patch  |   71 +
 .../220-enet_micrel_workaround.patch          |  111 ++
 .../ath25/patches-5.4/330-board_leds.patch    |  116 ++
 12 files changed, 3865 insertions(+)
 create mode 100644 target/linux/ath25/config-5.4
 create mode 100644 target/linux/ath25/patches-5.4/107-ar5312_gpio.patch
 create mode 100644 target/linux/ath25/patches-5.4/108-ar2315_gpio.patch
 create mode 100644 target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
 create mode 100644 target/linux/ath25/patches-5.4/120-spiflash.patch
 create mode 100644 target/linux/ath25/patches-5.4/130-watchdog.patch
 create mode 100644 target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch
 create mode 100644 target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch
 create mode 100644 target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch
 create mode 100644 target/linux/ath25/patches-5.4/210-reset_button.patch
 create mode 100644 target/linux/ath25/patches-5.4/220-enet_micrel_workaround.patch
 create mode 100644 target/linux/ath25/patches-5.4/330-board_leds.patch

diff --git a/target/linux/ath25/config-5.4 b/target/linux/ath25/config-5.4
new file mode 100644
index 0000000000..4d3f0c697e
--- /dev/null
+++ b/target/linux/ath25/config-5.4
@@ -0,0 +1,171 @@
+CONFIG_ADM6996_PHY=y
+CONFIG_AR2315_WDT=y
+CONFIG_AR8216_PHY=y
+CONFIG_ARCH_BINFMT_ELF_STATE=y
+CONFIG_ARCH_CLOCKSOURCE_DATA=y
+CONFIG_ARCH_DISCARD_MEMBLOCK=y
+CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
+# CONFIG_ARCH_HAS_GCOV_PROFILE_ALL is not set
+# CONFIG_ARCH_HAS_SG_CHAIN is not set
+# CONFIG_ARCH_HAS_STRICT_KERNEL_RWX is not set
+# CONFIG_ARCH_HAS_STRICT_MODULE_RWX is not set
+CONFIG_ARCH_HIBERNATION_POSSIBLE=y
+CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
+CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
+CONFIG_ARCH_MMAP_RND_BITS_MAX=15
+CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
+# CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
+# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
+CONFIG_ARCH_SUPPORTS_UPROBES=y
+CONFIG_ARCH_SUSPEND_POSSIBLE=y
+CONFIG_ARCH_USE_BUILTIN_BSWAP=y
+CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
+CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
+CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
+CONFIG_ATH25=y
+CONFIG_BLK_MQ_PCI=y
+CONFIG_CEVT_R4K=y
+CONFIG_CLONE_BACKWARDS=y
+CONFIG_CMDLINE="console=ttyS0,9600 rootfstype=squashfs,jffs2"
+CONFIG_CMDLINE_BOOL=y
+# CONFIG_CMDLINE_OVERRIDE is not set
+CONFIG_CPU_BIG_ENDIAN=y
+CONFIG_CPU_GENERIC_DUMP_TLB=y
+CONFIG_CPU_HAS_PREFETCH=y
+CONFIG_CPU_HAS_SYNC=y
+CONFIG_CPU_MIPS32=y
+CONFIG_CPU_MIPS32_R1=y
+CONFIG_CPU_MIPSR1=y
+CONFIG_CPU_NEEDS_NO_SMARTMIPS_OR_MICROMIPS=y
+CONFIG_CPU_R4K_CACHE_TLB=y
+CONFIG_CPU_R4K_FPU=y
+CONFIG_CPU_SUPPORTS_32BIT_KERNEL=y
+CONFIG_CPU_SUPPORTS_HIGHMEM=y
+CONFIG_CRYPTO_RNG2=y
+CONFIG_CRYPTO_WORKQUEUE=y
+CONFIG_CSRC_R4K=y
+CONFIG_DMA_NONCOHERENT=y
+CONFIG_EARLY_PRINTK=y
+CONFIG_ETHERNET_PACKET_MANGLE=y
+CONFIG_GENERIC_ATOMIC64=y
+CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CMOS_UPDATE=y
+CONFIG_GENERIC_CPU_AUTOPROBE=y
+CONFIG_GENERIC_IO=y
+CONFIG_GENERIC_IRQ_CHIP=y
+CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
+CONFIG_GENERIC_IRQ_SHOW=y
+CONFIG_GENERIC_PCI_IOMAP=y
+CONFIG_GENERIC_SCHED_CLOCK=y
+CONFIG_GENERIC_SMP_IDLE_THREAD=y
+CONFIG_GENERIC_TIME_VSYSCALL=y
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_AR2315=y
+CONFIG_GPIO_AR5312=y
+CONFIG_GPIO_SYSFS=y
+# CONFIG_GRO_CELLS is not set
+CONFIG_HANDLE_DOMAIN_IRQ=y
+CONFIG_HARDWARE_WATCHPOINTS=y
+CONFIG_HAS_DMA=y
+CONFIG_HAS_IOMEM=y
+CONFIG_HAS_IOPORT_MAP=y
+# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
+# CONFIG_HAVE_ARCH_BITREVERSE is not set
+CONFIG_HAVE_ARCH_JUMP_LABEL=y
+CONFIG_HAVE_ARCH_KGDB=y
+CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
+CONFIG_HAVE_ARCH_TRACEHOOK=y
+# CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
+CONFIG_HAVE_CBPF_JIT=y
+CONFIG_HAVE_CC_STACKPROTECTOR=y
+CONFIG_HAVE_CONTEXT_TRACKING=y
+CONFIG_HAVE_COPY_THREAD_TLS=y
+CONFIG_HAVE_C_RECORDMCOUNT=y
+CONFIG_HAVE_DEBUG_KMEMLEAK=y
+CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
+CONFIG_HAVE_DMA_API_DEBUG=y
+CONFIG_HAVE_DMA_CONTIGUOUS=y
+CONFIG_HAVE_DYNAMIC_FTRACE=y
+CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
+CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
+CONFIG_HAVE_FUNCTION_TRACER=y
+CONFIG_HAVE_GENERIC_DMA_COHERENT=y
+CONFIG_HAVE_IDE=y
+CONFIG_HAVE_IRQ_EXIT_ON_IRQ_STACK=y
+CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
+CONFIG_HAVE_LATENCYTOP_SUPPORT=y
+CONFIG_HAVE_MEMBLOCK=y
+CONFIG_HAVE_MEMBLOCK_NODE_MAP=y
+CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
+CONFIG_HAVE_NET_DSA=y
+CONFIG_HAVE_OPROFILE=y
+CONFIG_HAVE_PERF_EVENTS=y
+CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
+CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
+CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
+CONFIG_HW_HAS_PCI=y
+CONFIG_HW_RANDOM=y
+CONFIG_HZ_PERIODIC=y
+CONFIG_INITRAMFS_SOURCE=""
+CONFIG_IP17XX_PHY=y
+CONFIG_IRQ_DOMAIN=y
+CONFIG_IRQ_FORCED_THREADING=y
+CONFIG_IRQ_MIPS_CPU=y
+CONFIG_IRQ_WORK=y
+CONFIG_LEDS_GPIO=y
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
+CONFIG_MIPS=y
+CONFIG_MIPS_ASID_BITS=8
+CONFIG_MIPS_ASID_SHIFT=0
+CONFIG_MIPS_CLOCK_VSYSCALL=y
+# CONFIG_MIPS_CMDLINE_BUILTIN_EXTEND is not set
+CONFIG_MIPS_CMDLINE_FROM_BOOTLOADER=y
+# CONFIG_MIPS_HUGE_TLB_SUPPORT is not set
+CONFIG_MIPS_L1_CACHE_SHIFT=5
+# CONFIG_MIPS_MACHINE is not set
+CONFIG_MODULES_USE_ELF_REL=y
+CONFIG_MTD_AR2315=y
+CONFIG_MTD_CFI_ADV_OPTIONS=y
+# CONFIG_MTD_CFI_GEOMETRY is not set
+# CONFIG_MTD_CFI_INTELEXT is not set
+CONFIG_MTD_MYLOADER_PARTS=y
+CONFIG_MTD_PHYSMAP=y
+CONFIG_MTD_REDBOOT_DIRECTORY_BLOCK=-3
+CONFIG_MTD_REDBOOT_PARTS=y
+CONFIG_MVSWITCH_PHY=y
+CONFIG_NEED_DMA_MAP_STATE=y
+CONFIG_NEED_PER_CPU_KM=y
+CONFIG_NET_AR231X=y
+CONFIG_NO_GENERIC_PCI_IOPORT_MAP=y
+# CONFIG_NO_IOPORT_MAP is not set
+# CONFIG_OF is not set
+CONFIG_PCI=y
+CONFIG_PCI_AR2315=y
+CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
+CONFIG_PCI_DOMAINS=y
+CONFIG_PCI_DRIVERS_LEGACY=y
+CONFIG_PERF_USE_VMALLOC=y
+CONFIG_PGTABLE_LEVELS=2
+CONFIG_PHYLIB=y
+# CONFIG_RCU_NEED_SEGCBLIST is not set
+# CONFIG_RCU_STALL_COMMON is not set
+# CONFIG_SCHED_INFO is not set
+# CONFIG_SCSI_DMA is not set
+# CONFIG_SERIAL_8250_FSL is not set
+CONFIG_SERIAL_8250_NR_UARTS=1
+CONFIG_SERIAL_8250_RUNTIME_UARTS=1
+CONFIG_SOC_AR2315=y
+CONFIG_SOC_AR5312=y
+CONFIG_SRCU=y
+# CONFIG_SWAP is not set
+CONFIG_SWCONFIG=y
+CONFIG_SYSCTL_EXCEPTION_TRACE=y
+CONFIG_SYS_HAS_CPU_MIPS32_R1=y
+CONFIG_SYS_HAS_EARLY_PRINTK=y
+CONFIG_SYS_SUPPORTS_32BIT_KERNEL=y
+CONFIG_SYS_SUPPORTS_ARBIT_HZ=y
+CONFIG_SYS_SUPPORTS_BIG_ENDIAN=y
+CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TINY_SRCU=y
+CONFIG_USB_SUPPORT=y
diff --git a/target/linux/ath25/patches-5.4/107-ar5312_gpio.patch b/target/linux/ath25/patches-5.4/107-ar5312_gpio.patch
new file mode 100644
index 0000000000..e74e20b05a
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/107-ar5312_gpio.patch
@@ -0,0 +1,212 @@
+--- a/arch/mips/ath25/Kconfig
++++ b/arch/mips/ath25/Kconfig
+@@ -2,6 +2,7 @@
+ config SOC_AR5312
+ 	bool "Atheros AR5312/AR2312+ SoC support"
+ 	depends on ATH25
++	select GPIO_AR5312
+ 	default y
+ 
+ config SOC_AR2315
+--- a/arch/mips/ath25/ar5312.c
++++ b/arch/mips/ath25/ar5312.c
+@@ -22,6 +22,7 @@
+ #include <linux/platform_device.h>
+ #include <linux/mtd/physmap.h>
+ #include <linux/reboot.h>
++#include <linux/gpio.h>
+ #include <asm/bootinfo.h>
+ #include <asm/reboot.h>
+ #include <asm/time.h>
+@@ -180,6 +181,22 @@ static struct platform_device ar5312_phy
+ 	.num_resources = 1,
+ };
+ 
++static struct resource ar5312_gpio_res[] = {
++	{
++		.name = "ar5312-gpio",
++		.flags = IORESOURCE_MEM,
++		.start = AR5312_GPIO_BASE,
++		.end = AR5312_GPIO_BASE + AR5312_GPIO_SIZE - 1,
++	},
++};
++
++static struct platform_device ar5312_gpio = {
++	.name = "ar5312-gpio",
++	.id = -1,
++	.resource = ar5312_gpio_res,
++	.num_resources = ARRAY_SIZE(ar5312_gpio_res),
++};
++
+ static void __init ar5312_flash_init(void)
+ {
+ 	void __iomem *flashctl_base;
+@@ -247,6 +264,8 @@ void __init ar5312_init_devices(void)
+ 
+ 	platform_device_register(&ar5312_physmap_flash);
+ 
++	platform_device_register(&ar5312_gpio);
++
+ 	switch (ath25_soc) {
+ 	case ATH25_SOC_AR5312:
+ 		if (!ath25_board.radio)
+--- a/drivers/gpio/Kconfig
++++ b/drivers/gpio/Kconfig
+@@ -105,6 +105,13 @@ config GPIO_AMDPT
+ 	  driver for GPIO functionality on Promontory IOHub
+ 	  Require ACPI ASL code to enumerate as a platform device.
+ 
++config GPIO_AR5312
++	bool "AR5312 SoC GPIO support"
++	default y if SOC_AR5312
++	depends on SOC_AR5312
++	help
++	  Say yes here to enable GPIO support for Atheros AR5312/AR2312+ SoCs.
++
+ config GPIO_ASPEED
+ 	tristate "Aspeed GPIO support"
+ 	depends on (ARCH_ASPEED || COMPILE_TEST) && OF_GPIO
+--- a/drivers/gpio/Makefile
++++ b/drivers/gpio/Makefile
+@@ -29,6 +29,7 @@ obj-$(CONFIG_GPIO_ALTERA)  	+= gpio-alte
+ obj-$(CONFIG_GPIO_ALTERA_A10SR)	+= gpio-altera-a10sr.o
+ obj-$(CONFIG_GPIO_AMD8111)	+= gpio-amd8111.o
+ obj-$(CONFIG_GPIO_AMDPT)	+= gpio-amdpt.o
++obj-$(CONFIG_GPIO_AR5312)	+= gpio-ar5312.o
+ obj-$(CONFIG_GPIO_ARIZONA)	+= gpio-arizona.o
+ obj-$(CONFIG_GPIO_ATH79)	+= gpio-ath79.o
+ obj-$(CONFIG_GPIO_ASPEED)	+= gpio-aspeed.o
+--- /dev/null
++++ b/drivers/gpio/gpio-ar5312.c
+@@ -0,0 +1,121 @@
++/*
++ * This file is subject to the terms and conditions of the GNU General Public
++ * License.  See the file "COPYING" in the main directory of this archive
++ * for more details.
++ *
++ * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
++ * Copyright (C) 2006 FON Technology, SL.
++ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
++ * Copyright (C) 2006-2009 Felix Fietkau <nbd@nbd.name>
++ * Copyright (C) 2012 Alexandros C. Couloumbis <alex@ozo.com>
++ */
++
++#include <linux/kernel.h>
++#include <linux/init.h>
++#include <linux/platform_device.h>
++#include <linux/gpio.h>
++
++#define DRIVER_NAME	"ar5312-gpio"
++
++#define AR5312_GPIO_DO		0x00		/* output register */
++#define AR5312_GPIO_DI		0x04		/* intput register */
++#define AR5312_GPIO_CR		0x08		/* control register */
++
++#define AR5312_GPIO_CR_M(x)	(1 << (x))	/* mask for i/o */
++#define AR5312_GPIO_CR_O(x)	(0 << (x))	/* mask for output */
++#define AR5312_GPIO_CR_I(x)	(1 << (x))	/* mask for input */
++#define AR5312_GPIO_CR_INT(x)	(1 << ((x)+8))	/* mask for interrupt */
++#define AR5312_GPIO_CR_UART(x)	(1 << ((x)+16))	/* uart multiplex */
++
++#define AR5312_GPIO_NUM		8
++
++static void __iomem *ar5312_mem;
++
++static inline u32 ar5312_gpio_reg_read(unsigned reg)
++{
++	return __raw_readl(ar5312_mem + reg);
++}
++
++static inline void ar5312_gpio_reg_write(unsigned reg, u32 val)
++{
++	__raw_writel(val, ar5312_mem + reg);
++}
++
++static inline void ar5312_gpio_reg_mask(unsigned reg, u32 mask, u32 val)
++{
++	ar5312_gpio_reg_write(reg, (ar5312_gpio_reg_read(reg) & ~mask) | val);
++}
++
++static int ar5312_gpio_get_val(struct gpio_chip *chip, unsigned gpio)
++{
++	return (ar5312_gpio_reg_read(AR5312_GPIO_DI) >> gpio) & 1;
++}
++
++static void ar5312_gpio_set_val(struct gpio_chip *chip, unsigned gpio, int val)
++{
++	u32 reg = ar5312_gpio_reg_read(AR5312_GPIO_DO);
++
++	reg = val ? reg | (1 << gpio) : reg & ~(1 << gpio);
++	ar5312_gpio_reg_write(AR5312_GPIO_DO, reg);
++}
++
++static int ar5312_gpio_dir_in(struct gpio_chip *chip, unsigned gpio)
++{
++	ar5312_gpio_reg_mask(AR5312_GPIO_CR, 0, 1 << gpio);
++	return 0;
++}
++
++static int ar5312_gpio_dir_out(struct gpio_chip *chip, unsigned gpio, int val)
++{
++	ar5312_gpio_reg_mask(AR5312_GPIO_CR, 1 << gpio, 0);
++	ar5312_gpio_set_val(chip, gpio, val);
++	return 0;
++}
++
++static struct gpio_chip ar5312_gpio_chip = {
++	.label			= DRIVER_NAME,
++	.direction_input	= ar5312_gpio_dir_in,
++	.direction_output	= ar5312_gpio_dir_out,
++	.set			= ar5312_gpio_set_val,
++	.get			= ar5312_gpio_get_val,
++	.base			= 0,
++	.ngpio			= AR5312_GPIO_NUM,
++};
++
++static int ar5312_gpio_probe(struct platform_device *pdev)
++{
++	struct device *dev = &pdev->dev;
++	struct resource *res;
++	int ret;
++
++	if (ar5312_mem)
++		return -EBUSY;
++
++	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
++	ar5312_mem = devm_ioremap_resource(dev, res);
++	if (IS_ERR(ar5312_mem))
++		return PTR_ERR(ar5312_mem);
++
++	ar5312_gpio_chip.parent = dev;
++	ret = gpiochip_add(&ar5312_gpio_chip);
++	if (ret) {
++		dev_err(dev, "failed to add gpiochip\n");
++		return ret;
++	}
++
++	return 0;
++}
++
++static struct platform_driver ar5312_gpio_driver = {
++	.probe = ar5312_gpio_probe,
++	.driver = {
++		.name = DRIVER_NAME,
++		.owner = THIS_MODULE,
++	}
++};
++
++static int __init ar5312_gpio_init(void)
++{
++	return platform_driver_register(&ar5312_gpio_driver);
++}
++subsys_initcall(ar5312_gpio_init);
+--- a/arch/mips/Kconfig
++++ b/arch/mips/Kconfig
+@@ -175,6 +175,7 @@ config ATH25
+ 	select CEVT_R4K
+ 	select CSRC_R4K
+ 	select DMA_NONCOHERENT
++	select GPIOLIB
+ 	select IRQ_MIPS_CPU
+ 	select IRQ_DOMAIN
+ 	select SYS_HAS_CPU_MIPS32_R1
diff --git a/target/linux/ath25/patches-5.4/108-ar2315_gpio.patch b/target/linux/ath25/patches-5.4/108-ar2315_gpio.patch
new file mode 100644
index 0000000000..749b308b89
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/108-ar2315_gpio.patch
@@ -0,0 +1,363 @@
+--- a/arch/mips/ath25/Kconfig
++++ b/arch/mips/ath25/Kconfig
+@@ -8,6 +8,7 @@ config SOC_AR5312
+ config SOC_AR2315
+ 	bool "Atheros AR2315+ SoC support"
+ 	depends on ATH25
++	select GPIO_AR2315
+ 	default y
+ 
+ config PCI_AR2315
+--- a/arch/mips/ath25/ar2315.c
++++ b/arch/mips/ath25/ar2315.c
+@@ -21,6 +21,8 @@
+ #include <linux/interrupt.h>
+ #include <linux/platform_device.h>
+ #include <linux/reboot.h>
++#include <linux/delay.h>
++#include <linux/gpio.h>
+ #include <asm/bootinfo.h>
+ #include <asm/reboot.h>
+ #include <asm/time.h>
+@@ -167,11 +169,42 @@ void __init ar2315_arch_init_irq(void)
+ 	ar2315_misc_irq_domain = domain;
+ }
+ 
++static struct resource ar2315_gpio_res[] = {
++	{
++		.name = "ar2315-gpio",
++		.flags = IORESOURCE_MEM,
++		.start = AR2315_RST_BASE + AR2315_GPIO,
++		.end = AR2315_RST_BASE + AR2315_GPIO + 0x10 - 1,
++	},
++	{
++		.name = "ar2315-gpio",
++		.flags = IORESOURCE_IRQ,
++	},
++	{
++		.name = "ar2315-gpio-irq-base",
++		.flags = IORESOURCE_IRQ,
++		.start = AR231X_GPIO_IRQ_BASE,
++		.end = AR231X_GPIO_IRQ_BASE,
++	}
++};
++
++static struct platform_device ar2315_gpio = {
++	.id = -1,
++	.name = "ar2315-gpio",
++	.resource = ar2315_gpio_res,
++	.num_resources = ARRAY_SIZE(ar2315_gpio_res)
++};
++
+ void __init ar2315_init_devices(void)
+ {
+ 	/* Find board configuration */
+ 	ath25_find_config(AR2315_SPI_READ_BASE, AR2315_SPI_READ_SIZE);
+ 
++	ar2315_gpio_res[1].start = irq_create_mapping(ar2315_misc_irq_domain,
++						      AR2315_MISC_IRQ_GPIO);
++	ar2315_gpio_res[1].end = ar2315_gpio_res[1].start;
++	platform_device_register(&ar2315_gpio);
++
+ 	ath25_add_wmac(0, AR2315_WLAN0_BASE, AR2315_IRQ_WLAN0);
+ }
+ 
+@@ -187,8 +220,8 @@ static void ar2315_restart(char *command
+ 	/* Cold reset does not work on the AR2315/6, use the GPIO reset bits
+ 	 * a workaround. Give it some time to attempt a gpio based hardware
+ 	 * reset (atheros reference design workaround) */
+-
+-	/* TODO: implement the GPIO reset workaround */
++	gpio_request_one(AR2315_RESET_GPIO, GPIOF_OUT_INIT_LOW, "Reset");
++	mdelay(100);
+ 
+ 	/* Some boards (e.g. Senao EOC-2610) don't implement the reset logic
+ 	 * workaround. Attempt to jump to the mips reset location -
+--- a/drivers/gpio/Kconfig
++++ b/drivers/gpio/Kconfig
+@@ -105,6 +105,13 @@ config GPIO_AMDPT
+ 	  driver for GPIO functionality on Promontory IOHub
+ 	  Require ACPI ASL code to enumerate as a platform device.
+ 
++config GPIO_AR2315
++	bool "AR2315 SoC GPIO support"
++	default y if SOC_AR2315
++	depends on SOC_AR2315
++	help
++	  Say yes here to enable GPIO support for Atheros AR2315+ SoCs.
++
+ config GPIO_AR5312
+ 	bool "AR5312 SoC GPIO support"
+ 	default y if SOC_AR5312
+--- a/drivers/gpio/Makefile
++++ b/drivers/gpio/Makefile
+@@ -29,6 +29,7 @@ obj-$(CONFIG_GPIO_ALTERA)  	+= gpio-alte
+ obj-$(CONFIG_GPIO_ALTERA_A10SR)	+= gpio-altera-a10sr.o
+ obj-$(CONFIG_GPIO_AMD8111)	+= gpio-amd8111.o
+ obj-$(CONFIG_GPIO_AMDPT)	+= gpio-amdpt.o
++obj-$(CONFIG_GPIO_AR2315)	+= gpio-ar2315.o
+ obj-$(CONFIG_GPIO_AR5312)	+= gpio-ar5312.o
+ obj-$(CONFIG_GPIO_ARIZONA)	+= gpio-arizona.o
+ obj-$(CONFIG_GPIO_ATH79)	+= gpio-ath79.o
+--- /dev/null
++++ b/drivers/gpio/gpio-ar2315.c
+@@ -0,0 +1,233 @@
++/*
++ * This file is subject to the terms and conditions of the GNU General Public
++ * License.  See the file "COPYING" in the main directory of this archive
++ * for more details.
++ *
++ * Copyright (C) 2003 Atheros Communications, Inc.,  All Rights Reserved.
++ * Copyright (C) 2006 FON Technology, SL.
++ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
++ * Copyright (C) 2006 Felix Fietkau <nbd@nbd.name>
++ * Copyright (C) 2012 Alexandros C. Couloumbis <alex@ozo.com>
++ */
++
++#include <linux/kernel.h>
++#include <linux/init.h>
++#include <linux/platform_device.h>
++#include <linux/gpio.h>
++#include <linux/irq.h>
++
++#define DRIVER_NAME	"ar2315-gpio"
++
++#define AR2315_GPIO_DI			0x0000
++#define AR2315_GPIO_DO			0x0008
++#define AR2315_GPIO_DIR			0x0010
++#define AR2315_GPIO_INT			0x0018
++
++#define AR2315_GPIO_DIR_M(x)		(1 << (x))	/* mask for i/o */
++#define AR2315_GPIO_DIR_O(x)		(1 << (x))	/* output */
++#define AR2315_GPIO_DIR_I(x)		(0)		/* input */
++
++#define AR2315_GPIO_INT_NUM_M		0x3F		/* mask for GPIO num */
++#define AR2315_GPIO_INT_TRIG(x)		((x) << 6)	/* interrupt trigger */
++#define AR2315_GPIO_INT_TRIG_M		(0x3 << 6)	/* mask for int trig */
++
++#define AR2315_GPIO_INT_TRIG_OFF	0	/* Triggerring off */
++#define AR2315_GPIO_INT_TRIG_LOW	1	/* Low Level Triggered */
++#define AR2315_GPIO_INT_TRIG_HIGH	2	/* High Level Triggered */
++#define AR2315_GPIO_INT_TRIG_EDGE	3	/* Edge Triggered */
++
++#define AR2315_GPIO_NUM		22
++
++static u32 ar2315_gpio_intmask;
++static u32 ar2315_gpio_intval;
++static unsigned ar2315_gpio_irq_base;
++static void __iomem *ar2315_mem;
++
++static inline u32 ar2315_gpio_reg_read(unsigned reg)
++{
++	return __raw_readl(ar2315_mem + reg);
++}
++
++static inline void ar2315_gpio_reg_write(unsigned reg, u32 val)
++{
++	__raw_writel(val, ar2315_mem + reg);
++}
++
++static inline void ar2315_gpio_reg_mask(unsigned reg, u32 mask, u32 val)
++{
++	ar2315_gpio_reg_write(reg, (ar2315_gpio_reg_read(reg) & ~mask) | val);
++}
++
++static void ar2315_gpio_irq_handler(struct irq_desc *desc)
++{
++	u32 pend;
++	int bit = -1;
++
++	/* only do one gpio interrupt at a time */
++	pend = ar2315_gpio_reg_read(AR2315_GPIO_DI);
++	pend ^= ar2315_gpio_intval;
++	pend &= ar2315_gpio_intmask;
++
++	if (pend) {
++		bit = fls(pend) - 1;
++		pend &= ~(1 << bit);
++		ar2315_gpio_intval ^= (1 << bit);
++	}
++
++	/* Enable interrupt with edge detection */
++	if ((ar2315_gpio_reg_read(AR2315_GPIO_DIR) & AR2315_GPIO_DIR_M(bit)) !=
++	    AR2315_GPIO_DIR_I(bit))
++		return;
++
++	if (bit >= 0)
++		generic_handle_irq(ar2315_gpio_irq_base + bit);
++}
++
++static void ar2315_gpio_int_setup(unsigned gpio, int trig)
++{
++	u32 reg = ar2315_gpio_reg_read(AR2315_GPIO_INT);
++
++	reg &= ~(AR2315_GPIO_INT_NUM_M | AR2315_GPIO_INT_TRIG_M);
++	reg |= gpio | AR2315_GPIO_INT_TRIG(trig);
++	ar2315_gpio_reg_write(AR2315_GPIO_INT, reg);
++}
++
++static void ar2315_gpio_irq_unmask(struct irq_data *d)
++{
++	unsigned gpio = d->irq - ar2315_gpio_irq_base;
++	u32 dir = ar2315_gpio_reg_read(AR2315_GPIO_DIR);
++
++	/* Enable interrupt with edge detection */
++	if ((dir & AR2315_GPIO_DIR_M(gpio)) != AR2315_GPIO_DIR_I(gpio))
++		return;
++
++	ar2315_gpio_intmask |= (1 << gpio);
++	ar2315_gpio_int_setup(gpio, AR2315_GPIO_INT_TRIG_EDGE);
++}
++
++static void ar2315_gpio_irq_mask(struct irq_data *d)
++{
++	unsigned gpio = d->irq - ar2315_gpio_irq_base;
++
++	/* Disable interrupt */
++	ar2315_gpio_intmask &= ~(1 << gpio);
++	ar2315_gpio_int_setup(gpio, AR2315_GPIO_INT_TRIG_OFF);
++}
++
++static struct irq_chip ar2315_gpio_irq_chip = {
++	.name		= DRIVER_NAME,
++	.irq_unmask	= ar2315_gpio_irq_unmask,
++	.irq_mask	= ar2315_gpio_irq_mask,
++};
++
++static void ar2315_gpio_irq_init(unsigned irq)
++{
++	unsigned i;
++
++	ar2315_gpio_intval = ar2315_gpio_reg_read(AR2315_GPIO_DI);
++	for (i = 0; i < AR2315_GPIO_NUM; i++) {
++		unsigned _irq = ar2315_gpio_irq_base + i;
++
++		irq_set_chip_and_handler(_irq, &ar2315_gpio_irq_chip,
++					 handle_level_irq);
++	}
++	irq_set_chained_handler(irq, ar2315_gpio_irq_handler);
++}
++
++static int ar2315_gpio_get_val(struct gpio_chip *chip, unsigned gpio)
++{
++	return (ar2315_gpio_reg_read(AR2315_GPIO_DI) >> gpio) & 1;
++}
++
++static void ar2315_gpio_set_val(struct gpio_chip *chip, unsigned gpio, int val)
++{
++	u32 reg = ar2315_gpio_reg_read(AR2315_GPIO_DO);
++
++	reg = val ? reg | (1 << gpio) : reg & ~(1 << gpio);
++	ar2315_gpio_reg_write(AR2315_GPIO_DO, reg);
++}
++
++static int ar2315_gpio_dir_in(struct gpio_chip *chip, unsigned gpio)
++{
++	ar2315_gpio_reg_mask(AR2315_GPIO_DIR, 1 << gpio, 0);
++	return 0;
++}
++
++static int ar2315_gpio_dir_out(struct gpio_chip *chip, unsigned gpio, int val)
++{
++	ar2315_gpio_reg_mask(AR2315_GPIO_DIR, 0, 1 << gpio);
++	ar2315_gpio_set_val(chip, gpio, val);
++	return 0;
++}
++
++static int ar2315_gpio_to_irq(struct gpio_chip *chip, unsigned gpio)
++{
++	return ar2315_gpio_irq_base + gpio;
++}
++
++static struct gpio_chip ar2315_gpio_chip = {
++	.label			= DRIVER_NAME,
++	.direction_input	= ar2315_gpio_dir_in,
++	.direction_output	= ar2315_gpio_dir_out,
++	.set			= ar2315_gpio_set_val,
++	.get			= ar2315_gpio_get_val,
++	.to_irq			= ar2315_gpio_to_irq,
++	.base			= 0,
++	.ngpio			= AR2315_GPIO_NUM,
++};
++
++static int ar2315_gpio_probe(struct platform_device *pdev)
++{
++	struct device *dev = &pdev->dev;
++	struct resource *res;
++	unsigned irq;
++	int ret;
++
++	if (ar2315_mem)
++		return -EBUSY;
++
++	res = platform_get_resource_byname(pdev, IORESOURCE_IRQ,
++					   "ar2315-gpio-irq-base");
++	if (!res) {
++		dev_err(dev, "not found GPIO IRQ base\n");
++		return -ENXIO;
++	}
++	ar2315_gpio_irq_base = res->start;
++
++	res = platform_get_resource_byname(pdev, IORESOURCE_IRQ, DRIVER_NAME);
++	if (!res) {
++		dev_err(dev, "not found IRQ number\n");
++		return -ENXIO;
++	}
++	irq = res->start;
++
++	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, DRIVER_NAME);
++	ar2315_mem = devm_ioremap_resource(dev, res);
++	if (IS_ERR(ar2315_mem))
++		return PTR_ERR(ar2315_mem);
++
++	ar2315_gpio_chip.parent = dev;
++	ret = gpiochip_add(&ar2315_gpio_chip);
++	if (ret) {
++		dev_err(dev, "failed to add gpiochip\n");
++		return ret;
++	}
++
++	ar2315_gpio_irq_init(irq);
++
++	return 0;
++}
++
++static struct platform_driver ar2315_gpio_driver = {
++	.probe = ar2315_gpio_probe,
++	.driver = {
++		.name = DRIVER_NAME,
++		.owner = THIS_MODULE,
++	}
++};
++
++static int __init ar2315_gpio_init(void)
++{
++	return platform_driver_register(&ar2315_gpio_driver);
++}
++subsys_initcall(ar2315_gpio_init);
+--- a/arch/mips/ath25/devices.h
++++ b/arch/mips/ath25/devices.h
+@@ -4,6 +4,11 @@
+ 
+ #include <linux/cpu.h>
+ 
++#define AR231X_GPIO_IRQ_BASE		0x30
++
++/* GPIO number for AR2315/16 reset issue workaround */
++#define AR2315_RESET_GPIO		5
++
+ #define ATH25_REG_MS(_val, _field)	(((_val) & _field##_M) >> _field##_S)
+ 
+ #define ATH25_IRQ_CPU_CLOCK	(MIPS_CPU_IRQ_BASE + 7)	/* C0_CAUSE: 0x8000 */
+--- a/arch/mips/ath25/ar2315_regs.h
++++ b/arch/mips/ath25/ar2315_regs.h
+@@ -315,6 +315,9 @@
+ #define AR2315_MEM_CFG_BANKADDR_BITS_M	0x00000018
+ #define AR2315_MEM_CFG_BANKADDR_BITS_S	3
+ 
++/* GPIO MMR base address */
++#define AR2315_GPIO			0x0088
++
+ /*
+  * Local Bus Interface Registers
+  */
diff --git a/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch b/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
new file mode 100644
index 0000000000..a2b1492250
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/110-ar2313_ethernet.patch
@@ -0,0 +1,1734 @@
+--- a/drivers/net/ethernet/atheros/Makefile
++++ b/drivers/net/ethernet/atheros/Makefile
+@@ -8,3 +8,4 @@ obj-$(CONFIG_ATL2) += atlx/
+ obj-$(CONFIG_ATL1E) += atl1e/
+ obj-$(CONFIG_ATL1C) += atl1c/
+ obj-$(CONFIG_ALX) += alx/
++obj-$(CONFIG_NET_AR231X) += ar231x/
+--- a/drivers/net/ethernet/atheros/Kconfig
++++ b/drivers/net/ethernet/atheros/Kconfig
+@@ -5,7 +5,7 @@
+ config NET_VENDOR_ATHEROS
+ 	bool "Atheros devices"
+ 	default y
+-	depends on PCI
++	depends on (PCI || ATH25)
+ 	---help---
+ 	  If you have a network (Ethernet) card belonging to this class, say Y.
+ 
+@@ -78,4 +78,10 @@ config ALX
+ 	  To compile this driver as a module, choose M here.  The module
+ 	  will be called alx.
+ 
++config NET_AR231X
++	tristate "Atheros AR231X built-in Ethernet support"
++	depends on ATH25
++	help
++	  Support for the AR231x/531x ethernet controller
++
+ endif # NET_VENDOR_ATHEROS
+--- /dev/null
++++ b/drivers/net/ethernet/atheros/ar231x/Makefile
+@@ -0,0 +1 @@
++obj-$(CONFIG_NET_AR231X) += ar231x.o
+--- /dev/null
++++ b/drivers/net/ethernet/atheros/ar231x/ar231x.c
+@@ -0,0 +1,1119 @@
++/*
++ * ar231x.c: Linux driver for the Atheros AR231x Ethernet device.
++ *
++ * Copyright (C) 2004 by Sameer Dekate <sdekate@arubanetworks.com>
++ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
++ * Copyright (C) 2006-2009 Felix Fietkau <nbd@nbd.name>
++ *
++ * Thanks to Atheros for providing hardware and documentation
++ * enabling me to write this driver.
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * Additional credits:
++ * This code is taken from John Taylor's Sibyte driver and then
++ * modified for the AR2313.
++ */
++
++#include <linux/module.h>
++#include <linux/types.h>
++#include <linux/errno.h>
++#include <linux/ioport.h>
++#include <linux/netdevice.h>
++#include <linux/etherdevice.h>
++#include <linux/interrupt.h>
++#include <linux/skbuff.h>
++#include <linux/init.h>
++#include <linux/delay.h>
++#include <linux/mm.h>
++#include <linux/mii.h>
++#include <linux/phy.h>
++#include <linux/platform_device.h>
++#include <linux/io.h>
++
++#define AR2313_MTU                     1692
++#define AR2313_PRIOS                   1
++#define AR2313_QUEUES                  (2*AR2313_PRIOS)
++#define AR2313_DESCR_ENTRIES           64
++
++#ifndef min
++#define min(a, b)	(((a) < (b)) ? (a) : (b))
++#endif
++
++#ifndef SMP_CACHE_BYTES
++#define SMP_CACHE_BYTES	L1_CACHE_BYTES
++#endif
++
++#define AR2313_MBOX_SET_BIT  0x8
++
++#include "ar231x.h"
++
++/**
++ * New interrupt handler strategy:
++ *
++ * An old interrupt handler worked using the traditional method of
++ * replacing an skbuff with a new one when a packet arrives. However
++ * the rx rings do not need to contain a static number of buffer
++ * descriptors, thus it makes sense to move the memory allocation out
++ * of the main interrupt handler and do it in a bottom half handler
++ * and only allocate new buffers when the number of buffers in the
++ * ring is below a certain threshold. In order to avoid starving the
++ * NIC under heavy load it is however necessary to force allocation
++ * when hitting a minimum threshold. The strategy for alloction is as
++ * follows:
++ *
++ *     RX_LOW_BUF_THRES    - allocate buffers in the bottom half
++ *     RX_PANIC_LOW_THRES  - we are very low on buffers, allocate
++ *                           the buffers in the interrupt handler
++ *     RX_RING_THRES       - maximum number of buffers in the rx ring
++ *
++ * One advantagous side effect of this allocation approach is that the
++ * entire rx processing can be done without holding any spin lock
++ * since the rx rings and registers are totally independent of the tx
++ * ring and its registers.  This of course includes the kmalloc's of
++ * new skb's. Thus start_xmit can run in parallel with rx processing
++ * and the memory allocation on SMP systems.
++ *
++ * Note that running the skb reallocation in a bottom half opens up
++ * another can of races which needs to be handled properly. In
++ * particular it can happen that the interrupt handler tries to run
++ * the reallocation while the bottom half is either running on another
++ * CPU or was interrupted on the same CPU. To get around this the
++ * driver uses bitops to prevent the reallocation routines from being
++ * reentered.
++ *
++ * TX handling can also be done without holding any spin lock, wheee
++ * this is fun! since tx_csm is only written to by the interrupt
++ * handler.
++ */
++
++/**
++ * Threshold values for RX buffer allocation - the low water marks for
++ * when to start refilling the rings are set to 75% of the ring
++ * sizes. It seems to make sense to refill the rings entirely from the
++ * intrrupt handler once it gets below the panic threshold, that way
++ * we don't risk that the refilling is moved to another CPU when the
++ * one running the interrupt handler just got the slab code hot in its
++ * cache.
++ */
++#define RX_RING_SIZE		AR2313_DESCR_ENTRIES
++#define RX_PANIC_THRES	        (RX_RING_SIZE/4)
++#define RX_LOW_THRES	        ((3*RX_RING_SIZE)/4)
++#define CRC_LEN                 4
++#define RX_OFFSET               2
++
++#if defined(CONFIG_VLAN_8021Q) || defined(CONFIG_VLAN_8021Q_MODULE)
++#define VLAN_HDR                4
++#else
++#define VLAN_HDR                0
++#endif
++
++#define AR2313_BUFSIZE		(AR2313_MTU + VLAN_HDR + ETH_HLEN + CRC_LEN + \
++				 RX_OFFSET)
++
++#ifdef MODULE
++MODULE_LICENSE("GPL");
++MODULE_AUTHOR("Sameer Dekate <sdekate@arubanetworks.com>, Imre Kaloz <kaloz@openwrt.org>, Felix Fietkau <nbd@nbd.name>");
++MODULE_DESCRIPTION("AR231x Ethernet driver");
++#endif
++
++#define virt_to_phys(x) ((u32)(x) & 0x1fffffff)
++
++/* prototypes */
++static void ar231x_halt(struct net_device *dev);
++static void rx_tasklet_func(unsigned long data);
++static void rx_tasklet_cleanup(struct net_device *dev);
++static void ar231x_multicast_list(struct net_device *dev);
++static void ar231x_tx_timeout(struct net_device *dev);
++
++static int ar231x_mdiobus_read(struct mii_bus *bus, int phy_addr, int regnum);
++static int ar231x_mdiobus_write(struct mii_bus *bus, int phy_addr, int regnum,
++				u16 value);
++static int ar231x_mdiobus_reset(struct mii_bus *bus);
++static int ar231x_mdiobus_probe(struct net_device *dev);
++static void ar231x_adjust_link(struct net_device *dev);
++
++#ifndef ERR
++#define ERR(fmt, args...) printk("%s: " fmt, __func__, ##args)
++#endif
++
++#ifdef CONFIG_NET_POLL_CONTROLLER
++static void
++ar231x_netpoll(struct net_device *dev)
++{
++	unsigned long flags;
++
++	local_irq_save(flags);
++	ar231x_interrupt(dev->irq, dev);
++	local_irq_restore(flags);
++}
++#endif
++
++static const struct net_device_ops ar231x_ops = {
++	.ndo_open		= ar231x_open,
++	.ndo_stop		= ar231x_close,
++	.ndo_start_xmit		= ar231x_start_xmit,
++	.ndo_set_rx_mode	= ar231x_multicast_list,
++	.ndo_do_ioctl		= ar231x_ioctl,
++	.ndo_change_mtu		= eth_change_mtu,
++	.ndo_validate_addr	= eth_validate_addr,
++	.ndo_set_mac_address	= eth_mac_addr,
++	.ndo_tx_timeout		= ar231x_tx_timeout,
++#ifdef CONFIG_NET_POLL_CONTROLLER
++	.ndo_poll_controller	= ar231x_netpoll,
++#endif
++};
++
++static int ar231x_probe(struct platform_device *pdev)
++{
++	struct net_device *dev;
++	struct ar231x_private *sp;
++	struct resource *res;
++	unsigned long ar_eth_base;
++	char buf[64];
++
++	dev = alloc_etherdev(sizeof(struct ar231x_private));
++
++	if (dev == NULL) {
++		printk(KERN_ERR
++			   "ar231x: Unable to allocate net_device structure!\n");
++		return -ENOMEM;
++	}
++
++	platform_set_drvdata(pdev, dev);
++
++	SET_NETDEV_DEV(dev, &pdev->dev);
++
++	sp = netdev_priv(dev);
++	sp->dev = dev;
++	sp->cfg = pdev->dev.platform_data;
++
++	sprintf(buf, "eth%d_membase", pdev->id);
++	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, buf);
++	if (!res)
++		return -ENODEV;
++
++	sp->link = 0;
++	ar_eth_base = res->start;
++
++	sprintf(buf, "eth%d_irq", pdev->id);
++	dev->irq = platform_get_irq_byname(pdev, buf);
++
++	spin_lock_init(&sp->lock);
++
++	dev->features |= NETIF_F_HIGHDMA;
++	dev->netdev_ops = &ar231x_ops;
++
++	tasklet_init(&sp->rx_tasklet, rx_tasklet_func, (unsigned long)dev);
++	tasklet_disable(&sp->rx_tasklet);
++
++	sp->eth_regs = ioremap_nocache(ar_eth_base, sizeof(*sp->eth_regs));
++	if (!sp->eth_regs) {
++		printk("Can't remap eth registers\n");
++		return -ENXIO;
++	}
++
++	/**
++	 * When there's only one MAC, PHY regs are typically on ENET0,
++	 * even though the MAC might be on ENET1.
++	 * So remap PHY regs separately.
++	 */
++	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "eth0_mii");
++	if (!res) {
++		res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
++						   "eth1_mii");
++		if (!res)
++			return -ENODEV;
++	}
++	sp->phy_regs = ioremap_nocache(res->start, resource_size(res));
++	if (!sp->phy_regs) {
++		printk("Can't remap phy registers\n");
++		return -ENXIO;
++	}
++
++	sp->dma_regs = ioremap_nocache(ar_eth_base + 0x1000,
++				       sizeof(*sp->dma_regs));
++	if (!sp->dma_regs) {
++		printk("Can't remap DMA registers\n");
++		return -ENXIO;
++	}
++	dev->base_addr = ar_eth_base + 0x1000;
++
++	strncpy(sp->name, "Atheros AR231x", sizeof(sp->name) - 1);
++	sp->name[sizeof(sp->name) - 1] = '\0';
++	memcpy(dev->dev_addr, sp->cfg->macaddr, 6);
++
++	if (ar231x_init(dev)) {
++		/* ar231x_init() calls ar231x_init_cleanup() on error */
++		kfree(dev);
++		return -ENODEV;
++	}
++
++	if (register_netdev(dev)) {
++		printk("%s: register_netdev failed\n", __func__);
++		return -1;
++	}
++
++	printk("%s: %s: %pM, irq %d\n", dev->name, sp->name, dev->dev_addr,
++	       dev->irq);
++
++	sp->mii_bus = mdiobus_alloc();
++	if (sp->mii_bus == NULL)
++		return -1;
++
++	sp->mii_bus->priv = dev;
++	sp->mii_bus->read = ar231x_mdiobus_read;
++	sp->mii_bus->write = ar231x_mdiobus_write;
++	sp->mii_bus->reset = ar231x_mdiobus_reset;
++	sp->mii_bus->name = "ar231x_eth_mii";
++	snprintf(sp->mii_bus->id, MII_BUS_ID_SIZE, "%d", pdev->id);
++
++	mdiobus_register(sp->mii_bus);
++
++	if (ar231x_mdiobus_probe(dev) != 0) {
++		printk(KERN_ERR "%s: mdiobus_probe failed\n", dev->name);
++		rx_tasklet_cleanup(dev);
++		ar231x_init_cleanup(dev);
++		unregister_netdev(dev);
++		kfree(dev);
++		return -ENODEV;
++	}
++
++	return 0;
++}
++
++static void ar231x_multicast_list(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	unsigned int filter;
++
++	filter = sp->eth_regs->mac_control;
++
++	if (dev->flags & IFF_PROMISC)
++		filter |= MAC_CONTROL_PR;
++	else
++		filter &= ~MAC_CONTROL_PR;
++	if ((dev->flags & IFF_ALLMULTI) || (netdev_mc_count(dev) > 0))
++		filter |= MAC_CONTROL_PM;
++	else
++		filter &= ~MAC_CONTROL_PM;
++
++	sp->eth_regs->mac_control = filter;
++}
++
++static void rx_tasklet_cleanup(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++
++	/**
++	 * Tasklet may be scheduled. Need to get it removed from the list
++	 * since we're about to free the struct.
++	 */
++
++	sp->unloading = 1;
++	tasklet_enable(&sp->rx_tasklet);
++	tasklet_kill(&sp->rx_tasklet);
++}
++
++static int ar231x_remove(struct platform_device *pdev)
++{
++	struct net_device *dev = platform_get_drvdata(pdev);
++	struct ar231x_private *sp = netdev_priv(dev);
++
++	rx_tasklet_cleanup(dev);
++	ar231x_init_cleanup(dev);
++	unregister_netdev(dev);
++	mdiobus_unregister(sp->mii_bus);
++	mdiobus_free(sp->mii_bus);
++	kfree(dev);
++	return 0;
++}
++
++/**
++ * Restart the AR2313 ethernet controller.
++ */
++static int ar231x_restart(struct net_device *dev)
++{
++	/* disable interrupts */
++	disable_irq(dev->irq);
++
++	/* stop mac */
++	ar231x_halt(dev);
++
++	/* initialize */
++	ar231x_init(dev);
++
++	/* enable interrupts */
++	enable_irq(dev->irq);
++
++	return 0;
++}
++
++static struct platform_driver ar231x_driver = {
++	.driver.name = "ar231x-eth",
++	.probe = ar231x_probe,
++	.remove = ar231x_remove,
++};
++
++module_platform_driver(ar231x_driver);
++
++static void ar231x_free_descriptors(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++
++	if (sp->rx_ring != NULL) {
++		kfree((void *)KSEG0ADDR(sp->rx_ring));
++		sp->rx_ring = NULL;
++		sp->tx_ring = NULL;
++	}
++}
++
++static int ar231x_allocate_descriptors(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	int size;
++	int j;
++	ar231x_descr_t *space;
++
++	if (sp->rx_ring != NULL) {
++		printk("%s: already done.\n", __func__);
++		return 0;
++	}
++
++	size = sizeof(ar231x_descr_t) * (AR2313_DESCR_ENTRIES * AR2313_QUEUES);
++	space = kmalloc(size, GFP_KERNEL);
++	if (space == NULL)
++		return 1;
++
++	/* invalidate caches */
++	dma_cache_inv((unsigned int)space, size);
++
++	/* now convert pointer to KSEG1 */
++	space = (ar231x_descr_t *)KSEG1ADDR(space);
++
++	memset((void *)space, 0, size);
++
++	sp->rx_ring = space;
++	space += AR2313_DESCR_ENTRIES;
++
++	sp->tx_ring = space;
++	space += AR2313_DESCR_ENTRIES;
++
++	/* Initialize the transmit Descriptors */
++	for (j = 0; j < AR2313_DESCR_ENTRIES; j++) {
++		ar231x_descr_t *td = &sp->tx_ring[j];
++
++		td->status = 0;
++		td->devcs = DMA_TX1_CHAINED;
++		td->addr = 0;
++		td->descr = virt_to_phys(&sp->tx_ring[DSC_NEXT(j)]);
++	}
++
++	return 0;
++}
++
++/**
++ * Generic cleanup handling data allocated during init. Used when the
++ * module is unloaded or if an error occurs during initialization
++ */
++static void ar231x_init_cleanup(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	struct sk_buff *skb;
++	int j;
++
++	ar231x_free_descriptors(dev);
++
++	if (sp->eth_regs)
++		iounmap((void *)sp->eth_regs);
++	if (sp->dma_regs)
++		iounmap((void *)sp->dma_regs);
++	if (sp->phy_regs)
++		iounmap((void *)sp->phy_regs);
++
++	if (sp->rx_skb) {
++		for (j = 0; j < AR2313_DESCR_ENTRIES; j++) {
++			skb = sp->rx_skb[j];
++			if (skb) {
++				sp->rx_skb[j] = NULL;
++				dev_kfree_skb(skb);
++			}
++		}
++		kfree(sp->rx_skb);
++		sp->rx_skb = NULL;
++	}
++
++	if (sp->tx_skb) {
++		for (j = 0; j < AR2313_DESCR_ENTRIES; j++) {
++			skb = sp->tx_skb[j];
++			if (skb) {
++				sp->tx_skb[j] = NULL;
++				dev_kfree_skb(skb);
++			}
++		}
++		kfree(sp->tx_skb);
++		sp->tx_skb = NULL;
++	}
++}
++
++static int ar231x_reset_reg(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	unsigned int ethsal, ethsah;
++	unsigned int flags;
++
++	sp->cfg->reset_set(sp->cfg->reset_mac);
++	mdelay(10);
++	sp->cfg->reset_clear(sp->cfg->reset_mac);
++	mdelay(10);
++	sp->cfg->reset_set(sp->cfg->reset_phy);
++	mdelay(10);
++	sp->cfg->reset_clear(sp->cfg->reset_phy);
++	mdelay(10);
++
++	sp->dma_regs->bus_mode = (DMA_BUS_MODE_SWR);
++	mdelay(10);
++	sp->dma_regs->bus_mode =
++		((32 << DMA_BUS_MODE_PBL_SHIFT) | DMA_BUS_MODE_BLE);
++
++	/* enable interrupts */
++	sp->dma_regs->intr_ena = DMA_STATUS_AIS | DMA_STATUS_NIS |
++				 DMA_STATUS_RI | DMA_STATUS_TI |
++				 DMA_STATUS_FBE;
++	sp->dma_regs->xmt_base = virt_to_phys(sp->tx_ring);
++	sp->dma_regs->rcv_base = virt_to_phys(sp->rx_ring);
++	sp->dma_regs->control =
++		(DMA_CONTROL_SR | DMA_CONTROL_ST | DMA_CONTROL_SF);
++
++	sp->eth_regs->flow_control = (FLOW_CONTROL_FCE);
++	sp->eth_regs->vlan_tag = (0x8100);
++
++	/* Enable Ethernet Interface */
++	flags = (MAC_CONTROL_TE |	/* transmit enable */
++			 MAC_CONTROL_PM |	/* pass mcast */
++			 MAC_CONTROL_F |	/* full duplex */
++			 MAC_CONTROL_HBD);	/* heart beat disabled */
++
++	if (dev->flags & IFF_PROMISC) {	/* set promiscuous mode */
++		flags |= MAC_CONTROL_PR;
++	}
++	sp->eth_regs->mac_control = flags;
++
++	/* Set all Ethernet station address registers to their initial values */
++	ethsah = (((u_int) (dev->dev_addr[5]) << 8) & (u_int) 0x0000FF00) |
++		 (((u_int) (dev->dev_addr[4]) << 0) & (u_int) 0x000000FF);
++
++	ethsal = (((u_int) (dev->dev_addr[3]) << 24) & (u_int) 0xFF000000) |
++		 (((u_int) (dev->dev_addr[2]) << 16) & (u_int) 0x00FF0000) |
++		 (((u_int) (dev->dev_addr[1]) << 8) & (u_int) 0x0000FF00) |
++		 (((u_int) (dev->dev_addr[0]) << 0) & (u_int) 0x000000FF);
++
++	sp->eth_regs->mac_addr[0] = ethsah;
++	sp->eth_regs->mac_addr[1] = ethsal;
++
++	mdelay(10);
++
++	return 0;
++}
++
++static int ar231x_init(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	int ecode = 0;
++
++	/* Allocate descriptors */
++	if (ar231x_allocate_descriptors(dev)) {
++		printk("%s: %s: ar231x_allocate_descriptors failed\n",
++		       dev->name, __func__);
++		ecode = -EAGAIN;
++		goto init_error;
++	}
++
++	/* Get the memory for the skb rings */
++	if (sp->rx_skb == NULL) {
++		sp->rx_skb =
++			kmalloc(sizeof(struct sk_buff *) * AR2313_DESCR_ENTRIES,
++				GFP_KERNEL);
++		if (!(sp->rx_skb)) {
++			printk("%s: %s: rx_skb kmalloc failed\n",
++			       dev->name, __func__);
++			ecode = -EAGAIN;
++			goto init_error;
++		}
++	}
++	memset(sp->rx_skb, 0, sizeof(struct sk_buff *) * AR2313_DESCR_ENTRIES);
++
++	if (sp->tx_skb == NULL) {
++		sp->tx_skb =
++			kmalloc(sizeof(struct sk_buff *) * AR2313_DESCR_ENTRIES,
++				GFP_KERNEL);
++		if (!(sp->tx_skb)) {
++			printk("%s: %s: tx_skb kmalloc failed\n",
++			       dev->name, __func__);
++			ecode = -EAGAIN;
++			goto init_error;
++		}
++	}
++	memset(sp->tx_skb, 0, sizeof(struct sk_buff *) * AR2313_DESCR_ENTRIES);
++
++	/**
++	 * Set tx_csm before we start receiving interrupts, otherwise
++	 * the interrupt handler might think it is supposed to process
++	 * tx ints before we are up and running, which may cause a null
++	 * pointer access in the int handler.
++	 */
++	sp->rx_skbprd = 0;
++	sp->cur_rx = 0;
++	sp->tx_prd = 0;
++	sp->tx_csm = 0;
++
++	/* Zero the stats before starting the interface */
++	memset(&dev->stats, 0, sizeof(dev->stats));
++
++	/**
++	 * We load the ring here as there seem to be no way to tell the
++	 * firmware to wipe the ring without re-initializing it.
++	 */
++	ar231x_load_rx_ring(dev, RX_RING_SIZE);
++
++	/* Init hardware */
++	ar231x_reset_reg(dev);
++
++	/* Get the IRQ */
++	ecode = request_irq(dev->irq, &ar231x_interrupt, 0,
++			    dev->name, dev);
++	if (ecode) {
++		printk(KERN_WARNING "%s: %s: Requested IRQ %d is busy\n",
++		       dev->name, __func__, dev->irq);
++		goto init_error;
++	}
++
++	tasklet_enable(&sp->rx_tasklet);
++
++	return 0;
++
++init_error:
++	ar231x_init_cleanup(dev);
++	return ecode;
++}
++
++/**
++ * Load the rx ring.
++ *
++ * Loading rings is safe without holding the spin lock since this is
++ * done only before the device is enabled, thus no interrupts are
++ * generated and by the interrupt handler/tasklet handler.
++ */
++static void ar231x_load_rx_ring(struct net_device *dev, int nr_bufs)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	short i, idx;
++
++	idx = sp->rx_skbprd;
++
++	for (i = 0; i < nr_bufs; i++) {
++		struct sk_buff *skb;
++		ar231x_descr_t *rd;
++
++		if (sp->rx_skb[idx])
++			break;
++
++		skb = netdev_alloc_skb_ip_align(dev, AR2313_BUFSIZE);
++		if (!skb) {
++			printk("\n\n\n\n %s: No memory in system\n\n\n\n",
++			       __func__);
++			break;
++		}
++
++		/* Make sure IP header starts on a fresh cache line */
++		skb->dev = dev;
++		sp->rx_skb[idx] = skb;
++
++		rd = (ar231x_descr_t *)&sp->rx_ring[idx];
++
++		/* initialize dma descriptor */
++		rd->devcs = ((AR2313_BUFSIZE << DMA_RX1_BSIZE_SHIFT) |
++					 DMA_RX1_CHAINED);
++		rd->addr = virt_to_phys(skb->data);
++		rd->descr = virt_to_phys(&sp->rx_ring[DSC_NEXT(idx)]);
++		rd->status = DMA_RX_OWN;
++
++		idx = DSC_NEXT(idx);
++	}
++
++	if (i)
++		sp->rx_skbprd = idx;
++}
++
++#define AR2313_MAX_PKTS_PER_CALL        64
++
++static int ar231x_rx_int(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	struct sk_buff *skb, *skb_new;
++	ar231x_descr_t *rxdesc;
++	unsigned int status;
++	u32 idx;
++	int pkts = 0;
++	int rval;
++
++	idx = sp->cur_rx;
++
++	/* process at most the entire ring and then wait for another int */
++	while (1) {
++		rxdesc = &sp->rx_ring[idx];
++		status = rxdesc->status;
++
++		if (status & DMA_RX_OWN) {
++			/* SiByte owns descriptor or descr not yet filled in */
++			rval = 0;
++			break;
++		}
++
++		if (++pkts > AR2313_MAX_PKTS_PER_CALL) {
++			rval = 1;
++			break;
++		}
++
++		if ((status & DMA_RX_ERROR) && !(status & DMA_RX_LONG)) {
++			dev->stats.rx_errors++;
++			dev->stats.rx_dropped++;
++
++			/* add statistics counters */
++			if (status & DMA_RX_ERR_CRC)
++				dev->stats.rx_crc_errors++;
++			if (status & DMA_RX_ERR_COL)
++				dev->stats.rx_over_errors++;
++			if (status & DMA_RX_ERR_LENGTH)
++				dev->stats.rx_length_errors++;
++			if (status & DMA_RX_ERR_RUNT)
++				dev->stats.rx_over_errors++;
++			if (status & DMA_RX_ERR_DESC)
++				dev->stats.rx_over_errors++;
++
++		} else {
++			/* alloc new buffer. */
++			skb_new = netdev_alloc_skb_ip_align(dev,
++							    AR2313_BUFSIZE);
++			if (skb_new != NULL) {
++				skb = sp->rx_skb[idx];
++				/* set skb */
++				skb_put(skb, ((status >> DMA_RX_LEN_SHIFT) &
++					0x3fff) - CRC_LEN);
++
++				dev->stats.rx_bytes += skb->len;
++				skb->protocol = eth_type_trans(skb, dev);
++				/* pass the packet to upper layers */
++				netif_rx(skb);
++
++				skb_new->dev = dev;
++				/* reset descriptor's curr_addr */
++				rxdesc->addr = virt_to_phys(skb_new->data);
++
++				dev->stats.rx_packets++;
++				sp->rx_skb[idx] = skb_new;
++			} else {
++				dev->stats.rx_dropped++;
++			}
++		}
++
++		rxdesc->devcs = ((AR2313_BUFSIZE << DMA_RX1_BSIZE_SHIFT) |
++						 DMA_RX1_CHAINED);
++		rxdesc->status = DMA_RX_OWN;
++
++		idx = DSC_NEXT(idx);
++	}
++
++	sp->cur_rx = idx;
++
++	return rval;
++}
++
++static void ar231x_tx_int(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	u32 idx;
++	struct sk_buff *skb;
++	ar231x_descr_t *txdesc;
++	unsigned int status = 0;
++
++	idx = sp->tx_csm;
++
++	while (idx != sp->tx_prd) {
++		txdesc = &sp->tx_ring[idx];
++		status = txdesc->status;
++
++		if (status & DMA_TX_OWN) {
++			/* ar231x dma still owns descr */
++			break;
++		}
++		/* done with this descriptor */
++		dma_unmap_single(NULL, txdesc->addr,
++				 txdesc->devcs & DMA_TX1_BSIZE_MASK,
++				 DMA_TO_DEVICE);
++		txdesc->status = 0;
++
++		if (status & DMA_TX_ERROR) {
++			dev->stats.tx_errors++;
++			dev->stats.tx_dropped++;
++			if (status & DMA_TX_ERR_UNDER)
++				dev->stats.tx_fifo_errors++;
++			if (status & DMA_TX_ERR_HB)
++				dev->stats.tx_heartbeat_errors++;
++			if (status & (DMA_TX_ERR_LOSS | DMA_TX_ERR_LINK))
++				dev->stats.tx_carrier_errors++;
++			if (status & (DMA_TX_ERR_LATE | DMA_TX_ERR_COL |
++			    DMA_TX_ERR_JABBER | DMA_TX_ERR_DEFER))
++				dev->stats.tx_aborted_errors++;
++		} else {
++			/* transmit OK */
++			dev->stats.tx_packets++;
++		}
++
++		skb = sp->tx_skb[idx];
++		sp->tx_skb[idx] = NULL;
++		idx = DSC_NEXT(idx);
++		dev->stats.tx_bytes += skb->len;
++		dev_kfree_skb_irq(skb);
++	}
++
++	sp->tx_csm = idx;
++}
++
++static void rx_tasklet_func(unsigned long data)
++{
++	struct net_device *dev = (struct net_device *)data;
++	struct ar231x_private *sp = netdev_priv(dev);
++
++	if (sp->unloading)
++		return;
++
++	if (ar231x_rx_int(dev)) {
++		tasklet_hi_schedule(&sp->rx_tasklet);
++	} else {
++		unsigned long flags;
++
++		spin_lock_irqsave(&sp->lock, flags);
++		sp->dma_regs->intr_ena |= DMA_STATUS_RI;
++		spin_unlock_irqrestore(&sp->lock, flags);
++	}
++}
++
++static void rx_schedule(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++
++	sp->dma_regs->intr_ena &= ~DMA_STATUS_RI;
++
++	tasklet_hi_schedule(&sp->rx_tasklet);
++}
++
++static irqreturn_t ar231x_interrupt(int irq, void *dev_id)
++{
++	struct net_device *dev = (struct net_device *)dev_id;
++	struct ar231x_private *sp = netdev_priv(dev);
++	unsigned int status, enabled;
++
++	/* clear interrupt */
++	/* Don't clear RI bit if currently disabled */
++	status = sp->dma_regs->status;
++	enabled = sp->dma_regs->intr_ena;
++	sp->dma_regs->status = status & enabled;
++
++	if (status & DMA_STATUS_NIS) {
++		/* normal status */
++		/**
++		 * Don't schedule rx processing if interrupt
++		 * is already disabled.
++		 */
++		if (status & enabled & DMA_STATUS_RI) {
++			/* receive interrupt */
++			rx_schedule(dev);
++		}
++		if (status & DMA_STATUS_TI) {
++			/* transmit interrupt */
++			ar231x_tx_int(dev);
++		}
++	}
++
++	/* abnormal status */
++	if (status & (DMA_STATUS_FBE | DMA_STATUS_TPS))
++		ar231x_restart(dev);
++
++	return IRQ_HANDLED;
++}
++
++static int ar231x_open(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	unsigned int ethsal, ethsah;
++
++	/* reset the hardware, in case the MAC address changed */
++	ethsah = (((u_int) (dev->dev_addr[5]) << 8) & (u_int) 0x0000FF00) |
++		 (((u_int) (dev->dev_addr[4]) << 0) & (u_int) 0x000000FF);
++
++	ethsal = (((u_int) (dev->dev_addr[3]) << 24) & (u_int) 0xFF000000) |
++		 (((u_int) (dev->dev_addr[2]) << 16) & (u_int) 0x00FF0000) |
++		 (((u_int) (dev->dev_addr[1]) << 8) & (u_int) 0x0000FF00) |
++		 (((u_int) (dev->dev_addr[0]) << 0) & (u_int) 0x000000FF);
++
++	sp->eth_regs->mac_addr[0] = ethsah;
++	sp->eth_regs->mac_addr[1] = ethsal;
++
++	mdelay(10);
++
++	dev->mtu = 1500;
++	netif_start_queue(dev);
++
++	sp->eth_regs->mac_control |= MAC_CONTROL_RE;
++
++	phy_start(sp->phy_dev);
++
++	return 0;
++}
++
++static void ar231x_tx_timeout(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	unsigned long flags;
++
++	spin_lock_irqsave(&sp->lock, flags);
++	ar231x_restart(dev);
++	spin_unlock_irqrestore(&sp->lock, flags);
++}
++
++static void ar231x_halt(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	int j;
++
++	tasklet_disable(&sp->rx_tasklet);
++
++	/* kill the MAC */
++	sp->eth_regs->mac_control &= ~(MAC_CONTROL_RE |	/* disable Receives */
++				       MAC_CONTROL_TE);	/* disable Transmits */
++	/* stop dma */
++	sp->dma_regs->control = 0;
++	sp->dma_regs->bus_mode = DMA_BUS_MODE_SWR;
++
++	/* place phy and MAC in reset */
++	sp->cfg->reset_set(sp->cfg->reset_mac);
++	sp->cfg->reset_set(sp->cfg->reset_phy);
++
++	/* free buffers on tx ring */
++	for (j = 0; j < AR2313_DESCR_ENTRIES; j++) {
++		struct sk_buff *skb;
++		ar231x_descr_t *txdesc;
++
++		txdesc = &sp->tx_ring[j];
++		txdesc->descr = 0;
++
++		skb = sp->tx_skb[j];
++		if (skb) {
++			dev_kfree_skb(skb);
++			sp->tx_skb[j] = NULL;
++		}
++	}
++}
++
++/**
++ * close should do nothing. Here's why. It's called when
++ * 'ifconfig bond0 down' is run. If it calls free_irq then
++ * the irq is gone forever ! When bond0 is made 'up' again,
++ * the ar231x_open () does not call request_irq (). Worse,
++ * the call to ar231x_halt() generates a WDOG reset due to
++ * the write to reset register and the box reboots.
++ * Commenting this out is good since it allows the
++ * system to resume when bond0 is made up again.
++ */
++static int ar231x_close(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++#if 0
++	/* Disable interrupts */
++	disable_irq(dev->irq);
++
++	/**
++	 * Without (or before) releasing irq and stopping hardware, this
++	 * is an absolute non-sense, by the way. It will be reset instantly
++	 * by the first irq.
++	 */
++	netif_stop_queue(dev);
++
++	/* stop the MAC and DMA engines */
++	ar231x_halt(dev);
++
++	/* release the interrupt */
++	free_irq(dev->irq, dev);
++
++#endif
++
++	phy_stop(sp->phy_dev);
++
++	return 0;
++}
++
++static int ar231x_start_xmit(struct sk_buff *skb, struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	ar231x_descr_t *td;
++	u32 idx;
++
++	idx = sp->tx_prd;
++	td = &sp->tx_ring[idx];
++
++	if (td->status & DMA_TX_OWN) {
++		/* free skbuf and lie to the caller that we sent it out */
++		dev->stats.tx_dropped++;
++		dev_kfree_skb(skb);
++
++		/* restart transmitter in case locked */
++		sp->dma_regs->xmt_poll = 0;
++		return 0;
++	}
++
++	/* Setup the transmit descriptor. */
++	td->devcs = ((skb->len << DMA_TX1_BSIZE_SHIFT) |
++				 (DMA_TX1_LS | DMA_TX1_IC | DMA_TX1_CHAINED));
++	td->addr = dma_map_single(NULL, skb->data, skb->len, DMA_TO_DEVICE);
++	td->status = DMA_TX_OWN;
++
++	/* kick transmitter last */
++	sp->dma_regs->xmt_poll = 0;
++
++	sp->tx_skb[idx] = skb;
++	idx = DSC_NEXT(idx);
++	sp->tx_prd = idx;
++
++	return 0;
++}
++
++static int ar231x_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++
++	switch (cmd) {
++	case SIOCGMIIPHY:
++	case SIOCGMIIREG:
++	case SIOCSMIIREG:
++		return phy_mii_ioctl(sp->phy_dev, ifr, cmd);
++
++	default:
++		break;
++	}
++
++	return -EOPNOTSUPP;
++}
++
++static void ar231x_adjust_link(struct net_device *dev)
++{
++	struct ar231x_private *sp = netdev_priv(dev);
++	struct phy_device *phydev = sp->phy_dev;
++	u32 mc;
++
++	if (!phydev->link) {
++		if (sp->link) {
++			pr_info("%s: link down\n", dev->name);
++			sp->link = 0;
++		}
++		return;
++	}
++	sp->link = 1;
++
++	pr_info("%s: link up (%uMbps/%s duplex)\n", dev->name,
++		phydev->speed, phydev->duplex ? "full" : "half");
++
++	mc = sp->eth_regs->mac_control;
++	if (phydev->duplex)
++		mc = (mc | MAC_CONTROL_F) & ~MAC_CONTROL_DRO;
++	else
++		mc = (mc | MAC_CONTROL_DRO) & ~MAC_CONTROL_F;
++	sp->eth_regs->mac_control = mc;
++	sp->duplex = phydev->duplex;
++}
++
++#define MII_ADDR(phy, reg) \
++	((reg << MII_ADDR_REG_SHIFT) | (phy << MII_ADDR_PHY_SHIFT))
++
++static int
++ar231x_mdiobus_read(struct mii_bus *bus, int phy_addr, int regnum)
++{
++	struct net_device *const dev = bus->priv;
++	struct ar231x_private *sp = netdev_priv(dev);
++	volatile MII *ethernet = sp->phy_regs;
++
++	ethernet->mii_addr = MII_ADDR(phy_addr, regnum);
++	while (ethernet->mii_addr & MII_ADDR_BUSY)
++		;
++	return ethernet->mii_data >> MII_DATA_SHIFT;
++}
++
++static int
++ar231x_mdiobus_write(struct mii_bus *bus, int phy_addr, int regnum, u16 value)
++{
++	struct net_device *const dev = bus->priv;
++	struct ar231x_private *sp = netdev_priv(dev);
++	volatile MII *ethernet = sp->phy_regs;
++
++	while (ethernet->mii_addr & MII_ADDR_BUSY)
++		;
++	ethernet->mii_data = value << MII_DATA_SHIFT;
++	ethernet->mii_addr = MII_ADDR(phy_addr, regnum) | MII_ADDR_WRITE;
++
++	return 0;
++}
++
++static int ar231x_mdiobus_reset(struct mii_bus *bus)
++{
++	struct net_device *const dev = bus->priv;
++
++	ar231x_reset_reg(dev);
++
++	return 0;
++}
++
++static int ar231x_mdiobus_probe(struct net_device *dev)
++{
++	struct ar231x_private *const sp = netdev_priv(dev);
++	struct phy_device *phydev = NULL;
++
++	/* find the first (lowest address) PHY on the current MAC's MII bus */
++	phydev = phy_find_first(sp->mii_bus);
++	if (!phydev) {
++		printk(KERN_ERR "ar231x: %s: no PHY found\n", dev->name);
++		return -1;
++	}
++
++	/* now we are supposed to have a proper phydev, to attach to... */
++	BUG_ON(phydev->attached_dev);
++
++	phydev = phy_connect(dev, phydev_name(phydev), &ar231x_adjust_link,
++			     PHY_INTERFACE_MODE_MII);
++	if (IS_ERR(phydev)) {
++		printk(KERN_ERR "%s: Could not attach to PHY\n", dev->name);
++		return PTR_ERR(phydev);
++	}
++
++	/* mask with MAC supported features */
++	phydev->supported &= (SUPPORTED_10baseT_Half
++		| SUPPORTED_10baseT_Full
++		| SUPPORTED_100baseT_Half
++		| SUPPORTED_100baseT_Full
++		| SUPPORTED_Autoneg
++		/* | SUPPORTED_Pause | SUPPORTED_Asym_Pause */
++		| SUPPORTED_MII
++		| SUPPORTED_TP);
++
++	phydev->advertising = phydev->supported;
++
++	sp->phy_dev = phydev;
++
++	printk(KERN_INFO "%s: attached PHY driver [%s] (mii_bus:phy_addr=%s)\n",
++	       dev->name, phydev->drv->name, phydev_name(phydev));
++
++	return 0;
++}
++
+--- /dev/null
++++ b/drivers/net/ethernet/atheros/ar231x/ar231x.h
+@@ -0,0 +1,281 @@
++/*
++ * ar231x.h: Linux driver for the Atheros AR231x Ethernet device.
++ *
++ * Copyright (C) 2004 by Sameer Dekate <sdekate@arubanetworks.com>
++ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
++ * Copyright (C) 2006-2009 Felix Fietkau <nbd@nbd.name>
++ *
++ * Thanks to Atheros for providing hardware and documentation
++ * enabling me to write this driver.
++ *
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ */
++
++#ifndef _AR2313_H_
++#define _AR2313_H_
++
++#include <linux/interrupt.h>
++#include <generated/autoconf.h>
++#include <linux/bitops.h>
++#include <ath25_platform.h>
++
++/* probe link timer - 5 secs */
++#define LINK_TIMER    (5*HZ)
++
++#define IS_DMA_TX_INT(X)   (((X) & (DMA_STATUS_TI)) != 0)
++#define IS_DMA_RX_INT(X)   (((X) & (DMA_STATUS_RI)) != 0)
++#define IS_DRIVER_OWNED(X) (((X) & (DMA_TX_OWN))    == 0)
++
++#define AR2313_TX_TIMEOUT (HZ/4)
++
++/* Rings */
++#define DSC_RING_ENTRIES_SIZE	(AR2313_DESCR_ENTRIES * sizeof(struct desc))
++#define DSC_NEXT(idx)	        ((idx + 1) & (AR2313_DESCR_ENTRIES - 1))
++
++#define AR2313_MBGET		2
++#define AR2313_MBSET		3
++#define AR2313_PCI_RECONFIG	4
++#define AR2313_PCI_DUMP		5
++#define AR2313_TEST_PANIC	6
++#define AR2313_TEST_NULLPTR	7
++#define AR2313_READ_DATA	8
++#define AR2313_WRITE_DATA	9
++#define AR2313_GET_VERSION	10
++#define AR2313_TEST_HANG	11
++#define AR2313_SYNC		12
++
++#define DMA_RX_ERR_CRC		BIT(1)
++#define DMA_RX_ERR_DRIB		BIT(2)
++#define DMA_RX_ERR_MII		BIT(3)
++#define DMA_RX_EV2		BIT(5)
++#define DMA_RX_ERR_COL		BIT(6)
++#define DMA_RX_LONG		BIT(7)
++#define DMA_RX_LS		BIT(8)	/* last descriptor */
++#define DMA_RX_FS		BIT(9)	/* first descriptor */
++#define DMA_RX_MF		BIT(10)	/* multicast frame */
++#define DMA_RX_ERR_RUNT		BIT(11)	/* runt frame */
++#define DMA_RX_ERR_LENGTH	BIT(12)	/* length error */
++#define DMA_RX_ERR_DESC		BIT(14)	/* descriptor error */
++#define DMA_RX_ERROR		BIT(15)	/* error summary */
++#define DMA_RX_LEN_MASK		0x3fff0000
++#define DMA_RX_LEN_SHIFT	16
++#define DMA_RX_FILT		BIT(30)
++#define DMA_RX_OWN		BIT(31)	/* desc owned by DMA controller */
++
++#define DMA_RX1_BSIZE_MASK	0x000007ff
++#define DMA_RX1_BSIZE_SHIFT	0
++#define DMA_RX1_CHAINED		BIT(24)
++#define DMA_RX1_RER		BIT(25)
++
++#define DMA_TX_ERR_UNDER	BIT(1)	/* underflow error */
++#define DMA_TX_ERR_DEFER	BIT(2)	/* excessive deferral */
++#define DMA_TX_COL_MASK		0x78
++#define DMA_TX_COL_SHIFT	3
++#define DMA_TX_ERR_HB		BIT(7)	/* hearbeat failure */
++#define DMA_TX_ERR_COL		BIT(8)	/* excessive collisions */
++#define DMA_TX_ERR_LATE		BIT(9)	/* late collision */
++#define DMA_TX_ERR_LINK		BIT(10)	/* no carrier */
++#define DMA_TX_ERR_LOSS		BIT(11)	/* loss of carrier */
++#define DMA_TX_ERR_JABBER	BIT(14)	/* transmit jabber timeout */
++#define DMA_TX_ERROR		BIT(15)	/* frame aborted */
++#define DMA_TX_OWN		BIT(31)	/* descr owned by DMA controller */
++
++#define DMA_TX1_BSIZE_MASK	0x000007ff
++#define DMA_TX1_BSIZE_SHIFT	0
++#define DMA_TX1_CHAINED		BIT(24)	/* chained descriptors */
++#define DMA_TX1_TER		BIT(25)	/* transmit end of ring */
++#define DMA_TX1_FS		BIT(29)	/* first segment */
++#define DMA_TX1_LS		BIT(30)	/* last segment */
++#define DMA_TX1_IC		BIT(31)	/* interrupt on completion */
++
++#define RCVPKT_LENGTH(X)	(X  >> 16)	/* Received pkt Length */
++
++#define MAC_CONTROL_RE		BIT(2)	/* receive enable */
++#define MAC_CONTROL_TE		BIT(3)	/* transmit enable */
++#define MAC_CONTROL_DC		BIT(5)	/* Deferral check */
++#define MAC_CONTROL_ASTP	BIT(8)	/* Auto pad strip */
++#define MAC_CONTROL_DRTY	BIT(10)	/* Disable retry */
++#define MAC_CONTROL_DBF		BIT(11)	/* Disable bcast frames */
++#define MAC_CONTROL_LCC		BIT(12)	/* late collision ctrl */
++#define MAC_CONTROL_HP		BIT(13)	/* Hash Perfect filtering */
++#define MAC_CONTROL_HASH	BIT(14)	/* Unicast hash filtering */
++#define MAC_CONTROL_HO		BIT(15)	/* Hash only filtering */
++#define MAC_CONTROL_PB		BIT(16)	/* Pass Bad frames */
++#define MAC_CONTROL_IF		BIT(17)	/* Inverse filtering */
++#define MAC_CONTROL_PR		BIT(18)	/* promis mode (valid frames only) */
++#define MAC_CONTROL_PM		BIT(19)	/* pass multicast */
++#define MAC_CONTROL_F		BIT(20)	/* full-duplex */
++#define MAC_CONTROL_DRO		BIT(23)	/* Disable Receive Own */
++#define MAC_CONTROL_HBD		BIT(28)	/* heart-beat disabled (MUST BE SET) */
++#define MAC_CONTROL_BLE		BIT(30)	/* big endian mode */
++#define MAC_CONTROL_RA		BIT(31)	/* rcv all (valid and invalid frames) */
++
++#define MII_ADDR_BUSY		BIT(0)
++#define MII_ADDR_WRITE		BIT(1)
++#define MII_ADDR_REG_SHIFT	6
++#define MII_ADDR_PHY_SHIFT	11
++#define MII_DATA_SHIFT		0
++
++#define FLOW_CONTROL_FCE	BIT(1)
++
++#define DMA_BUS_MODE_SWR	BIT(0)	/* software reset */
++#define DMA_BUS_MODE_BLE	BIT(7)	/* big endian mode */
++#define DMA_BUS_MODE_PBL_SHIFT	8	/* programmable burst length 32 */
++#define DMA_BUS_MODE_DBO	BIT(20)	/* big-endian descriptors */
++
++#define DMA_STATUS_TI		BIT(0)	/* transmit interrupt */
++#define DMA_STATUS_TPS		BIT(1)	/* transmit process stopped */
++#define DMA_STATUS_TU		BIT(2)	/* transmit buffer unavailable */
++#define DMA_STATUS_TJT		BIT(3)	/* transmit buffer timeout */
++#define DMA_STATUS_UNF		BIT(5)	/* transmit underflow */
++#define DMA_STATUS_RI		BIT(6)	/* receive interrupt */
++#define DMA_STATUS_RU		BIT(7)	/* receive buffer unavailable */
++#define DMA_STATUS_RPS		BIT(8)	/* receive process stopped */
++#define DMA_STATUS_ETI		BIT(10)	/* early transmit interrupt */
++#define DMA_STATUS_FBE		BIT(13)	/* fatal bus interrupt */
++#define DMA_STATUS_ERI		BIT(14)	/* early receive interrupt */
++#define DMA_STATUS_AIS		BIT(15)	/* abnormal interrupt summary */
++#define DMA_STATUS_NIS		BIT(16)	/* normal interrupt summary */
++#define DMA_STATUS_RS_SHIFT	17	/* receive process state */
++#define DMA_STATUS_TS_SHIFT	20	/* transmit process state */
++#define DMA_STATUS_EB_SHIFT	23	/* error bits */
++
++#define DMA_CONTROL_SR		BIT(1)	/* start receive */
++#define DMA_CONTROL_ST		BIT(13)	/* start transmit */
++#define DMA_CONTROL_SF		BIT(21)	/* store and forward */
++
++typedef struct {
++	volatile unsigned int status;	/* OWN, Device control and status. */
++	volatile unsigned int devcs;	/* pkt Control bits + Length */
++	volatile unsigned int addr;	/* Current Address. */
++	volatile unsigned int descr;	/* Next descriptor in chain. */
++} ar231x_descr_t;
++
++/**
++ * New Combo structure for Both Eth0 AND eth1
++ *
++ * Don't directly access MII related regs since phy chip could be actually
++ * connected to another ethernet block.
++ */
++typedef struct {
++	volatile unsigned int mac_control;	/* 0x00 */
++	volatile unsigned int mac_addr[2];	/* 0x04 - 0x08 */
++	volatile unsigned int mcast_table[2];	/* 0x0c - 0x10 */
++	volatile unsigned int __mii_addr;	/* 0x14 */
++	volatile unsigned int __mii_data;	/* 0x18 */
++	volatile unsigned int flow_control;	/* 0x1c */
++	volatile unsigned int vlan_tag;	/* 0x20 */
++	volatile unsigned int pad[7];	/* 0x24 - 0x3c */
++	volatile unsigned int ucast_table[8];	/* 0x40-0x5c */
++} ETHERNET_STRUCT;
++
++typedef struct {
++	volatile unsigned int mii_addr;
++	volatile unsigned int mii_data;
++} MII;
++
++/********************************************************************
++ * Interrupt controller
++ ********************************************************************/
++
++typedef struct {
++	volatile unsigned int wdog_control;	/* 0x08 */
++	volatile unsigned int wdog_timer;	/* 0x0c */
++	volatile unsigned int misc_status;	/* 0x10 */
++	volatile unsigned int misc_mask;	/* 0x14 */
++	volatile unsigned int global_status;	/* 0x18 */
++	volatile unsigned int reserved;	/* 0x1c */
++	volatile unsigned int reset_control;	/* 0x20 */
++} INTERRUPT;
++
++/********************************************************************
++ * DMA controller
++ ********************************************************************/
++typedef struct {
++	volatile unsigned int bus_mode;	/* 0x00 (CSR0) */
++	volatile unsigned int xmt_poll;	/* 0x04 (CSR1) */
++	volatile unsigned int rcv_poll;	/* 0x08 (CSR2) */
++	volatile unsigned int rcv_base;	/* 0x0c (CSR3) */
++	volatile unsigned int xmt_base;	/* 0x10 (CSR4) */
++	volatile unsigned int status;	/* 0x14 (CSR5) */
++	volatile unsigned int control;	/* 0x18 (CSR6) */
++	volatile unsigned int intr_ena;	/* 0x1c (CSR7) */
++	volatile unsigned int rcv_missed;	/* 0x20 (CSR8) */
++	volatile unsigned int reserved[11];	/* 0x24-0x4c (CSR9-19) */
++	volatile unsigned int cur_tx_buf_addr;	/* 0x50 (CSR20) */
++	volatile unsigned int cur_rx_buf_addr;	/* 0x50 (CSR21) */
++} DMA;
++
++/**
++ * Struct private for the Sibyte.
++ *
++ * Elements are grouped so variables used by the tx handling goes
++ * together, and will go into the same cache lines etc. in order to
++ * avoid cache line contention between the rx and tx handling on SMP.
++ *
++ * Frequently accessed variables are put at the beginning of the
++ * struct to help the compiler generate better/shorter code.
++ */
++struct ar231x_private {
++	struct net_device *dev;
++	int version;
++	u32 mb[2];
++
++	volatile MII *phy_regs;
++	volatile ETHERNET_STRUCT *eth_regs;
++	volatile DMA *dma_regs;
++	struct ar231x_eth *cfg;
++
++	spinlock_t lock;			/* Serialise access to device */
++
++	/* RX and TX descriptors, must be adjacent */
++	ar231x_descr_t *rx_ring;
++	ar231x_descr_t *tx_ring;
++
++	struct sk_buff **rx_skb;
++	struct sk_buff **tx_skb;
++
++	/* RX elements */
++	u32 rx_skbprd;
++	u32 cur_rx;
++
++	/* TX elements */
++	u32 tx_prd;
++	u32 tx_csm;
++
++	/* Misc elements */
++	char name[48];
++	struct {
++		u32 address;
++		u32 length;
++		char *mapping;
++	} desc;
++
++	unsigned short link;		/* 0 - link down, 1 - link up */
++	unsigned short duplex;		/* 0 - half, 1 - full */
++
++	struct tasklet_struct rx_tasklet;
++	int unloading;
++
++	struct phy_device *phy_dev;
++	struct mii_bus *mii_bus;
++};
++
++/* Prototypes */
++static int ar231x_init(struct net_device *dev);
++#ifdef TX_TIMEOUT
++static void ar231x_tx_timeout(struct net_device *dev);
++#endif
++static int ar231x_restart(struct net_device *dev);
++static void ar231x_load_rx_ring(struct net_device *dev, int bufs);
++static irqreturn_t ar231x_interrupt(int irq, void *dev_id);
++static int ar231x_open(struct net_device *dev);
++static int ar231x_start_xmit(struct sk_buff *skb, struct net_device *dev);
++static int ar231x_close(struct net_device *dev);
++static int ar231x_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd);
++static void ar231x_init_cleanup(struct net_device *dev);
++
++#endif	/* _AR2313_H_ */
+--- a/arch/mips/ath25/ar2315_regs.h
++++ b/arch/mips/ath25/ar2315_regs.h
+@@ -57,6 +57,9 @@
+ #define AR2315_PCI_EXT_BASE	0x80000000	/* PCI external */
+ #define AR2315_PCI_EXT_SIZE	0x40000000
+ 
++/* MII registers offset inside Ethernet MMR region */
++#define AR2315_ENET0_MII_BASE	(AR2315_ENET0_BASE + 0x14)
++
+ /*
+  * Configuration registers
+  */
+--- a/arch/mips/ath25/ar5312_regs.h
++++ b/arch/mips/ath25/ar5312_regs.h
+@@ -64,6 +64,10 @@
+ #define AR5312_AR5312_REV7	0x0057		/* AR5312 WMAC (AP30-040) */
+ #define AR5312_AR2313_REV8	0x0058		/* AR2313 WMAC (AP43-030) */
+ 
++/* MII registers offset inside Ethernet MMR region */
++#define AR5312_ENET0_MII_BASE	(AR5312_ENET0_BASE + 0x14)
++#define AR5312_ENET1_MII_BASE	(AR5312_ENET1_BASE + 0x14)
++
+ /* Reset/Timer Block Address Map */
+ #define AR5312_TIMER		0x0000 /* countdown timer */
+ #define AR5312_RELOAD		0x0004 /* timer reload value */
+--- a/arch/mips/ath25/ar2315.c
++++ b/arch/mips/ath25/ar2315.c
+@@ -136,6 +136,8 @@ static void ar2315_irq_dispatch(void)
+ 
+ 	if (pending & CAUSEF_IP3)
+ 		do_IRQ(AR2315_IRQ_WLAN0);
++	else if (pending & CAUSEF_IP4)
++		do_IRQ(AR2315_IRQ_ENET0);
+ #ifdef CONFIG_PCI_AR2315
+ 	else if (pending & CAUSEF_IP5)
+ 		do_IRQ(AR2315_IRQ_LCBUS_PCI);
+@@ -169,6 +171,29 @@ void __init ar2315_arch_init_irq(void)
+ 	ar2315_misc_irq_domain = domain;
+ }
+ 
++static void ar2315_device_reset_set(u32 mask)
++{
++	u32 val;
++
++	val = ar2315_rst_reg_read(AR2315_RESET);
++	ar2315_rst_reg_write(AR2315_RESET, val | mask);
++}
++
++static void ar2315_device_reset_clear(u32 mask)
++{
++	u32 val;
++
++	val = ar2315_rst_reg_read(AR2315_RESET);
++	ar2315_rst_reg_write(AR2315_RESET, val & ~mask);
++}
++
++static struct ar231x_eth ar2315_eth_data = {
++	.reset_set = ar2315_device_reset_set,
++	.reset_clear = ar2315_device_reset_clear,
++	.reset_mac = AR2315_RESET_ENET0,
++	.reset_phy = AR2315_RESET_EPHY0,
++};
++
+ static struct resource ar2315_gpio_res[] = {
+ 	{
+ 		.name = "ar2315-gpio",
+@@ -205,6 +230,11 @@ void __init ar2315_init_devices(void)
+ 	ar2315_gpio_res[1].end = ar2315_gpio_res[1].start;
+ 	platform_device_register(&ar2315_gpio);
+ 
++	ar2315_eth_data.macaddr = ath25_board.config->enet0_mac;
++	ath25_add_ethernet(0, AR2315_ENET0_BASE, "eth0_mii",
++			   AR2315_ENET0_MII_BASE, AR2315_IRQ_ENET0,
++			   &ar2315_eth_data);
++
+ 	ath25_add_wmac(0, AR2315_WLAN0_BASE, AR2315_IRQ_WLAN0);
+ }
+ 
+--- a/arch/mips/ath25/ar5312.c
++++ b/arch/mips/ath25/ar5312.c
+@@ -132,6 +132,10 @@ static void ar5312_irq_dispatch(void)
+ 
+ 	if (pending & CAUSEF_IP2)
+ 		do_IRQ(AR5312_IRQ_WLAN0);
++	else if (pending & CAUSEF_IP3)
++		do_IRQ(AR5312_IRQ_ENET0);
++	else if (pending & CAUSEF_IP4)
++		do_IRQ(AR5312_IRQ_ENET1);
+ 	else if (pending & CAUSEF_IP5)
+ 		do_IRQ(AR5312_IRQ_WLAN1);
+ 	else if (pending & CAUSEF_IP6)
+@@ -163,6 +167,36 @@ void __init ar5312_arch_init_irq(void)
+ 	ar5312_misc_irq_domain = domain;
+ }
+ 
++static void ar5312_device_reset_set(u32 mask)
++{
++	u32 val;
++
++	val = ar5312_rst_reg_read(AR5312_RESET);
++	ar5312_rst_reg_write(AR5312_RESET, val | mask);
++}
++
++static void ar5312_device_reset_clear(u32 mask)
++{
++	u32 val;
++
++	val = ar5312_rst_reg_read(AR5312_RESET);
++	ar5312_rst_reg_write(AR5312_RESET, val & ~mask);
++}
++
++static struct ar231x_eth ar5312_eth0_data = {
++	.reset_set = ar5312_device_reset_set,
++	.reset_clear = ar5312_device_reset_clear,
++	.reset_mac = AR5312_RESET_ENET0,
++	.reset_phy = AR5312_RESET_EPHY0,
++};
++
++static struct ar231x_eth ar5312_eth1_data = {
++	.reset_set = ar5312_device_reset_set,
++	.reset_clear = ar5312_device_reset_clear,
++	.reset_mac = AR5312_RESET_ENET1,
++	.reset_phy = AR5312_RESET_EPHY1,
++};
++
+ static struct physmap_flash_data ar5312_flash_data = {
+ 	.width = 2,
+ };
+@@ -243,6 +277,7 @@ static void __init ar5312_flash_init(voi
+ void __init ar5312_init_devices(void)
+ {
+ 	struct ath25_boarddata *config;
++	u8 *c;
+ 
+ 	ar5312_flash_init();
+ 
+@@ -266,8 +301,30 @@ void __init ar5312_init_devices(void)
+ 
+ 	platform_device_register(&ar5312_gpio);
+ 
++	/* Fix up MAC addresses if necessary */
++	if (is_broadcast_ether_addr(config->enet0_mac))
++		ether_addr_copy(config->enet0_mac, config->enet1_mac);
++
++	/* If ENET0 and ENET1 have the same mac address,
++	 * increment the one from ENET1 */
++	if (ether_addr_equal(config->enet0_mac, config->enet1_mac)) {
++		c = config->enet1_mac + 5;
++		while ((c >= config->enet1_mac) && !(++(*c)))
++			c--;
++	}
++
+ 	switch (ath25_soc) {
+ 	case ATH25_SOC_AR5312:
++		ar5312_eth0_data.macaddr = config->enet0_mac;
++		ath25_add_ethernet(0, AR5312_ENET0_BASE, "eth0_mii",
++				   AR5312_ENET0_MII_BASE, AR5312_IRQ_ENET0,
++				   &ar5312_eth0_data);
++
++		ar5312_eth1_data.macaddr = config->enet1_mac;
++		ath25_add_ethernet(1, AR5312_ENET1_BASE, "eth1_mii",
++				   AR5312_ENET1_MII_BASE, AR5312_IRQ_ENET1,
++				   &ar5312_eth1_data);
++
+ 		if (!ath25_board.radio)
+ 			return;
+ 
+@@ -276,8 +333,18 @@ void __init ar5312_init_devices(void)
+ 
+ 		ath25_add_wmac(0, AR5312_WLAN0_BASE, AR5312_IRQ_WLAN0);
+ 		break;
++	/*
++	 * AR2312/3 ethernet uses the PHY of ENET0, but the MAC
++	 * of ENET1. Atheros calls it 'twisted' for a reason :)
++	 */
+ 	case ATH25_SOC_AR2312:
+ 	case ATH25_SOC_AR2313:
++		ar5312_eth1_data.reset_phy = ar5312_eth0_data.reset_phy;
++		ar5312_eth1_data.macaddr = config->enet0_mac;
++		ath25_add_ethernet(1, AR5312_ENET1_BASE, "eth0_mii",
++				   AR5312_ENET0_MII_BASE, AR5312_IRQ_ENET1,
++				   &ar5312_eth1_data);
++
+ 		if (!ath25_board.radio)
+ 			return;
+ 		break;
+--- a/arch/mips/ath25/devices.h
++++ b/arch/mips/ath25/devices.h
+@@ -33,6 +33,8 @@ extern struct ar231x_board_config ath25_
+ extern void (*ath25_irq_dispatch)(void);
+ 
+ int ath25_find_config(phys_addr_t offset, unsigned long size);
++int ath25_add_ethernet(int nr, u32 base, const char *mii_name, u32 mii_base,
++		       int irq, void *pdata);
+ void ath25_serial_setup(u32 mapbase, int irq, unsigned int uartclk);
+ int ath25_add_wmac(int nr, u32 base, int irq);
+ 
+--- a/arch/mips/ath25/devices.c
++++ b/arch/mips/ath25/devices.c
+@@ -13,6 +13,51 @@
+ struct ar231x_board_config ath25_board;
+ enum ath25_soc_type ath25_soc = ATH25_SOC_UNKNOWN;
+ 
++static struct resource ath25_eth0_res[] = {
++	{
++		.name = "eth0_membase",
++		.flags = IORESOURCE_MEM,
++	},
++	{
++		.name = "eth0_mii",
++		.flags = IORESOURCE_MEM,
++	},
++	{
++		.name = "eth0_irq",
++		.flags = IORESOURCE_IRQ,
++	}
++};
++
++static struct resource ath25_eth1_res[] = {
++	{
++		.name = "eth1_membase",
++		.flags = IORESOURCE_MEM,
++	},
++	{
++		.name = "eth1_mii",
++		.flags = IORESOURCE_MEM,
++	},
++	{
++		.name = "eth1_irq",
++		.flags = IORESOURCE_IRQ,
++	}
++};
++
++static struct platform_device ath25_eth[] = {
++	{
++		.id = 0,
++		.name = "ar231x-eth",
++		.resource = ath25_eth0_res,
++		.num_resources = ARRAY_SIZE(ath25_eth0_res)
++	},
++	{
++		.id = 1,
++		.name = "ar231x-eth",
++		.resource = ath25_eth1_res,
++		.num_resources = ARRAY_SIZE(ath25_eth1_res)
++	}
++};
++
+ static struct resource ath25_wmac0_res[] = {
+ 	{
+ 		.name = "wmac0_membase",
+@@ -71,6 +116,25 @@ const char *get_system_type(void)
+ 	return soc_type_strings[ath25_soc];
+ }
+ 
++int __init ath25_add_ethernet(int nr, u32 base, const char *mii_name,
++			      u32 mii_base, int irq, void *pdata)
++{
++	struct resource *res;
++
++	ath25_eth[nr].dev.platform_data = pdata;
++	res = &ath25_eth[nr].resource[0];
++	res->start = base;
++	res->end = base + 0x2000 - 1;
++	res++;
++	res->name = mii_name;
++	res->start = mii_base;
++	res->end = mii_base + 8 - 1;
++	res++;
++	res->start = irq;
++	res->end = irq;
++	return platform_device_register(&ath25_eth[nr]);
++}
++
+ void __init ath25_serial_setup(u32 mapbase, int irq, unsigned int uartclk)
+ {
+ 	struct uart_port s;
+--- a/arch/mips/include/asm/mach-ath25/ath25_platform.h
++++ b/arch/mips/include/asm/mach-ath25/ath25_platform.h
+@@ -71,4 +71,15 @@ struct ar231x_board_config {
+ 	const char *radio;
+ };
+ 
++/*
++ * Platform device information for the Ethernet MAC
++ */
++struct ar231x_eth {
++	void (*reset_set)(u32);
++	void (*reset_clear)(u32);
++	u32 reset_mac;
++	u32 reset_phy;
++	char *macaddr;
++};
++
+ #endif /* __ASM_MACH_ATH25_PLATFORM_H */
diff --git a/target/linux/ath25/patches-5.4/120-spiflash.patch b/target/linux/ath25/patches-5.4/120-spiflash.patch
new file mode 100644
index 0000000000..0a2161fb7e
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/120-spiflash.patch
@@ -0,0 +1,634 @@
+--- a/drivers/mtd/devices/Kconfig
++++ b/drivers/mtd/devices/Kconfig
+@@ -130,6 +130,10 @@ config MTD_BCM47XXSFLASH
+ 	  registered by bcma as platform devices. This enables driver for
+ 	  serial flash memories.
+ 
++config MTD_AR2315
++	tristate "Atheros AR2315+ SPI Flash support"
++	depends on SOC_AR2315
++
+ config MTD_SLRAM
+ 	tristate "Uncached system RAM"
+ 	help
+--- a/drivers/mtd/devices/Makefile
++++ b/drivers/mtd/devices/Makefile
+@@ -16,6 +16,7 @@ obj-$(CONFIG_MTD_M25P80)	+= m25p80.o
+ obj-$(CONFIG_MTD_MCHP23K256)	+= mchp23k256.o
+ obj-$(CONFIG_MTD_SPEAR_SMI)	+= spear_smi.o
+ obj-$(CONFIG_MTD_SST25L)	+= sst25l.o
++obj-$(CONFIG_MTD_AR2315)	+= ar2315.o
+ obj-$(CONFIG_MTD_BCM47XXSFLASH)	+= bcm47xxsflash.o
+ obj-$(CONFIG_MTD_ST_SPI_FSM)    += st_spi_fsm.o
+ obj-$(CONFIG_MTD_POWERNV_FLASH)	+= powernv_flash.o
+--- /dev/null
++++ b/drivers/mtd/devices/ar2315.c
+@@ -0,0 +1,459 @@
++
++/*
++ * MTD driver for the SPI Flash Memory support on Atheros AR2315
++ *
++ * Copyright (c) 2005-2006 Atheros Communications Inc.
++ * Copyright (C) 2006-2007 FON Technology, SL.
++ * Copyright (C) 2006-2007 Imre Kaloz <kaloz@openwrt.org>
++ * Copyright (C) 2006-2009 Felix Fietkau <nbd@nbd.name>
++ * Copyright (C) 2012 Alexandros C. Couloumbis <alex@ozo.com>
++ *
++ * This code is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License version 2 as
++ * published by the Free Software Foundation.
++ *
++ */
++
++#include <linux/kernel.h>
++#include <linux/module.h>
++#include <linux/types.h>
++#include <linux/errno.h>
++#include <linux/slab.h>
++#include <linux/mtd/mtd.h>
++#include <linux/mtd/partitions.h>
++#include <linux/platform_device.h>
++#include <linux/sched.h>
++#include <linux/delay.h>
++#include <linux/io.h>
++#include <linux/mutex.h>
++
++#include "ar2315_spiflash.h"
++
++#define DRIVER_NAME "ar2315-spiflash"
++
++#define busy_wait(_priv, _condition, _wait) do { \
++	while (_condition) { \
++		if (_wait > 1) \
++			msleep(_wait); \
++		else if ((_wait == 1) && need_resched()) \
++			schedule(); \
++		else \
++			udelay(1); \
++	} \
++} while (0)
++
++enum {
++	FLASH_NONE,
++	FLASH_1MB,
++	FLASH_2MB,
++	FLASH_4MB,
++	FLASH_8MB,
++	FLASH_16MB,
++};
++
++/* Flash configuration table */
++struct flashconfig {
++	u32 byte_cnt;
++	u32 sector_cnt;
++	u32 sector_size;
++};
++
++static const struct flashconfig flashconfig_tbl[] = {
++	[FLASH_NONE] = { 0, 0, 0},
++	[FLASH_1MB]  = { STM_1MB_BYTE_COUNT, STM_1MB_SECTOR_COUNT,
++			 STM_1MB_SECTOR_SIZE},
++	[FLASH_2MB]  = { STM_2MB_BYTE_COUNT, STM_2MB_SECTOR_COUNT,
++			 STM_2MB_SECTOR_SIZE},
++	[FLASH_4MB]  = { STM_4MB_BYTE_COUNT, STM_4MB_SECTOR_COUNT,
++			 STM_4MB_SECTOR_SIZE},
++	[FLASH_8MB]  = { STM_8MB_BYTE_COUNT, STM_8MB_SECTOR_COUNT,
++			 STM_8MB_SECTOR_SIZE},
++	[FLASH_16MB] = { STM_16MB_BYTE_COUNT, STM_16MB_SECTOR_COUNT,
++			 STM_16MB_SECTOR_SIZE}
++};
++
++/* Mapping of generic opcodes to STM serial flash opcodes */
++enum {
++	SPI_WRITE_ENABLE,
++	SPI_WRITE_DISABLE,
++	SPI_RD_STATUS,
++	SPI_WR_STATUS,
++	SPI_RD_DATA,
++	SPI_FAST_RD_DATA,
++	SPI_PAGE_PROGRAM,
++	SPI_SECTOR_ERASE,
++	SPI_BULK_ERASE,
++	SPI_DEEP_PWRDOWN,
++	SPI_RD_SIG,
++};
++
++struct opcodes {
++	__u16 code;
++	__s8 tx_cnt;
++	__s8 rx_cnt;
++};
++
++static const struct opcodes stm_opcodes[] = {
++	[SPI_WRITE_ENABLE] = {STM_OP_WR_ENABLE, 1, 0},
++	[SPI_WRITE_DISABLE] = {STM_OP_WR_DISABLE, 1, 0},
++	[SPI_RD_STATUS] = {STM_OP_RD_STATUS, 1, 1},
++	[SPI_WR_STATUS] = {STM_OP_WR_STATUS, 1, 0},
++	[SPI_RD_DATA] = {STM_OP_RD_DATA, 4, 4},
++	[SPI_FAST_RD_DATA] = {STM_OP_FAST_RD_DATA, 5, 0},
++	[SPI_PAGE_PROGRAM] = {STM_OP_PAGE_PGRM, 8, 0},
++	[SPI_SECTOR_ERASE] = {STM_OP_SECTOR_ERASE, 4, 0},
++	[SPI_BULK_ERASE] = {STM_OP_BULK_ERASE, 1, 0},
++	[SPI_DEEP_PWRDOWN] = {STM_OP_DEEP_PWRDOWN, 1, 0},
++	[SPI_RD_SIG] = {STM_OP_RD_SIG, 4, 1},
++};
++
++/* Driver private data structure */
++struct spiflash_priv {
++	struct mtd_info mtd;
++	void __iomem *readaddr; /* memory mapped data for read  */
++	void __iomem *mmraddr;  /* memory mapped register space */
++	struct mutex lock;	/* serialize registers access */
++};
++
++#define to_spiflash(_mtd) container_of(_mtd, struct spiflash_priv, mtd)
++
++enum {
++	FL_READY,
++	FL_READING,
++	FL_ERASING,
++	FL_WRITING
++};
++
++/*****************************************************************************/
++
++static u32
++spiflash_read_reg(struct spiflash_priv *priv, int reg)
++{
++	return ioread32(priv->mmraddr + reg);
++}
++
++static void
++spiflash_write_reg(struct spiflash_priv *priv, int reg, u32 data)
++{
++	iowrite32(data, priv->mmraddr + reg);
++}
++
++static u32
++spiflash_wait_busy(struct spiflash_priv *priv)
++{
++	u32 reg;
++
++	busy_wait(priv, (reg = spiflash_read_reg(priv, SPI_FLASH_CTL)) &
++		SPI_CTL_BUSY, 0);
++	return reg;
++}
++
++static u32
++spiflash_sendcmd(struct spiflash_priv *priv, int opcode, u32 addr)
++{
++	const struct opcodes *op;
++	u32 reg, mask;
++
++	op = &stm_opcodes[opcode];
++	reg = spiflash_wait_busy(priv);
++	spiflash_write_reg(priv, SPI_FLASH_OPCODE,
++			   ((u32)op->code) | (addr << 8));
++
++	reg &= ~SPI_CTL_TX_RX_CNT_MASK;
++	reg |= SPI_CTL_START | op->tx_cnt | (op->rx_cnt << 4);
++
++	spiflash_write_reg(priv, SPI_FLASH_CTL, reg);
++	spiflash_wait_busy(priv);
++
++	if (!op->rx_cnt)
++		return 0;
++
++	reg = spiflash_read_reg(priv, SPI_FLASH_DATA);
++
++	switch (op->rx_cnt) {
++	case 1:
++		mask = 0x000000ff;
++		break;
++	case 2:
++		mask = 0x0000ffff;
++		break;
++	case 3:
++		mask = 0x00ffffff;
++		break;
++	default:
++		mask = 0xffffffff;
++		break;
++	}
++	reg &= mask;
++
++	return reg;
++}
++
++/*
++ * Probe SPI flash device
++ * Function returns 0 for failure.
++ * and flashconfig_tbl array index for success.
++ */
++static int
++spiflash_probe_chip(struct platform_device *pdev, struct spiflash_priv *priv)
++{
++	u32 sig = spiflash_sendcmd(priv, SPI_RD_SIG, 0);
++	int flash_size;
++
++	switch (sig) {
++	case STM_8MBIT_SIGNATURE:
++		flash_size = FLASH_1MB;
++		break;
++	case STM_16MBIT_SIGNATURE:
++		flash_size = FLASH_2MB;
++		break;
++	case STM_32MBIT_SIGNATURE:
++		flash_size = FLASH_4MB;
++		break;
++	case STM_64MBIT_SIGNATURE:
++		flash_size = FLASH_8MB;
++		break;
++	case STM_128MBIT_SIGNATURE:
++		flash_size = FLASH_16MB;
++		break;
++	default:
++		dev_warn(&pdev->dev, "read of flash device signature failed!\n");
++		return 0;
++	}
++
++	return flash_size;
++}
++
++static void
++spiflash_wait_complete(struct spiflash_priv *priv, unsigned int timeout)
++{
++	busy_wait(priv, spiflash_sendcmd(priv, SPI_RD_STATUS, 0) &
++		SPI_STATUS_WIP, timeout);
++}
++
++static int
++spiflash_erase(struct mtd_info *mtd, struct erase_info *instr)
++{
++	struct spiflash_priv *priv = to_spiflash(mtd);
++	const struct opcodes *op;
++	u32 temp, reg;
++
++	if (instr->addr + instr->len > mtd->size)
++		return -EINVAL;
++
++	mutex_lock(&priv->lock);
++
++	spiflash_sendcmd(priv, SPI_WRITE_ENABLE, 0);
++	reg = spiflash_wait_busy(priv);
++
++	op = &stm_opcodes[SPI_SECTOR_ERASE];
++	temp = ((u32)instr->addr << 8) | (u32)(op->code);
++	spiflash_write_reg(priv, SPI_FLASH_OPCODE, temp);
++
++	reg &= ~SPI_CTL_TX_RX_CNT_MASK;
++	reg |= op->tx_cnt | SPI_CTL_START;
++	spiflash_write_reg(priv, SPI_FLASH_CTL, reg);
++
++	spiflash_wait_complete(priv, 20);
++
++	mutex_unlock(&priv->lock);
++
++	instr->state = MTD_ERASE_DONE;
++	mtd_erase_callback(instr);
++
++	return 0;
++}
++
++static int
++spiflash_read(struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen,
++	      u_char *buf)
++{
++	struct spiflash_priv *priv = to_spiflash(mtd);
++
++	if (!len)
++		return 0;
++
++	if (from + len > mtd->size)
++		return -EINVAL;
++
++	*retlen = len;
++
++	mutex_lock(&priv->lock);
++
++	memcpy_fromio(buf, priv->readaddr + from, len);
++
++	mutex_unlock(&priv->lock);
++
++	return 0;
++}
++
++static int
++spiflash_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
++	       const u8 *buf)
++{
++	struct spiflash_priv *priv = to_spiflash(mtd);
++	u32 opcode, bytes_left;
++
++	*retlen = 0;
++
++	if (!len)
++		return 0;
++
++	if (to + len > mtd->size)
++		return -EINVAL;
++
++	bytes_left = len;
++
++	do {
++		u32 read_len, reg, page_offset, spi_data = 0;
++
++		read_len = min(bytes_left, sizeof(u32));
++
++		/* 32-bit writes cannot span across a page boundary
++		 * (256 bytes). This types of writes require two page
++		 * program operations to handle it correctly. The STM part
++		 * will write the overflow data to the beginning of the
++		 * current page as opposed to the subsequent page.
++		 */
++		page_offset = (to & (STM_PAGE_SIZE - 1)) + read_len;
++
++		if (page_offset > STM_PAGE_SIZE)
++			read_len -= (page_offset - STM_PAGE_SIZE);
++
++		mutex_lock(&priv->lock);
++
++		spiflash_sendcmd(priv, SPI_WRITE_ENABLE, 0);
++		spi_data = 0;
++		switch (read_len) {
++		case 4:
++			spi_data |= buf[3] << 24;
++			/* fall through */
++		case 3:
++			spi_data |= buf[2] << 16;
++			/* fall through */
++		case 2:
++			spi_data |= buf[1] << 8;
++			/* fall through */
++		case 1:
++			spi_data |= buf[0] & 0xff;
++			break;
++		default:
++			break;
++		}
++
++		spiflash_write_reg(priv, SPI_FLASH_DATA, spi_data);
++		opcode = stm_opcodes[SPI_PAGE_PROGRAM].code |
++			(to & 0x00ffffff) << 8;
++		spiflash_write_reg(priv, SPI_FLASH_OPCODE, opcode);
++
++		reg = spiflash_read_reg(priv, SPI_FLASH_CTL);
++		reg &= ~SPI_CTL_TX_RX_CNT_MASK;
++		reg |= (read_len + 4) | SPI_CTL_START;
++		spiflash_write_reg(priv, SPI_FLASH_CTL, reg);
++
++		spiflash_wait_complete(priv, 1);
++
++		mutex_unlock(&priv->lock);
++
++		bytes_left -= read_len;
++		to += read_len;
++		buf += read_len;
++
++		*retlen += read_len;
++	} while (bytes_left != 0);
++
++	return 0;
++}
++
++#if defined CONFIG_MTD_REDBOOT_PARTS || CONFIG_MTD_MYLOADER_PARTS
++static const char * const part_probe_types[] = {
++	"cmdlinepart", "RedBoot", "MyLoader", NULL
++};
++#endif
++
++static int
++spiflash_probe(struct platform_device *pdev)
++{
++	struct spiflash_priv *priv;
++	struct mtd_info *mtd;
++	struct resource *res;
++	int index;
++	int result = 0;
++
++	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
++	if (!priv)
++		return -ENOMEM;
++
++	mutex_init(&priv->lock);
++	mtd = &priv->mtd;
++
++	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
++	priv->mmraddr = devm_ioremap_resource(&pdev->dev, res);
++	if (IS_ERR(priv->mmraddr)) {
++		dev_warn(&pdev->dev, "failed to map flash MMR\n");
++		return PTR_ERR(priv->mmraddr);
++	}
++
++	index = spiflash_probe_chip(pdev, priv);
++	if (!index) {
++		dev_warn(&pdev->dev, "found no flash device\n");
++		return -ENODEV;
++	}
++
++	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
++	priv->readaddr = devm_ioremap_resource(&pdev->dev, res);
++	if (IS_ERR(priv->readaddr)) {
++		dev_warn(&pdev->dev, "failed to map flash read mem\n");
++		return PTR_ERR(priv->readaddr);
++	}
++
++	platform_set_drvdata(pdev, priv);
++	mtd->name = "spiflash";
++	mtd->type = MTD_NORFLASH;
++	mtd->flags = (MTD_CAP_NORFLASH|MTD_WRITEABLE);
++	mtd->size = flashconfig_tbl[index].byte_cnt;
++	mtd->erasesize = flashconfig_tbl[index].sector_size;
++	mtd->writesize = 1;
++	mtd->numeraseregions = 0;
++	mtd->eraseregions = NULL;
++	mtd->_erase = spiflash_erase;
++	mtd->_read = spiflash_read;
++	mtd->_write = spiflash_write;
++	mtd->owner = THIS_MODULE;
++
++	dev_info(&pdev->dev, "%lld Kbytes flash detected\n", mtd->size >> 10);
++
++#if defined CONFIG_MTD_REDBOOT_PARTS || CONFIG_MTD_MYLOADER_PARTS
++	/* parse redboot partitions */
++
++	result = mtd_device_parse_register(mtd, part_probe_types,
++					   NULL, NULL, 0);
++#endif
++
++	return result;
++}
++
++static int
++spiflash_remove(struct platform_device *pdev)
++{
++	struct spiflash_priv *priv = platform_get_drvdata(pdev);
++
++	mtd_device_unregister(&priv->mtd);
++
++	return 0;
++}
++
++static struct platform_driver spiflash_driver = {
++	.driver.name = DRIVER_NAME,
++	.probe = spiflash_probe,
++	.remove = spiflash_remove,
++};
++
++module_platform_driver(spiflash_driver);
++
++MODULE_LICENSE("GPL");
++MODULE_AUTHOR("OpenWrt.org");
++MODULE_AUTHOR("Atheros Communications Inc");
++MODULE_DESCRIPTION("MTD driver for SPI Flash on Atheros AR2315+ SOC");
++MODULE_ALIAS("platform:" DRIVER_NAME);
++
+--- /dev/null
++++ b/drivers/mtd/devices/ar2315_spiflash.h
+@@ -0,0 +1,106 @@
++/*
++ * Atheros AR2315 SPI Flash Memory support header file.
++ *
++ * Copyright (c) 2005, Atheros Communications Inc.
++ * Copyright (C) 2006 FON Technology, SL.
++ * Copyright (C) 2006 Imre Kaloz <kaloz@openwrt.org>
++ * Copyright (C) 2006-2009 Felix Fietkau <nbd@nbd.name>
++ *
++ * This code is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License version 2 as
++ * published by the Free Software Foundation.
++ *
++ */
++#ifndef __AR2315_SPIFLASH_H
++#define __AR2315_SPIFLASH_H
++
++#define STM_PAGE_SIZE           256
++
++#define SFI_WRITE_BUFFER_SIZE   4
++#define SFI_FLASH_ADDR_MASK     0x00ffffff
++
++#define STM_8MBIT_SIGNATURE     0x13
++#define STM_M25P80_BYTE_COUNT   1048576
++#define STM_M25P80_SECTOR_COUNT 16
++#define STM_M25P80_SECTOR_SIZE  0x10000
++
++#define STM_16MBIT_SIGNATURE    0x14
++#define STM_M25P16_BYTE_COUNT   2097152
++#define STM_M25P16_SECTOR_COUNT 32
++#define STM_M25P16_SECTOR_SIZE  0x10000
++
++#define STM_32MBIT_SIGNATURE    0x15
++#define STM_M25P32_BYTE_COUNT   4194304
++#define STM_M25P32_SECTOR_COUNT 64
++#define STM_M25P32_SECTOR_SIZE  0x10000
++
++#define STM_64MBIT_SIGNATURE    0x16
++#define STM_M25P64_BYTE_COUNT   8388608
++#define STM_M25P64_SECTOR_COUNT 128
++#define STM_M25P64_SECTOR_SIZE  0x10000
++
++#define STM_128MBIT_SIGNATURE   0x17
++#define STM_M25P128_BYTE_COUNT   16777216
++#define STM_M25P128_SECTOR_COUNT 256
++#define STM_M25P128_SECTOR_SIZE  0x10000
++
++#define STM_1MB_BYTE_COUNT   STM_M25P80_BYTE_COUNT
++#define STM_1MB_SECTOR_COUNT STM_M25P80_SECTOR_COUNT
++#define STM_1MB_SECTOR_SIZE  STM_M25P80_SECTOR_SIZE
++#define STM_2MB_BYTE_COUNT   STM_M25P16_BYTE_COUNT
++#define STM_2MB_SECTOR_COUNT STM_M25P16_SECTOR_COUNT
++#define STM_2MB_SECTOR_SIZE  STM_M25P16_SECTOR_SIZE
++#define STM_4MB_BYTE_COUNT   STM_M25P32_BYTE_COUNT
++#define STM_4MB_SECTOR_COUNT STM_M25P32_SECTOR_COUNT
++#define STM_4MB_SECTOR_SIZE  STM_M25P32_SECTOR_SIZE
++#define STM_8MB_BYTE_COUNT   STM_M25P64_BYTE_COUNT
++#define STM_8MB_SECTOR_COUNT STM_M25P64_SECTOR_COUNT
++#define STM_8MB_SECTOR_SIZE  STM_M25P64_SECTOR_SIZE
++#define STM_16MB_BYTE_COUNT   STM_M25P128_BYTE_COUNT
++#define STM_16MB_SECTOR_COUNT STM_M25P128_SECTOR_COUNT
++#define STM_16MB_SECTOR_SIZE  STM_M25P128_SECTOR_SIZE
++
++/*
++ * ST Microelectronics Opcodes for Serial Flash
++ */
++
++#define STM_OP_WR_ENABLE       0x06     /* Write Enable */
++#define STM_OP_WR_DISABLE      0x04     /* Write Disable */
++#define STM_OP_RD_STATUS       0x05     /* Read Status */
++#define STM_OP_WR_STATUS       0x01     /* Write Status */
++#define STM_OP_RD_DATA         0x03     /* Read Data */
++#define STM_OP_FAST_RD_DATA    0x0b     /* Fast Read Data */
++#define STM_OP_PAGE_PGRM       0x02     /* Page Program */
++#define STM_OP_SECTOR_ERASE    0xd8     /* Sector Erase */
++#define STM_OP_BULK_ERASE      0xc7     /* Bulk Erase */
++#define STM_OP_DEEP_PWRDOWN    0xb9     /* Deep Power-Down Mode */
++#define STM_OP_RD_SIG          0xab     /* Read Electronic Signature */
++
++#define STM_STATUS_WIP       0x01       /* Write-In-Progress */
++#define STM_STATUS_WEL       0x02       /* Write Enable Latch */
++#define STM_STATUS_BP0       0x04       /* Block Protect 0 */
++#define STM_STATUS_BP1       0x08       /* Block Protect 1 */
++#define STM_STATUS_BP2       0x10       /* Block Protect 2 */
++#define STM_STATUS_SRWD      0x80       /* Status Register Write Disable */
++
++/*
++ * SPI Flash Interface Registers
++ */
++
++#define SPI_FLASH_CTL           0x00
++#define SPI_FLASH_OPCODE        0x04
++#define SPI_FLASH_DATA          0x08
++
++#define SPI_CTL_START           0x00000100
++#define SPI_CTL_BUSY            0x00010000
++#define SPI_CTL_TXCNT_MASK      0x0000000f
++#define SPI_CTL_RXCNT_MASK      0x000000f0
++#define SPI_CTL_TX_RX_CNT_MASK  0x000000ff
++#define SPI_CTL_SIZE_MASK       0x00060000
++
++#define SPI_CTL_CLK_SEL_MASK    0x03000000
++#define SPI_OPCODE_MASK         0x000000ff
++
++#define SPI_STATUS_WIP		STM_STATUS_WIP
++
++#endif
+--- a/arch/mips/ath25/ar2315.c
++++ b/arch/mips/ath25/ar2315.c
+@@ -220,6 +220,28 @@ static struct platform_device ar2315_gpi
+ 	.num_resources = ARRAY_SIZE(ar2315_gpio_res)
+ };
+ 
++static struct resource ar2315_spiflash_res[] = {
++	{
++		.name = "spiflash_read",
++		.flags = IORESOURCE_MEM,
++		.start = AR2315_SPI_READ_BASE,
++		.end = AR2315_SPI_READ_BASE + AR2315_SPI_READ_SIZE - 1,
++	},
++	{
++		.name = "spiflash_mmr",
++		.flags = IORESOURCE_MEM,
++		.start = AR2315_SPI_MMR_BASE,
++		.end = AR2315_SPI_MMR_BASE + AR2315_SPI_MMR_SIZE - 1,
++	},
++};
++
++static struct platform_device ar2315_spiflash = {
++	.id = 0,
++	.name = "ar2315-spiflash",
++	.resource = ar2315_spiflash_res,
++	.num_resources = ARRAY_SIZE(ar2315_spiflash_res)
++};
++
+ void __init ar2315_init_devices(void)
+ {
+ 	/* Find board configuration */
+@@ -230,6 +252,8 @@ void __init ar2315_init_devices(void)
+ 	ar2315_gpio_res[1].end = ar2315_gpio_res[1].start;
+ 	platform_device_register(&ar2315_gpio);
+ 
++	platform_device_register(&ar2315_spiflash);
++
+ 	ar2315_eth_data.macaddr = ath25_board.config->enet0_mac;
+ 	ath25_add_ethernet(0, AR2315_ENET0_BASE, "eth0_mii",
+ 			   AR2315_ENET0_MII_BASE, AR2315_IRQ_ENET0,
diff --git a/target/linux/ath25/patches-5.4/130-watchdog.patch b/target/linux/ath25/patches-5.4/130-watchdog.patch
new file mode 100644
index 0000000000..01904d69a5
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/130-watchdog.patch
@@ -0,0 +1,277 @@
+--- /dev/null
++++ b/drivers/watchdog/ar2315-wtd.c
+@@ -0,0 +1,209 @@
++/*
++ * This program is free software; you can redistribute it and/or modify
++ * it under the terms of the GNU General Public License as published by
++ * the Free Software Foundation; either version 2 of the License, or
++ * (at your option) any later version.
++ *
++ * This program is distributed in the hope that it will be useful,
++ * but WITHOUT ANY WARRANTY; without even the implied warranty of
++ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
++ * GNU General Public License for more details.
++ *
++ * You should have received a copy of the GNU General Public License
++ * along with this program; if not, see <http://www.gnu.org/licenses/>.
++ *
++ * Copyright (C) 2008 John Crispin <blogic@openwrt.org>
++ * Based on EP93xx and ifxmips wdt driver
++ */
++
++#include <linux/interrupt.h>
++#include <linux/module.h>
++#include <linux/moduleparam.h>
++#include <linux/types.h>
++#include <linux/miscdevice.h>
++#include <linux/watchdog.h>
++#include <linux/fs.h>
++#include <linux/ioport.h>
++#include <linux/notifier.h>
++#include <linux/reboot.h>
++#include <linux/init.h>
++#include <linux/platform_device.h>
++#include <linux/io.h>
++#include <linux/uaccess.h>
++
++#define DRIVER_NAME	"ar2315-wdt"
++
++#define CLOCK_RATE 40000000
++#define HEARTBEAT(x) (x < 1 || x > 90 ? 20 : x)
++
++#define WDT_REG_TIMER		0x00
++#define WDT_REG_CTRL		0x04
++
++#define WDT_CTRL_ACT_NONE	0x00000000	/* No action */
++#define WDT_CTRL_ACT_NMI	0x00000001	/* NMI on watchdog */
++#define WDT_CTRL_ACT_RESET	0x00000002	/* reset on watchdog */
++
++static int wdt_timeout = 20;
++static int started;
++static int in_use;
++static void __iomem *wdt_base;
++
++static inline void ar2315_wdt_wr(unsigned reg, u32 val)
++{
++	iowrite32(val, wdt_base + reg);
++}
++
++static void
++ar2315_wdt_enable(void)
++{
++	ar2315_wdt_wr(WDT_REG_TIMER, wdt_timeout * CLOCK_RATE);
++}
++
++static ssize_t
++ar2315_wdt_write(struct file *file, const char __user *data, size_t len,
++		 loff_t *ppos)
++{
++	if (len)
++		ar2315_wdt_enable();
++	return len;
++}
++
++static int
++ar2315_wdt_open(struct inode *inode, struct file *file)
++{
++	if (in_use)
++		return -EBUSY;
++	ar2315_wdt_enable();
++	in_use = 1;
++	started = 1;
++	return nonseekable_open(inode, file);
++}
++
++static int
++ar2315_wdt_release(struct inode *inode, struct file *file)
++{
++	in_use = 0;
++	return 0;
++}
++
++static irqreturn_t
++ar2315_wdt_interrupt(int irq, void *dev)
++{
++	struct platform_device *pdev = (struct platform_device *)dev;
++
++	if (started) {
++		dev_crit(&pdev->dev, "watchdog expired, rebooting system\n");
++		emergency_restart();
++	} else {
++		ar2315_wdt_wr(WDT_REG_CTRL, 0);
++		ar2315_wdt_wr(WDT_REG_TIMER, 0);
++	}
++	return IRQ_HANDLED;
++}
++
++static struct watchdog_info ident = {
++	.options = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING,
++	.identity = "ar2315 Watchdog",
++};
++
++static long
++ar2315_wdt_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
++{
++	int new_wdt_timeout;
++	int ret = -ENOIOCTLCMD;
++
++	switch (cmd) {
++	case WDIOC_GETSUPPORT:
++		ret = copy_to_user((void __user *)arg, &ident, sizeof(ident)) ?
++		      -EFAULT : 0;
++		break;
++	case WDIOC_KEEPALIVE:
++		ar2315_wdt_enable();
++		ret = 0;
++		break;
++	case WDIOC_SETTIMEOUT:
++		ret = get_user(new_wdt_timeout, (int __user *)arg);
++		if (ret)
++			break;
++		wdt_timeout = HEARTBEAT(new_wdt_timeout);
++		ar2315_wdt_enable();
++		break;
++	case WDIOC_GETTIMEOUT:
++		ret = put_user(wdt_timeout, (int __user *)arg);
++		break;
++	}
++	return ret;
++}
++
++static const struct file_operations ar2315_wdt_fops = {
++	.owner		= THIS_MODULE,
++	.llseek		= no_llseek,
++	.write		= ar2315_wdt_write,
++	.unlocked_ioctl	= ar2315_wdt_ioctl,
++	.open		= ar2315_wdt_open,
++	.release	= ar2315_wdt_release,
++};
++
++static struct miscdevice ar2315_wdt_miscdev = {
++	.minor	= WATCHDOG_MINOR,
++	.name	= "watchdog",
++	.fops	= &ar2315_wdt_fops,
++};
++
++static int
++ar2315_wdt_probe(struct platform_device *dev)
++{
++	struct resource *mem_res, *irq_res;
++	int ret = 0;
++
++	if (wdt_base)
++		return -EBUSY;
++
++	irq_res = platform_get_resource(dev, IORESOURCE_IRQ, 0);
++	if (!irq_res) {
++		dev_err(&dev->dev, "no IRQ resource\n");
++		return -ENOENT;
++	}
++
++	mem_res = platform_get_resource(dev, IORESOURCE_MEM, 0);
++	wdt_base = devm_ioremap_resource(&dev->dev, mem_res);
++	if (IS_ERR(wdt_base))
++		return PTR_ERR(wdt_base);
++
++	ret = devm_request_irq(&dev->dev, irq_res->start, ar2315_wdt_interrupt,
++			       0, DRIVER_NAME, dev);
++	if (ret) {
++		dev_err(&dev->dev, "failed to register inetrrupt\n");
++		goto out;
++	}
++
++	ret = misc_register(&ar2315_wdt_miscdev);
++	if (ret)
++		dev_err(&dev->dev, "failed to register miscdev\n");
++
++out:
++	return ret;
++}
++
++static int
++ar2315_wdt_remove(struct platform_device *dev)
++{
++	misc_deregister(&ar2315_wdt_miscdev);
++	return 0;
++}
++
++static struct platform_driver ar2315_wdt_driver = {
++	.probe = ar2315_wdt_probe,
++	.remove = ar2315_wdt_remove,
++	.driver = {
++		.name = DRIVER_NAME,
++		.owner = THIS_MODULE,
++	},
++};
++
++module_platform_driver(ar2315_wdt_driver);
++
++MODULE_DESCRIPTION("Atheros AR2315 hardware watchdog driver");
++MODULE_AUTHOR("John Crispin <blogic@openwrt.org>");
++MODULE_LICENSE("GPL");
++MODULE_ALIAS("platform:" DRIVER_NAME);
+--- a/drivers/watchdog/Kconfig
++++ b/drivers/watchdog/Kconfig
+@@ -1647,6 +1647,13 @@ config PIC32_DMT
+ 	  To compile this driver as a loadable module, choose M here.
+ 	  The module will be called pic32-dmt.
+ 
++config AR2315_WDT
++	tristate "Atheros AR2315+ WiSoCs Watchdog Timer"
++	depends on ATH25
++	help
++	  Hardware driver for the built-in watchdog timer on the Atheros
++	  AR2315/AR2316 WiSoCs.
++
+ # PARISC Architecture
+ 
+ # POWERPC Architecture
+--- a/drivers/watchdog/Makefile
++++ b/drivers/watchdog/Makefile
+@@ -166,6 +166,7 @@ obj-$(CONFIG_WDT_MTX1) += mtx-1_wdt.o
+ obj-$(CONFIG_PNX833X_WDT) += pnx833x_wdt.o
+ obj-$(CONFIG_SIBYTE_WDOG) += sb_wdog.o
+ obj-$(CONFIG_AR7_WDT) += ar7_wdt.o
++obj-$(CONFIG_AR2315_WDT) += ar2315-wtd.o
+ obj-$(CONFIG_TXX9_WDT) += txx9wdt.o
+ obj-$(CONFIG_OCTEON_WDT) += octeon-wdt.o
+ octeon-wdt-y := octeon-wdt-main.o octeon-wdt-nmi.o
+--- a/arch/mips/ath25/ar2315.c
++++ b/arch/mips/ath25/ar2315.c
+@@ -220,6 +220,24 @@ static struct platform_device ar2315_gpi
+ 	.num_resources = ARRAY_SIZE(ar2315_gpio_res)
+ };
+ 
++static struct resource ar2315_wdt_res[] = {
++	{
++		.flags = IORESOURCE_MEM,
++		.start = AR2315_RST_BASE + AR2315_WDT_TIMER,
++		.end = AR2315_RST_BASE + AR2315_WDT_TIMER + 8 - 1,
++	},
++	{
++		.flags = IORESOURCE_IRQ,
++	}
++};
++
++static struct platform_device ar2315_wdt = {
++	.id = 0,
++	.name = "ar2315-wdt",
++	.resource = ar2315_wdt_res,
++	.num_resources = ARRAY_SIZE(ar2315_wdt_res)
++};
++
+ static struct resource ar2315_spiflash_res[] = {
+ 	{
+ 		.name = "spiflash_read",
+@@ -252,6 +270,11 @@ void __init ar2315_init_devices(void)
+ 	ar2315_gpio_res[1].end = ar2315_gpio_res[1].start;
+ 	platform_device_register(&ar2315_gpio);
+ 
++	ar2315_wdt_res[1].start = irq_create_mapping(ar2315_misc_irq_domain,
++						     AR2315_MISC_IRQ_WATCHDOG);
++	ar2315_wdt_res[1].end = ar2315_wdt_res[1].start;
++	platform_device_register(&ar2315_wdt);
++
+ 	platform_device_register(&ar2315_spiflash);
+ 
+ 	ar2315_eth_data.macaddr = ath25_board.config->enet0_mac;
diff --git a/target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch b/target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch
new file mode 100644
index 0000000000..6aad761cb1
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/140-redboot_boardconfig.patch
@@ -0,0 +1,60 @@
+--- a/drivers/mtd/redboot.c
++++ b/drivers/mtd/redboot.c
+@@ -30,6 +30,8 @@
+ #include <linux/mtd/partitions.h>
+ #include <linux/module.h>
+ 
++#define BOARD_CONFIG_PART		"boardconfig"
++
+ struct fis_image_desc {
+     unsigned char name[16];      // Null terminated name
+     uint32_t	  flash_base;    // Address within FLASH of image
+@@ -60,6 +62,7 @@ static int parse_redboot_partitions(stru
+ 				    const struct mtd_partition **pparts,
+ 				    struct mtd_part_parser_data *data)
+ {
++	unsigned long max_offset = 0;
+ 	int nrparts = 0;
+ 	struct fis_image_desc *buf;
+ 	struct mtd_partition *parts;
+@@ -225,14 +228,15 @@ static int parse_redboot_partitions(stru
+ 		}
+ 	}
+ #endif
+-	parts = kzalloc(sizeof(*parts)*nrparts + nulllen + namelen, GFP_KERNEL);
++	parts = kzalloc(sizeof(*parts) * (nrparts + 1) + nulllen + namelen +
++			sizeof(BOARD_CONFIG_PART), GFP_KERNEL);
+ 
+ 	if (!parts) {
+ 		ret = -ENOMEM;
+ 		goto out;
+ 	}
+ 
+-	nullname = (char *)&parts[nrparts];
++	nullname = (char *)&parts[nrparts + 1];
+ #ifdef CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED
+ 	if (nulllen > 0) {
+ 		strcpy(nullname, nullstring);
+@@ -251,6 +255,8 @@ static int parse_redboot_partitions(stru
+ 	}
+ #endif
+ 	for ( ; i<nrparts; i++) {
++		if (max_offset < buf[i].flash_base + buf[i].size)
++			max_offset = buf[i].flash_base + buf[i].size;
+ 		parts[i].size = fl->img->size;
+ 		parts[i].offset = fl->img->flash_base;
+ 		parts[i].name = names;
+@@ -284,6 +290,13 @@ static int parse_redboot_partitions(stru
+ 		fl = fl->next;
+ 		kfree(tmp_fl);
+ 	}
++	if (master->size - max_offset >= master->erasesize) {
++		parts[nrparts].size = master->size - max_offset;
++		parts[nrparts].offset = max_offset;
++		parts[nrparts].name = names;
++		strcpy(names, BOARD_CONFIG_PART);
++		nrparts++;
++	}
+ 	ret = nrparts;
+ 	*pparts = parts;
+  out:
diff --git a/target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch b/target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch
new file mode 100644
index 0000000000..d1d281eaf4
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/141-redboot_partition_scan.patch
@@ -0,0 +1,44 @@
+--- a/drivers/mtd/redboot.c
++++ b/drivers/mtd/redboot.c
+@@ -79,12 +79,18 @@ static int parse_redboot_partitions(stru
+ 	static char nullstring[] = "unallocated";
+ #endif
+ 
++	buf = vmalloc(master->erasesize);
++	if (!buf)
++		return -ENOMEM;
++
++ restart:
+ 	if ( directory < 0 ) {
+ 		offset = master->size + directory * master->erasesize;
+ 		while (mtd_block_isbad(master, offset)) {
+ 			if (!offset) {
+ 			nogood:
+ 				printk(KERN_NOTICE "Failed to find a non-bad block to check for RedBoot partition table\n");
++				vfree(buf);
+ 				return -EIO;
+ 			}
+ 			offset -= master->erasesize;
+@@ -97,10 +103,6 @@ static int parse_redboot_partitions(stru
+ 				goto nogood;
+ 		}
+ 	}
+-	buf = vmalloc(master->erasesize);
+-
+-	if (!buf)
+-		return -ENOMEM;
+ 
+ 	printk(KERN_NOTICE "Searching for RedBoot partition table in %s at offset 0x%lx\n",
+ 	       master->name, offset);
+@@ -173,6 +175,11 @@ static int parse_redboot_partitions(stru
+ 	}
+ 	if (i == numslots) {
+ 		/* Didn't find it */
++		if (offset + master->erasesize < master->size) {
++			/* not at the end of the flash yet, maybe next block */
++			directory++;
++			goto restart;
++		}
+ 		printk(KERN_NOTICE "No RedBoot partition table detected in %s\n",
+ 		       master->name);
+ 		ret = 0;
diff --git a/target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch b/target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch
new file mode 100644
index 0000000000..ce039df9f1
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/142-redboot_various_erase_size_fix.patch
@@ -0,0 +1,72 @@
+--- a/drivers/mtd/redboot.c
++++ b/drivers/mtd/redboot.c
+@@ -58,6 +58,22 @@ static inline int redboot_checksum(struc
+ 	return 1;
+ }
+ 
++static uint32_t mtd_get_offset_erasesize(struct mtd_info *mtd, uint64_t offset)
++{
++	struct mtd_erase_region_info *regions = mtd->eraseregions;
++	int i;
++
++	for (i = 0; i < mtd->numeraseregions; i++) {
++		if (regions[i].offset +
++		    regions[i].numblocks * regions[i].erasesize <= offset)
++			continue;
++
++		return regions[i].erasesize;
++	}
++
++	return mtd->erasesize;
++}
++
+ static int parse_redboot_partitions(struct mtd_info *master,
+ 				    const struct mtd_partition **pparts,
+ 				    struct mtd_part_parser_data *data)
+@@ -74,6 +90,7 @@ static int parse_redboot_partitions(stru
+ 	int namelen = 0;
+ 	int nulllen = 0;
+ 	int numslots;
++	int first_slot;
+ 	unsigned long offset;
+ #ifdef CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED
+ 	static char nullstring[] = "unallocated";
+@@ -186,7 +203,10 @@ static int parse_redboot_partitions(stru
+ 		goto out;
+ 	}
+ 
+-	for (i = 0; i < numslots; i++) {
++	first_slot = (buf[i].flash_base & (master->erasesize - 1)) /
++		     sizeof(struct fis_image_desc);
++
++	for (i = first_slot; i < first_slot + numslots; i++) {
+ 		struct fis_list *new_fl, **prev;
+ 
+ 		if (buf[i].name[0] == 0xff) {
+@@ -262,12 +282,13 @@ static int parse_redboot_partitions(stru
+ 	}
+ #endif
+ 	for ( ; i<nrparts; i++) {
+-		if (max_offset < buf[i].flash_base + buf[i].size)
+-			max_offset = buf[i].flash_base + buf[i].size;
+ 		parts[i].size = fl->img->size;
+ 		parts[i].offset = fl->img->flash_base;
+ 		parts[i].name = names;
+ 
++		if (max_offset < parts[i].offset + parts[i].size)
++			max_offset = parts[i].offset + parts[i].size;
++
+ 		strcpy(names, fl->img->name);
+ #ifdef CONFIG_MTD_REDBOOT_PARTS_READONLY
+ 		if (!memcmp(names, "RedBoot", 8) ||
+@@ -297,7 +318,9 @@ static int parse_redboot_partitions(stru
+ 		fl = fl->next;
+ 		kfree(tmp_fl);
+ 	}
+-	if (master->size - max_offset >= master->erasesize) {
++
++	if (master->size - max_offset >=
++	    mtd_get_offset_erasesize(master, max_offset)) {
+ 		parts[nrparts].size = master->size - max_offset;
+ 		parts[nrparts].offset = max_offset;
+ 		parts[nrparts].name = names;
diff --git a/target/linux/ath25/patches-5.4/210-reset_button.patch b/target/linux/ath25/patches-5.4/210-reset_button.patch
new file mode 100644
index 0000000000..b3f7a14cda
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/210-reset_button.patch
@@ -0,0 +1,71 @@
+--- a/arch/mips/ath25/Makefile
++++ b/arch/mips/ath25/Makefile
+@@ -8,7 +8,7 @@
+ # Copyright (C) 2006-2009 Felix Fietkau <nbd@openwrt.org>
+ #
+ 
+-obj-y += board.o prom.o devices.o
++obj-y += board.o prom.o devices.o reset.o
+ 
+ obj-$(CONFIG_EARLY_PRINTK) += early_printk.o
+ 
+--- /dev/null
++++ b/arch/mips/ath25/reset.c
+@@ -0,0 +1,57 @@
++#include <linux/init.h>
++#include <linux/slab.h>
++#include <linux/platform_device.h>
++#include <linux/gpio_keys.h>
++#include <linux/input.h>
++#include <ath25_platform.h>
++#include "devices.h"
++
++static int __init
++ar231x_init_reset(void)
++{
++	struct platform_device *pdev;
++	struct gpio_keys_platform_data pdata;
++	struct gpio_keys_button *p;
++	int err;
++
++	if (ath25_board.config->reset_config_gpio == 0xffff)
++		return -ENODEV;
++
++	p = kzalloc(sizeof(*p), GFP_KERNEL);
++	if (!p)
++		goto err;
++
++	p->desc = "reset";
++	p->type = EV_KEY;
++	p->code = KEY_RESTART;
++	p->debounce_interval = 60;
++	p->gpio = ath25_board.config->reset_config_gpio;
++
++	memset(&pdata, 0, sizeof(pdata));
++	pdata.poll_interval = 20;
++	pdata.buttons = p;
++	pdata.nbuttons = 1;
++
++	pdev = platform_device_alloc("gpio-keys-polled", 0);
++	if (!pdev)
++		goto err_free;
++
++	err = platform_device_add_data(pdev, &pdata, sizeof(pdata));
++	if (err)
++		goto err_put_pdev;
++
++	err = platform_device_add(pdev);
++	if (err)
++		goto err_put_pdev;
++
++	return 0;
++
++err_put_pdev:
++	platform_device_put(pdev);
++err_free:
++	kfree(p);
++err:
++	return -ENOMEM;
++}
++
++device_initcall(ar231x_init_reset);
diff --git a/target/linux/ath25/patches-5.4/220-enet_micrel_workaround.patch b/target/linux/ath25/patches-5.4/220-enet_micrel_workaround.patch
new file mode 100644
index 0000000000..91b9792515
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/220-enet_micrel_workaround.patch
@@ -0,0 +1,111 @@
+--- a/drivers/net/ethernet/atheros/ar231x/ar231x.c
++++ b/drivers/net/ethernet/atheros/ar231x/ar231x.c
+@@ -135,6 +135,7 @@ static int ar231x_mdiobus_write(struct m
+ static int ar231x_mdiobus_reset(struct mii_bus *bus);
+ static int ar231x_mdiobus_probe(struct net_device *dev);
+ static void ar231x_adjust_link(struct net_device *dev);
++static bool no_phy;
+ 
+ #ifndef ERR
+ #define ERR(fmt, args...) printk("%s: " fmt, __func__, ##args)
+@@ -167,6 +168,32 @@ static const struct net_device_ops ar231
+ #endif
+ };
+ 
++static int get_phy_id(struct mii_bus *bus, int addr, u32 *phy_id)
++{
++	int phy_reg;
++
++	/**
++	 * Grab the bits from PHYIR1, and put them
++	 * in the upper half.
++	 */
++	phy_reg = mdiobus_read(bus, addr, MII_PHYSID1);
++
++	if (phy_reg < 0)
++		return -EIO;
++
++	*phy_id = (phy_reg & 0xffff) << 16;
++
++	/* Grab the bits from PHYIR2, and put them in the lower half */
++	phy_reg = mdiobus_read(bus, addr, MII_PHYSID2);
++
++	if (phy_reg < 0)
++		return -EIO;
++
++	*phy_id |= (phy_reg & 0xffff);
++
++	return 0;
++}
++
+ static int ar231x_probe(struct platform_device *pdev)
+ {
+ 	struct net_device *dev;
+@@ -273,6 +300,24 @@ static int ar231x_probe(struct platform_
+ 
+ 	mdiobus_register(sp->mii_bus);
+ 
++	/**
++	 * Workaround for Micrel switch, which is only available on
++	 * one PHY and cannot be configured through MDIO.
++	 */
++	if (!no_phy) {
++		u32 phy_id = 0;
++
++		get_phy_id(sp->mii_bus, 1, &phy_id);
++		if (phy_id == 0x00221450)
++			no_phy = true;
++	}
++	if (no_phy) {
++		sp->link = 1;
++		netif_carrier_on(dev);
++		return 0;
++	}
++	no_phy = true;
++
+ 	if (ar231x_mdiobus_probe(dev) != 0) {
+ 		printk(KERN_ERR "%s: mdiobus_probe failed\n", dev->name);
+ 		rx_tasklet_cleanup(dev);
+@@ -326,8 +371,10 @@ static int ar231x_remove(struct platform
+ 	rx_tasklet_cleanup(dev);
+ 	ar231x_init_cleanup(dev);
+ 	unregister_netdev(dev);
+-	mdiobus_unregister(sp->mii_bus);
+-	mdiobus_free(sp->mii_bus);
++	if (sp->mii_bus) {
++		mdiobus_unregister(sp->mii_bus);
++		mdiobus_free(sp->mii_bus);
++	}
+ 	kfree(dev);
+ 	return 0;
+ }
+@@ -870,7 +917,8 @@ static int ar231x_open(struct net_device
+ 
+ 	sp->eth_regs->mac_control |= MAC_CONTROL_RE;
+ 
+-	phy_start(sp->phy_dev);
++	if (sp->phy_dev)
++		phy_start(sp->phy_dev);
+ 
+ 	return 0;
+ }
+@@ -951,7 +999,8 @@ static int ar231x_close(struct net_devic
+ 
+ #endif
+ 
+-	phy_stop(sp->phy_dev);
++	if (sp->phy_dev)
++		phy_stop(sp->phy_dev);
+ 
+ 	return 0;
+ }
+@@ -995,6 +1044,9 @@ static int ar231x_ioctl(struct net_devic
+ {
+ 	struct ar231x_private *sp = netdev_priv(dev);
+ 
++	if (!sp->phy_dev)
++		return -ENODEV;
++
+ 	switch (cmd) {
+ 	case SIOCGMIIPHY:
+ 	case SIOCGMIIREG:
diff --git a/target/linux/ath25/patches-5.4/330-board_leds.patch b/target/linux/ath25/patches-5.4/330-board_leds.patch
new file mode 100644
index 0000000000..e357fc6a64
--- /dev/null
+++ b/target/linux/ath25/patches-5.4/330-board_leds.patch
@@ -0,0 +1,116 @@
+--- a/arch/mips/ath25/ar2315.c
++++ b/arch/mips/ath25/ar2315.c
+@@ -23,6 +23,7 @@
+ #include <linux/reboot.h>
+ #include <linux/delay.h>
+ #include <linux/gpio.h>
++#include <linux/leds.h>
+ #include <asm/bootinfo.h>
+ #include <asm/reboot.h>
+ #include <asm/time.h>
+@@ -260,6 +261,50 @@ static struct platform_device ar2315_spi
+ 	.num_resources = ARRAY_SIZE(ar2315_spiflash_res)
+ };
+ 
++#ifdef CONFIG_LEDS_GPIO
++static struct gpio_led ar2315_leds[6];
++static struct gpio_led_platform_data ar2315_led_data = {
++	.leds = (void *)ar2315_leds,
++};
++
++static struct platform_device ar2315_gpio_leds = {
++	.name = "leds-gpio",
++	.id = -1,
++	.dev = {
++		.platform_data = (void *)&ar2315_led_data,
++	}
++};
++
++static void __init ar2315_init_gpio_leds(void)
++{
++	static char led_names[6][6];
++	int i, led = 0;
++
++	ar2315_led_data.num_leds = 0;
++	for (i = 1; i < 8; i++) {
++		if ((i == AR2315_RESET_GPIO) ||
++		    (i == ath25_board.config->reset_config_gpio))
++			continue;
++
++		if (i == ath25_board.config->sys_led_gpio)
++			strcpy(led_names[led], "wlan");
++		else
++			sprintf(led_names[led], "gpio%d", i);
++
++		ar2315_leds[led].name = led_names[led];
++		ar2315_leds[led].gpio = i;
++		ar2315_leds[led].active_low = 0;
++		led++;
++	}
++	ar2315_led_data.num_leds = led;
++	platform_device_register(&ar2315_gpio_leds);
++}
++#else
++static inline void ar2315_init_gpio_leds(void)
++{
++}
++#endif
++
+ void __init ar2315_init_devices(void)
+ {
+ 	/* Find board configuration */
+@@ -270,6 +315,8 @@ void __init ar2315_init_devices(void)
+ 	ar2315_gpio_res[1].end = ar2315_gpio_res[1].start;
+ 	platform_device_register(&ar2315_gpio);
+ 
++	ar2315_init_gpio_leds();
++
+ 	ar2315_wdt_res[1].start = irq_create_mapping(ar2315_misc_irq_domain,
+ 						     AR2315_MISC_IRQ_WATCHDOG);
+ 	ar2315_wdt_res[1].end = ar2315_wdt_res[1].start;
+--- a/arch/mips/ath25/ar5312.c
++++ b/arch/mips/ath25/ar5312.c
+@@ -23,6 +23,7 @@
+ #include <linux/mtd/physmap.h>
+ #include <linux/reboot.h>
+ #include <linux/gpio.h>
++#include <linux/leds.h>
+ #include <asm/bootinfo.h>
+ #include <asm/reboot.h>
+ #include <asm/time.h>
+@@ -231,6 +232,23 @@ static struct platform_device ar5312_gpi
+ 	.num_resources = ARRAY_SIZE(ar5312_gpio_res),
+ };
+ 
++#ifdef CONFIG_LEDS_GPIO
++static struct gpio_led ar5312_leds[] = {
++	{ .name = "wlan", .gpio = 0, .active_low = 1, },
++};
++
++static const struct gpio_led_platform_data ar5312_led_data = {
++	.num_leds = ARRAY_SIZE(ar5312_leds),
++	.leds = (void *)ar5312_leds,
++};
++
++static struct platform_device ar5312_gpio_leds = {
++	.name = "leds-gpio",
++	.id = -1,
++	.dev.platform_data = (void *)&ar5312_led_data,
++};
++#endif
++
+ static void __init ar5312_flash_init(void)
+ {
+ 	void __iomem *flashctl_base;
+@@ -301,6 +319,11 @@ void __init ar5312_init_devices(void)
+ 
+ 	platform_device_register(&ar5312_gpio);
+ 
++#ifdef CONFIG_LEDS_GPIO
++	ar5312_leds[0].gpio = config->sys_led_gpio;
++	platform_device_register(&ar5312_gpio_leds);
++#endif
++
+ 	/* Fix up MAC addresses if necessary */
+ 	if (is_broadcast_ether_addr(config->enet0_mac))
+ 		ether_addr_copy(config->enet0_mac, config->enet1_mac);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
