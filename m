Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E57BC5D3
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 12:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+G0ukU3YJNF1+Hs4MIJkcnYARLb/Esz+gt4nuV9x5A=; b=G8qTYHhayDF+ND
	VniL9ndimXxRVeqfw29ftSJtjg5kMFBSfs5HR0ln1AC9xa27ZkuIUBib9it99TNYXT/BRBE2bQ1wr
	+T4mjj6epDajYsop0qedjoCqWsGTvyrG5Ts8jZGk8yzDDolDwzWxKq0FlFoLA04NCarxIrlEVqUKw
	iwV4YcXbbaG/zuNAOY0FSbnTtOy0KwUYWya3rsSlahRVcrEZdU2fzK0CjJbYI6xqzO9MWaMT4jKBN
	q7H4c8/yNzLXyGAgb6BzQMDayN1r67XCzwwXXl9c+dTTC9l1C8jiyGRCSvJBfOulfKcmlozC1g+y5
	Md3BMUVlBq2qsGGkR3+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiMC-0008Re-Dr; Tue, 24 Sep 2019 10:47:44 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiLn-00081P-7n
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 10:47:20 +0000
Received: by mail-wm1-x32d.google.com with SMTP id v17so1489258wml.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 03:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CmIIgZtacVpIp3orqHx8kKbk2/jfMK8onKmcRKGbqSo=;
 b=oV0SfWQZzn0L06spCAcpn8dmqcK5qTu+XiZfab9S52xVAOL2z6nzxm17Ilo4+lc5Fe
 ujWJSZFEY50xGMqzZQRYdREqGjcAZz24NObPXDvtWIGqbBweB3uQBwOqkDvAGfyTe5WQ
 IM1rePS5AVzFA2QgXI0ofR6pRAWyqmLSs6Xz3Jfv1ItewxkUWBXe3PwSM/ip4+R9TIJy
 wI5lJ10qbOYBRO5U8IhqKLYFwJUUVdBIbfSMprJKJ4aEqyGAl8OYjJIWgV8YbrSUk9O9
 Hx+H0GPaFH/Ujrj2rQZOS5yT2Nygu+0NP/SoKvtXmPGOFQV8idmjsjePhCWUAb6qcfrm
 DxUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CmIIgZtacVpIp3orqHx8kKbk2/jfMK8onKmcRKGbqSo=;
 b=Mpjm2a2Wi0xz58JwbuZ3XC68wuypW+dUYjVX2F309oIIZ07YwK7TEhkVJdUioM84N/
 kvzzZw4QUsp+zPZ8/vIiqAay1IpgfLMmr5/U5qsBiRtDYh3F+vsy6LbuKxaKoTCGXdKd
 WRim9SIJvXStH6C2w6KeC1kDREbo1RQnPRpVZqd4Z3FQtzD27kmWrZFPYvuDN5gJwBpY
 XrapJFhNuMxv0zoCxW92+Y8bh1Y7rKnVhp9vqUx+6VcWYPzDj3RaAE7bcH1/X2XdXMT9
 rBfnBxU0idTPlKHsZtT+58qVWGbvDAbF/wxA0mEKuOf2UkoHY0TpXm8NpMDSctfkl/rX
 LPZA==
X-Gm-Message-State: APjAAAU609pxJ1a9UlzfzhqUHgxH5x3kM6TYPReyi4o/OI3ud8Ieos0V
 o7o1HXPGWDPI8SSVeNN+sIRZrkn5K9c=
X-Google-Smtp-Source: APXvYqxna2MNr1TEGQ8d3g2vG3N9BUB/YP4rIITFsgPa/QTLOHhCldkl7SybHSn/uPkZRJGKuOmFbQ==
X-Received: by 2002:a1c:9e0b:: with SMTP id h11mr2067845wme.144.1569322037241; 
 Tue, 24 Sep 2019 03:47:17 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id f8sm1681490wmb.37.2019.09.24.03.47.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 03:47:16 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org, dev@kresin.me, monkeh@monkeh.net,
 musashino.open@gmail.com, ynezz@true.cz
