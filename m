Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FEB12D511
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 00:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RfZg3v04iZPywXZFUC7FjxFMBoLsSgp1UyL3AC3ZNac=; b=YqbVjBodimRYsp0iOYAg4xg/ra
	9YeUNN5DEkay0BebmW4sGtscBkdVTHx4MZk4C8ucrSy8Um66Q5AzX1V3cVWjUZe9bTsGzzLwnMnTa
	gV9LrCE9yFEJeirsca2rh3VyDggA7U1sUcZrXQUz2Rn2TS+SgCeNSSolTNeEkx9dZhA7SQG4oEp35
	jYMzMgy/Vg4YQ0FIMeeorgEMCcIE9F2BslH8A4lDNct7vbddp30+gOYDxkk9wbQKzKMQxKtHhG9US
	manvCsoCkAry6MqkOoGleZPfgu0wxPOWTBa6FfEIwnOVytprt/j9dYqSF1cc4xhS4tLvFG8TVCMlg
	1IpcVgGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im4T0-0000fz-J4; Mon, 30 Dec 2019 23:28:54 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im4Sg-0000Ts-BH
 for openwrt-devel@lists.openwrt.org; Mon, 30 Dec 2019 23:28:37 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MnqbU-1jVct230eY-00pOli for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 00:28:30 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 00:27:46 +0100
Message-Id: <20191230232747.5357-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
References: <20191230232747.5357-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:PGUcLkQPCNgQl2J1ZxowOeb0hJB8pzt7vo2Svlv7qpt9m511uV7
 iiCTf2J7RkNowNUkKmcQFkzrPQMgRVtSkz3elu2HfGA3QJ8WNBEFxtqInVJvREr3Xqyeteb
 c/3/gfAmw3O/rP2gI/L0UhlVPitDXE3p0n7qfzSLo/OEx/My1mh1MPK5WWTaGJxRVNd2A0N
 6sD8/xm2aIcdsiTjaS7ew==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9VkvK1Yiqiw=:tSc8PiAutuQYFH3mkzhj2u
 duX32O1mtNCjptnlcdXTDNnbXzElOD3XEtZkf5hIx5ArPOGbrK+ab81+WRxszStSskL7IoJ+n
 QpzKLhhzgKSQIEdvSo0YmeaNjTxxQelcC+Ci6HkwyRGKl92NK6eNvuEIXdXU0xB4gmi2iExXP
 XvPTe/RKyM6Vcq4Z4PtXG6+AWcKpIWVsZq7gvWBrTYv2qqAq1qG0UPW3VoGdHuI4Y4+1BKmZh
 q92u6V3Zhx6iPkORtDsbv+AesM+gcZtHxkbSNYog72B+deE12wPHmjw6s5jkXD0d6qnwrOXIS
 NM5axbNjC6S9HUV7ZMxYlSlLs8TO+xhzcyvVhiS6MN81GTyt9+BCNXt4zOb0AYjhxcDfQz/+a
 zpRY8CtA1BcJTDAqTnEYDEhWCFkYPf6E2dm+CJKuh21rXxK3NyRGQjU2BBQkh0VoB5qfN0+ZU
 y939IQzptvINOwKfwwQPDRzlKvei1WqZtBxCre/ktxvz8YRK7K0BGP8uSApRGE1Xd/nACZKTg
 B2UoWHpSGr+z+LfQ9tiHwfEdhcHFIcCSMxbaPMZKtrVH4YGlWnrcmzy3evmbUhB9yIVBdi3xx
 hxvaja9zTgO+XqmaZ8fB1e6/aUqO3ObGZhGCkEWs6jBZZ5BwjBJ6TftucygeIp9QRrxgzyNe1
 BNvos7NZ1Gl1EtR8P/mO9wk9QzolpwG/fcRHeQ7zIxWd5ORuehpqUgBxL/L0eI2FGSxuwIcf6
 ghTVmnaPVztH2baUCZG8eX5+kudum/lpO6QWjbE9dxB+FJR2d667ifehhDfKTM6c9qs2bE/dT
 U1gf/rFcE7BPp5dOaT8ZNPjNZ5EhsSKJXb0cCgMp5C5oc4l4T51zDvx2Qz52tKv0ncGR8ESUc
 klgzDtgG6qZLUVd4Bi7W2qgS2f1SHsPHo0SH2c4Us=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_152834_845089_75277840 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 3/4] brcm63xx: use compatible instead of
 manually setting board name
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

This patch removes the translation of device model name into a
board name in lib/brcm63xx.sh. This is actually totally useless as
we have the compatible which can be used instead of the board name
(and actually is at other targets like ath79 or ramips).

The change requires updating the base-files with the new
identifiers based on compatible.

With all "board names" replaced by the compatible, we do not need
the old scripts to detect board name anymore and can also remove
the obsolete treatment of "legacy" devices without DTS, as there
are none of those left. So, this patch removes the target-specific
board detection and uses the standard procedure in
package/base-files/files/lib/preinit/02_sysinfo

This also fixes several cases where the board name was not set or
evaluated correctly:
- asmax,ar1004g in 02_network
- telsey,magic in 09_fix_crc/02_network
- brcm,bcm96338gw in 02_network
- brcm,bcm96338w in 02_network
- brcm,bcm96348gw in 02_network
- dynalink,rta1025w in 02_network
- huawei,echolife-hg520v in 02_network
- several cases in diag.sh

