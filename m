Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176B4BA1AE
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 11:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XZ8vZtCsUlPQ3X9ZV4dU32smO5m4YnsAJMUiSP+V7cE=; b=bhfx8g4gxeSXUVDfLdgF7VgasJ
	gM7sPiis9mgBSIQdAPeJq1R2l31PwOfyOR/VqeIJ5Fi3fOp7JqFvxauprGchZuQe7mDeC6RVP+Zyf
	IZKNbzLd3IPdwmkzDQ48s2352yp/iMzufAFmj62UqrGEl3c3d9e+68svFawjj9IfMpxrUYEdt4CHb
	eWDXJ7pYghWBYktp9345ZkAoJz4rxrs49ISf8UYM+3olvZj9qkR2buSj4dJE+ny/HZKrmLM/ic+kV
	FzauYcpfzUjsvzspfiHEbsKIq9AQEq/61zn4mfCQXSeWR9jIzUw/Ws4C3thJ1w8HVfp0tIYZK1d3O
	RqaFU80g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iByei-0004ll-F4; Sun, 22 Sep 2019 09:59:48 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBycV-0003VN-3L
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 09:57:35 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MKuGD-1iUKqs0zcb-00LJAI for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 11:57:23 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 11:57:14 +0200
Message-Id: <20190922095717.1714-5-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Titl+W70yqsVZZYeQ88EqPX0pcv+ZXMxY0OoaQ9d6DxfvJNGX6E
 oZ/0N93RmodmAGa+3rxk9XN6raA066M5v9CDXElaa+fBG8BvrMBRyQYf3xxbZd9foR0nta+
 mkMGvsL2RJVrRqJw/K6RknGvKSWRyCHBqCCAMfmYumfbpAWck3x0rGqluGcYH01Bl76v2R8
 eUpPwd+96rzLzlSr3qU2w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dPPj4gdH7YI=:vNTuv8SLOd4B1trX0X8PqR
 oQVX/civpbq8nG+Q0jTCv3SLI/79rkY5/aCB1JOnMBOPuUGnsZeJarGZbbVc5xqOzKS46bRel
 gLkIZ5D5uWzDHE2r/wmnrwWhwTIWWTUbx9wVjPNqgk1ub+rkfmqG0GPWxyzZ41rSTBK+Du3HH
 ZkYF5phS53RZZK50n0N5M+1LrVFcJx6fUMOxzP9ODFIE07H2DfZlFzB+jZEwruGW7K9PRKUtb
 jwQ07fbkUz6MeQvBQhac0JLRMtjLt5qPZNBoW7Gv7krGGqijQAdT5O5+pxBsDBCvScqJVvTxD
 qH2OKTPUg7CHGTX8MwTZD24uOLoW0FAt3p9L+nBEK6UpuFtrmn/ZhQKEth7JSAOLVfZypryt0
 GpLaJmOqMBdZMptEHPyeF02pszsm+KQyf9CB3W0nYMU4ixFecr0buYRDWuigFP8s1VJCXHVAb
 GgQ/HYUmaAHCiWETZKiy+N13wDwQqbI+luXI2W4fNY6/gLWk9l3vqx9daN1URPz7QoEC5Fi+W
 pFbRuISu8we73Zv1e3iLeLnQlAL/eTCkfMfCw4MygUKuJzEFWAuuGzycHXnao8HwBeEjxW8n0
 Jyl4jD6zudfL5o8s7TucOhbnjEtyqkp8aeYczjee+h8xNnOUubb2swp6P+zCGsyH8lRZ9es+d
 JiokfGVfiyEGX3bEIqjIC63D+2i+gTT02jx8s6NeCHjlewwSAt1VAy75bUQ2ERY8PIzm5aZFP
 1kKKW/e6fIrlg5qszRsDXQK+WhIZ9c2iCKAQvLfJvEGI6DLpw6OaJlR1DwHYPIxGqGDftk3+9
 +n098U2LSfdTbq09QANcrQGggcdeB8jiFacN3oN0fZs7G0cj/RRojGFUUFWe1+mAJxu3WgaHe
 pdKaVnay9luwQX4rBT8VoGTwz8iASvYYw5ajR+hMo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_025731_459426_FC75148A 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 4/7] treewide: move MAC address patch
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

