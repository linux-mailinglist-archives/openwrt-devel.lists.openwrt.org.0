Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE318ACF2A
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Sep 2019 16:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EJUPUW+VtQJQY6ozhoSWbByqJ8AC8L5PB3bjuVxh3z8=; b=jrED03ZYBn895Wv7qSwp1mEsHt
	KfNCf/bpG7XKK4REsxoH2wZbPh0Ct+DI/NwdHf2Taf23CC/zk+1o6+B3oNeBdxEVaPnxCgDHzueEk
	CiUVcUyvtJE0/54PEQG8kgl8FpjWPqeuMvwKZwrBka8dQ1Epx0UQPMGcle85v+rKlyvJ1NVmywxtB
	xbvPHkmEuNu2HJMW7RoeD9XuwZuM3Uilvblala6MDZhk4OXQAQJte0RN5REvO7Z7k1LDLm8JanIEa
	RI9OFdi7aCjuOo+zTOSsuTZf27QwbQlHSYEGHSJ9H6eI9tGi5hjvUAhzOMzbaEyQ3flaLtmp+FhFQ
	nbgTFYDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xuh-00081U-Lm; Sun, 08 Sep 2019 14:11:35 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xu8-000729-22
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 14:11:03 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MkIEJ-1iZRxR3UU5-00keJT for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Sep 2019 16:10:56 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Sep 2019 16:10:51 +0200
Message-Id: <20190908141052.17443-4-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
References: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:XKP68MsX3rRCCp5Opqvu5b2BgOnNAbbysJjZP0yD0NTFQjLmTAJ
 sigR3+cF7DZ+pfinGuITQen4VcGKNrgIJjUxgqWndplxZp4+jNbAnktmCQm8HuHTCZylj/o
 AkjEEZN7Lxt/F4dzsIIoyeg7Oxm4VQk8/fgnckpdP+MUQsnNJkvuD/Abu+HkSioMVoOJE0t
 8NCW8Koe4MWd4j63Q6reg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MBA9SZcWWxs=:x4M4WFx6C/7sbwZE2BSVqX
 1RI6Rod/5uafLAVxGXInE0rr+F0mJlVW2SmBdwKkT9QSLPBrlHlDkyjexiQeig2BNNWQIHSkS
 so2/qCWTfqlQMINLoYDB4jq8nXI+a8JoK0z1c0UDI+N6bqNYdx01Jf+m8unXmlrJDdhnnwsoN
 371w+qwIx8j/W0BcMoT/rgvsy2cXy8rEueRnVSWh1uaGs3xj4qnW/Yuss4I9Lwoleixe0Ohd6
 9klCT3CArGDR8pbmvmmS6SE4CXl6DXq5Xr9hvgeTsI2QrqOo9jrT2qcbj6jo8k5r3mEG4I4wv
 uG2cdsvktYaHz54HF4vGPjMzBPS6TWR4c2IflN6+FWrwI+FXc08P7NA2YFUXNbBuI7QAqzSpv
 2iJ0khOM6QAEfo2ZQWbwG/2rhyS43dROYTqUArLSq8F1aIHiwDdP4ehXrrKy3FlTwAf8mFOir
 mJfJTEQisXufsJW+aeqHAGqzursOz7gRvhuNrKnqrV+2gZcLPLk8uTiOKqnnvnTbh/CuKr77X
 Y04/65IiQ1ml+Ns0NoOZ4AlxYMxGFCmZUrXs0Bqi+BZsoWCc8z05pHIokDfAUeXMTTEl9UU11
 Fkj4wiYXiPXvsnoHPwGq+2Iig3FLDIBomT6XaOovqROnuvxPzwG0oA2eJeC4PkuUSnzxdX/jk
 xcRFffkGCKCMHTB6Db+l73W0k8wqPqzIqcnGVXERa0kYzqwI1m+t2SsdT6c4lIr8Vzjcn/IBv
 wYAKdKMmtr62KTSRtvh1dcBzcAxymCEhrn+Ktfcaf8PUwROXI8JFSsPVYsbvVFE6LnU1+elJR
 THomfL4knb131n7FBF8K8CGVdV66Hh1p1DrQRrbX4KQ1029eMcB+IQa9O2KLNAfdBmW7R5k
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_071100_430901_E217E462 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/4] treewide: move MAC address patch
 functions to common library
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

