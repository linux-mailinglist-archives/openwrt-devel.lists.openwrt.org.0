Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79F9EB866
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 21:30:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vR/srWHDyeTlwi3W3jjSSnL8tzVf5Upc6+k6p9PfdoU=; b=bi02EV0obYk11G
	WKmul8JFzMCATN2hwaho+zs0tpRhmx8txWXWGOY+vkm8/cXfEdZbxLRt5eOtv3+sd8KXpeZIWgBdV
	5YkOvR1is9vCoXTzYxdfHJGgOtkQOYjgfD+JgLM9R8iz7YFK5BAc2Qe50/K8dMhSLFFBJYS5da4Gh
	4j/Dy152kdY51IW8SEN73KbYakenz6dg3CjG8upu8VZjVjtjIZ/xhqAl/wUEw3oVqEdy7U5LA1ceI
	6mdduT9BFaL9rrrXv87wxcR3uVwzrgIokqbGVs03+KZsFU7iwJxV+XGSUn+bDJJOyc6HTbYbxJ+UZ
	Um3SOgk/4NinPavlprGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQH5U-0006Eb-2O; Thu, 31 Oct 2019 20:30:32 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQH57-0005TS-KR
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 20:30:12 +0000
Received: (wp-smtpd smtp.wp.pl 34811 invoked from network);
 31 Oct 2019 21:30:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572553804; bh=oJ1LSmsEanLfA2xnhV4XyMlnjHOS5Kw/aTLJI51OLgk=;
 h=From:To:Cc:Subject;
 b=Xtdh1GpkukCyphewxH6zmGOUbPwdQSzf4wy4vJ8UC1dlP5nxMEYV1McvJMyqiBHAg
 5sdRG2KTkQqm+bQqy8HEZBJqm3Vol6CMapyyQSzCk/WepYtWTGs2TB7jE5FcJhMPr2
 RgVc3u7vwDkUnNwdUsaq7YblLCM0YeTpT1boUlmc=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Oct 2019 21:30:04 +0100
Date: Thu, 31 Oct 2019 21:18:10 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191031211810.3f34f4d9@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: bbd79c8ecb26f0cc748d2bcd1adc97ff
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [kTOh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_133010_190178_358425F1 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3] ath79: add support for Netgear WNDR4300
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds ath79 support for Netgear WNDR4300.
Router was previously supported by ar71xx target only.
Note: device requires 'ar934x-nand' driver in kernel.

Specification
=============
  * Description: Netgear WNDR4300
  * Loader: U-boot
  * SOC: Atheros AR9344 (560 MHz)
  * RAM: 128 MiB
  * Flash: 128 MiB (NAND)
	- U-boot binary: 256 KiB
	- U-boot environment: 256 KiB
	- ART: 256 KiB
	- POT: 512 KiB
	- Language: 2 MiB
	- Config: 512 KiB
	- Traffic Meter: 3 MiB
	- Firmware: 25 MiB
	- ART Backup: 256 KiB
	- Reserved: 96 MiB
  * Ethernet: 5 x 10/100/1000 (4 x LAN, 1 x WAN) (AR8327)
  * Wireless:
	- 2.4 GHz b/g/n (internal)
	- 5 GHz a/n (AR9580)
  * USB: yes, 1 x USB 2.0
  * Buttons:
	- Reset
	- WiFi (rfkill)
	- WPS
  * LEDs:
	- Power (amber/green)
	- WAN (amber/green)
	- WLAN 2G (green)
	- WLAN 5G (blue)
	- 4 x LAN (amber/green)
	- USB (green)
	- WPS (amber/green)
  * UART: 4-pin connector JP1, 3.3V (Vcc, TX, RX, GND), 115200 8N1
  * Power supply: DC 12V 2.5A
  * MAC addresses: LAN=WLAN2G on case label, WAN +1, WLAN5G +2

Installation
============
  * TFTP recovery
  * TFTP via U-boot prompt
  * sysupgrade
  * Web interface

Note about partitioning: firmware partition offset (0x6c0000) is
hardcoded into vendor's u-boot, so this partition cannot be moved
and resized to include Netgear-specific flash areas (pot, language,
config, traffic_meter) not used by OpenWrt.

Test build configuration
========================
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_nand=y
CONFIG_TARGET_ath79_nand_DEVICE_netgear_wndr4300=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 package/boot/uboot-envtools/files/ath79       |   3 +
 .../ath79/dts/ar9344_netgear_wndr4300.dts     | 293 ++++++++++++++++++
 target/linux/ath79/image/nand.mk              |  32 ++
 .../ath79/nand/base-files/etc/board.d/01_leds |   3 +
 .../nand/base-files/etc/board.d/02_network    |   7 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  13 +
 .../nand/base-files/lib/upgrade/platform.sh   |   1 +
 7 files changed, 352 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9344_netgear_wndr4300.dts

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index cc9741cedf..5da5df2420 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -33,6 +33,9 @@ yuncore,a770)
 buffalo,wzr-hp-ag300h)
 	ubootenv_add_uci_config "/dev/mtd3" "0x0" "0x10000" "0x10000"
 	;;
