Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1953E128891
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Dec 2019 11:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qr8C66bdU9P8rzVIwuHHW5HYIcHZT/M9KD28JYnj1W8=; b=tOPGmlXLzq4tIw
	yiaAmUCdiH/9sQptebhTCm1xr3EmrEVpqipD7r9VSxHpLbNKWNh0ToCBFsBmYH78/s7wXNIwGwdZ2
	H3ASwWpXLlIzgt9Bak3aqnI6l2stP3U2Bqxt1PmswFUYKAjyyqegkMiaY2CiDNU6JK0NOu/imFhN5
	RZTqRqZJq2R783WI6bZDY1SaX8a0K4zUbh6qa4U59eBPpQCQ643A5j8nISs1WRfB8R3BFqFlg80N0
	RsXd29ac8q/QnsO00ugTw0tU0x1Z40zWkmV+Eg+19xn6hBohbzyHNIY13axwGhSYaRl6oPalufAFU
	AraH77e7Dnd2r8UxCdYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iicAy-0006uG-4G; Sat, 21 Dec 2019 10:40:00 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iicAX-0006jg-Pp
 for openwrt-devel@lists.openwrt.org; Sat, 21 Dec 2019 10:39:36 +0000
Received: (wp-smtpd smtp.wp.pl 24303 invoked from network);
 21 Dec 2019 11:39:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1576924765; bh=YIbZVuXVujRAoOsAsRKr71OOqJCWM699tYWNIpRgX+w=;
 h=From:To:Cc:Subject;
 b=BNTPjkvtlj3ZoC1EiRqgKKGOBQr8L0yyH6Wcl4NeYXMYLJomiGvfX8MEanW4TfPFF
 2IUcCLdFVJvlk87D0gap3SPpRPgViQsQ2cw9TPZLLmKn8i3fx2tiyEMRdjrOoQ9ds2
 /JGf4k8LcDF3P62tn0JKYLLmai5teOrmZom38QAY=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 21 Dec 2019 11:39:25 +0100
Date: Fri, 20 Dec 2019 23:33:20 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191220233320.4b061d27@kosmio.komorska>
In-Reply-To: <20191220230848.3bcd6e3a@kosmio.komorska>
References: <20191112140214.59f2971f@kosmio.komorska>
 <20191220230848.3bcd6e3a@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 2a08f77f1d73c89eb4e2ebcdc11431c9
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [kYNE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_023934_694114_8D276970 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.12 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3] ath79: add support for Netgear WNDR4300
 v2
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

This patch introduces support for Netgear WNDR4300v2.

Specification
=============
  * Description: Netgear WNDR4300 v2
  * Loader: U-boot
  * SOC: Qualcomm Atheros QCA9563 (775 MHz)
  * RAM: 128 MiB
  * Flash: 2 MiB SPI-NOR + 128 MiB SPI-NAND
	- NOR: U-boot binary: 256 KiB
	- NOR: U-boot environment: 64 KiB
	- NOR: ART Backup: 64 KiB
 	- NOR: Config: 64 KiB
	- NOR: Traffic Meter: 64 KiB
	- NOR: POT: 64 KiB
	- NOR: Reserved: 1408 KiB
	- NOR: ART: 64 KiB
	- NAND: Firmware: 25600 KiB (see notes for OpenWrt)
	- NAND: Language: 2048 KiB
	- NAND: mtdoops Crash Dump: 128 KiB
	- NAND: Reserved: 103296 KiB
  * Ethernet: 5 x 10/100/1000 (4 x LAN, 1 x WAN) (AR8337)
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
	- WPS (green)
  * UART: 4-pin connector JP1, 3.3V (Vcc, TX, RX, GND), 115200 8N1
  * Power supply: DC 12V 1.5A
  * MAC addresses: LAN=WLAN2G on case label, WAN +1, WLAN5G +2

Important Notes
===============
0. NOR Flash (2 MiB) is not touched by OpenWrt installation.
1. NAND Flash (128 MiB) layout under OpenWrt is changed as follows:
   all space is assigned to 'firmware' partition which is divided into
   2 MiB kernel and 126 MiB UBI areas; vendor partitions (language and
   mtdoops) are removed; kernel space size can be increased if needed;
   maximum image size is set to 25600k for compatibility and can also
   be increased.
