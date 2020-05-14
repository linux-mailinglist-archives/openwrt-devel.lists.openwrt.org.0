Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A251D3212
	for <lists+openwrt-devel@lfdr.de>; Thu, 14 May 2020 16:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PzuJLfwBmXifjr32EEXaQdcGVDC5lh3e66a6qC3gO8g=; b=PDWpLTMGSMRP79
	A4y3jmRH/xoaW6Q1W7dS1TgiPa11eZXl4xABzw6F/mPYW+kjBp0Tf9GzAE4ghYAv/WavzWoriZ4+u
	fuIduUoX/1FvlcbY5JH0iqPalY5leUlgZXKPtZ18DLUcP926tuGGmj8R29cjydHjeYgM/N01dZ50C
	EkrAtranieVpmRBHoDbjZk7Vze/XwGDkuHTKU882WV81wR+ehlfm3llx+szwHfPrcVD8Lo8o5HEpS
	v7jCUSDhCMkDcY3uTBOTyzJZzTsl0kaZUcrlITx5PnI2+bJnsDRlG7w2GGLN8hj6WPyc3AVeayr9c
	aTGdwXkkQP02WdDxMwpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZETO-0001yT-AK; Thu, 14 May 2020 14:04:30 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZET6-0001st-0r
 for openwrt-devel@lists.openwrt.org; Thu, 14 May 2020 14:04:15 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mdvyi-1izcCP3mBq-00b3VS for <openwrt-devel@lists.openwrt.org>; Thu, 14
 May 2020 16:04:08 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 14 May 2020 16:02:51 +0200
Message-Id: <20200514140252.42880-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:oqFYJMyKPwB8Sgy3mshY3Wag7ZjLD9HqZ14DMQAqD4HDOvLshxE
 rKcd2X3qzzWgnzBB9INTk8mgNrEwclIYFlze/2ZfxUHdm21cE3RM25EO0KuH10i58bHEvVL
 NuKLSR/2q3nHHBK3sJ1M2pTuphKv01F1P+lhu6jGlBLNBAnn47hfiZjg8GDKmlAE4bj/Pet
 laxB/UoZz6JR0xIyRy4yw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VtnNF9qVvzY=:cx9wccAYpLBs3IsL8KovOo
 ikXsxfpTLnHD8TzGrOkunxCNPnjweuViqmcxE+VNgz9Cx5O/c3hDRvBj729SF0ADUpVXRav0t
 0HacTmMUrvHaJCJI9tCkTA8AvmWLt7zzKFX5soXKsXY7Ca9e6DzTa+rTiEeA9onUUDTdk3DBH
 ANOyP98yOxs04IzerVRMoJOSH5SeC6kzEgEJyNH4D2WQ6raxKsts3RdvMypBD6tZimLYJ6nwA
 M+eLfrf90R0LjIBIdX0Ur5FkdCgUHECPswO1ORfHCAg4Khkm1v1hkaB/XGagQ3p0vvHX2p4UN
 2yzKyAhQTQ7lf+OSiG6eltZ0aC/D1/lsDYxhSmWO7LQV7rhO44K1H1mT/K7wUGCIejfsPtEiU
 RMERMaOTA3T55oPCicsNgvVvcXNkKmxeWjTZSBTZWrj0n84H8qzFj9olNqYnf8Xte/gbmt9Nm
 f1/VYsLebBq/nxJqkCaMZqCu8q6wm1g6hCTOqtFHCIh1LyBR78I2b0QCdWoNGKIYNTNWxVwXN
 XY46n6Ch9o+mjJW0LrlYeLcyxXkgF6+xGgt5NBFtvv5w4P90paEY2uRspivOuaxujif2cktAJ
 7HL0pMfq3fY4/5RtS9aWSksn6QmzaWFdx8fhbii3Go0SkY6Z4GhNee8kzLM+oLoWm6kc5p52q
 oN4VjpY5UXDACY2l//7bRcecvBVzbHmK0sj9iMK1kiDlFj2reWfBVBw5VDl/OqEmoZLANjEHT
 Vs70gTA/5Lw9wAk55wWL5Tuc9+xPUAFH6+oeB8chImq9TITI47NIuZrguPhR4noyf9t/vsU6U
 2fCZyFpZC3PqtLGIQ9IrMr25NREwhnv3sHmjI1mX9Q6YFhiUzjqtAhgdfcybuwdOFar3vat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_070412_511447_EACE2FE9 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: mt7620: tidy up ethernet node
 in DTS files
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

