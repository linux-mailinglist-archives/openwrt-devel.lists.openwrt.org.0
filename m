Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89DB879E4
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 14:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpPYJbf+iM6QjCp5r2LfRq4TbZ2tPXvo+XTbrKtbOI4=; b=VaOIzeyUWt/8u9
	wXIn2YbYq12mJn//dU0ykiyutVDfJ87URnaDAeYytHjPl4d0Bso259UQv0k/LTUsRZh4iJS/D+hrX
	6GPsZtLczNyz5UJm/+rm2ycbHrbZu6Rn3JXbDtw7+uQnVTTShwBqu4kQ95EAbZLc3UDI6pSpNoIEg
	HiKD5MnRekvHM7LfZVaAwYOXrnRHBzYAT4BCLGIvyo7DK23eTv2CFxc57+C87YNaZH4WhkTrPRtEH
	g5knw9ae9m7kifMeP4Gu1NiEoqEKVxjuwyCAN4fpCj9DTP33GQK5m6xR740ce32msEe2hDY2VFUXc
	FeoFwALvLdFrD4eR8pfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3xa-0007F6-GO; Fri, 09 Aug 2019 12:25:30 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3x8-0005pb-9Z
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 12:25:06 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M5x9B-1hyYv61nUR-007WTE; Fri, 09 Aug 2019 14:24:55 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  9 Aug 2019 14:24:49 +0200
Message-Id: <20190809122449.2515-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809122449.2515-1-freifunk@adrianschmutzler.de>
References: <20190809122449.2515-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:UaZvGTiQVrdMRGqULrnCYaE8PWkbjed8Uu42ztVnSu7NFW7vafv
 wZ4Szf2a6Fq/YdTGdxwQ89DG+tsv4UYOCYy8MkllAQp5xPrK5SVnN6sxzL0OlsX3Oy/PkuA
 XekVQvCNua0/EZ/XLpKWXn8a8M8/kSwWjCMHrlEvKr2MzzX0zl2alpFyvpATKRRl0IOfVPS
 Zhs9beI31iZBs1cAqNEdg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yhCUqscKNis=:jb9VPyJDaNkoQd7/uEUBZs
 8yNxjkjaPKbilm81HHOqBA/3jdaopHpogX0KnatQFCwxDXNpZPsRpExMjhq+Ps0qFa+zUBJJN
 ggXpwf9XL5vXUZeQqZgnPttTIx7CkZdFzLlRZ+Y98Hu0E4NusaLSMS25PNQFjt6wypyhZYfAN
 vtgO2Yhmb3R1mvgiPSUs1LbjnUtIkgWE/rwyfuNS8egZj+i+UZ9ubphU/IpppvdWcOS4kxved
 mCROKsPCLuR9dKnO7dYoXIVcHbz8SIkoZizDWtdAPjhtbBUW9JaCriMXVhH6W+shk8pkatrCD
 2PArET8YGnxMW0hSXltLlvw4uV7Fuj7BPd7TStl/nhW1e++fz2zhG21NEbCBrTl13JjbbOU41
 xnuOsrb4X/CkHXcXRPVxCY8y4flxDL893Ogm7JeElfQXVSdCru1LU7WZ2HK/3PdlH8HprDZKE
 RHMp7i8sAJTK7pELSFKmTltm6WHSIwdnFE8xplyfGNdAkisCFcDXHsSaMUvfam1c3gpxjWn0h
 1dP9OOjx5zJKHFOe+ASbY1dmDSKmD+m1OPjPf1llg1EtDTxSyJUckMORznIHmHpjcy2GFcyoW
 MbuinGTq2qDPCvrZrXSf2LtvTUDzRmb0aVILzth4Dp07gbjfPk32oPyyu2N4i0lChZWgIYrWt
 SJ90olK9DMPiUhG/u7AuDJtkXS0/AiiccX7h5FOUGCe9s/HodHTg3727GcogAcEEQvm+hq88O
 0w+4lxhbtWjTJ8sMyW6I0ysfNKiaUG0Dhlve+XZeiuyME6aqtQttfbjQzIk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_052502_809644_5C14BB23 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] treewide: convert WiFi caldata size
 and offset to hexadecimal
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
Cc: Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This changes size and offset set for WiFi caldata extraction and
MAC address adjustment to hexadecimal notation.

This will be much clearer for the reader when numbers are big, and
will also match the style used for mtd-cal-data in DTS files.

Since dd cannot deal with hexadecimal notation, one has to convert
back to decimal by simple $(($hexnum)).

Acked-by: Alexander Couzens <lynxis@fe80.eu>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Changes in v2:
- Rebase
---
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 22 +++---
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 46 ++++++------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 56 +++++++-------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 74 +++++++++----------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 56 +++++++-------
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  8 +-
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 58 +++++++--------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 36 ++++-----
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    | 34 ++++-----
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  8 +-
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   |  6 +-
 11 files changed, 202 insertions(+), 202 deletions(-)

