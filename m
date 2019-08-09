Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4060A879E0
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 14:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UTGbp3js/5rTVBS7rv5SXdlr6axRPjRjTD2gCUGw1SY=; b=BVswDVVhTxZRBo
	SR4LIjGDZ/BxXMGKdBNJsOfNhwwTp5iB2Mp5H06mv47UzntXGn4h7adH25GYLqOb7KGX5se8Ppyrb
	7c1BNjdtUCeKIsnpXl1nvO6yXzn9224YWhWEtaMxXTviUqIK2hyDZ83rSZGspp4O3CkQAXZRTE/wM
	k/z6D7uash61bFYOBrgcNP4epYBm5WEzbJxhuX673F3iN3xYQYM+huuXjWEGAVizYlKc7wNsMJg4t
	u71KubibMmucpC4WGbl06XAU7dICJOZfoB/+miJXXX+zCybSOW3UZ1hEbqVOiwslpVONlgNF87W2O
	k3BTpheHMXQm8z5/wrMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3xJ-0006MX-EL; Fri, 09 Aug 2019 12:25:13 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3x6-0005pa-4G
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 12:25:03 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MzyAy-1iHajp0pni-00x09x; Fri, 09 Aug 2019 14:24:55 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  9 Aug 2019 14:24:48 +0200
Message-Id: <20190809122449.2515-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:GLs8odmVSgnX0v+qNDMh2Ds1tFllsn5KvlqzNAuCfSyRCnzP5wa
 Ft/p871JoOMfm4+nkdUEqKD2mHWhn/z3RKfL7LJ9bSJ78G/gKA4Pmzh9bely4Knn84JKbSO
 xEKNASYwcgPJshTQ4ZgFMXHipxoKBew1vgnoPrrgnRJqg3lxE15QlQ+jLio0t5meYkmRuX7
 FtqMdHLmgfGDbtGRGw8uA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:dnrJAFyShdQ=:YlkEHfIoZ1ss5zi8SajU5g
 J/aw9aw4epHA+JMVuUnH7hbi/6B102PotW+QrcipAeuiActt1t+/miSB7EavDy93Fv2bi0/1k
 28iETbIwC5tKPnR0w4KCIo/EBrTzweoJcP4WayqpD7LLEX4UVvcy+3Lae5RhX75jh9RV+HLGe
 QyiZpTUgbah3czJ8WyfZ6HQ8spIsBKGBU6RVm/VZjNeK/tLQcHznDjyygWeYXuGAsPGaivk0m
 KGfVG86BvgH+xLkLTaoiJPwqsXpXQ9+O+5oaHtb67SFpUL58fGAaXBp+2G9NjHP4B1l+sNeY6
 bZxEZi8fA8Ab9qwo0JgZkdtKx0LfMMQtFhQ2eLIQTZwqpacC6ym/P6VPcmHRz2BNWCLqwrsGS
 jJasJoG9isrfiKdQL9o9NgnB3CW1UNXMcUreZRiO2LZK6E3PCB0lDYw1G9vlxWTPDZvT5LyTp
 Y5hpB+VNZp3bjywmne+OocrI64JTCGexF81vSuZE2o8Nxtbvp0hRAkrmI7O1oJSjTSrg3Jv4m
 Qs680Y+/RsgWsoNYmKBUSmY4FUxQ5wj4BC7Mu3hedFabj4jLZ+pRKONbfy5npmo8+bYbAGs+g
 9y94Q6VdsoOsESU7BNXIBf9bkTL57UV2oEPpYTuw2id6ihEV/NakqRsWP03oBujfucrL8t6xu
 bnf3ngIA00iqaNYLJ3sGiNabvJYjzDXp+4cNgpvs93IAIx9tIJD9XjfUvagOiBJIFlWSA1X+a
 QMTqrsp1X5vXeCIZd+WV7v3oa+2IE5FBLum7z6LHoCvIyIVgj96vglqzfk8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_052500_627477_D08D8F74 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/2] treewide: convert MAC address
 location offsets to hexadecimal
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

This changes the offsets for the MAC address location in
mtd_get_mac_binary* and mtd_get_mac_text to hexadecimal notation.

This will be much clearer for the reader when numbers are big, and
will also match the style used for mtd-mac-address in DTS files.

(e.g. 0x1006 and 0x5006 are much more useful than 4102 and 20486)

Acked-by: Alexander Couzens <lynxis@fe80.eu>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Changes in v2:
- Rebase
---
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  4 +-
 .../lib/preinit/05_set_iface_mac_apm821xx     |  2 +-
 .../ar71xx/base-files/etc/board.d/02_network  | 10 ++---
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 18 ++++----
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  4 +-
 .../etc/hotplug.d/ieee80211/10_fix_wifi_mac   |  2 +-
 .../lib/preinit/05_set_iface_mac_ar71xx       | 12 +++---
 .../ath79/base-files/etc/board.d/02_network   | 28 ++++++-------
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    | 10 ++---
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 18 ++++----
 .../etc/hotplug.d/ieee80211/10_fix_wifi_mac   |  2 +-
 .../lib/preinit/05_set_ether_mac_gemini       |  6 +--
 .../ipq40xx/base-files/etc/board.d/02_network |  4 +-
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 10 ++---
 .../lib/preinit/05_set_iface_mac_ipq40xx.sh   |  4 +-
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 20 ++++-----
 .../lantiq/base-files/etc/board.d/02_network  | 22 +++++-----
 .../etc/hotplug.d/firmware/11-ath10k-caldata  |  2 +-
 .../etc/hotplug.d/firmware/12-ath9k-eeprom    |  2 +-
 .../mpc85xx/base-files/etc/board.d/02_network |  2 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  2 +-
 .../ramips/base-files/etc/board.d/02_network  | 42 +++++++++----------
 22 files changed, 113 insertions(+), 113 deletions(-)

