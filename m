Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423FA149D5E
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Jan 2020 23:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OnnerHkzzFMCB2FNL48c39pke57dVLPqIfo9JAX2uV4=; b=kNd5rO8CLovCKa
	r1hYxawqs00dBn4xVxERFRBpuSJYbAGDQsmCUqqKzscNRAvce5RY2s19P3nzknNI2aZ8ntRba1Bdv
	1VM2sjE5Lij0/rhT9TLaDaAm5sGu1A1CZ7y2F/tWNmbVq+fxleGiiUnBtJJjYqbsyzYRiRefJo0wQ
	Hn0b0/BWEP1lxuBGCxRcarHwVimQVwMLMVRPrWm8Vbp1FAhK0wsxCofYvq7SEW/FXBcu0+BxNUe1R
	LhjV7QyGXZczjM7KeG8bChuR2TqAa9vDFmFkwPZOqs+gG6FlJDybv7gTPqSZHta0oAMF4Py82G2wy
	moacVHuoJzGHyM3iK8DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivqMU-0002Ic-4S; Sun, 26 Jan 2020 22:26:34 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivqMH-0002IC-8I
 for openwrt-devel@lists.openwrt.org; Sun, 26 Jan 2020 22:26:24 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F3DF300014B7D79A3801C93.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3d:f300:14b:7d79:a380:1c93])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 29E3C1FAF8
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Jan 2020 23:26:16 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 Jan 2020 23:26:05 +0100
Message-Id: <20200126222605.152990-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_142621_594155_BE69148C 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for GL.iNet
 microuter-N300
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

The GL.iNet microuter-N300 (internally referred as MT300N-v4) is a
pocket-size travel router. It is essentially identical to the VIXMINI
(internally referred as MT300N-v3) but with double the RAM and
SPI-flash.

Hardware
--------
SoC:   MediaTek MT7628NN
RAM:   128M DDR2
FLASH: 16M
LED:   Power - WLAN
BTN:   Reset
UART:  115200 8N1
       TX and RX are labled on the board as pads next to the SoC

Installation via web-interface
------------------------------
1. Visit the web-interface at 192.168.8.1
   Note: The ethernet port is by default WAN. So you need to connect to
   the router via WiFi

2. Navigate to the Update tab on the left side.

3. Select "Local Update"

4. Upload the OpenWrt sysupgrade image.
   Note: Make sure you select not to preserve the configuration.

Installation via U-Boot
-----------------------
1. Hold down the reset button while powering on the device.
   Wait for the LED to flash 5 times.

2. Assign yourself a static IPv4 in 192.168.1.0/24

3. Upload the OpenWrt sysupgrade image at 192.168.1.1.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../dts/mt7628an_glinet_microuter-n300.dts    |  21 ++++
 .../ramips/dts/mt7628an_glinet_vixmini.dts    |  97 ++--------------
 .../mt7628an_glinet_vixmini_microuter.dtsi    | 104 ++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk           |   8 ++
 .../mt76x8/base-files/etc/board.d/02_network  |   1 +
 5 files changed, 141 insertions(+), 90 deletions(-)
 create mode 100644 target/linux/ramips/dts/mt7628an_glinet_microuter-n300.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi

