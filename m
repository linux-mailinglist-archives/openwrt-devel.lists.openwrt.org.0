Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67CD1DA5C8
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 01:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=21SK46dsZ4qpmI5PGAoqI+qMewlwQYLXjAduIpnLz30=; b=NW9bLE0d6RhtAg
	utrLaxf5XA2/QJd21aFpOgVH43Gxd1uMRkGrznw/vqZH0c8Rhp3k6VGLAp5bHx+nhJbs2ZG7d3oKu
	5UCgPq6iM6V7g7IFYl7YXD0zEYjNhqBi0pcWSJdcAPDBA3LCYW7kG1iL4ZpNCZEbMOGtLcODQPgp2
	FKbycJqaq0+ckK0lpuKLoTj9QoSJP30GpN4s9EjWy0QneE80KUcyUdLJOt6JcjMbMOHOLKgTOV8B7
	io3rq3An0raB2tAR0trL9g92zOvHtU1qYgLTWpF/s7sUpl5ujWB0y/zmlTtCkoGlWJ9Y7wdbdNd16
	ENcZBwMRcUUYHgPWga9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbBwM-0004d9-8f; Tue, 19 May 2020 23:46:30 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbBwC-0004by-NU
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 23:46:23 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300e53f0ecf008844f033cb1282aa.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0e:cf00:8844:f033:cb12:82aa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 7EB4B236E3
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 01:46:02 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 May 2020 01:45:51 +0200
Message-Id: <20200519234551.6681-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_164621_062824_98294EC8 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for Enterasys WS-AP3705i
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
SoC:    Atheros AR9344
RAM:    128M DDR2
FLASH:  2x Macronix MX25L12845EM
        2x 16MiB SPI-NOR
WLAN2:  Atheros AR9344 2x2 2T2R
WLAN5:  Atheros AR9580 2x2 2T2R
SERIAL: Cisco-RJ45 on the back (115200 8n1)

Installation
------------

The U-Boot CLI is password protected (using the same credentials as the
OS). Default is admin/new2day.

1. Download the OpenWrt initramfs-image. Place it into a TFTP server
   root directory and rename it to 1401A8C0.img. Configure the TFTP
   server to listen at 192.168.1.66/24.

2. Connect the TFTP server to the access point.

3. Connect to the serial console of the access point. Attach power and
   interrupt the boot procedure when prompted (bootdelay is 1 second).

4. Configure the U-Boot environment for booting OpenWrt from Ram and
   flash:

   $ setenv boot_openwrt 'setenv bootargs; bootm 0xbf230000'
   $ setenv ramboot_openwrt 'setenv serverip 192.168.1.66;
     tftpboot 0x85000000; bootm'
   $ setenv bootcmd 'run boot_openwrt'
   $ saveenv

5. Load OpenWrt into memory:

   $ run ramboot_openwrt

   Wait for the image to boot.

6. Transfer the OpenWrt sysupgrade image to the device. Write the image
   to flash using sysupgrade:

   $ sysupgrade -n /path/to/openwrt-sysuograde.bin

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ath79/dts/ar9344_enterasys_ws-ap3705i.dts | 236 ++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |   3 +-
 .../generic/base-files/etc/board.d/02_network |   1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   8 +
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |   3 +
 target/linux/ath79/image/generic.mk           |   8 +
 6 files changed, 258 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/ar9344_enterasys_ws-ap3705i.dts

