Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27001F08DD
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 23:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LPnrS8UBDnTGw4xnZ8gvmBpNk6go6O0OKPpZCGuEnVY=; b=CWJTljPb4AyOvG
	wbC9tlXkR6zfn4KH5XLvA8ZszkNrbr6NZ3eTB0KmNmSwIMenFEdbMzud61sQS+ixICJLZqdh/Yv7s
	D9KF4vsf7+eITyYI8vEcSAslNr4VG/4vdDRfjkg6543p/BMm5orNe5tWyztWpejFtSFbbH9RjW6oV
	Y67JGl+AOUKm6cSeqGeeYzdOwA4BgGjteRSl77EUpZk+3T8xFEyI1EnKc0c9QR2hWHkYkM0hD2P7W
	hW1FC5B/BP++gAUlG6ixVg0AyN629pvyGnbFl19Hie/kziyeVggTRgi65XAwIPbrEo+XXMQijAp65
	7UpXWJcgv8Pod/wQFsjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhg9t-0001vF-EZ; Sat, 06 Jun 2020 21:15:17 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhg9Y-0001u2-SO
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 21:15:00 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MvavG-1iqX4F08JC-00sd0x for <openwrt-devel@lists.openwrt.org>; Sat, 06
 Jun 2020 23:14:53 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  6 Jun 2020 23:13:41 +0200
Message-Id: <20200606211341.44619-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:i+7boa2q0EmCX+mM+taoKOJhXdzzyqYF4UnKUxadNxOpdHG30sr
 hSDHHSex57Co89EZOe97pYI4T3uFlmlNtIiDlBm9cKGBjv+AaNN+ApW61sdVV0PZTXjZ4Oo
 waIe7dXg+0A8sV/Vh1KDsd+5n6kOERDdDrkU8nKAmhyyiomsr8uhXdjxvk6nqknaHjiaQI7
 c2eAcBDxKzOwkNHaF3zLA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kSRbGHFdd/Q=:UY04lxhQx6pDVdZaDKCCWX
 LshXTJHup+OTGmCGWcurHoxMcl1wNzyA7sdQqjZlwYo/fSoIfu1B5FeIQU8GiepzCXLx7GQ7J
 kBOlVxW+Q5p16iLXUnEO6K/IfBicsuBtO7cZqxazW46++504actLEo63++uiDfKOjyRLrvAST
 apreStbQ//q46Bd/mrEIgm3ijR8JuA4vRoWTUy7WeIMQQOTFdCXAqNT6WkSTpVHmK6buHlRxQ
 Ye2X7Jq3s59+8gJp6W8gK55ZMnpsj13u1wTLE7fEFumBRB90dMrGyTRqIs09V7K8DV3b4IO+e
 G4edRkVkGLUc7f6Jj0zB86C4oK5oPbnBkkvT9mvmZpC6VgDSxYR0d2RB8cJMl+Gaf2mFY8x1N
 42hnyZrYmXQrvsey4j080UH8o1SXwQTq5tuM6JO1UaF2JBCe9XGVJm0j2QvoyQOe8p/gBqGHk
 LjlEvaoAFQxChdu5SqEv23cD1a86fHqZ6h4oT4uOrnAsSbQ//wxGs1nQ7wjAqE9HTM+GodZyG
 /MvHss6SYvesD7QlBhyQJ0y2/QUAe3W2KKFklzXlDMfI7OQUNs2aU7HYtS/xXuqBLSmQgRgqB
 /FtldvHYRxfnatT8qeAF8svRxX9crhYink3LSYN6dMoG6bllnlyhQyzrJAbj1MIPEKqCK3SqN
 UUpeqpCHO8bOrbFVSjciwE3+4bNW2vpXsjCF1n2bQmpSDMrV+JrOU8HWDux2rivRqADHBJKak
 aPl6jYCKLgbaeG/DyrhiKltR9QnRj/jxKV8Srv7GrP6/gS5KOK6AFImttcl57kJdSCc+mnM68
 S+XYjxT2xWOCH0lhnFVBBXN/SX0wduZt6XT2DvO4yPmpakVYgRAdIWLdwFbW7YRn7VGsO+b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_141457_367176_0EF50D23 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] treewide: drop shebang from non-executable
 target files
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

This drops the shebang from all target files for /lib and
/etc/uci-defaults folders, as these are sourced and the shebang
is useless.

While at it, fix the executable flag on a few of these files.

