Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808D1FB8AB
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 20:20:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3RHk5CaI3MJAt7HCEm6HpbQpt4iQq+2pn0klCI+q8rg=; b=bnrv9uFgcwBpjc
	YvcTQ+y653Z0Ztc6Q4GELrcMtr/1A9NF92DaKz7fRQQQ+74+rKjYuSEKiKE9gAHM5USOnXNCX9Nxg
	lIxdN4JwlOd6UF3V66gFC5x79TcjjHR/7ywwcD8LWdOpmF0gwH+xNeo5nFZEq3PUN1qSwuy1clPWO
	m9EpFpg9i/xuRuAxyRyld8cEAOu6rv49G+OCOcS2E5XBeNHzcYSpS1C7X5qkPIzJujChuR7pcab3q
	QQDCqfWNM1mhVDA6Chw+pfArxVKDTcwcNZii2XUhuw3iNx9LVJJI0/lBhjm/omvwo2DdJJooAEzoz
	KhbrmpcFFgu60yXouzYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUyBI-0003Sn-Rr; Wed, 13 Nov 2019 19:19:56 +0000
Received: from a1i272.smtp2go.com ([43.228.185.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUyBA-0003SM-TE
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 19:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m6sda0.a1-4.dyn; x=1573673688; h=Feedback-ID:
 X-Smtpcorp-Track:Message-Id:Date:Subject:To:From:Reply-To:Sender:
 List-Unsubscribe; bh=EOXttfOLVype+0QzEM7cnGN5QhBpW4LrdoiMcztJfxA=; b=r944hyB8
 hK/eAwwFDFuhTN/s2qXhBcz/NtFzwfig1Df0hkwFIfl5ik5DccBzqF4D/CGYEVPN2YlICuFqXVulD
 GozfzKeqEHU1jY/iemZwU6ku0QHAYyMFUHL7kEXfjrr4zqGk9zWGONFbdjrrUiXMQ1OG/ugZSF7Zp
 cmfUT8IFGb0c4SFhHMhvWO5Zjk8S5HTnyY2Nre5gtAPkolJPNAaXKwt1kC5jDtl3YqXff7P9ZaxrO
 BnkGZmD63QlSg4o+iKtZbwoWqmBx/9HoOM0AFDSKR1Gae6Cv9nQr7RvdQsuu2EqZILV61dBxzicLZ
 V4Hpbx93FbBSvDNYm4O8bZu6fw==;
Received: from [10.66.228.43] (helo=SmtpCorp)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1iUyB9-ItkBGj-8c; Wed, 13 Nov 2019 19:19:47 +0000
Received: from [10.68.161.204] (helo=mail.blazebox.homeip.net)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1iUyB8-wSEWEY-S3; Wed, 13 Nov 2019 19:19:46 +0000
Received: from blazebox.homeip.net (localhost [127.0.0.1])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id 93AB5630902;
 Wed, 13 Nov 2019 14:19:40 -0500 (EST)
X-Virus-Scanned: amavisd-new at blazebox.homeip.net
Received: from mail.blazebox.homeip.net ([127.0.0.1])
 by blazebox.homeip.net (mail.blazebox.homeip.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id H_ryGuRZLtTH; Wed, 13 Nov 2019 14:19:38 -0500 (EST)
Received: from blaze.homeip.net (unknown
 [IPv6:2001:470:1f07:a3a:2dac:cce6:ced7:c53d])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id A22AF630900;
 Wed, 13 Nov 2019 14:19:38 -0500 (EST)
Received: by blaze.homeip.net (Postfix, from userid 4444)
 id DCFAD2046002; Wed, 13 Nov 2019 14:19:37 -0500 (EST)
From: Paul Blazejowski <paulb@blazebox.homeip.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 14:19:31 -0500
Message-Id: <20191113191932.11470-1-paulb@blazebox.homeip.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Smtpcorp-Track: 1ilyU8wSEWEYS3.zUdTuneAS
Feedback-ID: 316702m:316702a3jAEqy:316702ssU6Uiw90n
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_111949_068964_4091861A 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [43.228.185.16 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: split dts file for Netgear
 WNDR4300
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
Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>

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
