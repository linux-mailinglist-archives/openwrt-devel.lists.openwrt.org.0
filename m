Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C7311E290
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 12:12:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S8PA+eVHJYenYsbGqz9s/1uXWQnlTuGrPQEsf9qqS8c=; b=S4o7IWZPwcfBQv
	4p+CgnsSdUXQcISLXISPgpqqVwPhGvWDpZH+upBrnOVn6s7tADBvT17nF1/YSnYSCr4Iumv4DPsJI
	brVRG1+t7pjH4rwSwjEEZOueLSJ79BJb/5yCiaSers1bmwtF5TUkHF5EU9mXxEM5rFZ0cWxNNTlAb
	OGRimO1/mA6iqDXomn4dpvmdlEUWv5cJA193QnQb6gdI/S6zI+EaC3dKhwV7OwzKsD6cpulmYciy0
	i2+61BQiP4UDyGmScDrKRrdzGILC+wVGHs25zDNQDufMAenPOMzTTbT9fKsSV7Npo1ZGQJRsfPkaJ
	ZBkRlzVYesdusKkefXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifisH-0006Uv-Az; Fri, 13 Dec 2019 11:12:45 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifisA-0006UT-TA
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 11:12:40 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M42fA-1ifis424rg-0008Aq for <openwrt-devel@lists.openwrt.org>; Fri, 13
 Dec 2019 12:12:32 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 12:11:46 +0100
Message-Id: <20191213111146.1492-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ME4fsdo/p09RtnFzovMN+HmEie3VrahqEf88zzlL21aVoRybtkz
 e60w6qhuKdCvVNSSuq3MmCEbq9uVzVyatYLTAg8i/SiZs0iwGdI1zwWTIqU0Bbhln5/VDiv
 /xikod9rgYK8VxDWc9UnVfC85zz3419nH3csG1aSG+oaGoy0EjjDEULzEtMJttWAFHJNs2+
 BtUYdz1oYhyPL/X8u/+5Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qqpUqjObmbs=:vZ+nWifkHSYZ+qxJcyS38l
 F8WfsD9iEYSWkEO1RNal56z8VTEwqm3Kylv0gWSLxITOMHoZdyXSPvD5c8cEnGO2kYA2FGdsD
 4j5o6CPOwQRQBcOWu8+KTLW2aO9WbbJxHDS43wfQoec+Z+3OYnUvQMcmVjrX+vbCMY9EM5dsm
 5Zu2uWXCH9mohpVmsiRzFVcR6e0WQ+GjrWUbtXZsoZ97ZM4BulejZo5BG8Yo/LZqbTxpPobV6
 xgD290AkFPyJWNzfdGGlw42axK/XiK6JgO46dbMRnRXRYoO8Ks6wmp3pXkPEydTuENmcY0o2j
 vNp0FUdOX3EIx8xAOb906Dk8mjAhYdpZsFtCH8ICYFC2KOGkGcKjUZKhvsFl1F5pxmYM1zQoZ
 X1/8xxjW4gl6G0sy9yhB8cs6i9Id/UqRVLu/NOYLOv9z6IlLLO75HdMnHNDnzdvM/RIN00gv3
 ZhkQBVh+dgPWPdTMGobLP/QA5dsvl98IyDxMCYZea57wp2WdNd88m8CcmycDbers1ukQrTDSt
 zg/qfBaTVS6Axgr472JZ/QU2p86nfus+P2jhSwsaowCZ/55/1H+gP+UbsTzHOe5oQ05GwNscW
 8AzAIu+Gei79TV3dkqpXuLmcWCUJLRw6KFYxowR/D5wBvqDONhtw35nCctMSdLiWaTiSnWu9a
 WJUBJrnsahmOkZ9kmtg0B2H06edXILvqBmIfU009uDoRYVAH7CzuVGq4vM9mH6sGei6+al9Me
 y/6Focpb7hyTDwJUuXqt6Gb9waUp374TYxIVoRt5EM64MkvPD6/lYR025QGr/8f6yf0lff10O
 zmL0nAw7SRCb59sd7SB471UZjU83TdkurM0Dv4g4rimO1tcGu8VhFtyeRVWN4//D1DsA+CAWr
 NzsPtaxvNB8EnRg8pUUh3PONf6ju5xk9L3RbPg6tE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_031239_236532_6A308B88 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFT PATCH v2] mediatek: split base-files into
 subtargets
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

