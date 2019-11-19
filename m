Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAE4102766
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 15:54:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7RSRgm9EilYPFA1lDxhSs5OlHga9gxOIowjPWaNyapc=; b=BGzEy9+uqPOy8K
	0DIZ3UqIOqAW2qqgBVf8m2yXaoY3QYG/UfnWMXJl88txo8MvjTx8v74C+eG6v0BOpN1tgCVSyr6Ky
	vmgvnSVNoS0herJVLP0AiSEELiASdyM2LUXT7aOQuv2+PsvJFIk/Mcayksfq5NUlQg7faAi9ra3mm
	rDelf5hMNJ/mkizDnjVRVqamWxJk86Rb6Fy1e3areL0M11Vj106eE5OzxhOn/s3jSvyXibZqwP7X2
	RUn2VXkTWfdX6rTBzB5MHJJ07V2B+OikE5s0gp6MiFIWWowS1HPf0t0GaeUYNz/yv2iRxQQz7lfCm
	xjcPMXFDDN5D3D2uJcOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4te-0004AL-Jm; Tue, 19 Nov 2019 14:54:26 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4t9-000402-KQ
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 14:53:57 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M7auJ-1iU58l2Kr7-007zgf for <openwrt-devel@lists.openwrt.org>; Tue, 19
 Nov 2019 15:53:50 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 Nov 2019 15:52:51 +0100
Message-Id: <20191119145251.3098-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:UrJSXL1v5Z7BsFkBKbxy6dLZYicbqeX5Qt0Q+ZUOUwPuttQ1UJh
 9ydc3tbl7B7/EpKXPIMNpJNqpJhHZ9KI5UvkSoKTau+ZICWtp/NQneITXxhkQM/WyiLt6lc
 iYsEAmJUG3DrVQdzB427xORFDUUXC5JMxdRTdregdNaLpHjlgPX/8lXlW/kS9xL7h9tDtMH
 4jYHa+U0uxCWJeWNiAy8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:99s8877wntY=:ZY4O93GJn6nfmBdojr1aZj
 zIsA9NZnJpY9K/9aYqMOEbAOcBtmDvFvyLFS1OWgK3RkfqRTb+IWh+fXiT1/nHRi3wBZhzKk3
 CDR9k2yl9MIQJssEviSrtu/ik+04l1nF8sEUZ7bjQErbui6W4l1KRUnhybqt5CBt+ERZHuV59
 2k70CD1mBj0HR/I5b+OCeVWRA7tGXcZiK2476QjfZbuNIV9fxDP59U//okRGv01at1L1AQQVh
 Dmf7mQcNM96tYu/WgQfuQy+JyoXf/zSNz4+ytr7zzDHWCnvORXfBZRJwfC4UwUvkzcuK0oDsf
 RWo5A9dgZnYo2l1pZ3g7hkxXvo4Epm+szzrExZgm14SspBpZWL3793W7r/UzV21olGOWGIM+i
 DKvqz4usFDchskCPdW4Ixyg813gqsNTNb2Lfpt1K6JcVCxWz2pOWnX9ev3JzPKQpnBZbMs29q
 I5dzK0Mi0zU9grF1FecIzClAxHQ3xet0fuSOc+0laKWDIp5wRQ7oILLRP5h7sWmM3l2SVoqhu
 37rIaO3hXY1rsxwB9zhRvFlUu01bsA0DducbYR1ordOXSrqu+5sIN/vs2M9/DPlZc570ecHh2
 leCXk00jA4aTMTtgPzynY+fYTje05sGR4Fp4WRuI/VI9i49MGN1nzlGvYbAd6ktLrE4FIkhJ9
 sPDicnkXC3zq0xvd53YqCAV+/faBbF0tz/Gmvr4epzJsJ2pehjAY+aWR9PS9wgss3+pyObqeA
 O7gKv/rQCJ+M5iYgwuWgYc44Rk2Z4WXuzppcbmYP0HwgIEmNw/v9T8z6fuhCNCRQkuvn3h0hc
 eQUNWdZ2j4B4nbCQo4cdHeVAxCKm+8P0NGyr12g9055Zr8xhDjQ8Msrn/B3GKexw07nmH6WU9
 7oGCSlufDRQD71af4n01un9u5agKrtGj9Ml9Or4S0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_065355_964438_59991281 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: DTS style improvement for Ubiquiti
 XM and BZ devices
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

