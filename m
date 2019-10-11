Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB34D3C66
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tFZwPWQd4jvQuhPzX5wd6frA+ar+SyvMxh4OYQxgjXE=; b=MYgZwyT4Q2gJDt0pHH7TrP7b/l
	d8h+0KW8mgj+ru7EiuX+4iNd6aRNLAip1XCepoJHCE6xAhvEGi5F+SuvTXvWUp8C6Uo9N5pxOpie1
	mkVpEmyBL+qSj6ddJBZEM9bzuia9vMm8jbjUHtJ0rtt8pWja8qEndEGINE/r9NKb0Ou0zDcg6X5NC
	5xCrwjaJU9IBoHPRQ/dpHBJb8FWhc83chnbXD6OrI2w7YdDl+CrsBkI4XAgQpxAMXTtoIfys8wUmO
	49En5i9DW/StnYF7J/qLvs6KE+ppj4P4NllzGRPL/+7h2qISFyUJRSvu0kU2NmnA+sL6C7xiMcmiU
	LZfGq0LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrIR-0001uG-9t; Fri, 11 Oct 2019 09:33:15 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrH2-0000SV-KU
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:51 +0000
Received: (wp-smtpd smtp.wp.pl 16759 invoked from network);
 11 Oct 2019 11:31:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786306; bh=H+ob6RgynncKqmpuovglV+MR0zhK+6JhXnD5OQRkWWg=;
 h=From:To:Subject;
 b=O6td1lZ0udIjtEESprZAMfhjW5JL/m8lCAIs5WlWWGIe7LDBjmaSp17JBMMFRNSLI
 wMsncAuHMmRZEY2MomBDtx27u8SwynFkwI1b9PSX6eyNVmvOat5B7hhyt7ndGKauX4
 cJ07nZKZpOQc1KDSZHeeL1dRG/K8jz4AKVmLKxOk=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:46 +0200
Date: Fri, 11 Oct 2019 11:17:09 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011111709.344d3667@kosmio.komorska>
In-Reply-To: <20191011111446.77a86e7b@kosmio.komorska>
References: <20191011111446.77a86e7b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: badf125a2df74fd4a112ea09df925095
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [AbOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023149_083502_6C452AAC 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear WNDR4300
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

Warning: sysupgrade does not work for now - ath79 command is
apparently not NAND-aware at the moment; flashing via sysupgrade
from ar71xx is not possible (unless forced) due to changed board
ID string; reflashing using ath79 version corrupts UBI volumes
and puts router in Firmware Recovery mode.

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
 .../ath79/base-files/etc/board.d/01_leds      |   3 +
 .../ath79/base-files/etc/board.d/02_network   |   5 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   6 +
 .../ath79/dts/ar9344_netgear_wndr4300.dts     | 291 ++++++++++++++++++
 target/linux/ath79/image/Makefile             |   1 +
 target/linux/ath79/image/nand-netgear.mk      |  34 ++
 target/linux/ath79/nand/config-default        |  30 +-
 7 files changed, 368 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
 create mode 100644 target/linux/ath79/image/nand-netgear.mk

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index ce2892a956..1d128a46f8 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -102,6 +102,9 @@ glinet,gl-ar300m-lite)
 glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
+netgear,wndr4300)
+	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
+	;;
 netgear,wnr1000-v2|\
 netgear,wnr2000-v3|\
 netgear,wnr2200)
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index adb676011d..51303c8b22 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -136,6 +136,7 @@ ath79_setup_interfaces()
 	dlink,dir-842-c3|\
 	dlink,dir-859-a1|\
 	engenius,epg5000|\
+	netgear,wndr4300|\
 	tplink,archer-c2-v3|\
 	tplink,tl-wr1043nd-v4|\
 	tplink,tl-wr1043n-v5)
@@ -403,6 +404,10 @@ ath79_setup_macs()
 	netgear,wndr3800)
 		lan_mac=$(macaddr_setbit_la "$(mtd_get_mac_binary art 0x0)")
 		;;
+	netgear,wndr4300)
+		lan_mac=$(mtd_get_mac_binary caldata 0x0)
+		wan_mac=$(mtd_get_mac_binary caldata 0x6)
+		;;
 	phicomm,k2t)
 		lan_mac=$(k2t_get_mac "lan_mac")
 		wan_mac=$(k2t_get_mac "wan_mac")
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index af1a25ef89..2ffbd6ffe2 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -130,6 +130,9 @@ case "$FIRMWARE" in
 		ath9k_eeprom_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 0x2
 		;;
+	netgear,wndr4300)
+		ath9k_eeprom_extract "caldata" 0x1000 0x800
+		;;
 	qihoo,c301)
 		ath9k_eeprom_extract "radiocfg" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
