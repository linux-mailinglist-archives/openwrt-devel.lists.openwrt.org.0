Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D12ABB7F
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 16:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/Q8HzDP5URYaD1haNVcziYZy8Il292ezW0ms9vEw5WY=; b=I8+W3ZkaOSJbVZBVLWCxPKpQHu
	PlS7gkfC8oF2R/kGVLKHZvN2I3BzOJRAPL2XoCmKLGsYT1wPcGR79cZ5kCCxfiWQbXtGnYshfS4Dd
	++liKog8ENMpX/4uI7ZHvOYQcLV3b6k7wYrO1zG5rsI4rntMl7eAeXCmi1C6dx8YbP7/holCcV3nC
	fJGi0UJ2ch813gOC9AqM+Do5XHTDlKzE7lVWjbYAToquig2c5Xt8RKJd2vZzJzixs/74u7dwnCXCl
	5c4d9rUpROG3BrB0Vtb0jqQGvYHJqApeBed2EFwDh1tcZ8j3aTxl+ZIC8jWWFMo622twaRpzbTvOZ
	qUshH8Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FdM-0008BD-E2; Fri, 06 Sep 2019 14:54:44 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fcg-0007xI-Qj
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 14:54:05 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M5fdC-1i3UTN2nYg-007EEW for <openwrt-devel@lists.openwrt.org>; Fri, 06
 Sep 2019 16:53:59 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Sep 2019 16:53:56 +0200
Message-Id: <20190906145356.5010-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190906145356.5010-1-freifunk@adrianschmutzler.de>
References: <20190906145356.5010-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:HjPCZgl66Bddg/cpguvZ8ORgXw6CsL/4kGFdRwG5AsbgPadW3gM
 gEzUNxwl64HbQIun6vBWICgcbnrPH4HGXZRf/+KtT++qVsjQEtTXgNMfNsjgPdR4NKp156L
 xErDqXJwrFWIYuXNZdH3gpewGsJTgjJyZ1hxwSoeWeMNXdVDczWvGpWy4z/ZEq3nprxdiE6
 0HqXkOY9zy+m17fTOMwgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Hl32YIdtFDk=:UGUyVe3oZyfK06Q475qq25
 dGz2QezEl1iuqLIaynpbrAizr3vqRAsZFI6Nh21JHckhO4ya6/KAHZ8f4zoMdQNHRMUqhGdU1
 KJv3LtUzHk8kiYmbxORznhxt+6CQnGz8frn0pyf0Z1Z22elAW1QII8PE7Hsx6Q8ZzMcZefEZ9
 hNi3jZwSpULrNRIjMAGrPSvmf0ibpcxdkc51oXqPSv9sJOgMpQjA5hmiwz2a7dOSg7ijbfMtD
 4hkr11FtIjOWxO4v8aidvzoSIcjzTXe9olLO3NZLuw/xiKgriYLaCNR8yHdcYiwZmmQTaxbHV
 FdhCmaulcQ/Lfo4mN2O3TeqnOeCgiaMdMWyT99JDOgfOay7PKSfu4b48KyP792X2xIQqJY0/t
 JkxPP6z8jicrkeWYXzK0rdhLNMrHIswfENyYq7cKn7FE9kSoH7FkSCPhuk0dhbssmtPuA8zp3
 Cjeaqgp55+VzgJjygnP9EDvq31Jep6DyWn7fAeGfyQrr1/H9QbU38JQ7FSi62sZgWlzYvUfmf
 Ag2MpqSJ2+K9qjaYpOQ0B6AsTShrf4Dfjni96lpG2hS0NCyRZovE9mc1tCrGL3nyPTEv79vkw
 f+FuVEhN0dAmaN7MyQpKiOXH6JzV7u33H4X3h2zOIGLTYmbox4KeXhsQEOhW2nL41CfDwrv8R
 8GelbDBT77ul2rE37YwyrJnZS0qCMwyNeoXWOvzuIephcrjPJKB0xa38pRBQO+RgM2khF2+XK
 XBJF1CohwQrVWhc4dm12RqrWFEohEhEWf/rR+H08bzSBejWzsLVQWbN+354ZPtS/R4mypJ8EI
 JvAnDhb/ETr2tynUkSq+LMEr4zbL+x5+V6EkrNZwNEfAoP7s+BOGAfHEa2X3KeEF+74ATFC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_075403_174199_B4326C1E 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: refactor ath9k/ath10k caldata
 functions into library
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

