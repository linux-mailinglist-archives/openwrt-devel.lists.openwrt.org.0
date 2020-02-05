Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C271535EB
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Feb 2020 18:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l69ILrxBor2QEJnEb9DZ5//otIzdMhuYiXoIy/GR9As=; b=XOqOTD2yWRd1A6
	vaJ5uiqHdjten6gJMDdolI0oBuV6B5ryLpl8RHfUeV9cWNccl1Z3a4Af2NskDiykp/N1MSXvqgxIL
	h+0jkwoQSJb657y5Fe79hsfk4V6wHKGIEbgflhQIwv5JYvsi8aq4+HFWCsxkJ1IsmbsTKUESDjg6N
	TtDcG5fIAR8zXQGOPo7WdVtmsV02SVCeYYkw9K/6JKekRKXpgAjs5CaTHYiXdIg5no+mfkNoAFKa7
	EEGxR1Z95c3Q/XVt/uwsidtbJE6Ev++5pxOlL7bPpJN4F+BOjWk2rBy0q2fzzqutc5FpGFaUxlXb5
	bq3mlNCR1hihqYkPAoKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izO8w-0000cD-7v; Wed, 05 Feb 2020 17:07:14 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izO8n-0000bc-HW
 for openwrt-devel@lists.openwrt.org; Wed, 05 Feb 2020 17:07:07 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1izO8m-00025K-1p; Wed, 05 Feb 2020 18:07:04 +0100
Date: Wed, 5 Feb 2020 19:06:51 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200205170651.GA879610@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_090705_908583_7B261299 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for Teltonika RUT955
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 Piotr Dymacz <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Specification:

- 550/400/200 MHz (CPU/DDR/AHB)
- 128 MB of RAM (DDR2)
- 16 MB of FLASH (SPI NOR)
- 4x 10/100 Mbps Ethernet, with passive PoE support on LAN1
- 2T2R 2,4 GHz (AR9344)
- built-in 3G module (example: Quectel EC-25EU)
- internal microSD slot (spi-mmc, buggy)
- RS232 on D-Sub9 port (Cypress ACM via USB, /dev/ttyACM0)
- RS422/RS485 (AR934x high speed UART, /dev/ttyATH1)
- analog 0-24V input (MCP3221)
- various digital inputs and outputs incl. a relay
- 12x LED (4 are driven by AR9344, 7 by 74HC595)
- 2x miniSIM slot (can be swapped via GPIO)
- 2x RP-SMA/F (Wi-Fi), 3x SMA/F (2x WWAN, GPS)
- 1x button (reset)
- DC jack for main power input (9-30 V)
- debugging UART available on PCB edge connector

Serial console (/dev/ttyS0) pinout:

- RX: pin1 (square) on top side of the main PCB (AR9344 is on top)
- TX: pin1 (square) on bottom side

Flash instruction:

Vendor firmware is based on OpenWrt CC release. Use the "factory" image
directly in GUI (make sure to uncheck "keep settings") or in U-Boot web
based recovery. To avoid any problems, make sure to first update vendor
firmware to latest version - "factory" image was successfully tested on
device running "RUT9XX_R_00.06.051" firmware and U-Boot "3.0.2".

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 .../ath79/dts/ar9344_teltonika_rut955.dts     | 345 ++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network |   5 +
 .../base-files/etc/board.d/03_gpio_switches   |   8 +
 target/linux/ath79/image/generic.mk           |  38 ++
 4 files changed, 396 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9344_teltonika_rut955.dts

