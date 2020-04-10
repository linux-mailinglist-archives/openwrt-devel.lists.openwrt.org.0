Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E8C1A450C
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 12:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RQBFl4hXB9/xCzVVu9/WaKbhAg9ywUqN3XJnlrukoYk=; b=DIxfOB5721I0u0
	LblxNjWvxmcMw+sW1tyBTpcGB4bzOIm0VZACVJFk08EANmiYuD0OQ7am4EuLaJedf6wRxghU+vZFH
	rjyCU/C7yKJISHsyyl1gBGLI+u6GYhGvgU0xrsvdxz9yLSLu0t19AanEmX0ehMYAk2zIGIQjYSpKu
	UA2UTq6+Y/7tOrV0ZwDWnqJiKq7YQqh0OIJCbG6LDj/pDieaiscsr6arw0VVTW0VENKz6BBrd0tBB
	NNRfqbn8GZTK8DveuTtJFDbJ77UZ0YEi+8Nap+MY/7p22ZBEvC716n7ecYidPTZN3GTKWkkSeKej1
	NZDR6mZ7w6CfULxWpuVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMqgT-0007Ak-6q; Fri, 10 Apr 2020 10:14:49 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMqgI-00078n-5T
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 10:14:40 +0000
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 1C7C010000B;
 Fri, 10 Apr 2020 10:14:27 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 Apr 2020 00:14:21 -1000
Message-Id: <20200410101421.2118105-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_031438_479149_850FEE67 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mvebu, cortexa9: rename linksys,
 rango to wrt3200acm
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
Cc: freifunk@adrianschmutzler.de, daniel@makrotopia.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch was previously send to the Kernel, however as it also changes
labels and the DTS filename existing devices could break.

The internal Linksys codename `rango` is renamed to `wrt3200acm`, it's
common model name. This way the build code base becomes more readable as
developers don't need to keep track of two different names for the same
device.

Additionally running devices now know which profile was used to create
the running firmware, instead of requiring an additional mapping.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
This is just meant as a RFC, in case the idea is good I'll send a patch
set for all 5 devices affected by the codename double naming.

 package/boot/uboot-envtools/files/mvebu       |   2 +-
 .../cortexa9/base-files/etc/board.d/01_leds   |   2 +-
 .../base-files/etc/board.d/02_network         |   2 +-
 .../cortexa9/base-files/etc/init.d/bootcount  |   2 +-
 .../base-files/lib/preinit/06_set_iface_mac   |   2 +-
 .../base-files/lib/preinit/81_linksys_syscfg  |   2 +-
 .../base-files/lib/upgrade/platform.sh        |   4 +-
 target/linux/mvebu/image/cortexa9.mk          |   4 +-
 ...s-linksys-rename-rango-to-wrt3200acm.patch | 132 ++++++++++++++++++
 9 files changed, 142 insertions(+), 10 deletions(-)
 create mode 100644 target/linux/mvebu/patches-4.19/007-arm-dts-linksys-rename-rango-to-wrt3200acm.patch

diff --git a/package/boot/uboot-envtools/files/mvebu b/package/boot/uboot-envtools/files/mvebu
index 7902384a37..1049ce491b 100644
--- a/package/boot/uboot-envtools/files/mvebu
+++ b/package/boot/uboot-envtools/files/mvebu
@@ -32,7 +32,7 @@ linksys,shelby)
 linksys,mamba)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x40000" "0x20000"
 	;;
-linksys,rango|\
+linksys,wrt3200acm|\
 linksys,venom)
 	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x20000" "0x20000"
 	;;
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
index a7762f0080..5bdeaaa38b 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/01_leds
@@ -14,7 +14,7 @@ boardname="${board##*,}"
 case "$board" in
 linksys,caiman|\
 linksys,cobra|\
-linksys,rango|\
+linksys,wrt3200acm|\
 linksys,shelby)
 	ucidef_set_led_netdev "wan" "WAN" "pca963x:$boardname:white:wan" "eth1"
 	ucidef_set_led_usbport "usb1" "USB 1" "pca963x:$boardname:white:usb2" "usb1-port1"
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
index b10e1419b5..51e4215329 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
+++ b/target/linux/mvebu/cortexa9/base-files/etc/board.d/02_network
@@ -18,7 +18,7 @@ cznic,turris-omnia)
 linksys,caiman|\
 linksys,cobra|\
 linksys,mamba|\
-linksys,rango|\
+linksys,wrt3200acm|\
 linksys,shelby|\
 linksys,venom)
 	ucidef_set_interfaces_lan_wan "eth0.1" "eth1.2"
