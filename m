Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03BF13D952
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ms3HV+14j6n8JhKra+AiYFIN40ztpGqqZ2crnk3I6DY=; b=FUESFqjEwuY/hF
	gwfhxpnSgvD25MRLnoIGt8eGCH/zzEBd6km0BalwqqfNFMyW2wOMAJrHXX3K/+VzFCDkZu7hm+xB0
	BrWwqFrb/p4BOJXt1Xc4Xa73j5oho/pGscxI3IbdZgBtgFVCANAq7DTlwfj6SBfoVeeEVx4HGg6tX
	yHkKOQWBSnob6yBOjh7wUuAId0gsZSvAKe89wsvQkGmqtRvJZWkkNSw568aRNowXcRbRyn2tKuiKE
	hG49n9AhOnc+vuUUSVjFQHf1iHObXP3Ol/vM2z51GIs06H5Yfr9N2ORtwqp48txqE5IOaZ+jS6+IS
	+30bCfzS0XA4CO+wGXSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3hE-0008Gv-4B; Thu, 16 Jan 2020 11:52:20 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3gk-0007qm-NX
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:52:00 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mz9d7-1joAHR3aYV-00wAR7; Thu, 16 Jan 2020 12:51:46 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 12:50:58 +0100
Message-Id: <20200116115100.1906-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
References: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:GpjZG76P5py4lARXavLHG3FmGtjUIvm6Y5II/h9MTmwFwMx2K4K
 9IznVydawaFd7GMhJNWNmmakhYRjAIE3eH5q9uo6baKFnDg8z/+c78odeZZ9Izjo1yL+NWY
 fvNtfV+6QsG25+6gFSD+RlZvxAykxbl87OEllH/MJwdoNFLpsS9i3RNpf2cvFEok/QOQNPq
 xC1TqPx3cZBMZVMevTVdw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3yv0QBaOqq0=:0VyXfHiUCFFv5tpTy/zMZd
 QE/oXVywhRJTlu5JpFFZKcT0i6mSy0avf61PdTMZ7Dm/7lXiZxz/EDIZiT6wxw95wwC5nEE8w
 S1leB8il+Hoswa53GoyD5XRxlMzK6091urOq+ZFe3PxApMRzIdU4wv1TfPkYSiGAzA+P/bFRF
 3Bh16y61PlgUDzwnRDe0LawTLGr97lUbgQAvH+AHPTCfDUJH2xjiFx0ZwFSip9l1R7fEU3DH7
 7jUG2Uba4ZHLHDqiBBYDvpsAW7dlx3guUcSxI872rehfJUmQLzMaSPxwB8MuquizrBwovwPCU
 wUdxKvOQC89wMiqw0dKvS9kpJU12z+ZTPkOETUwBXurtvYjOQ4iiGn67U1O62/LK1nZtQaOan
 CKaRPc1HL1GFI42CZUi/ZBWbqJYPvE9qPylGPsN8mW+YBgX+/bYc5nHLR8nVoJjr/0EcQ4/DE
 /l36as1UBDiSJ40jCRNDC7sIoj125WyTm4N1GeCnC+go2efwH6M3/slWjDfvbKEX6oJWn8xen
 OVe+tMyBi/BKEzqAOPGjs2XKk846NcPnOAqLdkJQKtwPNnrp9dXTrZRwWXecphVv3EMuUGSby
 cl+pClYIq2QH3MXpLutEFVL6v/LIORaZOxRjTV/PNsfHfM23WmPjSCyEs0Ype/fvNIaIbNb9Z
 MFCARHurAOwgXiNtY9jPB0EWqW9wF8nEERolpjUSmt/ONqGOnsf1hPI0h091HpYTV29lpl0jW
 N01dhsj0Qec6EGUoAURDPW+DP38OLMdNrG5wnlemCfxI+P94sTveM6n6odI5jYXPLswbJqlGj
 31a/lcXpIxff9z6hPx73HeGWW15ueexc2rDFlIlu1r99sMgy7nmKNiT6xWHcdJ8oBiWowse/q
 wF1wjjZGS2QCxH5qfjqnNPuHV/r/9pHpahyNxMARg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_035151_055678_58D8B24C 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 3/5] mac80211: add 802.11ad support
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robimarko@gmail.com>

This patch adds support for 802.11ad to mac80211.sh script.
It checks whether device supports 802.11ad Channel 1 and if so
configures it to channel 1 and ad hwmode.
htmode is not needed for 802.11ad.

Signed-off-by: Robert Marko <robimarko@gmail.com>
[rewrite if/else logic in mac80211.sh]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../kernel/mac80211/files/lib/wifi/mac80211.sh | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/package/kernel/mac80211/files/lib/wifi/mac80211.sh b/package/kernel/mac80211/files/lib/wifi/mac80211.sh
index be9c537926..c7aae31d35 100644
--- a/package/kernel/mac80211/files/lib/wifi/mac80211.sh
+++ b/package/kernel/mac80211/files/lib/wifi/mac80211.sh
@@ -75,18 +75,22 @@ detect_mac80211() {
 		config_foreach check_mac80211_device wifi-device
 		[ "$found" -gt 0 ] && continue
 
-		mode_band="g"
-		channel="11"
 		htmode=""
 		ht_capab=""
 
-		iw phy "$dev" info | grep -q 'Capabilities:' && htmode=HT20
-
-		iw phy "$dev" info | grep -q '5180 MHz' && {
+		if iw phy "$dev" info | grep -q '58320 MHz'; then
+			mode_band="ad"
+			channel="1"
+		elif iw phy "$dev" info | grep -q '5180 MHz'; then
 			mode_band="a"
 			channel="36"
-			iw phy "$dev" info | grep -q 'VHT Capabilities' && htmode="VHT80"
-		}
+			iw phy "$dev" info | grep -q 'Capabilities:' && htmode=HT20
+			iw phy "$dev" info | grep -q 'VHT Capabilities' && htmode=VHT80
+		else
+			mode_band="g"
+			channel="11"
+			iw phy "$dev" info | grep -q 'Capabilities:' && htmode=HT20
+		fi
 
 		[ -n "$htmode" ] && ht_capab="set wireless.radio${devidx}.htmode=$htmode"
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
