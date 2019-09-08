Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01DCACF2B
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 16:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CHs5X0UNUgPd1QHom3/jwuVZzlXKKr4Z8FKioeWcsZ4=; b=sfpj/eZ+myotYkGEWrVbhjW6eu
	+HD22xSwKpfyFk2w38BwQ8Km3weYf54F3sObGWUwBFGvHqSOev9zWQRUPD/FmEblTA/h2Fdix9TRZ
	aSXtYz0CVoQVCV8F0C+tD6nmKr37zh/GhV1QUKEEb0x9kaQgoc/w+C9h1kvP4zsaX07C1T9eMWnGx
	eDzx/k9zGGPQ3xsekcndCG46rk9JWRpGzYOMvt81E/v+EMY5KqCC5BseVe6v9wP0W2f9aCdeXHoOp
	o9J8zAaqPHwO+obDwOHzYzROVQDdCyvMqhw+WIl8R67r8EVwp0dNFvwWIcXN5DCJu8uS9RGyuf65X
	67j5jU9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xuq-0008Ho-4F; Sun, 08 Sep 2019 14:11:44 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xu8-00072C-3p
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 14:11:04 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mr8O8-1iSbWo2cwY-00oFLs for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Sep 2019 16:10:56 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 16:10:50 +0200
Message-Id: <20190908141052.17443-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
References: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:+CRT2i+ZCb1ZrUoGq64KMSZAgoE0g/yOmvxbv2gwm6Z/UjqJasI
 XAUOlEFEdH5nDvz3AoNr9lMdFYwpqpQDVbcWixwUJ0FQKz1Xy1IOoCerwwMuQvOu9LyQUTU
 nmnSWF4Vvxr2Fq2/xbaVSeWY+NkWGr0TP9hnDETx7awd73HytUewr9wN0En6A7h/C7Hyhq2
 Zp9IY+hMEM5UOZN6OcHRA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jEXW9oj7GvI=:Zb6TknnPY9AjZfB7PsoGhE
 AMnZty/5XcJrZopNDkIXE+grYvfLgM6Q2u1QyuPu05ZkGB4UMFaJOMeln1hTSWj7wrJ4afNmV
 di8lEU6WJnc4w03ZRvcebFmEP57hs6wnZPnyCX1m2magpneLXS/Vil3rptJPt8h+iRbOzZ6gx
 zU/dMS3yyd5QKTZSDdV4MtJA9Jzp095UP5cEkEwaNYrN7PPkEymRp3k2b+czkVOJMm8z40BJ6
 f9Y35wpFy1ih6TopRUcQxbcI+t7uuH4l/eYPXgqvQj7yT7ZIUMCiMZEWdoQYCnl8Bq0C3jMNV
 BLjm36tA7yJhc4uygbcRMapET7ctRn1mpE2jRhjpI0XzilJXL8D7sDB32n2xg4Vs3lyFZ7lw9
 uYjKeG3DhhyRMgIVN9ms8t+mtmAODbVX9SESQ1kio3aWuTLnzRPsR6im8pBoJcVwrBDhoYRNQ
 q7LZpn8OI9HotTj4ie8V7L0pMfg5aHfA1Bin8mU9/9tFG3laRtgB3lFF99mU0Tm/JXJaoAdQo
 +RGewXVSTZILoTJToL7s6Ik93GmlOeEPhKdGNcZJsrXeLYIRio7p4bH9KbI0NBILyEx8hhB08
 x2Go2JeGd8nwoxB9z5NPxyuO/oMKpNtfabDeLB0ZoYNtdKsRThUfc0F4ZZ9drOqguPxtWNfgY
 MK3hJLG8lhJ/nav0uQKw+n0CzRlJB0xknDUe6HA6ZnlAIeFTmuoC7xD5lncEwRw9IsLpQHihB
 kY+sIDAiBnaw6Y/QP5daI5//i4Ow80xSQiCx3NNY27tyQKzklGj7sKktZnJPHL15w905rM32H
 BDb0dEV07Il6mLA4AeAiUrpvJYsHz/vGRt1m8s3mMkR7a6tfT2yn/LXV2Z9u+DV3kTNdNuE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_071100_752222_A4114FD9 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/4] treewide: move calibration data
 extraction function to library
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

This moves the almost identical calibration data extraction
functions present multiple times in several targets to a single
library file /lib/functions/caldata.sh.

Functions are renamed with more generic names to merge different
variants that only differ in their names.

Most of the targets used find_mtd_chardev, while some used
find_mtd_part inside the extraction code. To merge them, the more
abundant version with find_mtd_chardev is used in the common code.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Open questions:

