Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF91F77D1
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 16:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jf8UH6wfv2ebXTi1XEJQZXbLW8qdch98PhDqw0EVYyA=; b=AVP8mZqIPzx+wc
	Ctgi7tMAcw5pFksHJDsWqlLBAESaCfxHe56hQYmgdMoCgCugVsfS/PxVwWFuUNyNrYSUJcxwpBstj
	I+9sLp9O2p4E4iIeAr+HCVAMnI5hqfV8v8S9UAo6/59GtynEvJrZubAM7WGi+zhEIVdLj1llGcAAP
	dvS1QjMyr/q06TeVoTrM2C3LczX/ufTAFdWPquCe9kFkIhigmHFnhY+mwnVt3/nffYPNXNSrWEuiD
	5Ezyg7gWco3n38PUchGrtgL7drfVgBeq5mQmJQ+1lVwsH6/yFyKUZPQ4hNttzE8bZfopoeNQoSChx
	UAvNCrNdwfD2XLUyQiAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUBj0-0007pR-Mr; Mon, 11 Nov 2019 15:35:30 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUBis-0007oj-FJ
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 15:35:24 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MDhpZ-1ieJvR3dNH-00ApPQ for <openwrt-devel@lists.openwrt.org>; Mon, 11
 Nov 2019 16:35:14 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 11 Nov 2019 16:35:12 +0100
Message-Id: <20191111153512.2917-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:9nzNlWehaLtLDbS3lKTfhw8z8SqkGJrEinia0X9G9SOisLrSypu
 X9t7ggGptH5s8QSC/sXQb4+Ny0ny5YhnFMG/KKYo0sjx3yrVJpdXf9JUCePq9HdaqlWSm0d
 m0B4igA44ZUy2xtmcOCJjbWVAsihGnOpKcT7ebHwubccQiQliDrzSrZRdAZ1nVNJtEmaH3X
 +Jr3Qrr9VxMdwmKuBXIWQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Co0rNL6ROtw=:YKAza9ZXsIh+I6gX7eepz9
 ulfC9srSAh17vG7xjKHim/DbAk7ApxVzx6ngB+CtJM01AOr0retDpe2wxRTSPtNYpLrm0L0FV
 s9b4qKRpsSJ97OsfAIdf9X8sUbzwVc6YlrJyy3ldSqAKuFcgZUlCHaGsP9E0c3gIWKZ6qfYmV
 WfmapHWcN7CXyfdIRfbRnO9QrS0vTe0ZubWblY29olmab1J/HzahFUz5tRNhBOxqmAfhoI+5r
 IyDO5LMMQqcfN1NTSlYp0325nVquuK/SSU7MsooD484JR1LYdKKEi4TYCfXhHlv0fPHef4rN9
 kzAcdZyqXXTryKxFNf0/MgYChBrc9RGnuwqXU18FoIs261mBTYaykQa+WOJRYWfWbaC8JVfep
 /R+Sjk7s9X4I7aQYlum2ZhkIrON4FCq9MWSaaG+4594B+VefAxxQ9DNdIFe1N0fJf/Ny5Fwz4
 x4Bsadcbyjd8rFCq2K4eYwE8S4Cls6zNjytPTpvHkKdyFqCbamZosLRHe17r6CbIFayxbfn59
 r1uurkBkQPDKKEaxzxg+qd29kL5RQt0YKt2sLxzTMrWSGnGT17+0gcn+5VvDxAGFyoYg+w/Ly
 1ms5nAppR3XFY42xjz7/x7JV4Fl1hhf+2AzcbN7kymbSRjGey3p5eCRQuvZ0JqR+V5FLer3IN
 SQGJVl2D1CSbHt7u2exA9mJZ9R5Eu7D8axChuS7i3m1e+9w3enn1Wukcog/hCY6+8jBWAZDIM
 fyF54riAkaOvsFotHUeqVWO+otdg3kbYXuOIyOAQBF1SwoQ7TkO0TQEpDF9E5tNvUHNwZqJaR
 zC9hiDrI88Pm495wWu0edZP2FerWV+EraQCmxJFW36JYo9a0NkIyr+vh5y31Kik++3Uw78wbQ
 HLpoko9O2EJ25IiZnpznsDNGbnWQoEGFTe7QUhJiw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_073522_814638_AC5ED603 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFC/RFT PATCH] mediatek: split base-files into
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

Note that the "left-over" platform_check_image for mt7622 looks odd.
I kept the original logic for now, but I wonder whether this can be
replaced by simple

platform_check_image() {
	return 0
}
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