diff --git a/target/linux/ath79/dts/ar9344_teltonika_rut955.dts b/target/linux/ath79/dts/ar9344_teltonika_rut955.dts
new file mode 100644
index 0000000000..382b2fc950
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_teltonika_rut955.dts
@@ -0,0 +1,345 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	model = "Teltonika RUT955";
+	compatible = "teltonika,rut955", "qca,ar9344";
+
+	aliases {
+		serial0 = &uart;
+		serial1 = &hs_uart;
+		led-boot = &led_system_green;
+		led-failsafe = &led_system_red;
+		led-running = &led_system_green;
+		led-upgrade = &led_system_red;
+		label-mac-device = &eth1;
+	};
+
+	i2c {
+		compatible = "i2c-gpio";
+		scl-gpios = <&gpio 16 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		sda-gpios = <&gpio 17 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		hwmon@4d {
+			compatible = "microchip,mcp3221";
+			reg = <0x4d>;
+		};
+	};
+
+	gpio_ext_spi {
+		compatible = "spi-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmx_led_spi_gpio>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		sck-gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;     // 74HC595 SRCLK (Serial Clock)
+		mosi-gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;   // 74HC595 SER (Serial)
+		cs-gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;     // 74HC595 RCLK (Register Clock)
+		num-chipselects = <1>;
+
+		gpio_ext: gpio_ext@0 {
+			compatible = "fairchild,74hc595";
+			reg = <0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			registers-number = <2>;
+			spi-max-frequency = <10000000>;
+			gpio-line-names = "led_signal_bar1", "led_signal_bar2", "led_signal_bar3", "led_signal_bar4",
+				"led_signal_bar5", "led_status_red", "led_status_green", "sim_sel",
+				"DOUT1", "DOUT2", "modem_vbus", "modem_rst",
+				"DOUT3", "RS485_R", "SDCS", "HWRST";
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		signal0 {
+			label = "rut955:green:signal1";
+			gpios = <&gpio_ext 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		signal1 {
+			label = "rut955:green:signal2";
+			gpios = <&gpio_ext 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		signal2 {
+			label = "rut955:green:signal3";
+			gpios = <&gpio_ext 2 GPIO_ACTIVE_HIGH>;
+		};
+
+		signal3 {
+			label = "rut955:green:signal4";
+			gpios = <&gpio_ext 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		signal4 {
+			label = "rut955:green:signal5";
+			gpios = <&gpio_ext 4 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_system_red: system_red {
+			label = "rut955:red:system";
+			gpios = <&gpio_ext 5 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_system_green: system_green {
+			label = "rut955:green:system";
+			gpios = <&gpio_ext 6 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+};
+
+&gpio {
+	gpio-line-names = "RS485_D", "wan_led", "DIN3", "mmc_cs",
+		"leds_sck", "", "", "",
+		"", "", "", "",
+		"leds_mosi", "lan2_led", "lan1_led", "",
+		"i2c_scl", "i2c_sda", "", "DIN2",
+		"leds_cs", "DIN1", "lan3_led", "",
+		"", "", "", "",
+		"", "", "", "";
+
+	gpio_mmc_cs {
+		gpio-hog;
+		gpios = <3 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "rut955:mmc:cs";
+	};
+
+	gpio_uart1_td {
+		gpio-hog;
+		gpios = <18 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "rut955:uart1:td";
+	};
+
+	gpio_uart1_rd {
+		gpio-hog;
+		gpios = <11 GPIO_ACTIVE_LOW>;
+		input;
+		line-name = "rut955:uart1:rd";
+	};
+
+	gpio_switch_led1 {
+		gpio-hog;
+		gpios = <1 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "rut955:led:wan";
+	};
+
+	gpio_switch_led2 {
+		gpio-hog;
+		gpios = <13 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "rut955:led:lan2";
+	};
+
+	gpio_switch_led3 {
+		gpio-hog;
+		gpios = <14 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "rut955:led:lan1";
+	};
+
+	gpio_switch_led4 {
+		gpio-hog;
+		gpios = <22 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "rut955:led:lan3";
+	};
+};
+
+&ref {
+	clock-frequency = <40000000>;
+};
+
+&uart {
+	status = "okay";
+};
+
+&hs_uart {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmx_uart2>;
+
+	rts-gpios = <&gpio_ext 13 GPIO_ACTIVE_HIGH>;
+	dtr-gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+
+	linux,rs485-enabled-at-boot-time;
+};
+
+&spi {
+	status = "okay";
+
+	cs-gpios = <0>, <0>;
+	num-cs = <2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&jtag_disable_pins>, <&pmx_spi_cs1>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x20000>;
+				read-only;
+			};
+
+			config: partition@20000 {
+				label = "config";
+				reg = <0x20000 0x10000>;
+				read-only;
+			};
+
+			art: partition@30000 {
+				label = "art";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "firmware";
+				reg = <0x40000 0xf30000>;
+				compatible = "tplink,firmware";
+			};
+
+			partition@f70000 {
+				label = "event-log";
+				reg = <0xf70000 0x90000>;
+				read-only;
+			};
+		};
+	};
+
+	microsd@1 {
+		compatible = "mmc-spi-slot";
+		spi-max-frequency = <25000000>;
+		reg = <1>;
+		voltage-ranges = <3200 3400>;
+		broken-cd;
+		status = "disabled";
+	};
+};
+
+&usb {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	port@1 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <1>;
+
+		port@1 {
+			compatible = "usb-a-connector";
+			label = "USB2.0 port";
+			reg = <1>;
+		};
+
+		port@3 {
+			label = "internal Cypress CDC-ACM serial";
+			reg = <3>;
+		};
+
+		port@4 {
+			label = "internal Quectel EC-25 modem";
+			reg = <4>;
+		};
+	};
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&wmac {
+	status = "okay";
+
+	mtd-cal-data = <&art 0x1000>;
+	mtd-mac-address = <&config 0x0>;
+	mtd-mac-address-increment = <2>;
+};
+
+&eth0 {
+	status = "okay";
+
+	phy-handle = <&swphy4>;
+
+	mtd-mac-address = <&config 0x0>;
+	mtd-mac-address-increment = <1>;
+};
+
+&eth1 {
+	status = "okay";
+
+	mtd-mac-address = <&config 0x0>;
+
+	gmac-config {
+		device = <&gmac>;
+	};
+};
+
+&builtin_switch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmx_leds_switch>;
+};
+
+&pinmux {
+	pmx_spi_cs1: pinmux_spi_cs1 {
+		// SPI_CS1 on GPIO 3
+		pinctrl-single,bits = <0x0 0x07000000 0xff000000>;
+	};
+
+	pmx_led_spi_gpio: pinmux_led_spi_gpio {
+		// spi-gpio for LEDs on GPIO 4, GPIO 12 and GPIO 20
+		pinctrl-single,bits = <0x4 0x0 0xff>,
+					<0xc 0x0 0xff>,
+					<0x14 0x0 0xff>;
+	};
+
+	pmx_leds_switch: pinmux_leds_switch {
+		// switch port LEDs on GPIO 1, GPIO 13, GPIO 14 and GPIO 22
+		pinctrl-single,bits =  <0x0 0x00002d00 0x0000ff00>,
+					<0xc 0x002c2b00 0x00ffff00>,
+					<0x14 0x002a0000 0x00ff0000>;
+	};
+
+	pmx_uart2: pinmux_uart2 {
+		// UART1_DTR on GPIO 0, UART1_RD on GPIO 11, UART1_TD on GPIO 18
+		pinctrl-single,bits = <0x0 0x0 0xff>,
+				<0x10 0x4f000000 0xff000000>,
+				<0x3c 0x000b0000 0x00ff0000>;
+	};
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index a3fcf35715..6ba782f89b 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -217,6 +217,11 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan" "2:lan" "3:wan"
 		;;
+	teltonika,rut955)
+		ucidef_set_interface_wan "eth1"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "2:lan:3" "3:lan:2" "4:lan:1"
+		;;
 	tplink,archer-a7-v5|\
 	tplink,archer-c6-v2|\
 	tplink,archer-c6-v2-us|\
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/03_gpio_switches b/target/linux/ath79/generic/base-files/etc/board.d/03_gpio_switches
index 967e2c7680..b5b46f16bf 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/03_gpio_switches
+++ b/target/linux/ath79/generic/base-files/etc/board.d/03_gpio_switches
@@ -38,6 +38,14 @@ dlink,dir-835-a1)
 librerouter,librerouter-v1)
 	ucidef_add_gpio_switch "poe_passthrough" "PoE Passthrough" "1" "0"
 	;;
+teltonika,rut955)
+	ucidef_add_gpio_switch "sim_sel" "SIM select" "503" "1"
+	ucidef_add_gpio_switch "DOUT1" "DOUT1 (OC)" "504" "0"
+	ucidef_add_gpio_switch "DOUT2" "DOUT2 (Relay)" "505" "0"
+	ucidef_add_gpio_switch "modem_vbus" "Modem enable" "506" "1"
+	ucidef_add_gpio_switch "modem_rst" "Modem reset" "507" "0"
+	ucidef_add_gpio_switch "DOUT3" "DOUT3" "508" "0"
+	;;
 tplink,archer-c25-v1)
 	ucidef_add_gpio_switch "led_control" "LED control" "21" "0"
 	ucidef_add_gpio_switch "led_reset" "LED reset" "19" "1"
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 3c74b0f7d7..3447871385 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -36,6 +36,11 @@ define Build/addpattern
 	-mv "$@.new" "$@"
 endef
 
