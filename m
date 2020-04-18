Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C51AF2DC
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Apr 2020 19:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7H6zr9KyjhfQkcSEI8eLbbBKzfzdqK1iakFmi7os7SY=; b=NiccuwHn+DPUSR
	7Nmyq4FqZVF48zS67CI3bRXTlV+JyJt9xbZx7FnwBn3cH+my4BoOb+cfdYQ4oR5Vqg0Bx3nFGL7wg
	d4xaJMtnhF9sBTwBOOYeFP1BU5Z6ChRMXE120Usa/U/F7u6jbOnx4cYbpffGo7h/XJxLeTvuR0fLi
	yk5ZuYQCLPq2GNk3BkBbgKQZ8On9dOK5hDJMsfUDCWYCjfrQaoSMDNlTNuQMZxbUK6DpoYo3M5Z5Q
	1bvdYABEZ/n2M/RQQkGC8XlCWdU3s55foYRLhge0nMWHM/ps/8NWtus/iFWkNtR4cYK/sIudM17Bj
	gsUkypmCTyj0gXFMX7jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPrEs-0003kX-Pj; Sat, 18 Apr 2020 17:26:46 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jPrEk-0003jM-Ag
 for openwrt-devel@lists.openwrt.org; Sat, 18 Apr 2020 17:26:41 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F2F830099DED5C33771392C.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2f:8300:99de:d5c3:3771:392c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id F34C522E3F;
 Sat, 18 Apr 2020 19:26:16 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Apr 2020 19:26:03 +0200
Message-Id: <20200418172603.36385-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_102638_684440_A804767C 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for AVM FRITZ!WLAN
 Repeater 450E
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
Cc: Andreas Ziegler <dev@andreas-ziegler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SOC:    Qualcomm QCA9556 (Scorpion) 560MHz MIPS74Kc
RAM:    64MB Zentel A3R12E40CBF DDR2
FLASH:  16MiB Winbond W25Q128 SPI NOR
WLAN1:  QCA9556 2.4 GHz 802.11b/g/n 3x3
INPUT:  WPS button
LED:    Power, WiFi, LAN, RSSI indicator
Serial: Header Next to Black metal shield
        Pinout is 3.3V - RX - TX - GND (Square Pad is 3.3V)
        The Serial setting is 115200-8-N-1.

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
You need to powercycle the device afterwards to boot OpenWRT.

Tested-by: Andreas Ziegler <dev@andreas-ziegler.de>
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ath79/dts/qca9556_avm_fritz-repeater.dtsi | 93 +++++++++++++++++++
 .../ath79/dts/qca9556_avm_fritz1750e.dts      | 89 +-----------------
 .../linux/ath79/dts/qca9556_avm_fritz450e.dts | 76 +++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |  3 +-
 .../generic/base-files/etc/board.d/02_network |  3 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 +-
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |  3 +-
 target/linux/ath79/image/generic.mk           |  9 ++
 8 files changed, 189 insertions(+), 90 deletions(-)
 create mode 100644 target/linux/ath79/dts/qca9556_avm_fritz-repeater.dtsi
 create mode 100644 target/linux/ath79/dts/qca9556_avm_fritz450e.dts

diff --git a/target/linux/ath79/dts/qca9556_avm_fritz-repeater.dtsi b/target/linux/ath79/dts/qca9556_avm_fritz-repeater.dtsi
new file mode 100644
index 0000000000..b1f5f1bdb3
--- /dev/null
+++ b/target/linux/ath79/dts/qca9556_avm_fritz-repeater.dtsi
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca9557.dtsi"
+
+/ {
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
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
+&uart {
+	status = "okay";
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
+	};
+};
diff --git a/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts b/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
index f50af5b228..25d3ae8da4 100644
--- a/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
+++ b/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
@@ -1,19 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
 
-#include "qca9557.dtsi"
+#include "qca9556_avm_fritz-repeater.dtsi"
 
 / {
 	compatible = "avm,fritz1750e", "qca,qca9557";
 	model = "AVM FRITZ!WLAN Repeater 1750E";
 
-	chosen {
-		bootargs = "console=ttyS0,115200n8";
-	};
-
 	aliases {
 		led-boot = &led_power;
 		led-failsafe = &led_power;
@@ -91,65 +85,14 @@
 			gpios = <&spi_gpio 4 GPIO_ACTIVE_HIGH>;
 		};
 	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		wps {
-			label = "wps";
-			linux,code = <KEY_WPS_BUTTON>;
-			gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &pcie0 {
 	status = "okay";
 };
 
-&uart {
-	status = "okay";
-};
-
-&spi {
-	status = "okay";
-	num-cs = <1>;
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <25000000>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "urlader";
-				reg = <0x0 0x20000>;
-				read-only;
-			};
-
-			partition@20000 {
-				compatible = "avm,eva-firmware";
-				label = "firmware";
-				reg = <0x20000 0xee0000>;
-			};
-
-			partition@f00000 {
-				label = "tffs (1)";
-				reg = <0xf00000 0x80000>;
-				read-only;
-			};
-
-			partition@f80000 {
-				label = "tffs (2)";
-				reg = <0xf80000 0x80000>;
-				read-only;
-			};
-		};
-	};
+&phy0 {
+	reset-gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
 };
 
 &gpio {
@@ -167,29 +110,3 @@
 		line-name = "PCIE Bus reset";
 	};
 };
