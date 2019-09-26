Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABAFBF342
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 14:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/3Tbm9UAj3/EEIo0I5I2inrFS/IYrnxdyU5aiLOv2/0=; b=JEnSKJ2AThykdNzcGktZ8tlfly
	gfx+El2Kpd/Ebld4VhSyvFUj0hnjW/b2OxTP8OWs0qm3tEsm5yL5ea8t6Nxr/1bXJs7JDonJlDI0U
	9h3syO03gEceBbBi889t7ZZh7SrHJmYh7AvhjzsLhToSW3EviWOCB4weZt0uuf4XOec3W6rbY2TQO
	AsJfEP3WbGTTIdw9olR51kG0lFtBKoggHwFc2WlGTskdTKGpAl+wStgrINhcdkVqzR1pdaoYMrnHU
	jbbom6rgJ0xMGFZHIQB22hPIjhKmCrFcawt/PH8a0qzyyn3O3sUp82o4mVc+ID+4BEJiGmzM4N1dE
	/kIeWt7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDT8a-0003ny-Lh; Thu, 26 Sep 2019 12:44:48 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDT8L-0003ah-8L
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 12:44:35 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MEVBa-1iOyNl0OK2-00G06g for <openwrt-devel@lists.openwrt.org>; Thu, 26
 Sep 2019 14:44:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Sep 2019 14:44:23 +0200
Message-Id: <20190926124423.35613-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926124423.35613-1-freifunk@adrianschmutzler.de>
References: <20190926124423.35613-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:0O/4qBdp7WSYsgObz+7L2zQR4AxP6MtCzsuI7gUpdLAPsYU0+Ld
 rZlf7h/anYfS8EA4xWIOcBR9kYKmKCfrXSFGV+VLk9w8t1FkX2JVlXuuphixCfnHj7zvDTT
 8IYQIN7MhCGFOmsVWmGE2cY9pZ8Lk/ldLlSgWKcoIm9C+Bbnkyt7Km/lwylt3yVnM1mXcWX
 UYlbrvnZBV4USWevC/yLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LPmmYa9qAes=:kgXNi9LKBIQoq1uWcRtftV
 nIMXeIy+jtqPI2xbGjP2clgYfIfTWfB0FahgRlPzJbky6z9HfgH58ycATsdvyosXQ/nQ8IyUC
 RYbHwxKy4t0oiuHhM6+Cfu9VHubIjOIVavA1P/iZhnVC4Vt1XaOLaFMM5/L6aFChuLgKB6e+W
 KNnPXtb467d6wF4Z5QDCzTv6e0nJ4GG7TuW3mNDV8SYtrZBHE6uSFx/9VY9DGD44rWoWRRGFU
 XUNlIM89BFJWcVf5lASwtg8CwcOkYCJYxQl5XyMEbvrdO1F7Sxsz+Rg6jKLFvx2C9gOeQt+nI
 uswiSDxssCRZb2dgQ1mED4/ov6niG7A+ZwAujy7BUCNwwXsWj4ArI52Z3udr19xaY8CYgrNSn
 lbkVRS8+PBzOSad/SASd7e8DicW+vEFtLDaFkzTcif5qJRseFN2CPmUAW+e0vhHH4ut3LEGQd
 vEFdycck7wxjJUFoThJrMB1w+PqmpJqnl5JrJAsjJBvhbOiiupplExHz/XgD5SULnoUwKofUh
 hKHhbP516ytiz5vV+V7W3SYyBtR9uddNYWwE6/IMD5BwUdMxhTtWYIzICmtLaHIe5XCgqMPZU
 IY9iOJ4l4ix8Bl5ZQ/7q4c2xp58xqvlk5z+DdGZkZNo2/SmgSwWNsi0IwSIN7dce4JO6WDOHP
 gJOKpU0IkYl8NFnFjLBW3Fgef1BDYZC17AsovtbhagGuBU4nnaxywT5vSRhHPH3jzRi73afQF
 Iy+y8DY4tfpxXFkA7pz4+lz3XpD89eAHZx9Kr9uVoI/EW33YBq+Y/U7QqsSv8YzkmKm5yuRDO
 WBxRZEGqOjXOEk13zc1stRTwmlYg6RZZQx39AoJdar6I8uZ/6WX8McD/1zR155+TSAgPMiROw
 9BZDoex3T0JvZYkS25llirEeNSpS+g7A/993SJ39o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_054433_584071_463903A1 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ramips: apply consistent device
 name/compatible to ZBT-WE1026-5G
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

All Zbtlink ramips devices except the ZBT-WE1026-5G include the
zbt-/ZBT- prefix in their model name.

This changes ZBT-WE1026-5G to also follow that scheme.

The patch moves some block to keep alphatical order.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2: new in v2

