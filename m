Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4543A130925
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 17:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=P/i1DGPy8fOd1DqW4D/sus3NVgbdty4G6Hspx0r/vcY=; b=a6ZfxMK0YBAMIFwYU3nqCx40Ze
	MEmgQC1OLvN7wCXqb3/rqhXviSErIPJ2qaeKMVRB0uObvnURpkyCqujpXqhD34eKovJwqHKt67648
	euRZ0pTnefZP64Uzq+t2lhkV/EasGsAvq2ffWwrolOGSNwd/PV02WWszWSvOU78XJNfJQr8nXuuxS
	F+DsGgANGRuv7hREYawZOieyMs+KCjpTfgxypHdFDukj5e+VCqjU3HcsMAtfmBgVnQMktHD7yjrpj
	zyrJZ5xaaskX7hL3HxgisH5Cs7LZDt0v9MMjHmuy5uw07FqxOth3qeWq1UDZbxKHaO8w4OW7t3P6/
	U3gcMJMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io8wI-0001Wf-Lw; Sun, 05 Jan 2020 16:39:42 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io8vg-0001Fu-6f
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 16:39:09 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mg6Na-1jLpKF3Toc-00hdTO for <openwrt-devel@lists.openwrt.org>; Sun, 05
 Jan 2020 17:39:01 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 17:38:11 +0100
Message-Id: <20200105163813.3846-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200105163813.3846-1-freifunk@adrianschmutzler.de>
References: <20200105163813.3846-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:VnZ438UhkH7PFhvtFwtnfI7xi/++8PE9+p8d6PBAWvJxBCMaGRf
 +T2NWvdUk27UatfyR/eNxLsHl/EW2i+pYZpDR/jAIVBofuQcCrTndVyXeaLm2AT0wa+JKkh
 IoAJ6DKkXpVlLhfuRRe2oZ79o/cE1DJ2zDGGjaDD5ZLARGTE0PjQ0un72Ss/l31bI1qjDC6
 0kLLW0RlTds/fsKWt3/qw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AOsBLR+vVjc=:DnxIiLzfCJCbDtZmVkBhjU
 aHT7bSWjjDRie0ACu47eIt+JFBWCcMh1neIJy7TV34WyKPYGCRhag1eULbuH+7uexxcwFBpR/
 p/TYXJtZPi+OW1VhA8LcmvGuawHkUFXIvgLCPnY0jt8C4bQOzrVy5OI9bgTA3hM70XR7xpuJh
 mQfUZegP5arebcfSO90C2z8iQ3tQYKY9sQrLmDjPME43D81aUhqKmnzCZU4Fgrf9UrFs1SiNj
 iyJWGArSlRSp2K1eWRbyan1sOCVCqTGrIK9+Wx42fF27ivRjv5396wcOe+R4O4AvXYBvf/+VI
 /kKvF62MC88tWe3CKjpmsSJIRrVa5zre9wIVAtQaC4q6upHX1WEIHEkOVUVFuNByVMcKNXnu5
 i4SBOLgtF3MQHOgSBVQupPD8cRBtsbFDNyJS5o6eUPmD0YwxvnK/LGuYYElKlNfEP/QJhlDdv
 F5Ly6YmGKBEA9rqE1nPObCowjTMVTUe3PJwLj6n55KRjssY6qPLhLPOA+8FvkRKdtTiR7igo9
 TrlWaoYlu8ujbhPyD1du3M1GcJy4Y/0ALEzRNRETIXZuKJhlrXgw03qk2UxMzMeVNZ5/ut62r
 1f3wGm+0R3k71XYtkF6FmXu7cHS7vEwo9j90FEL6Fzqw/8ONQHQi1OFpXkvE/1FgPLCbXG54n
 PvN1BDvoNbAfwo5RsgSxT5TmcbAQEsC0y+H+KrUWJmA+T6R0I71VD/NKupw6ZbIKJ0OLo7ZsW
 udmlUaoi1E0H83NLH9dqyEdgBWEiMxG2ZqCiL7+uju5V3foC09lOTQIPe2VnagdjH817FCSoL
 WzVHpqp/uC3lJSbZmgRsRGc58a+Ka+BPiW0TxxBQdFSlY0OO/G3XqgsQ4dBsi7rz1wkqG3Ekb
 Uqcr+BtLoqrDxPbIoEHRoaSA/xo5B71+FFhTDZC/Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_083904_843288_A926CB07 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/5] orion: remove unmaintained target
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

This target is still on kernel 4.9, and it looks like there is no
active maintainer for this target anymore.
Remove the code and all the packages which are only used by this target.

To add this target to OpenWrt again port it to a recent and supported
kernel version.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/orion/Makefile                   |  24 -
 .../orion/base-files/etc/board.d/02_network   |  15 -
 .../orion/base-files/etc/hotplug.d/usb/10-usb |  54 --
 .../orion/base-files/lib/preinit/01_sysinfo   |  12 -
 target/linux/orion/config-4.9                 | 246 --------
 .../base-files/etc/uci-defaults/09_hardware   |  54 --
 .../base-files/lib/upgrade/platform.sh        |  38 --
 target/linux/orion/generic/target.mk          |  14 -
 target/linux/orion/harddisk/config-default    |  38 --
 target/linux/orion/harddisk/target.mk         |  15 -
 target/linux/orion/image/Makefile             |  12 -
 target/linux/orion/image/generic.mk           | 237 --------
 target/linux/orion/image/harddisk.mk          |  57 --
 .../000-arm_openwrt_machtypes.patch           |   8 -
 .../100-wrt350nv2_openwrt_partition_map.patch |  32 -
 .../101-wnr854t_partition_map.patch           |  25 -
 .../patches-4.9/200-dt2_board_support.patch   | 562 ------------------
 .../patches-4.9/210-wn802t_support.patch      |  73 ---
 18 files changed, 1516 deletions(-)
 delete mode 100644 target/linux/orion/Makefile
 delete mode 100755 target/linux/orion/base-files/etc/board.d/02_network
 delete mode 100644 target/linux/orion/base-files/etc/hotplug.d/usb/10-usb
 delete mode 100644 target/linux/orion/base-files/lib/preinit/01_sysinfo
 delete mode 100644 target/linux/orion/config-4.9
 delete mode 100644 target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware
 delete mode 100644 target/linux/orion/generic/base-files/lib/upgrade/platform.sh
 delete mode 100644 target/linux/orion/generic/target.mk
 delete mode 100644 target/linux/orion/harddisk/config-default
 delete mode 100644 target/linux/orion/harddisk/target.mk
 delete mode 100644 target/linux/orion/image/Makefile
 delete mode 100644 target/linux/orion/image/generic.mk
 delete mode 100644 target/linux/orion/image/harddisk.mk
 delete mode 100644 target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch
 delete mode 100644 target/linux/orion/patches-4.9/100-wrt350nv2_openwrt_partition_map.patch
 delete mode 100644 target/linux/orion/patches-4.9/101-wnr854t_partition_map.patch
 delete mode 100644 target/linux/orion/patches-4.9/200-dt2_board_support.patch
 delete mode 100644 target/linux/orion/patches-4.9/210-wn802t_support.patch