diff --git a/target/linux/ath79/dts/ar9344_enterasys_ws-ap3705i.dts b/target/linux/ath79/dts/ar9344_enterasys_ws-ap3705i.dts
new file mode 100644
index 0000000000..cee65ada39
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_enterasys_ws-ap3705i.dts
@@ -0,0 +1,236 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	compatible = "enterasys,ws-ap3705i", "qca,ar9344";
+	model = "Enterasys WS-AP3705i";
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	aliases {
+		led-boot = &led_power_green;
+		led-failsafe = &led_power_red;
+		led-running = &led_power_green;
+		led-upgrade = &led_power_red;
+		label-mac-device = &eth0;
+	};
+
+	mtd-concat {
+		compatible = "mtd-concat";
+		devices = <&concat0 &concat1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x0 0x1dd0000>;
+			};
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&enable_gpio_11 &enable_gpio_16>;
+
+		led_power_green: power_green {
+			label = "ws-ap3705i:green:power";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+		};
+
+		led_power_red: power_red {
+			label = "ws-ap3705i:red:power";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		lan_blue {
+			label = "ws-ap3705i:blue:lan";
+			gpios = <&gpio 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		lan_green {
+			label = "ws-ap3705i:green:lan";
+			gpios = <&gpio 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		radio2 {
+			label = "ws-ap3705i:green:radio2";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+
+	ath9k-leds {
+		compatible = "gpio-leds";
+
+		radio1 {
+			label = "ws-ap3705i:green:radio1";
+			gpios = <&ath9k 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "Reset button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&ref {
+	clock-frequency = <40000000>;
+};
+
+&uart {
+	status = "okay";
+};
+
+&pinmux {
+	enable_gpio_16: pinmux_enable_gpio_16 {
+		pinctrl-single,bits = <0x10 0x0 0x000000ff>;
+	};
+
+	enable_gpio_11: pinmux_enable_gpio_11 {
+		pinctrl-single,bits = <0x8 0x0 0xff000000>;
+	};
+};
+
+&gpio {
+	status = "okay";
+};
+
+&wmac {
+	status = "okay";
+	qca,no-eeprom;
+};
+
+&spi {
+	status = "okay";
+
+	cs-gpios = <0>, <0>;
+	num-cs = <2>;
+
+	flash0: flash@0 {
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
+				label = "u-boot-bak";
+				reg = <0x0 0x80000>;
+				read-only;
+			};
+
+			partition@80000 {
+				label = "u-boot-env0";
+				reg = <0x80000 0x10000>;
+				read-only;
+			};
+
+			partition@90000 {
+				label = "u-boot-env1";
+				reg = <0x90000 0x10000>;
+				read-only;
+			};
+
+			partition@a0000 {
+				label = "u-boot";
+				reg = <0xa0000 0x80000>;
+				read-only;
+			};
+
+			partition@120000 {
+				label = "calibrate";
+				reg = <0x120000 0x10000>;
+				read-only;
+			};
+
+			partition@130000 {
+				label = "nvram";
+				reg = <0x130000 0x100000>;
+				read-only;
+			};
+
+			concat0: partition@230000 {
+				label = "concat0";
+				reg = <0x230000 0xdd0000>;
+			};
+		};
+	};
+
+	flash1: flash@1 {
+		compatible = "jedec,spi-nor";
+		reg = <1>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			concat1: partition@0 {
+				label = "concat1";
+				reg = <0x0 0x1000000>;
+			};
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,0033";
+		reg = <0x0000 0 0 0 0>;
+		qca,no-eeprom;
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	pll-data = <0x1e000000 0x08000101 0x08001313>;
+
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	gmac-config {
+		device = <&gmac>;
+		rgmii-gmac0 = <1>;
+		rxd-delay = <0>;
+		rxdv-delay = <0>;
+		txen-delay = <0>;
+		txd-delay = <0>;
+	};
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index a3c5b3f988..4774d5daf2 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -95,7 +95,8 @@ comfast,cf-ew72)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:wan" "eth1"
 	;;
 comfast,cf-wr752ac-v1|\
-engenius,ecb1750)
+engenius,ecb1750|\
+enterasys,ws-ap3705i)
 	ucidef_set_led_netdev "lan" "LAN" "$boardname:blue:lan" "eth0"
 	;;
 devolo,magic-2-wifi)
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 9768e4e076..d54bb0914e 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -22,6 +22,7 @@ ath79_setup_interfaces()
 	devolo,dvl1750x|\
 	dlink,dir-505|\
 	engenius,ecb1750|\
+	enterasys,ws-ap3705i|\
 	glinet,gl-ar300m-lite|\
 	netgear,ex6400|\
 	netgear,ex7300|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 428b502d81..e0fa5ff354 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -43,6 +43,10 @@ case "$FIRMWARE" in
 		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env ethaddr)
 		;;
+	enterasys,ws-ap3705i)
+		caldata_extract "calibrate" 0x1000 0x440
+		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env0 RADIOADDR1)
+		;;
 	nec,wg800hp)
 		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_mac $(mtd_get_mac_text board_data 0x680)
@@ -72,6 +76,10 @@ case "$FIRMWARE" in
 		caldata_extract "art" 0x5000 0x440
 		ath9k_patch_mac $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1)
 		;;
+	enterasys,ws-ap3705i)
+		caldata_extract "calibrate" 0x5000 0x440
+		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env0 RADIOADDR0)
+		;;
 	ocedo,raccoon|\
 	tplink,tl-wdr3500-v1|\
 	tplink,tl-wdr3600-v1|\
diff --git a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
index b3c3de298e..da1583a825 100644
--- a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
+++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
@@ -8,6 +8,9 @@ preinit_set_mac_address() {
 	avm,fritz450e)
 		ip link set dev eth0 address $(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
 		;;
+	enterasys,ws-ap3705i)
+		ip link set dev eth0 address $(mtd_get_mac_ascii u-boot-env0 ethaddr)
+		;;
 	siemens,ws-ap3610)
 		ip link set dev eth0 address $(mtd_get_mac_ascii cfg1 ethaddr)
 		;;
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 8d8767ddf6..7f06740c98 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -630,6 +630,14 @@ define Device/engenius_ews511ap
 endef
 TARGET_DEVICES += engenius_ews511ap
 
+define Device/enterasys_ws-ap3705i
+  SOC := ar9344
+  DEVICE_VENDOR := Enterasys
+  DEVICE_MODEL := WS-AP3705i
+  IMAGE_SIZE := 30528k
+endef
+TARGET_DEVICES += enterasys_ws-ap3705i
+
 define Device/etactica_eg200
   SOC := ar9331
   DEVICE_VENDOR := eTactica
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
