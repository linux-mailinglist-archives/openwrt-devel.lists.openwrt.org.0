Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8D31A7B3
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cswk12guWY8sCkjiLhqhNP7lUJzPUrdX6xY4sk9tGo=; b=dRVFzNTD42vYej
	IndSvSqdbsB6Z2RPST4shIT99JYMNddo4K3ScD+GJ0qrmmdXIhgMujXLrgsLEKj9VwualpKRr0cWl
	Vwuzx3+bQbH//KDRLJ9oV9gT8I0LQbl+EwNhDEOvRmkNLQiQg+ngFPP2g8EW2zgtyWcI3br81vv3A
	+Lf3GRhNDze4ox2hi54DzDl6pcb1uDk7c6GroReGbk7NvwCvvIrE1RYLpBGQaRlB7uV97zKB/tk78
	uIAmGhvL8r7wMmOwn2XARrwthCKQumPzZxuYmtnWdiV/fFc97JL53rN/UuuAaS7XjFIQP1s0Q0kcN
	1mXYqqgf6VG4dMaBE1fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQUS-0006zk-Ps; Sat, 11 May 2019 11:48:32 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQU6-0006V6-Qh
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:48:24 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 4AF26A1161;
 Sat, 11 May 2019 13:48:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id YDh2ni81akbd; Sat, 11 May 2019 13:47:46 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:47:37 +0200
Message-Id: <20190511114737.11922-3-hauke@hauke-m.de>
In-Reply-To: <20190511114737.11922-1-hauke@hauke-m.de>
References: <20190511114737.11922-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_044811_778879_4C6ABFF1 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] ar7: Update kernel to version 4.14
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, f.fainelli@gmail.com,
 Mathias Kresin <dev@kresin.me>, Jonas Gorski <jonas.gorski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support for kernel 4.14 to the target and directly make it the