This does not touch ar71xx, as this target is just used for
backporting now and applying cosmetic changes would just complicate
things.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../base-files/lib/preinit/05_set_iface_mac_apm821xx        | 2 --
 .../base-files/lib/preinit/05_set_preinit_iface_apm821xx    | 2 --
 target/linux/apm821xx/base-files/lib/preinit/79_move_config | 2 --
 target/linux/apm821xx/base-files/lib/upgrade/platform.sh    | 2 --
 target/linux/arc770/base-files/lib/arc.sh                   | 1 -
 .../linux/arc770/base-files/lib/preinit/01_preinit_arc.sh   | 6 ++----
 .../linux/archs38/base-files/lib/preinit/01_preinit_arc.sh  | 6 ++----
 target/linux/at91/base-files/lib/at91.sh                    | 1 -
 .../linux/at91/base-files/lib/preinit/01_preinit_do_at91.sh | 2 --
 .../ath25/base-files/lib/preinit/15_preinit_iface_atheros   | 2 --
 .../generic/base-files/etc/uci-defaults/04_led_migration    | 2 --
 .../generic/base-files/etc/uci-defaults/09_fix-checksum     | 1 -
 target/linux/ath79/generic/base-files/lib/functions/k2t.sh  | 1 -
 .../ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh  | 2 --
 .../mikrotik/base-files/etc/uci-defaults/04_led_migration   | 2 --
 .../base-files/lib/preinit/05_set_preinit_iface_brcm2708    | 1 -
 target/linux/bcm27xx/base-files/lib/preinit/79_move_config  | 1 -
 .../base-files/etc/uci-defaults/03_network_migration        | 1 -
 target/linux/bcm47xx/base-files/etc/uci-defaults/09_fix_crc | 2 --
 target/linux/bcm47xx/base-files/lib/preinit/01_sysinfo      | 2 --
 target/linux/bcm53xx/base-files/etc/uci-defaults/09_fix_crc | 2 --
 target/linux/bcm63xx/base-files/etc/uci-defaults/09_fix_crc | 2 --
 target/linux/cns3xxx/base-files/lib/cns3xxx.sh              | 2 --
 target/linux/cns3xxx/base-files/lib/preinit/01_sysinfo      | 2 --
 .../gemini/base-files/etc/uci-defaults/09_fix-checksum      | 1 -
 .../gemini/base-files/lib/preinit/05_set_ether_mac_gemini   | 2 --
 target/linux/imx6/base-files/lib/imx6.sh                    | 1 -
 target/linux/imx6/base-files/lib/preinit/01_sysinfo         | 2 --
 target/linux/imx6/base-files/lib/preinit/79_move_config     | 2 --
 .../base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh      | 2 --
 .../base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh  | 2 --
 target/linux/ipq806x/base-files/lib/upgrade/buffalo.sh      | 1 -
 .../lantiq/base-files/etc/uci-defaults/01_led_migration     | 1 -
 .../base-files/etc/uci-defaults/02_migrate_xdsl_iface       | 2 --
 .../base-files/lib/preinit/05_layerscape_reorder_eth        | 2 --
 target/linux/layerscape/base-files/lib/upgrade/platform.sh  | 1 -
 .../mediatek/base-files/lib/preinit/05_set_preinit_iface    | 2 --
 .../mediatek/base-files/lib/preinit/06_set_rps_sock_flow    | 2 --
 .../mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac | 1 -
 .../mediatek/mt7623/base-files/lib/preinit/79_move_config   | 1 -
 .../base-files/lib/preinit/05_set_preinit_iface_mpc85xx     | 1 -
 target/linux/mvebu/base-files/lib/preinit/79_move_config    | 1 -
 .../mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless  | 1 -
 .../mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan  | 1 -
 target/linux/octeon/base-files/lib/preinit/79_move_config   | 1 -
 target/linux/omap/base-files/lib/preinit/79_move_config     | 1 -
 target/linux/pistachio/base-files/lib/upgrade/platform.sh   | 1 -
 .../ramips/base-files/etc/uci-defaults/09_fix-checksum      | 1 -
 .../mt7620/base-files/etc/uci-defaults/04_led_migration     | 2 --
 .../mt7621/base-files/etc/uci-defaults/04_led_migration     | 2 --
 .../base-files/lib/preinit/07_mt7621_bringup_dsa_master     | 2 --
 .../mt76x8/base-files/etc/uci-defaults/04_led_migration     | 2 --
 .../rt305x/base-files/etc/uci-defaults/04_led_migration     | 2 --
 .../rt305x/base-files/lib/preinit/04_handle_checksumming    | 2 --
 .../rt3883/base-files/lib/preinit/04_handle_checksumming    | 2 --
 target/linux/x86/64/base-files/lib/preinit/45_mount_xenfs   | 1 -
 target/linux/x86/base-files/lib/preinit/02_load_x86_ucode   | 1 -
 target/linux/x86/base-files/lib/preinit/15_essential_fs_x86 | 1 -
 target/linux/x86/base-files/lib/preinit/79_move_config      | 1 -
 .../linux/x86/base-files/lib/preinit/81_upgrade_bootloader  | 2 --
 .../linux/x86/generic/base-files/lib/preinit/45_mount_xenfs | 1 -
 61 files changed, 4 insertions(+), 99 deletions(-)
 mode change 100755 => 100644 target/linux/apm821xx/base-files/lib/upgrade/platform.sh
 mode change 100755 => 100644 target/linux/at91/base-files/lib/at91.sh
 mode change 100755 => 100644 target/linux/ath79/generic/base-files/lib/functions/k2t.sh
 mode change 100755 => 100644 target/linux/imx6/base-files/lib/imx6.sh
 mode change 100755 => 100644 target/linux/pistachio/base-files/lib/upgrade/platform.sh

