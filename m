Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392BB107FC2
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 19:05:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l2RrcSUQCvdBXNMjano+W8CW3N5lGNLt+Yx+NvqlGgs=; b=PVtGkwr16yfKod
	PRL0WmLvV4NjcKmPa8r5Erjlyyx0Y7IG3K+qqcSkVskEyhM/fl+lStvZIw9S6NAss94kjbUVHOwnQ
	MUAy5Bs+FtTWIGaoYYR/nHov6D1e3yCEC0qLtuz2s2gj+aWw0Dz73P4rGJ3TPWB6LctPqd3hZX7we
	xq9Dcz4aMG+7fei6PkHEBxw90U6mbwRO+8xfuQDx8Z0HylBLwTVtbwlUyRVWlaa9ja6bsJ6PZoH7F
	UmyoHbnIrPJ8k7Zu4LKJw4XFrfDNh9ho+2HJRhPH6487hm3vJ9O5lruK4gCskRgDoIZaqBN5vz1KL
	AtkEYz+TxiS2Kt5VBjQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYZmi-0007kz-GO; Sat, 23 Nov 2019 18:05:28 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iYZmZ-0007jt-Bf
 for openwrt-devel@lists.openwrt.org; Sat, 23 Nov 2019 18:05:21 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F2FD500853DC40395BBEF91.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f2f:d500:853d:c403:95bb:ef91])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id D92011FA94
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 Nov 2019 19:05:14 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 Nov 2019 19:05:07 +0100
Message-Id: <20191123180507.265078-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_100519_701741_282798C3 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: reorganize NETGAR sercomm boards
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

This re-organizes the device-tree files for the Sercomm-manufactured
NETGEAR routers. They are now split into two different base-boards,
from which the respective model is extended.

This partially reverts commit c7842ceaaa27 ("ramips: reorganize DTSI
files for Netgear R devices"), which introduced inheritance between two
completely unrelated base-boards.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../linux/ramips/dts/mt7621_netgear_r6220.dts | 35 ++------
 ...m.dtsi => mt7621_netgear_sercomm_ayx.dtsi} | 26 ++++++
 .../dts/mt7621_netgear_sercomm_chj.dtsi       | 90 ++++++++++++++++++-
 .../ramips/dts/mt7621_netgear_wndr3700-v5.dts | 35 ++------
 4 files changed, 125 insertions(+), 61 deletions(-)
 rename target/linux/ramips/dts/{mt7621_netgear_sercomm.dtsi => mt7621_netgear_sercomm_ayx.dtsi} (80%)

diff --git a/target/linux/ramips/dts/mt7621_netgear_r6220.dts b/target/linux/ramips/dts/mt7621_netgear_r6220.dts
index f23e12b852..4779b71c1d 100644
--- a/target/linux/ramips/dts/mt7621_netgear_r6220.dts
+++ b/target/linux/ramips/dts/mt7621_netgear_r6220.dts
@@ -1,40 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 
-#include "mt7621_netgear_sercomm.dtsi"
+#include "mt7621_netgear_sercomm_ayx.dtsi"
 
 / {
 	compatible = "netgear,r6220", "mediatek,mt7621-soc";
 	model = "Netgear R6220";
-
-	keys {
-		compatible = "gpio-keys";
-
-		wps {
-			label = "wps";
-			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_WPS_BUTTON>;
-		};
-
-		wifi {
-			label = "wifi";
-			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RFKILL>;
-		};
-
-		reset {
-			label = "reset";
-			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
-};
-
-&leds {
-	wps {
-		gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
-		label = "r6220:green:wps";
-	};
 };
 
 &led_power {
@@ -53,6 +24,10 @@
 	label = "r6220:green:wifi";
 };
 
+&led_wps {
+	label = "r6220:green:wps";
+};
+
 &nand {
 	status = "okay";
 
diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi b/target/linux/ramips/dts/mt7621_netgear_sercomm_ayx.dtsi
similarity index 80%
rename from target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
rename to target/linux/ramips/dts/mt7621_netgear_sercomm_ayx.dtsi
index 7cff51a090..4e6e91ed8f 100644
--- a/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
+++ b/target/linux/ramips/dts/mt7621_netgear_sercomm_ayx.dtsi
@@ -21,6 +21,28 @@
 		bootargs = "console=ttyS0,57600";
 	};
 
+	keys {
+		compatible = "gpio-keys";
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WPS_BUTTON>;
+		};
+
+		wifi {
+			label = "wifi";
+			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RFKILL>;
+		};
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
 	leds: leds {
 		compatible = "gpio-leds";
 
@@ -42,6 +64,10 @@
 			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "phy0tpt";
 		};
+
+		led_wps: wps {
+			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+		};
 	};
 
 	reg_usb_vbus: regulator {
diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
index d09585a753..f2222a1412 100644
--- a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
+++ b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
@@ -1,9 +1,49 @@
 // SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 
-#include "mt7621_netgear_sercomm.dtsi"
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 
 / {
+	compatible = "mediatek,mt7621-soc";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+		label-mac-device = &ethernet;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	leds: leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+		};
+
+		led_usb: usb {
+			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&xhci_ehci_port1>, <&ehci_port2>;
+			linux,default-trigger = "usbport";
+		};
+
+		led_internet: internet {
+			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+		};
+
+		led_wifi: wifi {
+			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+
 	keys {
 		compatible = "gpio-keys";
 
@@ -19,6 +59,54 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+
+	reg_usb_vbus: regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio0 10 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+};
+
+&xhci {
+	vbus-supply = <&reg_usb_vbus>;
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		compatible = "mediatek,mt76";
+		reg = <0x0 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+	};
+};
+
+&pcie1 {
+	wifi@0,0 {
+		compatible = "mediatek,mt76";
+		reg = <0x0 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0>;
+		ieee80211-freq-limit = <2400000 2500000>;
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x4>;
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "uart3", "uart2", "jtag", "wdt";
+			ralink,function = "gpio";
+		};
+	};
 };
 
 &nand {
diff --git a/target/linux/ramips/dts/mt7621_netgear_wndr3700-v5.dts b/target/linux/ramips/dts/mt7621_netgear_wndr3700-v5.dts
index 5cf09ac7c4..a5c8b21d53 100644
--- a/target/linux/ramips/dts/mt7621_netgear_wndr3700-v5.dts
+++ b/target/linux/ramips/dts/mt7621_netgear_wndr3700-v5.dts
@@ -1,40 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
 /dts-v1/;
 
-#include "mt7621_netgear_sercomm.dtsi"
+#include "mt7621_netgear_sercomm_ayx.dtsi"
 
 / {
 	compatible = "netgear,wndr3700-v5", "mediatek,mt7621-soc";
 	model = "Netgear WNDR3700 v5";
-
-	keys {
-		compatible = "gpio-keys";
-
-		wps {
-			label = "wps";
-			gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_WPS_BUTTON>;
-		};
-
-		wifi {
-			label = "wifi";
-			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RFKILL>;
-		};
-
-		reset {
-			label = "reset";
-			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
-};
-
-&leds {
-	wps {
-		gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
-		label = "wndr3700-v5:green:wps";
-	};
 };
 
 &led_power {
@@ -53,6 +24,10 @@
 	label = "wndr3700-v5:green:wifi";
 };
 
+&led_wps {
+	label = "wndr3700-v5:green:wps";
+};
+
 &spi0 {
 	status = "okay";
 
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
