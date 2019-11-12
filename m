Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00080F9041
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 14:11:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7p9SETILmQx7GTRy8G+g3Y/1ht1sSzaGWlt7ZQT1RMg=; b=ei9KA1XBbAWT4G
	X+nhc4/QntKWPoqhI9zhxRF62Xslm8XUCMU/UANLZNXD3JjgQdvfE6cCqI7bdmYfj1EVuk09O/S4D
	Z9SY0nUF+Mn/Vqcs+Pk21e3ySU/D/dxXRS52x/6St21e0YDlCWjIjqlNicQeSaV3v7ws2CkqbcaYw
	INrq4aBDhxhPbefVQDCU2Wh7YbTlnzjLCLRVGNECJaWCClvJ/CHWytmmiMzcjVGZKJAgzNMAy2J+Q
	V5m+gQz9nzsHqOXYfNM2xC5lsSxVcvyv4jspSOnifnSTzBuUjbdg14vu/ntT0sqrtg3usxavoF141
	dkABOgSJ3GLv1OzsBm0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVx8-0004gL-TV; Tue, 12 Nov 2019 13:11:26 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVwp-0004Vd-EQ
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 13:11:09 +0000
Received: (wp-smtpd smtp.wp.pl 1277 invoked from network);
 12 Nov 2019 14:11:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1573564263; bh=X2w6ZK6z523pRw/hAuMWBXLNEXSHsfTswim0z+WFQzc=;
 h=From:To:Cc:Subject;
 b=aHvRoD7v7B0ZtuXZYIWg9rDnDGQjPT2tARhqd5PuQvOJG3CdZU4H/dHNLwNeDuB1r
 VwA1HuGp1c3bXnzoWYMh+8+VJ/VRknCnED4d4NIiw+TUhjAerPUID4GtTpWJHc9CSm
 lsyoLhNZomYawsVlW8R2DxZGvBzw6iDT/EDSwwQg=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 12 Nov 2019 14:11:03 +0100