diff --git a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index b3b8886720..272c084c99 100644
--- a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -12,8 +12,8 @@ ath9k_eeprom_die() {
 
 ath9k_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
@@ -26,8 +26,8 @@ ath9k_eeprom_extract() {
 
 ath9k_ubi_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local ubidev=$(nand_find_ubi $CI_UBIPART)
 	local ubi
 
@@ -40,11 +40,11 @@ ath9k_ubi_eeprom_extract() {
 }
 
 ath9k_patch_firmware_mac() {
-        local mac=$1
+	local mac=$1
 
-        [ -z "$mac" ] && return
+	[ -z "$mac" ] && return
 
-        macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=2 count=6
+	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=2 count=6
 }
 
 board=$(board_name)
@@ -56,9 +56,9 @@ case "$FIRMWARE" in
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 20480 4096
+			ath9k_ubi_eeprom_extract "caldata" 0x5000 0x1000
 		else
-			ath9k_eeprom_extract "wifi_data" 20480 4096
+			ath9k_eeprom_extract "wifi_data" 0x5000 0x1000
 			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0xc)
 		fi
 		;;
@@ -74,9 +74,9 @@ case "$FIRMWARE" in
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 4096 4096
+			ath9k_ubi_eeprom_extract "caldata" 0x1000 0x1000
 		else
-			ath9k_eeprom_extract "wifi_data" 4096 4096
+			ath9k_eeprom_extract "wifi_data" 0x1000 0x1000
 			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0x0)
 		fi
 		;;
diff --git a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 3924202d8e..8fe57c87cc 100644
--- a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -12,8 +12,8 @@ ath9k_eeprom_die() {
 
 ath9k_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
@@ -26,8 +26,8 @@ ath9k_eeprom_extract() {
 
 ath9k_ubi_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local ubidev=$(nand_find_ubi $CI_UBIPART)
 	local ubi
 
@@ -42,7 +42,7 @@ ath9k_ubi_eeprom_extract() {
 ath9k_eeprom_extract_reverse() {
 	local part=$1
 	local offset=$2
-	local count=$3
+	local count=$(($3))
 	local mtd
 	local reversed
 	local caldata
@@ -72,43 +72,43 @@ case "$FIRMWARE" in
 	case $board in
 	c-55|\
 	c-60)
-		ath9k_eeprom_extract "art" 4096 2048
+		ath9k_eeprom_extract "art" 0x1000 0x800
 		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	fritz4020|\
 	fritz450e)
-		ath9k_eeprom_extract_reverse "urlader" 5441 1088
+		ath9k_eeprom_extract_reverse "urlader" 0x1541 0x440
 		;;
 	mr18)
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 4096 2048
+			ath9k_ubi_eeprom_extract "caldata" 0x1000 0x800
 		else
-			ath9k_eeprom_extract "odm-caldata" 4096 2048
+			ath9k_eeprom_extract "odm-caldata" 0x1000 0x800
 		fi
 		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +1)
 		;;
 	r6100 | \
 	wndr3700v4 | \
 	wndr4300)
-		ath9k_eeprom_extract "caldata" 4096 2048
+		ath9k_eeprom_extract "caldata" 0x1000 0x800
 		ath9k_patch_firmware_mac $(mtd_get_mac_binary caldata 0x0)
 		;;
 	rambutan)
-		ath9k_eeprom_extract "art" 4096 2048
+		ath9k_eeprom_extract "art" 0x1000 0x800
 		;;
 	wlr8100)
-		ath9k_eeprom_extract "art" 4096 2048
+		ath9k_eeprom_extract "art" 0x1000 0x800
 		ath9k_patch_firmware_mac $(mtd_get_mac_ascii u-boot-env "ethaddr")
 		;;
 	z1)
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 4096 2048
+			ath9k_ubi_eeprom_extract "caldata" 0x1000 0x800
 		else
-			ath9k_eeprom_extract "origcaldata" 4096 2048
+			ath9k_eeprom_extract "origcaldata" 0x1000 0x800
 		fi
 		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +2)
 		;;
@@ -121,34 +121,34 @@ case "$FIRMWARE" in
 "pci_wmac0.eeprom")
 	case $board in
 	c-55)
-		ath9k_eeprom_extract "art" 20480 2048
+		ath9k_eeprom_extract "art" 0x5000 0x800
 		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	fritz300e)
-		ath9k_eeprom_extract_reverse "urloader" 5441 1088
+		ath9k_eeprom_extract_reverse "urloader" 0x1541 0x440
 		;;
 	mr18)
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 20480 2048
+			ath9k_ubi_eeprom_extract "caldata" 0x5000 0x800
 		else
