Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4487D61EF
	for <lists+openwrt-devel@lfdr.de>; Mon, 14 Oct 2019 14:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PAul6QOgPNpVZBTHLQtlGWb1GAAc2ZEAGUCApeuELDw=; b=L9tgyItgOZ48nx
	s1lfcBZGJSoaXYos6yFjQv/f4+Vyt7gosbKwazLtT2ydKsTpdNqlAus2dQ/Yut8i93eBku+Z0h7je
	y4RukNTdJtyvX9kOf6KS61M/+HHdqyVAItIGweFjxzRk2aI1hBlszfqW4cBKoXdq/pkqJrN/Cibun
	3V97fiwWVEZyEt/WZQHxN09/eIy4eKtx38MrLus5ZnpLmO40VQiL95XoqXfkM+5RVnCWPdT8KhCMG
	HV3PfOkstkngxS/mydvEgMGGxSXWjECgCkwdzlz5s+R0cTKVzvqvH4Shcvg9tWPR0kjhh0Z9sQl3N
	ZI8sWTVlxcA0ySpIPT6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJz4I-0003lA-BB; Mon, 14 Oct 2019 12:03:18 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz3p-0003Zl-0n
 for openwrt-devel@lists.openwrt.org; Mon, 14 Oct 2019 12:02:51 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MBmI6-1iCGLo2g2O-00CChY for <openwrt-devel@lists.openwrt.org>; Mon, 14
 Oct 2019 14:02:44 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 14 Oct 2019 14:02:40 +0200
Message-Id: <20191014120241.2420-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:FHuZpKtQPDHqKQavqjeue0q5ZLaonlaL5tNuOwa1ai1Hk8ayR3F
 PfHiHBiZ2Fcf7PLw+ccmmwHIe4qqo3QCZl+un+S3eQtvhYwU+r0a5/WQSSoW9tCFU7YjeD7
 AQStAlzdqQvilJcAJ3pGjR3rUvq2xgXJm64v0a2BmxLxusPZ45xa7z1PJPzQbIhKaFR4e61
 SH/44P/CkO2jngX11ZlXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8Sh3v2dTY5w=:JG4B081m341L9/i/HchyZp
 drHdugpkYdp+WNuZQZn6XhSakOmCA29tjaA1DfvSRcXwoLWWKEEQlQQybnSKD99lPCUzcjeYm
 0IAEtqVdPWxaND5fOGSVTHIRRVHSXgvFs4UmijSWr38hZjMovdQWECBEyji4Hs4uO+WYord2/
 CUvCSydZi4q13qPSVa03OXFNWCeO8jc66YShSAiCgWur4kTM3dYdUwXhWoM6sqh+VB/iMhUWx
 zkKzHTgxCChStj+aiESC1HAiAYcVKL9Mlnh3bJAU7HRJEDuTc88DUNIo8sPpECXi+so63o9Sy
 22Zbm/kYj6DNasTRzFmNQ8WjYByGlOHfGTtQtMmCcCs7T8/Idq70+exUnnuq5l0iZqhVu8TB9
 gEexG2DMKPRyHg+ASZpQUTDcTZECIjQmNKf/xHW6Q3c6CptcRKaY/OS/DGa3pMA5+xnO+R2ds
 oHUR51xZoPMlbYJNE7WuGgEBnjAuZWNxOsdMJsDd7nG2P+BMrLjbeM/y4AJoQXb8aMu8gYeLQ
 f2encH0cM4VoFJBHmPdEhL8M3Onr+v3oSkNx0l5jdzDro2RmermCzA7teGtFaTu7gSck0Fw+6
 v+uqo9jwl34AByoQ6+jn6NadiM70DW/wZ3pBHX72xSV1BFQyM1MS1ATTSBB896dzm3uuSsl3p
 tMf0Vs9gv0Dh62rCEEgqWUBtfscP1FF+zCp4lzCwSKFfwH/cBX1cLU13SF+kCBmYLR7/ZXk9y
 YJND3amVplMzcTvv+xZ4lun48ZrkPX42yDxHGeVD8NJ+xeNouTQjSQ9L5RZrOoZuf9jqUsxMI
 hQjryLFghuL1gl9g55B44buVcTRajl7DVS2H+eI+R6r9AaH1LcRuFA/XJRZP5GeDvc0uITakf
 RV4FFXYnhFoAD0pMIlQyVd4RAFjCESsvj5+RFyCXY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_050249_363622_5AE7DB4B 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v3 1/2] treewide: use a single ath10k MAC
 patching function with checksum
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

While all ath10k eeproms have a checksum field, so far two
functions for patching ath10k MAC address have been present (and
been used).

This merges code to provide a single function ath10k_patch_mac
in caldata.sh, having its name in accordance with ath9k functions.
By doing so, correct MAC patching for current and future ath10k
devices should be ensured.

This patch adds checksum adjustments for several targets on
ath79 and lantiq.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v3: Merged ath79 and lantiq patches, rename function to be consistent
---
 .../base-files/files/lib/functions/caldata.sh |  8 +---
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 44 +++++++++----------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 24 +++++-----
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 28 ++++++------
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  2 +-
 5 files changed, 50 insertions(+), 56 deletions(-)