@@ -166,6 +169,9 @@ case "$FIRMWARE" in
 	winchannel,wb2000)
 		ath9k_eeprom_extract "art" 0x5000 0x440
 		;;
+	netgear,wndr4300)
+		ath9k_eeprom_extract "caldata" 0x5000 0x800
+		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
 	netgear,wnr2200|\
diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts b/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
new file mode 100644
index 0000000000..9589ab3c43
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
@@ -0,0 +1,291 @@
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
+		label-mac-device = &wmac;
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
+			0x10 0xc1000000
+			0x50 0xcc35cc35
+			0x54 0xcb37cb37
+			0x58 0x00000000
+			0x5c 0x00f3cf00
+			0x7c 0x0000007e
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
diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image/Makefile
index 24768ef5e0..b6ac83cdc1 100644
--- a/target/linux/ath79/image/Makefile
+++ b/target/linux/ath79/image/Makefile
@@ -77,6 +77,7 @@ include ./generic-ubnt.mk
 endif
 ifeq ($(SUBTARGET),nand)
 include ./nand.mk
+include ./nand-netgear.mk
 endif
 ifeq ($(SUBTARGET),tiny)
 include ./tiny.mk
diff --git a/target/linux/ath79/image/nand-netgear.mk b/target/linux/ath79/image/nand-netgear.mk
new file mode 100644
index 0000000000..b25e6ec66c
--- /dev/null
+++ b/target/linux/ath79/image/nand-netgear.mk
@@ -0,0 +1,34 @@
+include ./common-netgear.mk	# for netgear-uImage
+
+# (pad-offset 129 = 2 * uimage_header + 0xff)
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
+  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma -d20 | \
+	netgear-uImage lzma
+  IMAGES := ubi-sysupgrade.bin ubi-factory.img
+  IMAGE/ubi-factory.img := append-kernel | append-ubi | netgear-dni | \
+	check-size $$$$(IMAGE_SIZE)
+  IMAGE/ubi-sysupgrade.bin := sysupgrade-tar | append-metadata | \
+	check-size $$$$(IMAGE_SIZE)
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
diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
index c8114a4985..9ce0e75585 100644
--- a/target/linux/ath79/nand/config-default
+++ b/target/linux/ath79/nand/config-default
@@ -1,4 +1,5 @@
 CONFIG_BCH=y
+# CONFIG_MTD_CFI is not set
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_AR934X=y
 CONFIG_MTD_NAND_BCH=y
@@ -6,10 +7,35 @@ CONFIG_MTD_NAND_ECC=y
 CONFIG_MTD_NAND_ECC_BCH=y
 CONFIG_MTD_SPINAND_MT29F=y
 CONFIG_MTD_SPINAND_ONDIEECC=y
+# CONFIG_MTD_SPLIT_SEAMA_FW is not set
+# CONFIG_MTD_SPLIT_TPLINK_FW is not set
+# CONFIG_MTD_TPLINK_PARTS is not set
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_BEB_LIMIT=20
-# CONFIG_MTD_UBI_BLOCK is not set
+CONFIG_MTD_UBI_BLOCK=y
 # CONFIG_MTD_UBI_FASTMAP is not set
 # CONFIG_MTD_UBI_GLUEBI is not set
 CONFIG_MTD_UBI_WL_THRESHOLD=4096
-# CONFIG_UBIFS_FS is not set
+CONFIG_UBIFS_FS=y
+# CONFIG_UBIFS_FS_ADVANCED_COMPR is not set
+CONFIG_UBIFS_FS_LZO=y
+CONFIG_UBIFS_FS_ZLIB=y
+CONFIG_LZO_COMPRESS=y
+CONFIG_LZO_DECOMPRESS=y
+CONFIG_ZLIB_DEFLATE=y
+CONFIG_ZLIB_INFLATE=y
+# CONFIG_IP17XX_PHY is not set
+# CONFIG_RTL8306_PHY is not set
+# CONFIG_RTL8366_SMI is not set
+CONFIG_BLK_MQ_PCI=y
+CONFIG_PCI=y
+CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
+CONFIG_PCI_DOMAINS=y
+CONFIG_PCI_AR724X=y
+# CONFIG_PCI_AR71XX is not set
+# CONFIG_CAN_C_CAN_PCI is not set
+# CONFIG_KSZ884X_PCI is not set
+# CONFIG_NE2K_PCI is not set
+# CONFIG_MISDN_HFCPCI is not set
+# CONFIG_SERIAL_8250_PCI is not set
+# CONFIG_SND_PCI is not set
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
