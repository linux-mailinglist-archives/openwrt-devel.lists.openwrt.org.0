Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB5E5582D
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 21:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z0z8WthOpKXtOIrrx1SFh/hCdSVfKAAKSUV8vVun7GQ=; b=mL6hZN7J8jXlVF
	5PpmtTgXlgpbhA9RyTRbpBd1M8GzTxi5oEvL705onGb4IoaPgrH9MT+rU3UpX+NPQ2kkLfSgbL2Pi
	jJBjcjMzhAf5gDO0nB52cLCg4oYNA+ogou5pd0RKWoUT6JMuGEeRpXEb0Otkq6KkvfDmrrVooa45q
	alYXd5XNzWlwSKRKd/P76JGW+SLDiLN9a2aqqldVdD0xO/2ZhdkWnt2zZcedxfVuNRCHKne9b8l4U
	WFj0/urj23+Rrpmi7f2GP+MNc2PQYjckqvD/AyJ5ClIOasglIOr0JxvG9vc1r3mXN1NRMho7tUguH
	kHqd9Mdkzbv3LWxP36gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfrUg-0003zr-I7; Tue, 25 Jun 2019 19:52:42 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfrUN-0003yb-Lh
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 19:52:25 +0000
Received: from p200300c5871ba60038379ed236caab58.dip0.t-ipconnect.de
 ([2003:c5:871b:a600:3837:9ed2:36ca:ab58]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hfrUH-00086z-Gb; Tue, 25 Jun 2019 21:52:17 +0200
To: openwrt-devel@lists.openwrt.org
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <bb7aa663-493c-437d-cacb-b13fa9d98b3c@birger-koblitz.de>
Date: Tue, 25 Jun 2019 21:51:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1561492343;
 be0f9a0b; 
X-HE-SMSGID: 1hfrUH-00086z-Gb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_125223_863615_2516A5AC 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Edimax RG21S
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

ramips: add Edimax RG21S

SoC:	MediaTek MT7621AT dual-core @ 880MHz
RAM:	256M (Nanya NT5CC128M)
FLASH:	16MB (Macronix MX25L12835F)
WiFi:	- 2.4GHz MediaTek MT7615N bgn
	- 5GHz MediaTek MT7615N nac
Switch: SoC integrated Gigabit Switch (4 x LAN, 1 x WAN)
USB:	No
BTN:	Reset, WPS
LED:	4 red LEDs, indistinguishable when casing closed
UART: 	UART is present as Pads marked J1 on the PCB.
	3.3V - RX - GND - TX / 57600-8N1
	3.3V is the square pad

Installation
------------
Update the factory image via the OEM web-interface
(by default:http://192.168.1.1)
The sysupgrade image can be installed via TFTP from
the U-Boot bootloader. Connect ethernet port 2.

Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>

---

The build was tested and all hardware works as expected.
The original firmware uses the 4 LEDs in sync with different
flashing patterns to signal router state. With the DTS
only one LED is active as the LEDs cannot be synced.

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index ffd1689263..8245f43dbb 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -269,7 +269,8 @@ ramips_setup_interfaces()
 	elecom,wrc-1900gst|\
 	hg255d|\
 	iodata,wn-ax1167gr|\
-	iodata,wn-gx300gr)
+	iodata,wn-gx300gr|\
+	edimax,rg21s)
 		ucidef_add_switch "switch0" \
 			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
 		;;
@@ -568,6 +569,10 @@ ramips_setup_macs()
 	sk-wb8)
 		wan_mac=$(mtd_get_mac_binary factory 57350)
 		;;
+    edimax,rg21s)
+        lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
+		;;
 	gl-mt300n-v2|\
 	whr-g300n)
 		wan_mac=$(mtd_get_mac_binary factory 4)
