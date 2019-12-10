Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53DB118598
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 11:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0N5fFiKmeRCjsQdecG1qmsuyDsYayoORB13fRG4iRM=; b=PxuxaSJ8XwYCDt
	qn/mxjvrXNQX9HC3JnBrh4KQBfOdwtaVa8ZAxl3widhx7pRbKUNXEITLl9gcI5+rlT8tqeHhHv2Tm
	gW51SKhnr+3RtDu00O/+Aq+je8rhQDWwzO8qdwRdyphG5p53rHqTURrf3yeHT/HZq4wZ/AQcp/+/m
	ubMJYdOerFaW+IC3Vc5/f116APVMLfRTHsYOk+X8keBVJT2ohXr0ig6ganfUprREsB2HLZwQcfYd+
	movZnHISAF1LbkMhFQSkB9zMgv0/kTdPvRgbriPb/MdGEcvce5i2Z1HTPeCJB1KjrA8yY+pZYuOEx
	ccxhMgqr5BgF+EuQf/Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ied8A-00078d-LZ; Tue, 10 Dec 2019 10:52:38 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ied82-000788-So
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 10:52:32 +0000
Received: by mail-lj1-x22c.google.com with SMTP id u17so19333771lja.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Dec 2019 02:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+ygcoh+fCqJShKq+p2nUWXV4Cep1QjDKmIEO4vTvFqY=;
 b=X/fbmvLXLN5h1CCQrElon3aRQw1zFDQrTSVC033aMD+u2oQ6DCbEU9/uSq3d66ibuo
 Rdo/0bVixcZuprBBiGwARZfNSu6TSBv/kgxgcR4roB76M7+YLU3gutqL5FdAIYkqgtnk
 bw2pSp/5G7d9cqa8EkSKkbOGwY31nJx/Z7Lruk7LhZaLdl5C7KPSxRfQW8eFSk8QbWw2
 0UQrQX8yjgqPc6ZZ7avM48BnZ4+zJqxMt9Ha04oC54d2S6ijCQ13DAsAknvy7aJKGdvY
 3Wy7jLYx+i662/kJLDUMYj3aNGntY9z5Pt+45oJRsQOps4jSSkULIrncZVTB5Yga2h9h
 bTug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ygcoh+fCqJShKq+p2nUWXV4Cep1QjDKmIEO4vTvFqY=;
 b=dzrDY3Nd0bdmWWuvdDQOpmIdqqtj4aDSWbDMNfc1J/8vhA8XtUitP3q3UA0N7jSf3X
 euDG0Lh+e5eUnWe23FzXX5h41DPZq7PdnZCwpBKGc6kpia58uDjhmSwfjq0HjzgzvEVN
 P6NiFTiiJ8ibH151b9OJwNMp6zEgqBDkdO6lVud3i3BMBli9HX1GuHhnv7N2k5CmRsMo
 WnxwMBrXtw5EwtE/d7+S4Ggy46g1TTW0N/oyJU7uNHkTWPqAYHIf5H3wWgHdp810O8Al
 JOxk4ZqHgO3pT9KmhPpMZGyyQpxuecEq0n3zVDMgRwl0VnkZJPpflmaPqKx46ll+nl8H
 yoCg==
X-Gm-Message-State: APjAAAWLWVWOydPYEQNCAcQpDYBe2uYrlaMOQyz3NcaqMejceqv98aRT
 /7jiYyf+1zBK+vs+sIgbLD5Kwm8+
X-Google-Smtp-Source: APXvYqz3hlEMyR40obrxf4jNWxQUpDQ+qfZAhkIPFcTmWbiy11aL+OW+IHZXdqCqkM8ELhVUuECMEA==
X-Received: by 2002:a05:651c:208:: with SMTP id
 y8mr20247412ljn.36.1575975148173; 
 Tue, 10 Dec 2019 02:52:28 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id f26sm1498439ljn.104.2019.12.10.02.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 02:52:26 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBAAqOET028672; Tue, 10 Dec 2019 13:52:24 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBAAqO5n028671;
 Tue, 10 Dec 2019 13:52:24 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Dec 2019 13:52:02 +0300
Message-Id: <20191210105202.28628-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <003901d5ad4b$46efc9d0$d4cf5d70$@adrianschmutzler.de>
References: <003901d5ad4b$46efc9d0$d4cf5d70$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_025230_961980_9F814F15 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 IP_LINK_PLUS           URI: Dotted-decimal IP address followed by CGI
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3] ath79: add D-Link DIR-615 E4
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

