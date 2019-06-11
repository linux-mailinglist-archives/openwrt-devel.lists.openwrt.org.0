Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEB23C8F9
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 12:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIx0wuKa24WyqNHzLUhTSeI8Vxk1o91SQgo0DPc2nP0=; b=SdAvyxAm3Go/SD
	sqWPfJZ0RNQ/sWemSfgaA3Xb+N1FSTeDqCM7jWh/gSQEZI4XhplNIxKt5YA1ImtY/vcmaD70jUNv6
	f4Wrx1jba2runf8kGxsjOr+6vTTf9MU8N7Y1W93LkGb02I9RUBqphQfwN3huIy8ygsz+rEHlF/6eU
	BJMaK6sXTfh7TSvxAaWQ12gtDhXBXY9EqNiehvaw8XuxFUiaTGNt2L6qKquHMx4aAGKvqmkLFlqvi
	mCrPrGvSJS4QnOFeqEeqTpAVdBnj9d9u82CPhMvHaKFKZnU8FExccgNUZaY8g5LTZu/FRxaiFuIlB
	Bj9pnMEVTRdus5Of7X2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hae36-00085M-9o; Tue, 11 Jun 2019 10:30:40 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hae2g-0007jq-2T
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 10:30:16 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x5BANYTq075925;
 Tue, 11 Jun 2019 18:23:34 +0800 (GMT-8)
 (envelope-from nylon7@andestech.com)
Received: from atcfdc88.andestech.com (10.0.15.132) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3;
 Tue, 11 Jun 2019 18:30:04 +0800
From: Nylon Chen <nylon7@andestech.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 11 Jun 2019 18:30:42 +0800
Message-ID: <20190611103042.31736-3-nylon7@andestech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611103042.31736-1-nylon7@andestech.com>
References: <20190611103042.31736-1-nylon7@andestech.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.15.132]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x5BANYTq075925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_033014_729337_D3EA0103 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: [OpenWrt-Devel] [PATCH 2/4] nds32: add new target for AE3XX boards
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
Cc: Nylon Chen <nylon7717@gmail.com>, Nylon Chen <nylon7@andestech.com>,
 Che-Wei Chuang <cnoize@andestech.com>, Greentime Hu <greentime@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The AE3XX prototype demonstrates the AE3XX example platform on the FPGA.
It is composed of one Andestech(nds32) processor and AE3XX.

Signed-off-by: Che-Wei Chuang <cnoize@andestech.com>
Signed-off-by: Nylon Chen <nylon7@andestech.com>
---
 target/linux/nds32/Makefile                   |  23 ++++
 target/linux/nds32/config-4.19                | 126 ++++++++++++++++++
 target/linux/nds32/image/Makefile             |  17 +++
 ...0001-nds32-Fix-boot-messages-garbled.patch |  29 ++++
 4 files changed, 195 insertions(+)
 create mode 100644 target/linux/nds32/Makefile
 create mode 100644 target/linux/nds32/config-4.19
 create mode 100644 target/linux/nds32/image/Makefile
 create mode 100644 target/linux/nds32/patches-4.19/0001-nds32-Fix-boot-messages-garbled.patch

