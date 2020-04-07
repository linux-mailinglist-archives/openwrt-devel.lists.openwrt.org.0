Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD7B1A096F
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 10:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WDRUWNasR1UqDg0Ei3jnvKCSuDutGaL9QER2mkKI64A=; b=N5I+Y2fIvRfeHI
	qxg9uP7eW66+ggSuZYwLDK/nRbM/Zbc+5rMGQT4njgf0u/dQttDAae+oko+2sWMGp30J5lIezSIPz
	TohoBKXbkPBV4l5LnnOfh/9/GmvYC8A1jJsaiXxEKfeZS2JrwWKPamJRm5iQXc61ZuRoUR77lJUBH
	aJKZ/cSxYV0ZMAW9QfHWkfPTgOo6MDVV/3dseYIegUzCli0RZor8CzBxbIFVKiPQJU4avNFrVPcbx
	qwH2vZOKtkk1Bs7kOBVXF5zwRYjfZhQWgRupRbW/g0uVG66peDJ2wMkKNg3qeAa+HQluusvlsK/bH
	mEU7Vt1sVPV4IRsnV2zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjjq-0006Su-6t; Tue, 07 Apr 2020 08:37:42 +0000
Received: from out203-205-251-80.mail.qq.com ([203.205.251.80] helo=qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjjb-0006R4-V2
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 08:37:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1586248640; bh=MMaYM+R+058x6E1ypJ5QOZKRrTaz20HtxSxoGZ58Vy4=;
 h=From:To:Cc:Subject:Date;
 b=j1/S1Hb3t3Iz9jBIY6IaYt14aleCOZnwJOl2AJWWizHMQqoKs+HsdnI6jaExk73/H
 TMRzX84GMeR0R8cdhKVX5PC5AA3o4e8BILz/HEUi1IrP7vBy1Cjg/PrFtpKG8HbK4A
 n1XYYsMeFg+/EXFaUj+AJNLsPfYKhc6iklKjDL8Y=
Received: from localhost.localdomain ([115.205.154.74])
 by newxmesmtplogicsvrszc5.qq.com (NewEsmtp) with SMTP
 id 951B38AB; Tue, 07 Apr 2020 16:37:17 +0800
X-QQ-mid: xmsmtpt1586248637tdbsq2gs4
X-QQ-XMAILINFO: NO82g/o55Mcb1pTyygCOWDKIt8ExalAOwCH+LiByB/5hDzDElLBhQyIOvtRuB/
 vQjnbEw8J38Nq/KdNYIHS80TThzKFHVMdFEaDWvr63HeSO8KbjQ7xL/bMA687EdqiF+f3DnPu8Xd
 oabhW1uccrU+pT+JCTh4zE7i2k9H4MzzesLsa6byMnC336+enpgm/E4BE8fqysQNAfCJJw/Vefgc
 d/pEIz8M7jI5A4LUmUTN8f9PTmqW0chIqMPRV5RuytBnts6x8sXxtVGBFDLtx9Dk7CB3Zx66BAYs
 aav0FaNxykabHvTxuImhY0BGmETkb4YIEgJrcv7zYEhAqbcnT3zXVkIRrdNjDwtQ4eujZ3Tc4Xae
 DLVDxKTjMpjRFv4EAT7gNKGIUC6IkSVFgpsDM2IQPQVXGP9ROZ2yZ7WoM/sbcjk7/DwSUAmP5B7z
 dw8znfU5F2a4L/mvJiXUmnTOODrpJQfp/xBxT/xDIKm5az2/Ckq/8w6shYj7jr2+b30+/+BXer/K
 02Oe92Vn7sDUgoPxfD5vIL6PViBTW02UaSB42vbloq3bFSDpewsGMhAJb4wekjOnkWFpMXejUqWJ
 YUJtwqQDmTcNnHABwVgiexTvST6IOLP6mttwfOm/1wYaU8pXQI6Zr+7baI
From: Robinson Wu <wurobinson@qq.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 16:36:52 +0800
Message-Id: <1586248612-19663-1-git-send-email-wurobinson@qq.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_013728_610649_D8CD6DFA 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.251.80 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wurobinson[at]qq.com]
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: [OpenWrt-Devel] [PATCH v6] ramips: add support for JS76x8 series
 DEV boards
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
Cc: Robinson Wu <wurobinson@qq.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit adds support for the Jotale JS76x8 series development boards.
These devices have the following specifications:

