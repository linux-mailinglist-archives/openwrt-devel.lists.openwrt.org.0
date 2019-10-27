Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629DCE6A39
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 00:41:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tHFSCb5ifjfU4WYeZ2TfWJ5xK3Dk2o71te32ijpmxxw=; b=M/Xb6eFa5Tx7QF
	LvaKJdFyu4cUTU1dufS7nH5oYvh72mBzm0gvpioao3D8CmKRXOQHL7LLoCJxP2MxuGMJz0tR5y6fd
	KAharMv+fder/uhOgxBZ1qfu+USbG9wGp2W5Pie97cTUywnJSa/pkTyQ5vpI26e8Nj9ko1rM4Kg9u
	3c3yaiOTb6j6zOblay9M3BO/szKRrAg6/yy+bqv4nPlo+gJKQM0RkSESGe7BV0KnkLt7amqDETFTB
	48U4xYYDnHiDZsXvjx24xZpLzrF40Tumj61JLakHl1oSMM0URdeSDn6a7WXN0FEvDK5b2kVzQeCjt
	yHUC0ggKGJk5e7Oi+pBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOsAF-0006gQ-Ai; Sun, 27 Oct 2019 23:41:39 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOsA1-0006ft-Vv
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 23:41:34 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M8QBa-1iKURD0alU-004X4r for <openwrt-devel@lists.openwrt.org>; Mon, 28
 Oct 2019 00:41:19 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 28 Oct 2019 00:41:15 +0100
Message-Id: <20191027234115.8484-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:UUGCQE8zwCdLt05n3DuGRofGvv7Sbw2L9QM4BJr7j3un/qhaogG
 NAwcQ/kC+RNhn+8UOl0vb6RRib32ZKHM3kAWy29+NzZuYoKwqHcPHxgprUqEmGsOmOaP0Ar
 WbytQeUi0qDcuVFJww3hAXsLG6Vwm8ZXlMO58BWw5Mp09vyBqznuryZ4YqiGqxOWbKtSQ9L
 RjFmRrhCis5Viu0c1zCHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dpKq6pPCqj8=:Uh2alHfj8ndKKZjMU7IUXx
 oS6ovEAYFR5YSSnLYkTcW8w8i1aiABJSjH4T4n/sdkw4QNtl6ohPUswQnCTgMnm9N8se/JCTV
 KCjXWtFpAHfwfcKAEaQsB1mq5RCMzhZbHDfNJvYqg7/DpemeTLznA0IVTZaYwbsbXDN0bGQuc
 FLr2UInLQ6skp7vq2l6gtsqtxHl5GMNAE77zNHA/pVtbzvS2Ov9Fa8kfZxxMBsWXbAL5HIhrg
 0dzuTRQLW8SNnvICHh9BkcDJO6JDvRpCe1oJopuH7pjGHk0uhqBmTdYcwA5KWvGBI7NkB9Mmb
 T7DGJaAMe3MoDeoCLSmHE3rJIxL08bMCBP6jM3F35To0YAUbKUA4H4wd73Jsy3PL1yB0I7I9f
 gvrNbVwuuaFpQsAW7FMUUBJ2YoDJEf7JGZPb/S6mZESMpzXXQECWls1+02MdpqgNLoT8KeIsd
 Y5e1brh2B71PTCSyVIna5sUgnq1zb8G/oa+ylWbwnUJ6VmLcBuW8qGOI4tTnsO9HLB/NmVa0s
 j7BSGoHnDw/8xKYUrOhlTBmZ6RV0WgX5MN/cBy40m01MdDUufqnASMCKF35OZDILEltPeIlng
 dLl5ocpOR/rppvCmoPGQwQKJX9Fiju8uozUBl4OIb4oeJnMmvY+o1dKbdKrf3xmLvZ89W3aS6
 CqDUtFFaK0vWY2LTWvlW7ivdIL7m4S7yWOD2qFm5r3A5cHOBp+C9r2h6/BV7D0T4NTTGDGf4P
 njv0CWJQCWaJRGjCEaMWf5m2mnDjMwh9cE6pfYggV2FvqRrhDaz/3UXK+QletreybwqNjxO2U
 m7RWp5IsJFNKHmAlyOdy1URWy8B4l5fErKBqMgcQ89KXXQX/KUjTOBKMp16nzUPaS0ncH5W4e
 EdOaOb2ilslJXVUbo3UgWRkXxQ6AgH1haaIrUs3v0=
X-Spam-Note: CRM114 run bypassed due to message size (104282 bytes)
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ramips: split base-files into subtargets
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
some space.

In certain cases, keeping files in parent (=target) base-files was
more convenient, and thus no splitting was performed for those.

Note that this will increase overall code lines, but reduce code
per subtarget.

base-files ipk size reduction:
master (mt7621)   60958 B
split (mt7620)    46358 B (- 14.3 kiB)
split (mt7621)    48759 B (- 11.9 kiB)
split (mt76x8)    44948 B (- 15.6 kiB)
split (rt288x)    43508 B (- 17.0 kiB)
split (rt305x)    45616 B (- 15.0 kiB)
split (mt3883)    44176 B (- 16.4 kiB)

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This does the same as recently merged for the ath79 target, but
with much bigger effect on package sizes.

