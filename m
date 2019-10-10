Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD21D2230
	for <lists+openwrt-devel@lfdr.de>; Thu, 10 Oct 2019 09:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l+DCrPAWZBjVwlBDeFJKX/zexkR+ndsX5PGVWQZCruY=; b=cP8E2r6vtE5ZUm
	nh0N1O4QY8kqDggBxG8HpYX9cU3D4yahcTNjGCDP0iRYsLjR+d76Idf1L1totxs+ua9pRQYPWh0hX
	yM54rrw2mgBKIjaXgY6JRJ+SugOymkfX+/soRfz98p0wKTqYP/Sqoy/QaX0wMa9whPunuq3/UWEpd
	f0wJFuUkH9vy2l4hbvoMn1l3jhlnxpOAXN2VzR0czudPHMchJvipRjkszx/Du7qQaSF6UJZouZ0lB
	Xd9mSgBquf8vepT+fd4SsKmcFPEwG4syURwgu4UJOR3IeXfy5vJhWLM8ALG7Z7wouM67DXFDTd8ps
	JB736vqnPBS7m0hcVkTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITKv-0004N1-Be; Thu, 10 Oct 2019 07:58:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITKp-0004Mv-N4
 for openwrt-devel@bombadil.infradead.org; Thu, 10 Oct 2019 07:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h1JZeDSobpDjoFtr3T0LVT55z+6r5CzY9S8jXnk/Tco=; b=Alr49OKAJ46yP5AzlRr/yYBP9
 qgV+nu1igOL2BieDkvNqYSv7DHt+aNUe6eDiP+dYK8cA9DZLziBhCycH1ljLwqVhhph9tVTxK57ma
 KzjadiYLeEM9wNx6G1nlM7QU7KXNqTm2h0Lp2j7VNvfLxVIP8nmRneQM4a4430lKNVIP8kjpcz/os
 lT1PRjuH04G5RXEMXHryFGtbkLT9o/z4jgzul+MyZ+gU5UTiBD1CZbSTN9ZzvVDNeOEznf+at9HPm
 b/AGRFpGnCjtO7Y8Qp70kDWNNEk7SbE9gfvlpiihacYqoV0uMhIo/RqnIM0/UwfkNSrb+62zJkXr1
 CL95fIyIA==;
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITKk-0007hz-CR
 for openwrt-devel@lists.openwrt.org; Thu, 10 Oct 2019 07:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1570694152; bh=h1JZeDSobpDjoFtr3T0LVT55z+6r5CzY9S8jXnk/Tco=;
 h=From:To:Subject:Date:Message-Id;
 b=EfquLeNTBnJxZ3eF+JvvdPu1ErMTjk2ea435guivjgKUbggd2wE/cfMTFXFbIYAkI
 SXcnIF40qxgkwGlyy1ZG7LKydMZ565Z+fXYl7lYivK5KWzbdatX4fRKyPNWIgxNgEi
 yFjsICRRMvt9ZSr6Xg0fhofaRxlDhAJ/dmcg6474=
X-QQ-mid: esmtp5t1570694150txq0y7jbf
Received: from localhost.localdomain (unknown [125.121.21.83])
 by esmtp4.qq.com (ESMTP) with 
 id ; Thu, 10 Oct 2019 15:55:49 +0800 (CST)
X-QQ-SSF: B1000000000000C0TH100F00000000Z
X-QQ-FEAT: Tubeh+4qKFRNGh+k4mvuUQONTMU4kI5VeyCWYTvcjuYATdGDCybnpcnTldlEh
 G21UcIUSDfTULUQtl5OH3bJ44Nj0b9KKgHv18NeonezXX6dAgR3CUUTR3MdYiDfMKqLdft0
 PfSgj3d6gWQaSe/nUoHzRMPbWEg17cxzKbSooZreFjFZnknjC3udiMhcCk/zjwIGRLcT1En
 POhlYuLbFYw7eZ4O7e0ymb3CAE+J8dz8PSJ/vtlloBRSxU4Nl+0aUtMPZ8eB6ta4l6dybGt
 rsxWNMkE7qZltbdxsqHCAwLEs1zTrkRCAmWFygVm0aZp7zAsymN7CcSQ8=
