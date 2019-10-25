Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5434DE486F
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 12:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TxOvue5FvzpeehupynWb99NKUDzieuD0fxuw/Gdp3I=; b=eAxaEYisI+0ADx
	e/ER/NWDW7K6lU7RDYoabLzNGJGfxkNqwii57yfr6IiqAIORrdw1oKWkFrP7lKIsSdZ8oTe6AZbuf
	Ocq0jyOMnS4MD/eNkLmkFbf1eIM31fdOHTuzWRRMhjIRQe6uIeGPOmumnBId/9mQNyccDskpUei/w
	yAMLouv5k6ZkpgpAjmUx4jy0iF6RnI5sm+6qjxptdlgSBuietDeOhWfjMf/M6xnAxg/oJ09lso6jm
	PvyVp5LRVhoVi5h3enq0JEL5QuBiK4q2gR7lCoTh50hxZBj5l0PSXJlOlFUsbCwgYwA7RGUwnWMUJ
	1bp4u8uOAi70UEoZKWSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwgW-000873-KS; Fri, 25 Oct 2019 10:19:08 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwgP-00085d-BT
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 10:19:03 +0000
Received: by mail-lj1-x241.google.com with SMTP id f5so2062490ljg.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 03:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R3WcQjyrx+p9HQ2jYbOTo1h1OIBnPfSxF7sy+f1PfSY=;
 b=Umi980W7+Wtpui/NCdmXV2OCUYge6DlBChR52To82aY9gyuV8oq1TExUdkelCwiriF
 hXVlaNndr9lm8+bM4oKfRjNT26NDFt2lZA1I03anOns+e2wmccKxjWc3m+VenGFao1VZ
 qrngspu+JA/cCEuUEVXq3wbXh1HQjE5ldx68vvoW7nFA/MfGNk8zLvhQNh+/IdME+Hgm
 mCsMgxtwRa8k0K3WftPFMAAtQy8biF3p6bnKXE4yv6rhC9emnaluPOuexxkGQS4OrR9P
 RiOnhrrDfu3OzIehYp1bXEmvCX8jef1W5+B6IfYFWYcvCikPDxfpwGq35d66zYWVbVKs
 cPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R3WcQjyrx+p9HQ2jYbOTo1h1OIBnPfSxF7sy+f1PfSY=;
 b=fotHqZeMoFQ637pc9A7PDYoAgkgI8QA/wBzRr/OOYLRO6CKLbMElMQrN63l6clLFqU
 KaWNpM3NZCWTKSHrQ1DrEvSDHN3wjuzPD6UjvdLD1SB6dPeYM/+J5J1GD4t6sVTyRVsH
 PjSwqb3hFrotGqCqhWLHznLk2aLjPGdiMxVDQahnprZWq8o6hIAye2PUmNaNSsK0w+hr
 vAuffbuoGjJHY8L8BFGoovxfmd7pzpl8nlivV8kwCgE8VZn/Y/MqQWF8hXkVKIOcR4z1
 MUADRgEKD8GOp+aN4eq33X6086auyh99JvY4iEcRobtKf/GXOdDAXKpvIvASyokPHDx0
 O53A==
X-Gm-Message-State: APjAAAXkRxkR4+oT0kxrKAMnJhDUtb45T19Ol/yj0NPqRFb5BiEA7nPN
 k37moUS4SdREf57Puzz+r60=
X-Google-Smtp-Source: APXvYqwt55SgYdjlpbD1Qj09JG1ZVTO6PaVbgzTdTpRHBtY2TxbvF+Cra9qnx1yfOXyLrLnSaH7nxw==
X-Received: by 2002:a2e:9d8d:: with SMTP id c13mr741774ljj.220.1571998738995; 
 Fri, 25 Oct 2019 03:18:58 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id p18sm629384lfh.24.2019.10.25.03.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 03:18:58 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 x9PAIuJN019183; Fri, 25 Oct 2019 13:18:56 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id x9PAItrR019182;
 Fri, 25 Oct 2019 13:18:55 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: John Crispin <john@phrozen.org>
Date: Fri, 25 Oct 2019 13:18:43 +0300
Message-Id: <20191025101843.19141-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <9d0579ba-ba78-9c77-0ba8-5370baaf9eef@phrozen.org>
References: <9d0579ba-ba78-9c77-0ba8-5370baaf9eef@phrozen.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_031901_416428_2D51CFF3 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v4] ramips: add support for Xiaomi Mi Wi-Fi
 Router 3G v2
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
Cc: Paul Fertser <fercerpav@gmail.com>, openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

- CMIIT ID: 2019AP2581
- SoC:      MediaTek MT7621
- Flash:    16MiB NOR SPI (GigaDevice GD25Q128B)
- RAM:      128MiB DDR3 (ESMT M15T1G1664A)
- Serial:   As marked on PCB, 3V3 logic, baudrate is 115200, 8n1
- Ethernet: 3x 10/100/1000 Mbps (switched, 2xLAN + WAN)
- WIFI0:    MT7603E 2.4GHz 802.11b/g/n
- WIFI1:    MT7612E 5GHz 802.11ac
- Antennas: 4x external (2 per radio), non-detachable
- LEDs:     Programmable "power" LED (two-coloured, yellow/blue)
            Non-programmable "internet" LED (shows WAN activity)
