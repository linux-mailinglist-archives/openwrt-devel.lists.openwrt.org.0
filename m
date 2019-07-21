Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AB76F1FA
	for <lists+openwrt-devel@lfdr.de>; Sun, 21 Jul 2019 07:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M5DjKvln5Ux50kdtpufn6QaN5doLb1sFHFU+lEVDnr8=; b=uf2cV2hxb9LDfH
	Vk3Llg9Ft3HzDjyUdO7dW/r5Le/ONWX+s+ceL0ksEsikfc8o7cSb3nnwQI59z2M0XO7fZp4Z3szmd
	AyHp5AcVdPBbCcV++By4A7eBcUTJ0rgUBYTffWsdzpLb98tWvMlEr8pNI9cO5bJcket9l1HfUg3zU
	Dw68VPHK2gmDHdegfmLY9EjP1lkMJ/LJMq/AzOQdQxEOQODBb4pnJXbVPA94S1OHlK4j208pnOaYj
	flLDwlma+Vx/CHHfbNs5CuvSQWYE3X5RHMpGJIp+1yVcqSaX5Jl+OSd52ATOFkMutKw3v2ptQeBx2
	xWN8YbNmVMetRuEj8eCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp4fh-00078F-Fv; Sun, 21 Jul 2019 05:46:09 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp4fV-00077r-OO
 for openwrt-devel@lists.openwrt.org; Sun, 21 Jul 2019 05:45:59 +0000
Received: from p200300c5871ba600c4334eedf16ec09e.dip0.t-ipconnect.de
 ([2003:c5:871b:a600:c433:4eed:f16e:c09e]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hp4fU-0007A7-I6; Sun, 21 Jul 2019 07:45:56 +0200
To: openwrt-devel@lists.openwrt.org
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <60eaccd3-c0fe-2079-ffc2-5dd6434f9779@birger-koblitz.de>
Date: Sun, 21 Jul 2019 07:45:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1563687957;
 9cf99832; 
X-HE-SMSGID: 1hp4fU-0007A7-I6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_224557_993279_638765EF 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ramips: add support for Asus RT-AC85P
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

ramips: add Asus RT-AC85P

SoC:	MediaTek MT7621AT dual-core @ 880MHz
RAM:	256M (Winbond W632GG6KB-1)
FLASH:	128MB (Macronix MX30LF1G18AC-TI)
WiFi:	- 2.4GHz MediaTek MT7615N bgn
	- 5GHz MediaTek MT7615N nac
Switch: SoC integrated Gigabit Switch (4 x LAN, 1 x WAN)
USB:	1 x USB 3.1 (Gen 1)
BTN:	Reset, WPS
LED:	- Power (blue)
	- 5Ghz (blue)
	- 2.4GHz (blue)
	- Internet (blue)
	- 4x LAN (blue)
	(LAN/WAN leds are not controllable by GPIOs)
UART: 	UART is present as Pads marked J4 on the PCB.
	3.3V - TX - RX - GND / 57600-8N1
	3.3V is the square pad
MAC:	The MAC address on the router-label matches the MAC of
	the 2.4 GHz WiFi.
	LAN and WAN MAC are identical: MAC_LABEL+4
	5 GHz WiFi MAC: also MAC_LABEL+4
	

Installation
------------
Via U-Boot tftpd:
Switch on device, within 2s press reset button and keep pressed
until power LED starts blinking slowly.
Upload factory image via tftp put, the router's ip is 192.168.1.1
and expects the client on 192.168.1.75.

Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>

---

v2: Corrected sorting of entries in 02_network
    Model name corrected in .dts
    Whitespace fixes in .dts
    wifi0/1 labels added to wifi nodes in .dts
    Device name capitalized in mt7621.mk
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index a2b7d1cf33..a3dae44b1c 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -231,6 +231,17 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:wan" "6@eth0"
 		;;
+	asus,rt-ac85p|\
+	dlink,dir-860l-b1|\
+	elecom,wrc-1167ghbk2-s|\
+	elecom,wrc-1900gst|\
+	elecom,wrc-2533gst|\
+	huawei,hg255d|\
+	iodata,wn-ax1167gr|\
+	iodata,wn-gx300gr)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
+		;;
 	asus,rt-n15|\
 	belkin,f9k1109v1|\
 	sitecom,wl-351)
@@ -298,16 +309,6 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
 		;;
-	dlink,dir-860l-b1|\
-	elecom,wrc-1167ghbk2-s|\
-	elecom,wrc-1900gst|\
-	elecom,wrc-2533gst|\
-	huawei,hg255d|\
-	iodata,wn-ax1167gr|\
-	iodata,wn-gx300gr)
-		ucidef_add_switch "switch0" \
-			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
-		;;
 	dlink,dwr-118-a1)
 		ucidef_add_switch "switch0" \
 			"1:lan:2" "2:lan:3" "3:lan:1" "4:lan:0" "5:wan" "6@eth0"
@@ -527,6 +528,9 @@ ramips_setup_macs()
 		lan_mac=$(mtd_get_mac_binary factory 57344)
 		wan_mac=$(mtd_get_mac_binary factory 57350)
 		;;
+	asus,rt-ac85p)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
+		;;
 	asus,rt-n56u)
 		lan_mac=$(cat /sys/class/net/eth0/address)
 		lan_mac=$(macaddr_setbit_la "$lan_mac")
