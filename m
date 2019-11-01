Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8D6EBC61
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 04:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aK2p9AVdPIROp8fzi9l/G3b0y4FtAmXEmCB2jNHZjY=; b=CjW/opv5lxma+L
	FSSi49oKgNlSLbJHSR5Ik1SOJJxclfEUIk1AhSSM3/iWqsNmF51m+v30XKfUS6aFpA6LAIdwZuiht
	63YI+2vRxF2ybTI++uVAG4gJJUfOqkatH9U/13Hrg57dzlCnuJdGOdh4vssVxFWzzWwAFKpOoMUQt
	NE7SNV+rndCyRXAkwngpGNYggJjI1T5z+Q4VlD/xjpRt57b4s3LcCiEW6PH1A7rJllZywg8nCUsZL
	kx0DWoVLzUIED+O1DM/4lyr4ovc+O8tKJG4eLYKC5tiewGyN0Gs+jLzYIHqmawlsrixdaSpZhbAGH
	mHEkCxkFgJPXDZQKYkqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNdf-0005Zu-Qt; Fri, 01 Nov 2019 03:30:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNd0-00059h-QU
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 03:29:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id l24so5545533pgh.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 20:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OoaI4eHZ0Q3PcJwstvZcbsX+b79DS+mYLVOgoz74hRw=;
 b=RPYCNwd0kbhDU3QtsJLFnMgodW8fvv+cQx2cYgjmfOKQ1vC6WX4M4pZ9KpbF8265Yi
 i5k1toPXG121bdbyNdWLHgZM3/dhnqBVEwk0XtmuTqDVQ7PxYdHTYPghEZNDguZk6LOb
 qUEdthrFzAbUk5fy4cbYa6/9pnX1HwFNgh4Cy5h0SxsIbixcxRxdwZXcHcxkmc9vCLb8
 uqkDbPuMSaiLl958erBa20gbxvCAKzaV/9WmdFwkwSgy0Clt5KBUymsXho3hn1T1cD7H
 fsWkgCCGufSoiK7OEexEhhizGXTnxONpSMwh3K1b9oPAHnBtGr3UI9gFmujKxMR0hJA0
 q0HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OoaI4eHZ0Q3PcJwstvZcbsX+b79DS+mYLVOgoz74hRw=;
 b=MCcVss4jbHjscirqromMgrKm2vqMQ+QqYTQcprZTzhL7Fk2W4rb3cvfHz+OwJ3rfQQ
 ICPrLn5dFYfEUGUI+0OJkfGsA23ma6i3WNcBtWwe+93GbkCrMQiLujs5FNuIbxi4WtFm
 6VVFtuTGJA/1V4iNzk8RSjEEbPnaWKxa27klnVQDNiK+8yp0a+N2K8L4aWD0EgE/QL/U
 OtPXzpv9jAArB7MQ6+4TRHZodiIhm/D0f+2Ij6nhpduESAdAtaghdWjxpeEzYcWK44eW
 sFlr5nWNrebfLaIQeUoQbB0ge+MLwTFph3rWx0laVYfNumADysUr5o5KvtZ/9FwQv6m9
 fqzQ==
X-Gm-Message-State: APjAAAX8yQsKk7kYJYlYHfNfAXO5V7hrdeOxFwE0FTXnNY1VU2B4Vg+2
 tb5+UCf7JkQnvt12anULBOAyVHdHmz4=
X-Google-Smtp-Source: APXvYqxOELjUGu3H4j8qF2E9vFrY+VK9pihMM5fQoPeXKS3rgTl9z6M0w7oreG3snwkNKXaBA+KEiQ==
X-Received: by 2002:a63:f812:: with SMTP id n18mr10828948pgh.109.1572578973511; 
 Thu, 31 Oct 2019 20:29:33 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id j11sm4667485pfa.127.2019.10.31.20.29.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:29:33 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 11:28:58 +0800
