Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AFD141569
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 02:23:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=axBVhOIAdpORaFQULAa6YyBfzlePrtn0ApZTsHjEuOg=; b=pF3uAshkyfgjrbAqmD7e0QFMZ/
	JlxOe03O7/EZ/un94LcRC5qBRYOQSXoEIIqEXCmoNk8GDOsuFIoHdi95mT/pf+1+gNeuYSHbuzzIt
	m1sh375VNWh5xSTddL+I0dpzZri4ZuXrEH+nj35wsqQDCv/81D5t0gXh7QABqJEMgn51bBC3nu+bu
	C6a3LvzRteCdS8HeIbtz9URtNTs66pCL85fGyKPXXvMP2ooAv/w2nnzliAqyOJZHq1h5DYzt0AANc
	ApKYeUQv/nFcy3twunZ2qE9B0Gq6SkAUbnt/Z6yqmnZLI77ErmSX0anvRnBYbBBX7dFwJyyFGtC2o
	GjWANURg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscpE-0007Yj-GW; Sat, 18 Jan 2020 01:22:56 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iscoP-0006it-7Z
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 01:22:08 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MmU9X-1jJT6O1nOL-00iXkN for <openwrt-devel@lists.openwrt.org>; Sat, 18
 Jan 2020 02:22:01 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 02:21:13 +0100
Message-Id: <20200118012115.46148-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
References: <20200118012115.46148-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:1Wf/x7DYRYhjGG4wUKcHIBDo1GYBsyFDEUVAUQGJaipeIBpn0Q5
 R5mnytEuLWUETFsP4+0sNYeDMJ8LUsKDDropJFyRy08VjJqq8cimblEDe9zxBlzk0eaIYws
 MHlgv7p7YhVUNaFgz+xPY+3sNfGRqxTh8bcxkk9CwosA/IqxxxA+cfaQViw7nY3zRYYIeht
 XRGDMXj+m+fdEdkWiwvgg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KM3k0Ll1ybo=:d5HTqcdg3JKTCQLhFWMtxI
 4dqZ4dPn9fSVc0/BdsOD9P8NxpGxRsLvxwb5SQIsPxk5NDmqnvWESuveK6XJH1mEwgMxBknRb
 ogv/SaaS4lvNuCDz0zfOORqzWCOrgn7GwrzVa5kvEm8zOFA7A0haQP1CT56H/Z1IuUQ4YVNXq
 /2NvN6OggDrxe2XDocq2/MHmeV3eROC7SGAP4eK76QwJOD+KxKAvRkrIWu/DuUtzdQxf/T2Cx
 LdbXdaj+8VMF1QQc+2ZtWxXHcCmM8hn34CUAIoWsHwQuBw1EHnxsXyktYwlzxck5mL6rROBF/
 KAmH+mlDp3HCAxf45nCeJnSh5NM1FNW5eOCVt710yCQtkvzOk8LaOwGhziA0rDuq0zNm3RPuB
 J5l3CdivVwoTzsvdhpDXaR22kf3eE7dnGglkY4Qgys6dO3jkg8FwFN+WNFejBWuU9ATk3qj6a
 oA5GSpeE+zwj9ghMSlvU367uk8tzy8OqdpnYcKWQ6HH3e9TRVrayjdjsIQLUSQDQbb37kImy1
 lJRpOJ0Kcam8chZs9dNH9/vbpX5+BRPMF4xCVMHK4t5kN3Mh2vgrvOwJvI1OgabiHwUKVFmiZ
 YQfw0B9dIDypS0pEaSS/txqqoIRFZBgx3qo+tMh63/FfAZFmIGya6UehEmVtl2Z0eEzVgbyg+
 +hw2gJzDehv+CASKX4j8mWzY5vuONnS2IxGNUyHUzD7qJuI/kYeP2RYuGJs5jnfzF1CG/FtXT
 KR4yaZNgAsFVrvmwTjR+j7h40qQUAezUwxPxo3Ejw0tOB461Xa5JSYKvl0rCnkhJHA58o8dAN
 nfvj4YtdOGU2CFkfpzsxumloLbbAwp3hcaJIu9RaIWzXUfHwxzIDnqnJxRSmNRPK4bAom6yL8
 HmJvwze7cFnjiAohFTNgZg2gc2sPvuElN59V3zZwA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_172205_567861_26225D5D 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] mvebu: split base-files across subtargets
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