This is not tested on device and is only meant as base for
Kristian Evensen's patches (DTSI rearrangement and addition of
WE1026-H).
---
 .../ramips/base-files/etc/board.d/01_leds     |  8 +++----
 .../ramips/base-files/etc/board.d/02_network  |  2 +-
 ... => mt7620a_zbtlink_zbt-we1026-5g-16m.dts} |  4 ++--
 ...tsi => mt7620a_zbtlink_zbt-we1026-5g.dtsi} |  2 +-
 target/linux/ramips/image/mt7620.mk           | 22 +++++++++----------
 5 files changed, 19 insertions(+), 19 deletions(-)
 rename target/linux/ramips/dts/{mt7620a_zbtlink_we1026-5g-16m.dts => mt7620a_zbtlink_zbt-we1026-5g-16m.dts} (95%)
 rename target/linux/ramips/dts/{mt7620a_zbtlink_we1026-5g.dtsi => mt7620a_zbtlink_zbt-we1026-5g.dtsi} (98%)

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index 46202b4117..f8a270b6b0 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -445,10 +445,6 @@ youku,yk1)
 	set_wifi_led "$boardname:blue:air"
 	ucidef_set_led_switch "wan" "wan" "$boardname:blue:wan" "switch0" "0x10"
 	;;
-zbtlink,we1026-5g-16m)
-	ucidef_set_led_netdev "lan" "LAN" "we1026-5g:green:lan" "eth0"
-	set_wifi_led "we1026-5g:green:wifi"
-	;;
 zbtlink,zbt-ape522ii)
 	ucidef_set_led_netdev "wlan2g4" "wlan1-link" "$boardname:green:wlan2g4" "wlan1"
 	ucidef_set_led_netdev "sys1" "wlan1" "$boardname:green:sys1" "wlan1" "tx rx"
@@ -461,6 +457,10 @@ zbtlink,zbt-we826-16m|\
 zbtlink,zbt-we826-32m)
 	set_wifi_led "zbt-we826:green:wifi"
 	;;
+zbtlink,zbt-we1026-5g-16m)
+	ucidef_set_led_netdev "lan" "LAN" "we1026-5g:green:lan" "eth0"
+	set_wifi_led "we1026-5g:green:wifi"
+	;;
 zbtlink,zbt-we1226)
 	set_wifi_led "$boardname:green:wlan"
 	ucidef_set_led_switch "lan1" "LAN1" "$boardname:green:lan1" "switch0" "0x01"
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 947bf1428d..ae05c827bc 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -451,7 +451,7 @@ ramips_setup_interfaces()
 			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "9@eth0"
 		;;
 	sparklan,wcr-150gn|\
-	zbtlink,we1026-5g-16m)
+	zbtlink,zbt-we1026-5g-16m)
 		ucidef_add_switch "switch0" \
 			"0:lan" "6t@eth0"
 		;;
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-5g-16m.dts
similarity index 95%
rename from target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts
rename to target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-5g-16m.dts
index a05e8d4b47..feba29763b 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g-16m.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-5g-16m.dts
@@ -33,10 +33,10 @@
 
 /dts-v1/;
 
-#include "mt7620a_zbtlink_we1026-5g.dtsi"
+#include "mt7620a_zbtlink_zbt-we1026-5g.dtsi"
 
 / {
-	compatible = "zbtlink,we1026-5g-16m", "ralink,mt7620a-soc";
+	compatible = "zbtlink,zbt-we1026-5g-16m", "ralink,mt7620a-soc";
 	model = "Zbtlink ZBT-WE1026-5G (16M)";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-5g.dtsi
similarity index 98%
rename from target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
rename to target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-5g.dtsi
index e7e64e251a..68a74ede39 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we1026-5g.dtsi
@@ -37,7 +37,7 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	compatible = "zbtlink,we1026-5g", "ralink,mt7620a-soc";
+	compatible = "zbtlink,zbt-we1026-5g", "ralink,mt7620a-soc";
 
 	chosen {
 		bootargs = "console=ttyS0,115200";
diff --git a/target/linux/ramips/image/mt7620.mk b/target/linux/ramips/image/mt7620.mk
index 36898c99bc..6543958bd0 100644
--- a/target/linux/ramips/image/mt7620.mk
+++ b/target/linux/ramips/image/mt7620.mk
@@ -943,17 +943,6 @@ define Device/yukai_bocco
 endef
 TARGET_DEVICES += yukai_bocco
 
-define Device/zbtlink_we1026-5g-16m
-  MTK_SOC := mt7620a
-  IMAGE_SIZE := 16064k
-  DEVICE_VENDOR := Zbtlink
-  DEVICE_MODEL := ZBT-WE1026-5G
-  DEVICE_VARIANT := 16M
-  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb2 kmod-usb-ohci kmod-sdhci-mt7620
-  SUPPORTED_DEVICES += we1026-5g-16m
-endef
-TARGET_DEVICES += zbtlink_we1026-5g-16m
-
 define Device/zbtlink_zbt-ape522ii
   MTK_SOC := mt7620a
   IMAGE_SIZE := 15872k
@@ -984,6 +973,17 @@ define Device/zbtlink_zbt-wa05
 endef
 TARGET_DEVICES += zbtlink_zbt-wa05
 
+define Device/zbtlink_zbt-we1026-5g-16m
+  MTK_SOC := mt7620a
+  IMAGE_SIZE := 16064k
+  DEVICE_VENDOR := Zbtlink
+  DEVICE_MODEL := ZBT-WE1026-5G
+  DEVICE_VARIANT := 16M
+  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb2 kmod-usb-ohci kmod-sdhci-mt7620
+  SUPPORTED_DEVICES += we1026-5g-16m zbtlink,we1026-5g-16m
+endef
+TARGET_DEVICES += zbtlink_zbt-we1026-5g-16m
+
 define Device/zbtlink_zbt-we2026
   MTK_SOC := mt7620n
   IMAGE_SIZE := 7552k
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
