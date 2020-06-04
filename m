Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBFD1EEE1C
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 01:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kxd4AUiE35vKrPJepbsMPV5KHJ8cv3QougO5L883Tlc=; b=RLsp0vjylR4l0s
	Xmivy4RRCG3X6/0fUVxXlTTLLHc3crqaWiW/Sv8smJOYnZFRZqS/0meYY1CdteNGGL4z9R3WtEAWQ
	06RrS7c2megnroGMadywD+zNLO6WRkaxxHgXi1AZjSyOW+WUNC3kC2LnBP9iurlMdE2W0+c0KjJ3T
	64rjweOy1gYpFi3NgxClg4QyNaRM8oHV9rCsO/okHJCvxyNUaE1nEWfmhYtTgFLRL1l/nCVtM+w/b
	hWO1E5ebvqqO7EDAJYLjul7WBk99R+NtXN4GZOdCd1E2h94VogJBjWv13O8v7PAztwlTsT1MjcIrD
	MYE26LGDexijirr4obVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgywh-0006m8-70; Thu, 04 Jun 2020 23:06:47 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgywZ-0006lV-Cw
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 23:06:42 +0000
Received: from buildfff.adridolf.com ([188.192.133.27]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M8yso-1jeCyv0chK-0069y5; Fri, 05 Jun 2020 01:06:31 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  5 Jun 2020 01:05:45 +0200
Message-Id: <20200604230545.62558-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:/o8IPyyPIIAuR6veaH4jS7k6oggD6k9xOKwV0s5sQ1+0fqeN3Tb
 L1J32h30vZj1wjDfvfB4D01Yc8WJoNM4lYG85oaMkFsj1RwyVM8q2m2ryeT+X8rpAPXZqAL
 V/oouSiS5BD9c6fH/24THNjQHqCpjQJa/5EKvmwhjtoEuRrLdPGSf3qoBJJQYOP8zbGwRd9
 1PIzr5xgpx+HDn6hm6eyg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZocuHROg5pU=:uKcnzJPS2MIR/ngvO7JoRM
 DLKCjutMJrsKg4XPq6pfqFynA1r0P8qbh5e8LolDSktJSUZ6Jv3LIoZaZ6A+ZpFYHqp9nASV0
 R2WkMGecgDDcF18PQDyQcfsJfLfs3bltfhJt1cLrd593YhwkL6PQwpsqnFD3lVU/D2QKAZe/M
 jr77dI42CqxXoRLztAey3ZUZ4R/drNaCGdNc7l3IOu6GSvG88Z416l8FtCtcDmIegcYUeh+yF
 WNVgERCtfb7CXImfX04laJkhokWtvbsb8Jep0LGNolspu2bc+ODUfsF/dXk6okZwHnKgv9bFq
 FytAm1i5jrTLNxqVwER8xlHPjdUgKmY0vXYTxa5YLOwRyEOWkLPEBdsiwwt6L1GOMVX0GC2Wc
 IST2YRpqinTa+0nlRuAFP8oo9ZdeD5i9yhDsZP7YKKvlO12rvU3osn0Rtz94xq4piHf5jLYBs
 HMnRaa7uECEAV5WQzwFGMGGUlTpcB/pKZhX7A6NGwtyPic5Gv9RMVP0+8NioApL2L7C5x3egz
 EJIdb3kKBTqv/reHmR2YluRsAAR92eofmannX91DUJqyIuSoY6ugx9LZZMJHxwXdwQ7QfKxcF
 TyPD0QlTGFGcVZsjdkycvNKmKENxrAVvEFNxDRpt5DBVkYGeX431gpOwvXnX8Tsgyl/DI5qyF
 ALnqPWurVWd96bBf+WBfR9IHetZ9XxSFvP+a+n+N6WWzL6DdZFFEWo1oTgzptSOyeXI8j5Zhq
 yBJCAdfOrmdWhYfErJcv9COjmfIUABJxmUeY4I1rXtwoogs8Rd5hQSnsqSy9VgX1r7lfuT/Ef
 aDLAtNmTh/Iicji3CzE42oMjmz3WV9/L9xd0kHKA4jEQ8WoT/KDu8CUS5uVi0RxkVAxhghi
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_160639_875737_F200F7F4 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] mvebu: rename Linksys devices based on
 their common names
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

From: Paul Spooren <mail@aparcar.org>

The Linksys devices in mvebu target feature a mixed naming,
where parts are based on the official product name (device
node, image; e.g. WRT3200ACM) and parts are based on the
internal code name (DTS file name, compatible, LED labels;
e.g. rango). This inconsistent naming has been perceived
as quite confusing.

