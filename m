Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CDC5E4BC
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 15:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bIiekKuR6mEQREF8NlwCNB6zJWyqsdlhC6LUHEecSBs=; b=EoJSFuJXOatgrF
	zdKUSnuWmasYRxD+0ghFlPH84Iu7QYC4U5YwoVErgHI3Dp2B2dod/rixUKhJoolHDTu/eZYPN566V
	HaV3/VYOhqaEpyjcM2VzkCZw4+oN1SJeUV6BOne1sKmQ3Gi24O34mMS3ViVCid5fGAXTn7ZvrcvF0
	zWXEOcAfdheT//EFbctGe1Qnc91L+iGypu5Cpv9F7tLlA/LFPiDe/lq59xBjOpwC8WrHkF794W/Df
	NcZJT8vpLwsnOekpYCMNBMQyuTEUJAmoPiseXWnvJllC9cYKW69a2AXkICDOUKKUMbm4/Q1aVYz5j
	Nqf4rlqBngvK33aKGxvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiesS-0006NC-5Z; Wed, 03 Jul 2019 13:00:48 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hieiV-0006WT-5g
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 12:50:34 +0000
Received: from dbauer-x250.tu-darmstadt.de (unknown
 [IPv6:2001:41b8:83c:fa01:157c:afba:5cc1:a85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id AF93F2284F;
 Wed,  3 Jul 2019 14:50:23 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  3 Jul 2019 14:50:14 +0200
Message-Id: <20190703125014.1331-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_055031_532150_6129F051 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] ramips: add support for ASUS RT-AC57U
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
Cc: chunkeey@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SoC:   MediaTek MT7621AT
RAM:   128M (Winbond W631GG6KB-15)
FLASH: 16MB (Spansion S25FL128SA)
WiFi:  MediaTek MT7603EN bgn 2SS
WiFi:  MediaTek MT7612EN nac 2SS
BTN:   Reset - WPS
LED:    - Power
        - LAN {1-4}
        - WAN
        - WiFi 2.4 GHz
        - WiFi 5 GHz
        - USB
UART:  UART is present next to the Power LED.
       TX - RX - GND - 3V3 / 57600-8N1
       3V3 is the nearest one to the Power LED.

Installation
------------
Via TFTP:
1. Set your computers IP-Address to 192.168.1.75.
2. Power up the Router with the Reset button pressed.
3. Release the Reset button after 5 seconds.
4. Upload OpenWRT sysupgrade image via TFTP:
 > tftp -4 -v -m binary 192.168.1.1 -c put <IMAGE>

Via SSH:
Note: User/password for SSH is identical with the one used in the
Web-interface.
1. Complete the initial setup wizard.
2. Activate SSH under "Administration" -> "System".
3. Transfer the OpenWrt sysupgrade image via scp:
 > scp owrt.bin admin@192.168.1.1:/tmp
4. Connect via SSH to the router.
 > ssh admin@192.168.1.1
5. Write the OpenWrt image to flash.
 > mtd-write -i /tmp/owrt.bin -d linux
6. Reboot the router
 > reboot

Signed-off-by: David Bauer <mail@david-bauer.net>
---
v2:
 - Fixed SoC compatible
 - Switch to using interrupt-based gpio-keys

 .../ramips/base-files/etc/board.d/02_network  |  10 +-
 target/linux/ramips/dts/RT-AC57U.dts          | 153 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |   8 +
 3 files changed, 167 insertions(+), 4 deletions(-)
 create mode 100644 target/linux/ramips/dts/RT-AC57U.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index b13590566c..814f38bb07 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -219,6 +219,7 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
 		;;
+	asus,rt-ac57u|\
 	atp-52b|\
 	awm002-evb-4M|\
 	awm002-evb-8M|\
@@ -502,6 +503,11 @@ ramips_setup_macs()
 	wmdr-143n)
 		lan_mac=$(cat /sys/class/net/eth0/address)
 		;;
+	asus,rt-ac57u|\
+	vr500)
+		lan_mac=$(mtd_get_mac_binary factory 57344)
+		wan_mac=$(mtd_get_mac_binary factory 57350)
+		;;
 	carambola|\
 	freestation5|\
 	w502u|\
@@ -654,10 +660,6 @@ ramips_setup_macs()
 		lan_mac=$(mtd_get_mac_ascii u-boot-env LAN_MAC_ADDR)
 		wan_mac=$(mtd_get_mac_ascii u-boot-env WAN_MAC_ADDR)
 		;;
-	vr500)
-		lan_mac=$(mtd_get_mac_binary factory 57344)
-		wan_mac=$(mtd_get_mac_binary factory 57350)
-		;;
 	w306r-v20)
 		lan_mac=$(cat /sys/class/net/eth0/address)
 		wan_mac=$(macaddr_add "$lan_mac" 5)
diff --git a/target/linux/ramips/dts/RT-AC57U.dts b/target/linux/ramips/dts/RT-AC57U.dts
new file mode 100644
index 0000000000..e757716ffb
--- /dev/null
+++ b/target/linux/ramips/dts/RT-AC57U.dts
@@ -0,0 +1,153 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "asus,rt-ac57u", "mediatek,mt7621-soc";
+	model = "ASUS RT-AC57U";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x8000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "rt-ac57u:blue:power";
+			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
+		};
+
+		usb {
+			label = "rt-ac57u:blue:usb";
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ehci_port2>;
+			linux,default-trigger = "usbport";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		wps {
+			label = "wps";
+			gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WPS_BUTTON>;
+			debounce-interval = <60>;
+		};
+
+		reset {
+			label = "reset";
+			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+			debounce-interval = <60>;
+		};
+	};
+
+	led-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "LED-Power";
+		gpio = <&gpio1 14 GPIO_ACTIVE_LOW>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
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
+		partitions {
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
+				label = "config";
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
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0xfb0000>;
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
+		compatible = "mediatek,mt76";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+
+		led {
+			led-sources = <2>;
+			led-active-low;
+		};
+	};
+};
+
+&pcie1 {
+	wifi@0,0 {
+		compatible = "mediatek,mt76";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+
+		led {
+			led-active-low;
+		};
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x4e000>;
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "sdhci";
+			ralink,function = "gpio";
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index dce24308b8..b58d2f640b 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -92,6 +92,14 @@ define Device/11acnas
 endef
 TARGET_DEVICES += 11acnas
 
+define Device/asus_rt-ac57u
+  DTS := RT-AC57U
+  DEVICE_TITLE := ASUS RT-AC57U
+  IMAGE_SIZE := 16064k
+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
+endef
+TARGET_DEVICES += asus_rt-ac57u
+
 define Device/dir-860l-b1
   $(Device/seama)
   DTS := DIR-860L-B1
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