This unifies MAC address patch functions and moves them to a
common script. While those were implemented differently for
different targets, they all seem to do the same. The number of
different variants is significantly reduced by this patch.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../base-files/files/lib/functions/caldata.sh | 47 +++++++++++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 12 +---
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 57 ++++---------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 31 ----------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 25 --------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 25 --------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  9 +--
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    | 43 ++------------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 +-
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   | 15 +----
 10 files changed, 68 insertions(+), 199 deletions(-)

diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/base-files/files/lib/functions/caldata.sh
index f2a306675f..1a1849b93f 100644
--- a/package/base-files/files/lib/functions/caldata.sh
+++ b/package/base-files/files/lib/functions/caldata.sh
@@ -73,3 +73,50 @@ caldata_valid() {
 	return $?
 }
 
+caldata_patch_fw_mac() {
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
+	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc oflag=seek_bytes bs=6 seek=$mac_offset count=1 || \
+		caldata_die "failed to write MAC address to eeprom file"
+}
+
+caldata_patch_fw_mac_crc() {
+	local mac=$1
+	local mac_offset=$2
+	local chksum_offset=$((mac_offset - 10))
+
+	caldata_patch_fw_mac "$mac" "$mac_offset" "$chksum_offset"
+}
+
+ath10kcal_patch_mac() {
+	local mac=$1
+
+	caldata_patch_fw_mac "$mac" 0x6
+}
+
+ath10kcal_patch_mac_crc() {
+	local mac=$1
+
+	caldata_patch_fw_mac "$mac" 0x6 0x2
+}
diff --git a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 07100b1856..a03c3436cb 100644
--- a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -4,14 +4,6 @@
 
 . /lib/functions/caldata.sh
 
-ath9k_patch_firmware_mac() {
-	local mac=$1
-
-	[ -z "$mac" ] && return
-
-	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=2 count=6
-}
-
 board=$(board_name)
 
 case "$FIRMWARE" in
@@ -24,7 +16,7 @@ case "$FIRMWARE" in
 			caldata_extract_ubi "caldata" 0x5000 0x1000
 		else
 			caldata_extract "wifi_data" 0x5000 0x1000
-			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0xc)
+			caldata_patch_fw_mac $(mtd_get_mac_binary wifi_data 0xc) 0x2
 		fi
 		;;
 	*)
@@ -42,7 +34,7 @@ case "$FIRMWARE" in
 			caldata_extract_ubi "caldata" 0x1000 0x1000
 		else
 			caldata_extract "wifi_data" 0x1000 0x1000
-			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0x0)
+			caldata_patch_fw_mac $(mtd_get_mac_binary wifi_data 0x0) 0x2
 		fi
 		;;
 	*)
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 3432014f60..d5b2a51a70 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -4,41 +4,6 @@
 
 . /lib/functions/caldata.sh
 
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
-
 board=$(board_name)
 
 case "$FIRMWARE" in
@@ -50,7 +15,7 @@ case "$FIRMWARE" in
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		caldata_extract "art" 0x1000 0x440
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2
+		caldata_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2
 		;;
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
@@ -59,11 +24,11 @@ case "$FIRMWARE" in
 	nec,wg1200cr|\
 	wd,mynet-n750)
 		caldata_extract "art" 0x1000 0x440
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
+		caldata_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	engenius,ecb1750)
 		caldata_extract "art" 0x1000 0x440
-		ath9k_patch_fw_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env "athaddr") +1) 0x2
+		caldata_patch_fw_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env "athaddr") +1) 0x2
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
@@ -71,15 +36,15 @@ case "$FIRMWARE" in
 	iodata,wn-ac1600dgr2|\
 	iodata,wn-ag300dgr)
 		caldata_extract "art" 0x1000 0x440
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
+		caldata_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
 		;;
 	nec,wg800hp)
 		caldata_extract "art" 0x1000 0x440
