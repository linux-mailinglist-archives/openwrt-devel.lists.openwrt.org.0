Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8B4E057C
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 15:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CwzpdJx2Vab0hZ/gh1WLokMcHlvuRvabX8p7bdq7JQs=; b=nv54YR2iS5QmV1
	aznILiZ5hj0HRJgaGPGRpFbTzaWt4+ppvTlzc8Gr8a40VFHZO3hNB+tjn1R7NVmOShpwzapfmJPbx
	SVBqsNutMmK+bGAhUnCl5WlhOiHPnfqN8nnSnf4iWnrBe+yD3c4MsB324Tt5FrlDImVRR3ddD/S+i
	5ra8DtywxxAopxNvgqziZrwX7Brb1JkyflVSJc5NHNSoTq1eDV50Ga8tCs94qD4ggibTsOEE6gwUH
	cZhCgmbZJ2SXIn6Qw9x7XjuOaM0ws2Qzp/QAcmFq3dv8k/pUmo1H7uCQdBfTs9Vt7LbmGuk3pHjpX
	CfT58y968bIOiFndNXdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMuYO-0001Cg-Mz; Tue, 22 Oct 2019 13:50:28 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMuY3-0008JY-Hp
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 13:50:10 +0000
Received: (wp-smtpd smtp.wp.pl 18980 invoked from network);
 22 Oct 2019 15:49:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571752199; bh=IhtEHrQwwLCTb78tFJlHZQq/PUbb3PoiBk7lDXF4LJA=;
 h=From:To:Cc:Subject;
 b=AUDDGcSxRmdNdzDQ6YwPB5jMq/ma5QudD+VhXVBWst31HzN40lO3HctOYMfD6hbxD
 dAJobDXs2VC/lxG0m9HG+a0I17cRzoqm3a8m0fA+RhEe8ZjL1KqLClL0MF6uScQWD4
 MejkyjQvgFdFraGFmYA0wBKenFt9E06Kg6pd1s8Y=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Oct 2019 15:49:59 +0200
Date: Tue, 22 Oct 2019 15:44:45 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191022154445.6e8ec810@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 55f8663488a673a72bc1fc96b7edda8c
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [oZNh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_065008_129394_EE71FB1D 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for Netgear WNR2200
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
Router was previously supported by ar71xx target only (8 MiB variant).
Netgear WNR2200 has two flash versions - 8MiB sold in EU, US etc. and
16 MiB for Russia and China markets. Apart from flash size both variants
share the same hardware specification.

Specification
=============
  * Description: Netgear WNR2200
  * Loader: U-boot
  * SOC: Atheros AR7241 (360 MHz)
  * RAM: 64 MiB
  * Flash: 8 MiB or 16 MiB (SPI NOR)
	- U-boot binary: 256 KiB
	- U-boot environment: 64 KiB
	- Firmware: 7808 KiB or 16000 KiB
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
CONFIG_TARGET_ath79_generic_DEVICE_netgear_wnr2200-8m=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y
CONFIG_KERNEL_DEBUG_INFO=y
CONFIG_KERNEL_DEBUG_KERNEL=y

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/base-files/etc/board.d/01_leds      |   4 +-
 .../ath79/base-files/etc/board.d/02_network   |   2 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   2 +
 .../ath79/dts/ar7241_netgear_wnr2200-16m.dts  |  34 +++
 .../ath79/dts/ar7241_netgear_wnr2200-8m.dts   |  34 +++
 .../ath79/dts/ar7241_netgear_wnr2200.dtsi     | 207 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |  34 +++
 7 files changed, 316 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200-16m.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200-8m.dts
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 499fe0031c..0d78008182 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -112,7 +112,9 @@ glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
 netgear,wnr1000-v2|\
-netgear,wnr2000-v3)
+netgear,wnr2000-v3|\
+netgear,wnr2200-8m|\
+netgear,wnr2200-16m)
 	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
 	ucidef_set_led_switch "lan1green" "LAN1 (green)" "netgear:green:lan1" "switch0" "0x02" "0x04"
 	ucidef_set_led_switch "lan2green" "LAN2 (green)" "netgear:green:lan2" "switch0" "0x04" "0x04"
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index c40c07a906..bc88eee109 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -207,6 +207,8 @@ ath79_setup_interfaces()
 		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
