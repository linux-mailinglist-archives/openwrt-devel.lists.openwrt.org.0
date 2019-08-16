Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91CE90116
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 14:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uPVH6lxeU8FaBN+gkRfdWT18W5ENv9DAnb9jSaKmuzo=; b=XkDVVjspx1d95I
	4CYRVCxbxxQS5d3QfW05yi1xuRfXEFOBiU9TnaM7H9GeBKEqrEB0jsDfI3bYuvzMjF+T8nTXQSIds
	mG3JYp50LAb15cVfUepjH+X5U2Tnh7oa2joY71a3mbixJvcj+eRpzwckFCSPHjv4gCzLQvg1WfcP+
	s6A6gQS2uuC7yBCgfHdR5vLDU/ztUh8KnwyJG5sVH2M58HTxLegsHmwH4tmb41Y1eLSvShSPLRvbJ
	RBKzN1mw2fzplJk3672X7xpIry4PAhzuAtN8T6pDsYh6/1vdzwbHGqG5KMLwJ0X2/jbGRajJj/cpy
	yHS7aTNhEi0J5VtViSUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyazi-0006ej-O8; Fri, 16 Aug 2019 12:06:10 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyazY-0006eE-S6
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 12:06:02 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N8n8I-1iItKE1VQs-015pxv for <openwrt-devel@lists.openwrt.org>; Fri, 16
 Aug 2019 14:05:56 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 16 Aug 2019 14:05:53 +0200
Message-Id: <20190816120553.1408-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ojual06kbZET+WjqajXP5XmyK1YCVUppvSC0jZ1YShj6Rf44w6V
 AJxmDePXD9FgPkGmsgEsZC8P+3WbY7WfmjnRgZIFfVXVqrGvOhZyS9B4lGSFA7RlpQ+6W6r
 Gbj1TbLcsCNhUEw28g4L3Jp5oxe1rp9QONHIzzcpaT21As4MsVYh9ySheGBqxbE4toLH+g2
 dylpXZjhcI0238oHs/nzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:klE/qf2FtIo=:LoenKv6AhgJeuYsQH4cXaj
 movynrvqpZ2gsksPhjZPw3t5zt1Yy/Y9YrjtZUTzyH3anxriIxEi7wgLsk0aKhyMgpNYFTNVa
 3myaNQe4YCI/Wz2alUSu1EyJNi7sW0pcYt+lEgjxlPh79G8YhiDCqaVe2EYL9JlrHsUwfpaUf
 dx5EWXotBfHm6dyxlWX346ftq3zMAiF+xZxVWiwNa1Z1brNc2M2+pfJtIjddTcvdMUSA3Oen/
 Dgtf+NIvK7UMmXz337noPSAGybdCVf87PF/KhGWLnDPAOlREWsBC9gmGSXnazF7fhF8UxCLFt
 SpjoGg7GWMGDLx49UGlsUPD/HEu3qZY455cV9mlWL9HQWyuN0hNADUZGGwXuJaJmx5HZwE2Wv
 C9QfkidbY3fyMdFHoC0KesM5WTa0L+uXuV3WkY3Ish+Fur9b7Mon8+UZtRH7LXBpiE02CvIQc
 zvIYFP+NugttWvDlCld6ysujb8v/iO9o6xlh8rmLvptWMrLgAnUthwMbYYP/RxgAt2ioDv+wB
 CjBOOcgkPbXH9IBz3qsEH78JfCIlLOfrUOoJPs9eckpxpUJYeWW4Gb2oEmKJLG5QgHUGotlnQ
 8g+EoEDoqiJXlsQCBwtEqsm0QgdnZR54YE/qlssgAXy4CIEDhihmIwtJtTA1r/O8mFozVB+Qu
 8TQRSQtFlIGjKtrH730Jsu+l5NuC7NuCAeOoOeeJGGZ65aPAIzB8cWncaOCHnDzktiQPCWNyc
 WHFA9nU2mqB3O0HSil+VNV7kBreWqLi2cGtQIggIpBjvYVorEqgWgMuMgBc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_050601_205468_C6411080 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH] ramips: remove RAM size from device name
 for UniElec devices
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

UniElec devices are the last ones in ramips target still having
the RAM size in device name although RAM size is auto-detected.

