Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3072335F2
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Jun 2019 19:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XscBs/jCXSoIM72ZtabLkpzqzqxPc8sBQTkU2jbu+Gk=; b=sJGpRg8N4a8XZP
	vVivtfa67U8ciyzlYG0YazQJHeA0Ey7YhI9ZeioQ57DGDoufg5BFt0KddY1m+psLpkgIqfArm7HX7
	RUBW0PuNr599rIMULbxbYXRH9U8oYGoWSZ62ZdIjdI46xkIsWS6dY7RuGx1/b0nxtbuY/jemRZBTG
	BpHdY66QnaV18DHFpR7xaGO58NWfZE94VVW42EMBbOYWtAcg4wx5XQG+3Vi/tEoKtg0hedaTZAAeD
	mE50002JAqJJCYkWyKuW0evuDGkiQ+D43DwqG11Ado67qCwRd+jrWTILl1pu6YhJPLf+XOmIcAlm5
	H7QXn/maOiVAZAt9BhZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqO0-0006pV-J4; Mon, 03 Jun 2019 17:04:40 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqNs-0006pC-QM
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 17:04:35 +0000
Received: from p200300c587183300bc419a02ecbe4615.dip0.t-ipconnect.de
 ([2003:c5:8718:3300:bc41:9a02:ecbe:4615]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hXqNj-0006Q6-N8; Mon, 03 Jun 2019 19:04:23 +0200
To: openwrt-devel@lists.openwrt.org
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <d3184b92-ca35-9a55-c51f-274117e3c50f@birger-koblitz.de>
Date: Mon, 3 Jun 2019 19:04:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1559581472;
 0d6d4664; 
X-HE-SMSGID: 1hXqNj-0006Q6-N8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_100433_141611_E88954A1 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Edimax EW-7476RPC /
 EW-7478AC
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


ramips: add Edimax EW-7476RPC

SoC:	MediaTek MT7620a @ 580MHz
RAM:	64M (Winbond W9751G6KB-25)
FLASH:	8MB (Macronix)
WiFi:	SoC-integrated: MediaTek MT7620a bgn
WiFi:	MediaTek MT7612EN nac
GbE:	1x (RTL8211E)
BTN:	WPS - RFKILL/RF 50%/RF 100% toggle
LED:	- Wifi 5g (blue)
	- Wifi 2g (blue)
	- Crossband (green)
	- Power (green)
	- WPS (green)
	- LAN (Green)
UART:	UART is present as Pads with throughholes on the PCB. They are
	located next to the switch for the wifi configuration
	3.3V - RX - GND - TX / 57600-8N1
	3.3V is the square pad

Installation
------------
Update the factory image via the web-interfaces (by default:
192.168.9.2/24).
http://192.168.9.2/index.asp

ramips: add Edimax EW-7478AC

SoC:	MediaTek MT7620a @ 580MHz
RAM:	64M (Winbond W9751G6KB-25)
FLASH:	8MB (Macronix)
WiFi:	SoC-integrated: MediaTek MT7620a bgn
WiFi:	MediaTek MT7612EN nac
GbE:	1x (RTL8211E)
BTN:	WPS - RFKILL/RF 50%/RF 100% toggle
LED:	- Wifi 5g (blue)
	- Wifi 2g (blue)
	- Crossband (green)
	- Power (green)
	- WPS (green)
	- LAN (Green)
UART:	UART is present as Pads with throughholes on the PCB. They are
	located next to the switch for the wifi configuration
	3.3V - RX - GND - TX / 57600-8N1
	3.3V is the square pad

Installation
------------
Update the factory image via the web-interfaces (by default:
http://edimaxext.setup)
Or push wpa button on power on and send firmware via tftp to 192.168.1.6

The EW-7478AC is identical to the EW-7476RPC, except instead of 2
internal antennas it has 2 external ones.

Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 1b02088ed2..1f33f7c0d2 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -152,6 +152,10 @@ dir-860l-b1)
 edimax,br-6478ac-v2)
 	set_wifi_led "$boardname:blue:wlan"
 	;;
+edimax,ew-7476rpc|\
+edimax,ew-7478ac)
+        ucidef_set_led_switch "lan" "lan" "$boardname:green:lan"  "switch0" "0x20"
+        ;;
 ex2700|\
 wn3000rpv3)
 	set_wifi_led "$boardname:green:router"
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index aa0816c9cc..d0f32285cf 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -50,6 +50,8 @@ ramips_setup_interfaces()
 	broadway|\
 	dcs-930|\
 	dcs-930l-b1|\
+	edimax,ew-7476rpc|\
+	edimax,ew-7478ac|\
 	ht-tm02|\
 	kimax,u35wf|\
 	linkits7688 | \
