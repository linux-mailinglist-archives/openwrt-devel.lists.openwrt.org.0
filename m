Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D8FE0CC0
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 21:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LmaKdU9GrkhovdsSK/eT+Ihl+r2+aQwwp7e1eQCCLN8=; b=NyYEw6T+04LKcl
	sR4fuayekzDoVVL2KIRxoEbJo3p45QcBbL862/9jktFytTZz56XME3bz/Bt2Nfij15A6oav1hCpWA
	a40ze4DNIuPQYm05NKshjCR4MMDwINzIzhxeX9UrcbCsDpIwF9lvMT7WEiVH0uTQgIkJSB8YGn1/B
	y6esIYa2c2PyFqgAn+uQQxEsQnUuleezD0uE6UM1hFCDox2Ge6YCF1HM17h+qFyDRS2Likip9njLT
	0ScRNqioN0IM2Pe2R6I2GACOpDEJWLBcU76j6cnR53EE5fWgkLYwbUCAERmpxUJyiS0TiwxgUOrED
	A5KDBr55CW45NyfqOM4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN07f-00008t-8A; Tue, 22 Oct 2019 19:47:15 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN07V-00008D-Nt
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 19:47:08 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhDN4-1hrm6A3Hco-00eLn8 for <openwrt-devel@lists.openwrt.org>; Tue, 22
 Oct 2019 21:47:00 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 22 Oct 2019 21:46:57 +0200
Message-Id: <20191022194657.54433-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Du91lA3tEsrsM2s8mKZytpU5PZU16/c+PRhON7NcGdsgNBBAxnU
 CkCEpVlyTuIGOu6HgenEoYFaOzPlcaYYjeRKuTimQP2blVgxS9pqBwqpjndE7EPvrYuWDlX
 QGqGUz8e3ratGDSmCqdjdSqsFw1P/xg9ovSc8OB7nBCa5ajvQdRivNvQY0nOASGuLeiLTSf
 FL3iGLyR8JIZmXYspe4uw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e6mziBJa9fc=:PIZggo7gU+LQyFcM1oOx1j
 uR996j9yXRhIvv23tDbRBnEnFZphpcq3QeklJ5NZl6uNMcUAPpojvVZjvvvDHv3MkVmH4xQ9t
 c8TZGz/tkqklCpB3Yv7Mh8TQYQLVJ/ktJWM3JynOdOanAsEQb7aADqrR8muJb3AVk9X2qnnc9
 LmlAukv39ll8gFgqS+hefYLPy/3Ked6U0A7oFrkyVWmD7rfcHffC3ananYyBX4qQEMnlxfClm
 g1iDklzhbYvcEUZzLvaiNjnu7d35kUGUjHG5r8VdcEiAcEZ/A22APa48f2wcQVeLaKE9zYXyl
 /Ip9Z9vZGYqXm4KU6Z0WApjOEVgGb8exo++aevEbwzTaTAIKDPHINopQ9KDqf4/IAzGaXJSBt
 pbT6E9aCtE9RWTXMzobdtJ1qkMn8ys1WHj+yZz7cBkjzjXNWpQwrCqN0MJp+X2wKDPjd5vP/v
 JKM8ch3zIKeJYjXHIQycvXzhS2FhVszYnh9bwwnKqkg1mg9lxx0eDO4sybt1phdVcvqK9fzJ6
 b7UdtEFNK1Vns/af2PTbMZcR3wqF7hIRtVlOwKKh17DKzztcwd7n8GeIkSaDrfYb8YmS/SahI
 ZPgN7+e030qeKiX1xQYSO4g6bCSdvFZ4bTweR8K/6p3tejfKWhBz1eyKNqBtiRSo+d9zCeRz8
 vFSWqDfnN7WQbFdE4HShRYOGNqtjO9V7sS6aWSHJSuikrypwU30IOESvAC0QNGSUDp0A913lB
 PcM0czHpiBzz4Y5MKT2Mo4oTWHtDF10K8XjhBzBsvCNys4IkjblN8ZFuv6XQkZ9Qn9PcKZytJ
 Kj/nZLowTc62ZQ0WDoVU0saKksJqA1r5MSkstKWAbmTTcuDr8CknTZS7kngcKrTnSO/dQjeTa
 CJdb9cVMC0gmP674/DWFRlLELGGqXSkgUfkPwQvRE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_124706_231758_0F65C8F4 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: split base-files into subtargets
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

