Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA7DD61EE
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1smNgh8F74MByzmh25KkKGmmi1o5VI5yecI1CWtVqlM=; b=HEalEkaidjsZ2BA7vcUnxAmEPg
	nsHmFc/L6405D4RoZVSt3IqBsPdlf6EEJNT4TbL2IFv6f0WwSIz2JeUB1DCA+od5/4SZ6rArHH4eZ
	UqUXlpKzFWFlOIKyZYYbQwMnYjos/fx38YF4GouuyxCI1ejm0Kwohq2Yg9Qj1fYf3m50DA+rHZKE1
	KChZ9pZWYnfKh2yMhPJJLP/GabvKxIRDl/SMpDVP32fdppvrdlOPZ93knk9Yo3NixGVCSTq8cW/Fp
	Yun+tPLjA6NaXt6K7CdfKBKdjxAxXLvigCy++Xu2Lq5Qzj8UZdNjjuNIUQECb4P9wSqXF6qtX6i6b
	IJqwrZEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJz41-0003ah-F0; Mon, 14 Oct 2019 12:03:01 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz3p-0003Zo-8c
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:02:51 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MvaSG-1i1uB03FqA-00sams for <openwrt-devel@lists.openwrt.org>; Mon, 14
 Oct 2019 14:02:44 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 14 Oct 2019 14:02:41 +0200
Message-Id: <20191014120241.2420-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191014120241.2420-1-freifunk@adrianschmutzler.de>
References: <20191014120241.2420-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:BsswGJRRE6EE+8Myr9sszmeFQEPJoLqXWd0vGs2mB7xyA6LbSsY
 tvtPjqLnl4q/H8fAaV/1OwplEAw3Hdn9V+Rtdmzj/IOlc2LdkRCwZzETS4VsZ8YZgl9Tn5P
 hQqdukMHHxAVxCl9h7/awRK76b+6Icx3KfthRORe1pXTpkw0/N/gfAkduoCBzPk9bbX2eph
 sKZud9D3zQgku8B5Axa3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OxddgkL2Ygg=:Na4EYZhoildZxd9Tl1Q79M
 fAkfT0Bp7dazfOjh6iCZbnYVpvW8SieTUP5tM8WQZs9LfmypLYJIyhb1Qk9WBvGvQSGXNdKET
 ssCnmJ2u0+OxGgUauZj5FwNFtoMeF3F+DYbfvWGkUVWDoybov510zJaKdetFy8jKEUWmsDgTc
 +XCnqnxJoj9GpazLWTsJhKbyZxFWIH2I3mvNFjzk7ccWQLWjtPnyM8kJhrVXL/iFIEHlu9EfP
 N0ilHMf+sDU55INMBg31MiciQ/rVDQT/AV5zxIKSQ9pP3p0oXxAuSVXvJLJ0lFe2D0ewwTy0Z
 k8VhypWGMlaKhbw6HJt4Jd1j0F1dRoDdTariYocmJ0PBcpdges90FvyuKpWf9Fcwezq75vQAN
 PABLPecqjCz4ZQ1slyLaqO6rmdw3hipN2DdsJEQEesy72ICkzR/gU+0dAh7DmmD/sxuNo60/O
 nG91MVN3fJtHw4FQFx+rFrCwCcMS8VZjY5Opp2IiH/49snHNAF4nL+iwZNxEwZOXubPeUjJSK
 PsAPa0/Bkk51TESTDMSZWSkkHSVp8M75gCFjbEn8bV6J1AOQd1nEQn+xrthJ1MfKRZGekmvhC
 ikbL/cIN+emFwihTbof0sISMgDOOOgD9+TSGiDg95qQ5AkcQyxHFaaD5Oprw9N4f2YSCT0J50
 Zt+xsbtCKAORnsrOBN3FGe14d+bm/LvUdsf9EG76xlmJB3k158xUlJ0lxbwEdFbRsDOGTJ+5X
 Kj8fy0F575zVFeREa5get9K8mKRMt6d6aTQsnH+XfcbqQsERgqx4VqPg4aupry9LQQsleMSlt
 pNeQdolFYbBVsL/zhHZtgXYWg5Ox9JpSZdZLpFyOdtaQcQG4jONT7j4ExPQ2/yRkXmk70stDt
 maZtndXhQlqG/20fRBfpbcbeU6WL6j6uMuL+7UzBY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_050249_599218_A57B5AC2 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3 2/2] lantiq: modify ath9k caldata
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

v3:
- Rebase, no other changes
---
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    | 62 +++++--------------
 1 file changed, 15 insertions(+), 47 deletions(-)

diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index d0bef23045..5a6e8d360b 100644
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
 				ath9k_patch_mac_crc "00:00:00:00:00:00" 0x20c
 				;;
 			bt,homehub-v3a)
-				ath9k_eeprom_extract "art-copy" 0x0 1
+				caldata_extract_swap "art-copy" 0x0 0x1000
 				ath9k_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot_env ethaddr) +2) 0x10c
 				;;
 			bt,homehub-v5a)
-				ath9k_ubi_eeprom_extract "caldata" 0x1000 0
+				caldata_extract_ubi "caldata" 0x1000 0x1000
 				ath9k_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +2) 0x10c
 				;;
 			netgear,dgn3500|netgear,dgn3500b)
-				ath9k_eeprom_extract "calibration" 0xf000 0
+				caldata_extract "calibration" 0xf000 0x1000
 				ath9k_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii uboot-env ethaddr) +2) 0x20c
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
