Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4141EF5F74
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 14:54:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvedPqqaNbjULA6StWOIn8lsLAaTYvFkGKkAFEVmwjE=; b=D5+8Y5SXgOHHIJ
	pt5dMHa78j1+NfWZ0V6Pbb62IFN5U+2qloTnIeWSPPqEWCoWdpZ/G/jSJke08FXAnmM6USaZKrdVW
	S3raGo49rl/WkXLILdu4h8F+uK2WTt1PWrouMpNb6WZ4yOdxIjGBxID/iGeqlMDQob6mFWN36xql3
	lc7Ve8M49CC16T+xLvG65nu97NCvJ9UJFmZjwspCHHGRIfEE77dq8g4y9vgB7jhrGPNNJI2SFKfFY
	ClIcCx8FS0QzKJx55ja4jPP999uxNziOg/c68QAtEZJlqkXkD/nVgcUibm6B3tzDir18kDORSEAMf
	FqxgB3lCbyrIBFhcr9vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTRCO-0004Cu-2o; Sat, 09 Nov 2019 13:54:44 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRCB-0004CR-R3
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 13:54:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id q2so9127155ljg.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 05:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E5XOpLElUTrY0z1H29FBj0TxhQtcyZFCDedrDgPWmMU=;
 b=hSQijL4DR/jnDrwKIJy3dTiLlo/VTn4Ca65go2b0RDivx5T9Rda7nL7kd36IEplRti
 GIIDVwbSu3K/72WixFRwUZOzFmYB0DBx70Xmwc6CPGsmjN1NXO9vXcEQ9Jd9ZqPk5nIu
 rN8eF+aBawLDqpYPvAe9voSzx2nL2a8A14NGzj9D57njPxsoEroE0QQVtsVrxqDeZCGU
 MC1v7ZTLzQx5eAiXCFPMrZsM3iZRKRKh0Vtr5ah4Zj40o9/DLhAG8j+9iX/07pQ0Jsnn
 awdZeAFBdLClZNg029zVpPbU4MYYcDXEKRNkQrmsI1AM4L569dMdEjKy8n6C6hTzVfr2
 OJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E5XOpLElUTrY0z1H29FBj0TxhQtcyZFCDedrDgPWmMU=;
 b=JosY4GE3iOJcCX3NKEh/vNLYTiBDr3CzMMIloN4IWIuHNPTpGr37TFPQoB3YmTAO+8
 ewxAggtMk36oAEkqB8nRvpFJzDKoe0nnfjtnhMTjnG+OGr19La/Dc4/OQhMe9+IsulUg
 f629a4Qh9dbxKf5TJvxsEIDkY79uVPSdGu5y+Z0Y81hcJ47pdcpEL4U5DdHAOt6VwH6m
 xT8xB/f2Sts6D96bnJZzD+lCcvau1vW10cDXd9G37h2s6ePybLniMFZFL/OX2HHM1mn6
 vzJ+vwUW9V4qcovH+MUHmNbgeuRS2xYvotIB8fWX0tGHxxjkfeYHmdDfGBVnap/5H/Gd
 Lx6Q==
X-Gm-Message-State: APjAAAVV7xADfYUZHpCzX1pOxyFEk9YF2iP7R2Z7+jFZKAjMhRKG07w3
 rn4UrbD25+Zz79Jeatqqbwj3SSzd
X-Google-Smtp-Source: APXvYqxW4jN8rh6efoUK2agOLvkmGOupTHdssCPwWmYnTmLzBmNgNPHaJx7FL1raQXPkQn+oKG+U8g==
X-Received: by 2002:a2e:970a:: with SMTP id r10mr10491194lji.142.1573307668899; 
 Sat, 09 Nov 2019 05:54:28 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id y3sm8374394ljn.81.2019.11.09.05.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 05:54:28 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA9DsP2H025062; Sat, 9 Nov 2019 16:54:25 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA9DsPB5025061;
 Sat, 9 Nov 2019 16:54:25 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  9 Nov 2019 16:53:20 +0300