While most of the target's contents are split into subtargets, the
base-files are maintained for the target as a whole.

However, OpenWrt already implements a mechanism that will use (and
even prefer) files in the subtargets' directories. This can be
exploited to make several scripts subtarget-specific and thus save
some space (especially helpful for the tiny devices).

The only script remaining in parent base-files is
/etc/hotplug.d/ieee80211/00-wifi-migration, everything else is
moved/split.

Note that this will increase overall code lines, but reduce code
per subtarget.

base-files ipk size reduction:
master (generic)   49135 B
split (generic)    48533 B (- 0.6 kiB)
split (tiny)       43337 B (- 5.7 kiB)
split (nand)       44423 B (- 4.6 kiB)

Tested on TL-WR1043ND v4 (generic) and TL-WR841N v12 (tiny).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

A similar split patch for ramips with even more size reduction
will be sent to GitHub (I'm looking for testers there).
---
 .../base-files/etc/board.d/01_leds            | 59 ------------
 .../base-files/etc/board.d/02_network         | 50 +---------
 .../base-files/etc/board.d/03_gpio_switches   |  0
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 19 +---
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  0
 .../etc/hotplug.d/ieee80211/10_fix_wifi_mac   |  0
 .../base-files/etc/init.d/bootcount           |  0
 .../etc/uci-defaults/04_led_migration         |  0
 .../etc/uci-defaults/09_fix-checksum          |  0
 .../base-files/lib/functions/k2t.sh           |  0
 .../base-files/lib/upgrade/platform.sh        |  0
 .../ath79/nand/base-files/etc/board.d/01_leds | 18 ++++
 .../nand/base-files/etc/board.d/02_network    | 35 +++++++
 .../nand/base-files/lib/upgrade/platform.sh   | 20 ++++
 .../ath79/tiny/base-files/etc/board.d/01_leds | 85 ++++++++++++++++
 .../tiny/base-files/etc/board.d/02_network    | 96 +++++++++++++++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 38 ++++++++
 .../tiny/base-files/lib/upgrade/platform.sh   | 20 ++++
 18 files changed, 314 insertions(+), 126 deletions(-)
 rename target/linux/ath79/{ => generic}/base-files/etc/board.d/01_leds (80%)
 rename target/linux/ath79/{ => generic}/base-files/etc/board.d/02_network (89%)
 rename target/linux/ath79/{ => generic}/base-files/etc/board.d/03_gpio_switches (100%)
 rename target/linux/ath79/{ => generic}/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom (89%)
 rename target/linux/ath79/{ => generic}/base-files/etc/hotplug.d/firmware/11-ath10k-caldata (100%)
 rename target/linux/ath79/{ => generic}/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac (100%)
 rename target/linux/ath79/{ => generic}/base-files/etc/init.d/bootcount (100%)
 rename target/linux/ath79/{ => generic}/base-files/etc/uci-defaults/04_led_migration (100%)
 rename target/linux/ath79/{ => generic}/base-files/etc/uci-defaults/09_fix-checksum (100%)
 rename target/linux/ath79/{ => generic}/base-files/lib/functions/k2t.sh (100%)
 rename target/linux/ath79/{ => generic}/base-files/lib/upgrade/platform.sh (100%)
 create mode 100755 target/linux/ath79/nand/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ath79/nand/base-files/etc/board.d/02_network
 create mode 100644 target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
 create mode 100755 target/linux/ath79/tiny/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ath79/tiny/base-files/etc/board.d/02_network
 create mode 100644 target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
 create mode 100644 target/linux/ath79/tiny/base-files/lib/upgrade/platform.sh

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
similarity index 80%
rename from target/linux/ath79/base-files/etc/board.d/01_leds
rename to target/linux/ath79/generic/base-files/etc/board.d/01_leds
index 499fe0031c..e3575ff041 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -28,13 +28,6 @@ avm,fritz4020)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x1E"
 	;;
