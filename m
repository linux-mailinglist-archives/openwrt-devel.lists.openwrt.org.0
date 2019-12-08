Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A98191162D5
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uh7BnzmGNHTYFcBuOdW2o+ykfKxiLjJ71Q2knKqjKt8=; b=bSST05H0KfDnGKGitlUJLltGja
	pbnXZ/qqdiSYzl4aPrckEYlX3Eb6rdPOTsnaxAlfZWvXAiLPcuxgZ4hUCnxV4Ez3Vzv7l4tBI2jC4
	DwgH7yd5nUGLbEam4uPhoqZQ6BtzUD1LvMwBDKUJRRVZpCSSvDl2PaJHHx+xM2ssbJtzmsW9KX4pp
	BPRVFVqN1iE3zd2kCCoUpqXhI3rbDXhR+6yv5XmkjRd5ny7pK6w7hE8Ji47khM1b+UsJzwfgncxI0
	fNLy6n3EU8GPRqQqnFMzza5qc5yvTqMZ2yUs1qOloen1fnqXIORVt/42F5n97bE+on7Mn4bjK335N
	JrAItCsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idya3-0001wZ-NL; Sun, 08 Dec 2019 15:34:43 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyZB-0000zB-BV
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:33:52 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N8GIa-1hj0CM2dl2-014Dzb for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:33:42 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:32:50 +0100
Message-Id: <20191208153255.27655-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
References: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:AKYKdufqXhXlEzXHcRSimmSVSSqy5nZ5L8f41MRvlFwF9+WbB4p
 GdFF9Vh0jKqcAmAoEmy2Uy7KknWPXkHRUhxb1RjMKRz4uoBRR4oyJGtvugAxkIo4lT9Lt1H
 vta2xbeTTNdeor+YmrqmhZZ/Dhvn9fo/Ib2LTZ1ENmlYYFcQTOHAzEZILWJW95cnmXehOSS
 oaFoMSoFhfUNvcfON2GQg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QQ8tVMi4uxE=:zCPNlUnv0q01lPZByTWm+s
 XuUCMAuZCDha9FWm/IVp5yxp0kJa70Mh3NBsao6eD7ztGJy9y93ATiAR0SFUtR4wmNoGqMXi+
 IGSqPeAK25PXj86cUUVzQ4wPwBP/QSJq3nYdon58xW179HVBeL1omDC7musYZIdPCQxBhypxq
 Bapa54koSnhW2jHQLB8wH9WL1zOeYOL3KmjLCyMnL5i/cWJrvTsTpi39ZyZ8PcK04LWSO12LV
 z+NeEEZQoPJ5OFvKNFgImaso76m+1IjmP6vsJNEx9m5RuY/bJU77zWpihJsZVt/z0FKFVT+Ro
 WZPihG4uR1U6jyS2iqtJmBhS3SDY3e6RnmGAUGacOxktgkoZn56+L7QK3czprYjNXqdyKYV4m
 t0LZmRdw61mrMHP+mAf2CovQlTJnMnTLudJF9t0uUBkHpGGQVB0ium8sJJgorfw2eRz/1/O3u
 Mxk2fjlzT5NWLmFAPU/dM4jT/U+AlQwOqBARzEbvpxMvqKvI7ir65tYniDCTUodXBfBB+mBgE
 LozVwNbY4lsAIfOINEdZWbdyDG9U9g3MDhJDxleispouayv6RWgUlgwj74svgJ+f84LvUHTJ0
 A+RoSU9txukFRnVeHLuHQsjEMgSm9DQ+mcdsZypVv5UrcUdAAVpA3TZsjM2HOvUU+we5U7T2x
 5Je/fVZrH92c0TzQC16ac5gcekQN8872EvyVuANyGFJiO4TttjgwAeJFWFbrxFfH6OnvinhFn
 +m0AGb6lLJb5EqFpPtd2KA2x0YKET5XRbxw9nMIDWcRxnGE1dmdVAraGdKokWleEz1T5TfIgY
 UpAH0KpQbY4dJtZoBnQ8yzhq68TYq4jvhrDk0bzYA5lE5WxWiIIsX0JADGe8QdJZrVJCFcLXj
 kfnzO5wQnwXZpTShBfYgnctqlyiPpZ8kkUDEp8Hrk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073349_705561_8E078206 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 1/6] ramips: remove wan_mac setup for
 evaluation boards
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

The evaluation boards do not set up a MAC address for eth0
in the first place, so it does not make sense to calculate a WAN
address from the random MAC used there.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/mt7620/base-files/etc/board.d/02_network | 4 ----
 target/linux/ramips/mt7621/base-files/etc/board.d/02_network | 1 -
 target/linux/ramips/mt76x8/base-files/etc/board.d/02_network | 1 -
 3 files changed, 6 deletions(-)

diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
index ef241ff801..900bbc5550 100755
--- a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
@@ -238,10 +238,6 @@ ramips_setup_macs()
 	phicomm,psg1218b|\
 	planex,db-wrt01|\
 	planex,mzk-750dhp|\
-	ralink,mt7620a-evb|\
-	ralink,mt7620a-mt7530-evb|\
-	ralink,mt7620a-mt7610e-evb|\
-	ralink,mt7620a-v22sg-evb|\
 	sanlinking,d240|\
 	tplink,archer-c2-v1|\
 	tplink,archer-c20-v1|\
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index bb6e41e06f..a39dfb40f3 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -154,7 +154,6 @@ ramips_setup_macs()
 	firefly,firewrt|\
 	gehua,ghl-r-001|\
 	mediatek,ap-mt7621a-v60|\
-	mediatek,mt7621-eval-board|\
 	mikrotik,rb750gr3|\
 	mikrotik,rbm33g|\
 	mqmaker,witi|\
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index 87ce447612..f76af66f27 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -137,7 +137,6 @@ ramips_setup_macs()
 		label_mac=$(mtd_get_mac_binary factory 0x8)
 		;;
 	duzun,dm06|\
-	mediatek,mt7628an-eval-board|\
 	netgear,r6120|\
 	rakwireless,rak633|\
 	tplink,archer-c20-v4|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
