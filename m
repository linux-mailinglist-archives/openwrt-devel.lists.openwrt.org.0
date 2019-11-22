Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF239107394
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 14:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PJHcLUfF3UmsDxCeRais3AkDfx1Q6kUAr4Eb9Y7XHfU=; b=GlrKe3epLPvfbV
	zLKZ9d/QrZEuMQCnSLfTppK8VefI/WUTC6HxCFCZFvlIz3ITjct8PtZh4+MOO/aQdNRktGRhtJXy5
	9pKh+DnQhjCfNOeiI5k7XRlE6KUTbTo/UK2igUa3j0QGaTQxxygMhby8B6FzU1JIbHRsGG7IsbI0a
	Gk+/OR/n6O8os7LSPmd8R5A5l0/cWkatWJgd0/OmmZU7kmJoXH1I6xYwrLU5d4rym2kZ5p9UpQL/k
	52VnkqbNQLzS/N0pToqcabhER3yLuNzTR+yqrc2AQXY06FRQxfGhUsB+qWYnEJ2bJqfbMj7B96Qch
	4vkQaVQr0/IF6KwED1lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY9Gm-0007Vk-2o; Fri, 22 Nov 2019 13:46:44 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY9Gd-0007VF-K2
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 13:46:37 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N4Q8u-1hoFo613zS-011R55 for <openwrt-devel@lists.openwrt.org>; Fri, 22
 Nov 2019 14:46:32 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 14:45:49 +0100
Message-Id: <20191122134549.43222-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:02gPnkRt3L9BnAy9SzwATaJY1jImRvcs4MOLM1wUZwGz8ljpGU5
 +xLDgBhzcJdRLPRB03ler67/jrEwgnDZLrCDb7V9aGpOWyad8wnMMZ+6ATuqfvIPa1/cUxl
 Pd7hQpxlGoWoon/OgglXKT/8gYSDDSMeH8wtUBjBYSJyeBoSKJYgTmUd3Lkmgr2+4jmuZw4
 pD/WewKlY2yo5DfErriMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NrJL4zrLsII=:874xiZ835fKiosGINSiums
 3XgsmiCci+QE06nBTGMrItDxpygUoFAxNFUgNqfl0Vbib2CwCdlWgQdQokgRFdokkhoqxSS2f
 eVzroLCFXi0UwUe8eXItrn7liLUGpy9e0pHUYHkbf8yl7Bk7fN1uQn0Q6qtrhu5kEeTRP1eZM
 Qg/ViZnl+qLbdRc8xA1os9VeXqgXMuZd2dQDvU+n1Ce6yzi7NTf6z6B63GwPoeABJQ9veGKnl
 GkTWB+7w9m3tdsspMC6MlSt0cMCBnNy1FK2Nwg3uZkBkcXaxZmicwi1z+fLxQ5R9BpUj3OfPo
 efp+o7rsmBGCkxlGAk7WvW2A9ifnjmgGg1Xny6TKQzxkz8boVcK4qAf6UbY55Zr8j8/mTzYVb
 VSYX/4TwSQZWxYz6gk0Eskb9noYT6vu0t4hPJXF2jV0WwFGV9WBFXQ3hMNwhBM9wuNFyBPssI
 k0994UL68M1sXiXZU9Qg3hgULIF8N7S75VvuWSZH4wW1laeyVFbnflnkAsB/bu9PjPc1jvMd2
 24oPQYtgT7dDCQQcQnbs0QSW94Apfm3hygSNUWIIUFsgcOHeJ46aZP0umYgdKxvU5cZIPev/y
 PhYwlEHqWvvrzVv+YqcbPMsCrCkCGJ8SIqjVCX+ggZp2uVrt17HzG/8nUnIXp/Ua6Fhljmyew
 F2+54Fp/BScGKwq1ifbE6c7F3r1lLO083KrBDUnx74K7QSlwYIzq0+sCcXPQ6JssGYjX7s78v
 dhEWsc2yTjmIkljVAxa7lrdaLwfWLhkb+FDSR/CkJJiLHugKf+zhBnbQ21LuSLDR9dThVFO5g
 DmquhXsT5VVB2pO4BICZqMnNsQQEpj03uvng9WesCRP4tw2x0ijiU/aSW95F4mv2g+UHA2yT0
 3Nsq4pFnrC2kxqqX46NuEq0dCqwfXo0L7ldlRxa7U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_054635_953158_870B7405 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: rename EEPROM to art
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

