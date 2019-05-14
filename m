Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CFB1E537
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 00:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1gWmRMgjWNn1zmRfmCsZHw2bp/s9EpphQD34dSiUt9Q=; b=frUuu7Q0PMged6YEXrljqUHe9z
	E5U9a+PdA3F4zh8jm9+5/fSCl36KbAq3OcIAvEJiko0cTGRjgUtTMU8jxQc0CZyiBtWViSbCO8DLM
	PsDiXvStYj8t+S4cc0/sH2XboQMHjb6esmYjI+AqEM6cO1ESB05CVmnOe5ImEMV17bP8b5FAnlQeV
	1edyLL83q+tgNwubvxhcCxXRmuZGOnx6zTHfbYTJdSFRIzqVCm6TJyWLB4AJzdcEYasrxf/vAGgzB
	8dmWM9AUul+oJTJkMNjiFB3xUdQEjfBaezmYuGAMkE1zDh0WWz8+QxiFGWgz40/LAYMfFCGWtM5TR
	Nj0kaMow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQg63-0001Tx-B6; Tue, 14 May 2019 22:40:31 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQg5u-0001Sk-QU
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 22:40:24 +0000
Received: from allycomm.com (inet.guidewire.com [199.91.42.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 9B1713BB6E;
 Tue, 14 May 2019 15:40:17 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 15:39:56 -0700
Message-Id: <20190514223956.19663-4-lede@allycomm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514223956.19663-1-lede@allycomm.com>
References: <20190514223956.19663-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_154022_876480_78DF2203 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 3/3] ath79: Extend GL.iNet AR750S support to
 NAND file system
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

The GL.iNet AR750S ("Slate") is a dual-band, compact "travel router"
which has previously been supported by OpenWrt with only its NOR flash
accessible.

This ports the device to both NOR and NAND flash using the
upstream SPI NAND framework available in Linux 4.19

Device Highlights

    * QCA9563 at 775 MHz
    * QCA9887
    * External antennas (2x)
    * 128 MB DDR RAM
    * 16 MB SPI NOR flash
    * 128 MB SPI NAND flash
    * 3x GigE ports
    * USB 2 port
    * microSD (USB-attached)
    * One button, one switch
    * I2C and serial headers
    * OEM U-Boot supplies HTTP/GUI access
    * Runs off 5 V supplied over microUSB

Implementation Notes
====================

Both the NOR and NAND variants boot off a NOR-based kernel,
consistent with the OEM's firmware.

The mode LEDs are

    * Boot, Running   power
    * Failsafe        2G
    * Upgrade         5G

Installation
============

Using sysupgrade
----------------

sysupgrade may be used to install a NAND image on a device running
a NAND image or a NOR image on a device running a NOR image. It is
recommended to *not* preserve config when upgrading from OEM firmware
or previous versions of OpenWrt. No supported sysupgrade path should
require "force". Transitioning from NOR to NAND can be accomplished
using U-Boot.

To glinet_ar750s-nand:

    gl-ar750s          OEM NAND, Self-built from OEM source NAND

To glinet_ar750s-nor:

    gl-ar750s          Self-built from OEM source NOR
    glinet_gl-ar750s   OpenWrt NOR (prior builds)

Using U-Boot
------------

The OEM U-Boot can be put into a graphical, firmware-upload mode by
holding down the button on the side of the router while applying power
and for a bit more than five seconds following with the current OEM
U-Boot. The power LED will come on, then the 5G LED will flash five
times, about once a second.  When the 5G LED stops flashing and the
2G LED lights solid, the router's U-Boot will provide an upload page
at http://192.168.1.1/ Either a browser may be used to upload an image,
or a utility such as curl may be used:

    curl -X POST -F gl_firmware=\@*-nand-squashfs-factory.img \
         http://192.168.1.1/index.html
or
    curl -X POST -F gl_firmware=\@*-nor-squashfs-sysupgrade.bin \
         http://192.168.1.1/index.html

Note that NOR vs. NAND is based on the file name extension.

Serial & I2C Access
===================

Serial access is *not* required to flash or enter U-Boot recovery.

Serial is configured for 115200, 8n1. 3.3 V logic levels are compatible.

Warning:  5 V ("TTL") or RS232 levels can cause permananent damage.

The board has well-labled (unpopulated) headers for serial and I2C
along the front edge of the board (the edge with the LEDs). Looking
from the top, rear of the unit (behind Ethernet jacks)

     -------------------------------------------
          5G_LED        2G_LED      PWR_LED

                    O O O O O O O

                    3 S S G T R G
		    V C D N X X N
		    3 L A D     D

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 package/boot/uboot-envtools/files/ath79       |   1 +
 .../ath79/base-files/etc/board.d/01_leds      |   4 +
 .../ath79/base-files/etc/board.d/02_network   |   2 +-
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   2 +-
 .../ath79/base-files/lib/upgrade/platform.sh  |  23 +++-
 .../dts/qca9563_glinet_gl-ar750s-nand.dts     |  10 ++
 .../dts/qca9563_glinet_gl-ar750s-nor.dts      |  15 +++
 ...750s.dts => qca9563_glinet_gl-ar750s.dtsi} | 109 +++++++++++++-----
 target/linux/ath79/image/generic.mk           |   6 +-
 target/linux/ath79/image/nand.mk              |  15 +++
 10 files changed, 152 insertions(+), 35 deletions(-)
 create mode 100644 target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nand.dts
 create mode 100644 target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nor.dts
 rename target/linux/ath79/dts/{qca9563_glinet_gl-ar750s.dts => qca9563_glinet_gl-ar750s.dtsi} (64%)

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index 2144f61070..faa5c501f3 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -19,6 +19,7 @@ buffalo,wzr-hp-ag300h)
 buffalo,bhr-4grv2|\
 glinet,gl-ar300m-nand|\
 glinet,gl-ar300m-nor|\