diff --git a/target/linux/ramips/base-files/lib/upgrade/platform.sh b/target/linux/ramips/base-files/lib/upgrade/platform.sh
index ae7a72c649..002e9c976b 100755
--- a/target/linux/ramips/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh
@@ -32,6 +32,7 @@ platform_do_upgrade() {
 	esac

 	case "$board" in
+	asus,rt-ac85p|\
 	hiwifi,hc5962|\
 	netgear,r6220|\
 	netgear,r6350|\
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
new file mode 100644
index 0000000000..7aea207fad
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
@@ -0,0 +1,164 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "asus,rt-ac85p", "mediatek,mt7621-soc";
+	model = "Asus RT-AC85P";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	palmbus: palmbus@1E000000 {
+		i2c@900 {
+			status = "okay";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WPS_BUTTON>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "rt-ac85p:blue:power";
+			gpios = <&gpio0 4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+		wlan2g {
+			label = "rt-ac85p:blue:wlan2g";
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0radio";
+		};
+
+		wlan5g {
+			label = "rt-ac85p:blue:wlan5g";
+			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1radio";
+		};
+	};
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&nand {
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "u-boot";
+			reg = <0x0 0xe0000>;
+			read-only;
+		};
+
+		partition@e0000 {
+			label = "u-boot-env";
+			reg = <0xe0000 0x100000>;
+			read-only;
+		};
+
+		factory: partition@1e0000 {
+			label = "factory";
+			reg = <0x1e0000 0x100000>;
+			read-only;
+		};
+
+		factory2: partition@2e0000 {
+			label = "factory2";
+			reg = <0x2e0000 0x100000>;
+			read-only;
+		};
+
+		partition@3e0000 {
+			label = "kernel";
+			reg = <0x3e0000 0x400000>;
+		};
+
+		partition@7e0000 {
+			label = "ubi";
+			reg = <0x7e0000 0x2e00000>;
+		};
+
+		partition@35e0000 {
+			label = "firmware2";
+			reg = <0x35e0000 0x3200000>;
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi0: wifi@0,0 {
+		compatible = "pci14c3,7603";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+		ieee80211-freq-limit = <2400000 2500000>;
+		mtd-mac-address = <&factory 0x4>;
+	};
+};
+
+&pcie1 {
+	wifi1: wifi@0,0 {
+		compatible = "pci14c3,7662";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+		mtd-mac-address = <&factory 0x8004>;
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0xe000>;
+	mediatek,portmap = "wllll";
+	port@5 {
+		status = "disabled";
+	};
+};
+
+&i2c {
+    status = "disabled";
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "uart2", "uart3", "i2c";
+			ralink,function = "gpio";
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 73ded64e74..685a8d1499 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -115,6 +115,22 @@ define Device/asus_rt-ac57u
 endef
 TARGET_DEVICES += asus_rt-ac57u

+define Device/asus_rt-ac85p
+  MTK_SOC := mt7621
+  DEVICE_VENDOR := ASUS
+  DEVICE_MODEL := RT-AC85P
+  IMAGE_SIZE := 51200k
+  UBINIZE_OPTS := -E 5
+  BLOCKSIZE := 128k
+  PAGESIZE := 2048
+  KERNEL_SIZE := 4096k
+  IMAGES += factory.bin
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  IMAGE/factory.bin := append-kernel | pad-to $$(KERNEL_SIZE) | append-ubi | check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES := kmod-usb3 kmod-mt76x2 kmod-mt7615 wpad-basic uboot-envtools
+endef
+TARGET_DEVICES += asus_rt-ac85p
+
 define Device/buffalo_wsr-1166dhp
   MTK_SOC := mt7621
   IMAGE/sysupgrade.bin := trx | pad-rootfs | append-metadata
diff --git a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
index d50e689110..d2d69b4ff4 100644
--- a/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
+++ b/target/linux/ramips/patches-4.14/0039-mtd-add-mt7621-nand-support.patch
@@ -4256,7 +4256,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +#endif /* __NAND_DEF_H__ */
 --- /dev/null
 +++ b/drivers/mtd/nand/nand_device_list.h
-@@ -0,0 +1,59 @@
+@@ -0,0 +1,60 @@
 +/* Copyright Statement:
 + *
 + * This software/firmware and related documentation ("MediaTek Software") are
@@ -4308,6 +4308,7 @@ Signed-off-by: John Crispin <blogic@openwrt.org>
 +	{0xC8DC, 0x909554, 5, 8, 512, 128, 2048, 64, 0x30C77fff, "F59L4G81A", 0},
 +	{0xECD3, 0x519558, 5, 8, 1024, 128, 2048, 64, 0x44333, "K9K8G8000", 0},
 +    {0xC2F1, 0x801DC2, 4, 8, 128, 128, 2048, 64, 0x30C77fff, "MX30LF1G08AA", 0},
++    {0xC2F1, 0x809502, 4, 8, 128, 128, 2048, 64, 0x30C77fff, "MX30LF1G18AC", 0},
 +    {0x98D3, 0x902676, 5, 8, 1024, 256, 4096, 224, 0x00C25332, "TC58NVG3S0F", 0},
 +    {0x01DA, 0x909546, 5, 8, 256, 128, 2048, 128, 0x30C77fff, "S34ML02G200TF", 0},
 +    {0x01DC, 0x909556, 5, 8, 512, 128, 2048, 128, 0x30C77fff, "S34ML04G200TF", 0},

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
