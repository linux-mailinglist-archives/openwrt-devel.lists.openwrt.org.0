Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7C28C08C
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 20:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M6ijt+4TctsQ7p5FyE23h3vmG4xfFP69AJnGtmVFrIk=; b=jEdNEnWV/TLKsl
	GmqnwNPTEhs3QkeNjG11bnB6VeGYhqaLxozmp6XKt8M3sfNzLJEk+E27LgNQIQ83cm/nhIn/TbWqC
	I6vpDerYJLs4XT0ZSvUNcZkMbV8ERldlSXHK8qixZqbthTq8+W7CD56oGRKVDiOfZ0gHprXwFOqAZ
	IYKUti2C5Eaeu0ow2btgURSGohSLvVMIhg86rrkYEjM8zO4gI5Z694tM45zgeFJY0/rRhWvnEamf1
	1Vk1zBBrMg96Kyc0Y6gd9jZBUXNHU6AtJL/XqYc3XPnTEGwxeqFPdoVFcY8zLq9v/gKelyG5PCJfs
	k5HRrdIwJnTnD0HBuHFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbUX-0000zZ-4x; Tue, 13 Aug 2019 18:25:53 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbUQ-0000zC-Cl
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 18:25:47 +0000
Received: by mail-lf1-x12c.google.com with SMTP id p197so77390586lfa.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 11:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OHzbhaWavO1rELwNTUSrMjriqQXp8afNkwos1i8ctKk=;
 b=eYWuPVxkAlPmpHK4m8EFRu4C3v0XjnwweNSefn5TpGHlKNOBnquCY5DfcSzCWvt4Y4
 CqzCvyJCjosY7gfeWMONDxSn70WOi6aDXqX9rpuswj3WE9iuRXUWFfSLsc0sI/qID8BS
 JjeSCM0RvYHmTQG2FVa7UUkL4R5r102KLbEB27Hyneo4KUZSKD5s2hrmIAmwfntY2llW
 lxe/K08d1klHkY2Zkjm7jCcNRh9I5Tb0Om2TKMYp6gLDKuKx8+3Cv3i+YrZHrdsM6gsb
 D3pGme670x9Cue/arUHMA8kjQUeTUyjxnMdWLyNUs8ZejgpmqlzVFcOrUGtbxU7DB0K/
 7mUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OHzbhaWavO1rELwNTUSrMjriqQXp8afNkwos1i8ctKk=;
 b=FJy9HIzuiov9tJj36p5vA5W2PzZIQehauAXeCuPcw6a6NtudhCS8Qhhytmwwm4+uwp
 86woix23hevKgk0u3pGsCRz0htTPKit3ArwDAOco6wEMIwxjo7mFdcD+WB+sColbRDTi
 AcgO6c7X1HDkahx3EOCpBWhEFmuYmuEbd+LHA9hLZln24EQsgNp7HF1+4THDYZdZZK61
 wdA9DJtonXWAqBRjvCf2j9JnSKSFWWU4KbpmTT62l/vZXs5Os8TgBwk4ItmXNrXwpmgX
 keVlGwLMGBond13dARt2DY5LYVRypi2vhakD1UJmBG05J4ZuVNgmqXvVhVJkGe7NG0xO
 ZIdA==
X-Gm-Message-State: APjAAAWXUZJqOi69EnM3PiyXrMhVu4FcvWU8vYkBiVQ++zYz4i8yKwCl
 NBGtpVv5gev5dHJzZCjG9cvtqJWu
X-Google-Smtp-Source: APXvYqzrVtZLZaa/gr1d9r9o/L9hhlifmlm0GNmEeiBvvNccN0io+/uD4aNkjzgnJ5r9S8N+69xtlw==
X-Received: by 2002:a19:cbd3:: with SMTP id
 b202mr23324391lfg.185.1565720744556; 
 Tue, 13 Aug 2019 11:25:44 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id d22sm2327023lji.99.2019.08.13.11.25.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 11:25:43 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-8) with ESMTP id x7DIPfi9032322;
 Tue, 13 Aug 2019 21:25:41 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.14.4/Submit) id x7DIPf0E032321;
 Tue, 13 Aug 2019 21:25:41 +0300
Date: Tue, 13 Aug 2019 21:25:41 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
References: <20190813165904.1988-1-fercerpav@gmail.com>
 <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_112546_437184_338B6B3F 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org, 'John Crispin' <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian, thank you for the review indeed.

The factory partition has a MAC that matches printed label at the
location you guessed, thanks for pointing that out.

From: Paul Fertser <fercerpav@gmail.com>
Date: Tue, 13 Aug 2019 18:57:39 +0300
Subject: [PATCH v2] ramips: add support for Xiaomi Mi Wi-Fi Router 3G v2

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

Changes since v1:

- Addressed all Adrian Schmutzl's comments

Gave this version quick runtime testing, everything seems to be fine.

 .../linux/ramips/base-files/etc/board.d/02_network |   7 +
 target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts | 146 +++++++++++++++++++++
 target/linux/ramips/image/mt7621.mk                |  10 ++
 3 files changed, 163 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index ca111c9d4c..3ffc684139 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -464,6 +464,10 @@ ramips_setup_interfaces()
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
@@ -675,6 +679,9 @@ ramips_setup_macs()
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
index 0000000000..a1963d0072
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_xiaomi_mir3g-v2.dts
@@ -0,0 +1,146 @@
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
index d32feb7eab..7d732e3c2e 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -656,6 +656,16 @@ define Device/xiaomi_mir3g
 endef
 TARGET_DEVICES += xiaomi_mir3g
 
+define Device/xiaomi_mir3g-v2
+  MTK_SOC := mt7621
+  IMAGE_SIZE := 14848k
+  DEVICE_VENDOR := Xiaomi
+  DEVICE_MODEL := Mi Router 3G
+  DEVICE_VARIANT := v2
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