Remove this from device name, compatible, etc., as it's not
required and might be misleading to users and developers adding
device support copying those devices.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/base-files/etc/board.d/01_leds    |  2 +-
 target/linux/ramips/base-files/etc/board.d/02_network |  6 +++---
 ...6-256m-16m.dts => mt7621_unielec_u7621-06-16m.dts} |  4 ++--
 ...6-512m-64m.dts => mt7621_unielec_u7621-06-64m.dts} |  4 ++--
 ...128m-16m.dts => mt7628an_unielec_u7628-01-16m.dts} |  4 ++--
 target/linux/ramips/image/mt7621.mk                   | 11 ++++++-----
 target/linux/ramips/image/mt76x8.mk                   |  6 +++---
 7 files changed, 19 insertions(+), 18 deletions(-)
 rename target/linux/ramips/dts/{mt7621_unielec_u7621-06-256m-16m.dts => mt7621_unielec_u7621-06-16m.dts} (94%)
 rename target/linux/ramips/dts/{mt7621_unielec_u7621-06-512m-64m.dts => mt7621_unielec_u7621-06-64m.dts} (94%)
 rename target/linux/ramips/dts/{mt7628an_unielec_u7628-01-128m-16m.dts => mt7628an_unielec_u7628-01-16m.dts} (94%)

diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds b/target/linux/ramips/base-files/etc/board.d/01_leds
index d5ea201279..a6ebb7e2dc 100755
--- a/target/linux/ramips/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/base-files/etc/board.d/01_leds
@@ -392,7 +392,7 @@ tplink,tl-wr902ac-v3)
 	ucidef_set_led_wlan "wlan2g" "wlan2g" "$boardname:green:wlan" "phy0tpt"
 	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x10"
 	;;
-unielec,u7628-01-128m-16m)
+unielec,u7628-01-16m)
 	ucidef_set_led_switch "lan1" "lan1" "u7628-01:green:lan1" "switch0" "0x2"
 	ucidef_set_led_switch "lan2" "lan2" "u7628-01:green:lan2" "switch0" "0x4"
 	ucidef_set_led_switch "lan3" "lan3" "u7628-01:green:lan3" "switch0" "0x8"
diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index b413b434eb..ba4ed5f1a4 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -85,8 +85,8 @@ ramips_setup_interfaces()
 	telco-electronics,x1|\
 	totolink,a7000r|\
 	totolink,lr1200|\
-	unielec,u7621-06-256m-16m|\
-	unielec,u7621-06-512m-64m|\
+	unielec,u7621-06-16m|\
+	unielec,u7621-06-64m|\
 	wavlink,wl-wn570ha1|\
 	wavlink,wl-wn575a3|\
 	xiaomi,miwifi-mini|\
@@ -212,7 +212,7 @@ ramips_setup_interfaces()
 	tplink,tl-wr841n-v13|\
 	tplink,tl-wr841n-v14|\
 	tplink,tl-wr842n-v5|\
-	unielec,u7628-01-128m-16m|\
+	unielec,u7628-01-16m|\
 	ubiquiti,edgerouterx|\
 	ubiquiti,edgerouterx-sfp|\
 	upvel,ur-326n4g|\
