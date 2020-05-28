Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1D41E6308
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 15:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=96+eMrDb8VNx5Ngh2ilqVMEIwWJemjifsQ+HcEXo5JE=; b=lMS2apxTubP93O
	55ylwwsiFGQByazRjbvG2lGTbEy2Fkl7r8G1XFr6UY5NAVdzPmVcA/ARdReMbYagJ7TqRiA+xeyjJ
	mGc77ZdOGsUtC/9AVkW7L8BueiWERnceuMzOJ015FeINSBGX/Ni24FAw4cBpJK43Vqvh7Lml/0IMD
	IxoIt73W/tR971Yj7heVr+47Pztg0ZmxW/4BIsY1JdP5A1BKOYpBybPgVIcUXvoL8wioUVoNJKWL/
	aQXPMOAlCT8SxCXb/XwhA9O0kSe0s2L1MH4HjBry5iIEJ6fd1GicY45BT/4eO4pntdkLRtaozJA2B
	G2glTDcV+zhKuIRthsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJ1Y-0006ia-0o; Thu, 28 May 2020 13:56:44 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJ1Q-0006gx-6z
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 13:56:38 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeJ42-0000Pd-2w; Thu, 28 May 2020 13:59:18 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 06:56:17 -0700
Message-Id: <1590674177-7870-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_065636_338320_C2E01281 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] imx6: backport v5.8 imx6qdl-gw dt patches
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

- add fxos8700 support to GW52xx/GW53xx/GW54xx
- add USB_OTG support to GW552x
- add LSM9DS1 IMU support to GW560x
- add LSM9DS1 IMU support to GW5904
- add CC1352 UART to GW5910
- add BCM4330 support to GW5910
- fix wlan regulator for GW5910

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 ...-ventana-add-fxos8700-on-gateworks-boards.patch | 66 ++++++++++++++++
 ....7-ARM-dts-imx6qdl-gw5910-add-CC1352-UART.patch | 59 +++++++++++++++
 ...RM-dts-imx6qdl-gw552x-add-USB-OTG-support.patch | 50 +++++++++++++
 ...6qdl-gw560x-add-lsm9ds1-iio-imu-magn-supp.patch | 81 ++++++++++++++++++++
 ...6qdl-gw5904-add-lsm9ds1-iio-imu-magn-supp.patch | 74 ++++++++++++++++++
 ...imx6qdl-gw5910-add-support-for-bcm4330-bt.patch | 87 ++++++++++++++++++++++
 ...ARM-dts-imx6qdl-gw5910-fix-wlan-regulator.patch | 38 ++++++++++
 7 files changed, 455 insertions(+)
 create mode 100644 target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx-ventana-add-fxos8700-on-gateworks-boards.patch
 create mode 100644 target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx6qdl-gw5910-add-CC1352-UART.patch
 create mode 100644 target/linux/imx6/patches-5.4/006-v5.8-ARM-dts-imx6qdl-gw552x-add-USB-OTG-support.patch
 create mode 100644 target/linux/imx6/patches-5.4/007-v5.8-ARM-dts-imx6qdl-gw560x-add-lsm9ds1-iio-imu-magn-supp.patch
 create mode 100644 target/linux/imx6/patches-5.4/008-v5.8-ARM-dts-imx6qdl-gw5904-add-lsm9ds1-iio-imu-magn-supp.patch
 create mode 100644 target/linux/imx6/patches-5.4/009-v5.8-ARM-dts-imx6qdl-gw5910-add-support-for-bcm4330-bt.patch
 create mode 100644 target/linux/imx6/patches-5.4/010-v5.8-ARM-dts-imx6qdl-gw5910-fix-wlan-regulator.patch

