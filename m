Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25363AD13C
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Sep 2019 01:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dvsoWnG//81CDniYFpSnJ3RbCU9MDL++F/LVffc27/U=; b=aD8Vs9IoI9Y5GG
	hfUc7gqNhpzutMVhaDPeBexDybhTIUbC+5kxhpPFpKKpf2uWf5fHmoVglFIjVAEMQavtT2HgvqHB3
	BbpZQB7o0Q1QbF0VjNTpqU08EAVGATqHxTuAOM8V7Mbqozht7As5QUYT9MWffPiMBRu/WDMKZ4lIB
	0gt5BWsV97Ak6bKcGEoLCdhecrhJeqOvyIiqB2xnbGZ07M/dPuuxEsBGbjwfT3fFibHAkKjzM7R3N
	xGj8lvqh8yn5JLmXTq+VqvDfl8HQVGjilHsp8uHWkZqbzP0pWT5BjZGqu/mbp8ZHWtQSTM9m1hCmY
	BflzxATV5a5cAZCF0XWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i76lw-0000V7-Dr; Sun, 08 Sep 2019 23:39:08 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i76lq-0000Ud-1x
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 23:39:04 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MILnm-1hspZI0q1c-00EMmO for <openwrt-devel@lists.openwrt.org>; Mon, 09
 Sep 2019 01:38:52 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  9 Sep 2019 01:38:47 +0200
Message-Id: <20190908233847.18071-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:gdQXmEBWuVKi00gDHhNWPG/HndZbyn5HRXx1VXezE+NDiUt/GKi
 aF+CzS6FEKb/xdXonP2Jl2Jf0kd+htZzR1DQlUbAd+FU4dXUf6xR9QruX90crks2MeZ8+PJ
 ryK5aCdFxLwykw86v/2WgkAwat0kfbb+4PlighN0Q3MrY7Bg9+3G1G1r4+9b0OJi9awO4Gs
 2okZQpeIb5mfVvlK88nNQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PgLx7XHJa7Q=:V+Dr2dN4Zedv52zODXwLOV
 0LK3xSmYZ5I4TVxnH3jQ6Ryf9l2Gcpsv81Wu5exocGdHaEMywlC6vwtGhYsh3IauvlId0RU0I
 0OnuBT39lKPn4HGf/36evI8AhDYaKfLhVtPEQdZqof9DnLqOKtmVU7qWVg/PZAllftudcgOLt
 XZNYgzfYzDRnkIPSPVNfNCkSlHA4EuW0foP1Ypht20LmCjOZnm8D4vE6Dfksu0J0fvT7//nTH
 haEY2It6s/hK7tk9LK/Xe+VoN2oMtHu/M0tIMxFi5QZ3MshcH4NK6co4G8DhDb7mAXRWqvRgw
 tPfN4bnmvu9TIgplgGTzZb++FeFq77ivUGEPlqKNOYfdqrMHf++kEzuvrfQeDLqLQkbFgo3YR
 ea5Y8zsGgKZKcz3bHaQ1RSt+R4inQpau3UmWl3Fbr4kXDMjXfA89nBfXZ9Ir4iw93YnxP0+vA
 IJA7lC0QL+WxfKpPyR2kIIm8u1VP0AHPjmP6N64l0v5pcBpDlkN89mFkSIWW6Fkxc2Bl+0Dqm
 JwCIlJPuGfriss4w8dv4+2PFMs0ZozQsQQYXvw0oeb2krK7ubvcxW4ns/pIHsVCxJW2mP7cb+
 GgTMfHF0buIsmrJ8pHkuX95iI5Z4J0BBDzpulm2VyDm7qi51DzbV4mAbc1NjsVtdnwUKd2Ph2
 mCrgdDCmQSnCoh3U8A1WaftFDNgxv+DL9oqEY/sVHbu/5HNRNZPFhiGJyHA30LHLWiO01k0r1
 M6y92EiT9qa8/S7oq4twOroBMXa7J9PZBs2uJTtxmc6q0lqibcdOmU2gD7LDRPclkrEVvA8ci
 A/jAejlgp0j58t5led3ko80q2jJIePiA9kSAnR/z8mO5YAtBxZYouxDqCF5cOccW7EyDd+o
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_163902_397849_50E5CF1B 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/5] lantiq: modify ath9k caldata extraction
 to reuse caldata.sh
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

In lantiq, ath9k caldata extraction is implemented to work in two
alternate "modes", the standard one and another one with conv=swab.

This rearranges the functions so "standard" use is based on the
caldata.sh library, while only a single local function is required
for the special case.