This renames all remaining occurrences of "EEPROM" to "art" to
further harmonize the partition labelling in ath79.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../linux/ath79/dts/ar9342_ubnt_lap-120.dts   |  2 +-
 .../ath79/dts/ar9342_ubnt_nanobeam-ac.dts     |  2 +-
 .../dts/ar9342_ubnt_nanostation-ac-loco.dts   |  2 +-
 .../ath79/dts/ar9342_ubnt_nanostation-ac.dts  |  4 ++--
 target/linux/ath79/dts/ar9342_ubnt_wa.dtsi    |  6 +++---
 target/linux/ath79/dts/ar9342_ubnt_xw.dtsi    |  8 ++++----
 .../linux/ath79/dts/qca9533_ubnt_acb-isp.dts  | 10 +++++-----
 .../ath79/dts/qca9563_ubnt_unifiac-lite.dtsi  |  2 +-
 .../ath79/dts/qca9563_ubnt_unifiac-pro.dtsi   |  2 +-
 .../linux/ath79/dts/qca9563_ubnt_unifiac.dtsi |  6 +++---
 .../etc/hotplug.d/firmware/11-ath10k-caldata  | 20 +++++++++----------
 11 files changed, 31 insertions(+), 33 deletions(-)

diff --git a/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts b/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
index 82f864b8e3..757654eaee 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
+++ b/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
@@ -26,7 +26,7 @@
 	/* default for ar934x, except for 1000M and 10M */
 	pll-data = <0x06000000 0x00000101 0x00001313>;
 
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 
 	phy-mode = "rgmii";
 	phy-handle = <&phy4>;
diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts b/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
index 6e64c7faad..30d054dfed 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
+++ b/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
@@ -51,7 +51,7 @@
 	/* default for ar934x, except for 1000M and 10M */
 	pll-data = <0x06000000 0x00000101 0x00001313>;
 
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 
 	phy-mode = "rgmii";
 	phy-handle = <&phy4>;
diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
index 9b26d1a628..89904721c0 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
+++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
@@ -27,7 +27,7 @@
 	/* default for ar934x, except for 1000M and 10M */
 	pll-data = <0x06000000 0x00000101 0x00001313>;
 
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 
 	phy-mode = "rgmii";
 	phy-handle = <&phy4>;
diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
index b591925154..97597e5f15 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
+++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
@@ -58,7 +58,7 @@
 	/* default for ar934x, except for 1000M and 10M */
 	pll-data = <0x06000000 0x00000101 0x00001313>;
 
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 
 	phy-mode = "rgmii";
 	phy-handle = <&phy0>;
@@ -73,5 +73,5 @@
 &wmac {
 	status = "okay";
 
-	mtd-cal-data = <&eeprom 0x1000>;
+	mtd-cal-data = <&art 0x1000>;
 };
diff --git a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
index 30fa299638..2847d4098c 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
+++ b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
@@ -75,8 +75,8 @@
 				read-only;
 			};
 
-			eeprom: partition@ff0000 {
-				label = "EEPROM";
+			art: partition@ff0000 {
+				label = "art";
 				reg = <0xff0000 0x010000>;
 				read-only;
 			};
@@ -88,5 +88,5 @@
 	status = "okay";
 
 	qca,disable-5ghz;
-	mtd-cal-data = <&eeprom 0x1000>;
+	mtd-cal-data = <&art 0x1000>;
 };
diff --git a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
index ee42498af1..cf24aba5aa 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
+++ b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
@@ -103,8 +103,8 @@
 				read-only;
 			};
 
