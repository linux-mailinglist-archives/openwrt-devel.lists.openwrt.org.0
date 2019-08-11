Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835C4893C5
	for <lists+openwrt-devel@lfdr.de>; Sun, 11 Aug 2019 22:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ot9a6ovMFIdbdnAFxZRy4Tip3T45RILa1+4KGhSd7Gs=; b=CH5fOJJP7zXUWC
	LKWmCmQf9lLjvGeVYO2RvMWZ/xitBhoGm/KtX4p18TtE7G5hVn5jtigskuLQzZdZpJMPdfChZGVIz
	c4KPTRisZ395Gq1dGPOxibaLWSoqIXkAHph+Q84pJ2KWSWTIZFSc5/5j9wQY9ROTUIYakaBf9wNc/
	9D6NzHlwUETJ32GY3JYpFqW2eLlEAgtNyTueAmJaJtSW57NwT7vnhPZjZzhb/lAUY1JSE3kHHJUIu
	km80/CrmiwH/oCG2CRaA+vmMaUwLOWgYZYtvXVIf0Ly3NS6ytazJ0EEdpFn5xc/DEnHA5XOOZ6Yzb
	tgX078fbTqUOYQ4BslPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuqL-0007X4-UT; Sun, 11 Aug 2019 20:53:33 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuqC-0007Vc-5T
 for openwrt-devel@lists.openwrt.org; Sun, 11 Aug 2019 20:53:26 +0000
Received: (wp-smtpd smtp.wp.pl 30314 invoked from network);
 11 Aug 2019 22:53:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565556798; bh=ztZI49YZDx4lmxUmJBGFTQDvV0DrmCNlCVkxBurL7Ok=;
 h=From:To:Cc:Subject;
 b=SziiH7fAM3BZ5Eiz/V3Hm0hjycqlTA3YWGEyfItmA/5lOPQBIcZEuSsrZ4Y58o4Re
 ZCcqQAwwnQXwk61rfQTjkSKRvZgj2+xtgNo1VoUxQn/0d3t5IaVUYl6SoQBfkTwzpi
 IMCHgrB4e/BW8+BwEXeB2okaV81KFEAoQrhqZKaU=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Aug 2019 22:53:18 +0200
Date: Sun, 11 Aug 2019 22:44:46 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190811224446.3334b7e6@kosmio.komorska>
In-Reply-To: <20190811223921.572cda5b@kosmio.komorska>
References: <20190811223921.572cda5b@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 448efda2f74a69fff8b0f9d7a716dddb
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [YSNE]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_135324_745258_D30696B0 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH v3 3/5] ath79: add support for Netgear
 WNR2000 v3
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

This patch adds ath79 support for Netgear WNR2000v3.
Router was previously supported by ar71xx target only.
Note: this is a 4_32 device with limited upgrade capabilities.

Specification
=============
  * Description: Netgear WNR2000 v3
  * Loader: U-boot
  * SOC: Atheros AR7241 (360 MHz)
  * RAM: 32 MiB
  * Flash: 4 MiB (SPI NOR)
	- U-boot binary: 256 KiB
	- U-boot environment: 64 KiB
	- Firmware: 3712 KiB
	- ART: 64 KiB
  * Ethernet: 4 x 10/100 LAN + 1 x 10/100 WAN
  * Wireless: 2.4 GHz b/g/n (Atheros AR9287)
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
  * UART: 4-pin connector JP1, 3.3V (Vcc, TX, RX, GND), 115200 8N1
  * Power supply: DC 12V 1A

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
CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr2000-v3=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y
CONFIG_KERNEL_DEBUG_INFO=y
CONFIG_KERNEL_DEBUG_KERNEL=y

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/base-files/etc/board.d/01_leds      |  12 +
 .../ath79/base-files/etc/board.d/02_network   |   1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
 .../ath79/dts/ar7241_netgear_wnr2000-v3.dts   | 212 ++++++++++++++++++
 target/linux/ath79/image/tiny-netgear.mk      |  16 ++
 5 files changed, 242 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index f1d738ba9f..4e919e7576 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -103,6 +103,18 @@ glinet,gl-ar300m-lite)
 glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
