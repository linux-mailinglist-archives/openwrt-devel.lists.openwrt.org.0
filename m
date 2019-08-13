Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C508BF17
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 18:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gEtvlHscfJ93NRe3U4IQqOKSc0sgZFBfEGZpjajGhfQ=; b=Us9DYS8p76iIdQ
	f14jvFQCuwRmk1zLvtXNhQVQl4U6z2xehtkle/NwOFar/KV6MidlgXdIaowHf4rMliedVj5J/v+5X
	wae6U3gquNmwm1sDPlJWtYRh17OqyBSztf4DvkPDL1QTokarCuw1drc6cTX7kIy81GN8F8bj6WKTR
	2asfHopNQZ5ZjxImfL/MAV1fYDtygPCUIXW7R1I9UrTt1jS2rdwIh5xqRbqCOJ+j8GeC8155MQub5
	WVzqiaggNuWItSu1TkSG7myUgMBlT+AWupna+Dz36Le0faaW5mEo5YALPQMamxZGgfdH5hlvlDndI
	LIElHNYS/bZ7oQqwPx2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxa94-0006db-El; Tue, 13 Aug 2019 16:59:38 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxa8k-0006ct-W4
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 16:59:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id c9so77199093lfh.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 09:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Xu5jqD6m6BhCJFS5o78lOK1/LyYT3dRhTYhA6iTfRME=;
 b=U/XXHhUSyC3HlGHaMTwY3VAfKS0hqxNJb6nQpNvfSbz2/iq+Z9nPXsrXdnr0uv54X7
 jnN0Bmfw8Lm0MZXe1h2L8Gs2Tf2VMvWMkwkkbgQjDvrVatC1Vp9KN0d2E8G65WNNEV/R
 O6lnUe4Q7FeU3RxV8qjGVI33544MloF7XcdUnp7CrQbWH9NrW16Q8RpagUTzBEaAWaD2
 aEWFiAswSC7+8QANjxkwI+OQO0o+04av3u1u+pscwzqNdDujL/4CGx8638fD9Vir/z4S
 MCUsBksWu8UJj4vzepmXJoD+zdixliW4DE4uQ/uVqzg4J9jrDcP8/Jdd0UB6CCF0xZve
 QsFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Xu5jqD6m6BhCJFS5o78lOK1/LyYT3dRhTYhA6iTfRME=;
 b=txOj6hODAYBgchONKi2kfWu4JDMaSX0vmC1bjl2nldz6y1hoahyAaPlV9lsllxOHNm
 pJZo+w14xgq7OkMopyuPmp4bmpjUCs3IGxYk98ZY/ns2DhnLEFNOBQct2z1YF/RCcHIv
 hZItmkGOfTfZTVUopvgb7SBiD8RKamLs9R9QoEzlj5ItMHUJg3PxCmy8Edak0zqbz/r5
 yQcmf7agNYPMfDtArLuzOK/Q0tuS/FP1GS67ti6LqfnDSWmO08UtEeiQzNGr44EE43ny
 L5fHaLOYTUndk3B0JWqRK3UWYt8EU+I7ygHIkL2d5ickT2vbyk+fHJUeFvAVWBbgoz0R
 gFqQ==
X-Gm-Message-State: APjAAAXysd7KmVv5rWxP+my1lpj8wn1miwoRckjMcMNq7qlhWr35G02S
 o40uwqoNItG20cb52Hg7RWc=
X-Google-Smtp-Source: APXvYqwnOvYR81d/siL1wbiSWNYBxueXemelG80lGmN77VAotczu6zjDXS652A0nIVGcaQa8FCOOCg==
X-Received: by 2002:a19:6d02:: with SMTP id i2mr22449757lfc.191.1565715556031; 
 Tue, 13 Aug 2019 09:59:16 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id c17sm1183525lfj.65.2019.08.13.09.59.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 09:59:15 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x7DGxDto002029;
 Tue, 13 Aug 2019 19:59:13 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x7DGxCu6002028;
 Tue, 13 Aug 2019 19:59:12 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: John Crispin <john@phrozen.org>
Date: Tue, 13 Aug 2019 19:59:04 +0300
Message-Id: <20190813165904.1988-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_095919_039423_2C65F544 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi Wi-Fi
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
Cc: Paul Fertser <fercerpav@gmail.com>, openwrt-devel@lists.openwrt.org
MIME-Version: 1.0
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

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 .../linux/ramips/base-files/etc/board.d/02_network |   4 +
 target/linux/ramips/dts/mt7621_xiaomi_mir3gv2.dts  | 147 +++++++++++++++++++++
 target/linux/ramips/image/mt7621.mk                |  10 ++
 3 files changed, 161 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_xiaomi_mir3gv2.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index ca111c9d4c..7280da50fc 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -464,6 +464,10 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"2:lan:2" "3:lan:1" "1:wan" "6t@eth0"
 		;;
+	xiaomi,mir3gv2)
+		ucidef_add_switch "switch0" \
+			"2:lan:2" "3:lan:1" "4:wan" "6t@eth0"
+		;;
 	xiaomi,mir3p)
 		ucidef_add_switch "switch0" \
 			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
diff --git a/target/linux/ramips/dts/mt7621_xiaomi_mir3gv2.dts b/target/linux/ramips/dts/mt7621_xiaomi_mir3gv2.dts
new file mode 100644
index 0000000000..81f6d20ae8
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_xiaomi_mir3gv2.dts
@@ -0,0 +1,147 @@
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "xiaomi,mir3gv2", "mediatek,mt7621-soc";
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
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
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
index d32feb7eab..a0c37f0bfe 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -656,6 +656,16 @@ define Device/xiaomi_mir3g
 endef
 TARGET_DEVICES += xiaomi_mir3g
 
+define Device/xiaomi_mir3gv2
+  MTK_SOC := mt7621
+  IMAGE_SIZE := 14848k
+  DEVICE_VENDOR := Xiaomi
+  DEVICE_MODEL := Mi router 3G v2
+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 wpad-basic
+  SUPPORTED_DEVICES += mir3gv2
+endef
+TARGET_DEVICES += xiaomi_mir3gv2
+
 define Device/xiaomi_mir3p
   MTK_SOC := mt7621
   BLOCKSIZE := 128k
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