diff --git a/target/linux/ramips/dts/mt7628an_glinet_microuter-n300.dts b/target/linux/ramips/dts/mt7628an_glinet_microuter-n300.dts
new file mode 100644
index 0000000000..742cd6a8ef
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_glinet_microuter-n300.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7628an_glinet_vixmini_microuter.dtsi"
+
+/{
+	compatible = "glinet,microuter-n300", "mediatek,mt7628an-soc";
+	model = "GL.iNet microuter-N300";
+};
+
+&led_power_blue {
+	label = "microuter-n300:blue:power";
+};
+
+&led_wlan_white {
+	label = "microuter-n300:white:wlan";
+};
+
+&firmware_part {
+		reg = <0x50000 0xfb0000>;
+};
diff --git a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
index 0935ec869b..9cdd9a0e14 100644
--- a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
+++ b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
@@ -1,104 +1,21 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "mt7628an.dtsi"
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
+#include "mt7628an_glinet_vixmini_microuter.dtsi"
 
 /{
 	compatible = "glinet,vixmini", "mediatek,mt7628an-soc";
 	model = "GL.iNet VIXMINI";
-
-	aliases {
-		led-boot = &led_power;
-		led-failsafe = &led_power;
-		led-running = &led_power;
-		led-upgrade = &led_power;
-	};
-
-	chosen {
-		bootargs = "console=ttyS0,115200";
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		led_power: power {
-			label = "vixmini:blue:power";
-			default-state = "on";
-			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
-		};
-
-		wlan {
-			label = "vixmini:white:wlan";
-			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy0tpt";
-		};
-	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		reset {
-			label = "reset";
-			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
 };
 
-&state_default {
-	gpio {
-		ralink,group = "wdt", "wled_an", "p1led_an";
-		ralink,function = "gpio";
-	};
+&led_power_blue {
+	label = "vixmini:blue:power";
 };
 
-&ethernet {
-	mtd-mac-address = <&factory 0x4>;
+&led_wlan_white {
+	label = "vixmini:white:wlan";
 };
 
-&wmac {
-	status = "okay";
-};
-
-&spi0 {
-	status = "okay";
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <10000000>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "u-boot";
-				reg = <0x0 0x30000>;
-				read-only;
-			};
-
-			partition@30000 {
-				label = "u-boot-env";
-				reg = <0x30000 0x10000>;
-				read-only;
-			};
-
-			factory: partition@40000 {
-				label = "factory";
-				reg = <0x40000 0x10000>;
-				read-only;
-			};
-
-			partition@50000 {
-				compatible = "denx,uimage";
-				label = "firmware";
-				reg = <0x50000 0x7b0000>;
-			};
-		};
-	};
+&firmware_part {
+		reg = <0x50000 0x7b0000>;
 };
diff --git a/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi b/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
new file mode 100644
index 0000000000..b5611ac11e
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_glinet_vixmini_microuter.dtsi
@@ -0,0 +1,104 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/{
+	aliases {
+		led-boot = &led_power_blue;
+		led-failsafe = &led_power_blue;
+		led-running = &led_power_blue;
+		led-upgrade = &led_power_blue;
+
+		label-mac-device = &ethernet;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power_blue: power {
+			/* Name is set device-specific */
+			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+		};
+
+		led_wlan_white: wlan {
+			/* Name is set device-specific */
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+};
+
+&state_default {
+	gpio {
+		ralink,group = "wdt", "wled_an", "p1led_an";
+		ralink,function = "gpio";
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x4>;
+};
+
+&wmac {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions: partitions {
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
+			/*
+			 * Firmware-partition size is model-specific
+			 * due to different flash sizes.
+			 */
+			firmware_part: partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+			};
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 5ddeec14d5..37cac84229 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -70,6 +70,14 @@ define Device/glinet_gl-mt300n-v2
 endef
 TARGET_DEVICES += glinet_gl-mt300n-v2
 
+define Device/glinet_microuter-n300
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := GL.iNet
+  DEVICE_MODEL := microuter-N300
+  SUPPORTED_DEVICES += microuter-n300
+endef
+TARGET_DEVICES += glinet_microuter-n300
+
 define Device/glinet_vixmini
   IMAGE_SIZE := 7872k
   DEVICE_VENDOR := GL.iNet
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index b036eb76e6..259a257f16 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -33,6 +33,7 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "0:wan" "6@eth0"
 		;;
+	glinet,microuter-n300|\
 	glinet,vixmini)
 		ucidef_add_switch "switch0" \
 			"0:lan" "6@eth0"
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
