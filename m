Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACE771339
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 09:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZltTknDVa1Y6c0XYOWulq8fISNlBV45MFDhE6hLcT70=; b=NM96Ff63JDbKLZ
	wxOGtnAI8+0gamCMcJt39mhgn9+0wgD2YNYYDjqngf8iSnVVHtDw4iPGenuI51cj+Evwjq0VcQ5zQ
	UeYxl6pTSzFyYjKKTP41CTaLI+63Vfl5heMVCXaitXhKY1Iw8dGSY9PoC6TcQGUJVkUUDG7/dPL0P
	ccQyTy7vRbH93YkWuLlLJy3x895GHEfOHY/lZh+QEzxQ8Vr/XgcWvI8kGGwAJ7MjW/1GzAepxwK6h
	4ozuq05FSLbojGOx5KdBKC7HFS/XHjsckxfwF1Q7AN4nNED0SvWbBVWwe0jiNX8NbsJfOLXrvumNB
	i5m4EkvuvDKjMp5zgsyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppWT-0004KQ-Lt; Tue, 23 Jul 2019 07:47:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppVs-00048I-Db
 for openwrt-devel@bombadil.infradead.org; Tue, 23 Jul 2019 07:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qMJkp302CGRZGqdolIdRk3kbx4/g3RaWC7zs+Yxsgfg=; b=UN0lXawvLD1F0zSeX29AWYdt4
 koaedG4fMcolLVAVubuCylmrFPWVzu5sWRNL9XhPhNt/4OOpQRe+IMPSeBu0pcJyNv9AQyzKFxfuw
 IwBpghxCdfibDsU8mGZ+HZwy4hWiCooW6sE6tQi8YRY2N1u6ZflWBumk9FA1Gey/ZXJawOzHSYiaq
 HO0CUI1/tjpOJ6pYk6gYR9qa8VoliCpcYS1tDgDpE/i2ma/0Rs8xeyAyyg5lZqTgzGxeNvNSYH/Pc
 ib6ecnnenEOqYV7WBeQzXACjU8DzbJfM63X00pWt7vPTMwokGRgomtEb2PkdOQNaW/MWcIkCvpeur
 RxWG79CyA==;
Received: from smtpproxy21.qq.com ([184.105.206.83])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppVn-0008OZ-IH
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 07:47:08 +0000
X-QQ-mid: bizesmtp12t1563867973t5isp862
Received: from localhost.localdomain (unknown [113.116.58.99])
 by esmtp6.qq.com (ESMTP) with 
 id ; Tue, 23 Jul 2019 15:46:07 +0800 (CST)
X-QQ-SSF: 01400000000000L0ZG50000A0000000
X-QQ-FEAT: uJKlVohL8Wq0WbAU1pv00a4XwEaZUUIMDeEgfFWAldM7FLVy8xLaYPvs16v1y
 +spk/cbqRqr6n7Q0TQkoICy9tB5rkEbl/vVKhTgTiMpvhtBM7mDoEECgNnlKhKYESiJKOMf
 364tZoLxFTPbhZSrN+0JqOCTuzPPe0w4ynz9Ero6IyMG3vrF/KRwYxYCmGK5EeZZfmDDevp
 hDIQH9HZBpU4dEnEUvB69Evi4nJUDNB9y8rNyyhC3X3Q75RPekFsNGnn3GNKRJbghb3WdV7
 1iPUG2+0i77szpRXu+7TY/7RGMmaVu6gceV7IbNkGHlXURUst/LmZv9h1q7Mr+/H8soZ0Xk
 GZ+vrgY6LIFwh9/TCK+yADtvPCCYQ==
X-QQ-GoodBg: 2
From: Luochongjun <luochongjun@gl-inet.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 23 Jul 2019 15:45:25 +0800
Message-Id: <1563867925-5931-1-git-send-email-luochongjun@gl-inet.com>
X-Mailer: git-send-email 2.7.4
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:gl-inet.com:qybgforeign:qybgforeign4
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_084703_901044_DA492F03 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [184.105.206.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for gl-ar750
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
 .../etc/hotplug.d/firmware/11-ath10k-caldata       |   1 +
 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts | 149 +++++++++++++++++++++
 target/linux/ath79/image/generic.mk                |   9 ++
 3 files changed, 159 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 8f0ea1d..6a9cb1c 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -116,6 +116,7 @@ case "$FIRMWARE" in
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
+	glinet,gl-ar750|\
 	glinet,gl-ar750s)
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
new file mode 100644
index 0000000..b8f9735
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
@@ -0,0 +1,149 @@
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
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_port: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
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
index d5f67b8..86da1a9 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -389,6 +389,15 @@ define Device/glinet_gl-ar300m-nor
 endef
 TARGET_DEVICES += glinet_gl-ar300m-nor
 
+define Device/glinet_gl-ar750
+  ATH_SOC := qca9531
+  DEVICE_TITLE := GL.iNet GL-AR750
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca9887-ct
+  IMAGE_SIZE := 16000k
+  SUPPORTED_DEVICES += gl-ar750
+endef
+TARGET_DEVICES += glinet_gl-ar750
+
 define Device/glinet_gl-ar750s
   ATH_SOC := qca9563
   DEVICE_TITLE := GL.iNet GL-AR750S
-- 
2.7.4




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
