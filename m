Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC05B1387E8
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 20:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3naLflQ7pIIhf4k0imgkTMniiYuL/ljFFFNzQPpbww8=; b=qw7O+Y5xE2S3gE
	usl+uWdRyi2M7+2tJ7o81ELXApWlPa0K6Q6v0J8bB+4mWbNkZ18mgIP6/EuVoaaWZF9fvcGnd67qb
	8Q4c+JSGs6nh1QDtONgHoq0cGXoI5mmrdf+tQkjoitYNlQ/DeRFJxlIs+hnj6TlqhsTLX7t4IUNz8
	N+HfIKNplyocOEVLtVH/cPZKbT0w27DG/tyC595A3sjiPpUZmh0+789WATM7TqaJYm7ZXgy628kYK
	yr3eWUhVXR29sd66dwmVJu2oqSsXodGtMuj691Wz2jLXkG907MqG68a4gRttI1Td4GqUS7pFymCct
	DSfE2m01wCOezvHhOhDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqinL-00046p-Dd; Sun, 12 Jan 2020 19:21:07 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iqinD-00046A-Sr
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 19:21:02 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F3C970036D276CF9DB7E3EB.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f3c:9700:36d2:76cf:9db7:e3eb])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id C915C1FF69
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 Jan 2020 20:20:56 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Jan 2020 20:20:43 +0100
Message-Id: <20200112192043.140872-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_112100_232691_78A1507A 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for D-Link DIR-505
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

This commit adds support for the D-Link DIR-505, previously supported in
ar71xx.

Hardware
--------
SoC:   Atheros AR9330
FLASH: 8M SPI-NOR
RAM:   64M
WIFI:  1T1R 1SS Atheros AR9330
LED:   Power green, Status red
BTN:   WPS, Reset

Installation
------------
Currently, installation is only possible by sysupgrading from an earlier
OpenWrt version, U-Boot TFTP or a modded U-Boot. I do not have the
original bootloader from D-Link on my device anymore, so i cannot test
the factory image.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../linux/ath79/dts/ar9330_dlink_dir-505.dts  | 149 ++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network |   4 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
 target/linux/ath79/image/generic.mk           |  10 ++
 4 files changed, 164 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9330_dlink_dir-505.dts

diff --git a/target/linux/ath79/dts/ar9330_dlink_dir-505.dts b/target/linux/ath79/dts/ar9330_dlink_dir-505.dts
new file mode 100644
index 0000000000..6984176daa
--- /dev/null
+++ b/target/linux/ath79/dts/ar9330_dlink_dir-505.dts
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9330.dtsi"
+
+/ {
+	model = "D-Link DIR-505";
+	compatible = "dlink,dir-505", "qca,ar9330";
+
+	aliases {
+		serial0 = &uart;
+		led-boot = &led_power_green;
+		led-failsafe = &led_status_red;
+		led-running = &led_power_green;
+		led-upgrade = &led_status_red;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		wps {
+			label = "WPS button";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WPS_BUTTON>;
+		};
+
+		reset {
+			label = "Reset button";
+			gpios = <&gpio 12 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		led_power_green: power {
+			label = "d-link:green:power";
+			gpios = <&gpio 27 GPIO_ACTIVE_LOW>;
+		};
+
+		led_status_red: status {
+			label = "d-link:red:status";
+			gpios = <&gpio 26 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&uart {
+	status = "okay";
+};
+
+&gpio {
+	status = "okay";
+
+	led_enable {
+		gpio-hog;
+		output-low;
+		gpios = <1 GPIO_ACTIVE_LOW>;
+		line-name = "d-link:power:led";
+	};
+};
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&eth0 {
+	status = "okay";
+
+	gmac-config {
+		device = <&gmac>;
+		switch-phy-addr-swap = <0>;
+		switch-phy-swap = <0>;
+	};
+};
+
+&eth1 {
+	compatible = "syscon", "simple-mfd";
+	status = "okay";
+};
+
+&spi {
+	num-chipselects = <1>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x10000>;
+				read-only;
+			};
+
+			art: partition@10000 {
+				label = "art";
+				reg = <0x10000 0x10000>;
+				read-only;
+			};
+
+			mac: partition@20000 {
+				label = "mac";
+				reg = <0x20000 0x10000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "nvram";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "language";
+				reg = <0x40000 0x40000>;
+				read-only;
+			};
+
+			partition@80000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x80000 0x780000>;
+			};
+		};
+	};
+};
+
+&wmac {
+	status = "okay";
+	qca,no-eeprom;
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index ae857b1771..6d9e49b52f 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -18,6 +18,7 @@ ath79_setup_interfaces()
 	devolo,dvl1750c|\
 	devolo,dvl1750i|\
 	devolo,dvl1750x|\
+	dlink,dir-505|\
 	engenius,ecb1750|\
 	glinet,gl-ar300m-lite|\
 	netgear,ex6400|\
@@ -310,6 +311,9 @@ ath79_setup_macs()
 		lan_mac=$(mtd_get_mac_text "caldata" 0xffa0)
 		wan_mac=$(mtd_get_mac_text "caldata" 0xffb4)
 		;;
+	dlink,dir-505)
+		lan_mac=$(mtd_get_mac_text "mac" 0x4)
+		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		lan_mac=$(mtd_get_mac_text "mac" 0x4)
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 84d840569b..4158116256 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -12,6 +12,7 @@ case "$FIRMWARE" in
 	avm,fritz4020)
 		caldata_extract_reverse "urlader" 0x1541 0x440
 		;;
+	dlink,dir-505|\
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		caldata_extract "art" 0x1000 0x440
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 18dad80d5d..dbc22b8bb4 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -373,6 +373,16 @@ define Device/devolo_dvl1750x
 endef
 TARGET_DEVICES += devolo_dvl1750x
 
+define Device/dlink_dir-505
+  SOC := ar9330
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-505
+  IMAGE_SIZE := 7680k
+  DEVICE_PACKAGES := kmod-usb2
+  SUPPORTED_DEVICES += dir-505-a1
+endef
+TARGET_DEVICES += dlink_dir-505
+
 define Device/dlink_dir-825-b1
   SOC := ar7161
   DEVICE_VENDOR := D-Link
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
