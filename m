Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B37BF00DF
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 16:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BMTNESO4CX7qGGhWfz3b/Zy+6eCzSa7U3SUCxzutXdg=; b=k96cCm310oltPb
	wiFNyyRSh6gzDWZaXlFOMoGp1J2TSQM0Zo+RSorvQAgSLYivPznyw7k6RtmjcG4THCWvs4KC0qOyg
	KvMF0n+avohJYJ9Ijyej16MFiyJB3wj+4iYqEe7/K4LTRBdcnHpspf97uc6DZbo8AZFNQwR2HjRLj
	nwcm/ivWBirMZv2g54nt9Ajp3NTXK+PPGCLFOWGztJAyG84CipYgIWF05XXryprLePjQzkQt20lwu
	nOBvAm+54j7PwuXz8AP1NE4MDcop53O/+/VdjnEakOQtFvc02tR+skMUgMvaSjy+tfY36CQwzT6rp
	8SfH7eU7c8kfKqUdYhSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0VK-0005J3-Uh; Tue, 05 Nov 2019 15:12:22 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0VC-0005I8-JC
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 15:12:17 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MBlpC-1ie9ak2vxE-00C8GB; Tue, 05 Nov 2019 16:12:06 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 16:12:02 +0100
Message-Id: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:JEuaO/gkB5VEb/nMYBekfv/CTvBL5kbf7qq+02NNQ7192iyLYYd
 Y8d4BAFhK6CJBB0kDocq0BJbOwi6TEoGNmVoW/0jujAu6snFhgeOzwgjDF0+rHi+orT8sK6
 DHCngyrQhGjtXZOZr9VagV4TxmKsdoOPDFFw+a2dqlOQ7JoGVYFA6yRdfLV9SZ2oKBfwN8s
 gb59tnMa0RB3Lsgb6BIqA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m7yLhDg7K8c=:BvLtMH6OEVRuwxsNibHYUQ
 qpAn+Pvogddn/Re10xvKsArwSW3Uksm04plm2XYYG4Eo6M1HbBg/D04qJGUrqsNLCZOjREHLt
 z+zz3MwT4/lLzsWxQiDCvJr+YFkcDaBNpAefNVC2wTilPfvF5kszooPViv+4W1ggwvVB1fKB3
 IjblJk9JDMfKcb+RVQP53i2DI/dWyy0CoaAqmvQKJctJ1XWsWX2WZ9zWyYjvqYQzDEfrgC8/w
 K/iO46Dbz/YKBaEL7Ced98S1v6MU186NRPLpgUUGuR+s1BkOHzSAbaNWAK13KRnLF5zw6oPcr
 bdFFipbOh/nmzKozHC0FatILDxE/kjwrvxstrIfOUKzZT/F/YvZOhfIqyPnSeqIt/+F+zo3uW
 T7KyNsnObeKiqBFOVcU36UeVOD6p3EcAkWSGC+Eig6xTw4UtE+E63ZPljSLula/6XsXv9wsMx
 F466SgxeLBeEHm2//0i0ALF8pHLlF8OtRSsN2S4yotqAv8BC18d0C4dw+Re69RHzQnWEyFpzR
 AmADin9KtZosYibsZQ2MGAFEVIJK+kQTm2t7M0zlsQMyQHmrjWpX4FKnTYjkvrtijRJFHhh4J
 xDr0yKgaDDD/hW1IcbJmmYO2ZFmlPNwE8Yaz3ju/cqzR7Ln1nv/Ql/Wrs0lBocMLYxnNj4ayb
 bljldh+aRyaXGIXHqxtr2XXxBoR/C9cpkohRdkXXsjEdmTrFxXwJk/skocArS5AkTRahqCzEw
 zBCnOfk/BTNBcevW4V+LkANpry2Yj84trhhaUOwrthJk5OD4YLxACXw9xMimwE0m3CnL8NwWp
 QUBly2SC9X4QEOStiHuUj7sHpmY4Fw6AQJl/np9xWQDbPQ2fSf+jZx+DYR6Yz1Cupw3cNfqiy
 vGRHbAhDV1IjkPeBWaRTISODY2vFjIieggbumA7tY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_071214_933638_D58E6CA5 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: Birger Koblitz <mail@birger-koblitz.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Birger Koblitz <mail@birger-koblitz.de>

The gpio-export functionality is a hack for missing kernel
functionality, which was rejected in upstream kernel long time ago,
for details see this email
http://lists.infradead.org/pipermail/openwrt-devel/2019-February/015772.html,
discussion in PR#1366 or
https://github.com/openwrt/openwrt/pull/1814#issuecomment-462942022.

