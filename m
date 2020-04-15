Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5F41AAE6D
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 18:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q1dwly/DL4g+lv8gxZnXjB07TrRPGPlfCtor/kTqy6k=; b=YM0dwp2O0DhWl0aJiEKtgfzdCY
	qNYbys+cAHR1XzuUTA7KT3Fvflvw8qklVGajhmzjZ79NDXj+zXWImCOPEOb2L43BZyecwyU7SbcOq
	XwdeZGaKqYAsm/32Z/cL9UEdfuL1jNZfPx2uV9nMz0HT5/KHPlGyjvSnLBdpFucboBkyG/mvpxU8I
	hIZ0zIych/II1l83vReMDfqPsnm6tZy3EZue6Mm4baxuAA9yMprUK2eJu/cDLmbIwJl0jiN9uVcLW
	+6ea6opCrlBEFjisaugnC2n6zwl7qP3ScccNgzTvXciaEvkg89/0GMnKSJfLA6+vnTuPXDli3KLN7
	QQpzOtqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlCY-00042T-A8; Wed, 15 Apr 2020 16:47:50 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jOlCP-0003rS-Fz
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 16:47:44 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F076000FCE978B80865F4DD.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:6000:fce9:78b8:865:f4dd])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id D62DB22E80
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 18:47:38 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 Apr 2020 18:47:19 +0200
Message-Id: <20200415164719.134391-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200415164719.134391-1-mail@david-bauer.net>
References: <20200415164719.134391-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_094741_838148_A62BC5C4 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for AVM FRITZ!WLAN
 Repeater 1750E
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

This commit adds support for the AVM Fritz!WLAN Repeater 1750E

SOC:	Qualcomm QCA9556 (Scorpion) 720MHz MIPS74Kc
RAM:    64MB Zentel A3R12E40CBF DDR2
FLASH:  16MiB Winbond W25Q128 SPI NOR
WLAN1:  QCA9556 2.4 GHz 802.11b/g/n 3x3
WLAN2:  QCA9880 5 GHz 802.11 n/ac 3x3
INPUT:  WPS button
LED:    Power, WiFi, LAN, RSSI indicator
Serial: Header Next to Black metal shield
        Pinout is 3.3V - RX - TX - GND (Square Pad is 3.3V)
        The Serial setting is 115200-8-N-1.

Tested and working:
 - Ethernet
 - 2.4 GHz WiFi (correct MAC)
 - 5 GHz WiFi (correct MAC)
 - Installation via EVA bootloader
 - OpenWRT sysupgrade
 - Buttons
 - LEDs

Installation via EVA:
In the first seconds after Power is connected, the bootloader will
listen for FTP connections on 192.168.178.1. Firmware can be uploaded
like following:

  ftp> quote USER adam2
  ftp> quote PASS adam2
  ftp> binary
  ftp> debug
  ftp> passive
  ftp> quote MEDIA FLSH
  ftp> put openwrt-sysupgrade.bin mtd1

Note that this procedure might take up to two minutes.
You need to powercycle the Device afterwards to boot OpenWRT.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ath79/dts/qca9556_avm_fritz1750e.dts      | 199 ++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |  11 +-
 .../generic/base-files/etc/board.d/02_network |   4 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   3 +
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |   3 +
 target/linux/ath79/image/generic.mk           |  30 ++-
 7 files changed, 239 insertions(+), 12 deletions(-)
 create mode 100644 target/linux/ath79/dts/qca9556_avm_fritz1750e.dts