- Buttons:  Reset

INSTALLATION:

Bootloader won't accept any serial input unless "boot_wait" u-boot
environment variable is changed to "on". Vendor firmware (looks like
an illegal OpenWrt fork) won't accept any serial input unless
"uart_en" is set to "1". Tricks to force u-boot to use default
environment do not help as it's restricted in the same way.

With bootloader unlocked the easiest way would be to TFTP the
sysupgrade image or to sysupgrade after loading an initramfs one.

For porting the flash contents were changed externally with an SPI
programmer (after lifting Vcc flash IC pin away from the PCB).

Forum thread [0] indicates that this device is identical to "Xiaomi Mi
Router 4A Gigabit Edition".

[0] https://forum.openwrt.org/t/xiaomi-mi-router-4a-gigabit-edition-r4ag-r4a-gigabit-fully-supported-but-requires-overwriting-spi-flash-with-programmer/36685

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
Changes for v2:

    - Addressed all Adrian Schmutzl's comments

Changes for v3:

    - Add SPDX license header
    - Use new ALT variables to support R4AG model name

Changes for v4:

    - Merge switch config with cudy,wr1000 (Adrian Schmutzler)
    - Add label_mac (Roger Pueyo Centelles)
    - Use DEVICE_ALT0_MODEL for R4A GE (Roger Pueyo Centelles)

 .../ramips/base-files/etc/board.d/02_network  |   7 +-
 .../ramips/dts/mt7621_xiaomi_mir3g-v2.dts     | 147 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  13 ++
 3 files changed, 166 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 3c73a63aae..480726a870 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -297,7 +297,8 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"4:lan" "6@eth0"
 		;;
-	cudy,wr1000)
+	cudy,wr1000|\
+	xiaomi,mir3g-v2)
 		ucidef_add_switch "switch0" \
 			"2:lan:2" "3:lan:1" "4:wan" "6@eth0"
 		;;
@@ -720,6 +721,10 @@ ramips_setup_macs()
 	xiaomi,mir3g)
 		lan_mac=$(mtd_get_mac_binary factory 0xe006)
 		;;
+	xiaomi,mir3g-v2)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
+		label_mac=$wan_mac
+		;;
 	xiaomi,mir3p)
 		lan_mac=$(mtd_get_mac_binary factory 0xe006)
 		label_mac=$lan_mac
diff --git a/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts b/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts
new file mode 100644
index 0000000000..58da88a862
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts
@@ -0,0 +1,147 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "xiaomi,mir3g-v2", "mediatek,mt7621-soc";
+	model = "Xiaomi Mi Router 3G v2";
+
+	aliases {
+		led-boot = &led_status_yellow;
+		led-failsafe = &led_status_yellow;
+		led-running = &led_status_blue;
+		led-upgrade = &led_status_yellow;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_status_blue: status_blue {
+			label = "mir3gv2:blue:status";
+			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
+		};
+
+		led_status_yellow: status_yellow {
+			label = "mir3gv2:yellow:status";
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	button {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
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
+		spi-max-frequency = <80000000>;
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
+			partition@40000 {
+				label = "Bdata";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@50000 {
+				label = "factory";
+				reg = <0x50000 0x10000>;
+				read-only;
+			};
+
+			partition@60000 {
+				label = "crash";
+				reg = <0x60000 0x10000>;
+				read-only;
+			};
+
+			partition@70000 {
+				label = "cfg_bak";
+				reg = <0x70000 0x10000>;
+				read-only;
+			};
+
+			partition@80000 {
+				label = "overlay";
+				reg = <0x80000 0x100000>;
+				read-only;
+			};
+
+			firmware: partition@180000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x180000 0xe80000>;
+			};
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		compatible = "pci14c3,7662";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+	};
+};
+
+&pcie1 {
+	wifi@0,0 {
+		compatible = "pci14c3,7603";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+		ieee80211-freq-limit = <2400000 2500000>;
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0xe000>;
+	mediatek,portmap = "lllwl";
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "jtag", "uart2", "uart3", "wdt";
+			ralink,function = "gpio";
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 60d0131dc6..09d3b1d866 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -763,6 +763,19 @@ define Device/xiaomi_mir3g
 endef
 TARGET_DEVICES += xiaomi_mir3g
 
+define Device/xiaomi_mir3g-v2
+  MTK_SOC := mt7621
+  IMAGE_SIZE := 14848k
+  DEVICE_VENDOR := Xiaomi
+  DEVICE_MODEL := Mi Router 3G
+  DEVICE_VARIANT := v2
+  DEVICE_ALT0_VENDOR := Xiaomi
+  DEVICE_ALT0_MODEL := Mi Router 4A
+  DEVICE_ALT0_VARIANT := Gigabit Edition
+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 wpad-basic
+endef
+TARGET_DEVICES += xiaomi_mir3g-v2
+
 define Device/xiaomi_mir3p
   MTK_SOC := mt7621
   BLOCKSIZE := 128k
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