A recent attempt by Paul Spooren to harmonize this naming
in kernel has been declined there. However, for us it still
makes sense to apply at least a part of these changes
locally.

Primarily, this patch changes the compatible in DTS and thus
the board name used in various scripts to have them in line
with the device, model and image names. Due to the recent
switch from swconfig to DSA, this allows us to drop
SUPPORTED_DEVICES and thus prevent seamless upgrade between
these incompatible setups.

However, this does not include the LED label rename from
Paul's initial patch: I don't think it's worth keeping the
enormous diff locally for this case, as we can implement
this much easier in 01_leds if we have to live with the
inconsistency anyway.

Signed-off-by: Paul Spooren <mail@aparcar.org>
[rebase, extend to all devices, drop DT LED changes]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

I plan to apply this very soon because of the recent DSA change
(so, SUPPORTED_DEVICES is dropped effectively).
---
 package/boot/uboot-envtools/files/mvebu       | 12 ++--
 .../cortexa9/base-files/etc/board.d/01_leds   | 35 +++++++---
 .../base-files/etc/board.d/02_network         | 24 +++----
 .../cortexa9/base-files/etc/init.d/bootcount  | 12 ++--
 .../base-files/etc/uci-defaults/03_wireless   |  8 ++-
 .../base-files/etc/uci-defaults/04_mambafan   |  2 +-
 .../base-files/lib/preinit/81_linksys_syscfg  |  7 +-
 .../base-files/lib/upgrade/platform.sh        | 24 +++----
 .../arm/boot/dts/armada-385-linksys-venom.dts |  4 +-
 .../arm/boot/dts/armada-385-linksys-venom.dts |  4 +-
 target/linux/mvebu/image/cortexa9.mk          | 14 ++--
 ...5-linksys_hardcode_nand_ecc_settings.patch |  2 +-
 ...-armada-xp-linksys-mamba-broken-idle.patch |  2 +-
 .../231-armada-xp-linksys-mamba-wan.patch     |  4 +-
 .../241-linksys-use-eth0-as-cpu-port.patch    |  6 +-
 .../250-adjust-compatible-for-linksys.patch   | 68 +++++++++++++++++++
 ...rmada388-clearfog-document-MPP-usage.patch |  2 +-
 ...5-linksys_hardcode_nand_ecc_settings.patch |  2 +-
 ...-armada-xp-linksys-mamba-broken-idle.patch |  2 +-
 .../231-armada-xp-linksys-mamba-wan.patch     |  4 +-
 .../241-linksys-use-eth0-as-cpu-port.patch    |  6 +-
 .../250-adjust-compatible-for-linksys.patch   | 68 +++++++++++++++++++
 22 files changed, 229 insertions(+), 83 deletions(-)
 create mode 100644 target/linux/mvebu/patches-4.19/250-adjust-compatible-for-linksys.patch
 create mode 100644 target/linux/mvebu/patches-5.4/250-adjust-compatible-for-linksys.patch

diff --git a/package/boot/uboot-envtools/files/mvebu b/package/boot/uboot-envtools/files/mvebu
index 10f31b05a1..72e2df5d19 100644
--- a/package/boot/uboot-envtools/files/mvebu
+++ b/package/boot/uboot-envtools/files/mvebu
@@ -27,16 +27,16 @@ globalscale,espressobin-v7-emmc|\
 marvell,armada8040-mcbin)
 	ubootenv_add_uci_config "/dev/mtd0" "0x3f0000" "0x10000" "0x10000" "1"
 	;;
-linksys,caiman|\
-linksys,cobra|\
-linksys,shelby)
+linksys,wrt1200ac|\
+linksys,wrt1900ac-v2|\
+linksys,wrt1900acs)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x40000"
 	;;
-linksys,mamba)
+linksys,wrt1900ac-v1)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
 	;;
-linksys,rango|\
-linksys,venom)
+linksys,wrt3200acm|\
+linksys,wrt32x)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x20000"
 	;;
 methode,udpu)
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
index 450bc1f32a..c62de013d4 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
@@ -12,22 +12,37 @@ board=$(board_name)
 boardname="${board##*,}"
 
 case "$board" in
-linksys,caiman|\
-linksys,cobra|\
-linksys,rango|\
-linksys,shelby)
-	ucidef_set_led_netdev "wan" "WAN" "pca963x:$boardname:white:wan" "wan"
-	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:$boardname:white:usb2" "usb1-port1"
-	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:$boardname:white:usb3_1" "usb2-port1" "usb3-port1"
-	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:$boardname:white:usb3_2" "usb3-port1"
+linksys,wrt1200ac)
+	ucidef_set_led_netdev "wan" "WAN" "pca963x:caiman:white:wan" "wan"
+	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:caiman:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:caiman:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:caiman:white:usb3_2" "usb3-port1"
 	;;
