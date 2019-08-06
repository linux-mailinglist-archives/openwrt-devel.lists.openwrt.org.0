Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CD383053
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 13:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NY0AOoEQOrv1Es65kQsvKEbWPDOldu0I/KCN/VpaPSc=; b=Ga9HZ8AbsIb7UlGknQk6uv574L
	c+iXBhhg9B1gv7ZbyqP6zzkUNEB3bT1AtF+NiwnT39FJsjJoiIv6JSnm+K89KsTsHPddHxWC/0/iv
	ILvyhX+7T4us9tMPag5UOfNLt4swMH3/P6TaOLqcGHbgtCcySqpjpQkn3WiX7KIh7+ZKiNvoKyeOt
	dcuFZO0SYw3/Ea9Ur1GL7jaowkacd+aN0Ayw9Lzj5qb1KJCsPv0ZoIvml7tvcpRiwHvGoy7LRz9ol
	s9ouIU3fe0ql/G+8NeAboupUpWoIrbDT87A7Q+x8bYwG1wku75ViEHGFGUUJMcy8+6LUijEAT9gmC
	44ACPmBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxOy-0007KO-Fw; Tue, 06 Aug 2019 11:13:12 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxNE-00061R-6R
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 11:11:26 +0000
Received: (wp-smtpd smtp.wp.pl 7616 invoked from network);
 6 Aug 2019 13:11:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1565089881; bh=1WqOq0qg/Pca/FHdysHQ3QREeLrIHhTM8Uuazyn9dRg=;
 h=From:To:Subject;
 b=p9d+z7Vj9U0kLmM3qa3Eh9dQJ30BwK0JWTG3tt9LXO6ji7RdYOLT5m2RP/db8Zh2z
 otvPhB9hdIvxZBGB0j3Tor6hbDsS1du3+s3Og3CK+8neLYQ8h7ae9c8H813yt7eyXh
 suGwpjWfuo8Hc9oLI4paKIm2JgpPsQyenwHN64BA=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 6 Aug 2019 13:11:21 +0200
Date: Tue, 6 Aug 2019 12:59:43 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20190806125943.373a127a@kosmio.komorska>
In-Reply-To: <20190806125153.07c9b005@kosmio.komorska>
References: <20190806125153.07c9b005@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 0d65eae0124f233daa719ed9bfb7ea8e
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [sTN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_041125_181535_16F4BC8B 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 5/7] ath79: add support for Netgear WNR2200
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

This patch adds ath79 support for Netgear WNR2200.
Router was previously supported by ar71xx target only.

Specification
=============
  * Description: Netgear WNR2200
  * Loader: U-boot
  * SOC: Atheros AR7241 (360 MHz)
  * RAM: 64 MiB
  * Flash: 8 MiB (SPI NOR)
	- U-boot binary: 256 KiB
	- U-boot environment: 64 KiB
	- Firmware: 7808 KiB
	- ART: 64 KiB
  * Ethernet: 4 x 10/100 LAN + 1 x 10/100 WAN
  * Wireless: 2.4 GHz b/g/n (Atheros AR9287)
  * USB: yes, 1 x USB 2.0
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
  * Power supply: DC 12V 1.5A
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
CONFIG_TARGET_ath79_generic=y
CONFIG_TARGET_ath79_generic_DEVICE_netgear_wnr2200=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y
CONFIG_KERNEL_DEBUG_INFO=y
CONFIG_KERNEL_DEBUG_KERNEL=y

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 .../ath79/base-files/etc/board.d/01_leds      |  14 +
 .../ath79/base-files/etc/board.d/02_network   |   1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
 .../ath79/dts/ar7241_netgear_wnr2200.dts      | 240 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |  16 ++
 5 files changed, 272 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7241_netgear_wnr2200.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 5f5d5a7b2a..c366df50ec 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -107,6 +107,20 @@ netgear,wnr2000-v3)
 	ucidef_set_led_switch "lan3amber" "LAN3 (amber)" "netgear:amber:lan3" "switch0" "0x08" "0x02"
 	ucidef_set_led_switch "lan4amber" "LAN4 (amber)" "netgear:amber:lan4" "switch0" "0x10" "0x02"
 	;;
