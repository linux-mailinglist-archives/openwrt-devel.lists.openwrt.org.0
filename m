Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB5B1F850C
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jun 2020 22:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jEJjrwE+bX0DvrhJ4ToAFDFnHUtu/E4XaS7jzFd1sg0=; b=qbFpmDJ+keWp6b
	NVQABPRdqUjkZoXHk2Z8vwyavWlwQbD37Rj2X4gCoy9wiXtJPZYVE4NuUcXUQlQ1xNGDbX33bT9wO
	d9N+hcpgPyceLipnsarT7rRYF700iV9QY0FzR92CD1/jKD6nKhvCcjq7khZaiWfUB6AN1yBA67qDr
	rRYCr5pnZybi/qhKo2hTKKa/VkzGXTYFm8IYMU8cScMwWEXs8WvqdZAWofracxBmZf/4vxsn/62cU
	Yt0bhvm7PB6xewMZN4Cu66CYENpY8PDGjRZSlBHWsqEFnJYHWK/tn/h58l0pW3pNAnMr8seadLIWU
	LpxWal14CJiEE2D/su4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkCTO-0000xM-8M; Sat, 13 Jun 2020 20:09:50 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkCTF-0000x0-WB
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jun 2020 20:09:45 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N3KDM-1ilK7u0NEY-010OuT for <openwrt-devel@lists.openwrt.org>; Sat, 13
 Jun 2020 22:09:36 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 13 Jun 2020 22:08:52 +0200
Message-Id: <20200613200852.28760-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:279+AAAM602l4nL5XavloRah2U45ikgYC2r7zqKXFLYO2FvyPAc
 BtLlto1oDiBzoqvkM6OSAt5nYzrvlVo3USPN3yUm2Tp4s2Z8knrAkj56jFxGouCTCwmwPKI
 DA8I6aUFC2dsGPPpc51GI/L77FWfgL+bnR1zJKx5zzs+4QVmOWBSvXQTDWVAoZhOned6898
 THQJ+V7TTr33ipiGfUlcw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GPdKJZYSwDc=:IJfQ3rAMDjdjUpE8E1QiK0
 XIoZPygdIH+Gqi9lAZOccRoStOk75ilmUqtfUQHIK/qTLE2llRuRbLUhWrizf+dgn+5FBkRpb
 VzRIbWbwbZlG2K9Gp/fqNbfdcTXDagbSTGGbacDGeISf9bo2LQzmBr/BzPqgw1GB5yHEoI2dM
 oNJP/gytb3ytvlMDhN9rpDe6pVTvDkYOj8b0PmORgB7lrh05bUpUjL8qQ2QaHJUq8+KfyOw0l
 sWo7Zooz4p95W03boBSyDhP4RkENe6JuFbOMLyk4+ksNvu0exCUpoH5E4/JKeVoj9YQ5hvPFZ
 6DuzaCZuMvokO7WtC5XLiuTidq9/q07RxPfHGrnEmpLGPkDa2BIJJnLknPKlb+8FaYD83GcCa
 CkY+jS4Pe6/mQRRGbejCWREjbAeJpmEAFVnHY1qBtfvIlrSjtfxPtv99zyDebGEJAZEKl8LcY
 Jed2wBwtTyWdH3zB6pDY50tBiAyhFFjdMy1c1/viXUVLXyL8MvCst0UvvWpo19Iwt59uWFTNK
 nrPuUb1ocBKi4kGqJBWeS5p96WsEWecAr1jWkrHrhvHc5THaojGG7WzCww+8bktB91DCxwyeB
 6SQ+Gj9JT/N1FYBn3goIfzDEhAkCkADdgayLRE5N82yLUyiQqPsdyS82KCaeJSFOD2+TTUgHJ
 1/rcuMt+EF/UvfUZOaQSw+KHFPNyXgJvW8zXxyLixdV4quxEjg2P7ewkAaZi+uqWekdvshggi
 vQozyeLWl3Ioa9/Fhq1Ak6Xk3/NqEMb9bPTgnMfd8Xu3CV33rYBljMVHOmg53iPYlZ+m8Vmsi
 zdkwvbcp+K6MTAXj0L8RQriDYIMdwKF+KgTjf37o7Oir7UKbFFyyici6KCmTmHCqWa8Ft+O
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_130942_330431_57A3F7B0 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFC PATCH] kirkwood: use real model names for
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

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---

While marked as RFC, this patch should be fully ready for merge already.

---
 package/boot/uboot-envtools/files/kirkwood             |  4 ++--
 target/linux/kirkwood/base-files/etc/board.d/01_leds   |  2 +-
 .../linux/kirkwood/base-files/etc/board.d/02_network   |  4 ++--
 target/linux/kirkwood/base-files/etc/init.d/bootcount  |  4 ++--
 .../linux/kirkwood/base-files/lib/upgrade/platform.sh  |  4 ++--
 .../arch/arm/boot/dts/kirkwood-linksys-audi.dts        |  2 +-
 target/linux/kirkwood/image/Makefile                   | 10 ++++++----
 target/linux/kirkwood/patches-5.4/105-ea4500.patch     |  9 +++++++++
 8 files changed, 25 insertions(+), 14 deletions(-)

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
index bba845eae5..7e589e9bfc 100755
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
 "zyxel,nsa310b")
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
index 552ee44ee4..c56415bf1c 100644
--- a/target/linux/kirkwood/image/Makefile
+++ b/target/linux/kirkwood/image/Makefile
@@ -78,7 +78,7 @@ define Device/iom_ix2-200
 endef
 TARGET_DEVICES += iom_ix2-200
 
-define Device/linksys_audi
+define Device/linksys_ea3500
   DEVICE_VENDOR := Linksys
   DEVICE_MODEL := EA3500 (Audi)
   DEVICE_PACKAGES := kmod-mwl8k wpad-basic kmod-gpio-button-hotplug
@@ -90,11 +90,12 @@ define Device/linksys_audi
   UBINIZE_OPTS := -E 5
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
   BOARD_NAME := linksys-audi
+  SUPPORTED_DEVICES += linksys,audi
   DEFAULT := n
 endef
-TARGET_DEVICES += linksys_audi
+TARGET_DEVICES += linksys_ea3500
 
-define Device/linksys_viper
+define Device/linksys_ea4500
   DEVICE_VENDOR := Linksys
   DEVICE_MODEL := E4200v2 / EA4500 (Viper)
   DEVICE_PACKAGES := kmod-mwl8k wpad-basic kmod-gpio-button-hotplug
@@ -103,8 +104,9 @@ define Device/linksys_viper
   UBINIZE_OPTS := -E 5
   IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
   BOARD_NAME := linksys-viper
+  SUPPORTED_DEVICES += linksys,viper
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
