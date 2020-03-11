Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA59E181BF4
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 16:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hDSyMosLdgfhHfCwTezsJJw1pbE/4wsb7od/L3czt9g=; b=Y389RNdK/cpxap
	/vjCW5g+7YH4dMGOdRw6tjAZ9IlC0qnKv3jdOFOVpUc1e9I5vNAvc/O5OEK0MNWZg1tx/nOSwKxvf
	FmZe5ZpMzuFxrL6B4Y0Z+hLc77U12yPR2JZ7yQ0i+cVpJaGrJm6N6wnSYacse1STV+ETiPRUt99JA
	4blvCfcNap3dd3aBHI4r0A6zur3klQEP1rPQA/XlbAmaaINV+Fw0BY86tqATsZidqUdsuFZjPYUyt
	D/cHhGMAAEpTRCdX1rtCeqCIn96BIFzbCOk8SZYTbIC+7/oE0MCBQfXGQyrU3Qhxjj1Evpi5HcY2E
	xfR+O1OsgrdsHK0dm2Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2tG-0005W0-7U; Wed, 11 Mar 2020 15:03:22 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2t1-0005Vj-RT
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 15:03:11 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jC2uB-0008RK-VW; Wed, 11 Mar 2020 15:04:20 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Date: Wed, 11 Mar 2020 08:02:58 -0700
Message-Id: <1583938978-16646-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-Spam-Note: CRM114 run bypassed due to message size (110596 bytes)
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] imx6: add support for
 GW5907/GW5910/GW5912/GW5913
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds support for GW5907/GW5910/GW5912/GW5913 IMX6 based boards
from the Gateworks Ventana Family[A]:
- backport upstream dt patches from 5.6 to 4.19 and 5.4
- add dtb's to ventana images
- add board-name and network config

A. https://www.gateworks.com/products/imx6-single-board-computer-gateworks-ventana-family

Flashing instructions for Ventana boards:

Using pre-flashed bootloader:
- Use appropriate ubi image depending on board NAND to flash via bootloader:
	openwrt-imx6-ventana-squashfs-nand.ubi - 2KiB page size
	openwrt-imx6-ventana-large-squashfs-nand.ubi - 4KiB page size
	http://trac.gateworks.com/wiki/linux/ubi

Using Gateworks JTAG dongle:
- Use Gateworks mkimage_jtag script to create a JTAG image comprised of
	pre-built bootloader and ubi image:
	http://trac.gateworks.com/wiki/jtag_instructions

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
v2:
 - more descriptive commit log
 - add dtb's to ventana images
 - add 5.4 support
---
 .../linux/imx6/base-files/etc/board.d/02_network   |   6 +-
 target/linux/imx6/base-files/lib/imx6.sh           |  20 +
 target/linux/imx6/image/Makefile                   |  10 +-
 .../001-ARM-dts-imx-Add-GW5907-board-support.patch | 496 +++++++++++++++++
 .../002-ARM-dts-imx-Add-GW5910-board-support.patch | 597 +++++++++++++++++++++
 .../003-ARM-dts-imx-Add-GW5913-board-support.patch | 449 ++++++++++++++++
 .../004-ARM-dts-imx-Add-GW5912-board-support.patch | 565 +++++++++++++++++++
 .../001-ARM-dts-imx-Add-GW5907-board-support.patch | 496 +++++++++++++++++
 .../002-ARM-dts-imx-Add-GW5910-board-support.patch | 597 +++++++++++++++++++++
 .../003-ARM-dts-imx-Add-GW5913-board-support.patch | 449 ++++++++++++++++
 .../004-ARM-dts-imx-Add-GW5912-board-support.patch | 565 +++++++++++++++++++
 11 files changed, 4248 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/imx6/patches-4.19/001-ARM-dts-imx-Add-GW5907-board-support.patch
 create mode 100644 target/linux/imx6/patches-4.19/002-ARM-dts-imx-Add-GW5910-board-support.patch
 create mode 100644 target/linux/imx6/patches-4.19/003-ARM-dts-imx-Add-GW5913-board-support.patch
 create mode 100644 target/linux/imx6/patches-4.19/004-ARM-dts-imx-Add-GW5912-board-support.patch
 create mode 100644 target/linux/imx6/patches-5.4/001-ARM-dts-imx-Add-GW5907-board-support.patch
 create mode 100644 target/linux/imx6/patches-5.4/002-ARM-dts-imx-Add-GW5910-board-support.patch
 create mode 100644 target/linux/imx6/patches-5.4/003-ARM-dts-imx-Add-GW5913-board-support.patch
 create mode 100644 target/linux/imx6/patches-5.4/004-ARM-dts-imx-Add-GW5912-board-support.patch

diff --git a/target/linux/imx6/base-files/etc/board.d/02_network b/target/linux/imx6/base-files/etc/board.d/02_network
index 48e5f0f..bc05313 100755
--- a/target/linux/imx6/base-files/etc/board.d/02_network
+++ b/target/linux/imx6/base-files/etc/board.d/02_network
@@ -13,7 +13,11 @@ case "$board" in
 cubox-i |\
 gw51xx |\
 gw52xx |\
-gw5904)
+gw5904 |\
+gw5907 |\
+gw5910 |\
+gw5912 |\
+gw5913)
 	ucidef_set_interface_lan 'eth0'
 	;;
 gw53xx |\
diff --git a/target/linux/imx6/base-files/lib/imx6.sh b/target/linux/imx6/base-files/lib/imx6.sh
index 68caaff..63fff0f 100755
--- a/target/linux/imx6/base-files/lib/imx6.sh
+++ b/target/linux/imx6/base-files/lib/imx6.sh
@@ -81,6 +81,26 @@ imx6_board_detect() {
 		name="gw5904"
 		;;
 
+	"Gateworks Ventana i.MX6 DualLite/Solo GW5907" |\
+	"Gateworks Ventana i.MX6 Dual/Quad GW5907")
+		name="gw5907"
+		;;
+
+	"Gateworks Ventana i.MX6 DualLite/Solo GW5910" |\
+	"Gateworks Ventana i.MX6 Dual/Quad GW5910")
+		name="gw5910"
+		;;
+
+	"Gateworks Ventana i.MX6 DualLite/Solo GW5912" |\
+	"Gateworks Ventana i.MX6 Dual/Quad GW5912")
+		name="gw5912"
+		;;
+
+	"Gateworks Ventana i.MX6 DualLite/Solo GW5913" |\
+	"Gateworks Ventana i.MX6 Dual/Quad GW5913")
+		name="gw5913"
+		;;
+
 	"SolidRun Cubox-i Solo/DualLite" |\
 	"SolidRun Cubox-i Dual/Quad")
 		name="cubox-i"