diff --git a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 6d2d18658d..b3b8886720 100644
--- a/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/apm821xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -59,7 +59,7 @@ case "$FIRMWARE" in
 			ath9k_ubi_eeprom_extract "caldata" 20480 4096
 		else
 			ath9k_eeprom_extract "wifi_data" 20480 4096
-			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 12)
+			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0xc)
 		fi
 		;;
 	*)
@@ -77,7 +77,7 @@ case "$FIRMWARE" in
 			ath9k_ubi_eeprom_extract "caldata" 4096 4096
 		else
 			ath9k_eeprom_extract "wifi_data" 4096 4096
-			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0)
+			ath9k_patch_firmware_mac $(mtd_get_mac_binary wifi_data 0x0)
 		fi
 		;;
 	*)
diff --git a/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx b/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx
index 1a27930d24..11955dd5a2 100644
--- a/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx
+++ b/target/linux/apm821xx/base-files/lib/preinit/05_set_iface_mac_apm821xx
@@ -6,7 +6,7 @@ preinit_set_mac_address() {
 	case $(board_name) in
 		meraki,mr24|\
 		meraki,mx60)
-			mac_lan=$(mtd_get_mac_binary_ubi board-config 102)
+			mac_lan=$(mtd_get_mac_binary_ubi board-config 0x66)
 			[ -n "$mac_lan" ] && ifconfig eth0 hw ether "$mac_lan"
 			;;
 	esac
diff --git a/target/linux/ar71xx/base-files/etc/board.d/02_network b/target/linux/ar71xx/base-files/etc/board.d/02_network
index 1fcfa43c4b..78825af597 100755
--- a/target/linux/ar71xx/base-files/etc/board.d/02_network
+++ b/target/linux/ar71xx/base-files/etc/board.d/02_network
@@ -604,11 +604,11 @@ ar71xx_setup_macs()
 
 	case $board in
 	archer-c7-v4)
-		base_mac=$(mtd_get_mac_binary config 8)
+		base_mac=$(mtd_get_mac_binary config 0x8)
 		wan_mac=$(macaddr_add "$base_mac" 1)
 		;;
 	archer-c7-v5)
-		base_mac=$(mtd_get_mac_binary info 8)
+		base_mac=$(mtd_get_mac_binary info 0x8)
 		wan_mac=$(macaddr_add "$base_mac" 1)
 		;;
 	dgl-5500-a1|\
@@ -619,8 +619,8 @@ ar71xx_setup_macs()
 	dir-835-a1|\
 	wndr3700v4|\
 	wndr4300)
-		lan_mac=$(mtd_get_mac_binary caldata 0)
-		wan_mac=$(mtd_get_mac_binary caldata 6)
+		lan_mac=$(mtd_get_mac_binary caldata 0x0)
+		wan_mac=$(mtd_get_mac_binary caldata 0x6)
 		;;
 	dir-869-a1|\
 	mynet-n750)
@@ -634,7 +634,7 @@ ar71xx_setup_macs()
 		;;
 	tl-wr1043n-v5|\
 	tl-wr1043nd-v4)
-		lan_mac=$(mtd_get_mac_binary product-info 8)
+		lan_mac=$(mtd_get_mac_binary product-info 0x8)
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
 	wlr8100)
diff --git a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 208d5f6bff..3924202d8e 100644
--- a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -73,7 +73,7 @@ case "$FIRMWARE" in
 	c-55|\
 	c-60)
 		ath9k_eeprom_extract "art" 4096 2048
-		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
+		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	fritz4020|\
 	fritz450e)
@@ -87,13 +87,13 @@ case "$FIRMWARE" in
 		else
 			ath9k_eeprom_extract "odm-caldata" 4096 2048
 		fi
-		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 102) +1)
+		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +1)
 		;;
 	r6100 | \
 	wndr3700v4 | \
 	wndr4300)
 		ath9k_eeprom_extract "caldata" 4096 2048
-		ath9k_patch_firmware_mac $(mtd_get_mac_binary caldata 0)
+		ath9k_patch_firmware_mac $(mtd_get_mac_binary caldata 0x0)
 		;;
 	rambutan)
 		ath9k_eeprom_extract "art" 4096 2048
@@ -110,7 +110,7 @@ case "$FIRMWARE" in
 		else
 			ath9k_eeprom_extract "origcaldata" 4096 2048
 		fi
-		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 102) +2)
+		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +2)
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
@@ -122,7 +122,7 @@ case "$FIRMWARE" in
 	case $board in
 	c-55)
 		ath9k_eeprom_extract "art" 20480 2048
-		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary art 0) +2)
+		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	fritz300e)
 		ath9k_eeprom_extract_reverse "urloader" 5441 1088
@@ -135,12 +135,12 @@ case "$FIRMWARE" in
 		else
 			ath9k_eeprom_extract "odm-caldata" 20480 2048
 		fi
-		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 102) +2)
+		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +2)
 		;;
 	wndr3700v4 | \
 	wndr4300)
 		ath9k_eeprom_extract "caldata" 20480 2048
-		ath9k_patch_firmware_mac $(mtd_get_mac_binary caldata 12)
+		ath9k_patch_firmware_mac $(mtd_get_mac_binary caldata 0xc)
 		;;
 	z1)
 		. /lib/upgrade/nand.sh
