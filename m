Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0C1B4DBD
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 14:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=62XCSAOTTfcfvHc4kB7sEb6ujMQgyisVLEViEw+IeSM=; b=LfdvfIDK00HaCm
	lDdQPAtV2ssIFgHkpTy+Qh/m4QMfKWo0OQoibLcZgKoKyBC3X1/RzoFi3YCR+vFfWogAwbtMVAEnu
	jmklaGOWuy8J69Jaw5yfjKzFO/y6Go5pnI5AhS28aC3f8E0vziw7nr+4YUo9Ai3sypdMDKlCjlTGf
	o7NL8rL6yj+mAE4BTVtTKr3vpFffMiLxxAJ405SC/4CKDWLswh+/Vs95HxCtXlhY3dPK29GUDG99n
	4L2vJS0s4b27px13nEvyonVOOEo+mEbttZAO5lzIEIdLaPtFt2VcZyzVLZEyn/W5FUJ5yGcbkkzGp
	DzFaUaDC/Jiv2oOpSkPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACXC-000552-R5; Tue, 17 Sep 2019 12:24:42 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACVE-0004F1-D3
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 12:22:44 +0000
Received: from buildfff.adridolf.com ([188.192.136.78]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MNL2Y-1iYsGF0MGY-00Omus for <openwrt-devel@lists.openwrt.org>; Tue, 17
 Sep 2019 14:22:37 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 14:22:34 +0200
Message-Id: <20190917122234.2813-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:nRMgpEGiQaJVg2VhICGz4Mp0TcZa2vyg7zbjnoxTAGj4EPxau9E
 6YySFRNNGrIMZFdnUofkUTWNhADULGYN2v+gP2Sx0j9oDj5CNDuc0EfmR9aRtQdY5TrdMvK
 XklOBf3TxN700ItJrUxlhHE66bO95fbVKQ0eT5xPPtVzJ6iJRhUaMqtirQpQgh4POlMuOFB
 PU9Z5X+kuV5hm20PxlreA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5HBOJ9chu9w=:8QJ4x36gG6ycTl30GkEMHE
 pxpzCR9vANy69HwGzDo5UE3LQ1HYk7g4bDcTFenw594cLxPJm2j/r3F9ptbIQhtS51Kxf4kYf
 iYjchTTkaoYIme2yfjbt7w2eWibhLB6YeJvu3096kNWLpOgHPmKNec5uta/keQ1nP7qIqvpJP
 hTAWeg5EGCNwnOV74DVH1e+RLeE+FP2SOg3gGOqNCFRrmUqu9l4CUGwVjoUiJC2k/s0pBDdsD
 HXnTMD/pVjkWDFoJ4vSINmlfcfTQxZGdWgv2JFu0LRv0FxVCDEY9o3+PBYQCFIshwl1C34pc3
 s3EQ02stjlTlJ3diX8lFKairxl6jGx4NFaRZtTtcS9eIkzk4P/RdTFKLNIjJVMspIeDTp6xN/
 S6a6y0XBeWAADZEGsriXrgPIIXg79VlLLHro44Yo7UDffm7B9eQnKQoO2A1qu7+ULnArXVHN0
 V0+2zV2uZRBY2+/8/OXtT33KOQ9SH4AFL30srvbk5iTUzyp2mH2PKQ09spOulbuyp3K6bFvcc
 3mfFIQrpg4+I45FGCrftyDNoSITDUu2o8EXwaTIfvSvnVAX8AaKhXt2wU/zw/qD29JMVL6n11
 zO4u9cv02b9brdFuwBrohowAn0A7RWvFEXzXAf+fOhWZ0UWIeJU/P4oXyWJFvjnM4WIquGJjK
 d4IdBGQGFOjabSzOh3FtvA65+SGUOYOJPRtWZrWUn58yt5US3q30apjhP9PH/WjEFUk4dOrXO
 nFa2QyXmId/a+hxuHTNx99LfmMFTQUa7EvD3S8QsOWyxFjaGEiKkbs1TtNiZeKOIv4JOjTCB8
 vsT9b5NcDUAlZtIePn8Dn7+r95BkxBKWszHcSIVtVADQPtG7HlGHOnBU9e1+dPNHVu+bsdIQ4
 kOuFUZKXk26CpaeqZmNJGfLImgPiquACrGtgj+4zs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_052242_041251_7ACD92A0 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix whitespace issues in DTS files
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

This patch fixes them for the ath79 target.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts            | 2 --
 target/linux/ath79/dts/ar7161_netgear_wndr3800.dts            | 1 -
 target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts           | 1 -
 target/linux/ath79/dts/ar7240_on_n150r.dts                    | 1 -
 target/linux/ath79/dts/ar9331_tplink_tl-mr3020-v1.dts         | 1 -
 target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi  | 1 -
 target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts         | 1 -
 target/linux/ath79/dts/ar9344_dlink_dir-825-c1.dts            | 1 -
 target/linux/ath79/dts/ar9344_dlink_dir-835-a1.dts            | 1 -
 target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi              | 1 -
 target/linux/ath79/dts/ar9344_pcs_cr5000.dts                  | 1 -
 target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts           | 1 -
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts      | 2 +-
 target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts            | 3 ---
 target/linux/ath79/dts/qca9531_tplink_archer-d50-v1.dts       | 2 +-
 target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts        | 1 -
 target/linux/ath79/dts/qca953x.dtsi                           | 3 ---
 target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v1.dts      | 1 -
 target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v2.dts      | 1 -
 target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts            | 1 -
 target/linux/ath79/dts/qca9558_engenius_ecb1750.dts           | 1 -
 target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts | 4 ----
 target/linux/ath79/dts/qca9558_ocedo_ursus.dts                | 2 --
 target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi          | 1 -
 target/linux/ath79/dts/qca9558_trendnet_tew-823dru.dts        | 3 ---
 target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi         | 1 -
 target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts        | 1 -
 target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi              | 1 -
 28 files changed, 2 insertions(+), 39 deletions(-)

diff --git a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
index da19921973..ec5367fede 100644
--- a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
+++ b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
@@ -120,7 +120,6 @@
 	};
 };
 