Both ath9k and ath10k caldata extraction use similar functions,
which in several cases only differ by their name.

This patch moves functions to a shared library script and merges
ath9k and ath10k variants there.
MAC address patch functions are moved, but not merged, as they
are considerably different from each other.

Having the functions in a library file will also help to reuse
them after the nand subtarget has been reworked.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This has not been device-tested yet.
---
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 125 ++++--------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 113 ++++------------
 .../base-files/lib/functions/ath-caldata.sh   | 116 ++++++++++++++++
 3 files changed, 168 insertions(+), 186 deletions(-)
 create mode 100755 target/linux/ath79/base-files/lib/functions/ath-caldata.sh

diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 450f85b0fe..36101a6b9c 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -2,80 +2,7 @@
 
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions.sh
-. /lib/functions/system.sh
-
-ath9k_eeprom_die() {
-	echo "ath9k eeprom: " "$*"
-	exit 1
-}
-
-ath9k_eeprom_extract() {
-	local part=$1
-	local offset=$(($2))
-	local count=$(($3))
-	local mtd
-
-	mtd=$(find_mtd_chardev $part)
-	[ -n "$mtd" ] || \
-		ath9k_eeprom_die "no mtd device found for partition $part"
-
-	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
-		ath9k_eeprom_die "failed to extract from $mtd"
-}
-
-ath9k_eeprom_extract_reverse() {
-	local part=$1
-	local offset=$2
-	local count=$(($3))
-	local mtd
-	local reversed
-	local caldata
-
-	mtd=$(find_mtd_chardev "$part")
-	reversed=$(hexdump -v -s $offset -n $count -e '/1 "%02x "' $mtd)
-
-	for byte in $reversed; do
-		caldata="\x${byte}${caldata}"
-	done
-
-	printf "%b" "$caldata" > /lib/firmware/$FIRMWARE
-}
-
-ath9k_patch_fw_mac() {
-	local mac=$1
-	local mac_offset=$(($2))
-	local chksum_offset=$(($3))
-	local xor_mac
-	local xor_fw_mac
-	local xor_fw_chksum
-
-	[ -z "$mac" -o -z "$mac_offset" ] && return
-
-	[ -n "$chksum_offset" ] && {
-		xor_mac=${mac//:/}
-		xor_mac="${xor_mac:0:4} ${xor_mac:4:4} ${xor_mac:8:4}"
-
-		xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-		xor_fw_mac="${xor_fw_mac:0:4} ${xor_fw_mac:4:4} ${xor_fw_mac:8:4}"
-
-		xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-		xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
-
-		printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
-			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
-	}
-
-	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1
-}
-
-ath9k_patch_fw_mac_crc() {
-	local mac=$1
-	local mac_offset=$2
-	local chksum_offset=$((mac_offset - 10))
-
-	ath9k_patch_fw_mac "${mac}" "${mac_offset}" "${chksum_offset}"
-}
+. /lib/functions/ath-caldata.sh
 
 board=$(board_name)
 
@@ -83,11 +10,11 @@ case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
 	avm,fritz4020)
-		ath9k_eeprom_extract_reverse "urlader" 0x1541 0x440
+		ath_caldata_extract_reverse "urlader" 0x1541 0x440
 		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath_caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2
 		;;
 	dlink,dir-842-c1|\
@@ -96,11 +23,11 @@ case "$FIRMWARE" in
 	dlink,dir-859-a1|\
 	nec,wg1200cr|\
 	wd,mynet-n750)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath_caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	engenius,ecb1750)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath_caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env "athaddr") +1) 0x2
 		;;
 	engenius,epg5000|\
@@ -108,39 +35,39 @@ case "$FIRMWARE" in
 	iodata,wn-ac1600dgr|\
 	iodata,wn-ac1600dgr2|\
 	iodata,wn-ag300dgr)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath_caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
 		;;
 	nec,wg800hp)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath_caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 0x2
 		;;
 	qihoo,c301)
