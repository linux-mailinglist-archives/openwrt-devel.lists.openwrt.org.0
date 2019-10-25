Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14301E4ABD
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 14:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kqbu4flyS0oyIRvvgLeDLZT/Od1vfm5hpaCD/lgBVaM=; b=Mp5O+B2JfohrzsMfumjU6VBlyo
	n1vA0ufTJ5rhRAARP9O33Fznb3zT2GyhjpYzipC81qFEOV4rcpsu+fsBc0Ducb3spVc6wIPUSPkOa
	gKplsv7gG4INLI1qyHCrOyH67VaFCvzj8nzPAYKCrWJSqMfHkDffkngQT+EpJv4bAPoyTpowryceZ
	d2zqAEjnoC6K1zvPxhwwgQ3MPsLko7xpxDdSCBpj6QI3nBF0uJ8vPB2CetolF8WuuN/gQXTOAJuLn
	+QVsOsnS77fkW4tdPGM21WHQVtobMTrVA1I+PzjBGSxneqoZLSfqwEAvVq1LwjHzJqxb/GoLADEff
	/SEVb3MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyNC-0007Xi-Rc; Fri, 25 Oct 2019 12:07:18 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyMo-0007JL-2b
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 12:06:55 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mw9Lw-1i7GOc0aPc-00s9nG for <openwrt-devel@lists.openwrt.org>; Fri, 25
 Oct 2019 14:06:50 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 25 Oct 2019 14:06:45 +0200
Message-Id: <20191025120645.3359-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025120645.3359-1-freifunk@adrianschmutzler.de>
References: <20191025120645.3359-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qUh4jzRdvm2KhDew3cEL59+AP2RqQ+PjV10rSKM0j4P3OJCYll8
 LgYAYMde8reaTWBg8WqysuMDbmRFrj6LcDJeHimdXMRw1PVjIosoDpSohauZTMap24TbrJv
 oJ+KbN9o/VCXUF4qdcGyqd63KktpBY/MswqAskqXtKo5dgib/ibdWC97EEg/TezFpzMaUUN
 tSSVIXbwTg7fuWiylKbOA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cE9v6ZpYNKI=:9fBk35i/suvndbGR1axG+E
 LUlZgdpCkdVkb+6E3kRjGoe2EsNI3HWmqW7HV22aKBB6VofuzJpKBjB26SfHQ6UyhcGJrkQmY
 nCWn7smm1zcMcSgjWHMapjfUTsiAGXbHIKeXV5wi/anOKOaBc5o15nXmWRUh7cp+iLmox4yr1
 IO3oGfVi832IGGRRzJe3VJLaA3V2iNrvAJZS5YbiYMEIVzp2w6E/fvTL1AphhOsY1AEiqMuVr
 vaazmUSQgLURtM8YTJjY4pWkNmxVRjBHHU1DEfCOAVaJaEsyM6dp0zK/TpibmMiCb1HfEmZiQ
 evYdboVmvczryz+4LG+Hy+k5kA+xHNk9zQVRvKmnnqdpN913L+li6jqeQSFxgYumS2ANrDqs1
 nw1NpNQgYdsFp9ho00pvcNY/mbXBfoABI9UXbj520jJtMoW+kt/eIgLWv3GFnJv4u/GLH2oA9
 +ebg97piXbrtPz6tjhHVDZK3GZUp5+5t+/4Uwk8ahy3MoVMQq2a9ryQyJ1twOwZtz3Qfj7OCn
 DGZxPtP8LM5eixFqaJOmpOw45QtloqiorVJUlaPWQhc+IDEJ7MhqiT75G03qCb/LWe+G6QyQt
 knQmqwwQWzMWcxk9XTzszPixwNcUQYPTmqngFM4sngn0zhGNNZ55Ha/FPNQ89BGkaZ7h1D/pX
 np+lrrl1W5IFIXT0rmaTPJ7ieNbB6OhEWZRsGvR6zBXOBGpNccciKM3w7/MWDHCtIb2vcf4so
 OB30VGuQ7aFw1un1mNCUzk7inWtnMawNBV+fPXvr9Cx1SlGz4HYogKcOzAoLYh3CQ5zY7wzMe
 7C2LuY0YyBGZmYyTSikul3w1wczSO7cHM/39wpQXLnWCX32h5mHDLDnE3c+BKXh7fRaqLr/pY
 t7GRoDvpvZDZ9zHmGFkaxv/hHsh7Sy1Sn4bsU1Y2Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_050654_411290_C4F1349D 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: remove redundant mtd-eeprom in
 mt76x8 DTS files
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

