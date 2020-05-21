Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140091DD587
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 20:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HfRxWojZOgTfxFnXNQ9UspVRxjMiMzh39JFts08zXXE=; b=EhSXwKsRzhTdqZ
	BfmYWdQTdJr8jHxMYWKc0XBCLTVcm2MSsdoWT8SIU2BMczXYkDFBH/xSd2qMcgStQ/JDzFWjgk3CA
	/WWX4V/ubKlr1sZcYtFtoBcNVtRY8iZna02fYysSTVx7Xe1rXN4kcRuFxGhyVVkyoHScSD9SfLnwy
	y0H/SFs8mJZrtUSSdmrHUUEgTpwDqPbM3KtUFvXEc22YiOh1hw7Ir7El53l+B8tGk3bFvNUSjLGQ9
	qy5fAg+D11fqoM2tMpTYTUwovjA3XLvK+jobE8XXFrSpXeTmQ+ywhhdnxAVB4hamlZrQcdRvSyoLu
	et6jXaqu71uVT1oXdU+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbpWT-0003on-VU; Thu, 21 May 2020 18:02:26 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbpWH-0003mG-9V
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 18:02:18 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MEFrX-1jjqPO40Ll-00ABWZ for <openwrt-devel@lists.openwrt.org>; Thu, 21
 May 2020 20:02:04 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 May 2020 20:01:09 +0200
Message-Id: <20200521180109.1667-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:54/j/7ZviOakJotz+zAPuoQraKxeNhUezOPpBPBkogSsENvIiGx
 umx/P6mG0cIH+cXrkY0CXglB+DEfrckHacZtsOJ/5Dgtnob0qq8M6O6IM8JSzX0r9cDgf4Z
 MqLbiuBxDf/Z9KD1pXeTBrNCHfdS0XXckauDMXw985g+tUcnwg8CqAwp1UU4gG8SxZwbctm
 aInEoE3ssgBxBk5OR+oCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JFcPGsO5xDs=:28zb81CZYaSodCK70xi2Nr
 yMvFVPOLFRksfx6Pyy6rh1tyoAexyGoYKgO+lCV7kjCSnzdGgm3T9+EyerMc4MJKIKuCrn3P8
 4uzzC6Z/sOUWiUZueZN/b+0BkHpXmMPxf2fVKMu4G6BxZdRqV4nVSh5c/9GMHdzOSvRozvM5u
 CVNSRpa86JejUBiDkCo0RPDf+uLU3aEI0JI8nfs/mwRBvYjm3IHpcOyOJrTECglMCvXY38dCT
 SR3M+1w7t87i0VErRWD2LK5WSAwGggoi1OXgI7GTkA38sGTPx7+fuOcGsVJII9BiSRtzm9hsh
 ot+RWcRD0CvrdAceFFLAKSmkt/JnG5yXzKSp3C4hOuzpO7DjV2cpHzsZ1DweBgl86Bf8PisPa
 kAPFqk5Tfjx4oRuhwZbXWfRjo3YQjYWcCl9N/2VjrdOI3VPLkUTlJy/2m0Wr3thqNnpSyCmyA
 c5Pcue1YHU9s5vq/RJYrNp/bw3kNIZGOoL/GWS5tLXNLTaV9wkNR3mcic13q6UMxIyHlrBbFh
 xWbailifLkcaiPFr3UyJtx3djWv/FsyF1XZ/eeDcgiuVTfTSe2zl+Z97pMBkpKH74MfcT29ga
 +afZAlk/a9OdNkHaIIL/Hd7Fa2JZR/lhG72YSJJm4vJmveMk3VJkVA/pQltTB3tk57nfoVSii
 WZYnR1hEooof35ZR+wcd091vD4i3Gw7RVGUrW40uzmlyvDv2FEr1RcZqzS3E7DZv78EQDzOf6
 2t+T0PxAThYNzpAE+41abZuRmF7tIqwXoSjWQbsae6tHwO7GCPFIDVxPwpby5Kja3o4jgdF/S
 vqpY3K/frJTqoUrId7ONcm++uf9whbxQqu9JaLGYZMgS0VX+9cbjLcwBofQHlNttDAZHSPp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_110213_937129_19B2CE4C 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] treewide: use "model" instead of ambiguous
 "boardname" in 01_leds
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

At the moment, several board.d/01_leds files use a variable for the
model part of their label. For historic reasons, this is called
"boardname", though when a vendor is present in the result of the
board_name function, it's only the model part of this result.

To signal this difference of the variable compared to the board_name
function, let's just rename it to "model", as it contains the model
part of the board name/compatible.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../generic/base-files/etc/board.d/01_leds    | 142 +++++++--------
 .../etc/uci-defaults/04_led_migration         |   4 +-
 .../etc/uci-defaults/04_led_migration         |   2 +-
 .../ath79/nand/base-files/etc/board.d/01_leds |   2 +-
 .../ath79/tiny/base-files/etc/board.d/01_leds |  12 +-
 .../ipq40xx/base-files/etc/board.d/01_leds    |  44 ++---
 .../ipq806x/base-files/etc/board.d/01_leds    |  44 ++---
 .../cortexa9/base-files/etc/board.d/01_leds   |  10 +-
 .../mt7620/base-files/etc/board.d/01_leds     | 162 +++++++++---------
 .../mt7621/base-files/etc/board.d/01_leds     |  64 +++----
 .../etc/uci-defaults/04_led_migration         |  10 +-
 .../mt76x8/base-files/etc/board.d/01_leds     | 106 ++++++------
 .../rt288x/base-files/etc/board.d/01_leds     |   4 +-
 .../rt305x/base-files/etc/board.d/01_leds     |  30 ++--
 .../rt3883/base-files/etc/board.d/01_leds     |  10 +-
 15 files changed, 323 insertions(+), 323 deletions(-)

diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index a3c5b3f988..ce8cc18f09 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -5,98 +5,98 @@
 board_config_update
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 8dev,carambola2)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:orange:eth0" "eth0"
-	ucidef_set_led_switch "wan" "WAN" "$boardname:orange:eth1" "switch0" "0x04"
+	ucidef_set_led_netdev "lan" "LAN" "$model:orange:eth0" "eth0"
+	ucidef_set_led_switch "wan" "WAN" "$model:orange:eth1" "switch0" "0x04"
 	;;
 alfa-network,ap121f|\
 avm,fritz450e)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
 	;;
 avm,fritz1750e)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
 	ucidef_set_rssimon "wlan1" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan1" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green:rssi1" "wlan1" "20" "100"
-	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$boardname:green:rssi2" "wlan1" "40" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssi3" "wlan1" "60" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi4" "wlan1" "80" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:green:rssi0" "wlan1" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:green:rssi1" "wlan1" "20" "100"
+	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$model:green:rssi2" "wlan1" "40" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:rssi3" "wlan1" "60" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssi4" "wlan1" "80" "100"
 	;;
 avm,fritz300e)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green:rssi1" "wlan0" "20" "100"