2. CPU clock is 775 MHz, not 750 MHz.
3. 5 GHz wireless radio chip is Atheros AR9580-AR1A with bogus PCI
   device ID 0xabcd. For ath9k driver to load successfully, this is
   overriden in DTS with correct value for this chip, 0x0033.
4. RFKILL button is wired to AR9580 pin 9 which is normally disabled
   by chip definition in ath9k code (0x0000F4FF gpio mask). Therefore
   'qca,gpio-mask=<0xf6ff>' hack must be used for button to work
   properly.
5. USB port is always on, no GPIO for 5V power control has been
   identified.

Installation
============
  * TFTP recovery
  * TFTP via U-boot prompt
  * sysupgrade
  * Web interface

Test build configuration
========================
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_nand=y
CONFIG_TARGET_ath79_nand_DEVICE_netgear_wndr4300-v2=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 package/boot/uboot-envtools/files/ath79       |   1 +
 .../linux/ath79/dts/qca9563_netgear_wndr.dtsi | 262 ++++++++++++++++++
 .../ath79/dts/qca9563_netgear_wndr4300-v2.dts |  19 ++
 target/linux/ath79/image/nand.mk              |  11 +
 .../ath79/nand/base-files/etc/board.d/01_leds |   3 +-
 .../nand/base-files/etc/board.d/02_network    |   6 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   6 +-
 7 files changed, 303 insertions(+), 5 deletions(-)
 create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
 create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr4300-v2.dts

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index f956cf4ed4..85a0342a60 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -26,6 +26,7 @@ glinet,gl-ar750s-nor-nand|\
 librerouter,librerouter-v1|\
 netgear,ex6400|\
 netgear,ex7300|\
+netgear,wndr4300-v2|\
 netgear,wnr1000-v2|\
 netgear,wnr2000-v3|\
 netgear,wnr2200-8m|\
