Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9ED23FFA
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 20:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jzptE+Bsl8NJ5YIDh5ezDaKbzqqyq+2AdngBwbZi1XA=; b=hPFHgvZI/qd3aY
	aQMhNHO+5f4xfUt5WGVp2oH4JEpDKxFqyRYAqV6zidWhafzBJLx1HZtZErjCw98ViY1vttKkLph7t
	jU/hVSlNIyfPVXwvWD+auxzaE/soHwcgv8zKcLCa+dpMbOU47/dsqdQMkxCWHkcraeRHIhlGc83nj
	74dVOGBrhpbqgbunFUOLERShTB25XnlSsFVFmhMT8hthTr0qIJY6nuCq6AibBIsXbUi9OEHZ10KXn
	kMZSU7XZ+boK5q0vjF7egIzmXLyvJ1ATVITynrnO9uPJX1NyrqM6Lg6Ep65eStnlLIUPC0t+89tCU
	o2HPEcR5RKlon+bKrzZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmhM-0006l5-6z; Mon, 20 May 2019 18:07:44 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmhF-0006kI-6F
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 18:07:38 +0000
Received: by mail-wr1-x442.google.com with SMTP id g12so15366274wro.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 May 2019 11:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rp+ywAO+Bnbk6Bz5mDQcWfCvjStGcXjFhopC7+AutBI=;
 b=s97sfqLtAXx3bu7Efi4Cww5NLogbD1NQ8+pkEjPvU/vYptteysoZexPteoJ6dK4Q5N
 8JBuI9S+c2i3a2QXGt/LUfdlQ9Ui3uXJRLYXEIsfobG4ntPvBj72ypd8m1eF0IcXxy5F
 wS3qlBJ0zvV/UAD7nW9u5AEENXLxxzp0vM1uQlkrXYBeVK8ht6FaUfqmN2nUrjEmcQkO
 /WMLMOv680cYQwwiMvbizmxAFMlW7OXq3EXdE1XsueqymD6PGCe5N5beMM6NZBGydCJb
 5HD8/SZWrgQaV4q+maXTHErOVoBz2qMLxkhRHG3wKTjDNGHl4WmfIJn9yUsI8j/yMynD
 xedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rp+ywAO+Bnbk6Bz5mDQcWfCvjStGcXjFhopC7+AutBI=;
 b=XKXiI8xtASXM4cefzWlKk57NQKzwxfsy9EHlga99/rUQKis9ON7rImZuR52TscTsQt
 +4aAc0ytwZCZP+ZA+BrSj3k0gJ1wkli6nweGagbnQA1KUESqCQqCYmYfgpPPOf/n3Bml
 EFvYrNLa4R4eZbEgtFUayRkUPo+hCcLyw48OC418q4MHqC2kHBXcZDghvqxm+DmFbQwo
 QCizTIcAV/id6uiuzIDHxCB6jwE/6bR4AZ13E0w5zX/ccWprmtgCto6hzUnlpBs5NNwy
 6w3lUx59m63JVHHe1duxSHthWB8CwX9qLuAO4A+rXUOx9D3TK0WNZYNIAmaZE9Ym6YIY
 1GrQ==
X-Gm-Message-State: APjAAAWMLFC2CM8EXJ5qVp8k43SW9/4/ESykD2MyreaiuwCk7Elt7H83
 pANELHWddzfyLbSFvqKGlS3M3PKL
X-Google-Smtp-Source: APXvYqygN69qWui+Jd0Z1rtwlOvAIfDremLv7iFMBndgh2IsH2B4dProWXFfkJrZPb5CmJS/dN76Dg==
X-Received: by 2002:adf:9c0a:: with SMTP id f10mr6170659wrc.248.1558375654859; 
 Mon, 20 May 2019 11:07:34 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id f20sm169880wmh.22.2019.05.20.11.07.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:07:34 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 20:07:32 +0200
Message-Id: <20190520180732.8846-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_110737_256342_2F7914F8 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: Add support for ZBT-WD323
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ZBT-WD323 is a dual-LTE router based on AR9344. The detailed
specifications are:

* AR9344 560MHz/450MHz/225MHz (CPU/DDR/AHN).
* 128 MB RAM
* 16MB of flash(SPI-NOR, 22MHz)
* 1x 2.4GHz wifi (Atheros AR9340)
* 3x 10/100Mbos Ethernet (AR8229)
* 1x USB2.0 port
* 2x miniPCIe-slots (USB2.0 only)
* 2x SIM slots (standard size)
* 4x LEDs (1 gpio controlled)
* 1x reset button
* 1x 10 pin terminal block (RS232, RS485, 4x GPIO)
* 2x CP210x UART bridge controllers (used for RS232 and RS485)
* 1x 2 pin 5mm industrial interface (input voltage 12V~36V)
* 1x DC jack
* 1x RTC (PCF8563)

Tested:
- Ethernet switch
- Wifi
- USB port
- MiniPCIe-slots (+ SIM slots)
- Sysupgrade
- Reset button
- RS232

Intallation and recovery:

The board ships with OpenWRT, but sysupgrade does not work as a
different firmware format than what is expected is generated.  The
easiest way to install (and recover) the router, is to use the
web-interface provided by the bootloader (Breed).