-	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$boardname:green:rssi2" "wlan0" "40" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssi3" "wlan0" "60" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi4" "wlan0" "80" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:green:rssi0" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:green:rssi1" "wlan0" "20" "100"
+	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$model:green:rssi2" "wlan0" "40" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:rssi3" "wlan0" "60" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssi4" "wlan0" "80" "100"
 	;;
 avm,fritz4020)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
-	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x1E"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
+	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x1E"
 	;;
 comfast,cf-e110n-v2)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth1"
-	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x02"
-	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth1"
+	ucidef_set_led_switch "wan" "WAN" "$model:green:wan" "switch0" "0x02"
+	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:rssimediumlow" "wlan0" "26" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh" "wlan0" "76" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssimediumlow" "wlan0" "26" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:rssimediumhigh" "wlan0" "51" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wlan0" "76" "100"
 	;;
 comfast,cf-e120a-v3)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth1"
-	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x04"
+	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth1"
+	ucidef_set_led_switch "wan" "WAN" "$model:green:wan" "switch0" "0x04"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:rssimediumlow" "wlan0" "26" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh" "wlan0" "76" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssimediumlow" "wlan0" "26" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:rssimediumhigh" "wlan0" "51" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wlan0" "76" "100"
 	;;
 comfast,cf-e313ac)
-	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x02"
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
+	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x02"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:rssimediumlow" "wlan0" "26" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh" "wlan0" "76" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssimediumlow" "wlan0" "26" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:rssimediumhigh" "wlan0" "51" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wlan0" "76" "100"
 	;;
 comfast,cf-e314n-v2)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth1"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth0"
+	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth1"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:red:rssilow" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:red:rssimediumlow" "wlan0" "26" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssimediumhigh" "wlan0" "51" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssihigh" "wlan0" "76" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:red:rssilow" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:red:rssimediumlow" "wlan0" "26" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:rssimediumhigh" "wlan0" "51" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssihigh" "wlan0" "76" "100"
 	;;
 comfast,cf-e5)
-	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x02"
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:wan" "eth1"
+	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x02"
+	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:blue:rssi0" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$boardname:blue:rssi1" "wlan0" "33" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:blue:rssi2" "wlan0" "66" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:blue:rssi0" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "$model:blue:rssi1" "wlan0" "33" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:blue:rssi2" "wlan0" "66" "100"
 	;;
 comfast,cf-e560ac)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:wan" "eth1"
-	ucidef_set_led_switch "lan1" "LAN1" "$boardname:blue:lan1" "switch0" "0x02"
-	ucidef_set_led_switch "lan2" "LAN2" "$boardname:blue:lan2" "switch0" "0x04"
-	ucidef_set_led_switch "lan3" "LAN3" "$boardname:blue:lan3" "switch0" "0x08"
-	ucidef_set_led_switch "lan4" "LAN4" "$boardname:blue:lan4" "switch0" "0x10"
+	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
+	ucidef_set_led_switch "lan1" "LAN1" "$model:blue:lan1" "switch0" "0x02"
+	ucidef_set_led_switch "lan2" "LAN2" "$model:blue:lan2" "switch0" "0x04"
+	ucidef_set_led_switch "lan3" "LAN3" "$model:blue:lan3" "switch0" "0x08"
+	ucidef_set_led_switch "lan4" "LAN4" "$model:blue:lan4" "switch0" "0x10"
 	;;
 comfast,cf-ew72)
-	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x02"
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:wan" "eth1"
+	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x02"
+	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
 	;;
 comfast,cf-wr752ac-v1|\
 engenius,ecb1750)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:blue:lan" "eth0"
+	ucidef_set_led_netdev "lan" "LAN" "$model:blue:lan" "eth0"
 	;;
 devolo,magic-2-wifi)
 	ucidef_set_led_netdev "plcw" "dLAN" "devolo:white:dlan" "eth0.1" "rx"
@@ -105,23 +105,23 @@ dlink,dir-842-c1|\
 dlink,dir-842-c2|\
 dlink,dir-842-c3|\
 dlink,dir-859-a1)
-	ucidef_set_led_switch "internet" "WAN" "$boardname:green:internet" "switch0" "0x20"
+	ucidef_set_led_switch "internet" "WAN" "$model:green:internet" "switch0" "0x20"
 	;;
 engenius,ews511ap)
-	ucidef_set_led_netdev "lan1" "LAN1" "$boardname:blue:lan1" "eth1"
-	ucidef_set_led_netdev "lan2" "LAN2" "$boardname:blue:lan2" "eth0"
+	ucidef_set_led_netdev "lan1" "LAN1" "$model:blue:lan1" "eth1"
+	ucidef_set_led_netdev "lan2" "LAN2" "$model:blue:lan2" "eth0"
 	;;
 etactica,eg200)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:red:eth0" "eth0"
-	ucidef_set_led_oneshot "modbus" "Modbus" "$boardname:red:modbus" "100" "33"
+	ucidef_set_led_netdev "lan" "LAN" "$model:red:eth0" "eth0"
+	ucidef_set_led_oneshot "modbus" "Modbus" "$model:red:modbus" "100" "33"
 	;;
 glinet,6408|\
 glinet,6416)
 	ucidef_set_led_netdev "lan" "LAN" "gl-inet:green:lan" "eth0"
 	;;
 glinet,gl-ar150)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
-	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x02"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
+	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x02"
 	;;
 glinet,gl-ar300m-lite)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m-lite:green:lan" "eth0"
@@ -130,7 +130,7 @@ glinet,gl-ar300m16)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
 	;;
 glinet,gl-x750)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
 	;;
 netgear,wnr2200-8m|\
 netgear,wnr2200-16m)
@@ -155,7 +155,7 @@ pcs,cr3000)
 	ucidef_set_led_switch "lan4" "LAN4" "pcs:blue:lan4" "switch0" "0x02"
 	;;
 qihoo,c301)
-	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
 	;;
 tplink,archer-a7-v5|\
 tplink,archer-c7-v4|\
@@ -291,15 +291,15 @@ ubnt,powerbeam-5ac-gen2)
 	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "ubnt:blue:rssi3" "wlan0" "76" "100"
 	;;
 wd,mynet-wifi-rangeextender)
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	ucidef_set_led_netdev "lan" "LAN" "$model:green:lan" "eth0"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:rssi-low" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimedium" "RSSIMED" "$boardname:blue:rssi-med" "wlan0" "33" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIMAX" "$boardname:blue:rssi-max" "wlan0" "66" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:rssi-low" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimedium" "RSSIMED" "$model:blue:rssi-med" "wlan0" "33" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIMAX" "$model:blue:rssi-max" "wlan0" "66" "100"
 	;;
 yuncore,a770)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
-	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x10"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth1"
+	ucidef_set_led_switch "lan" "LAN" "$model:green:lan" "switch0" "0x10"
 	;;
 zbtlink,zbt-wd323)
 	ucidef_set_led_switch "lan1" "LAN1" "zbt-wd323:orange:lan1" "switch0" "0x10"
diff --git a/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
index cffc2e6c4b..eb73e08361 100644
--- a/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
@@ -4,7 +4,7 @@
 . /lib/functions/migrations.sh
 
 board=$(board_name)
