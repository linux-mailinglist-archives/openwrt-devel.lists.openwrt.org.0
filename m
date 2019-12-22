Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C032128ECE
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Dec 2019 17:05:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EBQbAps85jRojSwpO9avf6QWh5Pb7nBXCrc/Dv7E/tc=; b=YDnFSvYw+Lvl1N
	vS/EH/2tOpn5qhr1/zXxUP7buTcjZ6mQplYNnCaXqGSGGqlNRVMxP5ivNMRRe3W37rH1vnFVKP2aF
	qL0G//PMNDjqKg8s+g+CFCoqu9lxTYkhVRmYo5geSMjKY8U8WulXvnooMrjgiH30Tmh89VU9998lp
	w10yvivv+Y+pDJtxluX3+skwUhen8PAtE6tVUTqDf+myaxY7M1h3yr5keT99xAMdY2qpRAcX3N2wg
	rlMmr07YO7X9V5Xi760TmPyXYX8MX632+DaQ7aRbgoX1VA6nX+0mJQA4wjp6f0rYshRNuJAo+55Q8
	c/X2dguD3Lbd3KvtUhww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij3jo-0000Jw-7k; Sun, 22 Dec 2019 16:05:48 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij3jh-0000JV-Cq
 for openwrt-devel@lists.openwrt.org; Sun, 22 Dec 2019 16:05:43 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MNL2Y-1iKNB51pVK-00OsC1; Sun, 22 Dec 2019 17:05:37 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Dec 2019 17:04:43 +0100
Message-Id: <20191222160443.2247-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:il950l6VV1GPc/YNYR1LaESkUNNN5DC/kuF/qAHzs3GlRzTd8l3
 /bgquGUCxlMa3OUm8LnKVpdOOQY/nEIqshCujYysl9ajl47iLSxlOExncrCqvjQZ4R0+92a
 FOMKh4uuqOImEGYtearXIuN4TQDDhiHP/hKzAx+h7BI1j3ZR74s81id28L0Ak99dIpe58n2
 pS3vWUp45Vc2XAbJXZ5wQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Hk+abUlzluw=:gTVFqniQcTHD96ZAGEjHV1
 6k3hmmiT2EZfoVPLp7uYxBnH/AU8zt8ytzHoDRUuQyc+TyqOGqUsLvOG/C8j3DnHWS/xhddzC
 rh3brVUNW7JeJ12o9Y/+UiSYSAF+mbKB4hDjWKLiIhqf90ZhqNX1HIhMmOJ4ZZHgHwn/e73aI
 V1hWRr7hK07oR7ZCA8weKZINXbYQrIixSMN5Ni0HXw7ynlauGfE+UGcACz76AbPdvGrrYcfyZ
 YMyaeeDrF+l6GTVl+suQPSse4l0OQ0LzjDFzP+yI/DHOX4RN6tUOWStOWGoWoBTLPMVX1Dehr
 yJfcajRDBgYr9jVwQNldk2rJdRd/DMVnUbvtlYu1VkdEH3P9T3SssIeNCVVlQQH3BZeE86BPu
 qHSSDaDqcvB9BqTxBP4/jJYmBUKp/+I6WnFMfMgzyT88RPncfmRWnfz4BnqkS3SSuH0JrQ+nB
 XsY+yVfAChox+PWkw/XH66p0xhYnGaCJ4EELwxrL9Gtl5PJaf7nAgibhWGcaW8pqMqL2sBWVa
 nLHqPdzio2wmLjOY8l1tbU1fDex7eozVkN0ej7RhNC26mryp8KYD2jx4RilzSEMIskFIUx9UI
 JLqVeSTlJ4013M8RgrVa53rIscOkadPihprjoLt6nEFX7CFxM5Ym//7eWBKEZBqeg09csnAon
 143Ly8ZCBEriRKiyiJDA1v2woLhnGolzMVktfhczotBYhjXKqSlV3ZkOyAJeK0zhEb4pmh5PU
 /tzohODAtvk9+5mgzoEoDXIIVT4QZxo82KMK7MVhAB/nIGBcvz1ECyH2Y/Mk1Cp/DxfmmKDnt
 Qtqjg39hQGsDstr/EXHbyu0tZ3OP7JG2rIPqX3DMzM7SLE8bSDElmOFKjXvvDbRVOnhwHhtmc
 ekR8soGj1qgkqojtO54Xz6lNWFnqmE+mE30/WSNNc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_080541_730510_DB1036D8 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: remove bogus ralink,
 mtd-eeprom with offset 0x4
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Several devices in mt76x8 subtarget use the following line to set
up wmac in their DTS(I) files:

