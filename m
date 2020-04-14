Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D4C1A7F5B
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 16:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PmDk7D4pF7CSHJ5bp7DJGLN1ikDIbmn1YVmiCa4otMM=; b=SVnMr5zmDxceLm
	G2RdWPo95PnXJfVR7oB/V9+jM2DkUJMU8XTEn/ox1meeVIvOvbDOuijZHd2QkD9uY7H86wdPX4yig
	C/jQz75Jc/Hs09OJBrw3r84yUI7ot0XNa7Et5vYurax7VATGF+UMaeCUMXlQuKRfhaB57bPghgmBb
	/1wE9yTmDmv2w0Hz026yPHmIemvCdBZKSJl/CrjEeiq4Ujgf/ZSGDf6E959K4DWWRxqgd4MPZYt7E
	vKKC4uYkiDpRah7Uylaeb3bFsOqC6KWMYJyE434dz3TrFnLx5WtBatQtrqo8WwdNrqnla/hCCi9wv
	euaM2CU0e/P5C51DwIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMMO-0005BJ-Ed; Tue, 14 Apr 2020 14:16:20 +0000
Received: from knopi.disroot.org ([178.21.23.139])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMMG-0005Ap-J7
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 14:16:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by disroot.org (Postfix) with ESMTP id 8F44223D50;
 Tue, 14 Apr 2020 16:16:06 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at disroot.org
Received: from knopi.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jEtI2hmT-sA3; Tue, 14 Apr 2020 16:16:04 +0200 (CEST)
From: Ernst Spielmann <endspiel@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
 t=1586873764; bh=qHXpNL7ceZoCdsZgxw6HiSR0g2LVf6SsEPxVjNm6iZI=;
 h=From:To:Cc:Subject:Date;
 b=OrUpP7T5JlFcIFgcZxWANel53Lrpx7tXzM4bw7V+oemlondoAE2HbdjxBZ3QrxT/S
 nmHRPBafvuoHEjyi3uAqTGLc5JyEsiSFKRHEdCfjDk1g8mj1TlNhYE3yGInU7aUSwQ
 6Os5/GvmeNT5O2LgI4O+nRuAf/YyQ6VtqUIar7UpS6v4zCY1Htpd9TB/RGbc8AUUEa
 ZZC6Z4u/T5oWn9WfDx3zqV/9bugnUforgXMbDDtUsF0bJKWhN3O8eg8gzvBvyZbqVx
 Lj+vt8A4kJ/ZXZCgkaqkiA0WELRUkPe2OIOY40IqpWu9DJPzxbLywWff0JULm9jtwU
 OW/OkEqWDaRqg==
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 14:12:48 +0000
Message-Id: <20200414141248.6014-1-endspiel@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_071613_054651_55ACAAC6 
X-CRM114-Status: UNSURE (   9.49  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3] ramips: add support for Asus RT-N10P V3
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

 .../linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts  |   8 ++
 .../linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts  |   8 ++
 .../ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts      |   8 ++
 target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi  | 120 +++++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk                |  24 +++++
 .../ramips/mt76x8/base-files/etc/board.d/01_leds   |   7 ++
 .../mt76x8/base-files/etc/board.d/02_network       |   3 +
 7 files changed, 178 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts
 create mode 100644 target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi

diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts b/target/linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts
new file mode 100644
index 0000000000..c55fee8533
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n10p_v3.dts
@@ -0,0 +1,8 @@
+/dts-v1/;
+
+#include "mt7628an_asus_rt-n1x.dtsi"
+
+/ {
+	compatible = "asus,rt-n10p_v3", "mediatek,mt7628an-soc";
+	model = "Asus RT-N10P V3";
+};
diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts b/target/linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts
new file mode 100644
index 0000000000..d9b776865f
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n11p_b1.dts
@@ -0,0 +1,8 @@
+/dts-v1/;
+
+#include "mt7628an_asus_rt-n1x.dtsi"
+
+/ {
+	compatible = "asus,rt-n11p_b1", "mediatek,mt7628an-soc";
+	model = "Asus RT-N11P B1";
+};
diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts b/target/linux/ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts
new file mode 100644
index 0000000000..ddfcc9ae6d
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n12_vp_b1.dts
@@ -0,0 +1,8 @@
+/dts-v1/;
+
+#include "mt7628an_asus_rt-n1x.dtsi"
+
+/ {
+	compatible = "asus,rt-n12_vp_b1", "mediatek,mt7628an-soc";
+	model = "Asus RT-N12 VP B1";
+};
diff --git a/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi b/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
new file mode 100644
index 0000000000..fee25aedaf
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_asus_rt-n1x.dtsi
@@ -0,0 +1,120 @@
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
index e2890c98e6..36aa296fb8 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -213,6 +213,30 @@ define Device/rakwireless_rak633
 endef
 TARGET_DEVICES += rakwireless_rak633
 
+define Device/asus_rt-n10p_v3
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := Asus
+  DEVICE_MODEL := RT-N10P V3
+  SUPPORTED_DEVICES += rt-n10p_v3
+endef
+TARGET_DEVICES += asus_rt-n10p_v3
+
+define Device/asus_rt-n11p_b1
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := Asus
+  DEVICE_MODEL := RT-N11P B1
+  SUPPORTED_DEVICES += rt-n11p_b1
+endef
+TARGET_DEVICES += asus_rt-n11p_b1
+
+define Device/asus_rt-n12_vp_b1
+  IMAGE_SIZE := 7872k
+  DEVICE_VENDOR := Asus
+  DEVICE_MODEL := RT-N12 VP B1
+  SUPPORTED_DEVICES += rt-n12_vp_b1
+endef
+TARGET_DEVICES += asus_rt-n12_vp_b1
+
 define Device/skylab_skw92a
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Skylab
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
index c66e13d3c5..8b8f4ad6fa 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
@@ -20,6 +20,13 @@ case $board in
 alfa-network,awusfree1)
 	set_wifi_led "$boardname:blue:wlan"
 	;;
+asus,rt-n10p_v3|\
+asus,rt-n11p_b1|\
+asus,rt-n12_vp_b1)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0xf"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
+	ucidef_set_led_wlan "wlan" "wlan" "$boardname:green:wlan" "phy0tpt"
+	;;
 cudy,wr1000)
 	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
 	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1" "switch0" "0x08"
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index 5230717506..9889d92ada 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -59,6 +59,9 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
 		;;
+	asus,rt-n10p_v3|\
+	asus,rt-n11p_b1|\
+	asus,rt-n12_vp_b1|\
 	hiwifi,hc5661a|\
 	mediatek,mt7628an-eval-board|\
 	mercury,mac1200r-v2|\
-- 
2.14.5


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
