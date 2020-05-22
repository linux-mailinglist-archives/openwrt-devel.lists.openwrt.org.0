Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0A71DEE95
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 19:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=73/Q7ow3NnAinlzOy6uFLtWENVfyMDVAVxSDhAxsjkA=; b=i0cmtQBlEOy7FxjptlGh34kvSW
	aabZ9jUjkX9oqlDyMaKG8kCWuFMl7BC8RDVHP38c9vL+ZowxukpbCALLs5tu4OB+A98K1YMTXSr2L
	P1fQGNbgBXI+EkufzVNM5cIUZeoIvH2fCLlp1Bsw8cquqNaUiI6C3vIRA6mUnz3q1B02wJrXxLtkb
	UuimOqMf53N+66agQBE45wHSa8ddp16weer64eYdYxuDE+2rBmo6ycweRVUOhrtIUR51+vVW7lSC7
	3xHcOxRwMxgOFO6Yewj++gIT1+UUBDky4jKqW56gpbh/ltXWE2f5I66/035Bael1YO7WxlDu5q3zT
	TySY/2fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBmj-000790-Uz; Fri, 22 May 2020 17:48:41 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBmd-00077y-57
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 17:48:36 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 4A62FFB232; Fri, 22 May 2020 19:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590169701;
 bh=tVK6loWgXGju7wh+SZ6n8DTgMOllTA/GVUEs2/BadY4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=pRD+dz7B0Abi5y+pVIHXzQHjbA1HPvHADYDtgwhb/cx9s92VdR+R4m4y1vpPKYT75
 jJIq/CPbxxyHu/Z9KYwZxJesZhryVLFW2z6gFM5fKgo33EZI8tRUJcrJ73psrQzORP
 Mgo0kPXcLgQcRsvPGzbqTzWvra+6ANbeqNoez214=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 7192EFB088
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 19:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590169700;
 bh=tVK6loWgXGju7wh+SZ6n8DTgMOllTA/GVUEs2/BadY4=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=lBmWca8MTgHb/r3y9QvWG9AnuF+uASVITZozhXVmwvEjX1Hw5Rll2gphp/4IVEpru
 Bj0QyLLLVBrbMAeGgVkBU83fX4qgolmCoShcr+La3GDoCkE2ZrwtLtgxdlg0pVG8Mb
 UxZWgu8EZ7ztAuGx0N1kUcHUyRWbTBf9aqipvI7Y=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 May 2020 19:48:15 +0200
Message-Id: <20200522174815.3723-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200522174111.3539-1-foss@volatilesystems.org>
References: <20200522174111.3539-1-foss@volatilesystems.org>
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_104835_335699_72CE5A1B 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] ath79/nand: add support for Netgear
 WNDR4300 SW
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

The Netgear WNDR4300 SW is identical to the regular WNDR4300 and only
differs by its BOARD_ID.

Resulting image has been confirmed working [1].

Because of the minor difference with the regular model I am unsure about
the approach, so please let me know if this overdoes it (and what I
should change).


[1] https://forum.openwrt.org/t/porting-wndr4300-to-ath79/16006/57

Signed-off-by: Stijn Segers <foss@volatilesystems.org>
---
 target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts |  9 +++++++++
 target/linux/ath79/image/nand.mk                     | 12 ++++++++++++
 .../linux/ath79/nand/base-files/etc/board.d/01_leds  |  1 +
 .../ath79/nand/base-files/etc/board.d/02_network     |  1 +
 .../etc/hotplug.d/firmware/10-ath9k-eeprom           |  1 +
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
index 3ccd19914f..9814815ff1 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -172,6 +172,18 @@ define Device/netgear_wndr4300
 endef
 TARGET_DEVICES += netgear_wndr4300
 
+define Device/netgear_wndr4300sw
+  SOC := ar9344
+  DEVICE_MODEL := WNDR4300
+  DEVICE_VARIANT := SW
+  NETGEAR_KERNEL_MAGIC := 0x33373033
+  NETGEAR_BOARD_ID := WNDR4300SW
+  NETGEAR_HW_ID := 29763948+0+128+128+2x2+3x3
+  $(Device/netgear_ath79_nand)
+endef
+TARGET_DEVICES += netgear_wndr4300sw
+
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
index b2191eed92..42be72af53 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -44,6 +44,7 @@ ath79_setup_macs()
 	case "$board" in
 	netgear,wndr3700-v4|\
 	netgear,wndr4300|\
+	netgear,wndr4300sw|\
 	netgear,wndr4300-v2|\
 	netgear,wndr4500-v3)
 		wan_mac=$(mtd_get_mac_binary caldata 0x6)
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index f5fae46dfb..f89fc83ddf 100644
--- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -24,6 +24,7 @@ case "$FIRMWARE" in
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
