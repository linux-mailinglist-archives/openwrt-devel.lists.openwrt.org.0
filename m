Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7531A8DD
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 19:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0oq9cELMmRMmMZmHBGgZJfGlzPzhlkst3Gmqur8PfnI=; b=tUeKFFml3qkSdz0QXhfHhIbIKU
	nOTPAPFKbqE08o+upz5yL3MyUfhovnEs8HLmHxR4R6y4w2zWlT35uTs8eI4HxeJ7bblaUIffLjHs4
	1n118tRITbMq+Gdk+ONbp3Tp93UvAtLQVJ0F/CpEZNF5ell+c+nkpQ+rH3SWRpGTrKskSB8Uv3yDA
	R4eSR5xHfD3kLVuf/ZhGIzm0OwR47aJJRqDTio2EEMqld4rdibSF2qa9JuJYFKiL05DT1H66eBrWQ
	wKHnnbetoNTrh24mvqH1DNLGc8xa9ZfUhId9sfWuW3QBMeCfk3dz2YHurrhoJn8a7YjIg2Txe3qAJ
	seCP30/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPVxx-0007qW-Em; Sat, 11 May 2019 17:39:21 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPVwX-0005r1-3K
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 17:38:04 +0000
Received: (wp-smtpd smtp.tlen.pl 17992 invoked from network);
 11 May 2019 19:37:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557596270; bh=b7lS9Nto75PFYKqsnECYtDWPqL4DOW8sxnZcGHh2YmA=;
 h=From:To:Subject;
 b=tdxYOBd12/biScNFZH8iDJOxCHSWh13OCxEQIOB/m9udDDUK/I3HKqtL4QCeAvAbB
 gF75yCh3H+R+5wsZk0iohGIG4vfRDJO8v5eJyh/DV6YZ6zILgRUkUqyxEHNdlYge3K
 MRqu70FEzGXYvF7XIIX/eUO185QzZ3QZtiE31J24=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 May 2019 19:37:50 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 19:37:34 +0200
Message-Id: <20190511173735.5549-8-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190511173735.5549-1-tomek_n@o2.pl>
References: <20190511173735.5549-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: de79d423ae47f3a8c9713a1bbc4d0889
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [gYOk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_103753_741887_3256E725 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 7/8] mvebu: use device-tree board
 detection
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Convert whole target to Device Tree based board detection instead of
identifying devices by dts file name. With this we can drop mvebu.sh
translation script and rely on common method for model detection.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/uboot-envtools/files/mvebu       | 26 ++---
 .../mvebu/base-files/etc/board.d/01_leds      | 22 ++---
 .../mvebu/base-files/etc/board.d/02_network   | 60 ++++++------
 target/linux/mvebu/base-files/etc/diag.sh     | 16 ++--
 .../base-files/etc/init.d/linksys_recovery    |  2 +-
 .../base-files/etc/uci-defaults/03_wireless   |  4 +-
 .../base-files/etc/uci-defaults/04_mambafan   |  2 +-
 target/linux/mvebu/base-files/lib/mvebu.sh    | 94 -------------------
 .../mvebu/base-files/lib/preinit/01_sysinfo   |  9 --
 .../base-files/lib/preinit/06_set_iface_mac   | 14 +--
 .../base-files/lib/preinit/79_move_config     |  2 +-
 .../base-files/lib/preinit/81_linksys_syscfg  |  2 +-
 .../mvebu/base-files/lib/upgrade/platform.sh  | 10 +-
 .../mvebu/base-files/lib/upgrade/sdcard.sh    |  2 +-
 target/linux/mvebu/image/Makefile             |  2 +-
 target/linux/mvebu/image/cortex-a53.mk        |  2 -
 target/linux/mvebu/image/cortex-a72.mk        |  2 -
 target/linux/mvebu/image/cortex-a9.mk         | 20 +++-
 18 files changed, 99 insertions(+), 192 deletions(-)
 delete mode 100755 target/linux/mvebu/base-files/lib/mvebu.sh
 delete mode 100644 target/linux/mvebu/base-files/lib/preinit/01_sysinfo

diff --git a/package/boot/uboot-envtools/files/mvebu b/package/boot/uboot-envtools/files/mvebu
index 7d16a59666..cd8789c0e9 100644
--- a/package/boot/uboot-envtools/files/mvebu
+++ b/package/boot/uboot-envtools/files/mvebu
@@ -14,25 +14,25 @@ touch /etc/config/ubootenv
 board=$(board_name)
 
 case "$board" in