+netgear,wnr2200)
+	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
+	ucidef_set_led_default "wan-green" "WAN (green)" "netgear:green:wan" "0"
+	ucidef_set_led_wlan "wlan" "WLAN" "netgear:blue:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan1green" "LAN1 (green)" "netgear:green:lan1" "switch0" "0x02" "0x04"
+	ucidef_set_led_switch "lan2green" "LAN2 (green)" "netgear:green:lan2" "switch0" "0x04" "0x04"
+	ucidef_set_led_switch "lan3green" "LAN3 (green)" "netgear:green:lan3" "switch0" "0x08" "0x04"
+	ucidef_set_led_switch "lan4green" "LAN4 (green)" "netgear:green:lan4" "switch0" "0x10" "0x04"
+	ucidef_set_led_switch "lan1amber" "LAN1 (amber)" "netgear:amber:lan1" "switch0" "0x02" "0x02"
+	ucidef_set_led_switch "lan2amber" "LAN2 (amber)" "netgear:amber:lan2" "switch0" "0x04" "0x02"
+	ucidef_set_led_switch "lan3amber" "LAN3 (amber)" "netgear:amber:lan3" "switch0" "0x08" "0x02"
+	ucidef_set_led_switch "lan4amber" "LAN4 (amber)" "netgear:amber:lan4" "switch0" "0x10" "0x02"
+	ucidef_set_led_usbport "usb" "USB" "netgear:green:usb" "usb1-port1"
+	;;
 netgear,wnr612-v2|\
 on,n150r)
 	ucidef_set_led_netdev "wan" "WAN" "netgear:green:wan" "eth0"
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index a4b6b4e1dd..0a2775568b 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -182,6 +182,7 @@ ath79_setup_interfaces()
 		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
+	netgear,wnr2200|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	tplink,tl-wr740n-v1|\
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index e2edebed66..3ce1e70725 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -166,6 +166,7 @@ case "$FIRMWARE" in
 		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
+	netgear,wnr2200|\
 	netgear,wnr612-v2|\
 	on,n150r|\
 	pcs,cap324|\
diff --git a/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts
new file mode 100644
index 0000000000..738fc55ec6
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_netgear_wnr2200.dts
@@ -0,0 +1,240 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7241.dtsi"
+
+/ {
+	model = "Netgear WNR2200";
+	compatible = "netgear,wnr2200", "qca,ar7241";
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
+			gpios = <&ath9k 5 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&ath9k 6 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		rfkill {
+			label = "rfkill";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&ath9k 3 GPIO_ACTIVE_LOW>;
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
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "netgear:amber:wan";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
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
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_green {
+			label = "netgear:green:lan3";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3_amber {
+			label = "netgear:amber:lan3";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_green {
+			label = "netgear:green:lan4";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4_amber {
+			label = "netgear:amber:lan4";
+			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+		};
+
+		wps_green {
+			label = "netgear:green:wps";
+			gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		};
+
+		usb_green {
+			label = "netgear:green:usb";
+			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&hub_port>;
+			linux,default-trigger = "usbport";
+		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
+
+		power_green: power_green {
+			label = "netgear:green:power";
+			gpios = <&ath9k 2 GPIO_ACTIVE_LOW>;
+		};
+
+		power_amber: power_amber {
+			label = "netgear:amber:power";
+			gpios = <&ath9k 1 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+		};
+
+		wlan_blue {
+			label = "netgear:blue:wlan";
+			gpios = <&ath9k 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+
+	gpio-export {
+		compatible = "gpio-export";
+
+		gpio_usb_power {
+			gpio-export,name = "netgear:power:usb";
+			gpio-export,output = <1>;
+			gpios = <&ath9k 4 GPIO_ACTIVE_HIGH>;
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
+				reg = <0x000000 0x040000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x040000 0x010000>;
+			};
+
+			partition@50000 {
+				label = "firmware";
+				reg = <0x050000 0x7a0000>;
+				compatible = "netgear,uimage";
+			};
+
+			art: partition@7f0000 {
+				label = "art";
+				reg = <0x7f0000 0x010000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x00>;
+};
+
+&eth1 {
+	status = "okay";
+
+	compatible = "qca,ar7241-eth", "syscon", "simple-mfd";
+	mtd-mac-address = <&art 0x06>;
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,002e";
+		reg = <0x0000 0 0 0 0>;
+		mtd-mac-address = <&art 0x00>;
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
+
+&usb_phy {
+	status = "okay";
+};
+
+&usb {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_port: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
+};
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 8009582778..83b76bda2b 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -789,6 +789,22 @@ define Device/netgear_wndr3800
 endef
 TARGET_DEVICES += netgear_wndr3800
 
+define Device/netgear_wnr2200
+  ATH_SOC := ar7241
+  DEVICE_VENDOR := Netgear
+  DEVICE_MODEL := WNR2200
+  DEVICE_DTS := ar7241_netgear_wnr2200
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-ledtrig-usbport
+  NETGEAR_KERNEL_MAGIC := 0x32323030
+  IMAGE_SIZE := 7808k
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-squashfs | append-rootfs | pad-rootfs
+  IMAGES += factory-NA.img
+  IMAGE/factory-NA.img := $$(IMAGE/default) | netgear-dni NA | check-size $$$$(IMAGE_SIZE)
+  SUPPORTED_DEVICES += wnr2200
+  $(Device/netgear_ath79)
+endef
+TARGET_DEVICES += netgear_wnr2200
+
 define Device/phicomm_k2t
   ATH_SOC := qca9563
   DEVICE_VENDOR := Phicomm
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
