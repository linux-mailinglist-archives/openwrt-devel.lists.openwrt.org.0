Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58F3122AA5
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 12:52:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RugScofiIllN5muMHM2QHX+xUl0gnHLiB1D1xJRroSE=; b=LfLmoQOw9Lm6YxU2U+A7jt+rYL
	jdB2vfih4nvwTbar3bJ7hUvSD3RjSTXfsqsmnohTeeECAoPtiX6nOqf+e1Ot1fteaRU87xRcIX3JB
	CArimjWqTxfpm/Q94x2eaxtAOJgcSoInzjIMyQPCgb+86Vst2cY/y4YlL5OYj14gffZo3gMRNcX6e
	JvoJh8YTYuX19WkLGjZY//mAIzKsujfANseJddhaZ567y1kAB7s+UYqggGWaIOT7ys1BuD0sNCV43
	i6Ix8E+KjM8fQJD67IsamifVavZZKr63fQ4vsURvsKGdY6Gfxm9C0ihMwDxcQHSmr30okPOawVMZh
	2Sg4UtZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBP9-0007Cr-7y; Tue, 17 Dec 2019 11:52:43 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ihBOn-00071Z-Ia
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 11:52:24 +0000
Received: from dbauer-x250.tu-darmstadt.de (unknown
 [IPv6:2001:41b8:83c:fa01:157c:afba:5cc1:a85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 271E9227A3
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Dec 2019 12:52:16 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Dec 2019 12:52:04 +0100
Message-Id: <20191217115204.9422-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191217115204.9422-1-mail@david-bauer.net>
References: <20191217115204.9422-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_035221_933387_279DD055 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ipq40xx: add support for Aruba AP-303
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
LED:   WiFi (amber / green)
       System (red / green)
BTN:   Reset

To connect to the serial console, you can solder to the labled pads next
to the USB port or use your Aruba supplied UARt adapter.

Do NOT plug a standard USB cable int the Console labled USB-port!
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

1. Put the OpenWrt initramfs image. Rename it to ipq40xx.ari and put it
   into the TFTP  server root directory. Configure the TFTP server to
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
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   8 +
 target/linux/ipq40xx/base-files/etc/inittab   |   1 +
 .../preinit/06_set_preinit_iface_ipq40xx.sh   |   1 +
 .../base-files/lib/upgrade/platform.sh        |   1 +
 .../arch/arm/boot/dts/qcom-ipq4029-ap-303.dts | 420 ++++++++++++++++++
 target/linux/ipq40xx/image/Makefile           |  10 +
 ...d-spi-nor-Add-support-for-mx25r3235f.patch |  26 ++
 .../901-arm-boot-add-dts-files.patch          |   3 +-
 9 files changed, 470 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
 create mode 100644 target/linux/ipq40xx/patches-4.19/304-mtd-spi-nor-Add-support-for-mx25r3235f.patch

diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index 122c1a103d..dcf684f511 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -40,6 +40,7 @@ ipq40xx_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0u@eth0" "1:lan" "2:lan" "3:lan" "4:lan"
 		;;
+	aruba,ap-303|\
 	avm,fritzrepeater-1200|\
 	engenius,eap1300|\
 	meraki,mr33|\
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 3d46519415..8b6abc4ff7 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -51,6 +51,10 @@ case "$FIRMWARE" in
 	qcom,ap-dk01.1-c1)
 		caldata_extract "ART" 0x1000 0x2f20
 		;;
+	aruba,ap-303)
+		caldata_extract "ART" 0x1000 0x2f20
+		ath10k_patch_mac $(mtd_get_mac_binary mfginfo 0x1D)
+		;;
 	asus,map-ac2200)
 		caldata_extract_ubi "Factory" 0x1000 0x2f20
 		;;
@@ -116,6 +120,10 @@ case "$FIRMWARE" in
 	qcom,ap-dk01.1-c1)
 		caldata_extract "ART" 0x5000 0x2f20
 		;;
