Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACB51C991E
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 May 2020 20:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ENu94UNDnFjq3rrs/lECq87feEkPVFsZq2aNHBNYx/A=; b=dELd2xBw6Qr3mL
	zctCkSywpQtWwBi5lzSLq+q7qU+1lGywCWCkhhM1ugXRwEepqR8o+CnHHIPhCl9b8XwSR9aKMEJJ+
	OPvJ8vQUltF0098KGSKhaKyNpOWQQf0yk2moHEjUImaifAkPGLvUK9vekyU0/GwkYcDxZHzu1yIUD
	eN2/Z4+JYd2+45UPkLXRXQwm+Fmu4kpphsjytYeP0PcuFUNctyL8UFLEbb1yhzADapG6Xvh9o3qXi
	DyQR+OpvmmvO4gPMJinm8ZkP2X//tCf3Av+ntZ2M2DgaBozKl/UHJapBYQHVrwXZAMpy4wwHP/ctA
	03S5Rga4VQeaKTsNR3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWl5z-0007mJ-Ly; Thu, 07 May 2020 18:18:07 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWl5p-0007iT-Ek
 for openwrt-devel@lists.openwrt.org; Thu, 07 May 2020 18:18:02 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0E5C0055BB060960AB0314.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0e:5c00:55bb:609:60ab:314])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 5EC261F2C7
 for <openwrt-devel@lists.openwrt.org>; Thu,  7 May 2020 20:17:43 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 May 2020 20:17:32 +0200
Message-Id: <20200507181732.515417-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_111757_807474_0A63DE1C 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: add support for Aruba AP-365
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

Hardware
--------
SoC:   Qualcomm IPQ4029
RAM:   512M DDR3
FLASH: - 128MB NAND (Macronix MX30LF1G18AC)
       - 4MB SPI-NOR (Macronix MX25R3235F)
TPM:   Atmel AT97SC3203
BLE:   Texas Instruments CC2540T
       attached to ttyMSM0
ETH:   Atheros AR8035
LED:   System (red / green / amber)
BTN:   Reset

The USB port on the device is (in contrast to other Aruba boards) real
USB. The AP uses a CP2101 USB TTY converter on the board.

Console baudrate is 9600 8n1.

To enable a full list of commands in the U-Boot "help" command, execute
the literal "diag" command.

Installation
------------

1. Get the OpenWrt initramfs image. Rename it to ipq40xx.ari and put it
   into the TFTP server root directory. Configure the TFTP server to
   be reachable at 192.168.1.75/24. Connect the machine running the TFTP
   server to the ethernet port of the access point.

2. Connect to the serial console. Interrupt autobooting by pressing
   Enter when prompted.

3. Configure the bootargs and bootcmd for OpenWrt.
   $ setenv bootargs_openwrt "setenv bootargs console=ttyMSM1,9600n8"
   $ setenv nandboot_openwrt "run bootargs_openwrt; ubi part aos1;
     ubi read 0x85000000 kernel; bootm 0x85000000"
   $ setenv ramboot_openwrt "run bootargs_openwrt;
     setenv ipaddr 192.168.1.105; setenv serverip 192.168.1.75;
     netget; set fdt_high 0x87000000; bootm"
   $ setenv bootcmd "run nandboot_openwrt"
   $ saveenv

4. Load OpenWrt into RAM:
   $ run ramboot_openwrt

5. After OpenWrt booted, transfer the OpenWrt sysupgrade image to the
   /tmp folder on the device.

6. Flash OpenWrt:
   Make sure you use the mtd partition with the label "ubi" here!

   $ ubidetach -p /dev/mtd1
   $ ubiformat /dev/mtd1
   $ sysupgrade -n /tmp/openwrt-sysupgrade.bin

To go back to the stock firmware, simply reset the bootcmd in the
bootloader to the original value:

  $ setenv bootcmd "boot"
  $ saveenv

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ipq40xx/base-files/etc/board.d/02_network |   1 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   6 +-
 .../base-files/lib/upgrade/platform.sh        |   1 +
 target/linux/ipq40xx/config-4.19              |   2 +-
 target/linux/ipq40xx/config-5.4               |   2 +-
 .../arch/arm/boot/dts/qcom-ipq4029-ap-303.dts | 241 +----------------
 .../arch/arm/boot/dts/qcom-ipq4029-ap-365.dts | 193 ++++++++++++++
 .../dts/qcom-ipq4029-aruba-glenmorangie.dtsi  | 249 ++++++++++++++++++
 .../arch/arm/boot/dts/qcom-ipq4029-ap-303.dts | 241 +----------------
 .../arch/arm/boot/dts/qcom-ipq4029-ap-365.dts | 193 ++++++++++++++
 .../dts/qcom-ipq4029-aruba-glenmorangie.dtsi  | 249 ++++++++++++++++++
 target/linux/ipq40xx/image/Makefile           |  21 +-
 .../901-arm-boot-add-dts-files.patch          |   3 +-
 .../901-arm-boot-add-dts-files.patch          |   3 +-
 14 files changed, 912 insertions(+), 493 deletions(-)
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi
 create mode 100644 target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts
 create mode 100644 target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index d427c64a33..85f9c174ad 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -19,6 +19,7 @@ ipq40xx_setup_interfaces()
 		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		;;
 	aruba,ap-303|\
+	aruba,ap-365|\
 	avm,fritzrepeater-1200|\
 	dlink,dap-2610 |\
 	engenius,eap1300|\
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 814d5b0371..27373466fa 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -56,7 +56,8 @@ case "$FIRMWARE" in
 		caldata_extract "ART" 0x1000 0x2f20
 		;;
 	aruba,ap-303 |\