-buffalo,whr-g301n)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
-	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x02"
-	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x04"
-	ucidef_set_led_switch "lan3" "LAN3" "$boardname:green:lan3" "switch0" "0x08"
-	ucidef_set_led_switch "lan4" "LAN4" "$boardname:green:lan4" "switch0" "0x10"
-	;;
 comfast,cf-e110n-v2)
 	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth1"
 	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x02"
@@ -101,7 +94,6 @@ glinet,gl-ar150)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	ucidef_set_led_switch "lan" "LAN" "$boardname:green:lan" "switch0" "0x02"
 	;;
-glinet,gl-ar300m-nand|\
 glinet,gl-ar300m-nor)
 	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
 	;;
@@ -111,24 +103,6 @@ glinet,gl-ar300m-lite)
 glinet,gl-x750)
 	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
 	;;
-netgear,wnr1000-v2|\
-netgear,wnr2000-v3)
-	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
-	ucidef_set_led_switch "lan1green" "LAN1 (green)" "netgear:green:lan1" "switch0" "0x02" "0x04"
-	ucidef_set_led_switch "lan2green" "LAN2 (green)" "netgear:green:lan2" "switch0" "0x04" "0x04"
-	ucidef_set_led_switch "lan3green" "LAN3 (green)" "netgear:green:lan3" "switch0" "0x08" "0x04"
-	ucidef_set_led_switch "lan4green" "LAN4 (green)" "netgear:green:lan4" "switch0" "0x10" "0x04"
-	ucidef_set_led_switch "lan1amber" "LAN1 (amber)" "netgear:amber:lan1" "switch0" "0x02" "0x02"
-	ucidef_set_led_switch "lan2amber" "LAN2 (amber)" "netgear:amber:lan2" "switch0" "0x04" "0x02"
-	ucidef_set_led_switch "lan3amber" "LAN3 (amber)" "netgear:amber:lan3" "switch0" "0x08" "0x02"
-	ucidef_set_led_switch "lan4amber" "LAN4 (amber)" "netgear:amber:lan4" "switch0" "0x10" "0x02"
-	;;
-netgear,wnr612-v2|\
-on,n150r)
-	ucidef_set_led_netdev "wan" "WAN" "netgear:green:wan" "eth0"
-	ucidef_set_led_switch "lan1" "LAN1" "netgear:green:lan1" "switch0" "0x02" "0x0f"
-	ucidef_set_led_switch "lan2" "LAN2" "netgear:green:lan2" "switch0" "0x04" "0x0f"
-	;;
 pcs,cap324)
 	ucidef_set_led_netdev "lan" "LAN" "pcs:lan:green" "eth0"
 	;;
@@ -165,10 +139,6 @@ tplink,archer-c6-v2)
 	ucidef_set_led_switch "wan" "WAN" "tp-link:green:wan" "switch0" "0x02"
 	;;
 tplink,archer-c25-v1|\
-tplink,tl-wr841-v9|\
-tplink,tl-wr841-v10|\
-tplink,tl-wr841-v11|\
-tplink,tl-wr841-v12|\
 tplink,tl-wr842n-v3)
 	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth1"
 	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x10"
@@ -227,14 +197,6 @@ tplink,re450-v2)
 	ucidef_set_led_netdev "lan_data" "LAN Data" "tp-link:green:lan_data" "eth0" "tx rx"
 	ucidef_set_led_netdev "lan_link" "LAN Link" "tp-link:green:lan_link" "eth0" "link"
 	;;
-tplink,tl-mr3020-v1|\
-tplink,tl-mr3040-v2)
-	ucidef_set_led_netdev "lan" "LAN" "tp-link:green:lan" "eth0"
-	;;
-tplink,tl-mr3420-v2|\
-tplink,tl-wr740n-v4|\
-tplink,tl-wr741nd-v4|\
-tplink,tl-wr841-v8|\
 tplink,tl-wr842n-v2)
 	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth1"
 	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x04"
@@ -242,27 +204,6 @@ tplink,tl-wr842n-v2)
 	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x10"
 	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x02"
 	;;