+	netgear,wnr2200-8m|\
+	netgear,wnr2200-16m|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	tplink,tl-wr740n-v1|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 2cd46f8c28..9e4c5c04c8 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -81,6 +81,8 @@ case "$FIRMWARE" in
 		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
+	netgear,wnr2200-8m|\
+	netgear,wnr2200-16m|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	pcs,cap324|\
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2200-16m.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2200-16m.dts
new file mode 100644
index 0000000000..d182b58c05
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2200-16m.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7241_netgear_wnr2200.dtsi"
+
+/ {
+	compatible = "netgear,wnr2200-16m", "qca,ar7241";
+	model = "Netgear WNR2200 (16M)";
+};
+
+&partitions {
+	partition@0 {
+		label = "u-boot";
+		reg = <0x0 0x40000>;
+		read-only;
+	};
+
+	partition@40000 {
+		label = "u-boot-env";
+		reg = <0x40000 0x10000>;
+	};
+
+	partition@50000 {
+		label = "firmware";
+		reg = <0x50000 0xfa0000>;
+		compatible = "netgear,uimage";
+	};
+
+	art: partition@ff0000 {
+		label = "art";
+		reg = <0xff0000 0x10000>;
+		read-only;
+	};
+};
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2200-8m.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2200-8m.dts
new file mode 100644
index 0000000000..e926c17893
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2200-8m.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7241_netgear_wnr2200.dtsi"
+
+/ {
+	compatible = "netgear,wnr2200-8m", "qca,ar7241";
+	model = "Netgear WNR2200 (8M)";
+};
+
+&partitions {
+	partition@0 {
+		label = "u-boot";
+		reg = <0x0 0x40000>;
+		read-only;
+	};
+
+	partition@40000 {
+		label = "u-boot-env";
+		reg = <0x40000 0x10000>;
+	};
+
+	partition@50000 {
+		label = "firmware";
+		reg = <0x50000 0x7a0000>;
+		compatible = "netgear,uimage";
+	};
+
+	art: partition@7f0000 {
+		label = "art";
+		reg = <0x7f0000 0x10000>;
+		read-only;
+	};
+};
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi
new file mode 100644
index 0000000000..1ce4d11835
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dtsi
@@ -0,0 +1,207 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7241.dtsi"
+
+/ {
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	aliases {
+		led-boot = &power_amber;
+		led-failsafe = &power_amber;
+		led-running = &power_green;
+		led-upgrade = &power_amber;
+		label-mac-device = &eth1;
+	};
+
+	ath9k-keys {
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
+		partitions: partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
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
index e82e125166..e156dcdb03 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -794,6 +794,40 @@ define Device/netgear_wndr3800ch
 endef
 TARGET_DEVICES += netgear_wndr3800ch
 
+define Device/netgear_wnr2200_common
+  ATH_SOC := ar7241
+  DEVICE_MODEL := WNR2200
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport
+  NETGEAR_KERNEL_MAGIC := 0x32323030
+  NETGEAR_BOARD_ID := WNR2200
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | \
+	append-rootfs | pad-rootfs
+  $(Device/netgear_ath79)
+endef
+
+define Device/netgear_wnr2200-8m
+  $(Device/netgear_wnr2200_common)
+  DEVICE_VARIANT := 8M
+  NETGEAR_HW_ID := 29763600+08+64
+  IMAGE_SIZE := 7808k
+  IMAGES += factory-NA.img
+  IMAGE/factory-NA.img := $$(IMAGE/default) | netgear-dni NA | \
+	check-size $$$$(IMAGE_SIZE)
+  SUPPORTED_DEVICES += wnr2200
+endef
+TARGET_DEVICES += netgear_wnr2200-8m
+
+define Device/netgear_wnr2200-16m
+  $(Device/netgear_wnr2200_common)
+  DEVICE_VARIANT := 16M
+  DEVICE_ALT0_VENDOR := NETGEAR
+  DEVICE_ALT0_MODEL := WNR2200
+  DEVICE_ALT0_VARIANT := CN/RU
+  NETGEAR_HW_ID :=
+  IMAGE_SIZE := 16000k
+endef
+TARGET_DEVICES += netgear_wnr2200-16m
+
 define Device/ocedo_koala
   ATH_SOC := qca9558
   DEVICE_VENDOR := Ocedo
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