+define Build/append-md5sum-bin
+	$(STAGING_DIR_HOST)/bin/mkhash md5 $@ | sed 's/../\\\\x&/g' |\
+		xargs echo -ne >> $@
+endef
+
 define Build/cybertan-trx
 	@echo -n '' > $@-empty.bin
 	-$(STAGING_DIR_HOST)/bin/trx -o $@.new \
@@ -73,6 +78,17 @@ define Build/pisen_wmb001n-factory
   rm -rf "$@.tmp"
 endef
 
+define Build/teltonika-fw-fake-checksum
+	# Teltonika U-Boot web based firmware upgrade/recovery routine compares
+	# 16 bytes from md5sum1[16] field in TP-Link v1 header (offset: 76 bytes
+	# from begin of the firmware file) with 16 bytes stored just before
+	# 0xdeadc0de marker. Values are only compared, MD5 sum is not verified.
+	let \
+		offs="$$(stat -c%s $@) - 20"; \
+		dd if=$@ bs=1 count=16 skip=76 |\
+		dd of=$@ bs=1 count=16 seek=$$offs conv=notrunc
+endef
+
 define Device/seama
   KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma
   KERNEL_INITRAMFS := $$(KERNEL) | seama
@@ -1054,6 +1070,28 @@ define Device/sitecom_wlr-7100
 endef
 TARGET_DEVICES += sitecom_wlr-7100
 
