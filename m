Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B44281ACA6F
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 17:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YiNMnRAnfhNtjXpRQrs78CPMPVbEQlAfTVQLY7Qabvc=; b=S5DUXDZ4YHs1C8
	NoajFSKpc9BuKgO+HTR9kpqJmSlSlA3Iak24LyBoheO1LE0uJenyAhEXiSeiFMb2TQYnyLM5hnUY7
	lnNuYWilaiSoKQnz5mw/nJYheuw7XoiD1YWfQ4lZpfgJQRKd+KmHoHp1RKv3ET36xIq4UhcydvT3O
	Yhi2fE6ZG2EbrG0b917LJ474W/0wCxItoTLaq1QWyI5Ip6Ie8k4CqJWslX3SprPJIOIN7raOUfuv7
	AjgfqgyRjuj39k2gqnb8CWmmPKP00jvzsy+DapXzCFWhD9hfqlWKockQGS19j1X9u9aQvR+cdlRio
	I74KyTHL9JWYGYQxQv/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6Y0-0008Gv-Lp; Thu, 16 Apr 2020 15:35:24 +0000
Received: from knopi.disroot.org ([178.21.23.139])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6Xs-00082G-MQ
 for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 15:35:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 6D26E2477F;
 Thu, 16 Apr 2020 17:35:10 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1nfLalLrSdmV; Thu, 16 Apr 2020 17:35:09 +0200 (CEST)
From: Ernst Spielmann <endspiel@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1587051308; bh=Nt2FGf6IsHbFEiQKUMv0gyOtPXAdc+p6/rfgyKGuCm4=;
 h=From:To:Cc:Subject:Date;
 b=iG4Uo2fYohK3FI48TISZ2irpbuvdQPfsOG9Q6cZ4gFFkBi0FA3zQ0g2uRQTDY4nk1
 fVsiqS2NBXzKX5TLEiwszg36mJUdVz0LVqheRg+YEaWKy02itatk8xIpsRUYNRY6J5
 TP5N8bVs4VnAn0+whgVevJsrlZLDR1nlmlSHpJMrMwwcEqMsK3s6CYNtEYAXsDGN4q
 a3STyQD5Qv6eCzfanYB38PFoyULHbRHSaYZRtZoNMr3ta/MOP2zbk2Jp+7j7ESZKQ3
 jE2MKDGxPM46oishAq66Nvfi5mzK6ZB2GJ9Rn2pKmz48+rr7jTmRXYNPCyko4YCVXc
 TcN2DMfYC3WoQ==
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Apr 2020 15:31:09 +0000
Message-Id: <20200416153109.20249-1-endspiel@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_083517_154926_22AA6E4E 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.21.23.139 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4] ramips: add support for Asus RT-N10P V3
 / RT-N11P B1 / RT-N12 VP B1
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
Cc: Ernst Spielmann <endspiel@disroot.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Specifications:

- MT7628NN @ 580 MHz
- 32 MB RAM
- 8 MB Flash
- 5x 10/100 Mbps Ethernet (built-in switch)
- 2.4 GHz WLAN
- 2x external, non-detachable antennas (1x for RT-N10P V3)

Flash instructions:

1. Set PC network interface to 192.168.1.75/24.
2. Connect PC to the router via LAN.
3. Turn router off, press and hold reset button, then turn it on.
4. Keep the button pressed till power led starts to blink.
5. Upload the firmware file via TFTP. (Any filename is accepted.)
6. Wait until the router reboots.

Signed-off-by: Ernst Spielmann <endspiel@disroot.org>
---
v2: RT-N12 VP *B1* was incorrectly mentioned as *B3* in mt76x8.mk
v3: switch to master branch & split device group into individual entries
v4: add licenses, update DTS(I), move `leds` section to DTS'es, s/_/-/ in boardnames

 .../linux/ramips/dts/mt7628an_asus_rt-n10p-v3.dts  |  34 +++++++
 .../linux/ramips/dts/mt7628an_asus_rt-n11p-b1.dts  |  34 +++++++
 .../ramips/dts/mt7628an_asus_rt-n12-vp-b1.dts      |  34 +++++++
 target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi  | 100 +++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                |  24 +++++
 .../ramips/mt76x8/base-files/etc/board.d/01_leds   |   6 ++
 .../mt76x8/base-files/etc/board.d/02_network       |  21 +++--
 7 files changed, 244 insertions(+), 9 deletions(-)
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n10p-v3.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n11p-b1.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n12-vp-b1.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi

diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n10p-v3.dts b/target/linux/ramips/dts/mt7628an_asus_rt-n10p-v3.dts
new file mode 100644
index 0000000000..eaf5796d28
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n10p-v3.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0+
+/dts-v1/;
+
+#include "mt7628an_asus_rt-n1x.dtsi"
+
+/ {
+	compatible = "asus,rt-n10p-v3", "mediatek,mt7628an-soc";
+	model = "Asus RT-N10P V3";
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "rt-n10p-v3:green:power";
+			gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan {
+			label = "rt-n10p-v3:green:wlan";
+			gpios = <&gpio 44 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		wan {
+			label = "rt-n10p-v3:green:wan";
+			gpios = <&gpio 43 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			label = "rt-n10p-v3:green:lan";
+			gpios = <&gpio 42 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n11p-b1.dts b/target/linux/ramips/dts/mt7628an_asus_rt-n11p-b1.dts
new file mode 100644
index 0000000000..46f199f390
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n11p-b1.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0+
+/dts-v1/;
+
+#include "mt7628an_asus_rt-n1x.dtsi"
+
+/ {
+	compatible = "asus,rt-n11p-b1", "mediatek,mt7628an-soc";
+	model = "Asus RT-N11P B1";
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "rt-n11p-b1:green:power";
+			gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan {
+			label = "rt-n11p-b1:green:wlan";
+			gpios = <&gpio 44 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		wan {
+			label = "rt-n11p-b1:green:wan";
+			gpios = <&gpio 43 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			label = "rt-n11p-b1:green:lan";
+			gpios = <&gpio 42 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n12-vp-b1.dts b/target/linux/ramips/dts/mt7628an_asus_rt-n12-vp-b1.dts
new file mode 100644
index 0000000000..b6070d784f
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n12-vp-b1.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0+
+/dts-v1/;
+
+#include "mt7628an_asus_rt-n1x.dtsi"
+
+/ {
+	compatible = "asus,rt-n12-vp-b1", "mediatek,mt7628an-soc";
+	model = "Asus RT-N12 VP B1";
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "rt-n12-vp-b1:green:power";
+			gpios = <&gpio 37 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan {
+			label = "rt-n12-vp-b1:green:wlan";
+			gpios = <&gpio 44 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		wan {
+			label = "rt-n12-vp-b1:green:wan";
+			gpios = <&gpio 43 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			label = "rt-n12-vp-b1:green:lan";
+			gpios = <&gpio 42 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi b/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
new file mode 100644
index 0000000000..478c965a7d
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
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
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio 5 GPIO_ACTIVE_LOW>;
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
+		spi-max-frequency = <40000000>;
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
+				reg = <0x50000 0x7b0000>;
+			};
+		};
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x4>;
+};
+
+&esw {
+	mediatek,portmap = <0x3e>;
+};
+
+&wmac {
+	status = "okay";
+};
+
+&state_default {
+	default {
+		group = "i2c", "p0led_an", "p1led_an", "refclk", "wled_an";
+		function = "gpio";
+	};
+};
+
+&usbphy {
+	status = "disabled";
+};
+
+&ehci {
+	status = "disabled";
+};
+
+&ohci {
+	status = "disabled";
+};
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 76fcab8787..074269a805 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -14,6 +14,30 @@ define Device/alfa-network_awusfree1
 endef
 TARGET_DEVICES += alfa-network_awusfree1
 
+define Device/asus_rt-n10p-v3
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := Asus
+  DEVICE_MODEL := RT-N10P
+  DEVICE_VARIANT := V3
+endef
+TARGET_DEVICES += asus_rt-n10p-v3
+
+define Device/asus_rt-n11p-b1
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := Asus
+  DEVICE_MODEL := RT-N11P
+  DEVICE_VARIANT := B1
+endef
+TARGET_DEVICES += asus_rt-n11p-b1
+
+define Device/asus_rt-n12-vp-b1
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := Asus
+  DEVICE_MODEL := RT-N12 VP
+  DEVICE_VARIANT := B1
+endef
+TARGET_DEVICES += asus_rt-n12-vp-b1
+
 define Device/buffalo_wcr-1166ds
   IMAGE_SIZE := 7936k
   BUFFALO_TAG_PLATFORM := MTK
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
index c66e13d3c5..685895452a 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
@@ -20,6 +20,12 @@ case $board in
 alfa-network,awusfree1)
 	set_wifi_led "$boardname:blue:wlan"
 	;;
+asus,rt-n10p-v3|\
+asus,rt-n11p-b1|\
+asus,rt-n12-vp-b1)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0xf"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
+	;;
 cudy,wr1000)
 	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
 	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1" "switch0" "0x08"
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index a6543fd38f..c69fcc6914 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -26,6 +26,18 @@ ramips_setup_interfaces()
 		ucidef_add_switch_attr "switch0" "enable" "false"
 		ucidef_set_interface_lan "eth0"
 		;;
+	asus,rt-n10p-v3|\
+	asus,rt-n11p-b1|\
+	asus,rt-n12-vp-b1|\
+	hiwifi,hc5661a|\
+	mediatek,mt7628an-eval-board|\
+	mercury,mac1200r-v2|\
+	totolink,lr1200|\
+	wavlink,wl-wn570ha1|\
+	wavlink,wl-wn575a3)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
+		;;
 	buffalo,wcr-1166ds)
 		ucidef_add_switch "switch0" \
 			"3:lan" "4:wan" "6@eth0"
@@ -67,15 +79,6 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
 		;;
-	hiwifi,hc5661a|\
-	mediatek,mt7628an-eval-board|\
-	mercury,mac1200r-v2|\
-	totolink,lr1200|\
-	wavlink,wl-wn570ha1|\
-	wavlink,wl-wn575a3)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
-		;;
 	hiwifi,hc5761a)
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:lan" "4:wan" "6@eth0"
-- 
2.14.5


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