The following orphaned identifiers are removed from board.d files:
- dmv-s0

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../brcm63xx/base-files/etc/board.d/01_leds   |  90 ++---
 .../base-files/etc/board.d/02_network         | 206 ++++++------
 target/linux/brcm63xx/base-files/etc/diag.sh  | 174 +++++-----
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |   6 +-
 .../base-files/etc/uci-defaults/09_fix_crc    |  54 +--
 .../linux/brcm63xx/base-files/lib/brcm63xx.sh | 310 ------------------
 .../base-files/lib/preinit/01_do_brcm63xx.sh  |   9 -
 7 files changed, 259 insertions(+), 590 deletions(-)
 delete mode 100755 target/linux/brcm63xx/base-files/lib/brcm63xx.sh
 delete mode 100644 target/linux/brcm63xx/base-files/lib/preinit/01_do_brcm63xx.sh

diff --git a/target/linux/brcm63xx/base-files/etc/board.d/01_leds b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
index d25d37e847..dd1c565bb9 100755
--- a/target/linux/brcm63xx/base-files/etc/board.d/01_leds
+++ b/target/linux/brcm63xx/base-files/etc/board.d/01_leds
@@ -8,26 +8,51 @@
 board_config_update
 
 case "$(board_name)" in
-a4001n1)
+actiontec,r1000h)
+	ucidef_set_led_usbport "usb" "USB" "R1000H:green:usb" "usb1-port1" "usb2-port1"
+	;;
+adb,a4001n)
+	ucidef_set_led_usbdev "usb" "USB" "A4001N:green:usb" "1-1"
+	;;
+adb,a4001n1)
 	ucidef_set_led_netdev "lan" "LAN" "A4001N1:green:eth" "eth0"
 	ucidef_set_led_usbdev "usb" "USB" "A4001N1:green:3g" "1-1"
 	;;
-a4001n)
-	ucidef_set_led_usbdev "usb" "USB" "A4001N:green:usb" "1-1"
+adb,av4202n)
+	ucidef_set_led_netdev "wlan0" "WLAN" "AV4202N:blue:wifi" "wlan0"
 	;;
-ad1018-nor)
-	ucidef_set_led_netdev "wlan0" "WLAN" "AD1018:green:wifi" "wlan0"
+bt,home-hub-2-a)
+	ucidef_set_led_netdev "lan" "LAN" "HOMEHUB2A:blue:broadband" "eth0.1"
+	ucidef_set_led_netdev "wlan0" "WIFI" "HOMEHUB2A:green:wireless" "wlan0"
+	ucidef_set_led_usbdev "usb1" "USB1" "HOMEHUB2A:blue:phone" "1-1"
+	ucidef_set_led_usbdev "usb2" "USB2" "HOMEHUB2A:green:phone" "2-1"
 	;;
-ar-5315u)
+comtrend,ar-5315u)
 	ucidef_set_led_usbdev "usb" "USB" "AR-5315u:green:usb" "1-1"
 	;;
-av4202n)
-	ucidef_set_led_netdev "wlan0" "WLAN" "AV4202N:blue:wifi" "wlan0"
+huawei,echolife-hg553)
+	ucidef_set_led_netdev "lan" "LAN" "HW553:blue:lan" "eth0"
+	ucidef_set_led_usbdev "usb1" "USB1" "HW553:red:hspa" "1-1"
+	ucidef_set_led_usbdev "usb2" "USB2" "HW553:blue:hspa" "1-2"
 	;;
-cpva502p)
-	ucidef_set_led_netdev "lan" "LAN" "CPVA502+:amber:link" "eth0"
+huawei,echolife-hg556a-a|\
+huawei,echolife-hg556a-b|\
+huawei,echolife-hg556a-c)
+	ucidef_set_led_netdev "lan" "LAN" "HW556:red:dsl" "eth0"
+	ucidef_set_led_usbdev "usb" "USB" "HW556:red:hspa" "1-2"
+	;;
+huawei,echolife-hg622)
+	ucidef_set_led_usbdev "usb" "USB" "HG622:green:usb" "1-2"
+	;;
+huawei,echolife-hg655b)
+	ucidef_set_led_usbdev "usb" "USB" "HW65x:green:usb" "1-2"
+	;;
+inventel,livebox-1)
+	ucidef_set_led_netdev "lan" "LAN" "Livebox1:red:traffic" "eth0"
+	ucidef_set_led_netdev "wan" "WAN" "Livebox1:red:adsl" "eth1"
+	ucidef_set_led_netdev "wlan0" "WIFI" "Livebox1:red:wifi" "wlan0"
 	;;
-dgnd3700v1_dgnd3800b)
+netgear,dgnd3700-v1)
 	ucidef_set_led_netdev "lan" "LAN" "DGND3700v1_3800B:green:lan" "eth0.1"
 	ucidef_set_led_netdev "wan" "WAN" "DGND3700v1_3800B:green:inet" "eth0.2"
 	ucidef_set_led_netdev "wlan0" "WIFI2G" "DGND3700v1_3800B:green:wifi2g" "wlan0"
@@ -35,50 +60,27 @@ dgnd3700v1_dgnd3800b)
 	ucidef_set_led_usbdev "usb1" "USB1" "DGND3700v1_3800B:green:usb-back" "1-1"
 	ucidef_set_led_usbdev "usb2" "USB2" "DGND3700v1_3800B:green:usb-front" "1-2"
 	;;
