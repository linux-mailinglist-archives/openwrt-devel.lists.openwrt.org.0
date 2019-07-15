Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449486885F
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 13:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jDCv2D/J40q9S6vDsvnON+7mKcHNr3gZRlv5wr5X8IE=; b=a56hpIRWcgU3w1
	zxeifz5OtJLcLYTTX2cVsqnhzThgYXCU8sfjGn8mvz1ogcVJMLE9+kFQpz+YmMb/XAt2Mw8UqYiJf
	HSu0FkTyaS2hu7PoXve7Ckg93ATayb2/xEm1wF8IGpORmxl3SIrO4oR/FK6jfWoNFoJf0/N06eAbT
	6rtc/Ery3Qfh5iNJTmjJiBj47ityTTICQcoSRIFkGpZB47/vr6gFq7OtfyaYdZ2xUl2ZvQ80g5MSA
	nyIUaQBN134+8RV+wd3EOpnWySUNaM35Jb7yLuOXuLk96Vr9PVQassUZOVAoCXXuHvPBksoUUDxS0
	sHmwMrjQXEh7ee226lKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzYZ-0000lQ-Fb; Mon, 15 Jul 2019 11:54:11 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzYI-0000l7-JD
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 11:53:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id k8so8187856plt.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 04:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lkTUMhFKSLVAni7safpTjRwObXFd7t+vIs8sBDMF6xw=;
 b=GQVvXzefn/Ozi3Pk6+40t+5sq3VpK+3f7SWxc+0x2WU2Rakv4qaUCx0oRLDcxugZy+
 k5MflAsN5ZOCCfLsllNllOVFjfMWcbsHxG9IKAr8+jWaw3vz7sQuj8KyHovFLBp1QgXr
 pv2sV7OzGfqBIQopA20OL8vS5Q1Myq39c9txCzB9BYnj4Z3hs9U0RUdTUooYkuT4XBxr
 QabRsuQ9CbzCpMe9Dl9YtLO+Kl2xiCXQZ4K9Ut9bT5tw6hphSnf9i/BPXFK5aq9B8BRH
 +h+gELs9R6v6j+beGztpcHI+w4coJV0AdVR3r07otVzov0/7lV3v7xIK8qO/ebYPscY9
 nS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lkTUMhFKSLVAni7safpTjRwObXFd7t+vIs8sBDMF6xw=;
 b=VNfeFGsqFbFT9eQ0ZflMLqsqBTDpwjK37GybO7e6GI6GEIVHu5whEYrbQi5qxrD5fL
 CCw+GOhwEAnYVZvWqerPg5obFR/wDhv79diiIEtq1/VHL9vhD9cD9D0gUW3KUXaemMsV
 sl3rTYrQqn+YLHun8T/7RCnS4wy/pqYaQsqEHMWzJd1mTFAya25byfKraMo1Y8ntTS75
 RZX6Eu0XVyiTF+TlN6WFzl+sCwzNcvapSqd+uHnI9K4ECn9oEpjyWgGRFtT34AUQIxd/
 8zelenHgVXZF3y7GoZOK2+dxa2OoNSssmgt1M1dtKXlrgtizPokNPQIF7ffmtWyp1p8l
 tUOw==
X-Gm-Message-State: APjAAAXEO7WAURWghOc+XuODBgNxLoZQujHojwfAv7j5GAc4oPRHiA66
 G27jPt9DR47XvVBfnuJQJScBKz6skeU=
X-Google-Smtp-Source: APXvYqya85cNVhrTRk5hrvHTprxoKQSzJeX7JiztBOrYZzxOM6SmrCpWFye6j7dlUe8AS2JvM7+nnw==
X-Received: by 2002:a17:902:16f:: with SMTP id
 102mr26931761plb.94.1563191633137; 
 Mon, 15 Jul 2019 04:53:53 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id m20sm5052340pff.79.2019.07.15.04.53.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 04:53:52 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 19:53:42 +0800
Message-Id: <20190715115342.4190-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_045354_663594_C2EF6892 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for Qihoo C301
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Specifications:
- SoC: AR9344
- RAM: 128MB
- Flash: 2 * 16MB (MX25L12845)
- Ethernet: 2 * FE LAN & 1 * FE WAN
- WiFi: 2.4G: AR9344 5G: QCA9882

