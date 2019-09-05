Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC59AA458
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 15:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6Tl068YOkSi7j9IygbIueCLLDnX888j/h8fjgyeSkO8=; b=STquFpe8JTrYIs
	AkWKR0VGhxaoIwagL1yRNF+ea1kXXyTKblnYXvWibnIErCw+0A4J3UAgNSO9voNO6yqE1CaRYKQjs
	sfA9H8Z64+wGqsDRLgagX8FSIgs/62uNQox7v/HzHU5wfW1Pa7heQ57epeqCyg3lNOSaD/Eojg6bI
	8+BWTLHATHE3hE0+k2E7hU8iQJSDBvdhjksiImXCy3MyuhUV+bG2qSOG2b+5buNNbscLx1OB7c4Ou
	VtCFyKK+JAKGOgGBykps5uF8zqzLlAavhSjeOT785y0jHhXiq0qqB3rWq4LOVjx7DKWjIiDJpzTCg
	+fqSYdWEOr/37aU7j5dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rld-0007ba-Tn; Thu, 05 Sep 2019 13:25:41 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rlV-0007aH-9M
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 13:25:34 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MY60J-1heCXs3FDp-00YOK2 for <openwrt-devel@lists.openwrt.org>; Thu, 05
 Sep 2019 15:25:29 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 15:25:24 +0200
Message-Id: <20190905132526.2376-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:3x6W9VmxZazBM8B+pZVM7af0SJvT6PFco3Q5hZFnoLN9D8/J3N2
 ZyRod5OQsTBmLkrLT+8oKjO5WI+zXbPi/FfJnvcE8wP2UhJd1r7jj7yEsS+cmxRNsSE+Sc4
 xF2pxnC0ge3zwdvl1wzfWxbZrVx6i3Jy1CUF+MmdTb4vLVVQonBtjaA0DUfBKmRJJLNsrJe
 RlDMhNwmzVGjpuwQNxHQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:njeYnnS7Q3w=:742ARcQHjcBzeg5VS9Pu2k
 9cYQU/crZwmCgdleDAmCtxtzN97zp3jNwxMVr9OV082efYzAPPmCirQF0tIiWzm4MyzxXF3p/
 Lje0JpYqjoxShN2eJf4mUXSPf6tOZbCPIec8rDHjNlmRLrAbFyyHXCPggpSxLePc7Ci8IaIZ4
 QNLIl+EzjKwe0IiFnctuMjgXzE6TFkQUpz6mYSRDA1aam+lHBZVSONdhN/YYf7MfPbxR/hBbj
 UbwDhSWRaSfli7LLYSWMU/hO8+R6QA0TYXUIcGtTHy4kqPI+pcDVPyBQrPtR0MAI9QWFaSGoC
 CF+M631mlLOQ7aJZIQ5Tyk6QcyIzfzFdq+dwoUMLA/GkwY48cwPs1IHIwP5En3oPG36bmA/gW
 iCG6dRy/Q7nWpbshdEdl8P+8Mgs8/v9KRd1M4rgoWODHtujcLwx55sEWqkr5W6ExDIVEZTZeB
 srXkJbmHnKEGuh/sLXgiLcSSYoit8e+Ys3ZC0//TJSyzlHI9QJGt2J5Fja8G0qZAQ23BWjvAu
 26aUg1L3pWEUz6u95sHnViiHfoQpD/6WP0Oi8Ped67YRA8+eYwgpoHlrHU/bH2PNh4ODyvUMx
 bfD0pc4ppEGL88bcdEus32XzJbfwmp7UK427ca5SB4LprmuMmzvVYcwbBVmMMIA3JxTbbIRPb
 D0yQnkYI8Z8eSuwmoai4xH80pgtCNIzwzYLtRVdjmjvL7DcrzjE1U/HHGiavKqUVEdSBY15Vu
 SarTN9O9tTGIuo6XLkMvrGAKC6K2e1TXhInZWnERob7Ze6QWC9j1SAuXQ+4/AE/BrCRdX0M/B
 0MNbvhqMi24cmgzAwNaDsjW0wJlXM5gM5hFudnofkFw9wLHjw8Mx2lwNUQQyPKHYFFVUcKa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_062533_623848_FF383FC5 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/3] ath79: fix whitespaces in
 10_fix_wifi_mac
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

This converts leading whitespaces to tabs and removes a double
newline at the end of the file.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../etc/hotplug.d/ieee80211/10_fix_wifi_mac       | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index 3e1cfda84d..2e2179aee3 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -35,14 +35,13 @@ case "$board" in
 			k2t_get_mac "lan_mac" > /sys${DEVPATH}/macaddress
 		;;
 	trendnet,tew-823dru)
-	        # set the 2.4G interface mac address to LAN MAC
-	        [ "$PHYNBR" -eq 1 ] && \
-		        mtd_get_mac_text mac 4 > /sys${DEVPATH}/macaddress
-	        # set the 5G interface mac address to WAN MAC + 1
-	        [ "$PHYNBR" -eq 0 ] && \
-		        macaddr_add "$(mtd_get_mac_text mac 0x18)" 1 > /sys${DEVPATH}/macaddress
-                ;;
+		# set the 2.4G interface mac address to LAN MAC
+		[ "$PHYNBR" -eq 1 ] && \
+			mtd_get_mac_text mac 4 > /sys${DEVPATH}/macaddress
+		# set the 5G interface mac address to WAN MAC + 1
+		[ "$PHYNBR" -eq 0 ] && \
+			macaddr_add "$(mtd_get_mac_text mac 0x18)" 1 > /sys${DEVPATH}/macaddress
+		;;
 	*)
 		;;
 esac
-
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