1. I tested find_mtd_chardev and find_mtd_part on mpc85xx, both
gave the same result (one uses /dev/mtd*, the other one uses
/dev/mtdblock*). Is there any difference or advantage of one over
the other in this use-case?

2. For mpc85xx, there is a chained command with "dd if=... |
dd of..." used for caldata extraction. I'm a bit surprised about
the use of $count and $offset there and would be glad if someone
had a look.
---
 .../base-files/files/lib/functions/caldata.sh |  75 +++++++++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  49 ++-------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  90 +++++-----------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  84 +++++----------
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  27 +----
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 101 +++++-------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  62 +++--------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  28 +----
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    |  36 ++-----
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  24 ++---
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  37 ++-----
 11 files changed, 207 insertions(+), 406 deletions(-)
 create mode 100644 package/base-files/files/lib/functions/caldata.sh

diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/base-files/files/lib/functions/caldata.sh
new file mode 100644
index 0000000000..f2a306675f
--- /dev/null
+++ b/package/base-files/files/lib/functions/caldata.sh
@@ -0,0 +1,75 @@
+# Copyright (C) 2019 OpenWrt.org
+
+. /lib/functions.sh
+. /lib/functions/system.sh
+
+caldata_die() {
+	echo "caldata: " "$*"
+	exit 1
+}
+
+caldata_extract() {
+	local part=$1
+	local offset=$(($2))
+	local count=$(($3))
+	local mtd
+
+	mtd=$(find_mtd_chardev $part)
+	[ -n "$mtd" ] || caldata_die "no mtd device found for partition $part"
+
+	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
+		caldata_die "failed to extract calibration data from $mtd"
+}
+
+caldata_extract_ubi() {
+	local part=$1
+	local offset=$(($2))
+	local count=$(($3))
+	local ubidev
+	local ubi
+
+	. /lib/upgrade/nand.sh
+
+	ubidev=$(nand_find_ubi $CI_UBIPART)
+	ubi=$(nand_find_volume $ubidev $part)
+	[ -n "$ubi" ] || caldata_die "no UBI volume found for $part"
+
+	dd if=/dev/$ubi of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
+		caldata_die "failed to extract calibration data from $ubi"
+}
+
+caldata_extract_reverse() {
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
+caldata_from_file() {
+	local source=$1
+	local offset=$(($2))
+	local count=$(($3))
+
+	dd if=$source of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
+		caldata_die "failed to extract calibration data from $source"
+}
+
+caldata_valid() {
+	local expected="$1"
+
+	magic=$(hexdump -v -n 2 -e '1/1 "%02x"' /lib/firmware/$FIRMWARE)
+	[[ "$magic" == "$expected" ]]
+	return $?
+}
+
diff --git a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 272c084c99..07100b1856 100644
--- a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -2,42 +2,7 @@
 
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
-ath9k_ubi_eeprom_extract() {
-	local part=$1
-	local offset=$(($2))
-	local count=$(($3))
-	local ubidev=$(nand_find_ubi $CI_UBIPART)
-	local ubi
-
-	ubi=$(nand_find_volume $ubidev $part)
-	[ -n "$ubi" ] || \
-		ath9k_eeprom_die "no UBI volume found for $part"
-
-	dd if=/dev/$ubi of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
-		ath9k_eeprom_die "failed to extract from $ubi"
-}
+. /lib/functions/caldata.sh
 
 ath9k_patch_firmware_mac() {
 	local mac=$1
@@ -56,14 +21,14 @@ case "$FIRMWARE" in
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 0x5000 0x1000
+			caldata_extract_ubi "caldata" 0x5000 0x1000
 		else
-			ath9k_eeprom_extract "wifi_data" 0x5000 0x1000
+			caldata_extract "wifi_data" 0x5000 0x1000
 			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0xc)
 		fi
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
@@ -74,14 +39,14 @@ case "$FIRMWARE" in
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 0x1000 0x1000
+			caldata_extract_ubi "caldata" 0x1000 0x1000
 		else
-			ath9k_eeprom_extract "wifi_data" 0x1000 0x1000
+			caldata_extract "wifi_data" 0x1000 0x1000
 			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0x0)
 		fi
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 450f85b0fe..3432014f60 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -2,45 +2,7 @@
 
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
+. /lib/functions/caldata.sh
 
 ath9k_patch_fw_mac() {
 	local mac=$1
@@ -83,11 +45,11 @@ case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
 	avm,fritz4020)
-		ath9k_eeprom_extract_reverse "urlader" 0x1541 0x440
+		caldata_extract_reverse "urlader" 0x1541 0x440
 		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2
 		;;
 	dlink,dir-842-c1|\