diff --git a/target/linux/nds32/Makefile b/target/linux/nds32/Makefile
new file mode 100644
index 0000000000..faa79e8272
--- /dev/null
+++ b/target/linux/nds32/Makefile
@@ -0,0 +1,23 @@
+#
+# Copyright (C) 2010-2011 OpenWrt.org
+# Copyright (C) 2019 Andes Technology Corporation
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+include $(TOPDIR)/rules.mk
+
+ARCH:=nds32
+BOARD:=nds32
+CPU_TYPE:=v3
+BOARDNAME:=Andes CPU SOC
+MAINTAINER:=Nylon Chen <Nylon7@andestech.com>
+#
+KERNEL_PATCHVER:=4.19
+#
+#
+include $(INCLUDE_DIR)/target.mk
+#
+DEFAULT_PACKAGES +=
+#
+$(eval $(call BuildTarget))
diff --git a/target/linux/nds32/config-4.19 b/target/linux/nds32/config-4.19
new file mode 100644
index 0000000000..9d0b35c8b9
--- /dev/null
+++ b/target/linux/nds32/config-4.19
@@ -0,0 +1,126 @@
+CONFIG_CROSS_COMPILE="nds32le-linux-"
+CONFIG_SYSVIPC=y
+CONFIG_POSIX_MQUEUE=y
+CONFIG_HIGH_RES_TIMERS=y
+CONFIG_BSD_PROCESS_ACCT=y
+CONFIG_BSD_PROCESS_ACCT_V3=y
+CONFIG_IKCONFIG=y
+CONFIG_IKCONFIG_PROC=y
+CONFIG_LOG_BUF_SHIFT=14
+CONFIG_USER_NS=y
+CONFIG_RELAY=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_KALLSYMS_ALL=y
+CONFIG_PROFILING=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+# CONFIG_BLK_DEV_BSG is not set
+# CONFIG_CACHE_L2 is not set
+CONFIG_PREEMPT=y
+# CONFIG_COMPACTION is not set
+CONFIG_HZ_100=y
+# CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
+CONFIG_NET=y
+CONFIG_PACKET=y
+CONFIG_UNIX=y
+CONFIG_NET_KEY=y
+CONFIG_INET=y
+CONFIG_IP_MULTICAST=y
+# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
+# CONFIG_INET_XFRM_MODE_TUNNEL is not set
+# CONFIG_INET_XFRM_MODE_BEET is not set
+# CONFIG_INET_DIAG is not set
+# CONFIG_IPV6 is not set
+# CONFIG_BLK_DEV is not set
+CONFIG_NETDEVICES=y
+# CONFIG_NET_CADENCE is not set
+# CONFIG_NET_VENDOR_BROADCOM is not set
+CONFIG_FTMAC100=y
+# CONFIG_NET_VENDOR_INTEL is not set
+# CONFIG_NET_VENDOR_MARVELL is not set
+# CONFIG_NET_VENDOR_MICREL is not set
+# CONFIG_NET_VENDOR_NATSEMI is not set
+# CONFIG_NET_VENDOR_SEEQ is not set
+# CONFIG_NET_VENDOR_STMICRO is not set
+# CONFIG_NET_VENDOR_WIZNET is not set
+CONFIG_INPUT_EVDEV=y
+# CONFIG_INPUT_KEYBOARD is not set
+# CONFIG_INPUT_MOUSE is not set
+CONFIG_INPUT_TOUCHSCREEN=y
+# CONFIG_SERIO is not set
+CONFIG_VT_HW_CONSOLE_BINDING=y
+CONFIG_SERIAL_8250=y
+# CONFIG_SERIAL_8250_DEPRECATED_OPTIONS is not set
+CONFIG_SERIAL_8250_CONSOLE=y
+CONFIG_SERIAL_8250_NR_UARTS=3
+CONFIG_SERIAL_8251_RUNTIME_UARTS=3
+CONFIG_SERIAL_OF_PLATFORM=y
+# CONFIG_HW_RANDOM is not set
+# CONFIG_HWMON is not set
+# CONFIG_HID_A4TECH is not set
+# CONFIG_HID_APPLE is not set
+# CONFIG_HID_BELKIN is not set
+# CONFIG_HID_CHERRY is not set
+# CONFIG_HID_CHICONY is not set
+# CONFIG_HID_CYPRESS is not set
+# CONFIG_HID_EZKEY is not set
+# CONFIG_HID_ITE is not set
+# CONFIG_HID_KENSINGTON is not set
+# CONFIG_HID_LOGITECH is not set
+# CONFIG_HID_MICROSOFT is not set
+# CONFIG_HID_MONTEREY is not set
+# CONFIG_USB_SUPPORT is not set
+CONFIG_GENERIC_PHY=y
+CONFIG_EXT4_FS=y
+CONFIG_EXT4_FS_POSIX_ACL=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_EXT4_ENCRYPTION=y
+CONFIG_FUSE_FS=y
+CONFIG_MSDOS_FS=y
+CONFIG_VFAT_FS=y
+CONFIG_TMPFS=y
+CONFIG_TMPFS_POSIX_ACL=y
+CONFIG_CONFIGFS_FS=y
+CONFIG_NFS_FS=y
+CONFIG_NFS_V3_ACL=y
+CONFIG_NFS_V4=y
+CONFIG_NFS_V4_1=y
+CONFIG_NFS_USE_LEGACY_DNS=y
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ISO8859_1=y
+CONFIG_DEBUG_INFO=y
+CONFIG_DEBUG_INFO_DWARF4=y
+CONFIG_GDB_SCRIPTS=y
+CONFIG_READABLE_ASM=y
+CONFIG_HEADERS_CHECK=y
+CONFIG_DEBUG_SECTION_MISMATCH=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_KERNEL=y
+CONFIG_PANIC_ON_OOPS=y
+# CONFIG_SCHED_DEBUG is not set
+# CONFIG_DEBUG_PREEMPT is not set
+CONFIG_STACKTRACE=y
+CONFIG_RCU_CPU_STALL_TIMEOUT=300
+# CONFIG_CRYPTO_HW is not set
+CONFIG_CPU_LITTLE_ENDIAN=y
+CONFIG_CPU_CACHE_ALIASING=y
+# CONFIG_CPU_N15 is not set
+# CONFIG_CPU_N13 is not set
+# CONFIG_CPU_N10 is not set
+# CONFIG_CPU_D15 is not set
+# CONFIG_CPU_D10 is not set
+CONFIG_CPU_V3=y
+CONFIG_ANDES_PAGE_SIZE_4KB=y
+# CONFIG_ANDES_PAGE_SIZE_8KB is not set
+# CONFIG_CPU_ICACHE_DISABLE is not set
+# CONFIG_CPU_DCACHE_DISABLE is not set
+# CONFIG_CPU_DCACHE_WRITETHROUGH is not set
+# CONFIG_WBNA is not set
+# CONFIG_ALIGNMENT_TRAP is not set
+# CONFIG_HW_SUPPORT_UNALIGNMENT_ACCESS is not set
+# CONFIG_CACHE_L2 is not set
+CONFIG_NDS32_BUILTIN_DTB="ae3xx"
+# CONFIG_NFS_V4_2 is not set
+CONFIG_ATCPIT100_TIMER=y
+CONFIG_NFS_V4_1_IMPLEMENTATION_ID_DOMAIN="kernel.org"
+# CONFIG_NFS_V4_1_MIGRATION is not set
diff --git a/target/linux/nds32/image/Makefile b/target/linux/nds32/image/Makefile
new file mode 100644
index 0000000000..68a00d3106
--- /dev/null
+++ b/target/linux/nds32/image/Makefile
@@ -0,0 +1,17 @@
+#
+# Copyright (C) 2010 OpenWrt.org
+# Copyright (C) 2019 Andes Technology Corporation
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+include $(TOPDIR)/rules.mk
+include $(INCLUDE_DIR)/image.mk
+#
+define Image/Prepare
+	cp $(KDIR)/vmlinux.elf $(BIN_DIR)/$(IMG_PREFIX)-vmlinux.elf
+endef
+
+define Image/Build
+	cp $(KDIR)/root.$(1) $(BIN_DIR)/$(IMG_PREFIX)-$(1).img
+endef
+$(eval $(call BuildImage))
diff --git a/target/linux/nds32/patches-4.19/0001-nds32-Fix-boot-messages-garbled.patch b/target/linux/nds32/patches-4.19/0001-nds32-Fix-boot-messages-garbled.patch
new file mode 100644
index 0000000000..368fc73e5c
--- /dev/null
+++ b/target/linux/nds32/patches-4.19/0001-nds32-Fix-boot-messages-garbled.patch
@@ -0,0 +1,29 @@
+From cee312116ee359c633fd1b0492ac0cc4e15cfccf Mon Sep 17 00:00:00 2001
+From: Nylon Chen <nylon7@andestech.com>
+Date: Thu, 15 Nov 2018 16:49:30 +0800
+Subject: [PATCH] nds32:  Fix boot messages garbled
+
+In order to display uart correctly we have to pass the correct setting of uart to kernel by bootarg.
+This patch will provide such settings to set the correct uart baud rate.
+
+Signed-off-by: Nylon Chen <nylon7@andestech.com>
+Signed-off-by: Greentime Hu <greentime@andestech.com>
+---
+ arch/nds32/boot/dts/ae3xx.dts | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/arch/nds32/boot/dts/ae3xx.dts b/arch/nds32/boot/dts/ae3xx.dts
+index bb39749a6673..02e059c295bf 100644
+--- a/arch/nds32/boot/dts/ae3xx.dts
++++ b/arch/nds32/boot/dts/ae3xx.dts
+@@ -7,6 +7,7 @@
+ 
+ 	chosen {
+ 		stdout-path = &serial0;
++		bootargs = "memblock=debug earlycon console=ttyS0,38400n8 debug loglevel=7";
+ 	};
+ 
+ 	memory@0 {
+-- 
+2.18.0
+
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
