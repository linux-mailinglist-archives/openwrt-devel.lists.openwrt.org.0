Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7EFED322
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 12:33:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jjpKbwd+vR1N/Ao9h6lIMh9r8pNF2P4oOWU/88ApXiU=; b=EbfibpagCh0/CL
	w+zXbVeKh+wPr2CepaF2uMfd/LP2onHFujcp7DTje5MWqyBhdmvBmfobT6EVLFjZ/rZu2hUdjtD17
	dvI0Lh+S6pEEEKaORVZlo4GlnO67amZjUhky0GFlf/3KsvwSmyZS1WiqMQQtx6lf3nPg+zvnLnJAz
	f9xheXJ12yxhI8nZzXbD4H3dhqq2L5O1cQluRfm+6rYi3xMe9abCRXjFfXMsp/3eO1vl+JOcGw6IY
	Iq2P96PrMVzaLgN6QSBHScJgED7GeAfIYx239lBIVK4rlFf5ANOahjOqMWllUL3u+R2Pc3Q0kjljq
	qqddzLacaNIMi8T/cZ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRE8A-0004Fz-Gy; Sun, 03 Nov 2019 11:33:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRE81-0004Fc-VB
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 11:33:07 +0000
Received: by mail-lf1-x144.google.com with SMTP id q28so10196973lfa.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 03:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XIZBWWE5j5mawpsRzefJl6XFQADdMD4IAcmoqbab1tg=;
 b=I0yX05vm9L/mhVUzitD8sBUm7Pxn/oXuH9v8U8qCLFihd63F/ukbDqj6zqM9kZQLsu
 XyKj44VuIdJgbcA+Qzj3qqmrrPtK2vbHnMyWs1oAM//a4oQdRWgT89IJw5AwhV+NDsQ1
 sjY7q3nsnF2tkpKnMtfiqFjGPQKZMjjGFFcVcWEdqqdN5raLp3PUBkfBqtL12S67qd/o
 eFxRM0nJ8MEsONUk/QdwowbVn5Fqw8zRL2NS4iQcw1ghXcQ9/bmMnzP8cqIb08MJpHbv
 Mqs+J889GF8l+qA+ZGsVs0FYPE4xcYR+s/Kx858AiCNy5qId+RTqawSABQlyz/O0y1c9
 Iauw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XIZBWWE5j5mawpsRzefJl6XFQADdMD4IAcmoqbab1tg=;
 b=mx7GuRKIjT9cI5CKhCwc/eS0BOXXGlvjR2BFcDiVMR/Ci8L4WGmIYdSL/dHZNmYken
 I/fPVSC/7SbIUK23eTjX39tp2t7C/sfD+XcFn8+UEp+ob5Py9JgYoJLHeiZp+Ui0dfbH
 63/qx/tSuhdZnzkWmRSkHkp4FF/TSp3SwfH4HcbXQsBU44qIQDUmBuEuc479JrqCer5R
 MFWIOoWR15Axsvk3rp0V9k9E/60FgE83lsg3/GUh+/dk3WsfalD745bsi0s6BhUzQWN1
 QZ06TIFpL+KJRhy+VjhxTVOiIrXbnwiV7KFQJPg4dX/upFimkTzaqa4CTvLQPvbzDN00
 HUeg==
X-Gm-Message-State: APjAAAWMuqRIqRm1hXnhrPl47zRGCmhkcSNQL0W0VMTLyQlInAPaChkm
 OqHOHQIiD1hPYkCyaG6l1s8a34kn
X-Google-Smtp-Source: APXvYqxoEOpzvSxMVGm9nGpx919MEBLMKqgUgoDUPWoRSgjB2WxQWtVfL0bz4zlzHDclzuehYBLj2Q==
X-Received: by 2002:a19:cc07:: with SMTP id c7mr13467786lfg.107.1572780780235; 
 Sun, 03 Nov 2019 03:33:00 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id a11sm5113102ljp.97.2019.11.03.03.32.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 03:32:59 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xA3BWvMg009822; Sun, 3 Nov 2019 14:32:57 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xA3BWvVY009821;
 Sun, 3 Nov 2019 14:32:57 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  3 Nov 2019 14:32:47 +0300