v2: rebased, put chksum calculation into separate function
---
 .../base-files/files/lib/functions/caldata.sh | 53 +++++++++++++++++
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 12 +---
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 57 ++++---------------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 31 ----------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 25 --------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 25 --------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  9 +--
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    | 43 ++------------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 +-
 .../etc/hotplug.d/firmware/10-rt2x00-eeprom   | 15 +----
 10 files changed, 74 insertions(+), 199 deletions(-)

diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/base-files/files/lib/functions/caldata.sh
index f2a306675f..db7aed5b4f 100644
--- a/package/base-files/files/lib/functions/caldata.sh
+++ b/package/base-files/files/lib/functions/caldata.sh
@@ -73,3 +73,56 @@ caldata_valid() {
 	return $?
 }
 
+caldata_patch_chksum() {
+	local mac=$1
+	local mac_offset=$(($2))
+	local chksum_offset=$(($3))
+	local xor_mac
+	local xor_fw_mac
+	local xor_fw_chksum
+
+	xor_mac=${mac//:/}
+	xor_mac="${xor_mac:0:4} ${xor_mac:4:4} ${xor_mac:8:4}"
+
+	xor_fw_mac=$(hexdump -v -n 6 -s $mac_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
+	xor_fw_mac="${xor_fw_mac:0:4} ${xor_fw_mac:4:4} ${xor_fw_mac:8:4}"
+
+	xor_fw_chksum=$(hexdump -v -n 2 -s $chksum_offset -e '/1 "%02x"' /lib/firmware/$FIRMWARE)
+	xor_fw_chksum=$(xor $xor_fw_chksum $xor_fw_mac $xor_mac)
+
+	printf "%b" "\x${xor_fw_chksum:0:2}\x${xor_fw_chksum:2:2}" | \
+		dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$chksum_offset count=2
+}
+
+caldata_patch_fw_mac() {
+	local mac=$1
+	local mac_offset=$(($2))
+	local chksum_offset=$3
+
+	[ -z "$mac" -o -z "$mac_offset" ] && return
+
+	[ -n "$chksum_offset" ] && caldata_patch_chksum "$mac" "$mac_offset" "$chksum_offset"
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
index 5ec13efd3f..5f53538229 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -4,41 +4,6 @@
 
 . /lib/functions/caldata.sh
 
-ath9k_patch_fw_mac() {
-	local mac=$1
-	local mac_offset=$(($2))
-	local chksum_offset=$3
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
-			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$(($chksum_offset)) count=2
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
-		ath9k_patch_fw_mac $(mtd_get_mac_text "mac" 0x4) 0x2
+		caldata_patch_fw_mac $(mtd_get_mac_text "mac" 0x4) 0x2
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
-		ath9k_patch_fw_mac $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
+		caldata_patch_fw_mac $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 0x2
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
-		ath9k_patch_fw_mac $(nvram get wl0_hwaddr) "$mac" 0x2
+		caldata_patch_fw_mac $(nvram get wl0_hwaddr) "$mac" 0x2
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
@@ -161,7 +126,7 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-825-b1)
 		caldata_extract "caldata" 0x1000 0xeb8
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c
+		caldata_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 0x20c
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
@@ -179,7 +144,7 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-825-b1)
 		caldata_extract "caldata" 0x5000 0xeb8
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 0x20c
+		caldata_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 0x20c
 		;;
 	*)
 		caldata_die "board $board is not supported yet"
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 30857e9c71..3175d5a1f8 100644
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
index 20160cb32b..b5dba670b1 100644
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
-	local chksum_offset=$3
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
-			dd of=/lib/firmware/$FIRMWARE conv=notrunc bs=1 seek=$(($chksum_offset)) count=2
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
