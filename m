Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8BC14156B
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 02:23:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KHapcmHd0F9EKanSnKHnKQl0o7+Q2Ql3e/zcdpM+pUs=; b=CVmtjXAzvGmrZWfA2Nr65EwFc8
	nsXhBu+GXtlifK7hOdvKFfV43I/1TP/yMgqm1q2MLxHK6EVhzZVaFIsHeLMjZUf59EA0HuEAcmW/A
	T1YMeP0IYBlps/7K6eNUcqnjKKhfZ3OCzCXfxBbz8CHm/RrGu5vZVgSioyufGhaTVqiynxeDrWyjO
	VpvkelHAKrTvqDhzC9wy7V7/Zbq6ixAFfKdDZmuPHSeFC1LUlNPdHe3bhwinv11DLJ/fT2WJU9GXL
	2zNnacIppDuo2YOmdy0jTnpM7FWn6iW9lz8pE+c5+M7LCVXlRoE/aIfOXWXe3AKVBqGh/K8XGC6lz
	kliaQ8qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscp2-0007LE-Tj; Sat, 18 Jan 2020 01:22:44 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iscoQ-0006iy-Dl
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 01:22:08 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MNssA-1jGjGT47tA-00OCc2 for <openwrt-devel@lists.openwrt.org>; Sat, 18
 Jan 2020 02:22:02 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 02:21:15 +0100
Message-Id: <20200118012115.46148-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
References: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:uJT2WNWeo1JZmgL7NMjo/P4ATrXXRa+RlVpM15SHm+RmBY8sD7l
 GaKC2AT5/DOnQzqh+gRwE/fGgyTbyAOEAvbBFULPMqtreeDp9Bi8tB+2Th8lGt8VUH59P8z
 yFd3WFiv975dtSALcmdnd/9vrekvTuM1hcNAkMtnz2P4U5pBQGGkoOp5qBIMlQZ8LOIDsHw
 beQIGCRHYg98tiZE821MQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5nc4SLKDcxc=:LbqyEL1qUmHqOzOW5N6xhD
 26mMG+RMycUVNhwGGgCcY5pDoA0OlkMWVEfGKprxIqFvb2sQc1O40tWFvFCIF/2rYBTZ8l7vC
 Vm9MtpZCURuXhtNA9ArWitFyogu2thVxjobK/YhX6SNzjLyY+pK0DDAkGyDRNIwwjE5jzSGRk
 U0vpeLhXkIvmXAclxGHOzC3gZtbOg8Fqz23rHX//bIvegj4VSU9r2AXliMqY0sYR6Ggbv2bq9
 dwhLS2IiVYN/POqGTxK+2CEY0WZPrwF73boGrX5WjOatEAuiS0DYT0n0x/SlWd9BNb547AGi7
 RLyDkxYoOnyisqzOFV8GBqbXUaYLCecJlmDadO0lq6iia8mUK/Jm+xgA5omqKPLdj2gtVUtQ5
 pE+FnInTuZMbCsvsW4iBjfl4pvFdPxicHWrpFha6hBhz2tKiQ3WFssDjtZ6fIBXa26Rrz7yoT
 exwuU2MTFQ/sxld5bNGCezNeLlXaQmv0XF3c6MjsEmDOr1FmIOpzGH0tpHBCnZCoZX5ENAV2r
 eY3YjNTLa6WDVUq6VHudUuZnaUv8FohRuQgkMQHlM8hfRYr8X9uBbG99bnoYbKn/+v4W0cZyy
 GcksqhNQ76D5bMnz+PSn1qMD/US5ZMlye9P1LZ2Txbi1Y/U+Pi03N6/E/Df0ei59WWsn51LfZ
 ZBYGIrPDszK3VRtoU1c5AWGUVmqpHZFWChmudPGkjFA/y/X9DnCLBMukBRdXZDP/Ts1li2Du2
 PciQv10uyx6SZVuwjzzAKia3xxQP5yfp88L6h+CxPlPrKVkia7r/wnUEaJkYqSZ633sBzT/1p
 AlgGbLEzx3Lj+5X7f5QeGh9/1Y6DiVk2UKwr0F/2Jdu3O1VjHIeRuwKL0Wx/KW6kBstLKU8pQ
 fJIf6eJgWatD+uvArebmkfyIgMGQeecGRcyqabJjM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_172206_758428_C75A0017 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kirkwood: exploit BOARD_NAME to set
 DEVICE_DTS and SUPPORTED_DEVICES
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

Due to the history of the target, all devices added before a certain
point have the same device string in BOARD_NAME, DEVICE_DTS and added
to SUPPORTED_DEVICES.

Thus, we can set this one automatically for all devices where
BOARD_NAME is specified, removing the explicit DEVICE_DTS and
SUPPORTED_DEVICES addition there.

For new devices, nothing has changed, and just DEVICE_DTS has to
be set manually.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/kirkwood/image/Makefile | 22 ++--------------------
 1 file changed, 2 insertions(+), 20 deletions(-)

diff --git a/target/linux/kirkwood/image/Makefile b/target/linux/kirkwood/image/Makefile
index 7b59b69c1d..9c5681901c 100644
--- a/target/linux/kirkwood/image/Makefile
+++ b/target/linux/kirkwood/image/Makefile
@@ -12,6 +12,7 @@ KERNEL_LOADADDR:=0x8000
 
 define Device/Default
   PROFILES := Default