diff --git a/package/base-files/files/lib/functions/caldata.sh b/package/base-files/files/lib/functions/caldata.sh
index 004bcfa990..1ff69ce1ae 100644
--- a/package/base-files/files/lib/functions/caldata.sh
+++ b/package/base-files/files/lib/functions/caldata.sh
@@ -121,13 +121,7 @@ ath9k_patch_mac_crc() {
 	caldata_patch_mac "$mac" "$mac_offset" "$chksum_offset"
 }
 
-ath10kcal_patch_mac() {
-	local mac=$1
-
-	caldata_patch_mac "$mac" 0x6
-}
-
-ath10kcal_patch_mac_crc() {
+ath10k_patch_mac() {
 	local mac=$1
 
 	caldata_patch_mac "$mac" 0x6 0x2
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index ebc1fc24d0..3b7d5b0682 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -22,54 +22,54 @@ case "$FIRMWARE" in
 	devolo,dvl1750i|\
 	devolo,dvl1750x)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x0) -1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) -1)
 		;;
 	dlink,dir-859-a1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(mtd_get_mac_ascii devdata "wlan5mac")
+		ath10k_patch_mac $(mtd_get_mac_ascii devdata "wlan5mac")
 		;;
 	elecom,wrc-1750ghbk2-i)
 		caldata_extract "art" 0x5000 0x844
 		;;
 	engenius,ecb1750)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(mtd_get_mac_ascii u-boot-env athaddr)
+		ath10k_patch_mac $(mtd_get_mac_ascii u-boot-env athaddr)
 		;;
 	engenius,epg5000|\
 	iodata,wn-ac1167dgr|\
 	iodata,wn-ac1600dgr2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +1)
 		;;
 	engenius,ews511ap)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
+		ath10k_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 		;;
 	glinet,gl-ar750|\
 	glinet,gl-ar750s)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	glinet,gl-x750)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	nec,wg800hp)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac_crc $(mtd_get_mac_text board_data 0x880)
+		ath10k_patch_mac $(mtd_get_mac_text board_data 0x880)
 		;;
 	ocedo,koala|\
 	ocedo,ursus)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(mtd_get_mac_binary art 0xc)
+		ath10k_patch_mac $(mtd_get_mac_binary art 0xc)
 		;;
 	openmesh,om5p-ac-v2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
+		ath10k_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +16)
 		;;
 	qihoo,c301)
 		caldata_extract "radiocfg" 0x5000 0x844
-		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
+		ath10k_patch_mac $(mtd_get_mac_ascii devdata wlan5mac)
 		;;
 	tplink,archer-a7-v5|\
 	tplink,archer-c2-v3|\
@@ -77,29 +77,29 @@ case "$FIRMWARE" in
 	tplink,archer-c7-v5|\
 	tplink,archer-c25-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
 		;;
 	tplink,archer-c5-v1|\
 	tplink,archer-c7-v2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary u-boot 0x1fc00) -1)
 		;;
 	tplink,archer-d50-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary romfile 0xf100) +2)
 		;;
 	tplink,re350k-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary config 0x10008) +2)
 		;;
 	tplink,re355-v1|\
 	tplink,re450-v1)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
+		ath10k_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	tplink,re450-v2)
 		caldata_extract "art" 0x5000 0x844
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
 	ubnt,unifiac-lite|\
 	ubnt,unifiac-mesh|\
@@ -117,7 +117,7 @@ case "$FIRMWARE" in
 	case $board in
 	comfast,cf-e313ac)
 		caldata_extract "art" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary art 0x6)
+		ath10k_patch_mac $(mtd_get_mac_binary art 0x6)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		rm /lib/firmware/ath10k/QCA9888/hw2.0/board-2.bin
@@ -127,18 +127,18 @@ case "$FIRMWARE" in
 	dlink,dir-842-c3|\
 	nec,wg1200cr)
 		caldata_extract "art" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata wlan5mac)
+		ath10k_patch_mac $(mtd_get_mac_ascii devdata wlan5mac)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
 	netgear,ex6400|\
 	netgear,ex7300)
 		caldata_extract "caldata" 0x5000 0x2f20
-		ath10kcal_patch_mac $(mtd_get_mac_binary caldata 0xc)
+		ath10k_patch_mac $(mtd_get_mac_binary caldata 0xc)
 		;;
 	phicomm,k2t)
 		caldata_extract "art" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(k2t_get_mac "5g_mac")
+		ath10k_patch_mac $(k2t_get_mac "5g_mac")
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
@@ -149,7 +149,7 @@ case "$FIRMWARE" in
 	tplink,archer-c60-v2|\
 	tplink,archer-c6-v2)
 		caldata_extract "art" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary mac 0x8) -1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary mac 0x8) -1)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 898e0bb074..bdb12b2921 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -12,7 +12,7 @@ case "$FIRMWARE" in
 	meraki,mr33)
 		caldata_extract_ubi "ART" 0x9000 0x844
 		caldata_valid "4408" || caldata_extract "ART" 0x9000 0x844