@@ -150,7 +150,7 @@ case "$FIRMWARE" in
 		else
 			ath9k_eeprom_extract "origcaldata" 86016 4096
 		fi
-		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 102) +3)
+		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +3)
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
@@ -168,7 +168,7 @@ case "$FIRMWARE" in
 		else
 			ath9k_eeprom_extract "odm-caldata" 36864 2048
 		fi
-		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 102) +3)
+		ath9k_patch_firmware_mac $(macaddr_add $(mtd_get_mac_binary_ubi board-config 0x66) +3)
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
diff --git a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 2ded261c88..a3d4770b32 100644
--- a/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ar71xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -94,7 +94,7 @@ case "$FIRMWARE" in
 		;;
 	dw33d)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(mtd_get_mac_binary art 18)
+		ath10kcal_patch_mac $(mtd_get_mac_binary art 0x12)
 		;;
 	epg5000|\
 	esr1750)
@@ -109,7 +109,7 @@ case "$FIRMWARE" in
 		;;
 	koala)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 12) +0)
+		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0xc) +0)
 		;;
 	mc-mac1200r)
 		ath10kcal_extract "art" 20480 2116
diff --git a/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index b58cf9b591..f93a9f745b 100644
--- a/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ar71xx/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -17,7 +17,7 @@ case "$board" in
 	archer-c59-v2|\
 	archer-c60-v1|\
 	archer-c60-v2)
-		echo $(macaddr_add $(mtd_get_mac_binary mac 8)  $(($PHYNBR - 1)) ) > /sys${DEVPATH}/macaddress
+		echo $(macaddr_add $(mtd_get_mac_binary mac 0x8)  $(($PHYNBR - 1)) ) > /sys${DEVPATH}/macaddress
 		;;
 	*)
 		;;
diff --git a/target/linux/ar71xx/base-files/lib/preinit/05_set_iface_mac_ar71xx b/target/linux/ar71xx/base-files/lib/preinit/05_set_iface_mac_ar71xx
index 7d3e82813d..b0aa150817 100644
--- a/target/linux/ar71xx/base-files/lib/preinit/05_set_iface_mac_ar71xx
+++ b/target/linux/ar71xx/base-files/lib/preinit/05_set_iface_mac_ar71xx
@@ -24,7 +24,7 @@ preinit_set_mac_address() {
 	case $(board_name) in
 	c-55|\
 	c-60)
-		mac_lan=$(mtd_get_mac_binary art 0)
+		mac_lan=$(mtd_get_mac_binary art 0x0)
 		[ -n "$mac_lan" ] && ifconfig eth0 hw ether "$mac_lan"
 		;;
 	dir-615-c1|\
@@ -36,19 +36,19 @@ preinit_set_mac_address() {
 		;;
 	mr18|\
 	z1)
-		mac_lan=$(mtd_get_mac_binary_ubi board-config 102)
+		mac_lan=$(mtd_get_mac_binary_ubi board-config 0x66)
 		[ -n "$mac_lan" ] && ifconfig eth0 hw ether "$mac_lan"
 		;;
 	r6100)
-		mac_lan=$(mtd_get_mac_binary caldata 0)
+		mac_lan=$(mtd_get_mac_binary caldata 0x0)
 		[ -n "$mac_lan" ] && ifconfig eth1 hw ether "$mac_lan"
-		mac_wan=$(mtd_get_mac_binary caldata 6)
+		mac_wan=$(mtd_get_mac_binary caldata 0x6)
 		[ -n "$mac_wan" ] && ifconfig eth0 hw ether "$mac_wan"
 		;;
 	rambutan)
-		mac_lan=$(mtd_get_mac_binary art 0)
+		mac_lan=$(mtd_get_mac_binary art 0x0)
 		[ -n "$mac_lan" ] && ifconfig eth0 hw ether "$mac_lan"
-		mac_wan=$(mtd_get_mac_binary art 6)
+		mac_wan=$(mtd_get_mac_binary art 0x6)
 		[ -n "$mac_wan" ] && ifconfig eth1 hw ether "$mac_wan"
 		;;
 	wrt160nl)
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index dd9fa3c36b..5727bed500 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -309,13 +309,13 @@ ath79_setup_macs()
 		wan_mac=$(fritz_tffs -n macb -i $(find_mtd_part "tffs (1)"))
 		;;
 	dlink,dir-825-b1)
-		lan_mac=$(mtd_get_mac_text "caldata" 65440)
-		wan_mac=$(mtd_get_mac_text "caldata" 65460)
+		lan_mac=$(mtd_get_mac_text "caldata" 0xffa0)
+		wan_mac=$(mtd_get_mac_text "caldata" 0xffb4)
 		;;
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
-		lan_mac=$(mtd_get_mac_text "mac" 4)
-		wan_mac=$(mtd_get_mac_text "mac" 24)
+		lan_mac=$(mtd_get_mac_text "mac" 0x4)
+		wan_mac=$(mtd_get_mac_text "mac" 0x18)
 		;;
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
@@ -328,7 +328,7 @@ ath79_setup_macs()
 		;;
 	elecom,wrc-1750ghbk2-i|\
 	elecom,wrc-300ghbk2-i)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary art 4098)" -2)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary art 0x1002)" -2)
 		;;
 	engenius,ecb1750)
 		lan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
@@ -342,7 +342,7 @@ ath79_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
 		;;
 	engenius,ews511ap)
-		lan_mac=$(mtd_get_mac_text "u-boot-env" 233)
+		lan_mac=$(mtd_get_mac_text "u-boot-env" 0xe9)
 		eth1_mac=$(macaddr_add "$lan_mac" 1)
 		ucidef_set_interface "eth0" ifname "eth0" protocol "none" macaddr "$lan_mac"
 		ucidef_set_interface "eth1" ifname "eth1" protocol "none" macaddr "$eth1_mac"