While the interface is in Chinese, it is easy to use. First, in order to
access the interface, you need to hold down the reset button for around
five seconds. Then, go to 192.168.1.1 in your browser. Click on the
second item in the list on the left to access the recovery page. The
second item on the next page is where you select the firmware.  Select
the menu item containing "Atheros SDK" and "16MB" in the dropdown close
to the buttom, and click on the button at the bottom to start
installation/recovery.

Notes:
* RS232 is available on /dev/ttyUSB0 and RS485 on /dev/ttyUSB1

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 .../ath79/base-files/etc/board.d/01_leds      |   3 +
 .../ath79/base-files/etc/board.d/02_network   |   1 +
 .../base-files/etc/board.d/03_gpio_switches   |   6 +
 .../ath79/dts/ar9344_zbtlink_zbt-wd323.dts    | 148 ++++++++++++++++++
 target/linux/ath79/image/generic.mk           |   9 ++
 5 files changed, 167 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 69e26a4773..48a5f2394b 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -210,6 +210,9 @@ yuncore,a770)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
 	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x10"
 	;;
+zbtlink,zbt-wd323)
+	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wifi" "phy0tpt"
+	;;
 esac
 
 board_config_flush
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 7b89274ccf..df32e58baf 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -257,6 +257,7 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "5:lan" "1:wan"
 		;;
+	zbtlink,zbt-wd323|\
 	xiaomi,mi-router-4q)
 		ucidef_set_interface_wan "eth0"
 		ucidef_add_switch "switch0" \
diff --git a/target/linux/ath79/base-files/etc/board.d/03_gpio_switches b/target/linux/ath79/base-files/etc/board.d/03_gpio_switches
index 6a51a79790..1c8a46df19 100755
--- a/target/linux/ath79/base-files/etc/board.d/03_gpio_switches
+++ b/target/linux/ath79/base-files/etc/board.d/03_gpio_switches
@@ -29,6 +29,12 @@ ubnt,nanostation-ac)
 ubnt,acb-isp)
 	ucidef_add_gpio_switch "poe_passthrough" "PoE Passthrough" "11"
 	;;
+zbtlink,zbt-wd323)
+	ucidef_add_gpio_switch "io0" "IO#0" "0"
+	ucidef_add_gpio_switch "io1" "IO#1" "1"
+	ucidef_add_gpio_switch "io2" "IO#2" "2"
+	ucidef_add_gpio_switch "io14" "IO#14" "14"
+	;;
 esac
 
 board_config_flush
diff --git a/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
new file mode 100644
index 0000000000..df67783952
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
@@ -0,0 +1,148 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar9344.dtsi"
+
+/ {
+	model = "ZBT WD323";
+	compatible = "zbtlink,zbt-wd323", "qca,ar9334";
+
+	aliases {
+		serial0 = &uart;
+	};
+
+	keys {
+		compatible = "gpio-keys-polled";
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	i2c {
+		compatible = "i2c-gpio";
+		gpios = <&gpio 19 GPIO_ACTIVE_LOW
+			 &gpio 15 GPIO_ACTIVE_LOW
+			>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&enable_gpio15 &enable_gpio19>;
+
+		pcf8563: pcf8563@51 {
+			compatible = "nxp,pcf8563";
+			reg = <0x51>;
+			#clock-cells = <0>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		wifi {
+			label = "zbt-wd323:green:wifi";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&wdt {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&enable_gpio21>;
+};
+
+&uart {
+	status = "okay";
+};
+
+&gpio {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&jtag_disable_pins>;
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
+&eth0 {
+	status = "okay";
+	phy-handle = <&swphy4>;
+	mtd-mac-address = <&art 0x0>;
+};
+
+&eth1 {
+	status = "okay";
+	mtd-mac-address = <&art 0x6>;
+};
+
+&spi {
+	num-chipselects = <1>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <22000000>;
+		reg = <0>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot@0 {
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			uboot-env@40000 {
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			firmware@50000 {
+				compatible = "denx,uimage";
+				reg = <0x50000 0xfa0000>;
+			};
+
+			art: art@ff0000 {
+				reg = <0xff0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+	mtd-mac-address = <&art 0x1002>;
+};
+
+&pinmux {
+	enable_gpio15: pinmux_enable_gpio15 {
+		pinctrl-single,bits = <0xc 0x0 0xff000000>;
+	};
+
+	enable_gpio19: pinmux_enable_gpio19 {
+		pinctrl-single,bits = <0x10 0x0 0xff000000>;
+	};
+
+	enable_gpio21: pinmux_enable_gpio21 {
+		pinctrl-single,bits = <0x14 0x0 0xff00>;
+	};
+};
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index dd5843d436..ea4867106a 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -690,3 +690,12 @@ define Device/yuncore_a770
   IMAGE_SIZE := 16000k
 endef
 TARGET_DEVICES += yuncore_a770
+
+define Device/zbtlink_zbt-wd323
+  ATH_SOC := ar9344
+  DEVICE_TITLE := ZBT WD323
+  IMAGE_SIZE := 16000k
+  DEVICE_PACKAGES := kmod-usb2 kmod-i2c-core kmod-i2c-gpio kmod-rtc-pcf8563 \
+		     kmod-usb-serial kmod-usb-serial-cp210x uqmi
+endef
+TARGET_DEVICES += zbtlink_zbt-wd323
-- 
2.19.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