-armada-385-linksys-caiman|\
-armada-385-linksys-cobra|\
-armada-385-linksys-shelby)
-	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x40000"
-	;;
-armada-385-linksys-rango|\
-armada-385-linksys-venom)
-	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x20000"
-	;;
-armada-385-turris-omnia)
+cznic,turris-omnia)
 	ubootenv_add_uci_config "/dev/mtd0" "0xC0000" "0x10000" "0x40000"
 	;;
-armada-xp-linksys-mamba)
-	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
-	;;
 globalscale,espressobin|\
 marvell,armada8040-mcbin)
 	ubootenv_add_uci_config "/dev/mtd0" "0x3f0000" "0x10000" "0x10000" "1"
 	;;
+linksys,caiman|\
+linksys,cobra|\
+linksys,shelby)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x40000"
+	;;
+linksys,mamba)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
+	;;
+linksys,rango|\
+linksys,venom)
+	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x20000"
+	;;
 esac
 
 config_load ubootenv
diff --git a/target/linux/mvebu/base-files/etc/board.d/01_leds b/target/linux/mvebu/base-files/etc/board.d/01_leds
index ff8d4a21c0..14313ee664 100755
--- a/target/linux/mvebu/base-files/etc/board.d/01_leds
+++ b/target/linux/mvebu/base-files/etc/board.d/01_leds
@@ -11,42 +11,42 @@ board_config_update
 board=$(board_name)
 
 case "$board" in
-armada-385-linksys-caiman)
+linksys,caiman)
 	ucidef_set_led_netdev "wan" "WAN" "pca963x:caiman:white:wan" "eth1"
 	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:caiman:white:usb2" "usb1-port1"
 	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:caiman:white:usb3_1" "usb2-port1" "usb3-port1"
 	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:caiman:white:usb3_2" "usb3-port1"
 	;;
-armada-385-linksys-cobra)
+linksys,cobra)
 	ucidef_set_led_netdev "wan" "WAN" "pca963x:cobra:white:wan" "eth1"
 	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:cobra:white:usb2" "usb1-port1"
 	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:cobra:white:usb3_1" "usb2-port1" "usb3-port1"
 	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:cobra:white:usb3_2" "usb3-port1"
 	;;
-armada-385-linksys-rango)
+linksys,mamba)
+	ucidef_set_led_netdev "wan" "WAN" "mamba:white:wan" "eth1"
+	ucidef_set_led_usbport "usb1" "USB 1" "mamba:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "mamba:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "mamba:white:usb3_2" "usb3-port2"
+	;;
+linksys,rango)
 	ucidef_set_led_netdev "wan" "WAN" "pca963x:rango:white:wan" "eth1"
 	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:rango:white:usb2" "usb1-port1"
 	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:rango:white:usb3_1" "usb2-port1" "usb3-port1"
 	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:rango:white:usb3_2" "usb3-port1"
 	;;
-armada-385-linksys-shelby)
+linksys,shelby)
 	ucidef_set_led_netdev "wan" "WAN" "pca963x:shelby:white:wan" "eth1"
 	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:shelby:white:usb2" "usb1-port1"
 	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:shelby:white:usb3_1" "usb2-port1" "usb3-port1"
 	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:shelby:white:usb3_2" "usb3-port1"
 	;;
-armada-385-linksys-venom)
+linksys,venom)
 	ucidef_set_led_netdev "wan" "WAN" "pca963x:venom:blue:wan" "eth1"
 	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:venom:blue:usb2" "usb1-port1"
 	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:venom:blue:usb3_1" "usb2-port1" "usb3-port1"
 	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:venom:blue:usb3_2" "usb3-port1"
 	;;
-armada-xp-linksys-mamba)
-	ucidef_set_led_netdev "wan" "WAN" "mamba:white:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "mamba:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "mamba:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "mamba:white:usb3_2" "usb3-port2"
-	;;
 
 esac
 
diff --git a/target/linux/mvebu/base-files/etc/board.d/02_network b/target/linux/mvebu/base-files/etc/board.d/02_network
index 2c10154925..f099a078b2 100755
--- a/target/linux/mvebu/base-files/etc/board.d/02_network
+++ b/target/linux/mvebu/base-files/etc/board.d/02_network
@@ -11,24 +11,42 @@ board_config_update
 board=$(board_name)
 
 case "$board" in
