Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB94D9C11
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 22:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uF9N9+k+gofGoswoybxZe+Q3CmsfCU47WBaOcBfOLuI=; b=MEDSMsxTugs/CV
	ZWhsyhdOu5VytrSk8hOjh7xbyINrxfrbeZfI5K2gpVDEp/WjyukA+wmvuYEX1gY3jLo+9dG/7dKxF
	/RAnbDuId7n4dcbf/LGkHFhYL63m7QHLK7XO97V7Vby/YKYqZ04QNqfVBTmG6uDX0LAv7ai4JDprm
	LwN0iYGQaTKkxrdar7p/YzzJlyE0wo92VMclRA5IHopWDy2CKfgHyZg/VYdr0UxoqNJXc3L9ytNUU
	HZddG84CVYf0VSyNbHKb/t4DS3G+qVma0jOpxkKkbFCZXRaHqm4swwJhAfzRFJ/tWoTWMlP/Y3Jt+
	U3iCcoWjLhPvn7qnaedQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqLh-0003WJ-UZ; Wed, 16 Oct 2019 20:56:49 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqKY-0002IJ-QQ
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 20:55:40 +0000
Received: (wp-smtpd smtp.wp.pl 6887 invoked from network);
 16 Oct 2019 22:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1571259336; bh=I04WFEmevQWoYtCesHdgkO/dsaVjjlU0JIqofJPUwzM=;
 h=From:To:Cc:Subject;
 b=d2/QI0qU50CdXzV5ixXrnVnEBOF4Iv8bQG+hdagtQg8Cp7mutwYhDCRauwEPOAbJ9
 YYcahLAtJx9le1iNf1EwzOAfw7tnerXKduXEq48Sclp3Dn9IvtlozORtPeCvpoumFe
 8avoVpeii3vCYgWOoZNcSqLnrc8FmIf1klN3jU84=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 16 Oct 2019 22:55:36 +0200
Date: Wed, 16 Oct 2019 12:41:34 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191016124134.56ccd640@kosmio.komorska>
In-Reply-To: <20191016123722.70774de1@kosmio.komorska>
References: <20191016123722.70774de1@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: de1fced1e54a7ccf5c0aad9ddeb84397
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [0VN1]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_135539_039435_1C9DAB28 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v5 3/5] ath79: add support for Netgear
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
 .../ath79/base-files/etc/board.d/01_leds      |  11 +
 .../ath79/base-files/etc/board.d/02_network   |   1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
 .../ath79/dts/ar7241_netgear_wnr2000-v3.dts   | 207 ++++++++++++++++++
 target/linux/ath79/image/tiny-netgear.mk      |  16 ++
 5 files changed, 236 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 4ea9586d3d..97598ce45c 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -111,6 +111,17 @@ glinet,gl-ar300m-lite)
 glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
+netgear,wnr2000-v3)
+	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
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
index fe74bddbf1..72ee6279ea 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -204,6 +204,7 @@ ath79_setup_interfaces()
 		ucidef_add_switch_port_attr "switch0" 2 led 9
 		ucidef_add_switch_port_attr "switch0" 5 led 2
 		;;
+	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	tplink,tl-wr740n-v1|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 3240026aec..fb37bd8579 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -78,6 +78,7 @@ case "$FIRMWARE" in
 	winchannel,wb2000)
 		caldata_extract "art" 0x5000 0x440
 		;;
+	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	pcs,cap324|\
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
new file mode 100644
index 0000000000..deb031b353
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2000-v3.dts
@@ -0,0 +1,207 @@
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
+		label-mac-device = &eth1;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
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
+		qca,no-eeprom;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
+&uart {
+	status = "okay";
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
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
