Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2601EB820C
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 21:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=075ZgqJwREZVnyKjv9GfF+xsopWMObItJ+34vQhPGGs=; b=bZsIf+GeNDNTxV
	zbGbDTJQr20AODHCQ6jTwBe+fx/v2VeznKFUozjSKSk+21KpKPCc1O+/4kV/iwonEycV0N6A8I5iw
	IR/xC7biUSWOtSmVPlv2QMtnCuLbY8vB9V3uTj56xcbIuI56bwgptgLRA03TQvUv+Cv8mo7tRTpQL
	eFqcQaYNqb677/++mTv/JBUI/YwsQwqQyb5Q6K5H64NMzQJQgC+D4PhaMfHNMmw0oYxZ1Dm8LshGc
	oeNjCZsOiMB63/z0fZPykESfMIxxvjRTmCHnGvJSzfNso9ny1c2JWsJxB/x/sai7mNf8u7dNEjzOY
	J4Sxuul/ccEZvwzLQWvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2aA-0003tO-2n; Thu, 19 Sep 2019 19:59:14 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Bo-0003G5-4d
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 19:34:06 +0000
Received: from p200300c587154500f087ce24c69ce2c9.dip0.t-ipconnect.de
 ([2003:c5:8715:4500:f087:ce24:c69c:e2c9]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1iB2Bh-0005RD-QC; Thu, 19 Sep 2019 21:33:57 +0200
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <6b8a0183-14c0-609d-0c34-c1ead8342cf1@birger-koblitz.de>
Date: Thu, 19 Sep 2019 21:33:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1568921644;
 e1211265; 
X-HE-SMSGID: 1iB2Bh-0005RD-QC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123404_378645_188C001E 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
Subject: [OpenWrt-Devel] [PATCH v6] ramips: add support for Edimax RG21S
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

ramips: add support for Edimax RG21S

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

v3: Update to DEVICE_VENDOR / DEVICE_MODEL in mt7621.mk
    renamed .dts according to new conventions
    Removed memory node from .dts
    Correct image size
    Whitespace fixes
v4: Added wifi0/1 labels to wifi nodes
    Model name corrected in dts
    Comments removed from .dts
v5: Corrected MT7615N PCI IDs
    Unnecessary kernel-modules removed from image
v6: Removed unnecessary mtd-mac-address in .dts
    Rebased to latest master
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index b4634e0928..1a009a1429 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -333,6 +333,10 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan" "4:wan" "6@eth0"
 		;;
+	edimax,rg21s)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
+		;;
 	gehua,ghl-r-001)
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:lan" "2:lan" "4:wan" "6@eth0"
@@ -609,6 +613,10 @@ ramips_setup_macs()
 	netgear,r6850)
 		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
 		;;
+	edimax,rg21s)
+		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
+		;;
 	hiwifi,hc5661|\
 	hiwifi,hc5661a|\
 	hiwifi,hc5761|\
diff --git a/target/linux/ramips/dts/mt7621_edimax_rg21s.dts b/target/linux/ramips/dts/mt7621_edimax_rg21s.dts
new file mode 100644
index 0000000000..aeb247fb82
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_edimax_rg21s.dts
@@ -0,0 +1,155 @@
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
+	model = "Edimax RG21S";
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
+			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
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
+	wifi0: wifi@0,0 {
+		compatible = "pci14c3,7615";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+		ieee80211-freq-limit = <2400000 2500000>;
+	};
+};
+
+&pcie1 {
+	wifi1: wifi@0,0 {
+		compatible = "pci14c3,7615";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
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
index 986fe5e2f8..f158e97d93 100644
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
@@ -173,6 +192,20 @@ define Device/d-team_pbr-m1
 endef
 TARGET_DEVICES += d-team_pbr-m1

+define Device/edimax_rg21s
+  MTK_SOC := mt7621
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := EDIMAX
+  DEVICE_MODEL := RG21S
+  IMAGES += factory.bin
+  IMAGE/factory.bin := \
+    $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | \
+    elx-header 02020038 8844A2D168B45A2D
+  DEVICE_PACKAGES := \
+        kmod-mt7615e wpad-basic
+endef
+TARGET_DEVICES += edimax_rg21s
+
 define Device/elecom_wrc-1167ghbk2-s
   MTK_SOC := mt7621
   IMAGE_SIZE := 15488k

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
