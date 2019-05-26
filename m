Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A2B2A9D5
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 15:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GxqsOKj/E4w7vm/BHBkxeoxV0THtN3BFJN8om+bnFSU=; b=K6lGHd+G+y2qfy
	saDYixrvj8D6nfbfjTQPy5t+FsjCiJ4uw/QxFQdMWYZtNgPZhk1vbnxZ3SM3u8Rignt5nmNMec0kP
	tzp5jzrwC7S55hDj1t8DxE1OBDurl1usZJKIhsU4kudGk2EhM59nIprzpFokLfevhD6ufJeFNNNw1
	ojXCYENwmIZpQawXVpNlq/4cc1ZAdYMlWvsR71dMqltwQAcdVH5wFFj8i+jvmSCFbcamLYRgE9MMj
	Rq9kJlwHPg1wJqmnpwxXEuDwQNWZZSsIpwoLUNT/t01imc5dYlqVZSNzgH7xKxdJ69AhA/eWcBvkg
	LMN4FPJDiJDauDlG5d9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUsmF-0007Dc-Jk; Sun, 26 May 2019 13:01:27 +0000
Received: from srv4.3e8.eu ([193.25.101.238])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUsm7-0007D9-8B
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 13:01:21 +0000
Received: from localhost.localdomain
 (p200300C6CF1098A0C14C97ADBE2FAD0A.dip0.t-ipconnect.de
 [IPv6:2003:c6:cf10:98a0:c14c:97ad:be2f:ad0a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by srv4.3e8.eu (Postfix) with ESMTPSA id D8FAC60081;
 Sun, 26 May 2019 15:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=3e8.eu;
 s=mail20170724; t=1558875670;
 bh=vWjb2bYEvS/MLAZl5yfoaoYABvMdwRvsCfsRrLW1rgQ=;
 h=From:To:Cc:Subject:Date:From;
 b=ZFndDa3XKdSTn2yLlcvLqadufUjngdI0aNhmWCo/V+HHOrbHs6/G+6XL9beGDIHmW
 2sM2b2sKOcH7wUonfy9x8QfLmL1X3ItQYTGEu2cKOaXO1gHDVXDsFLIir5BAg01mM9
 LdpdUOLjoW8BdZbzszOSlitZptrecvkHaPlqun3aPQnZoRtZa3ujfcXmAZI4o/dAVy
 1KmGyZ/NSiucZdZv2f2/GcEScLNcfyk7gN/kagxPvYStmx5D1w8TGn3Yu4CB1IcaZ0
 xMzFLwkwuAba7b1XxV3B6TfF0iFqYCYNXvHZwbq+fGzdhpR9GBFmDu4efKTo4Byt3b
 IahgMmWozBp/w==
From: Jan Hoffmann <jan@3e8.eu>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 May 2019 15:01:09 +0200
Message-Id: <20190526130109.5299-1-jan@3e8.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_060119_720989_E6221585 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2] ramips: create R6220 dtsi and improve
 WNDR3700v5 support
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
Cc: Jan Hoffmann <jan@3e8.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The R6220 and WNDR3700v5 are identical apart from using NAND/NOR flash and
having a different casing. This adds a new cleaned up R6220.dtsi with the
common bits for both devices. Both devices now have feature parity.

Performed cleanup:
 * generic DTS node names
 * regulator for usb power
 * added missing pinctrl groups
 * use switch port instead of VLAN as trigger for WAN LED

Fixes for WNDR3700v5:
 * all LEDS work
 * correct ethernet MAC addresses

Signed-off-by: Jan Hoffmann <jan@3e8.eu>
---
v2: 
 - use correct license header for DTS                                
 - more detailed description
 - additional DTS cleanup

 .../ramips/base-files/etc/board.d/01_leds     |   5 +-
 .../ramips/base-files/etc/board.d/02_network  |   3 +-
 target/linux/ramips/dts/R6220.dts             | 127 +++---------------
 target/linux/ramips/dts/R6220.dtsi            | 124 +++++++++++++++++
 target/linux/ramips/dts/WNDR3700V5.dts        | 111 +++------------
 target/linux/ramips/image/mt7621.mk           |   3 +-
 6 files changed, 166 insertions(+), 207 deletions(-)
 create mode 100644 target/linux/ramips/dts/R6220.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index ccbe53d770..ce9e87fb9d 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -282,8 +282,9 @@ px-4885-8M)
 	set_wifi_led "px-4885:orange:wifi"
 	;;
 r6220|\
