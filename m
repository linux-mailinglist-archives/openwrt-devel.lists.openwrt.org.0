Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE01A0969
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 10:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xn0UfCq7Li2Dv3diOvAlYFKvkXQ+3uORgWKD2iuPZuM=; b=QblW3Zpsa7L1dy
	4Ykiou6skFz9FB+B5+/xdHKgx3hkvgyL9ALUS7EMuYc59R1JlwL4jnUYGqm9vFYQwcT0/zuXrXlbR
	6IXi+WsTXMypuIfJppjjTOqkvm/nnsXPYxtVohaBWesVO1aKoVstQ1i+WIffOY6Qs1AHHRyInxFWd
	rpllKDzaXIee8e2zGjiJ48ecFOBBdxnOaGdgiBVQ9mEMRPPy7PMAQK/hsGmhw8VBbzDTnX85VvsmV
	fHVwmozKo+6lZNKycTLykCPdG6hQtzAS3ECHTS4FSu/YsOcuHy6qsJL+sfuZaLrFpUABK+RUMg7Qs
	Yvd7tJI5YHb3Pgl08NIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLjhg-0005qV-QW; Tue, 07 Apr 2020 08:35:28 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLjhZ-0005px-2M
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 08:35:23 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MKsf5-1jaNCr48Dd-00LFPc for <openwrt-devel@lists.openwrt.org>; Tue, 07
 Apr 2020 10:35:17 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 10:34:33 +0200
Message-Id: <20200407083433.1249-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:x19GIyOUf9R2702+5Pri6RBh8Er06H1yeGyDjsASg/7a0NeUySb
 op4GYBmaGg56K0AegILwlzo2ga/Mew1tqfMJWfWC792zqVhQb3aECH3qjxmNCdiEl85omT/
 ux1/fdtsl+Z9GRhq3ckOFCZG1gkYP/9WaspQcKw9Q1tOiRpXRAln1v/myjoROv9ufjxvKBT
 pU/4V32UkbZu3aVGDTmzQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vr0kLo4uI30=:xBaNfwCrts57IGVeOnvdcK
 Kq5kAvKU3SFYwvDDjYRvtcRAIQs1BIdM9BXOd8/gY3/9EdA2WDMCr7fAFHerGuSjQxrngZNlf
 3kaD3TFGthtnnvIyxe7w6gpMFPQnFdnTeImjvAyk+V68yH/c7vr162p8kZ7dGMLACGMuU0+CB
 hBjsvI1+Wf2ePVsu3K3Ni/o2VKyWJYBerJ78EzEO3Jd3Lce3YnTVGFxbRT7ZFsETyGCMjgkWm
 kvh58IXkunjh8nxEPlQa6s1WO4Vl/GHnBrlxq4iBRfcIstSRWQzUGawfd6sWf1SMAsC7Zerlk
 b6ZZztJzSepNe3X0XT3I5IPJBmuSVzC2EqurYYXREXkIjcOGhxVG55fEpUh2Zaj8w66uyBLLK
 CaNPLiC/kZ7U9DK92J2ZxdfiYTWWlY+lZeF/yXeoK9t2E5f819tm6hABcGvXgJ+3XjB8IDU2y
 HeFAgqc5FfKPbeWTUt7UQ3xiFswLVpz2S1xG+7no/cEHbwo7O7Fu3+1Qdrhp0KuEC5RYnAsJ/
 08Dimoy1GxKeaNpwh/9ABLKu6QHEWYjuUAieAjfD6QvSByw9u5PpOgCJMkvxqdaIu254W1+Jc
 X6b5wmLXOcuRLXijrkJD3pRDO5E5tIYM3rICmwLLG3ypq5P54wq1N2RgGVgw/9WTitTaVdPy1
 gbeRudjr17oJ838m/PBTNqCxTA2vJ1bE/t4/y6a4zZ0apYY3B3wAvFsFFdGj5p4zvi0VvOIgY
 f/HaEavbajwFqkC4XpLR6sMNLXQo3oyDLttmdrkWKzKhparASAOVzYZFJwO3ZK+Zas0EBQ4xf
 Jc7gjxJ3m4QahYB7xGsmP4TBLliFBhyXGutRk6DnQSi/m6fv1nyy9I4iVVdirvdslFJCNEr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_013521_407996_7F97B90F 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: harmonize naming scheme for
 Mikrotik
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

So far, image/device/board names for Mikrotik devices in mt7621 have
been used quite inconsistently.

This patch harmonizes the naming scheme by applying the same style
as used lately in ath79, i.e. using "RouterBOARD" as separate word
in the model name (instead of RB prefix for the number) and deriving
the board/device name from that (= make lower case and replace spaces
by hyphens).