-boardonly="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 engenius,epg5000)
@@ -19,7 +19,7 @@ tplink,archer-c60-v2|\
 tplink,archer-c7-v4|\
 tplink,archer-c7-v5|\
 tplink,tl-wr902ac-v1)
-	migrate_leds "^$boardonly:=tp-link:"
+	migrate_leds "^$model:=tp-link:"
 	;;
 tplink,archer-c7-v2|\
 tplink,tl-wdr3600-v1|\
diff --git a/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration
index 1a7b371a99..2ccce89a9a 100644
--- a/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration
@@ -4,7 +4,7 @@
 . /lib/functions/migrations.sh
 
 board=$(board_name)
-boardonly="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 mikrotik,*)
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
index d9989ec538..af256e2387 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -5,7 +5,7 @@
 board_config_update
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 glinet,gl-ar300m-nand|\
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
index 3588278b01..94ec4b770c 100755
--- a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
@@ -5,15 +5,15 @@
 board_config_update
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 buffalo,whr-g301n)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
-	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x02"
-	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x04"
-	ucidef_set_led_switch "lan3" "LAN3" "$boardname:green:lan3" "switch0" "0x08"
-	ucidef_set_led_switch "lan4" "LAN4" "$boardname:green:lan4" "switch0" "0x10"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth0"
+	ucidef_set_led_switch "lan1" "LAN1" "$model:green:lan1" "switch0" "0x02"
+	ucidef_set_led_switch "lan2" "LAN2" "$model:green:lan2" "switch0" "0x04"
+	ucidef_set_led_switch "lan3" "LAN3" "$model:green:lan3" "switch0" "0x08"
+	ucidef_set_led_switch "lan4" "LAN4" "$model:green:lan4" "switch0" "0x10"
 	;;
 dlink,dir-615-e4)
 	ucidef_set_led_netdev "wan" "WAN" "d-link:green:wan" "eth0"
diff --git a/target/linux/ipq40xx/base-files/etc/board.d/01_leds b/target/linux/ipq40xx/base-files/etc/board.d/01_leds
index 0a128e8cbc..af4692b0cf 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/01_leds
+++ b/target/linux/ipq40xx/base-files/etc/board.d/01_leds
@@ -8,15 +8,15 @@
 board_config_update
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 alfa-network,ap120c-ac)
-	ucidef_set_led_netdev "wan" "WAN" "${boardname}:amber:wan" "eth1"
+	ucidef_set_led_netdev "wan" "WAN" "$model:amber:wan" "eth1"
 	;;
 asus,rt-ac58u)
-	ucidef_set_led_netdev "wan" "WAN" "${boardname}:blue:wan" "eth1"
-	ucidef_set_led_switch "lan" "LAN" "${boardname}:blue:lan" "switch0" "0x1e"
+	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
+	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x1e"
 	;;
 avm,fritzbox-4040)
 	ucidef_set_led_wlan "wlan" "WLAN" "fritz4040:green:wlan" "phy0tpt" "phy1tpt"
@@ -25,28 +25,28 @@ avm,fritzbox-4040)
 	;;
 avm,fritzbox-7530 |\
 glinet,gl-b1300)
-	ucidef_set_led_wlan "wlan" "WLAN" "${boardname}:green:wlan" "phy0tpt"
+	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
 	;;
 engenius,eap1300)
-	ucidef_set_led_netdev "lan" "LAN" "${boardname}:blue:lan" "eth0"
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:blue:wlan2g" "phy0tpt"
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:yellow:wlan5g" "phy1tpt"
-	ucidef_set_led_default "mesh" "MESH" "${boardname}:blue:mesh" "0"
+	ucidef_set_led_netdev "lan" "LAN" "$model:blue:lan" "eth0"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:blue:wlan2g" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:yellow:wlan5g" "phy1tpt"
+	ucidef_set_led_default "mesh" "MESH" "$model:blue:mesh" "0"
 	;;
 engenius,eap2200)
-	ucidef_set_led_netdev "lan1" "LAN1" "${boardname}:blue:lan1" "eth0"
-	ucidef_set_led_netdev "lan2" "LAN2" "${boardname}:blue:lan2" "eth1"
+	ucidef_set_led_netdev "lan1" "LAN1" "$model:blue:lan1" "eth0"
+	ucidef_set_led_netdev "lan2" "LAN2" "$model:blue:lan2" "eth1"
 	;;
 engenius,ens620ext)
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2G" "phy0tpt"
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5G" "phy1tpt"
-	ucidef_set_led_netdev "lan1" "LAN1" "${boardname}:green:lan1" "eth0"
-	ucidef_set_led_netdev "lan2" "LAN2" "${boardname}:green:lan2" "eth1"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2G" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5G" "phy1tpt"
+	ucidef_set_led_netdev "lan1" "LAN1" "$model:green:lan1" "eth0"
+	ucidef_set_led_netdev "lan2" "LAN2" "$model:green:lan2" "eth1"
 	;;
 mobipromo,cm520-79f)
-	ucidef_set_led_netdev "wan" "WAN" "${boardname}:blue:wan" "eth1"
-	ucidef_set_led_switch "lan1" "LAN1" "${boardname}:blue:lan1" "switch0" "0x10"
-	ucidef_set_led_switch "lan2" "LAN2" "${boardname}:blue:lan2" "switch0" "0x08"
+	ucidef_set_led_netdev "wan" "WAN" "$model:blue:wan" "eth1"
+	ucidef_set_led_switch "lan1" "LAN1" "$model:blue:lan1" "switch0" "0x10"
+	ucidef_set_led_switch "lan2" "LAN2" "$model:blue:lan2" "switch0" "0x08"
 	;;
 netgear,ex6100v2 |\
 netgear,ex6150v2)
@@ -59,12 +59,12 @@ qxwlan,e2600ac-c2)
 	ucidef_set_led_wlan "wlan5g" "WLAN1" "e2600ac:green:wlan1" "phy1tpt"
 	;;
 zyxel,nbg6617)
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2G" "phy0tpt"
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5G" "phy1tpt"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2G" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5G" "phy1tpt"
 	;;
 zyxel,wre6606)
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2g" "phy0tpt"
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5g" "phy1tpt"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2g" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5g" "phy1tpt"
 	;;
 *)
 	;;
diff --git a/target/linux/ipq806x/base-files/etc/board.d/01_leds b/target/linux/ipq806x/base-files/etc/board.d/01_leds
index f8b6c32358..f169397224 100755
--- a/target/linux/ipq806x/base-files/etc/board.d/01_leds
+++ b/target/linux/ipq806x/base-files/etc/board.d/01_leds
@@ -8,46 +8,46 @@
 board_config_update
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 buffalo,wxr-2533dhp)
-	ucidef_set_led_wlan "wlan" "WLAN" "${boardname}:white:wireless" "phy0tpt"
-	ucidef_set_led_switch "wan" "WAN" "${boardname}:white:internet" "switch0" "0x20"
+	ucidef_set_led_wlan "wlan" "WLAN" "$model:white:wireless" "phy0tpt"
+	ucidef_set_led_switch "wan" "WAN" "$model:white:internet" "switch0" "0x20"
 	;;
 compex,wpq864)