+netgear,wnr2000-v3)
+	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
+	ucidef_set_led_default "wan-green" "WAN (green)" "netgear:green:wan" "0"
+	ucidef_set_led_switch "lan1green" "LAN1 (green)" "netgear:green:lan1" "switch0" "0x02" "0x04"
+	ucidef_set_led_switch "lan2green" "LAN2 (green)" "netgear:green:lan2" "switch0" "0x04" "0x04"
+	ucidef_set_led_switch "lan3green" "LAN3 (green)" "netgear:green:lan3" "switch0" "0x08" "0x04"
+	ucidef_set_led_switch "lan4green" "LAN4 (green)" "netgear:green:lan4" "switch0" "0x10" "0x04"
+	ucidef_set_led_switch "lan1amber" "LAN1 (amber)" "netgear:amber:lan1" "switch0" "0x02" "0x02"
+	ucidef_set_led_switch "lan2amber" "LAN2 (amber)" "netgear:amber:lan2" "switch0" "0x04" "0x02"
+	ucidef_set_led_switch "lan3amber" "LAN3 (amber)" "netgear:amber:lan3" "switch0" "0x08" "0x02"
+	ucidef_set_led_switch "lan4amber" "LAN4 (amber)" "netgear:amber:lan4" "switch0" "0x10" "0x02"
+	;;
 netgear,wnr612-v2|\
 on,n150r)
 	ucidef_set_led_netdev "wan" "WAN" "netgear:green:wan" "eth0"
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 99b9d421f4..aff62274b6 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -195,6 +195,7 @@ ath79_setup_interfaces()
 		ucidef_add_switch_port_attr "switch0" 2 led 9
 		ucidef_add_switch_port_attr "switch0" 5 led 2
 		;;
+	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	tplink,tl-wr740n-v1|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index ec597dd1d4..747c1aab58 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -165,6 +165,7 @@ case "$FIRMWARE" in
 	winchannel,wb2000)
 		ath9k_eeprom_extract "art" 20480 1088
 		;;
+	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	pcs,cap324|\
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
new file mode 100644
index 0000000000..22f27f5313
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
@@ -0,0 +1,212 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7241.dtsi"
+
+/ {
+	compatible = "netgear,wnr2000-v3", "qca,ar7241";
+	model = "Netgear WNR2000 v3";
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
+		compatible = "gpio-keys";
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	ath9k-keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&ath9k 8 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		rfkill {
+			label = "rfkill";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&ath9k 9 GPIO_ACTIVE_LOW>;
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
+		wan_green {
+			label = "netgear:green:wan";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "netgear:amber:wan";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1_green {
+			label = "netgear:green:lan1";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1_amber {
+			label = "netgear:amber:lan1";
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_green {
+			label = "netgear:green:lan2";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2_amber {
+			label = "netgear:amber:lan2";
+			gpios = <&gpio 6 GPIO_ACTIVE_LOW>;
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
+
+		wps_green {
+			label = "netgear:green:wps";
+			gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
+
+		power_green: power_green {
+			label = "netgear:green:power";
+			gpios = <&ath9k 3 GPIO_ACTIVE_LOW>;
+		};
+
+		power_amber: power_amber {
+			label = "netgear:amber:power";
+			gpios = <&ath9k 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
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
+	compatible = "qca,ar7241-eth", "syscon", "simple-mfd";
+	mtd-mac-address = <&art 0x6>;
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,002e";
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
index 2f17d79757..b5fed1b88b 100644
--- a/target/linux/ath79/image/tiny-netgear.mk
+++ b/target/linux/ath79/image/tiny-netgear.mk
@@ -27,3 +27,19 @@ define Device/on_n150r
   SUPPORTED_DEVICES += n150r
 endef
 TARGET_DEVICES += on_n150r
+
+define Device/netgear_wnr2000-v3
+  ATH_SOC := ar7241
+  DEVICE_MODEL := WNR2000
+  DEVICE_VARIANT := v3
+  NETGEAR_KERNEL_MAGIC := 0x32303033
+  NETGEAR_BOARD_ID := WNR2000V3
+  NETGEAR_HW_ID := 29763551+04+32
+  IMAGE_SIZE := 3712k
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
+  IMAGES += factory-NA.img
+  IMAGE/factory-NA.img := $$(IMAGE/default) | netgear-dni NA | check-size $$$$(IMAGE_SIZE)
+  SUPPORTED_DEVICES += wnr2000-v3
+  $(Device/netgear_ath79)
+endef
+TARGET_DEVICES += netgear_wnr2000-v3
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
