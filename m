Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71DC1DEE6F
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 19:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hNtokn5MeIbV50aVnVqnOL+e9U/U8muH+vFBbtg7Cas=; b=NZtVDfyozU6cA9
	s6Bt5BhMfBBqLj75iXVyGdHR/Cjkrn1Iw11XijpWsf/+XluUrvuctifMG8qqbXSyt212/3o5a9X7d
	O57dRlwRKWte4xWjoPobbgFRF491bGw5A8hKRWc87zQzUad5d1GvaJzfBslNW9k7/agmgH52zkjZb
	xUS7iouGESAOeCw3cVBedvMDF7vvoqxKGOjY8kqQhRSF+erEBa4XIO03uvdGjPvk8FWyIdnN+4fVt
	yWqF+Zjn+MGzngsxrPhyLoVYm8Jp2+yKFVLvor4tB5XFdxFDrAkO1cmQCEilFmC8tu8VFR05BT8r9
	wIBkVFr+jiaIaBSBOXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBgF-0003HY-3K; Fri, 22 May 2020 17:41:59 +0000
Received: from [2001:41d0:305:2100::8f39] (helo=volatilesystems.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBg7-0003Gg-Ts
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 17:41:53 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id C36B5FB088; Fri, 22 May 2020 19:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590169278;
 bh=W/wCkWvPP76SaMGbQysk3WYu1hIXhFCZojfT5klDh0I=;
 h=From:To:Subject:Date:From;
 b=gRfG5OWUQXN/VAmnfL/wOs5Eg2NKOqldT245QfaHFc5fvrnuxZAvVU3Ab8S2ioS3e
 Vbb+3KtWaX4V3k29Ehmeo3G1pnPBSRvikRIWvPa8MCeBw02WEyQ9D+PNJAQqS0KT7I
 WOqgHKnnDSTzMFw4vwtLNmon1el0xstA2jO4Iook=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=3.4.2
Received: from okeanos.lan (213.219.166.32.adsl.dyn.edpnet.net
 [213.219.166.32])
 by volatilesystems.org (Postfix) with ESMTPSA id 2AB01FB086
 for <openwrt-devel@lists.openwrt.org>; Fri, 22 May 2020 19:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1590169276;
 bh=W/wCkWvPP76SaMGbQysk3WYu1hIXhFCZojfT5klDh0I=;
 h=From:To:Subject:Date:From;
 b=LG79Kv94MLESu8ONtlIQlZb2PW0/3QoCB3Yw1Uu6qUoupkcv3KKsdoA8DtqBOr6PW
 Gz8b08yEtJQKSgyZFMxkai1EOY2cjhdFkO0Zgr7BRfNUklAIW1MbWXYOct5QUc1r1R
 d2KX5AuIUggop7n6W+l/WPT/6oGXch3nBLNA+oSM=
From: Stijn Segers <foss@volatilesystems.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 May 2020 19:41:11 +0200
Message-Id: <20200522174111.3539-1-foss@volatilesystems.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.102.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_104152_108635_29780556 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: [OpenWrt-Devel] [PATCH] ath79/nand: add support for Netgear
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

The Netgear WNDR4300 SW is identical to the regular WNDR4300 SW and only
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
