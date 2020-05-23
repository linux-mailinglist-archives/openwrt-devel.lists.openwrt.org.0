Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3917B1DF620
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 10:50:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WawBfMSaHgtlw3kzcWbvO7n295VDIsB6nqH+S/Av1aE=; b=Ji8P2pG8EwhgkSkDBCsGcZS1KJ
	asT3ZbRuVFWqegqBJph7URiCuf7mKpxV0f7zBaK5DI2HRg1BWcI4tqz+qLjqoAzqhtW+aXaRc2sFp
	LMiArZA0JRugEjrMr5jDRZtEgoxAZFutmBFv3zpzZ/5m1lZmxmPglGcC1sem7igLnU3zdsBhKSoYr
	h5lu7UadmpUvqIEXF0vL/LnIUSwYioKUMd8RE97YBljRTx6IRW1oM3Wf4zTG3kV2neJ0zDnmJ4gIP
	gydd/isN8f5t4yU9NiEPdrs3s+fJeB5/CXQ2aPJmVQJS4KhBnhzZSBwQgm04fiRDYZ0dInA8uoDT6
	TwD8NAkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcPrP-0003Qs-M8; Sat, 23 May 2020 08:50:27 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcPrI-0003Q4-11
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 08:50:22 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 3C524FB255; Sat, 23 May 2020 10:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590223815;
 bh=uK1DyygKXh9brAVZheZ6X8MkjSIB5udBMWcP4lE3QaQ=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=G3iaF5C8BIokwz9BkhXBlO6XgBIqdCV5v1ORjSDxbQax/GrRvBmQz961XcDI7leKk
 /4f16wPeOXasGQxkSb+KfIXLGeElXUW3JoozvbBRKIivFKQ1K3YMuIlk8VzlzLW8Y3
 21+OaDZeKuKSKOm31Ni/519+nSu4V3W+uawGN+Gs=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,NUMERIC_HTTP_ADDR,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 0CB1FFB251
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 May 2020 10:50:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590223814;
 bh=uK1DyygKXh9brAVZheZ6X8MkjSIB5udBMWcP4lE3QaQ=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=MdD6pQ4VDfZ8Xe23kO2QZ45nMWwSjcd44ZMBRmS2D7qDF9aaaMJlSv9+oV24eLzVN
 Tmgw6KOksWi9mI5jVTxFNuYwJY3r1qWzBCcZ+aumZyBnH2PwvM97UziM+bUhoOg1aJ
 1Yd+LBEAbixCYeufJfZVdgEdOkcVyP59BSd6Ls40=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 May 2020 10:50:03 +0200
Message-Id: <20200523085003.4426-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522174815.3723-1-foss@volatilesystems.org>
References: <20200522174815.3723-1-foss@volatilesystems.org>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_015020_351026_AFBF862D 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH v3] ath79/nand: add support for Netgear
 WNDR4300SW
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch adds support for the WNDR4300SW, marketed by California ISP
SureWest (hence the 'SW' suffix). Hardware wise, it's identical to the
WNDR4300 v1.

Specifications:
* SoC: Atheros AR9344
* RAM: 128 MB
* Flash: 128 MB NAND flash
* WiFi: Atheros AR9580 (5 GHz) and AR9344 (2,4 GHz)
* Ethernet: 5x 1000Base-T
* LED: Power, WAN, LAN, WiFi, USB, WPS
* UART: on board, to the right of the RF shield at the top of the board

Installation:

* Flashing through the OEM web interface:
  + Connect your computer to the router with an ethernet cable and browse
    to http://192.168.1.1/
  + Log in with the default credentials are admin:password
  + Browse to Advanced > Administration > Firmware Upgrade in the Netgear
    interface
  + Upload the Openwrt firmware: openwrt-ath79-nand-netgear_wndr4300sw-squashfs-factory.img
  + Proceed with the firmware installation and give the device a few 
    minutes to finish and reboot.

* Flashing through TFTP:
  + Configure your wired client with a static IP in the 192.168.1.x range,
    e.g. 192.168.1.10 and netmask 255.255.255.0.
  + Power off the router.
  + Press and hold the RESET button (the factory reset button on the bottom
    of the device, with the red circle around it) and turn the router on
    while keeping the button pressed.
  + The power LED will start flashing orange. You can release the button
    once it switches to flashing green.
  + Transfer the image over TFTP:
    $ tftp 192.168.1.1 -m binary -c put openwrt-ath79-nand-netgear_wndr4300sw-squashfs-factory.img

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts   |  9 +++++++++
 target/linux/ath79/image/nand.mk                       | 10 ++++++++++
 target/linux/ath79/nand/base-files/etc/board.d/01_leds |  1 +
 .../linux/ath79/nand/base-files/etc/board.d/02_network |  2 ++
 .../base-files/etc/hotplug.d/firmware/10-ath9k-eeprom  |  2 ++
 5 files changed, 24 insertions(+)
 create mode 100644 target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts

diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
new file mode 100644
index 0000000000..fb90eee550
--- /dev/null
+++ b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar9344_netgear_wndr.dtsi"
+
+/ {
+	compatible = "netgear,wndr4300sw", "qca,ar9344";
+	model = "Netgear WNDR4300SW";
+};
diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index 3ccd19914f..dc06b65371 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -172,6 +172,16 @@ define Device/netgear_wndr4300
 endef
 TARGET_DEVICES += netgear_wndr4300
 
+define Device/netgear_wndr4300sw
+  SOC := ar9344
+  DEVICE_MODEL := WNDR4300SW
+  NETGEAR_KERNEL_MAGIC := 0x33373033
+  NETGEAR_BOARD_ID := WNDR4300SW
+  NETGEAR_HW_ID := 29763948+0+128+128+2x2+3x3
+  $(Device/netgear_ath79_nand)
+endef
+TARGET_DEVICES += netgear_wndr4300sw
+
 define Device/netgear_wndr4300-v2
   SOC := qca9563
   DEVICE_MODEL := WNDR4300
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
index d9989ec538..4f601849fc 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -14,6 +14,7 @@ glinet,gl-ar300m-nor)
 	;;
 netgear,wndr3700-v4|\
 netgear,wndr4300|\
+netgear,wndr4300sw|\
 netgear,wndr4300-v2|\
 netgear,wndr4500-v3)
 	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
index b2191eed92..84cdfd99bb 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -22,6 +22,7 @@ ath79_setup_interfaces()
 		;;
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
+	netgear,wndr4300sw|\
 	netgear,wndr4300-v2|\
 	netgear,wndr4500-v3)
 		ucidef_add_switch "switch0" \
@@ -44,6 +45,7 @@ ath79_setup_macs()
 	case "$board" in
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
+	netgear,wndr4300sw|\
 	netgear,wndr4300-v2|\
 	netgear,wndr4500-v3)
 		wan_mac=$(mtd_get_mac_binary caldata 0x6)
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index f5fae46dfb..355be93ead 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -11,6 +11,7 @@ case "$FIRMWARE" in
 	case $board in
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
+	netgear,wndr4300sw|\
 	netgear,wndr4300-v2|\
 	netgear,wndr4500-v3)
 		caldata_extract "caldata" 0x1000 0x440
@@ -24,6 +25,7 @@ case "$FIRMWARE" in
 	case $board in
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
+	netgear,wndr4300sw|\
 	netgear,wndr4300-v2|\
 	netgear,wndr4500-v3)
 		caldata_extract "caldata" 0x5000 0x440
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
