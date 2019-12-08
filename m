Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E151162D7
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:35:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ym4NyJRUbap/RpMg6leIquwy9ndPXk6rg4rxCh3/1EQ=; b=Dbyz6Nn47gCdlJxvEAG+0QjYF9
	pMX45P3yVCiUaj6+m8gyZZrKEVdanW2dECjTZ96/ESzgwYEsbQhH+NfujUZWAsaxEmobEw3ZBOHeP
	f6HLs7HdsvqLWp2BXeBUCkE2LHhl97qydYrnBbRSMtV+ZO7vM43TAwcXVuvfnk8z3Yv4Ks6iP4KcF
	yzqKg11Hv9SvvbzI5hlXaUTqUEq3bl3LVUrMHxLmcqUHxB3FZUDVvvcZyp0z/HnhldJfBmYxMSmzn
	rbsVV7bAF9virZ1VU8z2cedgZxHN+aJZevou4qOzavU2eom/61SSUufCDeOld7+MZqEMyR060+Lyx
	yQQCNPEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idyaO-0002QH-0Z; Sun, 08 Dec 2019 15:35:04 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyZB-0000zE-Aq
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:33:52 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Macaw-1i3Gu43u38-00c8EX for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:33:43 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:32:52 +0100
Message-Id: <20191208153255.27655-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
References: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:PtgawOWsJdg5hTmSy4OrPIB0C8O2UB5d6GcTZyKf4bmZXOXQDyP
 NcXULlMyy+Yshkucc8DVAE9wdElOxL34k4zin6qreR/Sxp2tzfuK1+dZ2xlVoA1GyDBLvCl
 bGM6BdJDXL57KalUyhZchX/lqtVYN6t2VfOWLFLU+KKA0ADIp44lhpXho5P4LPSn+s3cC14
 Th5CaYVw69tzkQoL171uA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:I+MG8G3r52o=:KogNBi1fO89KBpNuPyUQsL
 OwZ1XamsFJgfjJp45PH7Ruk+IZzpSTXFIItJkL+anjPPuJcaLQUgrnvrPxApttIferkdPd0A9
 hgUWm1bOXqlkGLroRtnOb8YVvusawmNnz6COwsMd33awvJeXVVC34zVlnXmRLcgLsvo/cl7Ui
 yR01YGE5/hZNfkxuhFDMv+yELej0YgujRs6YMh2CV/z4eW17FQtjzKsLhdOIUATrEOsIFg7Aa
 3XLW9Sdet3yC9oxiqDcDNMqzwjJlavWjIyfmYehH3SuvJwp1Xs23G1Zw/yRtK8rfrgOB2vI+2
 R2WhEqTJM9IJjpWaezHwBZEBJEcoA/MYpiZjW9eXkFzK44I/8bMTUsCok+L82sAjse7x6/ziW
 UmoZemtLYMVvcRs7aZEjqkF8oIB0MqWI9xnFcAPjUx/rfwPYfto+A8znzpZ6FQW1caRNMOzgk
 XVdqrtS5gvBV232w07ZtBkCyAkxxHy98WoshuSffqiMWUkg83DI/2RcnLjraqwpBZ/42JS7CJ
 J8d6BXL2zdVvqtemddUlvUszhrY9963SYrvs0Z7zOpQZSXj/CmfCHeBh1BGulFQamMzAPreOI
 eRI0S8JijnHJCQUuSgNDv0xnvPbfnUiREh9n4V0AtjzAKedEm8GfBqVA5kb6WJdX2E1ADAQUd
 bedpTBKkgcnHs3XrArgv2i3B4Nrv9UJdg7F1KPmqYxgRl5hdEJTkeviTeGFcufDl8Ncw3YQUn
 fCI3yx6vvmCLZ2KwarC+8OC3lPNQi67WRi6lW1kUvYlcdSnnwD23v3g5Cu+kuo7H/CgJmMAXb
 XDkfMtGlzEVeUSFhClWqKICA0fL6q+KFQNpMouIcjflcyMSYmy7DDqlJGy6rUATrpq28KE1rC
 9ihSfZT6d/yxtcUKQRTEsy4O4jfK7l654JG3WUmTo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073349_682531_8090F292 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/6] ramips: mt7621: use flash location for
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../mt7621/base-files/etc/board.d/02_network  | 42 ++++++++++++-------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index a39dfb40f3..2173e4d13b 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -147,30 +147,21 @@ ramips_setup_macs()
 	local label_mac=""
 
 	case $board in
-	adslr,g7|\
+	adslr,g7)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0xe00c)" 1)
+		;;
 	afoundry,ew1200|\
 	asiarf,ap7621-001|\
 	asiarf,ap7621-nv1|\
 	firefly,firewrt|\
 	gehua,ghl-r-001|\
-	mediatek,ap-mt7621a-v60|\
-	mikrotik,rb750gr3|\
-	mikrotik,rbm33g|\
 	mqmaker,witi|\
-	mtc,wr1201|\
-	netgear,r6220|\
-	netgear,wndr3700-v5|\
-	storylink,sap-g3200u3|\
-	telco-electronics,x1|\
 	totolink,a7000r|\
-	ubiquiti,edgerouterx|\
-	ubiquiti,edgerouterx-sfp|\
 	unielec,u7621-06-16m|\
 	unielec,u7621-06-64m|\
-	xiaoyu,xy-c5|\
 	xzwifi,creativebox-v1|\
 	zbtlink,zbt-wg2626)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0xe000)" 1)
 		;;
 	alfa-network,quad-e4g|\
 	asus,rt-ac57u|\
@@ -215,17 +206,36 @@ ramips_setup_macs()
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
 	iodata,wn-ax1167gr|\
-	iodata,wn-gx300gr)
+	iodata,wn-gx300gr|\
+	mtc,wr1201|\
+	netgear,r6220|\
+	netgear,wndr3700-v5|\
+	xiaoyu,xy-c5)
 		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
 		;;
 	iodata,wnpr2600g)
 		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
 		label_mac=$wan_mac
 		;;
+	mediatek,ap-mt7621a-v60)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x5)" 1)
+		;;
+	mikrotik,rb750gr3|\
+	mikrotik,rbm33g)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary hard_config 0x10)" 2)
+		;;
 	netgear,r6260|\
 	netgear,r6350|\
 	netgear,r6850)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 2)
+		;;
+	storylink,sap-g3200u3|\
+	telco-electronics,x1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0xe006)" 1)
+		;;
+	ubiquiti,edgerouterx|\
+	ubiquiti,edgerouterx-sfp)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x22)" 1)
 		;;
 	wevo,11acnas|\
 	wevo,w2914ns-v2)
@@ -249,7 +259,7 @@ ramips_setup_macs()
 		;;
 	zbtlink,zbt-wg3526-16m|\
 	zbtlink,zbt-wg3526-32m)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0xe000)" 1)
 		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	esac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