@@ -96,11 +58,11 @@ case "$FIRMWARE" in
 	dlink,dir-859-a1|\
 	nec,wg1200cr|\
 	wd,mynet-n750)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	engenius,ecb1750)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env "athaddr") +1) 0x2
 		;;
 	engenius,epg5000|\
@@ -108,39 +70,39 @@ case "$FIRMWARE" in
 	iodata,wn-ac1600dgr|\
 	iodata,wn-ac1600dgr2|\
 	iodata,wn-ag300dgr)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
 		;;
 	nec,wg800hp)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		caldata_extract "art" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 0x2
 		;;
 	qihoo,c301)
-		ath9k_eeprom_extract "radiocfg" 0x1000 0x440
+		caldata_extract "radiocfg" 0x1000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
 "ath9k-eeprom-pci-0000:00:00.0.bin")
 	case $board in
 	avm,fritz300e)
-		ath9k_eeprom_extract_reverse "urloader" 0x1541 0x440
+		caldata_extract_reverse "urloader" 0x1541 0x440
 		;;
 	buffalo,whr-g301n|\
 	buffalo,wzr-hp-g302h-a1a0|\
 	tplink,tl-wr841-v5|\
 	tplink,tl-wr941-v4)
-		ath9k_eeprom_extract "art" 0x1000 0xeb8
+		caldata_extract "art" 0x1000 0xeb8
 		;;
 	buffalo,wzr-hp-g450h)
-		ath9k_eeprom_extract "art" 0x1000 0x440
+		caldata_extract "art" 0x1000 0x440
 		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
-		ath9k_eeprom_extract "art" 0x5000 0x440
+		caldata_extract "art" 0x5000 0x440
 		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
 		;;
 	ocedo,raccoon|\
@@ -149,7 +111,7 @@ case "$FIRMWARE" in
 	tplink,tl-wdr4300-v1|\
 	tplink,tl-wdr4900-v2|\
 	winchannel,wb2000)
-		ath9k_eeprom_extract "art" 0x5000 0x440
+		caldata_extract "art" 0x5000 0x440
 		;;
 	netgear,wnr612-v2|\
 	on,n150r|\
@@ -167,24 +129,24 @@ case "$FIRMWARE" in
 	ubnt,bullet-m|\
 	ubnt,nano-m|\
 	ubnt,rocket-m)
-		ath9k_eeprom_extract "art" 0x1000 0x1000
+		caldata_extract "art" 0x1000 0x1000
 		;;
 	pqi,air-pen)
-		ath9k_eeprom_extract "art" 0x1000 0x7d2
+		caldata_extract "art" 0x1000 0x7d2
 		;;
 	ubnt,unifi)
-		ath9k_eeprom_extract "art" 0x1000 0x800
+		caldata_extract "art" 0x1000 0x800
 		;;
 	wd,mynet-n750)
-		ath9k_eeprom_extract "art" 0x5000 0x440
+		caldata_extract "art" 0x5000 0x440
 		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan5mac") 0x2
 		;;
 	wd,mynet-wifi-rangeextender)
-		ath9k_eeprom_extract "art" 0x1000 0x1000
+		caldata_extract "art" 0x1000 0x1000
 		ath9k_patch_fw_mac_crc $(nvram get wl0_hwaddr) "$mac" 0x2
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
@@ -194,14 +156,14 @@ case "$FIRMWARE" in
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
 	netgear,wndr3800)
-		ath9k_eeprom_extract "art" 0x1000 0xeb8
+		caldata_extract "art" 0x1000 0xeb8
 		;;
 	dlink,dir-825-b1)
-		ath9k_eeprom_extract "caldata" 0x1000 0xeb8
+		caldata_extract "caldata" 0x1000 0xeb8
 		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
@@ -211,14 +173,14 @@ case "$FIRMWARE" in
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
 	netgear,wndr3800)
-		ath9k_eeprom_extract "art" 0x5000 0xeb8
+		caldata_extract "art" 0x5000 0xeb8
 		;;
 	dlink,dir-825-b1)
-		ath9k_eeprom_extract "caldata" 0x5000 0xeb8
+		caldata_extract "caldata" 0x5000 0xeb8
 		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 0x20c
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 6e79094e0c..6417f28a23 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -1,35 +1,9 @@
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
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
-		ath10kcal_die "failed to extract calibration data from $mtd"
-}
+. /lib/functions/caldata.sh
+. /lib/functions/k2t.sh
 
 ath10kcal_patch_mac() {
 	local mac=$1
@@ -62,10 +36,6 @@ ath10kcal_patch_mac_crc() {
 	}
 }
 
