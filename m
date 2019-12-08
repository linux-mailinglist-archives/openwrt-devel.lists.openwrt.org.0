Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 820041162D6
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BFMQfWNgYxCCZZNfM53eu3aVID2wqlW1a2bryCg7uJY=; b=KgnDbopuLwQsCUqAmJPiv/N0Yo
	UKyT7hSfViihVSLSPmKXiqpNHjbDoE9Z8OMHmyxWp+eIGyNF/sx1cX1mnnzagNb9fn0fKZAEdJJJg
	ELrgrtj6EZdfN8htpk89dG0yhJzozBE7NxO9jn0DMDsXMSfz2UEj1HAVc3VyvVvYynB0J8XsP6iIn
	UXFTUalS8ReZwYleJNPmVapI0T+Yrq6YecuG8JzxzBAL8f9W1yIrAO+e0gk4hR5zYrXsWOjz17gnR
	O9d7nCZrxRb5FTaPGWGK3yrQtDzYWwLD69nWvMqW4M8TRzWWUD31NTgAf2gA57P4qIZVF2FxnXIX0
	qMCdSjXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idyaB-0002Be-Ra; Sun, 08 Dec 2019 15:34:51 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyZB-0000zF-9S
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:33:53 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MeTwa-1i3oKh1VP2-00aTH9 for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:33:43 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:32:55 +0100
Message-Id: <20191208153255.27655-7-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
References: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:WvPKiTYs2i2SJcxfxvJa5nNfVbJn62Yt/zejRJndjm8OCJmV+B4
 PdT2HVZKggLIwbVWHL2UJcws0Bct8HjTlsCSPsmuAyXj7j3dGU/hF188gv14hgcuxSMi3Z+
 SdwM1Yp7+Ak+4mx2D84owzuVE3SkS2m530sGoDNBTLArD3S/bz7iMbLNmfKV2HFFoP7oaxF
 oYzhNDlgz7D4OH9fhMb4w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wr7MVA6A3ak=:2ERZqudQucDjPOpHS9AY54
 X+9hrcTIxZ32vjqbdkWEwaDzOmLSVcRHCuO9su2AJXnPZIJR29k/0Z2LZo4gelYFRhdvuNWok
 HMfp052hCuecVR1P2NzoKUirXPm9pfaJDYrvLr4XNq8dbJJNc4fDS3YxecE92HG8C+DWSEwQU
 aQLRM96HCSzOU7nZ8Mh4u8t/mIcPDYR47bTjFwLehGeQQMlp74w/LPxFMKQRui+4MGQErJbX+
 poQsA/7X9F8pyj5jyp3vPPg4PfoOMKxOgImvAkp0cYCcCMmYTxNvTDlDHeqmWxDv593V8ZME8
 quSHnHpeGKFAE/NZn6BB3VvShCUxBb27g45zpOthNIttcshPo8ycD1sw/H4dtS1+dUIs5HzpJ
 mTu93uhKro8Q7SYqX5w4IaoOHVpPZAuRmQTMoxLdYPSK4y9s/7hpKKX7C807Wjc1K7colMiHl
 jbNtt94Ekomsnf2FV3wnCgTDxaDuEpuyLdK1ikPkQOesZuIP3enPtYbdJP3TxLt3Jb0ADHv0o
 AeIM7ZvdYZ1O2CbcBUI85cb++RZk3/y3xgPpc203rgXkFYkj765WrZsxcnbrVKzUHhniAdJjV
 O/GxeElYYveyORYyCKWAQsM1eUMb+3yQn/kEEPtzkxnAImSnz3wy0CSE614Ghs8LFo6ZcQIqM
 oGkzKYL2gXykEZKE8Liy8Dt2pVkw+r74jc/avocJN9jMBT7BCVXHRkZOarn9wF4896BJwf4H1
 2/m6xzLqod+yNU0YweOE0vSV98EhS96ZOp9dsPTuFtshQ02mVcgpUGpVhnDnGxMFL4SbFSzBH
 82T6HxOx037ejo6ecVAhSvtL1k3C93PMDGE60TqQJzss4FVd4FP5UZgN/bcBcEWsYWP9mu7/N
 rsgxdQrmnPvnCg/Yh1DWLuvpBm4X9NJIagvavNliw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073349_643299_220B29FF 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 6/6] ramips: rt305x: use flash location for
 wan_mac in 02_network
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

