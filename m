Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA00FB8AC
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 20:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VFRzQxUXoqhdtRAAyHflvbLX5GSsa+3gAww4bgZtAk=; b=Yfr8TL6lCZTjO9
	kOSI4hypQJ3iE4dTio7UE0FyOrnijlIgFgS5AN0+TKb/yA7cVRZXz2jdKOeWD8IojeGFZSuUf2Gx6
	8lvrRuqBH7aVuJx4fX33N5iUUeTpPSwQLJSdv3PUBqcjlPETMqCRx7aiL7QU642DMkdf0vRF8qSNp
	o3xvUz3LPKouI8MCq0gd5PDyy1MmpQP5QIwX6f8N2aIs+lrKp6NsgSX9yDdhwhwBRFr1YtWZYqv6R
	Pvi1VaDENwD3gSBIc54NZ0zFghBk77Y9pCHqb1MPtW0/P8qfJ5lB/0IZXPJ7mlLmUbxR5vIlVzH/u
	QUZPDEkjnbxulipd8f6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUyBf-0003dm-FA; Wed, 13 Nov 2019 19:20:19 +0000
Received: from a1i272.smtp2go.com ([43.228.185.16])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUyBJ-0003Xo-36
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 19:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=smtpservice.net; s=m6sda0.a1-4.dyn; x=1573673697; h=Feedback-ID:
 X-Smtpcorp-Track:Message-Id:Date:Subject:To:From:Reply-To:Sender:
 List-Unsubscribe; bh=w4pku+UbgLZdwQC7sAIU+NpX1efqFXs/UzJt8U35M74=; b=sozs40sR
 v54qqgpak/vjgCo1SF8zQWzIGwXS212HL2wik+KHNJRZrMpHQxVUz/LWEnYrlxePi+14nkt8tE5hp
 pmYkqO2j6qxJPdJ5odTgEu4ubabdyMxW34oX7JcK+VXLKOEzzvW9PSdR88/VUIanddC8bPJoK/Jez
 ePW3iGv4Kyv+2L8Qp83tEHySRvZOAz3C3LM9FIHdNDbMFB7CLXVToKrLecSzYrzu66F6fOC3afEJs
 3S2b6LmrdezBFsPcMPWyODzvYnUsNUNP6qmBDWCqQQV0Fmu/mDPeXul6WjoJmcw6PGygTgDHnJsB2
 VegqbbUFl5DevrrCiNANEtiPUQ==;
Received: from [10.45.33.53] (helo=SmtpCorp)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1iUyBI-ItkBhE-BH
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 19:19:56 +0000
Received: from [10.68.161.204] (helo=mail.blazebox.homeip.net)
 by smtpcorp.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92-S2G) (envelope-from <paulb@blazebox.homeip.net>)
 id 1iUyBH-rlZG6n-HZ
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 19:19:55 +0000
Received: from blazebox.homeip.net (localhost [127.0.0.1])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id ECE1B630905
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 Nov 2019 14:19:41 -0500 (EST)
X-Virus-Scanned: amavisd-new at blazebox.homeip.net
Received: from mail.blazebox.homeip.net ([127.0.0.1])
 by blazebox.homeip.net (mail.blazebox.homeip.net [127.0.0.1]) (amavisd-new,
 port 10024)
 with LMTP id VNt3jptUIGeV; Wed, 13 Nov 2019 14:19:40 -0500 (EST)
Received: from blaze.homeip.net (unknown
 [IPv6:2001:470:1f07:a3a:2dac:cce6:ced7:c53d])
 by mail.blazebox.homeip.net (Postfix) with ESMTP id B28D6630904;
 Wed, 13 Nov 2019 14:19:40 -0500 (EST)
Received: by blaze.homeip.net (Postfix, from userid 4444)
 id EE6D72046002; Wed, 13 Nov 2019 14:19:39 -0500 (EST)
