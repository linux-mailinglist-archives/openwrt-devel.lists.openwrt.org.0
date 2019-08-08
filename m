Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FD18612A
	for <lists+openwrt-devel@lfdr.de>; Thu,  8 Aug 2019 13:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rZNl5LWiqyWRDGfPstGTYLyOUB0fiBdRWjvBEm4UvRo=; b=j4kNHBpm/lPMp9
	2TYp553SlUAKIR5o/PHcv/NmFfupCaTUN7omGWHz1bgBURrkBeUWsmwWDYXkEW4SvsjLaWdY2Nz2D
	zQlWjf3zIOiG3uVEBcqmNCaQsNRZQK/koZHfpBiHXw5GtVnlXX2sTg9u2a6ToCwF6YCwxf7nAtkHQ
	URH5rxeji0I8eo+wF3Vzd5k6w2TI6p48Flyykzl5gth4ULyaFyGsSx9N1x7bx4BrJ/la2QiSucrGx
	vYBlxeFJBdGo4RLmlClT4ggfW+Rmw4UaJQUM0788h44rWEqL2lXGmAeG3SQCiKUyAUymWsY/YKZY6
	oarnChJUYf+3YHrH5Oeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvgzm-0005Lj-DK; Thu, 08 Aug 2019 11:54:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgza-0005Ke-Sl
 for openwrt-devel@bombadil.infradead.org; Thu, 08 Aug 2019 11:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pDPeWnW/4JFUpNm6TVKh3DC2lMNWQvu/NY2ekX1YcVQ=; b=vuDZG7vLg+iBUvHMNoze3bFbP
 p6pVNWD2u2Oi6yu39ECSMpkRu3BiwtS/gliQApTmlWaZzmnT4IoybXr0sfZtfT0pl4/P7jReLrgHy
 Dp3Bt/TxyLEsDLgbj++CzM5bgSQQBAYn8SSM78APMFi+HSFiMT/EjsXSKyOBQmKVmWt2RREIkw2oq
 VhsEQhYhIZcuR8G9WrWr14DLykv3reuPAoimuA14RqN/0tqS0C0v+0a+YEuQVEv4HT2stYHEQ5gOW
 kcJHCCmpwoUlOQfsz7WIH5qwwzEYMmW3JlSCnzZDDPfC/RljewA6JuTcDvgNA3/WhFwfD3zwy1Nq8
 CyTFsApvw==;
Received: from smtpbg202.qq.com ([184.105.206.29])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvgzg-0000oh-0R
 for openwrt-devel@lists.openwrt.org; Thu, 08 Aug 2019 11:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1565265204; bh=pDPeWnW/4JFUpNm6TVKh3DC2lMNWQvu/NY2ekX1YcVQ=;
 h=From:To:Subject:Date:Message-Id;
 b=C07cqPbsJOUTaUNxLO+tybEO892SOwKxRlhsExLxXN15oV/cjSAqlo6fvhG4M2DjL
 hUaS9fwHxja74ptPX0eK/ZVJz56sBC/lnpGThxj/jI8pdvigcJ2fAmDh09hIjqas2G
 PF7iSMieQlEJNqh6CRI3PnDntMyb5db7UX+a5Ysc=
X-QQ-mid: esmtp4t1565265202txzlurh97
Received: from localhost.localdomain (unknown [115.205.159.17])
 by esmtp4.qq.com (ESMTP) with 
 id ; Thu, 08 Aug 2019 19:53:21 +0800 (CST)
X-QQ-SSF: B1000000000000B0RH100500000000Z
X-QQ-FEAT: EUGmOqWjSYJAa+reoTOXM4oRAv2ynAXKsLCGM2uY1zQKYc+8fBDzNAu/z9PDB
 nNZbyAYLQNcr6f+vTynR7+EfyJFQqIVyIKrdCfvnLb9M6gZ51NMjQ8On0ZFcQ1/gczcL7cs
 ABarHfo0QzHgJghoVNyqA0kMzeNfdfstF1AHBzNwU48qzolp+tZxPiRj63yAmYVC2O6IkiM
 AIRtutqVEWBeZqh1QGgLyOrhndji8zxxaLg7YnCfaTZedgqTyFy101kOX8ybIRr9HQHjziv
 5uA5PV7JJo5tFTNR146hZUts7JEbQ8o+rYfnlrAORN/agTs0dKSIJgmCY=
