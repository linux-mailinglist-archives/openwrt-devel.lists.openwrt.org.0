Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6970A2B967
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 19:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qC6p9Ja+9nQQybOBT9yQaLA0xRwNSzDpWi9kjINQzJQ=; b=UAv0XSeDUEfOeI
	rjj/AL9d7YcNWS2rKfh3UuStU0qG4t4OzAcsMJND6lwqtt0FpgRV1TB0IFtEdboXXbYuJk0Xow7XJ
	pV3AuIScKQcvCR5ae2g21/T0m9UdQan4T66QJW3dHwbvCgBi7Ezc76wkuij8VQOAXYtLnVMrcHtkN
	WK828qlMt+hYu8I+DlRDqnTDcaqTbRaB2DBkkK4P9fzK1rDd/9e/TQX0rQswxkxgnTQQnFGTZGf6d
	cUDlvQiSMAbOS9l3KUcfqOQ80fg6h63ZTMFRRNFyG+5+i3stfLTL1hsEbXDL2XFb6UEaNRrEVSh3i
	4gSa9a3obaBVuGE4CdOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJNi-0002TH-He; Mon, 27 May 2019 17:25:54 +0000
Received: from mscheck.de ([2a03:4000:f:629:540b:c2ff:fe0e:2f0c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJNa-0002Sy-Eh
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 17:25:48 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:908:1864:8e40:1f8d:bafd:2090:ecfb])
 by mscheck.de (Postfix) with ESMTPSA id DE405200C2
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 17:25:40 +0000 (UTC)
From: Markus Scheck <markus@mscheck.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 19:25:22 +0200
Message-Id: <20190527172522.5722-1-markus@mscheck.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_102546_777718_E2D0B344 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi Router
 4A (100M Edition)
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
 target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts | 146 ++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk           |   8 +
 3 files changed, 158 insertions(+)
 create mode 100644 target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index dcc7b4a747..d3fecbc2bd 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -454,6 +454,10 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
 		;;
+	xiaomi,mir4a-100m)
+		ucidef_add_switch "switch0" \
+			"4:lan:1" "2:lan:2" "0:wan" "6@eth0"
+		;;
 	zbtlink,zbt-we1226|\
 	y1)
 		ucidef_add_switch "switch0" \
diff --git a/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts b/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts
new file mode 100644
index 0000000000..3bcb84d68b
--- /dev/null
+++ b/target/linux/ramips/dts/XIAOMI-MIR4A-100M.dts
@@ -0,0 +1,146 @@
+//SPDX-License-Identifier: GPL-2.0-or-later OR MIT
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
+	leds {
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
+	keys {
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
+				label = "firmware";
+				reg = <0x160000 0xea0000>;
+				compatible = "denx,uimage";
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
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "gpio", "wdt", "wled_an";
+			ralink,function = "gpio";
+		};
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x4>;
+	mtd-mac-address-increment = <(-1)>;
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
index 22d79bad39..4213947d39 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -437,6 +437,14 @@ define Device/wrtnode2r
 endef
 TARGET_DEVICES += wrtnode2r
 
+define Device/xiaomi_mir4a-100m
+  DTS := XIAOMI-MIR4A-100M
+  IMAGE_SIZE := 14976k
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