-[ -e /lib/firmware/$FIRMWARE ] && exit 0
-
-. /lib/functions/system.sh
-
 board=$(board_name)
 
 case "$FIRMWARE" in
@@ -74,7 +44,7 @@ case "$FIRMWARE" in
 	comfast,cf-wr650ac-v1|\
 	comfast,cf-wr650ac-v2|\
 	yuncore,a770)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		;;
 	devolo,dvl1200e|\
 	devolo,dvl1200i|\
@@ -82,54 +52,54 @@ case "$FIRMWARE" in
 	devolo,dvl1750e|\
 	devolo,dvl1750i|\
 	devolo,dvl1750x)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x0) -1)
 		;;
 	dlink,dir-859-a1)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii devdata "wlan5mac")
 		;;
 	elecom,wrc-1750ghbk2-i)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		;;
 	engenius,ecb1750)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii u-boot-env athaddr)
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr2)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	engenius,ews511ap)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
 	glinet,gl-ar750|\
 	glinet,gl-ar750s)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	glinet,gl-x750)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	nec,wg800hp)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(mtd_get_mac_text board_data 0x880)
 		;;
 	ocedo,koala|\
 	ocedo,ursus)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_binary art 0xc)
 		;;
 	openmesh,om5p-ac-v2)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
 	qihoo,c301)
-		ath10kcal_extract "radiocfg" 0x5000 0x844
+		caldata_extract "radiocfg" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
 		;;
 	tplink,archer-a7-v5|\
@@ -137,29 +107,29 @@ case "$FIRMWARE" in
 	tplink,archer-c7-v4|\
 	tplink,archer-c7-v5|\
 	tplink,archer-c25-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
 		;;
 	tplink,archer-c5-v1|\
 	tplink,archer-c7-v2)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
 		;;
 	tplink,archer-d50-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
 		;;
 	tplink,re350k-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
 		;;
 	tplink,re355-v1|\
 	tplink,re450-v1)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	tplink,re450-v2)
-		ath10kcal_extract "art" 0x5000 0x844
+		caldata_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
 	ubnt,unifiac-lite|\
@@ -170,7 +140,7 @@ case "$FIRMWARE" in
 	ubnt,nanostation-ac|\
 	ubnt,nanostation-ac-loco|\
 	ubnt,unifiac-pro)
-		ath10kcal_extract "EEPROM" 0x5000 0x844
+		caldata_extract "EEPROM" 0x5000 0x844
 		;;
 	esac
 	;;
@@ -180,18 +150,18 @@ case "$FIRMWARE" in
 	dlink,dir-842-c2|\
 	dlink,dir-842-c3|\
 	nec,wg1200cr)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
 	netgear,ex6400|\
 	netgear,ex7300)
-		ath10kcal_extract "caldata" 0x5000 0x2f20
+		caldata_extract "caldata" 0x5000 0x2f20
 		ath10kcal_patch_mac $(mtd_get_mac_binary caldata 0xc)
 		;;
 	phicomm,k2t)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(k2t_get_mac "5g_mac")
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
@@ -201,7 +171,7 @@ case "$FIRMWARE" in
 	tplink,archer-c60-v1|\
 	tplink,archer-c60-v2|\
 	tplink,archer-c6-v2)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary mac 0x8) -1)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
diff --git a/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
index 305d5feda5..2400eb998a 100644
--- a/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
+++ b/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
@@ -1,28 +1,9 @@
 #!/bin/sh
 # Based on gabors ralink wisoc implementation.
 
-rt2x00_eeprom_die() {
-	echo "rt2x00 eeprom: " "$*"
-	exit 1
-}
-
-rt2x00_eeprom_extract() {
-	local part=$1
-	local offset=$(($2))
-	local count=$(($3))
-	local mtd
-
-	mtd=$(find_mtd_part $part)
-	[ -n "$mtd" ] || \
-		rt2x00_eeprom_die "no mtd device found for partition $part"
-
-	dd if=$mtd of=/lib/firmware/$FIRMWARE bs=1 skip=$offset count=$count || \
-		rt2x00_eeprom_die "failed to extract from $mtd"
-}
-
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions.sh
+. /lib/functions/caldata.sh
 
 board=$(board_name)
 
@@ -30,14 +11,14 @@ case "$FIRMWARE" in
 "rt2x00.eeprom" )
 	case $board in
 	hg556a_c)
-		rt2x00_eeprom_extract "cal_data" 0x1fe00 0x200
+		caldata_extract "cal_data" 0x1fe00 0x200
 		;;
 	hg622 |\
 	hg655b)