-evg2000)
+netgear,evg2000)
 	ucidef_set_led_netdev "lan" "LAN" "EVG2000:green:lan" "eth0"
 	ucidef_set_led_netdev "wan" "WAN" "EVG2000:green:wan" "eth1"
 	ucidef_set_led_netdev "wlan0" "WIFI" "EVG2000:green:wireless" "wlan0"
 	ucidef_set_led_usbdev "usb1" "USB1" "EVG2000:green:voip1" "1-1"
 	ucidef_set_led_usbdev "usb2" "USB2" "EVG2000:green:voip2" "1-2"
 	;;
-fast2704n)
+nucom,r5010un-v2)
+	ucidef_set_led_usbdev "usb" "USB" "R5010UNv2:green:usb" "1-1"
+	;;
+sagem,fast-2704n)
 	ucidef_set_led_netdev "wan" "WAN" "F@ST2704N:green:inet" "eth0.2"
 	;;
-fast2704v2)
+sagem,fast-2704-v2)
 	ucidef_set_led_usbdev "usb" "USB" "F@ST2704V2:green:usb" "1-1"
 	;;
-hg553)
-	ucidef_set_led_netdev "lan" "LAN" "HW553:blue:lan" "eth0"
-	ucidef_set_led_usbdev "usb1" "USB1" "HW553:red:hspa" "1-1"
-	ucidef_set_led_usbdev "usb2" "USB2" "HW553:blue:hspa" "1-2"
-	;;
-hg556a_*)
-	ucidef_set_led_netdev "lan" "LAN" "HW556:red:dsl" "eth0"
-	ucidef_set_led_usbdev "usb" "USB" "HW556:red:hspa" "1-2"
-	;;
-hg622)
-	ucidef_set_led_usbdev "usb" "USB" "HG622:green:usb" "1-2"
-	;;
-hg655b)
-	ucidef_set_led_usbdev "usb" "USB" "HW65x:green:usb" "1-2"
-	;;
-homehub2a)
-	ucidef_set_led_netdev "lan" "LAN" "HOMEHUB2A:blue:broadband" "eth0.1"
-	ucidef_set_led_netdev "wlan0" "WIFI" "HOMEHUB2A:green:wireless" "wlan0"
-	ucidef_set_led_usbdev "usb1" "USB1" "HOMEHUB2A:blue:phone" "1-1"
-	ucidef_set_led_usbdev "usb2" "USB2" "HOMEHUB2A:green:phone" "2-1"
-	;;
-livebox1)
-	ucidef_set_led_netdev "lan" "LAN" "Livebox1:red:traffic" "eth0"
-	ucidef_set_led_netdev "wan" "WAN" "Livebox1:red:adsl" "eth1"
-	ucidef_set_led_netdev "wlan0" "WIFI" "Livebox1:red:wifi" "wlan0"
-	;;
-r1000h)
-	ucidef_set_led_usbport "usb" "USB" "R1000H:green:usb" "usb1-port1" "usb2-port1"
+sercomm,ad1018-nor)
+	ucidef_set_led_netdev "wlan0" "WLAN" "AD1018:green:wifi" "wlan0"
 	;;
-r5010un_v2)
-	ucidef_set_led_usbdev "usb" "USB" "R5010UNv2:green:usb" "1-1"
+telsey,cpva502plus)
+	ucidef_set_led_netdev "lan" "LAN" "CPVA502+:amber:link" "eth0"
 	;;
 esac
 
diff --git a/target/linux/brcm63xx/base-files/etc/board.d/02_network b/target/linux/brcm63xx/base-files/etc/board.d/02_network
index a2ca5a37b3..7fa1514b4f 100755
--- a/target/linux/brcm63xx/base-files/etc/board.d/02_network
+++ b/target/linux/brcm63xx/base-files/etc/board.d/02_network
@@ -8,153 +8,137 @@
 board_config_update
 
 case "$(board_name)" in
-
-cvg834g |\
-evg2000 |\
-r1000h |\
-rta770bw |\
-rta770w |\
-spw303v |\
-spw500v)
+actiontec,r1000h|\
+dynalink,rta770bw|\
+dynalink,rta770w|\
+netgear,cvg834g|\
+netgear,evg2000|\
+t-com,speedport-w-303v|\
+t-com,speedport-w-500v)
 	ucidef_set_interface_lan "eth0"
 	;;
-
-ar1004g |\
-bcm96338gw |\
-bcm96338w |\
-cpva642 |\
-ct-5365 |\
-ct-536p_5621t |\
-ct-6373 |\
-dg834g_v4 |\
-dsl-2640b-b |\
-dsl-2640u |\
-fast2604 |\
-rta1320 |\
-v2110)
+adb,a4001n1|\
+adb,a4001n|\
+adb,av4202n|\
+brcm,bcm963281tan|\
+brcm,bcm96328avng|\
+brcm,bcm96368mvngr|\
+comtrend,ar-5381u|\
+comtrend,ar-5387un|\
+comtrend,vr-3025u|\
+comtrend,vr-3025un|\
+comtrend,vr-3026e|\
+d-link,dsl-274xb-f1|\
+d-link,dsl-275xb-d1|\
+huawei,echolife-hg622|\
+huawei,echolife-hg655b|\
+nucom,r5010un-v2|\
+sagem,fast-2504n|\
+sagem,fast-2704-v2|\
+zyxel,p870hw-51a-v2)
 	ucidef_add_switch "switch0" \