-netgear,r6350)
-	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" eth0.2
+netgear,r6350|\
+wndr3700v5)
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
 	set_wifi_led "$boardname:green:wifi"
 	;;
 rakwireless,rak633)
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index dcc7b4a747..0c10118dfb 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -614,7 +614,8 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_binary factory 46)
 		;;
 	r6220|\
-	netgear,r6350)
+	netgear,r6350|\
+	wndr3700v5)
 		wan_mac=$(mtd_get_mac_binary factory 4)
 		lan_mac=$(macaddr_add "$wan_mac" 1)
 		;;
diff --git a/target/linux/ramips/dts/R6220.dts b/target/linux/ramips/dts/R6220.dts
index 335351c825..28c3a3938d 100644
--- a/target/linux/ramips/dts/R6220.dts
+++ b/target/linux/ramips/dts/R6220.dts
@@ -1,6 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 
-#include "mt7621.dtsi"
+#include "R6220.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
@@ -8,87 +9,26 @@
 / {
 	compatible = "netgear,r6220", "mediatek,mt7621-soc";
 	model = "Netgear R6220";
+};
 
-	aliases {
-		led-boot = &led_power;
-		led-failsafe = &led_power;
-		led-running = &led_power;
-		led-upgrade = &led_power;
-	};
-
-	memory@0 {
-		device_type = "memory";
-		reg = <0x0 0x8000000>;
-	};
-
-	chosen {
-		bootargs = "console=ttyS0,57600";
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		led_power: power {
-			label = "r6220:green:power";
-			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
-		};
-
-		usb {
-			label = "r6220:green:usb";
-			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
-			trigger-sources = <&xhci_ehci_port1>, <&ehci_port2>;
-			linux,default-trigger = "usbport";
-		};
-
-		internet {
-			label = "r6220:green:wan";
-			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
-		};
-
-		wifi {
-			label = "r6220:green:wifi";
-			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
-		};
-
-		wps {
-			label = "r6220:green:wps";
-			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
-
-		wps {
-			label = "wps";
-			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_WPS_BUTTON>;
-		};
+&led_power {
+	label = "r6220:green:power";
+};
 
-		wifi {
-			label = "wifi";
-			gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_RFKILL>;
-		};
+&led_usb {
+	label = "r6220:green:usb";
+};
 
-		reset {
-			label = "reset";
-			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
+&led_internet {
+	label = "r6220:green:wan";
+};
 
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&led_wifi {
+	label = "r6220:green:wifi";
+};
 
-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 10 GPIO_ACTIVE_HIGH>;
-		};
-	};
+&led_wps {
+	label = "r6220:green:wps";
 };
 
 &nand {
@@ -134,36 +74,3 @@
 		};
 	};
 };