-		rt2x00_eeprom_extract "cal_data" 0x0 0x200
+		caldata_extract "cal_data" 0x0 0x200
 		;;
 	*)
-		rt2x00_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index dfb0a0cf76..61597ea669 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -1,43 +1,8 @@
 #!/bin/sh
 
-. /lib/functions.sh
-
-ath10kcal_die() {
-	echo "ath10cal: " "$*"
-	exit 1
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
-ath10kcal_ubi_extract() {
-	local part=$1
-	local offset=$(($2))
-	local count=$(($3))
-	local ubidev
-	local ubi
-
-	. /lib/upgrade/nand.sh
-
-	ubidev=$(nand_find_ubi $CI_UBIPART)
-	ubi=$(nand_find_volume $ubidev $part)
-	[ -n "$ubi" ] || \
-		ath10kcal_die "no UBI volume found for $part"
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-	dd if=/dev/$ubi of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
-		ath10kcal_die "failed to extract from $ubi"
-}
+. /lib/functions/caldata.sh
 
 ath10kcal_patch_mac_crc() {
 	local mac=$1
@@ -64,26 +29,14 @@ ath10kcal_patch_mac_crc() {
 		dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
 }
 
-ath10kcal_is_caldata_valid() {
-	local expected="$1"
-
-	magic=$(hexdump -v -n 2 -e '1/1 "%02x"' /lib/firmware/$FIRMWARE)
-	[[ "$magic" == "$expected" ]]
-	return $?
-}
-
-[ -e /lib/firmware/$FIRMWARE ] && exit 0
-
-. /lib/functions/system.sh
-
 board=$(board_name)
 
 case "$FIRMWARE" in
 "ath10k/cal-pci-0000:01:00.0.bin")
 	case "$board" in
 	meraki,mr33)
-		ath10kcal_ubi_extract "ART" 0x9000 0x844
-		ath10kcal_is_caldata_valid "4408" || ath10kcal_extract "ART" 0x9000 0x844
+		caldata_extract_ubi "ART" 0x9000 0x844
+		caldata_valid "4408" || caldata_extract "ART" 0x9000 0x844
 		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +1)
 		;;
 	esac
@@ -91,7 +44,7 @@ case "$FIRMWARE" in
 "ath10k/pre-cal-pci-0000:01:00.0.bin")
 	case "$board" in
 	asus,map-ac2200)
-		ath10kcal_ubi_extract "Factory" 0x9000 0x2f20
+		caldata_extract_ubi "Factory" 0x9000 0x2f20
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
@@ -104,12 +57,12 @@ case "$FIRMWARE" in
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3C000 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
 	linksys,ea8300)
-		ath10kcal_extract "ART" 0x9000 0x2f20
+		caldata_extract "ART" 0x9000 0x2f20
 		# OEM assigns 4 sequential MACs
 		ath10kcal_patch_mac_crc $(macaddr_setbit_la $(macaddr_add "$(cat /sys/class/net/eth0/address)" 4))
 		;;
 	openmesh,a62)
-		ath10kcal_extract "0:ART" 0x9000 0x2f20
+		caldata_extract "0:ART" 0x9000 0x2f20
 		;;
 	esac
 	;;
@@ -120,14 +73,14 @@ case "$FIRMWARE" in
 	glinet,gl-b1300 |\
 	linksys,ea6350v3 |\
 	qcom,ap-dk01.1-c1)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		;;
 	asus,map-ac2200)
-		ath10kcal_ubi_extract "Factory" 0x1000 0x2f20
+		caldata_extract_ubi "Factory" 0x1000 0x2f20
 		;;
 	asus,rt-ac58u)
 		CI_UBIPART=UBI_DEV
-		ath10kcal_ubi_extract "Factory" 0x1000 0x2f20
+		caldata_extract_ubi "Factory" 0x1000 0x2f20
 		;;
 	avm,fritzbox-4040)
 		/usr/bin/fritz_cal_extract -i 1 -s 0x400 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader_config")
@@ -147,29 +100,29 @@ case "$FIRMWARE" in
 	openmesh,a62 |\
 	qxwlan,e2600ac-c1 |\
 	qxwlan,e2600ac-c2)
-		ath10kcal_extract "0:ART" 0x1000 0x2f20
+		caldata_extract "0:ART" 0x1000 0x2f20
 		;;
 	engenius,ens620ext)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
 		;;
 	linksys,ea8300)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
 		;;
 	meraki,mr33)