This uses the flash locations instead of eth0 MAC address to
calculate MAC address increments for WAN.

The change will make the MAC address setup of a particular device
more obvious and removes the dependency of 02_network on the eth0
initialization.

This removes the wan_mac setup for the following devices as they
do not set up a MAC address for ethernet in the first place:
- asiarf,awapn2403
- belkin,f7c027
- dlink,dir-615-d
- mofinetwork,mofi3500-3gn
- prolink,pwh2004
- ralink,v22rw-2x2
- unbranded,wr512-3gn-4m
- unbranded,wr512-3gn-8m

While at it, make some DT node labels consistent with the label
property.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ramips/dts/rt3050_dlink_dir-300-b1.dts    |   2 +-
 .../ramips/dts/rt5350_7links_px-4885-4m.dts   |   2 +-
 .../ramips/dts/rt5350_7links_px-4885-8m.dts   |   2 +-
 .../ramips/dts/rt5350_7links_px-4885.dtsi     |   4 +-
 .../rt305x/base-files/etc/board.d/02_network  | 100 ++++++++++--------
 5 files changed, 60 insertions(+), 50 deletions(-)

diff --git a/target/linux/ramips/dts/rt3050_dlink_dir-300-b1.dts b/target/linux/ramips/dts/rt3050_dlink_dir-300-b1.dts
index 8bc77e422d..030796f286 100644
--- a/target/linux/ramips/dts/rt3050_dlink_dir-300-b1.dts
+++ b/target/linux/ramips/dts/rt3050_dlink_dir-300-b1.dts
@@ -39,7 +39,7 @@
 				read-only;
 			};
 
-			factory: partition@40000 {
+			partition@40000 {
 				label = "devconf";
 				reg = <0x40000 0x10000>;
 				read-only;
diff --git a/target/linux/ramips/dts/rt5350_7links_px-4885-4m.dts b/target/linux/ramips/dts/rt5350_7links_px-4885-4m.dts
index 66e2c1924c..914ceb0c53 100644
--- a/target/linux/ramips/dts/rt5350_7links_px-4885-4m.dts
+++ b/target/linux/ramips/dts/rt5350_7links_px-4885-4m.dts
@@ -32,7 +32,7 @@
 				read-only;
 			};
 
-			factory: partition@40000 {
+			devconf: partition@40000 {
 				label = "devconf";
 				reg = <0x40000 0x10000>;
 				read-only;
diff --git a/target/linux/ramips/dts/rt5350_7links_px-4885-8m.dts b/target/linux/ramips/dts/rt5350_7links_px-4885-8m.dts
index f3d9926702..c9826166b4 100644
--- a/target/linux/ramips/dts/rt5350_7links_px-4885-8m.dts
+++ b/target/linux/ramips/dts/rt5350_7links_px-4885-8m.dts
@@ -32,7 +32,7 @@
 				read-only;
 			};
 
-			factory: partition@40000 {
+			devconf: partition@40000 {
 				label = "devconf";
 				reg = <0x40000 0x10000>;
 				read-only;
diff --git a/target/linux/ramips/dts/rt5350_7links_px-4885.dtsi b/target/linux/ramips/dts/rt5350_7links_px-4885.dtsi
index 032a89cd1a..cdd3033bed 100644
--- a/target/linux/ramips/dts/rt5350_7links_px-4885.dtsi
+++ b/target/linux/ramips/dts/rt5350_7links_px-4885.dtsi
@@ -51,7 +51,7 @@
 };
 
 &ethernet {
-	mtd-mac-address = <&factory 0x28>;
+	mtd-mac-address = <&devconf 0x28>;
 };
 
 &esw {
@@ -59,5 +59,5 @@
 };
 
 &wmac {
-	ralink,mtd-eeprom = <&factory 0>;
+	ralink,mtd-eeprom = <&devconf 0>;
 };
diff --git a/target/linux/ramips/rt305x/base-files/etc/board.d/02_network b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
index de71dd6202..5efcd53955 100755
--- a/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
@@ -167,34 +167,38 @@ ramips_setup_macs()
 
 	case $board in
 	7links,px-4885-4m|\
-	7links,px-4885-8m|\
+	7links,px-4885-8m)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary devconf 0x28)" 1)
+		;;
+	8devices,carambola|\
+	alfa-network,w502u|\
+	arcwireless,freestation5|\
+	netgear,wnce2001)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
+		;;
 	accton,wr6202|\