diff --git a/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount b/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
index dd2266bdc8..9d8bbcc25d 100755
--- a/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
+++ b/target/linux/mvebu/cortexa9/base-files/etc/init.d/bootcount
@@ -7,7 +7,7 @@ boot() {
 	linksys,caiman |\
 	linksys,cobra |\
 	linksys,mamba |\
-	linksys,rango |\
+	linksys,wrt3200acm |\
 	linksys,shelby |\
 	linksys,venom)
 		mtd resetbc s_env || true
diff --git a/target/linux/mvebu/cortexa9/base-files/lib/preinit/06_set_iface_mac b/target/linux/mvebu/cortexa9/base-files/lib/preinit/06_set_iface_mac
index fd41836c8d..9c09b5c899 100644
--- a/target/linux/mvebu/cortexa9/base-files/lib/preinit/06_set_iface_mac
+++ b/target/linux/mvebu/cortexa9/base-files/lib/preinit/06_set_iface_mac
@@ -9,7 +9,7 @@ preinit_set_mac_address() {
 	. /lib/functions.sh
 
 	case $(board_name) in
-	linksys,caiman|linksys,cobra|linksys,rango|linksys,shelby|linksys,venom)
+	linksys,caiman|linksys,cobra|linksys,wrt3200acm|linksys,shelby|linksys,venom)
 		# rename interfaces back to the way they were with 4.4
 		case "$(readlink /sys/class/net/eth0)" in
 			*f1070000*)
diff --git a/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg b/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
index 83448e5ace..257a890fc3 100644
--- a/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
+++ b/target/linux/mvebu/cortexa9/base-files/lib/preinit/81_linksys_syscfg
@@ -8,7 +8,7 @@ preinit_mount_syscfg() {
 	. /lib/upgrade/common.sh
 
 	case $(board_name) in
-	linksys,caiman|linksys,cobra|linksys,mamba|linksys,rango|linksys,shelby|linksys,venom)
+	linksys,caiman|linksys,cobra|linksys,mamba|linksys,wrt3200acm|linksys,shelby|linksys,venom)
 		needs_recovery=0
 		syscfg_part=$(grep syscfg /proc/mtd |cut -c4)
 		ubiattach -m $syscfg_part || needs_recovery=1
diff --git a/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh b/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
index 8baed969a3..5a11e36598 100755
--- a/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
+++ b/target/linux/mvebu/cortexa9/base-files/lib/upgrade/platform.sh
@@ -30,7 +30,7 @@ platform_do_upgrade() {
 	linksys,caiman|\
 	linksys,cobra|\
 	linksys,mamba|\
-	linksys,rango|\
+	linksys,wrt3200acm|\
 	linksys,shelby|\
 	linksys,venom)
 		platform_do_upgrade_linksys "$1"
@@ -50,7 +50,7 @@ platform_copy_config() {
 	linksys,caiman|\
 	linksys,cobra|\
 	linksys,mamba|\
-	linksys,rango|\
+	linksys,wrt3200acm|\
 	linksys,shelby|\
 	linksys,venom)
 		platform_copy_config_linksys
diff --git a/target/linux/mvebu/image/cortexa9.mk b/target/linux/mvebu/image/cortexa9.mk
index 85bfa94dbd..8b2f9090a7 100644
--- a/target/linux/mvebu/image/cortexa9.mk
+++ b/target/linux/mvebu/image/cortexa9.mk
@@ -98,9 +98,9 @@ define Device/linksys_wrt3200acm
   DEVICE_MODEL := WRT3200ACM
   DEVICE_ALT0_VENDOR := Linksys
   DEVICE_ALT0_MODEL := Rango
-  DEVICE_DTS := armada-385-linksys-rango
+  DEVICE_DTS := armada-385-linksys-wrt3200acm
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
-  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
+  SUPPORTED_DEVICES := linksys,wrt3200acm armada-385-linksys-rango linksys,rango
 endef
 TARGET_DEVICES += linksys_wrt3200acm
 
