Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E36B8F69
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 14:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GmndquXxpiCO1sXmoNgYJJLIi1mD4mDwIdGSMtfMmwk=; b=JL3ErBhGwCEp+xdLyO2xujSKV4
	2HT+RIKo6KjoUWA9UNpPg6pr84P70gqqiNqsoAPfW0ClmrAwt3W7Gf1xqMRc5eqYWDQ5Ae6qnynZO
	uXkUH1NINzqymTGT84jMKWs93IwJk76eoxgrWso5+YhuxUekN8wwyYAHW9UrV5K9XeArpiPSN3OQf
	iQc9ie59HA0+pDpNDD+ifGvFN8WOtAP+x8NXEDWIhoD2FYv2dwd8rY1UUkI/Rjq/0VjDIv+WgyT9u
	L4S3bn2iCV8RuGvg6pE5LeeGHTYwu6e9V/oZkEag0ToFP5EQ0TK2V02MVspfRbZuJ8j75YskY1iqU
	yIh6Y4OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBHdA-0007H8-DZ; Fri, 20 Sep 2019 12:03:20 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHd3-0007GQ-Fy
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 12:03:15 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MkHEN-1hnB4e0NgX-00kjjE for <openwrt-devel@lists.openwrt.org>; Fri, 20
 Sep 2019 14:03:09 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 20 Sep 2019 14:03:03 +0200
Message-Id: <20190920120303.3295-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190920120303.3295-1-freifunk@adrianschmutzler.de>
References: <20190920120303.3295-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Xwke6pqE9Se6lB2RGsMjTBL7c1ZKbNHWcY+HjLXfgF/SVhtRfju
 lXZNTgKJHEFjddUmJVZwl+lpwN9rorEg+JOddUFLpx5tndgImu5nODV7FqNgi1vNUfokZ0x
 NQn1LD66FpKP5dUKJr57NWL1VPEndM7E3JqnOej7evbX177KRfkdOcjeINCN5IZK1Tj+dZ2
 Juw2r/61Z3mFJqGexMxQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6uynL1RRVKo=:DHP1IZ6Ttcmbng4DY7ZkhK
 bOACbicMEvAV2xw/AuD5s0TUMNAYACNoEasV7pHaO5ho35/kwX0vDtXt6v+1KRo7rnWpTmCVw
 AGZXx5pieIxCNIpJNWCR4La/ZbVRLKy+nyIb73RdMqKkM8qvKUnaZeLus7+f8kvQ1a2x6vISc
 xi5exmnUz71N8V2gpFJYZFoLx1usuOY5sMKWz+3f/fpAT2viB4D4I5JMg45lOL9R+tj4MigPy
 Hko87HmGKdB5/+SYNDvGqTO8qGY/vejbhB5njv0CH1IkzCkq+ZUp5BtCfODyVAVus+sB7IjRi
 mUOWO0qljpM5QdsMTRt6fLhNi8Aj15q+LpdN6g/UEvlUoq1EYZw1HskQNoGP5rlTTdAMk1r/c
 8ErpQBUFIllMr3C6qt2ylqQT/RCGAyT1bS1xH+5Hth+XebqDlykHQ5h7jLWLS8vttyknWoKSI
 44Lxeo1kmB48RzUlkDZ9aEM2RxeBuwwG3HRQOSFtxsrO5mb12eDp/s8im2z+ACwK05v1qFTwU
 vLWnZZ6HRnLMRR4onCcwQTCE8rtHnuY+K125znYxQjpuSTBaD0Vpwqn9WuDBwSoSPRxvLbIkp
 KHQL+BrI90THOx5vxMSLsd4S44U5fYc8eZJIzh/JanVrmhybW66VP7Ak4r03HyHF0nI/vWiqs
 hHZz+eFOjM7oJMaQIPG+Dbnkucd4PSKjP/bP8CFLlHDjm5EgRgg413IGYxudjw12VQ+4S3O/k
 DkdEUO7E74Wsmg+ytWYVM51JgK8KyXHAHKGnXEPp8Y6FwNcu20hO38GYr5Y4zqibnQ3sWgPG1
 BWA326H5blly201Q3KHSGlbhwL17vITvShCoUX7sCH7R4zM0wHwuKkXm3JU+oP7sJIUs/e/6w
 jaRUM/rWBols5fpDzEzTVD7PIL/qznayoD/vG1R1s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_050313_832942_D465364B 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ramips: fix whitespace issues in DTS
 files
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

This is the result of grepping/searching for several common
whitespace issues like double empty lines, leading spaces, etc.

This patch fixes them for the ramips target.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

