Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BCD1A4080
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 05:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lpux8mlZhuOHOSuQoiJTu64L8JKaswinVlwR/zIX/nM=; b=NceoSGYF+ANfqp
	Xw9UIynHTU2j81cchhGtlKuHoHGrttQpD+c34dBN83rRa32Q//Dg/TnNKIiguTqXOW5N2LpSEmKl4
	UOIjDz4UcIlfEcWRbsqkqHtsCCMt1KNqp18D2sx1laz6nAA6HlJ63YMWP36BqaXvoA38+uowLxB7F
	/v+tpcy1j70jwDPQ/X3a2BZNLAhUAmKVrUhaluanEHAuIAGIUlSS+PdgQPvLEBahaP1HjTYcVwDcZ
	dpO9xK/Zc5wAzyl1mJtshIYFCGV52hi4G/RSJ0ln3uEMvrScLekQvPFu4Qzq8+osvHTA6NCPBJa8O
	AdIZ/GCk7a9FEy7/DWwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMkn6-0000Es-LE; Fri, 10 Apr 2020 03:57:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMklU-00075e-T5
 for openwrt-devel@bombadil.infradead.org; Fri, 10 Apr 2020 03:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=aHHhPmqILuQKNlMCa1OJiVffbbJDgaNeXaDZO/wX1es=; b=PmRFUNxtpw5OuFTT0vqgwpkvDP
 NBmZHZJb8MLOLBaybMju5ZjSDzrxhHaXUJn5GmOpVew1tlqKg3x1iQFOwoNIms+ONZ4UD4CiyDdBl
 OQOP4ADdoJOd2LIuHzuMMdT1k4CBZCHsYx+Q81QKZxEzWG0TVrvkOEBuhkdmJgWqmQ1Hxzo8IymAi
 2U23gh2MGgX/0K6h78oPkDVIogQQGaPd3pRcJM7Mj6lPmCjNjqv7mCFVtjZCdZ0IsAnAmK7RBaTur
 Jiie0/9jgA4cPocRNNAs3p0MzJK+vrwi+Ci01ffh+2QqFBR3XoNwsJVNDitajaLoVWJzZheJMQxGS
 BKJEVoEQ==;
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMklL-0002G0-DC
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 03:55:34 +0000
X-QQ-mid: bizesmtp25t1586490839tqdmqagd
Received: from localhost.localdomain (unknown [113.116.147.224])
 by esmtp10.qq.com (ESMTP) with 
 id ; Fri, 10 Apr 2020 11:53:58 +0800 (CST)
X-QQ-SSF: 01100000000000O0MJ50000A0000000
X-QQ-FEAT: JH+aPigbfj/Xqt5YmEEglvYij5p673gSwDfcG/dRlIV8Rq+w42hI4EBzvKO2A
 FRjZ8GXvKAb7ES4BITInFfmzsLKSdfG+a7/oBgzrxzm1yb1AEkYm+xD1ZZV6Ycrc6Vz4vPp
 Grhb4g3VocZUppcfFIzfoueI0LeeuB/knVA5Tw++oMfCL0tJ2RmG6bqIPFkkdUgJzcFyFrf
 BPVxhEqKYKXACgZ0SpTZEj34F47VmyAOX2layKbZ7mCxahL+suDK4HsVCKYRQ8byvuq2ac0
 i0pyZUpf6OVcqyvCGQfLWB+vaX/jW1ZlbviKjotyRWHqLuRBAAXLdj4cDvGr4K0VsrNO1GG
 sGgeTsg4kpS/rneQQdtRrz0S3MJvw==