-armada-385-db-ap)
-	ucidef_set_interfaces_lan_wan "eth0 eth1" "eth2"
+cznic,turris-omnia)
+	ucidef_set_interface_lan "lan0 lan1 lan2 lan3 lan4"
+	ucidef_set_interface_wan "eth2"
+	;;
+globalscale,espressobin)
+	ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
 	;;
-armada-385-linksys-caiman|\
-armada-385-linksys-cobra|\
-armada-385-linksys-rango|\
-armada-385-linksys-shelby|\
-armada-385-linksys-venom|\
-armada-xp-linksys-mamba)
+linksys,caiman|\
+linksys,cobra|\
+linksys,mamba|\
+linksys,rango|\
+linksys,shelby|\
+linksys,venom)
 	ucidef_set_interfaces_lan_wan "eth0.1" "eth1.2"
 	ucidef_add_switch "switch0" \
 		"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "5@eth0" "4:wan" "6@eth1"
 	;;
-armada-385-turris-omnia)
-	ucidef_set_interface_lan "lan0 lan1 lan2 lan3 lan4"
-	ucidef_set_interface_wan "eth2"
+marvell,a385-db-ap)
+	ucidef_set_interfaces_lan_wan "eth0 eth1" "eth2"
+	;;
+marvell,armada8040-mcbin)
+	ucidef_set_interfaces_lan_wan "eth0 eth1 eth3" "eth2"
+	;;
+marvell,armada8040-db)
+	ucidef_set_interfaces_lan_wan "eth0 eth2 eth3" "eth1"
+	;;
+marvell,armada7040-db)
+	ucidef_set_interfaces_lan_wan "eth0 eth2" "eth1"
+	;;
+marvell,armada-3720-db)
+	ucidef_set_interfaces_lan_wan "eth1" "eth0"
+	;;
+marvell,axp-gp)
+	ucidef_set_interface_lan "eth0 eth1 eth2 eth3"
 	;;
-armada-388-clearfog-*)
+solidrun,clearfog*a1)
 	# eth0 is standalone ethernet
 	# eth1 is switch (-pro) or standalone ethernet (-base)
 	# eth2 is SFP
@@ -40,24 +58,6 @@ armada-388-clearfog-*)
 		ucidef_add_switch "switch0" \
 			"0:lan:5" "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "5u@eth1" "6:lan:6"
 	;;
-armada-xp-gp)
-	ucidef_set_interface_lan "eth0 eth1 eth2 eth3"
-	;;
-globalscale,espressobin)
-	ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
-	;;
-marvell,armada-3720-db)
-	ucidef_set_interfaces_lan_wan "eth1" "eth0"
-	;;
-marvell,armada8040-mcbin)
-	ucidef_set_interfaces_lan_wan "eth0 eth1 eth3" "eth2"
-	;;
-marvell,armada8040-db)
-	ucidef_set_interfaces_lan_wan "eth0 eth2 eth3" "eth1"
-	;;
-marvell,armada7040-db)
-	ucidef_set_interfaces_lan_wan "eth0 eth2" "eth1"
-	;;
 *)
 	ucidef_set_interface_lan "eth0"
 	;;
diff --git a/target/linux/mvebu/base-files/etc/diag.sh b/target/linux/mvebu/base-files/etc/diag.sh
index 327a82df93..be825379f9 100644
--- a/target/linux/mvebu/base-files/etc/diag.sh
+++ b/target/linux/mvebu/base-files/etc/diag.sh
@@ -7,24 +7,24 @@
 
 get_status_led() {
 	case $(board_name) in
-	armada-385-linksys-caiman)
+	linksys,caiman)
 		status_led="caiman:white:power"
 		;;
-	armada-385-linksys-cobra)
+	linksys,cobra)
 		status_led="cobra:white:power"
 		;;
-	armada-385-linksys-rango)
+	linksys,mamba)
+		status_led="mamba:white:power"
+		;;
+	linksys,rango)
 		status_led="rango:white:power"
 		;;
-	armada-385-linksys-shelby)
+	linksys,shelby)
 		status_led="shelby:white:power"
 		;;
-	armada-385-linksys-venom)
+	linksys,venom)
 		status_led="venom:blue:power"
 		;;
-	armada-xp-linksys-mamba)
-		status_led="mamba:white:power"
-		;;
 	esac
 }
 