v2: rebase, added fixes for EnGenius ESR600, AsiaRF AP7621 DTSI
---
 target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts           | 1 -
 target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts      | 2 --
 target/linux/ramips/dts/mt7620a_edimax_ew-7476rpc.dts        | 1 -
 target/linux/ramips/dts/mt7620a_engenius_esr600.dts          | 4 +---
 target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts     | 2 +-
 target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts      | 1 -
 target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts       | 1 -
 target/linux/ramips/dts/mt7621.dtsi                          | 2 --
 target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi            | 1 -
 target/linux/ramips/dts/mt7621_elecom_wrc-1900gst.dts        | 3 +--
 target/linux/ramips/dts/mt7621_elecom_wrc-2533gst.dts        | 3 +--
 target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts             | 1 -
 target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts           | 2 --
 target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts           | 2 --
 target/linux/ramips/dts/mt7621_mtc_wr1201.dts                | 1 -
 target/linux/ramips/dts/mt7628an_cudy_wr1000.dts             | 1 -
 target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts        | 1 -
 target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi         | 1 -
 target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts        | 1 -
 target/linux/ramips/dts/rt3050_dlink_dir-615-d.dts           | 2 --
 target/linux/ramips/dts/rt3052_argus_atp-52b.dts             | 1 -
 target/linux/ramips/dts/rt3052_asiarf_awapn2403.dts          | 1 -
 target/linux/ramips/dts/rt3052_aximcom_mr-102n.dts           | 1 -
 target/linux/ramips/dts/rt3883_belkin_f9k1109v1.dts          | 1 -
 target/linux/ramips/dts/rt3883_belkin_f9k110x.dtsi           | 1 -
 target/linux/ramips/dts/rt5350_olimex_rt5350f-olinuxino.dtsi | 2 --
 target/linux/ramips/dts/rt5350_zyxel_keenetic-start.dts      | 1 -
 27 files changed, 4 insertions(+), 37 deletions(-)

diff --git a/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts b/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts
index cbd8d4cb80..56c0f8f890 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts
@@ -137,4 +137,3 @@
 		};
 	};
 };
-
diff --git a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
index a30250e74f..43698d9fd6 100644
--- a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
+++ b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
@@ -69,7 +69,6 @@
 		};
 	};
 
-
 	gpio_export {
 		compatible = "gpio-export";
 		#size-cells = <0>;
@@ -81,7 +80,6 @@
 	};
 };
 
-
 &gpio2 {
 	status = "okay";
 };
diff --git a/target/linux/ramips/dts/mt7620a_edimax_ew-7476rpc.dts b/target/linux/ramips/dts/mt7620a_edimax_ew-7476rpc.dts
index eb326ccbd8..782263a068 100644
--- a/target/linux/ramips/dts/mt7620a_edimax_ew-7476rpc.dts
+++ b/target/linux/ramips/dts/mt7620a_edimax_ew-7476rpc.dts
@@ -44,4 +44,3 @@
 		};
 	};
 };
-
diff --git a/target/linux/ramips/dts/mt7620a_engenius_esr600.dts b/target/linux/ramips/dts/mt7620a_engenius_esr600.dts
index 4636a54736..65d71b99af 100644
--- a/target/linux/ramips/dts/mt7620a_engenius_esr600.dts
+++ b/target/linux/ramips/dts/mt7620a_engenius_esr600.dts
@@ -61,10 +61,8 @@
 			linux,code = <KEY_WPS_BUTTON>;
 			debounce-interval = <60>;
 		};
-
 	};
-
- };
+};
 
 &gpio1 {
 	status = "okay";
diff --git a/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts b/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
index 7bf63b3287..8d58d12f02 100644
--- a/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
+++ b/target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts
@@ -183,5 +183,5 @@
 };
 
 &uart {
-    status = "okay";
+	status = "okay";
 };
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
index 2d7f6c03a3..2da35936b1 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts
@@ -153,7 +153,6 @@
 	};
 };
 
-
 &gpio1 {
 	status = "okay";
 };
diff --git a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
index 10d8ca0eb6..3885428345 100644
--- a/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
+++ b/target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts
@@ -13,7 +13,6 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-
 	aliases {
 		led-boot = &led_4g_0;
 		led-failsafe = &led_4g_0;
diff --git a/target/linux/ramips/dts/mt7621.dtsi b/target/linux/ramips/dts/mt7621.dtsi
index 4f69e0902e..849f1f0a09 100644
--- a/target/linux/ramips/dts/mt7621.dtsi
+++ b/target/linux/ramips/dts/mt7621.dtsi
@@ -49,8 +49,6 @@
 		clock-frequency = <50000000>;
 	};
 