+  DEVICE_DTS = $$(if $$(BOARD_NAME),kirkwood-$$(BOARD_NAME),)
   KERNEL_DEPENDS = $$(wildcard $(DTS_DIR)/$$(DEVICE_DTS).dts)
   KERNEL := kernel-bin | append-dtb | uImage none
   KERNEL_NAME := zImage
@@ -24,13 +25,12 @@ define Device/Default
   IMAGES := sysupgrade.bin factory.bin
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
   IMAGE/factory.bin := append-ubi
-  SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
+  SUPPORTED_DEVICES = $(subst _,$(comma),$(1)) $$(BOARD_NAME)
 endef
 
 define Device/cisco_on100
   DEVICE_VENDOR := Cisco Systems
   DEVICE_MODEL := ON100
-  DEVICE_DTS := kirkwood-on100
   DEVICE_PACKAGES := kmod-i2c-mv64xxx
   KERNEL_SIZE := 5376k
   KERNEL_IN_UBI :=
@@ -43,9 +43,7 @@ TARGET_DEVICES += cisco_on100
 define Device/cloudengines_pogoe02
   DEVICE_VENDOR := Cloud Engines
   DEVICE_MODEL := Pogoplug E02
-  DEVICE_DTS := kirkwood-pogo_e02
   BOARD_NAME := pogo_e02
-  SUPPORTED_DEVICES += pogo_e02
 endef
 TARGET_DEVICES += cloudengines_pogoe02
 
@@ -60,9 +58,7 @@ TARGET_DEVICES += cloudengines_pogoplugv4
 define Device/iom_iconnect-1.1
   DEVICE_VENDOR := Iomega
   DEVICE_MODEL := Iconnect
-  DEVICE_DTS := kirkwood-iconnect
   BOARD_NAME := iconnect
-  SUPPORTED_DEVICES += iconnect
 endef
 TARGET_DEVICES += iom_iconnect-1.1
 
@@ -87,7 +83,6 @@ define Device/linksys_audi
   DEVICE_VENDOR := Linksys
   DEVICE_MODEL := EA3500 (Audi)
   DEVICE_PACKAGES := kmod-mwl8k swconfig wpad-basic kmod-gpio-button-hotplug
-  DEVICE_DTS := kirkwood-linksys-audi
   PAGESIZE := 512
   SUBPAGESIZE := 256
   BLOCKSIZE := 16KiB
@@ -96,7 +91,6 @@ define Device/linksys_audi
   UBINIZE_OPTS := -E 5
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
   BOARD_NAME := linksys-audi
-  SUPPORTED_DEVICES += linksys-audi
 endef
 TARGET_DEVICES += linksys_audi
 
@@ -104,56 +98,45 @@ define Device/linksys_viper
   DEVICE_VENDOR := Linksys
   DEVICE_MODEL := E4200v2 / EA4500 (Viper)
   DEVICE_PACKAGES := kmod-mwl8k swconfig wpad-basic kmod-gpio-button-hotplug
-  DEVICE_DTS := kirkwood-linksys-viper
   KERNEL_SIZE := 2688k
   KERNEL_IN_UBI :=
   UBINIZE_OPTS := -E 5
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
   BOARD_NAME := linksys-viper
-  SUPPORTED_DEVICES += linksys-viper
 endef
 TARGET_DEVICES += linksys_viper
 
 define Device/raidsonic_ib-nas62x0
   DEVICE_VENDOR := RaidSonic
   DEVICE_MODEL := ICY BOX IB-NAS62x0
-  DEVICE_DTS := kirkwood-ib62x0
   BOARD_NAME := ib62x0
-  SUPPORTED_DEVICES += ib62x0
 endef
 TARGET_DEVICES += raidsonic_ib-nas62x0
 
 define Device/seagate_dockstar
   DEVICE_VENDOR := Seagate
   DEVICE_MODEL := FreeAgent Dockstar
-  DEVICE_DTS := kirkwood-dockstar
   BOARD_NAME := dockstar
-  SUPPORTED_DEVICES += dockstar
 endef
 TARGET_DEVICES += seagate_dockstar
 
 define Device/seagate_goflexnet
   DEVICE_VENDOR := Seagate
   DEVICE_MODEL := GoFlexNet
-  DEVICE_DTS := kirkwood-goflexnet
   BOARD_NAME := goflexnet
-  SUPPORTED_DEVICES += goflexnet
 endef
 TARGET_DEVICES += seagate_goflexnet
 
 define Device/seagate_goflexhome
   DEVICE_VENDOR := Seagate
   DEVICE_MODEL := GoFlexHome
-  DEVICE_DTS := kirkwood-goflexhome
   BOARD_NAME := goflexhome
-  SUPPORTED_DEVICES += goflexhome
 endef
 TARGET_DEVICES += seagate_goflexhome
 
 define Device/zyxel_nsa310b
   DEVICE_VENDOR := ZyXEL
   DEVICE_MODEL := NSA310b
-  DEVICE_DTS := kirkwood-nsa310b
   DEVICE_PACKAGES := kmod-r8169 kmod-gpio-button-hotplug kmod-hwmon-lm85
   BOARD_NAME := nsa310b
 endef
@@ -163,7 +146,6 @@ define Device/zyxel_nsa325
   DEVICE_VENDOR := ZyXEL
   DEVICE_MODEL := NSA325
   DEVICE_VARIANT := v1/v2
-  DEVICE_DTS := kirkwood-nsa325
   DEVICE_PACKAGES := kmod-gpio-button-hotplug kmod-rtc-pcf8563 kmod-usb3
   BOARD_NAME := nsa325
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