Flash instruction:
1. Hold reset and power up the router
2. Set your IP to 192.168.1.x
3. Open 192.168.1.1 and upload the generated *factory* firmware

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 package/boot/uboot-envtools/files/ath79       |   3 +
 .../ath79/base-files/etc/board.d/01_leds      |   3 +
 .../ath79/base-files/etc/board.d/02_network   |   9 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
 .../ath79/base-files/etc/init.d/bootcount     |  11 +
 target/linux/ath79/config-4.19                |   1 +
 target/linux/ath79/dts/ar9344_qihoo_c301.dts  | 236 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |  12 +
 9 files changed, 283 insertions(+)
 create mode 100755 target/linux/ath79/base-files/etc/init.d/bootcount
 create mode 100644 target/linux/ath79/dts/ar9344_qihoo_c301.dts

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index 069d7be06b..cc11725242 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -29,6 +29,9 @@ openmesh,om5p-ac-v2|\
 yuncore,a770)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x10000" "0x10000"
 	;;
+qihoo,c301)
+	ubootenv_add_uci_config "/dev/mtd9" "0x0" "0x10000" "0x10000"
+	;;
 esac
 
 config_load ubootenv
diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 46b3e51193..ecfb7b0694 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -104,6 +104,9 @@ pcs,cr3000)
 	ucidef_set_led_switch "lan3" "LAN3" "pcs:blue:lan3" "switch0" "0x10"
 	ucidef_set_led_switch "lan4" "LAN4" "pcs:blue:lan4" "switch0" "0x02"
 	;;
+qihoo,c301)
+	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
+	;;
 tplink,archer-a7-v5|\
 tplink,archer-c7-v4|\
 tplink,archer-c7-v5)
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 85e57c6eb5..f7cac3e300 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -184,6 +184,11 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "3:lan:1" "5:lan:2" "4:wan"
 		;;
+	qihoo,c301)
+		ucidef_set_interface_wan "eth1"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "2:lan" "3:lan"
+		;;
 	rosinson,wr818)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan" "2:lan" "3:wan"
@@ -328,6 +333,10 @@ ath79_setup_macs()
 		lan_mac=$(k2t_get_mac "lan_mac")
 		wan_mac=$(k2t_get_mac "wan_mac")
 		;;
+	qihoo,c301)
+		lan_mac=$(mtd_get_mac_ascii devdata lanmac)
+		wan_mac=$(mtd_get_mac_ascii devdata wanmac)
+		;;
 	rosinson,wr818)
 		wan_mac=$(mtd_get_mac_binary factory 0)
 		lan_mac=$(macaddr_setbit_la "$wan_mac")
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 5a20b84344..f049dbd46a 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -127,6 +127,10 @@ case "$FIRMWARE" in
 		ath9k_eeprom_extract "art" 4096 1088
 		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 1664) 2
 		;;
+	qihoo,c301)
+		ath9k_eeprom_extract "radiocfg" 4096 1088
+		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 2
+		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
 		;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 06a48e2258..149d744eb8 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -138,6 +138,10 @@ case "$FIRMWARE" in
 		ath10kcal_extract "art" 20480 2116
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
+	qihoo,c301)
+		ath10kcal_extract "radiocfg" 20480 2116
+		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
+		;;
 	tplink,archer-a7-v5|\
 	tplink,archer-c2-v3|\
 	tplink,archer-c7-v4|\
diff --git a/target/linux/ath79/base-files/etc/init.d/bootcount b/target/linux/ath79/base-files/etc/init.d/bootcount
new file mode 100755
index 0000000000..b71fbf9a69
--- /dev/null
+++ b/target/linux/ath79/base-files/etc/init.d/bootcount
@@ -0,0 +1,11 @@
+#!/bin/sh /etc/rc.common
+START=99
+
+boot() {
+	case $(board_name) in
+	qihoo,c301)
+		local n=$(fw_printenv activeregion | cut -d = -f 2)
+		fw_setenv "image${n}trynum" 0
+		;;
+	esac
+}
diff --git a/target/linux/ath79/config-4.19 b/target/linux/ath79/config-4.19
index 6cdbb968c3..3843702a38 100644
--- a/target/linux/ath79/config-4.19
+++ b/target/linux/ath79/config-4.19
@@ -167,6 +167,7 @@ CONFIG_MTD_PARSER_CYBERTAN=y
 CONFIG_MTD_PHYSMAP=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_MTD_SPLIT_LZMA_FW=y
