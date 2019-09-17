Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E274B4DB9
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 14:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WRu76O/r4C8HlbVWeeGmrs3wxEyzwADJW+ex9pKeQNQ=; b=u4P3+r4p26R/Jr/WYB+CttiV9c
	R7imHokssvJCfZEnif3cndhkfGn4qhmy4TrqN9yXqLaUlVpAu0sjYauVvcEg5g3K5g1qqNKjOz3AT
	/I5qS4JagaPQK77uCRko9OB4wUMJiOYpDp8s0TCOaZnItGpCW1CyRGeS2SJsxIHqbet6F8bFNwQTu
	pGL7Jxe3tGnMv7yvu1RcY+zRRSH/o8uch4u5VAzJzsllpBKBM63I6CL9w1nXhgA62u6k/z3CZl0FY
	cPwY+YpNHrzJ1JKnhrH26FpBBAnGThLjncE16Yl/zbdzOzZFvkm92/DY/KasxcEeUhYkiuiX68U04
	60oZ0LXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACWC-0004Oj-5s; Tue, 17 Sep 2019 12:23:40 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACV7-0004Dg-CM
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 12:22:36 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N8nnU-1i7Gkf1LZm-015sQ5 for <openwrt-devel@lists.openwrt.org>; Tue, 17
 Sep 2019 14:22:27 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 14:22:22 +0200
Message-Id: <20190917122223.2745-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
References: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Nns09+0U0HjJb8I1r1h6AoQqBVVASLc8yNnrX31KWvt93KIVjin
 +eZ4azaz991RlkopjFUeGiGySqAzUMXrer3RCWlw2kNBE3lfRCKVKRt4djcJNY4Agl2JO0e
 9CV1DdzGIbl5EcF+COTiCbRUEYnf/Xnc2fAqkn8qoLHenXyn0Zk6TQXiUN5g8x3nsSp9dly
 NSYqN6R3mWmyR+HjfX6og==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lHajTxq5bXM=:nN/PrpKWiwhgYLHyzY3FSe
 NJsEcOg7SBXZj0HLFwpVyHXmKSrJNzxLBaEmS1hQg3tFOwJTC486iKpyK7wAfUtAqSIFmA8S0
 dpns5QeTJWK21RAfodW4E+sBgPVREsI0NQdEkS+866D2oFa7He0pysH4BJzC4NIzTpyqqhtPy
 2dKPyiygu63KwwvUbxM8g8uV0rXntAayZ1tmacISoxe2u/kjvxwsgNvkqWSNrX1DPZeQFZj5K
 pfHZybSKai2QyPzgCl0W++upAj3bIfAB7DlFto5kP14G5w5rENJPUYKaW17dya53qNVq++Nyu
 TGah5AI6Dous0dbjUehYQ5iFA9RnFXGmPklIM75/WIWqW14XcoyAyfamlhhH2DrB4Rx+RN+7P
 Izran9OV5aVTxXa96OLYfJEBZZtuO/MGKbAm42KxS/MCfFj/d9hgCvUTm94zOIO4GQg4RKQ65
 fOs6+UEkCFlAOKZ6R7LAsdsVQmEuleNMMyeXifRUsXJFoyrgVH1GS0QHhRzZPrJupDxLl94uR
 WlspRz2+dpV1/+GtcfbfyZYI0pmUJ9L1uZFs/PWwKn0QUksMh4+TnBorqT7pBlQbSlQgOUvLE
 w0LzKyJWIkIxzPKoXFenR90vTsIyazihEmaFnqUjDCM0T5t9/rApHx9zt3ECu8sID4XAoEIMY
 50WCClXxvkA7stHR/tgTND0Tyd+Qz6z2eXbitb8xrapvobGwwaPRPN5Lxg3Tl+NBQzQoPD1bT
 OPVvGbCH+JqhEO63QAM0t+BRXG5nxAgezkKazaN4jRMnX8svLeFmfgkz3pTQbMlAhCVCCc9HT
 /kfHl8lAHIiHU4m2eUz8nZrbN+E7n1RcyNHZaHIUPYXuvKPsFZspY1OqrNj6HGMXV1nmz9ryE
 2uLT33vmqaz1xrvsma3BqUQY+UOIJ983FRZ/wr96E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_052233_715106_C0EAF036 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH 2/3] ramips: fix whitespace issues in DTS
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
 target/linux/ramips/dts/mt7620a_dlink_dir-510l.dts           | 1 -
 target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts      | 2 --
 target/linux/ramips/dts/mt7620a_edimax_ew-7476rpc.dts        | 1 -
 target/linux/ramips/dts/mt7620a_head-weblink_hdrm200.dts     | 2 +-
 target/linux/ramips/dts/mt7620a_tplink_archer-c2-v1.dts      | 1 -
 target/linux/ramips/dts/mt7620n_zbtlink_zbt-cpe102.dts       | 1 -
 target/linux/ramips/dts/mt7621.dtsi                          | 2 --
 target/linux/ramips/dts/mt7621_asiarf_ap7621-001.dts         | 1 -
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
 26 files changed, 3 insertions(+), 34 deletions(-)

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
diff --git a/target/linux/ramips/dts/mt7621_asiarf_ap7621-001.dts b/target/linux/ramips/dts/mt7621_asiarf_ap7621-001.dts
index 2e1479d0c6..cfd6d5fabe 100644
--- a/target/linux/ramips/dts/mt7621_asiarf_ap7621-001.dts
+++ b/target/linux/ramips/dts/mt7621_asiarf_ap7621-001.dts
@@ -120,4 +120,3 @@
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
index 5709492423..d23ff66185 100644
--- a/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
+++ b/target/linux/ramips/dts/mt7621_mtc_wr1201.dts
@@ -141,7 +141,6 @@
 	};
 };
 
-
 &pinctrl {
 	state_default: pinctrl0 {
 		gpio {
diff --git a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
index 00d76a3529..dd879db1c8 100644
--- a/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
+++ b/target/linux/ramips/dts/mt7628an_cudy_wr1000.dts
@@ -99,7 +99,6 @@
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
index f7aec8e1f5..576aa5f0b1 100644
--- a/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
+++ b/target/linux/ramips/dts/mt7628an_vocore_vocore2.dtsi
@@ -8,7 +8,6 @@
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
index 69cc5e252a..d2b216fcbb 100644
--- a/target/linux/ramips/dts/rt3050_dlink_dir-615-d.dts
+++ b/target/linux/ramips/dts/rt3050_dlink_dir-615-d.dts
@@ -117,5 +117,3 @@
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
index 16ab9567c0..c229fb7145 100644
--- a/target/linux/ramips/dts/rt5350_zyxel_keenetic-start.dts
+++ b/target/linux/ramips/dts/rt5350_zyxel_keenetic-start.dts
@@ -102,7 +102,6 @@
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