-			ath9k_eeprom_extract "odm-caldata" 20480 2048
+			ath9k_eeprom_extract "odm-caldata" 0x5000 0x800
 		fi
 		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +2)
 		;;
 	wndr3700v4 | \
 	wndr4300)
-		ath9k_eeprom_extract "caldata" 20480 2048
+		ath9k_eeprom_extract "caldata" 0x5000 0x800
 		ath9k_patch_firmware_mac $(mtd_get_mac_binary caldata 0xc)
 		;;
 	z1)
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 86016 4096
+			ath9k_ubi_eeprom_extract "caldata" 0x15000 0x1000
 		else
-			ath9k_eeprom_extract "origcaldata" 86016 4096
+			ath9k_eeprom_extract "origcaldata" 0x15000 0x1000
 		fi
 		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +3)
 		;;
@@ -164,9 +164,9 @@ case "$FIRMWARE" in
 		. /lib/upgrade/nand.sh
 
 		if [ -n "$(nand_find_volume ubi0 caldata)" ]; then
-			ath9k_ubi_eeprom_extract "caldata" 36864 2048
+			ath9k_ubi_eeprom_extract "caldata" 0x9000 0x800
 		else
-			ath9k_eeprom_extract "odm-caldata" 36864 2048
+			ath9k_eeprom_extract "odm-caldata" 0x9000 0x800
 		fi
 		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +3)
 		;;
diff --git a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index a3d4770b32..2ba8de4783 100644
--- a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -7,8 +7,8 @@ ath10kcal_die() {
 
 ath10kcal_from_file() {
 	local source=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 
 	dd if=$source of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
 		ath10kcal_die "failed to extract calibration data from $source"
@@ -16,8 +16,8 @@ ath10kcal_from_file() {
 
 ath10kcal_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd cal_size
 
 	mtd=$(find_mtd_chardev $part)
@@ -57,17 +57,17 @@ case "$FIRMWARE" in
 	mr1750|\
 	mr1750v2|\
 	om5p-acv2)
-		ath10kcal_extract "ART" 20480 2116
+		ath10kcal_extract "ART" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
 	archer-c25-v1|\
 	tl-wdr6500-v2)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth1/address) -2)
 		;;
 	archer-c7-v4|\
 	archer-c7-v5)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -1)
 		;;
 	cf-e355ac-v1|\
@@ -81,60 +81,60 @@ case "$FIRMWARE" in
 	oolite-v5.2-dev|\
 	sr3200|\
 	xd3200)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		;;
 	dap-2695-a1)
-		ath10kcal_extract "radiocfg" 20480 2116
+		ath10kcal_extract "radiocfg" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii bdcfg wlanmac_a)
 		;;
 	dir-869-a1|\
 	qihoo-c301)
-		ath10kcal_extract "radiocfg" 20480 2116
+		ath10kcal_extract "radiocfg" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii devdata wlan5mac)
 		;;
 	dw33d)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_binary art 0x12)
 		;;
 	epg5000|\
 	esr1750)
-		ath10kcal_extract "caldata" 20480 2116
+		ath10kcal_extract "caldata" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
 	gl-ar750s|\
 	gl-ar750|\
 	tl-wpa8630)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
 	koala)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0xc) +0)
 		;;
 	mc-mac1200r)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth1/address) -1)
 		;;
 	r6100)
-		ath10kcal_extract "caldata" 20480 2116
+		ath10kcal_extract "caldata" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth1/address) +2)
 		;;
 	rb-952ui-5ac2nd|\
 	rb-wapg-5hact2hnd)
-		ath10kcal_from_file "/sys/firmware/routerboot/ext_wlan_data" 20480 2116
+		ath10kcal_from_file "/sys/firmware/routerboot/ext_wlan_data" 0x5000 0x844
 		;;
 	re355|\
 	re450|\
 	tl-wr902ac-v1)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	unifiac-lite|\
 	unifiac-pro)
-		ath10kcal_extract "EEPROM" 20480 2116
+		ath10kcal_extract "EEPROM" 0x5000 0x844
 		;;
 	wi2a-ac200i)
-		ath10kcal_extract "ART" 20480 2116
+		ath10kcal_extract "ART" 0x5000 0x844
 		;;
 	esac
 	;;
@@ -142,26 +142,26 @@ case "$FIRMWARE" in
 	case $board in
 	archer-c5|\
 	archer-c7)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth1/address) -2)
 		;;
 	nbg6616|\
 	nbg6716)
-		ath10kcal_extract "RFdata" 20480 2116
+		ath10kcal_extract "RFdata" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth1/address) -2)
 		;;
 	om5p-ac)
-		ath10kcal_extract "ART" 20480 2116
+		ath10kcal_extract "ART" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
 	rb-911g-5hpacd|\
 	rb-921gs-5hpacd-r2|\
 	rb-922uags-5hpacd|\
 	rb-962uigs-5hact2hnt)