-		ath9k_eeprom_extract "radiocfg" 0x1000 0x440
+		ath_caldata_extract "radiocfg" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		ath_caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
 "ath9k-eeprom-pci-0000:00:00.0.bin")
 	case $board in
 	avm,fritz300e)
-		ath9k_eeprom_extract_reverse "urloader" 0x1541 0x440
+		ath_caldata_extract_reverse "urloader" 0x1541 0x440
 		;;
 	buffalo,whr-g301n|\
 	buffalo,wzr-hp-g302h-a1a0|\
 	tplink,tl-wr841-v5|\
 	tplink,tl-wr941-v4)
-		ath9k_eeprom_extract "art" 0x1000 0xeb8
+		ath_caldata_extract "art" 0x1000 0xeb8
 		;;
 	buffalo,wzr-hp-g450h)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath_caldata_extract "art" 0x1000 0x440
 		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
-		ath9k_eeprom_extract "art" 0x5000 0x440
+		ath_caldata_extract "art" 0x5000 0x440
 		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
 		;;
 	ocedo,raccoon|\
@@ -149,7 +76,7 @@ case "$FIRMWARE" in
 	tplink,tl-wdr4300-v1|\
 	tplink,tl-wdr4900-v2|\
 	winchannel,wb2000)
-		ath9k_eeprom_extract "art" 0x5000 0x440
+		ath_caldata_extract "art" 0x5000 0x440
 		;;
 	netgear,wnr612-v2|\
 	on,n150r|\
@@ -167,24 +94,24 @@ case "$FIRMWARE" in
 	ubnt,bullet-m|\
 	ubnt,nano-m|\
 	ubnt,rocket-m)
-		ath9k_eeprom_extract "art" 0x1000 0x1000
+		ath_caldata_extract "art" 0x1000 0x1000
 		;;
 	pqi,air-pen)
-		ath9k_eeprom_extract "art" 0x1000 0x7d2
+		ath_caldata_extract "art" 0x1000 0x7d2
 		;;
 	ubnt,unifi)
-		ath9k_eeprom_extract "art" 0x1000 0x800
+		ath_caldata_extract "art" 0x1000 0x800
 		;;
 	wd,mynet-n750)
-		ath9k_eeprom_extract "art" 0x5000 0x440
+		ath_caldata_extract "art" 0x5000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan5mac") 0x2
 		;;
 	wd,mynet-wifi-rangeextender)
-		ath9k_eeprom_extract "art" 0x1000 0x1000
+		ath_caldata_extract "art" 0x1000 0x1000
 		ath9k_patch_fw_mac_crc $(nvram get wl0_hwaddr) "$mac" 0x2
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		ath_caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
@@ -194,14 +121,14 @@ case "$FIRMWARE" in
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
 	netgear,wndr3800)
-		ath9k_eeprom_extract "art" 0x1000 0xeb8
+		ath_caldata_extract "art" 0x1000 0xeb8
 		;;
 	dlink,dir-825-b1)
-		ath9k_eeprom_extract "caldata" 0x1000 0xeb8
+		ath_caldata_extract "caldata" 0x1000 0xeb8
 		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		ath_caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
@@ -211,14 +138,14 @@ case "$FIRMWARE" in
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
 	netgear,wndr3800)
-		ath9k_eeprom_extract "art" 0x5000 0xeb8
+		ath_caldata_extract "art" 0x5000 0xeb8
 		;;
 	dlink,dir-825-b1)
-		ath9k_eeprom_extract "caldata" 0x5000 0xeb8
+		ath_caldata_extract "caldata" 0x5000 0xeb8
 		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 0x20c
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		ath_caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 6e79094e0c..6fdb0276a1 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -1,70 +1,9 @@
 #!/bin/sh
 