-
-
 	palmbus: palmbus@1E000000 {
 		compatible = "palmbus";
 		reg = <0x1E000000 0x100000>;
diff --git a/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi b/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi
index 044b06b3c4..eb5a60bcdc 100644
--- a/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi
+++ b/target/linux/ramips/dts/mt7621_asiarf_ap7621.dtsi
@@ -117,4 +117,3 @@
 		};
 	};
 };
-
diff --git a/target/linux/ramips/dts/mt7621_elecom_wrc-1900gst.dts b/target/linux/ramips/dts/mt7621_elecom_wrc-1900gst.dts
index 2135f00ea2..7cbf2cd803 100644
--- a/target/linux/ramips/dts/mt7621_elecom_wrc-1900gst.dts
+++ b/target/linux/ramips/dts/mt7621_elecom_wrc-1900gst.dts
@@ -3,8 +3,7 @@
 
 #include "mt7621_elecom_wrc-gst.dtsi"
 
-
 / {
 	compatible = "elecom,wrc-1900gst", "mediatek,mt7621-soc";
 	model = "ELECOM WRC-1900GST";
-  };
+};
diff --git a/target/linux/ramips/dts/mt7621_elecom_wrc-2533gst.dts b/target/linux/ramips/dts/mt7621_elecom_wrc-2533gst.dts
index 75c71c96d4..aa15674b43 100644
--- a/target/linux/ramips/dts/mt7621_elecom_wrc-2533gst.dts
+++ b/target/linux/ramips/dts/mt7621_elecom_wrc-2533gst.dts
@@ -2,8 +2,7 @@
 
 #include "mt7621_elecom_wrc-gst.dtsi"
 
-
 / {
 	compatible = "elecom,wrc-2533gst", "mediatek,mt7621-soc";
 	model = "ELECOM WRC-2533GST";
-  };
+};
diff --git a/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts b/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts
index 19fa7f3131..bd3411b614 100644
--- a/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts
+++ b/target/linux/ramips/dts/mt7621_gnubee_gb-pc2.dts
@@ -126,4 +126,3 @@
 		};
 	};
 };
-
diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
index a03133cf68..f13a779600 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm11g.dts
@@ -77,7 +77,6 @@
 	};
 };
 
-
 &spi0 {
 	status = "okay";
 
@@ -144,7 +143,6 @@
 	mtd-mac-address-increment = <1>;
 };
 
-
 &pinctrl {
 	state_default: pinctrl0 {
 		gpio {
diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
index bab97a6a90..45b2182ded 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
@@ -87,7 +87,6 @@
 	};
 };
 
-
 &spi0 {
 	status = "okay";
 
@@ -168,7 +167,6 @@
 	mtd-mac-address-increment = <1>;
 };
 
-
 &pinctrl {
 	state_default: pinctrl0 {
 		gpio {
diff --git a/target/linux/ramips/dts/mt7621_mtc_wr1201.dts b/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
index 34f3840f81..fb3efe6d72 100644
--- a/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
+++ b/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
@@ -142,7 +142,6 @@
 	};
 };
 
-
 &pinctrl {
 	state_default: pinctrl0 {
 		gpio {
diff --git a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
index 3dca680b11..aa3f01e68e 100644
--- a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
+++ b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
@@ -100,7 +100,6 @@
 				label = "firmware";
 				reg = <0x50000 0x7b0000>;
 			};
-
 		};
 	};
 };
diff --git a/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts b/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts
index 6463a5867b..f31e129e9e 100644
--- a/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts
+++ b/target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts
@@ -90,4 +90,3 @@
 &wmac {
 	status = "okay";
 };
-
diff --git a/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi b/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
index 0f7e63dfe3..6a312ff0b1 100644
--- a/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
+++ b/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
@@ -12,7 +12,6 @@
 	};
 };
 
-
 &pinctrl {
 	state_default: pinctrl0 {
 		gpio {
diff --git a/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts b/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts
index a756900dcd..b5da84c9f8 100644
--- a/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts
+++ b/target/linux/ramips/dts/mt7628an_wiznet_wizfi630s.dts
@@ -96,7 +96,6 @@
 			ralink,function = "gpio";
 		};
 
-
 		i2c {
 			ralink,group = "i2c";
 			ralink,function = "gpio";
diff --git a/target/linux/ramips/dts/rt3050_dlink_dir-615-d.dts b/target/linux/ramips/dts/rt3050_dlink_dir-615-d.dts
index 16018ff1f0..c0593dd6e9 100644
--- a/target/linux/ramips/dts/rt3050_dlink_dir-615-d.dts
+++ b/target/linux/ramips/dts/rt3050_dlink_dir-615-d.dts
@@ -118,5 +118,3 @@
 		};
 	};
 };
