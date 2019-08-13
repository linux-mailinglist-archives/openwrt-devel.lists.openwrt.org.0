Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BCD8B35D
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 11:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIkw98LyMB+kolroS6lyMAEa8xFylMr/RGxDjvfx+Iw=; b=qmpkKs+hPExPWo
	D+zr0ZYDnz0kW7y3AuLjH1epC46O6aOPI+wxD3pxkS6A5kRO8VML0r90ecDiuE9mtBQW4weIPkN8F
	bUqhtWAzPQlt4xv3aXOrdv7mIZgck+LRme6WhIwGaYH/pysmC8FBp9lMUzPMJJayxhsBzUU3ekrZy
	UN1KZocjVzTXrv8U0vwgaMGBamQ4/XzWYvV2E3ayCCf78e22wCahLobez7EnX7eRNLh2bZqwTMUbs
	rBHhbdqUWvsnxiRRLz+iBFCIr133SDBsyudYGVuFYQG7fdJuUGWzpCOGxn/Yr3bDAqACuCkZoTKEA
	d2g4nsLekE7n23kfGfFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxSlo-0001gR-J2; Tue, 13 Aug 2019 09:07:08 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxSku-0001Tp-Nd
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 09:06:16 +0000
Received: (wp-smtpd smtp.wp.pl 38160 invoked from network);
 13 Aug 2019 11:06:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565687165; bh=M7N39Y4Rv+gBS6nnbVTAm+J/+CgQtGr/s9bN2kUNqyM=;
 h=From:To:Cc:Subject;
 b=vFziSQkdfG67dY185rLopJm/VeZROCTz0XdgCdOPrUOBctJ8dyTKhOEhYTz71BZsg
 nPs1QsVc/6zUDzUgT/n373Vx07VYzIMXcTEqEU+syYMXyg+UTCu/V+shtpS8D9EBLr
 jkn/HdTyk88KmmmQ2pAEPJgbyyAL+KWA9DutfroA=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 13 Aug 2019 11:06:05 +0200
Date: Tue, 13 Aug 2019 10:54:16 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190813105416.51acd0a1@kosmio.komorska>
In-Reply-To: <20190813104658.17f88b71@kosmio.komorska>
References: <20190813104658.17f88b71@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 2788f11604ea47ad05733e2401475a07
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [keP0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_020613_294993_7D9B6D41 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v4 5/5] ath79: add support for Netgear
 WNR2200
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

This patch adds ath79 support for Netgear WNR2200.
Router was previously supported by ar71xx target only.

Specification
=============
  * Description: Netgear WNR2200
  * Loader: U-boot
  * SOC: Atheros AR7241 (360 MHz)
  * RAM: 64 MiB
  * Flash: 8 MiB (SPI NOR)
	- U-boot binary: 256 KiB
	- U-boot environment: 64 KiB
	- Firmware: 7808 KiB
	- ART: 64 KiB
  * Ethernet: 4 x 10/100 LAN + 1 x 10/100 WAN
  * Wireless: 2.4 GHz b/g/n (Atheros AR9287)
  * USB: yes, 1 x USB 2.0
  * Buttons:
	- Reset
	- WiFi (rfkill)
	- WPS
  * LEDs:
	- Power (amber/green)
	- WAN (amber/green)
	- WLAN (blue)
	- 4 x LAN (amber/green)
	- WPS (green)
  * UART: 4-pin connector JP1, 3.3V (Vcc, TX, RX, GND), 115200 8N1
  * Power supply: DC 12V 1.5A
  * MAC addresses: LAN on case label, WAN +1, WLAN +2

Installation
============
  * TFTP recovery
  * TFTP via U-boot prompt
  * sysupgrade
  * Web interface

Test build configuration
========================
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_generic=y
CONFIG_TARGET_ath79_generic_DEVICE_netgear_wnr2200=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y
CONFIG_KERNEL_DEBUG_INFO=y
CONFIG_KERNEL_DEBUG_KERNEL=y

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/base-files/etc/board.d/01_leds      |   3 +-
 .../ath79/base-files/etc/board.d/02_network   |   1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
 .../ath79/dts/ar7241_netgear_wnr2200.dts      | 236 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |  14 ++
 5 files changed, 254 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 7eca103a9e..82006efb6b 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -104,7 +104,8 @@ glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
 netgear,wnr1000-v2|\