Date: Tue, 12 Nov 2019 14:00:50 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191112140050.12197634@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: d254caa72f67fe13f4bee75cf8fbf0ac
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [UaMh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_051107_666112_8406441F 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath79: split dts file for Netgear WNDR4300
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

Move board configuration to dtsi file in preparation for WNDR3700v4
router support.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../linux/ath79/dts/ar9344_netgear_wndr.dtsi  | 290 ++++++++++++++++++
 .../ath79/dts/ar9344_netgear_wndr4300.dts     | 286 +----------------
 2 files changed, 291 insertions(+), 285 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar9344_netgear_wndr.dtsi

diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
new file mode 100644
index 0000000000..16a4e3f6e8
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
@@ -0,0 +1,290 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
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
+		led_power_green: power_green {
+			label = "netgear:green:power";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		led_power_amber: power_amber {
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
diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts b/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
index 08cd84e51e..9b57bb88a6 100644
--- a/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr4300.dts
@@ -1,293 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-
-#include "ar9344.dtsi"
+#include "ar9344_netgear_wndr.dtsi"
 
 / {
 	compatible = "netgear,wndr4300", "qca,ar9344";
 	model = "Netgear WNDR4300";
-
-	chosen {
-		bootargs = "console=ttyS0,115200n8";
-	};
-
-	aliases {
-		led-boot = &led_power_amber;
-		led-failsafe = &led_power_amber;
-		led-running = &led_power_green;
-		led-upgrade = &led_power_amber;
-		label-mac-device = &eth0;
-	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		wps {
-			label = "wps";
-			linux,code = <KEY_WPS_BUTTON>;
-			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
-		};
-
-		reset {
-			label = "reset";
-			linux,code = <KEY_RESTART>;
-			gpios = <&gpio 21 GPIO_ACTIVE_LOW>;
-		};
-
-		rfkill {
-			label = "rfkill";
-			linux,code = <KEY_RFKILL>;
-			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		pinctrl-names = "default";
-		pinctrl-0 = <&enable_gpio_11>;
-
-		led_power_green: power_green {
-			label = "netgear:green:power";
-			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
-		};
-
-		led_power_amber: power_amber {
-			label = "netgear:amber:power";
-			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
-			default-state = "keep";
-		};
-
-		wan_green {
-			label = "netgear:green:wan";
-			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
-		};
-
-		wan_amber {
-			label = "netgear:amber:wan";
-			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
-		};
-
-		wlan2g_green {
-			label = "netgear:green:wlan2g";
-			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy0tpt";
-		};
-
-		wlan5g_blue {
-			label = "netgear:blue:wlan5g";
-			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy1tpt";
-		};
-
-		wps_green {
-			label = "netgear:green:wps";
-			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
-		};
-
-		wps_amber {
-			label = "netgear:amber:wps";
-			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
-		};
-
-		usb_green {
-			label = "netgear:green:usb";
-			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
-			trigger-sources = <&hub_port>;
-			linux,default-trigger = "usbport";
-		};
-	};
-};
-
-&pinmux {
-	enable_gpio_11: pinmux_enable_gpio_11 {
-		pinctrl-single,bits = <0x8 0x0 0xff000000>;
-	};
-};
-
-&nand {
-	status = "okay";
-
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "u-boot";
-			reg = <0x0 0x40000>;
-			read-only;
-		};
-
-		partition@40000 {
-			label = "u-boot-env";
-			reg = <0x40000 0x40000>;
-		};
-
-		art: partition@80000 {
-			label = "caldata";
-			reg = <0x80000 0x40000>;
-			read-only;
-		};
-
-		partition@c0000 {
-			label = "pot";
-			reg = <0xc0000 0x80000>;
-		};
-
-		partition@140000 {
-			label = "language";
-			reg = <0x140000 0x200000>;
-		};
-
-		partition@340000 {
-			label = "config";
-			reg = <0x340000 0x80000>;
-		};
-
-		partition@3c0000 {
-			label = "traffic_meter";
-			reg = <0x3c0000 0x300000>;
-		};
-
-		kernel@6c0000 {
-			label = "kernel";
-			reg = <0x6c0000 0x200000>;
-		};
-
-		ubi@8c0000 {
-			label = "ubi";
-			reg = <0x8c0000 0x1700000>;
-		};
-
-		partition@6c0000 {
-			label = "firmware";
-			reg = <0x6c0000 0x1900000>;
-			compatible = "netgear,uimage";
-		};
-
-		partition@1fc0000 {
-			label = "caldata_backup";
-			reg = <0x1fc0000 0x40000>;
-			read-only;
-		};
-
-		partition@2000000 {
-			label = "reserved";
-			reg = <0x2000000 0x6000000>;
-			read-only;
-		};
-	};
-};
-
-&ref {
-	clock-frequency = <40000000>;
-};
-
-&builtin_switch {
-	resets = <&rst 8>, <&rst 12>;
-	reset-names = "switch", "switch-analog";
-};
-
-&mdio0 {
-	status = "okay";
-
-	phy-mask = <0>;
-
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-		phy-mode = "rgmii";
-		qca,mib-poll-interval = <500>;
-
-		qca,ar8327-initvals = <
-			0x04 0x07600000
-			0x0c 0x01000000
-			0x10 0xc1000000
-			0x50 0xcc35cc35
-			0x54 0xcb37cb37
-			0x58 0x00000000
-			0x5c 0x00f3cf00
-			0x7c 0x0000007e
-			0x94 0x0000007e
-			>;
-	};
-};
-
-&eth0 {
-	status = "okay";
-
-	/* default for ar934x, except for 1000M */
-	pll-data = <0x06000000 0x00000101 0x00001616>;
-
-	mtd-mac-address = <&art 0x0>;
-
-	phy-mode = "rgmii";
-	phy-handle = <&phy0>;
-};
-
-&gpio {
-	status = "okay";
-
-	lna0 {
-		gpio-hog;
-		line-name = "netgear:ext:lna0";
-		gpios = <18 GPIO_ACTIVE_HIGH>;
-		output-high;
-	};
-
-	lna1 {
-		gpio-hog;
-		line-name = "netgear:ext:lna1";
-		gpios = <19 GPIO_ACTIVE_HIGH>;
-		output-high;
-	};
-};
-
-&wmac {
-	status = "okay";
-
-	mtd-mac-address = <&art 0x0>;
-	qca,no-eeprom;
-};
-
-&pcie {
-	status = "okay";
-
-	ath9k: wifi@0,0 {
-		compatible = "pci168c,0033";
-		reg = <0x0000 0 0 0 0>;
-		mtd-mac-address = <&art 0xc>;
-		qca,no-eeprom;
-		#gpio-cells = <2>;
-		gpio-controller;
-
-		usb_power {
-			gpio-hog;
-			line-name = "netgear:power:usb";
-			gpios = <0 GPIO_ACTIVE_HIGH>;
-			output-high;
-		};
-	};
-};
-
-&usb_phy {
-	status = "okay";
-};
-
-&usb {
-	status = "okay";
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	hub_port: port@1 {
-		reg = <1>;
-		#trigger-source-cells = <0>;
-	};
-};
-
-&uart {
-	status = "okay";
 };
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