Message-Id: <20191101032858.19013-5-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191101032858.19013-1-gch981213@gmail.com>
References: <20191101032858.19013-1-gch981213@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_202935_146450_E5A51816 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH 4/4] mediatek: add mt7629 subtarget with rfb
 image
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

base-files are added into subtarget directory like what's done
recently in ath79. For this subtarget, metadata checks are enforced
and a SUPPORTED_DEVICE is added to generate proper metadata.
Since we only have mt7629 support in 4.19, override KERNEL_PATCHVER
in target.mk for now.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 target/linux/mediatek/Makefile                |   2 +-
 target/linux/mediatek/image/Makefile          |  14 +-
 target/linux/mediatek/image/mt7629.mk         |   8 +
 .../mt7629/base-files/etc/board.d/02_network  |  34 ++
 .../mt7629/base-files/lib/upgrade/platform.sh |  16 +
 target/linux/mediatek/mt7629/config-4.19      | 369 ++++++++++++++++++
 .../linux/mediatek/mt7629/profiles/default.mk |  15 +
 target/linux/mediatek/mt7629/target.mk        |  17 +
 8 files changed, 471 insertions(+), 4 deletions(-)
 create mode 100644 target/linux/mediatek/image/mt7629.mk
 create mode 100755 target/linux/mediatek/mt7629/base-files/etc/board.d/02_network
 create mode 100755 target/linux/mediatek/mt7629/base-files/lib/upgrade/platform.sh
 create mode 100644 target/linux/mediatek/mt7629/config-4.19
 create mode 100644 target/linux/mediatek/mt7629/profiles/default.mk
 create mode 100644 target/linux/mediatek/mt7629/target.mk

diff --git a/target/linux/mediatek/Makefile b/target/linux/mediatek/Makefile
index 0fda718714..28101a70d9 100644
--- a/target/linux/mediatek/Makefile
+++ b/target/linux/mediatek/Makefile
@@ -5,7 +5,7 @@ include $(TOPDIR)/rules.mk
 ARCH:=arm
 BOARD:=mediatek
 BOARDNAME:=MediaTek Ralink ARM
-SUBTARGETS:=mt7622 mt7623
+SUBTARGETS:=mt7622 mt7623 mt7629
 FEATURES:=squashfs nand ramdisk fpu
 MAINTAINER:=John Crispin <john@phrozen.org>
 
diff --git a/target/linux/mediatek/image/Makefile b/target/linux/mediatek/image/Makefile
index d14c12ee7c..ddf4e435c7 100644
--- a/target/linux/mediatek/image/Makefile
+++ b/target/linux/mediatek/image/Makefile
@@ -16,6 +16,10 @@ ifeq ($(SUBTARGET),mt7622)
 KERNEL_LOADADDR = 0x41080000
 endif
 
+ifeq ($(SUBTARGET),mt7629)
+KERNEL_LOADADDR = 0x40008000
+endif
+
 define Build/sysupgrade-emmc
 	rm -f $@.recovery
 	mkfs.fat -C $@.recovery 3070
@@ -33,13 +37,13 @@ define Device/Default
   FILESYSTEMS := squashfs
   DEVICE_DTS_DIR := $(DTS_DIR)
   IMAGES := sysupgrade.bin
-  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata 
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
+  SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
 ifeq ($(SUBTARGET),mt7623)
   KERNEL_NAME := zImage
   KERNEL := kernel-bin | append-dtb | uImage none
   KERNEL_INITRAMFS := kernel-bin | append-dtb | uImage none
-endif
-ifeq ($(SUBTARGET),mt7622)
+else
   KERNEL_NAME := Image
   KERNEL = kernel-bin | lzma | fit lzma $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb
   KERNEL_INITRAMFS = kernel-bin | lzma | fit lzma $$(KDIR)/image-$$(firstword $$(DEVICE_DTS)).dtb
@@ -54,6 +58,10 @@ ifeq ($(SUBTARGET),mt7623)
 include mt7623.mk
 endif
 