diff --git a/target/linux/mvebu/base-files/etc/init.d/linksys_recovery b/target/linux/mvebu/base-files/etc/init.d/linksys_recovery
index 520b8aac54..b4f375ec99 100755
--- a/target/linux/mvebu/base-files/etc/init.d/linksys_recovery
+++ b/target/linux/mvebu/base-files/etc/init.d/linksys_recovery
@@ -7,7 +7,7 @@ boot() {
 . /lib/functions.sh
 
 case $(board_name) in
-	armada-385-linksys-caiman|armada-385-linksys-cobra|armada-385-linksys-rango|armada-385-linksys-shelby|armada-385-linksys-venom|armada-xp-linksys-mamba)
+	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
 		# make sure auto_recovery in uboot is always on
 		AUTO_RECOVERY_ENA="`fw_printenv -n auto_recovery`"
 		if [ "$AUTO_RECOVERY_ENA" != "yes" ] ; then
diff --git a/target/linux/mvebu/base-files/etc/uci-defaults/03_wireless b/target/linux/mvebu/base-files/etc/uci-defaults/03_wireless
index 6fb24c8d4f..3c345ff148 100644
--- a/target/linux/mvebu/base-files/etc/uci-defaults/03_wireless
+++ b/target/linux/mvebu/base-files/etc/uci-defaults/03_wireless
@@ -11,7 +11,7 @@
 board=$(board_name)
 
 case "$board" in
-armada-385-linksys-caiman|armada-385-linksys-cobra|armada-385-linksys-shelby|armada-385-linksys-venom|armada-xp-linksys-mamba)
+linksys,caiman|linksys,cobra|linksys,mamba|linksys,shelby|linksys,venom)
 	SKU=$(strings /dev/mtd3|sed -ne 's/^cert_region=//p')
 	WIFIMAC2G=$(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 	WIFIMAC5G=$(macaddr_add $WIFIMAC2G +1)
@@ -34,7 +34,7 @@ armada-385-linksys-caiman|armada-385-linksys-cobra|armada-385-linksys-shelby|arm
 	esac
 
 	case "$board" in
-		armada-xp-linksys-mamba)
+		linksys,mamba)
 			WIFIMAC0=$WIFIMAC2G
 			WIFIMAC1=$WIFIMAC5G
 		;;
diff --git a/target/linux/mvebu/base-files/etc/uci-defaults/04_mambafan b/target/linux/mvebu/base-files/etc/uci-defaults/04_mambafan
index e15ce616c7..ec25aedad6 100644
--- a/target/linux/mvebu/base-files/etc/uci-defaults/04_mambafan
+++ b/target/linux/mvebu/base-files/etc/uci-defaults/04_mambafan
@@ -8,7 +8,7 @@
 board=$(board_name)
 
 case "$board" in
-armada-xp-linksys-mamba)
+linksys,mamba)
 	# Set fan script execution in crontab
 	grep -s -q fan_ctrl.sh /etc/crontabs/root && exit 0
 