diff --git a/target/linux/ramips/dts/mt7621_unielec_u7621-06-256m-16m.dts b/target/linux/ramips/dts/mt7621_unielec_u7621-06-16m.dts
similarity index 94%
rename from target/linux/ramips/dts/mt7621_unielec_u7621-06-256m-16m.dts
rename to target/linux/ramips/dts/mt7621_unielec_u7621-06-16m.dts
index 78bccbf12d..603e2dd2d8 100644
--- a/target/linux/ramips/dts/mt7621_unielec_u7621-06-256m-16m.dts
+++ b/target/linux/ramips/dts/mt7621_unielec_u7621-06-16m.dts
@@ -40,8 +40,8 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	compatible = "unielec,u7621-06-256m-16m", "unielec,u7621-06", "mediatek,mt7621-soc";
-	model = "UniElec U7621-06 (256M RAM/16M flash)";
+	compatible = "unielec,u7621-06-16m", "unielec,u7621-06", "mediatek,mt7621-soc";
+	model = "UniElec U7621-06 (16M flash)";
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7621_unielec_u7621-06-512m-64m.dts b/target/linux/ramips/dts/mt7621_unielec_u7621-06-64m.dts
similarity index 94%
rename from target/linux/ramips/dts/mt7621_unielec_u7621-06-512m-64m.dts
rename to target/linux/ramips/dts/mt7621_unielec_u7621-06-64m.dts
index 16baf70600..3498be044a 100644
--- a/target/linux/ramips/dts/mt7621_unielec_u7621-06-512m-64m.dts
+++ b/target/linux/ramips/dts/mt7621_unielec_u7621-06-64m.dts
@@ -41,8 +41,8 @@
 #include <dt-bindings/input/input.h>
 
 / {
-	compatible = "unielec,u7621-06-512m-64m", "unielec,u7621-06", "mediatek,mt7621-soc";
-	model = "UniElec U7621-06 (512M RAM/64M flash)";
+	compatible = "unielec,u7621-06-64m", "unielec,u7621-06", "mediatek,mt7621-soc";
+	model = "UniElec U7621-06 (64M flash)";
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7628an_unielec_u7628-01-128m-16m.dts b/target/linux/ramips/dts/mt7628an_unielec_u7628-01-16m.dts
similarity index 94%
rename from target/linux/ramips/dts/mt7628an_unielec_u7628-01-128m-16m.dts
rename to target/linux/ramips/dts/mt7628an_unielec_u7628-01-16m.dts
index c5eaf6d5d0..66fea358bd 100644
--- a/target/linux/ramips/dts/mt7628an_unielec_u7628-01-128m-16m.dts
+++ b/target/linux/ramips/dts/mt7628an_unielec_u7628-01-16m.dts
@@ -37,8 +37,8 @@
 #include "mt7628an_unielec_u7628-01.dtsi"
 
 / {
-	compatible = "unielec,u7628-01-128m-16m", "unielec,u7628-01", "mediatek,mt7628an-soc";
-	model = "UniElec U7628-01 (128M RAM/16M flash)";
+	compatible = "unielec,u7628-01-16m", "unielec,u7628-01", "mediatek,mt7628an-soc";
+	model = "UniElec U7628-01 (16M flash)";
 };
 
 &spi0 {
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index d32feb7eab..00705e6e52 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -592,24 +592,25 @@ define Device/ubiquiti_edgerouterx-sfp
 endef
 TARGET_DEVICES += ubiquiti_edgerouterx-sfp
 
-define Device/unielec_u7621-06-256m-16m
+define Device/unielec_u7621-06-16m
   MTK_SOC := mt7621
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7621-06
-  DEVICE_VARIANT := 256M RAM/16M flash
+  DEVICE_VARIANT := 16M
   DEVICE_PACKAGES := kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-usb3
-  SUPPORTED_DEVICES += u7621-06-256M-16M
+  SUPPORTED_DEVICES += u7621-06-256M-16M unielec,u7621-06-256m-16m
 endef
 TARGET_DEVICES += unielec_u7621-06-256m-16m
 
-define Device/unielec_u7621-06-512m-64m
+define Device/unielec_u7621-06-64m
   MTK_SOC := mt7621
   IMAGE_SIZE := 65216k
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7621-06
-  DEVICE_VARIANT := 512M RAM/64M flash
+  DEVICE_VARIANT := 64M
   DEVICE_PACKAGES := kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-usb3
+  SUPPORTED_DEVICES += unielec,u7621-06-512m-64m
 endef
 TARGET_DEVICES += unielec_u7621-06-512m-64m
 
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index d560a2aab0..3fd53dee2e 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -433,14 +433,14 @@ define Device/tplink_tl-wr902ac-v3
 endef
 TARGET_DEVICES += tplink_tl-wr902ac-v3
 
-define Device/unielec_u7628-01-128m-16m
+define Device/unielec_u7628-01-16m
   MTK_SOC := mt7628an
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7628-01
-  DEVICE_VARIANT := 128M RAM/16M flash
+  DEVICE_VARIANT := 16M
   DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-usb-ledtrig-usbport
-  SUPPORTED_DEVICES += u7628-01-128M-16M
+  SUPPORTED_DEVICES += u7628-01-128M-16M unielec,u7628-01-128m-16m
 endef
 TARGET_DEVICES += unielec_u7628-01-128m-16m
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
