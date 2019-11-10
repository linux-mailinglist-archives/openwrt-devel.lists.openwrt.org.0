Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27508F6BDE
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 00:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LBxJvls9Cfn41MUZ5imq9d5PD3TyH5diAjzlUEb+nQI=; b=tS2oz6x7dRvLnQlcwHEnynDSHx
	rlNjU42D+xsdhm7FruWTaXVw6z4GyQMEsH/EEHuAUPSz39DmdEL5dONUwRm6NN1xas9MnN0ZjO3bc
	v6lvOqrlRf+Wjv2G6gsTcSrL1EWNjATKDMhHoV/LDt6p/Oq4js1+WGJKctgsq8p6GwIPekAgFF9Sq
	XKeCsuCPacr1SIry+SguP3e1+G7pglPEhipwl97nApyI6wINY3wYGi3N953T9JHkqirCVkID54KRF
	YMmvAReGN7C2LlXxum+0o6I0SkUBTRaPl6j+AZRgoDFDZrjmq7CRIFE9CjDZALOgiACdk7uPtggur
	pPPSpqkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTwhN-0001Kz-Qm; Sun, 10 Nov 2019 23:32:49 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTwh1-0001Bv-7o
 for openwrt-devel@lists.openwrt.org; Sun, 10 Nov 2019 23:32:28 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N6bTa-1hpjUA1dUc-017zFm for <openwrt-devel@lists.openwrt.org>; Mon, 11
 Nov 2019 00:32:20 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 00:32:16 +0100
Message-Id: <20191110233217.2656-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110233217.2656-1-freifunk@adrianschmutzler.de>
References: <20191110233217.2656-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:pMfrTHrgdxazePCZLgIqZYRcOu8lRw1QtaielQc4wypE+ZBoLv6
 w+LnRPzSmf5oLlaQCBirKqwPYPnGOPWvrM7K1nJYrp/KZ9aOsTJXdddd4zq91rIkqsEzCHz
 ckZmozlNJUkHR9oD6Xuq3nCZtzOpU7wIMVw6u/VDmzUzGzlUOCQPtANCfQ9iIZlMCwwzz3C
 Fz91aQZsuCQ/TyPd5U5yQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vCru0fLyyvM=:PW21LpXbl0KblCMdg/30dt
 U6FeGWgTqh50ZAfGRcp3Gvfz7izGqR1yceFN9WbjOYWW7tNBO9p72ReJK701Rj8kP4yG2eTGY
 tWpZIXMs9syugUjZSacqzpvYqS8Mkf+q3LfGxNsPIcM/OYCbd9r654nT47owukelB7pT8GYZw
 Tb1Jks6gjy6o8Altuzob7tx1vnQ7FiyLqWGwCQ/uKiAIKAnEbTCiANMvBOLFnE3x+Ve7z896Q
 VvtWhb/qc+FF79r61wHQFdineorLqFVdRfgUAr55fY8Pt5a3Q3RCxq5zi6NyXTcWtUxScnHpV
 1ZHT7bg0/9AHcUT/ML0c92tkdxH3IHL22VSBnqg8CH6DFI0asCxLFDQIhB+Ran1PlHziTxscn
 jbY7nsPEs8vT6mNRngYjkn0LVHdDOduwxkczjollDUtOh3t/nlaRO7O9/PAoNqxA2XQS/R/e2
 BvWw/hrwpKifsk6JCgHtuOV/FvspZvurvg+jniFE8dkWC3kCDh1rxiw9cesHFGdf2z+z5IQM3
 naKuyUlCM+1msXKnvvb16Q/ufpdKxnCPwbdmiMT/lrMSpz6O9YKibV22VESWez1g9S97kc9Md
 nAtCM5qdXW3DOoJSdqr3LaF+iVGx4CadvMNmLQR4EHR1u7B9dug5hrb8rNA8VY8KDY/P0Xx5Q
 voHSw6S4aDF3T5LtclnMUe424xDXXhXEJXXYVTPkJBrh3UsvcI2MAWtXb/UnVvWlAapVZ/TM9
 wQcHOAZll/1AI8EHeWH+pscxJE1URg9xvWUw5levJ2L6gksvr9T6QLq0ACtgNMbFOmDky0/da
 fqOlYjXWQUGhKTeoPxYNaL6FlzJvEv1/+jqax4jbJ7YUrP8TKuL9FaGL8KD0wCB2ffj7d6MB3
 uQilazOZIhfjgo/9zp7pM+1fH5s8uDQpXH9GLZ7uw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_153227_570661_DF1F52DF 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: read label MAC address from
 flash instead of using phy0/phy1
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

