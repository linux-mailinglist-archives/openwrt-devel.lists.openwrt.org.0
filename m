Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F5DFB745
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 19:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J5NKUMMgm28KE0b0CIAq7Lo5EUXZzJn4KtxcLUbJCt8=; b=PDTH9oWLXxecBM
	MkXVkxmgruRj9VZTLXbLudz0ykWC0Z5ZVGbdpVvsg5+z8oTpBSvVx4w0G9YXqUdeWYajZznTz9MKW
	pEaFWX5JVEHgVGjh4o0kZiNnswZfLHfbG0OCORQEJMUJmLUz4NkVK1SuHj5Z6dQdxJiWCERZLJgxX
	UWOkVwurRnx4e+jrva5/G1jmUNeib7kfzKNwqck2AvNWjRNucZYGbUu4QLc7X1zVfqJndgDYrrZbj
	l7GlECS/jWZ/64jul5OfBPNm6c7xChGvUo52qkQLFEnysu2yhOIkoGk8UmxrvHpLNxV//M35B2L04
	RpHCrPt+r7Um9WawnXYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUxI6-0004rC-MA; Wed, 13 Nov 2019 18:22:54 +0000
Received: from li825-139.members.linode.com ([104.237.157.139]
 helo=smtp.factglobal.ca)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUxI0-0004qo-L9
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 18:22:50 +0000
Received: by smtp.factglobal.ca (Postfix, from userid 1000)
 id 305B07B957; Wed, 13 Nov 2019 18:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kryma.net; s=mail;
 t=1573669363; bh=ewz34Fiz3hKg6RMPtyWbOMx1HEZjXqeEe4o29JraWpo=;
 h=From:To:Cc:Subject:Date:From;
 b=sZ90rNpvq4Kyv4f6JnFxrdznlQKjhLGaUxoFfq+jiuPkVvUhTnGvZmR1EpFV9NZyU
 XHUNVcoL4PJsBhDJnaD6O1fjirm506PcBNaKc6FtDWq9toQYoyl0/RkIRVBhqPMTmn
 G2fLjWNeLur0hX1mItSZGG9ETMnRaYt7kmEAThmI=
From: admin@kryma.net
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 18:22:38 +0000
Message-Id: <20191113182238.1921-1-admin@kryma.net>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_102248_766981_BE3E1717 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2] ath79: add support for COMFAST CF-E130N
 v2
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
Cc: Pavel Balan <admin@kryma.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Pavel Balan <admin@kryma.net>

This patch adds support for the COMFAST CF-E130N v2, an outdoor wireless
CPE with a single Ethernet port and a 802.11bgn radio.

Specifications:

 - QCA9531 SoC
 - 1x 10/100 Mbps Ethernet, both with PoE-in support
 - 64 MB of RAM (DDR2)
 - 16 MB of FLASH
 - 5 dBi built-in antenna
 - POWER/LAN/WLAN green LEDs
 - 4x RSSI LEDs (2x red, 2x green)
 - UART (115200 8N1) and GPIO (J9) headers on PCB

Flashing instructions:

 The original firmware is based on OpenWrt so a sysupgrade image can be
 installed via the stock web GUI.

 The U-boot bootloader also contains a backup TFTP client to upload the
 firmware from. Upon boot, it checks its ethernet network for the IP
 192.168.1.10. Host a TFTP server and provide the image to be flashed as
 file firmware_auto.bin.

Changes since v1:

 -Formatting fixes.
 -Looked into rssi_medium_high more - found the correct GPIO pin.
 -Removed the pin muxer.
 -Changed 802.11an to 802.11bgn in the patch description.

Open questions:

 -LED menu in LUCI does not show the list of LEDs properly.
      A LUCI issue or a device config one?


Signed-off-by: Pavel Balan <admin@kryma.net>
---
 .../ath79/dts/qca9531_comfast_cf-e130n-v2.dts | 139 ++++++++++++++++++
 .../generic/base-files/etc/board.d/01_leds    |   8 +
 target/linux/ath79/image/generic.mk           |  10 ++
 3 files changed, 157 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts

diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
new file mode 100644
index 0000000000..b5527c0a49
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_comfast_cf-e130n-v2.dts
@@ -0,0 +1,139 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca953x.dtsi"
+
+/ {
+	compatible = "comfast,cf-e130n-v2", "qca,qca9531";
+	model = "COMFAST CF-E130N v2";
+
+	aliases {
+		serial0 = &uart;
+		led-boot = &led_rssihigh;
+		led-failsafe = &led_rssihigh;
+		led-upgrade = &led_rssihigh;
+		label-mac-device = &eth0;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_rssimediumhigh_pin>;
+
+		led_wlan {
+			label = "cf-e130n-v2:green:wlan";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+		led_lan {
+			label = "cf-e130n-v2:green:lan";
+			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+		};
+
+		led_unused {
+			label = "cf-e130n-v2:green:unused";
+			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
+		};
+
+		led_rssilow {
+			label = "cf-e130n-v2:red:rssilow";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+		};
+
+		led_rssimediumlow {
+			label = "cf-e130n-v2:red:rssimediumlow";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+		};
+
+		led_rssimediumhigh {
+			label = "cf-e130n-v2:green:rssimediumhigh";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+		};
+
+		led_rssihigh: led_rssihigh {
+			label = "cf-e130n-v2:green:rssihigh";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+};
+
+&spi {
+	status = "okay";
+
+	num-cs = <1>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x000000 0x010000>;
+				read-only;
+			};
+
+			art: partition@10000 {
+				label = "art";
+				reg = <0x010000 0x010000>;
+				read-only;
+			};
+
+			partition@20000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x020000 0x7d0000>;
+			};
+
+			partition@7f0000 {
+				label = "nvram";
+				reg = <0x7f0000 0x010000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&uart {
+	status = "okay";
+
+};
+
+&eth0 {
+	status = "okay";
+	phy-handle = <&swphy0>;
+
+	mtd-mac-address = <&art 0x0>;
+
+	gmac-config {
+		device = <&gmac>;
+		switch-phy-swap = <1>;
+	};
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+};
+
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index fbb0d0ea03..3046d34605 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -47,6 +47,14 @@ comfast,cf-e120a-v3)
 	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
 	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh" "wlan0" "76" "100"
 	;;
+comfast,cf-e130n-v2)
+	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_rssimon "wlan0" "200000" "1"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:rssimediumlow" "wlan0" "26" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh" "wlan0" "76" "100"
+	;;
 comfast,cf-e313ac)
 	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x02"
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 70631c20d0..256481ece3 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -258,6 +258,16 @@ define Device/comfast_cf-e120a-v3
 endef
 TARGET_DEVICES += comfast_cf-e120a-v3
 
+define Device/comfast_cf-e130n-v2
+  ATH_SOC := qca9531
+  DEVICE_VENDOR := COMFAST
+  DEVICE_MODEL := CF-E130N
+  DEVICE_VARIANT := v2
+  DEVICE_PACKAGES := rssileds kmod-leds-gpio -swconfig -uboot-envtools
+  IMAGE_SIZE := 8000k
+endef
+TARGET_DEVICES += comfast_cf-e130n-v2
+
 define Device/comfast_cf-e313ac
   ATH_SOC := qca9531
   DEVICE_VENDOR := COMFAST
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