-tplink,tl-wr740n-v1|\
-tplink,tl-wr740n-v3|\
-tplink,tl-wr741-v1|\
-tplink,tl-wr743nd-v1|\
-tplink,tl-wr841-v5|\
-tplink,tl-wr941-v4)
-	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth0"
-	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x02"
-	ucidef_set_led_switch "lan2" "LAN2" "tp-link:green:lan2" "switch0" "0x04"
-	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x08"
-	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x10"
-	;;
-tplink,tl-wr940n-v3|\
-tplink,tl-wr940n-v4|\
-tplink,tl-wr941nd-v6)
-	ucidef_set_led_netdev "wan" "WAN" "tp-link:blue:wan" "eth1"
-	ucidef_set_led_switch "lan1" "LAN1" "tp-link:blue:lan1" "switch0" "0x10"
-	ucidef_set_led_switch "lan2" "LAN2" "tp-link:blue:lan2" "switch0" "0x08"
-	ucidef_set_led_switch "lan3" "LAN3" "tp-link:blue:lan3" "switch0" "0x04"
-	ucidef_set_led_switch "lan4" "LAN4" "tp-link:blue:lan4" "switch0" "0x02"
-	;;
 trendnet,tew-823dru)
 	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
 	;;
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
similarity index 89%
rename from target/linux/ath79/base-files/etc/board.d/02_network
rename to target/linux/ath79/generic/base-files/etc/board.d/02_network
index c40c07a906..90f622b262 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -28,7 +28,6 @@ ath79_setup_interfaces()
 	pisen,ts-d084|\
 	pisen,wmb001n|\
 	pisen,wmm003n|\
-	pqi,air-pen|\
 	tplink,cpe210-v2|\
 	tplink,cpe210-v3|\
 	tplink,cpe510-v2|\
@@ -38,11 +37,6 @@ ath79_setup_interfaces()
 	tplink,re355-v1|\
 	tplink,re450-v1|\
 	tplink,re450-v2|\
-	tplink,tl-mr10u|\
-	tplink,tl-mr3020-v1|\
-	tplink,tl-mr3040-v2|\
-	tplink,tl-wa901nd-v2|\
-	tplink,tl-wr703n|\
 	ubnt,bullet-m|\
 	ubnt,bullet-m-xw|\
 	ubnt,lap-120|\
@@ -76,26 +70,11 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth1" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth0"
 		;;
-	buffalo,whr-g301n)
-		ucidef_set_interface_wan "eth0"
-		ucidef_add_switch "switch0" \
-			"0@eth1" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
-		;;
 	buffalo,wzr-hp-ag300h|\
 	tplink,archer-c25-v1|\
-	tplink,tl-mr3220-v1|\
-	tplink,tl-mr3420-v1|\
 	tplink,tl-wdr3500-v1|\
-	tplink,tl-wr841-v7|\
-	tplink,tl-wr841-v9|\
-	tplink,tl-wr841-v10|\
-	tplink,tl-wr841-v11|\
-	tplink,tl-wr841-v12|\
 	tplink,tl-wr842n-v1|\
 	tplink,tl-wr842n-v3|\
-	tplink,tl-wr940n-v3|\
-	tplink,tl-wr940n-v4|\
-	tplink,tl-wr941nd-v6|\
 	ubnt,airrouter)
 		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
@@ -205,20 +184,6 @@ ath79_setup_interfaces()
 		ucidef_add_switch_port_attr "switch0" 2 led 9
 		ucidef_add_switch_port_attr "switch0" 5 led 2
 		;;
-	netgear,wnr1000-v2|\
-	netgear,wnr2000-v3|\
-	netgear,wnr612-v2|\
-	on,n150r|\
-	tplink,tl-wr740n-v1|\
-	tplink,tl-wr740n-v3|\
-	tplink,tl-wr741-v1|\
-	tplink,tl-wr743nd-v1|\
-	tplink,tl-wr841-v5|\
-	tplink,tl-wr941-v4)
-		ucidef_set_interface_wan "eth0"
-		ucidef_add_switch "switch0" \
-		"0@eth1" "1:lan" "2:lan" "3:lan" "4:lan"
-		;;
 	phicomm,k2t)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "3:lan:1" "5:lan:2" "4:wan"
@@ -237,8 +202,7 @@ ath79_setup_interfaces()
 	tplink,archer-c7-v4|\
 	tplink,archer-c7-v5|\
 	tplink,tl-wdr3600-v1|\