-		ath10kcal_from_file "/sys/firmware/routerboot/ext_wlan_data" 20480 2116
+		ath10kcal_from_file "/sys/firmware/routerboot/ext_wlan_data" 0x5000 0x844
 		;;
 	wlr8100)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	esac
@@ -174,18 +174,18 @@ case "$FIRMWARE" in
 	archer-c60-v1|\
 	cf-e355ac-v2|\
 	cf-e375ac)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
 	archer-c60-v2)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -1)
 		;;
 	cf-e385ac)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		;;
 	esac
 	;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 3e49b4f885..fc57885cf1 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -12,8 +12,8 @@ ath9k_eeprom_die() {
 
 ath9k_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
@@ -27,7 +27,7 @@ ath9k_eeprom_extract() {
 ath9k_eeprom_extract_reverse() {
 	local part=$1
 	local offset=$2
-	local count=$3
+	local count=$(($3))
 	local mtd
 	local reversed
 	local caldata
@@ -59,8 +59,8 @@ xor() {
 
 ath9k_patch_fw_mac() {
 	local mac=$1
-	local mac_offset=$2
-	local chksum_offset=$3
+	local mac_offset=$(($2))
+	local chksum_offset=$(($3))
 	local xor_mac
 	local xor_fw_mac
 	local xor_fw_chksum
@@ -98,12 +98,12 @@ case "$FIRMWARE" in
 "ath9k-eeprom-ahb-18100000.wmac.bin")
 	case $board in
 	avm,fritz4020)
-		ath9k_eeprom_extract_reverse "urlader" 5441 1088
+		ath9k_eeprom_extract_reverse "urlader" 0x1541 0x440
 		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
-		ath9k_eeprom_extract "art" 4096 1088
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 2
+		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2
 		;;
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
@@ -111,28 +111,28 @@ case "$FIRMWARE" in
 	dlink,dir-859-a1|\
 	nec,wg1200cr|\
 	wd,mynet-n750)
-		ath9k_eeprom_extract "art" 4096 1088
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 2
+		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	engenius,ecb1750)
-		ath9k_eeprom_extract "art" 4096 1088
-		ath9k_patch_fw_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env "athaddr") +1) 2
+		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath9k_patch_fw_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env "athaddr") +1) 0x2
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr|\
 	iodata,wn-ac1600dgr2|\
 	iodata,wn-ag300dgr)
-		ath9k_eeprom_extract "art" 4096 1088
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 2
+		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
 		;;
 	nec,wg800hp)
-		ath9k_eeprom_extract "art" 4096 1088
-		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 2
+		ath9k_eeprom_extract "art" 0x1000 0x440
+		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 0x2
 		;;
 	qihoo,c301)
-		ath9k_eeprom_extract "radiocfg" 4096 1088
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 2
+		ath9k_eeprom_extract "radiocfg" 0x1000 0x440
+		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
@@ -142,28 +142,28 @@ case "$FIRMWARE" in
 "ath9k-eeprom-pci-0000:00:00.0.bin")
 	case $board in
 	avm,fritz300e)
-		ath9k_eeprom_extract_reverse "urloader" 5441 1088
+		ath9k_eeprom_extract_reverse "urloader" 0x1541 0x440
 		;;
 	buffalo,whr-g301n|\
 	buffalo,wzr-hp-g302h-a1a0|\
 	tplink,tl-wr841-v5|\
 	tplink,tl-wr941-v4)
-		ath9k_eeprom_extract "art" 4096 3768
+		ath9k_eeprom_extract "art" 0x1000 0xeb8
 		;;
 	buffalo,wzr-hp-g450h)
-		ath9k_eeprom_extract "art" 4096 1088
+		ath9k_eeprom_extract "art" 0x1000 0x440
 		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
-		ath9k_eeprom_extract "art" 20480 1088
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 2
+		ath9k_eeprom_extract "art" 0x5000 0x440
+		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
 		;;
 	ocedo,raccoon|\
 	tplink,tl-wdr3600-v1|\
 	tplink,tl-wdr4300-v1|\
 	tplink,tl-wdr4900-v2|\
 	winchannel,wb2000)
-		ath9k_eeprom_extract "art" 20480 1088
+		ath9k_eeprom_extract "art" 0x5000 0x440
 		;;
 	netgear,wnr612-v2|\
 	on,n150r|\
@@ -181,21 +181,21 @@ case "$FIRMWARE" in
 	ubnt,bullet-m|\
 	ubnt,nano-m|\
 	ubnt,rocket-m)
-		ath9k_eeprom_extract "art" 4096 4096
+		ath9k_eeprom_extract "art" 0x1000 0x1000
 		;;
 	pqi,air-pen)