-			eeprom: partition@7f0000 {
-				label = "EEPROM";
+			art: partition@7f0000 {
+				label = "art";
 				reg = <0x7f0000 0x010000>;
 				read-only;
 			};
@@ -115,9 +115,9 @@
 &wmac {
 	status = "okay";
 
-	mtd-cal-data = <&eeprom 0x1000>;
+	mtd-cal-data = <&art 0x1000>;
 };
 
 &eth0 {
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 };
diff --git a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
index 629899e1a2..ded95f3a18 100644
--- a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
+++ b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
@@ -64,8 +64,8 @@
 				read-only;
 			};
 
-			eeprom: partition@ff0000 {
-				label = "EEPROM";
+			art: partition@ff0000 {
+				label = "art";
 				reg = <0xff0000 0x010000>;
 				read-only;
 			};
@@ -79,13 +79,13 @@
 
 &eth0 {
 	status = "okay";
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 	phy-handle = <&swphy4>;
 };
 
 &eth1 {
 	status = "okay";
-	mtd-mac-address = <&eeprom 0x6>;
+	mtd-mac-address = <&art 0x6>;
 
 	gmac-config {
 		device = <&gmac>;
@@ -94,5 +94,5 @@
 
 &wmac {
 	status = "okay";
-	mtd-cal-data = <&eeprom 0x1000>;
+	mtd-cal-data = <&art 0x1000>;
 };
diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
index 4f77661fbd..8248e060c5 100644
--- a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
+++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
@@ -21,6 +21,6 @@
 &eth0 {
 	status = "okay";
 
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 	phy-handle = <&phy4>;
 };
diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
index 3a6c0cd3fa..5a0cf4bade 100644
--- a/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
+++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
@@ -25,6 +25,6 @@
 &eth0 {
 	status = "okay";
 
-	mtd-mac-address = <&eeprom 0x0>;
+	mtd-mac-address = <&art 0x0>;
 	phy-handle = <&phy0>;
 };
diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
index bb20caba47..bfad3ff306 100644
--- a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
+++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
@@ -104,8 +104,8 @@
 				read-only;
 			};
 
-			eeprom: partition@ff0000 {
-				label = "EEPROM";
+			art: partition@ff0000 {
+				label = "art";
 				reg = <0xff0000 0x010000>;
 				read-only;
 			};
@@ -116,5 +116,5 @@
 &wmac {
 	status = "okay";
 
-	mtd-cal-data = <&eeprom 0x1000>;
+	mtd-cal-data = <&art 0x1000>;
 };
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
index f128e8759f..258efc3bf4 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-ath10k-caldata
@@ -12,6 +12,15 @@ case "$FIRMWARE" in
 	case $board in
 	comfast,cf-wr650ac-v1|\
 	comfast,cf-wr650ac-v2|\
+	ubnt,unifiac-lite|\
+	ubnt,unifiac-lr|\
+	ubnt,unifiac-mesh|\
+	ubnt,unifiac-mesh-pro|\
+	ubnt,lap-120|\
+	ubnt,nanobeam-ac|\
+	ubnt,nanostation-ac|\
+	ubnt,nanostation-ac-loco|\
+	ubnt,unifiac-pro|\
 	yuncore,a770)
 		caldata_extract "art" 0x5000 0x844
 		;;
@@ -101,17 +110,6 @@ case "$FIRMWARE" in
 		caldata_extract "art" 0x5000 0x844
 		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary info 0x8) +1)
 		;;
-	ubnt,unifiac-lite|\
-	ubnt,unifiac-lr|\
-	ubnt,unifiac-mesh|\
-	ubnt,unifiac-mesh-pro|\
-	ubnt,lap-120|\
-	ubnt,nanobeam-ac|\
-	ubnt,nanostation-ac|\
-	ubnt,nanostation-ac-loco|\
-	ubnt,unifiac-pro)
-		caldata_extract "EEPROM" 0x5000 0x844
-		;;
 	esac
 	;;
 "ath10k/pre-cal-pci-0000:00:00.0.bin")
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
