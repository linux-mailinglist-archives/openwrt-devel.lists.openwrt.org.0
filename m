Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DE01162D2
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jAy9fV+ZeJ/AsIvgY50rFFYtzRYzcdmX+uARviVKoso=; b=Ul6gvAEHALJRb6UvSpCNFejQoh
	957MXLRmZMBIH2wtqPYlxKMXhyp7kivYf/VhBRkqU1GmAjJzBNPjwmAKEWLMWmgXxIZaseakNzkWE
	J313Ro/Vikt/hY+gRodOp35QgzfwIxd6T7UzTaSJfRR+WyMWzl46EoN8SpsVGauvnggtF2zet/ZhS
	3R19mSMb/2zVj3idY9FHsblNNFdp4/241HuQQwLEjHld4uU++NP6VF92yd7H6/mvVEfvhb3Nn4Bvt
	gbT6B2M8RAPwuHBZsVg43Y/Brw5cDHDumBNoh0bZYGm5PClLf9YaygszwafT3aZ8WudWrbM9TykIw
	pjrSpMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idyZY-0001Ax-3G; Sun, 08 Dec 2019 15:34:12 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyZB-0000zG-9N
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:33:50 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MvsN5-1hmYIT3HN9-00sxjM for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:33:42 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:32:51 +0100
Message-Id: <20191208153255.27655-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
References: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:nTCp+JBIGGzoCT74JNavtECQBFwpmptpAFEYCNqhC9aAnvsCMx5
 0ECLm1oAGJjHnu4moW5k4G86Yd29l3VztVLESSeKwBvWrgwgqudn+pz8BMCjbe8jXXdo+HA
 CMA+e/ucTzlINtSgUM8WeiiXTxQH6rtqCJic8AuJkW2yJwWLwR1rNlWxm1Pq7Wjcgip5BEX
 oapeKjd3C0iq/q7GELqGQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sXJiYerfqtk=:/aUf0oVc7xhKUVzm7Qec96
 5X/lCIgnHPQXm5J4++ABAfSpxNLz+OHejR28LDHWh8Z2PVhbfAX362S6iujrbT8udjGwzSk3X
 cuoDt/vZyDhrigzWzcKJ3DMZds4USavUgGLWujrJKYwxDkYLjG5nBtL3r1QLGHwbhCob8F7hM
 okeDZXay/ZVgxuJp4iMl2JtJ7LM/nXeD9+NYn085KIj8wSP904soM7Dk3zZazzq+BM23Vd0vE
 A/P4et++zqZQW01ZqFC5L7xfX9GwutM4clymdGAXOiLVQzWy35DyQ/TJjcNl8gcyitQvMs18j
 45DyVoORUIzj7yg7tmlH0ZF9RwCFRcPXBs2freUiFfyDdscYsl61GuUugKSKOyq78sUvv2xGJ
 dQqitKWQrGhyPVu5HK5FtcjVD7e6Y3jjhPjDf0b28gdKTUW3eN65vjaS4qpAO6hyVetKkPZPU
 HiVXbdBGbCW8BQPxAceSbmoVEqDs3km6dlWulcx/pTeorfQqDieqTxB3KuEBCD7dmbvhBx16F
 LXIWc/rHn9PHWAKaRYA/slgp3nXTa/X1qHj3TueM577pKWvFKievolxFBLITubUJUt9ISqIh4
 +4mdK5uFG4L7SCG+Ai5NYhObDcLqJfSKCGUAQJAQS00R3Q1mtRwrlH5aPqgnyxcjSRNJ34HWk
 OzGcT4pRUduwBjY9pHX6bQYG+/MwseoHphfcmHW7ghdSk4HnDCRjZThmMW+DCV1LmJpGj8DoS
 W12fUEzNPNd2EorjYe0qh/QdLa/bWH+cLHM7L0UA4fBS/If0YcFub2JMGsLdd1Mz8sCXtHxey
 hgGpmmmjlGDFDaZKhEq9ZJpoqbxRge/Y3xWkoaryj8+6WGMaD/3kuezmb7Zeg02bJdiElYwYG
 bP3r+xR4q782QvAr6GpoaQmdU6mECBvZ6s4qw6fWM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073349_632451_B7EEF18F 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/6] ramips: mt7620: use flash location for
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
 .../mt7620/base-files/etc/board.d/02_network  | 28 +++++++++++--------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
index 900bbc5550..20846ef202 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
@@ -222,28 +222,19 @@ ramips_setup_macs()
 
 	case $board in
 	aigale,ai-br100|\
-	alfa-network,ac1200rm|\
 	asus,rt-ac51u|\
 	asus,rt-n12p|\
 	asus,rt-n14u|\
 	bdcom,wap2100-sk|\
-	dlink,dir-810l|\
 	edimax,ew-7478apc|\
 	fon,fon2601|\
 	head-weblink,hdrm200|\
 	nexx,wt3020-4m|\
 	nexx,wt3020-8m|\
 	phicomm,psg1208|\
-	phicomm,psg1218a|\
-	phicomm,psg1218b|\
 	planex,db-wrt01|\
 	planex,mzk-750dhp|\
 	sanlinking,d240|\
-	tplink,archer-c2-v1|\
-	tplink,archer-c20-v1|\
-	tplink,archer-c20i|\
-	tplink,archer-c50-v1|\
-	tplink,archer-mr200|\
 	vonets,var11n-300|\
 	wrtnode,wrtnode|\
 	youku,yk1|\
@@ -254,7 +245,13 @@ ramips_setup_macs()
 	zbtlink,zbt-we826-32m|\
 	zbtlink,zbt-we826-e|\
 	zbtlink,zbt-wr8305rt)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
+		;;
+	alfa-network,ac1200rm|\
+	dlink,dir-810l|\
+	phicomm,psg1218a|\
+	phicomm,psg1218b)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x28)" 1)
 		;;
 	alfa-network,r36m-e4g|\
 	zbtlink,zbt-we1026-h-32m)
@@ -280,7 +277,7 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii u-boot-env WAN_MAC_ADDR)
 		;;
 	edimax,br-6478ac-v2)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 2)
 		;;
 	engenius,esr600)
 		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
@@ -289,7 +286,7 @@ ramips_setup_macs()
 	glinet,gl-mt300a|\
 	glinet,gl-mt300n|\
 	glinet,gl-mt750)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4000)" 1)
 		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	hiwifi,hc5661|\
@@ -313,6 +310,13 @@ ramips_setup_macs()
 	linksys,e1700)
 		wan_mac=$(mtd_get_mac_ascii config WAN_MAC_ADDR)
 		;;
+	tplink,archer-c2-v1|\
+	tplink,archer-c20-v1|\
+	tplink,archer-c20i|\
+	tplink,archer-c50-v1|\
+	tplink,archer-mr200)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary rom 0xf100)" 1)
+		;;
 	zbtlink,zbt-we1026-5g-16m)
 		label_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