-	aruba,ap-303h)
+	aruba,ap-303h |\
+	aruba,ap-365)
 		caldata_extract "ART" 0x1000 0x2f20
 		ath10k_patch_mac $(mtd_get_mac_binary mfginfo 0x1D)
 		;;
@@ -139,7 +140,8 @@ case "$FIRMWARE" in
 		caldata_extract "ART" 0x5000 0x2f20
 		;;
 	aruba,ap-303 |\
-	aruba,ap-303h)
+	aruba,ap-303h |\
+	aruba,ap-365)
 		caldata_extract "ART" 0x5000 0x2f20
 		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary mfginfo 0x1D) +1)
 		;;
diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
index d3effdf7e2..2abff3bd00 100644
--- a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
@@ -60,6 +60,7 @@ platform_do_upgrade() {
 	8dev,jalapeno |\
 	aruba,ap-303 |\
 	aruba,ap-303h |\
+	aruba,ap-365 |\
 	avm,fritzbox-7530 |\
 	avm,fritzrepeater-1200 |\
 	avm,fritzrepeater-3000 |\
diff --git a/target/linux/ipq40xx/config-4.19 b/target/linux/ipq40xx/config-4.19
index 60d6cf29ef..23eb5ca589 100644
--- a/target/linux/ipq40xx/config-4.19
+++ b/target/linux/ipq40xx/config-4.19
@@ -200,7 +200,7 @@ CONFIG_GPIOLIB_IRQCHIP=y
 CONFIG_GPIO_74X164=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_WATCHDOG=y
-# CONFIG_GPIO_WATCHDOG_ARCH_INITCALL is not set
+CONFIG_GPIO_WATCHDOG_ARCH_INITCALL=y
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDEN_BRANCH_PREDICTOR=y
 CONFIG_HARDIRQS_SW_RESEND=y
diff --git a/target/linux/ipq40xx/config-5.4 b/target/linux/ipq40xx/config-5.4
index 4d3fb9c3f1..4e5e47a802 100644
--- a/target/linux/ipq40xx/config-5.4
+++ b/target/linux/ipq40xx/config-5.4
@@ -216,7 +216,7 @@ CONFIG_GPIOLIB_IRQCHIP=y
 CONFIG_GPIO_74X164=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_WATCHDOG=y
-# CONFIG_GPIO_WATCHDOG_ARCH_INITCALL is not set
+CONFIG_GPIO_WATCHDOG_ARCH_INITCALL=y
 CONFIG_HANDLE_DOMAIN_IRQ=y
 CONFIG_HARDEN_BRANCH_PREDICTOR=y
 CONFIG_HARDIRQS_SW_RESEND=y
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
index 24e5dc2809..126d944ebb 100644
--- a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
@@ -1,9 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0 OR MIT
 
-#include "qcom-ipq4019.dtsi"
+#include "qcom-ipq4029-aruba-glenmorangie.dtsi"
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/soc/qcom,tcsr.h>
 
 / {
 	model = "Aruba AP-303";
@@ -16,89 +14,6 @@
 		led-upgrade = &led_system_red;
 	};
 
-	memory {
-		device_type = "memory";
-		reg = <0x80000000 0x10000000>;
-	};
-
-	soc {
-		rng@22000 {
-			status = "okay";
-		};
-
-		mdio@90000 {
-			status = "okay";
-			pinctrl-0 = <&mdio_pins>;
-			pinctrl-names = "default";
-
-			/delete-node/ ethernet-phy@0;
-			/delete-node/ ethernet-phy@2;
-			/delete-node/ ethernet-phy@3;
-			/delete-node/ ethernet-phy@4;
-
-			ethernet-phy@5 {
-				reg = <0x5>;
-			};
-		};
-
-		counter@4a1000 {
-			compatible = "qcom,qca-gcnt";
-			reg = <0x4a1000 0x4>;
-		};
-
-		ess_tcsr@1953000 {
-			compatible = "qcom,tcsr";
-			reg = <0x1953000 0x1000>;
-			qcom,ess-interface-select = <TCSR_ESS_PSGMII_RGMII5>;
-		};
-
-		tcsr@1949000 {
-			compatible = "qcom,tcsr";
-			reg = <0x1949000 0x100>;
-			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
-		};
-
-		tcsr@1957000 {
-			compatible = "qcom,tcsr";
-			reg = <0x1957000 0x100>;
-			qcom,wifi_noc_memtype_m0_m2 = <TCSR_WIFI_NOC_MEMTYPE_M0_M2>;
-		};
-
-		crypto@8e3a000 {
-			status = "okay";
-		};
-
-		watchdog@b017000 {
-			status = "okay";
-		};
-
-		ess-switch@c000000 {
-			switch_mac_mode = <0x3>; /* mac mode for RGMII RMII */
-			switch_lan_bmp = <0x0>; /* lan port bitmap */
-			switch_wan_bmp = <0x10>; /* wan port bitmap */
-		};
-
-		edma@c080000 {
-			qcom,single-phy;
-			qcom,num_gmac = <1>;
-			phy-mode = "rgmii-id";
-			status = "okay";
-		};
-
-		i2c_0: i2c@78b7000 {
-			pinctrl-0 = <&i2c_0_pins>;
-			pinctrl-names = "default";
-			status = "ok";
-
-			tpm@29 {
-				/* No Driver */
-				compatible = "atmel,at97sc3203";
-				reg = <0x29>;
-				read-only;
-			};
-		};
-	};
-
 	leds {
 		compatible = "gpio-leds";
 
@@ -124,47 +39,6 @@
 			gpios = <&tlmm 47 GPIO_ACTIVE_HIGH>;
 		};
 	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		reset {
-			label = "Reset button";
-			gpios = <&tlmm 50 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
-};
-
-&blsp_dma {
-	status = "okay";
-};
-
-&blsp1_uart1 {
-	/* Texas Instruments CC2540T BLE radio */
-	pinctrl-0 = <&serial_0_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&blsp1_uart2 {
-	pinctrl-0 = <&serial_1_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&cryptobam {
-	status = "okay";
-};
-
-&gmac0 {
-	qcom,phy_mdio_addr = <5>;
-	qcom,poll_required = <1>;
-	vlan_tag = <0 0x20>;
-};
-
-&qpic_bam {
-	status = "okay";
 };
 
 &tlmm {
@@ -176,76 +50,6 @@
 	 * 43 - out - active low to reset BLE radio
 	 * 19 - in  - active high when DC powered
 	 */
-	mdio_pins: mdio_pinmux {
-		mux_1 {
-			pins = "gpio6";
-			function = "mdio";
-			bias-pull-up;
-		};
-		mux_2 {
-			pins = "gpio7";
-			function = "mdc";
-			bias-pull-up;
-		};
-	};
-
-	nand_pins: nand_pins {
-		pullups {
-			pins = "gpio53", "gpio58", "gpio59";
-			function = "qpic";
-			bias-pull-up;
-		};
-
-		pulldowns {
-			pins = "gpio54", "gpio55", "gpio56",
-				"gpio57", "gpio60", "gpio61",
-				"gpio62", "gpio63", "gpio64",
-				"gpio65", "gpio66", "gpio67",
-				"gpio68", "gpio69";
-			function = "qpic";
-			bias-pull-down;
-		};
-	};
-
-	spi_0_pins: spi_0_pinmux {
-		pin {
-			function = "blsp_spi0";
-			pins = "gpio13", "gpio14", "gpio15";
-			drive-strength = <12>;
-			bias-disable;
-		};
-		pin_cs {
-			function = "gpio";
-			pins = "gpio12";
-			drive-strength = <2>;
-			bias-disable;
-			output-high;
-		};
-	};
-	i2c_0_pins: i2c_0_pinmux {
-		mux {
-			pins = "gpio10", "gpio11";
-			function = "blsp_i2c0";
-			drive-strength = <4>;
-			bias-disable;
-		};
-	};
-
-	serial_0_pins: serial_0_pinmux {
-		mux {
-			pins = "gpio16", "gpio17";
-			function = "blsp_uart0";
-			bias-disable;
-		};
-	};
-
-	serial_1_pins: serial_1_pinmux {
-		mux {
-			pins = "gpio8", "gpio9";
-			function = "blsp_uart1";
-			bias-disable;
-		};
-	};
 
 	phy-reset {
 		line-name = "PHY-reset";
@@ -255,39 +59,6 @@
 	};
 };
 
-&nand {
-	pinctrl-0 = <&nand_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-
-	nand@0 {
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				/* 'aos0' in Aruba firmware */
-				label = "aos0";
-				reg = <0x0 0x2000000>;
-				read-only;
-			};
-
-			partition@2000000 {
-				/* 'aos1' in AVM firmware */
-				label = "ubi";
-				reg = <0x2000000 0x2000000>;
-			};
-
-			partition@4000000 {
-				label = "aruba-ubifs";
-				reg = <0x4000000 0x4000000>;
-				read-only;
-			};
-		};
-	};
-};
-
 &blsp1_spi1 {
 	pinctrl-0 = <&spi_0_pins>;
 	pinctrl-names = "default";
@@ -407,13 +178,3 @@
 		};
 	};
 };