diff --git a/target/linux/imx6/image/Makefile b/target/linux/imx6/image/Makefile
index d1e9e90..232dc42 100644
--- a/target/linux/imx6/image/Makefile
+++ b/target/linux/imx6/image/Makefile
@@ -143,6 +143,10 @@ define Device/ventana
 	imx6dl-gw552x \
 	imx6dl-gw553x \
 	imx6dl-gw5904 \
+	imx6dl-gw5907 \
+	imx6dl-gw5910 \
+	imx6dl-gw5912 \
+	imx6dl-gw5913 \
 	imx6q-gw51xx \
 	imx6q-gw52xx \
 	imx6q-gw53xx \
@@ -151,7 +155,11 @@ define Device/ventana
 	imx6q-gw551x \
 	imx6q-gw552x \
 	imx6q-gw553x \
-	imx6q-gw5904
+	imx6q-gw5904 \
+	imx6q-gw5907 \
+	imx6q-gw5910 \
+	imx6q-gw5912 \
+	imx6q-gw5913
   DEVICE_PACKAGES := kmod-sky2 kmod-sound-core kmod-sound-soc-imx kmod-sound-soc-imx-sgtl5000 \
 	kmod-can kmod-can-flexcan kmod-can-raw \
 	kmod-hwmon-gsc \