In mt7628an.dtsi, calibration data for wmac is already defined:
mediatek,mtd-eeprom = <&factory 0x0>;

Thus, this patch removes redundant entries of this property in
derived DTS files.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

Question:
While this is mediatek, several DTS files contained
ralink,mtd-eeprom = <&factory 0x0>;

I also removed those, as this is mt76. Can somebody point me to
where ralink,mtd-eeprom and mediatek,mtd-eeprom are defined?
---
 target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts  | 1 -
 target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts     | 1 -
 target/linux/ramips/dts/mt7628an_glinet_vixmini.dts          | 2 --
 target/linux/ramips/dts/mt7628an_netgear_r6120.dts           | 1 -
 target/linux/ramips/dts/mt7628an_skylab_skw92a.dts           | 1 -
 target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts     | 1 -
 target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi       | 1 -
 target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts | 1 -
 8 files changed, 9 deletions(-)

diff --git a/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts b/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
index ffb8dbac62..35665172c5 100644
--- a/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
+++ b/target/linux/ramips/dts/mt7628an_alfa-network_awusfree1.dts
@@ -163,5 +163,4 @@
 
 &wmac {
 	status = "okay";
-	mediatek,mtd-eeprom = <&factory 0x0>;
 };
diff --git a/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts b/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
index 48dcfc0e5c..979f5d2bc9 100644
--- a/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
+++ b/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
@@ -90,7 +90,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x0>;
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
index b2e82c64b5..46d74b7651 100644
--- a/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
+++ b/target/linux/ramips/dts/mt7628an_glinet_vixmini.dts
@@ -63,8 +63,6 @@
 
 &wmac {
 	status = "okay";
-
-	ralink,mtd-eeprom = <&factory 0x0>;
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7628an_netgear_r6120.dts b/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
index 7fd8924145..12eb638df3 100644
--- a/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
+++ b/target/linux/ramips/dts/mt7628an_netgear_r6120.dts
@@ -133,7 +133,6 @@
 
 &wmac {
 	status = "okay";
-	mediatek,mtd-eeprom = <&factory 0x0>;
 };
 
 &ethernet {
diff --git a/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts b/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts
index b33b27e80d..addcabd7f9 100644
--- a/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts
+++ b/target/linux/ramips/dts/mt7628an_skylab_skw92a.dts
@@ -59,7 +59,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x0>;
 };
 
 &spi0 {
diff --git a/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts b/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts
index 17b8ff4d0f..93869381cf 100644
--- a/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts
+++ b/target/linux/ramips/dts/mt7628an_tplink_tl-wr840n-v5.dts
@@ -91,7 +91,6 @@
 &wmac {
 	status = "okay";
 	mtd-mac-address = <&factory 0xf100>;
-	mediatek,mtd-eeprom = <&factory 0x0>;
 };
 
 &ethernet {
diff --git a/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi b/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi
index ab6bd6bf00..3416714d96 100644
--- a/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi
+++ b/target/linux/ramips/dts/mt7628an_unielec_u7628-01.dtsi
@@ -126,7 +126,6 @@
 
 &wmac {
 	status = "okay";
-	ralink,mtd-eeprom = <&factory 0x0>;
 };
 
 &pinctrl {
diff --git a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
index 538827b03f..8b069d4370 100644
--- a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
+++ b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
@@ -184,7 +184,6 @@
 
 &wmac {
 	status = "okay";
-	mediatek,mtd-eeprom = <&factory 0x0>;
 };
 
 &pcie {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
