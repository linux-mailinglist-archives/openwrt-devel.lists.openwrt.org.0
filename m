Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0D41F8B15
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 00:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tGcnIn94AksuGh3oLBIHICCeJJRU5lw7WfRdNFSCUcw=; b=fH8a/E8VFRuZ4Q
	oCG9SPRCOcfQ+vjb4jdIFllEk11IGHBpBSVTqlG06RnlonqkXZZVrQefIJNF4TLW0GVcUQ9lSoGRH
	FK3MfK8yAEEq8AjrYR8chpbl04OT/gl+cWZoE9YUyqRa99DrXHAajEVy9Wqo1nibf5OrCs9tO6BdH
	myCk2AZC3oNK/mfzA9694tbK9x8x2BwXiAR4opE708wfohUlFkxD/If32oqu8p20QyW/jvzj2VKz6
	b4jCnicJj62Y3Z9ScqY5QU9J+BkoATCxpiLwW/D3NRVR5x4IqhBU2qiiNemSjP8Zbn6FdeTyE/gVj
	REAkvd8OtUjB6UOHiQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkatL-0002h5-3A; Sun, 14 Jun 2020 22:14:15 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkatE-0002gD-DF
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 22:14:10 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MxV8b-1j0d2j03mj-00xqPw for <openwrt-devel@lists.openwrt.org>; Mon, 15
 Jun 2020 00:14:04 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jun 2020 00:13:00 +0200
Message-Id: <20200614221300.9518-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:JL9LROqk3O0PbPYdlIx+/cTVC0s55CMsf/Gi8dwxKgOlAXHIyVi
 lDEq6XYVy08VLAGgu0b4Wr0EwJfROlIqe18MKJDdm/zmp1kA6ALy83wdgtb+qLGR3NZ/b44
 jC8pPDHfCuo41N5/sv6gKtS1cgzEVwCfXZO4bV4Gb+e7IiSvJgk05z0s3Ohg1BCOWsQpIWC
 Cp68Nj8gwzDgXbRAIkSkw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rjMY3w2l5/g=:2D2unUV3rSN0lsA2NCCAtB
 00u2u3DxJeCAMguCtFVHmmNktE9JlYQ0nKF6dad6Wk55Y5xbTfctu4SkCLF+J2uQuU5IXVPEL
 ZMz1UWkv0z1Nb5YKHyt6Y4PdXPmxYrTycQckde9R1f2kO7ChM4HzEV2LXDcN8p1zJS8P/K6X2
 B7yFZCeTK7NZqGKLcfA9CAtcrWix0/m9rcwOn8WXjXw72IiZpbqt+ermIUOfKw0xE85I5Sgnd
 TY2PggtODBhJ5bkNuePLT7PLj0ouI+MAdgFX3kKqzEK2LcAPUVrW8U+QJ3RK+GqMwiEHNRVdW
 grCyzcttSGb5nE3l19NaE3II4LHen5RVhc1GHwrYTlU9FI3LrPzIg7o7e9ajTdqVdbFbf9AZf
 Xm9EpC4fUL+RhpWn5M6u8ZHTZ6kgCAtFvwsMENU7ECHDhGgl0o+GkEU79xX7+E2LFdrg6mS6/
 Owo7OHYivGZYcF+wKj9ZLpcjzKbkbJj7ZCl4oyz9zOEj5rTIse91AZ6NzKJQ1JNeOjbR/yEEm
 xNfa3xQ/vlQ16hSxjD4qFNIv4yVZiyI3CbmCPQHaWKqKSUbG03GARrjoydhdr0skqTFfYs7/A
 9eEqFQEkNu9sZhP0hEbZQn9y8VSrZiJuajTUmWG6kXKeuP2LTFRpd/GSYzndwadnUaRXw/vg3
 0hwav4H/O0AxHflb033SU59BQTh1uCTGcjSWT2M1Zq1M+MPlhg6D3gR+tvj4u6h7VV0ycnJJC
 4u7PARrThfM0xCPYbCoxnTKKm+1RFPS3HEPRLVdaAnHU+c51/AEQ0rZ+yYfXVqkOcyp3/laLA
 KzjMiC8LFe8KEvomBRkiJOSKJgA5DEOGlkdx8sNK2pM9JRnUUd3LBdzaItkq0uskdxHokVz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_151408_738998_5A903C94 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFT PATCH v2] kirkwood: use real model names for
 Linksys devices
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

