Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593F214A64D
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 15:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Eu19Bl9Xx97Jj6eoKnl0k+Hp1VpN9rH8u5jJxvPPbVc=; b=aluTH5TfjtozfV
	G5ugaXFSF7kGOjz4S1msdDwHaVfy2rC4BOD6NDgba4i5Kv4NRd3muksrpeh/w5ONRflf2nWOu+4Go
	I8D1Slgo8OXHvpQaPgdzKWfXJJku8kib6AS1mXghlzqgfCFrbKIxINfRgVMRh7bBfIfMkJ6U8JlMr
	NCBPnUSazLd2OcztEfRA74JxrBGq0dv5jKU/B25O4/xjxdI4yyXdCbPVy0Af9BgJZrWLQBa4N/ZJB
	JjMctrGl5DlJuU0W84209jCccUL9b+qQlRyoGoSGMwuF671yYjtUeCldKaIEHMJKab/C5UAxFS51B
	s0fGe/0TtmTCAda06qlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5WE-00053j-RQ; Mon, 27 Jan 2020 14:37:38 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5W5-00052E-Uv
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 14:37:31 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MD9Kj-1inWnG2DCL-0097Kt for <openwrt-devel@lists.openwrt.org>; Mon, 27
 Jan 2020 15:37:27 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 Jan 2020 15:36:32 +0100
Message-Id: <20200127143632.2131-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:wliYPt2lLlu1216o7IS5HG1ibT3Fh+wxACaFg9Az5t8AAQSEla/
 Mds6QP/a1/gM1gaMdV3XYs283I+cBSLJAZXHppBoWWyqVDFIANkPpocp8yskwMtvWzof8e/
 C4p1O8rHZp4NrSCdwFzX1MRLbljRsjoCvdTXskV+CkIgfxtuqZUIZAza3evhz1P8yKhkSer
 fCLXNDZhmqoqJyISt7UkA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MvjeJHgzOO0=:+9qt/pSbYsmvhq/FkbIOKL
 hphIi09I3AdoLRcwA8rcZrGXG4IOH8feQ4ZunxA6hrtHFe3KHk+RMtMnu1xI14AOaobWa89Ih
 uppOIk13PncrKlF4OhjmptHlEi89/wiKM5Wzo32+hd/u4Pp/swbe0mEewIamkTi2srcT9bCPk
 oYZCUmIraikpfvQnrt5GEdssUe9YwTUB4HUvV24WQVd+zcrHYhcbzh4crUIOOE9UPvKxVE/QV
 4i/kqtuIEa6vhfa8mFnDRPnm9F6NcpLGib+kfKfIPadthBBhrOTlFgSh5OAPs7n432eKtvaj0
 Fa+5YAssyn5grgMu/2OxBp2Py1O3OhaIIaYQJBpamNjBdyq0YkxEWDYP0V+ROrHkXvKodEG+C
 JscnWgG5IOm1bttB+1AMwFKTtjzvmYdQhBCt79gLH9xay4oJaRyFIRog/FAeO9l1ivFejUKGG
 OjPPPplzl0KFVi+d3QqNd8SlWkmH2PQQQyIE0v7GJ+WzC/O9FL4bCVyWH2xzZvHMqZp4GcdWT
 dNm7Um5ATUntOnQY+Vg/eWLzVbvQ3X4NayunaFd4oVyc4qdxjO2hq0YgJnmWRgRcMMv9DKbYY
 p/72mPtP8AMzyy2wPsgZSq6EI/tNS+vUF4iD4ENIUQV7TVR42zKJcPaExTRJMMLzQqtghuD2n
 do72p1x11pbFeMkn/4vDRlKAQ1EZPV3yYysgHEqH2GK3VMw+9bjMul9vYahHtdhtctFb5MeNj
 45VYGQHc//96FE3eHRAFTFjxfaU/PahTSFXqNY3txmcZMqGIhCGCod1MN4OuCwV8jHYT+JBNU
 eiLDGP1HVKrWDq86cewPRBOOxP0IHXtej+aF/Rf4FDA5dnUGfM2jKVOX1eUua9Jh3lc8JyT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_063730_286163_E70C9475 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: do not set inherited phy-mode/status
 properties again
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

There are several cases where phy-mode and status properties are
set again in DTS(I) files although those were set to the same values
in parent DTSI files already. Remove those cases (and thus also stop
their proliferation by copy/paste).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar7240.dtsi                      | 1 -
 target/linux/ath79/dts/ar7241.dtsi                      | 1 -
 target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts  | 1 -
 target/linux/ath79/dts/ar9330.dtsi                      | 1 -
 target/linux/ath79/dts/ar9341.dtsi                      | 4 ----
 target/linux/ath79/dts/ar9341_pcs_cr3000.dts            | 6 ++----
 target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts | 1 -
 target/linux/ath79/dts/qca953x.dtsi                     | 2 --
 target/linux/ath79/dts/qca9561_avm_fritz4020.dts        | 1 -
 target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts | 1 -
 target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi   | 1 -
 target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi   | 1 -
 target/linux/ath79/dts/qca956x.dtsi                     | 2 --
 target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi      | 1 -
 14 files changed, 2 insertions(+), 22 deletions(-)

diff --git a/target/linux/ath79/dts/ar7240.dtsi b/target/linux/ath79/dts/ar7240.dtsi
index 268c8780f4..5382a710f9 100644
--- a/target/linux/ath79/dts/ar7240.dtsi
+++ b/target/linux/ath79/dts/ar7240.dtsi
@@ -65,7 +65,6 @@
 
 	resets = <&rst 9>;
 	reset-names = "mac";
