Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A96DF5358
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 19:15:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ms3HV+14j6n8JhKra+AiYFIN40ztpGqqZ2crnk3I6DY=; b=o7Sdv3XnBscRuk
	gHq1oiA8n/dDZDGobjEil4SUisJ9s9AxWW0u8PU+KhGjBQ894JrRLTHBfUV8i/FQqOYXBzQrhnE4Q
	rHygTGwWDW6rAPjsxgnonU5QJPi6t65d3ukTjgLFoW99+uUV5HRZpngmW5Z1bPDYaopwgDl7Dxqwn
	LWn25tGOULO1ARy8RUkvRLJ2iRqVlzaNDmUIJb2l8FM9RAE82/k3hTZLhDY1eOSyuaYB7B7Mmlh+X
	m/PjXGz+/XOqtP5t83sIs/f198bVD4wzRiE+QhFwdtCHTQf0XiBTZoZwGbU1RsAA/PuWb0KCNXeqr
	4fuByasiA9P//w5xQksA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8mb-0006fi-Uz; Fri, 08 Nov 2019 18:14:53 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8m2-0006Ck-OP
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 18:14:21 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MowbA-1i8cO23Mxq-00qS2M; Fri, 08 Nov 2019 19:14:12 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:14:06 +0100
Message-Id: <20191108181408.18272-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ll27sNZ8dBxT/1tD4wd1hlWJ6vUkzCxQxp6VdMyD4JYHciYN3FB
 pZGDQzy9WRQpwaQ22XJ0iKvyaSqWMnA9aTBdU5LnRhzvs3HBSN15pL865UdqtZr6wy7hbP/
 pbfRM3Echji4HZF1rniPz0jGIsadaOWq3pgRQv/KenrDN3wyZnSNnMVBq9IzRaQ7hNjOeoc
 P4LykXhlu9wWCVHtS/8ng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:J1RMVFTPiC8=:xSzzIuqbZoV830zOYrsh6r
 +jiwWWDbP0wD/4T6KVagleuasU82+Bn1JaNBTtBTn1l1nEQtKtZxV4JbjQEG5uf77haOC6C9M
 Kttkp6xPDNpmqfp+hwm+Q9bSszfDOKB+5K4Fu7l+V0hyZCxouZfgwS/3QKnmfRE4+kYPn7UBM
 Qyt4Yt9fYAL/awytHN2uYK0AZNWqmpoLv99Y0fMtiGCkzyttKCFeGthtGCVCUSQTGciTEyemg
 j4IgZI3/MpkWikk0iKkctInXFAz0ciTHAnnpE/mGDf14n6lhbQasVPysC3o1gpY6eu9H3C4ZX
 6XSj1dN0v5mJYB0xHibldydD21fUQcSkaHkXPceAZ8CsPFNIcYkq7pbsd8iVWUsiCYy97STP6
 seDh7VDd2emGJBbRn+c0bf3nsFr+AhTeVdHzKpA4v0GsIQCJMfcHBhdMR2I58ajbd6o4rCVMW
 g4R/mGW7t2Fhh5SGAx0zEZ0td4q2zVfoO2PwJge0jDXmJwM7SBa10d4GfVrshYFp4fGpn5bPY
 Ne+wExFOaarScOmeACkOv76o2QgHnO2Qrrqy5RnRiOQRDsL4oIchHiKIZG9aY/e934aR9C5iP
 VvXBoGv8/wcppJxoQiEr12GAPy/MxYZknzYs6BwGmRsLdSFaUfqrtu98rDnrBL4+Jhdl9FWM1
 k29bKC7VaFd+HGnafIFzJnrHucVaD3zRVMoCjgLPfwbF6cFNnhjVH7s7368+Q0UCvJWhZrXBv
 IheOkvxsO1R/9DAJ8EGI9k9Tsb1Jh3GPsBh4EJPD+GF1xwQNbpMqN42sHdI6+SYryX3mStf1V
 JFGHnTJIeVOUxo5AHIyJ3b6fjMdoh4Rhm0mCjfIjHnidcbXbnMWVZ7J2GwtX6DQiwJoD2FFHa
 YzKIctGXwZI79GRO/q50TL7LpMDTmUniXrQo3KbvE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_101419_084305_5FF37A9F 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/5] mac80211: add 802.11ad support
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