@@ -356,13 +356,13 @@ ath79_setup_macs()
 		lan_mac=$(macaddr_add "$wan_mac" 1)
 		;;
 	nec,wg800hp)
-		lan_mac=$(mtd_get_mac_text board_data 640)
-		wan_mac=$(mtd_get_mac_text board_data 1152)
+		lan_mac=$(mtd_get_mac_text board_data 0x280)
+		wan_mac=$(mtd_get_mac_text board_data 0x480)
 		;;
 	netgear,wndr3700|\
 	netgear,wndr3700v2|\
 	netgear,wndr3800)
-		lan_mac=$(macaddr_setbit_la "$(mtd_get_mac_binary art 0)")
+		lan_mac=$(macaddr_setbit_la "$(mtd_get_mac_binary art 0x0)")
 		;;
 	phicomm,k2t)
 		lan_mac=$(k2t_get_mac "lan_mac")
@@ -373,7 +373,7 @@ ath79_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii devdata wanmac)
 		;;
 	rosinson,wr818)
-		wan_mac=$(mtd_get_mac_binary factory 0)
+		wan_mac=$(mtd_get_mac_binary factory 0x0)
 		lan_mac=$(macaddr_setbit_la "$wan_mac")
 		;;
 	tplink,archer-a7-v5|\
@@ -381,17 +381,17 @@ ath79_setup_macs()
 	tplink,archer-c7-v5|\
 	tplink,tl-wr1043nd-v4|\
 	tplink,tl-wr1043n-v5)
-		base_mac=$(mtd_get_mac_binary info 8)
+		base_mac=$(mtd_get_mac_binary info 0x8)
 		wan_mac=$(macaddr_add "$base_mac" 1)
 		;;
 	tplink,tl-wr941-v2|\
 	tplink,tl-wr941n-v7-cn)
-		base_mac=$(mtd_get_mac_binary u-boot 130048)
+		base_mac=$(mtd_get_mac_binary u-boot 0x1fc00)
 		wan_mac=$(macaddr_add "$base_mac" 1)
 		;;
 	trendnet,tew-823dru)
-		lan_mac=$(mtd_get_mac_text mac 4)
-		wan_mac=$(mtd_get_mac_text mac 24)
+		lan_mac=$(mtd_get_mac_text mac 0x4)
+		wan_mac=$(mtd_get_mac_text mac 0x18)
 		;;
 	ubnt,routerstation|\
 	ubnt,routerstation-pro)
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 62d53248bc..3e49b4f885 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -103,7 +103,7 @@ case "$FIRMWARE" in
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		ath9k_eeprom_extract "art" 4096 1088
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 4) 2
+		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 2
 		;;
 	dlink,dir-842-c1|\
 	dlink,dir-842-c2|\
@@ -128,7 +128,7 @@ case "$FIRMWARE" in
 		;;
 	nec,wg800hp)
 		ath9k_eeprom_extract "art" 4096 1088
-		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 1664) 2
+		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 0x680) 2
 		;;
 	qihoo,c301)
 		ath9k_eeprom_extract "radiocfg" 4096 1088
@@ -156,7 +156,7 @@ case "$FIRMWARE" in
 	dlink,dir-825-c1|\
 	dlink,dir-835-a1)
 		ath9k_eeprom_extract "art" 20480 1088
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 24) 1) 2
+		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "mac" 0x18) 1) 2
 		;;
 	ocedo,raccoon|\
 	tplink,tl-wdr3600-v1|\
@@ -212,7 +212,7 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-825-b1)
 		ath9k_eeprom_extract "caldata" 4096 3768
-		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 65440) 524
+		ath9k_patch_fw_mac_crc $(mtd_get_mac_text "caldata" 0xffa0) 524
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
@@ -229,7 +229,7 @@ case "$FIRMWARE" in
 		;;
 	dlink,dir-825-b1)
 		ath9k_eeprom_extract "caldata" 20480 3768
-		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 65460) 1) 524
+		ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_text "caldata" 0xffb4) 1) 524
 		;;
 	*)
 		ath9k_eeprom_die "board $board is not supported yet"
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 501053e9d7..de108285f2 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -94,7 +94,7 @@ case "$FIRMWARE" in
 	devolo,dvl1750i|\
 	devolo,dvl1750x)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0) -1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x0) -1)
 		;;
 	dlink,dir-859-a1)
 		ath10kcal_extract "art" 20480 2116
@@ -119,20 +119,20 @@ case "$FIRMWARE" in
 		;;
 	glinet,gl-ar750s)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +1)
+		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +1)
 		;;
 	glinet,gl-x750)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0) +2)
+		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary art 0x0) +2)
 		;;
 	nec,wg800hp)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac_crc $(mtd_get_mac_text board_data 2176)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_text board_data 0x880)
 		;;
 	ocedo,koala|\
 	ocedo,ursus)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(mtd_get_mac_binary art 12)
+		ath10kcal_patch_mac $(mtd_get_mac_binary art 0xc)
 		;;
 	openmesh,om5p-ac-v2)
 		ath10kcal_extract "art" 20480 2116
@@ -148,7 +148,7 @@ case "$FIRMWARE" in
 	tplink,archer-c7-v5|\
 	tplink,archer-c25-v1)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 8) -1)
+		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) -1)
 		;;
 	tplink,archer-c5-v1|\
 	tplink,archer-c7-v2)
