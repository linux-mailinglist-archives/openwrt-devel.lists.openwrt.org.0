Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 691161A38E1
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Apr 2020 19:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BowvKoX/MQqBXvfhIzhBr2QWy+rheaO7zel4M+TRVgU=; b=kTSzPq7Wagtz0U
	DHjUeiuU8m/PV24NlURqHJDps64+E3WP7+FU1z7TVKUFSz8KfhyWHJZELAQWyiFU72F4CY+boO0p6
	jkDncTnKxoIfDXLP9/A+5EP0U/WRnqpXcsXD1LBXYnxXvCM/9dhlHbl1rrTUhgRcg9K0tCEFF/cgR
	t9949vscDjf2O5nTvOQ+fwkUL/mbGrPMpVMBnUzw5TJd9jYeVIiMhvmOGHrmmq3lb8rtoT218WBrw
	BpjFTcna7Hh4O3JEyBuAnvMgNJU4W7j0fByb7PfegmILRz39okRbyKWYetNu+n7ND3Pgyi0K/05+f
	RM8hY6SaF+k+QJM5txGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMazf-0007gB-39; Thu, 09 Apr 2020 17:29:35 +0000
Received: from knopi.disroot.org ([178.21.23.139])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMazW-0007fW-RU
 for openwrt-devel@lists.openwrt.org; Thu, 09 Apr 2020 17:29:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 650F038FB4;
 Thu,  9 Apr 2020 19:29:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f2EYxL2K1gmI; Thu,  9 Apr 2020 19:29:24 +0200 (CEST)
From: Ernst Spielmann <endspiel@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1586453363; bh=2DrTdMGlQnOYNq4YyVylcqeJNP+4CCg2RuPSIQZrQNA=;
 h=From:To:Cc:Subject:Date;
 b=RszeEVaHxZZgy70X205equy6pzNrxWdv40PC6LCoTVNDFZfCp+G7PV2SX+TeKNJO2
 39swlHeuBg7+Om+lXPcguJ4ee4wHCusAgKYW30VgMHz3hjOm4O87hsbrzTTAB2CzEI
 okyxB/8HDDnLmWY21VfyKlFlpeAyQ9QhlfkPwtO68T1IBdacCitvwNDKAJfxnSODts
 7Q3NPAsObcTuSI2wWbsIdWFO3wpQn4qU/Vwppu8XcnDi7F0hKRfhPDApiHI/dKHvFe
 0zl8xzh4C0PvkP36c7blnEcO7BgbbX9ecxedjO2FmZImjmANSdXh17W95oVCTk3acO
 i4dzzTP1aZGZg==
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Apr 2020 17:27:11 +0000
Message-Id: <20200409172711.26807-1-endspiel@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_102927_169093_96691E77 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.21.23.139 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 19.07 v2] ramips: add support for Asus
 RT-N10P V3 / RT-N11P B1 / RT-N12 VP B1
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

 target/linux/ramips/base-files/etc/board.d/01_leds |   5 +
 .../linux/ramips/base-files/etc/board.d/02_network |   1 +
 target/linux/ramips/base-files/lib/ramips.sh       |   3 +
 target/linux/ramips/dts/RT-N11P_B1.dts             | 125 +++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                |   7 ++
 5 files changed, 141 insertions(+)
 create mode 100644 target/linux/ramips/dts/RT-N11P_B1.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 5c005db0c1..c89af17d52 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -291,6 +291,11 @@ rp-n53)
 	ucidef_set_led_netdev "eth" "Network" "$boardname:white:back" "eth0"
 	set_wifi_led "$boardname:blue:wifi"
 	;;
+rt-n11p_b1)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0xf"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
+	ucidef_set_led_wlan "wlan" "wlan" "$boardname:green:wlan" "phy0tpt"
+	;;
 rt-n12p)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0.1
 	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" eth0.2
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index f743ce851a..4ea5cf0565 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -112,6 +112,7 @@ ramips_setup_interfaces()
 	pbr-m1|\
 	psg1208|\
 	psg1218a|\
+	rt-n11p_b1|\
 	rt-n12p|\
 	sap-g3200u3|\
 	sk-wb8|\
diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
index 093303892c..d1caa9d5ea 100755
--- a/target/linux/ramips/base-files/lib/ramips.sh
+++ b/target/linux/ramips/base-files/lib/ramips.sh
@@ -439,6 +439,9 @@ ramips_board_detect() {
 	*"RT-N10+")
 		name="rt-n10-plus"
 		;;
+	*"RT-N11P B1")
+		name="rt-n11p_b1"
+		;;
 	*"RT-N12+")
 		name="rt-n12p"
 		;;
diff --git a/target/linux/ramips/dts/RT-N11P_B1.dts b/target/linux/ramips/dts/RT-N11P_B1.dts
new file mode 100644
index 0000000000..d2824f8995
--- /dev/null
+++ b/target/linux/ramips/dts/RT-N11P_B1.dts
@@ -0,0 +1,125 @@
+/dts-v1/;
+
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "asus,rt-n11p_b1", "mediatek,mt7628an-soc";
+	model = "Asus RT-N11P B1";
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
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "rt-n11p_b1:green:power";
+			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan {
+			label = "rt-n11p_b1:green:wlan";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+		};
+
+		wan {
+			label = "rt-n11p_b1:green:wan";
+			gpios = <&gpio1 11 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			label = "rt-n11p_b1:green:lan";
+			gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 5 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
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
+				reg = <0x50000 0x7b0000>;
+			};
+		};
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x4>;
+	mediatek,portmap = <0x3e>;
+};
+
+&wmac {
+	status = "okay";
+};
+
+&state_default {
+	default {
+		ralink,group = "refclk";
+		ralink,function = "gpio";
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
index 7df5c04297..b9c37c58a0 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -175,6 +175,13 @@ define Device/rakwireless_rak633
 endef
 TARGET_DEVICES += rakwireless_rak633
 
+define Device/rt-n11p_b1
+  DTS := RT-N11P_B1
+  IMAGE_SIZE := $(ralink_default_fw_size_8M)
+  DEVICE_TITLE := Asus RT-N10P V3/RT-N11P B1/RT-N12 VP B1
+endef
+TARGET_DEVICES += rt-n11p_b1
+
 define Device/skylab_skw92a
   DTS := SKW92A
   IMAGE_SIZE := 16064k
-- 
2.14.5


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