This tidies up the ethernet node in mt7620 DTS files by:

- removing unnecessary status as it is not disabled
- reordering properties consistently
- adding empty lines to enhance readability

This should make comparison and reviewing new PRs based on C/P easier.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts         | 1 +
 target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts   | 6 ++++--
 target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts        | 1 +
 target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts      | 2 ++
 target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts        | 2 ++
 target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts          | 1 +
 target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts        | 1 -
 target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts        | 4 ++--
 target/linux/ramips/dts/mt7620a_dlink_dwr-960.dts           | 3 +--
 target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts          | 2 +-
 target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts     | 5 +++--
 target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts       | 5 +++--
 target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi         | 6 ++----
 target/linux/ramips/dts/mt7620a_engenius_esr600.dts         | 2 +-
 target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts        | 1 +
 target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts        | 1 +
 target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts         | 1 +
 target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts    | 5 ++---
 target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts           | 5 +++--
 target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi          | 2 ++
 target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts      | 1 +
 target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts      | 1 +
 target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts          | 1 -
 target/linux/ramips/dts/mt7620a_lb-link_bl-w1200.dts        | 6 +++---
 target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dts        | 2 ++
 target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts       | 5 +++--
 target/linux/ramips/dts/mt7620a_linksys_e1700.dts           | 4 ++--
 target/linux/ramips/dts/mt7620a_microduino_microwrt.dts     | 2 ++
 target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts          | 2 ++
 target/linux/ramips/dts/mt7620a_phicomm_k2g.dts             | 2 ++
 target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts         | 2 ++
 target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts        | 2 ++
 target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts        | 2 ++
 target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts          | 2 ++
 target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts         | 2 ++
 target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts       | 2 ++
 target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts      | 2 ++
 target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts      | 2 ++
 target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts      | 2 +-
 .../linux/ramips/dts/mt7620a_ralink_mt7620a-mt7530-evb.dts  | 2 +-
 .../linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts | 2 +-
 .../linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts   | 2 +-
 target/linux/ramips/dts/mt7620a_sanlinking_d240.dts         | 1 +
 target/linux/ramips/dts/mt7620a_sercomm_na930.dts           | 2 +-
 target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts     | 4 ++--
 target/linux/ramips/dts/mt7620a_tplink_archer.dtsi          | 2 ++
 target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts      | 2 ++
 target/linux/ramips/dts/mt7620a_youku_yk1.dts               | 2 ++
 target/linux/ramips/dts/mt7620a_yukai_bocco.dts             | 2 ++
 target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts    | 2 ++
 target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi      | 1 +
 target/linux/ramips/dts/mt7620a_zte_q7.dts                  | 1 +
 target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts     | 2 +-
 target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts            | 1 +
 target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts            | 1 +
 target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts         | 1 +
 target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts        | 3 ++-
 target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts        | 1 +
 target/linux/ramips/dts/mt7620n_kingston_mlw221.dts         | 1 +
 target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts          | 1 +
 target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi            | 1 +
 target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts       | 1 +
 target/linux/ramips/dts/mt7620n_wrtnode_wrtnode.dts         | 1 +
 target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts      | 1 +
 target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts        | 1 +
 target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts      | 1 +
 target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts    | 2 ++
 target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts  | 1 +
 target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts     | 1 +
 69 files changed, 107 insertions(+), 39 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts b/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts
index a65654e78b..2afaf52fd7 100644
--- a/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts
+++ b/target/linux/ramips/dts/mt7620a_aigale_ai-br100.dts
@@ -106,6 +106,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts b/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts
index 95bd9b57da..329d78f481 100644
--- a/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts
+++ b/target/linux/ramips/dts/mt7620a_alfa-network_ac1200rm.dts
@@ -80,10 +80,12 @@
 };
 
 &ethernet {
-	mtd-mac-address = <&factory 0x28>;
-	mediatek,portmap = "llllw";
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
+	mtd-mac-address = <&factory 0x28>;
+
+	mediatek,portmap = "llllw";
 };
 
 &gpio1 {
diff --git a/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts b/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts
index 878c720c39..c9ecf78573 100644
--- a/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts
+++ b/target/linux/ramips/dts/mt7620a_bdcom_wap2100-sk.dts
@@ -123,6 +123,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts b/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts
index c35abf241e..927a150743 100644
--- a/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts
+++ b/target/linux/ramips/dts/mt7620a_buffalo_whr-300hp2.dts
@@ -140,7 +140,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts b/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts
index e95daf9b34..fd36f160a4 100644
--- a/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts
+++ b/target/linux/ramips/dts/mt7620a_buffalo_whr-600d.dts
@@ -140,7 +140,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
index 9e60b42f71..8f6bf971ec 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dir-810l.dts
@@ -126,6 +126,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
index a01ef25bfa..17df95b374 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
@@ -155,7 +155,6 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
 
diff --git a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
index d795c06b50..c54c85c420 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
@@ -153,11 +153,11 @@
 };
 
 &ethernet {
-	status = "okay";
-	mediatek,portmap = "wllll";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &mdio_pins>;
 
+	mediatek,portmap = "wllll";
+
 	port@4 {
 		status = "okay";
 		phy-handle = <&phy0>;
diff --git a/target/linux/ramips/dts/mt7620a_dlink_dwr-960.dts b/target/linux/ramips/dts/mt7620a_dlink_dwr-960.dts
index 71ed648d41..ee8a48a08d 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dwr-960.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dwr-960.dts
@@ -91,10 +91,9 @@
 };
 
 &ethernet {
-	status = "okay";
-
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii2_pins &mdio_pins>;
+
 	mediatek,portmap = "wllll";
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts b/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
index ed98c605f8..6eab114fa5 100644
--- a/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
+++ b/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
@@ -112,9 +112,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+
 	mediatek,portmap = "llllw";
 
 	port@4 {
diff --git a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
index 1c9ffc8dfc..977f0aa356 100644
--- a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
+++ b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
@@ -138,10 +138,11 @@
 };
 
 &ethernet {
-	status = "okay";
-	mtd-mac-address = <&factory 0x4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+
+	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts b/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts
index d50a770968..966c47b465 100644
--- a/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts
+++ b/target/linux/ramips/dts/mt7620a_edimax_ew-7478apc.dts
@@ -123,10 +123,11 @@
 };
 
 &ethernet {
-	status = "okay";
-	mtd-mac-address = <&factory 0x4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+
+	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi b/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi
index 11cf9bb291..4f2745286d 100644
--- a/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi
+++ b/target/linux/ramips/dts/mt7620a_edimax_ew-747x.dtsi
@@ -115,13 +115,11 @@
 };
 
 &ethernet {
-	status = "okay";
-
-	mtd-mac-address = <&factory 0x4>;
-
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &mdio_pins &phy_reset_pins>;
 
+	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,mdio-mode = <1>;
 
 	phy-reset-gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
diff --git a/target/linux/ramips/dts/mt7620a_engenius_esr600.dts b/target/linux/ramips/dts/mt7620a_engenius_esr600.dts
index d7dbb1bfa4..92d9008c69 100644
--- a/target/linux/ramips/dts/mt7620a_engenius_esr600.dts
+++ b/target/linux/ramips/dts/mt7620a_engenius_esr600.dts
@@ -136,9 +136,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &mdio_pins>;
+
 	mtd-mac-address = <&iNIC_rf 0x4>;
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts
index 6fad06d116..f414e3108c 100644
--- a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts
+++ b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300a.dts
@@ -138,6 +138,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4000>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts
index 693a6bfa6f..281ba366f1 100644
--- a/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts
+++ b/target/linux/ramips/dts/mt7620a_glinet_gl-mt300n.dts
@@ -129,6 +129,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4000>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts b/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts
index 4e9616367a..a772bca605 100644
--- a/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts
+++ b/target/linux/ramips/dts/mt7620a_glinet_gl-mt750.dts
@@ -133,6 +133,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4000>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts b/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
index abc13ee7d0..e52a564213 100644
--- a/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
+++ b/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
@@ -122,12 +122,11 @@
 };
 
 &ethernet {
-	status = "okay";
-
-	mtd-mac-address = <&factory 0x4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
 
+	mtd-mac-address = <&factory 0x4>;
+
 	port@4 {
 		status = "okay";
 		phy-handle = <&phy4>;
diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts b/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
index 83a3a67ed0..8951044f63 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
@@ -71,10 +71,11 @@
 };
 
 &ethernet {
-	status = "okay";
-	mtd-mac-address = <&factory 0x4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &mdio_pins>;
+
+	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi b/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
index e3494f9cb6..0676c6f84b 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
@@ -111,7 +111,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts b/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts
index 1cc59e4bb6..60a67c6eac 100644
--- a/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts
+++ b/target/linux/ramips/dts/mt7620a_iodata_wn-ac1167gr.dts
@@ -139,6 +139,7 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &mdio_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts b/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts
index 098aaa007f..02f620fbf3 100644
--- a/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts
+++ b/target/linux/ramips/dts/mt7620a_iodata_wn-ac733gr3.dts
@@ -147,6 +147,7 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts b/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
index c1406503eb..b05a7a89b4 100644
--- a/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
+++ b/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
@@ -110,7 +110,6 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
 
diff --git a/target/linux/ramips/dts/mt7620a_lb-link_bl-w1200.dts b/target/linux/ramips/dts/mt7620a_lb-link_bl-w1200.dts
index a55550d969..641b5ad7b1 100644
--- a/target/linux/ramips/dts/mt7620a_lb-link_bl-w1200.dts
+++ b/target/linux/ramips/dts/mt7620a_lb-link_bl-w1200.dts
@@ -93,11 +93,11 @@
 };
 
 &ethernet {
-	status = "okay";
-
-	mtd-mac-address = <&factory 0x28>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii2_pins &mdio_pins>;
+
+	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "wllll";
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dts b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dts
index 2b98d6c55f..88c747e2d6 100644
--- a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dts
+++ b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1.dts
@@ -54,6 +54,8 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "llllw";
 };
diff --git a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts
index de01b480e5..60cd501aeb 100644
--- a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts
+++ b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts
@@ -78,10 +78,11 @@
 };
 
 &ethernet {
-	status = "okay";
-	mtd-mac-address = <&factory 0x28>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+
+	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "wllll";
 
 	port@4 {
diff --git a/target/linux/ramips/dts/mt7620a_linksys_e1700.dts b/target/linux/ramips/dts/mt7620a_linksys_e1700.dts
index ed74068c80..2eb3033b44 100644
--- a/target/linux/ramips/dts/mt7620a_linksys_e1700.dts
+++ b/target/linux/ramips/dts/mt7620a_linksys_e1700.dts
@@ -105,11 +105,11 @@
 };
 
 &ethernet {
-	status = "okay";
-	mtd-mac-address = <&factory 0x28>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
 
+	mtd-mac-address = <&factory 0x28>;
+
 	port@5 {
 		status = "okay";
 		mediatek,fixed-link = <1000 1 1 1>;
diff --git a/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts b/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts
index 037a8858f7..b432bcf9f1 100644
--- a/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts
+++ b/target/linux/ramips/dts/mt7620a_microduino_microwrt.dts
@@ -89,7 +89,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts b/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts
index 4a2006da07..9992bb8b01 100644
--- a/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts
+++ b/target/linux/ramips/dts/mt7620a_ohyeah_oy-0001.dts
@@ -103,7 +103,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts b/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts
index 382a1d7913..a878c43054 100644
--- a/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts
+++ b/target/linux/ramips/dts/mt7620a_phicomm_k2g.dts
@@ -103,7 +103,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii2_pins &mdio_pins>;
+
 	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "llllw";
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts b/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts
index 5ed0724259..a0c7fe91bc 100644
--- a/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts
+++ b/target/linux/ramips/dts/mt7620a_phicomm_psg1208.dts
@@ -99,7 +99,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts b/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
index 0d9ef767c4..71cf56c554 100644
--- a/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
+++ b/target/linux/ramips/dts/mt7620a_phicomm_psg1218a.dts
@@ -44,7 +44,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts b/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts
index 7f9fea2b07..2932b5a3dc 100644
--- a/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts
+++ b/target/linux/ramips/dts/mt7620a_phicomm_psg1218b.dts
@@ -44,6 +44,8 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "llllw";
 };
diff --git a/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts b/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts
index 4466c56fd4..77a48e8ec1 100644
--- a/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts
+++ b/target/linux/ramips/dts/mt7620a_planex_cs-qr10.dts
@@ -130,7 +130,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts b/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts
index c38d1e55dd..29b235d24c 100644
--- a/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts
+++ b/target/linux/ramips/dts/mt7620a_planex_db-wrt01.dts
@@ -90,7 +90,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts b/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts
index dde751901e..87a6f29944 100644
--- a/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts
+++ b/target/linux/ramips/dts/mt7620a_planex_mzk-750dhp.dts
@@ -110,7 +110,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts b/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts
index 6eb3e85f2c..05478f5960 100644
--- a/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts
+++ b/target/linux/ramips/dts/mt7620a_planex_mzk-ex300np.dts
@@ -130,7 +130,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts b/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts
index 13a3ecdf83..a5e44cff0b 100644
--- a/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts
+++ b/target/linux/ramips/dts/mt7620a_planex_mzk-ex750np.dts
@@ -135,7 +135,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts
index 4a3de47edb..fbdec1b5c5 100644
--- a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts
+++ b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-evb.dts
@@ -74,9 +74,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+
 	mediatek,portmap = "llllw";
 
 	port@4 {
diff --git a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7530-evb.dts b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7530-evb.dts
index 89c5aedcce..ba1d41545a 100644
--- a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7530-evb.dts
+++ b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7530-evb.dts
@@ -55,9 +55,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+
 	mediatek,portmap = "llllw";
 
 	port@5 {
diff --git a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts
index a589179121..0660047ead 100644
--- a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts
+++ b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-mt7610e-evb.dts
@@ -71,9 +71,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts
index ee148dbde3..1baa3a7331 100644
--- a/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts
+++ b/target/linux/ramips/dts/mt7620a_ralink_mt7620a-v22sg-evb.dts
@@ -68,9 +68,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
+
 	mediatek,portmap = "llllw";
 
 	port@4 {
diff --git a/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts b/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
index 52d4477f57..79649a5990 100644
--- a/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
+++ b/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
@@ -170,6 +170,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_sercomm_na930.dts b/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
index 9313e6259f..e90f5a440b 100644
--- a/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
+++ b/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
@@ -139,9 +139,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &mdio_pins>;
+
 	mediatek,portmap = "llllw";
 
 	port@4 {
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
index 9681964cd2..c0b2c1ae92 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
@@ -129,11 +129,11 @@
 };
 
 &ethernet {
-	status = "okay";
-	mtd-mac-address = <&rom 0xf100>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins &rgmii2_pins &mdio_pins>;
 
+	mtd-mac-address = <&rom 0xf100>;
+
 	port@5 {
 		status = "okay";
 		mediatek,fixed-link = <1000 1 1 1>;
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer.dtsi b/target/linux/ramips/dts/mt7620a_tplink_archer.dtsi
index 74908e05aa..184627b9f4 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer.dtsi
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer.dtsi
@@ -91,7 +91,9 @@
 
 &ethernet {
 	pinctrl-names = "default";
+
 	mtd-mac-address = <&rom 0xf100>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts b/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts
index 3857c4a954..f3340b9f5e 100644
--- a/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts
+++ b/target/linux/ramips/dts/mt7620a_xiaomi_miwifi-mini.dts
@@ -130,7 +130,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x28>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_youku_yk1.dts b/target/linux/ramips/dts/mt7620a_youku_yk1.dts
index ee7bb37d2c..f14b70d407 100644
--- a/target/linux/ramips/dts/mt7620a_youku_yk1.dts
+++ b/target/linux/ramips/dts/mt7620a_youku_yk1.dts
@@ -119,7 +119,9 @@
 
 &ethernet {
 	pinctrl-names = "default";
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_yukai_bocco.dts b/target/linux/ramips/dts/mt7620a_yukai_bocco.dts
index e0a568f3b1..b05fb17197 100644
--- a/target/linux/ramips/dts/mt7620a_yukai_bocco.dts
+++ b/target/linux/ramips/dts/mt7620a_yukai_bocco.dts
@@ -149,7 +149,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
index 959fce350e..4aa404542f 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-ape522ii.dts
@@ -111,7 +111,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
index 6cb67d40de..9ebd10bbb0 100644
--- a/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
+++ b/target/linux/ramips/dts/mt7620a_zbtlink_zbt-we826.dtsi
@@ -75,6 +75,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_zte_q7.dts b/target/linux/ramips/dts/mt7620a_zte_q7.dts
index 0303e3fe3e..6933a86f60 100644
--- a/target/linux/ramips/dts/mt7620a_zte_q7.dts
+++ b/target/linux/ramips/dts/mt7620a_zte_q7.dts
@@ -98,6 +98,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts b/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
index 2f648a2700..c41d0a1c1d 100644
--- a/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
+++ b/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
@@ -136,9 +136,9 @@
 };
 
 &ethernet {
-	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii2_pins &mdio_pins>;
+
 	mtd-mac-address = <&factory 0x00004>;
 
 	port@4 {
diff --git a/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts b/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts
index e77615a9f5..5e610be862 100644
--- a/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts
+++ b/target/linux/ramips/dts/mt7620n_asus_rt-n12p.dts
@@ -109,6 +109,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts b/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts
index 423641d833..76f728ea65 100644
--- a/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts
+++ b/target/linux/ramips/dts/mt7620n_asus_rt-n14u.dts
@@ -122,6 +122,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts b/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts
index 986903b601..f84dda3bf8 100644
--- a/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts
+++ b/target/linux/ramips/dts/mt7620n_buffalo_wmr-300.dts
@@ -98,6 +98,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts b/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts
index 1c45c8e8cc..3f75c763f7 100644
--- a/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts
+++ b/target/linux/ramips/dts/mt7620n_dlink_dwr-116-a1.dts
@@ -105,7 +105,8 @@
 };
 
 &ethernet {
-	mediatek,portmap = "llllw";
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
+	mediatek,portmap = "llllw";
 };
diff --git a/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts b/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts
index deb16785a0..5a75e5ab96 100644
--- a/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts
+++ b/target/linux/ramips/dts/mt7620n_elecom_wrh-300cr.dts
@@ -119,6 +119,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x2e>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts b/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts
index 2e37fdd884..fbc751fb48 100644
--- a/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts
+++ b/target/linux/ramips/dts/mt7620n_kingston_mlw221.dts
@@ -114,6 +114,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts b/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts
index 931f0500ba..a4bc5c71bc 100644
--- a/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts
+++ b/target/linux/ramips/dts/mt7620n_kingston_mlwg2.dts
@@ -114,6 +114,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi b/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi
index 09df87966e..9762472355 100644
--- a/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi
+++ b/target/linux/ramips/dts/mt7620n_nexx_wt3020.dtsi
@@ -44,6 +44,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts b/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts
index 09e2cf257d..135e048fca 100644
--- a/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts
+++ b/target/linux/ramips/dts/mt7620n_vonets_var11n-300.dts
@@ -82,6 +82,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_wrtnode_wrtnode.dts b/target/linux/ramips/dts/mt7620n_wrtnode_wrtnode.dts
index 2c905f7f6a..35dc933d99 100644
--- a/target/linux/ramips/dts/mt7620n_wrtnode_wrtnode.dts
+++ b/target/linux/ramips/dts/mt7620n_wrtnode_wrtnode.dts
@@ -87,6 +87,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
index 341a231daf..eff3842a3e 100644
--- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
+++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
@@ -110,6 +110,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts
index 9439b0c28e..7a111ffac5 100644
--- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts
+++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wa05.dts
@@ -114,6 +114,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts
index f293082e96..e5d3cc0a29 100644
--- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts
+++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-we2026.dts
@@ -95,6 +95,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts
index ee31792ab0..675b42671b 100644
--- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts
+++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-wr8305rt.dts
@@ -107,7 +107,9 @@
 &ethernet {
 	pinctrl-names = "default";
 	pinctrl-0 = <&ephy_pins>;
+
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
index 7846bd995a..00af10b0c7 100644
--- a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
+++ b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
@@ -133,6 +133,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "wllll";
 };
 
diff --git a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
index 2e7a689e27..cbeabf4ec8 100644
--- a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
+++ b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
@@ -133,6 +133,7 @@
 
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
+
 	mediatek,portmap = "llllw";
 };
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