ralink,mtd-eeprom = <&factory 0x4>

This is strange for several reasons:
- They should use mediatek,mtd-eeprom on this SOC
- The caldata is supposed to start at 0x0
- The parent DTSI mt7628an.dtsi specifies mediatek,mtd-eeprom anyway,
  starting from 0x0
- The offset coincides with the default location of the MAC address
  in caldata

Based on the comment in b28e94d4bfa1 ("ramips: MiWiFi Nano fixes"),
it looks like the author for this device wanted to actually use
mtd-mac-address instead of ralink,mtd-eeprom. A check on the same
device revealed that actually the MAC address start at offset 4 there,
so the correct caldata offset is 0x0.

Based on these findings, and the fact that the expected location on
this SOC is 0x0, we remove the "ralink,mtd-eeprom = <&factory 0x4>"
statement from all devices in ramips (being only mt7628an anyway).

Thanks to Sungbo Eo for finding and researching this.

Reported-by: Sungbo Eo <mans0n@gorani.run>
Fixes: b28e94d4bfa1 ("ramips: MiWiFi Nano fixes")
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/mt7628an_cudy_wr1000.dts             | 1 -
 target/linux/ramips/dts/mt7628an_rakwireless_rak633.dts      | 1 -
 target/linux/ramips/dts/mt7628an_totolink_lr1200.dts         | 1 -
 target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi         | 1 -
 target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts      | 1 -
 target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts      | 1 -
 target/linux/ramips/mt76x8/base-files/etc/board.d/02_network | 4 ++--
 7 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
index aa3f01e68e..a23a8ad07c 100644
--- a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
+++ b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
@@ -134,7 +134,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x4>;
 };
 
 &ethernet {
diff --git a/target/linux/ramips/dts/mt7628an_rakwireless_rak633.dts b/target/linux/ramips/dts/mt7628an_rakwireless_rak633.dts
index 1316a290d7..00ae2b1a45 100644
--- a/target/linux/ramips/dts/mt7628an_rakwireless_rak633.dts
+++ b/target/linux/ramips/dts/mt7628an_rakwireless_rak633.dts
@@ -95,5 +95,4 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x4>;
 };
diff --git a/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts b/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts
index 4a712e917a..242a54e058 100644
--- a/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts
+++ b/target/linux/ramips/dts/mt7628an_totolink_lr1200.dts
@@ -110,7 +110,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x4>;
 };
 
 &ethernet {
diff --git a/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi b/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
index 6a312ff0b1..2e604aee59 100644
--- a/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
+++ b/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
@@ -23,7 +23,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x4>;
 };
 
 &ethernet {
diff --git a/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts b/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts
index 8b2a3d6c9d..76bc798bb8 100644
--- a/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts
+++ b/target/linux/ramips/dts/mt7628an_xiaomi_miwifi-nano.dts
@@ -69,7 +69,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x4>;
 };
 
 &ethernet {
diff --git a/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts b/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts
index b89e689508..dc7ee82f35 100644
--- a/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts
+++ b/target/linux/ramips/dts/mt7628an_zbtlink_zbt-we1226.dts
@@ -105,7 +105,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x4>;
 };
 
 &ethernet {
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index aeaf296984..23d045614e 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -134,7 +134,7 @@ ramips_setup_macs()
 		;;
 	cudy,wr1000)
 		wan_mac=$(mtd_get_mac_binary factory 0x2e)
-		label_mac=$(mtd_get_mac_binary factory 0x8)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	duzun,dm06|\
 	netgear,r6120|\
@@ -194,7 +194,7 @@ ramips_setup_macs()
 		;;
 	vocore,vocore2|\
 	vocore,vocore2-lite)
-		label_mac=$(mtd_get_mac_binary factory 0x8)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	wavlink,wl-wn570ha1|\
 	zbtlink,zbt-we1226)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
