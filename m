Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFB8DEE00
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 15:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bHypfnsYvMKA6sBESFUysJrUScMEhTuJBNSiUFUWdeU=; b=kkgZlkyw6sNQlv
	Y/2m3j3hDQjIcMPNr8Wql3Vyu/G7kShko9Q/dTNTVrr3tE3FBQSWl5yacuOSGjBeRYUWj5WSHl6+r
	U2HQfgpCPi/yBt/OHgd12hZ4Dp38kPHLoBvbpCeuaHsQdwpHOk1e5mXWp/KiaKeh0D5G41yMnEKJ7
	AvV61IqpE0QB8iZwIiTQ3bJy7l8WQ+hEssv6re3BqF6MMuoiE5dAroufliOwLc/KBVorFvuEyOI8I
	TICxkZn/BZxE8iEXs4Ricexz+2am/PH17ETRxXwuuExr6DsQTHPApEnmck4Z/wpGHmwkYtzyAj1AZ
	aU5LB2cjH5GPXMKhQqaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXvX-0000Em-GY; Mon, 21 Oct 2019 13:40:51 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXvN-0000Bs-6b
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 13:40:42 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N6srH-1hxPMy0aA3-018Klj for <openwrt-devel@lists.openwrt.org>; Mon, 21
 Oct 2019 15:40:35 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 15:40:32 +0200
Message-Id: <20191021134032.15288-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:YjK3CGZpkNk+AqfK7OGorYvyLdEHEuKUTmZSWWcTmvnsrHRa/7Y
 a4VbnZ1y1d/z5hIC4CGsZp9NsMEfIHMylAI43SUJ4MEEFQ1mhvepE0wePx6wTbbwh/KC6Kd
 61xUrBRjcC04CRfpQktp8qXaG0Ga7CptbCCQfhXYhLQIVfJyXdi3V6+OIHfIoxxOVtFjwgG
 PWE7LCpzkujLzm0tE5nmw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Nq/njZpV5Lo=:GVHz4on4MqMs1gkxKlrNhq
 gL163xC/Bhx8BRDwviLws38svZ/AxWXbm2OpbZn5plJyNpdN7M6nIDDS2egC2E3w/JxU1KETl
 jC8R+2Y7BzpIRRU3RQrT9uEXWaWjY7XJJ7A2CKCywId1wlYpiap5j53CtT+LvhqnvZYLzPeNf
 KuqOYvg78LsTiSIZl63fG4dFqVVEl7p6CeXJTV+kOI0+l/rofQdfHnjL9YDfAvAdxSXFm6hx1
 3yaoWE7Fk2nGwBx+CopSO+OB0r/mZAODuOvAUkckPoL+CVpFgt6Y+5JDzJ0PAB+Cnjgqe6QXU
 FtCmi80vFAncHTh4Si1Wfzxekgirfz46940Y7qav63oO3ye5LLKj0m1EWmtGfkz7mOa1lkRyI
 2h8lqb3BAT/J13bUgq2lPlyaK8N38CVwtbH+u/+jzXsiHAcwRaqMXejyYKIHbvQZGM2flUIiV
 iep/Lc1jissDMUMMEcdihfqFZvNryWPvP12d7sDNLxFnNOvGSH4c4JEauXQnhf+Z1Ky+Bvyzy
 2T0cKXqeeve7AnCsP/ydU/NasZWt6/4dsq2ix6JPURVztS5cisGJXt+QY7waVdyxHdNro9vFX
 0D4WQt1HP2jMrHysKUWqvISbP2/xx4t1QJULqdBuJFU0hUforL3u9bLu9CPxr+W7usH20jYBm
 soxh//jLbBwD60gyQCbfn2dKGTajHSQlEwC8jm9OR7M7ay0R+jnslVVsmdc9jjbl33Tzm08aF
 fNKrTr7VyLpn8VwXN4L4DTzPybPCEx63ubSMPwrDXLYaY/2RCYD6RNucjbxIwNpGAgMFFb+Qu
 rchrDbG8H0ifIdn0uDrfS8/XIJfQfBkSHGw3IHpdY8qQLU0b7bOQEyTWEQ1SjOjqZiA8jZhX/
 iECHPAN5yPdEW0ydbAsMQFWqVJEddXuDnCUfz1iN4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_064041_532440_4D26A80B 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ramips: fix LAN/WAN MAC addresses of Xiaomi
 MiWiFi Mini board
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

Based on stock firmware tests, both LAN and WAN ports use the
MAC address from 0x28 on factory partition.

In OpenWrt, this one is already set in DTS. This patch removes the
local bit set in 02_network previously, and adjusts LAN/WAN
addresses as on stock firmware.

Note that in tests we found a MAC address in 0x2e that is the one
in 0x28 plus 1. Since stock firmware does not use it though, we
do not use it either.

Thanks to Chih-Wei Chen for testing this on his device.

ref: https://github.com/openwrt/openwrt/pull/2497

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/base-files/etc/board.d/02_network | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index ded416ae98..b6c3ae42cb 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -587,6 +587,7 @@ ramips_setup_macs()
 	buffalo,whr-g300n|\
 	buffalo,wsr-600dhp|\
 	glinet,gl-mt300n-v2|\
+	xiaomi,miwifi-mini|\
 	zyxel,keenetic-start)
 		# This empty case has to be kept for devices without any MAC address adjustments
 		;;
@@ -721,9 +722,6 @@ ramips_setup_macs()
 		lan_mac=$(mtd_get_mac_binary factory 0xe006)
 		label_mac=$lan_mac
 		;;
-	xiaomi,miwifi-mini)
-		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
-		;;
 	zbtlink,zbt-we1326)
 		wan_mac=$(mtd_get_mac_binary factory 0xe006)
 		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