diff --git a/target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx-ventana-add-fxos8700-on-gateworks-boards.patch b/target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx-ventana-add-fxos8700-on-gateworks-boards.patch
new file mode 100644
index 0000000..e2c8980
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx-ventana-add-fxos8700-on-gateworks-boards.patch
@@ -0,0 +1,66 @@
+From 66d19a4f8d0fa7539f90cad64d793b4dac6f6e5d Mon Sep 17 00:00:00 2001
+From: Robert Jones <rjones@gateworks.com>
+Date: Fri, 14 Feb 2020 13:01:55 -0800
+Subject: [PATCH] ARM: dts: imx: ventana: add fxos8700 on gateworks boards
+
+Add fxos8700 iio imu entries for Gateworks ventana SBCs.
+
+Signed-off-by: Robert Jones <rjones@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 5 +++++
+ arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 5 +++++
+ arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 5 +++++
+ 3 files changed, 15 insertions(+)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
+index 1a9a9d9..60563ff 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
+@@ -313,6 +313,11 @@
+ 		interrupts = <12 2>;
+ 		wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
+ 	};
++
++	accel@1e {
++		compatible = "nxp,fxos8700";
++		reg = <0x1e>;
++	};
+ };
+ 
+ &ldb {
+diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
+index 54b2bea..8942bec 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
+@@ -304,6 +304,11 @@
+ 		interrupts = <11 2>;
+ 		wakeup-gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
+ 	};
++
++	accel@1e {
++		compatible = "nxp,fxos8700";
++		reg = <0x1e>;
++	};
+ };
+ 
+ &ldb {
+diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
+index 1b6c133..c40583d 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
+@@ -361,6 +361,11 @@
+ 		interrupts = <12 2>;
+ 		wakeup-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
+ 	};
++
++	accel@1e {
++		compatible = "nxp,fxos8700";
++		reg = <0x1e>;
++	};
+ };
+ 
+ &ldb {
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx6qdl-gw5910-add-CC1352-UART.patch b/target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx6qdl-gw5910-add-CC1352-UART.patch
new file mode 100644
index 0000000..5f5dc0a
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/006-v5.7-ARM-dts-imx6qdl-gw5910-add-CC1352-UART.patch
@@ -0,0 +1,59 @@
+From d2cf2f91ba5b6d7696b1870e28017a3e1a7a1bb8 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Fri, 28 Feb 2020 11:46:07 -0800
+Subject: [PATCH] ARM: dts: imx6qdl-gw5910: add CC1352 UART
+
+The GW5910-C revision adds a TI CC1352 connected to IMX UART4
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 25 +++++++++++++++++++++++++
+ 1 file changed, 25 insertions(+)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+index be1af74..30fe47f 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+@@ -220,6 +220,14 @@
+ 	status = "okay";
+ };
+ 
++/* cc1352 */
++&uart3 {
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_uart3>;
++	uart-has-rtscts;
++	status = "okay";
++};
++
+ /* Sterling-LWB Bluetooth */
+ &uart4 {
+ 	pinctrl-names = "default";
+@@ -411,6 +419,23 @@
+ 		>;
+ 	};
+ 
++	pinctrl_uart3: uart3grp {
++		fsl,pins = <
++			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
++			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
++			MX6QDL_PAD_EIM_D23__UART3_RTS_B		0x1b0b1
++			MX6QDL_PAD_EIM_D31__UART3_CTS_B		0x1b0b1
++			MX6QDL_PAD_EIM_A25__GPIO5_IO02		0x4001b0b1 /* DIO20 */
++			MX6QDL_PAD_DISP0_DAT11__GPIO5_IO05	0x4001b0b1 /* DIO14 */
++			MX6QDL_PAD_DISP0_DAT12__GPIO5_IO06	0x4001b0b1 /* DIO15 */
++			MX6QDL_PAD_DISP0_DAT14__GPIO5_IO08	0x1b0b1 /* TMS */
++			MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09	0x1b0b1 /* TCK */
++			MX6QDL_PAD_DISP0_DAT16__GPIO5_IO10	0x1b0b1 /* TDO */
++			MX6QDL_PAD_DISP0_DAT17__GPIO5_IO11	0x1b0b1 /* TDI */
++			MX6QDL_PAD_DISP0_DAT23__GPIO5_IO17	0x4001b0b1 /* RST# */
++		>;
++	};
++
+ 	pinctrl_uart4: uart4grp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA	0x1b0b1
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/006-v5.8-ARM-dts-imx6qdl-gw552x-add-USB-OTG-support.patch b/target/linux/imx6/patches-5.4/006-v5.8-ARM-dts-imx6qdl-gw552x-add-USB-OTG-support.patch
new file mode 100644
index 0000000..b0ac409
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/006-v5.8-ARM-dts-imx6qdl-gw552x-add-USB-OTG-support.patch
@@ -0,0 +1,50 @@
+From 957743b79b1ebb710f5498b61a212cebc302e685 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Wed, 29 Apr 2020 08:22:35 -0700
+Subject: [PATCH 01/20] ARM: dts: imx6qdl-gw552x: add USB OTG support
+
+The GW552x-B board revision adds USB OTG support.
+
+Enable the device-tree node and configure the OTG_ID pin.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw552x.dtsi | 14 ++++++++++++++
+ 1 file changed, 14 insertions(+)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
+index dc646b7..bb35971 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
+@@ -258,6 +258,14 @@
+ 	status = "okay";
+ };
+ 
++&usbotg {
++	vbus-supply = <&reg_5p0v>;
++	pinctrl-names = "default";
++	pinctrl-0 = <&pinctrl_usbotg>;
++	disable-over-current;
++	status = "okay";
++};
++
+ &wdog1 {
+ 	pinctrl-names = "default";
+ 	pinctrl-0 = <&pinctrl_wdog>;
+@@ -359,6 +367,12 @@
+ 		>;
+ 	};
+ 
++	pinctrl_usbotg: usbotggrp {
++		fsl,pins = <
++			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x13059
++		>;
++	};
++
+ 	pinctrl_wdog: wdoggrp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_DISP0_DAT8__WDOG1_B		0x1b0b0
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/007-v5.8-ARM-dts-imx6qdl-gw560x-add-lsm9ds1-iio-imu-magn-supp.patch b/target/linux/imx6/patches-5.4/007-v5.8-ARM-dts-imx6qdl-gw560x-add-lsm9ds1-iio-imu-magn-supp.patch
new file mode 100644
index 0000000..cb8f172
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/007-v5.8-ARM-dts-imx6qdl-gw560x-add-lsm9ds1-iio-imu-magn-supp.patch
@@ -0,0 +1,81 @@
+From 9e72702a3d9a967edac02d8e937bce2b68b77814 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Tue, 12 May 2020 13:59:37 -0700
+Subject: [PATCH 05/20] ARM: dts: imx6qdl-gw560x: add lsm9ds1 iio imu/magn
+ support
+
+Add one node for the accel/gyro i2c device and another for the separate
+magnetometer device in the lsm9ds1.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 31 +++++++++++++++++++++++++++++++
+ 1 file changed, 31 insertions(+)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
+index e8e36df..69ca70d 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
+@@ -295,6 +295,15 @@
+ 		VDDIO-supply = <&reg_3p3v>;
+ 	};
+ 
++	magn@1c {
++		compatible = "st,lsm9ds1-magn";
++		reg = <0x1c>;
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_mag>;
++		interrupt-parent = <&gpio5>;
++		interrupts = <9 IRQ_TYPE_EDGE_RISING>;
++	};
++
+ 	tca8418: keypad@34 {
+ 		compatible = "ti,tca8418";
+ 		pinctrl-names = "default";
+@@ -389,6 +398,16 @@
+ 			};
+ 		};
+ 	};
++
++	imu@6a {
++		compatible = "st,lsm9ds1-imu";
++		reg = <0x6a>;
++		st,drdy-int-pin = <1>;
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_imu>;
++		interrupt-parent = <&gpio5>;
++		interrupts = <6 IRQ_TYPE_LEVEL_HIGH>;
++	};
+ };
+ 
+ &i2c3 {
+@@ -609,6 +628,12 @@
+ 		>;
+ 	};
+ 
++	pinctrl_imu: imugrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT12__GPIO5_IO06	0x1b0b0
++		>;
++	};
++
+ 	pinctrl_keypad: keypadgrp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_DISP0_DAT17__GPIO5_IO11	0x0001b0b0 /* KEYPAD_IRQ# */
+@@ -616,6 +641,12 @@
+ 		>;
+ 	};
+ 
++	pinctrl_mag: maggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09	0x1b0b0
++		>;
++	};
++
+ 	pinctrl_pcie: pciegrp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_DISP0_DAT10__GPIO4_IO31	0x1b0b0    /* PCI_RST# */
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/008-v5.8-ARM-dts-imx6qdl-gw5904-add-lsm9ds1-iio-imu-magn-supp.patch b/target/linux/imx6/patches-5.4/008-v5.8-ARM-dts-imx6qdl-gw5904-add-lsm9ds1-iio-imu-magn-supp.patch
new file mode 100644
index 0000000..9befdbe
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/008-v5.8-ARM-dts-imx6qdl-gw5904-add-lsm9ds1-iio-imu-magn-supp.patch
@@ -0,0 +1,74 @@
+From c8756cbad816954be912ba32277ccd55fe7acc01 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Tue, 12 May 2020 13:59:56 -0700
+Subject: [PATCH 06/20] ARM: dts: imx6qdl-gw5904: add lsm9ds1 iio imu/magn
+ support
+
+Add one node for the accel/gyro i2c device and another for the separate
+magnetometer device in the lsm9ds1.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 31 +++++++++++++++++++++++++++++++
+ 1 file changed, 31 insertions(+)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
+index 6d21cc6..76d6cf5 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
+@@ -248,6 +248,15 @@
+ 	pinctrl-0 = <&pinctrl_i2c2>;
+ 	status = "okay";
+ 
++	magn@1c {
++		compatible = "st,lsm9ds1-magn";
++		reg = <0x1c>;
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_mag>;
++		interrupt-parent = <&gpio5>;
++		interrupts = <17 IRQ_TYPE_EDGE_RISING>;
++	};
++
+ 	ltc3676: pmic@3c {
+ 		compatible = "lltc,ltc3676";
+ 		reg = <0x3c>;
+@@ -320,6 +329,16 @@
+ 			};
+ 		};
+ 	};
++
++	imu@6a {
++		compatible = "st,lsm9ds1-imu";
++		reg = <0x6a>;
++		st,drdy-int-pin = <1>;
++		pinctrl-names = "default";
++		pinctrl-0 = <&pinctrl_imu>;
++		interrupt-parent = <&gpio4>;
++		interrupts = <18 IRQ_TYPE_LEVEL_HIGH>;
++	};
+ };
+ 
+ &i2c3 {
+@@ -501,6 +520,18 @@
+ 		>;
+ 	};
+ 
++	pinctrl_imu: imugrp {
++		fsl,pins = <
++			MX6QDL_PAD_DI0_PIN2__GPIO4_IO18		0x1b0b0
++		>;
++	};
++
++	pinctrl_mag: maggrp {
++		fsl,pins = <
++			MX6QDL_PAD_DISP0_DAT23__GPIO5_IO17	0x1b0b0
++		>;
++	};
++
+ 	pinctrl_pcie: pciegrp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_GPIO_0__GPIO1_IO00	0x1b0b0 /* PCIE RST */
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/009-v5.8-ARM-dts-imx6qdl-gw5910-add-support-for-bcm4330-bt.patch b/target/linux/imx6/patches-5.4/009-v5.8-ARM-dts-imx6qdl-gw5910-add-support-for-bcm4330-bt.patch
new file mode 100644
index 0000000..ca11c54
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/009-v5.8-ARM-dts-imx6qdl-gw5910-add-support-for-bcm4330-bt.patch
@@ -0,0 +1,87 @@
+From d40edafe80569c5b4d8893c1cdd1060c54ef433c Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Tue, 12 May 2020 14:54:15 -0700
+Subject: [PATCH 07/20] ARM: dts: imx6qdl-gw5910: add support for bcm4330-bt
+
+The Sterling-LWB has a BCM4330 which has a UART based bluetooth
+HCI. Add support for binding to the bcm_hci driver to take care
+of handling the shutdown gpio and loading firmware.
+
+Because the shutdown gpio is more of an enable than a regulator
+go ahead and replace the regulator with a shutdown-gpio.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 32 ++++++++++++--------------------
+ 1 file changed, 12 insertions(+), 20 deletions(-)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+index 30fe47f..b850f8f 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+@@ -83,19 +83,6 @@
+ 		regulator-max-microvolt = <3300000>;
+ 		regulator-always-on;
+ 	};
+-
+-	reg_bt: regulator-bt {
+-		pinctrl-names = "default";
+-		pinctrl-0 = <&pinctrl_reg_bt>;
+-		compatible = "regulator-fixed";
+-		regulator-name = "bt";
+-		gpio = <&gpio1 2 GPIO_ACTIVE_HIGH>;
+-		startup-delay-us = <100>;
+-		enable-active-high;
+-		regulator-min-microvolt = <3300000>;
+-		regulator-max-microvolt = <3300000>;
+-		regulator-always-on;
+-	};
+ };
+ 
+ 
+@@ -231,9 +218,14 @@
+ /* Sterling-LWB Bluetooth */
+ &uart4 {
+ 	pinctrl-names = "default";
+-	pinctrl-0 = <&pinctrl_uart4>;
++	pinctrl-0 = <&pinctrl_uart4>,<&pinctrl_bten>;
+ 	uart-has-rtscts;
+ 	status = "okay";
++
++	bluetooth {
++		compatible = "brcm,bcm4330-bt";
++		shutdown-gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
++	};
+ };
+ 
+ /* GPS */
+@@ -288,6 +280,12 @@
+ 		>;
+ 	};
+ 
++	pinctrl_bten: btengrp {
++		fsl,pins = <
++			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b1
++		>;
++	};
++
+ 	pinctrl_ecspi3: escpi3grp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
+@@ -393,12 +391,6 @@
+ 		>;
+ 	};
+ 
+-	pinctrl_reg_bt: regbtgrp {
+-		fsl,pins = <
+-			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b1
+-		>;
+-	};
+-
+ 	pinctrl_reg_wl: regwlgrp {
+ 		fsl,pins = <
+ 			MX6QDL_PAD_GPIO_5__GPIO1_IO05		0x1b0b1
+-- 
+2.7.4
+
diff --git a/target/linux/imx6/patches-5.4/010-v5.8-ARM-dts-imx6qdl-gw5910-fix-wlan-regulator.patch b/target/linux/imx6/patches-5.4/010-v5.8-ARM-dts-imx6qdl-gw5910-fix-wlan-regulator.patch
new file mode 100644
index 0000000..8a9158a
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/010-v5.8-ARM-dts-imx6qdl-gw5910-fix-wlan-regulator.patch
@@ -0,0 +1,38 @@
+From 4792ff641cc8993606013d27d84cda59d8cc76c5 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Tue, 12 May 2020 15:02:34 -0700
+Subject: [PATCH 08/20] ARM: dts: imx6qdl-gw5910: fix wlan regulator
+
+Connect the wl_reg regulator to usdhc2 such that it can be enabled
+and disabled as needed. There is no need for this to be always-on.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 3 +--
+ 1 file changed, 1 insertion(+), 2 deletions(-)
+
+diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+index b850f8f..0857de5 100644
+--- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
++++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+@@ -81,7 +81,6 @@
+ 		enable-active-high;
+ 		regulator-min-microvolt = <3300000>;
+ 		regulator-max-microvolt = <3300000>;
+-		regulator-always-on;
+ 	};
+ };
+ 
+@@ -251,7 +250,7 @@
+ &usdhc2 {
+ 	pinctrl-names = "default";
+ 	pinctrl-0 = <&pinctrl_usdhc2>;
+-	vmmc-supply = <&reg_3p3v>;
++	vmmc-supply = <&reg_wl>;
+ 	non-removable;
+ 	bus-width = <4>;
+ 	status = "okay";
+-- 
+2.7.4
+
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
