Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843747FC7D
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 16:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rs0RG5WiLUYHgu0bqErwVrXR7VMCrOAc1Ivti7VYxgc=; b=jvuwh484Ji1gkS
	KhRy+vvaZ53J+zizE63M9BtDZB1vknpYGUlqkvRKZZK4O3WP9KdXAy3RAuMAJD5GHM8YM69tgyjiR
	L/NUNAgkqbrVGp3E8z1vtr3gbK/Q4g+wGNu87OYULUyv0L7NR4eg49PuhYywvImY3O9iaBKAo5xnh
	SGJDAUjpIlKSEBSAsjN26hNWdYeMBaypc+y8Zj8bIBHokOcEug7bH5V2YuA8cSFoX/5tNtvhZxHXJ
	pN9M/q8qGYuoVRjvGCuEl1SWlKOPuN1TeSz+2Fz0BiE2/RdJWTk8nqJnZya1YekoIM7IgbCdLv0V3
	FWd3R2X6mhD2szZ6fceQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYp8-0000jM-0L; Fri, 02 Aug 2019 14:46:26 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYoz-0000iu-FP
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 14:46:20 +0000
Received: from buildfff.adridolf.com ([188.193.174.123]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MPoPd-1hh8dS13op-00Mqsu for <openwrt-devel@lists.openwrt.org>; Fri, 02
 Aug 2019 16:46:13 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  2 Aug 2019 16:46:10 +0200
Message-Id: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ViJqXCxsBUw24S+7u8/J2bRSNplTuoKiC8mnAKZewNRfdV+fo+k
 6cRTCk2PXnK+HL9+85ibz3roNSKb5d9hxyYY9iikJOk6S2c+Bm/lBo780lT4L/t8KyIFFdF
 Us/JxbfPVGT4nQBpK2R8OwDciwXJzeXlHh7vDjcBUMEwsk/e0nACRtON18q/t/MHohHwbTb
 4polmgrGlo3PU8623NSVA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3lCR9C35Nbs=:aBO/YSAZVs2UZzmKfJ/4sK
 6HCoTllC26Ekr4aeQFIC3Ak8siqj3e2jLNyDFZmx3cJ2FBFlJJJLX2ptgjfwVRuF63ZXDlDQb
 o9JPdXQ7wBc/3kI42jOD/wXzlPaSV+J3mM7i10Fc+DhT8juAZ0tlr3KYoNaY7JTz07q9HHDuZ
 Nwx2NzVn/X2grXMpmDMmtsjtDfs9IROfrgGr+uVu5Yii296GvKZ2QkKFhpHHvmk3tMyVm4bad
 zQJhDbws8WJqRu0kM41DlnSkXqbneio9lmL28BG4bjUuZilWWGgy7T9p2YOR03eG2XkciLOu3
 dPXGoqWaEmdPlFJvp12/0PKD52JnKOxqrkdgpo1oJU45nahsAvBey8kQlhxIYh/FU1hhHITq2
 omvNXmUUgamdK2OPAJP3dwUvUc7SbxND6sQitLu5+bLMKwBpGvB1NEb4CSP6h4T0rNc+YNEVT
 p7PO8QISjOHMy4/EGxnwsh9cotASodCfQphdKMSRZpp0EvJAnMmVeOuda3YGdSZ8gVm3d54OG
 Cwh5S02sEcYCnutwEIJtC4DHINdNh4WWevXjaC5YuQeD4nFoeLe7A6vSfQU8Lf14oO5T7G1PR
 CQYH31T0OBzuYMHxdDka1X+zoED1P0LBLr9hxk9AD/AaOcF7q+Ib+8rQTvwIXlH/IAAqWH+qF
 mHafbYdp5gFir9yEKJBpwXlNzqlJHJU2WY5J0rzt9HSTIaVeaD9aNC+Nr3/6JVYsSfWSZ542y
 yqdBlolvKLAGuxv+DgLuKcTKKrLMr9BAXWquWf7RGu5Bm0lsPBGsG0Yu9qg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_074617_970844_B3FF8435 
X-CRM114-Status: UNSURE (   8.39  )
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
Subject: [OpenWrt-Devel] [PATCH] ath79: convert devices to interrupt-driven
 gpio-keys
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

This converts all remaining devices to use interrupt-driven
gpio-keys compatible instead of gpio-keys-polled.
The poll-interval is removed.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts         | 3 +--
 target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts      | 3 +--
 target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts           | 3 +--
 target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts             | 3 +--
 target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi        | 3 +--
 target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts          | 3 +--
 target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi         | 3 +--
 target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi       | 3 +--
 target/linux/ath79/dts/ar7241_tplink.dtsi                    | 3 +--
 target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts        | 3 +--
 target/linux/ath79/dts/ar7241_ubnt_unifi.dts                 | 4 ++--
 target/linux/ath79/dts/ar7241_ubnt_xm.dtsi                   | 4 ++--
 target/linux/ath79/dts/ar7242_avm_fritz300e.dts              | 3 +--
 target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi           | 3 +--
 target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts  | 3 +--
 target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts        | 3 +--
 target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts            | 3 +--
 target/linux/ath79/dts/ar9330_pqi_air-pen.dts                | 3 +--
 target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts     | 3 +--
 target/linux/ath79/dts/ar9331_etactica_eg200.dts             | 3 +--
 target/linux/ath79/dts/ar9331_pisen_wmm003n.dts              | 3 +--
 target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts        | 3 +--
 target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi | 3 +--
 target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts        | 3 +--
 target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi      | 3 +--
 target/linux/ath79/dts/ar9341_pcs_cr3000.dts                 | 3 +--
 target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts         | 3 +--
 target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts        | 3 +--
 target/linux/ath79/dts/ar9342_iodata_etg3-r.dts              | 3 +--
 target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts        | 3 +--
 target/linux/ath79/dts/ar9344_ocedo_raccoon.dts              | 3 +--
 target/linux/ath79/dts/ar9344_pcs_cap324.dts                 | 3 +--
 target/linux/ath79/dts/ar9344_pcs_cr5000.dts                 | 3 +--
 target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi         | 3 +--
 target/linux/ath79/dts/ar9344_winchannel_wb2000.dts          | 3 +--
 target/linux/ath79/dts/qca9531_comfast_cf-e5.dts             | 3 +--
 target/linux/ath79/dts/qca9531_engenius_ews511ap.dts         | 3 +--
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi         | 4 ++--
 target/linux/ath79/dts/qca9531_glinet_gl-x750.dts            | 3 +--
 target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts       | 3 +--
 target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi            | 3 +--
 target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts         | 3 +--
 target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi         | 3 +--
 target/linux/ath79/dts/qca9558_engenius_epg5000.dts          | 3 +--
 target/linux/ath79/dts/qca9558_ocedo_koala.dts               | 3 +--
 target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts       | 3 +--
 target/linux/ath79/dts/qca9561_avm_fritz4020.dts             | 3 +--
 target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi        | 3 +--
 target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts       | 3 +--
 target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts          | 3 +--
 target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts          | 4 ++--
 target/linux/ath79/dts/qca9563_phicomm_k2t.dts               | 3 +--
 52 files changed, 56 insertions(+), 104 deletions(-)

diff --git a/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts b/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts
index 5ad8196a15..64f471649e 100644
--- a/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts
+++ b/target/linux/ath79/dts/ar1022_iodata_wn-ag300dgr.dts
@@ -55,8 +55,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		eco {
 			label = "eco";
diff --git a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
index df22eb8dc4..f51bc0f771 100644
--- a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
+++ b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
@@ -81,8 +81,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			linux,code = <KEY_RESTART>;
diff --git a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
index da19921973..87ad6e914c 100644
--- a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
+++ b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
@@ -81,8 +81,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
index 76f140fa55..8cd1268fd8 100644
--- a/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
+++ b/target/linux/ath79/dts/ar7161_jjplus_ja76pf2.dts
@@ -53,8 +53,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		sw1 {
 			label = "sw1";
diff --git a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
index 6e4361f10f..f21ffecc05 100644
--- a/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
+++ b/target/linux/ath79/dts/ar7161_ubnt_routerstation.dtsi
@@ -35,8 +35,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		wps {
 			label = "sw4";
diff --git a/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts b/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
index 042219b234..fcd17b8d13 100644
--- a/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
+++ b/target/linux/ath79/dts/ar7240_buffalo_whr-g301n.dts
@@ -17,8 +17,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		router_on {
 			label = "router_on";
diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
index 8e934429a3..7b5f0ca70b 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dtsi
@@ -15,8 +15,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi b/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi
index b7db74d937..c4e10d9729 100644
--- a/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi
+++ b/target/linux/ath79/dts/ar7240_tplink_tl-wr74xn-v1.dtsi
@@ -14,8 +14,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar7241_tplink.dtsi b/target/linux/ath79/dts/ar7241_tplink.dtsi
index fa6ba71925..1433d7c6a1 100644
--- a/target/linux/ath79/dts/ar7241_tplink.dtsi
+++ b/target/linux/ath79/dts/ar7241_tplink.dtsi
@@ -14,8 +14,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
index 282446b1e1..bf11340a67 100644
--- a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
+++ b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
@@ -18,8 +18,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		rfkill {
 			label = "rfkill";
diff --git a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
index 27aec88cca..b8228c8982 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
@@ -24,8 +24,8 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
+
 		reset {
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
index 5466575229..5aa05c00cf 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
+++ b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
@@ -16,8 +16,8 @@
 	};
 */
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
+
 		reset {
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
diff --git a/target/linux/ath79/dts/ar7242_avm_fritz300e.dts b/target/linux/ath79/dts/ar7242_avm_fritz300e.dts
index 3621714d9d..acda2213ee 100644
--- a/target/linux/ath79/dts/ar7242_avm_fritz300e.dts
+++ b/target/linux/ath79/dts/ar7242_avm_fritz300e.dts
@@ -18,8 +18,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		wps {
 			label = "wps";
diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
index 70ce41b84d..3b5a4dd13d 100644
--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
@@ -20,8 +20,7 @@
 	};
 
 	keys: keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		usb {
 			label = "usb";
diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
index 97bfd0f842..8ac4df2194 100644
--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
@@ -23,8 +23,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts b/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts
index c42207e6cf..7a7790c1cb 100644
--- a/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts
+++ b/target/linux/ath79/dts/ar7242_tplink_tl-wr2543-v1.dts
@@ -28,8 +28,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts b/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
index 76f6e80236..92f900f305 100644
--- a/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
+++ b/target/linux/ath79/dts/ar9330_glinet_gl-ar150.dts
@@ -38,8 +38,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		manual {
 			label = "manual";
diff --git a/target/linux/ath79/dts/ar9330_pqi_air-pen.dts b/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
index 06f728b267..ffb28c7417 100644
--- a/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
+++ b/target/linux/ath79/dts/ar9330_pqi_air-pen.dts
@@ -33,8 +33,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		wps {
 			label = "wps";
diff --git a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
index d0e0169f1b..311a506b5d 100644
--- a/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
+++ b/target/linux/ath79/dts/ar9331_embeddedwireless_dorin.dts
@@ -28,8 +28,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		wps {
 			label = "wps";
diff --git a/target/linux/ath79/dts/ar9331_etactica_eg200.dts b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
index d18a239d32..721e676ed7 100644
--- a/target/linux/ath79/dts/ar9331_etactica_eg200.dts
+++ b/target/linux/ath79/dts/ar9331_etactica_eg200.dts
@@ -15,8 +15,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <50>;
+		compatible = "gpio-keys";
 
 		restore {
 			linux,code = <KEY_WPS_BUTTON>;
diff --git a/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts b/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts
index b3bc2e4c45..6fb11545ad 100644
--- a/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts
+++ b/target/linux/ath79/dts/ar9331_pisen_wmm003n.dts
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts b/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts
index ebf4d4485f..a970d9920f 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-mr3040-v2.dts
@@ -40,8 +40,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
index ffd3d71a62..f395d82e93 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
@@ -16,8 +16,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts b/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
index 056e9fa512..9a57ae82d9 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi b/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
index e4b59f1591..1b763153a8 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr741nd-v4.dtsi
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
index 9a0b084a72..79611a687d 100644
--- a/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
+++ b/target/linux/ath79/dts/ar9341_pcs_cr3000.dts
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
diff --git a/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts b/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts
index ec89be5318..3f47cd35c1 100644
--- a/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts
+++ b/target/linux/ath79/dts/ar9341_tplink_tl-wr841-v8.dts
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
diff --git a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
index c7a251cbf1..4d223c915a 100644
--- a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
+++ b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
diff --git a/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts b/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
index bd2489aa28..5daa06711b 100644
--- a/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
+++ b/target/linux/ath79/dts/ar9342_iodata_etg3-r.dts
@@ -33,8 +33,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts b/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts
index b0fdce77a6..632f5962db 100644
--- a/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts
+++ b/target/linux/ath79/dts/ar9344_comfast_cf-e120a-v3.dts
@@ -61,8 +61,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
index 812da3dea5..9e3177acae 100644
--- a/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
+++ b/target/linux/ath79/dts/ar9344_ocedo_raccoon.dts
@@ -53,8 +53,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			linux,code = <KEY_RESTART>;
diff --git a/target/linux/ath79/dts/ar9344_pcs_cap324.dts b/target/linux/ath79/dts/ar9344_pcs_cap324.dts
index 7a211e9088..390beebab5 100644
--- a/target/linux/ath79/dts/ar9344_pcs_cap324.dts
+++ b/target/linux/ath79/dts/ar9344_pcs_cap324.dts
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
diff --git a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
index 0b4a0ea374..211e339f30 100644
--- a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
+++ b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
@@ -19,8 +19,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
diff --git a/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi b/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
index 6be197c0cf..b600b1f6e0 100644
--- a/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
+++ b/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
@@ -59,8 +59,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			linux,code = <KEY_RESTART>;
diff --git a/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts b/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts
index 6895a22e12..4ee3ace829 100644
--- a/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts
+++ b/target/linux/ath79/dts/ar9344_winchannel_wb2000.dts
@@ -59,8 +59,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <50>;
+		compatible = "gpio-keys";
 
 		reset {
 			linux,code = <KEY_RESTART>;
diff --git a/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts b/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts
index c181b32aa6..a71f333fa6 100644
--- a/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts
+++ b/target/linux/ath79/dts/qca9531_comfast_cf-e5.dts
@@ -11,8 +11,7 @@
 	model = "COMFAST CF-E5/E7";
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		button0 {
 			label = "reset";
diff --git a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
index 4e0ae73d0d..2ece81e0c9 100644
--- a/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
+++ b/target/linux/ath79/dts/qca9531_engenius_ews511ap.dts
@@ -11,9 +11,8 @@
 	model = "EnGenius EWS511AP";
 
 	keys {
-		compatible = "gpio-keys-polled";
+		compatible = "gpio-keys";
 
-		poll-interval = <20>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
 
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
index 8b127ed1d8..4e5428b4c1 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m.dtsi
@@ -14,8 +14,8 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
+
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
 
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
index ddaf7709b7..de28f6c3f0 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-x750.dts
@@ -11,9 +11,8 @@
 	model = "GL.iNet GL-X750";
 
 	keys {
-		compatible = "gpio-keys-polled";
+		compatible = "gpio-keys";
 
-		poll-interval = <20>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
 
diff --git a/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts b/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts
index 4bada93452..d6eef42f3f 100644
--- a/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts
+++ b/target/linux/ath79/dts/qca9533_comfast_cf-e110n-v2.dts
@@ -65,8 +65,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi b/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
index f86ff30fc7..5f15cae7a0 100644
--- a/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
+++ b/target/linux/ath79/dts/qca9533_tplink_cpe210.dtsi
@@ -48,8 +48,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		reset_button {
 			label = "Reset button";
diff --git a/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts b/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
index 995ecb3b73..fc5df53fa9 100644
--- a/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
+++ b/target/linux/ath79/dts/qca9557_buffalo_bhr-4grv2.dts
@@ -47,8 +47,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi b/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
index 86b97437ea..0f7838fd56 100644
--- a/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
+++ b/target/linux/ath79/dts/qca9557_iodata_wn-ac-dgr.dtsi
@@ -51,8 +51,7 @@
 	};
 
 	keys: keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		eco {
 			label = "eco";
diff --git a/target/linux/ath79/dts/qca9558_engenius_epg5000.dts b/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
index 6179150fdb..9545a85d62 100644
--- a/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
+++ b/target/linux/ath79/dts/qca9558_engenius_epg5000.dts
@@ -54,8 +54,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/qca9558_ocedo_koala.dts b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
index a80155b08c..b5899b6b16 100644
--- a/target/linux/ath79/dts/qca9558_ocedo_koala.dts
+++ b/target/linux/ath79/dts/qca9558_ocedo_koala.dts
@@ -49,8 +49,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
diff --git a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts b/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
index b6dc43fbfc..7d7433d44e 100644
--- a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
+++ b/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
@@ -42,8 +42,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		button0 {
 			label = "reset";
diff --git a/target/linux/ath79/dts/qca9561_avm_fritz4020.dts b/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
index e98d6688d1..5a850c7064 100644
--- a/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
+++ b/target/linux/ath79/dts/qca9561_avm_fritz4020.dts
@@ -84,8 +84,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		wps_button {
 			label = "WPS button";
diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
index 6d32fa3fc4..75777149a5 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
@@ -33,8 +33,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		wps_button {
 			label = "WPS button";
diff --git a/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts b/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts
index 8b8818c82f..e4c737b8ff 100644
--- a/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts
+++ b/target/linux/ath79/dts/qca9561_xiaomi_mi-router-4q.dts
@@ -22,8 +22,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <100>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "Reset button";
diff --git a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
index 8bd9067afa..a17d9f263a 100644
--- a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
+++ b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
@@ -47,8 +47,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		wps {
 			linux,code = <KEY_RESTART>;
diff --git a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
index 0145a24fba..24198e8043 100644
--- a/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
+++ b/target/linux/ath79/dts/qca9563_glinet_gl-ar750s.dts
@@ -22,8 +22,8 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
+
 		pinctrl-names = "default";
 		pinctrl-0 = <&jtag_disable_pins>;
 
diff --git a/target/linux/ath79/dts/qca9563_phicomm_k2t.dts b/target/linux/ath79/dts/qca9563_phicomm_k2t.dts
index d819a76fd2..cb5c01b01c 100644
--- a/target/linux/ath79/dts/qca9563_phicomm_k2t.dts
+++ b/target/linux/ath79/dts/qca9563_phicomm_k2t.dts
@@ -41,8 +41,7 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			linux,code = <KEY_RESTART>;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