-
-&pcie {
-	status = "okay";
-};
-
-&pcie0 {
-	mt76@0,0 {
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&factory 0x8000>;
-		ieee80211-freq-limit = <5000000 6000000>;
-	};
-};
-
-&pcie1 {
-	mt76@0,0 {
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&factory 0x0000>;
-		ieee80211-freq-limit = <2400000 2500000>;
-	};
-};
-
-&ethernet {
-	mtd-mac-address = <&factory 0x00000004>;
-};
-
-&pinctrl {
-	state_default: pinctrl0 {
-		gpio {
-			ralink,group = "uart3", "jtag";
-			ralink,function = "gpio";
-		};
-	};
-};
diff --git a/target/linux/ramips/dts/R6220.dtsi b/target/linux/ramips/dts/R6220.dtsi
new file mode 100644
index 0000000000..98a2078ecc
--- /dev/null
+++ b/target/linux/ramips/dts/R6220.dtsi
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "mediatek,mt7621-soc";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x8000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+		};
+
+		led_usb: usb {
+			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&xhci_ehci_port1>, <&ehci_port2>;
+			linux,default-trigger = "usbport";
+		};
+
+		led_internet: internet {
+			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+		};
+
+		led_wifi: wifi {
+			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
+		};
+
+		led_wps: wps {
+			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WPS_BUTTON>;
+		};
+
+		wifi {
+			label = "wifi";
+			gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RFKILL>;
+		};
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	reg_usb_vbus: regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio0 10 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&xhci {
+	vbus-supply = <&reg_usb_vbus>;
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		compatible = "pci14c3,7662";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+	};
+};
+
+&pcie1 {
+	wifi@0,0 {
+		compatible = "pci14c3,7603";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+		ieee80211-freq-limit = <2400000 2500000>;
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x00000004>;
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "uart3", "uart2", "jtag", "wdt";
+			ralink,function = "gpio";
+		};
+	};
+};
diff --git a/target/linux/ramips/dts/WNDR3700V5.dts b/target/linux/ramips/dts/WNDR3700V5.dts
index 4ef0d70f18..475ddb7e95 100644
--- a/target/linux/ramips/dts/WNDR3700V5.dts
+++ b/target/linux/ramips/dts/WNDR3700V5.dts
@@ -1,6 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 
-#include "mt7621.dtsi"
+#include "R6220.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
@@ -8,76 +9,32 @@
 / {
 	compatible = "netgear,wndr3700-v5", "mediatek,mt7621-soc";
 	model = "Netgear WNDR3700v5";
+};
 
-	aliases {
-		led-boot = &led_power;
-		led-failsafe = &led_power;
-		led-running = &led_power;
-		led-upgrade = &led_power;
-	};
-
-	memory@0 {
-		device_type = "memory";
-		reg = <0x0 0x8000000>;
-	};
-
-	chosen {
-		bootargs = "console=ttyS0,57600 maxcpus=2";
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		wps {
-			label = "wndr3700v5:green:wps";
-			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
-		};
-
-		led_power: power {
-			label = "wndr3700v5:green:power";
-			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
-		};
-	};
-
-	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
-
-		wps {
-			label = "wndr3700v5:wps";
-			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_WPS_BUTTON>;
-		};
+&led_power {
+	label = "wndr3700v5:green:power";
+};
 
-		wifi {
-			label = "wndr3700v5:wifi";
-			gpios = <&gpio0 8 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_RFKILL>;
-		};
+&led_usb {
+	label = "wndr3700v5:green:usb";
+};
 
-		reset {
-			label = "wndr3700v5:reset";
-			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
+&led_internet {
+	label = "wndr3700v5:green:wan";
+};
 
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&led_wifi {
+	label = "wndr3700v5:green:wifi";
+};
 
-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 10 GPIO_ACTIVE_HIGH>;
-		};
-	};
+&led_wps {
+	label = "wndr3700v5:green:wps";
 };
 
 &spi0 {
 	status = "okay";
 
-	mx25l12805d@0 {
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <10000000>;
@@ -113,35 +70,3 @@
 		};
 	};
 };
-
-&pcie {
-	status = "okay";
-};
-
-&pcie0 {
-	mt76@0,0 {
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&factory 0x8000>;
-		ieee80211-freq-limit = <5000000 6000000>;
-	};
-};
-
-&pcie1 {
-	mt76@0,0 {
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&factory 0x0000>;
-	};
-};
-
-&ethernet {
-	mtd-mac-address = <&factory 0x0000000c>;
-};
-
-&pinctrl {
-	state_default: pinctrl0 {
-		gpio {
-			ralink,group = "rgmii2", "mdio", "wdt";
-			ralink,function = "gpio";
-		};
-	};
-};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index c21b9b4b63..2eb7feb5bf 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -550,7 +550,8 @@ define Device/wndr3700v5
   IMAGE/factory.img := pad-extra 320k | $$(IMAGE/default) | pad-to $$$$(BLOCKSIZE) | \
 	sercom-footer | pad-to 128 | zip WNDR3700v5.bin | sercom-seal
   DEVICE_TITLE := Netgear WNDR3700v5
-  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 wpad-basic
+  DEVICE_PACKAGES := \
+	kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
 endef
 TARGET_DEVICES += wndr3700v5
 
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