This patch converts all DTS files with settings that normally do
not need user interaction, e.g. power for external USB ports, to
gpio_hog. The only remaining gpio-export will be in
qca9558_openmesh_om5p-ac-v2.dts

Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>
[rebased, renamed nodes, do not change openmesh, removed redundant
status=okay, updated commit message]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This is a resubmission of the patch initially created by Birger
Koblitz. It should be limited to conversion that do not require
the user setting the value.
---
 .../dts/ar7161_buffalo_wzr-hp-ag300h.dts      | 19 ++++++------
 .../ath79/dts/ar7241_tplink_tl-mr3x20.dtsi    | 15 +++++-----
 .../ath79/dts/ar7241_tplink_tl-wr842n-v1.dts  | 19 +++++-------
 .../ath79/dts/ar7242_buffalo_wzr-bhr.dtsi     | 20 ++++++-------
 .../dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts  | 20 ++++++-------
 .../ath79/dts/ar9341_tplink_tl-wr842n-v2.dts  | 19 ++++++------
 .../ath79/dts/qca9558_devolo_dvl1750e.dts     | 15 +++++-----
 .../ath79/dts/qca9558_tplink_archer-c7.dtsi   | 30 +++++++++----------
 .../dts/qca9558_tplink_tl-wdr4900-v2.dts      | 28 +++++++++--------
 .../ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi | 20 +++++--------
 .../ath79/dts/qca9561_tplink_archer-c5x.dtsi  | 30 +++++++++----------
 .../ath79/dts/qca9563_dlink_dir-859-a1.dts    | 20 +++++--------
 .../ath79/dts/qca9563_tplink_archer-c7-v4.dts | 30 +++++++++----------
 .../dts/qca9563_tplink_archer-x7-v5.dtsi      | 17 +++++------
 .../dts/qca9563_tplink_tl-wr1043nd-v4.dts     | 16 +++++-----
 15 files changed, 145 insertions(+), 173 deletions(-)

diff --git a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
index f51bc0f771..23f1845876 100644
--- a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
+++ b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h.dts
@@ -120,16 +120,6 @@
 		};
 	};
 
-	gpio-export {
-		compatible = "gpio-export";
-
-		gpio_usb_power {
-			gpio-export,name = "buffalo:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 2 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
 	flash {
 		compatible = "mtd-concat";
 
@@ -172,6 +162,15 @@
 	};
 };
 
+&gpio {
+	usb_power {
+		gpio-hog;
+		line-name = "buffalo:power:usb";
+		gpios = <2 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
 &usb_phy {
 	status = "okay";
 };
diff --git a/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20.dtsi b/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20.dtsi
index 04403637b6..333ee17ceb 100644
--- a/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20.dtsi
+++ b/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20.dtsi
@@ -3,15 +3,14 @@
 #include "ar7241_tplink.dtsi"
 
 / {
-	gpio-export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+};
 
-		gpio_usb_power {
-			gpio-export,name = "tp-link:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 6 GPIO_ACTIVE_HIGH>;
-		};
+&gpio {
+	usb_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb";
+		gpios = <6 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };
 
diff --git a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
index 162b5f2838..ee468df244 100644
--- a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
+++ b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1.dts
@@ -66,15 +66,16 @@
 			linux,default-trigger = "phy0tpt";
 		};
 	};
+};
 
-	gpio-export {
-		compatible = "gpio-export";
+&gpio {
+	status = "okay";
 
-		gpio_usb_power {
-			gpio-export,name = "tp-link:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 6 GPIO_ACTIVE_HIGH>;
-		};
+	usb_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb";
+		gpios = <6 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };
 
@@ -155,10 +156,6 @@
 	mtd-mac-address-increment = <1>;
 };
 
-&gpio {
-	status = "okay";
-};
-
 &uart {
 	status = "okay";
 };
diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
index 3b5a4dd13d..d7632faf5c 100644
--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr.dtsi
@@ -57,17 +57,6 @@
 		};
 	};
 
-	gpio-export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		gpio_usb_power {
-			gpio-export,name = "buffalo:usb-power";
-			gpio-export,output = <1>;
-			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
 	virtual_flash {
 		compatible = "mtd-concat";
 		devices = <&flash0 &flash1>;
@@ -109,6 +98,15 @@
 	};
 };
 