-		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 0x2
+		caldata_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 0x2
 		;;
 	qihoo,c301)
 		caldata_extract "radiocfg" 0x1000 0x440
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
+		caldata_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan24mac") 0x2
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
@@ -103,7 +68,7 @@ case "$FIRMWARE" in
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		caldata_extract "art" 0x5000 0x440
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
+		caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
 		;;
 	ocedo,raccoon|\
 	tplink,tl-wdr3500-v1|\
@@ -139,11 +104,11 @@ case "$FIRMWARE" in
 		;;
 	wd,mynet-n750)
 		caldata_extract "art" 0x5000 0x440
-		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan5mac") 0x2
+		caldata_patch_fw_mac $(mtd_get_mac_ascii devdata "wlan5mac") 0x2
 		;;
 	wd,mynet-wifi-rangeextender)
 		caldata_extract "art" 0x1000 0x1000
-		ath9k_patch_fw_mac_crc $(nvram get wl0_hwaddr) "$mac" 0x2
+		caldata_patch_fw_mac_crc $(nvram get wl0_hwaddr) "$mac" 0x2
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
@@ -160,7 +125,7 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-825-b1)
 		caldata_extract "caldata" 0x1000 0xeb8
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c
+		caldata_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
@@ -177,7 +142,7 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-825-b1)
 		caldata_extract "caldata" 0x5000 0xeb8
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 0x20c
+		caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 0x20c
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 6417f28a23..68460c855e 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -5,37 +5,6 @@
 . /lib/functions/caldata.sh
 . /lib/functions/k2t.sh
 
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
 board=$(board_name)
 
 case "$FIRMWARE" in
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 61597ea669..898e0bb074 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -4,31 +4,6 @@
 
 . /lib/functions/caldata.sh
 
-ath10kcal_patch_mac_crc() {
-	local mac=$1
-	local mac_offset=6
-	local chksum_offset=2
-	local xor_mac
-	local xor_fw_mac
-	local xor_fw_chksum
-
-	[ -z "$mac" ] && return
-
-	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-	xor_fw_mac="${xor_fw_mac:0:4} ${xor_fw_mac:4:4} ${xor_fw_mac:8:4}"
-
-	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=6 count=6
-
-	xor_mac=${mac//:/}
-	xor_mac="${xor_mac:0:4} ${xor_mac:4:4} ${xor_mac:8:4}"
-
-	xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-	xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
-
-	printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
-		dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
-}
-
 board=$(board_name)
 
 case "$FIRMWARE" in
diff --git a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 12b76ec33f..f8a4c98542 100644
--- a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -4,31 +4,6 @@
 
 . /lib/functions/caldata.sh
 
-ath10kcal_patch_mac_crc() {
-	local mac=$1
-	local mac_offset=6
-	local chksum_offset=2
-	local xor_mac
-	local xor_fw_mac
-	local xor_fw_chksum
-
-	[ -z "$mac" ] && return
-
-	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-	xor_fw_mac="${xor_fw_mac:0:4} ${xor_fw_mac:4:4} ${xor_fw_mac:8:4}"
-
-	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=6 count=6
-
-	xor_mac=${mac//:/}
-	xor_mac="${xor_mac:0:4} ${xor_mac:4:4} ${xor_mac:8:4}"
-
-	xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
-	xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
-
-	printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
-		dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
-}
-
 board=$(board_name)
 
 case "$FIRMWARE" in
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 5b03fb0e01..244635c6db 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -5,20 +5,13 @@
 
 . /lib/functions/caldata.sh
 
-ath10k_caldata_set_macaddr() {
-	local macaddr=$1
-
-	macaddr_2bin $macaddr | dd of=/lib/firmware/$FIRMWARE \
-				conv=notrunc bs=1 seek=6 count=6
-}
-
 case "$FIRMWARE" in
 "ath10k/cal-pci-0000:02:00.0.bin")
 	board=$(board_name)
 	case $board in
 		bt,homehub-v5a)
 			caldata_extract_ubi "caldata" 0x5000 0x844
-			ath10k_caldata_set_macaddr $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
+			ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
 			;;
 		*)
 			caldata_die "board $board is not supported yet"
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index 192dcecb28..b5dba670b1 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -52,41 +52,6 @@ ath9k_ubi_eeprom_extract() {
 	ath9k_eeprom_extract_raw /dev/$ubi $offset $swap
 }
 