Message-Id: <20191103113247.9782-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_033306_030079_2D6B3195 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: add D-Link DIR-615 rev. E4
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
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Support ported from ar71xx.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 .../ath79/dts/ar7240_dlink_dir-600-a1.dtsi    | 173 ++++++++++++++++++
 .../ath79/dts/ar7240_dlink_dir-615-e4.dts     |  19 ++
 target/linux/ath79/image/tiny.mk              |  16 ++
 .../ath79/tiny/base-files/etc/board.d/01_leds |   7 +
 .../tiny/base-files/etc/board.d/02_network    |   5 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 6 files changed, 224 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7240_dlink_dir-600-a1.dtsi
 create mode 100644 target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts

diff --git a/target/linux/ath79/dts/ar7240_dlink_dir-600-a1.dtsi b/target/linux/ath79/dts/ar7240_dlink_dir-600-a1.dtsi
new file mode 100644
index 0000000000..e6206f6f42
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_dlink_dir-600-a1.dtsi
@@ -0,0 +1,173 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7240.dtsi"
+
+/ {
+	aliases {
+		led-boot = &power_amber;
+		led-failsafe = &power_amber;
+		led-running = &power_green;
+		led-upgrade = &power_amber;
+		label-mac-device = &eth0;
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
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&switch_led_pins>;
+
+		power_green: power_green {
+			label = "d-link:green:power";
+			gpios = <&gpio 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		power_amber: power_amber {
+			label = "d-link:amber:power";
+			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		wps {
+			label = "d-link:blue:wps";
+			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
+		};
+
+		lan1 {
+			label = "d-link:green:lan1";
+			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
+		};
+
+		lan2 {
+			label = "d-link:green:lan2";
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+		};
+
+		lan3 {
+			label = "d-link:green:lan3";
+			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
+		};
+
+		lan4 {
+			label = "d-link:green:lan4";
+			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
+		};
+
+		wan_amber {
+			label = "d-link:amber:wan";
+			gpios = <&gpio 7 GPIO_ACTIVE_HIGH>;
+		};
+
+		wan_green {
+			label = "d-link:green:wan";
+			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
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
+		spi-max-frequency = <25000000>;
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
+				reg = <0x40000 0x370000>;
+				label = "firmware";
+			};
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
diff --git a/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
new file mode 100644
index 0000000000..7ea6e8a583
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240_dlink_dir-600-a1.dtsi"
+
+/ {
+	model = "D-Link DIR-615 rev. E4";
+	compatible = "dlink,dir-615-e4", "qca,ar7240";
+
+	ath9k-leds {
+		compatible = "gpio-leds";
+
+		wlan {
+			label = "d-link:green:wlan";
+			gpios = <&ath9k 1 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+	};
+};
diff --git a/target/linux/ath79/image/tiny.mk b/target/linux/ath79/image/tiny.mk
index 8f867575af..a4aed65684 100644
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
+  IMAGE_SIZE := 3520k
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
index bb1799c645..80877929f4 100755
--- a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
@@ -15,6 +15,13 @@ buffalo,whr-g301n)
 	ucidef_set_led_switch "lan3" "LAN3" "$boardname:green:lan3" "switch0" "0x08"
 	ucidef_set_led_switch "lan4" "LAN4" "$boardname:green:lan4" "switch0" "0x10"
 	;;
+dlink,dir-615-e4)
+	ucidef_set_led_netdev "wan" "WAN" "d-link:green:wan" "eth0"
+	ucidef_set_led_switch "lan1" "LAN1" "d-link:green:lan1" "switch0" "0x02"
+	ucidef_set_led_switch "lan2" "LAN2" "d-link:green:lan2" "switch0" "0x04"
+	ucidef_set_led_switch "lan3" "LAN3" "d-link:green:lan3" "switch0" "0x08"
+	ucidef_set_led_switch "lan4" "LAN4" "d-link:green:lan4" "switch0" "0x10"
+	;;
 netgear,wnr1000-v2|\
 netgear,wnr2000-v3)
 	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/02_network b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
index 49fccc0b2e..ff12975063 100755
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
@@ -75,6 +76,10 @@ ath79_setup_macs()
 	local board="$1"
 
 	case "$board" in
+	dlink,dir-615-e4)
+		lan_mac=$(mtd_get_mac_ascii "nvram" "lan_mac")
+		wan_mac=$(mtd_get_mac_ascii "nvram" "wan_mac")
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