+define Device/teltonika_rut955
+  SOC := ar9344
+  DEVICE_VENDOR := Teltonika
+  DEVICE_MODEL := RUT955
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-acm kmod-usb-net-qmi-wwan \
+	kmod-usb-serial-option kmod-hwmon-mcp3021 uqmi -uboot-envtools
+  IMAGE_SIZE := 15552k
+  TPLINK_HWID := 0x35000001
+  TPLINK_HWREV := 0x1
+  TPLINK_HEADER_VERSION := 1
+  KERNEL := kernel-bin | append-dtb | lzma | tplink-v1-header
+  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | uImage lzma
+  IMAGES += factory.bin
+  IMAGE/factory.bin := append-kernel | pad-to $$$$(BLOCKSIZE) | append-rootfs |\
+	pad-rootfs | teltonika-fw-fake-checksum | append-string master |\
+	append-md5sum-bin | check-size $$$$(IMAGE_SIZE)
+  IMAGE/sysupgrade.bin := append-kernel | pad-to $$$$(BLOCKSIZE) |\
+	append-rootfs | pad-rootfs | append-metadata |\
+	check-size $$$$(IMAGE_SIZE)
+endef
+TARGET_DEVICES += teltonika_rut955
+
 define Device/trendnet_tew-823dru
   SOC := qca9558
   DEVICE_VENDOR := Trendnet
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