Message-Id: <20191109135320.25020-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103113247.9782-1-fercerpav@gmail.com>
References: <20191103113247.9782-1-fercerpav@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_055431_902156_E02F3F03 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Cc: Paul Fertser <fercerpav@gmail.com>,
 Adrian Schmutzler <mail@adrianschmutzler.de>, tmo26@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Support ported from ar71xx.

Tested on hardware: flashing OpenWrt, then downgrading to vendor
firmware, then using regular vendor web interface to upgrade to OpenWrt
(using -factory.bin image). All MACs in vendor firmware were correct,
the only visible quirk was meaningless "Hardware Version:" field in the
web interface page header (one can append "mac" partition contents to
the vendor firmware dump prior to flashing if that's too worrying).

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
Changes for v2:

    - Remove "rev." from board name
    - Use a single DTS file; whoever has hardware to port this to the other
      similar devices can easily unsplit it later
    - Fix label_mac handling (as it's not available in DT)
    - Rename gpio_leds to leds DTS section
    - Use boardname for LEDs and merge the setup code with buffalo,whr-g301n
    - Use 33 MHz for SPI clock (max frequency for READ command acconding to the
      chip datasheet)
    - Make "firmware" partition 0x3b0000 (3776 kiB) long, covering "mac" and "lp"

 .../ath79/dts/ar7240_dlink_dir-615-e4.dts     | 188 ++++++++++++++++++
 target/linux/ath79/image/tiny.mk              |  16 ++
 .../ath79/tiny/base-files/etc/board.d/01_leds |   3 +-
 .../tiny/base-files/etc/board.d/02_network    |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 5 files changed, 216 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts

diff --git a/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
new file mode 100644
index 0000000000..64ee2eb938
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7240.dtsi"
+
+/ {
+	model = "D-Link DIR-615 E4";
+	compatible = "dlink,dir-615-e4", "qca,ar7240";
+
+	aliases {
+		led-boot = &power_amber;
+		led-failsafe = &power_amber;
+		led-running = &power_green;
+		led-upgrade = &power_amber;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		wps {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&switch_led_pins>;
+
+		power_green: power_green {
+			label = "dir-615-e4:green:power";
+			gpios = <&gpio 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		power_amber: power_amber {
+			label = "dir-615-e4:amber:power";
+			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		wps {
+			label = "dir-615-e4:blue:wps";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1 {
+			label = "dir-615-e4:green:lan1";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2 {
+			label = "dir-615-e4:green:lan2";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3 {
+			label = "dir-615-e4:green:lan3";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4 {
+			label = "dir-615-e4:green:lan4";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "dir-615-e4:amber:wan";
+			gpios = <&gpio 7 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan_green {
+			label = "dir-615-e4:green:wan";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan {
+			label = "dir-615-e4:green:wlan";
+			gpios = <&ath9k 1 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+};
+
+&spi {
+	status = "okay";
+	num-cs = <1>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <33000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot: partition@0 {
+				reg = <0x0 0x30000>;
+				label = "u-boot";
+				read-only;
+			};
+
+			nvram: partition@30000 {
+				reg = <0x30000 0x10000>;
+				label = "nvram";
+				read-only;
+			};
+
+			firmware: partition@40000 {
+				compatible = "denx,uimage";
+				reg = <0x40000 0x3b0000>;
+				label = "firmware";
+			};
+
+			/*
+			These two partitions are defined by CameoAP99 layout
+			but not needed for vendor firmware: MAC address is taken
+			from "nvram", language pack can be flashed separately.
+
+			mac: partition@3b0000 {
+				reg = <0x3b0000 0x10000>;
+				label = "mac";
+				read-only;
+			};
+
+			lp: partition@3c0000 {
+				reg = <0x3c0000 0x30000>;
+				label = "lp";
+				read-only;
+			};
+			*/
+
+			art: partition@3f0000 {
+				reg = <0x3f0000 0x10000>;
+				label = "art";
+				read-only;
+			};
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	/* ethernet MAC is stored in nvram */
+};
+
+&eth1 {
+	status = "okay";
+
+	/* ethernet MAC is stored in nvram */
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,002b";
+		reg = <0x0000 0 0 0 0>;
+		qca,no-eeprom;
+		/* LAN MAC is supposed to be used for wifi */
+		#gpio-cells = <2>;
+		gpio-controller;
+	};
+};
+
+&pinmux {
+	switch_led_pins: pinmux_switch_led_pins {
+		pinctrl-single,bits = <0x0 0x0 0xf8>;
+	};
+};
+
+&uart {
+	status = "okay";
+};
diff --git a/target/linux/ath79/image/tiny.mk b/target/linux/ath79/image/tiny.mk
index 8f867575af..5f6adeac86 100644
--- a/target/linux/ath79/image/tiny.mk
+++ b/target/linux/ath79/image/tiny.mk
@@ -13,6 +13,22 @@ define Device/buffalo_whr-g301n
 endef
 TARGET_DEVICES += buffalo_whr-g301n
 
+define Device/dlink_dir-615-e4
+  ATH_SOC := ar7240
+  DEVICE_VENDOR := D-Link
+  DEVICE_MODEL := DIR-615
+  DEVICE_VARIANT := E4
+  IMAGE_SIZE := 3776k
+  FACTORY_IMAGE_SIZE := 3456k
+  IMAGES += factory.bin
+  IMAGE/default := append-kernel | append-rootfs | pad-rootfs
+  IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | check-size $$$$(IMAGE_SIZE)
+  IMAGE/factory.bin := $$(IMAGE/default) | check-size $$$$(FACTORY_IMAGE_SIZE) | \
+    pad-to $$$$(FACTORY_IMAGE_SIZE) | append-string "AP99-AR7240-RT-091105-05"
+  SUPPORTED_DEVICES += dir-615-e4
+endef
+TARGET_DEVICES += dlink_dir-615-e4
+
 define Device/pqi_air-pen
   ATH_SOC := ar9330
   DEVICE_VENDOR := PQI
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
index bb1799c645..29ab7a0473 100755
--- a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
@@ -8,7 +8,8 @@ board=$(board_name)
 boardname="${board##*,}"
 
 case "$board" in
-buffalo,whr-g301n)
+buffalo,whr-g301n|\
+dlink,dir-615-e4)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
 	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x02"
 	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x04"
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/02_network b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
index 49fccc0b2e..5d0657fa43 100755
--- a/target/linux/ath79/tiny/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
@@ -35,6 +35,7 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
 		;;
+	dlink,dir-615-e4|\
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
@@ -75,6 +76,11 @@ ath79_setup_macs()
 	local board="$1"
 
 	case "$board" in
+	dlink,dir-615-e4)
+		lan_mac=$(mtd_get_mac_ascii "nvram" "lan_mac")
+		wan_mac=$(mtd_get_mac_ascii "nvram" "wan_mac")
+		label_mac=$wan_mac
+		;;
 	tplink,tl-wr941-v2|\
 	tplink,tl-wr941n-v7-cn)
 		base_mac=$(mtd_get_mac_binary u-boot 0x1fc00)
diff --git a/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 3da95cc161..5952a40195 100644
--- a/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -14,6 +14,10 @@ case "$FIRMWARE" in
 	tplink,tl-wr941-v4)
 		caldata_extract "art" 0x1000 0xeb8
 		;;
+	dlink,dir-615-e4)
+		caldata_extract "art" 0x1000 0x1000
+		ath9k_patch_mac_crc $(mtd_get_mac_ascii "nvram" "lan_mac") 0x10c
+		;;
 	netgear,wnr1000-v2|\
 	netgear,wnr2000-v3|\
 	netgear,wnr612-v2|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