diff --git a/target/linux/ramips/dts/EW-7476RPC.dts b/target/linux/ramips/dts/EW-7476RPC.dts
new file mode 100644
index 0000000000..55035c5a42
--- /dev/null
+++ b/target/linux/ramips/dts/EW-7476RPC.dts
@@ -0,0 +1,231 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "mt7620a.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "edimax,ew-7476rpc", "ralink,mt7620a-soc";
+	model = "Edimax EW-7476RPC";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset_wps {
+			label = "reset_wps";
+			gpios = <&gpio2 20 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		switch_high {
+			label = "switch high";
+			gpios = <&gpio2 22 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+			linux,input-type = <EV_SW>;
+		};
+
+		switch_off {
+			label = "switch off";
+			gpios = <&gpio2 23 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_1>;
+			linux,input-type = <EV_SW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "ew-7476rpc:green:power";
+			gpios = <&gpio2 27 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			label = "ew-7476rpc:green:lan";
+			gpios = <&gpio2 26 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan2g {
+			label = "ew-7476rpc:blue:wlan2g";
+			gpios = <&gpio2 30 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1radio";
+		};
+
+		wlan5g {
+			label = "ew-7476rpc:blue:wlan5g";
+			gpios = <&gpio2 31 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0radio";
+		};
+
+		wps {
+			label = "ew-7476rpc:green:wps";
+			gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
+		};
+
+		crossband {
+			label = "ew-7476rpc:green:crossband";
+			gpios = <&gpio2 29 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x30000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "u-boot-env";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			partition@50000 {
+				label = "cimage";
+				reg = <0x50000 0x20000>;
+				read-only;
+			};
+
+			partition@70000 {
+				compatible = "edimax,uimage";
+				label = "firmware";
+				reg = <0x00070000 0x00790000>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "i2c", "uartf", "nd_sd", "rgmii2";
+			ralink,function = "gpio";
+		};
+	};
+
+	phy_reset_pins: phy-reset {
+		gpio {
+			ralink,group = "spi refclk";
+			ralink,function = "gpio";
+		};
+	};
+};
+
+&ethernet {
+
+	status = "okay";
+	mtd-mac-address = <&factory 0x4>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii1_pins &mdio_pins &phy_reset_pins>;
+
+	mediatek,portmap = "l";
+	mediatek,mdio-mode = <1>;
+
+	phy-reset-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <30>;
+
+	port@5 {
+		status = "okay";
+		mediatek,fixed-link = <1000 1 1 1>;
+		phy-mode = "rgmii";
+	};
+
+	mdio-bus {
+		status = "okay";
+
+		phy0: ethernet-phy@0 {
+			status ="disabled";
+			reg = <0>;
+			phy-mode = "rgmii";
+		};
+
+		phy1: ethernet-phy@1 {
+			status = "disabled";
+			reg = <1>;
+			phy-mode = "rgmii";
+		};
+
+		phy2: ethernet-phy@2 {
+			status = "disabled";
+			reg = <2>;
+			phy-mode = "rgmii";
+		};
+
+		phy3: ethernet-phy@3 {
+			status = "disabled";
+			reg = <3>;
+			phy-mode = "rgmii";
+		};
+
+		phy4: ethernet-phy@4 {
+			status = "disabled";
+			reg = <4>;
+			phy-mode = "rgmii";
+		};
+	};
+};
+
+
+&gsw {
+	mediatek,port5 = "gmac";
+};
+
+
+&wmac {
+	ralink,mtd-eeprom = <&factory 0>;
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		mediatek,2ghz = <0>;
+	};
+};
diff --git a/target/linux/ramips/dts/EW-7478AC.dts b/target/linux/ramips/dts/EW-7478AC.dts
new file mode 100644
index 0000000000..c2cae16096
--- /dev/null
+++ b/target/linux/ramips/dts/EW-7478AC.dts
@@ -0,0 +1,232 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "mt7620a.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "edimax,ew-7478ac", "ralink,mt7620a-soc";
+	model = "Edimax EW-7478ac";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset_wps {
+			label = "reset_wps";
+			gpios = <&gpio2 20 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		switch_high {
+			label = "switch high";
+			gpios = <&gpio2 22 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_0>;
+			linux,input-type = <EV_SW>;
+		};
+
+		switch_off {
+			label = "switch off";
+			gpios = <&gpio2 23 GPIO_ACTIVE_LOW>;
+			linux,code = <BTN_1>;
+			linux,input-type = <EV_SW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "ew-7478ac:green:power";
+			gpios = <&gpio2 27 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			label = "ew-7478ac:green:lan";
+			gpios = <&gpio2 26 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan2g {
+			label = "ew-7478ac:blue:wlan2g";
+			gpios = <&gpio2 30 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1radio";
+		};
+
+		wlan5g {
+			label = "ew-7478ac:blue:wlan5g";
+			gpios = <&gpio2 31 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0radio";
+		};
+
+		wps {
+			label = "ew-7478ac:green:wps";
+			gpios = <&gpio2 28 GPIO_ACTIVE_LOW>;
+		};
+
+		crossband {
+			label = "ew-7478ac:green:crossband";
+			gpios = <&gpio2 29 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x30000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "u-boot-env";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			partition@50000 {
+				label = "cimage";
+				reg = <0x50000 0x20000>;
+				read-only;
+			};
+
+			partition@70000 {
+				compatible = "edimax,uimage";
+				label = "firmware";
+				reg = <0x00070000 0x00790000>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "i2c", "uartf", "nd_sd", "rgmii2", "spi refclk";
+			ralink,function = "gpio";
+		};
+	};
+
+	phy_reset_pins: phy-reset {
+		gpio {
+			ralink,group = "spi refclk";
+			ralink,function = "gpio";
+		};
+	};
+};
+
+&ethernet {
+
+	status = "okay";
+	mtd-mac-address = <&factory 0x4>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii1_pins &mdio_pins &phy_reset_pins>;
+
+	mediatek,portmap = "l";
+	mediatek,mdio-mode = <1>;
+
+	phy-reset-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+	phy-reset-duration = <30>;
+
+	port@5 {
+		status = "okay";
+		mediatek,fixed-link = <1000 1 1 1>;
+		phy-mode = "rgmii";
+	};
+
+	mdio-bus {
+		status = "okay";
+
+		phy0: ethernet-phy@0 {
+			status ="disabled";
+			reg = <0>;
+			phy-mode = "rgmii";
+		};
+
+		phy1: ethernet-phy@1 {
+			status = "disabled";
+			reg = <1>;
+			phy-mode = "rgmii";
+		};
+
+		phy2: ethernet-phy@2 {
+			status = "disabled";
+			reg = <2>;
+			phy-mode = "rgmii";
+		};
+
+		phy3: ethernet-phy@3 {
+			status = "disabled";
+			reg = <3>;
+			phy-mode = "rgmii";
+		};
+
+		phy4: ethernet-phy@4 {
+			status = "disabled";
+			reg = <4>;
+			phy-mode = "rgmii";
+		};
+	};
+};
+
+
+&gsw {
+	mediatek,port5 = "gmac";
+	mediatek,rtl8211e-reset = "yes";
+};
+
+
+&wmac {
+	ralink,mtd-eeprom = <&factory 0>;
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		mediatek,2ghz = <0>;
+	};
+};
diff --git a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index 10d9fd7a3e..516faaaf79 100644
--- a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -32,6 +32,9 @@
 #include <linux/bug.h>
 #include <linux/netfilter.h>
 #include <net/netfilter/nf_flow_table.h>