-
 &usb1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
@@ -222,7 +221,6 @@
 	};
 };
 
-
 &eth0 {
 	status = "okay";
 	pll-data = <0x11110000 0x00001099 0x00991099>;
diff --git a/target/linux/ath79/dts/ar7161_netgear_wndr3800.dts b/target/linux/ath79/dts/ar7161_netgear_wndr3800.dts
index 589d0ec840..0959bf4d97 100644
--- a/target/linux/ath79/dts/ar7161_netgear_wndr3800.dts
+++ b/target/linux/ath79/dts/ar7161_netgear_wndr3800.dts
@@ -33,4 +33,3 @@
 		read-only;
 	};
 };
-
diff --git a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
index b3ceecf932..b568d90eff 100644
--- a/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
+++ b/target/linux/ath79/dts/ar7240_netgear_wnr612-v2.dts
@@ -7,4 +7,3 @@
 	model = "Netgear WNR612 v2";
 	compatible = "netgear,wnr612-v2", "qca,ar7240";
 };
-
diff --git a/target/linux/ath79/dts/ar7240_on_n150r.dts b/target/linux/ath79/dts/ar7240_on_n150r.dts
index a318846a83..3aaa07f724 100644
--- a/target/linux/ath79/dts/ar7240_on_n150r.dts
+++ b/target/linux/ath79/dts/ar7240_on_n150r.dts
@@ -7,4 +7,3 @@
 	model = "ON Network N150R";
 	compatible = "on,n150r", "qca,ar7240";
 };
-
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-mr3020-v1.dts b/target/linux/ath79/dts/ar9331_tplink_tl-mr3020-v1.dts
index 9182374235..1750e92499 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-mr3020-v1.dts
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-mr3020-v1.dts
@@ -153,7 +153,6 @@
 	};
 };
 
-
 &eth0 {
 	status = "okay";
 
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
index ffd3d71a62..bec430a89b 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr703n_tl-mr10u.dtsi
@@ -43,7 +43,6 @@
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 	};
-
 };
 
 &spi {
diff --git a/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts b/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
index 056e9fa512..0a660639a1 100644
--- a/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
+++ b/target/linux/ath79/dts/ar9331_tplink_tl-wr710n-v1.dts
@@ -47,7 +47,6 @@
 		gpio = <&gpio 8 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
-
 };
 
 &spi {
diff --git a/target/linux/ath79/dts/ar9344_dlink_dir-825-c1.dts b/target/linux/ath79/dts/ar9344_dlink_dir-825-c1.dts
index 89603aaff6..f060e29eef 100644
--- a/target/linux/ath79/dts/ar9344_dlink_dir-825-c1.dts
+++ b/target/linux/ath79/dts/ar9344_dlink_dir-825-c1.dts
@@ -76,4 +76,3 @@
 		pinctrl-single,bits = <0x8 0x0 0xff000000>;
 	};
 };
