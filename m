Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E67D3D59E
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 20:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CNsZupZZI48OuafMoibhPXRV7QJettRT4l/xhI/9Y7Q=; b=FrURDNqxzmgbYx
	XlumIta7GGS234EMGUUGHX1Nxuxhcbg1JY7OZj4UAaCgvoJVK3ZSGdoJEsaf9xf/OG3k3sy6ahiJd
	OdTwZTx08wdiEBrTYbTqvGS7HCcrRhxKCYh06o9a/BARnGOjm3OtHuaDU5D8n1Nqj16kZVXcgC22P
	Eylx8BOgekfCHInkyWT0KT4itst4Rqwx68PzU0lIKnwk9bluvvL9hrIrEr0GaKF6rNrU48njSTE2Y
	JB2QcsrsXxcWTJv52OjGf2vrqZTx5AyAtdzxfsqf9vyXttYUo5FNj6jJBMB4sqn02YFXeX2a8xkcs
	hi7cyarHcjWM66cKsr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halh8-0004IA-Jj; Tue, 11 Jun 2019 18:40:30 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halgo-0003Tq-Ri
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 18:40:16 +0000
Received: from p200300c58718330061f38f2e04e3a355.dip0.t-ipconnect.de
 ([2003:c5:8718:3300:61f3:8f2e:4e3:a355]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1halgj-00024d-EM; Tue, 11 Jun 2019 20:40:05 +0200
To: openwrt-devel@lists.openwrt.org
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <57f03f8d-5e39-8b0f-a1d9-e2db645864cd@birger-koblitz.de>
Date: Tue, 11 Jun 2019 20:39:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1560278410;
 abcc9507; 
X-HE-SMSGID: 1halgj-00024d-EM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_114011_122691_E4D3A076 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Edimax EW-7478APC
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

ramips: add Edimax EW-7478APC

SoC:	MediaTek MT7620a @ 580MHz
RAM:	64M (Winbond W9751G6KB-25)
FLASH:	8MB (Macronix)
WiFi:	SoC-integrated: MediaTek MT7620a bgn
WiFi:	MediaTek MT7612EN nac
Switch: Mediatek MT7530W Gigabit Switch (4 x LAN, 1 x WAN)
USB:	Yes 1 x 2.0 (+ 1 x 2.0 unpopulated header)
BTN:	Reset/WPS
LED:    - Power (white)
	- Internet (blue)
	- Wifi (blue)
	- USB (blue)
UART:  UART is present as pads with throughholes on the PCB. They are
       located in the lower right corner (GbE ports facing up)
       3.3V - RX - GND - TX / 57600-8N1
       3.3V is the square pad

Installation
------------
Update the factory image via the web-interfaces (by default:
http://edimax.setup)

Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>

---
diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 35d046cc90..1df459d3c7 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -35,7 +35,8 @@ alfa-network,ac1200rm)
 	set_wifi_led "$boardname:green:wlan2g" "wlan1"
 	;;
 alfa-network,awusfree1|\
-edimax,br-6478ac-v2)
+edimax,br-6478ac-v2|\
+edimax,ew-7478apc)
 	set_wifi_led "$boardname:blue:wlan"
 	;;
 alfa-network,tube-e4g)
diff --git a/target/linux/ramips/dts/EW-7478APC.dts b/target/linux/ramips/dts/EW-7478APC.dts
new file mode 100644
index 0000000000..b7edcc56dd
--- /dev/null
+++ b/target/linux/ramips/dts/EW-7478APC.dts
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7620a.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "edimax,ew-7478apc", "ralink,mt7620a-soc";
+	model = "Edimax EW-7478APC";
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
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset_wps {
+			label = "reset_wps";
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "ew-7478apc:white:power";
+			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
+		};
+		internet {
+			label = "ew-7478apc:blue:internet";
+			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
+		};
+		wlan {
+			label = "ew-7478apc:blue:wlan";
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+		usb {
+			label = "ew-7478apc:blue:usb";
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ohci_port1>, <&ehci_port1>;
+			linux,default-trigger = "usbport";
+		};
+	};
+
+
+	gpio_export {
+		compatible = "gpio-export";
+		#size-cells = <0>;
+		usb-power {
+			gpio-export,name="usb-power";
+			gpio-export,output=<1>;
+			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
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
+			ralink,group = "i2c", "uartf", "nd_sd";
+			ralink,function = "gpio";
+		};
+	};
+};
+
+&ethernet {
+	status = "okay";
+	mtd-mac-address = <&factory 0x4>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+	mediatek,portmap = "wllll";
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
+			reg = <0>;
+			phy-mode = "rgmii";
+		};
+
+		phy1: ethernet-phy@1 {
+			reg = <1>;
+			phy-mode = "rgmii";
+		};
+
+		phy2: ethernet-phy@2 {
+			reg = <2>;
+			phy-mode = "rgmii";
+		};
+
+		phy3: ethernet-phy@3 {
+			reg = <3>;
+			phy-mode = "rgmii";
+		};
+
+		phy4: ethernet-phy@4 {
+			reg = <4>;
+			phy-mode = "rgmii";
+		};
+
+		phy1f: ethernet-phy@1f {
+			reg = <0x1f>;
+			phy-mode = "rgmii";
+		};
+	};
+};
+
+&gsw {
+	mediatek,port4 = "gmac";
+};
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
+
+&ehci {
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index 8d35402561..3d480a5cb7 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -618,6 +618,18 @@ define Device/edimax_br-6478ac-v2
 endef
 TARGET_DEVICES += edimax_br-6478ac-v2

+define Device/edimax_ew-7478apc
+  DTS := EW-7478APC
+  DEVICE_TITLE := Edimax EW-7478APC
+  BLOCKSIZE := 4k
+  IMAGE_SIZE := 7744k
+  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | \
+        edimax-header -s CSYS -m RN75 -f 0x70000 -S 0x01100000 | pad-rootfs | \
+        append-metadata | check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
+endef
+TARGET_DEVICES += edimax_ew-7478apc
+
 define Device/tplink_c2-v1
   $(Device/Archer)
   DTS := ArcherC2-v1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