Date: Tue, 24 Sep 2019 12:47:12 +0200
Message-Id: <20190924104712.19812-3-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924104712.19812-1-kristian.evensen@gmail.com>
References: <20190924104712.19812-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_034719_277991_65FEB88D 
X-CRM114-Status: GOOD (  16.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32d listed in]
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
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT WE1026-H
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

v1->v2:
* Rebased on top of master.
* Read correct WAN address from flash (thanks Adrian Schmutzler).

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 .../ramips/base-files/etc/board.d/01_leds     |  5 +++
 .../ramips/base-files/etc/board.d/02_network  |  6 ++-
 .../dts/mt7620a_zbtlink_we1026-h-32m.dts      | 14 +++++++
 .../ramips/dts/mt7620a_zbtlink_we1026-h.dtsi  | 42 +++++++++++++++++++
 target/linux/ramips/image/mt7620.mk           | 12 ++++++
 5 files changed, 78 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 46202b4117..3e12c2a947 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -461,6 +461,11 @@ zbtlink,zbt-we826-16m|\
 zbtlink,zbt-we826-32m)
 	set_wifi_led "zbt-we826:green:wifi"
 	;;
+zbtlink,we1026-h-32m)
+	set_wifi_led "we1026-h:green:wifi"
+	ucidef_set_led_switch "lan" "lan" "we1026-h:green:lan" "switch0" "0x8"
+	ucidef_set_led_switch "wan" "wan" "we1026-h:green:wan" "switch0" "0x10"
+	;;
 zbtlink,zbt-we1226)
 	set_wifi_led "$boardname:green:wlan"
 	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x01"
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 63644331e5..d94cd5fa98 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -272,7 +272,8 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
 		;;
-	buffalo,wcr-1166ds)
+	buffalo,wcr-1166ds|\
+	zbtlink,we1026-h-32m)
 		ucidef_add_switch "switch0" \
 			"3:lan" "4:wan" "6@eth0"
 		;;
@@ -721,6 +722,9 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_binary factory 0xe006)
 		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
 		;;
+	zbtlink,we1026-h-32m)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
+		;;
 	*)
 		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
 		;;
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts
new file mode 100644
index 0000000000..ca62ccfc84
--- /dev/null
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7620a_zbtlink_we1026-h.dtsi"
+
+/ {
+	compatible = "zbtlink,we1026-h-32m", "zbtlink,we1026-h",
+		     "zbtlink,we1026","ralink,mt7620a-soc";
+	model = "ZBT WE1026-H (32M)";
+};
+
+&firmware {
+	reg = <0x50000 0x1fb0000>;
+};
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
new file mode 100644
index 0000000000..fed79c2809
--- /dev/null
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
@@ -0,0 +1,42 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7620a_zbtlink_we1026.dtsi"
+
+/ {
+	compatible = "zbtlink,we1026-h", "zbtlink,we1026",
+		     "ralink,mt7620a-soc";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+		label-mac-device = &wmac;
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
+
+};
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index 320d4abd1f..3011e08af7 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -973,6 +973,18 @@ define Device/zbtlink_we1026-5g-16m
 endef
 TARGET_DEVICES += zbtlink_we1026-5g-16m
 
+define Device/zbtlink_we1026-h-32m
+  MTK_SOC := mt7620a
+  DTS := WE1026-H-32M
+  IMAGE_SIZE := 32448k
+  DEVICE_VENDOR := Zbtlink
+  DEVICE_MODEL := ZBT-WE1026-H
+  DEVICE_VARIANT := 32M
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-sdhci-mt7620 \
+		     kmod-ledtrig-netdev
+endef
+TARGET_DEVICES += zbtlink_we1026-h-32m
+
 define Device/zbtlink_zbt-ape522ii
   MTK_SOC := mt7620a
   IMAGE_SIZE := 15872k
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