diff --git a/target/linux/orion/Makefile b/target/linux/orion/Makefile
deleted file mode 100644
index 994c37ea6a..0000000000
--- a/target/linux/orion/Makefile
+++ /dev/null
@@ -1,24 +0,0 @@
-#
-# Copyright (C) 2008-2015 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-include $(TOPDIR)/rules.mk
-
-ARCH:=arm
-BOARD:=orion
-BOARDNAME:=Marvell Orion
-FEATURES:=broken rtc
-SUBTARGETS:=generic harddisk
-MAINTAINER:=Imre Kaloz <kaloz@openwrt.org>
-
-KERNEL_PATCHVER:=4.9
-
-include $(INCLUDE_DIR)/target.mk
-
-KERNELNAME:=zImage
-
-DEFAULT_PACKAGES += kmod-ath9k wpad-basic kmod-rtc-isl1208 uboot-envtools
-
-$(eval $(call BuildTarget))
diff --git a/target/linux/orion/base-files/etc/board.d/02_network b/target/linux/orion/base-files/etc/board.d/02_network
deleted file mode 100755
index ab74bf3713..0000000000
--- a/target/linux/orion/base-files/etc/board.d/02_network
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-. /lib/functions/uci-defaults.sh
-
-board_config_update
-
-if grep -q lan1 /proc/net/dev; then
-	ucidef_set_interfaces_lan_wan "lan1 lan2 lan3 lan4" "wan"
-else
-	ucidef_set_interface_lan "eth0"
-fi
-
-board_config_flush
-
-exit 0
diff --git a/target/linux/orion/base-files/etc/hotplug.d/usb/10-usb b/target/linux/orion/base-files/etc/hotplug.d/usb/10-usb
deleted file mode 100644
index 2ae0f73bdc..0000000000
--- a/target/linux/orion/base-files/etc/hotplug.d/usb/10-usb
+++ /dev/null
@@ -1,54 +0,0 @@
-#!/bin/sh
-#
-# Copyright (C) 2009-2010 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-usb_led=''
-usb_device=''
-
-led_set_attr() {
-	[ -f "/sys/class/leds/$1/$2" ] && echo "$3" > "/sys/class/leds/$1/$2"
-}
-
-usb_led_set_timer() {
-	led_set_attr "${usb_led}" 'trigger' 'timer'
-	led_set_attr "${usb_led}" 'delay_on' "$1"
-	led_set_attr "${usb_led}" 'delay_off' "$2"
-}
-
-usb_led_on() {
-	led_set_attr "${usb_led}" 'trigger' 'none'
-	led_set_attr "${usb_led}" 'brightness' 255
-}
-
-usb_led_off() {
-	led_set_attr "${usb_led}" 'trigger' 'none'
-	led_set_attr "${usb_led}" 'brightness' 0
-}
-
-get_usb_led() {
-	. /lib/functions.sh
-
-	case "$(board_name)" in
-	 'Linksys WRT350N v2')
-		usb_led='wrt350nv2:green:usb'
-		usb_device='1-1:1.0'
-		;;
-	esac;
-}
-
-get_usb_led
-
-case "${ACTION}" in
- add)
-	# update LEDs
-	[ "${usb_device}" = "${DEVICENAME}" ] && usb_led_on
-	;;
- remove)
-	# update LEDs
-	[ "${usb_device}" = "${DEVICENAME}" ] && usb_led_off
-	;;
-esac
diff --git a/target/linux/orion/base-files/lib/preinit/01_sysinfo b/target/linux/orion/base-files/lib/preinit/01_sysinfo
deleted file mode 100644
index 1ef07d774f..0000000000
--- a/target/linux/orion/base-files/lib/preinit/01_sysinfo
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-do_sysinfo_orion() {
-	local name="$(sed -n /Hardware/s/.*:.//p /proc/cpuinfo)"
-	[ -z "$name" ] && name="unknown"
-
-	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"
-	echo "$name" > /tmp/sysinfo/board_name
-	echo "unknown" > /tmp/sysinfo/model
-}
-
-boot_hook_add preinit_main do_sysinfo_orion
diff --git a/target/linux/orion/config-4.9 b/target/linux/orion/config-4.9
deleted file mode 100644
index 56ae5ee98a..0000000000
--- a/target/linux/orion/config-4.9
+++ /dev/null
@@ -1,246 +0,0 @@
-CONFIG_ALIGNMENT_TRAP=y
-CONFIG_ARCH_HAS_ATOMIC64_DEC_IF_POSITIVE=y
-CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
-CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
-# CONFIG_ARCH_HAS_SG_CHAIN is not set
-CONFIG_ARCH_HAVE_CUSTOM_GPIO_H=y
-CONFIG_ARCH_HIBERNATION_POSSIBLE=y
-CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
-# CONFIG_ARCH_MULTI_V4 is not set
-# CONFIG_ARCH_MULTI_V4T is not set
-CONFIG_ARCH_NR_GPIO=0
-CONFIG_ARCH_ORION5X=y
-# CONFIG_ARCH_ORION5X_DT is not set
-CONFIG_ARCH_REQUIRE_GPIOLIB=y
-# CONFIG_ARCH_SELECT_MEMORY_MODEL is not set
-# CONFIG_ARCH_SPARSEMEM_DEFAULT is not set
-CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
-CONFIG_ARCH_SUPPORTS_UPROBES=y
-CONFIG_ARCH_SUSPEND_POSSIBLE=y
-CONFIG_ARCH_USE_BUILTIN_BSWAP=y
-CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
-CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
-CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
-CONFIG_ARM=y
-# CONFIG_ARM_CPU_SUSPEND is not set
-CONFIG_ARM_L1_CACHE_SHIFT=5
-CONFIG_ARM_PATCH_PHYS_VIRT=y
-# CONFIG_ARM_THUMB is not set
-CONFIG_ASYNC_TX_ENABLE_CHANNEL_SWITCH=y
-CONFIG_ATAGS=y
-CONFIG_AUTO_ZRELADDR=y
-# CONFIG_CACHE_L2X0 is not set
-CONFIG_CLKDEV_LOOKUP=y
-CONFIG_CLKSRC_MMIO=y
-CONFIG_CLONE_BACKWARDS=y
-CONFIG_CMDLINE="rootfstype=squashfs,jffs2 noinitrd console=ttyS0,115200 earlyprintk"
-CONFIG_CMDLINE_FORCE=y
-CONFIG_COMMON_CLK=y
-CONFIG_CPU_32v5=y
-CONFIG_CPU_ABRT_EV5T=y
-CONFIG_CPU_CACHE_VIVT=y
-CONFIG_CPU_COPY_FEROCEON=y
-CONFIG_CPU_CP15=y
-CONFIG_CPU_CP15_MMU=y
-CONFIG_CPU_FEROCEON=y
-CONFIG_CPU_FEROCEON_OLD_ID=y
-# CONFIG_CPU_ICACHE_DISABLE is not set
-CONFIG_CPU_PABRT_LEGACY=y
-CONFIG_CPU_TLB_FEROCEON=y
-CONFIG_CPU_USE_DOMAINS=y
-CONFIG_CRYPTO_DES=y
-CONFIG_CRYPTO_DEV_MARVELL_CESA=y
-CONFIG_CRYPTO_HASH=y
-CONFIG_CRYPTO_HASH2=y
-CONFIG_CRYPTO_HW=y
-CONFIG_CRYPTO_RNG2=y
-CONFIG_CRYPTO_WORKQUEUE=y
-CONFIG_DEBUG_LL=y
-CONFIG_DEBUG_LL_INCLUDE="debug/8250.S"
-CONFIG_DEBUG_LL_UART_8250=y
-CONFIG_DEBUG_UART_8250=y
-# CONFIG_DEBUG_UART_8250_FLOW_CONTROL is not set
-CONFIG_DEBUG_UART_8250_SHIFT=2
-# CONFIG_DEBUG_UART_8250_WORD is not set
-CONFIG_DEBUG_UART_PHYS=0xf1012000
-CONFIG_DEBUG_UART_VIRT=0xfe012000
-# CONFIG_DEBUG_USER is not set
-CONFIG_DMADEVICES=y
-CONFIG_DMA_ENGINE=y
-CONFIG_DMA_ENGINE_RAID=y
-CONFIG_DMA_OF=y
-CONFIG_DNOTIFY=y
-CONFIG_DTC=y
-CONFIG_EARLY_PRINTK=y
-CONFIG_EDAC_ATOMIC_SCRUB=y
-CONFIG_EDAC_SUPPORT=y
-CONFIG_FIXED_PHY=y
-CONFIG_FIX_EARLYCON_MEM=y
-CONFIG_FRAME_POINTER=y
-CONFIG_GENERIC_ALLOCATOR=y
-CONFIG_GENERIC_ATOMIC64=y
-CONFIG_GENERIC_BUG=y
-CONFIG_GENERIC_CLOCKEVENTS=y
-CONFIG_GENERIC_IDLE_POLL_SETUP=y
-CONFIG_GENERIC_IO=y
-CONFIG_GENERIC_IRQ_CHIP=y
-CONFIG_GENERIC_IRQ_SHOW=y
-CONFIG_GENERIC_IRQ_SHOW_LEVEL=y
-CONFIG_GENERIC_PCI_IOMAP=y
-CONFIG_GENERIC_SCHED_CLOCK=y
-CONFIG_GENERIC_SMP_IDLE_THREAD=y
-CONFIG_GENERIC_STRNCPY_FROM_USER=y
-CONFIG_GENERIC_STRNLEN_USER=y
-CONFIG_GPIOLIB=y
-CONFIG_GPIO_DEVRES=y
-CONFIG_GPIO_MVEBU=y
-CONFIG_GPIO_SYSFS=y
-CONFIG_HANDLE_DOMAIN_IRQ=y
-CONFIG_HARDIRQS_SW_RESEND=y
-CONFIG_HAS_DMA=y
-CONFIG_HAS_IOMEM=y
-CONFIG_HAS_IOPORT_MAP=y
-# CONFIG_HAVE_64BIT_ALIGNED_ACCESS is not set
-CONFIG_HAVE_ARCH_AUDITSYSCALL=y
-# CONFIG_HAVE_ARCH_BITREVERSE is not set
-CONFIG_HAVE_ARCH_JUMP_LABEL=y
-CONFIG_HAVE_ARCH_KGDB=y
-CONFIG_HAVE_ARCH_PFN_VALID=y
-CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
-CONFIG_HAVE_ARCH_TRACEHOOK=y
-# CONFIG_HAVE_BOOTMEM_INFO_NODE is not set
-CONFIG_HAVE_BPF_JIT=y
-CONFIG_HAVE_CC_STACKPROTECTOR=y
-CONFIG_HAVE_CLK=y
-CONFIG_HAVE_CLK_PREPARE=y
-CONFIG_HAVE_CONTEXT_TRACKING=y
-CONFIG_HAVE_C_RECORDMCOUNT=y
-CONFIG_HAVE_DEBUG_KMEMLEAK=y
-CONFIG_HAVE_DMA_API_DEBUG=y
-CONFIG_HAVE_DMA_ATTRS=y
-CONFIG_HAVE_DMA_CONTIGUOUS=y
-CONFIG_HAVE_DYNAMIC_FTRACE=y
-CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
-CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
-CONFIG_HAVE_FUNCTION_TRACER=y
-CONFIG_HAVE_GENERIC_DMA_COHERENT=y
-CONFIG_HAVE_IDE=y
-CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
-CONFIG_HAVE_LATENCYTOP_SUPPORT=y
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
-CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
-CONFIG_HAVE_UID16=y
-CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
-CONFIG_HZ_FIXED=0
-CONFIG_HZ_PERIODIC=y
-CONFIG_I2C=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_I2C_CHARDEV=y
-CONFIG_I2C_MV64XXX=y
-CONFIG_INITRAMFS_SOURCE=""
-CONFIG_IOMMU_HELPER=y
-CONFIG_IRQCHIP=y
-CONFIG_IRQ_DOMAIN=y
-CONFIG_IRQ_FORCED_THREADING=y
-CONFIG_IRQ_WORK=y
-CONFIG_LEDS_GPIO=y
-CONFIG_LIBFDT=y
-# CONFIG_MACH_D2NET_DT is not set
-# CONFIG_MACH_DB88F5281 is not set
-# CONFIG_MACH_DNS323 is not set
-# CONFIG_MACH_DT2 is not set
-# CONFIG_MACH_KUROBOX_PRO is not set
-# CONFIG_MACH_LINKSTATION_LSCHL is not set
-# CONFIG_MACH_LINKSTATION_LS_HGL is not set
-# CONFIG_MACH_LINKSTATION_MINI is not set
-# CONFIG_MACH_LINKSTATION_PRO is not set
-# CONFIG_MACH_MSS2_DT is not set
-# CONFIG_MACH_MV2120 is not set
-# CONFIG_MACH_NET2BIG is not set
-# CONFIG_MACH_RD88F5181L_FXO is not set
-# CONFIG_MACH_RD88F5181L_GE is not set
-# CONFIG_MACH_RD88F5182 is not set
-# CONFIG_MACH_RD88F5182_DT is not set
-# CONFIG_MACH_RD88F6183AP_GE is not set
-CONFIG_MACH_TERASTATION_PRO2=y
-# CONFIG_MACH_TS209 is not set
-# CONFIG_MACH_TS409 is not set
-# CONFIG_MACH_TS78XX is not set
-CONFIG_MACH_WN802T=y
-CONFIG_MACH_WNR854T=y
-CONFIG_MACH_WRT350N_V2=y
-CONFIG_MDIO_BOARDINFO=y
-CONFIG_MMC=y
-CONFIG_MMC_MVSDIO=y
-# CONFIG_MMC_TIFM_SD is not set
-CONFIG_MODULES_USE_ELF_REL=y
-CONFIG_MTD_PHYSMAP=y
-CONFIG_MULTI_IRQ_HANDLER=y
-CONFIG_MV643XX_ETH=y
-CONFIG_MVEBU_MBUS=y
-CONFIG_MVMDIO=y
-# CONFIG_MVNETA is not set
-CONFIG_MV_XOR=y
-CONFIG_NEED_DMA_MAP_STATE=y
-CONFIG_NEED_KUSER_HELPERS=y
-CONFIG_NEED_PER_CPU_KM=y
-# CONFIG_NET_VENDOR_AURORA is not set
-CONFIG_NO_BOOTMEM=y
-CONFIG_OF=y
-CONFIG_OF_ADDRESS=y
-CONFIG_OF_ADDRESS_PCI=y
-CONFIG_OF_EARLY_FLATTREE=y
-CONFIG_OF_FLATTREE=y
-CONFIG_OF_GPIO=y
-CONFIG_OF_IRQ=y
-CONFIG_OF_MDIO=y
-CONFIG_OF_MTD=y
-CONFIG_OF_NET=y
-CONFIG_OF_PCI=y
-CONFIG_OF_PCI_IRQ=y
-CONFIG_OF_RESERVED_MEM=y
-CONFIG_OLD_SIGACTION=y
-CONFIG_OLD_SIGSUSPEND3=y
-CONFIG_ORION_WATCHDOG=y
-CONFIG_PAGE_OFFSET=0xC0000000
-CONFIG_PCI=y
-# CONFIG_PCI_DOMAINS_GENERIC is not set
-CONFIG_PERF_USE_VMALLOC=y
-CONFIG_PGTABLE_LEVELS=2
-CONFIG_PHYLIB=y
-CONFIG_PLAT_ORION=y
-CONFIG_PLAT_ORION_LEGACY=y
-CONFIG_RATIONAL=y
-# CONFIG_RCU_EXPERT is not set
-# CONFIG_RCU_STALL_COMMON is not set
-CONFIG_RTC_CLASS=y
-CONFIG_RWSEM_XCHGADD_ALGORITHM=y
-# CONFIG_SCHED_INFO is not set
-# CONFIG_SCSI_DMA is not set
-CONFIG_SERIAL_8250_FSL=y
-CONFIG_SPLIT_PTLOCK_CPUS=999999
-CONFIG_SRAM=y
-CONFIG_SRCU=y
-CONFIG_SWIOTLB=y
-CONFIG_SYS_SUPPORTS_APM_EMULATION=y
-CONFIG_TICK_CPU_ACCOUNTING=y
-CONFIG_UNCOMPRESS_INCLUDE="mach/uncompress.h"
-CONFIG_USB_SUPPORT=y
-CONFIG_USE_OF=y
-CONFIG_VECTORS_BASE=0xffff0000
-# CONFIG_VFP is not set
-CONFIG_WATCHDOG_CORE=y
-CONFIG_XZ_DEC_ARM=y
-CONFIG_XZ_DEC_BCJ=y
-CONFIG_ZBOOT_ROM_BSS=0x0
-CONFIG_ZBOOT_ROM_TEXT=0x0
-CONFIG_ZONE_DMA_FLAG=0
diff --git a/target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware b/target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware
deleted file mode 100644
index 5d928b092a..0000000000
--- a/target/linux/orion/generic/base-files/etc/uci-defaults/09_hardware
+++ /dev/null
@@ -1,54 +0,0 @@
-#!/bin/sh
-#
-# Copyright (C) 2010 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-#
-# This script sets system defaults for the hardware on firstboot
-#
-
-. /lib/functions.sh
-
-wrt350nv2_default() {
-# leds
-	uci batch <<__EOF
-set system.power_led=led
-set system.power_led.name='Power LED (green)'
-set system.power_led.sysfs='wrt350nv2:green:power'
-set system.power_led.default='1'
-set system.wifi_led=led
-set system.wifi_led.name='Wireless LED (green)'
-set system.wifi_led.sysfs='wrt350nv2:green:wireless'
-set system.wifi_led.trigger='netdev'
-set system.wifi_led.dev='wlan0'
-set system.wifi_led.mode='link tx rx'
-set system.wifi_led.default='0'
-commit system
-__EOF
-
-# add mac address from U-Boot partition to lan and wan devices
-	MTD=$(grep -e 'u-boot' /proc/mtd)
-	MTD=$(echo ${MTD} | sed 's/[a-z]*\([0-9]*\):.*/\1/')
-	[ -n "${MTD}" ] && {
-		MACADDR=$(dd if=/dev/mtdblock${MTD} bs=1 skip=262048 count=6 2>/dev/null | hexdump -e '1/1 "%02x"')
-		MACADDR2=$(( 0x${MACADDR} + 1))
-		MACADDR2=$(printf "%012x" ${MACADDR2})
-
-		MACADDR=$(echo ${MACADDR} | sed 's/\(..\)/\1:/g' | sed 's/:$//')
-		MACADDR2=$(echo ${MACADDR2} | sed 's/\(..\)/\1:/g' | sed 's/:$//')
-
-		uci set network.eth0.macaddr=${MACADDR}
-		uci set network.lan.macaddr=${MACADDR}
-		uci set network.wan.macaddr=${MACADDR2}
-		uci commit network
-	}
-}
-
-case "$(board_name)" in
- 'Linksys WRT350N v2')
-	wrt350nv2_default
-	;;
-esac
diff --git a/target/linux/orion/generic/base-files/lib/upgrade/platform.sh b/target/linux/orion/generic/base-files/lib/upgrade/platform.sh
deleted file mode 100644
index cf1fad83a8..0000000000
--- a/target/linux/orion/generic/base-files/lib/upgrade/platform.sh
+++ /dev/null
@@ -1,38 +0,0 @@
-#
-# Copyright (C) 2010-2011 OpenWrt.org
-#
-
-# use default "image" for PART_NAME
-# use default for platform_do_upgrade()
-
-platform_check_image() {
-	[ "$#" -gt 1 ] && { echo 'Too many arguments. Only flash file expected.'; return 1; }
-
-	local hardware="$(board_name)"
-	local magic="$(get_magic_word "$1")"
-	local magic_long="$(get_magic_long "$1")"
-
-	case "${hardware}" in
-	 # hardware with a direct uImage partition
-	 # image header format as described in U-Boot's include/image.h
-	 # see http://git.denx.de/cgi-bin/gitweb.cgi?p=u-boot.git;a=blob;f=include/image.h
-	 'Linksys WRT350N v2')
-		[ "${magic_long}" != '27051956' ] && {
-			echo "Invalid image type ${magic_long}."
-			return 1
-		}
-		return 0
-		;;
-	 # Netgear WNR854T (has uImage as file inside a JFFS2 partition)
-	 'Netgear WNR854T')
-		[ "${magic}" != '8519' ] && {
-			echo "Invalid image type ${magic}."
-			return 1
-		}
-		return 0
-		;;
-	esac
-
-	echo "Sysupgrade is not yet supported on ${hardware}."
-	return 1
-}
diff --git a/target/linux/orion/generic/target.mk b/target/linux/orion/generic/target.mk
deleted file mode 100644
index 7b054edd6b..0000000000
--- a/target/linux/orion/generic/target.mk
+++ /dev/null
@@ -1,14 +0,0 @@
-#
-# Copyright (C) 2008-2010 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-BOARDNAME:=Generic
-FEATURES+=squashfs
-
-define Target/Description
-	Build firmware images for Marvell Orion based boards that boot from internal flash.
-	(e.g.: Linksys WRT350N v2, Netgear WNR854T, ...)
-endef
diff --git a/target/linux/orion/harddisk/config-default b/target/linux/orion/harddisk/config-default
deleted file mode 100644
index bf6cee1715..0000000000
--- a/target/linux/orion/harddisk/config-default
+++ /dev/null
@@ -1,38 +0,0 @@
-CONFIG_ATA=y
-CONFIG_BLK_DEV_DM=y
-CONFIG_BLK_DEV_MD=y
-CONFIG_BLK_DEV_SD=y
-CONFIG_CRC16=y
-# CONFIG_DM_CRYPT is not set
-# CONFIG_DM_MIRROR is not set
-# CONFIG_DM_SNAPSHOT is not set
-CONFIG_EXT4_FS=y
-CONFIG_FS_MBCACHE=y
-CONFIG_HWMON=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_JBD2=y
-CONFIG_MACH_DT2=y
-CONFIG_MACH_NET2BIG=y
-# CONFIG_MACH_WN802T is not set
-# CONFIG_MACH_WNR854T is not set
-# CONFIG_MACH_WRT350N_V2 is not set
-CONFIG_MD=y
-CONFIG_MD_AUTODETECT=y
-CONFIG_MD_LINEAR=y
-# CONFIG_MD_MULTIPATH is not set
-CONFIG_MD_RAID0=y
-CONFIG_MD_RAID1=y
-# CONFIG_MD_RAID10 is not set
-# CONFIG_MD_RAID456 is not set
-CONFIG_NLS=y
-CONFIG_RTC_CLASS=y
-CONFIG_SATA_MV=y
-CONFIG_SCSI=y
-CONFIG_SCSI_DMA=y
-CONFIG_USB=y
-CONFIG_USB_COMMON=y
-CONFIG_USB_EHCI_HCD=y
-CONFIG_USB_EHCI_HCD_ORION=y
-CONFIG_USB_EHCI_HCD_PLATFORM=y
-CONFIG_USB_STORAGE=y
-# CONFIG_USB_UHCI_HCD is not set
diff --git a/target/linux/orion/harddisk/target.mk b/target/linux/orion/harddisk/target.mk
deleted file mode 100644
index 6096e69709..0000000000
--- a/target/linux/orion/harddisk/target.mk
+++ /dev/null
@@ -1,15 +0,0 @@
-#
-# Copyright (C) 2008-2010 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-BOARDNAME:=Internal Hard-Disk
-FEATURES+=targz
-DEVICE_TYPE:=nas
-
-define Target/Description
-	Build firmware images for Marvell Orion based boards that boot directly from internal disk storage.
-	(e.g.: Freecom DataTank 2, ...)
-endef
diff --git a/target/linux/orion/image/Makefile b/target/linux/orion/image/Makefile
deleted file mode 100644
index 058519f720..0000000000
--- a/target/linux/orion/image/Makefile
+++ /dev/null
@@ -1,12 +0,0 @@
-#
-# Copyright (C) 2008-2010 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-include $(TOPDIR)/rules.mk
-include $(INCLUDE_DIR)/image.mk
-
-include $(SUBTARGET).mk
-
-$(eval $(call BuildImage))
diff --git a/target/linux/orion/image/generic.mk b/target/linux/orion/image/generic.mk
deleted file mode 100644
index 595f8c1f79..0000000000
--- a/target/linux/orion/image/generic.mk
+++ /dev/null
@@ -1,237 +0,0 @@
-#
-# Copyright (C) 2008-2015 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-### DO NOT INDENT LINES CONTAINING $(call xyz) AS THIS MAY CHANGE THE CONTEXT
-### OF THE FIRST LINE IN THE CALLED VARIABLE (NOTE: variable!)
-### see http://www.gnu.org/software/make/manual/html_node/Call-Function.html#Call-Function
-### ACTUALLY IT IS A SIMPLE MACRO EXPANSION
-
-### use round brackets for make variables, and curly brackets for shell variables
-
-
-## Kernel mtd partition size in KiB
-KERNEL_MTD_SIZE:=1280
-
-# Netgear WNR854T: erase size is 128KiB = 0x00020000 = 131072
-ERASE_SIZE_128K:=128
-
-# Linksys WRT350N v2: erase size is 64KiB = 0x00010000 = 65536
-ERASE_SIZE_64K:=64
-
-# define JFFS2 sizes for include/image.mk
-JFFS2_BLOCKSIZE:=64k 128k
-
-
-###
-### Image/BuildKernel
-###
-
-define Image/BuildKernel
-### Dummy comment for indented calls of Image/BuildKernel
-
- ## Netgear WN802T: mach id 3306 (0x0cea)
-$(call Image/BuildKernel/ARM/zImage,wn802t,"\x0c\x1c\xa0\xe3\xea\x10\x81\xe3")
-$(call Image/BuildKernel/ARM/uImage,wn802t)
-ifeq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),y)
-$(call Image/BuildKernel/ARM/zImage,wn802t,"\x0c\x1c\xa0\xe3\xea\x10\x81\xe3",-initramfs)
-$(call Image/BuildKernel/ARM/uImage,wn802t,-initramfs)
-endif
- ifneq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),y)  # nothing more to do for a ramdisk build
-$(call Image/BuildKernel/JFFS2uImage,wn802t,$(ERASE_SIZE_64K),uImage)
-$(call Image/Default/FileSizeCheck,$(KDIR)/wn802t-uImage.jffs2,$(shell expr $(KERNEL_MTD_SIZE) \* 1024))
- endif
-
- ## Netgear WNR854T: mach id 1801 (0x0709)
-$(call Image/BuildKernel/ARM/zImage,wnr854t,"\x07\x1c\xa0\xe3\x09\x10\x81\xe3")
-$(call Image/BuildKernel/ARM/uImage,wnr854t)
-ifeq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),y)
-$(call Image/BuildKernel/ARM/zImage,wnr854t,"\x07\x1c\xa0\xe3\x09\x10\x81\xe3",-initramfs)
-$(call Image/BuildKernel/ARM/uImage,wnr854t,-initramfs)
-endif
- ifneq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),y)  # nothing more to do for a ramdisk build
-$(call Image/BuildKernel/JFFS2uImage,wnr854t,$(ERASE_SIZE_128K),uImage)
-$(call Image/Default/FileSizeCheck,$(KDIR)/wnr854t-uImage.jffs2,$(shell expr $(KERNEL_MTD_SIZE) \* 1024))
- endif
-
- ## Linksys WRT350N v2: mach id 1633 (0x0661)
-$(call Image/BuildKernel/ARM/zImage,wrt350nv2,"\x06\x1c\xa0\xe3\x61\x10\x81\xe3")
-$(call Image/BuildKernel/ARM/uImage,wrt350nv2)
-ifeq ($($CONFIG_TARGET_ROOTFS_INITRAMFS),y)
-$(call Image/BuildKernel/ARM/zImage,wrt350nv2,"\x06\x1c\xa0\xe3\x61\x10\x81\xe3",-initramfs)
-$(call Image/BuildKernel/ARM/uImage,wrt350nv2-initramfs)
-endif
- ifneq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),y)  # nothing more to do for a ramdisk build
-$(call Image/Default/FileSizeCheck,$(KDIR)/wrt350nv2-uImage,$(shell expr $(KERNEL_MTD_SIZE) \* 1024))
- endif
-
- ## Buffalo Terastation Pro II/Live: mach id 1584 (0x0630)
-$(call Image/BuildKernel/ARM/zImage,terastation-pro2,"\x06\x1c\xa0\xe3\x30\x10\x81\xe3")
-$(call Image/BuildKernel/ARM/uImage,terastation-pro2)
-ifeq ($(CONFIG_TARGET_ROOTFS_INITRAMFS),y)
-$(call Image/BuildKernel/ARM/zImage,terastation-pro2,"\x06\x1c\xa0\xe3\x30\x10\x81\xe3",-initramfs)
-$(call Image/BuildKernel/ARM/uImage,terastation-pro2,-initramfs)
-endif
-endef
-
-define Image/BuildKernel/ARM/zImage
- # merge machine id and regular zImage into one file
- # parameters: 1 = machine name, 2 = machine id as string in quotes
-	# $(BOARD) kernel zImage for $(1)
-	echo -en $(2) > '$(KDIR)/$(1)-zImage$(3)'
-	cat '$(KDIR)/zImage$(3)' >> '$(KDIR)/$(1)-zImage$(3)'
-endef
-
-define Image/BuildKernel/ARM/uImage
- # create uImage from zImage
- # parameters: 1 = machine name
-	# $(BOARD) kernel uImage for $(1)
-	'$(STAGING_DIR_HOST)/bin/mkimage' -A arm -O linux -T kernel \
-	-C none -a 0x00008000 -e 0x00008000 -n 'Linux-$(LINUX_VERSION)' \
-	-d '$(KDIR)/$(1)-zImage$(2)' '$(KDIR)/$(1)-uImage$(2)'
- ifeq ($(2),-initramfs) # only copy uImage for ramdisk build
-	cp '$(KDIR)/$(1)-uImage-initramfs' '$(BIN_DIR)/openwrt-$(1)-uImage-initramfs'
- endif
-endef
-
-define Image/BuildKernel/JFFS2uImage
- # create JFFS2 partition with uImage file (result is already padded to erase size)
- # parameters: 1 = machine name, 2 = erase size in KiB, 3 = uImage file name
-	# $(BOARD) kernel uImage for $(1) in JFFS2-$(2)k partition
-	rm -rf '$(TMP_DIR)/$(1)_jffs2_uimage'
-	mkdir '$(TMP_DIR)/$(1)_jffs2_uimage'
-	cp '$(KDIR)/$(1)-uImage' '$(TMP_DIR)/$(1)_jffs2_uimage/$(3)'
-	$(STAGING_DIR_HOST)/bin/mkfs.jffs2 --compression-mode=none --pad --little-endian --squash -e $(2)KiB -o '$(KDIR)/$(1)-uImage.jffs2' -d '$(TMP_DIR)/$(1)_jffs2_uimage'
-	rm -rf '$(TMP_DIR)/$(1)_jffs2_uimage'
-endef
-
-define Image/Default/FileSizeCheck
- # parameters: 1 = file path, 2 = maximum size in bytes
-	[ $(stat -c %s '$(1)') -le $(2) ] || { echo '   ERROR: $(1) too big (> $(2) bytes)'; rm -f $(1); }
-endef
-
-
-###
-### Image/Build
-###
-
-define Image/Build
-### Dummy comment for indented calls of Image/Build with $(1)
-
- ## Prepare rootfs
-$(call Image/Build/$(1),$(1))
-
- ## Netgear WN802T
-$(call Image/Build/Default,$(1),wn802t,$(ERASE_SIZE_64K),$(KERNEL_MTD_SIZE),.jffs2,NG_WN802T)
-
- ## Netgear WNR854T
-$(call Image/Build/Default,$(1),wnr854t,$(ERASE_SIZE_128K),$(KERNEL_MTD_SIZE),.jffs2,NG_WNR854T)
-
- ## Linksys WRT350N v2
-$(call Image/Build/Linksys/wrt350nv2,$(1),wrt350nv2,$(ERASE_SIZE_64K),$(KERNEL_MTD_SIZE),)
-
- ## Buffalo Terastation Pro II/Live
-$(call Image/Build/Default,$(1),terastation-pro2,$(ERASE_SIZE_128K),$(KERNEL_MTD_SIZE),.jffs2,TERASTATION_PRO2)
-endef
-
-define Image/Build/squashfs
-$(call prepare_generic_squashfs,$(KDIR)/root.squashfs)
-endef
-
-## generate defines for all JFFS2 block sizes
-define Image/Build/jffs2/sub
- $(eval define Image/Build/jffs2-$(1)
-	cp '$$(KDIR)/root.jffs2-$(1)' '$$(BIN_DIR)/$$(IMG_PREFIX)-root.jffs2-$(1)'
- endef)
-endef
-
-$(foreach SZ,$(JFFS2_BLOCKSIZE),$(call Image/Build/jffs2/sub,$(SZ)))
-
-define Image/Build/Default
- # parameters: 1 = rootfs type, 2 = machine name, 3 = erase size in KiB, 4 = kernel mtd size in KiB, 5 = kernel file suffix, 6 = header
- ifeq ($(findstring jffs2-,$(1)),jffs2-)  # JFFS2: build only image fitting to erase size
-  ifeq ($(1),jffs2-$(3)k)
-$(call Image/Build/Default/sysupgrade,$(1),$(2),$(4),$(5))
-$(call Image/Build/Default/factory,$(1),$(2),$(6))
-  endif
- else
-  ifeq ($(1),ext4)  # EXT4: ignore
-   # do nothing
-  else  # do all other images
-$(call Image/Build/Default/sysupgrade,$(1),$(2),$(4),$(5))
-$(call Image/Build/Default/factory,$(1),$(2),$(6))
-  endif
- endif
-endef
-
-define Image/Build/Default/sysupgrade
- # parameters: 1 = rootfs type, 2 = machine name, 3 = pad size in KiB (kernel mtd size or erase size), 4 = kernel file suffix
-	# $(BOARD) $(1) sysupgrade image for $(2)
-	( \
-		dd if='$(KDIR)/$(2)-uImage$(4)' bs=$(3)k conv=sync; \
-		dd if='$(KDIR)/root.$(1)'; \
-	) > '$(BIN_DIR)/openwrt-$(2)-$(1)-sysupgrade.img'
-endef
-
-define Image/Build/Default/factory
- # parameters: 1 = rootfs type, 2 = machine name, 3 = header
-	# $(BOARD) $(1) factory upgrade image for $(2)
-	'$(STAGING_DIR_HOST)/bin/add_header' $(3) '$(BIN_DIR)/openwrt-$(2)-$(1)-sysupgrade.img' '$(BIN_DIR)/openwrt-$(2)-$(1)-factory.img'
-endef
-
-##
-## Image/Build/Linksys
-##
-
-define Image/Build/Linksys/wrt350nv2
- # parameters: 1 = rootfs type, 2 = machine name, 3 = erase size in KiB, 4 = kernel mtd size in KiB, 5 = kernel file suffix
- ifeq ($(findstring jffs2-,$(1)),jffs2-)  # JFFS2: build only image fitting to erase size
-  ifeq ($(1),jffs2-$(3)k)
-$(call Image/Build/Default/sysupgrade,$(1),$(2),$(4),$(5))
-$(call Image/Build/Linksys/wrt350nv2-builder,$(1),$(2))
-  endif
- else
-  ifeq ($(1),ext4)  # EXT4: ignore
-   # do nothing
-  else  # do all other images
-$(call Image/Build/Default/sysupgrade,$(1),$(2),$(4),$(5))
-$(call Image/Build/Linksys/wrt350nv2-builder,$(1),$(2))
-  endif
- endif
-endef
-
-define Image/Build/Linksys/wrt350nv2-builder
- # parameters: 1 = rootfs type, 2 = machine name
-	# $(BOARD) $(1) factory and recovery image for $(2) via wrt350nv2-builder
-	rm -rf '$(TMP_DIR)/$(2)_factory'
-	mkdir '$(TMP_DIR)/$(2)_factory'
- # create parameter file
-	echo ':image 0 $(BIN_DIR)/openwrt-$(2)-$(1)-sysupgrade.img' > '$(TMP_DIR)/$(2)_factory/$(2).par'
-	[ ! -f '$(STAGING_DIR_HOST)/share/wrt350nv2-builder/u-boot.bin' ] || ( \
-		echo ':u-boot 0 $(STAGING_DIR_HOST)/share/wrt350nv2-builder/u-boot.bin' >> '$(TMP_DIR)/$(2)_factory/$(2).par'; \
-	)
-	echo '#version 0x2020' >> '$(TMP_DIR)/$(2)_factory/$(2).par'
- # create bin file for recovery and factory image
-	-( \
-		cd '$(TMP_DIR)/$(2)_factory'; \
-		'$(STAGING_DIR_HOST)/bin/wrt350nv2-builder' -b '$(TMP_DIR)/$(2)_factory/$(2).par'; \
-	) && $(CP) '$(TMP_DIR)/$(2)_factory/wrt350n.bin' '$(BIN_DIR)/openwrt-$(2)-$(1)-recovery.bin' && \
-	( \
-		cd '$(TMP_DIR)/$(2)_factory'; \
-		zip 'wrt350n.zip' 'wrt350n.bin'; \
-	) && '$(STAGING_DIR_HOST)/bin/wrt350nv2-builder' -z '$(TMP_DIR)/$(2)_factory/wrt350n.zip' '$(BIN_DIR)/openwrt-$(2)-$(1)-factory.img'
-	rm -rf '$(TMP_DIR)/$(2)_factory'
-endef
-
-
-###
-### Image/PreReq
-###
-
-## Dependency for WRT350N v2 factory image
-$(eval $(call RequireCommand,zip, \
-	Please install zip. \
-))
diff --git a/target/linux/orion/image/harddisk.mk b/target/linux/orion/image/harddisk.mk
deleted file mode 100644
index fb2f351b7f..0000000000
--- a/target/linux/orion/image/harddisk.mk
+++ /dev/null
@@ -1,57 +0,0 @@
-#
-# Copyright (C) 2008-2010 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-define Image/BuildKernelMachId
-	echo -en "\x$(2)\x1c\xa0\xe3\x$(3)\x10\x81\xe3" > $(KDIR)/$(1)-zImage
-	cat $(LINUX_DIR)/arch/arm/boot/zImage >> $(KDIR)/$(1)-zImage
-	$(STAGING_DIR_HOST)/bin/mkimage -A arm -O linux -T kernel \
-	-C none -a 0x00008000 -e 0x00008000 -n 'Linux-$(LINUX_VERSION)' \
-	-d $(KDIR)/$(1)-zImage $(KDIR)/$(1)-uImage
-	cp $(KDIR)/$(1)-uImage $(BIN_DIR)/openwrt-$(1)-uImage
-endef
-
-define Image/BuildKernel
-	# Orion Kernel uImages
- # DT2: mach id 1514 (0x5EA)
-	$(call Image/BuildKernelMachId,dt2,05,ea)
- # LaCie 2big Network: mach id 2342 (0x926)
-	$(call Image/BuildKernelMachId,net2big,09,26)
-endef
-
-define Image/Build/Freecom
-	# Orion Freecom Images
- # backup unwanted files
-	rm -rf ${TMP_DIR}/$2_backup
-	mkdir ${TMP_DIR}/$2_backup
-	-mv $(TARGET_DIR)/{var,jffs,rom} ${TMP_DIR}/$2_backup
- # add extra files
-	$(INSTALL_DIR) $(TARGET_DIR)/boot
-	# TODO: Add special CMDLINE shim for webupgrade image here
-	$(CP) $(KDIR)/dt2-uImage $(TARGET_DIR)/boot/uImage
-	$(INSTALL_DIR) $(TARGET_DIR)/var
- # create image
-	$(TAR) cfj $(BIN_DIR)/openwrt-$(2)-$(1).img --numeric-owner --owner=0 --group=0 -C $(TARGET_DIR)/ .
-	$(STAGING_DIR_HOST)/bin/encode_crc $(BIN_DIR)/openwrt-$(2)-$(1).img $(BIN_DIR)/openwrt-$(2)-$(1)-webupgrade.img $(3)
- # remove extra files
-	rm -rf $(TARGET_DIR)/{boot,var}
- # recover unwanted files
-	-mv ${TMP_DIR}/$2_backup/* $(TARGET_DIR)/
-	rm -rf ${TMP_DIR}/$2_backup
-endef
-
-define Image/Build
-$(call Image/Build/$(1),$(1))
-$(call Image/Build/Freecom,$(1),dt2,DT,$(1))
-endef
-
-define Image/Build/squashfs
-$(call prepare_generic_squashfs,$(KDIR)/root.squashfs)
-	( \
-		dd if=$(KDIR)/uImage bs=1024k conv=sync; \
-		dd if=$(KDIR)/root.$(1) bs=128k conv=sync; \
-	) > $(BIN_DIR)/$(IMG_PREFIX)-$(1).img
-endef
diff --git a/target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch b/target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch
deleted file mode 100644
index 764f992288..0000000000
--- a/target/linux/orion/patches-4.9/000-arm_openwrt_machtypes.patch
+++ /dev/null
@@ -1,8 +0,0 @@
---- a/arch/arm/tools/mach-types
-+++ b/arch/arm/tools/mach-types
-@@ -1006,3 +1006,5 @@ eco5_bx2		MACH_ECO5_BX2		ECO5_BX2		4572
- eukrea_cpuimx28sd	MACH_EUKREA_CPUIMX28SD	EUKREA_CPUIMX28SD	4573
- domotab			MACH_DOMOTAB		DOMOTAB			4574
- pfla03			MACH_PFLA03		PFLA03			4575
-+dt2			MACH_DT2		DT2			1514
-+wn802t			MACH_WN802T		WN802T			3306
diff --git a/target/linux/orion/patches-4.9/100-wrt350nv2_openwrt_partition_map.patch b/target/linux/orion/patches-4.9/100-wrt350nv2_openwrt_partition_map.patch
deleted file mode 100644
index 89c2c9420b..0000000000
--- a/target/linux/orion/patches-4.9/100-wrt350nv2_openwrt_partition_map.patch
+++ /dev/null
@@ -1,32 +0,0 @@
---- a/arch/arm/mach-orion5x/wrt350n-v2-setup.c
-+++ b/arch/arm/mach-orion5x/wrt350n-v2-setup.c
-@@ -134,11 +134,11 @@ static struct mtd_partition wrt350n_v2_n
- 	{
- 		.name		= "kernel",
- 		.offset		= 0x00000000,
--		.size		= 0x00760000,
-+		.size		= 0x00140000,	// change to kernel mtd size here (1/3)
- 	}, {
- 		.name		= "rootfs",
--		.offset		= 0x001a0000,
--		.size		= 0x005c0000,
-+		.offset		= 0x00140000,	// change to kernel mtd size here (2/3)
-+		.size		= 0x00610000,	// adopt to kernel mtd size here (3/3) = 0x00750000 - <kernel mtd size>
- 	}, {
- 		.name		= "lang",
- 		.offset		= 0x00760000,
-@@ -151,6 +151,14 @@ static struct mtd_partition wrt350n_v2_n
- 		.name		= "u-boot",
- 		.offset		= 0x007c0000,
- 		.size		= 0x00040000,
-+	}, {
-+		.name		= "eRcOmM_do_not_touch",
-+		.offset		= 0x00750000,
-+		.size		= 0x00010000,	// erasesize
-+	}, {
-+		.name		= "image",	// for sysupgrade
-+		.offset		= 0x00000000,
-+		.size		= 0x00750000,
- 	},
- };
- 
diff --git a/target/linux/orion/patches-4.9/101-wnr854t_partition_map.patch b/target/linux/orion/patches-4.9/101-wnr854t_partition_map.patch
deleted file mode 100644
index 881cfb773e..0000000000
--- a/target/linux/orion/patches-4.9/101-wnr854t_partition_map.patch
+++ /dev/null
@@ -1,25 +0,0 @@
---- a/arch/arm/mach-orion5x/wnr854t-setup.c
-+++ b/arch/arm/mach-orion5x/wnr854t-setup.c
-@@ -57,15 +57,19 @@ static struct mtd_partition wnr854t_nor_
- 	{
- 		.name		= "kernel",
- 		.offset		= 0x00000000,
--		.size		= 0x00100000,
-+		.size		= 0x00140000,
- 	}, {
- 		.name		= "rootfs",
--		.offset		= 0x00100000,
--		.size		= 0x00660000,
-+		.offset		= 0x00140000,
-+		.size		= 0x00620000,
- 	}, {
- 		.name		= "uboot",
- 		.offset		= 0x00760000,
- 		.size		= 0x00040000,
-+	}, {
-+		.name		= "image",	// for sysupgrade
-+		.offset		= 0x00000000,
-+		.size		= 0x00760000,
- 	},
- };
- 
diff --git a/target/linux/orion/patches-4.9/200-dt2_board_support.patch b/target/linux/orion/patches-4.9/200-dt2_board_support.patch
deleted file mode 100644
index 5528069cd5..0000000000
--- a/target/linux/orion/patches-4.9/200-dt2_board_support.patch
+++ /dev/null
@@ -1,562 +0,0 @@
---- a/arch/arm/mach-orion5x/Kconfig
-+++ b/arch/arm/mach-orion5x/Kconfig
-@@ -48,6 +48,13 @@ config MACH_RD88F5182_DT
- 	  Say 'Y' here if you want your kernel to support the Marvell
- 	  Orion-NAS (88F5182) RD2, Flattened Device Tree.
- 
-+config MACH_DT2
-+	bool "Freecom DataTank Gateway"
-+	select I2C_BOARDINFO
-+	help
-+	  Say 'Y' here if you want your kernel to support the
-+	  Freecom DataTank Gateway
-+
- config MACH_KUROBOX_PRO
- 	bool "KuroBox Pro"
- 	select I2C_BOARDINFO if I2C
---- a/arch/arm/mach-orion5x/Makefile
-+++ b/arch/arm/mach-orion5x/Makefile
-@@ -15,6 +15,7 @@ obj-$(CONFIG_MACH_TS78XX)	+= ts78xx-setu
- obj-$(CONFIG_MACH_MV2120)	+= mv2120-setup.o
- obj-$(CONFIG_MACH_NET2BIG)	+= net2big-setup.o
- obj-$(CONFIG_MACH_WNR854T)	+= wnr854t-setup.o
-+obj-$(CONFIG_MACH_DT2)		+= dt2-setup.o
- obj-$(CONFIG_MACH_RD88F5181L_GE)	+= rd88f5181l-ge-setup.o
- obj-$(CONFIG_MACH_RD88F5181L_FXO)	+= rd88f5181l-fxo-setup.o
- obj-$(CONFIG_MACH_RD88F6183AP_GE)	+= rd88f6183ap-ge-setup.o
---- /dev/null
-+++ b/arch/arm/mach-orion5x/dt2-common.h
-@@ -0,0 +1,82 @@
-+#ifndef __INC_DT2_COMMON_H
-+#define __INC_DT2_COMMON_H
-+
-+#define ATAG_MV_UBOOT			0x41000403
-+
-+struct tag_mv_uboot {
-+	u32 uboot_version;
-+	u32 tclk;
-+	u32 sysclk;
-+	u32 isUsbHost;
-+	u32 overEthAddr;
-+	u8  dt2_eeprom[256];
-+};
-+
-+#define DT2_EEPROM_ADDR 		0x50
-+#define DT2_EEPROM_OFFSET		0
-+#define DT2_EEPROM_LENGTH		256
-+
-+#define DT2_SERIAL_NUMBER_DEFAULT	"run on default\0"
-+#define DT2_REVISION_DEFAULT_INIT 	0xFF
-+#define DT2_CONFIG_FLAGS_DEFAULT 	0x00
-+
-+#define _PACKED_	__attribute__((packed))
-+
-+struct DT2_EEPROM_SD_CONFIG {
-+	unsigned int	ram_1;
-+	unsigned int	ram_2;
-+	unsigned int	ram_3;
-+	unsigned int	ram_4;
-+	unsigned char	ram_5;
-+	unsigned char	ram_6;
-+	unsigned short	ram_7;
-+	unsigned int 	magic_id;
-+	} _PACKED_;		// 24 Bytes in total
-+
-+struct DT2_EEPROM_FC_CONFIG {
-+	unsigned char	rtc_sts_mask;
-+	unsigned char	rtc_sts_init;
-+	unsigned char	rtc_int_mask;
-+	unsigned char	rtc_int_init;
-+	unsigned char	rtc_atrim_init;
-+	unsigned char	rtc_dtrim_init;
-+	unsigned char	dummy1;
-+	unsigned char	dummy2;
-+	unsigned char	dt2_config_flags;	/* 0x80 to load rtc_values to RTC */
-+	unsigned char	dt2_revision;		/* upper nibble is HW, lower nibble is FW */
-+	unsigned char	dt2_serial_number[16];	/* Serial number of DT-2 */
-+	} _PACKED_;		// 26 Bytes in total
-+
-+#define CFG_LOAD_RTC_VALUES 	0x80
-+
-+struct DT2_EEPROM_GW_CONFIG {
-+	unsigned int	dummy1;
-+	unsigned int	dummy2;
-+	unsigned int	dummy3;
-+	unsigned char	dummy4;
-+	unsigned char	tos_video_val1;
-+	unsigned char	tos_video_val2;
-+	unsigned char	tos_voip_val;
-+	unsigned char	qos_igmp_cfg;
-+	unsigned char	num_of_ifs;
-+	unsigned short	vlan_ports_if[3];
-+	unsigned char	mac_addr[3][6];
-+	} _PACKED_;		// 42 Bytes in total
-+
-+#define _SIZE_OF_ALL_STRUCTS_ (sizeof(struct DT2_EEPROM_SD_CONFIG) + sizeof(struct DT2_EEPROM_FC_CONFIG) +  sizeof(struct DT2_EEPROM_GW_CONFIG))
-+
-+// MV = EEPROM - SD - FC - GW - CRC
-+struct DT2_EEPROM_MV_CONFIG {
-+	unsigned int reg_addr[(DT2_EEPROM_LENGTH - _SIZE_OF_ALL_STRUCTS_ - sizeof(unsigned int)) / (sizeof(unsigned int) * 2)];
-+	unsigned int reg_data[(DT2_EEPROM_LENGTH - _SIZE_OF_ALL_STRUCTS_ - sizeof(unsigned int)) / (sizeof(unsigned int) * 2)];
-+ 	} _PACKED_;
-+
-+struct DT2_EEPROM_STRUCT {
-+	struct DT2_EEPROM_MV_CONFIG mv;
-+	struct DT2_EEPROM_SD_CONFIG sd;
-+	struct DT2_EEPROM_FC_CONFIG fc;
-+	struct DT2_EEPROM_GW_CONFIG gw;
-+	unsigned int	crc;
-+	} _PACKED_;
-+
-+#endif
---- /dev/null
-+++ b/arch/arm/mach-orion5x/dt2-setup.c
-@@ -0,0 +1,448 @@
-+/*
-+ * arch/arm/mach-orion5x/dt2-setup.c
-+ *
-+ * Freecom DataTank Gateway Setup
-+ *
-+ * Copyright (C) 2009 Zintis Petersons <Zintis.Petersons@abcsolutions.lv>
-+ *
-+ * This file is licensed under the terms of the GNU General Public
-+ * License version 2.  This program is licensed "as is" without any
-+ * warranty of any kind, whether express or implied.
-+ */
-+
-+#include <linux/kernel.h>
-+#include <linux/init.h>
-+#include <linux/platform_device.h>
-+#include <linux/pci.h>
-+#include <linux/irq.h>
-+#include <linux/mtd/physmap.h>
-+#include <linux/mv643xx_eth.h>
-+#include <linux/ethtool.h>
-+#include <linux/if_ether.h>
-+#include <net/dsa.h>
-+#include <linux/ata_platform.h>
-+#include <linux/i2c.h>
-+#include <linux/reboot.h>
-+#include <linux/interrupt.h>
-+#include <asm/mach-types.h>
-+#include <asm/gpio.h>
-+#include <asm/mach/arch.h>
-+#include <asm/mach/pci.h>
-+#include "orion5x.h"
-+#include "common.h"
-+#include "mpp.h"
-+
-+/*****************************************************************************
-+ * DT2 local
-+ ****************************************************************************/
-+#include <asm/setup.h>
-+#include "dt2-common.h"
-+
-+u32 mvUbootVer = 0;
-+u32 mvTclk = 166666667;
-+u32 mvSysclk = 200000000;
-+u32 mvIsUsbHost = 1;
-+u32 overEthAddr = 0;
-+u32 gBoardId = -1;
-+struct DT2_EEPROM_STRUCT dt2_eeprom;
-+
-+/*****************************************************************************
-+ * DT2 Info
-+ ****************************************************************************/
-+/*
-+ * PCI
-+ */
-+
-+#define DT2_PCI_SLOT0_OFFS	7
-+#define DT2_PCI_SLOT0_IRQ_A_PIN	3
-+#define DT2_PCI_SLOT0_IRQ_B_PIN	2
-+
-+#define DT2_PIN_GPIO_SYNC	25
-+#define DT2_PIN_GPIO_POWER	24
-+#define DT2_PIN_GPIO_UNPLUG1	23
-+#define DT2_PIN_GPIO_UNPLUG2	22
-+#define DT2_PIN_GPIO_RESET	4
-+
-+#define DT2_NOR_BOOT_BASE	0xf4000000
-+#define DT2_NOR_BOOT_SIZE	SZ_512K
-+
-+#define DT2_LEDS_BASE		0xfa000000
-+#define DT2_LEDS_SIZE		SZ_1K
-+
-+/*****************************************************************************
-+ * 512K NOR Flash on Device bus Boot CS
-+ ****************************************************************************/
-+
-+static struct mtd_partition dt2_partitions[] = {
-+	{
-+		.name	= "u-boot",
-+		.size	= 0x00080000,
-+		.offset	= 0,
-+	},
-+};
-+
-+static struct physmap_flash_data dt2_nor_flash_data = {
-+	.width		= 1,		/* 8 bit bus width */
-+	.parts		= dt2_partitions,
-+	.nr_parts	= ARRAY_SIZE(dt2_partitions)
-+};
-+
-+static struct resource dt2_nor_flash_resource = {
-+	.flags		= IORESOURCE_MEM,
-+	.start		= DT2_NOR_BOOT_BASE,
-+	.end		= DT2_NOR_BOOT_BASE + DT2_NOR_BOOT_SIZE - 1,
-+};
-+
-+static struct platform_device dt2_nor_flash = {
-+	.name		= "physmap-flash",
-+	.id		= 0,
-+	.dev		= {
-+		.platform_data	= &dt2_nor_flash_data,
-+	},
-+	.resource	= &dt2_nor_flash_resource,
-+	.num_resources	= 1,
-+};
-+
-+/*****************************************************************************
-+ * PCI
-+ ****************************************************************************/
-+
-+void __init dt2_pci_preinit(void)
-+{
-+	int pin, irq;
-+
-+	/*
-+	 * Configure PCI GPIO IRQ pins
-+	 */
-+	pin = DT2_PCI_SLOT0_IRQ_A_PIN;
-+	if (gpio_request(pin, "PCI IntA") == 0) {
-+		if (gpio_direction_input(pin) == 0) {
-+			irq = gpio_to_irq(pin);
-+			irq_set_irq_type(irq, IRQ_TYPE_LEVEL_LOW);
-+			printk (KERN_INFO "PCI IntA IRQ: %d\n", irq);
-+		} else {
-+			printk(KERN_ERR "dt2_pci_preinit failed to "
-+					"irq_set_irq_type pin %d\n", pin);
-+			gpio_free(pin);
-+		}
-+	} else {
-+		printk(KERN_ERR "dt2_pci_preinit failed to request gpio %d\n", pin);
-+	}
-+
-+	pin = DT2_PCI_SLOT0_IRQ_B_PIN;
-+	if (gpio_request(pin, "PCI IntB") == 0) {
-+		if (gpio_direction_input(pin) == 0) {
-+			irq = gpio_to_irq(pin);
-+			irq_set_irq_type(irq, IRQ_TYPE_LEVEL_LOW);
-+			printk (KERN_INFO "PCI IntB IRQ: %d\n", irq);
-+		} else {
-+			printk(KERN_ERR "dt2_pci_preinit failed to "
-+					"irq_set_irq_type pin %d\n", pin);
-+			gpio_free(pin);
-+		}
-+	} else {
-+		printk(KERN_ERR "dt2_pci_preinit failed to gpio_request %d\n", pin);
-+	}
-+}
-+
-+static int __init dt2_pci_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
-+{
-+	int irq;
-+
-+	/*
-+	 * Check for devices with hard-wired IRQs.
-+	 */
-+	irq = orion5x_pci_map_irq(dev, slot, pin);
-+	if (irq != -1){
-+		printk(KERN_INFO "orion5x_pci_map_irq: %d\n", irq);
-+		return irq;
-+	}
-+
-+	/*
-+	 * PCI IRQs are connected via GPIOs
-+	 */
-+	switch (slot - DT2_PCI_SLOT0_OFFS) {
-+	case 0:
-+		if (pin == 1){
-+			irq = gpio_to_irq(DT2_PCI_SLOT0_IRQ_A_PIN);
-+			printk(KERN_INFO "dt2_pci_map_irq DT2_PCI_SLOT0_IRQ_A_PIN: %d\n", irq);
-+		}
-+		else {
-+			irq = gpio_to_irq(DT2_PCI_SLOT0_IRQ_B_PIN);
-+			printk(KERN_INFO "dt2_pci_map_irq DT2_PCI_SLOT0_IRQ_B_PIN: %d\n", irq);
-+		}
-+	default:
-+		irq = -1;
-+			printk(KERN_INFO "dt2_pci_map_irq IRQ: %d\n", irq);
-+	}
-+
-+	return irq;
-+}
-+
-+static struct hw_pci dt2_pci __initdata = {
-+	.nr_controllers	= 2,
-+	.preinit	= dt2_pci_preinit,
-+	.setup		= orion5x_pci_sys_setup,
-+	.scan		= orion5x_pci_sys_scan_bus,
-+	.map_irq	= dt2_pci_map_irq,
-+};
-+
-+static int __init dt2_pci_init(void)
-+{
-+	if (machine_is_dt2())
-+		pci_common_init(&dt2_pci);
-+
-+	return 0;
-+}
-+
-+subsys_initcall(dt2_pci_init);
-+
-+/*****************************************************************************
-+ * Ethernet
-+ ****************************************************************************/
-+
-+static struct mv643xx_eth_platform_data dt2_eth_data = {
-+	.phy_addr	= MV643XX_ETH_PHY_NONE,
-+	.speed		= SPEED_1000,
-+	.duplex		= DUPLEX_FULL,
-+};
-+
-+static struct dsa_chip_data dt2_switch_chip_data = {
-+	.port_names[0] = "wan",
-+	.port_names[1] = "lan1",
-+	.port_names[2] = "lan2",
-+	.port_names[3] = "cpu",
-+	.port_names[4] = "lan3",
-+	.port_names[5] = "lan4",
-+};
-+
-+static struct dsa_platform_data dt2_switch_plat_data = {
-+	.nr_chips	= 1,
-+	.chip		= &dt2_switch_chip_data,
-+};
-+
-+/*****************************************************************************
-+ * RTC ISL1208 on I2C bus
-+ ****************************************************************************/
-+static struct i2c_board_info __initdata dt2_i2c_rtc = {
-+	I2C_BOARD_INFO("isl1208", 0x6F),
-+};
-+
-+/*****************************************************************************
-+ * Sata
-+ ****************************************************************************/
-+static struct mv_sata_platform_data dt2_sata_data = {
-+	.n_ports	= 2,
-+};
-+
-+/*****************************************************************************
-+ * General Setup
-+ ****************************************************************************/
-+static unsigned int dt2_mpp_modes[] __initdata = {
-+	MPP0_GPIO,		// RTC interrupt
-+	MPP1_GPIO,		// 88e6131 interrupt
-+	MPP2_GPIO,		// PCI_intB
-+	MPP3_GPIO,		// PCI_intA
-+	MPP4_GPIO,		// reset button switch
-+	MPP5_GPIO,
-+	MPP6_GPIO,
-+	MPP7_GPIO,
-+	MPP8_GPIO,
-+	MPP9_GIGE,		/* GE_RXERR */
-+	MPP10_GPIO,		// usb
-+	MPP11_GPIO,		// usb
-+	MPP12_GIGE,		// GE_TXD[4]
-+	MPP13_GIGE,		// GE_TXD[5]
-+	MPP14_GIGE,		// GE_TXD[6]
-+	MPP15_GIGE,		// GE_TXD[7]
-+	MPP16_GIGE,		// GE_RXD[4]
-+	MPP17_GIGE,		// GE_RXD[5]
-+	MPP18_GIGE,		// GE_RXD[6]
-+	MPP19_GIGE,		// GE_RXD[7]
-+	0,
-+};
-+
-+/*****************************************************************************
-+ * LEDS
-+ ****************************************************************************/
-+static struct platform_device dt2_leds = {
-+	.name		= "dt2-led",
-+	.id		= -1,
-+};
-+
-+/****************************************************************************
-+ * GPIO key
-+ ****************************************************************************/
-+static irqreturn_t dt2_reset_handler(int irq, void *dev_id)
-+{
-+	/* This is the paper-clip reset which does an emergency reboot. */
-+	printk(KERN_INFO "Restarting system.\n");
-+	machine_restart(NULL);
-+
-+	/* This should never be reached. */
-+	return IRQ_HANDLED;
-+}
-+
-+static irqreturn_t dt2_power_handler(int irq, void *dev_id)
-+{
-+	printk(KERN_INFO "Shutting down system.\n");
-+	machine_power_off();
-+	return IRQ_HANDLED;
-+}
-+
-+static void __init dt2_init(void)
-+{
-+	/*
-+	 * Setup basic Orion functions. Need to be called early.
-+	 */
-+	orion5x_init();
-+
-+	orion5x_mpp_conf(dt2_mpp_modes);
-+
-+	/*
-+	 * Configure peripherals.
-+	 */
-+
-+	orion5x_uart0_init();
-+	orion5x_ehci0_init();
-+	orion5x_ehci1_init();
-+	orion5x_i2c_init();
-+	orion5x_sata_init(&dt2_sata_data);
-+	orion5x_xor_init();
-+
-+	printk(KERN_INFO "U-Boot parameters:\n");
-+	printk(KERN_INFO "Sys Clk = %d, Tclk = %d, BoardID = 0x%02x\n", mvSysclk, mvTclk, gBoardId);
-+
-+	printk(KERN_INFO "Serial: %s\n", dt2_eeprom.fc.dt2_serial_number);
-+	printk(KERN_INFO "Revision: %016x\n", dt2_eeprom.fc.dt2_revision);
-+	printk(KERN_INFO "DT2: Using MAC address %pM for port 0\n",
-+	       dt2_eeprom.gw.mac_addr[0]);
-+	printk(KERN_INFO "DT2: Using MAC address %pM for port 1\n",
-+	       dt2_eeprom.gw.mac_addr[1]);
-+
-+	orion5x_eth_init(&dt2_eth_data);
-+	memcpy(dt2_eth_data.mac_addr, dt2_eeprom.gw.mac_addr[0], 6);
-+	orion5x_eth_switch_init(&dt2_switch_plat_data);
-+
-+	i2c_register_board_info(0, &dt2_i2c_rtc, 1);
-+
-+	mvebu_mbus_add_window_by_id(ORION_MBUS_DEVBUS_BOOT_TARGET,
-+				    ORION_MBUS_DEVBUS_BOOT_ATTR,
-+				    DT2_NOR_BOOT_BASE, DT2_NOR_BOOT_SIZE);
-+
-+	platform_device_register(&dt2_nor_flash);
-+
-+	mvebu_mbus_add_window_by_id(ORION_MBUS_DEVBUS_TARGET(0),
-+				    ORION_MBUS_DEVBUS_ATTR(0),
-+				    DT2_LEDS_BASE, DT2_LEDS_SIZE);
-+	platform_device_register(&dt2_leds);
-+
-+	if (request_irq(gpio_to_irq(DT2_PIN_GPIO_RESET), &dt2_reset_handler,
-+			IRQF_TRIGGER_LOW,
-+			"DT2: Reset button", NULL) < 0) {
-+
-+		printk("DT2: Reset Button IRQ %d not available\n",
-+			gpio_to_irq(DT2_PIN_GPIO_RESET));
-+	}
-+
-+	if (request_irq(gpio_to_irq(DT2_PIN_GPIO_POWER), &dt2_power_handler,
-+			IRQF_TRIGGER_LOW,
-+			"DT2: Power button", NULL) < 0) {
-+
-+		printk(KERN_DEBUG "DT2: Power Button IRQ %d not available\n",
-+			gpio_to_irq(DT2_PIN_GPIO_POWER));
-+	}
-+}
-+
-+static int __init parse_tag_dt2_uboot(const struct tag *t)
-+{
-+	struct tag_mv_uboot *mv_uboot;
-+
-+	// Get pointer to our block
-+	mv_uboot = (struct tag_mv_uboot*)&t->u;
-+	mvTclk = mv_uboot->tclk;
-+	mvSysclk = mv_uboot->sysclk;
-+	mvUbootVer = mv_uboot->uboot_version;
-+	mvIsUsbHost = mv_uboot->isUsbHost;
-+
-+	// Some clock fixups
-+	if(mvTclk == 166000000) mvTclk = 166666667;
-+	else if(mvTclk == 133000000) mvTclk = 133333333;
-+	else if(mvSysclk == 166000000) mvSysclk = 166666667;
-+
-+	gBoardId =  (mvUbootVer & 0xff);
-+
-+	//DT2 specific data
-+	memcpy(&dt2_eeprom, mv_uboot->dt2_eeprom, sizeof(struct DT2_EEPROM_STRUCT));
-+
-+	return 0;
-+}
-+__tagtable(ATAG_MV_UBOOT, parse_tag_dt2_uboot);
-+
-+/*
-+ * This is OpenWrt specific fixup. It includes code from original "tag_fixup_mem32" to
-+ * fixup bogus memory tags and also fixes kernel cmdline by adding " init=/etc/preinit"
-+ * at the end. It is important to flash OpenWrt image from original Freecom firmware.
-+ *
-+ * Vanilla kernel should use "tag_fixup_mem32" function.
-+ */
-+static void __init openwrt_fixup(struct tag *t, char **from)
-+{
-+	char *p = NULL;
-+	static char openwrt_init_tag[] __initdata = " init=/etc/preinit";
-+
-+	for (; t->hdr.size; t = tag_next(t)){
-+		/* Locate the Freecom cmdline */
-+		if (t->hdr.tag == ATAG_CMDLINE) {
-+			p = t->u.cmdline.cmdline;
-+			printk("%s(%d): Found cmdline '%s' at 0x%0lx\n",
-+			       __FUNCTION__, __LINE__, p, (unsigned long)p);
-+		}
-+		/*
-+		 * Many orion-based systems have buggy bootloader implementations.
-+		 * This is a common fixup for bogus memory tags.
-+		 */
-+		if (t->hdr.tag == ATAG_MEM &&
-+		    (!t->u.mem.size || t->u.mem.size & ~PAGE_MASK ||
-+		     t->u.mem.start & ~PAGE_MASK)) {
-+			printk(KERN_WARNING
-+			       "Clearing invalid memory bank %dKB@0x%08x\n",
-+			       t->u.mem.size / 1024, t->u.mem.start);
-+			t->hdr.tag = 0;
-+		}
-+	}
-+
-+	printk("%s(%d): End of table at 0x%0lx\n", __FUNCTION__, __LINE__, (unsigned long)t);
-+
-+	/* Overwrite the end of the table with a new cmdline tag. */
-+	t->hdr.tag = ATAG_CMDLINE;
-+	t->hdr.size =
-+		(sizeof (struct tag_header) +
-+		 strlen(p) + strlen(openwrt_init_tag) + 1 + 4) >> 2;
-+
-+	strlcpy(t->u.cmdline.cmdline, p, COMMAND_LINE_SIZE);
-+	strlcpy(t->u.cmdline.cmdline + strlen(p), openwrt_init_tag,
-+		COMMAND_LINE_SIZE - strlen(p));
-+
-+	printk("%s(%d): New cmdline '%s' at 0x%0lx\n",
-+	       __FUNCTION__, __LINE__,
-+	       t->u.cmdline.cmdline, (unsigned long)t->u.cmdline.cmdline);
-+
-+	t = tag_next(t);
-+
-+	printk("%s(%d): New end of table at 0x%0lx\n", __FUNCTION__, __LINE__, (unsigned long)t);
-+
-+	t->hdr.tag = ATAG_NONE;
-+	t->hdr.size = 0;
-+}
-+
-+/* Warning: Freecom uses their own custom bootloader with mach-type (=1500) */
-+MACHINE_START(DT2, "Freecom DataTank Gateway")
-+	/* Maintainer: Zintis Petersons <Zintis.Petersons@abcsolutions.lv> */
-+	.atag_offset    = 0x100,
-+	.init_machine	= dt2_init,
-+	.map_io		= orion5x_map_io,
-+	.init_irq	= orion5x_init_irq,
-+	.init_time	= orion5x_timer_init,
-+	.fixup		= openwrt_fixup, //tag_fixup_mem32,
-+MACHINE_END
diff --git a/target/linux/orion/patches-4.9/210-wn802t_support.patch b/target/linux/orion/patches-4.9/210-wn802t_support.patch
deleted file mode 100644
index a274beedc3..0000000000
--- a/target/linux/orion/patches-4.9/210-wn802t_support.patch
+++ /dev/null
@@ -1,73 +0,0 @@
---- a/arch/arm/mach-orion5x/Kconfig
-+++ b/arch/arm/mach-orion5x/Kconfig
-@@ -159,10 +159,13 @@ config MACH_MSS2_DT
- 	  Maxtor Shared Storage II platform.
- 
- config MACH_WNR854T
--	bool "Netgear WNR854T"
-+	bool "Netgear WNR854T / WN802T"
- 	help
- 	  Say 'Y' here if you want your kernel to support the
--	  Netgear WNR854T platform.
-+	  Netgear WNR854T or WN802T platform.
-+
-+config MACH_WN802T
-+	def_bool MACH_WNR854T
- 
- config MACH_RD88F5181L_GE
- 	bool "Marvell Orion-VoIP GE Reference Design"
---- a/arch/arm/mach-orion5x/wnr854t-setup.c
-+++ b/arch/arm/mach-orion5x/wnr854t-setup.c
-@@ -115,6 +115,15 @@ static struct dsa_platform_data __initda
- 	.chip		= &wnr854t_switch_chip_data,
- };
- 
-+static struct dsa_chip_data wn802t_switch_chip_data = {
-+	.port_names[2] = "wan",
-+	.port_names[3] = "cpu",
-+};
-+
-+static struct dsa_platform_data wn802t_switch_plat_data = {
-+	.nr_chips	= 1,
-+	.chip		= &wn802t_switch_chip_data,
-+};
- static void __init wnr854t_init(void)
- {
- 	/*
-@@ -128,7 +137,10 @@ static void __init wnr854t_init(void)
- 	 * Configure peripherals.
- 	 */
- 	orion5x_eth_init(&wnr854t_eth_data);
--	orion5x_eth_switch_init(&wnr854t_switch_plat_data);
-+	if (machine_is_wn802t())
-+		orion5x_eth_switch_init(&wn802t_switch_plat_data);
-+	else
-+		orion5x_eth_switch_init(&wnr854t_switch_plat_data);
- 	orion5x_uart0_init();
- 
- 	mvebu_mbus_add_window_by_id(ORION_MBUS_DEVBUS_BOOT_TARGET,
-@@ -168,7 +180,7 @@ static struct hw_pci wnr854t_pci __initd
- 
- static int __init wnr854t_pci_init(void)
- {
--	if (machine_is_wnr854t())
-+	if (machine_is_wnr854t() || machine_is_wn802t())
- 		pci_common_init(&wnr854t_pci);
- 
- 	return 0;
-@@ -187,3 +199,15 @@ MACHINE_START(WNR854T, "Netgear WNR854T"
- 	.fixup		= tag_fixup_mem32,
- 	.restart	= orion5x_restart,
- MACHINE_END
-+
-+MACHINE_START(WN802T, "Netgear WN802T")
-+	/* Maintainer: Imre Kaloz <kaloz@openwrt.org> */
-+	.atag_offset	= 0x100,
-+	.init_machine	= wnr854t_init,
-+	.map_io		= orion5x_map_io,
-+	.init_early	= orion5x_init_early,
-+	.init_irq	= orion5x_init_irq,
-+	.init_time	= orion5x_timer_init,
-+	.fixup		= tag_fixup_mem32,
-+	.restart	= orion5x_restart,
-+MACHINE_END
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