diff --git a/target/linux/imx6/patches-4.19/001-ARM-dts-imx-Add-GW5907-board-support.patch b/target/linux/imx6/patches-4.19/001-ARM-dts-imx-Add-GW5907-board-support.patch
new file mode 100644
index 0000000..a4e9604
--- /dev/null
+++ b/target/linux/imx6/patches-4.19/001-ARM-dts-imx-Add-GW5907-board-support.patch
@@ -0,0 +1,496 @@
+From 125120298dc05bb55a8874f07aa3f4bb6056bfb3 Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:21 -0800
+Subject: [PATCH 1/4] ARM: dts: imx: Add GW5907 board support
+
+The Gateworks GW5907 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - FEC GbE Phy
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+ - Digital IO expander (pca9555)
+ - Joystick 12bit adc (ads1015)
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Reviewed-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5907.dts   |  14 ++
+ arch/arm/boot/dts/imx6q-gw5907.dts    |  14 ++
+ arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 399 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 429 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5907.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5907.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5907.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 1e9e1af..9ee80e2 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -422,6 +422,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw560x.dtb \
+ 	imx6dl-gw5903.dtb \
+ 	imx6dl-gw5904.dtb \
++	imx6dl-gw5907.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+ 	imx6dl-hummingboard-som-v15.dtb \
+@@ -493,6 +494,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw560x.dtb \
+ 	imx6q-gw5903.dtb \
+ 	imx6q-gw5904.dtb \
++	imx6q-gw5907.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+ 	imx6q-hummingboard-emmc-som-v15.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5907.dts b/arch/arm/boot/dts/imx6dl-gw5907.dts
+new file mode 100644
+index 00000000..3fa2822
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5907.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5907.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5907";
++	compatible = "gw,imx6dl-gw5907", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5907.dts b/arch/arm/boot/dts/imx6q-gw5907.dts
+new file mode 100644
+index 00000000..b25526e
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5907.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5907.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5907";
++	compatible = "gw,imx6q-gw5907", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
+new file mode 100644
+index 00000000..0bdebdd
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
+@@ -0,0 +1,399 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		nand = &gpmi;
++		usb0 = &usbh1;
++		usb1 = &usbotg;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x20000000>;
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio1 26 GPIO_ACTIVE_HIGH>;
++		status = "okay";
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_5p0v: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "5P0V";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++
++	reg_usb_otg_vbus: regulator-usb-otg-vbus {
++		compatible = "regulator-fixed";
++		regulator-name = "usb_otg_vbus";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
++		enable-active-high;
++	};
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	phy-reset-gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&hdmi {
++	ddc-i2c-bus = <&i2c3>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++
++	gpio@20 {
++		compatible = "nxp,pca9555";
++		reg = <0x20>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	adc@48 {
++		compatible = "ti,ads1015";
++		reg = <0x48>;
++		#address-cells = <1>;
++		#size-cells = <0>;
++
++		channel@4 {
++			reg = <4>;
++			ti,gain = <0>;
++			ti,datarate = <5>;
++		};
++
++		channel@5 {
++			reg = <5>;
++			ti,gain = <0>;
++			ti,datarate = <5>;
++		};
++
++		channel@6 {
++			reg = <6>;
++			ti,gain = <0>;
++			ti,datarate = <5>;
++		};
++	};
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++&pwm4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm4>; /* MX6_DIO3 */
++	status = "disabled";
++};
++
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	status = "okay";
++};
++
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++&uart3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart3>;
++	status = "okay";
++};
++
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	vbus-supply = <&reg_usb_otg_vbus>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	status = "okay";
++};
++
++&usbh1 {
++	status = "okay";
++};
++
++&wdog1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++};
++
++&iomuxc {
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
++			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x1b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06		0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
++			MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x1b0b0
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm4: pwm4grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_CMD__PWM4_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart3: uart3grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
++			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
++			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x1b0b0
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-4.19/002-ARM-dts-imx-Add-GW5910-board-support.patch b/target/linux/imx6/patches-4.19/002-ARM-dts-imx-Add-GW5910-board-support.patch
new file mode 100644
index 0000000..aade765
--- /dev/null
+++ b/target/linux/imx6/patches-4.19/002-ARM-dts-imx-Add-GW5910-board-support.patch
@@ -0,0 +1,597 @@
+From a1fb69366bb16753f0fba6a891fbef5cdd97cfbe Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:22 -0800
+Subject: [PATCH 2/4] ARM: dts: imx: Add GW5910 board support
+
+The Gateworks GW5910 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - FEC GbE RJ45 front-panel
+ - 1x miniPCIe socket with PCI Gen2, USB2
+ - 1x miniPCIe socket with PCI Gen2, USB2, nanoSIM
+ - 5V to 60V DC input barrel jack
+ - 3axis accelerometer (lis2de12)
+ - GPS (ublox ZOE-M8Q)
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - microSD socket (with UHS-I support)
+ - user pushbutton
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+ - Dual-Band Wireless MCU (CC1352, UART/I2S interrconnect to IMX6)
+ - WiFi/Bluetooth/BLE module (Sterling-LSW, SDIO/UART interconnect to IMX6)
+ - RS232 transceiver (1x UART with flow-control or 2x UART (build option)
+ - off-board SPI connector (1x chip-select)
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5910.dts   |  14 +
+ arch/arm/boot/dts/imx6q-gw5910.dts    |  14 +
+ arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 491 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 521 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5910.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5910.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 9ee80e2..85e53cc 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -423,6 +423,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw5903.dtb \
+ 	imx6dl-gw5904.dtb \
+ 	imx6dl-gw5907.dtb \
++	imx6dl-gw5910.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+ 	imx6dl-hummingboard-som-v15.dtb \
+@@ -495,6 +496,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw5903.dtb \
+ 	imx6q-gw5904.dtb \
+ 	imx6q-gw5907.dtb \
++	imx6q-gw5910.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+ 	imx6q-hummingboard-emmc-som-v15.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5910.dts b/arch/arm/boot/dts/imx6dl-gw5910.dts
+new file mode 100644
+index 00000000..0d5e7e5
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5910.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5910.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5910";
++	compatible = "gw,imx6dl-gw5910", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5910.dts b/arch/arm/boot/dts/imx6q-gw5910.dts
+new file mode 100644
+index 00000000..6aafa2f
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5910.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5910.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5910";
++	compatible = "gw,imx6q-gw5910", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+new file mode 100644
+index 00000000..be1af74
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+@@ -0,0 +1,491 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		led2 = &led2;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x20000000>;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++
++		led2: user3 {
++			label = "user3";
++			gpios = <&gpio4 15 GPIO_ACTIVE_LOW>; /* MX6_LOCLED# */
++			default-state = "off";
++		};
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio4 16 GPIO_ACTIVE_HIGH>;
++		status = "okay";
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_5p0v: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "5P0V";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++
++	reg_wl: regulator-wl {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_reg_wl>;
++		compatible = "regulator-fixed";
++		regulator-name = "wl";
++		gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
++		startup-delay-us = <100>;
++		enable-active-high;
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_bt: regulator-bt {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_reg_bt>;
++		compatible = "regulator-fixed";
++		regulator-name = "bt";
++		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
++		startup-delay-us = <100>;
++		enable-active-high;
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++};
++
++
++&ecspi3 {
++	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_ecspi3>;
++	status = "okay";
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++
++	accel@19 {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_accel>;
++		compatible = "st,lis2de12";
++		reg = <0x19>;
++		st,drdy-int-pin = <1>;
++		interrupt-parent = <&gpio7>;
++		interrupts = <13 0>;
++		interrupt-names = "INT1";
++	};
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio3 20 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++/* off-board RS232 */
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	status = "okay";
++};
++
++/* serial console */
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++/* Sterling-LWB Bluetooth */
++&uart4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart4>;
++	uart-has-rtscts;
++	status = "okay";
++};
++
++/* GPS */
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	vbus-supply = <&reg_5p0v>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	status = "okay";
++};
++
++&usbh1 {
++	status = "okay";
++};
++
++/* Sterling-LWB SDIO WiFi */
++&usdhc2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usdhc2>;
++	vmmc-supply = <&reg_3p3v>;
++	non-removable;
++	bus-width = <4>;
++	status = "okay";
++};
++
++&usdhc3 {
++	pinctrl-names = "default", "state_100mhz", "state_200mhz";
++	pinctrl-0 = <&pinctrl_usdhc3>;
++	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
++	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
++	cd-gpios = <&gpio7 0 GPIO_ACTIVE_LOW>;
++	vmmc-supply = <&reg_3p3v>;
++	status = "okay";
++};
++
++&wdog1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++};
++
++&iomuxc {
++	pinctrl_accel: accelmuxgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b1
++		>;
++	};
++
++	pinctrl_ecspi3: escpi3grp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
++			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
++			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
++			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x100b1
++		>;
++	};
++
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
++			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x1b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06  0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07  0x1b0b0
++			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15  0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_reg_bt: regbtgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b1
++		>;
++	};
++
++	pinctrl_reg_wl: regwlgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart4: uart4grp {
++		fsl,pins = <
++			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT16__UART4_RTS_B	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT17__UART4_CTS_B	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x13059
++		>;
++	};
++
++	pinctrl_usdhc2: usdhc2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
++			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
++			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
++			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
++			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
++			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
++		>;
++	};
++
++	pinctrl_usdhc3: usdhc3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x17059 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x17059
++		>;
++	};
++
++	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170b9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x170b9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170b9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170b9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170b9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170b9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170b9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170b9
++		>;
++	};
++
++	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170f9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100f9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170f9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170f9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170f9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170f9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170f9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170f9
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-4.19/003-ARM-dts-imx-Add-GW5913-board-support.patch b/target/linux/imx6/patches-4.19/003-ARM-dts-imx-Add-GW5913-board-support.patch
new file mode 100644
index 0000000..2d242fb
--- /dev/null
+++ b/target/linux/imx6/patches-4.19/003-ARM-dts-imx-Add-GW5913-board-support.patch
@@ -0,0 +1,449 @@
+From 169e12f99cf9d5fce752564f32fd8df96461de43 Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:23 -0800
+Subject: [PATCH 3/4] ARM: dts: imx: Add GW5913 board support
+
+The Gateworks GW5913 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - FEC GbE RJ45 front-panel
+ - 1x miniPCIe socket with PCI Gen2, USB2
+ - 1x miniPCIe socket with PCI Gen2, USB2, nanoSIM
+ - 6V to 60V DC input connector
+ - GPS (ublox ZOE-M8Q)
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - nanoSIM socket
+ - user pushbutton
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Reviewed-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5913.dts   |  14 ++
+ arch/arm/boot/dts/imx6q-gw5913.dts    |  14 ++
+ arch/arm/boot/dts/imx6qdl-gw5913.dtsi | 348 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 378 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5913.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5913.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5913.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 85e53cc..5b059fc 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -424,6 +424,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw5904.dtb \
+ 	imx6dl-gw5907.dtb \
+ 	imx6dl-gw5910.dtb \
++	imx6dl-gw5913.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+ 	imx6dl-hummingboard-som-v15.dtb \
+@@ -497,6 +498,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw5904.dtb \
+ 	imx6q-gw5907.dtb \
+ 	imx6q-gw5910.dtb \
++	imx6q-gw5913.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+ 	imx6q-hummingboard-emmc-som-v15.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5913.dts b/arch/arm/boot/dts/imx6dl-gw5913.dts
+new file mode 100644
+index 00000000..b74e533
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5913.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5913.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5913";
++	compatible = "gw,imx6dl-gw5913", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5913.dts b/arch/arm/boot/dts/imx6q-gw5913.dts
+new file mode 100644
+index 00000000..6f511f1
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5913.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5913.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5913";
++	compatible = "gw,imx6q-gw5913", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
+new file mode 100644
+index 00000000..635c203
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
+@@ -0,0 +1,348 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		nand = &gpmi;
++		usb0 = &usbh1;
++		usb1 = &usbotg;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x20000000>;
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio7 0 GPIO_ACTIVE_HIGH>;
++		status = "okay";
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_5p0v: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "5P0V";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++&pwm4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm4>; /* MX6_DIO3 */
++	status = "disabled";
++};
++
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	status = "okay";
++};
++
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++&uart3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart3>;
++	status = "okay";
++};
++
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	status = "okay";
++};
++
++&usbh1 {
++	status = "okay";
++};
++
++&wdog1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++};
++
++&iomuxc {
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
++			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x1b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06		0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm4: pwm4grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_CMD__PWM4_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart3: uart3grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
++			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-4.19/004-ARM-dts-imx-Add-GW5912-board-support.patch b/target/linux/imx6/patches-4.19/004-ARM-dts-imx-Add-GW5912-board-support.patch
new file mode 100644
index 0000000..a47cb27
--- /dev/null
+++ b/target/linux/imx6/patches-4.19/004-ARM-dts-imx-Add-GW5912-board-support.patch
@@ -0,0 +1,565 @@
+From 9a820b55817011f53771e6bfebae5fe059f0a534 Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:24 -0800
+Subject: [PATCH 4/4] ARM: dts: imx: Add GW5912 board support
+
+The Gateworks GW5912 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - GbE RJ45 front-panel
+ - 4x miniPCIe socket with PCI Gen2, USB2
+ - 1x miniPCIe socket with PCI Gen2, USB2, mSATA
+ - 1x miniPCIe socket with PCI Gen2, USB2, mezzanine
+ - 10V to 60V DC input barrel jack
+ - 3axis accelerometer (lis2de12)
+ - GPS (ublox ZOE-M8Q)
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - nanoSIM/microSD socket (with UHS-I support)
+ - user pushbutton
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+ - CAN Bus transceiver (mcp2562)
+ - RS232 transceiver (1x UART with flow-control or 2x UART (build option)
+ - off-board SPI connector (1x chip-select)
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Reviewed-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5912.dts   |  13 +
+ arch/arm/boot/dts/imx6q-gw5912.dts    |  13 +
+ arch/arm/boot/dts/imx6qdl-gw5912.dtsi | 461 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 489 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5912.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5912.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5912.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 5b059fc..1a32a7d 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -424,6 +424,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw5904.dtb \
+ 	imx6dl-gw5907.dtb \
+ 	imx6dl-gw5910.dtb \
++	imx6dl-gw5912.dtb \
+ 	imx6dl-gw5913.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+@@ -498,6 +499,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw5904.dtb \
+ 	imx6q-gw5907.dtb \
+ 	imx6q-gw5910.dtb \
++	imx6q-gw5912.dtb \
+ 	imx6q-gw5913.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5912.dts b/arch/arm/boot/dts/imx6dl-gw5912.dts
+new file mode 100644
+index 00000000..5260e01
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5912.dts
+@@ -0,0 +1,13 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5912.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5912";
++	compatible = "gw,imx6dl-gw5912", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5912.dts b/arch/arm/boot/dts/imx6q-gw5912.dts
+new file mode 100644
+index 00000000..4dcbd94
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5912.dts
+@@ -0,0 +1,13 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5912.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5912";
++	compatible = "gw,imx6q-gw5912", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
+new file mode 100644
+index 00000000..8c57fd2
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
+@@ -0,0 +1,461 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		led2 = &led2;
++		nand = &gpmi;
++		usb0 = &usbh1;
++		usb1 = &usbotg;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++
++		led2: user3 {
++			label = "user3";
++			gpios = <&gpio4 15 GPIO_ACTIVE_LOW>; /* MX6_LOCLED# */
++			default-state = "off";
++		};
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x40000000>;
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_usb_vbus: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "usb_vbus";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++};
++
++&can1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_flexcan1>;
++	status = "okay";
++};
++
++&ecspi2 {
++	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_ecspi2>;
++	status = "okay";
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++
++	accel@19 {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_accel>;
++		compatible = "st,lis2de12";
++		reg = <0x19>;
++		st,drdy-int-pin = <1>;
++		interrupt-parent = <&gpio7>;
++		interrupts = <13 0>;
++		interrupt-names = "INT1";
++	};
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm1>; /* MX6_DIO0 */
++	status = "disabled";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++&pwm4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm4>; /* MX6_DIO3 */
++	status = "disabled";
++};
++
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	rts-gpios = <&gpio7 12 GPIO_ACTIVE_HIGH>;
++	status = "okay";
++};
++
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	vbus-supply = <&reg_usb_vbus>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	dr_mode = "host";
++	status = "okay";
++};
++
++&usbh1 {
++	vbus-supply = <&reg_usb_vbus>;
++	status = "okay";
++};
++
++&usdhc3 {
++	pinctrl-names = "default", "state_100mhz", "state_200mhz";
++	pinctrl-0 = <&pinctrl_usdhc3>;
++	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
++	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
++	cd-gpios = <&gpio7 0 GPIO_ACTIVE_LOW>;
++	vmmc-supply = <&reg_3p3v>;
++	no-1-8-v; /* firmware will remove if board revision supports */
++	status = "okay";
++};
++
++&wdog1 {
++	status = "disabled";
++};
++
++&wdog2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++	status = "okay";
++};
++
++&iomuxc {
++	pinctrl_accel: accelmuxgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b1
++		>;
++	};
++
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++		>;
++	};
++
++	pinctrl_ecspi2: escpi2grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK	0x100b1
++			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI	0x100b1
++			MX6QDL_PAD_EIM_OE__ECSPI2_MISO	0x100b1
++			MX6QDL_PAD_EIM_RW__GPIO2_IO26	0x100b1
++		>;
++	};
++
++	pinctrl_flexcan1: flexcan1grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX	0x1b0b1
++			MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX	0x1b0b1
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x4001b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06		0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x1b0b0
++			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b0
++			MX6QDL_PAD_ENET_TXD1__GPIO1_IO29	0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm1: pwm1grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_9__PWM1_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm4: pwm4grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT2__PWM4_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
++			MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x4001b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11		0x4001b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x13059
++		>;
++	};
++
++	pinctrl_usdhc3: usdhc3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x17059 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x17059
++		>;
++	};
++
++	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170b9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100b9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170b9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170b9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170b9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170b9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170b9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170b9
++		>;
++	};
++
++	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170f9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100f9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170f9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170f9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170f9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170f9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170f9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170f9
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT3__WDOG2_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/001-ARM-dts-imx-Add-GW5907-board-support.patch b/target/linux/imx6/patches-5.4/001-ARM-dts-imx-Add-GW5907-board-support.patch
new file mode 100644
index 0000000..a4e9604
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/001-ARM-dts-imx-Add-GW5907-board-support.patch
@@ -0,0 +1,496 @@
+From 125120298dc05bb55a8874f07aa3f4bb6056bfb3 Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:21 -0800
+Subject: [PATCH 1/4] ARM: dts: imx: Add GW5907 board support
+
+The Gateworks GW5907 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - FEC GbE Phy
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+ - Digital IO expander (pca9555)
+ - Joystick 12bit adc (ads1015)
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Reviewed-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5907.dts   |  14 ++
+ arch/arm/boot/dts/imx6q-gw5907.dts    |  14 ++
+ arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 399 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 429 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5907.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5907.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5907.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 1e9e1af..9ee80e2 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -422,6 +422,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw560x.dtb \
+ 	imx6dl-gw5903.dtb \
+ 	imx6dl-gw5904.dtb \
++	imx6dl-gw5907.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+ 	imx6dl-hummingboard-som-v15.dtb \
+@@ -493,6 +494,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw560x.dtb \
+ 	imx6q-gw5903.dtb \
+ 	imx6q-gw5904.dtb \
++	imx6q-gw5907.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+ 	imx6q-hummingboard-emmc-som-v15.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5907.dts b/arch/arm/boot/dts/imx6dl-gw5907.dts
+new file mode 100644
+index 00000000..3fa2822
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5907.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5907.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5907";
++	compatible = "gw,imx6dl-gw5907", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5907.dts b/arch/arm/boot/dts/imx6q-gw5907.dts
+new file mode 100644
+index 00000000..b25526e
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5907.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5907.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5907";
++	compatible = "gw,imx6q-gw5907", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
+new file mode 100644
+index 00000000..0bdebdd
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
+@@ -0,0 +1,399 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		nand = &gpmi;
++		usb0 = &usbh1;
++		usb1 = &usbotg;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x20000000>;
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio1 26 GPIO_ACTIVE_HIGH>;
++		status = "okay";
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_5p0v: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "5P0V";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++
++	reg_usb_otg_vbus: regulator-usb-otg-vbus {
++		compatible = "regulator-fixed";
++		regulator-name = "usb_otg_vbus";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
++		enable-active-high;
++	};
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	phy-reset-gpios = <&gpio1 30 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&hdmi {
++	ddc-i2c-bus = <&i2c3>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++
++	gpio@20 {
++		compatible = "nxp,pca9555";
++		reg = <0x20>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	adc@48 {
++		compatible = "ti,ads1015";
++		reg = <0x48>;
++		#address-cells = <1>;
++		#size-cells = <0>;
++
++		channel@4 {
++			reg = <4>;
++			ti,gain = <0>;
++			ti,datarate = <5>;
++		};
++
++		channel@5 {
++			reg = <5>;
++			ti,gain = <0>;
++			ti,datarate = <5>;
++		};
++
++		channel@6 {
++			reg = <6>;
++			ti,gain = <0>;
++			ti,datarate = <5>;
++		};
++	};
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++&pwm4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm4>; /* MX6_DIO3 */
++	status = "disabled";
++};
++
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	status = "okay";
++};
++
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++&uart3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart3>;
++	status = "okay";
++};
++
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	vbus-supply = <&reg_usb_otg_vbus>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	status = "okay";
++};
++
++&usbh1 {
++	status = "okay";
++};
++
++&wdog1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++};
++
++&iomuxc {
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
++			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x1b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06		0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
++			MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x1b0b0
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm4: pwm4grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_CMD__PWM4_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart3: uart3grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
++			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
++			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x1b0b0
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/002-ARM-dts-imx-Add-GW5910-board-support.patch b/target/linux/imx6/patches-5.4/002-ARM-dts-imx-Add-GW5910-board-support.patch
new file mode 100644
index 0000000..aade765
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/002-ARM-dts-imx-Add-GW5910-board-support.patch
@@ -0,0 +1,597 @@
+From a1fb69366bb16753f0fba6a891fbef5cdd97cfbe Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:22 -0800
+Subject: [PATCH 2/4] ARM: dts: imx: Add GW5910 board support
+
+The Gateworks GW5910 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - FEC GbE RJ45 front-panel
+ - 1x miniPCIe socket with PCI Gen2, USB2
+ - 1x miniPCIe socket with PCI Gen2, USB2, nanoSIM
+ - 5V to 60V DC input barrel jack
+ - 3axis accelerometer (lis2de12)
+ - GPS (ublox ZOE-M8Q)
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - microSD socket (with UHS-I support)
+ - user pushbutton
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+ - Dual-Band Wireless MCU (CC1352, UART/I2S interrconnect to IMX6)
+ - WiFi/Bluetooth/BLE module (Sterling-LSW, SDIO/UART interconnect to IMX6)
+ - RS232 transceiver (1x UART with flow-control or 2x UART (build option)
+ - off-board SPI connector (1x chip-select)
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5910.dts   |  14 +
+ arch/arm/boot/dts/imx6q-gw5910.dts    |  14 +
+ arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 491 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 521 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5910.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5910.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 9ee80e2..85e53cc 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -423,6 +423,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw5903.dtb \
+ 	imx6dl-gw5904.dtb \
+ 	imx6dl-gw5907.dtb \
++	imx6dl-gw5910.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+ 	imx6dl-hummingboard-som-v15.dtb \
+@@ -495,6 +496,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw5903.dtb \
+ 	imx6q-gw5904.dtb \
+ 	imx6q-gw5907.dtb \
++	imx6q-gw5910.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+ 	imx6q-hummingboard-emmc-som-v15.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5910.dts b/arch/arm/boot/dts/imx6dl-gw5910.dts
+new file mode 100644
+index 00000000..0d5e7e5
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5910.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5910.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5910";
++	compatible = "gw,imx6dl-gw5910", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5910.dts b/arch/arm/boot/dts/imx6q-gw5910.dts
+new file mode 100644
+index 00000000..6aafa2f
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5910.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5910.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5910";
++	compatible = "gw,imx6q-gw5910", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+new file mode 100644
+index 00000000..be1af74
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+@@ -0,0 +1,491 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		led2 = &led2;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x20000000>;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++
++		led2: user3 {
++			label = "user3";
++			gpios = <&gpio4 15 GPIO_ACTIVE_LOW>; /* MX6_LOCLED# */
++			default-state = "off";
++		};
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio4 16 GPIO_ACTIVE_HIGH>;
++		status = "okay";
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_5p0v: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "5P0V";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++
++	reg_wl: regulator-wl {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_reg_wl>;
++		compatible = "regulator-fixed";
++		regulator-name = "wl";
++		gpio = <&gpio1 5 GPIO_ACTIVE_HIGH>;
++		startup-delay-us = <100>;
++		enable-active-high;
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_bt: regulator-bt {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_reg_bt>;
++		compatible = "regulator-fixed";
++		regulator-name = "bt";
++		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
++		startup-delay-us = <100>;
++		enable-active-high;
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++};
++
++
++&ecspi3 {
++	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_ecspi3>;
++	status = "okay";
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++
++	accel@19 {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_accel>;
++		compatible = "st,lis2de12";
++		reg = <0x19>;
++		st,drdy-int-pin = <1>;
++		interrupt-parent = <&gpio7>;
++		interrupts = <13 0>;
++		interrupt-names = "INT1";
++	};
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio3 20 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++/* off-board RS232 */
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	status = "okay";
++};
++
++/* serial console */
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++/* Sterling-LWB Bluetooth */
++&uart4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart4>;
++	uart-has-rtscts;
++	status = "okay";
++};
++
++/* GPS */
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	vbus-supply = <&reg_5p0v>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	status = "okay";
++};
++
++&usbh1 {
++	status = "okay";
++};
++
++/* Sterling-LWB SDIO WiFi */
++&usdhc2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usdhc2>;
++	vmmc-supply = <&reg_3p3v>;
++	non-removable;
++	bus-width = <4>;
++	status = "okay";
++};
++
++&usdhc3 {
++	pinctrl-names = "default", "state_100mhz", "state_200mhz";
++	pinctrl-0 = <&pinctrl_usdhc3>;
++	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
++	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
++	cd-gpios = <&gpio7 0 GPIO_ACTIVE_LOW>;
++	vmmc-supply = <&reg_3p3v>;
++	status = "okay";
++};
++
++&wdog1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++};
++
++&iomuxc {
++	pinctrl_accel: accelmuxgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b1
++		>;
++	};
++
++	pinctrl_ecspi3: escpi3grp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
++			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
++			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
++			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x100b1
++		>;
++	};
++
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
++			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x1b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06  0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07  0x1b0b0
++			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15  0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_reg_bt: regbtgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b1
++		>;
++	};
++
++	pinctrl_reg_wl: regwlgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart4: uart4grp {
++		fsl,pins = <
++			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT13__UART4_RX_DATA	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT16__UART4_RTS_B	0x1b0b1
++			MX6QDL_PAD_CSI0_DAT17__UART4_CTS_B	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x13059
++		>;
++	};
++
++	pinctrl_usdhc2: usdhc2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x17059
++			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x10059
++			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x17059
++			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
++			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
++			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
++		>;
++	};
++
++	pinctrl_usdhc3: usdhc3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x17059 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x17059
++		>;
++	};
++
++	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170b9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x170b9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170b9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170b9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170b9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170b9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170b9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170b9
++		>;
++	};
++
++	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170f9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100f9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170f9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170f9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170f9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170f9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170f9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170f9
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/003-ARM-dts-imx-Add-GW5913-board-support.patch b/target/linux/imx6/patches-5.4/003-ARM-dts-imx-Add-GW5913-board-support.patch
new file mode 100644
index 0000000..2d242fb
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/003-ARM-dts-imx-Add-GW5913-board-support.patch
@@ -0,0 +1,449 @@
+From 169e12f99cf9d5fce752564f32fd8df96461de43 Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:23 -0800
+Subject: [PATCH 3/4] ARM: dts: imx: Add GW5913 board support
+
+The Gateworks GW5913 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - FEC GbE RJ45 front-panel
+ - 1x miniPCIe socket with PCI Gen2, USB2
+ - 1x miniPCIe socket with PCI Gen2, USB2, nanoSIM
+ - 6V to 60V DC input connector
+ - GPS (ublox ZOE-M8Q)
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - nanoSIM socket
+ - user pushbutton
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Reviewed-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5913.dts   |  14 ++
+ arch/arm/boot/dts/imx6q-gw5913.dts    |  14 ++
+ arch/arm/boot/dts/imx6qdl-gw5913.dtsi | 348 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 378 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5913.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5913.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5913.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 85e53cc..5b059fc 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -424,6 +424,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw5904.dtb \
+ 	imx6dl-gw5907.dtb \
+ 	imx6dl-gw5910.dtb \
++	imx6dl-gw5913.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+ 	imx6dl-hummingboard-som-v15.dtb \
+@@ -497,6 +498,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw5904.dtb \
+ 	imx6q-gw5907.dtb \
+ 	imx6q-gw5910.dtb \
++	imx6q-gw5913.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+ 	imx6q-hummingboard-emmc-som-v15.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5913.dts b/arch/arm/boot/dts/imx6dl-gw5913.dts
+new file mode 100644
+index 00000000..b74e533
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5913.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5913.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5913";
++	compatible = "gw,imx6dl-gw5913", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5913.dts b/arch/arm/boot/dts/imx6q-gw5913.dts
+new file mode 100644
+index 00000000..6f511f1
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5913.dts
+@@ -0,0 +1,14 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5913.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5913";
++	compatible = "gw,imx6q-gw5913", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
+new file mode 100644
+index 00000000..635c203
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
+@@ -0,0 +1,348 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		nand = &gpmi;
++		usb0 = &usbh1;
++		usb1 = &usbotg;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x20000000>;
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio7 0 GPIO_ACTIVE_HIGH>;
++		status = "okay";
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_5p0v: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "5P0V";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio1 0 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++&pwm4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm4>; /* MX6_DIO3 */
++	status = "disabled";
++};
++
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	status = "okay";
++};
++
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++&uart3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart3>;
++	status = "okay";
++};
++
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	status = "okay";
++};
++
++&usbh1 {
++	status = "okay";
++};
++
++&wdog1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++};
++
++&iomuxc {
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0a8
++			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x1b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06		0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm4: pwm4grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_CMD__PWM4_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart3: uart3grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
++			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x17059
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/004-ARM-dts-imx-Add-GW5912-board-support.patch b/target/linux/imx6/patches-5.4/004-ARM-dts-imx-Add-GW5912-board-support.patch
new file mode 100644
index 0000000..a47cb27
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/004-ARM-dts-imx-Add-GW5912-board-support.patch
@@ -0,0 +1,565 @@
+From 9a820b55817011f53771e6bfebae5fe059f0a534 Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Wed, 8 Jan 2020 07:44:24 -0800
+Subject: [PATCH 4/4] ARM: dts: imx: Add GW5912 board support
+
+The Gateworks GW5912 is an IMX6 SoC based single board computer with:
+ - IMX6Q or IMX6DL
+ - 32bit DDR3 DRAM
+ - GbE RJ45 front-panel
+ - 4x miniPCIe socket with PCI Gen2, USB2
+ - 1x miniPCIe socket with PCI Gen2, USB2, mSATA
+ - 1x miniPCIe socket with PCI Gen2, USB2, mezzanine
+ - 10V to 60V DC input barrel jack
+ - 3axis accelerometer (lis2de12)
+ - GPS (ublox ZOE-M8Q)
+ - bi-color front-panel LED
+ - 256MB NAND boot device
+ - nanoSIM/microSD socket (with UHS-I support)
+ - user pushbutton
+ - Gateworks System Controller (hwmon, pushbutton controller, EEPROM)
+ - CAN Bus transceiver (mcp2562)
+ - RS232 transceiver (1x UART with flow-control or 2x UART (build option)
+ - off-board SPI connector (1x chip-select)
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Reviewed-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/Makefile            |   2 +
+ arch/arm/boot/dts/imx6dl-gw5912.dts   |  13 +
+ arch/arm/boot/dts/imx6q-gw5912.dts    |  13 +
+ arch/arm/boot/dts/imx6qdl-gw5912.dtsi | 461 ++++++++++++++++++++++++++++++++++
+ 4 files changed, 489 insertions(+)
+ create mode 100644 arch/arm/boot/dts/imx6dl-gw5912.dts
+ create mode 100644 arch/arm/boot/dts/imx6q-gw5912.dts
+ create mode 100644 arch/arm/boot/dts/imx6qdl-gw5912.dtsi
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index 5b059fc..1a32a7d 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -424,6 +424,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6dl-gw5904.dtb \
+ 	imx6dl-gw5907.dtb \
+ 	imx6dl-gw5910.dtb \
++	imx6dl-gw5912.dtb \
+ 	imx6dl-gw5913.dtb \
+ 	imx6dl-hummingboard.dtb \
+ 	imx6dl-hummingboard-emmc-som-v15.dtb \
+@@ -498,6 +499,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
+ 	imx6q-gw5904.dtb \
+ 	imx6q-gw5907.dtb \
+ 	imx6q-gw5910.dtb \
++	imx6q-gw5912.dtb \
+ 	imx6q-gw5913.dtb \
+ 	imx6q-h100.dtb \
+ 	imx6q-hummingboard.dtb \
+diff --git a/arch/arm/boot/dts/imx6dl-gw5912.dts b/arch/arm/boot/dts/imx6dl-gw5912.dts
+new file mode 100644
+index 00000000..5260e01
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6dl-gw5912.dts
+@@ -0,0 +1,13 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++#include "imx6dl.dtsi"
++#include "imx6qdl-gw5912.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 DualLite/Solo GW5912";
++	compatible = "gw,imx6dl-gw5912", "gw,ventana", "fsl,imx6dl";
++};
+diff --git a/arch/arm/boot/dts/imx6q-gw5912.dts b/arch/arm/boot/dts/imx6q-gw5912.dts
+new file mode 100644
+index 00000000..4dcbd94
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6q-gw5912.dts
+@@ -0,0 +1,13 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++/dts-v1/;
++#include "imx6q.dtsi"
++#include "imx6qdl-gw5912.dtsi"
++
++/ {
++	model = "Gateworks Ventana i.MX6 Dual/Quad GW5912";
++	compatible = "gw,imx6q-gw5912", "gw,ventana", "fsl,imx6q";
++};
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
+new file mode 100644
+index 00000000..8c57fd2
+--- /dev/null
++++ b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
+@@ -0,0 +1,461 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Copyright 2019 Gateworks Corporation
++ */
++
++#include <dt-bindings/gpio/gpio.h>
++
++/ {
++	/* these are used by bootloader for disabling nodes */
++	aliases {
++		led0 = &led0;
++		led1 = &led1;
++		led2 = &led2;
++		nand = &gpmi;
++		usb0 = &usbh1;
++		usb1 = &usbotg;
++	};
++
++	chosen {
++		stdout-path = &uart2;
++	};
++
++	leds {
++		compatible = "gpio-leds";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_gpio_leds>;
++
++		led0: user1 {
++			label = "user1";
++			gpios = <&gpio4 6 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDG */
++			default-state = "on";
++			linux,default-trigger = "heartbeat";
++		};
++
++		led1: user2 {
++			label = "user2";
++			gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>; /* MX6_PANLEDR */
++			default-state = "off";
++		};
++
++		led2: user3 {
++			label = "user3";
++			gpios = <&gpio4 15 GPIO_ACTIVE_LOW>; /* MX6_LOCLED# */
++			default-state = "off";
++		};
++	};
++
++	memory@10000000 {
++		device_type = "memory";
++		reg = <0x10000000 0x40000000>;
++	};
++
++	pps {
++		compatible = "pps-gpio";
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_pps>;
++		gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>;
++	};
++
++	reg_3p3v: regulator-3p3v {
++		compatible = "regulator-fixed";
++		regulator-name = "3P3V";
++		regulator-min-microvolt = <3300000>;
++		regulator-max-microvolt = <3300000>;
++		regulator-always-on;
++	};
++
++	reg_usb_vbus: regulator-5p0v {
++		compatible = "regulator-fixed";
++		regulator-name = "usb_vbus";
++		regulator-min-microvolt = <5000000>;
++		regulator-max-microvolt = <5000000>;
++		regulator-always-on;
++	};
++};
++
++&can1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_flexcan1>;
++	status = "okay";
++};
++
++&ecspi2 {
++	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_ecspi2>;
++	status = "okay";
++};
++
++&fec {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_enet>;
++	phy-mode = "rgmii-id";
++	status = "okay";
++};
++
++&gpmi {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_gpmi_nand>;
++	status = "okay";
++};
++
++&i2c1 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c1>;
++	status = "okay";
++
++	gpio@23 {
++		compatible = "nxp,pca9555";
++		reg = <0x23>;
++		gpio-controller;
++		#gpio-cells = <2>;
++	};
++
++	eeprom@50 {
++		compatible = "atmel,24c02";
++		reg = <0x50>;
++		pagesize = <16>;
++	};
++
++	eeprom@51 {
++		compatible = "atmel,24c02";
++		reg = <0x51>;
++		pagesize = <16>;
++	};
++
++	eeprom@52 {
++		compatible = "atmel,24c02";
++		reg = <0x52>;
++		pagesize = <16>;
++	};
++
++	eeprom@53 {
++		compatible = "atmel,24c02";
++		reg = <0x53>;
++		pagesize = <16>;
++	};
++
++	rtc@68 {
++		compatible = "dallas,ds1672";
++		reg = <0x68>;
++	};
++};
++
++&i2c2 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c2>;
++	status = "okay";
++};
++
++&i2c3 {
++	clock-frequency = <100000>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_i2c3>;
++	status = "okay";
++
++	accel@19 {
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_accel>;
++		compatible = "st,lis2de12";
++		reg = <0x19>;
++		st,drdy-int-pin = <1>;
++		interrupt-parent = <&gpio7>;
++		interrupts = <13 0>;
++		interrupt-names = "INT1";
++	};
++};
++
++&pcie {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pcie>;
++	reset-gpio = <&gpio1 29 GPIO_ACTIVE_LOW>;
++	status = "okay";
++};
++
++&pwm1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm1>; /* MX6_DIO0 */
++	status = "disabled";
++};
++
++&pwm2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm2>; /* MX6_DIO1 */
++	status = "disabled";
++};
++
++&pwm3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm3>; /* MX6_DIO2 */
++	status = "disabled";
++};
++
++&pwm4 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_pwm4>; /* MX6_DIO3 */
++	status = "disabled";
++};
++
++&uart1 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart1>;
++	rts-gpios = <&gpio7 12 GPIO_ACTIVE_HIGH>;
++	status = "okay";
++};
++
++&uart2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart2>;
++	status = "okay";
++};
++
++&uart5 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart5>;
++	status = "okay";
++};
++
++&usbotg {
++	vbus-supply = <&reg_usb_vbus>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	dr_mode = "host";
++	status = "okay";
++};
++
++&usbh1 {
++	vbus-supply = <&reg_usb_vbus>;
++	status = "okay";
++};
++
++&usdhc3 {
++	pinctrl-names = "default", "state_100mhz", "state_200mhz";
++	pinctrl-0 = <&pinctrl_usdhc3>;
++	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
++	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
++	cd-gpios = <&gpio7 0 GPIO_ACTIVE_LOW>;
++	vmmc-supply = <&reg_3p3v>;
++	no-1-8-v; /* firmware will remove if board revision supports */
++	status = "okay";
++};
++
++&wdog1 {
++	status = "disabled";
++};
++
++&wdog2 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_wdog>;
++	fsl,ext-reset-output;
++	status = "okay";
++};
++
++&iomuxc {
++	pinctrl_accel: accelmuxgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_18__GPIO7_IO13		0x1b0b1
++		>;
++	};
++
++	pinctrl_enet: enetgrp {
++		fsl,pins = <
++			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
++			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
++			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
++			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
++			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
++			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
++			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b030
++			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b030
++			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b030
++			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b030
++			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b030
++			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b030
++			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
++			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
++			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
++		>;
++	};
++
++	pinctrl_ecspi2: escpi2grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK	0x100b1
++			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI	0x100b1
++			MX6QDL_PAD_EIM_OE__ECSPI2_MISO	0x100b1
++			MX6QDL_PAD_EIM_RW__GPIO2_IO26	0x100b1
++		>;
++	};
++
++	pinctrl_flexcan1: flexcan1grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX	0x1b0b1
++			MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX	0x1b0b1
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x4001b0b0
++		>;
++	};
++
++	pinctrl_gpio_leds: gpioledsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL0__GPIO4_IO06		0x1b0b0
++			MX6QDL_PAD_KEY_ROW0__GPIO4_IO07		0x1b0b0
++			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x1b0b0
++		>;
++	};
++
++	pinctrl_gpmi_nand: gpminandgrp {
++		fsl,pins = <
++			MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
++			MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
++			MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
++			MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
++			MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
++			MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
++			MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
++			MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
++			MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
++			MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
++			MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
++			MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
++			MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
++			MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
++			MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
++		>;
++	};
++
++	pinctrl_i2c1: i2c1grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D21__I2C1_SCL		0x4001b8b1
++			MX6QDL_PAD_EIM_D28__I2C1_SDA		0x4001b8b1
++			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x0001b0b0
++		>;
++	};
++
++	pinctrl_i2c2: i2c2grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
++			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_i2c3: i2c3grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
++			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
++		>;
++	};
++
++	pinctrl_pcie: pciegrp {
++		fsl,pins = <
++			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b0
++			MX6QDL_PAD_ENET_TXD1__GPIO1_IO29	0x1b0b0
++		>;
++	};
++
++	pinctrl_pps: ppsgrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm1: pwm1grp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_9__PWM1_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm2: pwm2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT2__PWM2_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm3: pwm3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT1__PWM3_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_pwm4: pwm4grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT2__PWM4_OUT		0x1b0b1
++		>;
++	};
++
++	pinctrl_uart1: uart1grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_DAT7__UART1_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD3_DAT6__UART1_RX_DATA	0x1b0b1
++			MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x4001b0b1
++		>;
++	};
++
++	pinctrl_uart2: uart2grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD4_DAT7__UART2_TX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT4__UART2_RX_DATA	0x1b0b1
++			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11		0x4001b0b1
++		>;
++	};
++
++	pinctrl_uart5: uart5grp {
++		fsl,pins = <
++			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
++			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
++		>;
++	};
++
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_1__USB_OTG_ID		0x13059
++		>;
++	};
++
++	pinctrl_usdhc3: usdhc3grp {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x17059 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x17059
++		>;
++	};
++
++	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170b9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100b9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170b9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170b9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170b9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170b9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170b9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170b9
++		>;
++	};
++
++	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
++		fsl,pins = <
++			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170f9
++			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100f9
++			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170f9
++			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170f9
++			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170f9
++			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170f9
++			MX6QDL_PAD_SD3_DAT5__GPIO7_IO00		0x170f9 /* CD */
++			MX6QDL_PAD_NANDF_CS1__SD3_VSELECT	0x170f9
++		>;
++	};
++
++	pinctrl_wdog: wdoggrp {
++		fsl,pins = <
++			MX6QDL_PAD_SD1_DAT3__WDOG2_B		0x1b0b0
++		>;
++	};
++};
+-- 
+2.7.4
+
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
