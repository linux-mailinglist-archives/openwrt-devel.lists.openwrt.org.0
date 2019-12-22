Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCA7128FE8
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 21:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nys2hwEUXVOBdT9whdnbA2Dozvy6WTI4UABVftaNqLA=; b=pIjvr38Yxyvs3A
	BIYqtQjEycWSnbn3ZcNVYAERshkb+4Bay7PGfzH5k1Vz2Q1T5NH6IvgSx/wGJsLQCaAQaH7LsDDn5
	8FU8CqKMuaQ948WzA9cAcid5347oO4CxarkSog3MX9CnBWohIsdG99lgObP8x66TzUgciw4mzdj4F
	rBTp8xgd0T5ah3yfEoqQPNnNaT3fPeu1+u88PSVEFXIoE2Qjla0TLktN+4so9J3wIS/X0D9NQ2k46
	lVVB4sgcsctg2f+CDm4vlY43EyIe9cNN7ngweDMKHurXZ+2ddB24qmZaUACNK1F5OSo6RCpt1jjMq
	fr80xLnlGbxwSBWckUpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij8Io-0001PJ-62; Sun, 22 Dec 2019 20:58:14 +0000
Received: from mx3.wp.pl ([212.77.101.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij8IK-0000yX-Qb
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 20:57:47 +0000
Received: (wp-smtpd smtp.wp.pl 23350 invoked from network);
 22 Dec 2019 21:57:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1577048262; bh=Uv92HjBLe8bEGpw6IvUa187FZDYaglJxyV5terz5n+8=;
 h=From:To:Cc:Subject;
 b=SXWMWjdXFbUvHsz9DQnKpCzkjlJ1MmdIsxAaA0nZxAtvaHYEvwmDrr7MveZ1HKy58
 aSzvIUi9Bn+/3R8/WetJ9bhuNDdB7Ay95x1Uba3588OxnflzZmNLwOF36GknNKkyrh
 BjAEwVXxs7JbWW9wML5VnINsq0l/eJue2eUj76t4=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 22 Dec 2019 21:57:42 +0100
Date: Sun, 22 Dec 2019 21:55:54 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191222215554.57c68fbc@kosmio.komorska>
In-Reply-To: <20191222215052.6901e39f@kosmio.komorska>
References: <20191222215052.6901e39f@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: ca51fd430fd2a4870de6ed561052ec08
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [0QNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_125745_048558_5B2F64EE 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.77.101.9 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 4/4] ath79: add support for Netgear
 WNDR4500 v3
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch introduces support for Netgear WNDR4500v3. Router
is very similar to WNDR4300v2 and is based on the same PCB.

Information gathered from various Internet sources (including
https://patchwork.ozlabs.org/patch/809227/) shows following
differences to WNDR4300v2:

 * two USB 2.0 ports with separate LEDs
 * USB LEDs soldered to secondary pads
 * WPS and RFKILL buttons soldered to secondary pads
 * described as N900 device with 3x3:3 MIMO for 2.4GHz radio
 * power supply requirement is DC 12V 2.5A
 * vendor HW ID suffix differs in one digit
 * bigger chassis

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 package/boot/uboot-envtools/files/ath79       |  1 +
 .../ath79/dts/qca9563_netgear_wndr4500-v3.dts | 41 +++++++++++++++++++
 target/linux/ath79/image/nand.mk              | 11 +++++
 .../ath79/nand/base-files/etc/board.d/01_leds |  3 +-
 .../nand/base-files/etc/board.d/02_network    |  6 ++-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  6 ++-
 6 files changed, 63 insertions(+), 5 deletions(-)
 create mode 100644 target/linux/ath79/dts/qca9563_netgear_wndr4500-v3.dts

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index 85a0342a60..aafced98db 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -27,6 +27,7 @@ librerouter,librerouter-v1|\
 netgear,ex6400|\
 netgear,ex7300|\
 netgear,wndr4300-v2|\
+netgear,wndr4500-v3|\
 netgear,wnr1000-v2|\
 netgear,wnr2000-v3|\
 netgear,wnr2200-8m|\
diff --git a/target/linux/ath79/dts/qca9563_netgear_wndr4500-v3.dts b/target/linux/ath79/dts/qca9563_netgear_wndr4500-v3.dts
new file mode 100644
index 0000000000..95e30ea84b
--- /dev/null
+++ b/target/linux/ath79/dts/qca9563_netgear_wndr4500-v3.dts
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "qca9563_netgear_wndr.dtsi"
+
+/ {
+	compatible = "netgear,wndr4500-v3", "qca,qca9563";
+	model = "Netgear WNDR4500 v3";
+};
+
+&leds {
+	usb1_green {
+		label = "netgear:green:usb1";
+		gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		trigger-sources = <&hub_port0>;
+		linux,default-trigger = "usbport";
+	};
+
+	usb2_green {
+		label = "netgear:green:usb2";
+		gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+		trigger-sources = <&hub_port1>;
+		linux,default-trigger = "usbport";
+	};
+};
+
+&usb_phy1 {
+	status = "okay";
+};
+
+&usb1 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_port1: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
+};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index 2094bd1d19..6e86843859 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -162,6 +162,17 @@ define Device/netgear_wndr4300-v2
 endef
 TARGET_DEVICES += netgear_wndr4300-v2
 
+define Device/netgear_wndr4500-v3
+  SOC := qca9563
+  DEVICE_MODEL := WNDR4500
+  DEVICE_VARIANT := v3
+  NETGEAR_KERNEL_MAGIC := 0x27051956
+  NETGEAR_BOARD_ID := WNDR4500series
+  NETGEAR_HW_ID := 29764821+2+128+128+3x3+3x3+5508012173
+  $(Device/netgear_ath79_nand)
+endef
+TARGET_DEVICES += netgear_wndr4500-v3
+
 define Device/zyxel_nbg6716
   SOC := qca9558
   DEVICE_VENDOR := ZyXEL
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
index 0376b7cfc6..d9989ec538 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -14,7 +14,8 @@ glinet,gl-ar300m-nor)
 	;;
 netgear,wndr3700-v4|\
 netgear,wndr4300|\
-netgear,wndr4300-v2)
+netgear,wndr4300-v2|\
+netgear,wndr4500-v3)
 	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
 	;;
 esac
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
index 135a06d44b..bd02a4b383 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -18,7 +18,8 @@ ath79_setup_interfaces()
 		;;
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
-	netgear,wndr4300-v2)
+	netgear,wndr4300-v2|\
+	netgear,wndr4500-v3)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5:wan"
 		;;
@@ -39,7 +40,8 @@ ath79_setup_macs()
 	case "$board" in
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
-	netgear,wndr4300-v2)
+	netgear,wndr4300-v2|\
+	netgear,wndr4500-v3)
 		wan_mac=$(mtd_get_mac_binary caldata 0x6)
 		;;
 	zyxel,nbg6716)
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 7ee291d109..d2f8bae1ca 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -11,7 +11,8 @@ case "$FIRMWARE" in
 	case $board in
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
-	netgear,wndr4300-v2)
+	netgear,wndr4300-v2|\
+	netgear,wndr4500-v3)
 		caldata_extract "caldata" 0x1000 0x440
 		;;
 	zyxel,nbg6716)
@@ -27,7 +28,8 @@ case "$FIRMWARE" in
 	case $board in
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
-	netgear,wndr4300-v2)
+	netgear,wndr4300-v2|\
+	netgear,wndr4500-v3)
 		caldata_extract "caldata" 0x5000 0x440
 		;;
 	*)
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