Specifications:

- FCC ID: KA2IR615E3
- SoC: MIPS32 24K 400 MHz Atheros AR7240
- RAM: 32 MiB DDR SDRAM ESMT M13S2561616A-5T
- Flash: 4 MiB NOR SPI Macronix MX25L3208E
- Wireless: AR9287 2.4 GHz 802.11n 2T2R, 2x RP-SMA connectors
- Ethernet: 5x 100BASE-TX Fast Ethernet
- LEDs: 9x GPIO, 1x ath9k
- Buttons: 2x tactile switches
- UART: 3.3 V, 115200 8n1
- USB: simple hardware modification required, 1x USB 1.1 Full Speed


Partitioning notes:

Vendor firmware (based on CameoAP99) defines two additional partitions:
"mac" @0x3b0000, size 0x10000 and "lp" @0x3c0000, size 0x30000.

The "mac" partition stores LAN MAC address and hardware board name.
However, the vendor firmware uses addresses from "nvram" partition, and
the board name is used only for informational purposes in the Web
interface (included in the pages' header), not affecting the firmware
image check.

The "lp" partition is supposed to contain a "language pack" (which can
be used to add an additional language support to the Web interface) and
is flashed separately, using the vendor firmware upgrade page.

Since these partitions are absolutely useless for OpenWrt and
overwriting them doesn't prevent downgrading to obsolete vendor
firmware, this patch appends the valueable space to "firmware".


Installation instructions:

- Upgrade from OpenWrt ar71xx with "sysupgrade -f -n"
or
- Upload as a firmware update via the vendor Web-interface
or
- Connect UART and use "loady" to upload and run OpenWrt initramfs
  image, then sysupgrade from it (TFTP client doesn't work)
or
- Before powering up hold "reset" button and keep it pressed for about
  15 seconds after, then access fail safe Web server on 192.168.0.1 (the
  old uIP TCP/IP protocol stack is not compatible with modern Linux, the
  kernel, so you'll need to use some other OS to do this). Can be
  performed without a Web-browser too:
    curl http://192.168.0.1/cgi/index \
      -F Send=@openwrt-ath79-tiny-dlink_dir-615-e4-squashfs-factory.bin

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
Changes for v3:

    - Add specifications and installation instructions to commit message
    - Remove useless comments from DTS, other minor changes
    - Change LEDs back to using "d-link" name
    - Move ath9k LED to a dedicated section

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

 .../ath79/dts/ar7240_dlink_dir-615-e4.dts     | 170 ++++++++++++++++++
 target/linux/ath79/image/tiny.mk              |  16 ++
 .../ath79/tiny/base-files/etc/board.d/01_leds |   7 +
 .../tiny/base-files/etc/board.d/02_network    |   6 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
 5 files changed, 203 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts

diff --git a/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
new file mode 100644
index 0000000000..537a99b8db
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_dlink_dir-615-e4.dts
@@ -0,0 +1,170 @@
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
+		led-boot = &led_power_amber;
+		led-failsafe = &led_power_amber;
+		led-running = &led_power_green;
+		led-upgrade = &led_power_amber;
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
+		led_power_green: power_green {
+			label = "d-link:green:power";
+			gpios = <&gpio 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_power_amber: power_amber {
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
+
+&spi {
+	status = "okay";
+
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
+			partition@0 {
+				reg = <0x0 0x30000>;
+				label = "u-boot";
+				read-only;
+			};
+
+			partition@30000 {
+				reg = <0x30000 0x10000>;
+				label = "nvram";
+				read-only;
+			};
+
+			partition@40000 {
+				compatible = "denx,uimage";
+				reg = <0x40000 0x3b0000>;
+				label = "firmware";
+			};
+
+			partition@3f0000 {
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
+};
+
+&eth1 {
+	status = "okay";
+};
+
+&pcie {
+	status = "okay";
+
+	ath9k: wifi@0,0 {
+		compatible = "pci168c,002b";
+		reg = <0x0000 0 0 0 0>;
+		qca,no-eeprom;
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
index 03f135f0b0..199ad94bec 100755
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
index b2616456e4..b325c7cf8b 100755
--- a/target/linux/ath79/tiny/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
@@ -13,6 +13,7 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth1" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
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