-	ucidef_set_led_usbport "usb" "USB" "wpq864:green:usb" "usb1-port1" "usb2-port1"
-	ucidef_set_led_usbport "pcie-usb" "PCIe USB" "wpq864:green:usb-pcie" "usb3-port1"
+	ucidef_set_led_usbport "usb" "USB" "$model:green:usb" "usb1-port1" "usb2-port1"
+	ucidef_set_led_usbport "pcie-usb" "PCIe USB" "$model:green:usb-pcie" "usb3-port1"
 	;;
 nec,wg2600hp)
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:green:wlan2g" "phy1tpt"
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:green:wlan5g" "phy0tpt"
-	ucidef_set_led_switch "wan" "WAN" "${boardname}:green:active" "switch0" "0x2"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2g" "phy1tpt"
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5g" "phy0tpt"
+	ucidef_set_led_switch "wan" "WAN" "$model:green:active" "switch0" "0x2"
 	;;
 netgear,d7800 |\
 netgear,r7500 |\
 netgear,r7500v2 |\
 netgear,r7800)
-	ucidef_set_led_usbport "usb1" "USB 1" "${boardname}:white:usb1" "usb1-port1" "usb2-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "${boardname}:white:usb2" "usb3-port1" "usb4-port1"
-	ucidef_set_led_switch "wan" "WAN" "${boardname}:white:wan" "switch0" "0x20"
-	ucidef_set_led_ide "esata" "eSATA" "${boardname}:white:esata"
+	ucidef_set_led_usbport "usb1" "USB 1" "$model:white:usb1" "usb1-port1" "usb2-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "$model:white:usb2" "usb3-port1" "usb4-port1"
+	ucidef_set_led_switch "wan" "WAN" "$model:white:wan" "switch0" "0x20"
+	ucidef_set_led_ide "esata" "eSATA" "$model:white:esata"
 	;;
 tplink,c2600)
-	ucidef_set_led_usbport "usb1" "USB 1" "${boardname}:white:usb_2" "usb1-port1" "usb2-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "${boardname}:white:usb_4" "usb3-port1" "usb4-port1"
-	ucidef_set_led_switch "wan" "wan" "${boardname}:white:wan" "switch0" "0x20"
-	ucidef_set_led_switch "lan" "lan" "${boardname}:white:lan" "switch0" "0x1e"
+	ucidef_set_led_usbport "usb1" "USB 1" "$model:white:usb_2" "usb1-port1" "usb2-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "$model:white:usb_4" "usb3-port1" "usb4-port1"
+	ucidef_set_led_switch "wan" "wan" "$model:white:wan" "switch0" "0x20"
+	ucidef_set_led_switch "lan" "lan" "$model:white:lan" "switch0" "0x1e"
 	;;
 tplink,vr2600v)
-	ucidef_set_led_usbport "usb" "USB" "${boardname}:white:usb" "usb1-port1" "usb2-port1" "usb3-port1" "usb4-port1"
-	ucidef_set_led_switch "lan" "lan" "${boardname}:white:lan" "switch0" "0x1e"
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "${boardname}:white:wlan2g" "phy0tpt"
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "${boardname}:white:wlan5g" "phy1tpt"
-	ucidef_set_led_switch "wan" "wan" "${boardname}:white:wan" "switch0" "0x20"
+	ucidef_set_led_usbport "usb" "USB" "$model:white:usb" "usb1-port1" "usb2-port1" "usb3-port1" "usb4-port1"
+	ucidef_set_led_switch "lan" "lan" "$model:white:lan" "switch0" "0x1e"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:white:wlan2g" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:white:wlan5g" "phy1tpt"
+	ucidef_set_led_switch "wan" "wan" "$model:white:wan" "switch0" "0x20"
 	;;
 zyxel,nbg6817)
-	ucidef_set_led_netdev "wan" "WAN" "${boardname}:white:internet" "eth1"
+	ucidef_set_led_netdev "wan" "WAN" "$model:white:internet" "eth1"
 	;;
 *)
 	;;
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
index a7762f0080..08db772e4a 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
@@ -9,17 +9,17 @@
 board_config_update
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 linksys,caiman|\
 linksys,cobra|\
 linksys,rango|\
 linksys,shelby)
-	ucidef_set_led_netdev "wan" "WAN" "pca963x:$boardname:white:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:$boardname:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:$boardname:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:$boardname:white:usb3_2" "usb3-port1"
+	ucidef_set_led_netdev "wan" "WAN" "pca963x:$model:white:wan" "eth1"
+	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:$model:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:$model:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:$model:white:usb3_2" "usb3-port1"
 	;;
 linksys,mamba)
 	ucidef_set_led_netdev "wan" "WAN" "mamba:white:wan" "eth1"
diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
index c1deae59e3..e644434f93 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
@@ -9,7 +9,7 @@ set_wifi_led() {
 
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 board_config_update
 
@@ -18,41 +18,41 @@ led_wlan="$(get_dt_led wlan)"
 
 case $board in
 aigale,ai-br100)
-	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" "eth0.2"
-	set_wifi_led "$boardname:blue:wlan"
+	ucidef_set_led_netdev "wan" "wan" "$model:blue:wan" "eth0.2"
+	set_wifi_led "$model:blue:wlan"
 	;;
 alfa-network,ac1200rm)
-	set_wifi_led "$boardname:green:wlan2g" "wlan1"
+	set_wifi_led "$model:green:wlan2g" "wlan1"
 	;;
 alfa-network,r36m-e4g)
-	ucidef_set_led_netdev "4g" "4g" "$boardname:orange:4g" "wwan0"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x8"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
+	ucidef_set_led_netdev "4g" "4g" "$model:orange:4g" "wwan0"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x8"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x10"
 	;;
 alfa-network,tube-e4g)
-	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0"
-	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" "eth0"
+	ucidef_set_led_netdev "4g" "4g" "$model:green:4g" "wwan0"
+	ucidef_set_led_netdev "lan" "lan" "$model:blue:lan" "eth0"
 	;;
 asus,rp-n53)
-	ucidef_set_led_netdev "eth" "Network" "$boardname:white:back" "eth0"
-	set_wifi_led "$boardname:blue:wifi"
+	ucidef_set_led_netdev "eth" "Network" "$model:white:back" "eth0"
+	set_wifi_led "$model:blue:wifi"
 	;;
 asus,rt-n12p)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0.1
-	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" eth0.2
-	set_wifi_led "$boardname:green:air"
+	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" eth0.1
+	ucidef_set_led_netdev "wan" "wan" "$model:green:wan" eth0.2
+	set_wifi_led "$model:green:air"
 	;;
 asus,rt-n14u)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" eth0.1
-	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" eth0.2
-	set_wifi_led "$boardname:blue:air"
+	ucidef_set_led_netdev "lan" "lan" "$model:blue:lan" eth0.1
+	ucidef_set_led_netdev "wan" "wan" "$model:blue:wan" eth0.2
+	set_wifi_led "$model:blue:air"
 	;;
 bdcom,wap2100-sk)
