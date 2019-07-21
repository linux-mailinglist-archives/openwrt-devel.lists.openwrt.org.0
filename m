Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D306F324
	for <lists+openwrt-devel@lfdr.de>; Sun, 21 Jul 2019 14:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YWETjDWrihr4rsUL39b7qUoJjE8233cz4Njg3v7pbv8=; b=buhfF66xEVofAVLCbZDK+cXLvc
	GXhSkZFRBsMyNeFrFFlTGOxCEzESrh07QPLS+1iISXh1D4vbX0gQtGq2fxZNHNIwVwah3//Zfreup
	e/Vln08aO0fE7szFjrLUDeIw7yt/ouCpGaEXo8xHYbNPp5u8FbgBZqf5x8uPU833P1MMhHtSndmiU
	7yZ1u+XAtYM55MiTibJ0Qp4oOxStAWR9fWmK2ic4xdCcsj2mfWmruToiHb8ywBR0lGbtzd3Hud/rL
	YOACrXkPq7sfzfjcDKdA7anj1IKZsulsH/+PHiCA5EpvpjRKOHWMZAy/11GdPTs9evZ8PcqoE3YrA
	rt3cOGLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpAXp-0003iZ-4a; Sun, 21 Jul 2019 12:02:25 +0000
To: openwrt-devel@lists.openwrt.org
Date: Sun, 21 Jul 2019 20:00:11 +0800
MIME-Version: 1.0
Message-ID: <mailman.10240.1563710526.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Robinson Wu via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Robinson Wu <wurobinson@qq.com>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Robinson Wu <wurobinson@qq.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] ramips: add support to JS7628 development
 board
Content-Type: multipart/mixed; boundary="===============8879737344787747169=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8879737344787747169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8879737344787747169==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from smtpbg520.qq.com ([203.205.250.49] helo=smtpbg.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hpAXK-0003gw-Mg
	for openwrt-devel@lists.openwrt.org; Sun, 21 Jul 2019 12:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1563710478; bh=h7ybGguFhbDGItETp16LNoXBEYBEjVW/NxF2LLBm5I0=;
	h=From:To:Subject:Date:Message-Id;
	b=LvyV2Yb02VVqWtkXDHdg9UUhxMbuY0c3TgwlnCuGoJYSkd6v2qRlhHiPCs1AVIzlz
	 Iy6aA1LlNbWI3TQRxG2hdKbUp9WebCK4ZtQ29zruj1yo4Y4GKokziW95VcSikU1Q69
	 esf+1H0zL2By5ioxgqj3ahsMo/7CNi8xeLn4KF0c=
X-QQ-mid: esmtp5t1563710477tc5waqvwn
Received: from localhost.localdomain (unknown [125.121.24.57])
	by esmtp4.qq.com (ESMTP) with 
	id ; Sun, 21 Jul 2019 20:01:16 +0800 (CST)
X-QQ-SSF: B1000000000000F0FH100F00000000Z
X-QQ-FEAT: jfJxHuYZxOAnSQB0RsqFfnFsRW/cYG348sZ26tt9DFMYxfxj3wGXrSoL+uCVP
	qtCyObqiU1DuK4+NDDUk9NoT/iy1V95UMgneJ44yv16IyDArAkwuAVVRwclIYzo5S6mWD/Q
	K7H7x8PJDhV4qTfFUdksYkvxOkzB1rIE21HmKVuRqtzTCFp4DXe315J3hBoL51MqkHEoZVm
	tXtQw3RUVdpNlmYMiNdrGdQKUAvN1xMu6rnN+RgBH1CJNkHwlRRjjeW6y7XL91n5aMtOn80
	fsJ1I8sw/A3uv5fT7UbJB0SzQPAR1/tARsF5DEh+zGp/UmEVtWCw+yNWw=
X-QQ-GoodBg: 0
From: Robinson Wu <wurobinson@qq.com>
To: openwrt-devel@lists.openwrt.org
Cc: Robinson Wu <wurobinson@qq.com>
Subject: [PATCH] ramips: add support to JS7628 development board
Date: Sun, 21 Jul 2019 20:00:11 +0800
Message-Id: <1563710411-54574-1-git-send-email-wurobinson@qq.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: esmtp:qq.com:bgweb:bgweb5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_050156_961013_335E2475 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (wurobinson[at]qq.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

This commit adds support for the ZhuoTK JS7628 development board,
The device has the following specifications:

- SOC:MT7628AN/NN
- RAM:64/128/256 MB (DDR2)
- FLASH:8/16/32 MB (SPI NOR)
- Ethernet:3x 10/100 Mbps ethernet ports (MT7628 built-in switch)
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

1. Power on board with reset button or key1 button pressed, release it
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

   "ZhuoTK JS7628 8M flash/64M RAM"
   "ZhuoTK JS7628 16M flash/128M RAM"
   "ZhuoTK JS7628 32M flash/256M RAM"

   to fit the board you have.

Vist www.zhuotk.com for further information.

Signed-off-by: Robinson Wu <wurobinson@qq.com>
---
 target/linux/ramips/base-files/etc/board.d/01_leds |  6 ++
 .../linux/ramips/base-files/etc/board.d/02_network |  3 +
 .../ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts | 61 +++++++++++++++++
 .../ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts | 61 +++++++++++++++++
 .../ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts   | 61 +++++++++++++++++
 .../linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi   | 80 ++++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                | 33 +++++++++
 7 files changed, 305 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 57f0939..0d876c4 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -458,6 +458,12 @@ zbtlink,zbt-we1226)
 	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x02"
 	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x10"
 	;;