-. /lib/functions.sh
-. /lib/functions/k2t.sh
-
-ath10kcal_die() {
-	echo "ath10cal: " "$*"
-	exit 1
-}
-
-ath10kcal_from_file() {
-	local source=$1
-	local offset=$(($2))
-	local count=$(($3))
-
-	dd if=$source of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
-		ath10kcal_die "failed to extract calibration data from $source"
-}
-
-ath10kcal_extract() {
-	local part=$1
-	local offset=$(($2))
-	local count=$(($3))
-	local mtd
-
-	mtd=$(find_mtd_chardev $part)
-	[ -n "$mtd" ] || \
-		ath10kcal_die "no mtd device found for partition $part"
-
-	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
-		ath10kcal_die "failed to extract calibration data from $mtd"
-}
-
-ath10kcal_patch_mac() {
-	local mac=$1
-
-	[ -z "$mac" ] && return
-
-	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc oflag=seek_bytes bs=6 seek=6 count=1
-}
-
-ath10kcal_patch_mac_crc() {
-	local mac=$1
-	local mac_offset=6
-	local chksum_offset=2
-	local xor_mac
-	local xor_fw_mac
-	local xor_fw_chksum
-
-	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-	xor_fw_mac="${xor_fw_mac:0:4} ${xor_fw_mac:4:4} ${xor_fw_mac:8:4}"
-
-	ath10kcal_patch_mac "$mac" && {
-		xor_mac=${mac//:/}
-		xor_mac="${xor_mac:0:4} ${xor_mac:4:4} ${xor_mac:8:4}"
-
-		xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-		xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
-
-		printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
-			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
-	}
-}
-
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions/system.sh
+. /lib/functions/ath-caldata.sh
+. /lib/functions/k2t.sh
 
 board=$(board_name)
 
@@ -74,7 +13,7 @@ case "$FIRMWARE" in
 	comfast,cf-wr650ac-v1|\
 	comfast,cf-wr650ac-v2|\
 	yuncore,a770)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		;;
 	devolo,dvl1200e|\
 	devolo,dvl1200i|\
@@ -82,54 +21,54 @@ case "$FIRMWARE" in
 	devolo,dvl1750e|\
 	devolo,dvl1750i|\
 	devolo,dvl1750x)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x0) -1)
 		;;
 	dlink,dir-859-a1)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii devdata "wlan5mac")
 		;;
 	elecom,wrc-1750ghbk2-i)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		;;
 	engenius,ecb1750)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii u-boot-env athaddr)
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr2)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	engenius,ews511ap)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
 	glinet,gl-ar750|\
 	glinet,gl-ar750s)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	glinet,gl-x750)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	nec,wg800hp)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(mtd_get_mac_text board_data 0x880)
 		;;
 	ocedo,koala|\
 	ocedo,ursus)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_binary art 0xc)
 		;;
 	openmesh,om5p-ac-v2)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
 	qihoo,c301)
-		ath10kcal_extract "radiocfg" 0x5000 0x844
+		ath_caldata_extract "radiocfg" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
 		;;
 	tplink,archer-a7-v5|\
@@ -137,29 +76,29 @@ case "$FIRMWARE" in
 	tplink,archer-c7-v4|\
 	tplink,archer-c7-v5|\
 	tplink,archer-c25-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
 		;;
 	tplink,archer-c5-v1|\
 	tplink,archer-c7-v2)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
 		;;
 	tplink,archer-d50-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
 		;;
 	tplink,re350k-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
 		;;
 	tplink,re355-v1|\
 	tplink,re450-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	tplink,re450-v2)
-		ath10kcal_extract "art" 0x5000 0x844
+		ath_caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
 	ubnt,unifiac-lite|\
@@ -170,7 +109,7 @@ case "$FIRMWARE" in
 	ubnt,nanostation-ac|\
 	ubnt,nanostation-ac-loco|\
 	ubnt,unifiac-pro)
-		ath10kcal_extract "EEPROM" 0x5000 0x844
+		ath_caldata_extract "EEPROM" 0x5000 0x844
 		;;
 	esac
 	;;
@@ -180,18 +119,18 @@ case "$FIRMWARE" in
 	dlink,dir-842-c2|\
 	dlink,dir-842-c3|\
 	nec,wg1200cr)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		ath_caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
 	netgear,ex6400|\
 	netgear,ex7300)