@@ -170,7 +170,7 @@ case "$FIRMWARE" in
 		;;
 	tplink,re450-v2)
 		ath10kcal_extract "art" 20480 2116
-		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 8) +1)
+		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
 	ubnt,unifiac-lite|\
 	ubnt,unifiac-mesh|\
@@ -201,7 +201,7 @@ case "$FIRMWARE" in
 	netgear,ex6400|\
 	netgear,ex7300)
 		ath10kcal_extract "caldata" 20480 12064
-		ath10kcal_patch_mac $(mtd_get_mac_binary caldata 12)
+		ath10kcal_patch_mac $(mtd_get_mac_binary caldata 0xc)
 		;;
 	phicomm,k2t)
 		ath10kcal_extract "art" 20480 12064
@@ -215,7 +215,7 @@ case "$FIRMWARE" in
 	tplink,archer-c60-v2|\
 	tplink,archer-c6-v2)
 		ath10kcal_extract "art" 20480 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary mac 8) -1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary mac 0x8) -1)
 		ln -sf /lib/firmware/ath10k/pre-cal-pci-0000\:00\:00.0.bin \
 			/lib/firmware/ath10k/QCA9888/hw2.0/board.bin
 		;;
diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
index d9c3fe7440..3e1cfda84d 100644
--- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
+++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/10_fix_wifi_mac
@@ -40,7 +40,7 @@ case "$board" in
 		        mtd_get_mac_text mac 4 > /sys${DEVPATH}/macaddress
 	        # set the 5G interface mac address to WAN MAC + 1
 	        [ "$PHYNBR" -eq 0 ] && \
-		        macaddr_add "$(mtd_get_mac_text mac 24)" 1 > /sys${DEVPATH}/macaddress
+		        macaddr_add "$(mtd_get_mac_text mac 0x18)" 1 > /sys${DEVPATH}/macaddress
                 ;;
 	*)
 		;;
diff --git a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
index e387b3c72e..3712975fa8 100644
--- a/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
+++ b/target/linux/gemini/base-files/lib/preinit/05_set_ether_mac_gemini
@@ -17,7 +17,7 @@ set_ether_mac() {
 		if [ -n "$part" ]; then
 			DEVID="$(dd if=$part bs=1 skip=119508 count=7 2>/dev/null)"
 			if [ "$DEVID" = "dns-313" ]; then
-				MAC1="$(mtd_get_mac_binary RedBoot 119540)"
+				MAC1="$(mtd_get_mac_binary RedBoot 0x1d2f4)"
 				ip link set eth0 address "$MAC1" 2>/dev/null
 				return 0
 			fi
@@ -30,8 +30,8 @@ set_ether_mac() {
 		if [ -n "$part" ] ; then
 			DEVID="$(dd if=$part bs=1 skip=81516 count=7 2>/dev/null)"
 			if [ "$DEVID" = "ILI9322" ] ; then
-				MAC1=$(mtd_get_mac_binary RedBoot 95040)
-				MAC2=$(mtd_get_mac_binary RedBoot 95046)
+				MAC1=$(mtd_get_mac_binary RedBoot 0x17340)
+				MAC2=$(mtd_get_mac_binary RedBoot 0x17346)
 				ip link set eth0 address "$MAC1" 2>/dev/null
 				ip link set eth1 address "$MAC2" 2>/dev/null
 				return 0
diff --git a/target/linux/ipq40xx/base-files/etc/board.d/02_network b/target/linux/ipq40xx/base-files/etc/board.d/02_network
index 6a7b09cc60..e5ba7260f3 100755
--- a/target/linux/ipq40xx/base-files/etc/board.d/02_network
+++ b/target/linux/ipq40xx/base-files/etc/board.d/02_network
@@ -74,8 +74,8 @@ ipq40xx_setup_macs()
 	case "$board" in
 	asus,rt-ac58u)
 		CI_UBIPART=UBI_DEV
-		wan_mac=$(mtd_get_mac_binary_ubi Factory 20486)
-		lan_mac=$(mtd_get_mac_binary_ubi Factory 4102)
+		wan_mac=$(mtd_get_mac_binary_ubi Factory 0x5006)
+		lan_mac=$(mtd_get_mac_binary_ubi Factory 0x1006)
 		;;
 	engenius,ens620ext)
 		wan_mac=$(mtd_get_mac_ascii u-boot-env ethaddr)
diff --git a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 1e64b93a46..a09678ca95 100644
--- a/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq40xx/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -99,7 +99,7 @@ case "$FIRMWARE" in
 	meraki,mr33)
 		ath10kcal_ubi_extract "ART" 36864 2116
 		ath10kcal_is_caldata_valid "4408" || ath10kcal_extract "ART" 36864 2116
-		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 102) +1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +1)
 		;;
 	esac
 	;;
@@ -167,12 +167,12 @@ case "$FIRMWARE" in
 	meraki,mr33)
 		ath10kcal_ubi_extract "ART" 4096 12064
 		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 4096 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 102) +2)
+		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +2)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
 		ath10kcal_extract "ART" 4096 12064
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0x0)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
@@ -224,12 +224,12 @@ case "$FIRMWARE" in
 	meraki,mr33)
 		ath10kcal_ubi_extract "ART" 20480 12064
 		ath10kcal_is_caldata_valid "202f" || ath10kcal_extract "ART" 20480 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 102) +3)
+		ath10kcal_patch_mac_crc $(macaddr_add $(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66) +3)
 		;;
 	netgear,ex6100v2 |\
 	netgear,ex6150v2)
 		ath10kcal_extract "ART" 20480 12064
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 12)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary dnidata 0xc)
 		;;
 	zyxel,nbg6617 |\
 	zyxel,wre6606)