-
diff --git a/target/linux/ath79/dts/ar9344_dlink_dir-835-a1.dts b/target/linux/ath79/dts/ar9344_dlink_dir-835-a1.dts
index 4f0c1e58ee..29f30028b2 100644
--- a/target/linux/ath79/dts/ar9344_dlink_dir-835-a1.dts
+++ b/target/linux/ath79/dts/ar9344_dlink_dir-835-a1.dts
@@ -44,4 +44,3 @@
 		};
 	};
 };
-
diff --git a/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi b/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi
index b49d3458fe..2dd2297e87 100644
--- a/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi
+++ b/target/linux/ath79/dts/ar9344_dlink_dir-8x5.dtsi
@@ -148,4 +148,3 @@
 	status = "okay";
 	qca,no-eeprom;
 };
-
diff --git a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
index 0b4a0ea374..86c59b3d5a 100644
--- a/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
+++ b/target/linux/ath79/dts/ar9344_pcs_cr5000.dts
@@ -177,7 +177,6 @@
 	phy-mode = "rgmii";
 	phy-handle = <&phy0>;
 
-
 	aliases {
 		ag0 = &eth1;
 	};
diff --git a/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
index d899cff9ef..d98cbe566d 100644
--- a/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
+++ b/target/linux/ath79/dts/ar9344_zbtlink_zbt-wd323.dts
@@ -63,7 +63,6 @@
 			label = "zbt-wd323:orange:lan2";
 			gpios = <&gpio 22 GPIO_ACTIVE_LOW>;
 		};
-
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
index fba08e4295..1d7873621a 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar300m-lite.dts
@@ -19,4 +19,4 @@
 
 &led_wlan {
 	label = "gl-ar300m-lite:green:wlan";
-};
\ No newline at end of file
+};
diff --git a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
index 54aad320f6..e29b507ccb 100644
--- a/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
+++ b/target/linux/ath79/dts/qca9531_glinet_gl-ar750.dts
@@ -49,7 +49,6 @@
 			gpios = <&gpio 13 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "phy0tpt";
 		};
-
 	};
 
 	i2c {
@@ -58,8 +57,6 @@
 		sda-gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
 		scl-gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
 	};
-
-
 };
 
 &pcie0 {
diff --git a/target/linux/ath79/dts/qca9531_tplink_archer-d50-v1.dts b/target/linux/ath79/dts/qca9531_tplink_archer-d50-v1.dts
index 25c1d050da..768610c788 100644
--- a/target/linux/ath79/dts/qca9531_tplink_archer-d50-v1.dts
+++ b/target/linux/ath79/dts/qca9531_tplink_archer-d50-v1.dts
@@ -27,7 +27,7 @@
 			label = "tp-link:white:wlan5g";
 			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "phy1tpt";
-                };
+		};
 
 		qss_led: qss {
 			label = "tp-link:white:qss";
diff --git a/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts b/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
index 22d70af594..2fb73656f9 100644
--- a/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
+++ b/target/linux/ath79/dts/qca9533_tplink_tl-wr842n-v3.dts
@@ -165,4 +165,3 @@
 	mtd-cal-data = <&art 0x1000>;
 	mtd-mac-address = <&uboot 0x1fc00>;
 };
-
diff --git a/target/linux/ath79/dts/qca953x.dtsi b/target/linux/ath79/dts/qca953x.dtsi
index 7a7d178ff4..f127d4d01b 100644
--- a/target/linux/ath79/dts/qca953x.dtsi
+++ b/target/linux/ath79/dts/qca953x.dtsi
@@ -212,9 +212,7 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 		};
-
 	};
-
 };
 
 &cpuintc {
@@ -237,7 +235,6 @@
 	phy-mode = "mii";
 };
 