diff --git a/target/linux/mvebu/base-files/lib/mvebu.sh b/target/linux/mvebu/base-files/lib/mvebu.sh
deleted file mode 100755
index cfe880bb3c..0000000000
--- a/target/linux/mvebu/base-files/lib/mvebu.sh
+++ /dev/null
@@ -1,94 +0,0 @@
-#!/bin/sh
-#
-# Copyright (C) 2013-2015 OpenWrt.org
-# Copyright (C) 2016 LEDE-Project.org
-#
-
-MVEBU_BOARD_NAME=
-MVEBU_MODEL=
-
-mvebu_board_detect() {
-	local machine
-	local name
-
-	machine=$(cat /proc/device-tree/model)
-
-	case "$machine" in
-	*"Marvell Armada 370 Evaluation Board")
-		name="armada-370-db"
-		;;
-	*"Globalscale Marvell ESPRESSOBin Board")
-		name="globalscale,espressobin"
-		;;
-	*"Marvell Armada 3720 Development Board DB-88F3720-DDR3")
-		name="marvell,armada-3720-db"
-		;;
-	*"Marvell 8040 MACCHIATOBin")
-		name="marvell,armada8040-mcbin"
-		;;
-	*"Marvell Armada 8040 DB board")
-		name="marvell,armada8040-db"
-		;;
-	*"Marvell Armada 7040 DB board")
-		name="marvell,armada7040-db"
-		;;
-	*"Globalscale Mirabox")
-		name="mirabox"
-		;;
-	*"Marvell Armada 370 Reference Design")
-		name="armada-370-rd"
-		;;
-	*"Marvell Armada XP Evaluation Board")
-		name="armada-xp-db"
-		;;
-	*"PlatHome OpenBlocks AX3-4 board")
-		name="openblocks-ax3-4"
-		;;
-	*"Marvell Armada XP GP Board")
-		name="armada-xp-gp"
-		;;
-	*"Linksys WRT1200AC")
-		name="armada-385-linksys-caiman"
-		;;
-	*"Linksys WRT1900AC")
-		name="armada-xp-linksys-mamba"
-		;;
-	*"Linksys WRT1900ACv2")
-		name="armada-385-linksys-cobra"
-		;;
-	*"Linksys WRT1900ACS")
-		name="armada-385-linksys-shelby"
-		;;
-	*"Linksys WRT3200ACM")
-		name="armada-385-linksys-rango"
-		;;
-	*"Linksys WRT32X")
-		name="armada-385-linksys-venom"
-		;;
-	*"Marvell Armada 385 Access Point Development Board")
-		name="armada-385-db-ap"
-		;;
-	*"Marvell Armada XP Development Board DB-MV784MP-GP")
-		name="armada-xp-gp"
-		;;
-	*"SolidRun Clearfog Pro A1")
-		name="armada-388-clearfog-pro"
-		;;
-	*"SolidRun Clearfog Base A1")
-		name="armada-388-clearfog-base"
-		;;
-	*"Turris Omnia")
-		name="armada-385-turris-omnia"
-		;;
-	esac
-
-	[ -z "$name" ] && name="unknown"
-
-	[ -z "$MVEBU_BOARD_NAME" ] && MVEBU_BOARD_NAME="$name"
-	[ -z "$MVEBU_MODEL" ] && MVEBU_MODEL="$machine"
-
-	[ -e "/tmp/sysinfo/" ] || mkdir -p "/tmp/sysinfo/"
-
-	echo "$MVEBU_BOARD_NAME" > /tmp/sysinfo/board_name
-	echo "$MVEBU_MODEL" > /tmp/sysinfo/model
-}
diff --git a/target/linux/mvebu/base-files/lib/preinit/01_sysinfo b/target/linux/mvebu/base-files/lib/preinit/01_sysinfo
deleted file mode 100644
index 6f473cfa13..0000000000
--- a/target/linux/mvebu/base-files/lib/preinit/01_sysinfo
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-do_sysinfo_mvebu() {
-	. /lib/mvebu.sh
-
-	mvebu_board_detect
-}
-
-boot_hook_add preinit_main do_sysinfo_mvebu
diff --git a/target/linux/mvebu/base-files/lib/preinit/06_set_iface_mac b/target/linux/mvebu/base-files/lib/preinit/06_set_iface_mac
index 534a271efb..aba8da239e 100644
--- a/target/linux/mvebu/base-files/lib/preinit/06_set_iface_mac
+++ b/target/linux/mvebu/base-files/lib/preinit/06_set_iface_mac
@@ -9,12 +9,7 @@ preinit_set_mac_address() {
 	. /lib/functions.sh
 
 	case $(board_name) in
-	armada-xp-linksys-mamba)
-		mac=$(mtd_get_mac_ascii devinfo hw_mac_addr)
-		ip link set dev eth0 address $mac 2>/dev/null
-		ip link set dev eth1 address $mac 2>/dev/null
-		;;
-	armada-385-linksys-caiman|armada-385-linksys-cobra|armada-385-linksys-rango|armada-385-linksys-shelby|armada-385-linksys-venom)
+	linksys,caiman|linksys,cobra|linksys,rango|linksys,shelby|linksys,venom)
 		# rename interfaces back to the way they were with 4.4
 		case "$(readlink /sys/class/net/eth0)" in
 			*f1070000*)
@@ -29,7 +24,12 @@ preinit_set_mac_address() {
 		ip link set dev eth1 address $mac 2>/dev/null
 		ip link set dev eth0 address $mac_wan 2>/dev/null
 		;;
-	armada-385-db-ap|armada-388-clearfog)
+	linksys,mamba)
+		mac=$(mtd_get_mac_ascii devinfo hw_mac_addr)
+		ip link set dev eth0 address $mac 2>/dev/null
+		ip link set dev eth1 address $mac 2>/dev/null
+		;;
+	marvell,a385-db-ap|solidrun,clearfog*a1)
 		# rename interfaces back to the way they were with 4.4
 		case "$(readlink /sys/class/net/eth0)" in
 			*f1070000*)