-		ath10kcal_ubi_extract "ART" 0x1000 0x2f20
-		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract_ubi "ART" 0x1000 0x2f20
+		caldata_valid "202f" || caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +2)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0x0)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	esac
@@ -181,14 +134,14 @@ case "$FIRMWARE" in
 	glinet,gl-b1300 |\
 	linksys,ea6350v3 |\
 	qcom,ap-dk01.1-c1)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		;;
 	asus,map-ac2200)
-		ath10kcal_ubi_extract "Factory" 0x5000 0x2f20
+		caldata_extract_ubi "Factory" 0x5000 0x2f20
 		;;
 	asus,rt-ac58u)
 		CI_UBIPART=UBI_DEV
-		ath10kcal_ubi_extract "Factory" 0x5000 0x2f20
+		caldata_extract_ubi "Factory" 0x5000 0x2f20
 		;;
 	avm,fritzbox-4040)
 		/usr/bin/fritz_cal_extract -i 1 -s 0x400 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader_config")
@@ -208,29 +161,29 @@ case "$FIRMWARE" in
 	openmesh,a62 |\
 	qxwlan,e2600ac-c1 |\
 	qxwlan,e2600ac-c2)
-		ath10kcal_extract "0:ART" 0x5000 0x2f20
+		caldata_extract "0:ART" 0x5000 0x2f20
 		;;
 	engenius,ens620ext)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
 		;;
 	linksys,ea8300)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add "$(cat /sys/class/net/eth0/address)" 3)
 		;;
 	meraki,mr33)
-		ath10kcal_ubi_extract "ART" 0x5000 0x2f20
-		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract_ubi "ART" 0x5000 0x2f20
+		caldata_valid "202f" || caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +3)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0xc)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) -1)
 		;;
 	esac
diff --git a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index c0fb1db16d..12b76ec33f 100644
--- a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -1,34 +1,8 @@
 #!/bin/sh
 
-. /lib/functions.sh
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
-	dd if=$source of=/lib/firmware/$FIRMWARE bs=1 skip=$offset count=$count 2>/dev/null || \
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
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-	dd if=$mtd of=/lib/firmware/$FIRMWARE bs=1 skip=$offset count=$count 2>/dev/null || \
-		ath10kcal_die "failed to extract calibration data from $mtd"
-}
+. /lib/functions/caldata.sh
 
 ath10kcal_patch_mac_crc() {
 	local mac=$1
@@ -55,43 +29,39 @@ ath10kcal_patch_mac_crc() {
 		dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
 }
 
-[ -e /lib/firmware/$FIRMWARE ] && exit 0
-
-. /lib/functions/system.sh
-
 board=$(board_name)
 
 case "$FIRMWARE" in
 "ath10k/pre-cal-pci-0000:01:00.0.bin")
 	case $board in
 	buffalo,wxr-2533dhp)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x1e)
 		;;
 	linksys,ea8500)
-		ath10kcal_extract "art" 0x1000 0x2f20
+		caldata_extract "art" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +1)
 		;;
 	nec,wg2600hp)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary PRODUCTDATA 0xc) +1)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
-		ath10kcal_extract "art" 0x1000 0x2f20
+		caldata_extract "art" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +1)
 		;;
 	tplink,c2600)
-		ath10kcal_extract "radio" 0x1000 0x2f20
+		caldata_extract "radio" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x8) -1)
 		;;
 	tplink,vr2600v)
-		ath10kcal_extract "ART" 0x1000 0x2f20
+		caldata_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x0) -1)
 		;;
 	zyxel,nbg6817)
-		ath10kcal_extract "0:ART" 0x1000 0x2f20
+		caldata_extract "0:ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii 0:APPSBLENV ethaddr) +1)
 		;;
 	esac
@@ -99,33 +69,33 @@ case "$FIRMWARE" in
 "ath10k/pre-cal-pci-0001:01:00.0.bin")
 	case $board in
 	buffalo,wxr-2533dhp)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x18)
 		;;
 	linksys,ea8500)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +2)
 		;;
 	nec,wg2600hp)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary PRODUCTDATA 0xc)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
-		ath10kcal_extract "art" 0x5000 0x2f20
+		caldata_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +2)
 		;;
 	tplink,c2600)
-		ath10kcal_extract "radio" 0x5000 0x2f20
+		caldata_extract "radio" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x8)
 		;;
 	tplink,vr2600v)
-		ath10kcal_extract "ART" 0x5000 0x2f20
+		caldata_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x0)
 		;;
 	zyxel,nbg6817)
