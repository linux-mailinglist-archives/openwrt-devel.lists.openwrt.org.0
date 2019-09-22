Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85269BA1AB
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 11:59:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=idFjjBAOhF5IOg7uMgNlim2HrCojmCtkvVThnDUuKj0=; b=N/OjZRzj0i71514u3T7N3vAvXu
	JWeXT4IiikBkx4squZmPLqF/o7MC1iYflxwymJoG1uqyPC0xinZ871L2F4REFpF3DsJbo23LNBhbR
	sOPmgax0BwCdlCjiWub1VaQnssw6v9O0nArhNUaBgasGyWIHFT7CaznWXJeugpOAidkoHv+vP4Mlu
	fQRKh0Tlhp3TrE9Tk2kC09IFPjwCzam/nb2gIe1jnzsPCvEXCdoM/30p+Pipsl3lLl8zIHsc/jfws
	k/aH+Qv8Uj4p0l6ZSGKZhkurIKVS6LaUq7bCNRlDULZjuXe7tue4rJO4T6R4Bp3h1K2UPx4IrGUo8
	7Ze1fjxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBydu-000410-HJ; Sun, 22 Sep 2019 09:58:58 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBycU-0003VP-Po
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 09:57:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MHmuE-1iNZkT2o22-00Eqzp for <openwrt-devel@lists.openwrt.org>; Sun, 22
 Sep 2019 11:57:23 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 22 Sep 2019 11:57:17 +0200
Message-Id: <20190922095717.1714-8-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:FHtgX/EXxyKXL2wLxQ5h5tfc3pi1vxEzStBO3Ytd8Q0ax0gCBdm
 v9EtzgMEq0LEyBMjubuYbLpuMOHe9dAqlmgaqwJFtGXV8VVfW9bal/SS6DVVDIP3HtF6GTc
 p5hH5y3NEEz5g1Igpxm68xBLdxPWuJaxI/svcRmDyx0IWOHEXB05hW5arJ8aVvVMwURy4eS
 aImrw/BMmBIoAsMTDz1xA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fpoYrpNtwSI=:sPQ1EKbqzNZhTSktgs670J
 tndbQ0Vn/KjWj/lPXjhhcvb+f5UEDKYBkEh6eCcr0Qu1KbT3VU1X6h3tIsjocOOuij7oP3k4g
 Mlyw3g70w44vlsSL10qaANbnGtacoE9wU8XvVM0y6XfPLqGDsygL7xGjOaM6eZCODlM+J99fL
 IADagAXyihArxH3OGyma7t+EfqFweTIyufOo9GZVpyJWIV2dFk4mHfek9qzHEwCu8HDkSLTYT
 iUXVckC0/rLIM4MOu5qeNyEJj4N2hJvxokEHCOfSVZYDvwtfhDYfAiTSyL8BLvHmcxrW8D4i5
 S1y41tgvSqkV7CungoSUXc2/FdUHRV1c6kJGPdbatoXPMS9DH22b3R1oB97DcmUHIZeMqxSfy
 B201Sicmyl8Fayt3tbG6XHSjvRn/nv7TTwWq/aSBuzSlSUsrOCJshsN8EYcR6YBsOHAly22Zo
 S5Zzmm00CAp8v9lWJPPR/LrCwH0g0vTU32kxeHxYZ+xxEP2OFVxTfG+WTLvwhSS5wihOVRfa3
 SDEckL/RyfWXvIuWM3t56IvlBKdzsZcYHOXdtQIJYquxKmXx8+ugyAy1fED/xd/YqrF+75DSL
 lV97ZK9IpxCteb6vmFdDHYe/iR+H1p1FlOoFNCO1o3O6IdJhXpbMcvjxFp/3z8JQ6yutsLSk5
 soHxKaoYLDi1MWZr4JNfwoNFEKCega7LZx5jTTd5yxOQT5dgxTOgY9Jy8Hlsn9NOi+/5Uj1o9
 cJnQTjMToYLShpQfK0mom9d3l6ZshOFrfZfKZXs7yh2h3EPMwDvcnqyv0dq7TK7PnmD2Th4pV
 WrY/VyppWY9flWLn8BuVBihKEbfmv2GG0eKbNhzBZWPu9O5TSqdZkUEZQQ3JpN6uDJJuWnNQP
 F0fSNNDA6NVndFzuCnTKdZO6euDfP+BVx5rRwsjGk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_025731_322020_C8BDBF0F 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH v2 7/7] lantiq: modify ath9k caldata
 extraction to reuse caldata.sh
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
alternate "modes", the standard one and another one with swapped
byte pairs.

This rearranges the functions so "standard" use is based on the
caldata.sh library, while only a single local function is required
for the special case.

Note that while the parameter for switching between normal and swab
is removed, the size of the caldata is added to the function calls
to stay consistent.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2:
- Added this patch (previously separate [5/5] lantiq: modify ath9k caldata extraction to reuse caldata.sh)
- Made size in caldata_extract_swap a parameter to match other functions
---
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    | 62 +++++--------------
 1 file changed, 15 insertions(+), 47 deletions(-)

diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index b5dba670b1..f3627c40ca 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -1,55 +1,23 @@
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
+	local count=$3
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
+	count=$(($count / 2))
 
-	ath9k_eeprom_extract_raw /dev/$ubi $offset $swap
+	dd if=$mtd of=/lib/firmware/$FIRMWARE bs=2 skip=$offset count=$count conv=swab 2>/dev/null || \
+		caldata_die "failed to extract calibration data from $mtd"
 }
 
 case "$FIRMWARE" in
@@ -60,25 +28,25 @@ case "$FIRMWARE" in
 
 		case "$board" in
 			arcadyan,arv7518pw)
-				ath9k_eeprom_extract "boardconfig" 0x400 1
+				caldata_extract_swap "boardconfig" 0x400 0x1000
 				;;
 			arcadyan,arv8539pw22)
-				ath9k_eeprom_extract "art" 0x400 1
+				caldata_extract_swap "art" 0x400 0x1000
 				;;
 			bt,homehub-v2b)
-				ath9k_eeprom_extract "art" 0x0 1
+				caldata_extract_swap "art" 0x0 0x1000
 				caldata_patch_fw_mac_crc "00:00:00:00:00:00" 0x20c
 				;;
 			bt,homehub-v3a)
-				ath9k_eeprom_extract "art-copy" 0x0 1
+				caldata_extract_swap "art-copy" 0x0 0x1000
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
@@ -87,13 +55,13 @@ case "$FIRMWARE" in
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