For the mvebu target in particular, there is a lot of files in
base-files that are only relevant for one subtarget. Improve
overview and reduce size per subtarget by moving/splitting
base-files depending on the subtarget they belong to.

While at it, consolidate 01_leds by using the model part of
the board name as variable.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../mvebu/base-files/etc/board.d/01_leds      | 55 -----------------
 .../mvebu/base-files/lib/upgrade/platform.sh  | 52 ----------------
 .../base-files/etc/board.d/02_network         | 31 ++++++++++
 .../base-files/lib/preinit/82_uDPU            |  0
 .../base-files/lib/upgrade/platform.sh        | 52 ++++++++++++++++
 .../base-files/lib/upgrade/uDPU.sh            |  0
 .../base-files/etc/board.d/02_network         | 30 ++++++++++
 .../base-files/lib/upgrade/platform.sh        | 37 ++++++++++++
 .../cortexa9/base-files/etc/board.d/01_leds   | 40 +++++++++++++
 .../base-files/etc/board.d/02_network         | 24 +-------
 .../base-files/etc/init.d/bootcount           |  0
 .../base-files/etc/uci-defaults/03_wireless   |  0
 .../base-files/etc/uci-defaults/04_mambafan   |  0
 .../base-files/lib/preinit/06_set_iface_mac   |  0
 .../base-files/lib/preinit/81_linksys_syscfg  |  0
 .../base-files/lib/upgrade/linksys.sh         |  0
 .../base-files/lib/upgrade/platform.sh        | 59 +++++++++++++++++++
 17 files changed, 251 insertions(+), 129 deletions(-)
 delete mode 100755 target/linux/mvebu/base-files/etc/board.d/01_leds
 delete mode 100755 target/linux/mvebu/base-files/lib/upgrade/platform.sh
 create mode 100755 target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
 rename target/linux/mvebu/{ => cortexa53}/base-files/lib/preinit/82_uDPU (100%)
 create mode 100755 target/linux/mvebu/cortexa53/base-files/lib/upgrade/platform.sh
 rename target/linux/mvebu/{ => cortexa53}/base-files/lib/upgrade/uDPU.sh (100%)
 create mode 100755 target/linux/mvebu/cortexa72/base-files/etc/board.d/02_network
 create mode 100755 target/linux/mvebu/cortexa72/base-files/lib/upgrade/platform.sh
 create mode 100755 target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
 rename target/linux/mvebu/{ => cortexa9}/base-files/etc/board.d/02_network (66%)
 rename target/linux/mvebu/{ => cortexa9}/base-files/etc/init.d/bootcount (100%)
 rename target/linux/mvebu/{ => cortexa9}/base-files/etc/uci-defaults/03_wireless (100%)
 rename target/linux/mvebu/{ => cortexa9}/base-files/etc/uci-defaults/04_mambafan (100%)
 rename target/linux/mvebu/{ => cortexa9}/base-files/lib/preinit/06_set_iface_mac (100%)
 rename target/linux/mvebu/{ => cortexa9}/base-files/lib/preinit/81_linksys_syscfg (100%)
 rename target/linux/mvebu/{ => cortexa9}/base-files/lib/upgrade/linksys.sh (100%)
 create mode 100755 target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh

diff --git a/target/linux/mvebu/base-files/etc/board.d/01_leds b/target/linux/mvebu/base-files/etc/board.d/01_leds
deleted file mode 100755
index 14313ee664..0000000000
--- a/target/linux/mvebu/base-files/etc/board.d/01_leds
+++ /dev/null
@@ -1,55 +0,0 @@
-#!/bin/sh
-#
-# Copyright (C) 2014-2016 OpenWrt.org
-# Copyright (C) 2016 LEDE-Project.org
-#
-
-. /lib/functions/uci-defaults.sh
-
-board_config_update
-
-board=$(board_name)
-
-case "$board" in
-linksys,caiman)
-	ucidef_set_led_netdev "wan" "WAN" "pca963x:caiman:white:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:caiman:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:caiman:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:caiman:white:usb3_2" "usb3-port1"
-	;;
-linksys,cobra)
-	ucidef_set_led_netdev "wan" "WAN" "pca963x:cobra:white:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:cobra:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:cobra:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:cobra:white:usb3_2" "usb3-port1"
-	;;
-linksys,mamba)
-	ucidef_set_led_netdev "wan" "WAN" "mamba:white:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "mamba:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "mamba:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "mamba:white:usb3_2" "usb3-port2"
-	;;
-linksys,rango)
-	ucidef_set_led_netdev "wan" "WAN" "pca963x:rango:white:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:rango:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:rango:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:rango:white:usb3_2" "usb3-port1"
-	;;
-linksys,shelby)
-	ucidef_set_led_netdev "wan" "WAN" "pca963x:shelby:white:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:shelby:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:shelby:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:shelby:white:usb3_2" "usb3-port1"
-	;;
-linksys,venom)
-	ucidef_set_led_netdev "wan" "WAN" "pca963x:venom:blue:wan" "eth1"
-	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:venom:blue:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:venom:blue:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:venom:blue:usb3_2" "usb3-port1"
-	;;
-
-esac
-
-board_config_flush
-
-exit 0
diff --git a/target/linux/mvebu/base-files/lib/upgrade/platform.sh b/target/linux/mvebu/base-files/lib/upgrade/platform.sh
deleted file mode 100755
index 0223b72d71..0000000000
--- a/target/linux/mvebu/base-files/lib/upgrade/platform.sh
+++ /dev/null
@@ -1,52 +0,0 @@
-#
-# Copyright (C) 2014-2016 OpenWrt.org
-# Copyright (C) 2016 LEDE-Project.org
-#
-
-RAMFS_COPY_BIN='fw_printenv fw_setenv'
-RAMFS_COPY_DATA='/etc/fw_env.config /var/lock/fw_printenv.lock'
-REQUIRE_IMAGE_METADATA=1
-
-platform_check_image() {
-	case "$(board_name)" in
-	cznic,turris-omnia|globalscale,espressobin|globalscale,espressobin-emmc|globalscale,espressobin-v7|globalscale,espressobin-v7-emmc|\
-	marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
-		platform_check_image_sdcard "$1"
-		;;
-	*)
-		return 0
-		;;
-	esac
-}
-
-platform_do_upgrade() {
-	case "$(board_name)" in
-	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
-		platform_do_upgrade_linksys "$1"
-		;;
-	cznic,turris-omnia|globalscale,espressobin|globalscale,espressobin-emmc|globalscale,espressobin-v7|globalscale,espressobin-v7-emmc|\
-	marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
-		platform_do_upgrade_sdcard "$1"
-		;;
-	methode,udpu)
-		platform_do_upgrade_uDPU "$1"
-		;;
-	*)
-		default_do_upgrade "$1"
-		;;
-	esac
-}
-platform_copy_config() {
-	case "$(board_name)" in
-	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
-		platform_copy_config_linksys
-		;;
-	cznic,turris-omnia|globalscale,espressobin|globalscale,espressobin-emmc|globalscale,espressobin-v7|globalscale,espressobin-v7-emmc|\
-	marvell,armada8040-mcbin|solidrun,clearfog-base-a1|solidrun,clearfog-pro-a1)
-		platform_copy_config_sdcard
-		;;
-	methode,udpu)
-		platform_copy_config_uDPU
-		;;
-	esac
-}
diff --git a/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..ba4b930426
--- /dev/null
+++ b/target/linux/mvebu/cortexa53/base-files/etc/board.d/02_network
@@ -0,0 +1,31 @@
+#!/bin/sh
+#
+# Copyright (C) 2014-2016 OpenWrt.org
+# Copyright (C) 2016 LEDE-Project.org
+#
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+board=$(board_name)
+
+case "$board" in
+globalscale,espressobin|\
+globalscale,espressobin-emmc|\
+globalscale,espressobin-v7|\
+globalscale,espressobin-v7-emmc)
+	ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
+	;;
+marvell,armada-3720-db|\
+methode,udpu)
+	ucidef_set_interfaces_lan_wan "eth1" "eth0"
+	;;
+*)
+	ucidef_set_interface_lan "eth0"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/mvebu/base-files/lib/preinit/82_uDPU b/target/linux/mvebu/cortexa53/base-files/lib/preinit/82_uDPU
similarity index 100%
rename from target/linux/mvebu/base-files/lib/preinit/82_uDPU
rename to target/linux/mvebu/cortexa53/base-files/lib/preinit/82_uDPU
diff --git a/target/linux/mvebu/cortexa53/base-files/lib/upgrade/platform.sh b/target/linux/mvebu/cortexa53/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..cdf5933272
--- /dev/null
+++ b/target/linux/mvebu/cortexa53/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,52 @@
+#
+# Copyright (C) 2014-2016 OpenWrt.org
+# Copyright (C) 2016 LEDE-Project.org
+#
+
+RAMFS_COPY_BIN='fw_printenv fw_setenv'
+RAMFS_COPY_DATA='/etc/fw_env.config /var/lock/fw_printenv.lock'
+REQUIRE_IMAGE_METADATA=1
+
+platform_check_image() {
+	case "$(board_name)" in
+	globalscale,espressobin|\
+	globalscale,espressobin-emmc|\
+	globalscale,espressobin-v7|\
+	globalscale,espressobin-v7-emmc)
+		platform_check_image_sdcard "$1"
+		;;
+	*)
+		return 0
+		;;
+	esac
+}
+
+platform_do_upgrade() {
+	case "$(board_name)" in
+	globalscale,espressobin|\
+	globalscale,espressobin-emmc|\
+	globalscale,espressobin-v7|\
+	globalscale,espressobin-v7-emmc)
+		platform_do_upgrade_sdcard "$1"
+		;;
+	methode,udpu)
+		platform_do_upgrade_uDPU "$1"
+		;;
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
+platform_copy_config() {
+	case "$(board_name)" in
+	globalscale,espressobin|\
+	globalscale,espressobin-emmc|\
+	globalscale,espressobin-v7|\
+	globalscale,espressobin-v7-emmc)
+		platform_copy_config_sdcard
+		;;
+	methode,udpu)
+		platform_copy_config_uDPU
+		;;
+	esac
+}
diff --git a/target/linux/mvebu/base-files/lib/upgrade/uDPU.sh b/target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh
similarity index 100%
rename from target/linux/mvebu/base-files/lib/upgrade/uDPU.sh
rename to target/linux/mvebu/cortexa53/base-files/lib/upgrade/uDPU.sh
diff --git a/target/linux/mvebu/cortexa72/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa72/base-files/etc/board.d/02_network
new file mode 100755
index 0000000000..080e32ada3
--- /dev/null
+++ b/target/linux/mvebu/cortexa72/base-files/etc/board.d/02_network
@@ -0,0 +1,30 @@
+#!/bin/sh
+#
+# Copyright (C) 2014-2016 OpenWrt.org
+# Copyright (C) 2016 LEDE-Project.org
+#
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+board=$(board_name)
+
+case "$board" in
+marvell,armada8040-mcbin)
+	ucidef_set_interfaces_lan_wan "eth0 eth1 eth3" "eth2"
+	;;
+marvell,armada8040-db)
+	ucidef_set_interfaces_lan_wan "eth0 eth2 eth3" "eth1"
+	;;
+marvell,armada7040-db)
+	ucidef_set_interfaces_lan_wan "eth0 eth2" "eth1"
+	;;
+*)
+	ucidef_set_interface_lan "eth0"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/mvebu/cortexa72/base-files/lib/upgrade/platform.sh b/target/linux/mvebu/cortexa72/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..2428de08c4
--- /dev/null
+++ b/target/linux/mvebu/cortexa72/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,37 @@
+#
+# Copyright (C) 2014-2016 OpenWrt.org
+# Copyright (C) 2016 LEDE-Project.org
+#
+
+RAMFS_COPY_BIN='fw_printenv fw_setenv'
+RAMFS_COPY_DATA='/etc/fw_env.config /var/lock/fw_printenv.lock'
+REQUIRE_IMAGE_METADATA=1
+
+platform_check_image() {
+	case "$(board_name)" in
+	marvell,armada8040-mcbin)
+		platform_check_image_sdcard "$1"
+		;;
+	*)
+		return 0
+		;;
+	esac
+}
+
+platform_do_upgrade() {
+	case "$(board_name)" in
+	marvell,armada8040-mcbin)
+		platform_do_upgrade_sdcard "$1"
+		;;
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
+platform_copy_config() {
+	case "$(board_name)" in
+	marvell,armada8040-mcbin)
+		platform_copy_config_sdcard
+		;;
+	esac
+}
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
new file mode 100755
index 0000000000..a7762f0080
--- /dev/null
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
@@ -0,0 +1,40 @@
+#!/bin/sh
+#
+# Copyright (C) 2014-2016 OpenWrt.org
+# Copyright (C) 2016 LEDE-Project.org
+#
+
+. /lib/functions/uci-defaults.sh
+
+board_config_update
+
+board=$(board_name)
+boardname="${board##*,}"
+
+case "$board" in
+linksys,caiman|\
+linksys,cobra|\
+linksys,rango|\
+linksys,shelby)
+	ucidef_set_led_netdev "wan" "WAN" "pca963x:$boardname:white:wan" "eth1"
+	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:$boardname:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:$boardname:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:$boardname:white:usb3_2" "usb3-port1"
+	;;
+linksys,mamba)
+	ucidef_set_led_netdev "wan" "WAN" "mamba:white:wan" "eth1"
+	ucidef_set_led_usbport "usb1" "USB 1" "mamba:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "mamba:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "mamba:white:usb3_2" "usb3-port2"
+	;;
+linksys,venom)
+	ucidef_set_led_netdev "wan" "WAN" "pca963x:venom:blue:wan" "eth1"
+	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:venom:blue:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:venom:blue:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:venom:blue:usb3_2" "usb3-port1"
+	;;
+esac
+
+board_config_flush
+
+exit 0
diff --git a/target/linux/mvebu/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
similarity index 66%
rename from target/linux/mvebu/base-files/etc/board.d/02_network
rename to target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
index 283a856258..b10e1419b5 100755
--- a/target/linux/mvebu/base-files/etc/board.d/02_network
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
@@ -15,12 +15,6 @@ cznic,turris-omnia)
 	ucidef_set_interface_lan "lan0 lan1 lan2 lan3 lan4"
 	ucidef_set_interface_wan "eth2"
 	;;