X-QQ-GoodBg: 0
From: Robinson Wu <wurobinson@qq.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  8 Aug 2019 19:53:09 +0800
Message-Id: <1565265189-10981-1-git-send-email-wurobinson@qq.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:qq.com:bgforeign:bgforeign2
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_125408_679956_746BAFFE 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.105.206.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2] ramips: add support to JS7628
 development board
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

This commit adds support for the ZhuoTK JS7628 development board,
The device has the following specifications:

- SOC:MT7628AN/NN
- RAM:64/128/256 MB (DDR2)
- FLASH:8/16/32 MB (SPI NOR)
- Ethernet:3x 10/100 Mbps ethernet ports (MT7628AN/NN built-in switch)
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

1. This board is available with three types of RAM with flash
   configuration. Chose one of the right "Target Profile" in
   "make menuconfig" as listed below:

   "ZhuoTK JS7628 8M flash"
   "ZhuoTK JS7628 16M flash"
   "ZhuoTK JS7628 32M flash"

   to fit the board you have.

Vist www.zhuotk.com for further information.

Signed-off-by: Robinson Wu <wurobinson@qq.com>
---
 target/linux/ramips/base-files/etc/board.d/01_leds |   6 ++
 .../linux/ramips/base-files/etc/board.d/02_network |   3 +
 .../ramips/dts/mt7628an_zhuotk_js7628-16m.dts      |  60 ++++++++++++
 .../ramips/dts/mt7628an_zhuotk_js7628-32m.dts      |  60 ++++++++++++
 .../linux/ramips/dts/mt7628an_zhuotk_js7628-8m.dts |  60 ++++++++++++
 .../linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi   | 105 +++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                |  30 ++++++
 7 files changed, 324 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 57f0939..8f8de95 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -458,6 +458,12 @@ zbtlink,zbt-we1226)
 	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x02"
 	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x10"
 	;;
+zhuotk,js7628-8m|\
+zhuotk,js7628-16m|\
+zhuotk,js7628-32m)
+	ucidef_set_led_timer "system" "system" "js76x8:green:system" "1000" "1000"
+	set_wifi_led "js76x8:green:wifi"
+	;;
 zorlik,zl5900v2)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
 	;;
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 2f9a022..1046ba8 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -103,6 +103,9 @@ ramips_setup_interfaces()
 	zbtlink,zbt-wg3526-16m|\
 	zbtlink,zbt-wg3526-32m|\
 	zbtlink,zbt-wr8305rt|\
+	zhuotk,js7628-8m|\
+	zhuotk,js7628-16m|\
+	zhuotk,js7628-32m|\
 	zyxel,keenetic|\
 	zyxel,keenetic-omni)
 		ucidef_add_switch "switch0" \
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m.dts
new file mode 100644
index 0000000..4058577
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js7628-16m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS7628 (16M flash)";
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	m25p80@0 {
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
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m.dts
new file mode 100644
index 0000000..9bbd0fd
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js7628-32m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS7628 (32M flash)";
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	m25p80@0 {
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
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m.dts
new file mode 100644
index 0000000..b385a13
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m.dts
@@ -0,0 +1,60 @@
+/dts-v1/;
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js7628-8m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS7628 (8M flash)";
+};
+
+&spi0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_pins>, <&spi_cs1_pins>;
+
+	m25p80@0 {
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
index edf9a67..566f1ca 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -553,6 +553,36 @@ define Device/zbtlink_zbt-we1226
 endef
 TARGET_DEVICES += zbtlink_zbt-we1226
 
+define Device/zhuotk_js7628-8m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS7628
+  DEVICE_VARIANT := 8M flash
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_js7628-8m
+
+define Device/zhuotk_js7628-16m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS7628
+  DEVICE_VARIANT := 16M flash
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_js7628-16m
+
+define Device/zhuotk_js7628-32m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := 32448k
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS7628
+  DEVICE_VARIANT := 32M flash
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+endef
+TARGET_DEVICES += zhuotk_js7628-32m
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