This style has already been used for most the model/DEVICE_MODEL
variables in mt7621, so this is essentially just adjusting the remaining
variables to that.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 ... => mt7621_mikrotik_routerboard-750gr3.dts} |  6 +++---
 ...ts => mt7621_mikrotik_routerboard-m11g.dts} | 14 +++++++-------
 ...ts => mt7621_mikrotik_routerboard-m33g.dts} |  4 ++--
 target/linux/ramips/image/mt7621.mk            | 18 ++++++++++--------
 .../mt7621/base-files/etc/board.d/01_leds      |  2 +-
 .../mt7621/base-files/etc/board.d/02_network   | 10 +++++-----
 .../base-files/etc/board.d/03_gpio_switches    |  2 +-
 .../etc/uci-defaults/04_led_migration          | 10 +++++++++-
 .../mt7621/base-files/lib/upgrade/platform.sh  |  6 +++---
 9 files changed, 41 insertions(+), 31 deletions(-)
 rename target/linux/ramips/dts/{mt7621_mikrotik_rb750gr3.dts => mt7621_mikrotik_routerboard-750gr3.dts} (94%)
 rename target/linux/ramips/dts/{mt7621_mikrotik_rbm11g.dts => mt7621_mikrotik_routerboard-m11g.dts} (88%)
 rename target/linux/ramips/dts/{mt7621_mikrotik_rbm33g.dts => mt7621_mikrotik_routerboard-m33g.dts} (97%)

diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-750gr3.dts
similarity index 94%
rename from target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
rename to target/linux/ramips/dts/mt7621_mikrotik_routerboard-750gr3.dts
index e268b233d4..3f37155f24 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-750gr3.dts
@@ -7,7 +7,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	compatible = "mikrotik,rb750gr3", "mediatek,mt7621-soc";
+	compatible = "mikrotik,routerboard-750gr3", "mediatek,mt7621-soc";
 	model = "MikroTik RouterBOARD 750Gr3";
 
 	aliases {
@@ -25,13 +25,13 @@
 		compatible = "gpio-leds";
 
 		pwr {
-			label = "rb750gr3:blue:pwr";
+			label = "routerboard-750gr3:blue:pwr";
 			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
 
 		led_usr: usr {
-			label = "rb750gr3:green:usr";
+			label = "routerboard-750gr3:green:usr";
 			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
 		};
 	};
diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts
similarity index 88%
rename from target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
rename to target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts
index bcfce33a16..5b631da7c7 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m11g.dts
@@ -6,7 +6,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	compatible = "mikrotik,rbm11g", "mediatek,mt7621-soc";
+	compatible = "mikrotik,routerboard-m11g", "mediatek,mt7621-soc";
 	model = "MikroTik RouterBOARD M11G";
 
 	aliases {
@@ -24,32 +24,32 @@
 		compatible = "gpio-leds";
 
 		led_usr: usr {
-			label = "rbm11g:green:usr";
+			label = "routerboard-m11g:green:usr";
 			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
 		};
 
 		rssi0 {
-			label = "rbm11g:green:rssi0";
+			label = "routerboard-m11g:green:rssi0";
 			gpios = <&gpio 22 GPIO_ACTIVE_LOW>;
 		};
 
 		rssi1 {
-			label = "rbm11g:green:rssi1";
+			label = "routerboard-m11g:green:rssi1";
 			gpios = <&gpio 23 GPIO_ACTIVE_LOW>;
 		};
 
 		rssi2 {
-			label = "rbm11g:green:rssi2";
+			label = "routerboard-m11g:green:rssi2";
 			gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
 		};
 
 		rssi3 {
-			label = "rbm11g:green:rssi3";
+			label = "routerboard-m11g:green:rssi3";
 			gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
 		};
 
 		rssi4 {
-			label = "rbm11g:green:rssi4";
+			label = "routerboard-m11g:green:rssi4";
 			gpios = <&gpio 26 GPIO_ACTIVE_LOW>;
 		};
 	};
diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts
similarity index 97%
rename from target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
rename to target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts
index f7889bd68a..19e1a71e99 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_routerboard-m33g.dts
@@ -6,7 +6,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	compatible = "mikrotik,rbm33g", "mediatek,mt7621-soc";
+	compatible = "mikrotik,routerboard-m33g", "mediatek,mt7621-soc";
 	model = "MikroTik RouterBOARD M33G";
 
 	aliases {
@@ -24,7 +24,7 @@
 		compatible = "gpio-leds";
 
 		led_usr: usr {
-			label = "rbm33g:green:usr";
+			label = "routerboard-m33g:green:usr";
 			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
 		};
 	};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index cdae42f3e4..3821d7561c 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -486,26 +486,28 @@ define Device/MikroTik
 	check-size
 endef
 
-define Device/mikrotik_rb750gr3
+define Device/mikrotik_routerboard-750gr3
   $(Device/MikroTik)
-  DEVICE_MODEL := RouterBOARD RB750G
-  DEVICE_VARIANT := r3
+  DEVICE_MODEL := RouterBOARD 750Gr3
   DEVICE_PACKAGES += kmod-gpio-beeper
+  SUPPORTED_DEVICES += mikrotik,rb750gr3
 endef
-TARGET_DEVICES += mikrotik_rb750gr3
+TARGET_DEVICES += mikrotik_routerboard-750gr3
 
-define Device/mikrotik_rbm11g
+define Device/mikrotik_routerboard-m11g
   $(Device/MikroTik)
   DEVICE_MODEL := RouterBOARD M11G
+  SUPPORTED_DEVICES += mikrotik,rbm11g
   DEFAULT := n # disabled due to unknown port assignment
 endef
-TARGET_DEVICES += mikrotik_rbm11g
+TARGET_DEVICES += mikrotik_routerboard-m11g
 
-define Device/mikrotik_rbm33g
+define Device/mikrotik_routerboard-m33g
   $(Device/MikroTik)
   DEVICE_MODEL := RouterBOARD M33G
+  SUPPORTED_DEVICES += mikrotik,rbm33g
 endef
-TARGET_DEVICES += mikrotik_rbm33g
+TARGET_DEVICES += mikrotik_routerboard-m33g
 
 define Device/mqmaker_witi
   IMAGE_SIZE := 16064k
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
index 66739a7536..cc114da4ee 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
@@ -34,7 +34,7 @@ gnubee,gb-pc2)
 	ucidef_set_led_netdev "lan1" "lan1" "$boardname:green:lan1" "lan1"
 	ucidef_set_led_netdev "lan2" "lan2" "$boardname:green:lan2" "lan2"
 	;;