-		"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5u@eth0"
+		"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "8t@eth0"
 	;;
-
-agpf-s0 |\
-bcm96348gw |\
-bcm96348gw-10 |\
-bcm96348gw-11 |\
-bcm96358vw |\
-bcm96358vw2 |\
-dg834gt |\
-dmv-s0 |\
-dsl-2650u |\
-dv-201amr |\
-f5d7633 |\
-fast2404 |\
-magic |\
-rg100a |\
-rta1025W |\
-td-w8900gb |\
-usr9108 |\
-v2500v_bb)
+alcatel,rg100a|\
+belkin,f5d7633|\
+brcm,bcm96348gw|\
+brcm,bcm96348gw-10|\
+brcm,bcm96348gw-11|\
+brcm,bcm96358vw|\
+brcm,bcm96358vw2|\
+bt,voyager-2500v-bb|\
+davolink,dv-201amr|\
+d-link,dsl-2650u|\
+dynalink,rta1025w|\
+netgear,dg834gt-pn|\
+pirelli,agpf-s0|\
+sagem,fast-2404|\
+telsey,magic|\
+tp-link,td-w8900gb|\
+usrobotics,usr9108)
 	ucidef_set_interfaces_lan_wan "eth1" "eth0"
 	ucidef_add_switch "switch0" \
 		"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5u@eth1"
 	;;
-
-dsl-274xb-c |\
-hg553 |\
-hg556a_* |\
-homehub2a)
+asmax,ar-1004g|\
+brcm,bcm96338gw|\
+brcm,bcm96338w|\
+bt,voyager-2110|\
+comtrend,ct-5365|\
+comtrend,ct-536plus|\
+comtrend,ct-6373|\
+d-link,dsl-2640b-b|\
+d-link,dsl-2640u|\
+dynalink,rta1320|\
+netgear,dg834g-v4|\
+sagem,fast-2604|\
+telsey,cpva642)
 	ucidef_add_switch "switch0" \
-		"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "5t@eth0"
+		"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5u@eth0"
 	;;
-
-dva-g3810bn |\
-hg520 |\
-neufbox4)
-	ucidef_set_interfaces_lan_wan "eth1.1" "eth0"
+brcm,bcm963268bu-p300)
 	ucidef_add_switch "switch0" \
-		"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5t@eth1"
+		"0:lan" "3:lan" "4:lan" "5:lan" "6:lan" "7:lan" "8t@eth0"
 	;;
-
-a4001n1 |\
-a4001n |\
-ar-5381u |\
-ar-5387un |\
-av4202n |\
-bcm963281tan |\
-bcm96328avng |\
-bcm96368mvngr |\
-dsl-274xb-f |\
-dsl-275xb-d |\
-fast2504n |\
-fast2704v2 |\
-hg622 |\
-hg655b |\
-p870hw-51a_v2 |\
-r5010un_v2 |\
-vr-3025un |\
-vr-3025u |\
-vr-3026e)
+brcm,bcm96368mvwg)
 	ucidef_add_switch "switch0" \
-		"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "8t@eth0"
+		"1:lan" "2:lan" "4:lan" "5:lan" "8t@eth0"
 	;;
-
-ar-5315u |\
-fast2704n |\
-vh4032n)
+bt,home-hub-2-a|\
+d-link,dsl-274xb-c2|\
+huawei,echolife-hg553|\
+huawei,echolife-hg556a-a|\
+huawei,echolife-hg556a-b|\
+huawei,echolife-hg556a-c)
+	ucidef_add_switch "switch0" \
+		"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "5t@eth0"
+	;;
+comtrend,ar-5315u|\
+observa,vh4032n|\
+sagem,fast-2704n)
 	ucidef_add_switch "switch0" \
 		"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "8t@eth0"
 	;;
-
-ad1018-nor)
+comtrend,wap-5813n)
 	ucidef_add_switch "switch0" \
-		"1:lan:3" "2:lan:2" "3:lan:1" "0:wan" "8t@eth0"
+		"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5t@eth0"
 	;;
-
-bcm96368mvwg)
+d-link,dva-g3810bn-tl|\
+huawei,echolife-hg520v|\
+sfr,neufbox-4-foxconn-r1|\
+sfr,neufbox-4-sercomm-r0)
+	ucidef_set_interfaces_lan_wan "eth1.1" "eth0"
 	ucidef_add_switch "switch0" \
-		"1:lan" "2:lan" "4:lan" "5:lan" "8t@eth0"
+		"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5t@eth1"
 	;;
-
-wap-5813n)
+inteno,vg50)
 	ucidef_add_switch "switch0" \
-		"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5t@eth0"
+		"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "8t@eth0"
 	;;
-
-dgnd3700v1_dgnd3800b)
+inventel,livebox-1|\
+telsey,cpva502plus)
+	ucidef_set_interfaces_lan_wan "eth0" "eth1"
+	;;
+netgear,dgnd3700-v1)
 	ucidef_add_switch "switch0" \
 		"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "8t@eth0"
 	;;
-
-neufbox6)
+sercomm,ad1018-nor)
+	ucidef_add_switch "switch0" \
+		"1:lan:3" "2:lan:2" "3:lan:1" "0:wan" "8t@eth0"
+	;;
+sfr,neufbox-6-sercomm-r0)
 	ucidef_add_switch "switch0" \
 		"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "9t@eth0"
 	;;