-		ath9k_eeprom_extract "art" 4096 2002
+		ath9k_eeprom_extract "art" 0x1000 0x7d2
 		;;
 	ubnt,unifi)
-		ath9k_eeprom_extract "art" 4096 2048
+		ath9k_eeprom_extract "art" 0x1000 0x800
 		;;
 	wd,mynet-n750)
-		ath9k_eeprom_extract "art" 20480 1088
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan5mac") 2
+		ath9k_eeprom_extract "art" 0x5000 0x440
+		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan5mac") 0x2
 		;;
 	wd,mynet-wifi-rangeextender)
-		ath9k_eeprom_extract "art" 4096 4096
-		ath9k_patch_fw_mac_crc $(nvram get wl0_hwaddr) "$mac" 2
+		ath9k_eeprom_extract "art" 0x1000 0x1000
+		ath9k_patch_fw_mac_crc $(nvram get wl0_hwaddr) "$mac" 0x2
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
@@ -208,11 +208,11 @@ case "$FIRMWARE" in
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
 	netgear,wndr3800)
-		ath9k_eeprom_extract "art" 4096 3768
+		ath9k_eeprom_extract "art" 0x1000 0xeb8
 		;;
 	dlink,dir-825-b1)
-		ath9k_eeprom_extract "caldata" 4096 3768
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 524
+		ath9k_eeprom_extract "caldata" 0x1000 0xeb8
+		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
@@ -225,11 +225,11 @@ case "$FIRMWARE" in
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
 	netgear,wndr3800)
-		ath9k_eeprom_extract "art" 20480 3768
+		ath9k_eeprom_extract "art" 0x5000 0xeb8
 		;;
 	dlink,dir-825-b1)
-		ath9k_eeprom_extract "caldata" 20480 3768
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 524
+		ath9k_eeprom_extract "caldata" 0x5000 0xeb8
+		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 0x20c
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index de108285f2..b8a5bd28c3 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -25,8 +25,8 @@ ath10kcal_die() {
 
 ath10kcal_from_file() {
 	local source=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 
 	dd if=$source of=/lib/firmware/$FIRMWARE iflag=skip_bytes bs=$count skip=$offset count=1 2>/dev/null || \
 		ath10kcal_die "failed to extract calibration data from $source"
@@ -34,8 +34,8 @@ ath10kcal_from_file() {
 
 ath10kcal_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
@@ -93,53 +93,53 @@ case "$FIRMWARE" in
 	devolo,dvl1750e|\
 	devolo,dvl1750i|\
 	devolo,dvl1750x)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x0) -1)
 		;;
 	dlink,dir-859-a1)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii devdata "wlan5mac")
 		;;
 	elecom,wrc-1750ghbk2-i)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		;;
 	engenius,ecb1750)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_ascii u-boot-env athaddr)
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr2)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	engenius,ews511ap)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
 	glinet,gl-ar750s)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	glinet,gl-x750)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	nec,wg800hp)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(mtd_get_mac_text board_data 0x880)
 		;;
 	ocedo,koala|\
 	ocedo,ursus)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(mtd_get_mac_binary art 0xc)
 		;;
 	openmesh,om5p-ac-v2)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
 	qihoo,c301)
-		ath10kcal_extract "radiocfg" 20480 2116
+		ath10kcal_extract "radiocfg" 0x5000 0x844
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
 		;;
 	tplink,archer-a7-v5|\
@@ -147,29 +147,29 @@ case "$FIRMWARE" in
 	tplink,archer-c7-v4|\
 	tplink,archer-c7-v5|\
 	tplink,archer-c25-v1)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
 		;;
 	tplink,archer-c5-v1|\
 	tplink,archer-c7-v2)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
 		;;
 	tplink,archer-d50-v1)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
 		;;
 	tplink,re350k-v1)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
 		;;
 	tplink,re355-v1|\
 	tplink,re450-v1)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	tplink,re450-v2)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
 	ubnt,unifiac-lite|\
@@ -180,10 +180,10 @@ case "$FIRMWARE" in
 	ubnt,nanostation-ac|\
 	ubnt,nanostation-ac-loco|\
 	ubnt,unifiac-pro)
-		ath10kcal_extract "EEPROM" 20480 2116
+		ath10kcal_extract "EEPROM" 0x5000 0x844
 		;;
 	yuncore,a770)
-		ath10kcal_extract "art" 20480 2116
+		ath10kcal_extract "art" 0x5000 0x844
 		;;
 	esac
 	;;
@@ -193,18 +193,18 @@ case "$FIRMWARE" in
 	dlink,dir-842-c2|\
         dlink,dir-842-c3|\
 	nec,wg1200cr)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
 	netgear,ex6400|\
 	netgear,ex7300)