diff --git a/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh b/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh
index fc64441e1a..192488f377 100644
--- a/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh
+++ b/target/linux/ipq40xx/base-files/lib/preinit/05_set_iface_mac_ipq40xx.sh
@@ -5,7 +5,7 @@
 preinit_set_mac_address() {
 	case $(board_name) in
 	asus,map-ac2200)
-		base_mac=$(mtd_get_mac_binary_ubi Factory 4102)
+		base_mac=$(mtd_get_mac_binary_ubi Factory 0x1006)
 		ip link set dev eth0 address $(macaddr_add "$base_mac" +1)
 		ip link set dev eth1 address $(macaddr_add "$base_mac" +3)
 		;;
@@ -15,7 +15,7 @@ preinit_set_mac_address() {
 		ip link set dev eth1 address $(macaddr_add "${base_mac}" 1)
 		;;
 	meraki,mr33)
-		mac_lan=$(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 102)
+		mac_lan=$(get_mac_binary "/sys/bus/i2c/devices/0-0050/eeprom" 0x66)
 		[ -n "$mac_lan" ] && ip link set dev eth0 address "$mac_lan"
 		;;
 	zyxel,nbg6617)
diff --git a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index e05f2b2c7b..4f21d4a4ef 100644
--- a/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ipq806x/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -81,7 +81,7 @@ case "$FIRMWARE" in
 	case $board in
 	buffalo,wxr-2533dhp)
 		ath10kcal_extract "ART" 4096 12064
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 30)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x1e)
 		;;
 	linksys,ea8500)
 		ath10kcal_extract "art" 4096 12064
@@ -89,21 +89,21 @@ case "$FIRMWARE" in
 		;;
 	nec,wg2600hp)
 		ath10kcal_extract "ART" 4096 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary PRODUCTDATA 12) +1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary PRODUCTDATA 0xc) +1)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
 		ath10kcal_extract "art" 4096 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 6) +1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +1)
 		;;
 	tplink,c2600)
 		ath10kcal_extract "radio" 4096 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 8) -1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x8) -1)
 		;;
 	tplink,vr2600v)
 		ath10kcal_extract "ART" 4096 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0) -1)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary default-mac 0x0) -1)
 		;;
 	zyxel,nbg6817)
 		ath10kcal_extract "0:ART" 4096 12064
@@ -115,7 +115,7 @@ case "$FIRMWARE" in
 	case $board in
 	buffalo,wxr-2533dhp)
 		ath10kcal_extract "ART" 20480 12064
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 24)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary ART 0x18)
 		;;
 	linksys,ea8500)
 		ath10kcal_extract "art" 20480 12064
@@ -123,21 +123,21 @@ case "$FIRMWARE" in
 		;;
 	nec,wg2600hp)
 		ath10kcal_extract "ART" 20480 12064
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary PRODUCTDATA 12)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary PRODUCTDATA 0xc)
 		;;
 	netgear,d7800 |\
 	netgear,r7500v2 |\
 	netgear,r7800)
 		ath10kcal_extract "art" 20480 12064
-		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 6) +2)
+		ath10kcal_patch_mac_crc $(macaddr_add $(mtd_get_mac_binary art 0x6) +2)
 		;;
 	tplink,c2600)
 		ath10kcal_extract "radio" 20480 12064
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 8)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x8)
 		;;
 	tplink,vr2600v)
 		ath10kcal_extract "ART" 20480 12064
-		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0)
+		ath10kcal_patch_mac_crc $(mtd_get_mac_binary default-mac 0x0)
 		;;
 	zyxel,nbg6817)
 		ath10kcal_extract "0:ART" 20480 12064
diff --git a/target/linux/lantiq/base-files/etc/board.d/02_network b/target/linux/lantiq/base-files/etc/board.d/02_network
index a6a9e4d29d..d79a30d22d 100755
--- a/target/linux/lantiq/base-files/etc/board.d/02_network
+++ b/target/linux/lantiq/base-files/etc/board.d/02_network
@@ -60,19 +60,19 @@ arcadyan,arv4525pw|arcadyan,arv452cqw|arcadyan,arv7525pw|arcadyan,arv752dpw)
 
 arcadyan,arv7506pw11)
 	annex="b"
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary board_config 22)" 2)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary board_config 0x16)" 2)
 	ucidef_add_switch "switch0" \
 		"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5t@eth0"
 	;;
 
 arcadyan,arv7519pw)
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary board_config 22)" 1)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary board_config 0x16)" 1)
 	ucidef_add_switch "switch0" \
 		"0:lan" "1:lan" "2:lan" "3:lan" "4t@eth0"
 	;;
 
 arcadyan,arv7519rw22)
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary boardconfig 22)" 1)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary boardconfig 0x16)" 1)
 	ucidef_add_switch "switch0" \
 		"0:lan:5" "2:lan:3" "3:lan:4" "4:lan:1" "5:lan:2" "6t@eth0"
 	;;
@@ -104,7 +104,7 @@ bt,homehub-v3a)
 	;;
 
 bt,homehub-v5a)
-	lan_mac=$(mtd_get_mac_binary_ubi caldata 4364)
+	lan_mac=$(mtd_get_mac_binary_ubi caldata 0x110c)
 	wan_mac=$(macaddr_add "$lan_mac" 1)
 	ucidef_add_switch "switch0" \
 		"0:lan:3" "1:lan:4" "2:lan:2" "4:lan:1" "5:wan:5" "6t@eth0"
@@ -123,7 +123,7 @@ netgear,dgn3500|netgear,dgn3500b)
 	;;
 
 netgear,dm200)
