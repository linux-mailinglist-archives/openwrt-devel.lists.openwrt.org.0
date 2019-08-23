Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418C59AB22
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 11:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xsQNuEgJXt0ev9GBNW3myFO1ILDfqYsbD+xHlydwbxI=; b=pseoSVeQnnUxy7
	0cpsQKnJSr2PTZ/dNkQBMvNbYss5hKOFOCw7q+l9RXh3oz88C9rkX415h7C4HS8JyoSnlXjvnHCEx
	eaZcV9+Gqd2P0t21J8ZbR1RLg0NFgGwPV9dpUWprXLvqZblmsc6dhYrmvttH6iGil97cfVJX3IFB7
	kAoNlZSBeFvV6ZeynBFDgE66tvtTH+w0AbyGCHe5f7r9oaZNqKFHcFyl6yOEGKlW3PKaEUWjWXeLo
	+qJ1FwDBKPQa02wD4xTdhQGDDe12cnM8gfSMAjk7CUsPBiepRSRg23JH7qZyGAiiMBxB/pEjUjfE3
	hnzMkkbc2/Kbh1buzJYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Yd-0004j2-Jr; Fri, 23 Aug 2019 09:08:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Y6-0004Qa-HX
 for openwrt-devel@bombadil.infradead.org; Fri, 23 Aug 2019 09:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MaPjwauopfOKH08iN8Oh/1X7nPgsFlIqYCuSl9JmUvw=; b=xLZL885qii51UPoqVwirYZk+0
 ov9TxAGqE+xL5Cqt0Bc4e9ZfsZUfHeMCTjoM26WH8Hi85qkYr14Iehutq8SIMjrZZc4taB6YDwKZA
 d3ulnvwZcy6ln2ApJhlqbxD142pL+/gw6+l2QBqI656i4iM8egtQkbEWlGzYXF7zG7Yi7rOjaf7qP
 RlLsINh+atYSvehjmPWceo5cs1PVWzeWdHYzDTs0SRgQ0QgLzLnDWOjaSNzLUAiq2gOJoNv/PnAAA
 QzxUDUubIejdDmqqbZ3K0fxAQKD7FOlEenxSkMP2mt5WlBD6+38C5CQvDePdsT0pcaJRMjoAnj9gS
 ExdfWEpjg==;
Received: from smtpbguseast1.qq.com ([54.204.34.129])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Y2-0007cN-Gr
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 09:07:57 +0000
X-QQ-mid: bizesmtp29t1566551184tgar74go
Received: from localhost.localdomain (unknown [113.116.146.26])
 by esmtp10.qq.com (ESMTP) with 
 id ; Fri, 23 Aug 2019 17:06:19 +0800 (CST)
X-QQ-SSF: 01400000002000L0ZG50000A0000000
X-QQ-FEAT: jU8MqRPgYLQa8fVyFugmVBYv6t3wKZWZ4cjCevHf8IQNubuLYlDMXy3LPLSFi
 qvVtI+Q0X63dlZBE6uv3Q9gSEPJQ9av6IFzi2gshWQ3Gh0p91KWxjU0hHjijEMWcl6Iw0On
 qu46ug+TWARgRNZau25xA7UmF7bGXq7HJ6QgGinzAEEVpfE6EAxpwPSSyshtxjqqMxJYa3U
 cO51tWT0JgQ2FrVr+Y1XGkfG89tM2hi2JAf9G67ugc0BqAZGn1Wr3jqJBO1HUWXefmTykJE
 Y5myvRjx2cOx+46CvcpHMPZdIqUpOFWFquBL/nVBrF+YOJ4Yr+bzQlaxS9XZpWMa4cAeVyP
 0AV/gBhmKW6PDw2JJU=
X-QQ-GoodBg: 2
From: Luochongjun <luochongjun@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 17:05:57 +0800
Message-Id: <1566551157-23173-1-git-send-email-luochongjun@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign2
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2] ath79: add support for gl-ar750
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
Cc: Luochongjun <luochongjun@gl-inet.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch supports gl-ar750, which was previously supported by ar71xx.

Specification:
- SOC: QCA9531 (650MHz)
- Flash: 16 MiB (W25Q128FVSG)
- RAM: 128 MiB DDR2
- Ethernet: 10/100: 2xLAN + 10/100: 1xWAN
- Wireless: 2.4GHz (bgn) and 5GHz (ac)
- USB: 1x USB 2.0 port
- Switch: 1x switch
- Button: 1x reset button
- LED: 3x LEDS (white)

Flash instruction:
Support for sysupgrade directive upgrades, as well as luci upgrades.

Signed-off-by: Luochongjun <luochongjun@gl-inet.com>
---
 .../linux/ath79/base-files/etc/board.d/02_network  |   5 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 142 +++++++++++++++++++++
 target/linux/ath79/image/generic.mk                |  10 ++
 4 files changed, 158 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index cb0853e..454f57d 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -156,6 +156,11 @@ ath79_setup_interfaces()
 	etactica,eg200)
 		ucidef_set_interface_lan "eth0" "dhcp"
 		;;
+	glinet,gl-ar750)
+		ucidef_set_interface_wan "eth1"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan" "2:lan"
+		;;
 	glinet,gl-ar750s)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "2:lan:2" "3:lan:1" "1:wan"
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 421fb7d..ed34322 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -122,6 +122,7 @@ case "$FIRMWARE" in
 		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
+	glinet,gl-ar750|\
 	glinet,gl-ar750s)
 		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
new file mode 100644
index 0000000..54aad32
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca953x.dtsi"
+
+/ {
+	compatible = "glinet,gl-ar750", "qca,qca9531";
+	model = "GL.iNet GL-AR750";
+
+	keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
+		};
+
+		mode {
+			label = "mode";
+			linux,code = <BTN_0>;
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		power {
+			label = "gl-ar750:white:power";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		wlan2g {
+			label = "gl-ar750:white:wlan2g";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+
+		wlan5g {
+			label = "gl-ar750:white:wlan5g";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+
+	};
+
+	i2c {
+		compatible = "i2c-gpio";
+
+		sda-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		scl-gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+	};
+
+
+};
+
+&pcie0 {
+	status = "okay";
+
+	wifi@0,0 {
+		compatible = "qcom,ath10k";
+		reg = <0 0 0 0 0>;
+		device_type = "pci";
+	};
+};
+
+&uart {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&spi {
+	status = "okay";
+	num-cs = <0>;
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
+				reg = <0x000000 0x040000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x040000 0x010000>;
+				read-only;
+			};
+
+			art: partition@50000 {
+				label = "art";
+				reg = <0x050000 0x010000>;
+				read-only;
+			};
+
+			partition@60000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x060000 0xfa0000>;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+	mtd-mac-address = <&art 0x0>;
+	phy-handle = <&swphy4>;
+};
+
+&eth1 {
+	mtd-mac-address = <&art 0x0>;
+	mtd-mac-address-increment = <1>;
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+};
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 6f1ad5b..eed0e2b 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -557,6 +557,16 @@ define Device/glinet_gl-ar300m-nor
 endef
 TARGET_DEVICES += glinet_gl-ar300m-nor
 
+define Device/glinet_gl-ar750
+  ATH_SOC := qca9531
+  DEVICE_VENDOR := GL.iNet
+  DEVICE_MODEL := GL-AR750
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  IMAGE_SIZE := 16000k
+  SUPPORTED_DEVICES += gl-ar750
+endef
+TARGET_DEVICES += glinet_gl-ar750
+
 define Device/glinet_gl-ar750s
   ATH_SOC := qca9563
   DEVICE_VENDOR := GL.iNet
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