-	tplink,tl-wdr4300-v1|\
-	tplink,tl-wr941n-v7-cn)
+	tplink,tl-wdr4300-v1)
 		ucidef_add_switch "switch0" \
 			"0@eth0" "2:lan:1" "3:lan:2" "4:lan:3" "5:lan:4" "1:wan"
 		;;
@@ -259,10 +223,6 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "2:lan:3" "3:lan:2" "4:lan:1" "1:wan"
 		;;
-	tplink,tl-mr3420-v2|\
-	tplink,tl-wr740n-v4|\
-	tplink,tl-wr741nd-v4|\
-	tplink,tl-wr841-v8|\
 	tplink,tl-wr842n-v2)
 		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
@@ -281,9 +241,6 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "9@eth0"
 		;;
-	tplink,tl-wr941-v2)
-		ucidef_set_interfaces_lan_wan "lan1 lan2 lan3 lan4" "wan"
-		;;
 	ubnt,acb-isp)
 		ucidef_set_interface_wan "eth1"
 		ucidef_add_switch "switch0" \
@@ -425,11 +382,6 @@ ath79_setup_macs()
 		base_mac=$(mtd_get_mac_binary info 0x8)
 		wan_mac=$(macaddr_add "$base_mac" 1)
 		;;
-	tplink,tl-wr941-v2|\
-	tplink,tl-wr941n-v7-cn)
-		base_mac=$(mtd_get_mac_binary u-boot 0x1fc00)
-		wan_mac=$(macaddr_add "$base_mac" 1)
-		;;
 	trendnet,tew-823dru)
 		lan_mac=$(mtd_get_mac_text mac 0x4)
 		wan_mac=$(mtd_get_mac_text mac 0x18)
diff --git a/target/linux/ath79/base-files/etc/board.d/03_gpio_switches b/target/linux/ath79/generic/base-files/etc/board.d/03_gpio_switches
similarity index 100%
rename from target/linux/ath79/base-files/etc/board.d/03_gpio_switches
rename to target/linux/ath79/generic/base-files/etc/board.d/03_gpio_switches
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
similarity index 89%
rename from target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
rename to target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 2cd46f8c28..4b07660f02 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -57,10 +57,7 @@ case "$FIRMWARE" in
 	avm,fritz300e)
 		caldata_extract_reverse "urloader" 0x1541 0x440
 		;;
-	buffalo,whr-g301n|\
-	buffalo,wzr-hp-g302h-a1a0|\
-	tplink,tl-wr841-v5|\
-	tplink,tl-wr941-v4)
+	buffalo,wzr-hp-g302h-a1a0)
 		caldata_extract "art" 0x1000 0xeb8
 		;;
 	buffalo,wzr-hp-g450h)
@@ -79,19 +76,8 @@ case "$FIRMWARE" in
 	winchannel,wb2000)
 		caldata_extract "art" 0x5000 0x440
 		;;
-	netgear,wnr1000-v2|\
-	netgear,wnr2000-v3|\
-	netgear,wnr612-v2|\
-	on,n150r|\
 	pcs,cap324|\
-	tplink,tl-mr3220-v1|\
-	tplink,tl-mr3420-v1|\
 	tplink,tl-wr2543-v1|\
-	tplink,tl-wr740n-v1|\
-	tplink,tl-wr740n-v3|\
-	tplink,tl-wr741-v1|\
-	tplink,tl-wr743nd-v1|\
-	tplink,tl-wr841-v7|\
 	tplink,tl-wr842n-v1|\
 	ubnt,airrouter|\
 	ubnt,bullet-m|\
@@ -99,9 +85,6 @@ case "$FIRMWARE" in
 	ubnt,rocket-m)
 		caldata_extract "art" 0x1000 0x1000
 		;;
-	pqi,air-pen)
-		caldata_extract "art" 0x1000 0x7d2
-		;;
 	ubnt,unifi)
 		caldata_extract "art" 0x1000 0x800
 		;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