-mikrotik,rbm11g)
+mikrotik,routerboard-m11g)
 	ucidef_set_rssimon "wlan0" "200000" "1"
 	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0" "wlan0" "1" "100"
 	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW" "$boardname:green:rssi1" "wlan0" "20" "100"
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index d73305981f..3112e1ef6f 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -14,7 +14,7 @@ ramips_setup_interfaces()
 		;;
 	asiarf,ap7621-nv1|\
 	lenovo,newifi-d1|\
-	mikrotik,rbm33g|\
+	mikrotik,routerboard-m33g|\
 	xiaomi,mir3g|\
 	xiaomi,mir3g-v2)
 		ucidef_set_interfaces_lan_wan "lan1 lan2" "wan"
@@ -31,7 +31,7 @@ ramips_setup_interfaces()
 	linksys,re6500)
 		ucidef_set_interface_lan "lan1 lan2 lan3 lan4"
 		;;
-	mikrotik,rbm11g|\
+	mikrotik,routerboard-m11g|\
 	netgear,ex6150|\
 	thunder,timecloud|\
 	tplink,re350-v1|\
@@ -39,7 +39,7 @@ ramips_setup_interfaces()
 	ubnt,unifi-nanohd)
 		ucidef_set_interface_lan "lan"
 		;;
-	mikrotik,rb750gr3)
+	mikrotik,routerboard-750gr3)
 		ucidef_set_interfaces_lan_wan "lan2 lan3 lan4 lan5" "wan"
 		;;
 	ubiquiti,edgerouterx|\
@@ -89,8 +89,8 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
 		label_mac=$wan_mac
 		;;
-	mikrotik,rb750gr3|\
-	mikrotik,rbm33g)
+	mikrotik,routerboard-750gr3|\
+	mikrotik,routerboard-m33g)
 		label_mac=$(mtd_get_mac_binary hard_config 0x10)
 		;;
 	zbtlink,zbt-we1326|\
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches b/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
index d3bc85f827..511d9deed8 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/03_gpio_switches
@@ -7,7 +7,7 @@ board_config_update
 board=$(board_name)
 
 case "$board" in
-mikrotik,rb750gr3)
+mikrotik,routerboard-750gr3)
 	ucidef_add_gpio_switch "poe_passthrough" "PoE Passthrough" "17"
 	;;
 telco-electronics,x1)
diff --git a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
index e745c2c5d4..73140fd7d5 100644
--- a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
@@ -4,11 +4,19 @@
 . /lib/functions/migrations.sh
 
 board=$(board_name)
+boardonly="${board##*,}"
 
 case "$board" in
+mikrotik,routerboard-750gr3)
+	migrate_leds "^rb750gr3:=$boardonly:"
+mikrotik,routerboard-m11g)
+	migrate_leds "^rbm11g:=$boardonly:"
+mikrotik,routerboard-m33g)
+	migrate_leds "^rbm33g:=$boardonly:"
 netgear,wndr3700-v5)
-	migrate_leds "^wndr3700v5:=wndr3700-v5:"
+	migrate_leds "^wndr3700v5:=$boardonly:"
 	;;
+
 esac
 
 migrations_apply system
diff --git a/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh b/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
index ad10dcbdaa..afb3a52a82 100755
--- a/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
@@ -27,9 +27,9 @@ platform_do_upgrade() {
 			fi
 		}
 		;;
-	mikrotik,rb750gr3|\
-	mikrotik,rbm11g|\
-	mikrotik,rbm33g)
+	mikrotik,routerboard-750gr3|\
+	mikrotik,routerboard-m11g|\
+	mikrotik,routerboard-m33g)
 		[ -z "$(rootfs_type)" ] && mtd erase firmware
 		;;
 	asus,rt-ac65p|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