-	phy-mode = "mii";
 	phy-handle = <&swphy4>;
 };
 
diff --git a/target/linux/ath79/dts/ar7241.dtsi b/target/linux/ath79/dts/ar7241.dtsi
index 8f0eb3b270..59fcd05f5e 100644
--- a/target/linux/ath79/dts/ar7241.dtsi
+++ b/target/linux/ath79/dts/ar7241.dtsi
@@ -46,7 +46,6 @@
 
 	resets = <&rst 9>;
 	reset-names = "mac";
-	phy-mode = "mii";
 	phy-handle = <&swphy4>;
 };
 
diff --git a/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts b/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts
index 3e6dd2daea..e55affdf20 100644
--- a/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts
+++ b/target/linux/ath79/dts/ar9132_tplink_tl-wa901nd-v2.dts
@@ -119,7 +119,6 @@
 &eth0 {
 	status = "okay";
 
-	phy-mode = "mii";
 	mtd-mac-address = <&uboot 0x1fc00>;
 
 	phy-handle = <&phy12>;
diff --git a/target/linux/ath79/dts/ar9330.dtsi b/target/linux/ath79/dts/ar9330.dtsi
index 64c135405b..042b70e0bb 100644
--- a/target/linux/ath79/dts/ar9330.dtsi
+++ b/target/linux/ath79/dts/ar9330.dtsi
@@ -170,7 +170,6 @@
 
 	resets = <&rst 9>;
 	reset-names = "mac";
-	phy-mode = "mii";
 	phy-handle = <&swphy4>;
 };
 
diff --git a/target/linux/ath79/dts/ar9341.dtsi b/target/linux/ath79/dts/ar9341.dtsi
index a7c5ac6262..10161f32ac 100644
--- a/target/linux/ath79/dts/ar9341.dtsi
+++ b/target/linux/ath79/dts/ar9341.dtsi
@@ -17,10 +17,6 @@
 	interrupts = <2>;
 };
 
-&eth0 {
-	phy-mode = "mii";
-};
-
 &eth1 {
 	status = "okay";
 };
diff --git a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
index 222516f9b7..272b0909b5 100644
--- a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
+++ b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
@@ -150,13 +150,11 @@
 };
 
 &eth1 {
-	status = "okay";
-
 	phy-handle = <&swphy4>;
-	mtd-mac-address = <&art 0x0>;
-	phy-mode = "gmii";
 	pll-data = <0x06000000 0x00000101 0x00001616>;
 
+	mtd-mac-address = <&art 0x0>;
+
 	gmac-config {
 		device = <&gmac>;
 		switch-phy-swap = <1>;
diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts b/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts
index eac2a4268a..7ca61fe27a 100644
--- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts
+++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-m-xw.dts
@@ -26,7 +26,6 @@
 &eth0 {
 	status = "okay";
 
-	phy-mode = "mii";
 	phy-handle = <&phy0>;
 
 	gmac-config {
diff --git a/target/linux/ath79/dts/qca953x.dtsi b/target/linux/ath79/dts/qca953x.dtsi
index f127d4d01b..73a6ad91e5 100644
--- a/target/linux/ath79/dts/qca953x.dtsi
+++ b/target/linux/ath79/dts/qca953x.dtsi
@@ -231,8 +231,6 @@
 
 	reset-names = "mac";
 	resets = <&rst 9>;
-
-	phy-mode = "mii";
 };
 
 &mdio1 {
diff --git a/target/linux/ath79/dts/qca9561_avm_fritz4020.dts b/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
index 6412252590..75cc5761ba 100644
--- a/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
+++ b/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
@@ -153,7 +153,6 @@
 &eth0 {
 	status = "okay";
 
-	phy-mode = "mii";
 	phy-handle = <&swphy0>;
 
 	gmac-config {
diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts b/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts
index f894fc8672..e7b30df81f 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c25-v1.dts
@@ -181,7 +181,6 @@
 &eth0 {
 	status = "okay";
 
-	phy-mode = "mii";
 	phy-handle = <&swphy4>;
 
 	mtd-mac-address = <&info 0x8>;
diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
index 00cd413bd2..c8e4710b39 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
@@ -136,7 +136,6 @@
 &eth0 {
 	status = "okay";
 
-	phy-mode = "mii";
 	phy-handle = <&swphy0>;
 
 	mtd-mac-address = <&mac 0x8>;
diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi b/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi
index cee30a13b6..9b51ebf689 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c6x.dtsi
@@ -88,7 +88,6 @@
 &eth0 {
 	status = "okay";
 
-	phy-mode = "mii";
 	phy-handle = <&swphy4>;
 
 	mtd-mac-address = <&mac 0x8>;
diff --git a/target/linux/ath79/dts/qca956x.dtsi b/target/linux/ath79/dts/qca956x.dtsi
index ee645aa02f..03541b86fb 100644
--- a/target/linux/ath79/dts/qca956x.dtsi
+++ b/target/linux/ath79/dts/qca956x.dtsi
@@ -307,8 +307,6 @@
 	resets = <&rst 13>;
 	reset-names = "mac";
 
-	status = "disabled";
-
 	fixed-link {
 		speed = <1000>;
 		full-duplex;
diff --git a/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi b/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi
index fb5941657d..aeb5525308 100644
--- a/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi
+++ b/target/linux/ath79/dts/tp9343_tplink_tl-wr94x.dtsi
@@ -73,7 +73,6 @@
 &eth0 {
 	status = "okay";
 
-	phy-mode = "mii";
 	phy-handle = <&swphy4>;
 
 	mtd-mac-address = <&uboot 0x1fc00>;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
