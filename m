Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9621D11EB3E
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 20:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hDI6BjmDUzFKihXcVrJLQU/s5jE++r8W1xkv14x2K00=; b=AZYC3gNNVzPRB/
	qW+O4aLpTyFWZXvtbw0b94tx1GKr0/9XW7xK0qr8Sa977/9xpVAsky+ySsju6qcHNykiVQ3h4ptIO
	NgBESbbHGUUC2TtdXgCd+q7CC9jzPPExD6SAUbfcz4A52FGrp29ZJe6TgsasCtfY16VXbtr8cHWXY
	37JCjE1VnLaSqPR59EsqbGFc5i/aj50WgUfinnehM2gtUqo10+B34/bVnYjTxTP6JiskyDt3dTyDL
	Ku2G1QHN/WU0cuiTUuTmJZCHWkK/XaFg/fiYZS+u2mc/jm0TQZ4uZeBuUoH67oH11pt0654ktWEwq
	R1PkonTQs1E8r6WRGnwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifqym-00025J-UK; Fri, 13 Dec 2019 19:52:00 +0000
Received: from dazzle.geroedel.de ([2a02:180:6:1::b3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifqyL-0001uQ-PZ
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 19:51:36 +0000
Received: from [192.168.15.2] (helo=feeble.bln.roederer.dhs.org)
 by dazzle.geroedel.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <devel-sven@geroedel.de>)
 id 1ifqy7-0004xB-01; Fri, 13 Dec 2019 20:51:22 +0100
Received: from build.bln.roederer.dhs.org ([192.168.8.5] helo=build)
 by feeble.bln.roederer.dhs.org with smtp (Exim 4.92)
 (envelope-from <devel-sven@geroedel.de>)
 id 1ifqy5-0001b1-IT; Fri, 13 Dec 2019 20:51:17 +0100
Received: (nullmailer pid 13406 invoked by uid 10000);
 Fri, 13 Dec 2019 19:51:16 -0000
From: Sven Roederer <devel-sven@geroedel.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 20:50:46 +0100
Message-Id: <20191213195046.13358-1-devel-sven@geroedel.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "dazzle",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 Content preview: From: Luochongjun <luochongjun@gl-inet.com> This patch
 supports
 gl-ar750, which was previously supported by ar71xx. Specification: - SOC:
 QCA9531 (650MHz) - Flash: 16 MiB (W25Q128FVSG) - RAM: 128 MiB DDR2 - Ethernet:
 10/100: 2xLAN + 10/100: 1xWAN - Wireless: 2.4GHz (bgn) and 5GHz (ac) - USB:
 1x USB 2.0 port - Switc [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
X-SA-Exim-Connect-IP: 192.168.15.2
X-SA-Exim-Mail-From: devel-sven@geroedel.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dazzle
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on dazzle.geroedel.de)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_115134_043942_8AB15ABE 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Luochongjun <luochongjun@gl-inet.com>

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
(cherry picked from commit 921675a2d148330a7ec44f10ea4d583b8d7b5a44)
[backported to 19.07]
Signed-off-by: Sven Roederer <devel-sven@geroedel.de>
---
 .../ath79/base-files/etc/board.d/02_network   |   5 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   1 +
 .../ath79/dts/qca9531_glinet_gl-ar750.dts     | 142 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |   9 ++
 4 files changed, 157 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 82c1e09981..41c8e37e31 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -128,6 +128,11 @@ ath79_setup_interfaces()
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
index d1f529fde5..cf28c474b1 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -117,6 +117,7 @@ case "$FIRMWARE" in
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
+	glinet,gl-ar750|\
 	glinet,gl-ar750s)
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
new file mode 100644
index 0000000000..54aad320f6
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
index 625c2bdd05..f8db5fca6f 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -397,6 +397,15 @@ define Device/glinet_gl-ar300m-nor
 endef
 #TARGET_DEVICES += glinet_gl-ar300m-nor
 
+define Device/glinet_gl-ar750
+  ATH_SOC := qca9531
+  DEVICE_TITLE := GL.iNet GL-AR750
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  IMAGE_SIZE := 16000k
+  SUPPORTED_DEVICES += gl-ar750
+endef
+TARGET_DEVICES += glinet_gl-ar750
+
 define Device/glinet_gl-ar750s
   ATH_SOC := qca9563
   DEVICE_TITLE := GL.iNet GL-AR750S
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