-	lan_mac=$(mtd_get_mac_binary ART 0)
+	lan_mac=$(mtd_get_mac_binary ART 0x0)
 	wan_mac=$(macaddr_add "$lan_mac" 1)
 	ucidef_set_interface_lan 'eth0'
 	;;
@@ -147,13 +147,13 @@ avm,fritz3370-rev2-micron)
 avm,fritz7312|\
 avm,fritz7320)
 	annex="b"
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary urlader 2705)" 1)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary urlader 0xa91)" 1)
 	ucidef_set_interface_lan 'eth0'
 	;;
 
 avm,fritz7360sl)
 	annex="b"
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary urlader 2705)" 1)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary urlader 0xa91)" 1)
 	ucidef_add_switch "switch0" \
 		"0:lan:3" "1:lan:4" "2:lan:2" "4:lan:1" "6t@eth0"
 	;;
@@ -199,7 +199,7 @@ zyxel,p-2812hnu-f1|zyxel,p-2812hnu-f3)
 	;;
 
 tplink,tdw8970|tplink,tdw8980)
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary boardconfig 61696)" 1)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary boardconfig 0xf100)" 1)
 	ucidef_add_switch "switch0" \
 		"0:lan:2" "2:lan:3" "4:lan:4" "5:lan:1" "6t@eth0"
 	;;
@@ -212,20 +212,20 @@ arcadyan,vg3503j)
 	;;
 
 tplink,vr200|tplink,vr200v)
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary romfile 61696)" 1)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary romfile 0xf100)" 1)
 	ucidef_add_switch "switch0" \
 		"0:lan" "2:lan" "4:lan" "5:lan" "6t@eth0"
 	;;
 
 arcadyan,vgv7510kw22-nor|arcadyan,vgv7510kw22-brn)
 	annex="b"
-	wan_mac=$(macaddr_add "$(mtd_get_mac_binary board_config 22)" 2)
+	wan_mac=$(macaddr_add "$(mtd_get_mac_binary board_config 0x16)" 2)
 	ucidef_add_switch "switch0" \
 		"2:lan:2" "3:lan:1" "4:lan:4" "5:lan:3" "0:wan:5" "6t@eth0"
 	;;
 
 arcadyan,vgv7519-nor|arcadyan,vgv7519-brn)
-	wan_mac=$(mtd_get_mac_binary board_config 22)
+	wan_mac=$(mtd_get_mac_binary board_config 0x16)
 	ucidef_add_switch "switch0" \
 		"0:lan:4" "1:lan:3" "2:lan:2" "4:lan:1" "5:wan:5" "6t@eth0"
 	;;
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index 6b4d09dd33..6d7682a7f3 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -40,7 +40,7 @@ case "$FIRMWARE" in
 	case $board in
 		bt,homehub-v5a)
 			ath10k_caldata_extract_ubi "caldata" 20480 2116
-			ath10k_caldata_set_macaddr $(macaddr_add $(mtd_get_mac_binary_ubi caldata 4364) +3)
+			ath10k_caldata_set_macaddr $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +3)
 			;;
 		*)
 			ath10k_caldata_die "board $board is not supported yet"
diff --git a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
index 6ae5e3cfe9..aec963a721 100644
--- a/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
+++ b/target/linux/lantiq/base-files/etc/hotplug.d/firmware/12-ath9k-eeprom
@@ -150,7 +150,7 @@ case "$FIRMWARE" in
 				;;
 			bt,homehub-v5a)
 				ath9k_ubi_eeprom_extract "caldata" 4096 0
-				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 4364) +2) 268
+				ath9k_patch_fw_mac_crc $(macaddr_add $(mtd_get_mac_binary_ubi caldata 0x110c) +2) 268
 				;;
 			netgear,dgn3500|netgear,dgn3500b)
 				ath9k_eeprom_extract "calibration" 61440 0
diff --git a/target/linux/mpc85xx/base-files/etc/board.d/02_network b/target/linux/mpc85xx/base-files/etc/board.d/02_network
index d6b4eebf14..f907fd2edb 100755
--- a/target/linux/mpc85xx/base-files/etc/board.d/02_network
+++ b/target/linux/mpc85xx/base-files/etc/board.d/02_network
@@ -21,7 +21,7 @@ ocedo,panda)
 tplink,tl-wdr4900-v1)
 	ucidef_add_switch "switch0" \
 		"0@eth0" "2:lan:1" "3:lan:2" "4:lan:3" "5:lan:4" "1:wan"
-	ucidef_set_interface_macaddr "wan" "$(mtd_get_mac_binary config 332)"
+	ucidef_set_interface_macaddr "wan" "$(mtd_get_mac_binary config 0x14c)"
 	;;
 *)
 	ucidef_set_interfaces_lan_wan "eth0" "eth1"
diff --git a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 3e6488b4c7..b02c891cbf 100644
--- a/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/mpc85xx/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -26,7 +26,7 @@ tpl_set_wireless_mac()
 	local offset=$1
 	local mac
 
-	mac=$(mtd_get_mac_binary u-boot 326656)
+	mac=$(mtd_get_mac_binary u-boot 0x4fc00)
 	mac=$(macaddr_add $mac $offset)
 
 	macaddr_2bin $mac | dd bs=1 count=6 seek=2 conv=notrunc of=$FW_FILE 2>/dev/null
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 5fe61c31de..f58ff75c4d 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -506,7 +506,7 @@ ramips_setup_macs()
 	alfa-network,w502u|\
 	arcwireless,freestation5|\
 	netgear,wnce2001)
