Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F849893CA
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 22:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Mw7Ii2Pr4u8Wq0cbIjPBcm8BU8FIElmUjTKcvj3V80=; b=IDZGgJOi/MA8uv
	Yght6Zbx7iRkzKvxN+HZOvRMpWgKkhCMF1ryRYPb6T1I1WvXRdLiNp5FvdTDJzhjokjtmXx3tyjnm
	R7nHs4j69nKFuYbGvPrZnvB4aVHFdbqI1C8fnmqWh8cM/ClpBIP+PWUsyB+/KuV0vz3XG1o0geC+0
	z+dvJU9lqKC/dD005j2r0LFjqBJT3sPgZahYRUPi645LrjKbeAlul5qgUBi6Ujq8Ejv/Ih4ETUl02
	h7p5BzBke1PGdvoyxqcmF0ElE3puFsU0CX/uk5rvQ+4BQ+sewvfT0a1GHrT0XrbLEusktWySHBHq2
	htMR/R176V58FWz4FqtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuqv-0008Sb-Ek; Sun, 11 Aug 2019 20:54:09 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuqF-0007WJ-W3
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 20:53:29 +0000
Received: (wp-smtpd smtp.wp.pl 34362 invoked from network);
 11 Aug 2019 22:53:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565556805; bh=k8cl9I9rYY4s6MhQGbHUBviAMQwF1eA0oezj3MvxQQ4=;
 h=From:To:Cc:Subject;
 b=O3hiYwexiv3kD5oxY4DsVAJe6EhlyD7j0YF0LVLLqMUnZVpQiVgcHk0Jfg3pITH/Q
 nvDiT6Fxg6VjxhFuDGz/8weJOYas3PQmfbcE8d4EqtHzzt727dBti4fSfJUtWcJODt
 QkuRHFDBwfCyp5zi7O2D4Zvnvcz9on7OSGAKTuDE=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Aug 2019 22:53:25 +0200
Date: Sun, 11 Aug 2019 22:46:22 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190811224622.0ddaa7f0@kosmio.komorska>
In-Reply-To: <20190811223921.572cda5b@kosmio.komorska>
References: <20190811223921.572cda5b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: a7f37f8cae454b1e3f0ffd725c6bb0f8
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [QbN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_135328_213075_6F244687 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3 4/5] ath79: add support for Netgear
 WNR1000 v2
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds ath79 support for Netgear WNR1000v2.
Router was previously supported by ar71xx target only.
Note: this is a 4_32 device with limited upgrade capabilities.

Specification
=============
  * Description: Netgear WNR1000 v2
  * Loader: U-boot
  * SOC: Atheros AR7240 (340 MHz)
  * RAM: 32 MiB
  * Flash: 4 MiB (SPI NOR)
	- U-boot binary: 256 KiB
	- U-boot environment: 64 KiB
	- Firmware: 3712 KiB
	- ART: 64 KiB
  * Ethernet: 4 x 10/100 LAN + 1 x 10/100 WAN
  * Wireless: 2.4 GHz b/g/n (Atheros AR9285)
  * USB: no
  * Buttons:
	- Reset
	- WiFi (rfkill)
	- WPS
  * LEDs:
	- Power (amber/green)
	- WAN (amber/green)
	- WLAN (blue)
	- 4 x LAN (amber/green)
	- WPS (green)
  * UART: 4-pin connector JP2, 3.3V (Vcc, TX, RX, GND), 115200 8N1
  * Power supply: DC 12V 1A
  * MAC addresses: LAN on case label, WAN +1, WLAN +2

Installation
============
  * TFTP recovery
  * TFTP via U-boot prompt
  * sysupgrade
  * Web interface

Test build configuration
========================
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_tiny=y
CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr1000-v2=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y
CONFIG_KERNEL_DEBUG_INFO=y
CONFIG_KERNEL_DEBUG_KERNEL=y

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/base-files/etc/board.d/01_leds      |   1 +
 .../ath79/base-files/etc/board.d/02_network   |   1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
 .../ath79/dts/ar7240_netgear_wnr1000-v2.dts   | 207 ++++++++++++++++++
 target/linux/ath79/image/tiny-netgear.mk      |  12 +
 5 files changed, 222 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 4e919e7576..7eca103a9e 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -103,6 +103,7 @@ glinet,gl-ar300m-lite)
 glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