-
-&wifi0 {
-	status = "okay";
-	qcom,ath10k-calibration-variant = "Aruba-AP-303";
-};
-
-&wifi1 {
-	status = "okay";
-	qcom,ath10k-calibration-variant = "Aruba-AP-303";
-};
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts
new file mode 100644
index 0000000000..07bb674520
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts
@@ -0,0 +1,193 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+#include "qcom-ipq4029-aruba-glenmorangie.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Aruba AP-365";
+	compatible = "aruba,ap-365";
+
+	aliases {
+		led-boot = &led_system_green;
+		led-failsafe = &led_system_red;
+		led-running = &led_system_green;
+		led-upgrade = &led_system_red;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_system_red: system_red {
+			label = "ap-365:red:system";
+			gpios = <&tlmm 46 GPIO_ACTIVE_LOW>;
+		};
+
+		led_system_green: system_green {
+			label = "ap-365:green:system";
+			gpios = <&tlmm 61 GPIO_ACTIVE_LOW>;
+		};
+
+		system_amber {
+			label = "ap-365:amber:system";
+			gpios = <&tlmm 49 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	watchdog {
+		compatible = "linux,wdt-gpio";
+		gpios = <&tlmm 41 GPIO_ACTIVE_LOW>;
+		hw_algo = "toggle";
+		hw_margin_ms = <1000>;
+		always-running;
+	};
+};
+
+&tlmm {
+	/*
+	 * In addition to the Pins listed below,
+	 * the following GPIOs have "features":
+	 * 39 - out - pulse low to reset watchdog status flipflop
+	 * 40 - out - active high to enable watchdog
+	 * 41 - out - watchdog poke
+	 * 42 - out - active low to reset BLE radio
+	 * 43 - out - active low to reset TPM
+	 * 47 - out - pulse low to reset warm reset status
+	 * 54 - out - active low to force HW reset
+	 * 18 - in  - PHY interrupt line
+	 * 45 - in  - power monitor interrupt
+	 * 48 - in  - active low when cold reset
+	 * 52 - in  - active high when watchdog reset
+	 */
+
+	phy-reset {
+		line-name = "PHY-reset";
+		gpios = <42 GPIO_ACTIVE_HIGH>;
+		gpio-hog;
+		output-high;
+	};
+};
+
+&i2c_0 {
+	power-monitor@40 {
+		/* No driver */
+		compatible = "isl,isl28022";
+		reg = <0x40>;
+	};
+
+	temperature-sensor@48 {
+		compatible = "adi,ad7416";
+		reg = <0x48>;
+	};
+};
+
+&blsp1_spi1 {
+	pinctrl-0 = <&spi_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <24000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			/*
+			 * There is no partition map for the NOR flash
+			 * in the stock firmware.
+			 *
+			 * All partitions here are based on offsets
+			 * found in the U-Boot GPL code and information
+			 * from smem.
+			 */
+
+			partition@0 {
+				label = "sbl1";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "mibib";
+				reg = <0x40000 0x20000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "qsee";
+				reg = <0x60000 0x60000>;
+				read-only;
+			};
+
+			partition@c0000 {
+				label = "cdt";
+				reg = <0xc0000 0x10000>;
+				read-only;
+			};
+
+			partition@d0000 {
+				label = "ddrparams";
+				reg = <0xd0000 0x10000>;
+				read-only;
+			};
+
+			partition@e0000 {
+				label = "u-boot-env";
+				reg = <0xe0000 0x10000>;
+				read-only;
+			};
+
+			partition@f0000 {
+				label = "appsbl";
+				reg = <0xf0000 0x100000>;
+				read-only;
+			};
+
+			partition@1f0000 {
+				label = "ART";
+				reg = <0x1f0000 0x10000>;
+				read-only;
+			};
+
+			partition@200000 {
+				label = "osss";
+				reg = <0x200000 0x170000>;
+				read-only;
+			};
+
+			partition@370000 {
+				label = "pds";
+				reg = <0x370000 0x10000>;
+				read-only;
+			};
+
+			partition@380000 {
+				label = "apcd";
+				reg = <0x380000 0x10000>;
+				read-only;
+			};
+
+			partition@390000 {
+				label = "mfginfo";
+				reg = <0x390000 0x10000>;
+				read-only;
+			};
+
+			partition@3a0000 {
+				label = "fcache";
+				reg = <0x3a0000 0x10000>;
+				read-only;
+			};
+
+			partition@3b0000 {
+				label = "osss1";
+				reg = <0x3b0000 0x50000>;
+				read-only;
+			};
+		};
+	};
+};
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi
new file mode 100644
index 0000000000..6cf80d47d6
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi
@@ -0,0 +1,249 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+#include "qcom-ipq4019.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/qcom,tcsr.h>
+
+/ {
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+
+	soc {
+		rng@22000 {
+			status = "okay";
+		};
+
+		mdio@90000 {
+			status = "okay";
+			pinctrl-0 = <&mdio_pins>;
+			pinctrl-names = "default";
+
+			/delete-node/ ethernet-phy@0;
+			/delete-node/ ethernet-phy@2;
+			/delete-node/ ethernet-phy@3;
+			/delete-node/ ethernet-phy@4;
+
+			ethernet-phy@5 {
+				reg = <0x5>;
+			};
+		};
+
+		counter@4a1000 {
+			compatible = "qcom,qca-gcnt";
+			reg = <0x4a1000 0x4>;
+		};
+
+		ess_tcsr@1953000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1953000 0x1000>;
+			qcom,ess-interface-select = <TCSR_ESS_PSGMII_RGMII5>;
+		};
+
+		tcsr@1949000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1949000 0x100>;
+			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
+		};
+
+		tcsr@1957000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1957000 0x100>;
+			qcom,wifi_noc_memtype_m0_m2 = <TCSR_WIFI_NOC_MEMTYPE_M0_M2>;
+		};
+
+		crypto@8e3a000 {
+			status = "okay";
+		};
+
+		watchdog@b017000 {
+			status = "okay";
+		};
+
+		ess-switch@c000000 {
+			switch_mac_mode = <0x3>; /* mac mode for RGMII RMII */
+			switch_lan_bmp = <0x0>; /* lan port bitmap */
+			switch_wan_bmp = <0x10>; /* wan port bitmap */
+		};
+
+		edma@c080000 {
+			qcom,single-phy;
+			qcom,num_gmac = <1>;
+			phy-mode = "rgmii-id";
+			status = "okay";
+		};
+
+		i2c_0: i2c@78b7000 {
+			pinctrl-0 = <&i2c_0_pins>;
+			pinctrl-names = "default";
+			status = "ok";
+
+			tpm@29 {
+				/* No Driver */
+				compatible = "atmel,at97sc3203";
+				reg = <0x29>;
+				read-only;
+			};
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "Reset button";
+			gpios = <&tlmm 50 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+};
+
+&blsp_dma {
+	status = "okay";
+};
+
+&blsp1_uart1 {
+	/* Texas Instruments CC2540T BLE radio */
+	pinctrl-0 = <&serial_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&blsp1_uart2 {
+	pinctrl-0 = <&serial_1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&cryptobam {
+	status = "okay";
+};
+
+&gmac0 {
+	qcom,phy_mdio_addr = <5>;
+	qcom,poll_required = <1>;
+	vlan_tag = <0 0x20>;
+};
+
+&qpic_bam {
+	status = "okay";
+};
+
+&tlmm {
+	mdio_pins: mdio_pinmux {
+		mux_1 {
+			pins = "gpio6";
+			function = "mdio";
+			bias-pull-up;
+		};
+		mux_2 {
+			pins = "gpio7";
+			function = "mdc";
+			bias-pull-up;
+		};
+	};
+
+	nand_pins: nand_pins {
+		pullups {
+			pins = "gpio53", "gpio58", "gpio59";
+			function = "qpic";
+			bias-pull-up;
+		};
+
+		pulldowns {
+			pins = "gpio54", "gpio55", "gpio56",
+				"gpio57", "gpio60", "gpio61",
+				"gpio62", "gpio63", "gpio64",
+				"gpio65", "gpio66", "gpio67",
+				"gpio68", "gpio69";
+			function = "qpic";
+			bias-pull-down;
+		};
+	};
+
+	spi_0_pins: spi_0_pinmux {
+		pin {
+			function = "blsp_spi0";
+			pins = "gpio13", "gpio14", "gpio15";
+			drive-strength = <12>;
+			bias-disable;
+		};
+		pin_cs {
+			function = "gpio";
+			pins = "gpio12";
+			drive-strength = <2>;
+			bias-disable;
+			output-high;
+		};
+	};
+
+	i2c_0_pins: i2c_0_pinmux {
+		mux {
+			pins = "gpio10", "gpio11";
+			function = "blsp_i2c0";
+			drive-strength = <4>;
+			bias-disable;
+		};
+	};
+
+	serial_0_pins: serial_0_pinmux {
+		mux {
+			pins = "gpio16", "gpio17";
+			function = "blsp_uart0";
+			bias-disable;
+		};
+	};
+
+	serial_1_pins: serial_1_pinmux {
+		mux {
+			pins = "gpio8", "gpio9";
+			function = "blsp_uart1";
+			bias-disable;
+		};
+	};
+};
+
+&nand {
+	pinctrl-0 = <&nand_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	nand@0 {
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				/* 'aos0' in Aruba firmware */
+				label = "aos0";
+				reg = <0x0 0x2000000>;
+				read-only;
+			};
+
+			partition@2000000 {
+				/* 'aos1' in Aruba firmware */
+				label = "ubi";
+				reg = <0x2000000 0x2000000>;
+			};
+
+			partition@4000000 {
+				label = "aruba-ubifs";
+				reg = <0x4000000 0x4000000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&wifi0 {
+	status = "okay";
+	qcom,ath10k-calibration-variant = "Aruba-AP-303";
+};
+
+&wifi1 {
+	status = "okay";
+	qcom,ath10k-calibration-variant = "Aruba-AP-303";
+};
diff --git a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
index 24e5dc2809..126d944ebb 100644
--- a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
+++ b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
@@ -1,9 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0 OR MIT
 
-#include "qcom-ipq4019.dtsi"
+#include "qcom-ipq4029-aruba-glenmorangie.dtsi"
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/soc/qcom,tcsr.h>
 
 / {
 	model = "Aruba AP-303";
@@ -16,89 +14,6 @@
 		led-upgrade = &led_system_red;
 	};
 
-	memory {
-		device_type = "memory";
-		reg = <0x80000000 0x10000000>;
-	};
-
-	soc {
-		rng@22000 {
-			status = "okay";
-		};
-
-		mdio@90000 {
-			status = "okay";
-			pinctrl-0 = <&mdio_pins>;
-			pinctrl-names = "default";
-
-			/delete-node/ ethernet-phy@0;
-			/delete-node/ ethernet-phy@2;
-			/delete-node/ ethernet-phy@3;
-			/delete-node/ ethernet-phy@4;
-
-			ethernet-phy@5 {
-				reg = <0x5>;
-			};
-		};
-
-		counter@4a1000 {
-			compatible = "qcom,qca-gcnt";
-			reg = <0x4a1000 0x4>;
-		};
-
-		ess_tcsr@1953000 {
-			compatible = "qcom,tcsr";
-			reg = <0x1953000 0x1000>;
-			qcom,ess-interface-select = <TCSR_ESS_PSGMII_RGMII5>;
-		};
-
-		tcsr@1949000 {
-			compatible = "qcom,tcsr";
-			reg = <0x1949000 0x100>;
-			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
-		};
-
-		tcsr@1957000 {
-			compatible = "qcom,tcsr";
-			reg = <0x1957000 0x100>;
-			qcom,wifi_noc_memtype_m0_m2 = <TCSR_WIFI_NOC_MEMTYPE_M0_M2>;
-		};
-
-		crypto@8e3a000 {
-			status = "okay";
-		};
-
-		watchdog@b017000 {
-			status = "okay";
-		};
-
-		ess-switch@c000000 {
-			switch_mac_mode = <0x3>; /* mac mode for RGMII RMII */
-			switch_lan_bmp = <0x0>; /* lan port bitmap */
-			switch_wan_bmp = <0x10>; /* wan port bitmap */
-		};
-
-		edma@c080000 {
-			qcom,single-phy;
-			qcom,num_gmac = <1>;
-			phy-mode = "rgmii-id";
-			status = "okay";
-		};
-
-		i2c_0: i2c@78b7000 {
-			pinctrl-0 = <&i2c_0_pins>;
-			pinctrl-names = "default";
-			status = "ok";
-
-			tpm@29 {
-				/* No Driver */
-				compatible = "atmel,at97sc3203";
-				reg = <0x29>;
-				read-only;
-			};
-		};
-	};
-
 	leds {
 		compatible = "gpio-leds";
 
@@ -124,47 +39,6 @@
 			gpios = <&tlmm 47 GPIO_ACTIVE_HIGH>;
 		};
 	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		reset {
-			label = "Reset button";
-			gpios = <&tlmm 50 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
-};
-
-&blsp_dma {
-	status = "okay";
-};
-
-&blsp1_uart1 {
-	/* Texas Instruments CC2540T BLE radio */
-	pinctrl-0 = <&serial_0_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&blsp1_uart2 {
-	pinctrl-0 = <&serial_1_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
-&cryptobam {
-	status = "okay";
-};
-
-&gmac0 {
-	qcom,phy_mdio_addr = <5>;
-	qcom,poll_required = <1>;
-	vlan_tag = <0 0x20>;
-};
-
-&qpic_bam {
-	status = "okay";
 };
 
 &tlmm {
@@ -176,76 +50,6 @@
 	 * 43 - out - active low to reset BLE radio
 	 * 19 - in  - active high when DC powered
 	 */
-	mdio_pins: mdio_pinmux {
-		mux_1 {
-			pins = "gpio6";
-			function = "mdio";
-			bias-pull-up;
-		};
-		mux_2 {
-			pins = "gpio7";
-			function = "mdc";
-			bias-pull-up;
-		};
-	};
-
-	nand_pins: nand_pins {
-		pullups {
-			pins = "gpio53", "gpio58", "gpio59";
-			function = "qpic";
-			bias-pull-up;
-		};
-
-		pulldowns {
-			pins = "gpio54", "gpio55", "gpio56",
-				"gpio57", "gpio60", "gpio61",
-				"gpio62", "gpio63", "gpio64",
-				"gpio65", "gpio66", "gpio67",
-				"gpio68", "gpio69";
-			function = "qpic";
-			bias-pull-down;
-		};
-	};
-
-	spi_0_pins: spi_0_pinmux {
-		pin {
-			function = "blsp_spi0";
-			pins = "gpio13", "gpio14", "gpio15";
-			drive-strength = <12>;
-			bias-disable;
-		};
-		pin_cs {
-			function = "gpio";
-			pins = "gpio12";
-			drive-strength = <2>;
-			bias-disable;
-			output-high;
-		};
-	};
-	i2c_0_pins: i2c_0_pinmux {
-		mux {
-			pins = "gpio10", "gpio11";
-			function = "blsp_i2c0";
-			drive-strength = <4>;
-			bias-disable;
-		};
-	};
-
-	serial_0_pins: serial_0_pinmux {
-		mux {
-			pins = "gpio16", "gpio17";
-			function = "blsp_uart0";
-			bias-disable;
-		};
-	};
-
-	serial_1_pins: serial_1_pinmux {
-		mux {
-			pins = "gpio8", "gpio9";
-			function = "blsp_uart1";
-			bias-disable;
-		};
-	};
 
 	phy-reset {
 		line-name = "PHY-reset";
@@ -255,39 +59,6 @@
 	};
 };
 
-&nand {
-	pinctrl-0 = <&nand_pins>;
-	pinctrl-names = "default";
-	status = "okay";
-
-	nand@0 {
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				/* 'aos0' in Aruba firmware */
-				label = "aos0";
-				reg = <0x0 0x2000000>;
-				read-only;
-			};
-
-			partition@2000000 {
-				/* 'aos1' in AVM firmware */
-				label = "ubi";
-				reg = <0x2000000 0x2000000>;
-			};
-
-			partition@4000000 {
-				label = "aruba-ubifs";
-				reg = <0x4000000 0x4000000>;
-				read-only;
-			};
-		};
-	};
-};
-
 &blsp1_spi1 {
 	pinctrl-0 = <&spi_0_pins>;
 	pinctrl-names = "default";
@@ -407,13 +178,3 @@
 		};
 	};
 };
-
-&wifi0 {
-	status = "okay";
-	qcom,ath10k-calibration-variant = "Aruba-AP-303";
-};
-
-&wifi1 {
-	status = "okay";
-	qcom,ath10k-calibration-variant = "Aruba-AP-303";
-};
diff --git a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts
new file mode 100644
index 0000000000..07bb674520
--- /dev/null
+++ b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-ap-365.dts
@@ -0,0 +1,193 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+#include "qcom-ipq4029-aruba-glenmorangie.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Aruba AP-365";
+	compatible = "aruba,ap-365";
+
+	aliases {
+		led-boot = &led_system_green;
+		led-failsafe = &led_system_red;
+		led-running = &led_system_green;
+		led-upgrade = &led_system_red;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_system_red: system_red {
+			label = "ap-365:red:system";
+			gpios = <&tlmm 46 GPIO_ACTIVE_LOW>;
+		};
+
+		led_system_green: system_green {
+			label = "ap-365:green:system";
+			gpios = <&tlmm 61 GPIO_ACTIVE_LOW>;
+		};
+
+		system_amber {
+			label = "ap-365:amber:system";
+			gpios = <&tlmm 49 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	watchdog {
+		compatible = "linux,wdt-gpio";
+		gpios = <&tlmm 41 GPIO_ACTIVE_LOW>;
+		hw_algo = "toggle";
+		hw_margin_ms = <1000>;
+		always-running;
+	};
+};
+
+&tlmm {
+	/*
+	 * In addition to the Pins listed below,
+	 * the following GPIOs have "features":
+	 * 39 - out - pulse low to reset watchdog status flipflop
+	 * 40 - out - active high to enable watchdog
+	 * 41 - out - watchdog poke
+	 * 42 - out - active low to reset BLE radio
+	 * 43 - out - active low to reset TPM
+	 * 47 - out - pulse low to reset warm reset status
+	 * 54 - out - active low to force HW reset
+	 * 18 - in  - PHY interrupt line
+	 * 45 - in  - power monitor interrupt
+	 * 48 - in  - active low when cold reset
+	 * 52 - in  - active high when watchdog reset
+	 */
+
+	phy-reset {
+		line-name = "PHY-reset";
+		gpios = <42 GPIO_ACTIVE_HIGH>;
+		gpio-hog;
+		output-high;
+	};
+};
+
+&i2c_0 {
+	power-monitor@40 {
+		/* No driver */
+		compatible = "isl,isl28022";
+		reg = <0x40>;
+	};
+
+	temperature-sensor@48 {
+		compatible = "adi,ad7416";
+		reg = <0x48>;
+	};
+};
+
+&blsp1_spi1 {
+	pinctrl-0 = <&spi_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <24000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			/*
+			 * There is no partition map for the NOR flash
+			 * in the stock firmware.
+			 *
+			 * All partitions here are based on offsets
+			 * found in the U-Boot GPL code and information
+			 * from smem.
+			 */
+
+			partition@0 {
+				label = "sbl1";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "mibib";
+				reg = <0x40000 0x20000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "qsee";
+				reg = <0x60000 0x60000>;
+				read-only;
+			};
+
+			partition@c0000 {
+				label = "cdt";
+				reg = <0xc0000 0x10000>;
+				read-only;
+			};
+
+			partition@d0000 {
+				label = "ddrparams";
+				reg = <0xd0000 0x10000>;
+				read-only;
+			};
+
+			partition@e0000 {
+				label = "u-boot-env";
+				reg = <0xe0000 0x10000>;
+				read-only;
+			};
+
+			partition@f0000 {
+				label = "appsbl";
+				reg = <0xf0000 0x100000>;
+				read-only;
+			};
+
+			partition@1f0000 {
+				label = "ART";
+				reg = <0x1f0000 0x10000>;
+				read-only;
+			};
+
+			partition@200000 {
+				label = "osss";
+				reg = <0x200000 0x170000>;
+				read-only;
+			};
+
+			partition@370000 {
+				label = "pds";
+				reg = <0x370000 0x10000>;
+				read-only;
+			};
+
+			partition@380000 {
+				label = "apcd";
+				reg = <0x380000 0x10000>;
+				read-only;
+			};
+
+			partition@390000 {
+				label = "mfginfo";
+				reg = <0x390000 0x10000>;
+				read-only;
+			};
+
+			partition@3a0000 {
+				label = "fcache";
+				reg = <0x3a0000 0x10000>;
+				read-only;
+			};
+
+			partition@3b0000 {
+				label = "osss1";
+				reg = <0x3b0000 0x50000>;
+				read-only;
+			};
+		};
+	};
+};
diff --git a/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi
new file mode 100644
index 0000000000..6cf80d47d6
--- /dev/null
+++ b/target/linux/ipq40xx/files-5.4/arch/arm/boot/dts/qcom-ipq4029-aruba-glenmorangie.dtsi
@@ -0,0 +1,249 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+#include "qcom-ipq4019.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/qcom,tcsr.h>
+
+/ {
+	memory {
+		device_type = "memory";
+		reg = <0x80000000 0x10000000>;
+	};
+
+	soc {
+		rng@22000 {
+			status = "okay";
+		};
+
+		mdio@90000 {
+			status = "okay";
+			pinctrl-0 = <&mdio_pins>;
+			pinctrl-names = "default";
+
+			/delete-node/ ethernet-phy@0;
+			/delete-node/ ethernet-phy@2;
+			/delete-node/ ethernet-phy@3;
+			/delete-node/ ethernet-phy@4;
+
+			ethernet-phy@5 {
+				reg = <0x5>;
+			};
+		};
+
+		counter@4a1000 {
+			compatible = "qcom,qca-gcnt";
+			reg = <0x4a1000 0x4>;
+		};
+
+		ess_tcsr@1953000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1953000 0x1000>;
+			qcom,ess-interface-select = <TCSR_ESS_PSGMII_RGMII5>;
+		};
+
+		tcsr@1949000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1949000 0x100>;
+			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
+		};
+
+		tcsr@1957000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1957000 0x100>;
+			qcom,wifi_noc_memtype_m0_m2 = <TCSR_WIFI_NOC_MEMTYPE_M0_M2>;
+		};
+
+		crypto@8e3a000 {
+			status = "okay";
+		};
+
+		watchdog@b017000 {
+			status = "okay";
+		};
+
+		ess-switch@c000000 {
+			switch_mac_mode = <0x3>; /* mac mode for RGMII RMII */
+			switch_lan_bmp = <0x0>; /* lan port bitmap */
+			switch_wan_bmp = <0x10>; /* wan port bitmap */
+		};
+
+		edma@c080000 {
+			qcom,single-phy;
+			qcom,num_gmac = <1>;
+			phy-mode = "rgmii-id";
+			status = "okay";
+		};
+
+		i2c_0: i2c@78b7000 {
+			pinctrl-0 = <&i2c_0_pins>;
+			pinctrl-names = "default";
+			status = "ok";
+
+			tpm@29 {
+				/* No Driver */
+				compatible = "atmel,at97sc3203";
+				reg = <0x29>;
+				read-only;
+			};
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "Reset button";
+			gpios = <&tlmm 50 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+};
+
+&blsp_dma {
+	status = "okay";
+};
+
+&blsp1_uart1 {
+	/* Texas Instruments CC2540T BLE radio */
+	pinctrl-0 = <&serial_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&blsp1_uart2 {
+	pinctrl-0 = <&serial_1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&cryptobam {
+	status = "okay";
+};
+
+&gmac0 {
+	qcom,phy_mdio_addr = <5>;
+	qcom,poll_required = <1>;
+	vlan_tag = <0 0x20>;
+};
+
+&qpic_bam {
+	status = "okay";
+};
+
+&tlmm {
+	mdio_pins: mdio_pinmux {
+		mux_1 {
+			pins = "gpio6";
+			function = "mdio";
+			bias-pull-up;
+		};
+		mux_2 {
+			pins = "gpio7";
+			function = "mdc";
+			bias-pull-up;
+		};
+	};
+
+	nand_pins: nand_pins {
+		pullups {
+			pins = "gpio53", "gpio58", "gpio59";
+			function = "qpic";
+			bias-pull-up;
+		};
+
+		pulldowns {
+			pins = "gpio54", "gpio55", "gpio56",
+				"gpio57", "gpio60", "gpio61",
+				"gpio62", "gpio63", "gpio64",
+				"gpio65", "gpio66", "gpio67",
+				"gpio68", "gpio69";
+			function = "qpic";
+			bias-pull-down;
+		};
+	};
+
+	spi_0_pins: spi_0_pinmux {
+		pin {
+			function = "blsp_spi0";
+			pins = "gpio13", "gpio14", "gpio15";
+			drive-strength = <12>;
+			bias-disable;
+		};
+		pin_cs {
+			function = "gpio";
+			pins = "gpio12";
+			drive-strength = <2>;
+			bias-disable;
+			output-high;
+		};
+	};
+
+	i2c_0_pins: i2c_0_pinmux {
+		mux {
+			pins = "gpio10", "gpio11";
+			function = "blsp_i2c0";
+			drive-strength = <4>;
+			bias-disable;
+		};
+	};
+
+	serial_0_pins: serial_0_pinmux {
+		mux {
+			pins = "gpio16", "gpio17";
+			function = "blsp_uart0";
+			bias-disable;
+		};
+	};
+
+	serial_1_pins: serial_1_pinmux {
+		mux {
+			pins = "gpio8", "gpio9";
+			function = "blsp_uart1";
+			bias-disable;
+		};
+	};
+};
+
+&nand {
+	pinctrl-0 = <&nand_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	nand@0 {
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				/* 'aos0' in Aruba firmware */
+				label = "aos0";
+				reg = <0x0 0x2000000>;
+				read-only;
+			};
+
+			partition@2000000 {
+				/* 'aos1' in Aruba firmware */
+				label = "ubi";
+				reg = <0x2000000 0x2000000>;
+			};
+
+			partition@4000000 {
+				label = "aruba-ubifs";
+				reg = <0x4000000 0x4000000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&wifi0 {
+	status = "okay";
+	qcom,ath10k-calibration-variant = "Aruba-AP-303";
+};
+
+&wifi1 {
+	status = "okay";
+	qcom,ath10k-calibration-variant = "Aruba-AP-303";
+};
diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index bf69953eac..5e6bd1d1b7 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -147,26 +147,33 @@ define Device/alfa-network_ap120c-ac
 endef
 TARGET_DEVICES += alfa-network_ap120c-ac
 
-define Device/aruba_ap-303
+define Device/aruba_glenmorangie
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := Aruba
-	DEVICE_MODEL := AP-303
 	SOC := qcom-ipq4029
 	DEVICE_PACKAGES := ipq-wifi-aruba_ap-303
 	IMAGES := sysupgrade.bin
 endef
+
+define Device/aruba_ap-303
+	$(call Device/aruba_glenmorangie)
+	DEVICE_MODEL := AP-303
+endef
 TARGET_DEVICES += aruba_ap-303
 
 define Device/aruba_ap-303h
-	$(call Device/FitImageLzma)
-	DEVICE_VENDOR := Aruba
+	$(call Device/aruba_glenmorangie)
 	DEVICE_MODEL := AP-303H
-	SOC := qcom-ipq4029
-	DEVICE_PACKAGES := ipq-wifi-aruba_ap-303
-	IMAGES := sysupgrade.bin
 endef
 TARGET_DEVICES += aruba_ap-303h
 
+define Device/aruba_ap-365
+	$(call Device/aruba_glenmorangie)
+	DEVICE_MODEL := AP-365
+	DEVICE_PACKAGES += kmod-hwmon-ad7418
+endef
+TARGET_DEVICES += aruba_ap-365
+
 define Device/asus_map-ac2200
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := ASUS
diff --git a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
index 2af342c4be..2ec1007191 100644
--- a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
@@ -10,7 +10,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -785,11 +785,46 @@ dtb-$(CONFIG_ARCH_QCOM) += \
+@@ -785,11 +785,47 @@ dtb-$(CONFIG_ARCH_QCOM) += \
  	qcom-apq8074-dragonboard.dtb \
  	qcom-apq8084-ifc6540.dtb \
  	qcom-apq8084-mtp.dtb \
@@ -52,6 +52,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-ap-303.dtb \
 +	qcom-ipq4029-ap-303h.dtb \
++	qcom-ipq4029-ap-365.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
  	qcom-ipq8064-ap148.dtb \
diff --git a/target/linux/ipq40xx/patches-5.4/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-5.4/901-arm-boot-add-dts-files.patch
index 46af5fb5c9..5ce59979a0 100644
--- a/target/linux/ipq40xx/patches-5.4/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-5.4/901-arm-boot-add-dts-files.patch
@@ -10,7 +10,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -837,11 +837,46 @@ dtb-$(CONFIG_ARCH_QCOM) += \
+@@ -837,11 +837,47 @@ dtb-$(CONFIG_ARCH_QCOM) += \
  	qcom-apq8074-dragonboard.dtb \
  	qcom-apq8084-ifc6540.dtb \
  	qcom-apq8084-mtp.dtb \
@@ -52,6 +52,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-ap-303.dtb \
 +	qcom-ipq4029-ap-303h.dtb \
++	qcom-ipq4029-ap-365.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
  	qcom-ipq8064-ap148.dtb \
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