+CONFIG_MTD_SPLIT_SEAMA_FW=y
 CONFIG_MTD_SPLIT_TPLINK_FW=y
 CONFIG_MTD_SPLIT_UIMAGE_FW=y
 CONFIG_MTD_TPLINK_PARTS=y
diff --git a/target/linux/ath79/dts/ar9344_qihoo_c301.dts b/target/linux/ath79/dts/ar9344_qihoo_c301.dts
new file mode 100644
index 0000000000..92c4433070
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_qihoo_c301.dts
@@ -0,0 +1,236 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	model = "Qihoo 360 C301";
+	compatible = "qihoo,c301";
+
+	aliases {
+		led-boot = &led_wlan_g;
+		led-failsafe = &led_wlan_o;
+		led-upgrade = &led_wlan_o;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&jtag_disable_pins>;
+
+		led_wlan_g: wlan_g {
+			label = "c301:green:wlan";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		led_wlan_o: wlan_o {
+			label = "c301:orange:wlan";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	reg_eth_led_vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "eth_led_vbus";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		gpio = <&gpio 18 GPIO_ACTIVE_LOW>;
+	};
+
+	reg_usb_vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		regulator-always-on;
+		gpio = <&gpio 19 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&pinmux {
+	pmx_spi_cs1: pinmux_spi_cs1 {
+		pinctrl-single,bits = <0xc 0x07 0xff>;
+	};
+
+	pmx_led_switch: pinmux_led_switch {
+		pinctrl-single,bits = <0x0 0x2b2a2d00 0xffffff00>;
+	};
+};
+
+&ref {
+	clock-frequency = <40000000>;
+};
+
+&uart {
+	status = "okay";
+};
+
+&gpio {
+	status = "okay";
+
+	gpio_ext_lna0 {
+		gpio-hog;
+		gpios = <14 0>;
+		output-high;
+		line-name = "c301:ext:lna0";
+	};
+
+	gpio_ext_lna1 {
+		gpio-hog;
+		gpios = <15 0>;
+		output-high;
+		line-name = "c301:ext:lna1";
+	};
+};
+
+&builtin_switch {
+    pinctrl-names = "default";
+    pinctrl-0 = <&pmx_led_switch>;
+};
+
+&spi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pmx_spi_cs1>;
+	status = "okay";
+
+	num-cs = <2>;
+	cs-gpios= <0>, <0>;
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot: partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			partition@50000 {
+				label = "devdata";
+				reg = <0x50000 0x10000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "devconf";
+				reg = <0x60000 0x10000>;
+				read-only;
+			};
+
+			partition@70000 {
+				compatible = "seama";
+				label = "firmware";
+				reg = <0x70000 0xf60000>;
+			};
+
+			partition@fd0000 {
+				label = "warm_start";
+				reg = <0xfd0000 0x10000>;
+				read-only;
+			};
+
+			partition@fe0000 {
+				label = "action_image_config";
+				reg = <0xfe0000 0x10000>;
+			};
+
+			partition@ff0000 {
+				label = "radiocfg";
+				reg = <0xff0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+
+	flash@1 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <1>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "firmware2";
+				reg = <0x0 0xf00000>;
+			};
+
+			partition@f00000 {
+				label = "privatedata";
+				reg = <0xf00000 0x100000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&usb {
+	status = "okay";
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+
+	wifi@0,0 {
+		compatible = "qcom,ath10k";
+		reg = <0 0 0 0 0>;
+	};
+};
+
+&wmac {
+	status = "okay";
+	qca,no-eeprom;
+};
+
+&eth1 {
+	status = "okay";
+	gmac-config {
+		device = <&gmac>;
+		switch-phy-swap = <1>;
+		switch-only-mode = <1>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+	phy-handle = <&swphy0>;
+};
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 0836751e2a..4662383541 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -728,6 +728,18 @@ define Device/phicomm_k2t
 endef
 TARGET_DEVICES += phicomm_k2t
 
+define Device/qihoo_c301
+  $(Device/seama)
+  ATH_SOC := ar9344
+  DEVICE_VENDOR := Qihoo
+  DEVICE_MODEL := C301
+  DEVICE_PACKAGES := kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-ct uboot-envtools
+  IMAGE_SIZE := 15744k
+  SEAMA_SIGNATURE := wrgac26_qihoo360_360rg
+  SUPPORTED_DEVICES += qihoo-c301
+endef
+TARGET_DEVICES += qihoo_c301
+
 define Device/rosinson_wr818
   ATH_SOC := qca9563
   DEVICE_VENDOR := Rosinson
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