-	set_wifi_led "$boardname:green:wlan2g"
+	set_wifi_led "$model:green:wlan2g"
 	;;
 comfast,cf-wr800n)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:white:ethernet" eth0.1
-	set_wifi_led "$boardname:white:wifi"
+	ucidef_set_led_netdev "lan" "lan" "$model:white:ethernet" eth0.1
+	set_wifi_led "$model:white:wifi"
 	;;
 dlink,dwr-116-a1|\
 head-weblink,hdrm200|\
@@ -62,146 +62,146 @@ zbtlink,zbt-wr8305rt|\
 zyxel,keenetic-omni|\
 zyxel,keenetic-omni-ii|\
 zyxel,keenetic-viva)
-	set_wifi_led "$boardname:green:wifi"
+	set_wifi_led "$model:green:wifi"
 	;;
 dlink,dwr-118-a1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1f"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x20"
-	set_wifi_led "$boardname:green:wlan2g" "wlan1"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1f"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x20"
+	set_wifi_led "$model:green:wlan2g" "wlan1"
 	;;
 dlink,dwr-118-a2)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	set_wifi_led "$boardname:green:wlan2g" "wlan1"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
+	set_wifi_led "$model:green:wlan2g" "wlan1"
 	;;
 dlink,dwr-921-c1|\
 dlink,dwr-922-e2)
-	set_wifi_led "$boardname:green:wifi"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
-	ucidef_set_led_netdev "signalstrength" "signalstrength" "$boardname:green:sigstrength" "wwan0" "link"
-	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0" "tx rx"
+	set_wifi_led "$model:green:wifi"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x0f"
+	ucidef_set_led_netdev "signalstrength" "signalstrength" "$model:green:sigstrength" "wwan0" "link"
+	ucidef_set_led_netdev "4g" "4g" "$model:green:4g" "wwan0" "tx rx"
 	;;
 dlink,dwr-960)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x2e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x2e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	;;
 dovado,tiny-ac)
-	set_wifi_led "$boardname:orange:wifi"
+	set_wifi_led "$model:orange:wifi"
 	;;
 edimax,br-6478ac-v2|\
 edimax,ew-7478apc)
-	set_wifi_led "$boardname:blue:wlan"
+	set_wifi_led "$model:blue:wlan"
 	;;
 edimax,ew-7476rpc|\
 edimax,ew-7478ac)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan"  "switch0" "0x20"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan"  "switch0" "0x20"
 	;;
 elecom,wrh-300cr)
-	set_wifi_led "$boardname:green:wlan"
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:ethernet" "eth0"
+	set_wifi_led "$model:green:wlan"
+	ucidef_set_led_netdev "lan" "lan" "$model:green:ethernet" "eth0"
 	;;
 engenius,esr600)
-	ucidef_set_led_netdev "wlan5g" "5.0GHz" "$boardname:blue:wlan5g" "wlan0"
-	ucidef_set_led_netdev "wlan2g" "2.4GHz" "$boardname:blue:wlan2g" "wlan1"
+	ucidef_set_led_netdev "wlan5g" "5.0GHz" "$model:blue:wlan5g" "wlan0"
+	ucidef_set_led_netdev "wlan2g" "2.4GHz" "$model:blue:wlan2g" "wlan1"
 	;;
 glinet,gl-mt300a|\
 glinet,gl-mt300n|\
 glinet,gl-mt750)
-	set_wifi_led "$boardname:wlan"
+	set_wifi_led "$model:wlan"
 	;;
 hiwifi,hc5661|\
 hiwifi,hc5761)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x01"
+	ucidef_set_led_switch "internet" "internet" "$model:blue:internet" "switch0" "0x01"
 	;;
 hiwifi,hc5861)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x20"
+	ucidef_set_led_switch "internet" "internet" "$model:blue:internet" "switch0" "0x20"
 	;;
 hnet,c108)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
-	ucidef_set_led_netdev "modem" "modem" "$boardname:green:modem" "wwan0"
+	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" "eth0"
+	ucidef_set_led_netdev "modem" "modem" "$model:green:modem" "wwan0"
 	;;
 iodata,wn-ac1167gr|\
 iodata,wn-ac733gr3)
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$boardname:green:wlan5g" "phy0radio"
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$boardname:green:wlan2g" "phy1radio"
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$model:green:wlan5g" "phy0radio"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$model:green:wlan2g" "phy1radio"
 	;;
 kimax,u25awf-h1)
 	set_wifi_led "u25awf:red:wifi"
 	ucidef_set_led_netdev "eth" "eth" "u25awf:green:lan" "eth0"
 	;;
 kimax,u35wf)
-	set_wifi_led "$boardname:blue:wifi"
-	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
+	set_wifi_led "$model:blue:wifi"
+	ucidef_set_led_netdev "eth" "ETH" "$model:green:eth" "eth0"
 	;;
 kingston,mlw221|\
 kingston,mlwg2|\
 sanlinking,d240)
-	set_wifi_led "$boardname:blue:wifi"
+	set_wifi_led "$model:blue:wifi"
 	;;
 lava,lr-25g001)
-	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "wlan1"
-	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:green:wlan5g" "wlan0"
+	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$model:green:wlan2g" "wlan1"
+	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$model:green:wlan5g" "wlan0"
 	;;
 lenovo,newifi-y1)
-	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:blue:wifi" "wlan1"
-	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi5g" "wlan0"
-	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x03"
+	ucidef_set_led_netdev "wifi" "WIFI" "$model:blue:wifi" "wlan1"
+	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$model:blue:wifi5g" "wlan0"
+	ucidef_set_led_switch "lan" "LAN" "$model:blue:lan" "switch0" "0x03"
 	;;
 lenovo,newifi-y1s)
-	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:yellow:wifi" "wlan1"
-	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi" "wlan0"
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:internet" "eth0.2" "tx rx"
+	ucidef_set_led_netdev "wifi" "WIFI" "$model:yellow:wifi" "wlan1"
+	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$model:blue:wifi" "wlan0"
+	ucidef_set_led_netdev "wan" "WAN" "$model:blue:internet" "eth0.2" "tx rx"
 	;;
 netgear,ex2700|\
 netgear,wn3000rp-v3)
-	set_wifi_led "$boardname:green:router"
+	set_wifi_led "$model:green:router"
 	;;
 netgear,ex3700|\
 netgear,ex6130)
-	ucidef_set_led_netdev "wlan5g" "ROUTER (green)" "$boardname:green:router" "wlan0"
-	ucidef_set_led_netdev "wlan2g" "DEVICE (green)" "$boardname:green:device" "wlan1"
+	ucidef_set_led_netdev "wlan5g" "ROUTER (green)" "$model:green:router" "wlan0"
+	ucidef_set_led_netdev "wlan2g" "DEVICE (green)" "$model:green:device" "wlan1"
 	;;
 phicomm,psg1208)
-	set_wifi_led "$boardname:white:wlan2g"
+	set_wifi_led "$model:white:wlan2g"
 	;;
 planex,mzk-ex750np|\
 zbtlink,zbt-we826-e)