+	aruba,ap-303)
+		caldata_extract "ART" 0x5000 0x2f20
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary mfginfo 0x1D) +1)
+		;;
 	asus,map-ac2200)
 		caldata_extract_ubi "Factory" 0x5000 0x2f20
 		;;
diff --git a/target/linux/ipq40xx/base-files/etc/inittab b/target/linux/ipq40xx/base-files/etc/inittab
index 809bba5e5f..3181021a05 100644
--- a/target/linux/ipq40xx/base-files/etc/inittab
+++ b/target/linux/ipq40xx/base-files/etc/inittab
@@ -2,3 +2,4 @@
 ::sysinit:/etc/init.d/rcS S boot
 ::shutdown:/etc/init.d/rcS K shutdown
 ttyMSM0::askfirst:/usr/libexec/login.sh
+ttyMSM1::askfirst:/usr/libexec/login.sh
diff --git a/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh b/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh
index be4b6322cb..a0dec1042a 100644
--- a/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh
+++ b/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh
@@ -4,6 +4,7 @@ set_preinit_iface() {
 	. /lib/functions.sh
 
 	case $(board_name) in
+	aruba,ap-303| \
 	asus,rt-ac58u| \
 	avm,fritzbox-4040| \
 	glinet,gl-b1300| \
diff --git a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
index 41f8fcfccb..60070fa9e3 100644
--- a/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ipq40xx/base-files/lib/upgrade/platform.sh
@@ -47,6 +47,7 @@ zyxel_do_upgrade() {
 platform_do_upgrade() {
 	case "$(board_name)" in
 	8dev,jalapeno |\
+	aruba,ap-303 |\
 	avm,fritzbox-7530 |\
 	avm,fritzrepeater-1200 |\
 	avm,fritzrepeater-3000 |\
diff --git a/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
new file mode 100644
index 0000000000..fad4a38a4b
--- /dev/null
+++ b/target/linux/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4029-ap-303.dts
@@ -0,0 +1,420 @@
+// SPDX-License-Identifier: GPL-2.0 OR MIT
+
+#include "qcom-ipq4019.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/soc/qcom,tcsr.h>
+
+/ {
+	model = "Aruba AP-303";
+	compatible = "aruba,ap-303";
+
+	aliases {
+		led-boot = &led_system_green;
+		led-failsafe = &led_system_red;
+		led-running = &led_system_green;
+		led-upgrade = &led_system_red;
+		label-mac-device = &gmac0;
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
+	leds {
+		compatible = "gpio-leds";
+
+		wifi_green {
+			label = "ap-303:green:wifi";
+			gpios = <&tlmm 39 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		wifi_amber {
+			label = "ap-303:amber:wifi";
+			gpios = <&tlmm 40 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		led_system_red: system_red {
+			label = "ap-303:red:system";
+			gpios = <&tlmm 46 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_system_green: system_green {
+			label = "ap-303:green:system";
+			gpios = <&tlmm 47 GPIO_ACTIVE_HIGH>;
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
+	/*
+	 * In addition to the Pins listed below,
+	 * the following GPIOs have "features":
+	 * 54 - out - active low to force HW reset
+	 * 41 - out - active low to reset TPM
+	 * 43 - out - active low to reset BLE radio
+	 * 19 - in  - active high when DC powered
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
+
+	phy-reset {
+		line-name = "PHY-reset";
+		gpios = <42 GPIO_ACTIVE_HIGH>;
+		gpio-hog;
+		output-high;
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
+				/* 'aos1' in AVM firmware */
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
+				label = "ART";
+				reg = <0xe0000 0x10000>;
+				read-only;
+			};
+
+			partition@f0000 {
+				label = "appsbl";
+				reg = <0xf0000 0xf0000>;
+				read-only;
+			};
+
+			partition@1e0000 {
+				label = "mfginfo";
+				reg = <0x1e0000 0x10000>;
+				read-only;
+			};
+
+			partition@1f0000 {
+				label = "apcd";
+				reg = <0x1f0000 0x10000>;
+				read-only;
+			};
+
+			partition@200000 {
+				label = "osss";
+				reg = <0x200000 0x180000>;
+				read-only;
+			};
+
+			partition@380000 {
+				/* This is empty */
+				label = "appsblenv";
+				reg = <0x380000 0x10000>;
+				read-only;
+			};
+
+			partition@390000 {
+				label = "pds";
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
+				reg = <0x3f0000 0x10000>;
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
index ac34447475..fada35a49d 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -91,6 +91,16 @@ define Device/alfa-network_ap120c-ac
 endef
 TARGET_DEVICES += alfa-network_ap120c-ac
 
+define Device/aruba_ap-303
+	$(call Device/FitImageLzma)
+	DEVICE_VENDOR := Aruba
+	DEVICE_MODEL := AP-303
+	DEVICE_DTS := qcom-ipq4029-ap-303
+	DEVICE_PACKAGES := ipq-wifi-aruba_ap-303
+	IMAGES := sysupgrade.bin
+endef
+TARGET_DEVICES += aruba_ap-303
+
 define Device/asus_map-ac2200
 	$(call Device/FitImageLzma)
 	DEVICE_VENDOR := ASUS
diff --git a/target/linux/ipq40xx/patches-4.19/304-mtd-spi-nor-Add-support-for-mx25r3235f.patch b/target/linux/ipq40xx/patches-4.19/304-mtd-spi-nor-Add-support-for-mx25r3235f.patch
new file mode 100644
index 0000000000..7dee12fedd
--- /dev/null
+++ b/target/linux/ipq40xx/patches-4.19/304-mtd-spi-nor-Add-support-for-mx25r3235f.patch
@@ -0,0 +1,26 @@
+From 158acdbf0336f601971637f988b57a6a67a0869b Mon Sep 17 00:00:00 2001
+From: David Bauer <mail@david-bauer.net>
+Date: Sun, 15 Dec 2019 13:10:50 +0100
+Subject: [PATCH] mtd: spi-nor: Add support for mx25r3235f
+
+Add MTD support for the Macronix MX25R3235F SPI NOR chip from Macronix.
+The chip has 4MB of total capacity, divided into a total of 64 sectors,
+each 64KB sized. The chip also supports 4KB large sectors.
+Additionally, it supports dual and quad read modes.
+
+Signed-off-by: David Bauer <mail@david-bauer.net>
+---
+ drivers/mtd/spi-nor/spi-nor.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+--- a/drivers/mtd/spi-nor/spi-nor.c
++++ b/drivers/mtd/spi-nor/spi-nor.c
+@@ -1091,6 +1091,8 @@ static const struct flash_info spi_nor_i
+ 	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
+ 	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
+ 	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
++	{ "mx25r3235f",  INFO(0xc22816, 0, 64 * 1024,  64,
++			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+ 	{ "mx25u12835f", INFO(0xc22538, 0, 64 * 1024, 256,
+ 			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+ 	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
diff --git a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
index 93214e60e9..52484b3dd3 100644
--- a/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
+++ b/target/linux/ipq40xx/patches-4.19/901-arm-boot-add-dts-files.patch
@@ -10,7 +10,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 
 --- a/arch/arm/boot/dts/Makefile
 +++ b/arch/arm/boot/dts/Makefile
-@@ -785,11 +785,37 @@ dtb-$(CONFIG_ARCH_QCOM) += \
+@@ -785,11 +785,38 @@ dtb-$(CONFIG_ARCH_QCOM) += \
  	qcom-apq8074-dragonboard.dtb \
  	qcom-apq8084-ifc6540.dtb \
  	qcom-apq8084-mtp.dtb \
@@ -43,6 +43,7 @@ Signed-off-by: John Crispin <john@phrozen.org>
 +	qcom-ipq4019-unielec-u4019-32m.dtb \
 +	qcom-ipq4019-wpj419.dtb \
 +	qcom-ipq4028-wpj428.dtb \
++	qcom-ipq4029-ap-303.dtb \
 +	qcom-ipq4029-gl-b1300.dtb \
 +	qcom-ipq4029-mr33.dtb \
  	qcom-ipq8064-ap148.dtb \
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