-linksys,mamba)
+linksys,wrt1900ac-v1)
 	ucidef_set_led_netdev "wan" "WAN" "mamba:white:wan" "wan"
 	ucidef_set_led_usbport "usb1" "USB 1" "mamba:white:usb2" "usb1-port1"
 	ucidef_set_led_usbport "usb2" "USB 2" "mamba:white:usb3_1" "usb2-port1" "usb3-port1"
 	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "mamba:white:usb3_2" "usb3-port2"
 	;;
-linksys,venom)
+linksys,wrt1900ac-v2)
+	ucidef_set_led_netdev "wan" "WAN" "pca963x:cobra:white:wan" "wan"
+	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:cobra:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:cobra:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:cobra:white:usb3_2" "usb3-port1"
+	;;
+linksys,wrt1900acs)
+	ucidef_set_led_netdev "wan" "WAN" "pca963x:shelby:white:wan" "wan"
+	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:shelby:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:shelby:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:shelby:white:usb3_2" "usb3-port1"
+	;;
+linksys,wrt3200acm)
+	ucidef_set_led_netdev "wan" "WAN" "pca963x:rango:white:wan" "wan"
+	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:rango:white:usb2" "usb1-port1"
+	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:rango:white:usb3_1" "usb2-port1" "usb3-port1"
+	ucidef_set_led_usbport "usb2_ss" "USB 2 SS" "pca963x:rango:white:usb3_2" "usb3-port1"
+	;;
+linksys,wrt32x)
 	ucidef_set_led_netdev "wan" "WAN" "pca963x:venom:blue:wan" "wan"
 	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:venom:blue:usb2" "usb1-port1"
 	ucidef_set_led_usbport "usb2" "USB 2" "pca963x:venom:blue:usb3_1" "usb2-port1" "usb3-port1"
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
index 89ccedae3f..44188c5fa7 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
@@ -16,12 +16,12 @@ mvebu_setup_interfaces()
 	cznic,turris-omnia)
 		ucidef_set_interfaces_lan_wan "lan0 lan1 lan2 lan3 lan4" "eth2"
 		;;
-	linksys,caiman|\
-	linksys,cobra|\
-	linksys,mamba|\
-	linksys,rango|\
-	linksys,shelby|\
-	linksys,venom)
+	linksys,wrt1200ac|\
+	linksys,wrt1900ac-v1|\
+	linksys,wrt1900ac-v2|\
+	linksys,wrt1900acs|\
+	linksys,wrt3200acm|\
+	linksys,wrt32x)
 		ucidef_set_interfaces_lan_wan "lan1 lan2 lan3 lan4" "wan"
 		;;
 	marvell,a385-db-ap)
@@ -60,15 +60,15 @@ mvebu_setup_macs()
 	buffalo,ls421de)
 		lan_mac=$(mtd_get_mac_ascii u-boot-env eth1addr)
 		;;
-	linksys,caiman|\
-	linksys,cobra|\
-	linksys,rango|\
-	linksys,shelby|\
-	linksys,venom)
+	linksys,wrt1200ac|\
+	linksys,wrt1900ac-v2|\
+	linksys,wrt1900acs|\
+	linksys,wrt3200acm|\
+	linksys,wrt32x)
 		label_mac=$(mtd_get_mac_ascii devinfo hw_mac_addr)
 		wan_mac=$(macaddr_setbit_la $label_mac)
 		;;
-	linksys,mamba)
+	linksys,wrt1900ac-v1)
 		label_mac=$(mtd_get_mac_ascii devinfo hw_mac_addr)
 		lan_mac=$label_mac
 		wan_mac=$label_mac
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount b/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
index dd2266bdc8..f1bfb4a001 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
+++ b/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
@@ -4,12 +4,12 @@ START=99
 
 boot() {
 	case $(board_name) in
-	linksys,caiman |\
-	linksys,cobra |\
-	linksys,mamba |\
-	linksys,rango |\
-	linksys,shelby |\
-	linksys,venom)
+	linksys,wrt1200ac|\
+	linksys,wrt1900ac-v1|\
+	linksys,wrt1900ac-v2|\
+	linksys,wrt1900acs|\
+	linksys,wrt3200acm|\
+	linksys,wrt32x)
 		mtd resetbc s_env || true
 		;;
 	esac
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
index 3c345ff148..79c74626f5 100644
--- a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
+++ b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/03_wireless
@@ -11,7 +11,11 @@
 board=$(board_name)
 
 case "$board" in