-globalscale,espressobin|\
-globalscale,espressobin-emmc|\
-globalscale,espressobin-v7|\
-globalscale,espressobin-v7-emmc)
-	ucidef_set_interfaces_lan_wan "lan0 lan1" "wan"
-	;;
 linksys,caiman|\
 linksys,cobra|\
 linksys,mamba|\
@@ -34,25 +28,11 @@ linksys,venom)
 marvell,a385-db-ap)
 	ucidef_set_interfaces_lan_wan "eth0 eth1" "eth2"
 	;;
-marvell,armada8040-mcbin)
-	ucidef_set_interfaces_lan_wan "eth0 eth1 eth3" "eth2"
-	;;
-marvell,armada8040-db)
-	ucidef_set_interfaces_lan_wan "eth0 eth2 eth3" "eth1"
-	;;
-marvell,armada7040-db)
-	ucidef_set_interfaces_lan_wan "eth0 eth2" "eth1"
-	;;
-marvell,armada-3720-db)
-	ucidef_set_interfaces_lan_wan "eth1" "eth0"
-	;;
 marvell,axp-gp)
 	ucidef_set_interface_lan "eth0 eth1 eth2 eth3"
 	;;
-methode,udpu)
-	ucidef_set_interfaces_lan_wan "eth1" "eth0"
-	;;
-solidrun,clearfog-a1|solidrun,clearfog-pro-a1)
+solidrun,clearfog-a1|\
+solidrun,clearfog-pro-a1)
 	# eth0 is standalone ethernet
 	# eth1 is switch
 	# eth2 is SFP