-	set_wifi_led "$boardname:red:wifi"
+	set_wifi_led "$model:red:wifi"
 	;;
 tplink,archer-c2-v1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch1" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch1" "0x01"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch1" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch1" "0x01"
 	;;
 tplink,archer-c20-v1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
+	ucidef_set_led_switch "lan" "lan" "$model:blue:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x01"
 	;;
 tplink,archer-c20i)
-	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
+	ucidef_set_led_switch "lan" "lan" "$model:blue:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x01"
 	;;
 tplink,archer-c50-v1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	;;
 tplink,archer-mr200)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:white:lan" "eth0.1"
-	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "usb0"
+	ucidef_set_led_netdev "lan" "lan" "$model:white:lan" "eth0.1"
+	ucidef_set_led_netdev "wan" "wan" "$model:white:wan" "usb0"
 	;;
 tplink,re200-v1)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
+	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" "eth0"
 	;;
 youku,yk1)
-	set_wifi_led "$boardname:blue:air"
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
+	set_wifi_led "$model:blue:air"
+	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x10"
 	;;
 zbtlink,zbt-ape522ii)
-	ucidef_set_led_netdev "wlan2g4" "wlan1-link" "$boardname:green:wlan2g4" "wlan1"
-	ucidef_set_led_netdev "sys1" "wlan1" "$boardname:green:sys1" "wlan1" "tx rx"
-	ucidef_set_led_netdev "sys2" "wlan0" "$boardname:green:sys2" "wlan0" "tx rx"
+	ucidef_set_led_netdev "wlan2g4" "wlan1-link" "$model:green:wlan2g4" "wlan1"
+	ucidef_set_led_netdev "sys1" "wlan1" "$model:green:sys1" "wlan1" "tx rx"
+	ucidef_set_led_netdev "sys2" "wlan0" "$model:green:sys2" "wlan0" "tx rx"
 	;;
 zbtlink,zbt-wa05)
-	set_wifi_led "$boardname:blue:air"
+	set_wifi_led "$model:blue:air"
 	;;
 zbtlink,zbt-we826-16m|\
 zbtlink,zbt-we826-32m)
@@ -217,7 +217,7 @@ zbtlink,zbt-we1026-h-32m)
 	ucidef_set_led_switch "wan" "wan" "we1026-h:green:wan" "switch0" "0x10"
 	;;
 zbtlink,zbt-we2026)
-	set_wifi_led "$boardname:green:wlan"
+	set_wifi_led "$model:green:wlan"
 	;;
 esac
 
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
index fdfd29d011..8073c71aea 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
@@ -9,7 +9,7 @@ set_wifi_led() {
 
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 board_config_update
 
@@ -18,70 +18,70 @@ led_wlan="$(get_dt_led wlan)"
 
 case $board in
 d-team,newifi-d2)
-	ucidef_set_led_netdev "internet" "internet" "$boardname:amber:internet" "wan"
-	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:blue:wlan2g" "wlan0"
-	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:blue:wlan5g" "wlan1"
+	ucidef_set_led_netdev "internet" "internet" "$model:amber:internet" "wan"
+	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$model:blue:wlan2g" "wlan0"
+	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$model:blue:wlan5g" "wlan1"
 	;;
 d-team,pbr-m1|\
 gehua,ghl-r-001)
-	ucidef_set_led_netdev "internet" "internet" "$boardname:blue:internet" "wan"
+	ucidef_set_led_netdev "internet" "internet" "$model:blue:internet" "wan"
 	;;
 dlink,dir-860l-b1)
-	ucidef_set_led_netdev "wan" "wan" "$boardname:green:net" "wan"
+	ucidef_set_led_netdev "wan" "wan" "$model:green:net" "wan"
 	;;
 gnubee,gb-pc1|\
 gnubee,gb-pc2)
-	ucidef_set_led_netdev "lan1" "lan1" "$boardname:green:lan1" "lan1"
-	ucidef_set_led_netdev "lan2" "lan2" "$boardname:green:lan2" "lan2"
+	ucidef_set_led_netdev "lan1" "lan1" "$model:green:lan1" "lan1"
+	ucidef_set_led_netdev "lan2" "lan2" "$model:green:lan2" "lan2"
 	;;
 linksys,ea7500-v2)
-	ucidef_set_led_netdev "lan1" "lan1 link" "$boardname:green:lan1" "lan1" "link"
-	ucidef_set_led_netdev "lan2" "lan2 link" "$boardname:green:lan2" "lan2" "link"
-	ucidef_set_led_netdev "lan3" "lan3 link" "$boardname:green:lan3" "lan3" "link"
-	ucidef_set_led_netdev "lan4" "lan4 link" "$boardname:green:lan4" "lan4" "link"
-	ucidef_set_led_netdev "wan" "wan link" "$boardname:green:wan" "wan" "link"
+	ucidef_set_led_netdev "lan1" "lan1 link" "$model:green:lan1" "lan1" "link"
+	ucidef_set_led_netdev "lan2" "lan2 link" "$model:green:lan2" "lan2" "link"
+	ucidef_set_led_netdev "lan3" "lan3 link" "$model:green:lan3" "lan3" "link"
+	ucidef_set_led_netdev "lan4" "lan4 link" "$model:green:lan4" "lan4" "link"
+	ucidef_set_led_netdev "wan" "wan link" "$model:green:wan" "wan" "link"
 	;;
 mikrotik,routerboard-m11g)
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green:rssi1" "wlan0" "20" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssi2" "wlan0" "40" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi3" "wlan0" "60" "100"
-	ucidef_set_led_rssi "rssiveryhigh" "RSSIVERYHIGH" "$boardname:green:rssi4" "wlan0" "80" "100"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$model:green:rssi0" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$model:green:rssi1" "wlan0" "20" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$model:green:rssi2" "wlan0" "40" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$model:green:rssi3" "wlan0" "60" "100"
+	ucidef_set_led_rssi "rssiveryhigh" "RSSIVERYHIGH" "$model:green:rssi4" "wlan0" "80" "100"
 	;;
 mtc,wr1201)
-	ucidef_set_led_netdev "eth_link" "LAN link" "$boardname:green:eth_link" "br-lan"
+	ucidef_set_led_netdev "eth_link" "LAN link" "$model:green:eth_link" "br-lan"
 	;;
 netgear,r6220|\
 netgear,r6260|\
 netgear,r6350|\
 netgear,r6850|\
 netgear,wndr3700-v5)
-	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" "wan"
+	ucidef_set_led_netdev "wan" "wan" "$model:green:wan" "wan"
 	;;
 netgear,r6700-v2|\
 netgear,r6800)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:white:wan" "wan"
