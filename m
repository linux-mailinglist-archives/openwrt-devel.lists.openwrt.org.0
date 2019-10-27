Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CBEE62B1
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 14:41:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BCzo0g1hS0RDZLRGoNDYujVvPT0RT7WQzWiGCYbM6T8=; b=kdO85JnyvJ8tET
	53XLDtcOdWcTmAfdksAEnGZHI48tTUz0OkElygSBCaU+rV4xCskPIUcVltJQ4DV++6h7u83vpJYlb
	QxnBoTfAua3RUtcfY6B/DlMJeCBBK2Qflpc5JcNolKaPdqFS+aB6IDN+p93VAkZLzAl3nOn3bmEGj
	Jix1/qYWoR6VwYsEfGG2BrCHB1Bw9tW8zyEZ3oJeK7c6iOYasG1rHhzpAEspOzIZQ8qiQye5/mfhK
	g0PPjVCtNr1thB/ouxXpSFxc7iTpUKKp3wEO2NmwfTLp405NtEwbw8LvdR2SLgYuaYqKMB6r3oBpz
	1GO3QdjM02uRDZXgEDow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOimu-0005E9-4c; Sun, 27 Oct 2019 13:40:56 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOiml-0005Ci-UQ
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 13:40:50 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MIdW9-1iAA3y3TBl-00EaTt for <openwrt-devel@lists.openwrt.org>; Sun, 27
 Oct 2019 14:40:43 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 14:40:37 +0100
Message-Id: <20191027134037.5476-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:p2qWPznCynCOM8D3vnZSq5kylnj6xCeoMbIPOwCjJtjRyU0L2OC
 smUF1CbrnopnAJ/XOGHTLliSjmcm+0MwntVnQOaTA85h7M3681WCA5zMRjZZpAdwPQC1PNF
 D05i2bu3PuO/T1ghvZEBhr27asGh8t65/KjCfx4fckixA0V54GBVmR2xuJoHtBkJ3mKBjNu
 S8y+ojOWgmhnxhjcJcOnQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qN3qWOUJ+SY=:O6zmmThSKun8+XXcyY51ix
 I0wiVluZ7Xorv7oqa/f7vzT+/rJ5aNYLW/O5W1I5ZfFuWaHqGOmrTHF4lHkS3y3O3ax8qXsQF
 j3oyUWGEh59YTxey50Kx2YYqMVldIo+TPxj0zauaioOqFFcUgCgQmo6WhpXaxwkCkD+cGF1B1
 scBc3R20Pg+MSuiwXRK6YvoLCiCsrGYZ5FKZPBkXh+SKg3BOMSFie4hn+KZY8tE6oIIBmdqGC
 E0NevhocF6b2QMgQ5sqsZ1euzieEn5rNeLebMn5+c7lh3aCUbxTAyy4lJXVdV9pEfYcvlPm0Q
 tnyV6gFKkW4jZNcyUI+QG93r4+vCVBEcYUrKVgeqnuEhBpD7988UBvGvaytVXEJ3g/v2MpljH
 kmz6Cn8TL9pFobRpGmzeViQAR/roV9SJ+bjii7iWXN8Qgx0Zt1BQVxs41Hvbgkmb3DaATsR70
 EWInRvQ40YWxoPZt8jmI3LuG+vQedrNu8FKl+4qGUaA/DhhONBbbFovsEIFGTzg9luJ3+xULE
 ng239C1dwE3OGLiVih+bFUkp11voygngqhUHZrnKgIQIClEJBPOYcUdfSzsvpRCK4I1dRY9iC
 FtAr0765DDFiKGBbEvEIuLNil6+AofTRgxx3ARCor5JbDPsTdiScacWRxhFDIUpzMgBI8Gbk6
 X4rlRJqWzHCwITqB83EalaYTOrEhg/JRIrPwoufW5dFfzR4kmMbX0WltBmR/jb5HEQGRHQfaQ
 o153XX8yO98T4XWx1v5svI+n2DzfpmMzG+oSQnOAneIAdnAqunDETrcF1SXAx2nH6beXDgPMF
 X92yoaDpzb9fQ6CfjU9/sRD4EFcidu9kKeBplhkenlE9Rt/BCGcx5YQPoL1FKqFSO6Z0bG8dd
 m6AiR1U1HzFeQ+ACyeudSu06Z5GZlgA2r73+HbYdI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_064048_276196_E7A7C9B1 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix base-files for zyxel,
 nbg6716 after split
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

Due to rebase of the base-files split patch after adding support
for zyxel,nbg6716, its base-files were added to the generic
subtarget, although the device belongs to nand.

This moves the definitions to their proper locations.

