Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C897414A4C1
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 14:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=05PDyQsnuaF0PLKbQG/WSWCvhXQ5n/RE0a8P72FLXKM=; b=dD74GXi2W7/CjK
	mDrp6kfDEFqTApTv8sO2001Xf1xCoCWXDEw3ZHrlLloVgHIhJ9PBTt/Daecoa6J0PvXeNYrFCqrIh
	6C3s1+B0wiZ76bPTSSwEZeGaahesEJ+PgVQzwcmGfZUmn7BqDuLRnEWPm5raFYToymyinOqP84ew8
	I/neXO/46Nqa9r9abV51FO4NvVXrkjnQ76dGzaIl1nsLNMRPKvLb0fUSvStDYdEhqoRcOkbP7U9au
	35zl59Jj1V4Z1oXtu+nylmKDHwpN4gQK3TSC8WI8IZuPnz+UVAmbNrD7ov3I+2ZJrMFzpJRYOdQBd
	8iykD1lVN/zf97znI1nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4Hu-0006Ey-DQ; Mon, 27 Jan 2020 13:18:46 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4Hl-0006DQ-LR
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 13:18:40 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MAP77-1iklTH3bmF-00Bwyx for <openwrt-devel@lists.openwrt.org>; Mon, 27
 Jan 2020 14:18:32 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 Jan 2020 14:15:56 +0100
Message-Id: <20200127131556.1696-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:Yi3UCOX22v/KzS50z2OzBt2djekXSsAP2LF1Z6NL0oU1GHQW3/s
 2O5gfya1gOBTmlsvAcTsze3IsZTY05gV9uUiBvjT8rUHXGfw6+WtuWs8OVL1eyXn8wKwInq
 nkd5+BSj/XH0jEZWFDKgmVdFBy4BdKpaHM8AMRyWcwR8AuaISlBJ3TdxsHgDSI1d7RqaGH+
 th1ql9vCYm8dur6qrh2Kw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m83WTW5VoZo=:xSQK5d4/LgOG7yg7cWJlW/
 EIlVqeaN1G11SflZbDYvbRBx+g2eoMMT9VUjDFa3deDBQaNAyswh/3n+2vuOCQOcBQTq4akXv
 eY2+x7Uet/BKScYEDRkjygLhk57nRk7dZQpDK60acS1OOZ7IOxVNKgsUjBWEHMaHipZD0sBU+
 vuJSSnfhaDhAAqTlEkuhS56DAfEXQFSzYE47XJEq7uK1wpiroVZMbLRUtzklQS54Rc91+WD7P
 K9RL3xfKfIg9P7sW4Joh81RtJyj89bA1daZ9Qtdc3uHxYIfCUFOSSO4/t9iBKNjE5IyrCUy91
 qiZDnZr3oYoZxOuJG2g5AQRiuCG7zRuj/SU5N3OgqHgZ+cm+rPNKT9gfZ0wd2IMZfegO0gYoV
 akqZ/KQBbf9esvrilcgLa6kig5njyGuQen94ufY5no+S0mAVxU+dVE8lRH3I7FnB6ktcTh4oq
 VEIi2l0UoiCTzeFZcqJwsEaoKQ1UvFyxBk03ZTmNgdsbxsXxQKfcijAhkGIo0FAnaIXRIaFHF
 GIXzpKT7sC1HaiC8MGi04GPk/ak4ntx7Eel0xHCvN5x5uLeE7eVEnTt25QzFWOCuFHGgbKJfR
 /hz2JPPh9QWBlUFfayPJ1xCk6LYFbGCGq8+CHSTKjWlpExb/KzolbEE/KqL4F1Qa6h1fVx+rr
 s/5EHsNOKj24h3BZLleQFChzlJddWXtmKczDt/KSSyMvQTO8FgtTDQhDdP777ymku+0wlDEzh
 7/HKI9ROuhBjvSLZ1SuLB1rZLVnF2vwEzFg8g+HkKZfRb9ORJLR/IzNumWAB4VIVTxskBEObj
 WWaUh0+BIxt0AXpwG7+iROTPXquekyM/hfgnxq5PDdLqmX62rRlyo5DR/J3N6sjNtKiGr+p
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_051837_987972_E7BECEA6 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: harmonize ethernet-phy naming scheme
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

A minority of ethernet-phy definitions seems to use numbers in label,
name and reg property relatively random. This patch aligns their
use to have the same numeric value for all of them.

While at it, improve order of properties/add newlines for the ethX
nodes where necessary.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts  | 4 ++--
 target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts | 4 ++--
 target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts     | 7 ++++---
 target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi        | 9 ++++++---
 target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts        | 8 +++++---
 target/linux/ath79/dts/qca9563_tplink_re450-v2.dts      | 8 ++++++--
 6 files changed, 25 insertions(+), 15 deletions(-)