diff --git a/target/linux/ramips/dts/RG21S.dts b/target/linux/ramips/dts/RG21S.dts
new file mode 100644
index 0000000000..36a83c985a
--- /dev/null
+++ b/target/linux/ramips/dts/RG21S.dts
@@ -0,0 +1,163 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "edimax,rg21s", "mediatek,mt7621-soc";
+	model = "RG21S";
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
+	palmbus: palmbus@1E000000 {
+		i2c@900 {
+			status = "okay";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		wps {
+                        label = "wps";
+                        gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+                        linux,code = <KEY_WPS_BUTTON>;
+                };
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		/* there are 4 red leds, unlabled */
+		led_power: led_1 {
+			label = "rg21s:red:led1";
+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_2 {
+			label = "rg21s:red:led2";
+			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_3 {
+			label = "rg21s:red:led3";
+			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_4 {
+			label = "rg21s:red:led4";
+			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	m25p80@0 {
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
+				label = "u-boot-env";
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
+		compatible = "pci14c3,7603";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+		ieee80211-freq-limit = <2400000 2500000>;
+		mtd-mac-address = <&factory 0x4>;
+	};
+};
+
+&pcie1 {
+	wifi@0,0 {
+		compatible = "pci14c3,7662";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+		mtd-mac-address = <&factory 0x8004>;
+	};
+};
+
+&ethernet {
+	mediatek,portmap = "wllll";
+	port@5 {
+		status = "disabled";
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "wdt", "rgmii2", "jtag", "mdio";
+			ralink,function = "gpio";
+		};
+	};
+};
+
+&xhci {
+	status = "disabled";
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index c1e445f84c..b37826d6ba 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -30,6 +30,25 @@ define Build/elecom-wrc-factory
   mv $@.new $@
 endef

+define Build/elx-header
+  $(eval hw_id=$(word 1,$(1)))
+  $(eval xor_pattern=$(word 2,$(1)))
+  ( \
+    echo -ne "\x00\x00\x00\x00\x00\x00\x00\x03" | \
+      dd bs=42 count=1 conv=sync; \
+    hw_id="$(hw_id)"; \
+    echo -ne "\x$${hw_id:0:2}\x$${hw_id:2:2}\x$${hw_id:4:2}\x$${hw_id:6:2}" | \
+      dd bs=20 count=1 conv=sync; \
+    echo -ne "$$(printf '%08x' $$(stat -c%s $@) | fold -s2 | xargs -I {} echo \\x{} | tr -d '\n')" | \
+      dd bs=8 count=1 conv=sync; \
+    echo -ne "$$($(STAGING_DIR_HOST)/bin/mkhash md5 $@ | fold -s2 | xargs -I {} echo \\x{} | tr -d '\n')" | \
+      dd bs=58 count=1 conv=sync; \
+  ) > $(KDIR)/tmp/$(DEVICE_NAME).header
+  $(call Build/xor-image,-p $(xor_pattern) -x)
+  cat $(KDIR)/tmp/$(DEVICE_NAME).header $@ > $@.new
+  mv $@.new $@
+endef
+
 define Build/iodata-factory
   $(eval fw_size=$(word 1,$(1)))
   $(eval fw_type=$(word 2,$(1)))
@@ -122,6 +141,19 @@ define Device/xzwifi_creativebox-v1
 endef
 TARGET_DEVICES += xzwifi_creativebox-v1

+define Device/edimax_rg21s
+  DTS := RG21S
+  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  DEVICE_TITLE := EDIMAX RG21S
+  IMAGES += factory.bin
+  IMAGE/factory.bin := \
+    $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
+    elx-header 02020038 8844A2D168B45A2D
+  DEVICE_PACKAGES := \
+        kmod-ata-ahci kmod-mt76x2 kmod-mt7615e wpad-basic
+endef
+TARGET_DEVICES += edimax_rg21s
+
 define Device/elecom_wrc-1167ghbk2-s
   DTS := WRC-1167GHBK2-S
   IMAGE_SIZE := 15488k

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