-		ath10kcal_extract "caldata" 20480 12064
+		ath10kcal_extract "caldata" 0x5000 0x2f20
 		ath10kcal_patch_mac $(mtd_get_mac_binary caldata 0xc)
 		;;
 	phicomm,k2t)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(k2t_get_mac "5g_mac")
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
@@ -214,7 +214,7 @@ case "$FIRMWARE" in
 	tplink,archer-c60-v1|\
 	tplink,archer-c60-v2|\
 	tplink,archer-c6-v2)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary mac 0x8) -1)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
diff --git a/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
index fe31ed323d..305d5feda5 100644
--- a/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
+++ b/target/linux/brcm63xx/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
@@ -8,8 +8,8 @@ rt2x00_eeprom_die() {
 
 rt2x00_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_part $part)
@@ -30,11 +30,11 @@ case "$FIRMWARE" in
 "rt2x00.eeprom" )
 	case $board in
 	hg556a_c)
-		rt2x00_eeprom_extract "cal_data" 130560 512
+		rt2x00_eeprom_extract "cal_data" 0x1fe00 0x200
 		;;
 	hg622 |\
 	hg655b)
-		rt2x00_eeprom_extract "cal_data" 0 512
+		rt2x00_eeprom_extract "cal_data" 0x0 0x200
 		;;
 	*)
 		rt2x00_eeprom_die "board $board is not supported yet"
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index a09678ca95..456017e30b 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -23,8 +23,8 @@ ath10kcal_die() {
 
 ath10kcal_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
@@ -37,8 +37,8 @@ ath10kcal_extract() {
 
 ath10kcal_ubi_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local ubidev
 	local ubi
 
@@ -97,8 +97,8 @@ case "$FIRMWARE" in
 "ath10k/cal-pci-0000:01:00.0.bin")
 	case "$board" in
 	meraki,mr33)
-		ath10kcal_ubi_extract "ART" 36864 2116
-		ath10kcal_is_caldata_valid "4408" || ath10kcal_extract "ART" 36864 2116
+		ath10kcal_ubi_extract "ART" 0x9000 0x844
+		ath10kcal_is_caldata_valid "4408" || ath10kcal_extract "ART" 0x9000 0x844
 		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +1)
 		;;
 	esac
@@ -106,7 +106,7 @@ case "$FIRMWARE" in
 "ath10k/pre-cal-pci-0000:01:00.0.bin")
 	case "$board" in
 	asus,map-ac2200)
-		ath10kcal_ubi_extract "Factory" 36864 12064
+		ath10kcal_ubi_extract "Factory" 0x9000 0x2f20
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
@@ -115,12 +115,12 @@ case "$FIRMWARE" in
 		/usr/bin/fritz_cal_extract -i 1 -s 0x3D000 -e 0x212 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader1")
 		;;
 	linksys,ea8300)
-		ath10kcal_extract "ART" 36864 12064
+		ath10kcal_extract "ART" 0x9000 0x2f20
 		# OEM assigns 4 sequential MACs
 		ath10kcal_patch_mac_crc $(macaddr_setbit_la $(macaddr_add "$(cat /sys/class/net/eth0/address)" 4))
 		;;
 	openmesh,a62)
-		ath10kcal_extract "0:ART" 36864 12064
+		ath10kcal_extract "0:ART" 0x9000 0x2f20
 		;;
 	esac
 	;;
@@ -131,14 +131,14 @@ case "$FIRMWARE" in
 	glinet,gl-b1300 |\
 	linksys,ea6350v3 |\
 	qcom,ap-dk01.1-c1)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		;;
 	asus,map-ac2200)
-		ath10kcal_ubi_extract "Factory" 4096 12064
+		ath10kcal_ubi_extract "Factory" 0x1000 0x2f20
 		;;
 	asus,rt-ac58u)
 		CI_UBIPART=UBI_DEV
-		ath10kcal_ubi_extract "Factory" 4096 12064
+		ath10kcal_ubi_extract "Factory" 0x1000 0x2f20
 		;;
 	avm,fritzbox-4040)
 		/usr/bin/fritz_cal_extract -i 1 -s 0x400 -e 0x207 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader_config")
@@ -154,29 +154,29 @@ case "$FIRMWARE" in
 	openmesh,a62 |\
 	qxwlan,e2600ac-c1 |\
 	qxwlan,e2600ac-c2)
-		ath10kcal_extract "0:ART" 4096 12064
+		ath10kcal_extract "0:ART" 0x1000 0x2f20
 		;;
 	engenius,ens620ext)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
 		;;
 	linksys,ea8300)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
 		;;
 	meraki,mr33)