-linksys,caiman|linksys,cobra|linksys,mamba|linksys,shelby|linksys,venom)
+linksys,wrt1200ac|\
+linksys,wrt1900ac-v1|\
+linksys,wrt1900ac-v2|\
+linksys,wrt1900acs|\
+linksys,wrt32x)
 	SKU=$(strings /dev/mtd3|sed -ne 's/^cert_region=//p')
 	WIFIMAC2G=$(macaddr_add $(cat /sys/class/net/eth0/address) +1)
 	WIFIMAC5G=$(macaddr_add $WIFIMAC2G +1)
@@ -34,7 +38,7 @@ linksys,caiman|linksys,cobra|linksys,mamba|linksys,shelby|linksys,venom)
 	esac
 
 	case "$board" in
-		linksys,mamba)
+		linksys,wrt1900ac-v1)
 			WIFIMAC0=$WIFIMAC2G
 			WIFIMAC1=$WIFIMAC5G
 		;;
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
index ec25aedad6..29c447d840 100644
--- a/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
+++ b/target/linux/mvebu/cortexa9/base-files/etc/uci-defaults/04_mambafan
@@ -8,7 +8,7 @@
 board=$(board_name)
 
 case "$board" in
-linksys,mamba)
+linksys,wrt1900ac-v1)
 	# Set fan script execution in crontab
 	grep -s -q fan_ctrl.sh /etc/crontabs/root && exit 0
 
diff --git a/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg b/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
index 83448e5ace..6ebd727556 100644
--- a/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
+++ b/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
@@ -8,7 +8,12 @@ preinit_mount_syscfg() {
 	. /lib/upgrade/common.sh
 
 	case $(board_name) in
-	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
+	linksys,wrt1200ac|\
+	linksys,wrt1900ac-v1|\
+	linksys,wrt1900ac-v2|\
+	linksys,wrt1900acs|\
+	linksys,wrt3200acm|\
+	linksys,wrt32x)
 		needs_recovery=0
 		syscfg_part=$(grep syscfg /proc/mtd |cut -c4)
 		ubiattach -m $syscfg_part || needs_recovery=1
diff --git a/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh b/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
index 63042b1535..6dccb491ba 100755
--- a/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
+++ b/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
@@ -30,12 +30,12 @@ platform_do_upgrade() {
 	solidrun,clearfog-pro-a1)
 		platform_do_upgrade_sdcard "$1"
 		;;
-	linksys,caiman|\
-	linksys,cobra|\
-	linksys,mamba|\
-	linksys,rango|\
-	linksys,shelby|\
-	linksys,venom)
+	linksys,wrt1200ac|\
+	linksys,wrt1900ac-v1|\
+	linksys,wrt1900ac-v2|\
+	linksys,wrt1900acs|\
+	linksys,wrt3200acm|\
+	linksys,wrt32x)
 		platform_do_upgrade_linksys "$1"
 		;;
 	*)
@@ -50,12 +50,12 @@ platform_copy_config() {
 	solidrun,clearfog-pro-a1)
 		platform_copy_config_sdcard
 		;;
-	linksys,caiman|\
-	linksys,cobra|\
-	linksys,mamba|\
-	linksys,rango|\
-	linksys,shelby|\
-	linksys,venom)
+	linksys,wrt1200ac|\
+	linksys,wrt1900ac-v1|\
+	linksys,wrt1900ac-v2|\
+	linksys,wrt1900acs|\
+	linksys,wrt3200acm|\
+	linksys,wrt32x)
 		platform_copy_config_linksys
 		;;
 	esac