-
-sr102)
+sky,sr102)
 	ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
 	ucidef_add_switch "switch0" \
 		"0:lan" "1:lan" "2:lan" "3:wan" "8t@eth0"
 	;;
-
-vg50)
-	ucidef_add_switch "switch0" \
-		"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "8t@eth0"
-	;;
-
-bcm963268bu_p300)
-	ucidef_add_switch "switch0" \
-		"0:lan" "3:lan" "4:lan" "5:lan" "6:lan" "7:lan" "8t@eth0"
-	;;
-
-cpva502p |\
-livebox1)
-	ucidef_set_interfaces_lan_wan "eth0" "eth1"
-	;;
-
 *)
 	ucidef_set_interfaces_lan_wan "eth1" "eth0"
 	;;
-
 esac
 
 board_config_flush
diff --git a/target/linux/brcm63xx/base-files/etc/diag.sh b/target/linux/brcm63xx/base-files/etc/diag.sh
index 34464ec44a..4b6d8d6065 100644
--- a/target/linux/brcm63xx/base-files/etc/diag.sh
+++ b/target/linux/brcm63xx/base-files/etc/diag.sh
@@ -6,141 +6,143 @@
 
 set_state() {
 	case "$(board_name)" in
-	a4001n1)
-		status_led="A4001N1:green:power"
+	actiontec,r1000h)
+		status_led="R1000H:green:power"
 		;;
-	a4001n)
+	adb,a4001n)
 		status_led="A4001N:green:power"
 		;;
-	ad1018-nor)
-		status_led="AD1018:green:power"
-		;;
-	ar-5315u)
-		status_led="AR-5315u:green:power"
-		;;
-	ar-5381u)
-		status_led="AR-5381u:green:power"
-		;;
-	ar-5387un)
-		status_led="AR-5387un:green:power"
+	adb,a4001n1)
+		status_led="A4001N1:green:power"
 		;;
-	av4202n)
+	adb,av4202n)
 		status_led="AV4202N:white:power"
 		;;
-	bcm96348gw)
-		status_led="96348GW:green:power"
+	asmax,ar-1004g)
+		status_led="AR1004G:green:power"
 		;;
-	bcm963281tan)
+	brcm,bcm963281tan)
 		status_led="963281TAN::power"
 		;;
-	bcm96328avng)
+	brcm,bcm96328avng)
 		status_led="96328avng::power"
 		;;
-	bcm96348gw-11)
-		status_led="96348GW-11:green:power"
-		;;
-	spw303v)
-		status_led="spw303v:green:power+adsl"
+	brcm,bcm96348gw)
+		status_led="96348GW:green:power"
 		;;
-	vh4032n)
-		status_led="VH4032N:blue:power"
+	brcm,bcm96348gw-11)
+		status_led="96348GW-11:green:power"
 		;;
-	vr-3025un)
-		status_led="VR-3025un:green:power"
+	bt,home-hub-2-a)
+		status_led="HOMEHUB2A:green:upgrading"
+		status_led2="HOMEHUB2A:blue:upgrading"
 		;;
-	vr-3025u)
-		status_led="VR-3025u:green:power"
+	bt,voyager-2110)
+		status_led="V2110:power:green"
 		;;
-	vr-3026e)
-		status_led="VR-3026e:green:power"
+	comtrend,ar-5315u)
+		status_led="AR-5315u:green:power"
 		;;
-	wap-5813n)
-		status_led="WAP-5813n:green:power"
+	comtrend,ar-5381u)
+		status_led="AR-5381u:green:power"
 		;;
-	ar1004g)
-		status_led="AR1004G:green:power"
+	comtrend,ar-5387un)
+		status_led="AR-5387un:green:power"
 		;;
-	dsl-274xb-c|\
-	dsl-274xb-f)
-		status_led="dsl-274xb:green:power"
+	comtrend,ct-536plus)
+		status_led="CT536_CT5621:green:power"
 		;;
-	dsl-275xb-d)
-		status_led="dsl-275xb:green:power"
+	comtrend,vr-3025u)
+		status_led="VR-3025u:green:power"
 		;;
-	cpva642)
-		status_led="CPVA642:green:power:"
+	comtrend,vr-3025un)
+		status_led="VR-3025un:green:power"
 		;;
-	ct-536p_5621t)
-		status_led="CT536_CT5621:green:power"
+	comtrend,vr-3026e)
+		status_led="VR-3026e:green:power"
 		;;
-	cvg834g)
-		status_led="CVG834G:green:power"
+	comtrend,wap-5813n)
+		status_led="WAP-5813n:green:power"
 		;;
-	dsl-2640b-b)
+	d-link,dsl-2640b-b)
 		status_led="D-4P-W:green:power"
 		;;
-	dgnd3700v1_dgnd3800b)
-		status_led="DGND3700v1_3800B:green:power"
-		;;
-	evg2000)
-		status_led="EVG2000:green:power"
-		;;
-	fast2504n)
-		status_led="fast2504n:green:ok"
+	d-link,dsl-274xb-c2|\
+	d-link,dsl-274xb-f1)
+		status_led="dsl-274xb:green:power"
 		;;
-	fast2704n)
-		status_led2="F@ST2704N:red:power"
+	d-link,dsl-275xb-d1)
+		status_led="dsl-275xb:green:power"
 		;;