-		ath10kcal_ubi_extract "ART" 4096 12064
-		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 4096 12064
+		ath10kcal_ubi_extract "ART" 0x1000 0x2f20
+		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +2)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0x0)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	esac
@@ -188,14 +188,14 @@ case "$FIRMWARE" in
 	glinet,gl-b1300 |\
 	linksys,ea6350v3 |\
 	qcom,ap-dk01.1-c1)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		;;
 	asus,map-ac2200)
-		ath10kcal_ubi_extract "Factory" 20480 12064
+		ath10kcal_ubi_extract "Factory" 0x5000 0x2f20
 		;;
 	asus,rt-ac58u)
 		CI_UBIPART=UBI_DEV
-		ath10kcal_ubi_extract "Factory" 20480 12064
+		ath10kcal_ubi_extract "Factory" 0x5000 0x2f20
 		;;
 	avm,fritzbox-4040)
 		/usr/bin/fritz_cal_extract -i 1 -s 0x400 -e 0x208 -l 12064 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader_config")
@@ -211,29 +211,29 @@ case "$FIRMWARE" in
 	openmesh,a62 |\
 	qxwlan,e2600ac-c1 |\
 	qxwlan,e2600ac-c2)
-		ath10kcal_extract "0:ART" 20480 12064
+		ath10kcal_extract "0:ART" 0x5000 0x2f20
 		;;
 	engenius,ens620ext)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
 		;;
 	linksys,ea8300)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add "$(cat /sys/class/net/eth0/address)" 3)
 		;;
 	meraki,mr33)
-		ath10kcal_ubi_extract "ART" 20480 12064
-		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 20480 12064
+		ath10kcal_ubi_extract "ART" 0x5000 0x2f20
+		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +3)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0xc)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) -1)
 		;;
 	esac
diff --git a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 4f21d4a4ef..bdc36070f2 100644
--- a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -23,8 +23,8 @@ ath10kcal_die() {
 
 ath10kcal_from_file() {
 	local source=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 
 	dd if=$source of=/lib/firmware/$FIRMWARE bs=1 skip=$offset count=$count 2>/dev/null || \
 		ath10kcal_die "failed to extract calibration data from $source"
@@ -32,8 +32,8 @@ ath10kcal_from_file() {
 
 ath10kcal_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
@@ -80,33 +80,33 @@ case "$FIRMWARE" in
 "ath10k/pre-cal-pci-0000:01:00.0.bin")
 	case $board in
 	buffalo,wxr-2533dhp)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x1e)
 		;;
 	linksys,ea8500)
-		ath10kcal_extract "art" 4096 12064
+		ath10kcal_extract "art" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +1)
 		;;
 	nec,wg2600hp)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary PRODUCTDATA 0xc) +1)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
-		ath10kcal_extract "art" 4096 12064
+		ath10kcal_extract "art" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +1)
 		;;
 	tplink,c2600)
-		ath10kcal_extract "radio" 4096 12064
+		ath10kcal_extract "radio" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x8) -1)
 		;;
 	tplink,vr2600v)
-		ath10kcal_extract "ART" 4096 12064
+		ath10kcal_extract "ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x0) -1)
 		;;
 	zyxel,nbg6817)
-		ath10kcal_extract "0:ART" 4096 12064
+		ath10kcal_extract "0:ART" 0x1000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii 0:APPSBLENV ethaddr) +1)
 		;;
 	esac
@@ -114,33 +114,33 @@ case "$FIRMWARE" in
 "ath10k/pre-cal-pci-0001:01:00.0.bin")
 	case $board in
 	buffalo,wxr-2533dhp)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x18)
 		;;
 	linksys,ea8500)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +2)
 		;;
 	nec,wg2600hp)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary PRODUCTDATA 0xc)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
-		ath10kcal_extract "art" 20480 12064
+		ath10kcal_extract "art" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +2)
 		;;
 	tplink,c2600)
-		ath10kcal_extract "radio" 20480 12064
+		ath10kcal_extract "radio" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x8)
 		;;
 	tplink,vr2600v)
-		ath10kcal_extract "ART" 20480 12064
+		ath10kcal_extract "ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x0)
 		;;
 	zyxel,nbg6817)