-	airlive,air3gii|\
-	argus,atp-52b|\
-	asiarf,awapn2403|\
 	asiarf,awm002-evb-4m|\
 	asiarf,awm002-evb-8m|\
-	asus,rt-g32-b1|\
-	asus,rt-n10-plus|\
 	asus,rt-n13u|\
-	asus,wl-330n3g|\
 	aztech,hw550-3g|\
-	belkin,f5d8235-v2|\
-	belkin,f7c027|\
-	dlink,dap-1350|\
-	dlink,dir-300-b1|\
-	dlink,dir-600-b1|\
-	dlink,dir-610-a1|\
+	fon,fonera-20n|\
+	huawei,hg255d|\
+	omnima,miniembwifi|\
+	planex,mzk-wdpr|\
+	poray,ip2202|\
+	teltonika,rut5xx|\
+	unbranded,xdx-rn502j|\
+	zyxel,keenetic|\
+	zyxel,nbg-419n|\
+	zyxel,nbg-419n-v2)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x28)" 1)
+		;;
+	airlive,air3gii|\
+	argus,atp-52b|\
+	asus,wl-330n3g|\
 	dlink,dir-620-d1|\
-	dlink,dwr-512-b|\
 	edimax,3g-6200n|\
 	edimax,3g-6200nl|\
-	fon,fonera-20n|\
-	huawei,hg255d|\
-	jcg,jhr-n805r|\
-	jcg,jhr-n825r|\
-	jcg,jhr-n926r|\
-	mofinetwork,mofi3500-3gn|\
 	netcore,nw718|\
 	nexx,wt1520-4m|\
 	nexx,wt1520-8m|\
@@ -203,30 +207,17 @@ ramips_setup_macs()
 	olimex,rt5350f-olinuxino|\
 	olimex,rt5350f-olinuxino-evb|\
 	omnima,miniembplug|\
-	omnima,miniembwifi|\
 	planex,mzk-w300nh2|\
-	planex,mzk-wdpr|\
-	poray,ip2202|\
-	prolink,pwh2004|\
-	ralink,v22rw-2x2|\
 	sitecom,wl-351|\
-	teltonika,rut5xx|\
-	trendnet,tew-714tru|\
-	unbranded,wr512-3gn-4m|\
-	unbranded,wr512-3gn-8m|\
-	unbranded,xdx-rn502j|\
-	upvel,ur-326n4g|\
-	upvel,ur-336un|\
-	zyxel,keenetic|\
-	zyxel,nbg-419n|\
-	zyxel,nbg-419n-v2)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+	trendnet,tew-714tru)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
 		;;
-	8devices,carambola|\
-	alfa-network,w502u|\
-	arcwireless,freestation5|\
-	netgear,wnce2001)
-		wan_mac=$(mtd_get_mac_binary factory 0x2e)
+	asus,rt-g32-b1|\
+	asus,rt-n10-plus)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary devconf 0x4)" 1)
+		;;
+	belkin,f5d8235-v2)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary uboot 0x40004)" 1)
 		;;
 	dlink,dir-300-b7|\
 	dlink,dir-320-b1|\
@@ -242,27 +233,46 @@ ramips_setup_macs()
 		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
+	dlink,dap-1350)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary devdata 0x2e)" 1)
+		;;
+	dlink,dir-300-b1|\
+	dlink,dir-600-b1|\
+	dlink,dir-610-a1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary devdata 0x4004)" 1)
+		;;
 	dlink,dir-615-d)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
 		label_mac=$(mtd_get_mac_binary devdata 0x4004)
 		;;
 	dlink,dir-615-h1)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x28)" 1)
 		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
+	dlink,dwr-512-b)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary config 0xe07e)" 1)
+		;;
+	jcg,jhr-n805r|\
+	jcg,jhr-n825r|\
+	jcg,jhr-n926r)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x2e)" 1)
+		;;
 	poray,m3|\
 	poray,m4-4m|\
 	poray,m4-8m|\
 	poray,x5|\
 	poray,x8)
-		lan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" -2)
+		lan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" -2)
 		;;
 	sparklan,wcr-150gn|\
 	wiznet,wizfi630a)
 		wan_mac=$(mtd_get_mac_binary factory 0x28)
 		;;
 	tenda,w306r-v2)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 5)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x28)" 5)
+		;;
+	upvel,ur-326n4g|\
+	upvel,ur-336un)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4004)" 1)
 		;;
 	esac
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