-
-
diff --git a/target/linux/ramips/dts/rt3052_argus_atp-52b.dts b/target/linux/ramips/dts/rt3052_argus_atp-52b.dts
index 2fa5c19d04..046fe676c5 100644
--- a/target/linux/ramips/dts/rt3052_argus_atp-52b.dts
+++ b/target/linux/ramips/dts/rt3052_argus_atp-52b.dts
@@ -92,7 +92,6 @@
 	};
 };
 
-
 &ethernet {
 	mtd-mac-address = <&factory 0x4>;
 };
diff --git a/target/linux/ramips/dts/rt3052_asiarf_awapn2403.dts b/target/linux/ramips/dts/rt3052_asiarf_awapn2403.dts
index 97f105a631..38ad539eb9 100644
--- a/target/linux/ramips/dts/rt3052_asiarf_awapn2403.dts
+++ b/target/linux/ramips/dts/rt3052_asiarf_awapn2403.dts
@@ -16,7 +16,6 @@
 		led-upgrade = &led_wps;
 	};
 
-
 	leds {
 		compatible = "gpio-leds";
 
diff --git a/target/linux/ramips/dts/rt3052_aximcom_mr-102n.dts b/target/linux/ramips/dts/rt3052_aximcom_mr-102n.dts
index ffb76e3bf4..d8efb425e8 100644
--- a/target/linux/ramips/dts/rt3052_aximcom_mr-102n.dts
+++ b/target/linux/ramips/dts/rt3052_aximcom_mr-102n.dts
@@ -125,7 +125,6 @@
 	ralink,mtd-eeprom = <&factory 0>;
 };
 
-
 &otg {
 	status = "okay";
 };
diff --git a/target/linux/ramips/dts/rt3883_belkin_f9k1109v1.dts b/target/linux/ramips/dts/rt3883_belkin_f9k1109v1.dts
index 172a799632..98c099cecc 100644
--- a/target/linux/ramips/dts/rt3883_belkin_f9k1109v1.dts
+++ b/target/linux/ramips/dts/rt3883_belkin_f9k1109v1.dts
@@ -49,7 +49,6 @@
 			label = "f9k1109v1:blue:wps";
 			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
 		};
-
 	};
 
 	keys {
diff --git a/target/linux/ramips/dts/rt3883_belkin_f9k110x.dtsi b/target/linux/ramips/dts/rt3883_belkin_f9k110x.dtsi
index a34c3f3600..98ad1b13e2 100644
--- a/target/linux/ramips/dts/rt3883_belkin_f9k110x.dtsi
+++ b/target/linux/ramips/dts/rt3883_belkin_f9k110x.dtsi
@@ -14,7 +14,6 @@
 		gpio-sck = <&gpio0 2 GPIO_ACTIVE_HIGH>;
 		realtek,extif1 = <1 0 1 1 1 1 1 1 2>;
 	};
-
 };
 
 &gpio1 {
diff --git a/target/linux/ramips/dts/rt5350_olimex_rt5350f-olinuxino.dtsi b/target/linux/ramips/dts/rt5350_olimex_rt5350f-olinuxino.dtsi
index 88b412c8d6..ff30966bf5 100644
--- a/target/linux/ramips/dts/rt5350_olimex_rt5350f-olinuxino.dtsi
+++ b/target/linux/ramips/dts/rt5350_olimex_rt5350f-olinuxino.dtsi
@@ -9,7 +9,6 @@
 	};
 };
 
-
 &spi0 {
 	status = "okay";
 
@@ -96,4 +95,3 @@
 &uart {
 	status = "okay";
 };
-
diff --git a/target/linux/ramips/dts/rt5350_zyxel_keenetic-start.dts b/target/linux/ramips/dts/rt5350_zyxel_keenetic-start.dts
index 6f1f6097cc..b8db4fdc7f 100644
--- a/target/linux/ramips/dts/rt5350_zyxel_keenetic-start.dts
+++ b/target/linux/ramips/dts/rt5350_zyxel_keenetic-start.dts
@@ -103,7 +103,6 @@
 	mtd-mac-address = <&factory 0x28>;
 };
 
-
 &esw {
 	mediatek,portmap = <0x2f>;
 	mediatek,led_polarity = <0x17>;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
