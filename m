Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B727217D7A8
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 02:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rxqxw0ObE8m8o/rxbtFA4u5mSk70/aoNlwcAGmkYhgw=; b=cyMvU/s2cIL6hG
	Y3Zx1J/TKgGyXxdvv9clg9ipLMbw5UZp20+34wqtOH/TB6sm1eW5f5vb02f8w0gLgZSUXiB0/wmet
	sn38idfowLlvDElAtXevBgV7saAmdHRm+K5nr7hhOLK7l4sjQyY08dklaEdRCVeT84x5Bd/A4m8zZ
	c6cQGfqzb7/Smaojf02JhPsz4KP4kcEG/Y6gtWuzvX65HwzB9ttoD4chkwSva/vM3flouC3WBb7dh
	V4q3Y9sVNcAok3EiEmh7sLiuUdA94zwgQ+A021g9G5dlL03FnTaS6wlhcu9b6PHhxhMNvXRrjse9/
	brsmME7zJEe1yYHMdSZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB6tN-0005NG-5Y; Mon, 09 Mar 2020 01:07:37 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB6tF-0005Ms-1U
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 01:07:31 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F3B27005071EE5DBB85C437.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3b:2700:5071:ee5d:bb85:c437])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id BDE8C1E067
 for <openwrt-devel@lists.openwrt.org>; Mon,  9 Mar 2020 02:07:22 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  9 Mar 2020 02:07:10 +0100
Message-Id: <20200309010710.11599-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_180729_384174_CC884881 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Ubiquiti UniFi
 nanoHD
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
SoC:   MediaTek MT7621AT
WiFi:  MediaTek MT7603 bgn 2T2R
       MediaTek MT7615 ac  4T4R
Flash: 32M SPI (Macronix MX25L25635F)
RAM:   128M DDR3 (Winbond W631GG6KB)
LED:   Dome (Blue / White)
BTN:   Reset

Installation
------------

These instructions were written for firmware version v3.9.27.
Downgrade if necessary.

1. Copy the OpenWrt sysupgrade image to the devices /tmp folder
   via scp. On factory defaults, user and password is "ubnt" at
   192.168.1.20/24.

2. Write the bootselect flag. Otherwise, the device might boot from the
   wrong partition. Verify the mtd partition used in the command below
   is the one labled "bs" in /proc/mtd (as this might change in the
   future).

   > dd if=/dev/zero bs=1 count=1 of=/dev/mtd4

3. Write the OpenWrt sysupgrade to the mtd partitions labled
   "kernel0" and "kernel1".

   > dd if=/tmp/openwrt-sysupgrade.bin of=/dev/mtdblock6
   > dd if=/tmp/openwrt-sysupgrade.bin of=/dev/mtdblock7

4. Reboot or powercycle the device.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../dts/mt7621_ubiquiti_unifi-nanohd.dts      | 141 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |   8 +
 .../mt7621/base-files/etc/board.d/02_network  |   3 +-
 3 files changed, 151 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.dts

diff --git a/target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.dts b/target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.dts
new file mode 100644
index 0000000000..7d39242efa
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.dts
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "ubiquiti,unifi-nanohd", "mediatek,mt7621-soc";
+	model = "Ubiquiti UniFi nanoHD";
+
+	aliases {
+		led-boot = &led_white;
+		led-failsafe = &led_white;
+		led-running = &led_blue;
+		led-upgrade = &led_blue;
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
+		led_blue: power_amber {
+			label = "nanohd:blue:dome";
+			gpios = <&gpio0 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_white: power_green {
+			label = "nanohd:white:dome";
+			gpios = <&gpio0 4 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "mx25l25635f", "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x60000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "u-boot-env";
+				reg = <0x60000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@70000 {
+				label = "factory";
+				reg = <0x70000 0x10000>;
+				read-only;
+			};
+
+			eeprom: partition@80000 {
+				label = "eeprom";
+				reg = <0x80000 0x10000>;
+				read-only;
+			};
+
+			partition@90000 {
+				label = "bs";
+				reg = <0x90000 0x10000>;
+			};
+
+			partition@a0000 {
+				label = "cfg";
+				reg = <0xa0000 0x100000>;
+				read-only;
+			};
+
+			partition@1a0000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x1a0000 0xf30000>;
+			};
+
+			partition@10d0000 {
+				label = "kernel1";
+				reg = <0x10d0000 0xf30000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		reg = <0x0 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+	};
+};
+
+&pcie1 {
+	wifi@0,0 {
+		reg = <0x0 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&eeprom 0x0>;
+};
+
+&state_default {
+	gpio {
+		ralink,group = "i2c", "uart2";
+		ralink,function = "gpio";
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 98d83f944f..4a51333de8 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -792,6 +792,14 @@ define Device/ubiquiti_edgerouterx-sfp
 endef
 TARGET_DEVICES += ubiquiti_edgerouterx-sfp
 
+define Device/ubiquiti_unifi-nanohd
+  DEVICE_VENDOR := Ubiquiti
+  DEVICE_MODEL := UniFi nanoHD
+  DEVICE_PACKAGES += kmod-mt7603 kmod-mt7615e wpad-basic
+  IMAGE_SIZE := 15552k
+endef
+TARGET_DEVICES += ubiquiti_unifi-nanohd
+
 define Device/unielec_u7621-06-16m
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := UniElec
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index c930f34592..ace19cc8fe 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -129,7 +129,8 @@ ramips_setup_interfaces()
 		;;
 	netgear,ex6150|\
 	tplink,re350-v1|\
-	tplink,re650-v1)
+	tplink,re650-v1|\
+	ubiquiti,unifi-nanohd)
 		ucidef_add_switch "switch0" \
 			"0:lan" "6@eth0"
 		;;
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