-netgear,wnr2000-v3)
+netgear,wnr2000-v3|\
+netgear,wnr2200)
 	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
 	ucidef_set_led_default "wan-green" "WAN (green)" "netgear:green:wan" "0"
 	ucidef_set_led_switch "lan1green" "LAN1 (green)" "netgear:green:lan1" "switch0" "0x02" "0x04"
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index fe491d1c26..7d53f0a2fb 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -197,6 +197,7 @@ ath79_setup_interfaces()
 		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
+	netgear,wnr2200|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	tplink,tl-wr740n-v1|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index dbe53b6f64..044e6c0afd 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -167,6 +167,7 @@ case "$FIRMWARE" in
 		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
+	netgear,wnr2200|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	pcs,cap324|\
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts
new file mode 100644
index 0000000000..d275dbf8d0
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts
@@ -0,0 +1,236 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7241.dtsi"
+
+/ {
+	compatible = "netgear,wnr2200", "qca,ar7241";
+	model = "Netgear WNR2200";
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
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&ath9k 5 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&ath9k 6 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		rfkill {
+			label = "rfkill";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&ath9k 3 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins &switch_led_disable_pins &clks_disable_pins>;
+
+		wan_green {
+			label = "netgear:green:wan";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "netgear:amber:wan";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1_green {
+			label = "netgear:green:lan1";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1_amber {
+			label = "netgear:amber:lan1";
+			gpios = <&gpio 6 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_green {
+			label = "netgear:green:lan2";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_amber {
+			label = "netgear:amber:lan2";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_green {
+			label = "netgear:green:lan3";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_amber {
+			label = "netgear:amber:lan3";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_green {
+			label = "netgear:green:lan4";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_amber {
+			label = "netgear:amber:lan4";
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+		};
+
+		wps_green {
+			label = "netgear:green:wps";
+			gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		};
+
+		usb_green {
+			label = "netgear:green:usb";
+			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&hub_port>;
+			linux,default-trigger = "usbport";
+		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
+
+		power_green: power_green {
+			label = "netgear:green:power";
+			gpios = <&ath9k 2 GPIO_ACTIVE_LOW>;
+		};
+
+		power_amber: power_amber {
+			label = "netgear:amber:power";
+			gpios = <&ath9k 1 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+		};
+
+		wlan_blue {
+			label = "netgear:blue:wlan";
+			gpios = <&ath9k 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+};
+
+&spi {
+	status = "okay";
+	num-cs = <1>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x40000 0x10000>;
+			};
+
+			partition@50000 {
+				label = "firmware";
+				reg = <0x50000 0x7a0000>;
+				compatible = "netgear,uimage";
+			};
+
+			art: partition@7f0000 {
+				label = "art";
+				reg = <0x7f0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x0>;
+};
+
+&eth1 {
+	status = "okay";
+
+	compatible = "qca,ar7241-eth", "syscon", "simple-mfd";
+	mtd-mac-address = <&art 0x6>;
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,002e";
+		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0x0>;
+		mtd-mac-address-increment = <1>;
+		qca,no-eeprom;
+		#gpio-cells = <2>;
+		gpio-controller;
+
+		usb_power {
+			gpio-hog;
+			line-name = "netgear:power:usb";
+			gpios = <4 GPIO_ACTIVE_HIGH>;
+			output-high;
+		};
+	};
+};
+
+&uart {
+	status = "okay";
+};
+
+&gpio {
+	status = "okay";
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&usb {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_port: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
+};
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 5c8826b927..cd8300eada 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -855,6 +855,20 @@ define Device/netgear_wndr3800
 endef
 TARGET_DEVICES += netgear_wndr3800
 
+define Device/netgear_wnr2200
+  ATH_SOC := ar7241
+  DEVICE_MODEL := WNR2200
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  NETGEAR_KERNEL_MAGIC := 0x32323030
+  IMAGE_SIZE := 7808k
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
+  IMAGES += factory-NA.img
+  IMAGE/factory-NA.img := $$(IMAGE/default) | netgear-dni NA | check-size $$$$(IMAGE_SIZE)
+  SUPPORTED_DEVICES += wnr2200
+  $(Device/netgear_ath79)
+endef
+TARGET_DEVICES += netgear_wnr2200
+
 define Device/phicomm_k2t
   ATH_SOC := qca9563
   DEVICE_VENDOR := Phicomm
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