-	fast2704v2)
-		status_led="F@ST2704V2:green:power"
+	dynalink,rta770bw)
+		status_led="RTA770BW:green:diag"
 		;;
-	homehub2a)
-		status_led="HOMEHUB2A:green:upgrading"
-		status_led2="HOMEHUB2A:blue:upgrading"
+	dynalink,rta770w)
+		status_led="RTA770W:green:diag"
 		;;
-	gw6200)
-		status_led="GW6200:green:line1"
-		status_led2="GW6200:green:tel"
+	huawei,echolife-hg520v)
+		status_led="HW520:green:net"
 		;;
-	hg553)
+	huawei,echolife-hg553)
 		status_led="HW553:blue:power"
 		;;
-	hg556a_*)
+	huawei,echolife-hg556a-a|\
+	huawei,echolife-hg556a-b|\
+	huawei,echolife-hg556a-c)
 		status_led="HW556:red:power"
 		;;
-	hg520)
-		status_led="HW520:green:net"
-		;;
-	hg655b)
+	huawei,echolife-hg655b)
 		status_led="HW65x:green:power"
 		;;
-	livebox1)
+	inventel,livebox-1)
 		status_led="Livebox1:red:adsl-fail-power"
 		;;
-	p870hw-51a_v2)
-		status_led="P870HW-51a:green:power"
+	netgear,cvg834g)
+		status_led="CVG834G:green:power"
 		;;
-	r1000h)
-		status_led="R1000H:green:power"
+	netgear,dgnd3700-v1)
+		status_led="DGND3700v1_3800B:green:power"
 		;;
-	r5010un_v2)
+	netgear,evg2000)
+		status_led="EVG2000:green:power"
+		;;
+	nucom,r5010un-v2)
 		status_led="R5010UNv2:green:power"
 		;;
-	rta770bw)
-		status_led="RTA770BW:green:diag"
+	observa,vh4032n)
+		status_led="VH4032N:blue:power"
 		;;
-	rta770w)
-		status_led="RTA770W:green:diag"
+	sagem,fast-2504n)
+		status_led="fast2504n:green:ok"
+		;;
+	sagem,fast-2704n)
+		status_led2="F@ST2704N:red:power"
+		;;
+	sagem,fast-2704-v2)
+		status_led="F@ST2704V2:green:power"
+		;;
+	sercomm,ad1018-nor)
+		status_led="AD1018:green:power"
 		;;
-	sr102)
+	sky,sr102)
 		status_led="SR102:white:power"
 		status_led2="SR102:red:power"
 		;;
-	spw500v)
+	t-com,speedport-w-303v)
+		status_led="spw303v:green:power+adsl"
+		;;
+	t-com,speedport-w-500v)
 		status_led="SPW500V:green:power"
 		;;
-	v2110)
-		status_led="V2110:power:green"
+	tecom,gw6200)
+		status_led="GW6200:green:line1"
+		status_led2="GW6200:green:tel"
+		;;
+	telsey,cpva642)
+		status_led="CPVA642:green:power:"
+		;;
+	zyxel,p870hw-51a-v2)
+		status_led="P870HW-51a:green:power"
 		;;
 	esac
 
diff --git a/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
index 2400eb998a..0e92481f08 100644
--- a/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
+++ b/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
@@ -10,11 +10,11 @@ board=$(board_name)
 case "$FIRMWARE" in
 "rt2x00.eeprom" )
 	case $board in
-	hg556a_c)
+	huawei,echolife-hg556a-c)
 		caldata_extract "cal_data" 0x1fe00 0x200
 		;;
-	hg622 |\
-	hg655b)
+	huawei,echolife-hg622|\
+	huawei,echolife-hg655b)
 		caldata_extract "cal_data" 0x0 0x200
 		;;
 	*)
diff --git a/target/linux/brcm63xx/base-files/etc/uci-defaults/09_fix_crc b/target/linux/brcm63xx/base-files/etc/uci-defaults/09_fix_crc
index bfd485c27b..c33e56f28e 100644
--- a/target/linux/brcm63xx/base-files/etc/uci-defaults/09_fix_crc
+++ b/target/linux/brcm63xx/base-files/etc/uci-defaults/09_fix_crc
@@ -11,33 +11,33 @@ do_fixcrc() {
 }
 
 case "$(board_name)" in
-	a4001n |\
-	a4001n1 |\
-	ar-5315u |\
-	ar-5381u |\
-	ar-5387un |\
-	bcm96328avng |\
-	bcm963281tan |\
-	cpva502p |\
-	cpva642 |\
-	ct-6373 |\
-	dsl-274xb-f |\
-	evg2000 |\
-	hg622 |\
-	magic |\
-	p870hw-51a_v2 |\
-	r1000h |\
-	r5010un_v2 |\
-	rta770bw |\
-	rta770w |\
-	spw303v |\
-	v2110 |\
-	v2500v_bb |\
-	vh4032n |\
-	vr-3025u |\
-	vr-3025un |\
-	vr-3026e |\
-	wap-5813n)
+	actiontec,r1000h|\
+	adb,a4001n|\
+	adb,a4001n1|\
+	brcm,bcm96328avng|\
+	brcm,bcm963281tan|\
+	bt,voyager-2110|\
+	bt,voyager-2500v-bb|\
+	comtrend,ar-5315u|\
+	comtrend,ar-5381u|\
+	comtrend,ar-5387un|\
+	comtrend,vr-3025u|\
+	comtrend,vr-3025un|\
+	comtrend,vr-3026e|\
+	comtrend,wap-5813n|\
+	comtrend,ct-6373|\
+	d-link,dsl-274xb-f1|\
+	dynalink,rta770bw|\
+	dynalink,rta770w|\
+	huawei,echolife-hg622|\
+	netgear,evg2000|\
+	nucom,r5010un-v2|\
+	observa,vh4032n|\
+	t-com,speedport-w-303v|\
+	telsey,cpva502plus|\
+	telsey,cpva642|\
+	telsey,magic|\
+	zyxel,p870hw-51a-v2)
 		do_fixcrc
 		;;
 esac