diff --git a/target/linux/mvebu/base-files/lib/preinit/79_move_config b/target/linux/mvebu/base-files/lib/preinit/79_move_config
index f7e23cc324..640fb5cdad 100644
--- a/target/linux/mvebu/base-files/lib/preinit/79_move_config
+++ b/target/linux/mvebu/base-files/lib/preinit/79_move_config
@@ -9,7 +9,7 @@ move_config() {
 
 	if export_bootdevice && export_partdevice partdev 1; then
 		case $(board_name) in
-			armada-385-turris-omnia)
+			cznic,turris-omnia)
 			insmod nls_cp437
 			insmod nls_iso8859-1
 			insmod fat
diff --git a/target/linux/mvebu/base-files/lib/preinit/81_linksys_syscfg b/target/linux/mvebu/base-files/lib/preinit/81_linksys_syscfg
index cf7a22c4f6..b107eacb11 100644
--- a/target/linux/mvebu/base-files/lib/preinit/81_linksys_syscfg
+++ b/target/linux/mvebu/base-files/lib/preinit/81_linksys_syscfg
@@ -8,7 +8,7 @@ preinit_mount_syscfg() {
 	. /lib/functions.sh
 
 	case $(board_name) in
-	armada-385-linksys-caiman|armada-385-linksys-cobra|armada-385-linksys-rango|armada-385-linksys-shelby|armada-385-linksys-venom|armada-xp-linksys-mamba)
+	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
 		needs_recovery=0
 		syscfg_part=$(grep syscfg /proc/mtd |cut -c4)
 		ubiattach -m $syscfg_part || needs_recovery=1
diff --git a/target/linux/mvebu/base-files/lib/upgrade/platform.sh b/target/linux/mvebu/base-files/lib/upgrade/platform.sh
index 57b2f00a4c..c3c31ea06f 100755
--- a/target/linux/mvebu/base-files/lib/upgrade/platform.sh
+++ b/target/linux/mvebu/base-files/lib/upgrade/platform.sh
@@ -9,7 +9,7 @@ REQUIRE_IMAGE_METADATA=1
 
 platform_check_image() {
 	case "$(board_name)" in
-	armada-385-turris-omnia|armada-388-clearfog-base|armada-388-clearfog-pro|globalscale,espressobin|marvell,armada8040-mcbin)
+	cznic,turris-omnia|globalscale,espressobin|marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
 		platform_check_image_sdcard "$ARGV"
 		;;
 	*)
@@ -20,10 +20,10 @@ platform_check_image() {
 
 platform_do_upgrade() {
 	case "$(board_name)" in
-	armada-385-linksys-caiman|armada-385-linksys-cobra|armada-385-linksys-rango|armada-385-linksys-shelby|armada-385-linksys-venom|armada-xp-linksys-mamba)
+	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
 		platform_do_upgrade_linksys "$ARGV"
 		;;
-	armada-385-turris-omnia|armada-388-clearfog-base|armada-388-clearfog-pro|globalscale,espressobin|marvell,armada8040-mcbin)
+	cznic,turris-omnia|globalscale,espressobin|marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
 		platform_do_upgrade_sdcard "$ARGV"
 		;;
 	*)
@@ -33,10 +33,10 @@ platform_do_upgrade() {
 }
 platform_copy_config() {
 	case "$(board_name)" in
-	armada-385-linksys-caiman|armada-385-linksys-cobra|armada-385-linksys-rango|armada-385-linksys-shelby|armada-385-linksys-venom|armada-xp-linksys-mamba)
+	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
 		platform_copy_config_linksys
 		;;
-	armada-385-turris-omnia|armada-388-clearfog-base|armada-388-clearfog-pro|globalscale,espressobin|marvell,armada8040-mcbin)
+	cznic,turris-omnia|globalscale,espressobin|marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
 		platform_copy_config_sdcard "$ARGV"
 		;;
 	esac
diff --git a/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh b/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh
index 28fad31757..43fc2504fc 100644
--- a/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh
+++ b/target/linux/mvebu/base-files/lib/upgrade/sdcard.sh
@@ -91,7 +91,7 @@ platform_do_upgrade_sdcard() {
 	get_image "$@" | dd of="/dev/$diskdev" bs=1 skip=440 count=4 seek=440 conv=fsync
 
 	case "$board" in
-	armada-385-turris-omnia)
+	cznic,turris-omnia)
 		fw_setenv openwrt_bootargs 'earlyprintk console=ttyS0,115200 root=/dev/mmcblk0p2 rootfstype=auto rootwait'
 		fw_setenv openwrt_mmcload 'setenv bootargs "$openwrt_bootargs cfg80211.freg=$regdomain"; fatload mmc 0 0x01000000 zImage; fatload mmc 0 0x02000000 armada-385-turris-omnia.dtb'
 		fw_setenv factory_mmcload 'setenv bootargs "$bootargs cfg80211.freg=$regdomain"; btrload mmc 0 0x01000000 boot/zImage @; btrload mmc 0 0x02000000 boot/dtb @'
diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index f432a37911..57e5a30491 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -76,7 +76,7 @@ define Device/Default
   IMAGES := sysupgrade.bin
   IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | pad-to $$$$(PAGESIZE)
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-  SUPPORTED_DEVICES = $$(firstword $$(DEVICE_DTS))
+  SUPPORTED_DEVICES = $(subst _,$(comma),$(1))
   UBINIZE_OPTS := -E 5
   UBOOT :=
   BOOT_SCRIPT :=
diff --git a/target/linux/mvebu/image/cortex-a53.mk b/target/linux/mvebu/image/cortex-a53.mk
index 5a3e9b4d07..de9c2164b1 100644
--- a/target/linux/mvebu/image/cortex-a53.mk
+++ b/target/linux/mvebu/image/cortex-a53.mk
@@ -4,7 +4,6 @@ define Device/globalscale_espressobin
   $(call Device/Default-arm64)
   DEVICE_TITLE := ESPRESSObin (Marvell Armada 3700 Community Board)
   DEVICE_DTS := armada-3720-espressobin
-  SUPPORTED_DEVICES := globalscale,espressobin
 endef
 TARGET_DEVICES += globalscale_espressobin
 
@@ -12,7 +11,6 @@ define Device/marvell_armada-3720-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 3720 Development Board DB-88F3720-DDR3
   DEVICE_DTS := armada-3720-db
-  SUPPORTED_DEVICES := marvell,armada-3720-db
 endef
 TARGET_DEVICES += marvell_armada-3720-db
 
diff --git a/target/linux/mvebu/image/cortex-a72.mk b/target/linux/mvebu/image/cortex-a72.mk
index b1069b1f0b..73dc67b60a 100644
--- a/target/linux/mvebu/image/cortex-a72.mk
+++ b/target/linux/mvebu/image/cortex-a72.mk
@@ -14,7 +14,6 @@ define Device/marvell_armada8040-db
   DEVICE_TITLE := Marvell Armada 8040 DB board
   DEVICE_DTS := armada-8040-db
   IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
-  SUPPORTED_DEVICES := marvell,armada8040-db
 endef
 TARGET_DEVICES += marvell_armada8040-db
 
@@ -23,7 +22,6 @@ define Device/marvell_armada7040-db
   DEVICE_TITLE := Marvell Armada 7040 DB board
   DEVICE_DTS := armada-7040-db
   IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
-  SUPPORTED_DEVICES := marvell,armada7040-db
 endef
 TARGET_DEVICES += marvell_armada7040-db
 
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index baaeb8ddb6..401da3afaf 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -20,6 +20,7 @@ define Device/linksys_wrt1200ac
   $(call Device/linksys,WRT1200AC (Caiman))
   DEVICE_DTS := armada-385-linksys-caiman
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
+  SUPPORTED_DEVICES := armada-385-linksys-caiman linksys,caiman
 endef
 TARGET_DEVICES += linksys_wrt1200ac
 
@@ -27,6 +28,7 @@ define Device/linksys_wrt1900acv2
   $(call Device/linksys,WRT1900ACv2 (Cobra))
   DEVICE_DTS := armada-385-linksys-cobra
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
+  SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
 endef
 TARGET_DEVICES += linksys_wrt1900acv2
 
@@ -34,6 +36,7 @@ define Device/linksys_wrt3200acm
   $(call Device/linksys,WRT3200ACM (Rango))
   DEVICE_DTS := armada-385-linksys-rango
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
+  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
 endef
 TARGET_DEVICES += linksys_wrt3200acm
 
@@ -41,6 +44,7 @@ define Device/linksys_wrt1900acs
   $(call Device/linksys,WRT1900ACS (Shelby))
   DEVICE_DTS := armada-385-linksys-shelby
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
+  SUPPORTED_DEVICES := armada-385-linksys-shelby linksys,shelby
 endef
 TARGET_DEVICES += linksys_wrt1900acs
 
@@ -50,6 +54,7 @@ define Device/linksys_wrt32x
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
   KERNEL_SIZE := 3072k
   KERNEL := kernel-bin | append-dtb
