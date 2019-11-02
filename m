Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC42AECF1F
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 15:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fcT93qwXnU4BFDmbzRU8VWI9hHOUI4gfsbCGJiISMVA=; b=MpsJt6Jfxod4V5
	xoTFNOc4X2OEL2chVPT4RhhCo2/4AcHS6exCKrIwD+xRfi5zKd2MGqYl0H9nkRspsEBIJwDVdjbLS
	E8sj3ndQAD58brv0jsrWmG4mr7RlYGAnSBd+QI0d750qzxU4lYTIWg+PuAtgByb3bKppcQTujz2pV
	5dFxK+DRtvLVRXJlyIhsTKSoKm7+XmWY0nuU6J73L8HAVlvG81I8Xge7OSbc8KWDD2Wkin9CwsAb2
	o5Dj8IN00vbwVjvPLyH6ny2J5KwMnuaACAnm4C7YYgjtVGnixui3QPDMB05VD9P3jQ0ZpCQsWPgCI
	RLj0JdqUlXod0yvPIHkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQuFf-0006vw-4j; Sat, 02 Nov 2019 14:19:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQuF3-0006V6-N4
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 14:19:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id m17so2939331wmi.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 07:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B+HIrHSmmYJD4LYlvKTnLZbyA6GuvLuw19OzCHSf96w=;
 b=CYdFP68v4u2HM6nZUP8ecjAftkdDzniOpkxCvfa4oX7WgcAtL6BZ7KAjkOPcNY4Lly
 A+gSJ+BX23MuuaU9l6IIeMi+6ruuMo/ibgt54lRRCTtw/SwMwaNvI3plW6v9uJLmoGW4
 Tu8/lZkl/4+3+NhWnGcf/jbW5w5EIbDz62Km9gfhGrLMUQcCY8TRyCmB9GvQaKuNILbu
 4NOjE5oQv+UYHrSHA7gIoEzx3S3RyqYp7P/OyNl49iyqkNIWDq1sPzwmHp6HYVUyLE+K
 1EIA0vt7Ckf6FDoAXSVNtKPSUd1NeposdOVA+vRMGIy/hv2c/PA9+wr4eNOy1cPAJs7O
 vjbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B+HIrHSmmYJD4LYlvKTnLZbyA6GuvLuw19OzCHSf96w=;
 b=Ld+9Q0hHFHYzBA5OsQNMlMkDKdITSaZ91t2MsL/PXrnM60jC5gJyuGctsQzZJFQyBR
 +IkMasU0nRVeYAGoqUUxO8JDXXNbqCwr/No0ejXrQhME4nLZ6xEfGdKVrl5zkPdnzdxx
 YAwgns21QMofxu+dPz9vm67VGALLah9oTucnPUINLnKsmEPOqMLA98zmS87Otv2E43AR
 OReCozZGu7DyNJELw6SZ75SxciqQTUw2W/PBa0MjpFYt7Mn2X0SU7OxZ+2oz/q9i/JaZ
 6y5gU+Poxg52pFE6H+6zNKulpsVVzRZq9sBE/HOiceivJenQkfsqFl1HArJgRRIdlWqg
 eurQ==
X-Gm-Message-State: APjAAAVN4EdA1+3MFLjrTvDb6qIIVQVogHgGN8r3sy6ggLvkUb8ex1oI
 88iP+K8pIl6RNU7rSav+oZO7YfOM
X-Google-Smtp-Source: APXvYqx4Wxqmtzw6f+wTUxxHIObrKWIqdOviF2p58a2Y2ZHq67OtEEDNRkw9MfWVcqUrg0asGKTOUg==
X-Received: by 2002:a1c:3c43:: with SMTP id j64mr15248387wma.13.1572704339819; 
 Sat, 02 Nov 2019 07:18:59 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id l14sm11382010wrr.37.2019.11.02.07.18.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:18:59 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  2 Nov 2019 15:18:55 +0100
Message-Id: <20191102141855.22192-3-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191102141855.22192-1-kristian.evensen@gmail.com>
References: <20191102141855.22192-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_071901_748888_0B38A197 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT WE1026-H
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit adds support for the ZBT WE1026-H, an outdoor AP with
support for adding an internal LTE modem. The detailed specs are:

* CPU: MT7620A
* 2x 10/100Mbps Ethernet (LAN port has passive PoE support).
* 16/32 MB Flash.
* 128/256 MB RAM.
* 1x USB 2.0 port.
* 1x mini-PCIe slot (only USB2.0 bus).
* 1x SIM slot (standard size).
* 1x 2.4Ghz WIFI (rt2800).
* 1x button.
* 6x LEDS (4 GPIO-controlled).
* 1x micro-SD reader.

The following have been tested and working:
- Ethernet switch
- Wifi
- Mini-PCIe slot + SIM slot
- USB port
- microSD slot
- sysupgrade
- reset button

Installation and recovery:

