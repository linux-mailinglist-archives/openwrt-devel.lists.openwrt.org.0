Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671051162D4
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LdOr4cwSLSo5FTtBszeUBJj+BM7R2/8Zy7g9jbHnr6k=; b=ppIjJExTaI5QnCpqN6Pylo1vxO
	cWtymcLyWPTjhTatLCT4YoegwdFgy/efwwOo2pBbLjzvSNocK1eP6nL2nxlSRmnAJvNKrE8mFmi99
	V0FJv3ZUE/WuMljUqMLRsw4wRm3HpNSWDa31/0JbfgGZgy8gZ2svtX+isePfB0ZAYhl4unM4KxL1x
	8Sb2RvoRj/TK4skygoxF0+VfbXxxHzqZPyhszhgO2sHjFnDBH8EfqDucPv/vCoEMda7J5yrl1jfJP
	6r7SJMuZ2FS6Nv6wRSu0ouA0kPkDDCHDrrxbZASHhPYtnFrElWfeK6N0JCq0AguO5JxiStbPwaScz
	uK+XQn0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idyZv-0001hr-Js; Sun, 08 Dec 2019 15:34:35 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyZB-0000zD-Ar
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:33:52 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MSKq0-1iBUOl0KGu-00SgJr for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:33:43 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:32:53 +0100
Message-Id: <20191208153255.27655-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
References: <20191208153255.27655-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:3HwIAQUQtyVMP09N6ldchEO8D93GEYDkTMYpgnMWD9hsJbRnSG/
 Ht808tRkd/KUSyafDNdbvQHxSGsPBmEtkRbB/vUGdWojAjsZBYIvZhhRHTDORiJlGAOPxST
 fGAIGUhM3Jho6ybuTfEMdWCfHBCJO6YTWTudswOs9VOlbXVjQT6BVRGbZDGRBEJXc0scl8t
 wUAHNxG0JsgM5PiRbwZhw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Sdvs+WJMTBI=:mHsDeywSEJ+3MWpaoaYcyB
 tmv8JPdz9iG66tilFMy360GfxFpqt/LO7686nq3WNms3GzlS9TKVsJdDZfnO3XTbE8SrF4+yy
 gVJz/xUt0WTXslpe/Qeke6bOa0u7zTf4VHnaiaL0GCVhho+GiMUk57n/P0oCSFCEMu15/DG9J
 qidqM0lrv3YgfC+xTmq3ehDCfpXOQ0AXY5O3Kmh8RKKG5k06T80kHxu90MM+k2sfOA7nCyzBg
 E6fpqOoWIFhC9f6BqjVZNBiUR9diJssTPIIk4aiSKTmGITAuzXFAiSKyun2JhUW7q0k5WVZI6
 JC3Evu+r214VaUhAV7N1+GcWivyB74mvcGgB8C14G0Z178XF+7e9IuLTCcW/Q3EEHzdOXEAqe
 1KBZGQKlumHyCNit5JB/AVGKFmPFsZikH3nXX6BRUNQwlybhd8t/iJxAAfdgpl1o5O9mVHzY9
 Mz716f8XDCWMsJuBO5Eo+I31J23VkYmVdqC7uZF5a/Dhe8NY3iPssvMy8nUQ8Qgf0XPCdoi2W
 Q2UP+9nVm0yadtET2o9n/tsGXeG5+WJFWdfi/gI2prM4rOeqONI70RAzjojxsdPC5Dh7jbwOf
 HsUSHqgIqNkedTCR2YX7oyltaHdtkJJeADt5G52F5QUGRwY7fAOf+oTouqY1mctpHY1vKhcin
 8yVfQzrz47gnzax7uYTkodRh+rmmLgg4SmVRpCOXF5oMx3D7KvAqWark77xLCHl/g4yy50mVe
 +YOfe1P4bQvLMQWJadhpoAV13IOTjbGp10AZWxG8pX8WPfmfK7+stuQaD8rGGndrVSp/adQUE
 rjh3pmEYeQl7o8TxyeTOKSnYeeOYhfOT+SUyE55MpBpnv+FeUKsa6jmOIqbDQn8JVpEBAQz+W
 BQimxAjNqRU/dy9YKDjVNO2caSPFFBY7/HBHpiBew=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073349_698622_5642E586 