diff --git a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh b/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
deleted file mode 100755
index 1676ae0abb..0000000000
--- a/target/linux/brcm63xx/base-files/lib/brcm63xx.sh
+++ /dev/null
@@ -1,310 +0,0 @@
-#!/bin/sh
-#
-# Copyright (C) 2007 OpenWrt.org
-#
-#
-
-board_id=""
-sys_mtd_part=""
-ifname=""
-
-brcm63xx_dt_detect() {
-	local board_name
-
-	case "$1" in
-	"ADB P.DG A4001N")
-		board_name="a4001n"
-		;;
-	"ADB P.DG A4001N1")
-		board_name="a4001n1"
-		;;
-	"ADB P.DG AV4202N")
-		board_name="av4202n"
-		;;
-	"Actiontec R1000H")
-		board_name="r1000h"
-		;;
-	"Alcatel RG100A")
-		board_name="rg100a"
-		;;
-	"ASMAX AR 1004g")
-		board_name="ar100g"
-		;;
-	"Belkin F5D7633")
-		board_name="f5d7633"
-		;;
-	"Broadcom 96348R reference board")
-		board_name="bcm96348r"
-		;;
-	"Broadcom BCM96318REF reference board")
-		board_name="bcm96318ref"
-		;;
-	"Broadcom BCM96318REF_P300 reference board")
-		board_name="bcm96318ref_p300"
-		;;
-	"Broadcom BCM963268BU_P300 reference board")
-		board_name="bcm963268bu_p300"
-		;;
-	"Broadcom BCM963269BHR reference board")
-		board_name="bcm963269bhr"
-		;;
-	"Broadcom bcm963281TAN reference board")
-		board_name="bcm963281tan"
-		;;
-	"Broadcom BCM96328avng reference board")
-		board_name="bcm96328avng"
-		;;
-	"Broadcom BCM96345GW2 reference board")
-		board_name="bcm96345gw2"
-		;;
-	"Broadcom BCM96348GW-10 reference board")
-		board_name="bcm96348gw-10"
-		;;
-	"Broadcom BCM96348GW-11 reference board")
-		board_name="bcm96348gw-11"
-		;;
-	"Broadcom BCM96348GW reference board")
-		board_name="bcm96358gw"
-		;;
-	"Broadcom BCM96358VW reference board")
-		board_name="bcm96358vw"
-		;;
-	"Broadcom BCM96358VW2 reference board")
-		board_name="bcm96358vw2"
-		;;
-	"Broadcom BCM96368MVNgr reference board")
-		board_name="bcm96368mvngr"
-		;;
-	"Broadcom BCM96368MVWG reference board")
-		board_name="bcm96368mvwg"
-		;;
-	"BT Home Hub 2.0 Type A")
-		board_name="homehub2a"
-		;;
-	"BT Voyager 2110")
-		board_name="v2110"
-		;;
-	"BT Voyager V2500V")
-		board_name="v2500v_bb"
-		;;
-	"Comtrend AR-5315u")
-		board_name="ar-5315u"
-		;;
-	"Comtrend AR-5381u")
-		board_name="ar-5381u"
-		;;
-	"Comtrend AR-5387un")
-		board_name="ar-5387un"
-		;;
-	"Comtrend CT-5365")
-		board_name="ct-5365"
-		;;
-	"Comtrend CT-536+/CT-5621T")
-		board_name="ct-536p_5621t"
-		;;
-	"Comtrend CT-6373")
-		board_name="ct-6373"
-		;;
-	"Comtrend VR-3025u")
-		board_name="vr-3025u"
-		;;
-	"Comtrend VR-3025un")
-		board_name="vr-3025un"
-		;;
-	"Comtrend VR-3026e")
-		board_name="vr-3026e"
-		;;
-	"Comtrend WAP-5813n")
-		board_name="wap-5813n"
-		;;
-	"Davolink DV-201AMR")
-		board_name="dv-201amr"
-		;;
-	"D-Link DSL-2640B rev B2")
-		board_name="dsl-2640b-b"
-		;;
-	"D-Link DSL-2640U/BRU/C")
-		board_name="dsl-2640u"
-		;;
-	"D-Link DSL-2650U")
-		board_name="dsl-2650u"
-		;;
-	"D-Link DSL-2740B/DSL-2741B rev C2/3")
-		board_name="dsl-274xb-c"
-		;;
-	"D-Link DSL-2740B/DSL-2741B rev F1")
-		board_name="dsl-274xb-f"
-		;;
-	"D-Link DSL-2750B/DSL-2751 rev D1")
-		board_name="dsl-275xb-d"
-		;;
-	"D-Link DVA-G3810BN/TL")
-		board_name="dva-g3810bn"
-		;;
-	"Dynalink RTA770BW")
-		board_name="rta770bw"
-		;;
-	"Dynalink RTA770W")
-		board_name="rta770w"
-		;;
-	"Dynalink RTA1025W")
-		board_name="rta1025w"
-		;;
-	"Dynalink RTA1320")
-		board_name="rta1320"
-		;;
-	"Huawei EchoLife HG520v")
-		board_name="hg520v"
-		;;
-	"Huawei EchoLife HG553")
-		board_name="hg553"
-		;;
-	"Huawei EchoLife HG556a (version A)")
-		board_name="hg556a_a"
-		;;
-	"Huawei EchoLife HG556a (version B)")
-		board_name="hg556a_b"
-		;;
-	"Huawei EchoLife HG556a (version C)")
-		board_name="hg556a_c"
-		;;
-	"Huawei HG622")
-		board_name="hg622"
-		;;
-	"Huawei HG655b")
-		board_name="hg655b"
-		;;
-	"Inteno VG50")
-		board_name="vg50"
-		;;
-	"Inventel Livebox 1")
-		board_name="livebox1"
-		;;
-	"Netgear CVG834G")
-		board_name="cvg834g"
-		;;
-	"Netgear DG834GT/PN")
-		board_name="dg834gt"
-		;;
-	"Netgear DG834G v4")
-		board_name="dg834g_v4"
-		;;
-	"Netgear DGND3700v1/DGND3800B")
-		board_name="dgnd3700v1_dgnd3800b"
-		;;
-	"Netgear EVG2000")
-		board_name="evg2000"
-		;;
-	"NuCom R5010UN v2")
-		board_name="r5010un_v2"
-		;;
-	"Observa VH4032N")
-		board_name="vh4032n"
-		;;
-	"Pirelli A226G")
-		board_name="a226g"
-		;;
-	"Pirelli A226M")
-		board_name="a226m"
-		;;
-	"Pirelli A226M-FWB")
-		board_name="a226m-fwb"
-		;;
-	"Pirelli Alice Gate AGPF-S0")
-		board_name="agpf-s0"
-		;;
-	"Sagem F@ST2404")
-		board_name="fast2404"
-		;;
-	"Sagem F@ST2504n")
-		board_name="fast2504n"
-		;;
-	"Sagem F@ST2604")
-		board_name="fast2604"
-		;;
-	"Sagem F@ST2704N")
-		board_name="fast2704n"
-		;;
-	"Sagem F@ST2704V2")
-		board_name="fast2704v2"
-		;;
-	"Sercomm AD1018 (SPI flash mod)")
-		board_name="ad1018-nor"
-		;;
-	"SFR Neuf Box 4"*)
-		board_name="neufbox4"
-		;;
-	"SFR neufbox 6 (Sercomm)")
-		board_name="neufbox6"
-		;;
-	"SKY SR102")
-		board_name="sr102"
-		;;
-	"T-Com Speedport W303 V")
-		board_name="spw303v"
-		;;
-	"T-Com Speedport W500 V")
-		board_name="spw500v"
-		;;
-	"TECOM GW6000")
-		board_name="g6000"
-		;;
-	"TECOM GW6200")
-		board_name="g6200"
-		;;
-	"Telsey CPVA502+")
-		board_name="cpva502p"
-		;;
-	"Telsey CPVA642-type (CPA-ZNTE60T)")
-		board_name="cpva642"
-		;;
-	"Telsey MAGIC")
-		board_name="magic"
-		;;
-	"TP-Link TD-W8900GB")
-		board_name="td-w8900gb"
-		;;
-	"USRobotics 9108")
-		board_name="usr9108"
-		;;
-	"Zyxel P870HW-51a v2")
-		board_name="p870hw-51a_v2"
-		;;
-	*)
-		board_name="unknown"
-		;;
-	esac
-
-	echo "$board_name"
-}
-
-brcm63xx_legacy_detect() {
-	local board_name
-
-	case "$1" in
-	*)
-		board_name="unknown"
-		;;
-	esac
-
-	echo "$board_name"
-}
-
-brcm63xx_detect() {
-	local board_name model
-
-	board_id=$(awk 'BEGIN{FS="[ \t:/]+"} /system type/ {print $4}' /proc/cpuinfo)
-
-	if [ -e /proc/device-tree ]; then
-		model=$(cat /proc/device-tree/model)
-		board_name=$(brcm63xx_dt_detect "$model")
-	else
-		model="Unknown bcm63xx board"
-		board_name=$(brcm63xx_legacy_detect "$board_id")
-	fi
-
-	[ -e "/tmp/sysinfo" ] || mkdir -p "/tmp/sysinfo"
-
-	echo "$board_name" > /tmp/sysinfo/board_name
-	echo "$model" > /tmp/sysinfo/model
-}
diff --git a/target/linux/brcm63xx/base-files/lib/preinit/01_do_brcm63xx.sh b/target/linux/brcm63xx/base-files/lib/preinit/01_do_brcm63xx.sh
deleted file mode 100644
index 4179695024..0000000000
--- a/target/linux/brcm63xx/base-files/lib/preinit/01_do_brcm63xx.sh
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-do_brcm63xx() {
-	. /lib/brcm63xx.sh
-
-	brcm63xx_detect
-}
-
-boot_hook_add preinit_main do_brcm63xx
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
