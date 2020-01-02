Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237F112E1CB
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 03:55:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K7gthpMB2ifdALeb39k1ReHNkTpURMcE9pm9dEt+A3Q=; b=hqz9Ebkuj4XJ5t
	9rAcQYT5vTUjDCIETzSV4j1iFsi7j+Jm+c9ggDlKpOnIpfQlnZeU4T8tRy/BX6J4/AdUiz3LWsZ0j
	Bv0f44rdSJk2n2AiPR845LDHdGulbAzBmOfusl7r7FjLllQ+G6MR3tkgB9HiUFWUNJCPcL+4pHN4y
	hqn+bdJg4yTw/Nnzc37o7i04X0qZYD9oAnfgFoLvHMvDXk1SDnpAPnH6Ilz0ZPbkBx5+vZh+ZXBrS
	SS6mYxKPFI05DFuVij8x+tkoeNu0Qn7OuE02faCjO+fV5LCx2V4jwTiLgSuL+HAyxl4J8NIMCrZsQ
	7NMLSKVi5vX9Gb4R5CHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imqdo-0006eF-4l; Thu, 02 Jan 2020 02:55:16 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1imqdh-0005gV-2z
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 02:55:11 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F074700BC3F10761BD4BF45.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:4700:bc3f:1076:1bd4:bf45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 4D3D8227F6;
 Thu,  2 Jan 2020 03:55:02 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  2 Jan 2020 03:54:52 +0100
Message-Id: <20200102025452.59863-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_185509_440840_C65DA94F 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: convert TP-Link MT7620 boards to
 tpt trigger
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
Cc: achterin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This converts all MediaTek MT7620 boards from TP-Link to use the now
supported WiFi throughput LED trigger. This way, the LED state now
covers all VAPs regardless of their name.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts   | 1 +
 target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts  | 2 ++
 target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts    | 1 +
 target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts  | 2 ++
 target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts   | 1 +
 target/linux/ramips/dts/mt7620a_tplink_re200-v1.dts       | 2 +-
 target/linux/ramips/mt7620/base-files/etc/board.d/01_leds | 6 ------
 7 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
index 45752c095d..58e4b39b55 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
@@ -48,6 +48,7 @@
 		wlan {
 			label = "archer-c2-v1:green:wlan";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
 		};
 	};
 
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
index 59e109c8a2..b1d3e23450 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
@@ -47,11 +47,13 @@
 		wlan5g {
 			label = "archer-c20-v1:blue:wlan5g";
 			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
 		};
 
 		wlan2g {
 			label = "archer-c20-v1:blue:wlan2g";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
 		};
 
 		wps {
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
index 707453d2b5..694528d749 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
@@ -38,6 +38,7 @@
 		wlan {
 			label = "archer-c20i:blue:wlan";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
 		};
 	};
 };
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
index ed2b00836e..ca03d2ed78 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
@@ -47,11 +47,13 @@
 		wlan5g {
 			label = "archer-c50-v1:green:wlan5g";
 			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
 		};
 
 		wlan2g {
 			label = "archer-c50-v1:green:wlan2g";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
 		};
 
 		wps {
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts
index bc7825df00..dccced0f18 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts
@@ -71,6 +71,7 @@
 		wlan {
 			label = "archer-mr200:white:wlan";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1tpt";
 		};
 	};
 
diff --git a/target/linux/ramips/dts/mt7620a_tplink_re200-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_re200-v1.dts
index 39fdc0af53..afc94c538c 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_re200-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_re200-v1.dts
@@ -53,7 +53,7 @@
 		wlan2g_green {
 			label = "re200-v1:green:wlan2g";
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy1radio";
+			linux,default-trigger = "phy1tpt";
 		};
 	};
 
diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
index 02899d646d..fe6dfac50e 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
@@ -168,28 +168,22 @@ zbtlink,zbt-we826-e)
 tplink,archer-c2-v1)
 	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch1" "0x1e"
 	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch1" "0x01"
-	set_wifi_led "$boardname:green:wlan"
 	;;
 tplink,archer-c20-v1)
 	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
 	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
-	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:blue:wlan2g" "wlan0"
 	;;
 tplink,archer-c20i)
 	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
 	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
-	ucidef_set_led_wlan "wlan" "wlan" "$boardname:blue:wlan" "phy0radio"
 	;;
 tplink,archer-c50-v1)
 	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
 	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:green:wlan2g" wlan1
-	set_wifi_led "$boardname:green:wlan5g"
 	;;
 tplink,archer-mr200)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:white:lan" "eth0.1"
 	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "usb0"
-	set_wifi_led "$boardname:white:wlan"
 	;;
 tplink,re200-v1)
 	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