X-QQ-GoodBg: 0
From: "guilin.wang@gl-inet.com" <guilin.wang@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 Apr 2020 11:53:54 +0800
Message-Id: <1586490834-32318-1-git-send-email-guilin.wang@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_045527_990055_D4FF5192 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [52.59.177.22 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [52.59.177.22 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for GL.iNet GL-X1200
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
Cc: "guilin.wang@gl-inet.com" <guilin.wang@gl-inet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds supports for GL-X1200.

Specification:
	- SOC: QCA9563 (775MHz)
	- Flash: 16 MiB
	- RAM: 128 MiB DDR2
	- Ethernet: 4x 1Gbps LAN + 1x 1Gbps WAN
	- Wireless: QCA9563(2.4GHz) and QCA9886(5GHz)
	- SIM: 2x SIM card slots
	- MicroSD: 1x microSD slot
	- Antenna: 2x external 5dBi antennas
	- USB: 1x USB 2.0 port
	- Button: 1x reset button
	- LED: 16x LEDs (3x GPIO controllable)
	- UART: 1x UART on PCB (JP1: 3.3V, RX, TX, GND)
	- OEM U-Boot supplies HTTP/GUI access

Implementation Notes
====================

Both the NOR and NAND variants boot off a NOR-based kernel,
consistent with the OEM's firmware.

The mode LEDs are
    * Boot, Running   system
    * Failsafe        2G
    * Upgrade         5G

Installation
============

Using sysupgrade
----------------

sysupgrade may be used to install a NAND image on a device running
a NAND image or a NOR image on a device running a NOR image. It is
recommended to *not* preserve config when upgrading from OEM firmware
or previous versions of OpenWrt. No supported sysupgrade path should
require "force". Transitioning from NOR to NAND can be accomplished

using U-Boot.

To glinet_gl-x1200-nand:

    gl-x1200          OEM NAND, Self-built from OEM source NAND

To glinet_gl-x1200-nor:

    gl-x1200          Self-built from OEM source NOR
    glinet_gl-ar750s   OpenWrt NOR (prior builds)

Using U-Boot
------------

The OEM U-Boot can be put into a graphical, firmware-upload mode by
holding down the button on the side of the router while applying power
and for a bit more than five seconds following with the current OEM
U-Boot. The power LED will come on, then the 5G LED will flash five
times, about once a second.  When the 5G LED stops flashing and the
2G LED lights solid, the router's U-Boot will provide an upload page
at http://192.168.1.1/ Either a browser may be used to upload an image,
or a utility such as curl may be used:

    curl -X POST -F gl_firmware=\@*-nand-squashfs-factory.img \
         http://192.168.1.1/index.html
or
    curl -X POST -F gl_firmware=\@*-nor-squashfs-sysupgrade.bin \
         http://192.168.1.1/index.html

Note that NOR vs. NAND is based on the file name extension.

Signed-off-by: guilin.wang@gl-inet.com <guilin.wang@gl-inet.com>
---
 .../ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts |  18 ++
 .../ath79/dts/qca9563_glinet_gl-x1200-nor.dts      |  18 ++
 .../linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi   | 199 +++++++++++++++++++++
 target/linux/ath79/image/nand.mk                   |  34 ++++
 .../ath79/nand/base-files/etc/board.d/02_network   |   5 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata       |  10 ++
 .../ath79/nand/base-files/lib/upgrade/platform.sh  |   4 +-
 7 files changed, 287 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts
 create mode 100644 target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts
 create mode 100644 target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi

diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts
new file mode 100644
index 0000000..1fefd4f
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor-nand.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "qca9563_glinet_gl-x1200.dtsi"
+
+/ {
+	compatible = "glinet,gl-x1200-nor-nand", "qca,qca9563";
+	model = "GL.iNet GL-X1200 (NOR/NAND)";
+};
+
+&nor_kernel {
+	label = "kernel";
+};
+
+&nand_ubi {
+	label = "ubi";
+};
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts
new file mode 100644
index 0000000..4eded21
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-x1200-nor.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "qca9563_glinet_gl-x1200.dtsi"
+
+/ {
+	compatible = "glinet,gl-x1200-nor", "qca,qca9563";
+	model = "GL.iNet GL-X1200 (NOR)";
+};
+
+/delete-node/ &nor_kernel;
+/delete-node/ &nor_reserved;
+
+&nor_firmware {
+	compatible = "denx,uimage";
+	label = "firmware";
+};
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi b/target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi
new file mode 100644
index 0000000..60e3dba
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-x1200.dtsi
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca956x.dtsi"
+
+/ {
+	compatible = "glinet,gl-x1200", "qca,qca9563";
+	model = "GL.iNet GL-X1200";
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	aliases {
+		led-boot = &led_system;
+		led-failsafe = &led_system;
+		led-running = &led_system;
+		led-upgrade = &led_system;
+		label-mac-device = &eth0;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_system: system {
+			label = "gl-x1200:red:system";
+			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+		};
+
+		led_wlan2g: wlan2g {
+			label = "gl-x1200:green:wlan2g";
+			gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		led_wlan5g: wlan5g {
+			label = "gl-x1200:green:wlan5g";
+			gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+	gpio-export {
+		compatible = "gpio-export";
+
+		gpio_modem1_power {
+			gpio-export,name = "gl-x1200:4g1:power";
+			gpio-export,output = <1>;
+			gpios = <&gpio 5 GPIO_ACTIVE_LOW>;
+		};
+
+		gpio_usb_power {
+			gpio-export,name = "gl-x1200:usb:power";
+			gpio-export,output = <1>;
+			gpios = <&gpio 7 GPIO_ACTIVE_HIGH>;
+		};
+
+		gpio_modem2_power {
+			gpio-export,name = "gl-x1200:4g2:power";
+			gpio-export,output = <1>;
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&spi {
+	status = "okay";
+
+	num-cs = <2>;
+
+	flash_nor: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		nor_partitions: partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x000000 0x040000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x040000 0x010000>;
+			};
+
+			art: partition@50000 {
+				label = "art";
+				reg = <0x050000 0x010000>;
+				read-only;
+			};
+
+			nor_firmware: partition@60000 {
+				label = "nor_firmware";
+				reg = <0x060000 0xfa0000>;
+			};
+
+			nor_kernel: partition_alt@60000 {
+				label = "nor_kernel";
+				reg = <0x060000 0x400000>;
+			};
+
+			nor_reserved: parition_alt@460000 {
+				label = "nor_reserved";
+				reg = <0x460000 0xba0000>;
+			};
+		};
+	};
+
+	flash_nand: flash@1 {
+		compatible = "spi-nand";
+		reg = <1>;
+		spi-max-frequency = <25000000>;
+
+		nand_partitions: partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			nand_ubi: partition@0 {
+				label = "nand_ubi";
+				reg = <0x000000 0x8000000>;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	phy-handle = <&phy0>;
+	mtd-mac-address = <&art 0x0>;
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy-mask = <0>;
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		phy-mode = "sgmii";
+		qca,ar8327-initvals = <
+			0x04 0x00080080 /* PORT0 PAD MODE CTRL */
+			0x7c 0x0000007e /* PORT0_STATUS */
+		>;
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&uart {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+};
+
+&usb1 {
+	status = "okay";
+};
+
+&usb_phy0 {
+	status = "okay";
+};
+
+&usb_phy1 {
+	status = "okay";
+};
+
+
+&wmac {
+	status = "okay";
+
+	mtd-cal-data = <&art 0x1000>;
+};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index 3ccd199..712e90d 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -130,6 +130,40 @@ define Device/glinet_gl-ar750s-nor
 endef
 TARGET_DEVICES += glinet_gl-ar750s-nor
 
+define Device/glinet_gl-x1200-common
+  SOC := qca9563
+  DEVICE_VENDOR := GL.iNet
+  DEVICE_MODEL := GL-X1200
+  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca9888-ct kmod-usb2 kmod-leds-gpio\
+	kmod-usb-storage block-mount kmod-usb-net-qmi-wwan
+  KERNEL_SIZE := 2048k
+  IMAGE_SIZE := 16000k
+  PAGESIZE := 2048
+  VID_HDR_OFFSET := 2048
+endef
+
+# NB: The kernel size is intentionally restricted at this time; see commit message
+define Device/glinet_gl-x1200-nor-nand
+  $(Device/glinet_gl-x1200-common)
+  DEVICE_VARIANT := NOR/NAND
+  BLOCKSIZE := 128k
+  GL_UBOOT_UBI_OFFSET := 2048k
+  IMAGES += factory.img
+  IMAGE/factory.img := append-kernel | pad-to $$$$(GL_UBOOT_UBI_OFFSET) | \
+	append-ubi | check-kernel-size $$$$(GL_UBOOT_UBI_OFFSET)
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  SUPPORTED_DEVICES += glinet,gl-x1200-nor
+endef
+TARGET_DEVICES += glinet_gl-x1200-nor-nand
+
+define Device/glinet_gl-x1200-nor
+  $(Device/glinet_gl-x1200-common)
+  DEVICE_VARIANT := NOR
+  BLOCKSIZE := 64k
+  SUPPORTED_DEVICES += gl-x1200 glinet,gl-x1200 glinet,gl-x1200-nor-nand
+endef
+TARGET_DEVICES += glinet_gl-x1200-nor
+
 # fake rootfs is mandatory, pad-offset 129 equals (2 * uimage_header + 0xff)
 define Device/netgear_ath79_nand
   DEVICE_VENDOR := NETGEAR
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
index b2191ee..cd1e0a7 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -20,6 +20,11 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "2:lan:2" "3:lan:1" "1:wan"
 		;;
+	glinet,gl-x1200-nor|\
+	glinet,gl-x1200-nor-nand)
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5:wan"
+		;;
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
 	netgear,wndr4300-v2|\
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index d5fd3db..02f226c 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -24,6 +24,16 @@ case "$FIRMWARE" in
 		;;
 	esac
 	;;
+"ath10k/pre-cal-pci-0000:00:00.0.bin")
+	case $board in
+	glinet,gl-x1200-nor|\
+	glinet,gl-x1200-nor-nand)
+		caldata_extract "art" 0x5000 0x2f20
+		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
+			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
+		;;
+	esac
+	;;
 *)
 	exit 1
 	;;
diff --git a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
index ea77345..4ea2287 100644
--- a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
@@ -19,7 +19,9 @@ platform_do_upgrade() {
 		glinet_nand_nor_do_upgrade "$1"
 		;;
 	glinet,gl-ar750s-nor|\
-	glinet,gl-ar750s-nor-nand)
+	glinet,gl-ar750s-nor-nand |\
+	glinet,gl-x1200-nor|\
+	glinet,gl-x1200-nor-nand)
 		nand_nor_do_upgrade "$1"
 		;;
 	*)
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