-
-&wmac {
-	status = "okay";
-	qca,no-eeprom;
-};
-
-&eth1 {
-	status = "okay";
-
-	phy-handle = <&phy0>;
-	pll-data = <0x3000000 0x101 0x1313>;
-
-	gmac-config {
-		device = <&gmac>;
-		ge0-sgmii = <0>;
-	};
-};
-
-&mdio1 {
-	status = "okay";
-
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-		reset-gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
-	};
-};
diff --git a/target/linux/ath79/dts/qca9556_avm_fritz450e.dts b/target/linux/ath79/dts/qca9556_avm_fritz450e.dts
new file mode 100644
index 0000000000..60685bd3f1
--- /dev/null
+++ b/target/linux/ath79/dts/qca9556_avm_fritz450e.dts
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+
+#include "qca9556_avm_fritz-repeater.dtsi"
+
+/ {
+	compatible = "avm,fritz450e", "qca,qca9557";
+	model = "AVM FRITZ!WLAN Repeater 450E";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "fritz450e:green:power";
+			gpios = <&gpio 14 GPIO_ACTIVE_HIGH>;
+		};
+
+		wlan {
+			label = "fritz450e:green:wlan";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		lan {
+			label = "fritz450e:green:lan";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+		};
+
+		rssi2 {
+			label = "fritz450e:green:rssi2";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		rssi3 {
+			label = "fritz450e:green:rssi3";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		rssi4 {
+			label = "fritz450e:green:rssi4";
+			gpios = <&gpio 18 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&gpio {
+	/*
+	 * Wondered why rssi0 and rssi1 are missing?
+	 *
+	 * AVM seems to have run low on usable GPIO pins, so
+	 * instead of adding a shift register like they did for
+	 * the 1750E they figured out "Why not use the LEDs on
+	 * the AR8033?".
+	 *
+	 * EVA configures the PHY in a way it does not display
+	 * the link-state using it's LEDs. When we reset the PHY
+	 * using the reset-mechanism of the PHY subsystem, this
+	 * setting is cleared.
+	 *
+	 * We avoid this by keeping the reset line high.
+	 */
+	phy-reset {
+		gpio-hog;
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "phy-reset";
+	};
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index b57f4cdd8e..ca4bb3dd33 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -12,7 +12,8 @@ case "$board" in
 	ucidef_set_led_netdev "lan" "LAN" "$boardname:orange:eth0" "eth0"
 	ucidef_set_led_switch "wan" "WAN" "$boardname:orange:eth1" "switch0" "0x04"
 	;;
-alfa-network,ap121f)
+alfa-network,ap121f|\
+avm,fritz450e)
 	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
 	;;
 avm,fritz1750e)
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 96800d771f..543543ad54 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -338,7 +338,8 @@ ath79_setup_macs()
 	alfa-network,ap121f)
 		label_mac=$(mtd_get_mac_binary art 0x1002)
 		;;
-	avm,fritz1750e)
+	avm,fritz1750e|\
+	avm,fritz450e)
 		label_mac=$(fritz_tffs -n macwlan -i $(find_mtd_part "tffs (1)"))
 		;;
 	avm,fritz300e)
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 782e003911..428b502d81 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -10,7 +10,8 @@ case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
 	avm,fritz1750e|\
-	avm,fritz4020)
+	avm,fritz4020|\
+	avm,fritz450e)
 		caldata_extract_reverse "urlader" 0x1541 0x440
 		;;
 	dlink,dir-505|\
diff --git a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
index 371efd6a83..b3c3de298e 100644
--- a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
+++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
@@ -4,7 +4,8 @@
 
 preinit_set_mac_address() {
 	case $(board_name) in
-	avm,fritz1750e)
+	avm,fritz1750e|\
+	avm,fritz450e)
 		ip link set dev eth0 address $(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
 		;;
 	siemens,ws-ap3610)
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 3acbeb2859..b449832ad2 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -201,6 +201,15 @@ define Device/avm_fritz4020
 endef
 TARGET_DEVICES += avm_fritz4020
 
+define Device/avm_fritz450e
+  $(Device/avm)
+  SOC := qca9556
+  IMAGE_SIZE := 15232k
+  DEVICE_MODEL := FRITZ!WLAN Repeater 450E
+  SUPPORTED_DEVICES += fritz450e
+endef
+TARGET_DEVICES += avm_fritz450e
+
 define Device/buffalo_bhr-4grv
   SOC := ar7242
   DEVICE_VENDOR := Buffalo
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
