Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9E71A22DC
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 15:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L2Fvv/s6H2oWN+CFMXZZAmoRlNUE4G6J0FXY9E3F71s=; b=OyX0nsDvgPomtz2/XbMg+vD9Wn
	F9JJTFodjDyDXOF/rEneaIHN1ovRZfC2c/EV7jQ505cpcu3TqeY8rwHggt8QbT+DOUoGA+8v3RddG
	B5tL3R2R/jIXw1jY9W2uA5E+Ir/y4Z6RWjOPlR8HHG//TVY2FoK8RcmIsPRWI2Ns+wpwGOmHGzhvD
	k6lXUrNgkMnEsfC5p40KEGhVtrGhkGqOnwFtb5J5HCzM52enFgH5e88tVuNnRUvZPEopRygkRxyiE
	kvC5H16BU+Q3tA6cTRFmUcrfP6XW3gJo2gI2eUzegKzKR9aVVBM3KgIoCLJNyDAMwJs6ZPVVDHAAZ
	556kR5fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMAg9-00085O-8d; Wed, 08 Apr 2020 13:23:41 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMAfr-0007v6-8H
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 13:23:24 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M8k65-1jQHPa1dMf-004jQR for <openwrt-devel@lists.openwrt.org>; Wed, 08
 Apr 2020 15:23:19 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  8 Apr 2020 15:22:28 +0200
Message-Id: <20200408132229.3873-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200408132229.3873-1-freifunk@adrianschmutzler.de>
References: <20200408132229.3873-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:2HT712134asquw2umGB4OOSWzHbklLrCrVyOdkMASt+U4CmsgnA
 8GEe0sJTIJzxThC04JoX9nd1oEU1v9PqraociLSzYpg7w7JwDo5cxfcfQ091CyiR4jqgLKM
 k2GoT8W203FOlLwAntVtoLt+92fLQwWsj4coCpCRroZgERdDTE/sWSBBFe3xo+lWn/s7bvL
 f9hRkokQt95LbFNHsM69A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VYXlQzpyEcU=:t9NtqetXB6creXu6u/gOXV
 JQWC0Ady/kYAIYaztbAdor05/ME82gZa7kYgrNgOfMntmipVCmpqGZRJuAvvqB2rkz1jWeF7S
 5cPLrV1T8MHsx32Dg7/SG7USWEX1lNsM9Ei4GYmchsaQEEyZv80W6fnxISCMFi/VTFwdn28Qc
 HvkO4qQuvu1nQkKP9qs0e7hIrZ/es2d71ikX6R6Vtrk2jJm+NV0D83R6ABtm2Y1q89gKqiFKC
 FAPOIYngvc4+nJrqlpJZvNWjag3K6K/8TAPeD82WsFTpnzyOqrf/9qh3lXtS3ewxfkmllrvtW
 UWPkfqQrmZdW5tw1kAL/9/yfo1wBo3NAT03e43YpXQalFZdIGMvHjcMAvnSbTatykts0YPeLd
 5vOQCwld51EdZDS7/0BxdiGjMz83WICq/VSCF9JvHtNTmdiDIvBCgeGLbZXWCu1SePbID0HA+
 liEk1cbq+bNVLoGvwSUcqcMGmp9AGMLH0ZD7bY7N/24BmAZ/l6UIJYwgMnD20/OuzMNyGqX4z
 0gHiSVehviDWjIQZaEmu+Yut9lXPXMcdYRffzjqF8zidT8oJmTyaXSb3w9et9NBsET+nDw0o7
 4IFNPCiAMfvNaoLGWFSC/eH0QoS4sHfan9Mm7nZ9ZzkpV2NvHn7Y2I/08EIL+cog2jVNfihY5
 mvcRx8d+Lm/G8OVXPs9feqmGDlGx721MPXURRjzG51cmlGOQrmrUx7T7Dz/zCxhGzhQ1ES569
 ALeteOi5BOCu+5LXci90ukr2xA7+2Uq+XLsWdls+CzvT5n/mEVzoT/DoTYoO3Ue5dY6kOWYUJ
 uU5bCuZz23ZL/ptIqnqK2yMiyGbbsdGa+sZkQTNlhZri3s671lXfGkPv+fmmF8RnifNKPsa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_062323_579591_7B4CFEC3 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [RFC PATCH 2/3] ath79: further fixes for ZyXEL
 NBG6716
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

This applies further fixes to the DTS of ZyXEL NBG6716 based on
what is found in ar71xx (mach-nbg6716.c):

- use WiFi label names as in ar71xx
- fix WPS gpio number
- fix GPIO_ACTIVE_HIGH and mode for WiFi switch
- add codes for USB eject buttons

Despite, add the WAN led to 01_leds.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts  | 15 +++++++++------
 .../ath79/nand/base-files/etc/board.d/01_leds     |  3 +++
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
index a495bb187b..33650dc7dd 100644
--- a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
+++ b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
@@ -48,21 +48,21 @@
 			trigger-sources = <&hub_port1>;
 		};
 
-		wifi2 {
-			label = "nbg6716:white:wifi2";
+		wifi2g {
+			label = "nbg6716:white:wifi2g";
 			gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "phy1tpt";
 		};
 
-		wifi5 {
-			label = "nbg6716:white:wifi5";
+		wifi5g {
+			label = "nbg6716:white:wifi5g";
 			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "phy0tpt";
 		};
 
 		wps {
 			label = "nbg6716:white:wps";
-			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+			gpios = <&gpio 21 GPIO_ACTIVE_LOW>;
 		};
 	};
 
@@ -79,18 +79,21 @@
 		wifi {
 			label = "WiFi button";
 			linux,code = <KEY_RFKILL>;
-			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
+			linux,input-type = <EV_SW>;
+			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
 			debounce-interval = <60>;
 		};
 
 		usb1 {
 			label = "USB1 eject button";
+			linux,code = <BTN_1>;
 			gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
 			debounce-interval = <60>;
 		};
 
 		usb2 {
 			label = "USB2 eject button";
+			linux,code = <BTN_2>;
 			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
 			debounce-interval = <60>;
 		};
diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
index d9989ec538..73fd7089f5 100755
--- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
@@ -18,6 +18,9 @@ netgear,wndr4300-v2|\
 netgear,wndr4500-v3)
 	ucidef_set_led_switch "wan-amber" "WAN (amber)" "netgear:amber:wan" "switch0" "0x20"
 	;;
+zyxel,nbg6716)
+	ucidef_set_led_netdev "wan" "WAN" "$boardname:white:internet" "eth1"
+	;;
 esac
 
 board_config_flush
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