This replaces the internal device names "Audi" and "Viper" with the
real model names, which a user would look for. This makes the
Linksys devices on this target consistent with the names recently
changed for mvebu based on the same idea.

After the recent switch from swconfig to DSA, this also drops the
SUPPORTED_DEVICES for these devices. This might serve as indirect
warning to not just upgrade into a broken config.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---

Please run-test this patch on the devices if possible, I don't have them.

---
 package/boot/uboot-envtools/files/kirkwood           |  4 ++--
 target/linux/kirkwood/base-files/etc/board.d/01_leds |  2 +-
 .../linux/kirkwood/base-files/etc/board.d/02_network |  4 ++--
 .../linux/kirkwood/base-files/etc/init.d/bootcount   |  4 ++--
 .../kirkwood/base-files/lib/upgrade/platform.sh      |  4 ++--
 .../arch/arm/boot/dts/kirkwood-linksys-audi.dts      |  2 +-
 target/linux/kirkwood/image/Makefile                 | 12 ++++++------
 target/linux/kirkwood/patches-5.4/105-ea4500.patch   |  9 +++++++++
 8 files changed, 25 insertions(+), 16 deletions(-)

diff --git a/package/boot/uboot-envtools/files/kirkwood b/package/boot/uboot-envtools/files/kirkwood
index b5f7ddccb7..10dde84c8c 100644
--- a/package/boot/uboot-envtools/files/kirkwood
+++ b/package/boot/uboot-envtools/files/kirkwood
@@ -16,14 +16,14 @@ case "$board" in
 cloudengines,pogoe02|\
 cloudengines,pogoplugv4|\
 iom,ix2-200|\
-linksys,viper|\
+linksys,ea4500|\
 raidsonic,ib-nas62x0|\
 seagate,dockstar|\
 zyxel,nsa310b|\
 zyxel,nsa325)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x20000"
 	;;
-linksys,audi)
+linksys,ea3500)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x4000" "0x4000"
 	;;
 esac
diff --git a/target/linux/kirkwood/base-files/etc/board.d/01_leds b/target/linux/kirkwood/base-files/etc/board.d/01_leds
index bbe689bbb5..7186663ed1 100755
--- a/target/linux/kirkwood/base-files/etc/board.d/01_leds
+++ b/target/linux/kirkwood/base-files/etc/board.d/01_leds
@@ -13,7 +13,7 @@ case "$board" in
 "iom,ix2-200")
 	ucidef_set_led_timer "health" "health" "status:white:rebuild_led" "200" "800"
 	;;
-"linksys,viper")
+"linksys,ea4500")
 	ucidef_set_led_default "pulse" "pulse" "viper:white:pulse" "1"
 	;;
 esac
diff --git a/target/linux/kirkwood/base-files/etc/board.d/02_network b/target/linux/kirkwood/base-files/etc/board.d/02_network
index df01b0bb1b..3c844f2819 100755
--- a/target/linux/kirkwood/base-files/etc/board.d/02_network
+++ b/target/linux/kirkwood/base-files/etc/board.d/02_network
@@ -24,8 +24,8 @@ case "$board" in
 "seagate,goflexnet")
 	ucidef_set_interface_lan "eth0" "dhcp"
 	;;
-"linksys,audi"|\
-"linksys,viper")
+"linksys,ea3500"|\
+"linksys,ea4500")
 	ucidef_set_interfaces_lan_wan "ethernet1 ethernet2 ethernet3 ethernet4" "internet"
 	ucidef_set_interface_macaddr "wan" $( mtd_get_mac_ascii u_env eth1addr )
 	;;
diff --git a/target/linux/kirkwood/base-files/etc/init.d/bootcount b/target/linux/kirkwood/base-files/etc/init.d/bootcount
index 478f3d0134..b1e5152326 100755
--- a/target/linux/kirkwood/base-files/etc/init.d/bootcount
+++ b/target/linux/kirkwood/base-files/etc/init.d/bootcount
@@ -4,8 +4,8 @@ START=99
 
 boot() {
 	case $(board_name) in
-	linksys,audi|\
-	linksys,viper)
+	linksys,ea3500|\
+	linksys,ea4500)
 		mtd resetbc s_env || true
 		;;
 	esac