+glinet,gl-ar750s-*|\
 librerouter,librerouter-v1|\
 netgear,ex6400|\
 netgear,ex7300|\
diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 9c353baabe..c974c12d14 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -78,6 +78,10 @@ glinet,gl-ar300m-nor)
 glinet,gl-ar300m-lite)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m-lite:green:lan" "eth0"
 	;;
+glinet,gl-ar750s-*)
+	ucidef_set_led_netdev "wlan2g" "WLAN 2G" "gl-ar750s:green:wlan2g"
+	ucidef_set_led_netdev "wlan5g" "WLAN 5G" "gl-ar750s:green:wlan5g"
+	;;
 glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
 	;;
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index f877669f98..f1f8a11f81 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -114,7 +114,7 @@ ath79_setup_interfaces()
 	etactica,eg200)
 		ucidef_set_interface_lan "eth0" "dhcp"
 		;;
-	glinet,gl-ar750s)
+	glinet,gl-ar750s-*)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "2:lan:2" "3:lan:1" "1:wan"
 		;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index fc3f7142bb..34248039b6 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -109,7 +109,7 @@ case "$FIRMWARE" in
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	engenius,ews511ap|\
-	glinet,gl-ar750s|\
+	glinet,gl-ar750s-*|\
 	glinet,gl-x750|\
 	tplink,re450-v2)
 		ath10kcal_extract "art" 20480 2116
diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/target/linux/ath79/base-files/lib/upgrade/platform.sh
index c2fe08154d..aa46a03555 100644
--- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
@@ -1,3 +1,4 @@
+#!/bin/sh
 #
 # Copyright (C) 2011 OpenWrt.org
 #
@@ -32,14 +33,34 @@ redboot_fis_do_upgrade() {
 	fi
 }
 