This applies minor style improvements and removes commented pll
clock adjustments from ubnt_xm DTSI. The latter were introduced
(already commented out) when adding ath79 target and have never
been touched since then. For Unifi (BZ board), similar clock
adjustments are employed and used.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../linux/ath79/dts/ar7241_ubnt_airrouter.dts |  2 +-
 target/linux/ath79/dts/ar7241_ubnt_unifi.dts  | 10 ++++-----
 target/linux/ath79/dts/ar7241_ubnt_xm.dtsi    | 21 ++++++-------------
 .../ath79/dts/ar7241_ubnt_xm_outdoor.dtsi     |  1 +
 4 files changed, 13 insertions(+), 21 deletions(-)

diff --git a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
index 03306de5d9..ad2762e20c 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
@@ -15,7 +15,7 @@
 		label-mac-device = &wifi;
 	};
 
-	airrouter-leds {
+	leds {
 		compatible = "gpio-leds";
 
 		led_globe: globe {
diff --git a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
index 3e73eba9ed..5f12fd581b 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_unifi.dts
@@ -78,30 +78,30 @@
 				read-only;
 			};
 
-			partition@1 {
+			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
 			};
 
-			partition@2 {
+			partition@50000 {
 				compatible = "denx,uimage";
 				label = "firmware";
 				reg = <0x050000 0x750000>;
 			};
 
-			partition@3 {
+			partition@7a0000 {
 				label = "board_config";
 				reg = <0x7a0000 0x010000>;
 				read-only;
 			};
 
-			partition@4 {
+			partition@7b0000 {
 				label = "cfg";
 				reg = <0x7b0000 0x040000>;
 				read-only;
 			};
 
-			art: partition@5 {
+			art: partition@7f0000 {
 				label = "art";
 				reg = <0x7f0000 0x010000>;
 				read-only;
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
index 687aef1112..e2b653b3a7 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
+++ b/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
@@ -9,12 +9,6 @@
 	compatible = "ubnt,xm", "qca,ar7241";
 	model = "Ubiquiti Networks XM (rev 1.0) board";
 
-/*	extosc: ref {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <40000000>;
-	};
-*/
 	keys {
 		compatible = "gpio-keys";
 
@@ -30,12 +24,9 @@
 	status = "okay";
 };
 
-/*&pll {
-	clocks = <&extosc>;
-};*/
-
 &spi {
 	status = "okay";
+
 	num-cs = <1>;
 
 	flash@0 {
@@ -54,30 +45,30 @@
 				read-only;
 			};
 
-			partition@1 {
+			partition@40000 {
 				label = "u-boot-env";
 				reg = <0x040000 0x010000>;
 			};
 
-			partition@2 {
+			partition@50000 {
 				compatible = "denx,uimage";
 				label = "firmware";
 				reg = <0x050000 0x750000>;
 			};
 
-			partition@3 {
+			partition@7a0000 {
 				label = "board_config";
 				reg = <0x7a0000 0x010000>;
 				read-only;
 			};
 
-			partition@4 {
+			partition@7b0000 {
 				label = "cfg";
 				reg = <0x7b0000 0x040000>;
 				read-only;
 			};
 
-			art: partition@5 {
+			art: partition@7f0000 {
 				label = "art";
 				reg = <0x7f0000 0x010000>;
 				read-only;
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi b/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
index 337da5b4b7..75116edc51 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
+++ b/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
@@ -11,6 +11,7 @@
 
 	leds {
 		compatible = "gpio-leds";
+
 		link1 {
 			label = "ubnt:red:link1";
 			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