-		ath10kcal_extract "0:ART" 0x5000 0x2f20
+		caldata_extract "0:ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii 0:APPSBLENV ethaddr)
 		;;
 	esac
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 6d7682a7f3..5b03fb0e01 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -3,29 +3,7 @@
 
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions.sh
-. /lib/functions/system.sh
-. /lib/upgrade/nand.sh
-
-ath10k_caldata_die() {
-	echo "ath10k caldata: " "$*"
-	exit 1
-}
-
-ath10k_caldata_extract_ubi() {
-	local part=$1
-	local offset=$2
-	local count=$3
-	local ubidev=$(nand_find_ubi $CI_UBIPART)
-	local ubi
-
-	ubi=$(nand_find_volume $ubidev $part)
-	[ -n "$ubi" ] || \
-		ath10k_caldata_die "no UBI volume found for $part"
-
-	dd if=/dev/$ubi of=/lib/firmware/$FIRMWARE bs=1 skip=$offset count=$count 2>/dev/null || \
-		ath10k_caldata_die "failed to extract from $ubi"
-}
+. /lib/functions/caldata.sh
 
 ath10k_caldata_set_macaddr() {
 	local macaddr=$1
@@ -39,11 +17,11 @@ case "$FIRMWARE" in
 	board=$(board_name)
 	case $board in
 		bt,homehub-v5a)
-			ath10k_caldata_extract_ubi "caldata" 20480 2116
+			caldata_extract_ubi "caldata" 0x5000 0x844
 			ath10k_caldata_set_macaddr $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
 			;;
 		*)
-			ath10k_caldata_die "board $board is not supported yet"
+			caldata_die "board $board is not supported yet"
 			;;
 	esac
 	;;
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index 5f3eb0cfe3..192dcecb28 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -3,15 +3,9 @@
 
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-. /lib/functions.sh
-. /lib/functions/system.sh
+. /lib/functions/caldata.sh
 . /lib/upgrade/nand.sh
 
-ath9k_eeprom_die() {
-	echo "ath9k eeprom: $*"
-	exit 1
-}
-
 ath9k_eeprom_extract_raw() {
 	local source=$1
 	local offset=$(($2))
@@ -28,25 +22,7 @@ ath9k_eeprom_extract_raw() {
 	fi
 
 	dd if=$source of=/lib/firmware/$FIRMWARE bs=$bs skip=$offset count=$size $conv 2>/dev/null || \
-			ath9k_eeprom_die "failed to extract from $mtd"
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
+			caldata_die "failed to extract from $mtd"
 }
 
 ath9k_eeprom_extract() {
@@ -57,7 +33,7 @@ ath9k_eeprom_extract() {
 
 	mtd=$(find_mtd_chardev $part)
 	[ -n "$mtd" ] || \
-		ath9k_eeprom_die "no mtd device found for partition $part"
+		caldata_die "no mtd device found for partition $part"
 
 	ath9k_eeprom_extract_raw $mtd $offset $swap
 }
@@ -71,7 +47,7 @@ ath9k_ubi_eeprom_extract() {
 
 	ubi=$(nand_find_volume $ubidev $part)
 	[ -n "$ubi" ] || \
-		ath9k_eeprom_die "no UBI volume found for $part"
+		caldata_die "no UBI volume found for $part"
 
 	ath9k_eeprom_extract_raw /dev/$ubi $offset $swap
 }
@@ -143,7 +119,7 @@ case "$FIRMWARE" in
 			avm,fritz3370-rev2-hynix|\
 			avm,fritz3370-rev2-micron|\
 			avm,fritz7362sl)
-				ath9k_eeprom_extract_reverse "urlader" 0x1541 0x440
+				caldata_extract_reverse "urlader" 0x1541 0x440
 				;;
 			avm,fritz7312|avm,fritz7320|avm,fritz7360sl)
 				ath9k_eeprom_extract "urlader" 0x985 0
@@ -155,7 +131,7 @@ case "$FIRMWARE" in
 				ath9k_eeprom_extract "boardconfig" 0x21000 0
 				;;
 			*)
-				ath9k_eeprom_die "board $board is not supported yet"
+				caldata_die "board $board is not supported yet"
 				;;
 		esac
 		;;
diff --git a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index dc66226d7b..168f10e0f6 100644
--- a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -1,11 +1,8 @@
 #!/bin/sh
 