In order to install OpenWRT the first time or ito recover the router,
you can use the web-based recovery system. Keep the reset button pressed
during boot and access 192.168.1.1 in your browser when your machine
obtains an IP address. Upload the firmware to start the recovery
process.

Notes:

* The LED labeled "USB" is used as the power LED. When binding this LED
to a usbport, the LED is switched on all the time due to the presence of
an internal hub. Thus, it does not really signal any USB-information.

* I only have the 32MB version and have only added support for this
device. However, the files are structured so that adding support for the
16MB version should be easy.

* Only the LAN port is accessible from the outside of the casing and LEDs
are not visible.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
v2->v3:
* Rebase on top of master.
* Added label mac (thanks Adrian Schmutzler).
* Fix consistent naming (thanks Adrian Schmutzler).

v1->v2:
* Rebased on top of master.
* Read correct WAN address from flash (thanks Adrian Schmutzler).
---
 .../ramips/base-files/etc/board.d/01_leds     |  5 +++
 .../ramips/base-files/etc/board.d/02_network  |  6 ++-
 .../dts/mt7620a_zbtlink_zbt-we1026-h-32m.dts  | 14 +++++++
 .../dts/mt7620a_zbtlink_zbt-we1026-h.dtsi     | 40 +++++++++++++++++++
 target/linux/ramips/image/mt7620.mk           | 11 +++++
 5 files changed, 74 insertions(+), 2 deletions(-)
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 662bf6b6cd..7b2310bc6f 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -461,6 +461,11 @@ zbtlink,zbt-we1026-5g-16m)
 	ucidef_set_led_netdev "lan" "LAN" "we1026-5g:green:lan" "eth0"
 	set_wifi_led "we1026-5g:green:wifi"
 	;;
+zbtlink,zbt-we1026-h-32m)
+	set_wifi_led "we1026-h:green:wifi"
+	ucidef_set_led_switch "lan" "lan" "we1026-h:green:lan" "switch0" "0x8"
+	ucidef_set_led_switch "wan" "wan" "we1026-h:green:wan" "switch0" "0x10"
+	;;
 zbtlink,zbt-we1226)
 	set_wifi_led "$boardname:green:wlan"
 	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x01"
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 373651e64e..b2bfc91ebe 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -275,7 +275,8 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
 		;;
-	buffalo,wcr-1166ds)
+	buffalo,wcr-1166ds|\
+	zbtlink,zbt-we1026-h-32m)
 		ucidef_add_switch "switch0" \
 			"3:lan" "4:wan" "6@eth0"
 		;;
@@ -594,7 +595,8 @@ ramips_setup_macs()
 	zyxel,keenetic-start)
 		# This empty case has to be kept for devices without any MAC address adjustments
 		;;
-	cudy,wr1000)
+	cudy,wr1000|\
+	zbtlink,zbt-we1026-h-32m)
 		wan_mac=$(mtd_get_mac_binary factory 0x2e)
 		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
 		;;
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h-32m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h-32m.dts
new file mode 100644
index 0000000000..87430a9a6f
--- /dev/null
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h-32m.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7620a_zbtlink_zbt-we1026-h.dtsi"
+
+/ {
+	compatible = "zbtlink,zbt-we1026-h-32m", "zbtlink,zbt-we1026-h",
+		     "zbtlink,zbt-we1026","ralink,mt7620a-soc";
+	model = "Zbtlink ZBT-WE1026-H (32M)";
+};
+
+&firmware {
+	reg = <0x50000 0x1fb0000>;
+};
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi
new file mode 100644
index 0000000000..0aa41dc5da
--- /dev/null
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-h.dtsi
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7620a_zbtlink_zbt-we1026.dtsi"
+
+/ {
+	compatible = "zbtlink,zbt-we1026-h", "zbtlink,zbt-we1026",
+		     "ralink,mt7620a-soc";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: usb {
+			label = "we1026-h:green:usb";
+			gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
+		};
+
+		lan {
+			label = "we1026-h:green:lan";
+			gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+		};
+
+		wan {
+			label = "we1026-h:green:wan";
+			gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
+		};
+
+		wifi {
+			label = "we1026-h:green:wifi";
+			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index 95de1c0e46..aab5f86e83 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -984,6 +984,17 @@ define Device/zbtlink_zbt-we1026-5g-16m
 endef
 TARGET_DEVICES += zbtlink_zbt-we1026-5g-16m
 
+define Device/zbtlink_zbt-we1026-h-32m
+  MTK_SOC := mt7620a
+  IMAGE_SIZE := 32448k
+  DEVICE_VENDOR := Zbtlink
+  DEVICE_MODEL := ZBT-WE1026-H
+  DEVICE_VARIANT := 32M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-sdhci-mt7620 \
+		     kmod-ledtrig-netdev
+endef
+TARGET_DEVICES += zbtlink_zbt-we1026-h-32m
+
 define Device/zbtlink_zbt-we2026
   MTK_SOC := mt7620n
   IMAGE_SIZE := 7552k
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