+netgear,wnr1000-v2|\
 netgear,wnr2000-v3)
 	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
 	ucidef_set_led_default "wan-green" "WAN (green)" "netgear:green:wan" "0"
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index aff62274b6..fe491d1c26 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -195,6 +195,7 @@ ath79_setup_interfaces()
 		ucidef_add_switch_port_attr "switch0" 2 led 9
 		ucidef_add_switch_port_attr "switch0" 5 led 2
 		;;
+	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
 	on,n150r|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 747c1aab58..dbe53b6f64 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -165,6 +165,7 @@ case "$FIRMWARE" in
 	winchannel,wb2000)
 		ath9k_eeprom_extract "art" 20480 1088
 		;;
+	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
 	on,n150r|\
diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts b/target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
new file mode 100644
index 0000000000..e344c0e62c
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr1000-v2.dts
@@ -0,0 +1,207 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7240.dtsi"
+
+/ {
+	compatible = "netgear,wnr1000-v2", "qca,ar7240";
+	model = "Netgear WNR1000 v2";
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	aliases {
+		led-boot = &power_amber;
+		led-failsafe = &power_amber;
+		led-running = &power_green;
+		led-upgrade = &power_amber;
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&ath9k 6 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&ath9k 7 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		rfkill {
+			label = "rfkill";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&ath9k 8 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins &switch_led_disable_pins &clks_disable_pins>;
+
+		power_green: power_green {
+			label = "netgear:green:power";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+		};
+
+		power_amber: power_amber {
+			label = "netgear:amber:power";
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+		};
+
+		wan_green {
+			label = "netgear:green:wan";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "netgear:amber:wan";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1_green {
+			label = "netgear:green:lan1";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1_amber {
+			label = "netgear:amber:lan1";
+			gpios = <&gpio 6 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_green {
+			label = "netgear:green:lan2";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_amber {
+			label = "netgear:amber:lan2";
+			gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_green {
+			label = "netgear:green:lan3";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_amber {
+			label = "netgear:amber:lan3";
+			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_green {
+			label = "netgear:green:lan4";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_amber {
+			label = "netgear:amber:lan4";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
+
+		wps_green {
+			label = "netgear:green:wps";
+			gpios = <&ath9k 5 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan_blue {
+			label = "netgear:blue:wlan";
+			gpios = <&ath9k 1 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
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
+				label = "u-boot";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x40000 0x10000>;
+			};
+
+			partition@50000 {
+				label = "firmware";
+				reg = <0x50000 0x3a0000>;
+				compatible = "netgear,uimage";
+			};
+
+			art: partition@3f0000 {
+				label = "art";
+				reg = <0x3f0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x0>;
+};
+
+&eth1 {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x6>;
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,002b";
+		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0x0>;
+		mtd-mac-address-increment = <1>;
+		mtd-cal-data = <&art 0x1000>;
+		qca,no-eeprom;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
+&uart {
+	status = "okay";
+};
+
+&gpio {
+        status = "okay";
+};
diff --git a/target/linux/ath79/image/tiny-netgear.mk b/target/linux/ath79/image/tiny-netgear.mk
index b5fed1b88b..0df19390bb 100644
--- a/target/linux/ath79/image/tiny-netgear.mk
+++ b/target/linux/ath79/image/tiny-netgear.mk
@@ -28,6 +28,18 @@ define Device/on_n150r
 endef
 TARGET_DEVICES += on_n150r
 
+define Device/netgear_wnr1000-v2
+  ATH_SOC := ar7240
+  DEVICE_MODEL := WNR1000
+  DEVICE_VARIANT := v2
+  NETGEAR_KERNEL_MAGIC := 0x31303031
+  IMAGE_SIZE := 3712k
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
+  SUPPORTED_DEVICES += wnr1000-v2
+  $(Device/netgear_ath79)
+endef
+TARGET_DEVICES += netgear_wnr1000-v2
+
 define Device/netgear_wnr2000-v3
   ATH_SOC := ar7241
   DEVICE_MODEL := WNR2000
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
