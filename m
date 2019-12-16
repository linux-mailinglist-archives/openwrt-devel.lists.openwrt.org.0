Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C61761205CA
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 13:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xtVVzrQCllbP9+3Nndgk/2kNGNrzfxkmJZ54f85Twws=; b=tIxMsc2PgXovhr
	iNvBfuQ7E0V16hfi50H/dqi0IVdW0mYh83slqL8cRomrWFbF6a0xmY3rg4CJLm63hhhyTmltQhVna
	SHIYaZDDeksxPjU9tJIScefJKW9RcbYPPFqYsBAX5fEFWDfu1Ze2p+naLmyk/MCriirelbwBBb8ff
	gZ9erSdFMbrmYtLfE2qUyeiP4jz3wHAla4j2ZLzbsqik3HLCzWefODYLcFjCJ/GTRra/kUwIg+dnh
	cUFuObDeJZ1tknBOQz4Qo0Ch31/xpWEWHmruDn2zgSp2vjKUDJqysAqzWpCK6JugWlJgdpLad6meD
	PP46QzIrZwZqHybH9odA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpXj-0001dp-0m; Mon, 16 Dec 2019 12:32:07 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpXW-0001cl-VQ
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 12:31:56 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MD5fd-1iXiie0cIj-0098k9 for <openwrt-devel@lists.openwrt.org>; Mon, 16
 Dec 2019 13:31:53 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Dec 2019 13:31:10 +0100
Message-Id: <20191216123110.22741-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:LUeWZu46LqxmoDoKgOL1JdUhZg/meAqlRMos8xPW6RRnVZlY/KZ
 U1fRcZiJuPug8VxVPArHiW4VxHkPf2HuV7ze6UAs6oBNG49n/5JVh3DTUIr+LmTtFoYbf0c
 9odmeWVtPZgDh9gsx8DScUNmdhAaZ1VgSmW6JN3kY5wMRzmzH+Q8ktNeRFUrTcEg+VwyVnS
 iWXWev95hZttHIgq61iaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SVBtHKIgfho=:3x3S+KEk1lcRXB9lsj5sQr
 0D3GsEXZiPAxlbHzNTib9lTf12oeLBgb5Z4lSwjVLyexz7r0EbZm0D1f4xNwW/W6vM5h7d9pb
 n/R0hM06+3MXmjEJFHLH0uopo+wPWx79f+SpeeqfDoalUpw33QxieweWzYaJJCE47hLoVEHcG
 v9AGI4dwBRQMYi+kldl+5Jy46Mv5AnuHOXKUxAatFduGCBDMPFV3jBcc5N1H7Zq71zEeA5ahj
 fIVWVaXeoPL+GDEcHlimEMDRCo/xBzKZ6xIx5qxvNjSQ01Rm6XFUijR5NClc1VQWAm5GhoERS
 Ho8dddEV2e2NA+2ueK2DxtM4SFbDcKn4k6r4f5/39OCd94ksLs8RpxIYwmmbu3L4QZEPrcc5n
 LfIwHKygFwHoOeyUOKwiYubzWYOGGi2Af3UIwD1D4WyGVafjNMj6fGH600g2q8xJ+OzO9dLxW
 PnFIJ77G7OqHc+0giSiacDFdwbopTg3x2Xs/Yi4xJuCckR+TROry1geCcUT5grxqQfGv8gIhn
 XTwGDAHnFhoaL2HIkJUjD9HlqwuLckhtq6zB+gQvVtEXHSMSiq9ZeearhyV8qAMukS12Exx8z
 WSR+0EWbEXvu+3GASqpK5rQ/g3sshJlqIwNceinOAtlJzUPh2q7sIQPznRGEPMnOiu3iH4bWT
 2gi4BQtrpBY5X1jlTJv2teswi6ZHm+Y+6aQYbMIW6JwYWYzwjpY7A0RrA1ZWArFkRW6BvWz4C
 S737t/F0NbD+bI1DwfZL5Cg+GANAHK3h8nFXpdw+GOeFeOo+IS1A80FwFJiODw6+xVeET5sXr
 gTs4aJHxv7w901OiEevx3sGq7VGWbJcMrvO9BwnwLP6PNNrY/0gqIv0B1BPI2NmpGivitrDie
 /YyoMmalEz0awW6gHgjCCP6aGdR7YNM3vv7bj7Rvk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043155_306724_C922643D 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: [OpenWrt-Devel] [PATCH] ramips: fix port setup for Ubiquiti
 EdgeRouter X (and SFP)
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

The EdgeRouter only has LAN ports labelled eth0 to eth4 (plus
unsupported eth5 for SFP version). Thus, there is no reason to set
up one of them as WAN.

This patch sets all ports to "lan" and removes the unused wan_mac.

Actually, stock firmware on the EdgeRouter X assigns a specific MAC
address to each port:

eth0    *:f4 (label)
eth1    *:f5
eth2    *:f6
eth3    *:f7
eth4    *:f8
switch0 *:f9

(No data for SFP version)

Only the label MAC is stored on flash in factory 0x22.

OpenWrt currently sets &ethernet to this address, so all ports will
use that one in OpenWrt.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ramips/mt7621/base-files/etc/board.d/02_network   | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index 5c6b5659cb..6dfe24e296 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -62,8 +62,6 @@ ramips_setup_interfaces()
 	asus,rt-ac85p|\
 	iptime,a6ns-m|\
 	mikrotik,rb750gr3|\
-	ubiquiti,edgerouterx|\
-	ubiquiti,edgerouterx-sfp|\
 	youhua,wr1200js)
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
@@ -124,6 +122,11 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan" "6@eth0"
 		;;
+	ubiquiti,edgerouterx|\
+	ubiquiti,edgerouterx-sfp)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:lan" "6@eth0"
+		;;
 	xiaomi,mir3g)
 		ucidef_add_switch "switch0" \
 			"2:lan:2" "3:lan:1" "1:wan" "6t@eth0"
@@ -246,10 +249,6 @@ ramips_setup_macs()
 	telco-electronics,x1)
 		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0xe006)" 1)
 		;;
-	ubiquiti,edgerouterx|\
-	ubiquiti,edgerouterx-sfp)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x22)" 1)
-		;;
 	wevo,11acnas|\
 	wevo,w2914ns-v2|\
 	zio,freezio)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