diff --git a/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts b/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts
index 804b71170e..3e6dd2daea 100644
--- a/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts
+++ b/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts
@@ -110,7 +110,7 @@
 &mdio0 {
 	status = "okay";
 
-	phy0: ethernet-phy@c {
+	phy12: ethernet-phy@c {
 		reg = <0xc>;
 		phy-mode = "mii";
 	};
@@ -122,7 +122,7 @@
 	phy-mode = "mii";
 	mtd-mac-address = <&uboot 0x1fc00>;
 
-	phy-handle = <&phy0>;
+	phy-handle = <&phy12>;
 };
 
 &wmac {
diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts b/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts
index 6ac79b0c1e..eac2a4268a 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts
+++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts
@@ -17,7 +17,7 @@
 	phy4-mii-enable;
 	phy-mask = <0x23>;
 
-	phy4: ethernet-phy@0 {
+	phy0: ethernet-phy@0 {
 		reg = <0>;
 		phy-mode = "mii";
 	};
@@ -27,7 +27,7 @@
 	status = "okay";
 
 	phy-mode = "mii";
-	phy-handle = <&phy4>;
+	phy-handle = <&phy0>;
 
 	gmac-config {
 		device = <&gmac>;
diff --git a/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts b/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts
index a797750e7e..f802de271e 100644
--- a/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts
+++ b/target/linux/ath79/dts/qca9558_tplink_re350k-v1.dts
@@ -88,7 +88,7 @@
 		gpios = <&gpio 23 GPIO_ACTIVE_HIGH>,
 			<&gpio 18 GPIO_ACTIVE_HIGH>;
 
-		phy0: ethernet-phy@4 {
+		phy4: ethernet-phy@4 {
 			reg = <4>;
 
 			phy-mode = "rgmii-rxid";
@@ -101,9 +101,10 @@
 &eth0 {
 	status = "okay";
 
-	mtd-mac-address = <&config 0x10008>;
+	phy-handle = <&phy4>;
 	pll-data = <0x9e000000 0x80000101 0x80001313>;
-	phy-handle = <&phy0>;
+
+	mtd-mac-address = <&config 0x10008>;
 
 	gmac-config {
 		device = <&gmac>;
diff --git a/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi b/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi
index 17e172d547..8827990eb5 100644
--- a/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi
+++ b/target/linux/ath79/dts/qca9558_tplink_rex5x.dtsi
@@ -93,7 +93,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		phy0: ethernet-phy@4 {
+		phy4: ethernet-phy@4 {
 			reg = <4>;
 			reset-gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
 		};
@@ -167,13 +167,16 @@
 
 &eth0 {
 	status = "okay";
-	mtd-mac-address = <&info 0x8>;
+
+	phy-handle = <&phy4>;
 	pll-data = <0xa6000000 0x00000101 0x00001616>;
-	phy-handle = <&phy0>;
+
+	mtd-mac-address = <&info 0x8>;
 };
 
 &wmac {
 	status = "okay";
+
 	mtd-cal-data = <&art 0x1000>;
 	mtd-mac-address = <&info 0x8>;
 	mtd-mac-address-increment = <(-1)>;
diff --git a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
index 5a896d52bc..4ad65c31e8 100644
--- a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
+++ b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
@@ -200,8 +200,8 @@
 &mdio0 {
 	status = "okay";
 
-	phy0: ethernet-phy@0 {
-		reg = <17>;
+	phy17: ethernet-phy@11 {
+		reg = <0x11>;
 		phy-mode = "rgmii-id";
 	};
 
@@ -236,7 +236,8 @@
 	status = "okay";
 
 	pll-data = <0xa6000000 0x00000101 0x00001616>;
-	phy-handle = <&phy0>;
+	phy-handle = <&phy17>;
+
 	fixed-link {
 		speed = <1000>;
 		full-duplex;
@@ -248,6 +249,7 @@
 
 	pll-data = <0x03000101 0x00000101 0x00001616>;
 	phy-handle = <&phy1>;
+
 	fixed-link {
 		speed = <1000>;
 		full-duplex;
diff --git a/target/linux/ath79/dts/qca9563_tplink_re450-v2.dts b/target/linux/ath79/dts/qca9563_tplink_re450-v2.dts
index 464be73449..28fefe224d 100644
--- a/target/linux/ath79/dts/qca9563_tplink_re450-v2.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_re450-v2.dts
@@ -103,7 +103,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		phy0: ethernet-phy@4 {
+		phy4: ethernet-phy@4 {
 			reg = <4>;
 			device_type = "ethernet-phy";
 			reset-gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
@@ -125,6 +125,7 @@
 
 &spi {
 	status = "okay";
+
 	num-cs = <1>;
 
 	flash@0 {
@@ -178,12 +179,15 @@
 
 &eth0 {
 	status = "okay";
+
+	phy-handle = <&phy4>;
+
 	mtd-mac-address = <&info 0x8>;
-	phy-handle = <&phy0>;
 };
 
 &wmac {
 	status = "okay";
+
 	mtd-cal-data = <&art 0x1000>;
 	mtd-mac-address = <&info 0x8>;
 };
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