From: Paul Blazejowski <paulb@blazebox.homeip.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 Nov 2019 14:19:32 -0500
Message-Id: <20191113191932.11470-2-paulb@blazebox.homeip.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191113191932.11470-1-paulb@blazebox.homeip.net>
References: <20191113191932.11470-1-paulb@blazebox.homeip.net>
MIME-Version: 1.0
X-Smtpcorp-Track: 1ilyUHr_ZG6nHZ.zUdaS8Z2k
Feedback-ID: 316702m:316702a3jAEqy:316702sJ3m-8Y5Qc
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_111957_256926_9B5D63A9 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [43.228.185.16 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for Netgear
 WNDR3700v4
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
Cc: Paul Blazejowski <paulb@blazebox.homeip.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds ath79 support for Netgear WNDR3700v4.
Router was previously supported by ar71xx target only.
Note: device requires 'ar934x-nand' driver in kernel.

Specification
=============
  * Description: Netgear WNDR3700v4
  * Loader: U-boot
  * SOC: Atheros AR9344 (560 MHz)
  * RAM: 128 MiB
  * Flash: 128 MiB (NAND)
    - U-boot binary: 256 KiB
    - U-boot environment: 256 KiB
    - ART: 256 KiB
    - POT: 512 KiB
    - Language: 2 MiB
    - Config: 512 KiB
    - Traffic Meter: 3 MiB
    - Firmware: 25 MiB
    - ART Backup: 256 KiB
    - Reserved: 96 MiB
  * Ethernet: 5 x 10/100/1000 (4 x LAN, 1 x WAN) (AR8327)
  * Wireless:
    - 2.4 GHz b/g/n (internal)
    - 5 GHz a/n (AR9580)
  * USB: yes, 1 x USB 2.0
  * Buttons:
    - Reset
    - WiFi (rfkill)
    - WPS
  * LEDs:
    - Power (amber/green)
    - WAN (amber/green)
    - WLAN 2G (green)
    - WLAN 5G (blue)
    - 4 x LAN (amber/green)
    - USB (green)
    - WPS (amber/green)
  * UART: 4-pin connector JP1, 3.3V (Vcc, TX, RX, GND), 115200 8N1
  * Power supply: DC 12V 2.5A
  * MAC addresses: LAN=WLAN2G on case label, WAN +1, WLAN5G +2

Installation
============
  * TFTP recovery
  * TFTP via U-boot prompt
  * sysupgrade
  * Web interface

Note about partitioning: firmware partition offset (0x6c0000) is
hardcoded into vendor's u-boot, so this partition cannot be moved
and resized to include Netgear-specific flash areas (pot, language,
config, traffic_meter) not used by OpenWrt.

Test build configuration
========================
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_nand=y
CONFIG_TARGET_ath79_nand_DEVICE_netgear_wndr3700-v4=y
CONFIG_ALL_KMODS=y
CONFIG_DEVEL=y
CONFIG_CCACHE=y
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_IMAGEOPT=y

Signed-off-by: Paul Blazejowski <paulb@blazebox.homeip.net>
---
 package/boot/uboot-envtools/files/ath79              |  1 +
 .../linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts   |  9 +++++++++
 target/linux/ath79/image/nand.mk                     | 12 ++++++++++++
 .../linux/ath79/nand/base-files/etc/board.d/01_leds  |  1 +
 .../ath79/nand/base-files/etc/board.d/02_network     |  2 ++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom           |  2 ++
 6 files changed, 27 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts

diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-envtools/files/ath79
index fefbb48801..c5c2a6b11e 100644
--- a/package/boot/uboot-envtools/files/ath79
+++ b/package/boot/uboot-envtools/files/ath79
@@ -39,6 +39,7 @@ buffalo,wzr-hp-ag300h)
 netgear,wndr3700)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x10000"
 	;;
+netgear,wndr3700-v4|\
 netgear,wndr4300)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
 	;;
diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts b/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
new file mode 100644
index 0000000000..8a38aeab59
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr3700-v4.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar9344_netgear_wndr.dtsi"
+
+/ {
+	compatible = "netgear,wndr3700-v4", "qca,ar9344";
+	model = "Netgear WNDR3700 v4";
+};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index ef6b607002..75808dcbfb 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -80,6 +80,18 @@ define Device/netgear_ath79_nand
   UBINIZE_OPTS := -E 5
 endef
 
+define Device/netgear_wndr3700-v4
+  ATH_SOC := ar9344
+  DEVICE_MODEL := WNDR3700
+  DEVICE_VARIANT := v4
+  NETGEAR_KERNEL_MAGIC := 0x33373033
+  NETGEAR_BOARD_ID := WNDR3700v4
+  NETGEAR_HW_ID := 29763948+128+128
+  SUPPORTED_DEVICES += wndr3700v4
+  $(Device/netgear_ath79_nand)
+endef
+TARGET_DEVICES += netgear_wndr3700-v4
+
 define Device/netgear_wndr4300
   ATH_SOC := ar9344
   DEVICE_MODEL := WNDR4300
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
index f851b3d886..d95958dc88 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -11,6 +11,7 @@ case "$board" in
 glinet,gl-ar300m-nand)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
 	;;
+netgear,wndr3700-v4|\
 netgear,wndr4300)
 	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
 	;;
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
index 9d7a19c2eb..0edba29e2b 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -11,6 +11,7 @@ ath79_setup_interfaces()
 	aerohive,hiveap-121)
 		ucidef_set_interface_lan "eth0"
 		;;
+	netgear,wndr3700-v4|\
 	netgear,wndr4300)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5:wan"
@@ -30,6 +31,7 @@ ath79_setup_macs()
 	local board="$1"
 
 	case "$board" in
+	netgear,wndr3700-v4|\
 	netgear,wndr4300)
 		wan_mac=$(mtd_get_mac_binary caldata 0x6)
 		;;
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index ae1d3572a8..25bafe67ac 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -9,6 +9,7 @@ board=$(board_name)
 case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
+	netgear,wndr3700-v4|\
 	netgear,wndr4300)
 		caldata_extract "caldata" 0x1000 0x440
 		;;
@@ -23,6 +24,7 @@ case "$FIRMWARE" in
 	;;
 "ath9k-eeprom-pci-0000:00:00.0.bin")
 	case $board in
+	netgear,wndr3700-v4|\
 	netgear,wndr4300)
 		caldata_extract "caldata" 0x5000 0x440
 		;;
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