-		ath10kcal_extract "0:ART" 20480 12064
+		ath10kcal_extract "0:ART" 0x5000 0x2f20
 		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii 0:APPSBLENV ethaddr)
 		;;
 	esac
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index aec963a721..82f6885221 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -30,7 +30,7 @@ ath9k_eeprom_die() {
 
 ath9k_eeprom_extract_raw() {
 	local source=$1
-	local offset=$2
+	local offset=$(($2))
 	local swap=$3
 	local size=4096
 	local bs=1
@@ -50,7 +50,7 @@ ath9k_eeprom_extract_raw() {
 ath9k_eeprom_extract_reverse() {
 	local part=$1
 	local offset=$2
-	local count=$3
+	local count=$(($3))
 	local mtd
 	local reversed
 	local caldata
@@ -102,8 +102,8 @@ ath9k_patch_fw_mac_crc() {
 
 ath9k_patch_fw_mac() {
 	local mac=$1
-	local mac_offset=$2
-	local chksum_offset=$3
+	local mac_offset=$(($2))
+	local chksum_offset=$(($3))
 	local xor_mac
 	local xor_fw_mac
 	local xor_fw_chksum
@@ -135,40 +135,40 @@ case "$FIRMWARE" in
 
 		case "$board" in
 			arcadyan,arv7518pw)
-				ath9k_eeprom_extract "boardconfig" 1024 1
+				ath9k_eeprom_extract "boardconfig" 0x400 1
 				;;
 			arcadyan,arv8539pw22)
-				ath9k_eeprom_extract "art" 1024 1
+				ath9k_eeprom_extract "art" 0x400 1
 				;;
 			bt,homehub-v2b)
-				ath9k_eeprom_extract "art" 0 1
-				ath9k_patch_fw_mac_crc "00:00:00:00:00:00" 524
+				ath9k_eeprom_extract "art" 0x0 1
+				ath9k_patch_fw_mac_crc "00:00:00:00:00:00" 0x20c
 				;;
 			bt,homehub-v3a)
-				ath9k_eeprom_extract "art-copy" 0 1
-				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot_env ethaddr) +2) 268
+				ath9k_eeprom_extract "art-copy" 0x0 1
+				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot_env ethaddr) +2) 0x10c
 				;;
 			bt,homehub-v5a)
-				ath9k_ubi_eeprom_extract "caldata" 4096 0
-				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +2) 268
+				ath9k_ubi_eeprom_extract "caldata" 0x1000 0
+				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +2) 0x10c
 				;;
 			netgear,dgn3500|netgear,dgn3500b)
-				ath9k_eeprom_extract "calibration" 61440 0
-				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot-env ethaddr) +2) 524
+				ath9k_eeprom_extract "calibration" 0xf000 0
+				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot-env ethaddr) +2) 0x20c
 				;;
 			avm,fritz3370-rev2-hynix|\
 			avm,fritz3370-rev2-micron|\
 			avm,fritz7362sl)
-				ath9k_eeprom_extract_reverse "urlader" 5441 1088
+				ath9k_eeprom_extract_reverse "urlader" 0x1541 0x440
 				;;
 			avm,fritz7312|avm,fritz7320|avm,fritz7360sl)
-				ath9k_eeprom_extract "urlader" 2437 0
+				ath9k_eeprom_extract "urlader" 0x985 0
 				;;
 			avm,fritz7412)
 				/usr/bin/fritz_cal_extract -i 1 -s 0x1e000 -e 0x207 -l 4096 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader")
 				;;
 			tplink,tdw8970|tplink,tdw8980)
-				ath9k_eeprom_extract "boardconfig" 135168 0
+				ath9k_eeprom_extract "boardconfig" 0x21000 0
 				;;
 			*)
 				ath9k_eeprom_die "board $board is not supported yet"
diff --git a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index b02c891cbf..dc66226d7b 100644
--- a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -9,8 +9,8 @@ ath9k_eeprom_die() {
 
 ath9k_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
@@ -43,7 +43,7 @@ case "$FIRMWARE" in
 "pci_wmac0.eeprom")
 	case $board in
 	tplink,tl-wdr4900-v1)
-		ath9k_eeprom_extract "caldata" 4096 2048
+		ath9k_eeprom_extract "caldata" 0x1000 0x800
 		tpl_set_wireless_mac 0
 		;;
 	*)
@@ -55,7 +55,7 @@ case "$FIRMWARE" in
 "pci_wmac1.eeprom")
 	case $board in
 	tplink,tl-wdr4900-v1)
-		ath9k_eeprom_extract "caldata" 20480 2048
+		ath9k_eeprom_extract "caldata" 0x5000 0x800
 		tpl_set_wireless_mac -1
 		;;
 	*)
diff --git a/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
index 6e68f7603d..7b98936ec3 100644
--- a/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
+++ b/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
@@ -7,8 +7,8 @@ rt2x00_eeprom_die() {
 
 rt2x00_eeprom_extract() {
 	local part=$1
-	local offset=$2
-	local count=$3
+	local offset=$(($2))
+	local count=$(($3))
 	local mtd
 
 	mtd=$(find_mtd_part $part)
@@ -68,7 +68,7 @@ case "$FIRMWARE" in
 		;;
 	dovado,tiny-ac)
 		wifi_mac=$(mtd_get_mac_ascii u-boot-env INIC_MAC_ADDR)
-		rt2x00_eeprom_extract "factory" 0 512
+		rt2x00_eeprom_extract "factory" 0x0 0x200
 		rt2x00_eeprom_set_macaddr $wifi_mac
 		;;
 	*)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