- SOC: MT7628AN/NN, MT7688AN, MT7628DAN
- RAM of MT7628AN/NN and MT7688AN: 64/128/256 MB (DDR2)
- RAM of MT7628DAN: 64 MB (DDR2)
- FLASH:8/16/32 MB (SPI NOR)
- Ethernet:3x 10/100 Mbps ethernet ports (MT76x8 built-in switch)
- WIFI:1x 2T2R 2.4 GHz Wi-Fi
- LEDs:1x system status green LED, 1x wifi green LED,
       3x ethernet green LED
- Buttons:1x reset button, 2x user defined button
- 1x microSD slot
- 4x USB 2.0 port
- 1x mini-usb debug UART
- 1x DC jack for main power (DC 5V)
- 1x TTL/RS232 UART
- 1x TTL/RS485 UART
- 13x GPIO header
- 1x audio codec(wm8960)

Installation via OpenWrt:

The original firmware is OpenWrt, so both LuCI or sysupgrade can be used.

Installation via U-boot web:

1. Power on board with reset button pressed, release it
   after wifi led start blinking.
2. Setup static IP 192.168.1.123/4 on your PC.
3. Go to 192.168.1.8 in browser and upload "sysupgrade" image.

Installation via U-boot tftp:
1. Connect to serial console at the mini usb, which has been connected to UART0
   on board (115200 8N1)
2. Setup static IP 192.168.1.123/4 on your PC.
3. Place openwrt-firmware.bin on your PC tftp server (192.168.1.123).
3. Connect one of LAN ports on board to your PC.
4. Start terminal software (e.g. screen /dev/ttyUSB0 115200) on PC.
5. Apply power to board.
6. Interrupt U-boot with keypress of "2".
7. At u-boot prompts:
   Warning!! Erase Linux in Flash then burn new one. Are you sure?(Y/N) Y
   Input device IP (192.168.1.8) ==:192.168.1.8
   Input server IP (192.168.1.123) ==:192.168.1.123
   Input Linux Kernel filename (root_uImage) ==:openwrt-firmware.bin
8. board will download file from tftp server, write it to flash and reboot.

Signed-off-by: Robinson Wu <wurobinson@qq.com>
---
 .../ramips/dts/mt7628an_jotale_js76x8-16m.dts      |  12 ++
 .../ramips/dts/mt7628an_jotale_js76x8-32m.dts      |  12 ++
 .../linux/ramips/dts/mt7628an_jotale_js76x8-8m.dts |  12 ++
 .../linux/ramips/dts/mt7628an_jotale_js76x8.dtsi   | 156 +++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                |  30 ++++
 .../ramips/mt76x8/base-files/etc/board.d/01_leds   |   6 +
 .../mt76x8/base-files/etc/board.d/02_network       |   6 +
 7 files changed, 234 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7628an_jotale_js76x8-16m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_jotale_js76x8-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_jotale_js76x8-8m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_jotale_js76x8.dtsi