diff --git a/target/linux/mvebu/base-files/etc/init.d/bootcount b/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
similarity index 100%
rename from target/linux/mvebu/base-files/etc/init.d/bootcount
rename to target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
diff --git a/target/linux/mvebu/base-files/etc/uci-defaults/03_wireless b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
similarity index 100%
rename from target/linux/mvebu/base-files/etc/uci-defaults/03_wireless
rename to target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
diff --git a/target/linux/mvebu/base-files/etc/uci-defaults/04_mambafan b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
similarity index 100%
rename from target/linux/mvebu/base-files/etc/uci-defaults/04_mambafan
rename to target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
diff --git a/target/linux/mvebu/base-files/lib/preinit/06_set_iface_mac b/target/linux/mvebu/cortexa9/base-files/lib/preinit/06_set_iface_mac
similarity index 100%
rename from target/linux/mvebu/base-files/lib/preinit/06_set_iface_mac
rename to target/linux/mvebu/cortexa9/base-files/lib/preinit/06_set_iface_mac
diff --git a/target/linux/mvebu/base-files/lib/preinit/81_linksys_syscfg b/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
similarity index 100%
rename from target/linux/mvebu/base-files/lib/preinit/81_linksys_syscfg
rename to target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
diff --git a/target/linux/mvebu/base-files/lib/upgrade/linksys.sh b/target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh
similarity index 100%
rename from target/linux/mvebu/base-files/lib/upgrade/linksys.sh
rename to target/linux/mvebu/cortexa9/base-files/lib/upgrade/linksys.sh
diff --git a/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh b/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
new file mode 100755
index 0000000000..8baed969a3
--- /dev/null
+++ b/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
@@ -0,0 +1,59 @@
+#
+# Copyright (C) 2014-2016 OpenWrt.org
+# Copyright (C) 2016 LEDE-Project.org
+#
+
+RAMFS_COPY_BIN='fw_printenv fw_setenv'
+RAMFS_COPY_DATA='/etc/fw_env.config /var/lock/fw_printenv.lock'
+REQUIRE_IMAGE_METADATA=1
+
+platform_check_image() {
+	case "$(board_name)" in
+	cznic,turris-omnia|\
+	solidrun,clearfog-base-a1|\
+	solidrun,clearfog-pro-a1)
+		platform_check_image_sdcard "$1"
+		;;
+	*)
+		return 0
+		;;
+	esac
+}
+
+platform_do_upgrade() {
+	case "$(board_name)" in
+	cznic,turris-omnia|\
+	solidrun,clearfog-base-a1|\
+	solidrun,clearfog-pro-a1)
+		platform_do_upgrade_sdcard "$1"
+		;;
+	linksys,caiman|\
+	linksys,cobra|\
+	linksys,mamba|\
+	linksys,rango|\
+	linksys,shelby|\
+	linksys,venom)
+		platform_do_upgrade_linksys "$1"
+		;;
+	*)
+		default_do_upgrade "$1"
+		;;
+	esac
+}
+platform_copy_config() {
+	case "$(board_name)" in
+	cznic,turris-omnia|\
+	solidrun,clearfog-base-a1|\
+	solidrun,clearfog-pro-a1)
+		platform_copy_config_sdcard
+		;;
+	linksys,caiman|\
+	linksys,cobra|\
+	linksys,mamba|\
+	linksys,rango|\
+	linksys,shelby|\
+	linksys,venom)
+		platform_copy_config_linksys
+		;;
+	esac
+}
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