+
+# During image creation the "board name" is of the format mfgr_board-name
+# However, on a running device it is of the format mfgr,board-name
+
+comma_to_underscore() {
+	echo "${1%%,*}_${1#*,}"
+}
+
 platform_check_image() {
-	return 0
+	local board=$(board_name)
+
+	case "$board" in
+	glinet,gl-ar750s-nand)
+		nand_do_platform_check "$(comma_to_underscore "$board")" "$IMAGE"
+		;;
+	*)
+		return 0
+		;;
+	esac
 }
 
 platform_do_upgrade() {
 	local board=$(board_name)
 
 	case "$board" in
+	glinet,gl-ar750s-nand)
+		nand_do_upgrade "$ARGV"
+		;;
 	jjplus,ja76pf2)
 		redboot_fis_do_upgrade "$ARGV" linux
 		;;
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nand.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nand.dts
new file mode 100644
index 0000000000..3d5947d441
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nand.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "qca9563_glinet_gl-ar750s.dtsi"
+
+/ {
+	compatible = "glinet,gl-ar750s-nand", "qca,qca9563";
+};
+
+/delete-node/ &nor_firmware;
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nor.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nor.dts
new file mode 100644
index 0000000000..37e50d71f6
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s-nor.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "qca9563_glinet_gl-ar750s.dtsi"
+
+/ {
+	compatible = "glinet,gl-ar750s-nor", "qca,qca9563";
+};
+
+/delete-node/ &nor_kernel;
+/delete-node/ &nor_rootfs;
+
+&nand_ubi {
+	label = "nand_ubi";
+};
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
similarity index 64%
rename from target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
rename to target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
index 378de5de90..e38879182e 100644
--- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dtsi
@@ -15,10 +15,10 @@
 	};
 
 	aliases {
-		led-boot = &power;
-		led-failsafe = &power;
-		led-running = &power;
-		led-upgrade = &power;
+		led-boot = &led_power;
+		led-failsafe = &led_wlan2g;
+		led-running = &led_power;
+		led-upgrade = &led_wlan5g;
 	};
 
 	keys {
@@ -44,36 +44,48 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power: power {
+		led_power: power {
 			label = "gl-ar750s:green:power";
 			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
 			default-state = "keep";
 		};
 
-		wlan2g {
+		led_wlan2g: wlan2g {
 			label = "gl-ar750s:green:wlan2g";
 			gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "phy1tpt";
 		};
 
-		wlan5g {
+		led_wlan5g: wlan5g {
 			label = "gl-ar750s:green:wlan5g";
 			gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "phy0tpt";
 		};
 	};
+
+	i2c@0 {
+		compatible = "i2c-gpio";
+
+		sda-gpios = <&gpio  5 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&gpio 21 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;	/* ~100 kHz */
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
 };
 
 &spi {
 	status = "okay";
-	num-cs = <0>;
 
-	flash@0 {
+	num-cs = <2>;
+	cs-gpios = <0>, <0>;
+
+	flash_nor: flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <25000000>;
 
-		partitions {
+		nor_partitions: partitions {
 			compatible = "fixed-partitions";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -95,40 +107,61 @@
 				read-only;
 			};
 
-			partition@60000 {
+			nor_firmware: partition@60000 {
 				compatible = "denx,uimage";
 				label = "firmware";
 				reg = <0x060000 0xfa0000>;
 			};
+
+			nor_kernel: partition_alt@60000 {
+				label = "kernel";
+				reg = <0x060000 0x200000>;
+			};
+
+			nor_rootfs: parition_alt@260000 {
+				label = "nor_rootfs";
+				reg = <0x260000 0xda0000>;
+			};
 		};
 	};
-};
 
-&pcie {
-	status = "okay";
-};
+	flash_nand: flash@1 {
+		compatible = "spi-nand";
+		reg = <1>;
+		spi-max-frequency = <25000000>;
 
-&uart {
-	status = "okay";
+		nand_partitions: partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			nand_ubi: partition@0 {
+				label = "ubi";
+				reg = <0x000000 0x8000000>;
+			};
+		};
+	};
 };
 
-&usb0 {
-	#address-cells = <1>;
-	#size-cells = <0>;
+&eth0 {
 	status = "okay";
 
-	hub_port: port@1 {
-		reg = <1>;
-		#trigger-source-cells = <0>;
-	};
+	phy-handle = <&phy0>;
+	mtd-mac-address = <&art 0x0>;
 };
 
-&usb_phy0 {
-	status = "okay";
+&gpio {
+	usb_power {
+		gpio-hog;
+		gpios = <7 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "usb-power";
+	};
 };
 
 &mdio0 {
 	status = "okay";
+
 	phy-mask = <0>;
 
 	phy0: ethernet-phy@0 {
@@ -141,15 +174,33 @@
 	};
 };
 
-&eth0 {
+&pcie {
 	status = "okay";
+};
 
-	mtd-mac-address = <&art 0x0>;
-	phy-handle = <&phy0>;
+&uart {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
+
+&usb_phy0 {
+	status = "okay";
+};
+
+&usb_phy1 {
+	status = "okay";
 };
 
 &wmac {
 	status = "okay";
+
 	mtd-cal-data = <&art 0x1000>;
 	mtd-mac-address = <&art 0x1002>;
 };
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 8e162e1d0e..0982a80460 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -360,14 +360,14 @@ define Device/glinet_gl-ar300m-nor
 endef
 TARGET_DEVICES += glinet_gl-ar300m-nor
 
-define Device/glinet_gl-ar750s
+define Device/glinet_gl-ar750s-nor
   ATH_SOC := qca9563
   DEVICE_TITLE := GL.iNet GL-AR750S
   DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
   IMAGE_SIZE := 16000k
-  SUPPORTED_DEVICES += gl-ar750s
+  SUPPORTED_DEVICES += gl-ar750s glinet_gl-ar750s
 endef
-TARGET_DEVICES += glinet_gl-ar750s
+TARGET_DEVICES += glinet_gl-ar750s-nor
 
 define Device/glinet_gl-x750
   ATH_SOC := qca9531
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index e69de29bb2..7db5f51c98 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -0,0 +1,15 @@
+define Device/glinet_gl-ar750s-nand
+  ATH_SOC := qca9563
+  DEVICE_TITLE := GL.iNet GL-AR750S
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct kmod-i2c-gpio
+  KERNEL_SIZE := 2048k
+  BLOCKSIZE := 128k
+  PAGESIZE := 2048
+  VID_HDR_OFFSET := 2048
+  IMAGES += factory.img
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
+  SUPPORTED_DEVICES += gl-ar750s
+endef
+TARGET_DEVICES += glinet_gl-ar750s-nand
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