+zhuotk,js7628-8m-64m|\
+zhuotk,js7628-16m-128m|\
+zhuotk,js7628-32m-256m)
+	ucidef_set_led_timer "system" "system" "js76x8:green:system" "1000" "1000"
+	set_wifi_led "js76x8:green:wifi"
+	;;
 zorlik,zl5900v2)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
 	;;
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index a2b7d1c..f438b46 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -103,6 +103,9 @@ ramips_setup_interfaces()
 	zbtlink,zbt-wg3526-16m|\
 	zbtlink,zbt-wg3526-32m|\
 	zbtlink,zbt-wr8305rt|\
+	zhuotk,js7628-8m-64m|\
+	zhuotk,js7628-16m-128m|\
+	zhuotk,js7628-32m-256m|\
 	zyxel,keenetic|\
 	zyxel,keenetic-omni)
 		ucidef_add_switch "switch0" \
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts
new file mode 100644
index 0000000..397cd01
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts
@@ -0,0 +1,61 @@
+/dts-v1/;
+
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js7628-16m-128m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS7628 (16M flash/128M RAM)";
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
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts
new file mode 100644
index 0000000..10970ea
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts
@@ -0,0 +1,61 @@
+/dts-v1/;
+
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js7628-32m-256m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS7628 (32M flash/256M RAM)";
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
diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts
new file mode 100644
index 0000000..66db75f
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts
@@ -0,0 +1,61 @@
+/dts-v1/;
+
+
+#include "mt7628an_zhuotk_js76x8.dtsi"
+
+/ {
+	compatible = "zhuotk,js7628-8m-64m", "zhuotk,js76x8", "mediatek,mt7628an-soc";
+	model = "ZhuoTK JS7628 (8M flash/64M RAM)";
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
index 0000000..0dcfd10
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
@@ -0,0 +1,80 @@
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "zhuotk,js76x8", "mediatek,mt7628an-soc";
+
+        aliases {
+                led-boot = &led_system;
+                led-failsafe = &led_system;
+                led-running = &led_system;
+                led-upgrade = &led_system;
+        };
+
+        chosen {
+                bootargs = "console=ttyS0,115200";
+        };
+
+        gpio-leds {
+                compatible = "gpio-leds";
+
+                led_system: system {
+                        label = "js76x8:green:system";
+                        gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
+                };
+
+                wifi {
+                        label = "js76x8:green:wifi";
+                        gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
+                };
+        };
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RESTART>;
+                };
+        };
+};
+
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "gpio","wdt","pwm0","pwm1","spis",
+				"refclk";
+			ralink,function = "gpio";
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
index fae9fb0..f97d78a 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -549,6 +549,39 @@ define Device/zbtlink_zbt-we1226
 endef
 TARGET_DEVICES += zbtlink_zbt-we1226
 
+define Device/zhuotk_js7628-8m-64m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := $(ralink_default_fw_size_8M)
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS7628
+  DEVICE_VARIANT := 8M flash/64M RAM
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+  SUPPORTED_DEVICES += js7628-8m-64m js7688-8m-64m ztk7628p-8m-64m
+endef
+TARGET_DEVICES += zhuotk_js7628-8m-64m
+
+define Device/zhuotk_js7628-16m-128m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS7628
+  DEVICE_VARIANT := 16M flash/128M RAM
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+  SUPPORTED_DEVICES += js7628-16m-128m js7688-16m-128m ztk7628p-16m-64m
+endef
+TARGET_DEVICES += zhuotk_js7628-16m-128m
+
+define Device/zhuotk_js7628-32m-256m
+  MTK_SOC := mt7628an
+  IMAGE_SIZE := $(ralink_default_fw_size_32M)
+  DEVICE_VENDOR := ZhuoTK
+  DEVICE_MODEL := JS7628
+  DEVICE_VARIANT := 32M flash/256M RAM
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci
+  SUPPORTED_DEVICES += js7628-32m-256 js7688-32m-256m ztk7628p-32m-64m
+endef
+TARGET_DEVICES += zhuotk_js7628-32m-256m
+
 define Device/zyxel_keenetic-extra-ii
   MTK_SOC := mt7628an
   IMAGE_SIZE := 14912k
-- 
2.7.4



--===============8879737344787747169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8879737344787747169==--