diff --git a/target/linux/ath79/dts/qca9563_netgear_wndr.dtsi b/target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
new file mode 100644
index 0000000000..b9f76b1fe9
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_netgear_wndr.dtsi
@@ -0,0 +1,262 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca956x.dtsi"
+
+/ {
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	aliases {
+		led-boot = &led_power_amber;
+		led-failsafe = &led_power_amber;
+		led-running = &led_power_green;
+		led-upgrade = &led_power_amber;
+		label-mac-device = &eth0;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+		};
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	ath9k-keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		rfkill {
+			label = "rfkill";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&ath9k 9 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		led_power_green: power_green {
+			label = "netgear:green:power";
+			gpios = <&gpio 5 GPIO_ACTIVE_LOW>;
+		};
+
+		led_power_amber: power_amber {
+			label = "netgear:amber:power";
+			gpios = <&gpio 6 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+		};
+
+		wan_green {
+			label = "netgear:green:wan";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "netgear:amber:wan";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan2g_green {
+			label = "netgear:green:wlan2g";
+			gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		wps_green {
+			label = "netgear:green:wps";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
+
+		wlan5g_blue {
+			label = "netgear:blue:wlan5g";
+			gpios = <&ath9k 7 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+	};
+};
+
+&spi {
+	status = "okay";
+
+	num-cs = <2>;
+	cs-gpios = <0>, <0>;
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
+				label = "caldata_backup";
+				reg = <0x50000 0x10000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "config";
+				reg = <0x60000 0x10000>;
+			};
+
+			partition@70000 {
+				label = "traffic_meter";
+				reg = <0x70000 0x10000>;
+			};
+
+			partition@80000 {
+				label = "pot";
+				reg = <0x80000 0x10000>;
+			};
+
+			partition@90000 {
+				label = "reserved";
+				reg = <0x90000 0x160000>;
+			};
+
+			art: partition@1f0000 {
+				label = "caldata";
+				reg = <0x1f0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+
+	flash@1 {
+		compatible = "spi-nand";
+		reg = <1>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "firmware";
+				reg = <0x0 0x8000000>;
+				compatible = "netgear,uimage";
+			};
+
+			kernel@0 {
+				label = "kernel";
+				reg = <0x0 0x200000>;
+			};
+
+			ubi@200000 {
+				label = "ubi";
+				reg = <0x200000 0x7e00000>;
+			};
+		};
+	};
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy-mask = <0>;
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		phy-mode = "sgmii";
+		qca,mib-poll-interval = <500>;
+
+		qca,ar8327-initvals = <
+			0x04 0x00000080	/* PORT0 PAD MODE CTRL */
+			0x10 0x81000080	/* POWER_ON_STRIP */
+			0x50 0xcc35cc35	/* LED_CTRL0 */
+			0x54 0xcb37cb37	/* LED_CTRL1 */
+			0x58 0x00000000	/* LED_CTRL2 */
+			0x5c 0x00f3cf00	/* LED_CTRL3 */
+			0x7c 0x0000007e	/* PORT0_STATUS */
+			0x94 0x00000200 /* PORT6_STATUS */
+			>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	pll-data = <0x03000101 0x00000101 0x00001919>;
+
+	mtd-mac-address = <&art 0x0>;
+
+	phy-mode = "sgmii";
+	phy-handle = <&phy0>;
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
+		/* chip is AR9580, override bogus PCI ID 168c:abcd */
+		compatible = "pci168c,0033";
+		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0xc>;
+		qca,no-eeprom;
+		qca,gpio-mask=<0xf6ff>;	/* unmask pin 9 for RFKILL button */
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
+&usb_phy0 {
+	status = "okay";
+};
+
+&usb0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_port0: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
+};
+
+&uart {
+	status = "okay";
+};
diff --git a/target/linux/ath79/dts/qca9563_netgear_wndr4300-v2.dts b/target/linux/ath79/dts/qca9563_netgear_wndr4300-v2.dts
new file mode 100644
index 0000000000..e4b4ba2ac6
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_netgear_wndr4300-v2.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "qca9563_netgear_wndr.dtsi"
+
+/ {
+	compatible = "netgear,wndr4300-v2", "qca,qca9563";
+	model = "Netgear WNDR4300 v2";
+};
+
+&leds {
+	usb_green {
+		label = "netgear:green:usb";
+		gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		trigger-sources = <&hub_port0>;
+		linux,default-trigger = "usbport";
+	};
+};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index c6a1441ed9..a81127a962 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -151,6 +151,17 @@ define Device/netgear_wndr4300
 endef
 TARGET_DEVICES += netgear_wndr4300
 
+define Device/netgear_wndr4300-v2
+  SOC := qca9563
+  DEVICE_MODEL := WNDR4300
+  DEVICE_VARIANT := v2
+  NETGEAR_KERNEL_MAGIC := 0x27051956
+  NETGEAR_BOARD_ID := WNDR4500series
+  NETGEAR_HW_ID := 29764821+2+128+128+3x3+3x3+5508012175
+  $(Device/netgear_ath79_nand)
+endef
+TARGET_DEVICES += netgear_wndr4300-v2
+
 define Device/zyxel_nbg6716
   SOC := qca9558
   DEVICE_VENDOR := ZyXEL
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
index 49d4005495..0376b7cfc6 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -13,7 +13,8 @@ glinet,gl-ar300m-nor)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
 	;;
 netgear,wndr3700-v4|\
-netgear,wndr4300)
+netgear,wndr4300|\
+netgear,wndr4300-v2)
 	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
 	;;
 esac
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
index f7e43addc1..135a06d44b 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -17,7 +17,8 @@ ath79_setup_interfaces()
 			"0@eth0" "2:lan:2" "3:lan:1" "1:wan"
 		;;
 	netgear,wndr3700-v4|\
-	netgear,wndr4300)
+	netgear,wndr4300|\
+	netgear,wndr4300-v2)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5:wan"
 		;;
@@ -37,7 +38,8 @@ ath79_setup_macs()
 
 	case "$board" in
 	netgear,wndr3700-v4|\
-	netgear,wndr4300)
+	netgear,wndr4300|\
+	netgear,wndr4300-v2)
 		wan_mac=$(mtd_get_mac_binary caldata 0x6)
 		;;
 	zyxel,nbg6716)
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 25bafe67ac..7ee291d109 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -10,7 +10,8 @@ case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
 	netgear,wndr3700-v4|\
-	netgear,wndr4300)
+	netgear,wndr4300|\
+	netgear,wndr4300-v2)
 		caldata_extract "caldata" 0x1000 0x440
 		;;
 	zyxel,nbg6716)
@@ -25,7 +26,8 @@ case "$FIRMWARE" in
 "ath9k-eeprom-pci-0000:00:00.0.bin")
 	case $board in
 	netgear,wndr3700-v4|\
-	netgear,wndr4300)
+	netgear,wndr4300|\
+	netgear,wndr4300-v2)
 		caldata_extract "caldata" 0x5000 0x440
 		;;
 	*)
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