+&gpio {
+	usb_power {
+		gpio-hog;
+		line-name = "buffalo:usb-power";
+		gpios = <16 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
 &spi {
 	status = "okay";
 	cs-gpios = <0>, <0>;
diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
index 8ac4df2194..2b30b7830b 100644
--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0.dts
@@ -109,17 +109,6 @@
 		};
 	};
 
-	gpio-export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		gpio_usb_power {
-			gpio-export,name = "buffalo:usb-power";
-			gpio-export,output = <1>;
-			gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
 	virtual_flash {
 		compatible = "mtd-concat";
 		devices = <&flash0 &flash1>;
@@ -161,6 +150,15 @@
 	};
 };
 
+&gpio {
+	usb_power {
+		gpio-hog;
+		line-name = "buffalo:usb-power";
+		gpios = <13 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
 &spi {
 	status = "okay";
 	cs-gpios = <0>, <0>;
diff --git a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
index 86a316b518..1df0e27cb2 100644
--- a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
+++ b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2.dts
@@ -6,16 +6,6 @@
 / {
 	model = "TP-Link TL-WR842N/ND v2";
 	compatible = "tplink,tl-wr842n-v2", "qca,ar9341";
-
-	gpio-export {
-		compatible = "gpio-export";
-
-		gpio_usb_power {
-			gpio-export,name = "tp-link:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &keys {
@@ -36,6 +26,15 @@
 	};
 };
 
+&gpio {
+	usb_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb";
+		gpios = <4 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
 &spi {
 	num-cs = <1>;
 
diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts b/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts
index 3d25004c40..e790cf0df4 100644
--- a/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts
+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1750e.dts
@@ -53,15 +53,14 @@
 		compatible = "gpio-beeper";
 		gpios = <&gpio 4 GPIO_ACTIVE_HIGH>;
 	};
+};
 
-	gpio_export {
-		compatible = "gpio-export";
-
-		gpio_usb_power {
-			gpio-export,name = "devolo:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
-		};
+&gpio {
+	usb_power {
+		gpio-hog;
+		line-name = "devolo:power:usb";
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi b/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi
index c77613dad6..fb38f35dc1 100644
--- a/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi
+++ b/target/linux/ath79/dts/qca9558_tplink_archer-c7.dtsi
@@ -64,22 +64,6 @@
 			debounce-interval = <60>;
 		};
 	};
-
-	gpio-export {
-		compatible = "gpio-export";
-
-		gpio_usb1_power {
-			gpio-export,name = "tp-link:power:usb1";
-			gpio-export,output = <1>;
-			gpios = <&gpio 21 GPIO_ACTIVE_HIGH>;
-		};
-
-		gpio_usb2_power {
-			gpio-export,name = "tp-link:power:usb2";
-			gpio-export,output = <1>;
-			gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &pcie1 {
@@ -92,6 +76,20 @@
 
 &gpio {
 	status = "okay";
+
+	usb1_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb1";
+		gpios = <21 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+
+	usb2_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb2";
+		gpios = <22 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };
 
 &usb_phy0 {
diff --git a/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2.dts b/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2.dts
index 77166b8bfe..470b742578 100644
--- a/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2.dts
+++ b/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2.dts
@@ -57,7 +57,7 @@
 		};
 	};
 
-	 ath9k-leds {
+	ath9k-leds {
 		compatible = "gpio-leds";
 
 		wlan5g {
@@ -77,21 +77,23 @@
 			debounce-interval = <60>;
 		};
 	};
+};
 
-	gpio-export {
-		compatible = "gpio-export";
+&gpio {
+	status = "okay";
 
-		gpio_usb1_power {
-			gpio-export,name = "tp-link:power:usb1";
-			gpio-export,output = <1>;
-			gpios = <&gpio 21 GPIO_ACTIVE_HIGH>;
-		};
+	usb1_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb1";
+		gpios = <21 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 
-		gpio_usb2_power {
-			gpio-export,name = "tp-link:power:usb2";
-			gpio-export,output = <1>;
-			gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
-		};
+	usb2_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb2";
+		gpios = <22 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };
 
diff --git a/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi b/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi
index 1092250f02..f6d34ab3ff 100644
--- a/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi
+++ b/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd.dtsi
@@ -64,16 +64,16 @@
 			debounce-interval = <60>;
 		};
 	};
+};
 
-	gpio-export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio {
+	status = "okay";
 
-		gpio_usb_power {
-			gpio-export,name = "tp-link:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 21 GPIO_ACTIVE_HIGH>;
-		};
+	usb_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb";
+		gpios = <21 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };
 
@@ -81,10 +81,6 @@
 	status = "okay";
 };
 
-&gpio {
-	status = "okay";
-};
-
 &usb_phy0 {
 	status = "okay";
 };
diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
index ddf92108b5..53329f2268 100644
--- a/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c5x.dtsi
@@ -103,22 +103,6 @@
 			gpios = <&gpio 21 GPIO_ACTIVE_LOW>;
 		};
 	};
-
-	gpio-export {
-		compatible = "gpio-export";
-
-		gpio_shift_register_oe {
-			gpio-export,name = "tp-link:oe:sr";
-			gpio-export,output = <0>;
-			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
-		};
-
-		gpio_shift_register_reset {
-			gpio-export,name = "tp-link:reset:sr";
-			gpio-export,output = <1>;
-			gpios = <&gpio 19 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &uart {
@@ -127,6 +111,20 @@
 
 &gpio {
 	status = "okay";
+
+	shift_register_oe {
+		gpio-hog;
+		line-name = "tp-link:oe:sr";
+		gpios = <16 GPIO_ACTIVE_HIGH>;
+		output-low;
+	};
+
+	shift_register_reset {
+		gpio-hog;
+		line-name = "tp-link:reset:sr";
+		gpios = <19 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };
 
 &pcie {
diff --git a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
index a17d9f263a..63baa376c6 100644
--- a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
+++ b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1.dts
@@ -61,16 +61,16 @@
 			debounce-interval = <60>;
 		};
 	};
+};
 
-	gpio-export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio {
+	status = "okay";
 
-		gpio_switch_reset {
-			gpio-export,name = "dir-859-a1:reset:switch";
-			gpio-export,output = <1>;
-			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
-		};
+	switch_reset {
+		gpio-hog;
+		line-name = "dir-859-a1:reset:switch";
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };
 
@@ -78,10 +78,6 @@
 	status = "okay";
 };
 
-&gpio {
-	status = "okay";
-};
-
 &pcie {
 	status = "okay";
 };
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts
index 470a8e6bf9..66083aa7f9 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4.dts
@@ -42,22 +42,6 @@
 		};
 	};
 
-	gpio-export {
-		compatible = "gpio-export";
-
-		gpio_shift_register_oe {
-			gpio-export,name = "tp-link:oe:sr";
-			gpio-export,output = <0>;
-			gpios = <&gpio 1 GPIO_ACTIVE_LOW>;	// 74HC595 /OE (Output Enable)
-		};
-
-		gpio_shift_register_reset {
-			gpio-export,name = "tp-link:reset:sr";
-			gpio-export,output = <1>;
-			gpios = <&gpio 21 GPIO_ACTIVE_LOW>;	// 74HC595 /SRCLR (Serial Clear)
-		};
-	};
-
 	leds {
 		compatible = "gpio-leds";
 
@@ -158,6 +142,20 @@
 
 &gpio {
 	status = "okay";
+
+	shift_register_oe { // 74HC595 /OE
+		gpio-hog;
+		line-name = "tp-link:oe:sr";
+		gpios = <1 GPIO_ACTIVE_LOW>;
+		output-low;
+	};
+
+	shift_register_reset { // 74HC595 /SRCLR
+		gpio-hog;
+		line-name = "tp-link:reset:sr";
+		gpios = <21 GPIO_ACTIVE_LOW>;
+		output-high;
+	};
 };
 
 &usb_phy0 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi b/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi
index 2e66e0f03e..64115c4248 100644
--- a/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi
+++ b/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5.dtsi
@@ -93,16 +93,6 @@
 			debounce-interval = <60>;
 		};
 	};
-
-	gpio-export {
-		compatible = "gpio-export";
-
-		gpio_usb_power {
-			gpio-export,name = "tp-link:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 19 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };
 
 &pcie {
@@ -115,6 +105,13 @@
 
 &gpio {
 	status = "okay";
+
+	usb_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb";
+		gpios = <19 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };
 
 &usb_phy0 {
diff --git a/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4.dts b/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4.dts
index 07a7409886..45ee0c21c7 100644
--- a/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4.dts
+++ b/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4.dts
@@ -6,16 +6,14 @@
 / {
 	compatible = "tplink,tl-wr1043nd-v4", "qca,qca9563";
 	model = "TP-Link TL-WR1043ND v4";
+};
 
-	gpio-export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		gpio_usb_power {
-			gpio-export,name = "tp-link:power:usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio 8 GPIO_ACTIVE_HIGH>;
-		};
+&gpio {
+	usb_power {
+		gpio-hog;
+		line-name = "tp-link:power:usb";
+		gpios = <8 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