Fixes: 0130022baec0 ("ath79: split base-files into subtargets")

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is a quick fix. Expect less care than usual.
---
 .../generic/base-files/etc/board.d/02_network |  8 -------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  4 ----
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  4 ----
 .../base-files/lib/upgrade/platform.sh        |  3 ---
 .../nand/base-files/etc/board.d/02_network    |  8 +++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 21 ++++++++++++++++++
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 22 +++++++++++++++++++
 .../nand/base-files/lib/upgrade/platform.sh   |  3 +++
 8 files changed, 54 insertions(+), 19 deletions(-)
 create mode 100644 target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
 create mode 100644 target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata

diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index 7507c6584c..90f622b262 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -261,10 +261,6 @@ ath79_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0@eth0" "3:lan:1" "4:lan:2"
 		;;
-	zyxel,nbg6716)
-		ucidef_add_switch "switch0" \
-			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth1"
-		;;
 	*)
 		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		;;
@@ -399,10 +395,6 @@ ath79_setup_macs()
 	wd,mynet-wifi-rangeextender)
 		lan_mac=$(nvram get et0macaddr)
 		;;
-	zyxel,nbg6716)
-		lan_mac=$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
-		wan_mac=$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
-		;;
 	esac
 
 	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index f1bc6c3c22..4b07660f02 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -47,10 +47,6 @@ case "$FIRMWARE" in
 		caldata_extract "radiocfg" 0x1000 0x440
 		ath9k_patch_mac $(mtd_get_mac_ascii devdata "wlan24mac")
 		;;
-	zyxel,nbg6716)
-		caldata_extract "art" 0x1000 0x440
-		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env ethaddr)
-		;;
 	*)
 		caldata_die "board $board is not supported yet"
 		;;
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 91e813f121..b2ec803a72 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -113,10 +113,6 @@ case "$FIRMWARE" in
 	ubnt,unifiac-pro)
 		caldata_extract "EEPROM" 0x5000 0x844
 		;;
-	zyxel,nbg6716)
-		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
-		;;
 	esac
 	;;
 "ath10k/pre-cal-pci-0000:00:00.0.bin")
diff --git a/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh b/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh
index 83c4e78d25..10756abbaf 100644
--- a/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/generic/base-files/lib/upgrade/platform.sh
@@ -51,9 +51,6 @@ platform_do_upgrade() {
 	ubnt,routerstation-pro)
 		echo "Sysupgrade disabled due bug FS#2428"
 		;;
-	zyxel,nbg6716)
-		nand_do_upgrade "$1"
-		;;
 	*)
 		default_do_upgrade "$1"
 		;;
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network b/target/linux/ath79/nand/base-files/etc/board.d/02_network
index 65ce439545..1e013f40d1 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
@@ -8,6 +8,10 @@ ath79_setup_interfaces()
 	local board="$1"
 
 	case "$board" in
+	zyxel,nbg6716)
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth1"
+		;;
 	*)
 		ucidef_set_interfaces_lan_wan "eth0" "eth1"
 		;;
@@ -19,6 +23,10 @@ ath79_setup_macs()
 	local board="$1"
 
 	case "$board" in
+	zyxel,nbg6716)
+		lan_mac=$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
+		wan_mac=$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
+		;;
 	esac
 
 	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
new file mode 100644
index 0000000000..88a40b5d41
--- /dev/null
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
+
+. /lib/functions/caldata.sh
+
+board=$(board_name)
+
+case "$FIRMWARE" in
+"ath9k-eeprom-ahb-18100000.wmac.bin")
+	case $board in
+	zyxel,nbg6716)
+		caldata_extract "art" 0x1000 0x440
+		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env ethaddr)
+		;;
+	*)
+		caldata_die "board $board is not supported yet"
+		;;
+	esac
+	;;
+esac
diff --git a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
new file mode 100644
index 0000000000..75fdd42cdd
--- /dev/null
+++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -0,0 +1,22 @@
+#!/bin/sh
+
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
+
+. /lib/functions/caldata.sh
+. /lib/functions/k2t.sh
+
+board=$(board_name)
+
+case "$FIRMWARE" in
+"ath10k/cal-pci-0000:00:00.0.bin")
+	case $board in
+	zyxel,nbg6716)
+		caldata_extract "art" 0x5000 0x844
+		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
+		;;
+	esac
+	;;
+*)
+	exit 1
+	;;
+esac
diff --git a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
index b02ab9a080..6abd7dd0f1 100644
--- a/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ath79/nand/base-files/lib/upgrade/platform.sh
@@ -13,6 +13,9 @@ platform_do_upgrade() {
 	local board=$(board_name)
 
 	case "$board" in
+	zyxel,nbg6716)
+		nand_do_upgrade "$1"
+		;;
 	*)
 		default_do_upgrade "$1"
 		;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
