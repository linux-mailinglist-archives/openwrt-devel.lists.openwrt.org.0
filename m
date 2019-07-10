Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB72964BA0
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 19:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wcOGonSGsIchmpWhLN4y+mqklKHfH8Qz1ILp74HJclc=; b=UponPQArYEbnXv
	st0yAJgmaSaNiI9h9/4Mc/ceT/KASZUlI1X9ZRWOUxAioCGxxS00xoxX1AfdJKpEgeS04ZaMTjX1/
	MrDTo4Gmnyttv3lO0xQvAL4iNVOw7QtNaEf2YCt1qcXn4VCT7q/r6iWoFRUK00uFGPKkMCqDZUUXr
	r02K59+h9nGhiN1hoflekC1Pc0v7KT5RtO9IFkYypzs2Zt7uGMVjt7TC9Fm7FdRi3xMutcsSxlEIQ
	Nli2RbX55gww90HPDeAuSBm0/qpuFVnFoJYvQZT40htkxf6uuMYbkA7TSrp/x4zoj2BoKsuoX0YjK
	t6sNNhl/sIWXRmrnEOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlGe4-0003OY-2c; Wed, 10 Jul 2019 17:44:44 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlGdj-0003NT-Ui
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jul 2019 17:44:26 +0000
Received: from localhost.localdomain
 (p200300E53F08570007407914F8F622D4.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f08:5700:740:7914:f8f6:22d4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 6760022864
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jul 2019 19:44:18 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 10 Jul 2019 19:44:10 +0200
Message-Id: <20190710174410.9397-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_104424_293078_1067850A 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v3] ramips: add support for ASUS RT-AC57U
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
v3:
 - Rebased on current master

 .../ramips/base-files/etc/board.d/02_network  |   2 +
 .../linux/ramips/dts/mt7621_asus_rt-ac57u.dts | 153 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |   9 ++
 3 files changed, 164 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 090749e1ba..82d2b234e3 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -187,6 +187,7 @@ ramips_setup_interfaces()
 	argus,atp-52b|\
 	asiarf,awm002-evb-4m|\
 	asiarf,awm002-evb-8m|\
+	asus,rt-ac57u|\
 	asus,rt-n14u|\
 	bdcom,wap2100-sk|\
 	dlink,dir-645|\
@@ -642,6 +643,7 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_binary factory 4)
 		lan_mac=$(mtd_get_mac_binary factory 46)
 		;;
+	asus,rt-ac57u|\
 	planex,vr500)
 		lan_mac=$(mtd_get_mac_binary factory 57344)
 		wan_mac=$(mtd_get_mac_binary factory 57350)
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts b/target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts
new file mode 100644
index 0000000000..e757716ffb
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac57u.dts
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
index 1b3b132b36..66184b8366 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -106,6 +106,15 @@ define Device/asiarf_ap7621-001
 endef
 TARGET_DEVICES += asiarf_ap7621-001
 
+define Device/asus_rt-ac57u
+  MTK_SOC := mt7621
+  DEVICE_VENDOR := ASUS
+  DEVICE_MODEL := RT-AC57U
+  IMAGE_SIZE := 16064k
+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
+endef
+TARGET_DEVICES += asus_rt-ac57u
+
 define Device/buffalo_wsr-1166dhp
   MTK_SOC := mt7621
   IMAGE/sysupgrade.bin := trx | pad-rootfs | append-metadata
-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