-	ucidef_set_led_netdev "lan1" "LAN1" "$boardname:white:lan1" "lan1"
-	ucidef_set_led_netdev "lan2" "LAN2" "$boardname:white:lan2" "lan2"
-	ucidef_set_led_netdev "lan3" "LAN3" "$boardname:white:lan3" "lan3"
-	ucidef_set_led_netdev "lan4" "LAN4" "$boardname:white:lan4" "lan4"
+	ucidef_set_led_netdev "wan" "WAN" "$model:white:wan" "wan"
+	ucidef_set_led_netdev "lan1" "LAN1" "$model:white:lan1" "lan1"
+	ucidef_set_led_netdev "lan2" "LAN2" "$model:white:lan2" "lan2"
+	ucidef_set_led_netdev "lan3" "LAN3" "$model:white:lan3" "lan3"
+	ucidef_set_led_netdev "lan4" "LAN4" "$model:white:lan4" "lan4"
 	;;
 tplink,re350-v1|\
 tplink,re650-v1)
-	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "$boardname:blue:wifi2G" "wlan0"
-	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "$boardname:blue:wifi5G" "wlan1"
-	ucidef_set_led_netdev "eth_act" "LAN act" "$boardname:green:eth_act" "lan" "tx rx"
-	ucidef_set_led_netdev "eth_link" "LAN link" "$boardname:green:eth_link" "lan" "link"
+	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "$model:blue:wifi2G" "wlan0"
+	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "$model:blue:wifi5G" "wlan1"
+	ucidef_set_led_netdev "eth_act" "LAN act" "$model:green:eth_act" "lan" "tx rx"
+	ucidef_set_led_netdev "eth_link" "LAN link" "$model:green:eth_link" "lan" "link"
 	;;
 xzwifi,creativebox-v1)
-	ucidef_set_led_netdev "internet" "internet" "$boardname:blue:internet" "wan"
+	ucidef_set_led_netdev "internet" "internet" "$model:blue:internet" "wan"
 	;;
 xiaomi,redmi-router-ac2100)
-	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "wan"
+	ucidef_set_led_netdev "wan" "wan" "$model:white:wan" "wan"
 	;;
 youhua,wr1200js)
-	ucidef_set_led_netdev "internet" "INTERNET" "$boardname:green:wan" "wan"
+	ucidef_set_led_netdev "internet" "INTERNET" "$model:green:wan" "wan"
 	;;
 esac
 
diff --git a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
index 73140fd7d5..98ae99f53d 100644
--- a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
@@ -4,17 +4,17 @@
 . /lib/functions/migrations.sh
 
 board=$(board_name)
-boardonly="${board##*,}"
+model="${board##*,}"
 
 case "$board" in
 mikrotik,routerboard-750gr3)
-	migrate_leds "^rb750gr3:=$boardonly:"
+	migrate_leds "^rb750gr3:=$model:"
 mikrotik,routerboard-m11g)
-	migrate_leds "^rbm11g:=$boardonly:"
+	migrate_leds "^rbm11g:=$model:"
 mikrotik,routerboard-m33g)
-	migrate_leds "^rbm33g:=$boardonly:"
+	migrate_leds "^rbm33g:=$model:"
 netgear,wndr3700-v5)
-	migrate_leds "^wndr3700v5:=$boardonly:"
+	migrate_leds "^wndr3700v5:=$model:"
 	;;
 
 esac
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
index c66e13d3c5..5dcd643dc8 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
@@ -9,7 +9,7 @@ set_wifi_led() {
 
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 board_config_update
 
@@ -18,84 +18,84 @@ led_wlan="$(get_dt_led wlan)"
 
 case $board in
 alfa-network,awusfree1)
-	set_wifi_led "$boardname:blue:wlan"
+	set_wifi_led "$model:blue:wlan"
 	;;
 cudy,wr1000)
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
-	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1" "switch0" "0x08"
-	ucidef_set_led_switch "lan2" "lan2" "$boardname:blue:lan2" "switch0" "0x04"
+	ucidef_set_led_switch "wan" "wan" "$model:blue:wan" "switch0" "0x10"
+	ucidef_set_led_switch "lan1" "lan1" "$model:blue:lan1" "switch0" "0x08"
+	ucidef_set_led_switch "lan2" "lan2" "$model:blue:lan2" "switch0" "0x04"
 	;;
 glinet,gl-mt300n-v2)
-	set_wifi_led "$boardname:red:wlan"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x1"
+	set_wifi_led "$model:red:wlan"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x1"
 	;;
 hilink,hlk-7628n|\
 skylab,skw92a)
-	set_wifi_led "$boardname:green:wlan"
+	set_wifi_led "$model:green:wlan"
 	;;
 hiwifi,hc5661a|\
 hiwifi,hc5761a)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x10"
+	ucidef_set_led_switch "internet" "internet" "$model:blue:internet" "switch0" "0x10"
 	;;
 mediatek,linkit-smart-7688)
 	ucidef_set_led_wlan "wifi" "wifi" "linkit-smart-7688:orange:wifi" "phy0tpt"
 	;;
 netgear,r6120)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
-	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "phy0tpt"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x0f"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x10"
+	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$model:green:wlan2g" "phy0tpt"
 	;;
 rakwireless,rak633)
-	set_wifi_led "$boardname:blue:wifi"
+	set_wifi_led "$model:blue:wifi"
 	;;
 tama,w06)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
-	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_netdev "wan" "WAN" "$model:green:wan" "eth0"
+	ucidef_set_led_wlan "wlan" "WLAN" "$model:green:wlan" "phy0tpt"
 	;;
 tplink,archer-c20-v4|\
 tplink,archer-c20-v5)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	;;
 tplink,archer-c50-v3|\
 tplink,archer-c50-v4)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan2g" "phy0tpt"
-	ucidef_set_led_wlan "wlan5g" "wlan5g" "$boardname:green:wlan5g" "phy1tpt"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan2g" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "wlan5g" "$model:green:wlan5g" "phy1tpt"
 	;;
 tplink,re200-v2|\
 tplink,tl-mr3020-v3|\
 tplink,tl-wa801nd-v5)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
+	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" "eth0"
 	;;
 tplink,tl-mr3420-v5|\
 tplink,tl-wr842n-v5)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	;;
 tplink,tl-wr840n-v4)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	;;
 tplink,tl-wr841n-v13)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan1" "lan1" "$boardname:green:lan1" "switch0" "0x2"
-	ucidef_set_led_switch "lan2" "lan2" "$boardname:green:lan2" "switch0" "0x4"
-	ucidef_set_led_switch "lan3" "lan3" "$boardname:green:lan3" "switch0" "0x8"
-	ucidef_set_led_switch "lan4" "lan4" "$boardname:green:lan4" "switch0" "0x10"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan1" "lan1" "$model:green:lan1" "switch0" "0x2"
+	ucidef_set_led_switch "lan2" "lan2" "$model:green:lan2" "switch0" "0x4"
+	ucidef_set_led_switch "lan3" "lan3" "$model:green:lan3" "switch0" "0x8"
+	ucidef_set_led_switch "lan4" "lan4" "$model:green:lan4" "switch0" "0x10"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	;;
 tplink,tl-wr841n-v14)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	;;
 tplink,tl-wr902ac-v3)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x10"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$model:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan" "lan" "$model:green:lan" "switch0" "0x10"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x10"
 	;;
 unielec,u7628-01-16m)
 	ucidef_set_led_switch "lan1" "lan1" "u7628-01:green:lan1" "switch0" "0x2"