X-QQ-GoodBg: 0
From: Robinson Wu <wurobinson@qq.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 10 Oct 2019 15:55:47 +0800
Message-Id: <1570694147-22320-1-git-send-email-wurobinson@qq.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:qq.com:bgforeign:bgforeign2
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v3] ramips: add support for JS76x8 series
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

This commit adds support for the ZhuoTK JS76x8 series development boards.
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

Other notes:

Vist www.zhuotk.com for further information.

Signed-off-by: Robinson Wu <wurobinson@qq.com>
---
 target/linux/ramips/base-files/etc/board.d/01_leds |   6 ++
 .../linux/ramips/base-files/etc/board.d/02_network |   8 +-
 .../ramips/dts/mt7628an_zhuotk_js76x8-16m.dts      |  60 ++++++++++++
 .../ramips/dts/mt7628an_zhuotk_js76x8-32m.dts      |  60 ++++++++++++
 .../linux/ramips/dts/mt7628an_zhuotk_js76x8-8m.dts |  60 ++++++++++++
 .../linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi   | 105 +++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                |  30 ++++++
 7 files changed, 328 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js76x8-16m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js76x8-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js76x8-8m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index f8a270b..c742dbd 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -467,6 +467,12 @@ zbtlink,zbt-we1226)
 	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x02"
 	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x10"
 	;;
+zhuotk,js76x8-16m|\
+zhuotk,js76x8-32m|\
+zhuotk,js76x8-8m)
+	ucidef_set_led_timer "system" "system" "js76x8:green:system" "1000" "1000"
+	set_wifi_led "js76x8:green:wifi"
+	;;
 zorlik,zl5900v2)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
 	;;
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 25aa075..73d7c32 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -102,6 +102,9 @@ ramips_setup_interfaces()
 	zbtlink,zbt-wg3526-16m|\
 	zbtlink,zbt-wg3526-32m|\
 	zbtlink,zbt-wr8305rt|\
+	zhuotk,js76x8-16m|\
+	zhuotk,js76x8-32m|\
+	zhuotk,js76x8-8m|\
 	zyxel,keenetic|\
 	zyxel,keenetic-omni)
 		ucidef_add_switch "switch0" \
@@ -543,7 +546,10 @@ ramips_setup_macs()
 	hilink,hlk-rm04|\
 	nexaira,bc2|\
 	petatel,psr-680w|\
-	skyline,sl-r7205)
+	skyline,sl-r7205|\
+	zhuotk,js76x8-16m|\
+	zhuotk,js76x8-32m|\
+	zhuotk,js76x8-8m)
 		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-16m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-16m.dts
new file mode 100644
index 0000000..7123e63
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-16m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js76x8-16m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS76x8 (16M)";
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
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0xfb0000>;
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
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-32m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-32m.dts
new file mode 100644
index 0000000..b894103
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-32m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js76x8-32m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS76x8 (32M)";
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	flash0@0 {
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
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0x1fb0000>;
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
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-8m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-8m.dts
new file mode 100644
index 0000000..c951071
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8-8m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js76x8-8m", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS76x8 (8M)";
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
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0x7b0000>;
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
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
new file mode 100644
index 0000000..4fbf7f6
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
@@ -0,0 +1,105 @@
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "zhuotk,js76x8", "mediatek,mt7628an-soc";
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
+	gpio-leds {
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
index 9ab16db..62f3eee 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -583,6 +583,36 @@ define Device/zbtlink_zbt-we1226
 endef
 TARGET_DEVICES += zbtlink_zbt-we1226
 
+define Device/zhuotk_js76x8-16m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS76x8
+  DEVICE_VARIANT := 16M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_js76x8-16m
+
+define Device/zhuotk_js76x8-32m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 32448k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS76x8
+  DEVICE_VARIANT := 32M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_js76x8-32m
+
+define Device/zhuotk_js76x8-8m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS76x8
+  DEVICE_VARIANT := 8M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_js76x8-8m
+
 define Device/zyxel_keenetic-extra-ii
   MTK_SOC := mt7628an
   IMAGE_SIZE := 14912k
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