+  SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
 endef
 TARGET_DEVICES += linksys_wrt32x
 
@@ -58,12 +63,13 @@ define Device/linksys_wrt1900ac
   DEVICE_DTS := armada-xp-linksys-mamba
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   KERNEL_SIZE := 3072k
+  SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba
 endef
 TARGET_DEVICES += linksys_wrt1900ac
 
 define Device/plathome_openblocks-ax3-4
   DEVICE_DTS := armada-xp-openblocks-ax3-4
-  SUPPORTED_DEVICES := openblocks-ax3-4
+  SUPPORTED_DEVICES += openblocks-ax3-4
   BLOCKSIZE := 128k
   PAGESIZE := 1
   IMAGES += factory.img
@@ -78,6 +84,7 @@ define Device/marvell_a385-db-ap
   IMAGES += factory.img
   KERNEL_SIZE := 8192k
   DEVICE_TITLE := Marvell Armada 385 DB AP (DB-88F6820-AP)
+  SUPPORTED_DEVICES += armada-385-db-ap
 endef
 TARGET_DEVICES += marvell_a385-db-ap
 
@@ -85,6 +92,7 @@ define Device/marvell_a370-db
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada 370 DB (DB-88F6710-BP-DDR3)
   DEVICE_DTS := armada-370-db
+  SUPPORTED_DEVICES += armada-370-db
 endef
 TARGET_DEVICES += marvell_a370-db
 
@@ -92,6 +100,7 @@ define Device/marvell_a370-rd
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada 370 RD (RD-88F6710-A1)
   DEVICE_DTS := armada-370-rd
+  SUPPORTED_DEVICES += armada-370-rd
 endef
 TARGET_DEVICES += marvell_a370-rd
 
@@ -99,6 +108,7 @@ define Device/marvell_axp-db
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada XP DB (DB-78460-BP)
   DEVICE_DTS := armada-xp-db
+  SUPPORTED_DEVICES += armada-xp-db
 endef
 TARGET_DEVICES += marvell_axp-db
 
@@ -106,6 +116,7 @@ define Device/marvell_axp-gp
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada XP GP (DB-MV784MP-GP)
   DEVICE_DTS := armada-xp-gp
+  SUPPORTED_DEVICES += armada-xp-gp
 endef
 TARGET_DEVICES += marvell_axp-gp
 
@@ -114,6 +125,7 @@ define Device/marvell_a388-rd
   DEVICE_DTS := armada-388-rd
   IMAGES := firmware.bin
   IMAGE/firmware.bin := append-kernel | pad-to 256k | append-rootfs | pad-rootfs
+  SUPPORTED_DEVICES := armada-388-rd marvell,a385-rd
 endef
 TARGET_DEVICES += marvell_a388-rd
 
@@ -125,7 +137,7 @@ define Device/solidrun_clearfog-pro-a1
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-388-clearfog-pro armada-388-clearfog-base
-  SUPPORTED_DEVICES := armada-388-clearfog-pro armada-388-clearfog
+  SUPPORTED_DEVICES += armada-388-clearfog armada-388-clearfog-pro
   UBOOT := clearfog-u-boot-spl.kwb
   BOOT_SCRIPT := clearfog
 endef
@@ -139,6 +151,7 @@ define Device/solidrun_clearfog-base-a1
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-388-clearfog-base armada-388-clearfog-pro
+  SUPPORTED_DEVICES += armada-388-clearfog-base
   UBOOT := clearfog-u-boot-spl.kwb
   BOOT_SCRIPT := clearfog
 endef
@@ -147,7 +160,7 @@ TARGET_DEVICES += solidrun_clearfog-base-a1
 define Device/globalscale_mirabox
   $(Device/NAND-512K)
   DEVICE_DTS := armada-370-mirabox
-  SUPPORTED_DEVICES := mirabox
+  SUPPORTED_DEVICES += mirabox
   DEVICE_TITLE := Globalscale Mirabox
 endef
 TARGET_DEVICES += globalscale_mirabox
@@ -166,6 +179,7 @@ define Device/cznic_turris-omnia
   IMAGE/omnia-medkit-$$(IMAGE_PREFIX)-initramfs.tar.gz := omnia-medkit-initramfs | gzip
   IMAGE_NAME = $$(2)
   DEVICE_DTS := armada-385-turris-omnia
+  SUPPORTED_DEVICES += armada-385-turris-omnia
 endef
 TARGET_DEVICES += cznic_turris-omnia
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