This replaces all uses of $(cat /sys/class/ieee80211/phyX/macaddress)
by retrieval from the proper flash locations. This will make
02_network independent of WiFi setup again.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../linux/ramips/mt7620/base-files/etc/board.d/02_network | 6 +++---
 .../linux/ramips/mt7621/base-files/etc/board.d/02_network | 8 ++++----
 .../linux/ramips/mt76x8/base-files/etc/board.d/02_network | 4 ++--
 .../linux/ramips/rt305x/base-files/etc/board.d/02_network | 7 +++++--
 4 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
index dfca48e123..1b51f17485 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
@@ -288,7 +288,7 @@ ramips_setup_macs()
 	glinet,gl-mt300n|\
 	glinet,gl-mt750)
 		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	hiwifi,hc5661|\
 	hiwifi,hc5761|\
@@ -312,11 +312,11 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii config WAN_MAC_ADDR)
 		;;
 	zbtlink,zbt-we1026-5g-16m)
-		label_mac=$(cat /sys/class/ieee80211/phy1/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	zbtlink,zbt-we1026-h-32m)
 		wan_mac=$(mtd_get_mac_binary factory 0x2e)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	zyxel,keenetic-omni|\
 	zyxel,keenetic-omni-ii|\
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index ae03dc71b1..0de3804cdb 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -188,7 +188,7 @@ ramips_setup_macs()
 	asus,rt-ac65p|\
 	asus,rt-ac85p)
 		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	buffalo,wsr-1166dhp)
 		local index="$(find_mtd_index "board_data")"
@@ -198,7 +198,7 @@ ramips_setup_macs()
 	dlink,dir-860l-b1)
 		lan_mac=$(mtd_get_mac_ascii factory lanmac)
 		wan_mac=$(mtd_get_mac_ascii factory wanmac)
-		label_mac=$(cat /sys/class/ieee80211/phy1/macaddress)
+		label_mac=$(mtd_get_mac_binary radio 0x4)
 		;;
 	edimax,rg21s)
 		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
@@ -241,12 +241,12 @@ ramips_setup_macs()
 		;;
 	zbtlink,zbt-we1326)
 		wan_mac=$(mtd_get_mac_binary factory 0xe006)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	zbtlink,zbt-wg3526-16m|\
 	zbtlink,zbt-wg3526-32m)
 		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	esac
 
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index 63861c2089..87ce447612 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -134,7 +134,7 @@ ramips_setup_macs()
 		;;
 	cudy,wr1000)
 		wan_mac=$(mtd_get_mac_binary factory 0x2e)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x8)
 		;;
 	duzun,dm06|\
 	mediatek,mt7628an-eval-board|\
@@ -192,7 +192,7 @@ ramips_setup_macs()
 		;;
 	vocore,vocore2|\
 	vocore,vocore2-lite)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x8)
 		;;
 	esac
 
diff --git a/target/linux/ramips/rt305x/base-files/etc/board.d/02_network b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
index 5c110b375e..de71dd6202 100755
--- a/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
@@ -242,10 +242,13 @@ ramips_setup_macs()
 		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
-	dlink,dir-615-d|\
+	dlink,dir-615-d)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		label_mac=$(mtd_get_mac_binary devdata 0x4004)
+		;;
 	dlink,dir-615-h1)
 		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	poray,m3|\
 	poray,m4-4m|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
