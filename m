Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708E54FAF2
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 11:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/x3Qq6uQ2orqxBry/2RYKAI6Atunrxk69Fu78mkojE=; b=dVKQQsVCQ0HLGQ
	s3Ynrrc558m5sfSqpvLBYVfSRN7WT0oI+GK74ZZocJHjcvVDXIlOmUBXdihjSGZZkzVopZiHTtPfX
	Mi7LghZXAFuKA6vho5ppqH43FUtjdsRwJNKHWY6AnUoyc1L5b0sy70rtvxwbpUYNOB6jf2jMJbSD8
	dU6uqGSa96YXSTN8tJ3yfhp93k7XNCxWzjv2fxIErhGKUr7lita3un/aqq06gfag1tRohgk+nTiVR
	CP6ipnZ5ZLeA43vtBnDOzIo9hOOFNSqsHx/HnUtq38CUpugBrEAIyjxdjl+Ahsv/yQ/BEOKMUVFlX
	rzYsgvtjNhKoqiTc3p/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heyl8-0003OJ-0T; Sun, 23 Jun 2019 09:26:02 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heyk6-0001ii-O0
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 09:25:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so10612083wre.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 23 Jun 2019 02:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ndYLyBmslustHiMGS6m0yYTgwjwcP5LSd9SGM/QgT2Q=;
 b=L6BRJmlhpJKnpAT0vPaEj2CO6JIXLTQy/A2IDJc5Hr0GTAP2gVH+DNcyozfTcqmP8c
 u4VnW5uSxr7vv6N0AldEpPm3jZ/FKkUhSanufMCua+MMbRZQaDLmVWXCVdicNxkeZZkS
 Qvr2Q91fHy/WWBaJWpguxrZuHRCc1YQuCvz57+39bAzKy8AGucFrsyR4ZgQ0cX1TBxa6
 3OkR6dQy0fPgkEBRiab7jFUnDyAhGQy6gcAa+zOP7/pbWO8JrSM1C9cS37q54/KtzrT2
 8z3dVzbGFS+qOCCDCTOkVH5a3svs+MMQO3hR9IBpJYEifkNTwenkRT+T7CHt0I8b+IVS
 lSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ndYLyBmslustHiMGS6m0yYTgwjwcP5LSd9SGM/QgT2Q=;
 b=ZmaRMG8RMDLdPnMDzONB5l9j6t6gPX36pNld3C3mEtIYZn7DK5QkeMerfPEd4HwS46
 pXxyv+0Nvc4U4OPmLQtazyZNPSW3N+OjAS+Ybi7cnsjx94r9nULxsvOkIjCEl50FBq0n
 Ce+Y4nAQURx2vJFfmcbzg01igmgm4mIsxjSWbv+EmtCS8xWZB7M45RNFFMxz40MRBeUG
 m6uIqNnHr6LnZCCDtNiAStQ8ZvTFBbH5tG+DALey+2LfzuF1Yy7q4dfk+uGOGx8ZcA8H
 a/vZqid3+5QbBjPFdVHXiKaFz73WWVr1HsIiMuHDpIQj9Qdh/kTY5Tv6dkxsOwjWW/dm
 /c0Q==
X-Gm-Message-State: APjAAAXfLbmkHZKrIQB1Dm91ldmBaVbC5tCZPL4zW/voQjG+GWzJLxdA
 XlpKx50a9+8bKF9jyrbQtQQ6yKnv
X-Google-Smtp-Source: APXvYqwAijw6528B3aZvQc0nD2qLUIHlZ9gJENRAfZHa8GGCVkrqFePpMSi13y6lEXePG6C1q9Vx4A==
X-Received: by 2002:a5d:5303:: with SMTP id e3mr13143106wrv.239.1561281896850; 
 Sun, 23 Jun 2019 02:24:56 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id w7sm3388292wmc.46.2019.06.23.02.24.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 02:24:56 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Jun 2019 11:24:48 +0200
Message-Id: <20190623092448.27880-3-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190623092448.27880-1-kristian.evensen@gmail.com>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_022458_786223_3131935F 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: Add support for ZBT WE1026-H
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
 .../ramips/base-files/etc/board.d/01_leds     |  5 +++
 .../ramips/base-files/etc/board.d/02_network  |  3 +-
 target/linux/ramips/dts/WE1026-H-32M.dts      | 14 +++++++
 target/linux/ramips/dts/WE1026-H.dtsi         | 41 +++++++++++++++++++
 target/linux/ramips/image/mt7620.mk           |  9 ++++
 5 files changed, 71 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/ramips/dts/WE1026-H-32M.dts
 create mode 100644 target/linux/ramips/dts/WE1026-H.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 043b814773..e44e0cb973 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -439,6 +439,11 @@ zbt-we826-16M|\
 zbt-we826-32M)
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
index 52204eacbf..9e953b4ef0 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -427,7 +427,8 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
 		;;
-	wcr-1166ds)
+	wcr-1166ds|\
+	zbtlink,we1026-h-32m)
 		ucidef_add_switch "switch0" \
 			"3:lan" "4:wan" "6@eth0"
 		;;
diff --git a/target/linux/ramips/dts/WE1026-H-32M.dts b/target/linux/ramips/dts/WE1026-H-32M.dts
new file mode 100644
index 0000000000..ba96b03355
--- /dev/null
+++ b/target/linux/ramips/dts/WE1026-H-32M.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "WE1026-H.dtsi"
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
diff --git a/target/linux/ramips/dts/WE1026-H.dtsi b/target/linux/ramips/dts/WE1026-H.dtsi
new file mode 100644
index 0000000000..3c6a2f99dc
--- /dev/null
+++ b/target/linux/ramips/dts/WE1026-H.dtsi
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "WE1026.dtsi"
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
index 077834edc8..a39ad5a6dd 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -812,6 +812,15 @@ define Device/we1026-5g-16m
 endef
 TARGET_DEVICES += we1026-5g-16m
 
+define Device/zbtlink_we1026-h-32m
+  DTS := WE1026-H-32M
+  IMAGE_SIZE := 32448k
+  DEVICE_TITLE := Zbtlink ZBT-WE1026-H (32M)
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-sdhci-mt7620 \
+		     kmod-ledtrig-netdev
+endef
+TARGET_DEVICES += zbtlink_we1026-h-32m
+
 define Device/zbt-ape522ii
   DTS := ZBT-APE522II
   DEVICE_TITLE := Zbtlink ZBT-APE522II
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
