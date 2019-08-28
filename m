Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E419FDFA
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 11:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLuQtaM/Su/DyqMivjbQaDB1TkIbaAyQN79TId1V7cM=; b=KfLGPvq2CBPmMG
	cNtARBCUd5Kqg4pcQmAbh9TMAFDmja02rp+Xu8s5ojpQav+D7R68JlMKPTV35sSo/lGunoQRiVq5J
	LtAos1n1qqExtMTLWVIBp4Hkkdua3wGwglb5A/iK6ON/tx0tG4bu08qMKItyEOx7aLD3Xt8o1rQUK
	LjISEjC+9T/9oNanIDpGAjx9aC+4m530exo9Tc1ObU/TDRSKZ4rT+v1hWblF+XhPZDU4rR7XkIBk4
	KYb5IIocw3g4iNQQ64IIpD7cx6pW94ybjLhj7phtTp0XmOHUb1P4hCvy5y9KydSYFZXZ2d/8g7q+e
	XsAmzrVRi9q2pXfDsjNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tz5-00029B-1j; Wed, 28 Aug 2019 09:11:19 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tyY-00025l-Bm
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 09:10:48 +0000
Received: by mail-lf1-x142.google.com with SMTP id q27so1487847lfo.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 02:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sPOzhXHFikZwJcheCx0ogfzS/HvJjQlVbgbe5nNLlQk=;
 b=aGehB7jKSIrG11BFmm1eVyg4O8eYD3CwoxnThVdFsx09uyWsgBYYDWZmh2CITHL28v
 jTQs640TlH6M/YZCCFhM2JQBfCtv3O0hat//cZSRcXd6QEtdR2+A7CW8tfj3A4kOEthe
 VvGH8RntJld2Nt7SAtoMPa049SsUoBvCaTvBA5/zoxzfsmn2OCgYuViC374cOuIKfQjn
 wvteOQR2DHD7nfksMpEQEtGKR4dCrrHXTI3RX1mT6gFVYTqhaa6UaPx2nXT3vzu4Bdva
 RfGTsYNa7azzCp0GhFKKTj3VOcv/k1TlKsCRYCUxhfy0PrkYXHZsBTb1915Jgu+98EeW
 qebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sPOzhXHFikZwJcheCx0ogfzS/HvJjQlVbgbe5nNLlQk=;
 b=Z0cDbHDA5oGbACjgWi6qY+KE0Bbejl0+IgWo9xNhreLlEl+4Z0GcfDBhfpr9WZ7ddy
 L76oI/Vf6Jchk41Q+SXhZD8SOARM6TpTU9lasWVyZnQT3eHULsk8sQv8WTNZ6wDGYnXw
 CsTzjRZjgfEwLC6lYqnNYcuYzSrrFVfA6BvGP55KDyxih9ePDmRgsgqyXqykmPf94IkS
 FKkMb8p5eJfgDSJEnwavp8eCXx18em1IyGNX98E6/Z0Z+tffTqjD/Fsjm2m3d3qkMDjy
 kJLP4NneDpSikI6jF5deZrJInmdh/wrq8SQvpvCbsM7iEduwrLw6FJI1zXaSu52W/A4Y
 biWA==
X-Gm-Message-State: APjAAAWiDakVcgZ5gxR2WTJmm/p3D6hdfOnzs/5qo/Cg8glCuZm3Gjd7
 SFSme0Zpli9IoLslve56Q7Y=
X-Google-Smtp-Source: APXvYqyQNU0jjZwbXd2toZbiL5Oev8vEtI+GWt3hP8+F7Wvpzi3Fw+orUXbYseWoFi9O9DpG/NVkQg==
X-Received: by 2002:a19:cbc4:: with SMTP id b187mr1914123lfg.27.1566983444192; 
 Wed, 28 Aug 2019 02:10:44 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id b7sm802824lfp.27.2019.08.28.02.10.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 28 Aug 2019 02:10:43 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x7S9AfOT014737;
 Wed, 28 Aug 2019 12:10:41 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x7S9AeNV014736;
 Wed, 28 Aug 2019 12:10:40 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: John Crispin <john@phrozen.org>
Date: Wed, 28 Aug 2019 12:09:24 +0300
Message-Id: <20190828090924.14695-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_021046_412519_3572CDF7 
X-CRM114-Status: GOOD (  17.87  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi Wi-Fi
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

 
 .../linux/ramips/base-files/etc/board.d/02_network |   7 +
 target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts | 147 +++++++++++++++++++++
 target/linux/ramips/image/mt7621.mk                |  12 ++
 3 files changed, 166 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 27f85d7458..2b166dd944 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -469,6 +469,10 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"2:lan:2" "3:lan:1" "1:wan" "6t@eth0"
 		;;
+	xiaomi,mir3g-v2)
+		ucidef_add_switch "switch0" \
+			"2:lan:2" "3:lan:1" "4:wan" "6t@eth0"
+		;;
 	xiaomi,mir3p)
 		ucidef_add_switch "switch0" \
 			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
@@ -683,6 +687,9 @@ ramips_setup_macs()
 	xiaomi,mir3p)
 		lan_mac=$(mtd_get_mac_binary factory 0xe006)
 		;;
+	xiaomi,mir3g-v2)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
+		;;
 	xiaomi,miwifi-mini)
 		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
 		;;
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
index 5dc8efe7c5..10aa92a88c 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -665,6 +665,18 @@ define Device/xiaomi_mir3g
 endef
 TARGET_DEVICES += xiaomi_mir3g
 
+define Device/xiaomi_mir3g-v2
+  MTK_SOC := mt7621
+  IMAGE_SIZE := 14848k
+  DEVICE_VENDOR := Xiaomi
+  DEVICE_MODEL := Mi Router 3G
+  DEVICE_VARIANT := v2
+  DEVICE_ALT0_VENDOR := Xiaomi
+  DEVICE_ALT0_MODEL := Mi Router 4A Gigabit Edition
+  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 wpad-basic
+endef
+TARGET_DEVICES += xiaomi_mir3g-v2
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