diff --git a/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx b/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx
index 11955dd5a2..1f8c1c29fb 100644
--- a/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx
+++ b/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 preinit_set_mac_address() {
 	. /lib/functions.sh
 
diff --git a/target/linux/apm821xx/base-files/lib/preinit/05_set_preinit_iface_apm821xx b/target/linux/apm821xx/base-files/lib/preinit/05_set_preinit_iface_apm821xx
index a15a055a25..eabafc010b 100644
--- a/target/linux/apm821xx/base-files/lib/preinit/05_set_preinit_iface_apm821xx
+++ b/target/linux/apm821xx/base-files/lib/preinit/05_set_preinit_iface_apm821xx
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 apm821xx_set_preinit_iface() {
 	ifname=eth0
 }
diff --git a/target/linux/apm821xx/base-files/lib/preinit/79_move_config b/target/linux/apm821xx/base-files/lib/preinit/79_move_config
index 37d35b663b..1796e9f5f4 100644
--- a/target/linux/apm821xx/base-files/lib/preinit/79_move_config
+++ b/target/linux/apm821xx/base-files/lib/preinit/79_move_config
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 BOOTPART=/dev/sda1
 
 move_config() {
diff --git a/target/linux/apm821xx/base-files/lib/upgrade/platform.sh b/target/linux/apm821xx/base-files/lib/upgrade/platform.sh
old mode 100755
new mode 100644
index 32e87513f3..cc095b36a1
--- a/target/linux/apm821xx/base-files/lib/upgrade/platform.sh
+++ b/target/linux/apm821xx/base-files/lib/upgrade/platform.sh
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 PART_NAME=firmware
 REQUIRE_IMAGE_METADATA=1
 
diff --git a/target/linux/arc770/base-files/lib/arc.sh b/target/linux/arc770/base-files/lib/arc.sh
index 185aeedb2d..3ad0b33678 100644
--- a/target/linux/arc770/base-files/lib/arc.sh
+++ b/target/linux/arc770/base-files/lib/arc.sh
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2015 OpenWrt.org
 #
diff --git a/target/linux/arc770/base-files/lib/preinit/01_preinit_arc.sh b/target/linux/arc770/base-files/lib/preinit/01_preinit_arc.sh
index 192c91bf2d..c5cd905828 100644
--- a/target/linux/arc770/base-files/lib/preinit/01_preinit_arc.sh
+++ b/target/linux/arc770/base-files/lib/preinit/01_preinit_arc.sh
@@ -1,9 +1,7 @@
-#!/bin/sh
-
 do_arc() {
-        . /lib/arc.sh
+	. /lib/arc.sh
 
-        arc_board_detect
+	arc_board_detect
 }
 
 boot_hook_add preinit_main do_arc
diff --git a/target/linux/archs38/base-files/lib/preinit/01_preinit_arc.sh b/target/linux/archs38/base-files/lib/preinit/01_preinit_arc.sh
index 192c91bf2d..c5cd905828 100644
--- a/target/linux/archs38/base-files/lib/preinit/01_preinit_arc.sh
+++ b/target/linux/archs38/base-files/lib/preinit/01_preinit_arc.sh
@@ -1,9 +1,7 @@
-#!/bin/sh
-
 do_arc() {
-        . /lib/arc.sh
+	. /lib/arc.sh
 
-        arc_board_detect
+	arc_board_detect
 }
 
 boot_hook_add preinit_main do_arc
diff --git a/target/linux/at91/base-files/lib/at91.sh b/target/linux/at91/base-files/lib/at91.sh
old mode 100755
new mode 100644
index ea38925ea0..19a63e1200
--- a/target/linux/at91/base-files/lib/at91.sh
+++ b/target/linux/at91/base-files/lib/at91.sh
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2014 OpenWrt.org
 #
diff --git a/target/linux/at91/base-files/lib/preinit/01_preinit_do_at91.sh b/target/linux/at91/base-files/lib/preinit/01_preinit_do_at91.sh
index 5c981016a4..c812329568 100644
--- a/target/linux/at91/base-files/lib/preinit/01_preinit_do_at91.sh
+++ b/target/linux/at91/base-files/lib/preinit/01_preinit_do_at91.sh
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 do_at91() {
 	. /lib/at91.sh
 
diff --git a/target/linux/ath25/base-files/lib/preinit/15_preinit_iface_atheros b/target/linux/ath25/base-files/lib/preinit/15_preinit_iface_atheros
index bd46cb9084..6b77f393a9 100644
--- a/target/linux/ath25/base-files/lib/preinit/15_preinit_iface_atheros
+++ b/target/linux/ath25/base-files/lib/preinit/15_preinit_iface_atheros
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 # reset button only supported on ar5315+ at the moment
 preinit_ip() {
 	if [ -z "$pi_ifname" ]; then
diff --git a/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
index cffc2e6c4b..1c7ecba5f8 100644
--- a/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/generic/base-files/etc/uci-defaults/04_led_migration
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 . /lib/functions/migrations.sh
 
diff --git a/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum b/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
index 22c9483e74..9c1566a8df 100644
--- a/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
+++ b/target/linux/ath79/generic/base-files/etc/uci-defaults/09_fix-checksum
@@ -1,4 +1,3 @@
-#!/bin/sh
 . /lib/functions.sh
 
 fix_seama_header() {
diff --git a/target/linux/ath79/generic/base-files/lib/functions/k2t.sh b/target/linux/ath79/generic/base-files/lib/functions/k2t.sh
old mode 100755
new mode 100644
index 1158df818b..f16734fa64
--- a/target/linux/ath79/generic/base-files/lib/functions/k2t.sh
+++ b/target/linux/ath79/generic/base-files/lib/functions/k2t.sh
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2018 Weijie Gao <hackpascal@gmail.com>
 #
diff --git a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
index da1583a825..dacf4fba5d 100644
--- a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
+++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 
 preinit_set_mac_address() {
diff --git a/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration b/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration
index 1a7b371a99..c12a7ac02c 100644
--- a/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ath79/mikrotik/base-files/etc/uci-defaults/04_led_migration
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 . /lib/functions/migrations.sh
 
diff --git a/target/linux/bcm27xx/base-files/lib/preinit/05_set_preinit_iface_brcm2708 b/target/linux/bcm27xx/base-files/lib/preinit/05_set_preinit_iface_brcm2708
index de221ae7ad..269465e301 100644
--- a/target/linux/bcm27xx/base-files/lib/preinit/05_set_preinit_iface_brcm2708
+++ b/target/linux/bcm27xx/base-files/lib/preinit/05_set_preinit_iface_brcm2708
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2015-2016 OpenWrt.org
 # Copyright (C) 2017 LEDE project
 
diff --git a/target/linux/bcm27xx/base-files/lib/preinit/79_move_config b/target/linux/bcm27xx/base-files/lib/preinit/79_move_config
index b8738b645e..c9fb59a64f 100644
--- a/target/linux/bcm27xx/base-files/lib/preinit/79_move_config
+++ b/target/linux/bcm27xx/base-files/lib/preinit/79_move_config
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2015 OpenWrt.org
 
 . /lib/upgrade/common.sh
diff --git a/target/linux/bcm47xx/base-files/etc/uci-defaults/03_network_migration b/target/linux/bcm47xx/base-files/etc/uci-defaults/03_network_migration
index e430b41d48..3b380e047a 100644
--- a/target/linux/bcm47xx/base-files/etc/uci-defaults/03_network_migration
+++ b/target/linux/bcm47xx/base-files/etc/uci-defaults/03_network_migration
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2014-2015 OpenWrt.org
 #
diff --git a/target/linux/bcm47xx/base-files/etc/uci-defaults/09_fix_crc b/target/linux/bcm47xx/base-files/etc/uci-defaults/09_fix_crc
index 346a532998..e9104a51cb 100644
--- a/target/linux/bcm47xx/base-files/etc/uci-defaults/09_fix_crc
+++ b/target/linux/bcm47xx/base-files/etc/uci-defaults/09_fix_crc
@@ -1,7 +1,5 @@
-#!/bin/sh
 #
 # Copyright (C) 2007 OpenWrt.org
 #
-#
 
 mtd fixtrx firmware
diff --git a/target/linux/bcm47xx/base-files/lib/preinit/01_sysinfo b/target/linux/bcm47xx/base-files/lib/preinit/01_sysinfo
index 8c7bd399da..7cd0da5aab 100644
--- a/target/linux/bcm47xx/base-files/lib/preinit/01_sysinfo
+++ b/target/linux/bcm47xx/base-files/lib/preinit/01_sysinfo
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 do_sysinfo_bcm47xx() {
 	local boardtype="$(nvram get boardtype)"
 	local boardnum="$(nvram get boardnum)"
diff --git a/target/linux/bcm53xx/base-files/etc/uci-defaults/09_fix_crc b/target/linux/bcm53xx/base-files/etc/uci-defaults/09_fix_crc
index 16793ffa6b..eae84bb771 100644
--- a/target/linux/bcm53xx/base-files/etc/uci-defaults/09_fix_crc
+++ b/target/linux/bcm53xx/base-files/etc/uci-defaults/09_fix_crc
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 kernel_size=$(sed -n 's/mtd[0-9]*: \([0-9a-f]*\).*"\(kernel\|linux\)".*/\1/p' /proc/mtd)
 
 mtd ${kernel_size:+-c 0x$kernel_size} fixtrx firmware && exit 0
diff --git a/target/linux/bcm63xx/base-files/etc/uci-defaults/09_fix_crc b/target/linux/bcm63xx/base-files/etc/uci-defaults/09_fix_crc
index fdb5ddec72..6c61f7d38c 100644
--- a/target/linux/bcm63xx/base-files/etc/uci-defaults/09_fix_crc
+++ b/target/linux/bcm63xx/base-files/etc/uci-defaults/09_fix_crc
@@ -1,8 +1,6 @@
-#!/bin/sh
 #
 # Copyright (C) 2007 OpenWrt.org
 #
-#
 
 . /lib/functions.sh
 
diff --git a/target/linux/cns3xxx/base-files/lib/cns3xxx.sh b/target/linux/cns3xxx/base-files/lib/cns3xxx.sh
index 877f9f8749..ec694c4f7a 100644
--- a/target/linux/cns3xxx/base-files/lib/cns3xxx.sh
+++ b/target/linux/cns3xxx/base-files/lib/cns3xxx.sh
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 CNS3XXX_BOARD_NAME=
 CNS3XXX_MODEL=
 
diff --git a/target/linux/cns3xxx/base-files/lib/preinit/01_sysinfo b/target/linux/cns3xxx/base-files/lib/preinit/01_sysinfo
index cc7b5551e9..155fee42e0 100644
--- a/target/linux/cns3xxx/base-files/lib/preinit/01_sysinfo
+++ b/target/linux/cns3xxx/base-files/lib/preinit/01_sysinfo
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 do_sysinfo_cns3xxx() {
 	. /lib/cns3xxx.sh
 
diff --git a/target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum b/target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum
index 5f79d1a65c..3acf20db5f 100644
--- a/target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum
+++ b/target/linux/gemini/base-files/etc/uci-defaults/09_fix-checksum
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2019 OpenWrt.org
 #
diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index 3712975fa8..07edd85b52 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 . /lib/functions/system.sh
 
diff --git a/target/linux/imx6/base-files/lib/imx6.sh b/target/linux/imx6/base-files/lib/imx6.sh
old mode 100755
new mode 100644
index 63fff0f3c4..a9fd0cad94
--- a/target/linux/imx6/base-files/lib/imx6.sh
+++ b/target/linux/imx6/base-files/lib/imx6.sh
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2010-2013 OpenWrt.org
 #
diff --git a/target/linux/imx6/base-files/lib/preinit/01_sysinfo b/target/linux/imx6/base-files/lib/preinit/01_sysinfo
index 0a91aed010..73f9e596b2 100644
--- a/target/linux/imx6/base-files/lib/preinit/01_sysinfo
+++ b/target/linux/imx6/base-files/lib/preinit/01_sysinfo
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 do_sysinfo_imx6() {
 	. /lib/imx6.sh
 
diff --git a/target/linux/imx6/base-files/lib/preinit/79_move_config b/target/linux/imx6/base-files/lib/preinit/79_move_config
index bdf397c4fc..7e30292049 100644
--- a/target/linux/imx6/base-files/lib/preinit/79_move_config
+++ b/target/linux/imx6/base-files/lib/preinit/79_move_config
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/imx6.sh
 . /lib/functions.sh
 . /lib/upgrade/common.sh
diff --git a/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh b/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh
index f9ec8ab055..4d8113698e 100644
--- a/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh
+++ b/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 
 preinit_set_mac_address() {
diff --git a/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh b/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh
index 42667d2dfb..50c289df31 100644
--- a/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh
+++ b/target/linux/ipq40xx/base-files/lib/preinit/06_set_preinit_iface_ipq40xx.sh
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 set_preinit_iface() {
 	. /lib/functions.sh
 
diff --git a/target/linux/ipq806x/base-files/lib/upgrade/buffalo.sh b/target/linux/ipq806x/base-files/lib/upgrade/buffalo.sh
index 77fa65e60e..6a51de4ee3 100644
--- a/target/linux/ipq806x/base-files/lib/upgrade/buffalo.sh
+++ b/target/linux/ipq806x/base-files/lib/upgrade/buffalo.sh
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2018 OpenWrt.org
 #
 
diff --git a/target/linux/lantiq/base-files/etc/uci-defaults/01_led_migration b/target/linux/lantiq/base-files/etc/uci-defaults/01_led_migration
index b1e7be6bd2..961e39ee61 100644
--- a/target/linux/lantiq/base-files/etc/uci-defaults/01_led_migration
+++ b/target/linux/lantiq/base-files/etc/uci-defaults/01_led_migration
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2013 OpenWrt.org
 #
diff --git a/target/linux/lantiq/base-files/etc/uci-defaults/02_migrate_xdsl_iface b/target/linux/lantiq/base-files/etc/uci-defaults/02_migrate_xdsl_iface
index dd57ca6d39..2a87d0df70 100644
--- a/target/linux/lantiq/base-files/etc/uci-defaults/02_migrate_xdsl_iface
+++ b/target/linux/lantiq/base-files/etc/uci-defaults/02_migrate_xdsl_iface
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 
 IFNAME_CHANGED=0
diff --git a/target/linux/layerscape/base-files/lib/preinit/05_layerscape_reorder_eth b/target/linux/layerscape/base-files/lib/preinit/05_layerscape_reorder_eth
index c4feec42bc..141aac8a6d 100644
--- a/target/linux/layerscape/base-files/lib/preinit/05_layerscape_reorder_eth
+++ b/target/linux/layerscape/base-files/lib/preinit/05_layerscape_reorder_eth
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 reorder_layerscape_interfaces() {
 	if [ ! -f /tmp/sysinfo/board_name ]; then
 		echo "No board name found, not doing reorder_layerscape_interfaces"
diff --git a/target/linux/layerscape/base-files/lib/upgrade/platform.sh b/target/linux/layerscape/base-files/lib/upgrade/platform.sh
index 013023295b..1e1e28987b 100644
--- a/target/linux/layerscape/base-files/lib/upgrade/platform.sh
+++ b/target/linux/layerscape/base-files/lib/upgrade/platform.sh
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright 2015-2019 Traverse Technologies
 #
diff --git a/target/linux/mediatek/base-files/lib/preinit/05_set_preinit_iface b/target/linux/mediatek/base-files/lib/preinit/05_set_preinit_iface
index eb0bed8607..8d282818c6 100644
--- a/target/linux/mediatek/base-files/lib/preinit/05_set_preinit_iface
+++ b/target/linux/mediatek/base-files/lib/preinit/05_set_preinit_iface
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 set_preinit_iface() {
 	ifconfig eth0 up
 	ifname=lan1
diff --git a/target/linux/mediatek/base-files/lib/preinit/06_set_rps_sock_flow b/target/linux/mediatek/base-files/lib/preinit/06_set_rps_sock_flow
index 9a84ff4bf5..49b1dd1ca6 100644
--- a/target/linux/mediatek/base-files/lib/preinit/06_set_rps_sock_flow
+++ b/target/linux/mediatek/base-files/lib/preinit/06_set_rps_sock_flow
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 set_rps_sock_flow() {
 	echo 1024 > /proc/sys/net/core/rps_sock_flow_entries
 }
diff --git a/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac b/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
index 7a73a2d84d..f64458526f 100644
--- a/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
+++ b/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2018 OpenWrt.org
 
 RECOVERY_PART=/dev/mmcblk0p1
diff --git a/target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config b/target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config
index 617336583e..895240a3bc 100644
--- a/target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config
+++ b/target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2015 OpenWrt.org
 
 . /lib/upgrade/common.sh
diff --git a/target/linux/mpc85xx/base-files/lib/preinit/05_set_preinit_iface_mpc85xx b/target/linux/mpc85xx/base-files/lib/preinit/05_set_preinit_iface_mpc85xx
index 748a87490e..be9325589f 100644
--- a/target/linux/mpc85xx/base-files/lib/preinit/05_set_preinit_iface_mpc85xx
+++ b/target/linux/mpc85xx/base-files/lib/preinit/05_set_preinit_iface_mpc85xx
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2013 OpenWrt.org
 #
diff --git a/target/linux/mvebu/base-files/lib/preinit/79_move_config b/target/linux/mvebu/base-files/lib/preinit/79_move_config
index 195be0e137..e63fcf9a6a 100644
--- a/target/linux/mvebu/base-files/lib/preinit/79_move_config
+++ b/target/linux/mvebu/base-files/lib/preinit/79_move_config
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2015 OpenWrt.org
 
 . /lib/functions.sh
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
index 79c74626f5..91bcbba253 100644
--- a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
+++ b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2015 OpenWrt.org
 #
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
index 29c447d840..3ce9b68523 100644
--- a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
+++ b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2017 LEDE-Project.org
 #
diff --git a/target/linux/octeon/base-files/lib/preinit/79_move_config b/target/linux/octeon/base-files/lib/preinit/79_move_config
index a4130e26d8..866bef495b 100644
--- a/target/linux/octeon/base-files/lib/preinit/79_move_config
+++ b/target/linux/octeon/base-files/lib/preinit/79_move_config
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2014 OpenWrt.org
 
 move_config() {
diff --git a/target/linux/omap/base-files/lib/preinit/79_move_config b/target/linux/omap/base-files/lib/preinit/79_move_config
index 74caee8a8a..f5bbb47310 100644
--- a/target/linux/omap/base-files/lib/preinit/79_move_config
+++ b/target/linux/omap/base-files/lib/preinit/79_move_config
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2012-2015 OpenWrt.org
 
 move_config() {
diff --git a/target/linux/pistachio/base-files/lib/upgrade/platform.sh b/target/linux/pistachio/base-files/lib/upgrade/platform.sh
old mode 100755
new mode 100644
index 174c321d38..16ab341fb5
--- a/target/linux/pistachio/base-files/lib/upgrade/platform.sh
+++ b/target/linux/pistachio/base-files/lib/upgrade/platform.sh
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2017 OpenWrt.org
 #
diff --git a/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum b/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
index 482659a2f6..f2408f8f3e 100644
--- a/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
+++ b/target/linux/ramips/base-files/etc/uci-defaults/09_fix-checksum
@@ -1,4 +1,3 @@
-#!/bin/sh
 #
 # Copyright (C) 2012 OpenWrt.org
 #
diff --git a/target/linux/ramips/mt7620/base-files/etc/uci-defaults/04_led_migration b/target/linux/ramips/mt7620/base-files/etc/uci-defaults/04_led_migration
index ba1a0df7e6..16ccd5cfef 100644
--- a/target/linux/ramips/mt7620/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ramips/mt7620/base-files/etc/uci-defaults/04_led_migration
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 . /lib/functions/migrations.sh
 
diff --git a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
index 1248dcec0f..f9cf3eae0a 100644
--- a/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ramips/mt7621/base-files/etc/uci-defaults/04_led_migration
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 . /lib/functions/migrations.sh
 
diff --git a/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master b/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master
index b8ebcc3f41..9a0da1716d 100644
--- a/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master
+++ b/target/linux/ramips/mt7621/base-files/lib/preinit/07_mt7621_bringup_dsa_master
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 
 mt7621_bringup_dsa_master() {
diff --git a/target/linux/ramips/mt76x8/base-files/etc/uci-defaults/04_led_migration b/target/linux/ramips/mt76x8/base-files/etc/uci-defaults/04_led_migration
index 3f9f615c10..44815b2ddc 100644
--- a/target/linux/ramips/mt76x8/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ramips/mt76x8/base-files/etc/uci-defaults/04_led_migration
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 . /lib/functions/migrations.sh
 
diff --git a/target/linux/ramips/rt305x/base-files/etc/uci-defaults/04_led_migration b/target/linux/ramips/rt305x/base-files/etc/uci-defaults/04_led_migration
index b1a94bf81b..1009154cac 100644
--- a/target/linux/ramips/rt305x/base-files/etc/uci-defaults/04_led_migration
+++ b/target/linux/ramips/rt305x/base-files/etc/uci-defaults/04_led_migration
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 . /lib/functions.sh
 . /lib/functions/migrations.sh
 
diff --git a/target/linux/ramips/rt305x/base-files/lib/preinit/04_handle_checksumming b/target/linux/ramips/rt305x/base-files/lib/preinit/04_handle_checksumming
index 9a2361d057..e2e08937a3 100644
--- a/target/linux/ramips/rt305x/base-files/lib/preinit/04_handle_checksumming
+++ b/target/linux/ramips/rt305x/base-files/lib/preinit/04_handle_checksumming
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 # Netgear WNCE2001 has does a checksum check on boot and goes into recovery
 # tftp mode when the check fails.  Initializing the JFFS2 partition triggers
 # this, so we make sure to zero checksum and size to be checksummed before
diff --git a/target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming b/target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming
index e2aef5f1f2..62927ff974 100644
--- a/target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming
+++ b/target/linux/ramips/rt3883/base-files/lib/preinit/04_handle_checksumming
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 # Netgear WNCE2001 has does a checksum check on boot and goes into recovery
 # tftp mode when the check fails.  Initializing the JFFS2 partition triggers
 # this, so we make sure to zero checksum and size to be checksummed before
diff --git a/target/linux/x86/64/base-files/lib/preinit/45_mount_xenfs b/target/linux/x86/64/base-files/lib/preinit/45_mount_xenfs
index ac484f6210..e57e354102 100644
--- a/target/linux/x86/64/base-files/lib/preinit/45_mount_xenfs
+++ b/target/linux/x86/64/base-files/lib/preinit/45_mount_xenfs
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2010 OpenWrt.org
 
 do_mount_xenfs() {
diff --git a/target/linux/x86/base-files/lib/preinit/02_load_x86_ucode b/target/linux/x86/base-files/lib/preinit/02_load_x86_ucode
index fb309c75c1..9db3b58ada 100644
--- a/target/linux/x86/base-files/lib/preinit/02_load_x86_ucode
+++ b/target/linux/x86/base-files/lib/preinit/02_load_x86_ucode
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2018 OpenWrt.org
 
 do_load_x86_ucode() {
diff --git a/target/linux/x86/base-files/lib/preinit/15_essential_fs_x86 b/target/linux/x86/base-files/lib/preinit/15_essential_fs_x86
index 5d5453093f..78501d4956 100644
--- a/target/linux/x86/base-files/lib/preinit/15_essential_fs_x86
+++ b/target/linux/x86/base-files/lib/preinit/15_essential_fs_x86
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2006-2010 OpenWrt.org
 # Copyright (C) 2010 Vertical Communications
 
diff --git a/target/linux/x86/base-files/lib/preinit/79_move_config b/target/linux/x86/base-files/lib/preinit/79_move_config
index 338398c947..444cd75e44 100644
--- a/target/linux/x86/base-files/lib/preinit/79_move_config
+++ b/target/linux/x86/base-files/lib/preinit/79_move_config
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2012-2015 OpenWrt.org
 
 move_config() {
diff --git a/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader b/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader
index 1379c9b2cb..42f04d76a7 100644
--- a/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader
+++ b/target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader
@@ -1,5 +1,3 @@
-#!/bin/sh
-
 upgrade_bootloader() {
 	local diskdev
 
diff --git a/target/linux/x86/generic/base-files/lib/preinit/45_mount_xenfs b/target/linux/x86/generic/base-files/lib/preinit/45_mount_xenfs
index ac484f6210..e57e354102 100644
--- a/target/linux/x86/generic/base-files/lib/preinit/45_mount_xenfs
+++ b/target/linux/x86/generic/base-files/lib/preinit/45_mount_xenfs
@@ -1,4 +1,3 @@
-#!/bin/sh
 # Copyright (C) 2010 OpenWrt.org
 
 do_mount_xenfs() {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