+ifeq ($(SUBTARGET),mt7629)
+include mt7629.mk
+endif
+
 define Image/Build
 	$(call Image/Build/$(1),$(1))
 endef
diff --git a/target/linux/mediatek/image/mt7629.mk b/target/linux/mediatek/image/mt7629.mk
new file mode 100644
index 0000000000..ba1daefa03
--- /dev/null
+++ b/target/linux/mediatek/image/mt7629.mk
@@ -0,0 +1,8 @@
+define Device/mediatek_mt7629-lynx-rfb
+  DEVICE_VENDOR := MediaTek
+  DEVICE_MODEL := MT7629 Lynx reference board
+  DEVICE_DTS := mt7629-lynx-rfb
+  DEVICE_PACKAGES := swconfig
+endef
+TARGET_DEVICES += mediatek_mt7629-lynx-rfb
+
diff --git a/target/linux/mediatek/mt7629/base-files/etc/board.d/02_network b/target/linux/mediatek/mt7629/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..757a390c24
--- /dev/null
+++ b/target/linux/mediatek/mt7629/base-files/etc/board.d/02_network
@@ -0,0 +1,34 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+mediatek_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	mediatek,mt7629-lynx-rfb)
+		ucidef_set_interfaces_wan "eth1"
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "6@eth0"
+		;;
+	esac
+}
+
+mediatek_setup_macs()
+{
+	local board="$1"
+
+	case $board in
+	esac
+}
+
+board_config_update
+board=$(board_name)
+mediatek_setup_interfaces $board
+mediatek_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/mediatek/mt7629/base-files/lib/upgrade/platform.sh b/target/linux/mediatek/mt7629/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..9a613c43b1
--- /dev/null
+++ b/target/linux/mediatek/mt7629/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,16 @@
+PART_NAME=firmware
+REQUIRE_IMAGE_METADATA=1
+
+platform_check_image() {
+	return 0
+}
+
+platform_do_upgrade() {
+	local board=$(board_name)
+
+	case "$board" in
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
diff --git a/target/linux/mediatek/mt7629/config-4.19 b/target/linux/mediatek/mt7629/config-4.19
new file mode 100644
index 0000000000..e43f758cdf
--- /dev/null
+++ b/target/linux/mediatek/mt7629/config-4.19
@@ -0,0 +1,369 @@
+CONFIG_ALIGNMENT_TRAP=y
+CONFIG_ARCH_CLOCKSOURCE_DATA=y
+CONFIG_ARCH_HAS_DEBUG_VIRTUAL=y
+CONFIG_ARCH_HAS_ELF_RANDOMIZE=y
+CONFIG_ARCH_HAS_FORTIFY_SOURCE=y
+CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
+CONFIG_ARCH_HAS_KCOV=y
+CONFIG_ARCH_HAS_MEMBARRIER_SYNC_CORE=y
+CONFIG_ARCH_HAS_PHYS_TO_DMA=y
+CONFIG_ARCH_HAS_SET_MEMORY=y
+CONFIG_ARCH_HAS_SG_CHAIN=y
+CONFIG_ARCH_HAS_STRICT_KERNEL_RWX=y
+CONFIG_ARCH_HAS_STRICT_MODULE_RWX=y
+CONFIG_ARCH_HAS_TICK_BROADCAST=y
+CONFIG_ARCH_HAVE_CUSTOM_GPIO_H=y
+CONFIG_ARCH_HIBERNATION_POSSIBLE=y
+CONFIG_ARCH_MEDIATEK=y
+CONFIG_ARCH_MIGHT_HAVE_PC_PARPORT=y
+CONFIG_ARCH_MULTIPLATFORM=y
+CONFIG_ARCH_MULTI_V6_V7=y
+CONFIG_ARCH_MULTI_V7=y
+CONFIG_ARCH_NR_GPIO=0
+CONFIG_ARCH_OPTIONAL_KERNEL_RWX=y
+CONFIG_ARCH_OPTIONAL_KERNEL_RWX_DEFAULT=y
+CONFIG_ARCH_SUPPORTS_ATOMIC_RMW=y
+CONFIG_ARCH_SUPPORTS_UPROBES=y
+CONFIG_ARCH_SUSPEND_POSSIBLE=y
+CONFIG_ARCH_USE_BUILTIN_BSWAP=y
+CONFIG_ARCH_USE_CMPXCHG_LOCKREF=y
+CONFIG_ARCH_WANT_GENERAL_HUGETLB=y
+CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
+CONFIG_ARM=y
+CONFIG_ARM_ARCH_TIMER=y
+CONFIG_ARM_ARCH_TIMER_EVTSTREAM=y
+CONFIG_ARM_GIC=y
+CONFIG_ARM_HAS_SG_CHAIN=y
+CONFIG_ARM_HEAVY_MB=y
+CONFIG_ARM_L1_CACHE_SHIFT=6
+CONFIG_ARM_L1_CACHE_SHIFT_6=y
+# CONFIG_ARM_LPAE is not set
+CONFIG_ARM_PATCH_IDIV=y
+CONFIG_ARM_PATCH_PHYS_VIRT=y
+CONFIG_ARM_PMU=y
+CONFIG_ARM_THUMB=y
+# CONFIG_ARM_THUMBEE is not set
+CONFIG_ARM_VIRT_EXT=y
+CONFIG_ATAGS=y
+CONFIG_AUTO_ZRELADDR=y
+CONFIG_BLK_DEV_SD=y
+CONFIG_BLK_MQ_PCI=y
+CONFIG_BLK_SCSI_REQUEST=y
+CONFIG_BSD_PROCESS_ACCT=y
+CONFIG_BSD_PROCESS_ACCT_V3=y
+CONFIG_CACHE_L2X0=y
+CONFIG_CC_HAS_ASM_GOTO=y
+# CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE is not set
+CONFIG_CC_OPTIMIZE_FOR_SIZE=y
+CONFIG_CHR_DEV_SCH=y
+CONFIG_CLKDEV_LOOKUP=y
+CONFIG_CLKSRC_MMIO=y
+CONFIG_CLONE_BACKWARDS=y
+CONFIG_CMDLINE="rootfstype=squashfs,jffs2"
+CONFIG_CMDLINE_FROM_BOOTLOADER=y
+CONFIG_COMMON_CLK=y
+CONFIG_COMMON_CLK_MEDIATEK=y
+# CONFIG_COMMON_CLK_MT2701 is not set
+# CONFIG_COMMON_CLK_MT7622 is not set
+CONFIG_COMMON_CLK_MT7629=y
+CONFIG_COMMON_CLK_MT7629_ETHSYS=y
+CONFIG_COMMON_CLK_MT7629_HIFSYS=y
+# CONFIG_COMMON_CLK_MT8135 is not set
+# CONFIG_COMMON_CLK_MT8173 is not set
+CONFIG_CPU_32v6K=y
+CONFIG_CPU_32v7=y
+CONFIG_CPU_ABRT_EV7=y
+# CONFIG_CPU_BPREDICT_DISABLE is not set
+CONFIG_CPU_CACHE_V7=y
+CONFIG_CPU_CACHE_VIPT=y
+CONFIG_CPU_COPY_V6=y
+CONFIG_CPU_CP15=y
+CONFIG_CPU_CP15_MMU=y
+CONFIG_CPU_HAS_ASID=y
+# CONFIG_CPU_HOTPLUG_STATE_CONTROL is not set
+# CONFIG_CPU_ICACHE_DISABLE is not set
+CONFIG_CPU_IDLE=y
+# CONFIG_CPU_IDLE_GOV_LADDER is not set
+CONFIG_CPU_IDLE_GOV_MENU=y
+CONFIG_CPU_PABRT_V7=y
+CONFIG_CPU_PM=y
+CONFIG_CPU_RMAP=y
+CONFIG_CPU_SPECTRE=y
+CONFIG_CPU_THUMB_CAPABLE=y
+CONFIG_CPU_TLB_V7=y
+CONFIG_CPU_V7=y
+CONFIG_CRC16=y
+CONFIG_CRYPTO_ACOMP2=y
+CONFIG_CRYPTO_AEAD=y
+CONFIG_CRYPTO_AEAD2=y
+CONFIG_CRYPTO_DEFLATE=y
+CONFIG_CRYPTO_HASH2=y
+CONFIG_CRYPTO_LZO=y
+CONFIG_CRYPTO_MANAGER=y
+CONFIG_CRYPTO_MANAGER2=y
+CONFIG_CRYPTO_NULL2=y
+CONFIG_CRYPTO_RNG2=y
+CONFIG_CRYPTO_WORKQUEUE=y
+CONFIG_DCACHE_WORD_ACCESS=y
+CONFIG_DEBUG_LL_INCLUDE="mach/debug-macro.S"
+# CONFIG_DEBUG_USER is not set
+CONFIG_DEFAULT_HOSTNAME="(mt7629)"
+CONFIG_DEFAULT_IOSCHED="noop"
+CONFIG_DEFAULT_NOOP=y
+CONFIG_DTC=y
+CONFIG_EDAC_ATOMIC_SCRUB=y
+CONFIG_EDAC_SUPPORT=y
+CONFIG_EINT_MTK=y
+CONFIG_FIXED_PHY=y
+CONFIG_FIX_EARLYCON_MEM=y
+CONFIG_FRAME_POINTER=y
+CONFIG_GENERIC_ALLOCATOR=y
+CONFIG_GENERIC_ARCH_TOPOLOGY=y
+CONFIG_GENERIC_BUG=y
+CONFIG_GENERIC_CLOCKEVENTS=y
+CONFIG_GENERIC_CLOCKEVENTS_BROADCAST=y
+CONFIG_GENERIC_CPU_AUTOPROBE=y
+CONFIG_GENERIC_EARLY_IOREMAP=y
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
+CONFIG_GENERIC_PINCONF=y
+CONFIG_GENERIC_PINCTRL_GROUPS=y
+CONFIG_GENERIC_PINMUX_FUNCTIONS=y
+CONFIG_GENERIC_SCHED_CLOCK=y
+CONFIG_GENERIC_SMP_IDLE_THREAD=y
+CONFIG_GENERIC_STRNCPY_FROM_USER=y
+CONFIG_GENERIC_STRNLEN_USER=y
+CONFIG_GPIOLIB=y
+CONFIG_GPIO_SYSFS=y
+CONFIG_HANDLE_DOMAIN_IRQ=y
+# CONFIG_HARDENED_USERCOPY is not set
+CONFIG_HARDEN_BRANCH_PREDICTOR=y
+CONFIG_HARDIRQS_SW_RESEND=y
+CONFIG_HAS_DMA=y
+CONFIG_HAS_IOMEM=y
+CONFIG_HAS_IOPORT_MAP=y
+CONFIG_HAVE_ARCH_AUDITSYSCALL=y
+CONFIG_HAVE_ARCH_BITREVERSE=y
+CONFIG_HAVE_ARCH_JUMP_LABEL=y
+CONFIG_HAVE_ARCH_KGDB=y
+CONFIG_HAVE_ARCH_PFN_VALID=y
+CONFIG_HAVE_ARCH_SECCOMP_FILTER=y
+CONFIG_HAVE_ARCH_THREAD_STRUCT_WHITELIST=y
+CONFIG_HAVE_ARCH_TRACEHOOK=y
+CONFIG_HAVE_ARM_ARCH_TIMER=y
+CONFIG_HAVE_ARM_SMCCC=y
+CONFIG_HAVE_CLK=y
+CONFIG_HAVE_CLK_PREPARE=y
+CONFIG_HAVE_CONTEXT_TRACKING=y
+CONFIG_HAVE_C_RECORDMCOUNT=y
+CONFIG_HAVE_DEBUG_KMEMLEAK=y
+CONFIG_HAVE_DMA_CONTIGUOUS=y
+CONFIG_HAVE_DYNAMIC_FTRACE=y
+CONFIG_HAVE_DYNAMIC_FTRACE_WITH_REGS=y
+CONFIG_HAVE_EBPF_JIT=y
+CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y
+CONFIG_HAVE_FTRACE_MCOUNT_RECORD=y
+CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
+CONFIG_HAVE_FUNCTION_TRACER=y
+CONFIG_HAVE_GENERIC_DMA_COHERENT=y
+CONFIG_HAVE_HW_BREAKPOINT=y
+CONFIG_HAVE_IDE=y
+CONFIG_HAVE_IRQ_TIME_ACCOUNTING=y
+CONFIG_HAVE_LD_DEAD_CODE_DATA_ELIMINATION=y
+CONFIG_HAVE_MEMBLOCK=y
+CONFIG_HAVE_MOD_ARCH_SPECIFIC=y
+CONFIG_HAVE_NET_DSA=y
+CONFIG_HAVE_OPROFILE=y
+CONFIG_HAVE_OPTPROBES=y
+CONFIG_HAVE_PERF_EVENTS=y
+CONFIG_HAVE_PERF_REGS=y
+CONFIG_HAVE_PERF_USER_STACK_DUMP=y
+CONFIG_HAVE_PROC_CPU=y
+CONFIG_HAVE_REGS_AND_STACK_ACCESS_API=y
+CONFIG_HAVE_RSEQ=y
+CONFIG_HAVE_SCHED_AVG_IRQ=y
+CONFIG_HAVE_SMP=y
+CONFIG_HAVE_SYSCALL_TRACEPOINTS=y
+CONFIG_HAVE_UID16=y
+CONFIG_HAVE_VIRT_CPU_ACCOUNTING_GEN=y
+CONFIG_HOTPLUG_CPU=y
+CONFIG_HW_RANDOM=y
+CONFIG_HW_RANDOM_MTK=y
+CONFIG_HZ_FIXED=0
+CONFIG_INITRAMFS_SOURCE=""
+# CONFIG_IOSCHED_DEADLINE is not set
+CONFIG_IRQCHIP=y
+CONFIG_IRQ_DOMAIN=y
+CONFIG_IRQ_DOMAIN_HIERARCHY=y
+CONFIG_IRQ_FORCED_THREADING=y
+CONFIG_IRQ_TIME_ACCOUNTING=y
+CONFIG_IRQ_WORK=y
+# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set
+CONFIG_LIBFDT=y
+CONFIG_LOCK_DEBUGGING_SUPPORT=y
+CONFIG_LOCK_SPIN_ON_OWNER=y
+CONFIG_LZO_COMPRESS=y
+CONFIG_LZO_DECOMPRESS=y
+# CONFIG_MACH_MT2701 is not set
+# CONFIG_MACH_MT6589 is not set
+# CONFIG_MACH_MT6592 is not set
+# CONFIG_MACH_MT7623 is not set
+CONFIG_MACH_MT7629=y
+# CONFIG_MACH_MT8127 is not set
+# CONFIG_MACH_MT8135 is not set
+CONFIG_MDIO_BUS=y
+CONFIG_MDIO_DEVICE=y
+CONFIG_MEDIATEK_WATCHDOG=y
+CONFIG_MEMFD_CREATE=y
+CONFIG_MFD_SYSCON=y
+CONFIG_MIGHT_HAVE_CACHE_L2X0=y
+CONFIG_MIGHT_HAVE_PCI=y
+CONFIG_MIGRATION=y
+CONFIG_MODULES_TREE_LOOKUP=y
+CONFIG_MODULES_USE_ELF_REL=y
+CONFIG_MT753X_GSW=y
+CONFIG_MTD_MT81xx_NOR=y
+CONFIG_MTD_NAND=y
+CONFIG_MTD_NAND_ECC=y
+CONFIG_MTD_NAND_MTK=y
+CONFIG_MTD_SPI_NOR=y
+CONFIG_MTD_SPLIT_FIRMWARE=y
+CONFIG_MTD_SPLIT_FIT_FW=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_BEB_LIMIT=20
+CONFIG_MTD_UBI_BLOCK=y
+# CONFIG_MTD_UBI_FASTMAP is not set
+# CONFIG_MTD_UBI_GLUEBI is not set
+CONFIG_MTD_UBI_WL_THRESHOLD=4096
+# CONFIG_MTK_EFUSE is not set
+CONFIG_MTK_INFRACFG=y
+# CONFIG_MTK_PMIC_WRAP is not set
+CONFIG_MTK_SCPSYS=y
+CONFIG_MTK_TIMER=y
+CONFIG_MUTEX_SPIN_ON_OWNER=y
+CONFIG_NEED_DMA_MAP_STATE=y
+CONFIG_NETFILTER=y
+CONFIG_NET_FLOW_LIMIT=y
+CONFIG_NET_MEDIATEK_SOC=y
+CONFIG_NET_VENDOR_MEDIATEK=y
+CONFIG_NLS=y
+CONFIG_NO_BOOTMEM=y
+CONFIG_NO_HZ_COMMON=y
+CONFIG_NO_HZ_IDLE=y
+CONFIG_NR_CPUS=2
+CONFIG_NVMEM=y
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
+CONFIG_OLD_SIGACTION=y
+CONFIG_OLD_SIGSUSPEND3=y
+CONFIG_OUTER_CACHE=y
+CONFIG_OUTER_CACHE_SYNC=y
+CONFIG_PADATA=y
+CONFIG_PAGE_OFFSET=0xC0000000
+CONFIG_PCI=y
+CONFIG_PCIEAER=y
+CONFIG_PCIEPORTBUS=y
+CONFIG_PCIE_MEDIATEK=y
+CONFIG_PCIE_PME=y
+CONFIG_PCI_DOMAINS=y
+CONFIG_PCI_DOMAINS_GENERIC=y
+CONFIG_PCI_MSI=y
+CONFIG_PCI_MSI_IRQ_DOMAIN=y
+# CONFIG_PCI_V3_SEMI is not set
+CONFIG_PERF_EVENTS=y
+CONFIG_PERF_USE_VMALLOC=y
+CONFIG_PGTABLE_LEVELS=2
+CONFIG_PHYLIB=y
+CONFIG_PHY_MTK_TPHY=y
+# CONFIG_PHY_MTK_XSPHY is not set
+CONFIG_PINCTRL=y
+CONFIG_PINCTRL_MT7629=y
+CONFIG_PINCTRL_MTK_MOORE=y
+# CONFIG_PL310_ERRATA_588369 is not set
+# CONFIG_PL310_ERRATA_727915 is not set
+# CONFIG_PL310_ERRATA_753970 is not set
+# CONFIG_PL310_ERRATA_769419 is not set
+CONFIG_PM=y
+CONFIG_PM_CLK=y
+# CONFIG_PM_DEBUG is not set
+CONFIG_PM_GENERIC_DOMAINS=y
+CONFIG_PM_GENERIC_DOMAINS_OF=y
+CONFIG_PWM=y
+CONFIG_PWM_MEDIATEK=y
+# CONFIG_PWM_MTK_DISP is not set
+CONFIG_PWM_SYSFS=y
+CONFIG_RAS=y
+CONFIG_RATIONAL=y
+CONFIG_RCU_NEED_SEGCBLIST=y
+CONFIG_RCU_STALL_COMMON=y
+CONFIG_REFCOUNT_FULL=y
+CONFIG_REGMAP=y
+CONFIG_REGMAP_MMIO=y
+CONFIG_RESET_CONTROLLER=y
+CONFIG_RFS_ACCEL=y
+CONFIG_RPS=y
+CONFIG_RWSEM_SPIN_ON_OWNER=y
+CONFIG_RWSEM_XCHGADD_ALGORITHM=y
+CONFIG_SCSI=y
+CONFIG_SERIAL_8250_FSL=y
+CONFIG_SERIAL_8250_MT6577=y
+CONFIG_SERIAL_8250_NR_UARTS=3
+CONFIG_SERIAL_8250_RUNTIME_UARTS=3
+CONFIG_SERIAL_OF_PLATFORM=y
+CONFIG_SGL_ALLOC=y
+CONFIG_SG_POOL=y
+CONFIG_SMP=y
+CONFIG_SMP_ON_UP=y
+CONFIG_SPARSE_IRQ=y
+CONFIG_SRCU=y
+CONFIG_STACKTRACE=y
+# CONFIG_SWAP is not set
+CONFIG_SWCONFIG=y
+CONFIG_SWPHY=y
+CONFIG_SWP_EMULATE=y
+CONFIG_SYS_SUPPORTS_APM_EMULATION=y
+# CONFIG_THUMB2_KERNEL is not set
+CONFIG_TICK_CPU_ACCOUNTING=y
+CONFIG_TIMER_OF=y
+CONFIG_TIMER_PROBE=y
+CONFIG_TREE_RCU=y
+CONFIG_TREE_SRCU=y
+CONFIG_UBIFS_FS=y
+# CONFIG_UBIFS_FS_ADVANCED_COMPR is not set
+CONFIG_UBIFS_FS_LZO=y
+CONFIG_UBIFS_FS_ZLIB=y
+CONFIG_UNCOMPRESS_INCLUDE="debug/uncompress.h"
+CONFIG_USB=y
+CONFIG_USB_COMMON=y
+# CONFIG_USB_EHCI_HCD is not set
+CONFIG_USB_SUPPORT=y
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_MTK=y
+# CONFIG_USB_XHCI_PLATFORM is not set
+CONFIG_USE_OF=y
+# CONFIG_VFP is not set
+CONFIG_WATCHDOG_CORE=y
+# CONFIG_WQ_POWER_EFFICIENT_DEFAULT is not set
+CONFIG_XPS=y
+CONFIG_XZ_DEC_ARM=y
+CONFIG_XZ_DEC_BCJ=y
+CONFIG_ZBOOT_ROM_BSS=0
+CONFIG_ZBOOT_ROM_TEXT=0
+CONFIG_ZLIB_DEFLATE=y
+CONFIG_ZLIB_INFLATE=y
diff --git a/target/linux/mediatek/mt7629/profiles/default.mk b/target/linux/mediatek/mt7629/profiles/default.mk
new file mode 100644
index 0000000000..2ef570ba66
--- /dev/null
+++ b/target/linux/mediatek/mt7629/profiles/default.mk
@@ -0,0 +1,15 @@
+#
+# Copyright (C) 2015 OpenWrt.org
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+define Profile/Default
+	NAME:=Default Profile (minimum package set)
+endef
+
+define Profile/Default/Description
+	Default package set compatible with most boards.
+endef
+$(eval $(call Profile,Default))
diff --git a/target/linux/mediatek/mt7629/target.mk b/target/linux/mediatek/mt7629/target.mk
new file mode 100644
index 0000000000..4bec630c1c
--- /dev/null
+++ b/target/linux/mediatek/mt7629/target.mk
@@ -0,0 +1,17 @@
+#
+# Copyright (C) 2009 OpenWrt.org
+#
+
+ARCH:=arm
+SUBTARGET:=mt7629
+BOARDNAME:=MT7629
+CPU_TYPE:=cortex-a7
+FEATURES:=squashfs nand ramdisk
+
+KERNELNAME:=Image dtbs
+KERNEL_PATCHVER:=4.19
+
+define Target/Description
+	Build firmware images for MediaTek mt7629 ARM based boards.
+endef
+
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