I build-tested this for all subtargets (before latest rebase),
but currently do not have hardware for on-device testing.
---
 .../ramips/base-files/etc/board.d/01_leds     | 481 -----------
 .../ramips/base-files/etc/board.d/02_network  | 752 ------------------
 .../mt7620/base-files/etc/board.d/01_leds     | 222 ++++++
 .../mt7620/base-files/etc/board.d/02_network  | 297 +++++++
 .../base-files/etc/board.d/03_gpio_switches   |  30 +
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |   0
 .../mt7620/base-files/lib/upgrade/platform.sh |  20 +
 .../mt7621/base-files/etc/board.d/01_leds     |  83 ++
 .../mt7621/base-files/etc/board.d/02_network  | 238 ++++++
 .../base-files/etc/board.d/03_gpio_switches   |  16 -
 .../base-files/lib/upgrade/platform.sh        |   4 -
 .../base-files/lib/upgrade/ubnt.sh            |   0
 .../base-files/sbin/fixup-mac-address         |   0
 .../mt76x8/base-files/etc/board.d/01_leds     | 138 ++++
 .../mt76x8/base-files/etc/board.d/02_network  | 191 +++++
 .../mt76x8/base-files/lib/upgrade/platform.sh |  24 +
 .../rt288x/base-files/etc/board.d/01_leds     |  34 +
 .../rt288x/base-files/etc/board.d/02_network  |  61 ++
 .../rt288x/base-files/lib/upgrade/platform.sh |  20 +
 .../rt305x/base-files/etc/board.d/01_leds     | 109 +++
 .../rt305x/base-files/etc/board.d/02_network  | 228 ++++++
 .../lib/preinit/04_handle_checksumming        |  13 -
 .../rt305x/base-files/lib/upgrade/platform.sh |  20 +
 .../rt3883/base-files/etc/board.d/01_leds     |  35 +
 .../rt3883/base-files/etc/board.d/02_network  | 100 +++
 .../lib/preinit/04_handle_checksumming        |  32 +
 .../rt3883/base-files/lib/upgrade/platform.sh |  20 +
 27 files changed, 1902 insertions(+), 1266 deletions(-)
 delete mode 100755 target/linux/ramips/base-files/etc/board.d/01_leds
 delete mode 100755 target/linux/ramips/base-files/etc/board.d/02_network
 create mode 100755 target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ramips/mt7620/base-files/etc/board.d/02_network
 create mode 100755 target/linux/ramips/mt7620/base-files/etc/board.d/03_gpio_switches
 rename target/linux/ramips/{ => mt7620}/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom (100%)
 create mode 100755 target/linux/ramips/mt7620/base-files/lib/upgrade/platform.sh
 create mode 100755 target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ramips/mt7621/base-files/etc/board.d/02_network
 rename target/linux/ramips/{ => mt7621}/base-files/etc/board.d/03_gpio_switches (55%)
 rename target/linux/ramips/{ => mt7621}/base-files/lib/upgrade/platform.sh (91%)
 rename target/linux/ramips/{ => mt7621}/base-files/lib/upgrade/ubnt.sh (100%)
 rename target/linux/ramips/{ => mt7621}/base-files/sbin/fixup-mac-address (100%)
 create mode 100755 target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
 create mode 100755 target/linux/ramips/mt76x8/base-files/lib/upgrade/platform.sh
 create mode 100755 target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ramips/rt288x/base-files/etc/board.d/02_network
 create mode 100755 target/linux/ramips/rt288x/base-files/lib/upgrade/platform.sh
 create mode 100755 target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ramips/rt305x/base-files/etc/board.d/02_network
 rename target/linux/ramips/{ => rt305x}/base-files/lib/preinit/04_handle_checksumming (65%)
 create mode 100755 target/linux/ramips/rt305x/base-files/lib/upgrade/platform.sh
 create mode 100755 target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
 create mode 100755 target/linux/ramips/rt3883/base-files/etc/board.d/02_network
 create mode 100644 target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming
 create mode 100755 target/linux/ramips/rt3883/base-files/lib/upgrade/platform.sh

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
deleted file mode 100755
index 662bf6b6cd..0000000000
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ /dev/null
@@ -1,481 +0,0 @@
-#!/bin/sh
-
-. /lib/functions/leds.sh
-. /lib/functions/uci-defaults.sh
-
-set_wifi_led() {
-	ucidef_set_led_netdev "wifi_led" "wifi" "${1}" "${2:-wlan0}"
-}
-
-
-board=$(board_name)
-boardname="${board##*,}"
-
-board_config_update
-
-led_wlan="$(get_dt_led wlan)"
-[ -n "$led_wlan" ] && ucidef_set_led_wlan "wifi_led" "wifi" "$led_wlan" "phy0tpt"
-
-case $board in
-7links,px-4885-4m|\
-7links,px-4885-8m)
-	set_wifi_led "px-4885:orange:wifi"
-	;;
-aigale,ai-br100)
-	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" "eth0.2"
-	set_wifi_led "$boardname:blue:wlan"
-	;;
-airlink101,ar670w|\
-airlink101,ar725w|\
-asiarf,awapn2403)
-	set_wifi_led "rt2800soc-phy0::radio"
-	;;
-airlive,air3gii|\
-aximcom,mr-102n|\
-edimax,3g-6200nl|\
-hilink,hlk-7628n|\
-netgear,wnce2001|\
-skylab,skw92a|\
-zbtlink,zbt-we2026)
-	set_wifi_led "$boardname:green:wlan"
-	;;
-alfa-network,ac1200rm)
-	set_wifi_led "$boardname:green:wlan2g" "wlan1"
-	;;
-alfa-network,awusfree1|\
-edimax,br-6478ac-v2|\
-edimax,ew-7478apc)
-	set_wifi_led "$boardname:blue:wlan"
-	;;
-alfa-network,tube-e4g)
-	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0"
-	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" "eth0"
-	;;
-allnet,all0256n-4m|\
-allnet,all0256n-8m)
-	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "all0256n:green:rssilow" "wlan0" "1" "40" "0" "6"
-	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "all0256n:green:rssimed" "wlan0" "30" "80" "-29" "5"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "all0256n:green:rssihigh" "wlan0" "70" "100" "-69" "8"
-	set_wifi_led "rt2800pci-phy0::radio"
-	;;
-alphanetworks,asl26555-8m|\
-alphanetworks,asl26555-16m)
-	ucidef_set_led_netdev "eth" "ETH" "asl26555:green:eth" "eth0"
-	set_wifi_led "asl26555:green:wlan"
-	;;
-asus,rp-n53)
-	ucidef_set_led_netdev "eth" "Network" "$boardname:white:back" "eth0"
-	set_wifi_led "$boardname:blue:wifi"
-	;;
-asus,rt-n12p)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0.1
-	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" eth0.2
-	set_wifi_led "$boardname:green:air"
-	;;
-asus,rt-n14u)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" eth0.1
-	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" eth0.2
-	set_wifi_led "$boardname:blue:air"
-	;;
-bdcom,wap2100-sk)
-	set_wifi_led "$boardname:green:wlan2g"
-	;;
-belkin,f9k1109v1)
-	set_usb_led "$boardname:green:usb1"
-	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:wps" "eth0"
-	;;
-alfa-network,w502u|\
-dlink,dir-300-b1|\
-dlink,dir-300-b7|\
-dlink,dir-320-b1|\
-dlink,dir-600-b1|\
-dlink,dir-610-a1|\
-dlink,dir-615-d|\
-dlink,dir-615-h1|\
-dlink,dir-620-a1|\
-engenius,esr-9753|\
-hilink,hlk-rm04|\
-nexx,wt1520-4m|\
-nexx,wt1520-8m|\
-ralink,v11st-fe|\
-skyline,sl-r7205|\
-tenda,w306r-v2|\
-zyxel,keenetic-start|\
-zyxel,keenetic|\
-zyxel,nbg-419n-v2)
-	set_wifi_led "rt2800pci-phy0::radio"
-	;;
-asus,rt-ac51u|\
-kingston,mlw221|\
-kingston,mlwg2|\
-rakwireless,rak633|\
-sanlinking,d240)
-	set_wifi_led "$boardname:blue:wifi"
-	;;
-belkin,f5d8235-v1)
-	set_wifi_led "$boardname:blue:wireless"
-	;;
-comfast,cf-wr800n)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:white:ethernet" eth0.1
-	set_wifi_led "$boardname:white:wifi"
-	;;
-cudy,wr1000)
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
-	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1" "switch0" "0x08"
-	ucidef_set_led_switch "lan2" "lan2" "$boardname:blue:lan2" "switch0" "0x04"
-	;;
-d-team,newifi-d2)
-	ucidef_set_led_switch "internet" "internet" "$boardname:amber:internet" "switch0" "0x10"
-	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:blue:wlan2g" "wlan0"
-	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:blue:wlan5g" "wlan1"
-	;;
-d-team,pbr-m1|\
-gehua,ghl-r-001)
-	ucidef_set_led_netdev "internet" "internet" "$boardname:blue:internet" "eth0.2"
-	;;
-dlink,dcs-930l-b1)
-	ucidef_set_led_netdev "wifi" "WiFi" "$boardname:blue:wps"
-	;;
-dlink,dir-620-d1|\
-dlink,dwr-116-a1|\
-head-weblink,hdrm200|\
-ohyeah,oy-0001|\
-planex,mzk-ex300np|\
-trendnet,tew-714tru|\
-zbtlink,zbt-wr8305rt|\
-zyxel,keenetic-omni|\
-zyxel,keenetic-omni-ii|\
-zyxel,keenetic-viva)
-	set_wifi_led "$boardname:green:wifi"
-	;;
-dlink,dir-860l-b1)
-	ucidef_set_led_netdev "wan" "wan" "$boardname:green:net" "eth0.2"
-	;;
-dlink,dwr-118-a1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1f"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x20"
-	set_wifi_led "$boardname:green:wlan2g" "wlan1"
-	;;
-dlink,dwr-118-a2)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	set_wifi_led "$boardname:green:wlan2g" "wlan1"
-	;;
-dlink,dwr-921-c1|\
-dlink,dwr-922-e2)
-	set_wifi_led "$boardname:green:wifi"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
-	ucidef_set_led_netdev "signalstrength" "signalstrength" "$boardname:green:sigstrength" "wwan0" "link"
-	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0" "tx rx"
-	;;
-dovado,tiny-ac|\
-fon,fonera-20n)
-	set_wifi_led "$boardname:orange:wifi"
-	;;
-edimax,3g-6200n|\
-edimax,br-6475nd|\
-planex,mzk-w300nh2)
-	set_wifi_led "$boardname:amber:wlan"
-	;;
-edimax,ew-7476rpc|\
-edimax,ew-7478ac)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan"  "switch0" "0x20"
-	;;
-elecom,wrh-300cr)
-	set_wifi_led "$boardname:green:wlan"
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:ethernet" "eth0"
-	;;
-engenius,esr600)
-	ucidef_set_led_netdev "wlan5g" "5.0GHz" "$boardname:blue:wlan5g" "wlan0"
-	ucidef_set_led_netdev "wlan2g" "2.4GHz" "$boardname:blue:wlan2g" "wlan1"
-	;;
-glinet,gl-mt300a|\
-glinet,gl-mt300n|\
-glinet,gl-mt750)
-	set_wifi_led "$boardname:wlan"
-	;;
-glinet,gl-mt300n-v2)
-	set_wifi_led "$boardname:red:wlan"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x1"
-	;;
-gnubee,gb-pc1|\
-gnubee,gb-pc2)
-	ucidef_set_led_switch "lan1" "lan1" "$boardname:green:lan1" "switch0" "0x01"
-	ucidef_set_led_switch "lan2" "lan2" "$boardname:green:lan2" "switch0" "0x10"
-	;;
-hauppauge,broadway)
-	set_wifi_led "$boardname:red:wps_active"
-	;;
-hiwifi,hc5661)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x01"
-	set_wifi_led "$boardname:blue:wlan2g"
-	;;
-hiwifi,hc5661a|\
-hiwifi,hc5761a|\
-xzwifi,creativebox-v1)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x10"
-	;;
-hiwifi,hc5761)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x01"
-	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
-	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
-	;;
-hiwifi,hc5861)
-	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x20"
-	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
-	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
-	;;
-hnet,c108)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
-	ucidef_set_led_netdev "modem" "modem" "$boardname:green:modem" "wwan0"
-	;;
-hootoo,ht-tm02)
-	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:lan" "eth0"
-	set_wifi_led "$boardname:blue:wlan"
-	;;
-huawei,hg255d)
-	set_wifi_led "$boardname:green:wlan"
-	ucidef_set_led_netdev "internet" "internet" "$boardname:green:internet" "eth0.2"
-	;;
-intenso,memory2move)
-	set_wifi_led "$boardname:blue:wifi"
-	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:wan" "eth0"
-	;;
-iodata,wn-ac1167gr|\
-iodata,wn-ac733gr3)
-	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$boardname:green:wlan5g" "phy0radio"
-	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$boardname:green:wlan2g" "phy1radio"
-	;;
-kimax,u25awf-h1)
-	set_wifi_led "u25awf:red:wifi"
-	ucidef_set_led_netdev "eth" "eth" "u25awf:green:lan" "eth0"
-	;;
-kimax,u35wf)
-	set_wifi_led "$boardname:blue:wifi"
-	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
-	;;
-lava,lr-25g001)
-	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "wlan1"
-	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:green:wlan5g" "wlan0"
-	;;
-lenovo,newifi-y1)
-	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:blue:wifi" "wlan1"
-	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi5g" "wlan0"
-	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x03"
-	;;
-lenovo,newifi-y1s)
-	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:yellow:wifi" "wlan1"
-	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi" "wlan0"
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:internet" "eth0.2" "tx rx"
-	;;
-mediatek,linkit-smart-7688)
-	ucidef_set_led_wlan "wifi" "wifi" "linkit-smart-7688:orange:wifi" "phy0tpt"
-	;;
-mikrotik,rbm11g)
-	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan0" "1" "100"
-	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green:rssi1" "wlan0" "20" "100"
-	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssi2" "wlan0" "40" "100"
-	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi3" "wlan0" "60" "100"
-	ucidef_set_led_rssi "rssiveryhigh" "RSSIVERYHIGH" "$boardname:green:rssi4" "wlan0" "80" "100"
-	;;
-mtc,wr1201)
-	ucidef_set_led_switch "eth_link" "LAN link" "$boardname:green:eth_link" "switch0" "0x0f"
-	;;
-netgear,ex2700|\
-netgear,wn3000rp-v3)
-	set_wifi_led "$boardname:green:router"
-	;;
-netgear,ex3700)
-	ucidef_set_led_netdev "wlan5g" "ROUTER (green)" "$boardname:green:router" "wlan0"
-	ucidef_set_led_netdev "wlan2g" "DEVICE (green)" "$boardname:green:device" "wlan1"
-	;;
-netgear,r6120)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
-	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "phy0tpt"
-	;;
-netgear,r6220|\
-netgear,r6260|\
-netgear,r6350|\
-netgear,r6850|\
-netgear,wndr3700-v5)
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
-	;;
-omnima,hpm)
-	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
-	set_wifi_led "$boardname:green:wifi"
-	;;
-omnima,miniembplug)
-	set_wifi_led "$boardname:red:wlan"
-	;;
-phicomm,psg1208)
-	set_wifi_led "$boardname:white:wlan2g"
-	;;
-planex,mzk-ex750np|\
-zbtlink,zbt-we826-e)
-	set_wifi_led "$boardname:red:wifi"
-	;;
-tama,w06)
-	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
-	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
-	;;
-tplink,archer-c2-v1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch1" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch1" "0x01"
-	set_wifi_led "$boardname:green:wlan"
-	;;
-tplink,archer-c20-v1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
-	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:blue:wlan2g" "wlan0"
-	;;
-tplink,archer-c20-v4)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:green:wlan2g" "wlan0"
-	;;
-tplink,archer-c20i)
-	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
-	ucidef_set_led_wlan "wlan" "wlan" "$boardname:blue:wlan" "phy0radio"
-	;;
-tplink,archer-c50-v1)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:green:wlan2g" wlan1
-	set_wifi_led "$boardname:green:wlan5g"
-	;;
-tplink,archer-c50-v3|\
-tplink,archer-c50-v4)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan2g" "phy0tpt"
-	ucidef_set_led_wlan "wlan5g" "wlan5g" "$boardname:green:wlan5g" "phy1tpt"
-	;;
-tplink,archer-mr200)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:white:lan" "eth0.1"
-	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "usb0"
-	set_wifi_led "$boardname:white:wlan"
-	;;
-tplink,re350-v1|\
-tplink,re650-v1)
-	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "$boardname:blue:wifi2G" "wlan0"
-	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "$boardname:blue:wifi5G" "wlan1"
-	ucidef_set_led_netdev "eth_act" "LAN act" "$boardname:green:eth_act" "eth0" "tx rx"
-	ucidef_set_led_switch "eth_link" "LAN link" "$boardname:green:eth_link" "switch0" "0x01"
-	;;
-tplink,tl-mr3020-v3)
-	set_wifi_led "$boardname:green:wlan"
-	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
-	;;
-tplink,tl-mr3420-v5|\
-tplink,tl-wr842n-v5)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	;;
-tplink,tl-wa801nd-v5)
-	ucidef_set_led_wlan "wlan" "wlan" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
-	;;
-tplink,tl-wr840n-v4)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	;;
-tplink,tl-wr841n-v13)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan1" "lan1" "$boardname:green:lan1" "switch0" "0x2"
-	ucidef_set_led_switch "lan2" "lan2" "$boardname:green:lan2" "switch0" "0x4"
-	ucidef_set_led_switch "lan3" "lan3" "$boardname:green:lan3" "switch0" "0x8"
-	ucidef_set_led_switch "lan4" "lan4" "$boardname:green:lan4" "switch0" "0x10"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	;;
-tplink,tl-wr841n-v14)
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	;;
-tplink,tl-wr902ac-v3)
-	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
-	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x10"
-	;;
-unielec,u7628-01-16m)
-	ucidef_set_led_switch "lan1" "lan1" "u7628-01:green:lan1" "switch0" "0x2"
-	ucidef_set_led_switch "lan2" "lan2" "u7628-01:green:lan2" "switch0" "0x4"
-	ucidef_set_led_switch "lan3" "lan3" "u7628-01:green:lan3" "switch0" "0x8"
-	ucidef_set_led_switch "lan4" "lan4" "u7628-01:green:lan4" "switch0" "0x10"
-	ucidef_set_led_switch "wan" "wan" "u7628-01:green:wan" "switch0" "0x01"
-	set_wifi_led "u7628-01:green:wlan"
-	;;
-vocore,vocore-8m|\
-vocore,vocore-16m)
-	ucidef_set_led_netdev "eth" "ETH" "vocore:orange:eth" "eth0"
-	;;
-wavlink,wl-wn570ha1)
-	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
-	ucidef_set_rssimon "wlan0" "200000" "1"
-	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low" "wlan0" "1" "49"
-	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med" "wlan0" "50" "84"
-	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-high" "wlan0" "85" "100"
-	set_wifi_led "$boardname:green:wifi"
-	;;
-wavlink,wl-wn575a3)
-	ucidef_set_rssimon "wlan1" "200000" "1"
-	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low" "wlan1" "1" "49"
-	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med" "wlan1" "50" "84"
-	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-high" "wlan1" "85" "100"
-	;;
-xiaomi,mir3g)
-	ucidef_set_led_switch "wan-amber"  "WAN (amber)"  "$boardname:amber:wan"  "switch0" "0x02" "0x08"
-	ucidef_set_led_switch "lan1-amber" "LAN1 (amber)" "$boardname:amber:lan1" "switch0" "0x08" "0x08"
-	ucidef_set_led_switch "lan2-amber" "LAN2 (amber)" "$boardname:amber:lan2" "switch0" "0x04" "0x08"
-	;;
-xiaomi,mir3p)
-	ucidef_set_led_switch "wan-amber"  "WAN (amber)"  "$boardname:amber:wan"  "switch0" "0x10" "0x08"
-	ucidef_set_led_switch "lan1-amber" "LAN1 (amber)" "$boardname:amber:lan1" "switch0" "0x02" "0x08"
-	ucidef_set_led_switch "lan2-amber" "LAN2 (amber)" "$boardname:amber:lan2" "switch0" "0x04" "0x08"
-	ucidef_set_led_switch "lan3-amber" "LAN3 (amber)" "$boardname:amber:lan3" "switch0" "0x08" "0x08"
-	;;
-youhua,wr1200js)
-	ucidef_set_led_switch "internet" "INTERNET" "$boardname:green:wan" "switch0" "0x01"
-	;;
-youku,yk1)
-	set_wifi_led "$boardname:blue:air"
-	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
-	;;
-zbtlink,zbt-ape522ii)
-	ucidef_set_led_netdev "wlan2g4" "wlan1-link" "$boardname:green:wlan2g4" "wlan1"
-	ucidef_set_led_netdev "sys1" "wlan1" "$boardname:green:sys1" "wlan1" "tx rx"
-	ucidef_set_led_netdev "sys2" "wlan0" "$boardname:green:sys2" "wlan0" "tx rx"
-	;;
-zbtlink,zbt-wa05)
-	set_wifi_led "$boardname:blue:air"
-	;;
-zbtlink,zbt-we826-16m|\
-zbtlink,zbt-we826-32m)
-	set_wifi_led "zbt-we826:green:wifi"
-	;;
-zbtlink,zbt-we1026-5g-16m)
-	ucidef_set_led_netdev "lan" "LAN" "we1026-5g:green:lan" "eth0"
-	set_wifi_led "we1026-5g:green:wifi"
-	;;
-zbtlink,zbt-we1226)
-	set_wifi_led "$boardname:green:wlan"
-	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x01"
-	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x02"
-	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x10"
-	;;
-zorlik,zl5900v2)
-	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
-	;;
-zyxel,keenetic-extra-ii)
-	set_wifi_led "$boardname:green:wifi"
-	ucidef_set_led_switch "internet" "internet" "$boardname:green:internet" "switch0" "0x01"
-	;;
-esac
-
-board_config_flush
-
-exit 0
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
deleted file mode 100755
index 480726a870..0000000000
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ /dev/null
@@ -1,752 +0,0 @@
-#!/bin/sh
-
-. /lib/functions.sh
-. /lib/functions/uci-defaults.sh
-. /lib/functions/system.sh
-
-ramips_setup_rt3x5x_vlans()
-{
-	if [ ! -x /sbin/swconfig ]; then
-		# legacy default
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		return
-	fi
-	local wanports=""
-	local lanports=""
-	for port in 5 4 3 2 1 0; do
-		if [ "$(swconfig dev rt305x port $port get disable)" = "1" ]; then
-			continue
-		fi
-		if [ "$(swconfig dev rt305x port $port get lan)" = "0" ]; then
-			wanports="$port:wan $wanports"
-		else
-			lanports="$port:lan $lanports"
-		fi
-	done
-	ucidef_add_switch "rt305x" $lanports $wanports "6t@eth0"
-}
-
-ramips_setup_interfaces()
-{
-	local board="$1"
-
-	case $board in
-	accton,wr6202|\
-	alfa-network,w502u|\
-	netcore,nw718|\
-	petatel,psr-680w|\
-	skyline,sl-r7205|\
-	upvel,ur-336un)
-		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		;;
-	adslr,g7|\
-	afoundry,ew1200|\
-	aigale,ai-br100|\
-	alfa-network,ac1200rm|\
-	asus,rt-n12p|\
-	buffalo,whr-g300n|\
-	d-team,pbr-m1|\
-	dlink,dir-300-b7|\
-	dlink,dir-320-b1|\
-	dlink,dir-610-a1|\
-	dlink,dir-810l|\
-	dlink,dwr-116-a1|\
-	dlink,dwr-921-c1|\
-	dlink,dwr-922-e2|\
-	edimax,3g-6200n|\
-	firefly,firewrt|\
-	hilink,hlk-rm04|\
-	hiwifi,hc5661a|\
-	hiwifi,hc5761a|\
-	hiwifi,hc5962|\
-	mediatek,ap-mt7621a-v60|\
-	mediatek,mt7621-eval-board|\
-	mediatek,mt7628an-eval-board|\
-	mercury,mac1200r-v2|\
-	mqmaker,witi|\
-	mtc,wr1201|\
-	netis,wf-2881|\
-	nixcore,x1-16m|\
-	nixcore,x1-8m|\
-	ohyeah,oy-0001|\
-	phicomm,k2p|\
-	phicomm,psg1208|\
-	phicomm,psg1218a|\
-	planex,db-wrt01|\
-	planex,mzk-750dhp|\
-	planex,mzk-w300nh2|\
-	planex,vr500|\
-	samknows,whitebox-v8|\
-	sanlinking,d240|\
-	storylink,sap-g3200u3|\
-	telco-electronics,x1|\
-	totolink,a7000r|\
-	totolink,lr1200|\
-	unielec,u7621-06-16m|\
-	unielec,u7621-06-64m|\
-	wavlink,wl-wn570ha1|\
-	wavlink,wl-wn575a3|\
-	xiaomi,miwifi-mini|\
-	xiaomi,miwifi-nano|\
-	xiaoyu,xy-c5|\
-	xzwifi,creativebox-v1|\
-	youku,yk-l2|\
-	youku,yk1|\
-	zbtlink,zbt-ape522ii|\
-	zbtlink,zbt-we1326|\
-	zbtlink,zbt-we3526|\
-	zbtlink,zbt-we826-16m|\
-	zbtlink,zbt-we826-32m|\
-	zbtlink,zbt-we826-e|\
-	zbtlink,zbt-wg2626|\
-	zbtlink,zbt-wg3526-16m|\
-	zbtlink,zbt-wg3526-32m|\
-	zbtlink,zbt-wr8305rt|\
-	zyxel,keenetic|\
-	zyxel,keenetic-omni)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
-		;;
-	airlink101,ar670w|\
-	airlink101,ar725w|\
-	asus,rt-ac51u|\
-	rakwireless,rak633)
-		ucidef_add_switch "switch0" \
-			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
-		;;
-	alfa-network,awusfree1|\
-	alfa-network,tube-e4g|\
-	buffalo,wli-tx4-ag300n|\
-	buffalo,wmr-300|\
-	dlink,dap-1522-a1|\
-	dlink,dch-m225|\
-	d-team,pbr-d1|\
-	elecom,wrh-300cr|\
-	huawei,d105|\
-	kimax,u25awf-h1|\
-	loewe,wmdr-143n|\
-	netgear,ex2700|\
-	netgear,ex3700|\
-	netgear,wn3000rp-v3|\
-	omnima,hpm|\
-	planex,cs-qr10|\
-	planex,mzk-ex300np|\
-	planex,mzk-ex750np|\
-	ravpower,wd03|\
-	sercomm,na930|\
-	tama,w06|\
-	tplink,tl-mr3020-v3|\
-	tplink,tl-wr802n-v4)
-		ucidef_set_interface_lan "eth0"
-		;;
-	allnet,all0256n-4m|\
-	allnet,all0256n-8m|\
-	allnet,all5002|\
-	allnet,all5003|\
-	dlink,dcs-930l-b1|\
-	dlink,dcs-930|\
-	edimax,ew-7476rpc|\
-	edimax,ew-7478ac|\
-	hame,mpr-a2|\
-	hauppauge,broadway|\
-	hootoo,ht-tm02|\
-	intenso,memory2move|\
-	kimax,u35wf|\
-	mediatek,linkit-smart-7688|\
-	microduino,microwrt|\
-	mikrotik,rbm11g|\
-	netgear,wnce2001|\
-	onion,omega2p|\
-	onion,omega2|\
-	tenda,3g150b|\
-	tenda,3g300m|\
-	tenda,w150m|\
-	thunder,timecloud|\
-	tplink,tl-wa801nd-v5|\
-	unbranded,a5-v11|\
-	wansview,ncs601w|\
-	widora,neo-16m|\
-	widora,neo-32m|\
-	yukai,bocco|\
-	zbtlink,zbt-cpe102|\
-	zorlik,zl5900v2|\
-	zte,q7)
-		ucidef_add_switch "switch0"
-		ucidef_add_switch_attr "switch0" "enable" "false"
-		ucidef_set_interface_lan "eth0"
-		;;
-	alphanetworks,asl26555-8m|\
-	alphanetworks,asl26555-16m|\
-	asus,rp-n53)
-		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
-		;;
-	argus,atp-52b|\
-	asiarf,awm002-evb-4m|\
-	asiarf,awm002-evb-8m|\
-	asus,rt-ac57u|\
-	asus,rt-n14u|\
-	bdcom,wap2100-sk|\
-	dlink,dir-645|\
-	glinet,gl-mt300a|\
-	glinet,gl-mt300n|\
-	glinet,gl-mt750|\
-	hilink,hlk-7628n|\
-	hiwifi,hc5661|\
-	hiwifi,hc5861b|\
-	jcg,jhr-n805r|\
-	jcg,jhr-n825r|\
-	jcg,jhr-n926r|\
-	mikrotik,rb750gr3|\
-	mikrotik,rbm33g|\
-	planex,mzk-wdpr|\
-	skylab,skw92a|\
-	tplink,archer-c20-v4|\
-	tplink,archer-c20i|\
-	tplink,archer-c50-v3|\
-	tplink,archer-c50-v4|\
-	tplink,tl-mr3420-v5|\
-	tplink,tl-wr840n-v4|\
-	tplink,tl-wr840n-v5|\
-	tplink,tl-wr841n-v13|\
-	tplink,tl-wr841n-v14|\
-	tplink,tl-wr842n-v5|\
-	unielec,u7628-01-16m|\
-	ubiquiti,edgerouterx|\
-	ubiquiti,edgerouterx-sfp|\
-	upvel,ur-326n4g|\
-	wrtnode,wrtnode|\
-	wrtnode,wrtnode2p|\
-	wrtnode,wrtnode2r|\
-	youhua,wr1200js|\
-	zbtlink,zbt-wa05|\
-	zyxel,keenetic-extra-ii)
-		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
-		;;
-	asiarf,ap7621-001)
-		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
-		;;
-	asiarf,ap7621-nv1)
-		ucidef_add_switch "switch0" "0:wan" "2:lan" "3:lan" "6@eth0"
-		;;
-	asiarf,awapn2403)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:wan" "6@eth0"
-		;;
-	asus,rt-ac65p|\
-	asus,rt-ac85p|\
-	dlink,dir-860l-b1|\
-	elecom,wrc-1167ghbk2-s|\
-	elecom,wrc-1900gst|\
-	elecom,wrc-2533gst|\
-	huawei,hg255d|\
-	iodata,wn-ax1167gr|\
-	iodata,wn-gx300gr|\
-	iodata,wnpr2600g|\
-	iptime,a604m)
-		ucidef_add_switch "switch0" \
-			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
-		;;
-	asus,rt-n15|\
-	belkin,f9k1109v1|\
-	sitecom,wl-351)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5@eth0"
-		;;
-	asus,rt-n56u)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "8@eth0"
-		;;
-	asus,wl-330n|\
-	easyacc,wizard-8800|\
-	kingston,mlwg2)
-		ucidef_set_interface_lan "eth0.1"
-		;;
-	aximcom,mr-102n|\
-	kingston,mlw221)
-		ucidef_set_interface_lan "eth0.2"
-		;;
-	belkin,f5d8235-v1|\
-	belkin,f5d8235-v2|\
-	buffalo,wzr-agl300nh|\
-	ralink,v11st-fe|\
-	trendnet,tew-714tru)
-		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
-		;;
-	buffalo,wcr-1166ds)
-		ucidef_add_switch "switch0" \
-			"3:lan" "4:wan" "6@eth0"
-		;;
-	buffalo,whr-300hp2|\
-	buffalo,whr-600d|\
-	buffalo,wsr-1166dhp|\
-	buffalo,wsr-600dhp)
-		ucidef_add_switch "switch0" \
-			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan:5" "6@eth0"
-		;;
-	buffalo,whr-1166d)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "5:wan" "6@eth0"
-		;;
-	comfast,cf-wr800n|\
-	hnet,c108|\
-	tplink,tl-wr902ac-v3|\
-	trendnet,tew-638apb-v2)
-		ucidef_add_switch "switch0" \
-			"4:lan" "6@eth0"
-		;;
-	cudy,wr1000|\
-	xiaomi,mir3g-v2)
-		ucidef_add_switch "switch0" \
-			"2:lan:2" "3:lan:1" "4:wan" "6@eth0"
-		;;
-	dlink,dir-510l|\
-	glinet,vixmini|\
-	netgear,ex6150|\
-	tplink,re350-v1|\
-	tplink,re650-v1)
-		ucidef_add_switch "switch0" \
-			"0:lan" "6@eth0"
-		;;
-	dlink,dir-615-h1|\
-	d-team,newifi-d2|\
-	wevo,11acnas|\
-	wevo,w2914ns-v2|\
-	zbtlink,zbt-we2026)
-		ucidef_add_switch "switch0" \
-			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
-		;;
-	dlink,dwr-118-a1)
-		ucidef_add_switch "switch0" \
-			"1:lan:2" "2:lan:3" "3:lan:1" "4:lan:0" "5:wan" "6@eth0"
-		;;
-	dlink,dwr-118-a2)
-		ucidef_add_switch "switch0" \
-			"1:lan:2" "2:lan:1" "3:lan:3" "4:lan" "0:wan" "6@eth0"
-		;;
-	duzun,dm06)
-		ucidef_add_switch "switch0" \
-			"1:lan" "0:wan" "6@eth0"
-		;;
-	edimax,br-6475nd)
-		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "9@eth0"
-		;;
-	edimax,br-6478ac-v2|\
-	tplink,archer-c2-v1)
-		ucidef_add_switch "switch1" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
-		;;
-	engenius,esr600)
-		ucidef_add_switch "switch0" \
-			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5:wan" "0@eth0"
-		;;
-	fon,fon2601)
-		ucidef_add_switch "switch0" \
-			"0:lan" "4:wan" "6@eth0"
-		;;
-	edimax,rg21s)
-		ucidef_add_switch "switch0" \
-			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
-		;;
-	gehua,ghl-r-001)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "4:wan" "6@eth0"
-		;;
-	glinet,gl-mt300n-v2)
-		ucidef_add_switch "switch0" \
-			"1:lan" "0:wan" "6@eth0"
-		;;
-	gnubee,gb-pc1|\
-	gnubee,gb-pc2)
-		ucidef_add_switch "switch0" \
-			"0:lan" "4:lan" "6@eth0"
-		;;
-	head-weblink,hdrm200)
-		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "5:lan" "0:wan" "6@eth0"
-		;;
-	hiwifi,hc5761)
-		ucidef_add_switch "switch0" \
-			"1:lan" "4:lan" "0:wan" "6@eth0"
-		;;
-	hiwifi,hc5861)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "5:wan" "6@eth0"
-		;;
-	iodata,wn-ac1167gr|\
-	iodata,wn-ac733gr3)
-		ucidef_add_switch "switch1" \
-			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
-		;;
-	iptime,a3)
-		ucidef_add_switch "switch0" \
-			"2:lan:2" "3:lan:1" "0:wan" "6@eth0"
-		;;
-	lava,lr-25g001|\
-	sitecom,wlr-6000|\
-	trendnet,tew-691gr|\
-	trendnet,tew-692gr)
-		ucidef_add_switch "switch0" \
-			"1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "0@eth0"
-		;;
-	lenovo,newifi-d1)
-		ucidef_add_switch "switch0" \
-		"1:lan:2" "2:lan:1" "4:wan" "6@eth0"
-		;;
-	lenovo,newifi-y1|\
-	zbtlink,zbt-we1226)
-		ucidef_add_switch "switch0" \
-			"0:lan:2" "1:lan:1" "4:wan" "6@eth0"
-		;;
-	lenovo,newifi-y1s)
-		ucidef_add_switch "switch0" \
-			"1:lan:4" "2:lan:3" "4:lan:2" "5:lan:1" "0:wan" "6@eth0"
-		;;
-	linksys,e1700|\
-	ralink,mt7620a-mt7530-evb)
-		ucidef_add_switch "switch1" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
-		;;
-	linksys,re6500)
-		ucidef_add_switch "switch0" \
-			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "6@eth0"
-		;;
-	netgear,r6120|\
-	netgear,r6220|\
-	netgear,r6260|\
-	netgear,r6350|\
-	netgear,r6850|\
-	netgear,wndr3700-v5)
-		ucidef_add_switch "switch0" \
-			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
-		;;
-	nexx,wt1520-4m|\
-	nexx,wt1520-8m|\
-	vonets,var11n-300)
-		ucidef_add_switch "switch0" \
-			"0:lan" "4:wan" "6@eth0"
-		;;
-	nexx,wt3020-4m|\
-	nexx,wt3020-8m)
-		ucidef_add_switch "switch0" \
-			"4:lan" "0:wan" "6@eth0"
-		;;
-	phicomm,k2g)
-		ucidef_add_switch "switch0" \
-			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5:wan" "6@eth0"
-		;;
-	phicomm,psg1218b)
-		ucidef_add_switch "switch0" \
-			"0:lan:3" "1:lan:2" "2:lan:1" "3:wan" "6@eth0"
-		;;
-	planex,mzk-dp150n|\
-	vocore,vocore-8m|\
-	vocore,vocore-16m)
-		ucidef_add_switch "switch0" \
-			"0:lan" "4:lan" "6t@eth0"
-		;;
-	samsung,cy-swr1100)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "9@eth0"
-		;;
-	sparklan,wcr-150gn|\
-	zbtlink,zbt-we1026-5g-16m)
-		ucidef_add_switch "switch0" \
-			"0:lan" "6t@eth0"
-		;;
-	tplink,archer-c20-v1|\
-	tplink,archer-c50-v1)
-		ucidef_add_switch "switch0" \
-			"1:lan:3" "2:lan:4" "3:lan:1" "4:lan:2" "0:wan" "6@eth0"
-		;;
-	tplink,archer-mr200)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "6t@eth0"
-		ucidef_set_interface_wan "usb0"
-		;;
-	vocore,vocore2|\
-	vocore,vocore2-lite)
-		ucidef_add_switch "switch0" \
-			"0:lan" "2:lan" "6t@eth0"
-		;;
-	wiznet,wizfi630a)
-		ucidef_add_switch "switch0" \
-			"0:lan" "1:lan" "2:wan" "6@eth0"
-		;;
-	wiznet,wizfi630s)
-		ucidef_add_switch "switch0" \
-			"0:wan" "3:lan" "4:lan" "6@eth0"
-		;;
-	xiaomi,mir3g)
-		ucidef_add_switch "switch0" \
-			"2:lan:2" "3:lan:1" "1:wan" "6t@eth0"
-		;;
-	xiaomi,mir3p)
-		ucidef_add_switch "switch0" \
-			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
-		;;
-	xiaomi,mir4a-100m)
-		ucidef_add_switch "switch0" \
-			"4:lan:1" "2:lan:2" "0:wan" "6@eth0"
-		;;
-	zyxel,keenetic-omni-ii)
-		ucidef_add_switch "switch0" \
-			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6@eth0"
-		;;
-	zyxel,keenetic-start)
-		ucidef_add_switch "switch0" \
-			"0:lan:3" "1:lan:2" "2:lan:1" "3:lan:0" "4:wan" "6@eth0"
-		;;
-	zyxel,keenetic-viva)
-		ucidef_add_switch "switch1" \
-			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "7t@eth0"
-		;;
-	*)
-		RT3X5X=$(grep -E "(RT3.5|RT5350)" /proc/cpuinfo)
-		if [ -n "${RT3X5X}" ]; then
-			ramips_setup_rt3x5x_vlans
-		else
-			ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
-		fi
-		;;
-	esac
-}
-
-ramips_setup_macs()
-{
-	local board="$1"
-	local lan_mac=""
-	local wan_mac=""
-
-	case $board in
-	8devices,carambola|\
-	alfa-network,w502u|\
-	arcwireless,freestation5|\
-	lenovo,newifi-y1|\
-	lenovo,newifi-y1s|\
-	netgear,wnce2001|\
-	ohyeah,oy-0001|\
-	phicomm,k2g|\
-	skylab,skw92a|\
-	totolink,lr1200)
-		wan_mac=$(mtd_get_mac_binary factory 0x2e)
-		;;
-	dlink,dir-300-b7|\
-	dlink,dir-320-b1|\
-	dlink,dir-620-a1|\
-	engenius,esr-9753|\
-	hame,mpr-a1|\
-	hauppauge,broadway|\
-	huawei,d105|\
-	hilink,hlk-7628n|\
-	hilink,hlk-rm04|\
-	nexaira,bc2|\
-	petatel,psr-680w|\
-	skyline,sl-r7205)
-		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
-		wan_mac=$(macaddr_add "$lan_mac" 1)
-		;;
-	asus,rt-ac57u|\
-	d-team,newifi-d2|\
-	d-team,pbr-m1|\
-	elecom,wrc-1167ghbk2-s|\
-	elecom,wrc-1900gst|\
-	elecom,wrc-2533gst|\
-	lenovo,newifi-d1|\
-	phicomm,k2p|\
-	planex,vr500|\
-	samknows,whitebox-v8|\
-	youhua,wr1200js|\
-	youku,yk-l2|\
-	zbtlink,zbt-we3526)
-		wan_mac=$(mtd_get_mac_binary factory 0xe006)
-		;;
-	asus,rt-ac65p|\
-	asus,rt-ac85p)
-		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
-		;;
-	asus,rt-n56u)
-		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
-		wan_mac=$(mtd_get_mac_binary factory 0x8004)
-		;;
-	belkin,f9k1109v1)
-		wan_mac=$(mtd_get_mac_ascii uboot-env HW_WAN_MAC)
-		lan_mac=$(mtd_get_mac_ascii uboot-env HW_LAN_MAC)
-		label_mac=$wan_mac
-		;;
-	buffalo,wcr-1166ds|\
-	buffalo,wsr-1166dhp)
-		local index="$(find_mtd_index "board_data")"
-		wan_mac="$(grep -m1 mac= "/dev/mtd${index}" | cut -d= -f2)"
-		lan_mac=$wan_mac
-		;;
-	buffalo,whr-1166d|\
-	buffalo,whr-300hp2|\
-	buffalo,whr-600d|\
-	buffalo,whr-g300n|\
-	buffalo,wsr-600dhp|\
-	glinet,gl-mt300n-v2|\
-	xiaomi,miwifi-mini|\
-	zyxel,keenetic-start)
-		# This empty case has to be kept for devices without any MAC address adjustments
-		;;
-	cudy,wr1000)
-		wan_mac=$(mtd_get_mac_binary factory 0x2e)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
-		;;
-	dlink,dch-m225|\
-	samsung,cy-swr1100)
-		lan_mac=$(mtd_get_mac_ascii factory lanmac)
-		;;
-	dlink,dir-510l|\
-	dlink,dwr-116-a1|\
-	dlink,dwr-118-a1|\
-	dlink,dwr-118-a2|\
-	dlink,dwr-921-c1|\
-	dlink,dwr-922-e2|\
-	lava,lr-25g001)
-		wan_mac=$(jboot_config_read -m -i $(find_mtd_part "config") -o 0xE000)
-		lan_mac=$(macaddr_add "$wan_mac" 1)
-		label_mac=$wan_mac
-		;;
-	dlink,dir-615-d|\
-	dlink,dir-615-h1|\
-	glinet,gl-mt300a|\
-	glinet,gl-mt300n|\
-	glinet,gl-mt750|\
-	zbtlink,zbt-wg3526-16m|\
-	zbtlink,zbt-wg3526-32m)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
-		;;
-	dlink,dir-645)
-		lan_mac=$(mtd_get_mac_ascii nvram lanmac)
-		wan_mac=$(mtd_get_mac_ascii nvram wanmac)
-		;;
-	dlink,dir-860l-b1)
-		lan_mac=$(mtd_get_mac_ascii factory lanmac)
-		wan_mac=$(mtd_get_mac_ascii factory wanmac)
-		label_mac=$(cat /sys/class/ieee80211/phy1/macaddress)
-		;;
-	dovado,tiny-ac)
-		lan_mac=$(mtd_get_mac_ascii u-boot-env LAN_MAC_ADDR)
-		wan_mac=$(mtd_get_mac_ascii u-boot-env WAN_MAC_ADDR)
-		;;
-	edimax,br-6475nd)
-		wan_mac=$(mtd_get_mac_binary devdata 0x7)
-		;;
-	edimax,br-6478ac-v2|\
-	netgear,r6260|\
-	netgear,r6350|\
-	netgear,r6850)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
-		;;
-	edimax,rg21s|\
-	engenius,esr600)
-		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
-		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
-		;;
-	hiwifi,hc5661|\
-	hiwifi,hc5661a|\
-	hiwifi,hc5761|\
-	hiwifi,hc5761a|\
-	hiwifi,hc5861|\
-	hiwifi,hc5861b|\
-	hiwifi,hc5962)
-		lan_mac=$(mtd_get_mac_ascii bdinfo "Vfac_mac ")
-		label_mac=$lan_mac
-		[ -n "$lan_mac" ] || lan_mac=$(cat /sys/class/net/eth0/address)
-		wan_mac=$(macaddr_add "$lan_mac" 1)
-		;;
-	iodata,wn-ac1167gr|\
-	iodata,wn-ac733gr3)
-		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
-		;;
-	iodata,wn-ax1167gr|\
-	iodata,wn-gx300gr|\
-	trendnet,tew-692gr)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
-		;;
-	iodata,wnpr2600g)
-		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
-		label_mac=$wan_mac
-		;;
-	iptime,a3|\
-	iptime,a604m)
-		wan_mac=$(mtd_get_mac_binary u-boot 0x1fc40)
-		;;
-	linksys,e1700)
-		wan_mac=$(mtd_get_mac_ascii config WAN_MAC_ADDR)
-		;;
-	mediatek,linkit-smart-7688|\
-	onion,omega2|\
-	onion,omega2p)
-		wan_mac=$(mtd_get_mac_binary factory 0x4)
-		lan_mac=$(mtd_get_mac_binary factory 0x2e)
-		;;
-	mercury,mac1200r-v2)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory_info 0xd)" 1)
-		;;
-	poray,m3|\
-	poray,m4-4m|\
-	poray,m4-8m|\
-	poray,x5|\
-	poray,x8)
-		lan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" -2)
-		;;
-	sitecom,wlr-6000)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x8004)" 2)
-		;;
-	sparklan,wcr-150gn|\
-	wiznet,wizfi630a|\
-	zyxel,keenetic-omni|\
-	zyxel,keenetic-omni-ii|\
-	zyxel,keenetic-viva)
-		wan_mac=$(mtd_get_mac_binary factory 0x28)
-		;;
-	tenda,w306r-v2)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 5)
-		;;
-	trendnet,tew-691gr)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 3)
-		;;
-	vocore,vocore2|\
-	vocore,vocore2-lite)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
-		;;
-	xiaomi,mir3g)
-		lan_mac=$(mtd_get_mac_binary factory 0xe006)
-		;;
-	xiaomi,mir3g-v2)
-		wan_mac=$(mtd_get_mac_binary factory 0xe006)
-		label_mac=$wan_mac
-		;;
-	xiaomi,mir3p)
-		lan_mac=$(mtd_get_mac_binary factory 0xe006)
-		label_mac=$lan_mac
-		;;
-	zbtlink,zbt-we1326)
-		wan_mac=$(mtd_get_mac_binary factory 0xe006)
-		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
-		;;
-	*)
-		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
-		;;
-	esac
-
-	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
-	[ -n "$wan_mac" ] && ucidef_set_interface_macaddr "wan" $wan_mac
-	[ -n "$label_mac" ] && ucidef_set_label_macaddr $label_mac
-}
-
-board_config_update
-board=$(board_name)
-ramips_setup_interfaces $board
-ramips_setup_macs $board
-board_config_flush
-
-exit 0
diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..45d08043d7
--- /dev/null
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/01_leds
@@ -0,0 +1,222 @@
+#!/bin/sh
+
+. /lib/functions/leds.sh
+. /lib/functions/uci-defaults.sh
+
+set_wifi_led() {
+	ucidef_set_led_netdev "wifi_led" "wifi" "${1}" "${2:-wlan0}"
+}
+
+
+board=$(board_name)
+boardname="${board##*,}"
+
+board_config_update
+
+led_wlan="$(get_dt_led wlan)"
+[ -n "$led_wlan" ] && ucidef_set_led_wlan "wifi_led" "wifi" "$led_wlan" "phy0tpt"
+
+case $board in
+aigale,ai-br100)
+	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" "eth0.2"
+	set_wifi_led "$boardname:blue:wlan"
+	;;
+alfa-network,ac1200rm)
+	set_wifi_led "$boardname:green:wlan2g" "wlan1"
+	;;
+alfa-network,tube-e4g)
+	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0"
+	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" "eth0"
+	;;
+asus,rp-n53)
+	ucidef_set_led_netdev "eth" "Network" "$boardname:white:back" "eth0"
+	set_wifi_led "$boardname:blue:wifi"
+	;;
+asus,rt-n12p)
+	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0.1
+	ucidef_set_led_netdev "wan" "wan" "$boardname:green:wan" eth0.2
+	set_wifi_led "$boardname:green:air"
+	;;
+asus,rt-n14u)
+	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:lan" eth0.1
+	ucidef_set_led_netdev "wan" "wan" "$boardname:blue:wan" eth0.2
+	set_wifi_led "$boardname:blue:air"
+	;;
+asus,rt-ac51u|\
+kingston,mlw221|\
+kingston,mlwg2|\
+sanlinking,d240)
+	set_wifi_led "$boardname:blue:wifi"
+	;;
+bdcom,wap2100-sk)
+	set_wifi_led "$boardname:green:wlan2g"
+	;;
+comfast,cf-wr800n)
+	ucidef_set_led_netdev "lan" "lan" "$boardname:white:ethernet" eth0.1
+	set_wifi_led "$boardname:white:wifi"
+	;;
+dlink,dwr-116-a1|\
+head-weblink,hdrm200|\
+ohyeah,oy-0001|\
+planex,mzk-ex300np|\
+zbtlink,zbt-wr8305rt|\
+zyxel,keenetic-omni|\
+zyxel,keenetic-omni-ii|\
+zyxel,keenetic-viva)
+	set_wifi_led "$boardname:green:wifi"
+	;;
+dlink,dwr-118-a1)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1f"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x20"
+	set_wifi_led "$boardname:green:wlan2g" "wlan1"
+	;;
+dlink,dwr-118-a2)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	set_wifi_led "$boardname:green:wlan2g" "wlan1"
+	;;
+dlink,dwr-921-c1|\
+dlink,dwr-922-e2)
+	set_wifi_led "$boardname:green:wifi"
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
+	ucidef_set_led_netdev "signalstrength" "signalstrength" "$boardname:green:sigstrength" "wwan0" "link"
+	ucidef_set_led_netdev "4g" "4g" "$boardname:green:4g" "wwan0" "tx rx"
+	;;
+dovado,tiny-ac)
+	set_wifi_led "$boardname:orange:wifi"
+	;;
+edimax,br-6478ac-v2|\
+edimax,ew-7478apc)
+	set_wifi_led "$boardname:blue:wlan"
+	;;
+edimax,ew-7476rpc|\
+edimax,ew-7478ac)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan"  "switch0" "0x20"
+	;;
+elecom,wrh-300cr)
+	set_wifi_led "$boardname:green:wlan"
+	ucidef_set_led_netdev "lan" "lan" "$boardname:green:ethernet" "eth0"
+	;;
+engenius,esr600)
+	ucidef_set_led_netdev "wlan5g" "5.0GHz" "$boardname:blue:wlan5g" "wlan0"
+	ucidef_set_led_netdev "wlan2g" "2.4GHz" "$boardname:blue:wlan2g" "wlan1"
+	;;
+glinet,gl-mt300a|\
+glinet,gl-mt300n|\
+glinet,gl-mt750)
+	set_wifi_led "$boardname:wlan"
+	;;
+hiwifi,hc5661)
+	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x01"
+	set_wifi_led "$boardname:blue:wlan2g"
+	;;
+hiwifi,hc5761)
+	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x01"
+	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
+	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
+	;;
+hiwifi,hc5861)
+	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x20"
+	ucidef_set_led_netdev "wifi5g" "wifi5g" "$boardname:blue:wlan5g" "wlan0"
+	ucidef_set_led_netdev "wifi2g" "wifi2g" "$boardname:blue:wlan2g" "wlan1"
+	;;
+hnet,c108)
+	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
+	ucidef_set_led_netdev "modem" "modem" "$boardname:green:modem" "wwan0"
+	;;
+iodata,wn-ac1167gr|\
+iodata,wn-ac733gr3)
+	ucidef_set_led_wlan "wlan5g" "WLAN5G" "$boardname:green:wlan5g" "phy0radio"
+	ucidef_set_led_wlan "wlan2g" "WLAN2G" "$boardname:green:wlan2g" "phy1radio"
+	;;
+kimax,u25awf-h1)
+	set_wifi_led "u25awf:red:wifi"
+	ucidef_set_led_netdev "eth" "eth" "u25awf:green:lan" "eth0"
+	;;
+kimax,u35wf)
+	set_wifi_led "$boardname:blue:wifi"
+	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
+	;;
+lava,lr-25g001)
+	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "wlan1"
+	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:green:wlan5g" "wlan0"
+	;;
+lenovo,newifi-y1)
+	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:blue:wifi" "wlan1"
+	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi5g" "wlan0"
+	ucidef_set_led_switch "lan" "LAN" "$boardname:blue:lan" "switch0" "0x03"
+	;;
+lenovo,newifi-y1s)
+	ucidef_set_led_netdev "wifi" "WIFI" "$boardname:yellow:wifi" "wlan1"
+	ucidef_set_led_netdev "wifi5g" "WIFI5G" "$boardname:blue:wifi" "wlan0"
+	ucidef_set_led_netdev "wan" "WAN" "$boardname:blue:internet" "eth0.2" "tx rx"
+	;;
+netgear,ex2700|\
+netgear,wn3000rp-v3)
+	set_wifi_led "$boardname:green:router"
+	;;
+netgear,ex3700)
+	ucidef_set_led_netdev "wlan5g" "ROUTER (green)" "$boardname:green:router" "wlan0"
+	ucidef_set_led_netdev "wlan2g" "DEVICE (green)" "$boardname:green:device" "wlan1"
+	;;
+phicomm,psg1208)
+	set_wifi_led "$boardname:white:wlan2g"
+	;;
+planex,mzk-ex750np|\
+zbtlink,zbt-we826-e)
+	set_wifi_led "$boardname:red:wifi"
+	;;
+tplink,archer-c2-v1)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch1" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch1" "0x01"
+	set_wifi_led "$boardname:green:wlan"
+	;;
+tplink,archer-c20-v1)
+	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
+	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:blue:wlan2g" "wlan0"
+	;;
+tplink,archer-c20i)
+	ucidef_set_led_switch "lan" "lan" "$boardname:blue:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x01"
+	ucidef_set_led_wlan "wlan" "wlan" "$boardname:blue:wlan" "phy0radio"
+	;;
+tplink,archer-c50-v1)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:green:wlan2g" wlan1
+	set_wifi_led "$boardname:green:wlan5g"
+	;;
+tplink,archer-mr200)
+	ucidef_set_led_netdev "lan" "lan" "$boardname:white:lan" "eth0.1"
+	ucidef_set_led_netdev "wan" "wan" "$boardname:white:wan" "usb0"
+	set_wifi_led "$boardname:white:wlan"
+	;;
+youku,yk1)
+	set_wifi_led "$boardname:blue:air"
+	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
+	;;
+zbtlink,zbt-ape522ii)
+	ucidef_set_led_netdev "wlan2g4" "wlan1-link" "$boardname:green:wlan2g4" "wlan1"
+	ucidef_set_led_netdev "sys1" "wlan1" "$boardname:green:sys1" "wlan1" "tx rx"
+	ucidef_set_led_netdev "sys2" "wlan0" "$boardname:green:sys2" "wlan0" "tx rx"
+	;;
+zbtlink,zbt-wa05)
+	set_wifi_led "$boardname:blue:air"
+	;;
+zbtlink,zbt-we826-16m|\
+zbtlink,zbt-we826-32m)
+	set_wifi_led "zbt-we826:green:wifi"
+	;;
+zbtlink,zbt-we1026-5g-16m)
+	ucidef_set_led_netdev "lan" "LAN" "we1026-5g:green:lan" "eth0"
+	set_wifi_led "we1026-5g:green:wifi"
+	;;
+zbtlink,zbt-we2026)
+	set_wifi_led "$boardname:green:wlan"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/02_network b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..db1f4de2a7
--- /dev/null
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/02_network
@@ -0,0 +1,297 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+ramips_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	aigale,ai-br100|\
+	alfa-network,ac1200rm|\
+	asus,rt-n12p|\
+	dlink,dir-810l|\
+	dlink,dwr-116-a1|\
+	dlink,dwr-921-c1|\
+	dlink,dwr-922-e2|\
+	ohyeah,oy-0001|\
+	phicomm,psg1208|\
+	phicomm,psg1218a|\
+	planex,db-wrt01|\
+	planex,mzk-750dhp|\
+	sanlinking,d240|\
+	xiaomi,miwifi-mini|\
+	youku,yk1|\
+	zbtlink,zbt-ape522ii|\
+	zbtlink,zbt-we826-16m|\
+	zbtlink,zbt-we826-32m|\
+	zbtlink,zbt-we826-e|\
+	zbtlink,zbt-wr8305rt|\
+	zyxel,keenetic-omni)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
+		;;
+	alfa-network,tube-e4g|\
+	buffalo,wmr-300|\
+	dlink,dch-m225|\
+	elecom,wrh-300cr|\
+	kimax,u25awf-h1|\
+	netgear,ex2700|\
+	netgear,ex3700|\
+	netgear,wn3000rp-v3|\
+	planex,cs-qr10|\
+	planex,mzk-ex300np|\
+	planex,mzk-ex750np|\
+	ravpower,wd03|\
+	sercomm,na930)
+		ucidef_set_interface_lan "eth0"
+		;;
+	asus,rp-n53)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
+		;;
+	asus,rt-ac51u)
+		ucidef_add_switch "switch0" \
+			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
+		;;
+	asus,rt-n14u|\
+	bdcom,wap2100-sk|\
+	glinet,gl-mt300a|\
+	glinet,gl-mt300n|\
+	glinet,gl-mt750|\
+	hiwifi,hc5661|\
+	tplink,archer-c20i|\
+	wrtnode,wrtnode|\
+	zbtlink,zbt-wa05)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
+		;;
+	buffalo,whr-300hp2|\
+	buffalo,whr-600d)
+		ucidef_add_switch "switch0" \
+			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan:5" "6@eth0"
+		;;
+	buffalo,whr-1166d)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "5:wan" "6@eth0"
+		;;
+	comfast,cf-wr800n|\
+	hnet,c108)
+		ucidef_add_switch "switch0" \
+			"4:lan" "6@eth0"
+		;;
+	dlink,dir-510l)
+		ucidef_add_switch "switch0" \
+			"0:lan" "6@eth0"
+		;;
+	dlink,dwr-118-a1)
+		ucidef_add_switch "switch0" \
+			"1:lan:2" "2:lan:3" "3:lan:1" "4:lan:0" "5:wan" "6@eth0"
+		;;
+	dlink,dwr-118-a2)
+		ucidef_add_switch "switch0" \
+			"1:lan:2" "2:lan:1" "3:lan:3" "4:lan" "0:wan" "6@eth0"
+		;;
+	edimax,br-6478ac-v2|\
+	tplink,archer-c2-v1)
+		ucidef_add_switch "switch1" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
+		;;
+	edimax,ew-7476rpc|\
+	edimax,ew-7478ac|\
+	kimax,u35wf|\
+	microduino,microwrt|\
+	yukai,bocco|\
+	zbtlink,zbt-cpe102|\
+	zte,q7)
+		ucidef_add_switch "switch0"
+		ucidef_add_switch_attr "switch0" "enable" "false"
+		ucidef_set_interface_lan "eth0"
+		;;
+	engenius,esr600)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5:wan" "0@eth0"
+		;;
+	fon,fon2601)
+		ucidef_add_switch "switch0" \
+			"0:lan" "4:wan" "6@eth0"
+		;;
+	head-weblink,hdrm200)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "5:lan" "0:wan" "6@eth0"
+		;;
+	hiwifi,hc5761)
+		ucidef_add_switch "switch0" \
+			"1:lan" "4:lan" "0:wan" "6@eth0"
+		;;
+	hiwifi,hc5861)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "5:wan" "6@eth0"
+		;;
+	iodata,wn-ac1167gr|\
+	iodata,wn-ac733gr3)
+		ucidef_add_switch "switch1" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
+		;;
+	kingston,mlw221)
+		ucidef_set_interface_lan "eth0.2"
+		;;
+	kingston,mlwg2)
+		ucidef_set_interface_lan "eth0.1"
+		;;
+	lava,lr-25g001)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "0@eth0"
+		;;
+	lenovo,newifi-y1)
+		ucidef_add_switch "switch0" \
+			"0:lan:2" "1:lan:1" "4:wan" "6@eth0"
+		;;
+	lenovo,newifi-y1s)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "4:lan:2" "5:lan:1" "0:wan" "6@eth0"
+		;;
+	linksys,e1700|\
+	ralink,mt7620a-mt7530-evb)
+		ucidef_add_switch "switch1" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
+		;;
+	nexx,wt3020-4m|\
+	nexx,wt3020-8m)
+		ucidef_add_switch "switch0" \
+			"4:lan" "0:wan" "6@eth0"
+		;;
+	phicomm,k2g)
+		ucidef_add_switch "switch0" \
+			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5:wan" "6@eth0"
+		;;
+	phicomm,psg1218b)
+		ucidef_add_switch "switch0" \
+			"0:lan:3" "1:lan:2" "2:lan:1" "3:wan" "6@eth0"
+		;;
+	tplink,archer-c20-v1|\
+	tplink,archer-c50-v1)
+		ucidef_add_switch "switch0" \
+			"1:lan:3" "2:lan:4" "3:lan:1" "4:lan:2" "0:wan" "6@eth0"
+		;;
+	tplink,archer-mr200)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "6t@eth0"
+		ucidef_set_interface_wan "usb0"
+		;;
+	vonets,var11n-300)
+		ucidef_add_switch "switch0" \
+			"0:lan" "4:wan" "6@eth0"
+		;;
+	zbtlink,zbt-we1026-5g-16m)
+		ucidef_add_switch "switch0" \
+			"0:lan" "6t@eth0"
+		;;
+	zbtlink,zbt-we2026)
+		ucidef_add_switch "switch0" \
+			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
+		;;
+	zyxel,keenetic-omni-ii)
+		ucidef_add_switch "switch0" \
+			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6@eth0"
+		;;
+	zyxel,keenetic-viva)
+		ucidef_add_switch "switch1" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "7t@eth0"
+		;;
+	*)
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		;;
+	esac
+}
+
+ramips_setup_macs()
+{
+	local board="$1"
+	local lan_mac=""
+	local wan_mac=""
+	local label_mac=""
+
+	case $board in
+	buffalo,whr-1166d|\
+	buffalo,whr-300hp2|\
+	buffalo,whr-600d|\
+	xiaomi,miwifi-mini)
+		# This empty case has to be kept for devices without any MAC address adjustments
+		;;
+	dlink,dch-m225)
+		lan_mac=$(mtd_get_mac_ascii factory lanmac)
+		;;
+	dlink,dir-510l|\
+	dlink,dwr-116-a1|\
+	dlink,dwr-118-a1|\
+	dlink,dwr-118-a2|\
+	dlink,dwr-921-c1|\
+	dlink,dwr-922-e2|\
+	lava,lr-25g001)
+		wan_mac=$(jboot_config_read -m -i $(find_mtd_part "config") -o 0xE000)
+		lan_mac=$(macaddr_add "$wan_mac" 1)
+		label_mac=$wan_mac
+		;;
+	dovado,tiny-ac)
+		lan_mac=$(mtd_get_mac_ascii u-boot-env LAN_MAC_ADDR)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env WAN_MAC_ADDR)
+		;;
+	edimax,br-6478ac-v2)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
+		;;
+	engenius,esr600)
+		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
+		;;
+	glinet,gl-mt300a|\
+	glinet,gl-mt300n|\
+	glinet,gl-mt750)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
+	hiwifi,hc5661|\
+	hiwifi,hc5761|\
+	hiwifi,hc5861)
+		lan_mac=$(mtd_get_mac_ascii bdinfo "Vfac_mac ")
+		label_mac=$lan_mac
+		[ -n "$lan_mac" ] || lan_mac=$(cat /sys/class/net/eth0/address)
+		wan_mac=$(macaddr_add "$lan_mac" 1)
+		;;
+	iodata,wn-ac1167gr|\
+	iodata,wn-ac733gr3)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
+		;;
+	lenovo,newifi-y1|\
+	lenovo,newifi-y1s|\
+	ohyeah,oy-0001|\
+	phicomm,k2g)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
+		;;
+	linksys,e1700)
+		wan_mac=$(mtd_get_mac_ascii config WAN_MAC_ADDR)
+		;;
+	zyxel,keenetic-omni|\
+	zyxel,keenetic-omni-ii|\
+	zyxel,keenetic-viva)
+		wan_mac=$(mtd_get_mac_binary factory 0x28)
+		;;
+	*)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
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
+ramips_setup_interfaces $board
+ramips_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/mt7620/base-files/etc/board.d/03_gpio_switches b/target/linux/ramips/mt7620/base-files/etc/board.d/03_gpio_switches
new file mode 100755
index 0000000000..85380d84a8
--- /dev/null
+++ b/target/linux/ramips/mt7620/base-files/etc/board.d/03_gpio_switches
@@ -0,0 +1,30 @@
+#!/bin/sh
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+board=$(board_name)
+
+case "$board" in
+dlink,dir-510l)
+	ucidef_add_gpio_switch "usb_enable1" "USB 1A enable" "12" "0"
+	ucidef_add_gpio_switch "usb_enable05" "USB 0.5A enable" "13" "1"
+	;;
+head-weblink,hdrm200)
+	ucidef_add_gpio_switch "sim_switch" "SIM slot switch" "0"
+	ucidef_add_gpio_switch "io1" "I/O 1" "1"
+	ucidef_add_gpio_switch "io2" "I/O 2" "2"
+	ucidef_add_gpio_switch "io3" "I/O 3" "11"
+	ucidef_add_gpio_switch "io4" "I/O 4" "14"
+	ucidef_add_gpio_switch "power_mpcie" "mPCIe power" "21" "1"
+	;;
+zbtlink,zbt-we826-e)
+	ucidef_add_gpio_switch "sim_switch" "SIM slot switch" "13"
+	ucidef_add_gpio_switch "power_mpcie" "mPCIe power" "14" "1"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/ramips/mt7620/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
similarity index 100%
rename from target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
rename to target/linux/ramips/mt7620/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
diff --git a/target/linux/ramips/mt7620/base-files/lib/upgrade/platform.sh b/target/linux/ramips/mt7620/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..786d57fc70
--- /dev/null
+++ b/target/linux/ramips/mt7620/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,20 @@
+#
+# Copyright (C) 2010 OpenWrt.org
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
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..4eab8f42fe
--- /dev/null
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
@@ -0,0 +1,83 @@
+#!/bin/sh
+
+. /lib/functions/leds.sh
+. /lib/functions/uci-defaults.sh
+
+set_wifi_led() {
+	ucidef_set_led_netdev "wifi_led" "wifi" "${1}" "${2:-wlan0}"
+}
+
+
+board=$(board_name)
+boardname="${board##*,}"
+
+board_config_update
+
+led_wlan="$(get_dt_led wlan)"
+[ -n "$led_wlan" ] && ucidef_set_led_wlan "wifi_led" "wifi" "$led_wlan" "phy0tpt"
+
+case $board in
+d-team,newifi-d2)
+	ucidef_set_led_switch "internet" "internet" "$boardname:amber:internet" "switch0" "0x10"
+	ucidef_set_led_netdev "wlan2g" "WiFi 2.4GHz" "$boardname:blue:wlan2g" "wlan0"
+	ucidef_set_led_netdev "wlan5g" "WiFi 5GHz" "$boardname:blue:wlan5g" "wlan1"
+	;;
+d-team,pbr-m1|\
+gehua,ghl-r-001)
+	ucidef_set_led_netdev "internet" "internet" "$boardname:blue:internet" "eth0.2"
+	;;
+dlink,dir-860l-b1)
+	ucidef_set_led_netdev "wan" "wan" "$boardname:green:net" "eth0.2"
+	;;
+gnubee,gb-pc1|\
+gnubee,gb-pc2)
+	ucidef_set_led_switch "lan1" "lan1" "$boardname:green:lan1" "switch0" "0x01"
+	ucidef_set_led_switch "lan2" "lan2" "$boardname:green:lan2" "switch0" "0x10"
+	;;
+mikrotik,rbm11g)
+	ucidef_set_rssimon "wlan0" "200000" "1"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan0" "1" "100"
+	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green:rssi1" "wlan0" "20" "100"
+	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH" "$boardname:green:rssi2" "wlan0" "40" "100"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi3" "wlan0" "60" "100"
+	ucidef_set_led_rssi "rssiveryhigh" "RSSIVERYHIGH" "$boardname:green:rssi4" "wlan0" "80" "100"
+	;;
+mtc,wr1201)
+	ucidef_set_led_switch "eth_link" "LAN link" "$boardname:green:eth_link" "switch0" "0x0f"
+	;;
+netgear,r6220|\
+netgear,r6260|\
+netgear,r6350|\
+netgear,r6850|\
+netgear,wndr3700-v5)
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
+	;;
+tplink,re350-v1|\
+tplink,re650-v1)
+	ucidef_set_led_netdev "wifi2g" "Wifi 2.4G" "$boardname:blue:wifi2G" "wlan0"
+	ucidef_set_led_netdev "wifi5g" "Wifi 5G" "$boardname:blue:wifi5G" "wlan1"
+	ucidef_set_led_netdev "eth_act" "LAN act" "$boardname:green:eth_act" "eth0" "tx rx"
+	ucidef_set_led_switch "eth_link" "LAN link" "$boardname:green:eth_link" "switch0" "0x01"
+	;;
+xiaomi,mir3g)
+	ucidef_set_led_switch "wan-amber"  "WAN (amber)"  "$boardname:amber:wan"  "switch0" "0x02" "0x08"
+	ucidef_set_led_switch "lan1-amber" "LAN1 (amber)" "$boardname:amber:lan1" "switch0" "0x08" "0x08"
+	ucidef_set_led_switch "lan2-amber" "LAN2 (amber)" "$boardname:amber:lan2" "switch0" "0x04" "0x08"
+	;;
+xiaomi,mir3p)
+	ucidef_set_led_switch "wan-amber"  "WAN (amber)"  "$boardname:amber:wan"  "switch0" "0x10" "0x08"
+	ucidef_set_led_switch "lan1-amber" "LAN1 (amber)" "$boardname:amber:lan1" "switch0" "0x02" "0x08"
+	ucidef_set_led_switch "lan2-amber" "LAN2 (amber)" "$boardname:amber:lan2" "switch0" "0x04" "0x08"
+	ucidef_set_led_switch "lan3-amber" "LAN3 (amber)" "$boardname:amber:lan3" "switch0" "0x08" "0x08"
+	;;
+xzwifi,creativebox-v1)
+	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x10"
+	;;
+youhua,wr1200js)
+	ucidef_set_led_switch "internet" "INTERNET" "$boardname:green:wan" "switch0" "0x01"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..11cf27e092
--- /dev/null
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -0,0 +1,238 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+ramips_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	adslr,g7|\
+	afoundry,ew1200|\
+	d-team,pbr-m1|\
+	firefly,firewrt|\
+	hiwifi,hc5962|\
+	mediatek,ap-mt7621a-v60|\
+	mediatek,mt7621-eval-board|\
+	mqmaker,witi|\
+	mtc,wr1201|\
+	netis,wf-2881|\
+	phicomm,k2p|\
+	planex,vr500|\
+	samknows,whitebox-v8|\
+	storylink,sap-g3200u3|\
+	telco-electronics,x1|\
+	totolink,a7000r|\
+	unielec,u7621-06-16m|\
+	unielec,u7621-06-64m|\
+	xiaoyu,xy-c5|\
+	xzwifi,creativebox-v1|\
+	youku,yk-l2|\
+	zbtlink,zbt-we1326|\
+	zbtlink,zbt-we3526|\
+	zbtlink,zbt-wg2626|\
+	zbtlink,zbt-wg3526-16m|\
+	zbtlink,zbt-wg3526-32m)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
+		;;
+	asiarf,ap7621-001)
+		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
+		;;
+	asiarf,ap7621-nv1)
+		ucidef_add_switch "switch0" "0:wan" "2:lan" "3:lan" "6@eth0"
+		;;
+	asus,rt-ac57u|\
+	mikrotik,rb750gr3|\
+	mikrotik,rbm33g|\
+	ubiquiti,edgerouterx|\
+	ubiquiti,edgerouterx-sfp|\
+	youhua,wr1200js)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
+		;;
+	asus,rt-ac65p|\
+	asus,rt-ac85p|\
+	dlink,dir-860l-b1|\
+	elecom,wrc-1167ghbk2-s|\
+	elecom,wrc-1900gst|\
+	elecom,wrc-2533gst|\
+	iodata,wn-ax1167gr|\
+	iodata,wn-gx300gr|\
+	iodata,wnpr2600g)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
+		;;
+	buffalo,wsr-1166dhp|\
+	buffalo,wsr-600dhp)
+		ucidef_add_switch "switch0" \
+			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "4:wan:5" "6@eth0"
+		;;
+	d-team,newifi-d2|\
+	wevo,11acnas|\
+	wevo,w2914ns-v2)
+		ucidef_add_switch "switch0" \
+			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
+		;;
+	edimax,rg21s)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
+		;;
+	gehua,ghl-r-001)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "4:wan" "6@eth0"
+		;;
+	gnubee,gb-pc1|\
+	gnubee,gb-pc2)
+		ucidef_add_switch "switch0" \
+			"0:lan" "4:lan" "6@eth0"
+		;;
+	lenovo,newifi-d1)
+		ucidef_add_switch "switch0" \
+		"1:lan:2" "2:lan:1" "4:wan" "6@eth0"
+		;;
+	linksys,re6500)
+		ucidef_add_switch "switch0" \
+			"0:lan:1" "1:lan:2" "2:lan:3" "3:lan:4" "6@eth0"
+		;;
+	mikrotik,rbm11g|\
+	thunder,timecloud)
+		ucidef_add_switch "switch0"
+		ucidef_add_switch_attr "switch0" "enable" "false"
+		ucidef_set_interface_lan "eth0"
+		;;
+	netgear,ex6150|\
+	tplink,re350-v1|\
+	tplink,re650-v1)
+		ucidef_add_switch "switch0" \
+			"0:lan" "6@eth0"
+		;;
+	netgear,r6220|\
+	netgear,r6260|\
+	netgear,r6350|\
+	netgear,r6850|\
+	netgear,wndr3700-v5)
+		ucidef_add_switch "switch0" \
+			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
+		;;
+	xiaomi,mir3g)
+		ucidef_add_switch "switch0" \
+			"2:lan:2" "3:lan:1" "1:wan" "6t@eth0"
+		;;
+	xiaomi,mir3g-v2)
+		ucidef_add_switch "switch0" \
+			"2:lan:2" "3:lan:1" "4:wan" "6@eth0"
+		;;
+	xiaomi,mir3p)
+		ucidef_add_switch "switch0" \
+			"1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
+		;;
+	*)
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		;;
+	esac
+}
+
+ramips_setup_macs()
+{
+	local board="$1"
+	local lan_mac=""
+	local wan_mac=""
+	local label_mac=""
+
+	case $board in
+	asus,rt-ac57u|\
+	d-team,newifi-d2|\
+	d-team,pbr-m1|\
+	elecom,wrc-1167ghbk2-s|\
+	elecom,wrc-1900gst|\
+	elecom,wrc-2533gst|\
+	lenovo,newifi-d1|\
+	phicomm,k2p|\
+	planex,vr500|\
+	samknows,whitebox-v8|\
+	youhua,wr1200js|\
+	youku,yk-l2|\
+	zbtlink,zbt-we3526)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
+		;;
+	asus,rt-ac65p|\
+	asus,rt-ac85p)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
+	buffalo,wsr-1166dhp)
+		local index="$(find_mtd_index "board_data")"
+		wan_mac="$(grep -m1 mac= "/dev/mtd${index}" | cut -d= -f2)"
+		lan_mac=$wan_mac
+		;;
+	buffalo,wsr-600dhp)
+		# This empty case has to be kept for devices without any MAC address adjustments
+		;;
+	dlink,dir-860l-b1)
+		lan_mac=$(mtd_get_mac_ascii factory lanmac)
+		wan_mac=$(mtd_get_mac_ascii factory wanmac)
+		label_mac=$(cat /sys/class/ieee80211/phy1/macaddress)
+		;;
+	edimax,rg21s)
+		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
+		;;
+	hiwifi,hc5962)
+		lan_mac=$(mtd_get_mac_ascii bdinfo "Vfac_mac ")
+		label_mac=$lan_mac
+		[ -n "$lan_mac" ] || lan_mac=$(cat /sys/class/net/eth0/address)
+		wan_mac=$(macaddr_add "$lan_mac" 1)
+		;;
+	iodata,wn-ax1167gr|\
+	iodata,wn-gx300gr)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
+		;;
+	iodata,wnpr2600g)
+		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
+		label_mac=$wan_mac
+		;;
+	netgear,r6260|\
+	netgear,r6350|\
+	netgear,r6850)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
+		;;
+	xiaomi,mir3g)
+		lan_mac=$(mtd_get_mac_binary factory 0xe006)
+		;;
+	xiaomi,mir3g-v2)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
+		label_mac=$wan_mac
+		;;
+	xiaomi,mir3p)
+		lan_mac=$(mtd_get_mac_binary factory 0xe006)
+		label_mac=$lan_mac
+		;;
+	zbtlink,zbt-we1326)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
+	zbtlink,zbt-wg3526-16m|\
+	zbtlink,zbt-wg3526-32m)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
+	*)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
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
+ramips_setup_interfaces $board
+ramips_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/base-files/etc/board.d/03_gpio_switches b/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
similarity index 55%
rename from target/linux/ramips/base-files/etc/board.d/03_gpio_switches
rename to target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
index 9acd78ea0b..d3bc85f827 100755
--- a/target/linux/ramips/base-files/etc/board.d/03_gpio_switches
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
@@ -7,18 +7,6 @@ board_config_update
 board=$(board_name)
 
 case "$board" in