-ath9k_patch_fw_mac_crc() {
-	local mac=$1
-	local mac_offset=$2
-	local chksum_offset=$((mac_offset - 10))
-
-	ath9k_patch_fw_mac "${mac}" "${mac_offset}" "${chksum_offset}"
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
-	macaddr_2bin $mac | dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$mac_offset count=6
-}
-
 case "$FIRMWARE" in
 	"ath9k-eeprom-pci-0000:00:0e.0.bin" | \
 	"ath9k-eeprom-pci-0000:01:00.0.bin" | \
@@ -102,19 +67,19 @@ case "$FIRMWARE" in
 				;;
 			bt,homehub-v2b)
 				ath9k_eeprom_extract "art" 0x0 1
-				ath9k_patch_fw_mac_crc "00:00:00:00:00:00" 0x20c
+				caldata_patch_fw_mac_crc "00:00:00:00:00:00" 0x20c
 				;;
 			bt,homehub-v3a)
 				ath9k_eeprom_extract "art-copy" 0x0 1
-				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot_env ethaddr) +2) 0x10c
+				caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot_env ethaddr) +2) 0x10c
 				;;
 			bt,homehub-v5a)
 				ath9k_ubi_eeprom_extract "caldata" 0x1000 0
-				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +2) 0x10c
+				caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +2) 0x10c
 				;;
 			netgear,dgn3500|netgear,dgn3500b)
 				ath9k_eeprom_extract "calibration" 0xf000 0
-				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot-env ethaddr) +2) 0x20c
+				caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot-env ethaddr) +2) 0x20c
 				;;
 			avm,fritz3370-rev2-hynix|\
 			avm,fritz3370-rev2-micron|\
diff --git a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 168f10e0f6..3b9d9130f9 100644
--- a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -24,9 +24,8 @@ tpl_set_wireless_mac()
 	local mac
 
 	mac=$(mtd_get_mac_binary u-boot 0x4fc00)
-	mac=$(macaddr_add $mac $offset)
 
-	macaddr_2bin $mac | dd bs=1 count=6 seek=2 conv=notrunc of=/lib/firmware/$FIRMWARE 2>/dev/null
+	caldata_patch_fw_mac $(macaddr_add $mac $offset) 0x2
 }
 
 board=$(board_name)
diff --git a/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom b/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
index ec70d86dac..52d81a29c4 100644
--- a/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
+++ b/target/linux/ramips/base-files/etc/hotplug.d/firmware/10-rt2x00-eeprom
@@ -17,17 +17,6 @@ jboot_eeprom_extract() {
 		caldata_die "failed to extract from $mtd"
 }
 
-rt2x00_eeprom_set_macaddr() {
-	local macaddr=$1
-
-	[ -n "$macaddr" ] || \
-		caldata_die "invalid wlan mac address"
-
-	macaddr_2bin $macaddr | dd of=/lib/firmware/$FIRMWARE \
-				conv=notrunc oflag=seek_bytes bs=6 seek=4 count=1 2>/dev/null || \
-		caldata_die "failed to write mac address to eeprom file"
-}
-
 board=$(board_name)
 
 case "$FIRMWARE" in
@@ -43,12 +32,12 @@ case "$FIRMWARE" in
 		wan_mac=$(jboot_config_read -m -i $(find_mtd_part "config") -o 0xE000)
 		wifi_mac=$(macaddr_add "$wan_mac" 1)
 		jboot_eeprom_extract "config" 0xE000
-		rt2x00_eeprom_set_macaddr $wifi_mac
+		caldata_patch_fw_mac $wifi_mac 0x4
 		;;
 	dovado,tiny-ac)
 		wifi_mac=$(mtd_get_mac_ascii u-boot-env INIC_MAC_ADDR)
 		caldata_extract "factory" 0x0 0x200
-		rt2x00_eeprom_set_macaddr $wifi_mac
+		caldata_patch_fw_mac $wifi_mac 0x4
 		;;
 	*)
 		caldata_die "Please define mtd-eeprom in $board DTS file!"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