diff --git a/target/linux/kirkwood/base-files/lib/upgrade/platform.sh b/target/linux/kirkwood/base-files/lib/upgrade/platform.sh
index 6d63a0a4b7..4629395347 100644
--- a/target/linux/kirkwood/base-files/lib/upgrade/platform.sh
+++ b/target/linux/kirkwood/base-files/lib/upgrade/platform.sh
@@ -11,8 +11,8 @@ platform_do_upgrade() {
 	local board="$(board_name)"
 
 	case "$board" in
-	"linksys,audi"|\
-	"linksys,viper")
+	linksys,ea3500|\
+	linksys,ea4500)
 		platform_do_upgrade_linksys "$1"
 		;;
 	*)
diff --git a/target/linux/kirkwood/files-5.4/arch/arm/boot/dts/kirkwood-linksys-audi.dts b/target/linux/kirkwood/files-5.4/arch/arm/boot/dts/kirkwood-linksys-audi.dts
index 90250fefc8..5952f57a4a 100644
--- a/target/linux/kirkwood/files-5.4/arch/arm/boot/dts/kirkwood-linksys-audi.dts
+++ b/target/linux/kirkwood/files-5.4/arch/arm/boot/dts/kirkwood-linksys-audi.dts
@@ -16,7 +16,7 @@
 
 / {
 	model = "Linksys Audi (EA3500)";
-	compatible = "linksys,audi", "marvell,kirkwood-88f6282", "marvell,kirkwood";
+	compatible = "linksys,ea3500", "linksys,audi", "marvell,kirkwood-88f6282", "marvell,kirkwood";
 
 	memory@0 {
 		device_type = "memory";
diff --git a/target/linux/kirkwood/image/Makefile b/target/linux/kirkwood/image/Makefile
index b8cc92760d..f67a26f12e 100644
--- a/target/linux/kirkwood/image/Makefile
+++ b/target/linux/kirkwood/image/Makefile
@@ -80,7 +80,7 @@ define Device/iom_ix2-200
 endef
 TARGET_DEVICES += iom_ix2-200
 
-define Device/linksys_audi
+define Device/linksys_ea3500
   DEVICE_VENDOR := Linksys
   DEVICE_MODEL := EA3500 (Audi)
   DEVICE_PACKAGES := kmod-mwl8k wpad-basic kmod-gpio-button-hotplug
@@ -91,11 +91,11 @@ define Device/linksys_audi
   KERNEL_IN_UBI :=
   UBINIZE_OPTS := -E 5
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-  BOARD_NAME := linksys-audi
+  DEVICE_DTS := kirkwood-linksys-audi
 endef
-TARGET_DEVICES += linksys_audi
+TARGET_DEVICES += linksys_ea3500
 
-define Device/linksys_viper
+define Device/linksys_ea4500
   DEVICE_VENDOR := Linksys
   DEVICE_MODEL := E4200v2 / EA4500 (Viper)
   DEVICE_PACKAGES := kmod-mwl8k wpad-basic kmod-gpio-button-hotplug
@@ -103,9 +103,9 @@ define Device/linksys_viper
   KERNEL_IN_UBI :=
   UBINIZE_OPTS := -E 5
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-  BOARD_NAME := linksys-viper
+  DEVICE_DTS := kirkwood-linksys-viper
 endef
-TARGET_DEVICES += linksys_viper
+TARGET_DEVICES += linksys_ea4500
 
 define Device/raidsonic_ib-nas62x0
   DEVICE_VENDOR := RaidSonic
diff --git a/target/linux/kirkwood/patches-5.4/105-ea4500.patch b/target/linux/kirkwood/patches-5.4/105-ea4500.patch
index 0d97ad14a2..c2bbe9d240 100644
--- a/target/linux/kirkwood/patches-5.4/105-ea4500.patch
+++ b/target/linux/kirkwood/patches-5.4/105-ea4500.patch
@@ -1,5 +1,14 @@
 --- a/arch/arm/boot/dts/kirkwood-linksys-viper.dts
 +++ b/arch/arm/boot/dts/kirkwood-linksys-viper.dts
+@@ -16,7 +16,7 @@
+ 
+ / {
+ 	model = "Linksys Viper (E4200v2 / EA4500)";
+-	compatible = "linksys,viper", "marvell,kirkwood-88f6282", "marvell,kirkwood";
++	compatible = "linksys,ea4500", "linksys,viper", "marvell,kirkwood-88f6282", "marvell,kirkwood";
+ 
+ 	memory {
+ 		device_type = "memory";
 @@ -24,6 +24,10 @@
  	};
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