-dlink,dir-510l)
-	ucidef_add_gpio_switch "usb_enable1" "USB 1A enable" "12" "0"
-	ucidef_add_gpio_switch "usb_enable05" "USB 0.5A enable" "13" "1"
-	;;
-head-weblink,hdrm200)
-	ucidef_add_gpio_switch "sim_switch" "SIM slot switch" "0"
-	ucidef_add_gpio_switch "io1" "I/O 1" "1"
-	ucidef_add_gpio_switch "io2" "I/O 2" "2"
-	ucidef_add_gpio_switch "io3" "I/O 3" "11"
-	ucidef_add_gpio_switch "io4" "I/O 4" "14"
-	ucidef_add_gpio_switch "power_mpcie" "mPCIe power" "21" "1"
-	;;
 mikrotik,rb750gr3)
 	ucidef_add_gpio_switch "poe_passthrough" "PoE Passthrough" "17"
 	;;
@@ -35,10 +23,6 @@ ubiquiti,edgerouterx-sfp)
 	ucidef_add_gpio_switch "poe_power_port3" "PoE Power Port3" "499"
 	ucidef_add_gpio_switch "poe_power_port4" "PoE Power Port4" "500"
 	;;
-zbtlink,zbt-we826-e)
-	ucidef_add_gpio_switch "sim_switch" "SIM slot switch" "13"
-	ucidef_add_gpio_switch "power_mpcie" "mPCIe power" "14" "1"
-	;;
 esac
 
 board_config_flush
