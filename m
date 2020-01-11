Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A48F138407
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 00:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I/rV9L0JYClsd17B77xa1QoJqaqbHJmyFYJ705ewjpY=; b=bIKwp5ihuqjjCQ
	SeflSdN3SWX71/noFDxS6xYjOXxRuh9nZn0eXlS9tOurrMWwn6foqTA1goFtVfzJDfCW9c6VEtY1w
	lenUqCm5QI+SVN2amyvpnIZQfTl0UlMpmTcLYY7nIYk6hHc3qqxSwAoi76zpwfKeb5lI1U7ln136O
	3vQj5jhlI5r/fXP0Ua99TWupx6YqnI80SRNAB9DhM+hccQvjuVNLa9zCaXJZrYbVLCJs3pEYrDzxl
	+7S7lmwH3T2TkQsxLbnZ3XfBKe9XalcsW6MtdD8ii/jf1bSx7ojB4UvwPGi1zKNa/jCNaF6bdaShl
	frppPhqVRxitCKkVh4Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqQJb-0007sD-QB; Sat, 11 Jan 2020 23:37:11 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iqQJP-0007rX-VZ
 for openwrt-devel@lists.openwrt.org; Sat, 11 Jan 2020 23:37:02 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F2D550087E87179CD5FC698.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2d:5500:87e8:7179:cd5f:c698])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 86BAA1E13A
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 Jan 2020 00:36:51 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Jan 2020 00:36:42 +0100
Message-Id: <20200111233642.41124-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_153700_316003_84EB5605 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: add support for Aruba AP-303H
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

The Aruba AP-303H is the hospitality version of the Aruba AP-303H with a
POE-passthrough enabled ethernet switch instead of a sigle PHY.

Hardware
--------

SoC:   Qualcomm IPQ4029
RAM:   512M DDR3
FLASH: - 128MB SPI-NAND (Macronix)
       - 4MB SPI-NOR (Macronix MX25R3235F)
TPM:   Atmel AT97SC3203
BLE:   Texas Instruments CC2540T
       attached to ttyMSM1
ETH:   Qualcomm QCA8075
LED:   WiFi (amber / green)
       System (red / green /amber)
       PSE (green)
BTN:   Reset
USB:   USB 2.0

To connect to the serial console, you can solder to the labled pads next
to the USB port or use your Aruba supplied UARt adapter.

Do NOT plug a standard USB cable into the Console labled USB-port!
Aruba/HPE simply put UART on the micro-USB pins. You can solder yourself
an adapter cable:

VCC - NC
 D+ - TX
 D- - RX
GND - GND

The console setting in bootloader and OS is 9600 8N1. Voltage level is
3.3V.

To enable a full list of commands in the U-Boot "help" command, execute
the literal "diag" command.

Installation
------------

1. Get the OpenWrt initramfs image. Rename it to ipq40xx.ari and put it
   into the TFTP server root directory. Configure the TFTP server to
   be reachable at 192.168.1.75/24. Connect the machine running the TFTP
   server to the E0 (!) ethernet port of the access point, as it only
   tries to pull from the WAN port.

2. Connect to the serial console. Interrupt autobooting by pressing
   Enter when prompted.

3. Configure the bootargs and bootcmd for OpenWrt.
   $ setenv bootargs_openwrt "setenv bootargs console=ttyMSM0,9600n8"
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
   /tmp folder on the device. You will need to plug into E1-E3 ports of
   the access point to reach OpenWrt, as E0 is the WAN port of the
   device.

6. Flash OpenWrt:
   $ ubidetach -p /dev/mtd16
   $ ubiformat /dev/mtd16
   $ sysupgrade -n /tmp/openwrt-sysupgrade.bin

To go back to the stock firmware, simply reset the bootcmd in the
bootloader to the original value:

  $ setenv bootcmd "boot"
  $ saveenv

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ipq40xx/base-files/etc/board.d/02_network |   5 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   6 +-
 .../base-files/lib/upgrade/platform.sh        |   1 +
 .../arm/boot/dts/qcom-ipq4029-ap-303h.dts     | 421 ++++++++++++++++++
 target/linux/ipq40xx/image/Makefile           |  10 +
 .../901-arm-boot-add-dts-files.patch          |   3 +-
 6 files changed, 443 insertions(+), 3 deletions(-)
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index ae8cb2efe7..1905ab6b71 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -17,6 +17,11 @@ ipq40xx_setup_interfaces()
 	engenius,ens620ext)
 		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		;;