This splits some base-files across subtargets, as done previously
on ath79 and ramips and also introduced for mt7629 subtarget here
already.

While at it, apply the following fixes:
- Remove lots of trailing whitespaces
- Remove wildcard on unielec,u7623-02-emmc-512m
- Remove inconsistent quotation marks in cases

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Changes in v2:
- rebase

Note that the "left-over" platform_check_image for mt7622 looks odd.
I kept the original logic for now.
---
 .../mt7622/base-files/etc/board.d/02_network  | 29 ++++++++++++++
 .../mt7622/base-files/lib/upgrade/platform.sh | 25 ++++++++++++
 .../base-files/etc/board.d/02_network         |  8 ++--
 .../base-files/lib/preinit/07_set_iface_mac   |  2 +-
 .../base-files/lib/preinit/79_move_config     |  0
 .../base-files/lib/upgrade/platform.sh        | 38 +++++++++----------
 6 files changed, 78 insertions(+), 24 deletions(-)
 create mode 100755 target/linux/mediatek/mt7622/base-files/etc/board.d/02_network
 create mode 100755 target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh
 rename target/linux/mediatek/{ => mt7623}/base-files/etc/board.d/02_network (85%)
 rename target/linux/mediatek/{ => mt7623}/base-files/lib/preinit/07_set_iface_mac (97%)
 rename target/linux/mediatek/{ => mt7623}/base-files/lib/preinit/79_move_config (100%)
 rename target/linux/mediatek/{ => mt7623}/base-files/lib/upgrade/platform.sh (50%)

diff --git a/target/linux/mediatek/mt7622/base-files/etc/board.d/02_network b/target/linux/mediatek/mt7622/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..d719a35dec
--- /dev/null
+++ b/target/linux/mediatek/mt7622/base-files/etc/board.d/02_network
@@ -0,0 +1,29 @@
+#!/bin/sh
+
+. /lib/functions.sh
+. /lib/functions/uci-defaults.sh
+. /lib/functions/system.sh
+
+mediatek_setup_interfaces()
+{
+	local board="$1"
+
+	case $board in
+	esac
+}
+
+mediatek_setup_macs()
+{
+	local board="$1"
+
+	case $board in
+	esac
+}
+
+board_config_update
+board=$(board_name)
+mediatek_setup_interfaces $board
+mediatek_setup_macs $board
+board_config_flush
+
+exit 0
diff --git a/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh b/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..396c814ab7
--- /dev/null
+++ b/target/linux/mediatek/mt7622/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,25 @@
+platform_do_upgrade() {
+	local board=$(board_name)
+	case "$board" in
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
+
+PART_NAME=firmware
+
+platform_check_image() {
+	local board=$(board_name)
+
+	[ "$#" -gt 1 ] && return 1
+
+	case "$board" in
+	*)
+		echo "Sysupgrade is not supported on your board yet."
+		return 1
+		;;
+	esac
+
+	return 0
+}
diff --git a/target/linux/mediatek/base-files/etc/board.d/02_network b/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
similarity index 85%
rename from target/linux/mediatek/base-files/etc/board.d/02_network
rename to target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
index faa2434241..3b71ffe3aa 100755
--- a/target/linux/mediatek/base-files/etc/board.d/02_network
+++ b/target/linux/mediatek/mt7623/base-files/etc/board.d/02_network
@@ -9,12 +9,12 @@ mediatek_setup_interfaces()
 	local board="$1"
 
 	case $board in
-	'mediatek,mt7623a-rfb-emmc')
+	mediatek,mt7623a-rfb-emmc)
 		ucidef_set_interface_lan "lan0 lan1 lan2 lan3"
 		ucidef_set_interface_wan eth1
 		;;