diff --git a/target/linux/ramips/base-files/lib/upgrade/platform.sh b/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
similarity index 91%
rename from target/linux/ramips/base-files/lib/upgrade/platform.sh
rename to target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
index 03e994dfa4..f8aa0373a0 100755
--- a/target/linux/ramips/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
@@ -39,10 +39,6 @@ platform_do_upgrade() {
 	xiaomi,mir3p)
 		nand_do_upgrade "$1"
 		;;
-	tplink,archer-c50-v4)
-		MTD_ARGS="-t romfile"
-		default_do_upgrade "$1"
-		;;
 	ubiquiti,edgerouterx|\
 	ubiquiti,edgerouterx-sfp)
 		platform_upgrade_ubnt_erx "$1"
diff --git a/target/linux/ramips/base-files/lib/upgrade/ubnt.sh b/target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh
similarity index 100%
rename from target/linux/ramips/base-files/lib/upgrade/ubnt.sh
rename to target/linux/ramips/mt7621/base-files/lib/upgrade/ubnt.sh
diff --git a/target/linux/ramips/base-files/sbin/fixup-mac-address b/target/linux/ramips/mt7621/base-files/sbin/fixup-mac-address
similarity index 100%
rename from target/linux/ramips/base-files/sbin/fixup-mac-address
rename to target/linux/ramips/mt7621/base-files/sbin/fixup-mac-address
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..f397da14a3
--- /dev/null
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
@@ -0,0 +1,138 @@
+#!/bin/sh
+
+. /lib/functions/leds.sh
+. /lib/functions/uci-defaults.sh
+
+set_wifi_led() {
+	ucidef_set_led_netdev "wifi_led" "wifi" "${1}" "${2:-wlan0}"
+}
+
+
+board=$(board_name)
+boardname="${board##*,}"
+
+board_config_update
+
+led_wlan="$(get_dt_led wlan)"
+[ -n "$led_wlan" ] && ucidef_set_led_wlan "wifi_led" "wifi" "$led_wlan" "phy0tpt"
+
+case $board in
+alfa-network,awusfree1)
+	set_wifi_led "$boardname:blue:wlan"
+	;;
+cudy,wr1000)
+	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
+	ucidef_set_led_switch "lan1" "lan1" "$boardname:blue:lan1" "switch0" "0x08"
+	ucidef_set_led_switch "lan2" "lan2" "$boardname:blue:lan2" "switch0" "0x04"
+	;;
+glinet,gl-mt300n-v2)
+	set_wifi_led "$boardname:red:wlan"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x1"
+	;;
+hilink,hlk-7628n|\
+skylab,skw92a)
+	set_wifi_led "$boardname:green:wlan"
+	;;
+hiwifi,hc5661a|\
+hiwifi,hc5761a)
+	ucidef_set_led_switch "internet" "internet" "$boardname:blue:internet" "switch0" "0x10"
+	;;
+mediatek,linkit-smart-7688)
+	ucidef_set_led_wlan "wifi" "wifi" "linkit-smart-7688:orange:wifi" "phy0tpt"
+	;;
+netgear,r6120)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
+	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "phy0tpt"
+	;;
+rakwireless,rak633)
+	set_wifi_led "$boardname:blue:wifi"
+	;;
+tama,w06)
+	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth0"
+	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan" "phy0tpt"
+	;;
+tplink,archer-c20-v4)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_netdev "wlan2g" "wlan2g" "$boardname:green:wlan2g" "wlan0"
+	;;
+tplink,archer-c50-v3|\
+tplink,archer-c50-v4)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan2g" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "wlan5g" "$boardname:green:wlan5g" "phy1tpt"
+	;;
+tplink,tl-mr3020-v3)
+	set_wifi_led "$boardname:green:wlan"
+	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
+	;;
+tplink,tl-mr3420-v5|\
+tplink,tl-wr842n-v5)
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	;;
+tplink,tl-wa801nd-v5)
+	ucidef_set_led_wlan "wlan" "wlan" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" "eth0"
+	;;
+tplink,tl-wr840n-v4)
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	;;
+tplink,tl-wr841n-v13)
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan1" "lan1" "$boardname:green:lan1" "switch0" "0x2"
+	ucidef_set_led_switch "lan2" "lan2" "$boardname:green:lan2" "switch0" "0x4"
+	ucidef_set_led_switch "lan3" "lan3" "$boardname:green:lan3" "switch0" "0x8"
+	ucidef_set_led_switch "lan4" "lan4" "$boardname:green:lan4" "switch0" "0x10"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	;;
+tplink,tl-wr841n-v14)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x1e"
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	;;
+tplink,tl-wr902ac-v3)
+	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x10"
+	;;
+unielec,u7628-01-16m)
+	ucidef_set_led_switch "lan1" "lan1" "u7628-01:green:lan1" "switch0" "0x2"
+	ucidef_set_led_switch "lan2" "lan2" "u7628-01:green:lan2" "switch0" "0x4"
+	ucidef_set_led_switch "lan3" "lan3" "u7628-01:green:lan3" "switch0" "0x8"
+	ucidef_set_led_switch "lan4" "lan4" "u7628-01:green:lan4" "switch0" "0x10"
+	ucidef_set_led_switch "wan" "wan" "u7628-01:green:wan" "switch0" "0x01"
+	set_wifi_led "u7628-01:green:wlan"
+	;;
+wavlink,wl-wn570ha1)
+	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x01"
+	ucidef_set_rssimon "wlan0" "200000" "1"
+	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low" "wlan0" "1" "49"
+	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med" "wlan0" "50" "84"
+	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-high" "wlan0" "85" "100"
+	set_wifi_led "$boardname:green:wifi"
+	;;
+wavlink,wl-wn575a3)
+	ucidef_set_rssimon "wlan1" "200000" "1"
+	ucidef_set_led_rssi "wifi-low" "wifi-low" "$boardname:green:wifi-low" "wlan1" "1" "49"
+	ucidef_set_led_rssi "wifi-med" "wifi-med" "$boardname:green:wifi-med" "wlan1" "50" "84"
+	ucidef_set_led_rssi "wifi-high" "wifi-high" "$boardname:green:wifi-high" "wlan1" "85" "100"
+	;;
+zbtlink,zbt-we1226)
+	set_wifi_led "$boardname:green:wlan"
+	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x01"
+	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2" "switch0" "0x02"
+	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan" "switch0" "0x10"
+	;;
+zyxel,keenetic-extra-ii)
+	set_wifi_led "$boardname:green:wifi"
+	ucidef_set_led_switch "internet" "internet" "$boardname:green:internet" "switch0" "0x01"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..3bb5d31423
--- /dev/null
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -0,0 +1,191 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+ramips_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	alfa-network,awusfree1|\
+	d-team,pbr-d1|\
+	tama,w06|\
+	tplink,tl-mr3020-v3|\
+	tplink,tl-wr802n-v4)
+		ucidef_set_interface_lan "eth0"
+		;;
+	buffalo,wcr-1166ds)
+		ucidef_add_switch "switch0" \
+			"3:lan" "4:wan" "6@eth0"
+		;;
+	cudy,wr1000)
+		ucidef_add_switch "switch0" \
+			"2:lan:2" "3:lan:1" "4:wan" "6@eth0"
+		;;
+	duzun,dm06)
+		ucidef_add_switch "switch0" \
+			"1:lan" "0:wan" "6@eth0"
+		;;
+	glinet,gl-mt300n-v2)
+		ucidef_add_switch "switch0" \
+			"1:lan" "0:wan" "6@eth0"
+		;;
+	glinet,vixmini)
+		ucidef_add_switch "switch0" \
+			"0:lan" "6@eth0"
+		;;
+	hilink,hlk-7628n|\
+	hiwifi,hc5861b|\
+	skylab,skw92a|\
+	tplink,archer-c20-v4|\
+	tplink,archer-c50-v3|\
+	tplink,archer-c50-v4|\
+	tplink,tl-mr3420-v5|\
+	tplink,tl-wr840n-v4|\
+	tplink,tl-wr840n-v5|\
+	tplink,tl-wr841n-v13|\
+	tplink,tl-wr841n-v14|\
+	tplink,tl-wr842n-v5|\
+	unielec,u7628-01-16m|\
+	wrtnode,wrtnode2p|\
+	wrtnode,wrtnode2r|\
+	zyxel,keenetic-extra-ii)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
+		;;
+	hiwifi,hc5661a|\
+	hiwifi,hc5761a|\
+	mediatek,mt7628an-eval-board|\
+	mercury,mac1200r-v2|\
+	totolink,lr1200|\
+	wavlink,wl-wn570ha1|\
+	wavlink,wl-wn575a3|\
+	xiaomi,miwifi-nano)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
+		;;
+	iptime,a3)
+		ucidef_add_switch "switch0" \
+			"2:lan:2" "3:lan:1" "0:wan" "6@eth0"
+		;;
+	iptime,a604m)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
+		;;
+	mediatek,linkit-smart-7688|\
+	onion,omega2p|\
+	onion,omega2|\
+	tplink,tl-wa801nd-v5|\
+	widora,neo-16m|\
+	widora,neo-32m)
+		ucidef_add_switch "switch0"
+		ucidef_add_switch_attr "switch0" "enable" "false"
+		ucidef_set_interface_lan "eth0"
+		;;
+	netgear,r6120)
+		ucidef_add_switch "switch0" \
+			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
+		;;
+	rakwireless,rak633)
+		ucidef_add_switch "switch0" \
+			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
+		;;
+	tplink,tl-wr902ac-v3)
+		ucidef_add_switch "switch0" \
+			"4:lan" "6@eth0"
+		;;
+	vocore,vocore2|\
+	vocore,vocore2-lite)
+		ucidef_add_switch "switch0" \
+			"0:lan" "2:lan" "6t@eth0"
+		;;
+	wiznet,wizfi630s)
+		ucidef_add_switch "switch0" \
+			"0:wan" "3:lan" "4:lan" "6@eth0"
+		;;
+	xiaomi,mir4a-100m)
+		ucidef_add_switch "switch0" \
+			"4:lan:1" "2:lan:2" "0:wan" "6@eth0"
+		;;
+	zbtlink,zbt-we1226)
+		ucidef_add_switch "switch0" \
+			"0:lan:2" "1:lan:1" "4:wan" "6@eth0"
+		;;
+	*)
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		;;
+	esac
+}
+
+ramips_setup_macs()
+{
+	local board="$1"
+	local lan_mac=""
+	local wan_mac=""
+	local label_mac=""
+
+	case $board in
+	buffalo,wcr-1166ds)
+		local index="$(find_mtd_index "board_data")"
+		wan_mac="$(grep -m1 mac= "/dev/mtd${index}" | cut -d= -f2)"
+		lan_mac=$wan_mac
+		;;
+	cudy,wr1000)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
+	glinet,gl-mt300n-v2)
+		# This empty case has to be kept for devices without any MAC address adjustments
+		;;
+	hilink,hlk-7628n)
+		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
+		wan_mac=$(macaddr_add "$lan_mac" 1)
+		;;
+	hiwifi,hc5661a|\
+	hiwifi,hc5761a|\
+	hiwifi,hc5861b)
+		lan_mac=$(mtd_get_mac_ascii bdinfo "Vfac_mac ")
+		label_mac=$lan_mac
+		[ -n "$lan_mac" ] || lan_mac=$(cat /sys/class/net/eth0/address)
+		wan_mac=$(macaddr_add "$lan_mac" 1)
+		;;
+	iptime,a3|\
+	iptime,a604m)
+		wan_mac=$(mtd_get_mac_binary u-boot 0x1fc40)
+		;;
+	mediatek,linkit-smart-7688|\
+	onion,omega2|\
+	onion,omega2p)
+		wan_mac=$(mtd_get_mac_binary factory 0x4)
+		lan_mac=$(mtd_get_mac_binary factory 0x2e)
+		;;
+	mercury,mac1200r-v2)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory_info 0xd)" 1)
+		;;
+	skylab,skw92a|\
+	totolink,lr1200)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
+		;;
+	vocore,vocore2|\
+	vocore,vocore2-lite)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
+	*)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
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
+ramips_setup_interfaces $board
+ramips_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/mt76x8/base-files/lib/upgrade/platform.sh b/target/linux/ramips/mt76x8/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..606a9f2bf6
--- /dev/null
+++ b/target/linux/ramips/mt76x8/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,24 @@
+#
+# Copyright (C) 2010 OpenWrt.org
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
+	tplink,archer-c50-v4)
+		MTD_ARGS="-t romfile"
+		default_do_upgrade "$1"
+		;;
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
diff --git a/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds b/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..a042ecfbda
--- /dev/null
+++ b/target/linux/ramips/rt288x/base-files/etc/board.d/01_leds
@@ -0,0 +1,34 @@
+#!/bin/sh
+
+. /lib/functions/leds.sh
+. /lib/functions/uci-defaults.sh
+
+set_wifi_led() {
+	ucidef_set_led_netdev "wifi_led" "wifi" "${1}" "${2:-wlan0}"
+}
+
+
+board=$(board_name)
+boardname="${board##*,}"
+
+board_config_update
+
+led_wlan="$(get_dt_led wlan)"
+[ -n "$led_wlan" ] && ucidef_set_led_wlan "wifi_led" "wifi" "$led_wlan" "phy0tpt"
+
+case $board in
+airlink101,ar670w|\
+airlink101,ar725w)
+	set_wifi_led "rt2800soc-phy0::radio"
+	;;
+belkin,f5d8235-v1)
+	set_wifi_led "$boardname:blue:wireless"
+	;;
+ralink,v11st-fe)
+	set_wifi_led "rt2800pci-phy0::radio"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/rt288x/base-files/etc/board.d/02_network b/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..20b6f5317f
--- /dev/null
+++ b/target/linux/ramips/rt288x/base-files/etc/board.d/02_network
@@ -0,0 +1,61 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+ramips_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	airlink101,ar670w|\
+	airlink101,ar725w)
+		ucidef_add_switch "switch0" \
+			"0:wan" "1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
+		;;
+	asus,rt-n15)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5@eth0"
+		;;
+	belkin,f5d8235-v1|\
+	buffalo,wzr-agl300nh|\
+	ralink,v11st-fe)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
+		;;
+	buffalo,wli-tx4-ag300n|\
+	dlink,dap-1522-a1)
+		ucidef_set_interface_lan "eth0"
+		;;
+	*)
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		;;
+	esac
+}
+
+ramips_setup_macs()
+{
+	local board="$1"
+	local lan_mac=""
+	local wan_mac=""
+	local label_mac=""
+
+	case $board in
+	*)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
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
+ramips_setup_interfaces $board
+ramips_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/rt288x/base-files/lib/upgrade/platform.sh b/target/linux/ramips/rt288x/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..786d57fc70
--- /dev/null
+++ b/target/linux/ramips/rt288x/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,20 @@
+#
+# Copyright (C) 2010 OpenWrt.org
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
diff --git a/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds b/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..ae813e85d6
--- /dev/null
+++ b/target/linux/ramips/rt305x/base-files/etc/board.d/01_leds
@@ -0,0 +1,109 @@
+#!/bin/sh
+
+. /lib/functions/leds.sh
+. /lib/functions/uci-defaults.sh
+
+set_wifi_led() {
+	ucidef_set_led_netdev "wifi_led" "wifi" "${1}" "${2:-wlan0}"
+}
+
+
+board=$(board_name)
+boardname="${board##*,}"
+
+board_config_update
+
+led_wlan="$(get_dt_led wlan)"
+[ -n "$led_wlan" ] && ucidef_set_led_wlan "wifi_led" "wifi" "$led_wlan" "phy0tpt"
+
+case $board in
+7links,px-4885-4m|\
+7links,px-4885-8m)
+	set_wifi_led "px-4885:orange:wifi"
+	;;
+airlive,air3gii|\
+aximcom,mr-102n|\
+edimax,3g-6200nl|\
+netgear,wnce2001)
+	set_wifi_led "$boardname:green:wlan"
+	;;
+alfa-network,w502u|\
+dlink,dir-300-b1|\
+dlink,dir-300-b7|\
+dlink,dir-320-b1|\
+dlink,dir-600-b1|\
+dlink,dir-610-a1|\
+dlink,dir-615-d|\
+dlink,dir-615-h1|\
+dlink,dir-620-a1|\
+engenius,esr-9753|\
+hilink,hlk-rm04|\
+nexx,wt1520-4m|\
+nexx,wt1520-8m|\
+skyline,sl-r7205|\
+tenda,w306r-v2|\
+zyxel,keenetic-start|\
+zyxel,keenetic|\
+zyxel,nbg-419n-v2)
+	set_wifi_led "rt2800pci-phy0::radio"
+	;;
+allnet,all0256n-4m|\
+allnet,all0256n-8m)
+	ucidef_set_rssimon "wlan0" "200000" "1"
+	ucidef_set_led_rssi "rssilow" "RSSILOW" "all0256n:green:rssilow" "wlan0" "1" "40" "0" "6"
+	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM" "all0256n:green:rssimed" "wlan0" "30" "80" "-29" "5"
+	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "all0256n:green:rssihigh" "wlan0" "70" "100" "-69" "8"
+	set_wifi_led "rt2800pci-phy0::radio"
+	;;
+alphanetworks,asl26555-8m|\
+alphanetworks,asl26555-16m)
+	ucidef_set_led_netdev "eth" "ETH" "asl26555:green:eth" "eth0"
+	set_wifi_led "asl26555:green:wlan"
+	;;
+asiarf,awapn2403)
+	set_wifi_led "rt2800soc-phy0::radio"
+	;;
+dlink,dcs-930l-b1)
+	ucidef_set_led_netdev "wifi" "WiFi" "$boardname:blue:wps"
+	;;
+dlink,dir-620-d1|\
+trendnet,tew-714tru)
+	set_wifi_led "$boardname:green:wifi"
+	;;
+edimax,3g-6200n|\
+planex,mzk-w300nh2)
+	set_wifi_led "$boardname:amber:wlan"
+	;;
+fon,fonera-20n)
+	set_wifi_led "$boardname:orange:wifi"
+	;;
+hauppauge,broadway)
+	set_wifi_led "$boardname:red:wps_active"
+	;;
+hootoo,ht-tm02)
+	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:lan" "eth0"
+	set_wifi_led "$boardname:blue:wlan"
+	;;
+huawei,hg255d)
+	set_wifi_led "$boardname:green:wlan"
+	ucidef_set_led_netdev "internet" "internet" "$boardname:green:internet" "eth0.2"
+	;;
+intenso,memory2move)
+	set_wifi_led "$boardname:blue:wifi"
+	ucidef_set_led_netdev "eth" "Ethernet" "$boardname:green:wan" "eth0"
+	;;
+omnima,miniembplug)
+	set_wifi_led "$boardname:red:wlan"
+	;;
+vocore,vocore-8m|\
+vocore,vocore-16m)
+	ucidef_set_led_netdev "eth" "ETH" "vocore:orange:eth" "eth0"
+	;;
+zorlik,zl5900v2)
+	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/rt305x/base-files/etc/board.d/02_network b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..326bc8a3df
--- /dev/null
+++ b/target/linux/ramips/rt305x/base-files/etc/board.d/02_network
@@ -0,0 +1,228 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+ramips_setup_rt3x5x_vlans()
+{
+	if [ ! -x /sbin/swconfig ]; then
+		# legacy default
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		return
+	fi
+	local wanports=""
+	local lanports=""
+	for port in 5 4 3 2 1 0; do
+		if [ "$(swconfig dev rt305x port $port get disable)" = "1" ]; then
+			continue
+		fi
+		if [ "$(swconfig dev rt305x port $port get lan)" = "0" ]; then
+			wanports="$port:wan $wanports"
+		else
+			lanports="$port:lan $lanports"
+		fi
+	done
+	ucidef_add_switch "rt305x" $lanports $wanports "6t@eth0"
+}
+
+ramips_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	accton,wr6202|\
+	alfa-network,w502u|\
+	netcore,nw718|\
+	petatel,psr-680w|\
+	skyline,sl-r7205|\
+	upvel,ur-336un)
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		;;
+	allnet,all0256n-4m|\
+	allnet,all0256n-8m|\
+	allnet,all5002|\
+	allnet,all5003|\
+	dlink,dcs-930l-b1|\
+	dlink,dcs-930|\
+	hame,mpr-a2|\
+	hauppauge,broadway|\
+	hootoo,ht-tm02|\
+	intenso,memory2move|\
+	netgear,wnce2001|\
+	tenda,3g150b|\
+	tenda,3g300m|\
+	tenda,w150m|\
+	unbranded,a5-v11|\
+	wansview,ncs601w|\
+	zorlik,zl5900v2)
+		ucidef_add_switch "switch0"
+		ucidef_add_switch_attr "switch0" "enable" "false"
+		ucidef_set_interface_lan "eth0"
+		;;
+	alphanetworks,asl26555-8m|\
+	alphanetworks,asl26555-16m)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "6t@eth0"
+		;;
+	argus,atp-52b|\
+	asiarf,awm002-evb-4m|\
+	asiarf,awm002-evb-8m|\
+	jcg,jhr-n805r|\
+	jcg,jhr-n825r|\
+	jcg,jhr-n926r|\
+	planex,mzk-wdpr|\
+	upvel,ur-326n4g)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
+		;;
+	asiarf,awapn2403)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:wan" "6@eth0"
+		;;
+	asus,wl-330n|\
+	easyacc,wizard-8800)
+		ucidef_set_interface_lan "eth0.1"
+		;;
+	aximcom,mr-102n)
+		ucidef_set_interface_lan "eth0.2"
+		;;
+	belkin,f5d8235-v2|\
+	trendnet,tew-714tru)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "5@eth0"
+		;;
+	buffalo,whr-g300n|\
+	dlink,dir-300-b7|\
+	dlink,dir-320-b1|\
+	dlink,dir-610-a1|\
+	edimax,3g-6200n|\
+	hilink,hlk-rm04|\
+	nixcore,x1-16m|\
+	nixcore,x1-8m|\
+	planex,mzk-w300nh2|\
+	zyxel,keenetic)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
+		;;
+	dlink,dir-615-h1)
+		ucidef_add_switch "switch0" \
+			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
+		;;
+	huawei,d105)
+		ucidef_set_interface_lan "eth0"
+		;;
+	huawei,hg255d)
+		ucidef_add_switch "switch0" \
+			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
+		;;
+	nexx,wt1520-4m|\
+	nexx,wt1520-8m)
+		ucidef_add_switch "switch0" \
+			"0:lan" "4:wan" "6@eth0"
+		;;
+	planex,mzk-dp150n|\
+	vocore,vocore-8m|\
+	vocore,vocore-16m)
+		ucidef_add_switch "switch0" \
+			"0:lan" "4:lan" "6t@eth0"
+		;;
+	sitecom,wl-351)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5@eth0"
+		;;
+	sparklan,wcr-150gn)
+		ucidef_add_switch "switch0" \
+			"0:lan" "6t@eth0"
+		;;
+	trendnet,tew-638apb-v2)
+		ucidef_add_switch "switch0" \
+			"4:lan" "6@eth0"
+		;;
+	wiznet,wizfi630a)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:wan" "6@eth0"
+		;;
+	zyxel,keenetic-start)
+		ucidef_add_switch "switch0" \
+			"0:lan:3" "1:lan:2" "2:lan:1" "3:lan:0" "4:wan" "6@eth0"
+		;;
+	*)
+		RT3X5X=$(grep -E "(RT3.5|RT5350)" /proc/cpuinfo)
+		if [ -n "${RT3X5X}" ]; then
+			ramips_setup_rt3x5x_vlans
+		else
+			ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		fi
+		;;
+	esac
+}
+
+ramips_setup_macs()
+{
+	local board="$1"
+	local lan_mac=""
+	local wan_mac=""
+	local label_mac=""
+
+	case $board in
+	8devices,carambola|\
+	alfa-network,w502u|\
+	arcwireless,freestation5|\
+	netgear,wnce2001)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
+		;;
+	buffalo,whr-g300n|\
+	zyxel,keenetic-start)
+		# This empty case has to be kept for devices without any MAC address adjustments
+		;;
+	dlink,dir-300-b7|\
+	dlink,dir-320-b1|\
+	dlink,dir-620-a1|\
+	engenius,esr-9753|\
+	hame,mpr-a1|\
+	hauppauge,broadway|\
+	huawei,d105|\
+	hilink,hlk-rm04|\
+	nexaira,bc2|\
+	petatel,psr-680w|\
+	skyline,sl-r7205)
+		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
+		wan_mac=$(macaddr_add "$lan_mac" 1)
+		;;
+	dlink,dir-615-d|\
+	dlink,dir-615-h1)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
+		label_mac=$(cat /sys/class/ieee80211/phy0/macaddress)
+		;;
+	poray,m3|\
+	poray,m4-4m|\
+	poray,m4-8m|\
+	poray,x5|\
+	poray,x8)
+		lan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" -2)
+		;;
+	sparklan,wcr-150gn|\
+	wiznet,wizfi630a)
+		wan_mac=$(mtd_get_mac_binary factory 0x28)
+		;;
+	tenda,w306r-v2)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 5)
+		;;
+	*)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
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
+ramips_setup_interfaces $board
+ramips_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/base-files/lib/preinit/04_handle_checksumming b/target/linux/ramips/rt305x/base-files/lib/preinit/04_handle_checksumming
similarity index 65%
rename from target/linux/ramips/base-files/lib/preinit/04_handle_checksumming
rename to target/linux/ramips/rt305x/base-files/lib/preinit/04_handle_checksumming
index 8f741faf9d..9a2361d057 100644
--- a/target/linux/ramips/base-files/lib/preinit/04_handle_checksumming
+++ b/target/linux/ramips/rt305x/base-files/lib/preinit/04_handle_checksumming
@@ -35,19 +35,6 @@ do_checksumming_disable() {
 			echo "Checksum is already zero, nothing to do."
 		fi
 	;;
-	asus,rt-n56u)
-		echo "Board is ASUS RT-N56U, replacing uImage header..."
-		local firmware_mtd=$(find_mtd_part firmware)
-		local rootfs_mtd=$(find_mtd_part rootfs)
-		local rootfs_data_mtd=$(find_mtd_part rootfs_data)
-		local rootfs_len=$(grep \"rootfs\" /proc/mtd | awk -F' ' '{print "0x"$2}')
-		local rootfs_data_len=$(grep \"rootfs_data\" /proc/mtd | awk -F' ' '{print "0x"$2}')
-		local offset=$(echo "$rootfs_len $rootfs_data_len 0x40" | awk -F' ' '{printf "%i",$1-$2-$3}')
-		local signature=$(dd if=$rootfs_mtd skip=$offset bs=1 count=4 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"')
-		if [ "$signature" = "27051956" ]; then
-			dd conv=notrunc if=$rootfs_mtd skip=$offset of=$firmware_mtd bs=1 count=64 2>/dev/null
-		fi
-	;;
 	esac
 
 	return 0
diff --git a/target/linux/ramips/rt305x/base-files/lib/upgrade/platform.sh b/target/linux/ramips/rt305x/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..786d57fc70
--- /dev/null
+++ b/target/linux/ramips/rt305x/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,20 @@
+#
+# Copyright (C) 2010 OpenWrt.org
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
diff --git a/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds b/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..8502c8f417
--- /dev/null
+++ b/target/linux/ramips/rt3883/base-files/etc/board.d/01_leds
@@ -0,0 +1,35 @@
+#!/bin/sh
+
+. /lib/functions/leds.sh
+. /lib/functions/uci-defaults.sh
+
+set_wifi_led() {
+	ucidef_set_led_netdev "wifi_led" "wifi" "${1}" "${2:-wlan0}"
+}
+
+
+board=$(board_name)
+boardname="${board##*,}"
+
+board_config_update
+
+led_wlan="$(get_dt_led wlan)"
+[ -n "$led_wlan" ] && ucidef_set_led_wlan "wifi_led" "wifi" "$led_wlan" "phy0tpt"
+
+case $board in
+belkin,f9k1109v1)
+	set_usb_led "$boardname:green:usb1"
+	ucidef_set_led_netdev "lan" "lan" "$boardname:blue:wps" "eth0"
+	;;
+edimax,br-6475nd)
+	set_wifi_led "$boardname:amber:wlan"
+	;;
+omnima,hpm)
+	ucidef_set_led_netdev "eth" "ETH" "$boardname:green:eth" "eth0"
+	set_wifi_led "$boardname:green:wifi"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/rt3883/base-files/etc/board.d/02_network b/target/linux/ramips/rt3883/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..519d46aae6
--- /dev/null
+++ b/target/linux/ramips/rt3883/base-files/etc/board.d/02_network
@@ -0,0 +1,100 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+ramips_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	asus,rt-n56u)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "8@eth0"
+		;;
+	belkin,f9k1109v1)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "5@eth0"
+		;;
+	dlink,dir-645)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
+		;;
+	edimax,br-6475nd)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "9@eth0"
+		;;
+	loewe,wmdr-143n|\
+	omnima,hpm)
+		ucidef_set_interface_lan "eth0"
+		;;
+	samsung,cy-swr1100)
+		ucidef_add_switch "switch0" \
+			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "9@eth0"
+		;;
+	sitecom,wlr-6000|\
+	trendnet,tew-691gr|\
+	trendnet,tew-692gr)
+		ucidef_add_switch "switch0" \
+			"1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "0@eth0"
+		;;
+	*)
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		;;
+	esac
+}
+
+ramips_setup_macs()
+{
+	local board="$1"
+	local lan_mac=""
+	local wan_mac=""
+	local label_mac=""
+
+	case $board in
+	asus,rt-n56u)
+		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
+		wan_mac=$(mtd_get_mac_binary factory 0x8004)
+		;;
+	belkin,f9k1109v1)
+		wan_mac=$(mtd_get_mac_ascii uboot-env HW_WAN_MAC)
+		lan_mac=$(mtd_get_mac_ascii uboot-env HW_LAN_MAC)
+		label_mac=$wan_mac
+		;;
+	dlink,dir-645)
+		lan_mac=$(mtd_get_mac_ascii nvram lanmac)
+		wan_mac=$(mtd_get_mac_ascii nvram wanmac)
+		;;
+	edimax,br-6475nd)
+		wan_mac=$(mtd_get_mac_binary devdata 0x7)
+		;;
+	samsung,cy-swr1100)
+		lan_mac=$(mtd_get_mac_ascii factory lanmac)
+		;;
+	sitecom,wlr-6000)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x8004)" 2)
+		;;
+	trendnet,tew-691gr)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 3)
+		;;
+	trendnet,tew-692gr)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
+		;;
+	*)
+		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 1)
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
+ramips_setup_interfaces $board
+ramips_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming b/target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming
new file mode 100644
index 0000000000..e2aef5f1f2
--- /dev/null
+++ b/target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming
@@ -0,0 +1,32 @@
+#!/bin/sh
+
+# Netgear WNCE2001 has does a checksum check on boot and goes into recovery
+# tftp mode when the check fails.  Initializing the JFFS2 partition triggers
+# this, so we make sure to zero checksum and size to be checksummed before
+# that happens, so this needs to run very early during boot.
+
+do_checksumming_disable() {
+	. /lib/functions.sh
+
+	local board=$(board_name)
+
+	case "$board" in
+	asus,rt-n56u)
+		echo "Board is ASUS RT-N56U, replacing uImage header..."
+		local firmware_mtd=$(find_mtd_part firmware)
+		local rootfs_mtd=$(find_mtd_part rootfs)
+		local rootfs_data_mtd=$(find_mtd_part rootfs_data)
+		local rootfs_len=$(grep \"rootfs\" /proc/mtd | awk -F' ' '{print "0x"$2}')
+		local rootfs_data_len=$(grep \"rootfs_data\" /proc/mtd | awk -F' ' '{print "0x"$2}')
+		local offset=$(echo "$rootfs_len $rootfs_data_len 0x40" | awk -F' ' '{printf "%i",$1-$2-$3}')
+		local signature=$(dd if=$rootfs_mtd skip=$offset bs=1 count=4 2>/dev/null | hexdump -v -n 4 -e '1/1 "%02x"')
+		if [ "$signature" = "27051956" ]; then
+			dd conv=notrunc if=$rootfs_mtd skip=$offset of=$firmware_mtd bs=1 count=64 2>/dev/null
+		fi
+	;;
+	esac
+
+	return 0
+}
+
+boot_hook_add preinit_main do_checksumming_disable
diff --git a/target/linux/ramips/rt3883/base-files/lib/upgrade/platform.sh b/target/linux/ramips/rt3883/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..786d57fc70
--- /dev/null
+++ b/target/linux/ramips/rt3883/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,20 @@
+#
+# Copyright (C) 2010 OpenWrt.org
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