@@ -106,28 +106,28 @@ unielec,u7628-01-16m)
 	set_wifi_led "u7628-01:green:wlan"
 	;;
 wavlink,wl-wn570ha1)
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_switch "wan" "wan" "$model:green:wan" "switch0" "0x01"
 	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low" "wlan0" "1" "49"
-	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med" "wlan0" "50" "84"
-	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-high" "wlan0" "85" "100"
-	set_wifi_led "$boardname:green:wifi"
+	ucidef_set_led_rssi "wifi-low" "wifi-low" "$model:green:wifi-low" "wlan0" "1" "49"
+	ucidef_set_led_rssi "wifi-med" "wifi-med" "$model:green:wifi-med" "wlan0" "50" "84"
+	ucidef_set_led_rssi "wifi-high" "wifi-high" "$model:green:wifi-high" "wlan0" "85" "100"
+	set_wifi_led "$model:green:wifi"
 	;;
 wavlink,wl-wn575a3)
 	ucidef_set_rssimon "wlan1" "200000" "1"
-	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low" "wlan1" "1" "49"
-	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med" "wlan1" "50" "84"
-	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-high" "wlan1" "85" "100"
+	ucidef_set_led_rssi "wifi-low" "wifi-low" "$model:green:wifi-low" "wlan1" "1" "49"
+	ucidef_set_led_rssi "wifi-med" "wifi-med" "$model:green:wifi-med" "wlan1" "50" "84"
+	ucidef_set_led_rssi "wifi-high" "wifi-high" "$model:green:wifi-high" "wlan1" "85" "100"
 	;;
 zbtlink,zbt-we1226)
-	set_wifi_led "$boardname:green:wlan"
-	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x01"
-	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x02"
-	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x10"
+	set_wifi_led "$model:green:wlan"
+	ucidef_set_led_switch "lan1" "LAN1" "$model:green:lan1" "switch0" "0x01"
+	ucidef_set_led_switch "lan2" "LAN2" "$model:green:lan2" "switch0" "0x02"
+	ucidef_set_led_switch "wan" "WAN" "$model:green:wan" "switch0" "0x10"
 	;;
 zyxel,keenetic-extra-ii)
-	set_wifi_led "$boardname:green:wifi"
-	ucidef_set_led_switch "internet" "internet" "$boardname:green:internet" "switch0" "0x01"
+	set_wifi_led "$model:green:wifi"
+	ucidef_set_led_switch "internet" "internet" "$model:green:internet" "switch0" "0x01"
 	;;
 esac
 
diff --git a/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds b/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
index a042ecfbda..a9f7145d7a 100755
--- a/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
@@ -9,7 +9,7 @@ set_wifi_led() {
 
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 board_config_update
 
@@ -22,7 +22,7 @@ airlink101,ar725w)
 	set_wifi_led "rt2800soc-phy0::radio"
 	;;
 belkin,f5d8235-v1)
-	set_wifi_led "$boardname:blue:wireless"
+	set_wifi_led "$model:blue:wireless"
 	;;
 ralink,v11st-fe)
 	set_wifi_led "rt2800pci-phy0::radio"
diff --git a/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds b/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
index ae813e85d6..72485ee9a4 100755
--- a/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
@@ -9,7 +9,7 @@ set_wifi_led() {
 
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 board_config_update
 
@@ -25,7 +25,7 @@ airlive,air3gii|\
 aximcom,mr-102n|\
 edimax,3g-6200nl|\
 netgear,wnce2001)
-	set_wifi_led "$boardname:green:wlan"
+	set_wifi_led "$model:green:wlan"
 	;;
 alfa-network,w502u|\
 dlink,dir-300-b1|\
@@ -64,43 +64,43 @@ asiarf,awapn2403)
 	set_wifi_led "rt2800soc-phy0::radio"
 	;;
 dlink,dcs-930l-b1)
-	ucidef_set_led_netdev "wifi" "WiFi" "$boardname:blue:wps"
+	ucidef_set_led_netdev "wifi" "WiFi" "$model:blue:wps"
 	;;
 dlink,dir-620-d1|\
 trendnet,tew-714tru)
-	set_wifi_led "$boardname:green:wifi"
+	set_wifi_led "$model:green:wifi"
 	;;
 edimax,3g-6200n|\
 planex,mzk-w300nh2)
-	set_wifi_led "$boardname:amber:wlan"
+	set_wifi_led "$model:amber:wlan"
 	;;
 fon,fonera-20n)
-	set_wifi_led "$boardname:orange:wifi"
+	set_wifi_led "$model:orange:wifi"
 	;;
 hauppauge,broadway)
-	set_wifi_led "$boardname:red:wps_active"
+	set_wifi_led "$model:red:wps_active"
 	;;
 hootoo,ht-tm02)
-	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:lan" "eth0"
-	set_wifi_led "$boardname:blue:wlan"
+	ucidef_set_led_netdev "eth" "Ethernet" "$model:green:lan" "eth0"
+	set_wifi_led "$model:blue:wlan"
 	;;
 huawei,hg255d)
-	set_wifi_led "$boardname:green:wlan"
-	ucidef_set_led_netdev "internet" "internet" "$boardname:green:internet" "eth0.2"
+	set_wifi_led "$model:green:wlan"
+	ucidef_set_led_netdev "internet" "internet" "$model:green:internet" "eth0.2"
 	;;
 intenso,memory2move)
-	set_wifi_led "$boardname:blue:wifi"
-	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:wan" "eth0"
+	set_wifi_led "$model:blue:wifi"
+	ucidef_set_led_netdev "eth" "Ethernet" "$model:green:wan" "eth0"
 	;;
 omnima,miniembplug)
-	set_wifi_led "$boardname:red:wlan"
+	set_wifi_led "$model:red:wlan"
 	;;
 vocore,vocore-8m|\
 vocore,vocore-16m)
 	ucidef_set_led_netdev "eth" "ETH" "vocore:orange:eth" "eth0"
 	;;
 zorlik,zl5900v2)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
+	ucidef_set_led_netdev "lan" "lan" "$model:green:lan" eth0
 	;;
 esac
 
diff --git a/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds b/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
index 1a72112c6f..e921affb4b 100755
--- a/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
@@ -9,7 +9,7 @@ set_wifi_led() {
 
 
 board=$(board_name)
-boardname="${board##*,}"
+model="${board##*,}"
 
 board_config_update
 
@@ -18,14 +18,14 @@ led_wlan="$(get_dt_led wlan)"
 
 case $board in
 belkin,f9k1109v1)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:wps" "eth0"
+	ucidef_set_led_netdev "lan" "lan" "$model:blue:wps" "eth0"
 	;;
 edimax,br-6475nd)
-	set_wifi_led "$boardname:amber:wlan"
+	set_wifi_led "$model:amber:wlan"
 	;;
 omnima,hpm)
-	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
-	set_wifi_led "$boardname:green:wifi"
+	ucidef_set_led_netdev "eth" "ETH" "$model:green:eth" "eth0"
+	set_wifi_led "$model:green:wifi"
 	;;
 esac
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