Note that the size of the caldata needs to be included into the
call for functions located in caldata.sh.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This patch is a late addition to the caldata.sh patchset and has
to be applied last.
---
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    | 61 +++++--------------
 1 file changed, 14 insertions(+), 47 deletions(-)

diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index b5dba670b1..a4c6aa4f18 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -1,55 +1,22 @@
 #!/bin/sh
-# Based on ar71xx 10-ath9k-eeprom
 
 [ -e /lib/firmware/$FIRMWARE ] && exit 0
 
 . /lib/functions/caldata.sh
-. /lib/upgrade/nand.sh
 
-ath9k_eeprom_extract_raw() {
-	local source=$1
-	local offset=$(($2))
-	local swap=$3
-	local size=4096
-	local bs=1
-	local conv=
-
-	if [ $swap -gt 0 ]; then
-		bs=2
-		conv="conv=swab"
-		size=$((size / bs))
-		offset=$((offset / bs))
-	fi
-
-	dd if=$source of=/lib/firmware/$FIRMWARE bs=$bs skip=$offset count=$size $conv 2>/dev/null || \
-			caldata_die "failed to extract from $mtd"
-}
-
-ath9k_eeprom_extract() {
+caldata_extract_swap() {
 	local part=$1
 	local offset=$2
-	local swap=$3
+	local count=2048
 	local mtd
 
 	mtd=$(find_mtd_chardev $part)
-	[ -n "$mtd" ] || \
-		caldata_die "no mtd device found for partition $part"
-
-	ath9k_eeprom_extract_raw $mtd $offset $swap
-}
-
-ath9k_ubi_eeprom_extract() {
-	local part=$1
-	local offset=$2
-	local swap=$3
-	local ubidev=$(nand_find_ubi $CI_UBIPART)
-	local ubi
+	[ -n "$mtd" ] || caldata_die "no mtd device found for partition $part"
 
-	ubi=$(nand_find_volume $ubidev $part)
-	[ -n "$ubi" ] || \
-		caldata_die "no UBI volume found for $part"
+	offset=$(($offset / 2))
 
-	ath9k_eeprom_extract_raw /dev/$ubi $offset $swap
+	dd if=$mtd of=/lib/firmware/$FIRMWARE bs=2 skip=$offset count=$count conv=swab 2>/dev/null || \
+		caldata_die "failed to extract calibration data from $mtd"
 }
 
 case "$FIRMWARE" in
@@ -60,25 +27,25 @@ case "$FIRMWARE" in
 
 		case "$board" in
 			arcadyan,arv7518pw)
-				ath9k_eeprom_extract "boardconfig" 0x400 1
+				caldata_extract_swap "boardconfig" 0x400
 				;;
 			arcadyan,arv8539pw22)
-				ath9k_eeprom_extract "art" 0x400 1
+				caldata_extract_swap "art" 0x400
 				;;
 			bt,homehub-v2b)
-				ath9k_eeprom_extract "art" 0x0 1
+				caldata_extract_swap "art" 0x0
 				caldata_patch_fw_mac_crc "00:00:00:00:00:00" 0x20c
 				;;
 			bt,homehub-v3a)
-				ath9k_eeprom_extract "art-copy" 0x0 1
+				caldata_extract_swap "art-copy" 0x0
 				caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot_env ethaddr) +2) 0x10c
 				;;
 			bt,homehub-v5a)
-				ath9k_ubi_eeprom_extract "caldata" 0x1000 0
+				caldata_extract_ubi "caldata" 0x1000 0x1000
 				caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +2) 0x10c
 				;;
 			netgear,dgn3500|netgear,dgn3500b)
-				ath9k_eeprom_extract "calibration" 0xf000 0
+				caldata_extract "calibration" 0xf000 0x1000
 				caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot-env ethaddr) +2) 0x20c
 				;;
 			avm,fritz3370-rev2-hynix|\
@@ -87,13 +54,13 @@ case "$FIRMWARE" in
 				caldata_extract_reverse "urlader" 0x1541 0x440
 				;;
 			avm,fritz7312|avm,fritz7320|avm,fritz7360sl)
-				ath9k_eeprom_extract "urlader" 0x985 0
+				caldata_extract "urlader" 0x985 0x1000
 				;;
 			avm,fritz7412)
 				/usr/bin/fritz_cal_extract -i 1 -s 0x1e000 -e 0x207 -l 4096 -o /lib/firmware/$FIRMWARE $(find_mtd_chardev "urlader")
 				;;
 			tplink,tdw8970|tplink,tdw8980)
-				ath9k_eeprom_extract "boardconfig" 0x21000 0
+				caldata_extract "boardconfig" 0x21000 0x1000
 				;;
 			*)
 				caldata_die "board $board is not supported yet"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