+	aruba,ap-303h)
+		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		ucidef_add_switch "switch0" \
+			"0u@eth0" "2:lan:1" "3:lan:2" "4:lan:3" "0u@eth1" "5:wan"
+		;;
 	asus,map-ac2200|\
 	cilab,meshpoint-one|\
 	openmesh,a42|\
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 8b6abc4ff7..724ec2923b 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -51,7 +51,8 @@ case "$FIRMWARE" in
 	qcom,ap-dk01.1-c1)
 		caldata_extract "ART" 0x1000 0x2f20
 		;;
-	aruba,ap-303)
+	aruba,ap-303 |\
+	aruba,ap-303h)
 		caldata_extract "ART" 0x1000 0x2f20
 		ath10k_patch_mac $(mtd_get_mac_binary mfginfo 0x1D)
 		;;
@@ -120,7 +121,8 @@ case "$FIRMWARE" in
 	qcom,ap-dk01.1-c1)
 		caldata_extract "ART" 0x5000 0x2f20
 		;;
-	aruba,ap-303)
+	aruba,ap-303 |\
+	aruba,ap-303h)
 		caldata_extract "ART" 0x5000 0x2f20
 		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary mfginfo 0x1D) +1)
 		;;
diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
index 60070fa9e3..cdf7a2b8f2 100644
--- a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
@@ -48,6 +48,7 @@ platform_do_upgrade() {
 	case "$(board_name)" in
 	8dev,jalapeno |\
 	aruba,ap-303 |\
+	aruba,ap-303h |\
 	avm,fritzbox-7530 |\
 	avm,fritzrepeater-1200 |\
 	avm,fritzrepeater-3000 |\
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
new file mode 100644
index 0000000000..0859f97c9e
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303h.dts
@@ -0,0 +1,421 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+#include "qcom-ipq4019.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/qcom,tcsr.h>
+
+/ {
+	model = "Aruba AP-303H";
+	compatible = "aruba,ap-303h";
+
+	aliases {
+		led-boot = &led_system_green;
+		led-failsafe = &led_system_red;
+		led-running = &led_system_green;
+		led-upgrade = &led_system_amber;
+	};
+
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
+			reset-gpios = <&tlmm 19 GPIO_ACTIVE_LOW>;
+			reset-delay-us = <2000>;
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
+			qcom,ess-interface-select = <TCSR_ESS_PSGMII>;
+		};
+
+		tcsr@1949000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1949000 0x100>;
+			qcom,wifi_glb_cfg = <TCSR_WIFI_GLB_CFG>;
+		};
+
+		tcsr@194b000 {
+			compatible = "qcom,tcsr";
+			reg = <0x194b000 0x100>;
+			qcom,usb-hsphy-mode-select = <TCSR_USB_HSPHY_HOST_MODE>;
+		};
+
+		tcsr@1957000 {
+			compatible = "qcom,tcsr";
+			reg = <0x1957000 0x100>;
+			qcom,wifi_noc_memtype_m0_m2 = <TCSR_WIFI_NOC_MEMTYPE_M0_M2>;
+		};
+
+		usb2@60f8800 {
+			status = "okay";
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
+			status = "okay";
+		};
+
+		edma@c080000 {
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
+
+			power-monitor@40 {
+				/* No driver */
+				compatible = "isl,isl28022";
+				reg = <0x40>;
+		    };
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		wifi_green {
+			label = "ap-303h:green:wifi";
+			gpios = <&tlmm 27 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		wifi_amber {
+			label = "ap-303h:amber:wifi";
+			gpios = <&tlmm 28 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		pse {
+			label = "ap-303h:green:pse";
+			gpios = <&tlmm 42 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_system_red: system_red {
+			label = "ap-303h:red:system";
+			gpios = <&tlmm 25 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_system_green: system_green {
+			label = "ap-303h:green:system";
+			gpios = <&tlmm 24 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_system_amber: system_amber {
+			label = "ap-303h:amber:system";
+			gpios = <&tlmm 26 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "Reset button";
+			gpios = <&tlmm 18 GPIO_ACTIVE_LOW>;
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
+	pinctrl-0 = <&serial_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&blsp1_uart2 {
+	/* Texas Instruments CC2540T BLE radio */
+	pinctrl-0 = <&serial_1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&cryptobam {
+	status = "okay";
+};
+
+&qpic_bam {
+	status = "okay";
+};
+
+&tlmm {
+	/*
+	 * In addition to the Pins listed below,
+	 * the following GPIOs have "features":
+	 * 39 - out - active low to force HW reset
+	 * 32 - out - active low to reset TPM
+	 * 43 - out - active low to reset BLE radio
+	 * 41 - out - pulse to set warm reset status
+	 * 34 - out - active low to enable PSE port
+	 * 22 - in  - active low when 802.3at powered
+	 * 29 - in  - active high when DC powered
+	 * 40 - in  - active low when reset due to cold HW reset
+	 * 30 - in  - active low when USB overcurrent detected
+	 * 35 - in  - interrupt line for power monitor chip
+	 * 31 - in  - active low when PSE port active
+	 */
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
+	spi_0_pins: spi_0_pinmux {
+		pin {
+			function = "blsp_spi0";
+			pins = "gpio13", "gpio14", "gpio15";
+			drive-strength = <12>;
+			bias-disable;
+		};
+		pin_cs {
+			function = "gpio";
+			pins = "gpio12", "gpio59";
+			drive-strength = <2>;
+			bias-disable;
+			output-high;
+		};
+	};
+
+	i2c_0_pins: i2c_0_pinmux {
+		mux {
+			pins = "gpio20", "gpio21";
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
+
+	usb-power {
+		line-name = "USB-power";
+		gpios = <23 GPIO_ACTIVE_HIGH>;
+		gpio-hog;
+		output-high;
+	};
+};
+
+&blsp1_spi1 {
+	pinctrl-0 = <&spi_0_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+	cs-gpios = <&tlmm 12 GPIO_ACTIVE_HIGH>, <&tlmm 59 GPIO_ACTIVE_HIGH>;
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
+				label = "appsblenv";
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
+			partition@1e0000 {
+				label = "ART";
+				reg = <0x1f0000 0x10000>;
+				read-only;
+			};
+
+			partition@1f0000 {
+				label = "osss";
+				reg = <0x200000 0x170000>;
+				read-only;
+			};
+
+			partition@200000 {
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
+				/* Called osss1 in smem */
+				label = "u-boot-env-bak";
+				reg = <0x3b0000 0x10000>;
+				read-only;
+			};
+
+			partition@3f0000 {
+				label = "u-boot-env";
+				reg = <0x3c0000 0x40000>;
+				read-only;
+			};
+		};
+	};
+
+	flash@1 {
+		status = "okay";
+
+		compatible = "spi-nand";
+		reg = <1>;
+		spi-max-frequency = <24000000>;
+
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
+&usb2_hs_phy {
+	status = "okay";
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
index f68a8d5288..2439ab0ca8 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -102,6 +102,16 @@ define Device/aruba_ap-303
 endef
 TARGET_DEVICES += aruba_ap-303
 
+define Device/aruba_ap-303h
+	$(call Device/FitImageLzma)
+	DEVICE_VENDOR := Aruba
+	DEVICE_MODEL := AP-303H
+	SOC := qcom-ipq4029
+	DEVICE_PACKAGES := ipq-wifi-aruba_ap-303
+	IMAGES := sysupgrade.bin
+endef
+TARGET_DEVICES += aruba_ap-303h
+
 define Device/asus_map-ac2200
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := ASUS
diff --git a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
index 8e97b3b51b..0d2db647ce 100644
--- a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
@@ -10,7 +10,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -785,11 +785,38 @@ dtb-$(CONFIG_ARCH_QCOM) += \
+@@ -785,11 +785,39 @@ dtb-$(CONFIG_ARCH_QCOM) += \
  	qcom-apq8074-dragonboard.dtb \
  	qcom-apq8084-ifc6540.dtb \
  	qcom-apq8084-mtp.dtb \
@@ -44,6 +44,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4019-wpj419.dtb \
 +	qcom-ipq4028-wpj428.dtb \
 +	qcom-ipq4029-ap-303.dtb \
++	qcom-ipq4029-ap-303h.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
  	qcom-ipq8064-ap148.dtb \
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