default kernel version to use.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../patches-D7.04.03.00/270-4.14_fixes.patch  | 51 +++++++++++++++++++
 target/linux/ar7/Makefile                     |  2 +-
 target/linux/ar7/{config-4.9 => config-4.14}  | 21 ++++++--
 .../100-fix-highmem-offset.patch              |  0
 .../110-flash.patch                           |  4 +-
 .../160-vlynq_try_remote_first.patch          |  0
 .../200-free-mem-below-kernel-offset.patch    |  2 +-
 .../300-add-ac49x-platform.patch              |  4 +-
 .../310-ac49x-prom-support.patch              |  0
 .../320-ac49x-mtd-partitions.patch            |  4 +-
 .../920-ar7part.patch                         |  0
 .../925-actiontec_leds.patch                  |  6 +--
 .../950-cpmac_titan.patch                     |  8 +--
 ...R7-allow-NULL-clock-for-clk_get_rate.patch | 45 ----------------
 14 files changed, 84 insertions(+), 63 deletions(-)
 create mode 100644 package/kernel/ar7-atm/patches-D7.04.03.00/270-4.14_fixes.patch
 rename target/linux/ar7/{config-4.9 => config-4.14} (87%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/100-fix-highmem-offset.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/110-flash.patch (85%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/160-vlynq_try_remote_first.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/200-free-mem-below-kernel-offset.patch (89%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/300-add-ac49x-platform.patch (96%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/310-ac49x-prom-support.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/320-ac49x-mtd-partitions.patch (90%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/920-ar7part.patch (100%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/925-actiontec_leds.patch (90%)
 rename target/linux/ar7/{patches-4.9 => patches-4.14}/950-cpmac_titan.patch (86%)
 delete mode 100644 target/linux/ar7/patches-4.9/101-MIPS-AR7-allow-NULL-clock-for-clk_get_rate.patch

diff --git a/package/kernel/ar7-atm/patches-D7.04.03.00/270-4.14_fixes.patch b/package/kernel/ar7-atm/patches-D7.04.03.00/270-4.14_fixes.patch
new file mode 100644
index 0000000000..32bc535d34
--- /dev/null
+++ b/package/kernel/ar7-atm/patches-D7.04.03.00/270-4.14_fixes.patch
@@ -0,0 +1,51 @@
+--- a/tn7atm.c
++++ b/tn7atm.c
+@@ -1149,7 +1149,7 @@ void tn7atm_close (struct atm_vcc *vcc)
+   Tn7AtmPrivate *priv;
+   int dmachan;
+   spinlock_t closeLock;
+-  unsigned int closeFlag;
++  unsigned long closeFlag;
+   int rc;
+ 
+   priv = (Tn7AtmPrivate *) vcc->dev->dev_data;
+--- a/tn7dsl.c
++++ b/tn7dsl.c
+@@ -620,7 +620,7 @@ unsigned int shim_osClockTick(void)
+   return jiffies;
+ }
+ 
+-int flags;
++unsigned long flags;
+ spinlock_t shimLock;
+ 
+ void shim_osCriticalEnter(void)
+@@ -3433,7 +3433,7 @@ struct ctl_table dslmod_table[] = {
+ 		.extra2			= (void *)DEV_DSLMOD,
+ 	}
+   ,
+-  {0}
++  { }
+   };
+ 
+ /* Make sure that /proc/sys/dev is there */
+@@ -3447,7 +3447,7 @@ struct ctl_table dslmod_root_table[] = {
+ 	}
+   ,
+ #endif /* CONFIG_PROC_FS */
+-  {0}
++  { }
+   };
+ 
+ static struct ctl_table_header *dslmod_sysctl_header;
+--- a/tn7sar.c
++++ b/tn7sar.c
+@@ -1208,7 +1208,7 @@ int tn7sar_deactivate_vc(Tn7AtmPrivate *
+   HAL_FUNCTIONS *pHalFunc;
+   HAL_DEVICE    *pHalDev;
+   int rc;
+-  int flags;
++  unsigned long flags;
+ 
+   //dgprintf(4, "tn7sar_deactivate_vc\n");
+   //printk("tn7sar_deactivate_vc entered\n");
diff --git a/target/linux/ar7/Makefile b/target/linux/ar7/Makefile
index 1f789ca71f..baf8b8ffcd 100644
--- a/target/linux/ar7/Makefile
+++ b/target/linux/ar7/Makefile
@@ -13,7 +13,7 @@ FEATURES:=squashfs atm low_mem
 MAINTAINER:=Florian Fainelli <florian@openwrt.org>
 SUBTARGETS:=generic ac49x
 
-KERNEL_PATCHVER:=4.9
+KERNEL_PATCHVER:=4.14
 
 define Target/Description
 	Build firmware images for TI AR7 based routers.
diff --git a/target/linux/ar7/config-4.9 b/target/linux/ar7/config-4.14
similarity index 87%
rename from target/linux/ar7/config-4.9
rename to target/linux/ar7/config-4.14
index 95ee60ac59..aacdac63dc 100644
--- a/target/linux/ar7/config-4.9
+++ b/target/linux/ar7/config-4.14
@@ -10,16 +10,22 @@ CONFIG_ARCH_DISCARD_MEMBLOCK=y
 CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
 # CONFIG_ARCH_HAS_GCOV_PROFILE_ALL is not set
 # CONFIG_ARCH_HAS_SG_CHAIN is not set
+# CONFIG_ARCH_HAS_STRICT_KERNEL_RWX is not set
+# CONFIG_ARCH_HAS_STRICT_MODULE_RWX is not set
 CONFIG_ARCH_HIBERNATION_POSSIBLE=y
 CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
 CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
+CONFIG_ARCH_MMAP_RND_BITS_MAX=15
+CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=15
+# CONFIG_ARCH_OPTIONAL_KERNEL_RWX is not set
+# CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT is not set
 CONFIG_ARCH_SUPPORTS_UPROBES=y
 CONFIG_ARCH_SUSPEND_POSSIBLE=y
 CONFIG_ARCH_USE_BUILTIN_BSWAP=y
+CONFIG_ARCH_USE_QUEUED_RWLOCKS=y
+CONFIG_ARCH_USE_QUEUED_SPINLOCKS=y
 CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
 CONFIG_BOOT_ELF32=y
-CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
-# CONFIG_CC_OPTIMIZE_FOR_SIZE is not set
 CONFIG_CEVT_R4K=y
 CONFIG_CLONE_BACKWARDS=y
 CONFIG_CMDLINE="rootfstype=squashfs,jffs2"
@@ -48,14 +54,17 @@ CONFIG_FIXED_PHY=y
 CONFIG_GENERIC_ATOMIC64=y
 CONFIG_GENERIC_CLOCKEVENTS=y
 CONFIG_GENERIC_CMOS_UPDATE=y
+CONFIG_GENERIC_CPU_AUTOPROBE=y
 CONFIG_GENERIC_IO=y
 CONFIG_GENERIC_IRQ_CHIP=y
+CONFIG_GENERIC_IRQ_EFFECTIVE_AFF_MASK=y
 CONFIG_GENERIC_IRQ_SHOW=y
 CONFIG_GENERIC_PCI_IOMAP=y
 CONFIG_GENERIC_SCHED_CLOCK=y
 CONFIG_GENERIC_SMP_IDLE_THREAD=y
 CONFIG_GENERIC_TIME_VSYSCALL=y
 CONFIG_GPIOLIB=y
+# CONFIG_GRO_CELLS is not set
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDWARE_WATCHPOINTS=y
 CONFIG_HAS_DMA=y
@@ -63,6 +72,7 @@ CONFIG_HAS_IOMEM=y
 CONFIG_HAS_IOPORT_MAP=y
 # CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
 # CONFIG_HAVE_ARCH_BITREVERSE is not set
+CONFIG_HAVE_ARCH_COMPILER_H=y
 CONFIG_HAVE_ARCH_JUMP_LABEL=y
 CONFIG_HAVE_ARCH_KGDB=y
 CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
@@ -72,6 +82,7 @@ CONFIG_HAVE_CBPF_JIT=y
 CONFIG_HAVE_CC_STACKPROTECTOR=y
 CONFIG_HAVE_CLK=y
 CONFIG_HAVE_CONTEXT_TRACKING=y
+CONFIG_HAVE_COPY_THREAD_TLS=y
 CONFIG_HAVE_C_RECORDMCOUNT=y
 CONFIG_HAVE_DEBUG_KMEMLEAK=y
 CONFIG_HAVE_DEBUG_STACKOVERFLOW=y
@@ -106,11 +117,13 @@ CONFIG_IRQ_WORK=y
 CONFIG_KALLSYMS=y
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_TRIGGER_HEARTBEAT=y
-CONFIG_MDIO_BOARDINFO=y
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
 CONFIG_MIGRATION=y
 CONFIG_MIPS=y
 CONFIG_MIPS_ASID_BITS=8
 CONFIG_MIPS_ASID_SHIFT=0
+CONFIG_MIPS_CBPF_JIT=y
 CONFIG_MIPS_CLOCK_VSYSCALL=y
 # CONFIG_MIPS_CMDLINE_BUILTIN_EXTEND is not set
 CONFIG_MIPS_CMDLINE_FROM_BOOTLOADER=y
@@ -132,6 +145,7 @@ CONFIG_PCI_DRIVERS_LEGACY=y
 CONFIG_PERF_USE_VMALLOC=y
 CONFIG_PGTABLE_LEVELS=2
 CONFIG_PHYLIB=y
+# CONFIG_RCU_NEED_SEGCBLIST is not set
 # CONFIG_RCU_STALL_COMMON is not set
 # CONFIG_SCHED_INFO is not set
 # CONFIG_SCSI_DMA is not set
@@ -150,5 +164,6 @@ CONFIG_SYS_SUPPORTS_MIPS16=y
 CONFIG_SYS_SUPPORTS_ZBOOT=y
 CONFIG_SYS_SUPPORTS_ZBOOT_UART16550=y
 CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TINY_SRCU=y
 CONFIG_VLYNQ=y
 # CONFIG_VLYNQ_DEBUG is not set
diff --git a/target/linux/ar7/patches-4.9/100-fix-highmem-offset.patch b/target/linux/ar7/patches-4.14/100-fix-highmem-offset.patch
similarity index 100%
rename from target/linux/ar7/patches-4.9/100-fix-highmem-offset.patch
rename to target/linux/ar7/patches-4.14/100-fix-highmem-offset.patch
diff --git a/target/linux/ar7/patches-4.9/110-flash.patch b/target/linux/ar7/patches-4.14/110-flash.patch
similarity index 85%
rename from target/linux/ar7/patches-4.9/110-flash.patch
rename to target/linux/ar7/patches-4.14/110-flash.patch
index f5713bd033..e83eac9181 100644
--- a/target/linux/ar7/patches-4.9/110-flash.patch
+++ b/target/linux/ar7/patches-4.14/110-flash.patch
@@ -1,6 +1,6 @@
 --- a/drivers/mtd/Makefile
 +++ b/drivers/mtd/Makefile
-@@ -12,7 +12,7 @@ obj-$(CONFIG_MTD_OF_PARTS)	+= ofpart.o
+@@ -13,7 +13,7 @@ obj-$(CONFIG_MTD_OF_PARTS)	+= ofpart.o
  obj-$(CONFIG_MTD_REDBOOT_PARTS) += redboot.o
  obj-$(CONFIG_MTD_CMDLINE_PARTS) += cmdlinepart.o
  obj-$(CONFIG_MTD_AFS_PARTS)	+= afs.o
@@ -11,7 +11,7 @@
  obj-$(CONFIG_MTD_MYLOADER_PARTS) += myloader.o
 --- a/arch/mips/ar7/platform.c
 +++ b/arch/mips/ar7/platform.c
-@@ -198,7 +198,7 @@ static struct resource physmap_flash_res
+@@ -197,7 +197,7 @@ static struct resource physmap_flash_res
  	.name	= "mem",
  	.flags	= IORESOURCE_MEM,
  	.start	= 0x10000000,
diff --git a/target/linux/ar7/patches-4.9/160-vlynq_try_remote_first.patch b/target/linux/ar7/patches-4.14/160-vlynq_try_remote_first.patch
similarity index 100%
rename from target/linux/ar7/patches-4.9/160-vlynq_try_remote_first.patch
rename to target/linux/ar7/patches-4.14/160-vlynq_try_remote_first.patch
diff --git a/target/linux/ar7/patches-4.9/200-free-mem-below-kernel-offset.patch b/target/linux/ar7/patches-4.14/200-free-mem-below-kernel-offset.patch
similarity index 89%
rename from target/linux/ar7/patches-4.9/200-free-mem-below-kernel-offset.patch
rename to target/linux/ar7/patches-4.14/200-free-mem-below-kernel-offset.patch
index 4011942d79..7cc3ada818 100644
--- a/target/linux/ar7/patches-4.9/200-free-mem-below-kernel-offset.patch
+++ b/target/linux/ar7/patches-4.14/200-free-mem-below-kernel-offset.patch
@@ -1,6 +1,6 @@
 --- a/arch/mips/ar7/memory.c
 +++ b/arch/mips/ar7/memory.c
-@@ -66,5 +66,11 @@ void __init prom_meminit(void)
+@@ -65,5 +65,11 @@ void __init prom_meminit(void)
  
  void __init prom_free_prom_memory(void)
  {
diff --git a/target/linux/ar7/patches-4.9/300-add-ac49x-platform.patch b/target/linux/ar7/patches-4.14/300-add-ac49x-platform.patch
similarity index 96%
rename from target/linux/ar7/patches-4.9/300-add-ac49x-platform.patch
rename to target/linux/ar7/patches-4.14/300-add-ac49x-platform.patch
index 583f6bccaf..b70862e5bb 100644
--- a/target/linux/ar7/patches-4.9/300-add-ac49x-platform.patch
+++ b/target/linux/ar7/patches-4.14/300-add-ac49x-platform.patch
@@ -37,7 +37,7 @@
  #define AR7_IRQ_UART0	15
 --- a/arch/mips/Kconfig
 +++ b/arch/mips/Kconfig
-@@ -161,7 +161,7 @@ config AR7
+@@ -168,7 +168,7 @@ config AR7
  	select HAVE_CLK
  	help
  	  Support for the Texas Instruments AR7 System-on-a-Chip
@@ -46,7 +46,7 @@
  
  config ATH25
  	bool "Atheros AR231x/AR531x SoC support"
-@@ -1008,6 +1008,7 @@ config MIPS_PARAVIRT
+@@ -1018,6 +1018,7 @@ config MIPS_PARAVIRT
  endchoice
  
  source "arch/mips/alchemy/Kconfig"
diff --git a/target/linux/ar7/patches-4.9/310-ac49x-prom-support.patch b/target/linux/ar7/patches-4.14/310-ac49x-prom-support.patch
similarity index 100%
rename from target/linux/ar7/patches-4.9/310-ac49x-prom-support.patch
rename to target/linux/ar7/patches-4.14/310-ac49x-prom-support.patch
diff --git a/target/linux/ar7/patches-4.9/320-ac49x-mtd-partitions.patch b/target/linux/ar7/patches-4.14/320-ac49x-mtd-partitions.patch
similarity index 90%
rename from target/linux/ar7/patches-4.9/320-ac49x-mtd-partitions.patch
rename to target/linux/ar7/patches-4.14/320-ac49x-mtd-partitions.patch
index fafa8c77eb..7ae49b07e8 100644
--- a/target/linux/ar7/patches-4.9/320-ac49x-mtd-partitions.patch
+++ b/target/linux/ar7/patches-4.14/320-ac49x-mtd-partitions.patch
@@ -14,7 +14,7 @@
  	---help---
 --- a/drivers/mtd/Makefile
 +++ b/drivers/mtd/Makefile
-@@ -11,6 +11,7 @@ obj-$(CONFIG_MTD_SPLIT)		+= mtdsplit/
+@@ -12,6 +12,7 @@ obj-$(CONFIG_MTD_SPLIT)		+= mtdsplit/
  obj-$(CONFIG_MTD_OF_PARTS)	+= ofpart.o
  obj-$(CONFIG_MTD_REDBOOT_PARTS) += redboot.o
  obj-$(CONFIG_MTD_CMDLINE_PARTS) += cmdlinepart.o
@@ -24,7 +24,7 @@
  obj-$(CONFIG_MTD_BCM63XX_PARTS)	+= bcm63xxpart.o
 --- a/arch/mips/ar7/platform.c
 +++ b/arch/mips/ar7/platform.c
-@@ -201,7 +201,7 @@ static struct resource physmap_flash_res
+@@ -200,7 +200,7 @@ static struct resource physmap_flash_res
  	.end	= 0x11ffffff,
  };
  
diff --git a/target/linux/ar7/patches-4.9/920-ar7part.patch b/target/linux/ar7/patches-4.14/920-ar7part.patch
similarity index 100%
rename from target/linux/ar7/patches-4.9/920-ar7part.patch
rename to target/linux/ar7/patches-4.14/920-ar7part.patch
diff --git a/target/linux/ar7/patches-4.9/925-actiontec_leds.patch b/target/linux/ar7/patches-4.14/925-actiontec_leds.patch
similarity index 90%
rename from target/linux/ar7/patches-4.9/925-actiontec_leds.patch
rename to target/linux/ar7/patches-4.14/925-actiontec_leds.patch
index 804dbf5c3c..d37fa70f21 100644
--- a/target/linux/ar7/patches-4.9/925-actiontec_leds.patch
+++ b/target/linux/ar7/patches-4.14/925-actiontec_leds.patch
@@ -1,6 +1,6 @@
 --- a/arch/mips/ar7/platform.c
 +++ b/arch/mips/ar7/platform.c
-@@ -460,31 +460,22 @@ static struct gpio_led fb_fon_leds[] = {
+@@ -459,31 +459,22 @@ static struct gpio_led fb_fon_leds[] = {
  	},
  };
  
@@ -35,7 +35,7 @@
  		.default_trigger	= "default-on",
  	},
  	{
-@@ -492,6 +483,44 @@ static struct gpio_led gt701_leds[] = {
+@@ -491,6 +482,44 @@ static struct gpio_led gt701_leds[] = {
  		.gpio			= 10,
  		.active_low		= 1,
  	},
@@ -80,7 +80,7 @@
  };
  
  static struct gpio_led_platform_data ar7_led_data;
-@@ -535,9 +564,9 @@ static void __init detect_leds(void)
+@@ -534,9 +563,9 @@ static void __init detect_leds(void)
  	} else if (strstr(prid, "CYWM") || strstr(prid, "CYWL")) {
  		ar7_led_data.num_leds = ARRAY_SIZE(titan_leds);
  		ar7_led_data.leds = titan_leds;
diff --git a/target/linux/ar7/patches-4.9/950-cpmac_titan.patch b/target/linux/ar7/patches-4.14/950-cpmac_titan.patch
similarity index 86%
rename from target/linux/ar7/patches-4.9/950-cpmac_titan.patch
rename to target/linux/ar7/patches-4.14/950-cpmac_titan.patch
index 158b689c98..66ed07970c 100644
--- a/target/linux/ar7/patches-4.9/950-cpmac_titan.patch
+++ b/target/linux/ar7/patches-4.14/950-cpmac_titan.patch
@@ -1,6 +1,6 @@
 --- a/drivers/net/ethernet/ti/cpmac.c
 +++ b/drivers/net/ethernet/ti/cpmac.c
-@@ -1124,6 +1124,8 @@ static int cpmac_probe(struct platform_d
+@@ -1123,6 +1123,8 @@ static int cpmac_probe(struct platform_d
  		goto fail;
  	}
  
@@ -9,7 +9,7 @@
  	dev->irq = platform_get_irq_byname(pdev, "irq");
  
  	dev->netdev_ops = &cpmac_netdev_ops;
-@@ -1203,7 +1205,7 @@ int cpmac_init(void)
+@@ -1202,7 +1204,7 @@ int cpmac_init(void)
  	cpmac_mii->write = cpmac_mdio_write;
  	cpmac_mii->reset = cpmac_mdio_reset;
  
@@ -18,7 +18,7 @@
  
  	if (!cpmac_mii->priv) {
  		pr_err("Can't ioremap mdio registers\n");
-@@ -1214,10 +1216,16 @@ int cpmac_init(void)
+@@ -1213,10 +1215,16 @@ int cpmac_init(void)
  	/* FIXME: unhardcode gpio&reset bits */
  	ar7_gpio_disable(26);
  	ar7_gpio_disable(27);
@@ -37,7 +37,7 @@
  	cpmac_mii->reset(cpmac_mii);
  
  	for (i = 0; i < 300; i++) {
-@@ -1234,7 +1242,11 @@ int cpmac_init(void)
+@@ -1233,7 +1241,11 @@ int cpmac_init(void)
  		mask = 0;
  	}
  
diff --git a/target/linux/ar7/patches-4.9/101-MIPS-AR7-allow-NULL-clock-for-clk_get_rate.patch b/target/linux/ar7/patches-4.9/101-MIPS-AR7-allow-NULL-clock-for-clk_get_rate.patch
deleted file mode 100644
index 74ac0d1482..0000000000
--- a/target/linux/ar7/patches-4.9/101-MIPS-AR7-allow-NULL-clock-for-clk_get_rate.patch
+++ /dev/null
@@ -1,45 +0,0 @@
-From patchwork Tue Jul 18 10:17:26 2017
-Content-Type: text/plain; charset="utf-8"
-MIME-Version: 1.0
-Content-Transfer-Encoding: 7bit
-Subject: [5/9] MIPS: AR7: allow NULL clock for clk_get_rate
-X-Patchwork-Submitter: Jonas Gorski <jonas.gorski@gmail.com>
-X-Patchwork-Id: 16775
-Message-Id: <20170718101730.2541-6-jonas.gorski@gmail.com>
-To: unlisted-recipients:; (no To-header on input)
-Cc: Ralf Baechle <ralf@linux-mips.org>,
- Paul Gortmaker <paul.gortmaker@windriver.com>,
- James Hogan <james.hogan@imgtec.com>,
- linux-mips@linux-mips.org, linux-kernel@vger.kernel.org
-Date: Tue, 18 Jul 2017 12:17:26 +0200
-From: Jonas Gorski <jonas.gorski@gmail.com>
-List-Id: linux-mips <linux-mips.eddie.linux-mips.org>
-
-Make the behaviour of clk_get_rate consistent with common clk's
-clk_get_rate by accepting NULL clocks as parameter. Some device
-drivers rely on this, and will cause an OOPS otherwise.
-
-Fixes: 780019ddf02f ("MIPS: AR7: Implement clock API")
-Cc: Ralf Baechle <ralf@linux-mips.org>
-Cc: Paul Gortmaker <paul.gortmaker@windriver.com>
-Cc: James Hogan <james.hogan@imgtec.com>
-Cc: linux-mips@linux-mips.org
-Cc: linux-kernel@vger.kernel.org
-Reported-by: Mathias Kresin <dev@kresin.me>
-Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
----
- arch/mips/ar7/clock.c | 3 +++
- 1 file changed, 3 insertions(+)
-
---- a/arch/mips/ar7/clock.c
-+++ b/arch/mips/ar7/clock.c
-@@ -430,6 +430,9 @@ EXPORT_SYMBOL(clk_disable);
- 
- unsigned long clk_get_rate(struct clk *clk)
- {
-+	if (!clk)
-+		return 0;
-+
- 	return clk->rate;
- }
- EXPORT_SYMBOL(clk_get_rate);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