-FW_FILE="/lib/firmware/$FIRMWARE"
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-ath9k_eeprom_die() {
-	echo "ath9k eeprom: " "$*" >&2
-	exit 1
-}
+. /lib/functions/caldata.sh
 
 ath9k_eeprom_extract() {
 	local part=$1
@@ -15,10 +12,10 @@ ath9k_eeprom_extract() {
 
 	mtd=$(find_mtd_chardev $part)
 	[ -n "$mtd" ] || \
-		ath9k_eeprom_die "no mtd device found for partition $part"
+		caldata_die "no mtd device found for partition $part"
 
-	dd if=$mtd bs=$offset skip=1 count=1 2>/dev/null | dd of=$FW_FILE bs=$count count=1 2>/dev/null || \
-		ath9k_eeprom_die "failed to extract from $mtd"
+	dd if=$mtd bs=$offset skip=1 count=1 2>/dev/null | dd of=/lib/firmware/$FIRMWARE bs=$count count=1 2>/dev/null || \
+		caldata_die "failed to extract from $mtd"
 }
 
 tpl_set_wireless_mac()
@@ -29,14 +26,9 @@ tpl_set_wireless_mac()
 	mac=$(mtd_get_mac_binary u-boot 0x4fc00)
 	mac=$(macaddr_add $mac $offset)
 
-	macaddr_2bin $mac | dd bs=1 count=6 seek=2 conv=notrunc of=$FW_FILE 2>/dev/null
+	macaddr_2bin $mac | dd bs=1 count=6 seek=2 conv=notrunc of=/lib/firmware/$FIRMWARE 2>/dev/null
 }
 
-[ -e $FW_FILE ] && exit 0
-
-. /lib/functions.sh
-. /lib/functions/system.sh
-
 board=$(board_name)
 
 case "$FIRMWARE" in
@@ -47,7 +39,7 @@ case "$FIRMWARE" in
 		tpl_set_wireless_mac 0
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
@@ -59,7 +51,7 @@ case "$FIRMWARE" in
 		tpl_set_wireless_mac -1
 		;;
 	*)
-		ath9k_eeprom_die "board $board is not supported yet"
+		caldata_die "board $board is not supported yet"
 		;;
 	esac
 	;;
diff --git a/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
index 7b98936ec3..ec70d86dac 100644
--- a/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
+++ b/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
@@ -1,23 +1,8 @@
 #!/bin/sh
 
-rt2x00_eeprom_die() {
-	echo "rt2x00 eeprom: " "$*"
-	exit 1
-}
-
-rt2x00_eeprom_extract() {
-	local part=$1
-	local offset=$(($2))
-	local count=$(($3))
-	local mtd
-
-	mtd=$(find_mtd_part $part)
-	[ -n "$mtd" ] || \
-		rt2x00_eeprom_die "no mtd device found for partition $part"
+[ -e /lib/firmware/$FIRMWARE ] && exit 0
 
-	dd if=$mtd of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
-		rt2x00_eeprom_die "failed to extract from $mtd"
-}
+. /lib/functions/caldata.sh
 
 jboot_eeprom_extract() {
 	local part=$1
@@ -26,29 +11,23 @@ jboot_eeprom_extract() {
 
 	mtd=$(find_mtd_part $part)
 	[ -n "$mtd" ] || \
-		rt2x00_eeprom_die "no mtd device found for partition $part"
+		caldata_die "no mtd device found for partition $part"
 
 	jboot_config_read -i $mtd -o $offset -e /lib/firmware/$FIRMWARE  2>/dev/null || \
-		rt2x00_eeprom_die "failed to extract from $mtd"
+		caldata_die "failed to extract from $mtd"
 }
 
 rt2x00_eeprom_set_macaddr() {
 	local macaddr=$1
 
 	[ -n "$macaddr" ] || \
-		rt2x00_eeprom_die "invalid wlan mac address"
+		caldata_die "invalid wlan mac address"
 
 	macaddr_2bin $macaddr | dd of=/lib/firmware/$FIRMWARE \
 				conv=notrunc oflag=seek_bytes bs=6 seek=4 count=1 2>/dev/null || \
-		rt2x00_eeprom_die "failed to write mac address to eeprom file"
+		caldata_die "failed to write mac address to eeprom file"
 }
 
-FW="/lib/firmware/$FIRMWARE"
-[ -e "$FW" ] && exit 0
-
-. /lib/functions.sh
-. /lib/functions/system.sh
-
 board=$(board_name)
 
 case "$FIRMWARE" in
@@ -68,11 +47,11 @@ case "$FIRMWARE" in
 		;;
 	dovado,tiny-ac)
 		wifi_mac=$(mtd_get_mac_ascii u-boot-env INIC_MAC_ADDR)
-		rt2x00_eeprom_extract "factory" 0x0 0x200
+		caldata_extract "factory" 0x0 0x200
 		rt2x00_eeprom_set_macaddr $wifi_mac
 		;;
 	*)
-		rt2x00_eeprom_die "Please define mtd-eeprom in $board DTS file!"
+		caldata_die "Please define mtd-eeprom in $board DTS file!"
 		;;
 	esac
 	;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