-		wan_mac=$(mtd_get_mac_binary factory 46)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
 		;;
 	arcwireless,freestation5|\
 	dlink,dir-300-b7|\
@@ -529,12 +529,12 @@ ramips_setup_macs()
 	asus,rt-ac57u|\
 	phicomm,k2p|\
 	planex,vr500)
-		lan_mac=$(mtd_get_mac_binary factory 57344)
-		wan_mac=$(mtd_get_mac_binary factory 57350)
+		lan_mac=$(mtd_get_mac_binary factory 0xe000)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
 		;;
 	asus,rt-n56u)
 		lan_mac=$(macaddr_setbit_la "$(cat /sys/class/net/eth0/address)")
-		wan_mac=$(mtd_get_mac_binary factory 32772)
+		wan_mac=$(mtd_get_mac_binary factory 0x8004)
 		;;
 	belkin,f9k1109v1)
 		wan_mac=$(mtd_get_mac_ascii uboot-env HW_WAN_MAC)
@@ -550,12 +550,12 @@ ramips_setup_macs()
 	buffalo,whr-300hp2|\
 	buffalo,whr-600d|\
 	buffalo,wsr-600dhp)
-		wan_mac=$(mtd_get_mac_binary factory 4)
+		wan_mac=$(mtd_get_mac_binary factory 0x4)
 		lan_mac=$wan_mac
 		;;
 	buffalo,whr-g300n|\
 	glinet,gl-mt300n-v2)
-		wan_mac=$(mtd_get_mac_binary factory 4)
+		wan_mac=$(mtd_get_mac_binary factory 0x4)
 		;;
 	dlink,dch-m225|\
 	samsung,cy-swr1100)
@@ -584,7 +584,7 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii u-boot-env WAN_MAC_ADDR)
 		;;
 	edimax,br-6475nd)
-		wan_mac=$(mtd_get_mac_binary devdata 7)
+		wan_mac=$(mtd_get_mac_binary devdata 0x7)
 		;;
 	edimax,br-6478ac-v2)
 		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
@@ -593,7 +593,7 @@ ramips_setup_macs()
 	elecom,wrc-1900gst|\
 	elecom,wrc-2533gst|\
 	samknows,whitebox-v8)
-		wan_mac=$(mtd_get_mac_binary factory 57350)
+		wan_mac=$(mtd_get_mac_binary factory 0xe006)
 		;;
 	hiwifi,hc5661|\
 	hiwifi,hc5661a|\
@@ -608,12 +608,12 @@ ramips_setup_macs()
 		;;
 	iodata,wn-ac1167gr|\
 	iodata,wn-ac733gr3)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 4)" -1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" -1)
 		;;
 	iodata,wn-ax1167gr|\
 	iodata,wn-gx300gr|\
 	trendnet,tew-692gr)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 4)" 1)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 1)
 		;;
 	lenovo,newifi-d1)
 		lan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 2)
@@ -624,24 +624,24 @@ ramips_setup_macs()
 	mediatek,linkit-smart-7688|\
 	onion,omega2|\
 	onion,omega2p)
-		wan_mac=$(mtd_get_mac_binary factory 4)
-		lan_mac=$(mtd_get_mac_binary factory 46)
+		wan_mac=$(mtd_get_mac_binary factory 0x4)
+		lan_mac=$(mtd_get_mac_binary factory 0x2e)
 		;;
 	mercury,mac1200r-v2)
-		lan_mac=$(mtd_get_mac_binary factory_info 13)
+		lan_mac=$(mtd_get_mac_binary factory_info 0xd)
 		wan_mac=$(macaddr_add "$lan_mac" 1)
 		;;
 	netgear,r6220|\
 	netgear,r6350|\
 	netgear,wndr3700-v5)
-		wan_mac=$(mtd_get_mac_binary factory 4)
+		wan_mac=$(mtd_get_mac_binary factory 0x4)
 		lan_mac=$(macaddr_add "$wan_mac" 1)
 		;;
 	ohyeah,oy-0001|\
 	phicomm,k2g|\
 	skylab,skw92a)
-		lan_mac=$(mtd_get_mac_binary factory 40)
-		wan_mac=$(mtd_get_mac_binary factory 46)
+		lan_mac=$(mtd_get_mac_binary factory 0x28)
+		wan_mac=$(mtd_get_mac_binary factory 0x2e)
 		;;
 	poray,m3|\
 	poray,m4-4m|\
@@ -651,24 +651,24 @@ ramips_setup_macs()
 		lan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" -2)
 		;;
 	sitecom,wlr-6000)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 32772)" 2)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x8004)" 2)
 		;;
 	sparklan,wcr-150gn|\
 	zyxel,keenetic-omni|\
 	zyxel,keenetic-omni-ii|\
 	zyxel,keenetic-start|\
 	zyxel,keenetic-viva)
-		wan_mac=$(mtd_get_mac_binary factory 40)
+		wan_mac=$(mtd_get_mac_binary factory 0x28)
 		;;
 	tenda,w306r-v2)
 		wan_mac=$(macaddr_add "$(cat /sys/class/net/eth0/address)" 5)
 		;;
 	trendnet,tew-691gr)
-		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 4)" 3)
+		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x4)" 3)
 		;;
 	wiznet,wizfi630a)
-		lan_mac=$(mtd_get_mac_binary factory 4)
-		wan_mac=$(mtd_get_mac_binary factory 40)
+		lan_mac=$(mtd_get_mac_binary factory 0x4)
+		wan_mac=$(mtd_get_mac_binary factory 0x28)
 		;;
 	xiaomi,mir3g|\
 	xiaomi,mir3p)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