+netgear,wndr4300)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
+	;;
 qihoo,c301)
 	ubootenv_add_uci_config "/dev/mtd9" "0x0" "0x10000" "0x10000"
 	;;
diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts b/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
new file mode 100644
index 0000000000..c2c395e8cf
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
@@ -0,0 +1,293 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	compatible = "netgear,wndr4300", "qca,ar9344";
+	model = "Netgear WNDR4300";
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	aliases {
+		led-boot = &power_amber;
+		led-failsafe = &power_amber;
+		led-running = &power_green;
+		led-upgrade = &power_amber;
+		label-mac-device = &eth0;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+		};
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 21 GPIO_ACTIVE_LOW>;
+		};
+
+		rfkill {
+			label = "rfkill";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&enable_gpio_11>;
+
+		power_green: power_green {
+			label = "netgear:green:power";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		power_amber: power_amber {
+			label = "netgear:amber:power";
+			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+		};
+
+		wan_green {
+			label = "netgear:green:wan";
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "netgear:amber:wan";
+			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan2g_green {
+			label = "netgear:green:wlan2g";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		wlan5g_blue {
+			label = "netgear:blue:wlan5g";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		wps_green {
+			label = "netgear:green:wps";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		wps_amber {
+			label = "netgear:amber:wps";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		usb_green {
+			label = "netgear:green:usb";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&hub_port>;
+			linux,default-trigger = "usbport";
+		};
+	};
+};
+
+&pinmux {
+	enable_gpio_11: pinmux_enable_gpio_11 {
+		pinctrl-single,bits = <0x8 0x0 0xff000000>;
+	};
+};
+
+&nand {
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "u-boot";
+			reg = <0x0 0x40000>;
+			read-only;
+		};
+
+		partition@40000 {
+			label = "u-boot-env";
+			reg = <0x40000 0x40000>;
+		};
+
+		art: partition@80000 {
+			label = "caldata";
+			reg = <0x80000 0x40000>;
+			read-only;
+		};
+
+		partition@c0000 {
+			label = "pot";
+			reg = <0xc0000 0x80000>;
+		};
+
+		partition@140000 {
+			label = "language";
+			reg = <0x140000 0x200000>;
+		};
+
+		partition@340000 {
+			label = "config";
+			reg = <0x340000 0x80000>;
+		};
+
+		partition@3c0000 {
+			label = "traffic_meter";
+			reg = <0x3c0000 0x300000>;
+		};
+
+		kernel@6c0000 {
+			label = "kernel";
+			reg = <0x6c0000 0x200000>;
+		};
+
+		ubi@8c0000 {
+			label = "ubi";
+			reg = <0x8c0000 0x1700000>;
+		};
+
+		partition@6c0000 {
+			label = "firmware";
+			reg = <0x6c0000 0x1900000>;
+			compatible = "netgear,uimage";
+		};
+
+		partition@1fc0000 {
+			label = "caldata_backup";
+			reg = <0x1fc0000 0x40000>;
+			read-only;
+		};
+
+		partition@2000000 {
+			label = "reserved";
+			reg = <0x2000000 0x6000000>;
+			read-only;
+		};
+	};
+};
+
+&ref {
+	clock-frequency = <40000000>;
+};
+
+&builtin_switch {
+	resets = <&rst 8>, <&rst 12>;
+	reset-names = "switch", "switch-analog";
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy-mask = <0>;
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		phy-mode = "rgmii";
+		qca,mib-poll-interval = <500>;
+
+		qca,ar8327-initvals = <
+			0x04 0x07600000
+			0x0c 0x01000000
+			0x10 0xc1000000
+			0x50 0xcc35cc35
+			0x54 0xcb37cb37
+			0x58 0x00000000
+			0x5c 0x00f3cf00
+			0x7c 0x0000007e
+			0x94 0x0000007e
+			>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	/* default for ar934x, except for 1000M */
+	pll-data = <0x06000000 0x00000101 0x00001616>;
+
+	mtd-mac-address = <&art 0x0>;
+
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+};
+
+&gpio {
+	status = "okay";
+
+	lna0 {
+		gpio-hog;
+		line-name = "netgear:ext:lna0";
+		gpios = <18 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+
+	lna1 {
+		gpio-hog;
+		line-name = "netgear:ext:lna1";
+		gpios = <19 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
+&wmac {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x0>;
+	qca,no-eeprom;
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,0033";
+		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0xc>;
+		qca,no-eeprom;
+		#gpio-cells = <2>;
+		gpio-controller;
+
+		usb_power {
+			gpio-hog;
+			line-name = "netgear:power:usb";
+			gpios = <0 GPIO_ACTIVE_HIGH>;
+			output-high;
+		};
+	};
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&usb {
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	hub_port: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
+};
+
+&uart {
+	status = "okay";
+};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index c11ff6a257..0f7514060e 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,3 +1,5 @@
+include ./common-netgear.mk	# for netgear-uImage
+
 # attention: only zlib compression is allowed for the boot fs
 define  Build/zyxel-buildkerneljffs
         rm -rf  $(KDIR_TMP)/zyxelnbg6716
@@ -59,6 +61,36 @@ define Device/glinet_gl-ar300m-nand
 endef
 TARGET_DEVICES += glinet_gl-ar300m-nand
 
+# fake rootfs is mandatory, pad-offset 129 equals (2 * uimage_header + 0xff)
+define Device/netgear_ath79_nand
+  DEVICE_VENDOR := NETGEAR
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
+  KERNEL_SIZE := 2048k
+  BLOCKSIZE := 128k
+  PAGESIZE := 2048
+  IMAGE_SIZE := 25600k
+  KERNEL := kernel-bin | append-dtb | lzma -d20 | \
+	pad-offset $$(KERNEL_SIZE) 129 | \
+	netgear-uImage lzma | append-string -e '\xff' | \
+	append-uImage-fakehdr filesystem $$(NETGEAR_KERNEL_MAGIC)
+  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma -d20 | netgear-uImage lzma
+  IMAGES := sysupgrade.bin factory.img
+  IMAGE/factory.img := append-kernel | append-ubi | netgear-dni | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata | check-size $$$$(IMAGE_SIZE)
+  UBINIZE_OPTS := -E 5
+endef
+
+define Device/netgear_wndr4300
+  ATH_SOC := ar9344
+  DEVICE_MODEL := WNDR4300
+  NETGEAR_KERNEL_MAGIC := 0x33373033
+  NETGEAR_BOARD_ID := WNDR4300
+  NETGEAR_HW_ID := 29763948+0+128+128+2x2+3x3
+  SUPPORTED_DEVICES += wndr4300
+  $(Device/netgear_ath79_nand)
+endef
+TARGET_DEVICES += netgear_wndr4300
+
 define Device/zyxel_nbg6716
   ATH_SOC := qca9558
   DEVICE_VENDOR := ZyXEL
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
index 59c35ed828..f851b3d886 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -11,6 +11,9 @@ case "$board" in
 glinet,gl-ar300m-nand)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
 	;;
+netgear,wndr4300)
+	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
+	;;
 esac
 
 board_config_flush
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
index faf70218ac..9d7a19c2eb 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -11,6 +11,10 @@ ath79_setup_interfaces()
 	aerohive,hiveap-121)
 		ucidef_set_interface_lan "eth0"
 		;;
+	netgear,wndr4300)
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5:wan"
+		;;
 	zyxel,nbg6716)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth1"
@@ -26,6 +30,9 @@ ath79_setup_macs()
 	local board="$1"
 
 	case "$board" in
+	netgear,wndr4300)
+		wan_mac=$(mtd_get_mac_binary caldata 0x6)
+		;;
 	zyxel,nbg6716)
 		lan_mac=$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
 		wan_mac=$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 88a40b5d41..ae1d3572a8 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -9,6 +9,9 @@ board=$(board_name)
 case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
+	netgear,wndr4300)
+		caldata_extract "caldata" 0x1000 0x440
+		;;
 	zyxel,nbg6716)
 		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env ethaddr)
@@ -18,4 +21,14 @@ case "$FIRMWARE" in
 		;;
 	esac
 	;;
+"ath9k-eeprom-pci-0000:00:00.0.bin")
+	case $board in
+	netgear,wndr4300)
+		caldata_extract "caldata" 0x5000 0x440
+		;;
+	*)
+		caldata_die "board $board is not supported yet"
+		;;
+	esac
+	;;
 esac
diff --git a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
index 6f8c7d47ff..1b1ae0391e 100644
--- a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
@@ -14,6 +14,7 @@ platform_do_upgrade() {
 
 	case "$board" in
 	aerohive,hiveap-121|\
+	netgear,wndr4300|\
 	zyxel,nbg6716)
 		nand_do_upgrade "$1"
 		;;
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
