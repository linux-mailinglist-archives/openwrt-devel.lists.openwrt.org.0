Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9FD13F1C
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 13:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ACjHYRQBhr4uGkwCYoHGa6LpKvm+P/+tJ2BgRAuxiFI=; b=L4rdtn4BOmqDlq
	lXhg+dFmxHpBm3gdRFthrkrWt9BtgLiBxGIwwc1nxlp2VXv6h8ldCOmIRYPkBQsfKuElfGaNsPjAu
	cfknE+8L45Nva7NPvxYlh5H/oarfacf2s1L+GOnVNNPCpILoLFfrIxPRRfwnUMf0XJu4XgMLw1wwu
	ZMt2MCj1vrQtLYGky9jf+qcfdRzBv5Qh+OW2JGKqt9tk4dFJHal+t2h8enJyEL1pO42dcmB2MRlVT
	v1weOIiETUZVEbhFELe/JaEQoNt4/c74aIhX+8oZLCbEWijJMRRbZcVhObiGEc1XT0bh9wSsN1W+x
	LlmOyXhdfWjjyaHhV0wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNF3N-0000MN-NY; Sun, 05 May 2019 11:11:33 +0000
Received: from mscheck.de ([2a03:4000:f:629:540b:c2ff:fe0e:2f0c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNF3G-0000M2-0N
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 11:11:28 +0000
Received: from markus-MacBook-Pro.fritz.box (unknown
 [IPv6:2001:16b8:309a:ad00:148d:31dc:e73d:5088])
 by mscheck.de (Postfix) with ESMTPSA id 8A7B3200BE
 for <openwrt-devel@lists.openwrt.org>; Sun,  5 May 2019 11:11:16 +0000 (UTC)
From: markus@mscheck.de
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 13:11:07 +0200
Message-Id: <20190505111107.2778-1-markus@mscheck.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_041126_351693_78CA0688 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi Router 4A
 (100M Edition)
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

From: Markus Scheck <markus@mscheck.de>

- SoC:      MediaTek MT7628AN
- Flash:    16MB (Winbond W25Q128JV)
- RAM:      64MB
- Serial:   As marked on PCB, 3V3 logic, baudrate is 115200
- Ethernet: 3x 10/100 Mbps (switched, 2x LAN + WAN)
- WIFI0:    MT7628AN 2.4GHz 802.11b/g/n
- WIFI1:    MT7612EN 5GHz 802.11ac
- Antennas: 4x external (2 per radio), non-detachable
- LEDs:     Programmable power-LED (two-colored, yellow/blue)
            Non-programmable internet-LED (shows WAN-activity)
- Buttons:  Reset

INSTALLATION:

1. Connect to the serial port of the router and power it up.
   If you get a prompt asking for boot-mode, go to step 3.
2. Unplug the router after
       > Erasing SPI Flash...
       > raspi_erase: offs:20000 len:10000
   occurs on the serial port. Plug the router back in.
3. At the prompt select option 2 (Load system code then
   write to Flash via TFTP.)
4. Enter 192.168.1.1 as the device IP and 192.168.1.2 as the
   Server-IP.
5. Connect your computer to LAN1 and assign it as 192.168.1.2/24.
6. Rename the sysupgrade image to test.bin and serve it via TFTP.
7. Enter test.bin on the serial console and press enter.

Signed-off-by: Markus Scheck <markus@mscheck.de>
---
 .../ramips/base-files/etc/board.d/02_network  |   4 +
 target/linux/ramips/base-files/lib/ramips.sh  |   3 +
 target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts | 146 ++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk           |   8 +
 4 files changed, 161 insertions(+)
 create mode 100644 target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index c2646876a2..29a1e7b54c 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -450,6 +450,10 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
 		;;
+	xiaomi,mir4a-100m)
+		ucidef_add_switch "switch0" \
+			"4:lan:1" "2:lan:2" "0:wan" "6t@eth0"
+		;;
 	zbtlink,zbt-we1226|\
 	y1)
 		ucidef_add_switch "switch0" \
diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
index 093303892c..a9e7e746cd 100755
--- a/target/linux/ramips/base-files/lib/ramips.sh
+++ b/target/linux/ramips/base-files/lib/ramips.sh
@@ -649,6 +649,9 @@ ramips_board_detect() {
 	*"X8")
 		name="x8"
 		;;
+	*"Xiaomi Mi Router 4A (100M Edition)")
+		name="xiaomi,mir4a-100m"
+		;;
 	*"Y1")
 		name="y1"
 		;;
diff --git a/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts b/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts
new file mode 100644
index 0000000000..716b66ac44
--- /dev/null
+++ b/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts
@@ -0,0 +1,146 @@
+/dts-v1/;
+
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "xiaomi,mir4a-100m", "mediatek,mt7628an-soc";
+	model = "Xiaomi Mi Router 4A (100M Edition)";
+
+	chosen {
+		bootargs = "console=ttyS0,115200";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x4000000>;
+	};
+
+	aliases {
+		led-boot = &power_yellow;
+		led-failsafe = &power_yellow;
+		led-running = &power_blue;
+		led-upgrade = &power_yellow;
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		power_blue: power_blue {
+			label = "mir4a-100m:blue:power";
+			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
+		};
+
+		power_yellow: power_yellow {
+			label = "mir4a-100m:yellow:power";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
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
+				label = "bootloader";
+				reg = <0x0 0x20000>;
+				read-only;
+			};
+
+			partition@20000 {
+				label = "config";
+				reg = <0x20000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@30000 {
+				label = "factory";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "crash";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			partition@50000 {
+				label = "cfg_bak";
+				reg = <0x50000 0x10000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "overlay";
+				reg = <0x60000 0x100000>;
+				read-only;
+			};
+
+			partition@160000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x160000 0xea0000>;
+			};
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+
+	pcie-bridge {
+		mt76@0,0 {
+			reg = <0x0000 0 0 0 0>;
+			device_type = "pci";
+			mediatek,mtd-eeprom = <&factory 0x8000>;
+			mediatek,2ghz = <0>;
+		};
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "gpio";
+			ralink,function = "gpio";
+		};
+	};
+};
+
+&ethernet {
+	pinctrl-names = "default";
+	mtd-mac-address = <&factory 0x28>;
+};
+
+&esw {
+	mediatek,portmap = <0x2f>;
+	mediatek,portdisable = <0x2a>;
+};
+
+&wmac {
+	status = "okay";
+};
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 571ddf3d51..82659254cb 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -446,6 +446,14 @@ define Device/wrtnode2r
 endef
 TARGET_DEVICES += wrtnode2r
 
+define Device/xiaomi_mir4a-100m
+  DTS := XIAOMI-MIR4A-100M
+  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  DEVICE_TITLE := Xiaomi Mi Router 4A (100M Edition)
+  DEVICE_PACKAGES := kmod-mt76x2
+endef
+TARGET_DEVICES += xiaomi_mir4a-100m
+
 define Device/zbtlink_zbt-we1226
   DTS := ZBT-WE1226
   IMAGE_SIZE := $(ralink_default_fw_size_8M)
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