X-CRM114-Status: UNSURE (   9.85  )
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
Subject: [OpenWrt-Devel] [PATCH 4/6] ramips: mt76x8: use flash location for
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

While at it, change the partition label for zyxel,keenetic-extra-ii
to factory to be consistent with node label and all the other devices.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../dts/mt7628an_zyxel_keenetic-extra-ii.dts  |  2 +-
 .../mt76x8/base-files/etc/board.d/02_network  | 46 +++++++++++--------
 2 files changed, 29 insertions(+), 19 deletions(-)

diff --git a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
index 8b069d4370..f4d678e38e 100644
--- a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
+++ b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
@@ -107,7 +107,7 @@
 			};
 
 			factory: partition@40000 {
-				label = "rf-eeprom";
+				label = "factory";
 				reg = <0x40000 0x10000>;
 				read-only;
 			};
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index f76af66f27..aeaf296984 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -138,27 +138,10 @@ ramips_setup_macs()
 		;;
 	duzun,dm06|\
 	netgear,r6120|\
-	rakwireless,rak633|\
-	tplink,archer-c20-v4|\
-	tplink,archer-c50-v3|\
-	tplink,archer-c50-v4|\
-	tplink,tl-mr3420-v5|\
-	tplink,tl-wr840n-v4|\
-	tplink,tl-wr840n-v5|\
-	tplink,tl-wr841n-v13|\
-	tplink,tl-wr841n-v14|\
-	tplink,tl-wr842n-v5|\
-	unielec,u7628-01-16m|\
-	wavlink,wl-wn570ha1|\
-	wavlink,wl-wn575a3|\
-	wiznet,wizfi630s|\
 	wrtnode,wrtnode2p|\
 	wrtnode,wrtnode2r|\
-	xiaomi,mir4a-100m|\
-	xiaomi,miwifi-nano|\
-	zbtlink,zbt-we1226|\
 	zyxel,keenetic-extra-ii)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
 		;;
 	hilink,hlk-7628n)
 		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
@@ -185,14 +168,41 @@ ramips_setup_macs()
 	mercury,mac1200r-v2)
 		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory_info 0xd)" 1)
 		;;
+	rakwireless,rak633|\
+	unielec,u7628-01-16m|\
+	wavlink,wl-wn575a3|\
+	wiznet,wizfi630s|\
+	xiaomi,miwifi-nano)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x28)" 1)
+		;;
 	skylab,skw92a|\
 	totolink,lr1200)
 		wan_mac=$(mtd_get_mac_binary factory 0x2e)
 		;;
+	tplink,archer-c20-v4|\
+	tplink,archer-c50-v3|\
+	tplink,tl-mr3420-v5|\
+	tplink,tl-wr840n-v4|\
+	tplink,tl-wr840n-v5|\
+	tplink,tl-wr841n-v13|\
+	tplink,tl-wr841n-v14|\
+	tplink,tl-wr842n-v5)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0xf100)" 1)
+		;;
+	tplink,archer-c50-v4)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary rom 0xf100)" 1)
+		;;
 	vocore,vocore2|\
 	vocore,vocore2-lite)
 		label_mac=$(mtd_get_mac_binary factory 0x8)
 		;;
+	wavlink,wl-wn570ha1|\
+	zbtlink,zbt-we1226)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x2e)" 1)
+		;;
+	xiaomi,mir4a-100m)
+		wan_mac=$(mtd_get_mac_binary factory 0x4)
+		;;
 	esac
 
 	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