diff --git a/target/linux/mvebu/patches-4.19/007-arm-dts-linksys-rename-rango-to-wrt3200acm.patch b/target/linux/mvebu/patches-4.19/007-arm-dts-linksys-rename-rango-to-wrt3200acm.patch
new file mode 100644
index 0000000000..41ba0af672
--- /dev/null
+++ b/target/linux/mvebu/patches-4.19/007-arm-dts-linksys-rename-rango-to-wrt3200acm.patch
@@ -0,0 +1,132 @@
+From 5e43bcc1b6311040615cd9cffaa2f18eb3e654d6 Mon Sep 17 00:00:00 2001
+From: Paul Spooren <mail@aparcar.org>
+Date: Sat, 4 Apr 2020 15:35:31 -1000
+Subject: [PATCH 1/5] arm: dts: linksys: rename rango to wrt3200acm
+
+Linksys uses internally the codename "rango" for a device sold under the
+name of "Linksys WRT3200ACM", which is already reflected in the device
+tree `model`. However the `compatible` list only contains the codename
+`linksys,rango` which does not relate to the common name.
+
+This patch renames the `dts` file to the sanitized model name and
+prepends `linksys,wrt3200acm` to the `compatible` list to simplify the
+device relation.
+
+Signed-off-by: Paul Spooren <mail@aparcar.org>
+CC: Rob Herring <robh+dt@kernel.org>
+CC: Jason Cooper <jason@lakedaemon.net>
+CC: Andrew Lunn <andrew@lunn.ch>
+CC: Gregory Clement <gregory.clement@bootlin.com>
+CC: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+CC: Daniel Golle <daniel@makrotopia.org>
+CC: Adrian Schmutzler <freifunk@adrianschmutzler.de>
+---
+ arch/arm/boot/dts/Makefile                    |  2 +-
+ ....dts => armada-385-linksys-wrt3200acm.dts} | 26 +++++++++----------
+ 2 files changed, 14 insertions(+), 14 deletions(-)
+ rename arch/arm/boot/dts/{armada-385-linksys-rango.dts => armada-385-linksys-wrt3200acm.dts} (83%)
+
+diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
+index e8dd99201397..a0df7f97cc44 100644
+--- a/arch/arm/boot/dts/Makefile
++++ b/arch/arm/boot/dts/Makefile
+@@ -1282,8 +1282,8 @@ dtb-$(CONFIG_MACH_ARMADA_38X) += \
+ 	armada-385-db-ap.dtb \
+ 	armada-385-linksys-caiman.dtb \
+ 	armada-385-linksys-cobra.dtb \
+-	armada-385-linksys-rango.dtb \
+ 	armada-385-linksys-shelby.dtb \
++	armada-385-linksys-wrt3200acm.dtb \
+ 	armada-385-synology-ds116.dtb \
+ 	armada-385-turris-omnia.dtb \
+ 	armada-388-clearfog.dtb \
+diff --git a/arch/arm/boot/dts/armada-385-linksys-rango.dts b/arch/arm/boot/dts/armada-385-linksys-wrt3200acm.dts
+similarity index 83%
+rename from arch/arm/boot/dts/armada-385-linksys-rango.dts
+rename to arch/arm/boot/dts/armada-385-linksys-wrt3200acm.dts
+index 3c4af57ec2b9..bf7b546e3344 100644
+--- a/arch/arm/boot/dts/armada-385-linksys-rango.dts
++++ b/arch/arm/boot/dts/armada-385-linksys-wrt3200acm.dts
+@@ -12,43 +12,43 @@
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
+ 	wan_amber@0 {
+-		label = "rango:amber:wan";
++		label = "wrt3200acm:amber:wan";
+ 		reg = <0x0>;
+ 	};
+ 
+ 	wan_white@1 {
+-		label = "rango:white:wan";
++		label = "wrt3200acm:white:wan";
+ 		reg = <0x1>;
+ 	};
+ 
+ 	usb2@5 {
+-		label = "rango:white:usb2";
++		label = "wrt3200acm:white:usb2";
+ 		reg = <0x5>;
+ 	};
+ 
+ 	usb3_1@6 {
+-		label = "rango:white:usb3_1";
++		label = "wrt3200acm:white:usb3_1";
+ 		reg = <0x6>;
+ 	};
+ 
+ 	usb3_2@7 {
+-		label = "rango:white:usb3_2";
++		label = "wrt3200acm:white:usb3_2";
+ 		reg = <0x7>;
+ 	};
+ 
+ 	wps_white@8 {
+-		label = "rango:white:wps";
++		label = "wrt3200acm:white:wps";
+ 		reg = <0x8>;
+ 	};
+ 
+ 	wps_amber@9 {
+-		label = "rango:amber:wps";
++		label = "wrt3200acm:amber:wps";
+ 		reg = <0x9>;
+ 	};
+ };
+@@ -56,22 +56,22 @@ wps_amber@9 {
+ &gpio_leds {
+ 	power {
+ 		gpios = <&gpio1 24 GPIO_ACTIVE_HIGH>;
+-		label = "rango:white:power";
++		label = "wrt3200acm:white:power";
+ 	};
+ 
+ 	sata {
+ 		gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
+-		label = "rango:white:sata";
++		label = "wrt3200acm:white:sata";
+ 	};
+ 
+ 	wlan_2g {
+ 		gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+-		label = "rango:white:wlan_2g";
++		label = "wrt3200acm:white:wlan_2g";
+ 	};
+ 
+ 	wlan_5g {
+ 		gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+-		label = "rango:white:wlan_5g";
++		label = "wrt3200acm:white:wlan_5g";
+ 	};
+ };
+ 
+-- 
+2.25.1
+
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