diff --git a/target/linux/ramips/dts/mt7628an_jotale_js76x8-16m.dts b/target/linux/ramips/dts/mt7628an_jotale_js76x8-16m.dts
new file mode 100644
index 0000000..53ed6d8
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_jotale_js76x8-16m.dts
@@ -0,0 +1,12 @@
+/dts-v1/;
+
+#include "mt7628an_jotale_js76x8.dtsi"
+
+/ {
+	compatible = "jotale,js76x8-16m", "jotale,js76x8", "mediatek,mt7628an-soc";
+	model = "Jotale JS76x8 (16M)";
+};
+
+&firmware {
+	reg = <0x50000 0xfb0000>;
+};
diff --git a/target/linux/ramips/dts/mt7628an_jotale_js76x8-32m.dts b/target/linux/ramips/dts/mt7628an_jotale_js76x8-32m.dts
new file mode 100644
index 0000000..851e6db
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_jotale_js76x8-32m.dts
@@ -0,0 +1,12 @@
+/dts-v1/;
+
+#include "mt7628an_jotale_js76x8.dtsi"
+
+/ {
+	compatible = "jotale,js76x8-32m", "jotale,js76x8", "mediatek,mt7628an-soc";
+	model = "Jotale JS76x8 (32M)";
+};
+
+&firmware {
+	reg = <0x50000 0x1fb0000>;
+};
diff --git a/target/linux/ramips/dts/mt7628an_jotale_js76x8-8m.dts b/target/linux/ramips/dts/mt7628an_jotale_js76x8-8m.dts
new file mode 100644
index 0000000..8cac3fb
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_jotale_js76x8-8m.dts
@@ -0,0 +1,12 @@
+/dts-v1/;
+
+#include "mt7628an_jotale_js76x8.dtsi"
+
+/ {
+	compatible = "jotale,js76x8-8m", "mediatek,mt7628an-soc";
+	model = "Jotale JS76x8 (8M)";
+};
+
+&firmware {
+	reg = <0x50000 0x7b0000>;
+};
diff --git a/target/linux/ramips/dts/mt7628an_jotale_js76x8.dtsi b/target/linux/ramips/dts/mt7628an_jotale_js76x8.dtsi
new file mode 100644
index 0000000..d9cd5d4
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_jotale_js76x8.dtsi
@@ -0,0 +1,156 @@
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "jotale,js76x8", "mediatek,mt7628an-soc";
+
+	aliases {
+		led-boot = &led_system;
+		led-failsafe = &led_system;
+		led-running = &led_system;
+		led-upgrade = &led_system;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_system: system {
+			label = "js76x8:green:system";
+			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
+		};
+
+		wifi {
+			label = "js76x8:green:wifi";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "gpio","p3led_an","p4led_an",
+				"pwm0","pwm1","refclk","wdt","wled_an";
+			ralink,function = "gpio";
+		};
+
+		p0led {
+			ralink,group = "p0led_an";
+			ralink,function = "p0led_an";
+		};
+
+		p1led {
+			ralink,group = "p1led_an";
+			ralink,function = "p1led_an";
+		};
+
+		p2led {
+			ralink,group = "p2led_an";
+			ralink,function = "p2led_an";
+		};
+
+		pwm_2_3 {
+			ralink,group = "uart2";
+			ralink,function = "pwm";
+		};
+	};
+
+	uart2 {
+		uart2 {
+			ralink,group = "spis";
+			ralink,function = "pwm_uart2";
+		};
+	};
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <40000000>;
+		m25p,chunked-io = <32>;
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
+			firmware: partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+			};
+		};
+	};
+
+	spidev@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "linux,spidev";
+		reg = <1>;
+		spi-max-frequency = <40000000>;
+	};
+};
+
+&i2c {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x28>;
+};
+
+&sdhci {
+	status = "okay";
+	mediatek,cd-low;
+};
+
+&wmac {
+	status = "okay";
+};
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index dbd80a6..67d40ff 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -140,6 +140,36 @@ define Device/iptime_a604m
 endef
 TARGET_DEVICES += iptime_a604m
 
+define Device/jotale_js76x8-16m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := Jotale
+  DEVICE_MODEL := JS76x8
+  DEVICE_VARIANT := 16M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += jotale_js76x8-16m
+
+define Device/jotale_js76x8-32m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 32448k
+  DEVICE_VENDOR := Jotale
+  DEVICE_MODEL := JS76x8
+  DEVICE_VARIANT := 32M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += jotale_js76x8-32m
+
+define Device/jotale_js76x8-8m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := Jotale
+  DEVICE_MODEL := JS76x8
+  DEVICE_VARIANT := 8M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += jotale_js76x8-8m
+
 define Device/mediatek_linkit-smart-7688
   MTK_SOC := mt7628an
   IMAGE_SIZE := 32448k
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
index f397da1..68f115c 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
@@ -37,6 +37,12 @@ hiwifi,hc5661a|\
 hiwifi,hc5761a)
 	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x10"
 	;;
+jotale,js76x8-16m|\
+jotale,js76x8-32m|\
+jotale,js76x8-8m)
+	ucidef_set_led_timer "system" "system" "js76x8:green:system" "1000" "1000"
+	set_wifi_led "js76x8:green:wifi"
+	;;
 mediatek,linkit-smart-7688)
 	ucidef_set_led_wlan "wifi" "wifi" "linkit-smart-7688:orange:wifi" "phy0tpt"
 	;;
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index 87ce447..1c05f33 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -57,6 +57,9 @@ ramips_setup_interfaces()
 		;;
 	hiwifi,hc5661a|\
 	hiwifi,hc5761a|\
+	jotale,js76x8-16m|\
+	jotale,js76x8-32m|\
+	jotale,js76x8-8m|\
 	mediatek,mt7628an-eval-board|\
 	mercury,mac1200r-v2|\
 	totolink,lr1200|\
@@ -186,6 +189,9 @@ ramips_setup_macs()
 	mercury,mac1200r-v2)
 		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory_info 0xd)" 1)
 		;;
+	jotale,js76x8-16m|\
+	jotale,js76x8-32m|\
+	jotale,js76x8-8m|\
 	skylab,skw92a|\
 	totolink,lr1200)
 		wan_mac=$(mtd_get_mac_binary factory 0x2e)
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