-	'bananapi,bpi-r2'|\
-	"unielec,u7623"*)
+	bananapi,bpi-r2|\
+	unielec,u7623-02-emmc-512m)
 		ucidef_set_interfaces_lan_wan "lan0 lan1 lan2 lan3" "wan"
 		;;
 	esac
@@ -25,7 +25,7 @@ mediatek_setup_macs()
 	local board="$1"
 
 	case $board in
-	"unielec,u7623"*)
+	unielec,u7623-02-emmc-512m)
 		mac=$(cat /sys/class/net/wan/address)
 		ucidef_set_interface_macaddr "wan" $mac
 		;;
diff --git a/target/linux/mediatek/base-files/lib/preinit/07_set_iface_mac b/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
similarity index 97%
rename from target/linux/mediatek/base-files/lib/preinit/07_set_iface_mac
rename to target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
index 3d04000738..7a73a2d84d 100644
--- a/target/linux/mediatek/base-files/lib/preinit/07_set_iface_mac
+++ b/target/linux/mediatek/mt7623/base-files/lib/preinit/07_set_iface_mac
@@ -10,7 +10,7 @@ preinit_set_mac_address() {
 	. /lib/functions/system.sh
 
 	case $(board_name) in
-	"unielec,u7623"*)
+	unielec,u7623-02-emmc-512m)
 		if [ -b $RECOVERY_PART ]; then
 			insmod nls_cp437
 			insmod nls_iso8859-1
diff --git a/target/linux/mediatek/base-files/lib/preinit/79_move_config b/target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config
similarity index 100%
rename from target/linux/mediatek/base-files/lib/preinit/79_move_config
rename to target/linux/mediatek/mt7623/base-files/lib/preinit/79_move_config
diff --git a/target/linux/mediatek/base-files/lib/upgrade/platform.sh b/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh
similarity index 50%
rename from target/linux/mediatek/base-files/lib/upgrade/platform.sh
rename to target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh
index 9c99ee1c18..39dcb8e831 100755
--- a/target/linux/mediatek/base-files/lib/upgrade/platform.sh
+++ b/target/linux/mediatek/mt7623/base-files/lib/upgrade/platform.sh
@@ -1,7 +1,7 @@
-platform_do_upgrade() {                 
+platform_do_upgrade() {
 	local board=$(board_name)
 	case "$board" in
-	"unielec,u7623"*)
+	unielec,u7623-02-emmc-512m)
 		#Keep the persisten random mac address (if it exists)
 		mkdir -p /tmp/recovery
 		mount -o rw,noatime /dev/mmcblk0p1 /tmp/recovery
@@ -26,29 +26,29 @@ platform_do_upgrade() {
 
 PART_NAME=firmware
 
-platform_check_image() {                                                         
-	local board=$(board_name)                                                
-	local magic="$(get_magic_long "$1")"                                     
+platform_check_image() {
+	local board=$(board_name)
+	local magic="$(get_magic_long "$1")"
 
-	[ "$#" -gt 1 ] && return 1                                               
+	[ "$#" -gt 1 ] && return 1
 
-	case "$board" in                                                       
+	case "$board" in
 	bananapi,bpi-r2|\
-	"unielec,u7623"*)
-		[ "$magic" != "27051956" ] && {   
+	unielec,u7623-02-emmc-512m)
+		[ "$magic" != "27051956" ] && {
 			echo "Invalid image type."
-			return 1                                     
-		}                                                    
-		return 0                                             
-		;;                                                   
+			return 1
+		}
+		return 0
+		;;
 
-	*)                                                           
+	*)
 		echo "Sysupgrade is not supported on your board yet."
-		return 1                                             
-		;;                                
-	esac                                      
+		return 1
+		;;
+	esac
 
-	return 0                                                                                         
+	return 0
 }
 
 platform_copy_config_emmc() {
@@ -61,7 +61,7 @@ platform_copy_config_emmc() {
 
 platform_copy_config() {
 	case "$(board_name)" in
-	"unielec,u7623"*)
+	unielec,u7623-02-emmc-512m)
 		platform_copy_config_emmc
 		;;
 	esac
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