-		ath10kcal_extract "caldata" 0x5000 0x2f20
+		ath_caldata_extract "caldata" 0x5000 0x2f20
 		ath10kcal_patch_mac $(mtd_get_mac_binary caldata 0xc)
 		;;
 	phicomm,k2t)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		ath_caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(k2t_get_mac "5g_mac")
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
@@ -201,7 +140,7 @@ case "$FIRMWARE" in
 	tplink,archer-c60-v1|\
 	tplink,archer-c60-v2|\
 	tplink,archer-c6-v2)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		ath_caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary mac 0x8) -1)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
diff --git a/target/linux/ath79/base-files/lib/functions/ath-caldata.sh b/target/linux/ath79/base-files/lib/functions/ath-caldata.sh
new file mode 100755
index 0000000000..71b625c954
--- /dev/null
+++ b/target/linux/ath79/base-files/lib/functions/ath-caldata.sh
@@ -0,0 +1,116 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/system.sh
+
+ath_caldata_die() {
+	echo "ath9k/10k caldata: " "$*"
+	exit 1
+}
+
+ath_caldata_extract() {
+	local part=$1
+	local offset=$(($2))
+	local count=$(($3))
+	local mtd
+
+	mtd=$(find_mtd_chardev $part)
+	[ -n "$mtd" ] || \
+		ath_caldata_die "no mtd device found for partition $part"
+
+	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
+		ath_caldata_die "failed to extract calibration data from $mtd"
+}
+
+ath_caldata_extract_reverse() {
+	local part=$1
+	local offset=$2
+	local count=$(($3))
+	local mtd
+	local reversed
+	local caldata
+
+	mtd=$(find_mtd_chardev "$part")
+	reversed=$(hexdump -v -s $offset -n $count -e '/1 "%02x "' $mtd)
+
+	for byte in $reversed; do
+		caldata="\x${byte}${caldata}"
+	done
+
+	printf "%b" "$caldata" > /lib/firmware/$FIRMWARE
+}
+
+ath_caldata_from_file() {
+	local source=$1
+	local offset=$(($2))
+	local count=$(($3))
+
+	dd if=$source of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
+		ath_caldata_die "failed to extract calibration data from $source"
+}
+
+ath9k_patch_fw_mac() {
+	local mac=$1
+	local mac_offset=$(($2))
+	local chksum_offset=$(($3))
+	local xor_mac
+	local xor_fw_mac
+	local xor_fw_chksum
+
+	[ -z "$mac" -o -z "$mac_offset" ] && return
+
+	[ -n "$chksum_offset" ] && {
+		xor_mac=${mac//:/}
+		xor_mac="${xor_mac:0:4} ${xor_mac:4:4} ${xor_mac:8:4}"
+
+		xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
+		xor_fw_mac="${xor_fw_mac:0:4} ${xor_fw_mac:4:4} ${xor_fw_mac:8:4}"
+
+		xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
+		xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
+
+		printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
+			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
+	}
+
+	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1
+}
+
+ath9k_patch_fw_mac_crc() {
+	local mac=$1
+	local mac_offset=$2
+	local chksum_offset=$((mac_offset - 10))
+
+	ath9k_patch_fw_mac "${mac}" "${mac_offset}" "${chksum_offset}"
+}
+
+ath10kcal_patch_mac() {
+	local mac=$1
+
+	[ -z "$mac" ] && return
+
+	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc oflag=seek_bytes bs=6 seek=6 count=1
+}
+
+ath10kcal_patch_mac_crc() {
+	local mac=$1
+	local mac_offset=6
+	local chksum_offset=2
+	local xor_mac
+	local xor_fw_mac
+	local xor_fw_chksum
+
+	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
+	xor_fw_mac="${xor_fw_mac:0:4} ${xor_fw_mac:4:4} ${xor_fw_mac:8:4}"
+
+	ath10kcal_patch_mac "$mac" && {
+		xor_mac=${mac//:/}
+		xor_mac="${xor_mac:0:4} ${xor_mac:4:4} ${xor_mac:8:4}"
+
+		xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
+		xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
+
+		printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
+			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
+	}
+}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