+#include <linux/of_gpio.h>
+#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>

 #include <asm/mach-ralink/ralink_regs.h>

@@ -1333,6 +1336,30 @@ static int fe_stop(struct net_device *dev)
 	return 0;
 }

+static void fe_reset_phy(struct fe_priv *priv)
+{
+	int err, msec = 30;
+	struct gpio_desc *phy_reset;
+
+	phy_reset = devm_gpiod_get_optional(priv->dev, "phy-reset",
+					    GPIOD_OUT_HIGH);
+	if(!phy_reset)
+		return;
+
+	if (IS_ERR(phy_reset)){
+		dev_err(priv->dev, "Error acquiring reset gpio pins: %ld\n",
+			PTR_ERR(phy_reset));
+		return;
+	}
+	err = of_property_read_u32(priv->dev->of_node, "phy-reset-duration",
+				   &msec);
+	if (!err && msec > 1000)
+		msec = 30;
+
+	mdelay(msec);
+	gpiod_set_value(phy_reset, 0);
+}
+
 static int __init fe_init(struct net_device *dev)
 {
 	struct fe_priv *priv = netdev_priv(dev);
@@ -1348,6 +1375,8 @@ static int __init fe_init(struct net_device *dev)
 			return -ENODEV;
 		}

+	fe_reset_phy(priv);
+
 	mac_addr = of_get_mac_address(priv->dev->of_node);
 	if (mac_addr)
 		ether_addr_copy(dev->dev_addr, mac_addr);
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index cf38aa2cb1..2c9ce5427e 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -617,6 +617,32 @@ define Device/edimax_br-6478ac-v2
 endef
 TARGET_DEVICES += edimax_br-6478ac-v2

+define Device/edimax_ew-7476rpc
+  DTS := EW-7476RPC
+  DEVICE_TITLE := Edimax EW-7476RPC
+  BLOCKSIZE := 4k
+  IMAGE_SIZE := 7744k
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | \
+        edimax-header -s CSYS -m RN79 -f 0x70000 -S 0x01100000 | pad-rootfs | \
+        append-metadata | check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES := kmod-mt76x2 kmod-phy-realtek
+endef
+TARGET_DEVICES += edimax_ew-7476rpc
+
+
+define Device/edimax_ew-7478ac
+  DTS := EW-7478AC
+  DEVICE_TITLE := Edimax EW-7478AC
+  BLOCKSIZE := 4k
+  IMAGE_SIZE := 7744k
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | \
+        edimax-header -s CSYS -m RN70 -f 0x70000 -S 0x01100000 | pad-rootfs | \
+        append-metadata | check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES := kmod-mt76x2 kmod-phy-realtek
+endef
+TARGET_DEVICES += edimax_ew-7478ac
+
+
 define Device/tplink_c2-v1
   $(Device/Archer)
   DTS := ArcherC2-v1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