diff --git a/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts b/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
new file mode 100644
index 0000000000..b567e1ce62
--- /dev/null
+++ b/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
@@ -0,0 +1,199 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca9557.dtsi"
+
+/ {
+	compatible = "avm,fritz1750e", "qca,qca9557";
+	model = "AVM FRITZ!WLAN Repeater 1750E";
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	led_spi {
+		compatible = "spi-gpio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		sck-gpios = <&gpio 14 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio 15 GPIO_ACTIVE_HIGH>;
+		num-chipselects = <0>;
+
+		spi_gpio: led_gpio@0 {
+			compatible = "fairchild,74hc595";
+			reg = <0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			registers-number = <1>;
+			spi-max-frequency = <10000000>;
+
+			gpio_latch_bit {
+				gpio-hog;
+				gpios = <7 GPIO_ACTIVE_HIGH>;
+				output-high;
+				line-name = "gpio-latch-bit";
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "fritz1750e:green:power";
+			gpios = <&spi_gpio 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		wlan {
+			label = "fritz1750e:green:wlan";
+			gpios = <&spi_gpio 5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		lan {
+			label = "fritz1750e:green:lan";
+			gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
+		};
+
+		rssi0 {
+			label = "fritz1750e:green:rssi0";
+			gpios = <&spi_gpio 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		rssi1 {
+			label = "fritz1750e:green:rssi1";
+			gpios = <&spi_gpio 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		rssi2 {
+			label = "fritz1750e:green:rssi2";
+			gpios = <&spi_gpio 2 GPIO_ACTIVE_HIGH>;
+		};
+
+		rssi3 {
+			label = "fritz1750e:green:rssi3";
+			gpios = <&spi_gpio 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		rssi4 {
+			label = "fritz1750e:green:rssi4";
+			gpios = <&spi_gpio 4 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&uart {
+	status = "okay";
+};
+
+&pll {
+	clocks = <&extosc>;
+};
+
+&spi {
+	status = "okay";
+	num-cs = <1>;
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
+				label = "urlader";
+				reg = <0x0 0x20000>;
+				read-only;
+			};
+
+			partition@20000 {
+				compatible = "avm,eva-firmware";
+				label = "firmware";
+				reg = <0x20000 0xee0000>;
+			};
+
+			partition@f00000 {
+				label = "tffs (1)";
+				reg = <0xf00000 0x80000>;
+				read-only;
+			};
+
+			partition@f80000 {
+				label = "tffs (2)";
+				reg = <0xf80000 0x80000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&gpio {
+	reset-pcie-ep {
+		gpio-hog;
+		gpios = <17 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "PCIE EP reset";
+	};
+
+	reset-pcie {
+		gpio-hog;
+		gpios = <18 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "PCIE Bus reset";
+	};
+};
+
+&wmac {
+	status = "okay";
+	qca,no-eeprom;
+};
+
+&eth1 {
+	status = "okay";
+
+	phy-handle = <&phy0>;
+	pll-data = <0x3000000 0x101 0x1313>;
+
+	gmac-config {
+		device = <&gmac>;
+		ge0-sgmii = <0>;
+	};
+};
+
+&mdio1 {
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+		reset-gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+	};
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index b946d0c63b..528455b2df 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -15,7 +15,16 @@ case "$board" in
 alfa-network,ap121f)
 	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
 	;;
-avm,fritz300e)
+avm,fritz1750e)
+	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_rssimon "wlan1" "200000" "1"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan1" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green:rssi1" "wlan1" "20" "100"
+	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$boardname:green:rssi2" "wlan1" "40" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssi3" "wlan1" "60" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi4" "wlan1" "80" "100"
+	;;
+fritz300e)
 	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
 	ucidef_set_rssimon "wlan0" "200000" "1"
 	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan0" "1" "100"
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 77855d7ab7..96800d771f 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -13,6 +13,7 @@ ath79_setup_interfaces()
 	adtran,bsap1840|\
 	alfa-network,ap121f|\
 	aruba,ap-105|\
+	avm,fritz1750e|\
 	avm,fritz300e|\
 	comfast,cf-wr752ac-v1|\
 	devolo,dvl1200i|\
@@ -337,6 +338,9 @@ ath79_setup_macs()
 	alfa-network,ap121f)
 		label_mac=$(mtd_get_mac_binary art 0x1002)
 		;;
+	avm,fritz1750e)
+		label_mac=$(fritz_tffs -n macwlan -i $(find_mtd_part "tffs (1)"))
+		;;
 	avm,fritz300e)
 		lan_mac=$(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
 		label_mac=$(fritz_tffs -n macwlan -i $(find_mtd_part "tffs (1)"))
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index da2063c58a..782e003911 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -9,6 +9,7 @@ board=$(board_name)
 case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
+	avm,fritz1750e|\
 	avm,fritz4020)
 		caldata_extract_reverse "urlader" 0x1541 0x440
 		;;
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index c126d9df6a..014ab03003 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -10,6 +10,9 @@ board=$(board_name)
 case "$FIRMWARE" in
 "ath10k/cal-pci-0000:00:00.0.bin")
 	case $board in
+	avm,fritz1750e)
+		caldata_extract "urlader" 6538 2116
+		;;
 	comfast,cf-wr650ac-v1|\
 	comfast,cf-wr650ac-v2|\
 	devolo,magic-2-wifi|\
diff --git a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
index a0fb9fc717..371efd6a83 100644
--- a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
+++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
@@ -4,6 +4,9 @@
 
 preinit_set_mac_address() {
 	case $(board_name) in
+	avm,fritz1750e)
+		ip link set dev eth0 address $(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
+		;;
 	siemens,ws-ap3610)
 		ip link set dev eth0 address $(mtd_get_mac_ascii cfg1 ethaddr)
 		;;
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 69067c9de0..bd95ba2c3d 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -162,32 +162,40 @@ define Device/aruba_ap-105
 endef
 TARGET_DEVICES += aruba_ap-105
 
-define Device/avm_fritz300e
-  SOC := ar7242
+define Device/avm
   DEVICE_VENDOR := AVM
-  DEVICE_MODEL := FRITZ!WLAN Repeater 300E
   KERNEL := kernel-bin | append-dtb | lzma | eva-image
   KERNEL_INITRAMFS := $$(KERNEL)
   IMAGE_SIZE := 15232k
   IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \
 	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs | pad-rootfs | \
 	append-metadata | check-size
-  DEVICE_PACKAGES := fritz-tffs rssileds -swconfig
+  DEVICE_PACKAGES := fritz-tffs
+endef
+
+define Device/avm_fritz1750e
+  $(Device/avm)
+  SOC := qca9556
+  DEVICE_MODEL := FRITZ!WLAN Repeater 1750E
+  DEVICE_PACKAGES += rssileds kmod-ath10k-ct-smallbuffers | \
+	ath10k-firmware-qca988x-ct -swconfig
+endef
+TARGET_DEVICES += avm_fritz1750e
+
+define Device/avm_fritz300e
+  $(Device/avm)
+  SOC := ar7242
+  DEVICE_MODEL := FRITZ!WLAN Repeater 300E
+  DEVICE_PACKAGES += rssileds -swconfig
   SUPPORTED_DEVICES += fritz300e
 endef
 TARGET_DEVICES += avm_fritz300e
 
 define Device/avm_fritz4020
+  $(Device/avm)
   SOC := qca9561
   DEVICE_VENDOR := AVM
   DEVICE_MODEL := FRITZ!Box 4020
-  IMAGE_SIZE := 15232k
-  KERNEL := kernel-bin | append-dtb | lzma | eva-image
-  KERNEL_INITRAMFS := $$(KERNEL)
-  IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \
-	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs | pad-rootfs | \
-	append-metadata | check-size
-  DEVICE_PACKAGES := fritz-tffs
   SUPPORTED_DEVICES += fritz4020
 endef
 TARGET_DEVICES += avm_fritz4020
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