similarity index 100%
rename from target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
rename to target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/generic/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
similarity index 100%
rename from target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
rename to target/linux/ath79/generic/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
diff --git a/target/linux/ath79/base-files/etc/init.d/bootcount b/target/linux/ath79/generic/base-files/etc/init.d/bootcount
similarity index 100%
rename from target/linux/ath79/base-files/etc/init.d/bootcount
rename to target/linux/ath79/generic/base-files/etc/init.d/bootcount
diff --git a/target/linux/ath79/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
similarity index 100%
rename from target/linux/ath79/base-files/etc/uci-defaults/04_led_migration
rename to target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
diff --git a/target/linux/ath79/base-files/etc/uci-defaults/09_fix-checksum b/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
similarity index 100%
rename from target/linux/ath79/base-files/etc/uci-defaults/09_fix-checksum
rename to target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
diff --git a/target/linux/ath79/base-files/lib/functions/k2t.sh b/target/linux/ath79/generic/base-files/lib/functions/k2t.sh
similarity index 100%
rename from target/linux/ath79/base-files/lib/functions/k2t.sh
rename to target/linux/ath79/generic/base-files/lib/functions/k2t.sh
diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh
similarity index 100%
rename from target/linux/ath79/base-files/lib/upgrade/platform.sh
rename to target/linux/ath79/generic/base-files/lib/upgrade/platform.sh
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..59c35ed828
--- /dev/null
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -0,0 +1,18 @@
+#!/bin/sh
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+board=$(board_name)
+boardname="${board##*,}"
+
+case "$board" in
+glinet,gl-ar300m-nand)
+	ucidef_set_led_netdev "lan" "LAN" "gl-ar300m:green:lan" "eth0"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..65ce439545
--- /dev/null
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -0,0 +1,35 @@
+#!/bin/sh
+
+. /lib/functions/system.sh
+. /lib/functions/uci-defaults.sh
+
+ath79_setup_interfaces()
+{
+	local board="$1"
+
+	case "$board" in
+	*)
+		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		;;
+	esac
+}
+
+ath79_setup_macs()
+{
+	local board="$1"
+
+	case "$board" in
+	esac
+
+	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
+	[ -n "$wan_mac" ] && ucidef_set_interface_macaddr "wan" $wan_mac
+	[ -n "$label_mac" ] && ucidef_set_label_macaddr $label_mac
+}
+
+board_config_update
+board=$(board_name)
+ath79_setup_interfaces $board
+ath79_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
new file mode 100644
index 0000000000..b02ab9a080
--- /dev/null
+++ b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,20 @@
+#
+# Copyright (C) 2011 OpenWrt.org
+#
+
+PART_NAME=firmware
+REQUIRE_IMAGE_METADATA=1
+
+platform_check_image() {
+	return 0
+}
+
+platform_do_upgrade() {
+	local board=$(board_name)
+
+	case "$board" in
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/01_leds b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..bb1799c645
--- /dev/null
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/01_leds
@@ -0,0 +1,85 @@
+#!/bin/sh
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+board=$(board_name)
+boardname="${board##*,}"
+
+case "$board" in
+buffalo,whr-g301n)
+	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
+	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x02"
+	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x04"
+	ucidef_set_led_switch "lan3" "LAN3" "$boardname:green:lan3" "switch0" "0x08"
+	ucidef_set_led_switch "lan4" "LAN4" "$boardname:green:lan4" "switch0" "0x10"
+	;;
+netgear,wnr1000-v2|\
+netgear,wnr2000-v3)
+	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "eth0"
+	ucidef_set_led_switch "lan1green" "LAN1 (green)" "netgear:green:lan1" "switch0" "0x02" "0x04"
+	ucidef_set_led_switch "lan2green" "LAN2 (green)" "netgear:green:lan2" "switch0" "0x04" "0x04"
+	ucidef_set_led_switch "lan3green" "LAN3 (green)" "netgear:green:lan3" "switch0" "0x08" "0x04"
+	ucidef_set_led_switch "lan4green" "LAN4 (green)" "netgear:green:lan4" "switch0" "0x10" "0x04"
+	ucidef_set_led_switch "lan1amber" "LAN1 (amber)" "netgear:amber:lan1" "switch0" "0x02" "0x02"
+	ucidef_set_led_switch "lan2amber" "LAN2 (amber)" "netgear:amber:lan2" "switch0" "0x04" "0x02"
+	ucidef_set_led_switch "lan3amber" "LAN3 (amber)" "netgear:amber:lan3" "switch0" "0x08" "0x02"
+	ucidef_set_led_switch "lan4amber" "LAN4 (amber)" "netgear:amber:lan4" "switch0" "0x10" "0x02"
+	;;
+netgear,wnr612-v2|\
+on,n150r)
+	ucidef_set_led_netdev "wan" "WAN" "netgear:green:wan" "eth0"
+	ucidef_set_led_switch "lan1" "LAN1" "netgear:green:lan1" "switch0" "0x02" "0x0f"
+	ucidef_set_led_switch "lan2" "LAN2" "netgear:green:lan2" "switch0" "0x04" "0x0f"
+	;;
+tplink,tl-wr841-v9|\
+tplink,tl-wr841-v10|\
+tplink,tl-wr841-v11|\
+tplink,tl-wr841-v12)
+	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth1"
+	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x10"
+	ucidef_set_led_switch "lan2" "LAN2" "tp-link:green:lan2" "switch0" "0x08"
+	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x04"
+	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x02"
+	;;
+tplink,tl-mr3020-v1|\
+tplink,tl-mr3040-v2)
+	ucidef_set_led_netdev "lan" "LAN" "tp-link:green:lan" "eth0"
+	;;
+tplink,tl-mr3420-v2|\
+tplink,tl-wr740n-v4|\
+tplink,tl-wr741nd-v4|\
+tplink,tl-wr841-v8)
+	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth1"
+	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x04"
+	ucidef_set_led_switch "lan2" "LAN2" "tp-link:green:lan2" "switch0" "0x08"
+	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x10"
+	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x02"
+	;;
+tplink,tl-wr740n-v1|\
+tplink,tl-wr740n-v3|\
+tplink,tl-wr741-v1|\
+tplink,tl-wr743nd-v1|\
+tplink,tl-wr841-v5|\
+tplink,tl-wr941-v4)
+	ucidef_set_led_netdev "wan" "WAN" "tp-link:green:wan" "eth0"
+	ucidef_set_led_switch "lan1" "LAN1" "tp-link:green:lan1" "switch0" "0x02"
+	ucidef_set_led_switch "lan2" "LAN2" "tp-link:green:lan2" "switch0" "0x04"
+	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x08"
+	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x10"
+	;;
+tplink,tl-wr940n-v3|\
+tplink,tl-wr940n-v4|\
+tplink,tl-wr941nd-v6)
+	ucidef_set_led_netdev "wan" "WAN" "tp-link:blue:wan" "eth1"
+	ucidef_set_led_switch "lan1" "LAN1" "tp-link:blue:lan1" "switch0" "0x10"
+	ucidef_set_led_switch "lan2" "LAN2" "tp-link:blue:lan2" "switch0" "0x08"
+	ucidef_set_led_switch "lan3" "LAN3" "tp-link:blue:lan3" "switch0" "0x04"
+	ucidef_set_led_switch "lan4" "LAN4" "tp-link:blue:lan4" "switch0" "0x02"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ath79/tiny/base-files/etc/board.d/02_network b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..49fccc0b2e
--- /dev/null
+++ b/target/linux/ath79/tiny/base-files/etc/board.d/02_network
@@ -0,0 +1,96 @@
+#!/bin/sh
+
+. /lib/functions/system.sh
+. /lib/functions/uci-defaults.sh
+
+ath79_setup_interfaces()
+{
+	local board="$1"
+
+	case "$board" in
+	pqi,air-pen|\
+	tplink,tl-mr10u|\
+	tplink,tl-mr3020-v1|\
+	tplink,tl-mr3040-v2|\
+	tplink,tl-wa901nd-v2|\
+	tplink,tl-wr703n)
+		ucidef_set_interface_lan "eth0"
+		;;
+	buffalo,whr-g301n)
+		ucidef_set_interface_wan "eth0"
+		ucidef_add_switch "switch0" \
+			"0@eth1" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
+		;;
+	tplink,tl-mr3220-v1|\
+	tplink,tl-mr3420-v1|\
+	tplink,tl-wr841-v7|\
+	tplink,tl-wr841-v9|\
+	tplink,tl-wr841-v10|\
+	tplink,tl-wr841-v11|\
+	tplink,tl-wr841-v12|\
+	tplink,tl-wr940n-v3|\
+	tplink,tl-wr940n-v4|\
+	tplink,tl-wr941nd-v6)
+		ucidef_set_interface_wan "eth1"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1"
+		;;
+	netgear,wnr1000-v2|\
+	netgear,wnr2000-v3|\
+	netgear,wnr612-v2|\
+	on,n150r|\
+	tplink,tl-wr740n-v1|\
+	tplink,tl-wr740n-v3|\
+	tplink,tl-wr741-v1|\
+	tplink,tl-wr743nd-v1|\
+	tplink,tl-wr841-v5|\
+	tplink,tl-wr941-v4)
+		ucidef_set_interface_wan "eth0"
+		ucidef_add_switch "switch0" \
+		"0@eth1" "1:lan" "2:lan" "3:lan" "4:lan"
+		;;
+	tplink,tl-wr941n-v7-cn)
+		ucidef_add_switch "switch0" \
+			"0@eth0" "2:lan:1" "3:lan:2" "4:lan:3" "5:lan:4" "1:wan"
+		;;
+	tplink,tl-mr3420-v2|\
+	tplink,tl-wr740n-v4|\
+	tplink,tl-wr741nd-v4|\
+	tplink,tl-wr841-v8)
+		ucidef_set_interface_wan "eth1"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan:4" "2:lan:1" "3:lan:2" "4:lan:3"
+		;;
+	tplink,tl-wr941-v2)
+		ucidef_set_interfaces_lan_wan "lan1 lan2 lan3 lan4" "wan"
+		;;
+	*)
+		ucidef_set_interfaces_lan_wan "eth0" "eth1"
+		;;
+	esac
+}
+
+ath79_setup_macs()
+{
+	local board="$1"
+
+	case "$board" in
+	tplink,tl-wr941-v2|\
+	tplink,tl-wr941n-v7-cn)
+		base_mac=$(mtd_get_mac_binary u-boot 0x1fc00)
+		wan_mac=$(macaddr_add "$base_mac" 1)
+		;;
+	esac
+
+	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
+	[ -n "$wan_mac" ] && ucidef_set_interface_macaddr "wan" $wan_mac
+	[ -n "$label_mac" ] && ucidef_set_label_macaddr $label_mac
+}
+
+board_config_update
+board=$(board_name)
+ath79_setup_interfaces $board
+ath79_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
new file mode 100644
index 0000000000..3da95cc161
--- /dev/null
+++ b/target/linux/ath79/tiny/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
+
+. /lib/functions/caldata.sh
+
+board=$(board_name)
+
+case "$FIRMWARE" in
+"ath9k-eeprom-pci-0000:00:00.0.bin")
+	case $board in
+	buffalo,whr-g301n|\
+	tplink,tl-wr841-v5|\
+	tplink,tl-wr941-v4)
+		caldata_extract "art" 0x1000 0xeb8
+		;;
+	netgear,wnr1000-v2|\
+	netgear,wnr2000-v3|\
+	netgear,wnr612-v2|\
+	on,n150r|\
+	tplink,tl-mr3220-v1|\
+	tplink,tl-mr3420-v1|\
+	tplink,tl-wr740n-v1|\
+	tplink,tl-wr740n-v3|\
+	tplink,tl-wr741-v1|\
+	tplink,tl-wr743nd-v1|\
+	tplink,tl-wr841-v7)
+		caldata_extract "art" 0x1000 0x1000
+		;;
+	pqi,air-pen)
+		caldata_extract "art" 0x1000 0x7d2
+		;;
+	*)
+		caldata_die "board $board is not supported yet"
+		;;
+	esac
+	;;
+esac
diff --git a/target/linux/ath79/tiny/base-files/lib/upgrade/platform.sh b/target/linux/ath79/tiny/base-files/lib/upgrade/platform.sh
new file mode 100644
index 0000000000..b02ab9a080
--- /dev/null
+++ b/target/linux/ath79/tiny/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,20 @@
+#
+# Copyright (C) 2011 OpenWrt.org
+#
+
+PART_NAME=firmware
+REQUIRE_IMAGE_METADATA=1
+
+platform_check_image() {
+	return 0
+}
+
+platform_do_upgrade() {
+	local board=$(board_name)
+
+	case "$board" in
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