-		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +1)
+		ath10k_patch_mac $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +1)
 		;;
 	esac
 	;;
@@ -34,7 +34,7 @@ case "$FIRMWARE" in
 	linksys,ea8300)
 		caldata_extract "ART" 0x9000 0x2f20
 		# OEM assigns 4 sequential MACs
-		ath10kcal_patch_mac_crc $(macaddr_setbit_la $(macaddr_add "$(cat /sys/class/net/eth0/address)" 4))
+		ath10k_patch_mac $(macaddr_setbit_la $(macaddr_add "$(cat /sys/class/net/eth0/address)" 4))
 		;;
 	openmesh,a62)
 		caldata_extract "0:ART" 0x9000 0x2f20
@@ -79,26 +79,26 @@ case "$FIRMWARE" in
 		;;
 	engenius,ens620ext)
 		caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
 		;;
 	linksys,ea8300)
 		caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
+		ath10k_patch_mac $(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
 		;;
 	meraki,mr33)
 		caldata_extract_ubi "ART" 0x1000 0x2f20
 		caldata_valid "202f" || caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +2)
+		ath10k_patch_mac $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +2)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
 		caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0x0)
+		ath10k_patch_mac $(mtd_get_mac_binary dnidata 0x0)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
 		caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
+		ath10k_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -2)
 		;;
 	esac
 	;;
@@ -140,26 +140,26 @@ case "$FIRMWARE" in
 		;;
 	engenius,ens620ext)
 		caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
 		;;
 	linksys,ea8300)
 		caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add "$(cat /sys/class/net/eth0/address)" 3)
+		ath10k_patch_mac $(macaddr_add "$(cat /sys/class/net/eth0/address)" 3)
 		;;
 	meraki,mr33)
 		caldata_extract_ubi "ART" 0x5000 0x2f20
 		caldata_valid "202f" || caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +3)
+		ath10k_patch_mac $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +3)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
 		caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0xc)
+		ath10k_patch_mac $(mtd_get_mac_binary dnidata 0xc)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
 		caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(cat /sys/class/net/eth0/address) -1)
+		ath10k_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) -1)
 		;;
 	esac
 	;;
diff --git a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index f8a4c98542..6013bb100c 100644
--- a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -11,33 +11,33 @@ case "$FIRMWARE" in
 	case $board in
 	buffalo,wxr-2533dhp)
 		caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x1e)
+		ath10k_patch_mac $(mtd_get_mac_binary ART 0x1e)
 		;;
 	linksys,ea8500)
 		caldata_extract "art" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +1)
 		;;
 	nec,wg2600hp)
 		caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary PRODUCTDATA 0xc) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary PRODUCTDATA 0xc) +1)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
 		caldata_extract "art" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x6) +1)
 		;;
 	tplink,c2600)
 		caldata_extract "radio" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x8) -1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary default-mac 0x8) -1)
 		;;
 	tplink,vr2600v)
 		caldata_extract "ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x0) -1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary default-mac 0x0) -1)
 		;;
 	zyxel,nbg6817)
 		caldata_extract "0:ART" 0x1000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii 0:APPSBLENV ethaddr) +1)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii 0:APPSBLENV ethaddr) +1)
 		;;
 	esac
 	;;
@@ -45,33 +45,33 @@ case "$FIRMWARE" in
 	case $board in
 	buffalo,wxr-2533dhp)
 		caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x18)
+		ath10k_patch_mac $(mtd_get_mac_binary ART 0x18)
 		;;
 	linksys,ea8500)
 		caldata_extract "art" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +2)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii devinfo hw_mac_addr) +2)
 		;;
 	nec,wg2600hp)
 		caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary PRODUCTDATA 0xc)
+		ath10k_patch_mac $(mtd_get_mac_binary PRODUCTDATA 0xc)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
 		caldata_extract "art" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +2)
+		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x6) +2)
 		;;
 	tplink,c2600)
 		caldata_extract "radio" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x8)
+		ath10k_patch_mac $(mtd_get_mac_binary default-mac 0x8)
 		;;
 	tplink,vr2600v)
 		caldata_extract "ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x0)
+		ath10k_patch_mac $(mtd_get_mac_binary default-mac 0x0)
 		;;
 	zyxel,nbg6817)
 		caldata_extract "0:ART" 0x5000 0x2f20
-		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii 0:APPSBLENV ethaddr)
+		ath10k_patch_mac $(mtd_get_mac_ascii 0:APPSBLENV ethaddr)
 		;;
 	esac
 	;;
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 244635c6db..0b48b77d41 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -11,7 +11,7 @@ case "$FIRMWARE" in
 	case $board in
 		bt,homehub-v5a)
 			caldata_extract_ubi "caldata" 0x5000 0x844
-			ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
+			ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
 			;;
 		*)
 			caldata_die "board $board is not supported yet"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