diff --git a/target/linux/mvebu/files-4.19/arch/arm/boot/dts/armada-385-linksys-venom.dts b/target/linux/mvebu/files-4.19/arch/arm/boot/dts/armada-385-linksys-venom.dts
index c152c14c6b..de81600a80 100644
--- a/target/linux/mvebu/files-4.19/arch/arm/boot/dts/armada-385-linksys-venom.dts
+++ b/target/linux/mvebu/files-4.19/arch/arm/boot/dts/armada-385-linksys-venom.dts
@@ -44,8 +44,8 @@
 
 / {
 	model = "Linksys WRT32X";
-	compatible = "linksys,venom", "linksys,armada385", "marvell,armada385",
-		     "marvell,armada380";
+	compatible = "linksys,wrt32x", "linksys,venom", "linksys,armada385",
+		     "marvell,armada385", "marvell,armada380";
 
 	chosen {
 		bootargs = "console=ttyS0,115200";
diff --git a/target/linux/mvebu/files-5.4/arch/arm/boot/dts/armada-385-linksys-venom.dts b/target/linux/mvebu/files-5.4/arch/arm/boot/dts/armada-385-linksys-venom.dts
index c152c14c6b..de81600a80 100644
--- a/target/linux/mvebu/files-5.4/arch/arm/boot/dts/armada-385-linksys-venom.dts
+++ b/target/linux/mvebu/files-5.4/arch/arm/boot/dts/armada-385-linksys-venom.dts
@@ -44,8 +44,8 @@
 
 / {
 	model = "Linksys WRT32X";
-	compatible = "linksys,venom", "linksys,armada385", "marvell,armada385",
-		     "marvell,armada380";
+	compatible = "linksys,wrt32x", "linksys,venom", "linksys,armada385",
+		     "marvell,armada385", "marvell,armada380";
 
 	chosen {
 		bootargs = "console=ttyS0,115200";
diff --git a/target/linux/mvebu/image/cortexa9.mk b/target/linux/mvebu/image/cortexa9.mk
index 4c7bbcd758..09f3d45e9e 100644
--- a/target/linux/mvebu/image/cortexa9.mk
+++ b/target/linux/mvebu/image/cortexa9.mk
@@ -65,7 +65,6 @@ define Device/linksys_wrt1200ac
   DEVICE_ALT0_MODEL := Caiman
   DEVICE_DTS := armada-385-linksys-caiman
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  SUPPORTED_DEVICES := armada-385-linksys-caiman linksys,caiman
 endef
 TARGET_DEVICES += linksys_wrt1200ac
 
@@ -80,11 +79,10 @@ define Device/linksys_wrt1900acs
   DEVICE_ALT1_MODEL := Shelby
   DEVICE_DTS := armada-385-linksys-shelby
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  SUPPORTED_DEVICES := armada-385-linksys-shelby linksys,shelby
 endef
 TARGET_DEVICES += linksys_wrt1900acs
 
-define Device/linksys_wrt1900ac
+define Device/linksys_wrt1900ac-v1
   $(call Device/linksys)
   DEVICE_MODEL := WRT1900AC
   DEVICE_VARIANT := v1
@@ -93,11 +91,10 @@ define Device/linksys_wrt1900ac
   DEVICE_DTS := armada-xp-linksys-mamba
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   KERNEL_SIZE := 3072k
-  SUPPORTED_DEVICES := armada-xp-linksys-mamba linksys,mamba
 endef
-TARGET_DEVICES += linksys_wrt1900ac
+TARGET_DEVICES += linksys_wrt1900ac-v1
 
-define Device/linksys_wrt1900acv2
+define Device/linksys_wrt1900ac-v2
   $(call Device/linksys)
   DEVICE_MODEL := WRT1900AC
   DEVICE_VARIANT := v2
@@ -105,9 +102,8 @@ define Device/linksys_wrt1900acv2
   DEVICE_ALT0_MODEL := Cobra
   DEVICE_DTS := armada-385-linksys-cobra
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
 endef
-TARGET_DEVICES += linksys_wrt1900acv2
+TARGET_DEVICES += linksys_wrt1900ac-v2
 
 define Device/linksys_wrt3200acm
   $(call Device/linksys)
@@ -116,7 +112,6 @@ define Device/linksys_wrt3200acm
   DEVICE_ALT0_MODEL := Rango
   DEVICE_DTS := armada-385-linksys-rango
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
-  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
 endef
 TARGET_DEVICES += linksys_wrt3200acm
 
@@ -129,7 +124,6 @@ define Device/linksys_wrt32x
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
   KERNEL_SIZE := 3072k
   KERNEL := kernel-bin | append-dtb
-  SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
 endef
 TARGET_DEVICES += linksys_wrt32x
 
diff --git a/target/linux/mvebu/patches-4.19/005-linksys_hardcode_nand_ecc_settings.patch b/target/linux/mvebu/patches-4.19/005-linksys_hardcode_nand_ecc_settings.patch
index dfe13bae7b..89a5e19803 100644
--- a/target/linux/mvebu/patches-4.19/005-linksys_hardcode_nand_ecc_settings.patch
+++ b/target/linux/mvebu/patches-4.19/005-linksys_hardcode_nand_ecc_settings.patch
@@ -6,7 +6,7 @@ Signed-off-by: Imre Kaloz <kaloz@openwrt.org>
 
 --- a/arch/arm/boot/dts/armada-385-linksys.dtsi
 +++ b/arch/arm/boot/dts/armada-385-linksys.dtsi
-@@ -160,6 +160,8 @@
+@@ -148,6 +148,8 @@
  		reg = <0>;
  		label = "pxa3xx_nand-0";
  		nand-rb = <0>;
diff --git a/target/linux/mvebu/patches-4.19/230-armada-xp-linksys-mamba-broken-idle.patch b/target/linux/mvebu/patches-4.19/230-armada-xp-linksys-mamba-broken-idle.patch
index 935c8fe093..6f36d09966 100644
--- a/target/linux/mvebu/patches-4.19/230-armada-xp-linksys-mamba-broken-idle.patch
+++ b/target/linux/mvebu/patches-4.19/230-armada-xp-linksys-mamba-broken-idle.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
 +++ b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
-@@ -543,3 +543,7 @@
+@@ -532,3 +532,7 @@
  		};
  	};
  };
diff --git a/target/linux/mvebu/patches-4.19/231-armada-xp-linksys-mamba-wan.patch b/target/linux/mvebu/patches-4.19/231-armada-xp-linksys-mamba-wan.patch
index 40e852b089..9404d55d37 100644
--- a/target/linux/mvebu/patches-4.19/231-armada-xp-linksys-mamba-wan.patch
+++ b/target/linux/mvebu/patches-4.19/231-armada-xp-linksys-mamba-wan.patch
@@ -1,8 +1,6 @@
-diff --git a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
-index 8480a16919a0..8cf3c9d5205b 100644
 --- a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
 +++ b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
-@@ -299,7 +299,7 @@
+@@ -248,7 +248,7 @@
  
  			port@4 {
  				reg = <4>;
diff --git a/target/linux/mvebu/patches-4.19/241-linksys-use-eth0-as-cpu-port.patch b/target/linux/mvebu/patches-4.19/241-linksys-use-eth0-as-cpu-port.patch
index c440530fc3..84d49a004b 100644
--- a/target/linux/mvebu/patches-4.19/241-linksys-use-eth0-as-cpu-port.patch
+++ b/target/linux/mvebu/patches-4.19/241-linksys-use-eth0-as-cpu-port.patch
@@ -1,8 +1,6 @@
-diff --git a/arch/arm/boot/dts/armada-385-linksys.dtsi b/arch/arm/boot/dts/armada-385-linksys.dtsi
-index 827e82be2201..b6aecf4cc5eb 100644
 --- a/arch/arm/boot/dts/armada-385-linksys.dtsi
 +++ b/arch/arm/boot/dts/armada-385-linksys.dtsi
-@@ -109,7 +109,7 @@
+@@ -116,7 +116,7 @@
  };
  
  &eth2 {
@@ -11,7 +9,7 @@ index 827e82be2201..b6aecf4cc5eb 100644
  	phy-mode = "sgmii";
  	buffer-manager = <&bm>;
  	bm,pool-long = <2>;
-@@ -191,10 +191,10 @@
+@@ -200,10 +200,10 @@
  				label = "wan";
  			};
  
diff --git a/target/linux/mvebu/patches-4.19/250-adjust-compatible-for-linksys.patch b/target/linux/mvebu/patches-4.19/250-adjust-compatible-for-linksys.patch
new file mode 100644
index 0000000000..a5d3e63810
--- /dev/null
+++ b/target/linux/mvebu/patches-4.19/250-adjust-compatible-for-linksys.patch
@@ -0,0 +1,68 @@
+--- a/arch/arm/boot/dts/armada-385-linksys-rango.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-rango.dts
+@@ -12,8 +12,8 @@
+ 
+ / {
+ 	model = "Linksys WRT3200ACM";
+-	compatible = "linksys,rango", "linksys,armada385", "marvell,armada385",
+-		     "marvell,armada380";
++	compatible = "linksys,wrt3200acm", "linksys,rango", "linksys,armada385",
++		     "marvell,armada385", "marvell,armada380";
+ };
+ 
+ &expander0 {
+--- a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
++++ b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
+@@ -22,9 +22,10 @@
+ #include "armada-xp-mv78230.dtsi"
+ 
+ / {
+-	model = "Linksys WRT1900AC";
+-	compatible = "linksys,mamba", "marvell,armadaxp-mv78230",
+-		     "marvell,armadaxp", "marvell,armada-370-xp";
++	model = "Linksys WRT1900AC v1";
++	compatible = "linksys,wrt1900ac-v1", "linksys,mamba",
++		     "marvell,armadaxp-mv78230", "marvell,armadaxp",
++		     "marvell,armada-370-xp";
+ 
+ 	aliases {
+ 		led-boot = &led_power;
+--- a/arch/arm/boot/dts/armada-385-linksys-cobra.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-cobra.dts
+@@ -9,8 +9,9 @@
+ #include "armada-385-linksys.dtsi"
+ 
+ / {
+-	model = "Linksys WRT1900ACv2";
+-	compatible = "linksys,cobra", "linksys,armada385", "marvell,armada385",
++	model = "Linksys WRT1900AC v2";
++	compatible = "linksys,wrt1900ac-v2", "linksys,cobra",
++		     "linksys,armada385", "marvell,armada385",
+ 		     "marvell,armada380";
+ };
+ 
+--- a/arch/arm/boot/dts/armada-385-linksys-caiman.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-caiman.dts
+@@ -10,8 +10,8 @@
+ 
+ / {
+ 	model = "Linksys WRT1200AC";
+-	compatible = "linksys,caiman", "linksys,armada385", "marvell,armada385",
+-		     "marvell,armada380";
++	compatible = "linksys,wrt1200ac", "linksys,caiman", "linksys,armada385",
++		     "marvell,armada385", "marvell,armada380";
+ };
+ 
+ &expander0 {
+--- a/arch/arm/boot/dts/armada-385-linksys-shelby.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-shelby.dts
+@@ -10,7 +10,8 @@
+ 
+ / {
+ 	model = "Linksys WRT1900ACS";
+-	compatible = "linksys,shelby", "linksys,armada385", "marvell,armada385",
++	compatible = "linksys,wrt1900acs", "linksys,shelby",
++		     "linksys,armada385", "marvell,armada385",
+ 		     "marvell,armada380";
+ };
+ 
diff --git a/target/linux/mvebu/patches-4.19/415-ARM-dts-armada388-clearfog-document-MPP-usage.patch b/target/linux/mvebu/patches-4.19/415-ARM-dts-armada388-clearfog-document-MPP-usage.patch
index d64bd8084e..b6890318f8 100644
--- a/target/linux/mvebu/patches-4.19/415-ARM-dts-armada388-clearfog-document-MPP-usage.patch
+++ b/target/linux/mvebu/patches-4.19/415-ARM-dts-armada388-clearfog-document-MPP-usage.patch
@@ -68,7 +68,7 @@ Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
 +*/
 --- a/arch/arm/boot/dts/armada-388-clearfog.dts
 +++ b/arch/arm/boot/dts/armada-388-clearfog.dts
-@@ -249,3 +249,53 @@
+@@ -236,3 +236,53 @@
  	 */
  	pinctrl-0 = <&spi1_pins &clearfog_spi1_cs_pins &mikro_spi_pins>;
  };
diff --git a/target/linux/mvebu/patches-5.4/005-linksys_hardcode_nand_ecc_settings.patch b/target/linux/mvebu/patches-5.4/005-linksys_hardcode_nand_ecc_settings.patch
index dfe13bae7b..89a5e19803 100644
--- a/target/linux/mvebu/patches-5.4/005-linksys_hardcode_nand_ecc_settings.patch
+++ b/target/linux/mvebu/patches-5.4/005-linksys_hardcode_nand_ecc_settings.patch
@@ -6,7 +6,7 @@ Signed-off-by: Imre Kaloz <kaloz@openwrt.org>
 
 --- a/arch/arm/boot/dts/armada-385-linksys.dtsi
 +++ b/arch/arm/boot/dts/armada-385-linksys.dtsi
-@@ -160,6 +160,8 @@
+@@ -148,6 +148,8 @@
  		reg = <0>;
  		label = "pxa3xx_nand-0";
  		nand-rb = <0>;
diff --git a/target/linux/mvebu/patches-5.4/230-armada-xp-linksys-mamba-broken-idle.patch b/target/linux/mvebu/patches-5.4/230-armada-xp-linksys-mamba-broken-idle.patch
index ee8786c0fc..16112d53fc 100644
--- a/target/linux/mvebu/patches-5.4/230-armada-xp-linksys-mamba-broken-idle.patch
+++ b/target/linux/mvebu/patches-5.4/230-armada-xp-linksys-mamba-broken-idle.patch
@@ -1,6 +1,6 @@
 --- a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
 +++ b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
-@@ -496,3 +496,7 @@
+@@ -485,3 +485,7 @@
  		};
  	};
  };
diff --git a/target/linux/mvebu/patches-5.4/231-armada-xp-linksys-mamba-wan.patch b/target/linux/mvebu/patches-5.4/231-armada-xp-linksys-mamba-wan.patch
index 40e852b089..4315abc7d2 100644
--- a/target/linux/mvebu/patches-5.4/231-armada-xp-linksys-mamba-wan.patch
+++ b/target/linux/mvebu/patches-5.4/231-armada-xp-linksys-mamba-wan.patch
@@ -1,8 +1,6 @@
-diff --git a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
-index 8480a16919a0..8cf3c9d5205b 100644
 --- a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
 +++ b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
-@@ -299,7 +299,7 @@
+@@ -387,7 +387,7 @@
  
  			port@4 {
  				reg = <4>;
diff --git a/target/linux/mvebu/patches-5.4/241-linksys-use-eth0-as-cpu-port.patch b/target/linux/mvebu/patches-5.4/241-linksys-use-eth0-as-cpu-port.patch
index c440530fc3..84d49a004b 100644
--- a/target/linux/mvebu/patches-5.4/241-linksys-use-eth0-as-cpu-port.patch
+++ b/target/linux/mvebu/patches-5.4/241-linksys-use-eth0-as-cpu-port.patch
@@ -1,8 +1,6 @@
-diff --git a/arch/arm/boot/dts/armada-385-linksys.dtsi b/arch/arm/boot/dts/armada-385-linksys.dtsi
-index 827e82be2201..b6aecf4cc5eb 100644
 --- a/arch/arm/boot/dts/armada-385-linksys.dtsi
 +++ b/arch/arm/boot/dts/armada-385-linksys.dtsi
-@@ -109,7 +109,7 @@
+@@ -116,7 +116,7 @@
  };
  
  &eth2 {
@@ -11,7 +9,7 @@ index 827e82be2201..b6aecf4cc5eb 100644
  	phy-mode = "sgmii";
  	buffer-manager = <&bm>;
  	bm,pool-long = <2>;
-@@ -191,10 +191,10 @@
+@@ -200,10 +200,10 @@
  				label = "wan";
  			};
  
diff --git a/target/linux/mvebu/patches-5.4/250-adjust-compatible-for-linksys.patch b/target/linux/mvebu/patches-5.4/250-adjust-compatible-for-linksys.patch
new file mode 100644
index 0000000000..a5d3e63810
--- /dev/null
+++ b/target/linux/mvebu/patches-5.4/250-adjust-compatible-for-linksys.patch
@@ -0,0 +1,68 @@
+--- a/arch/arm/boot/dts/armada-385-linksys-rango.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-rango.dts
+@@ -12,8 +12,8 @@
+ 
+ / {
+ 	model = "Linksys WRT3200ACM";
+-	compatible = "linksys,rango", "linksys,armada385", "marvell,armada385",
+-		     "marvell,armada380";
++	compatible = "linksys,wrt3200acm", "linksys,rango", "linksys,armada385",
++		     "marvell,armada385", "marvell,armada380";
+ };
+ 
+ &expander0 {
+--- a/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
++++ b/arch/arm/boot/dts/armada-xp-linksys-mamba.dts
+@@ -22,9 +22,10 @@
+ #include "armada-xp-mv78230.dtsi"
+ 
+ / {
+-	model = "Linksys WRT1900AC";
+-	compatible = "linksys,mamba", "marvell,armadaxp-mv78230",
+-		     "marvell,armadaxp", "marvell,armada-370-xp";
++	model = "Linksys WRT1900AC v1";
++	compatible = "linksys,wrt1900ac-v1", "linksys,mamba",
++		     "marvell,armadaxp-mv78230", "marvell,armadaxp",
++		     "marvell,armada-370-xp";
+ 
+ 	aliases {
+ 		led-boot = &led_power;
+--- a/arch/arm/boot/dts/armada-385-linksys-cobra.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-cobra.dts
+@@ -9,8 +9,9 @@
+ #include "armada-385-linksys.dtsi"
+ 
+ / {
+-	model = "Linksys WRT1900ACv2";
+-	compatible = "linksys,cobra", "linksys,armada385", "marvell,armada385",
++	model = "Linksys WRT1900AC v2";
++	compatible = "linksys,wrt1900ac-v2", "linksys,cobra",
++		     "linksys,armada385", "marvell,armada385",
+ 		     "marvell,armada380";
+ };
+ 
+--- a/arch/arm/boot/dts/armada-385-linksys-caiman.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-caiman.dts
+@@ -10,8 +10,8 @@
+ 
+ / {
+ 	model = "Linksys WRT1200AC";
+-	compatible = "linksys,caiman", "linksys,armada385", "marvell,armada385",
+-		     "marvell,armada380";
++	compatible = "linksys,wrt1200ac", "linksys,caiman", "linksys,armada385",
++		     "marvell,armada385", "marvell,armada380";
+ };
+ 
+ &expander0 {
+--- a/arch/arm/boot/dts/armada-385-linksys-shelby.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-shelby.dts
+@@ -10,7 +10,8 @@
+ 
+ / {
+ 	model = "Linksys WRT1900ACS";
+-	compatible = "linksys,shelby", "linksys,armada385", "marvell,armada385",
++	compatible = "linksys,wrt1900acs", "linksys,shelby",
++		     "linksys,armada385", "marvell,armada385",
+ 		     "marvell,armada380";
+ };
+ 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
