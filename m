Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E45215AC1A
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 16:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=64BjEpNoASezidEOmScWgkxY5Hz/hsK01plm5qYzog0=; b=n2WC0UpzRGuSICqyAM0LDdd0Ke
	oqeAeaiK8H23mqb/ZldqT29Gg5l3q9eyfxN4PBVMTW8yrdxVEBHpxnbEjhojTkDQljvVaWID/FWR6
	UI7KwvWZcNLuVt14k91BMOAuNfNbHKyWELSCSS34IMCW9g4tsl8Odc+bwVguEeb5vf64b99i7o1/d
	dhBlvRbx0IEWyPpYnVBCnEOTik9frjEoOfGKvdIaNhiPFieh902N8xUcHYGgGNEjEQzzrsgRTQk2l
	CUOP5cxG1MoZzNbTwEP4Gw3k9TT9BwwQa/pZg9dfrhF1mQKuQ4mBWeTcB6VyYFp1gKBqfGs2OBPtu
	q+KN/hZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1u5m-0003TD-Ne; Wed, 12 Feb 2020 15:38:22 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1j1u5S-0003JK-Mz
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 15:38:07 +0000
Received: from localhost.localdomain (unknown [46.183.103.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 14EC8230C0
 for <openwrt-devel@lists.openwrt.org>; Wed, 12 Feb 2020 16:37:58 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 12 Feb 2020 16:37:02 +0100
Message-Id: <20200212153702.11977-2-mail@david-bauer.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200212153702.11977-1-mail@david-bauer.net>
References: <20200212153702.11977-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_073803_047754_2F82154B 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for Siemens WS-AP3610
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
SoC:  Atheros AR7161
RAM:  Samsung K4H511638D-UCCC
      2x 64M DDR1
SPI:  Micron M25P128 (16M)
WiFi: Atheros AR9160 bgn
      Atheros AR9160 an
ETH:  Broadcom BCM5481
LED:  Power (Green/Red)
      ETH (Green / Blue / Yellow)
          (PHY-controlled)
      WiFi 5 (Green / Blue)
      WiFi 2 (Green / Blue)
BTN:  Reset

Serial: Cisco-Style RJ45 - 115200 8N1

Installation
------------

1. Download the OpenWrt initramfs-image. Place it into a TFTP server
   root directory and rename it to 1401A8C0.img. Configure the TFTP
   server to listen at 192.168.1.66/24.

2. Connect the TFTP server to the access point.

3. Connect to the serial console of the access point. Attach power and
   interrupt the boot procedure when prompted (bootdelay is 1 second).

4. Configure the U-Boot environment for booting OpenWrt from Ram and
   flash:

   $ setenv boot_openwrt 'setenv bootargs; bootm 0xbf080000'
   $ setenv ramboot_openwrt 'setenv serverip 192.168.1.66;
     tftpboot; bootm'
   $ saveenv

5. Load OpenWrt into memory:

   $ run ramboot_openwrt

   Wait for the image to boot.

6. Transfer the OpenWrt sysupgrade image to the device. Write the image
   to flash using sysupgrade:

   $ sysupgrade -n /path/to/openwrt-sysuograde.bin

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 .../ath79/dts/ar7161_siemens_ws-ap3610.dts    | 186 ++++++++++++++++++
 .../generic/base-files/etc/board.d/02_network |   1 +
 .../etc/hotplug.d/ieee80211/10_fix_wifi_mac   |   3 +
 .../base-files/lib/preinit/10_fix_eth_mac.sh  |  13 ++
 target/linux/ath79/generic/config-default     |   1 +
 target/linux/ath79/image/generic.mk           |  14 ++
 6 files changed, 218 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7161_siemens_ws-ap3610.dts
 create mode 100644 target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh

diff --git a/target/linux/ath79/dts/ar7161_siemens_ws-ap3610.dts b/target/linux/ath79/dts/ar7161_siemens_ws-ap3610.dts
new file mode 100644
index 0000000000..8e0a80cb32
--- /dev/null
+++ b/target/linux/ath79/dts/ar7161_siemens_ws-ap3610.dts
@@ -0,0 +1,186 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7100.dtsi"
+
+/ {
+	compatible = "siemens,ws-ap3610", "qca,ar7161";
+	model = "Siemens WS-AP3610";
+
+	chosen {
+		bootargs = "console=ttyS0,115200";
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
+	extosc: ref {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-output-names = "ref";
+		clock-frequency = <40000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power_green: led_power_green {
+			label = "ws-ap3610:green:power";
+			gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		};
+
+		led_power_red: led_power_red {
+			label = "ws-ap3610:red:power";
+			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+		};
+
+		led_wlan5_blue {
+			label = "ws-ap3610:blue:wlan5";
+			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		led_wlan5_green {
+			label = "ws-ap3610:green:wlan5";
+			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
+		};
+
+		led_wlan2_blue {
+			label = "ws-ap3610:blue:wlan2";
+			gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		led_wlan2_green {
+			label = "ws-ap3610:green:wlan2";
+			gpios = <&gpio 5 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&uart {
+	status = "okay";
+};
+
+&mdio0 {
+	status = "okay";
+
+	phy0: ethernet-phy@0 {
+		/*
+		 * When the compatible-is missing, PHY autodetection
+		 * is performed, but the PHY-ID reads all 0xff.
+		 *
+		 * Linux does not create the device in this case,
+		 * and the reset is never even de-asserted.
+		 */
+		compatible = "ethernet-phy-id0143.bca2",
+				"ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+
+		resets = <&rst 8>;
+		reset-names = "phy";
+		reset-assert-us = <10000>;
+		reset-deassert-us = <10000>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	phy-mode = "rgmii-id";
+	phy-handle = <&phy0>;
+};
+
+&spi {
+	status = "okay";
+
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
+				label = "u-boot-bak";
+				reg = <0x40000 0x40000>;
+				read-only;
+			};
+
+			partition@80000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x80000 0xe00000>;
+			};
+
+			partition@e80000 {
+				label = "cfg1";
+				reg = <0xe80000 0x40000>;
+				read-only;
+			};
+
+			partition@ec0000 {
+				label = "cfg2";
+				reg = <0xec0000 0x40000>;
+				read-only;
+			};
+
+			partition@f00000 {
+				label = "nvram1";
+				reg = <0xf00000 0x40000>;
+				read-only;
+			};
+
+			partition@f40000 {
+				label = "nvram2";
+				reg = <0xf40000 0x40000>;
+				read-only;
+			};
+
+			partition@f80000 {
+				label = "rsvd1";
+				reg = <0xf80000 0x40000>;
+				read-only;
+			};
+
+			partition@fc0000 {
+				label = "rsvd2";
+				reg = <0xfc0000 0x40000>;
+				read-only;
+			};
+		};
+	};
+};
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index a3fcf35715..69c19358e2 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -30,6 +30,7 @@ ath79_setup_interfaces()
 	pisen,ts-d084|\
 	pisen,wmb001n|\
 	pisen,wmm003n|\
+	siemens,ws-ap3610|\
 	tplink,cpe210-v2|\
 	tplink,cpe210-v3|\
 	tplink,cpe510-v2|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/generic/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index 8c8b7932bc..f814bd46ad 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -34,6 +34,9 @@ case "$board" in
 		[ "$PHYNBR" -eq 1 ] && \
 			k2t_get_mac "lan_mac" > /sys${DEVPATH}/macaddress
 		;;
+	siemens,ws-ap3610)
+		mtd_get_mac_ascii cfg1 RADIOADDR${PHYNBR} > /sys${DEVPATH}/macaddress
+		;;
 	trendnet,tew-823dru)
 		# set the 2.4G interface mac address to LAN MAC
 		[ "$PHYNBR" -eq 1 ] && \
diff --git a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
new file mode 100644
index 0000000000..a0fb9fc717
--- /dev/null
+++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+. /lib/functions.sh
+
+preinit_set_mac_address() {
+	case $(board_name) in
+	siemens,ws-ap3610)
+		ip link set dev eth0 address $(mtd_get_mac_ascii cfg1 ethaddr)
+		;;
+	esac
+}
+
+boot_hook_add preinit_main preinit_set_mac_address
diff --git a/target/linux/ath79/generic/config-default b/target/linux/ath79/generic/config-default
index 2d8f7f20c2..6cd1518e3a 100644
--- a/target/linux/ath79/generic/config-default
+++ b/target/linux/ath79/generic/config-default
@@ -1,4 +1,5 @@
 CONFIG_AT803X_PHY=y
+CONFIG_BROADCOM_PHY=y
 CONFIG_GPIO_WATCHDOG=y
 CONFIG_GPIO_WATCHDOG_ARCH_INITCALL=y
 CONFIG_INTEL_XWAY_PHY=y
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 3c74b0f7d7..94851be557 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -1040,6 +1040,20 @@ define Device/rosinson_wr818
 endef
 TARGET_DEVICES += rosinson_wr818
 
+define Device/siemens_ws-ap3610
+  SOC := ar7161
+  DEVICE_VENDOR := Siemens
+  DEVICE_MODEL := WS-AP3610
+  IMAGE_SIZE := 14336k
+  LOADER_TYPE := bin
+  LOADER_FLASH_OFFS := 0x82000
+  COMPILE := loader-$(1).bin
+  COMPILE/loader-$(1).bin := loader-okli-compile
+  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 | loader-okli $(1) 8128 | uImage none
+  KERNEL_INITRAMFS := kernel-bin | append-dtb | uImage none
+endef
+TARGET_DEVICES += siemens_ws-ap3610
+
 define Device/sitecom_wlr-7100
   SOC := ar1022
   DEVICE_VENDOR := Sitecom
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