-
 &mdio1 {
 	status = "okay";
 	resets = <&rst 23>;
diff --git a/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v1.dts b/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v1.dts
index ff0fc0fe33..045806fa6e 100644
--- a/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v1.dts
+++ b/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v1.dts
@@ -35,7 +35,6 @@
 			linux,default-trigger = "phy0tpt";
 		};
 	};
-
 };
 
 &spi {
diff --git a/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v2.dts b/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v2.dts
index fc461d16d0..67ed1f886b 100644
--- a/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v2.dts
+++ b/target/linux/ath79/dts/qca9558_comfast_cf-wr650ac-v2.dts
@@ -35,7 +35,6 @@
 			linux,default-trigger = "phy0tpt";
 		};
 	};
-
 };
 
 &spi {
diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts b/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts
index 2570eb7cea..3d25004c40 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts
@@ -54,7 +54,6 @@
 		gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;
 	};
 
-
 	gpio_export {
 		compatible = "gpio-export";
 
diff --git a/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts b/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts
index 27f0313019..65be14ffd7 100644
--- a/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts
+++ b/target/linux/ath79/dts/qca9558_engenius_ecb1750.dts
@@ -109,7 +109,6 @@
 				reg = <0xff0000 0x010000>;
 				read-only;
 			};
-
 		};
 	};
 };
diff --git a/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts b/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts
index 3b7e3aceda..4862083f70 100644
--- a/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts
+++ b/target/linux/ath79/dts/qca9558_librerouter_librerouter-v1.dts
@@ -40,7 +40,6 @@
 			label = "librerouter-v1:blue:status";
 			gpios = <&gpio 20 GPIO_ACTIVE_LOW>;
 		};
-
 	};
 
 	button {
@@ -52,7 +51,6 @@
 			gpios = <&gpio 17 GPIO_ACTIVE_LOW>;
 			debounce-interval = <60>;
 		};
-
 	};
 
 	watchdog {
@@ -62,7 +60,6 @@
 		hw_margin_ms = <1000>;
 		always-running;
 	};
-
 };
 
 &pcie0 {
@@ -187,7 +184,6 @@
 	mtd-mac-address = <&art 0x0>;
 
 	phy-handle = <&phy0>;
-
 };
 
 &eth1 {
diff --git a/target/linux/ath79/dts/qca9558_ocedo_ursus.dts b/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
index 4914e03ba2..5ae2e2bbb9 100644
--- a/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
+++ b/target/linux/ath79/dts/qca9558_ocedo_ursus.dts
@@ -28,9 +28,7 @@
 			gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "phy0tpt";
 		};
-
 	};
-
 };
 
 &pcie1 {
diff --git a/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi b/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi
index 343d318e0b..eb38c0f713 100644
--- a/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi
+++ b/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi
@@ -78,7 +78,6 @@
 			gpio-export,output = <1>;
 			gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
 		};
-
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9558_trendnet_tew-823dru.dts b/target/linux/ath79/dts/qca9558_trendnet_tew-823dru.dts
index ca9847fab9..89887465dc 100644
--- a/target/linux/ath79/dts/qca9558_trendnet_tew-823dru.dts
+++ b/target/linux/ath79/dts/qca9558_trendnet_tew-823dru.dts
@@ -62,7 +62,6 @@
 			debounce-interval = <60>;
 		};
 	};
-
 };
 
 &pcie0 {
@@ -166,7 +165,6 @@
 				reg = <0xff0000 0x010000>;
 				read-only;
 			};
-
 		};
 	};
 };
@@ -209,7 +207,6 @@
 	};
 };
 
-
 &wmac {
 	status = "okay";
 	mtd-cal-data = <&art 0x1000>;
diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
index 141baa6bd4..687aaed26a 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
@@ -118,7 +118,6 @@
 			gpio-export,output = <1>;
 			gpios = <&gpio 19 GPIO_ACTIVE_HIGH>;
 		};
-
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts
index f4add2fe31..0cc2c8a37c 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts
@@ -145,7 +145,6 @@
 			debounce-interval = <60>;
 		};
 	};
-
 };
 
 &pcie {
diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
index fdd4a01d86..ab408a6954 100644
--- a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
+++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
@@ -29,7 +29,6 @@
 			label = "ubnt:blue:dome";
 			gpios = <&gpio 8 GPIO_ACTIVE_HIGH>;
 		};
-
 	};
 
 	keys {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
