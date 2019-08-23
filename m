Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBC69AE43
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 13:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vec17H+wailzyIQF+cB3kc8h8EJ1MFjPsqUxQAam0Hs=; b=P0H76aHmvNls85
	EO0yj4nadZvtC5Ka3KPU4pHyJt8LQVeF/hWPQYpxwTgGpoC/6xVkd1N6r/9uJNudIhfkGk749aDfo
	NAiKt6B37fBeEjdFTd8LpeXR+AhBLuKiy1AEJTJL3A34qfF1MNNFHsAV1wvXNMwa7gMRps8spZNbz
	M2Asc17MKuXmIWJ4zZWce7JGGhg92fMTW1k5BAm/By2sIkM6Vq54nf8y7pMwLymdXFqyvJqMFpUjC
	bZjtyfCyQCW9v98mk++vlIl1w2URuDbjCCelwMbXSbywhQYEU9riNQuX3FSPVqGsn6lDG4KCzsprJ
	nxWAmUE7AnmemF0s3ebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17vD-0001a2-Ql; Fri, 23 Aug 2019 11:39:59 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17v5-0001ZH-Bp
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 11:39:54 +0000
Received: from p4fcf952c.dip0.t-ipconnect.de ([79.207.149.44]
 helo=[192.168.2.103]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1i17v2-0006tJ-95; Fri, 23 Aug 2019 13:39:48 +0200
To: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
From: Birger Koblitz <mail@birger-koblitz.de>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@birger-koblitz.de; prefer-encrypt=mutual; keydata=
 mQGiBELb9iURBAD7URWZY2HQ38IvWh1pUBiOJMoMi3/qImwhh2hWCgfVPP2FsKD+84zNqJgi
 bIgCWeiHeyQ5fcUnpnn2aPNwMznRxmwjCfb4a6AUPKjZIETGREaWathA9kVAkIlnrZI16QpY
 cz9gWXenVe2bPTny723pQNhLKNhmTQySjQikSMiSAwCgvLxjtDu3gckDzjmA8qs25c6nxRsE
 ANZI7xZqR7wcvzs5/UxNd43UsAN8NYLaOd7E5jgjfaDUu6fxUgmZmWdM+F1Xkp91a4ZHQpMC
 NSAF+vPWiGEGJLhpNYDME/UhqQMDx95v6VvOiH2n4MC0ReW2YkhSCCP1uXVt2/Z7d7jmNtD9
 G8oRE1e/fdRmDMYsdcqN6DmkoJdGBADrr4sVPd6mywEL8kZVfwwPw1i3xMXk5GiAEHj+awo+
 eFTkS6F0K7IAuixm/qizf8zsUob0TRn4VCmFoyT3fkNLxjbi94g9koVQ2cUTCwmkRZkH3fUR
 /jX5ybnKUKO+jyAL2loVnYcC1I3EVzt0NFNx4siG3uzgfAdBF0bNEXjwOrQxQmlyZ2VyIEtv
 YmxpdHogKHByaXZhdGUpIDxtYWlsQGJpcmdlci1rb2JsaXR6LmRlPohaBBMRAgAaBQJMo3rM
 ApsPBosJCAcDAgSVAggDBJYCAwEACgkQ0SJkb/ufpr4lRQCgukvkUqWZ6FbRa6bPdutUcW08
 PacAn0rBrMyYzdUo/cvD7LTjOBH8eW6RuQENBELb9igQBAD//o2rYN5fVDYLPTWyRJj9di9e
 Cwp3T9s+AnY9R7s6U6MDaLfFSzCwpJZTeYkN8V/n5C2iTIQomUkhrc8v4YMlI71XHs+qoSsu
 lvzjlu9eRHysSWbtmeNjGPRKrJHfQCywifrSgY3xJzteY1Ks9JAnW4QKhZQvgHi920f3KL63
 5wADBQP6AuAqbvBdXAoxLuJmiCojzsqF+J4ZBMFvuXd8md2EYtQV74ZqxbAcDo9ELNh+2VNd
 vnsn05NswHNBpaSnhTNzr0TkNkRRQAhZ8rwNbNh0iVuT4PADlyDkEWdNfBl1MUfs8OyCj1tB
 l2UGeJ+DNp1+X8AiNyGmdEicozb90I7UBVyISQQYEQIACQUCTKN6zAKbDAAKCRDRImRv+5+m
 vg64AJwISUIlauuw6sMaWhGtqGzBc96pAACeKH15f9ssxrnwYSzk1spOsw8ejpM=
Message-ID: <6772c2c9-89ca-bac0-01a9-148e8505a5c3@birger-koblitz.de>
Date: Fri, 23 Aug 2019 13:39:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1566560391;
 bb3a00e1; 
X-HE-SMSGID: 1i17v2-0006tJ-95
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_043951_706536_EAF34809 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] ramips: use gpio_hog instead of gpio-exp
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

ramips: use gpio_hog instead of gpio-export

The `gpio-export` functionality is a hack for
missing kernel functionality, which was rejected in upstream kernel long
time
ago, for details see this email
http://lists.infradead.org/pipermail/openwrt-devel/2019-February/015772.html,
discussion in PR#1366 or
https://github.com/openwrt/openwrt/pull/1814#issuecomment-462942022.

This patch converts all ramips .dts(i) files which were
using export-gpio for powering USB/SATA ports to using gpio_hog instead

Signed-off-by: Birger Koblitz <mail@birger-koblitz.de>

---

v2: Limited conversion to only usb ports/hubs and sata

diff --git a/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts
b/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts
index 3e54ffdad2..c573b38284 100644
--- a/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts
+++ b/target/linux/ramips/dts/mt7620a_asus_rt-ac51u.dts
@@ -53,16 +53,16 @@
 			linux,code = <KEY_WPS_BUTTON>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		enable-leds {
-			gpio-export,name = "enable-leds";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 10 GPIO_ACTIVE_HIGH>;
-		};
+	enable-leds {
+		gpio-hog;
+		line-name = "enable-leds";
+		gpios = <10 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
index 707bc1c3d3..7af90c6908 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a1.dts
@@ -63,21 +63,17 @@
 			linux,default-trigger = "usbport";
 		};
 	};
-
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <0>;
-			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
-		};
-	};
 };

 &gpio1 {
 	status = "okay";
+
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <14 GPIO_ACTIVE_LOW>;
+		output-low;
+	};
 };

 &gpio2 {
diff --git a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
index 26b23aa6d1..17ec47b9d5 100644
--- a/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
+++ b/target/linux/ramips/dts/mt7620a_dlink_dwr-118-a2.dts
@@ -61,21 +61,17 @@
 			linux,default-trigger = "usbport";
 		};
 	};
-
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };

 &gpio1 {
 	status = "okay";
+
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <14 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };

 &gpio2 {
diff --git a/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
b/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
index e36af1dc7f..acb3524e3d 100644
--- a/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
+++ b/target/linux/ramips/dts/mt7620a_dovado_tiny-ac.dts
@@ -39,16 +39,16 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio2 {
+	status = "okay";

-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <1>;
-			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
-		};
+	usbpower {
+		gpio-hog;
+		line-name = "usbpower";
+		gpios = <5 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

@@ -56,10 +56,6 @@
 	status = "okay";
 };

-&gpio2 {
-	status = "okay";
-};
-
 &gpio3 {
 	status = "okay";
 };
diff --git a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
index 5c90aa1549..d329c3380c 100644
--- a/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
+++ b/target/linux/ramips/dts/mt7620a_edimax_br-6478ac-v2.dts
@@ -66,22 +66,17 @@
 			linux,default-trigger = "usbport";
 		};
 	};
-
-
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-		usb-power {
-			gpio-export,name="usb-power";
-			gpio-export,output=<1>;
-			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };

-
 &gpio2 {
 	status = "okay";
+
+	usb-power {
+		gpio-hog;
+		line-name = "usb-power";
+		gpios = <5 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };

 &spi0 {
diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
b/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
index 73f1a4079a..b3af562e5d 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5861.dts
@@ -41,22 +41,23 @@
 			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <0>;
-			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
-		};
+	usbpower {
+		gpio-hog;
+		line-name = "usbpower";
+		gpios = <13 GPIO_ACTIVE_LOW>;
+		output-low;
+	};

-		sdpower {
-			gpio-export,name = "sdpower";
-			gpio-export,output = <0>;
-			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
-		};
+	sdpower {
+		gpio-hog;
+		line-name = "sdpower";
+		gpios = <8 GPIO_ACTIVE_LOW>;
+		output-low;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
b/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
index 09b303fd33..85dc521722 100644
--- a/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
+++ b/target/linux/ramips/dts/mt7620a_hiwifi_hc5x61.dtsi
@@ -20,16 +20,16 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
-		};
+	usbpower {
+		gpio-hog;
+		line-name = "usbpower";
+		gpios = <13 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

@@ -39,10 +39,6 @@
 	ralink,wdtmux = <1>;
 };

-&gpio0 {
-	status = "okay";
-};
-
 &gpio2 {
 	status = "okay";
 };
diff --git a/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
b/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
index 20974c93e2..261103d307 100644
--- a/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
+++ b/target/linux/ramips/dts/mt7620a_lava_lr-25g001.dts
@@ -51,21 +51,17 @@
 			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
 		};
 	};
-
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };

 &gpio0 {
 	status = "okay";
+
+	usbpower {
+		gpio-hog;
+		line-name = "usbpower";
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };

 &spi0 {
diff --git a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts
b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts
index 007e0e69e8..4fb0479f23 100644
--- a/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts
+++ b/target/linux/ramips/dts/mt7620a_lenovo_newifi-y1s.dts
@@ -13,27 +13,6 @@
 		led-upgrade = &led_power_blue;
 	};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		usb0 {
-			gpio-export,name = "usb0";
-			gpio-export,output = <1>;
-			gpios = <&gpio2 14 GPIO_ACTIVE_HIGH>;
-		};
-		usb1 {
-			gpio-export,name = "usb1";
-			gpio-export,output = <1>;
-			gpios = <&gpio2 15 GPIO_ACTIVE_HIGH>;
-		};
-		usb2 {
-			gpio-export,name = "usb2";
-			gpio-export,output = <1>;
-			gpios = <&gpio2 16 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
 	leds {
 		compatible = "gpio-leds";

@@ -76,6 +55,31 @@
 	};
 };

+&gpio2 {
+	status = "okay";
+
+	usb0 {
+		gpio-hog;
+		line-name = "usb0";
+		gpios = <14 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+
+	usb1 {
+		gpio-hog;
+		line-name = "usb1";
+		gpios = <15 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+
+	usb2 {
+		gpio-hog;
+		line-name = "usb2";
+		gpios = <16 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
 &ethernet {
 	status = "okay";
 	mtd-mac-address = <&factory 0x4>;
diff --git a/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
b/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
index 2110959ee8..1a45803b8e 100644
--- a/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
+++ b/target/linux/ramips/dts/mt7620a_sanlinking_d240.dts
@@ -53,23 +53,6 @@
 		bootargs = "console=ttyS0,115200";
 	};

-	gpio-export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		power_mpcie2 {
-			gpio-export,name = "power_mpcie2";
-			gpio-export,output = <1>;
-			gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;
-		};
-
-		power_mpcie1 {
-			gpio-export,name = "power_mpcie1";
-			gpio-export,output = <1>;
-			gpios = <&gpio2 6 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
 	leds {
 		compatible = "gpio-leds";

@@ -103,11 +86,25 @@
 	};
 };

-&gpio1 {
+&gpio2 {
 	status = "okay";
+
+	power_mpcie2 {
+		gpio-hog;
+		line-name = "power_mpcie2";
+		gpios = <5 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+
+	power_mpcie1 {
+		gpio-hog;
+		line-name = "power_mpcie1";
+		gpios = <6 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };

-&gpio2 {
+&gpio1 {
 	status = "okay";
 };

diff --git a/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
b/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
index 6d85914265..95f49c24a3 100644
--- a/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
+++ b/target/linux/ramips/dts/mt7620a_sercomm_na930.dts
@@ -102,16 +102,16 @@
 			gpios = <&gpio2 29 GPIO_ACTIVE_LOW>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		telit {
-			gpio-export,name = "telit";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
-		};
+	telit {
+		gpio-hog;
+		line-name = "telit";
+		gpios = <13 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts
b/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts
index 4beb737606..b2d146bab8 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-mr200.dts
@@ -89,16 +89,16 @@
 			linux,code = <KEY_RFKILL>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		power_usb {
-			gpio-export,name = "power_usb1";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
-		};
+	power_usb1 {
+		gpio-hog;
+		line-name = "power_usb1";
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
b/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
index 725339e77a..49a1dcb337 100644
--- a/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
+++ b/target/linux/ramips/dts/mt7620a_zyxel_keenetic-viva.dts
@@ -70,17 +70,6 @@
 		};
 	};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		usb_power {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
 	rtl8367rb {
 		compatible = "realtek,rtl8367b";
 		cpu_port = <7>;
@@ -89,6 +78,17 @@
 	};
 };

+&gpio0 {
+	status = "okay";
+
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+};
+
 &spi0 {
 	status = "okay";

diff --git a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
index b57c008ef3..c3f4dd6935 100644
--- a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
+++ b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni-ii.dts
@@ -64,16 +64,16 @@
 			linux,code = <BTN_0>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb_power {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 21 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <21 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
index 2d7d3e8386..77d08546c2 100644
--- a/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
+++ b/target/linux/ramips/dts/mt7620n_zyxel_keenetic-omni.dts
@@ -64,16 +64,16 @@
 			linux,code = <BTN_0>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb_power {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 21 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <21 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
b/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
index d51eb29600..95db962ae4 100644
--- a/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
+++ b/target/linux/ramips/dts/mt7621_d-team_newifi-d2.dts
@@ -77,16 +77,16 @@
 			linux,code = <KEY_WPS_BUTTON>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		power_usb3 {
-			gpio-export,name = "power_usb3";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
-		};
+	power_usb3 {
+		gpio-hog;
+		line-name = "power_usb3";
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
b/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
index 3eb0fac46e..2c1b050240 100644
--- a/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
+++ b/target/linux/ramips/dts/mt7621_d-team_pbr-m1.dts
@@ -73,32 +73,34 @@
 		};
 	};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		power_usb2 {
-			gpio-export,name = "power_usb2";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
-		};
+	beeper: beeper {
+		compatible = "gpio-beeper";
+		gpios = <&gpio0 26 GPIO_ACTIVE_LOW>;
+	};
+};

-		power_usb3 {
-			gpio-export,name = "power_usb3";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 25 GPIO_ACTIVE_HIGH>;
-		};
+&gpio0 {
+	status = "okay";

-		power_sata {
-			gpio-export,name = "power_sata";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 27 GPIO_ACTIVE_HIGH>;
-		};
+	power_usb2 {
+		gpio-hog;
+		line-name = "power_usb2";
+		gpios = <22 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};

-	beeper: beeper {
-		compatible = "gpio-beeper";
-		gpios = <&gpio0 26 GPIO_ACTIVE_LOW>;
+	power_usb3 {
+		gpio-hog;
+		line-name = "power_usb3";
+		gpios = <25 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
+
+	power_sata {
+		gpio-hog;
+		line-name = "power_sata";
+		gpios = <27 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts
b/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts
index e681e1a0c9..45963b7333 100644
--- a/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts
+++ b/target/linux/ramips/dts/mt7621_lenovo_newifi-d1.dts
@@ -50,22 +50,23 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb2power {
-			gpio-export,name = "usb2power";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
-		};
+	usb2power {
+		gpio-hog;
+		line-name = "usb2power";
+		gpios = <9 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		usb3power {
-			gpio-export,name = "usb3power";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
-		};
+	usb3power {
+		gpio-hog;
+		line-name = "usb3power";
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
b/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
index 0b39fa240a..80d3864205 100644
--- a/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
+++ b/target/linux/ramips/dts/mt7621_mikrotik_rb750gr3.dts
@@ -57,16 +57,16 @@
 		compatible = "gpio-beeper";
 		gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb_power {
-			gpio-export,name = "usb_power";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-		};
+	usb_power {
+		gpio-hog;
+		line-name = "usb_power";
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7621_netgear_r6350.dts
b/target/linux/ramips/dts/mt7621_netgear_r6350.dts
index 403fc91d54..8cfd161248 100644
--- a/target/linux/ramips/dts/mt7621_netgear_r6350.dts
+++ b/target/linux/ramips/dts/mt7621_netgear_r6350.dts
@@ -63,16 +63,16 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 10 GPIO_ACTIVE_HIGH>;
-		};
+	usbpower {
+		gpio-hog;
+		line-name = "usbpower";
+		gpios = <10 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts
b/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts
index 73bfd6a4f0..4b61f631c7 100644
--- a/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts
+++ b/target/linux/ramips/dts/mt7621_xzwifi_creativebox-v1.dts
@@ -63,28 +63,30 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		power_usb2 {
-			gpio-export,name = "power_usb2";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
-		};
+	power_usb2 {
+		gpio-hog;
+		line-name = "power_usb2";
+		gpios = <22 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		power_usb3 {
-			gpio-export,name = "power_usb3";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 25 GPIO_ACTIVE_HIGH>;
-		};
+	power_usb3 {
+		gpio-hog;
+		line-name = "power_usb3";
+		gpios = <25 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		power_sata {
-			gpio-export,name = "power_sata";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 27 GPIO_ACTIVE_HIGH>;
-		};
+	power_sata {
+		gpio-hog;
+		line-name = "power_sata";
+		gpios = <27 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
b/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
index 6222cfe345..0944ee5221 100644
--- a/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
+++ b/target/linux/ramips/dts/mt7628an_glinet_gl-mt300n-v2.dts
@@ -62,16 +62,16 @@
 			linux,code = <BTN_1>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <11 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git
a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
index 1d083ed8bb..2893466409 100644
--- a/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
+++ b/target/linux/ramips/dts/mt7628an_zyxel_keenetic-extra-ii.dts
@@ -69,16 +69,16 @@
 			linux,default-trigger = "usbport";
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usbpower {
-			gpio-export,name = "usbpower";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 6 GPIO_ACTIVE_HIGH>;
-		};
+	usbpower {
+		gpio-hog;
+		line-name = "usbpower";
+		gpios = <6 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/rt3052_accton_wr6202.dts
b/target/linux/ramips/dts/rt3052_accton_wr6202.dts
index 1caec41a4b..d30c028be9 100644
--- a/target/linux/ramips/dts/rt3052_accton_wr6202.dts
+++ b/target/linux/ramips/dts/rt3052_accton_wr6202.dts
@@ -80,16 +80,16 @@
 			};
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <0>;
-			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <11 GPIO_ACTIVE_LOW>;
+		output-low;
 	};
 };

diff --git a/target/linux/ramips/dts/rt3883_dlink_dir-645.dts
b/target/linux/ramips/dts/rt3883_dlink_dir-645.dts
index 35d011ebba..7e5e079cd2 100644
--- a/target/linux/ramips/dts/rt3883_dlink_dir-645.dts
+++ b/target/linux/ramips/dts/rt3883_dlink_dir-645.dts
@@ -53,21 +53,17 @@
 			gpios = <&gpio1 2 GPIO_ACTIVE_HIGH>;
 		};
 	};
-
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
-		};
-	};
 };

 &gpio1 {
 	status = "okay";
+
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <6 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};
 };

 &spi0 {
diff --git a/target/linux/ramips/dts/rt3883_edimax_br-6475nd.dts
b/target/linux/ramips/dts/rt3883_edimax_br-6475nd.dts
index f7fb8b5c40..6950535edd 100644
--- a/target/linux/ramips/dts/rt3883_edimax_br-6475nd.dts
+++ b/target/linux/ramips/dts/rt3883_edimax_br-6475nd.dts
@@ -108,19 +108,20 @@
 	 * and the headers are there.
 	 */
 	/*
-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-
-		usb {
-			gpio-export,name="usb";
-			gpio-export,output=<0>;
-			gpios = <&gpio0 19 GPIO_ACTIVE_LOW>;
-		};
-	};
 	*/
 };

+&gpio0 {
+	status = "okay";
+
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <19 GPIO_ACTIVE_LOW>;
+		output-low;
+	};
+};
+
 &pinctrl {
 	state_default: pinctrl0 {
 		gpio {
diff --git a/target/linux/ramips/dts/rt3883_omnima_hpm.dts
b/target/linux/ramips/dts/rt3883_omnima_hpm.dts
index 7ccd078144..bcc0b1ba82 100644
--- a/target/linux/ramips/dts/rt3883_omnima_hpm.dts
+++ b/target/linux/ramips/dts/rt3883_omnima_hpm.dts
@@ -66,23 +66,23 @@
 			gpios = <&gpio0 19 GPIO_ACTIVE_LOW>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
-		/* gpio 12 and 13 handle the OC input */
+&gpio0 {
+	status = "okay";

-		usb0 {
-			gpio-export,name = "usb0";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
-		};
+	usb0 {
+		gpio-hog;
+		line-name = "usb0";
+		gpios = <2 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		usb1 {
-			gpio-export,name = "usb1";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 1 GPIO_ACTIVE_HIGH>;
-		};
+	usb1 {
+		gpio-hog;
+		line-name = "usb1";
+		gpios = <1 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/rt3883_sitecom_wlr-6000.dts
b/target/linux/ramips/dts/rt3883_sitecom_wlr-6000.dts
index 2b1f707658..22634e8819 100644
--- a/target/linux/ramips/dts/rt3883_sitecom_wlr-6000.dts
+++ b/target/linux/ramips/dts/rt3883_sitecom_wlr-6000.dts
@@ -40,16 +40,16 @@
 			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <9 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/rt5350_dlink_dir-320-b1.dts
b/target/linux/ramips/dts/rt5350_dlink_dir-320-b1.dts
index 040a223986..abbcf6392d 100644
--- a/target/linux/ramips/dts/rt5350_dlink_dir-320-b1.dts
+++ b/target/linux/ramips/dts/rt5350_dlink_dir-320-b1.dts
@@ -51,22 +51,23 @@
 			linux,code = <KEY_WPS_BUTTON>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <7 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		root_hub {
-			gpio-export,name = "root_hub";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-		};
+	root_hub {
+		gpio-hog;
+		line-name = "root_hub";
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/rt5350_hame_mpr-a1.dts
b/target/linux/ramips/dts/rt5350_hame_mpr-a1.dts
index 328351a550..c15de48f5e 100644
--- a/target/linux/ramips/dts/rt5350_hame_mpr-a1.dts
+++ b/target/linux/ramips/dts/rt5350_hame_mpr-a1.dts
@@ -40,22 +40,23 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <7 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		root_hub {
-			gpio-export,name = "root_hub";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-		};
+	root_hub {
+		gpio-hog;
+		line-name = "root_hub";
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/rt5350_hame_mpr-a2.dts
b/target/linux/ramips/dts/rt5350_hame_mpr-a2.dts
index fedb5b061e..5481d6d6ab 100644
--- a/target/linux/ramips/dts/rt5350_hame_mpr-a2.dts
+++ b/target/linux/ramips/dts/rt5350_hame_mpr-a2.dts
@@ -40,22 +40,23 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <7 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		root_hub {
-			gpio-export,name = "root_hub";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-		};
+	root_hub {
+		gpio-hog;
+		line-name = "root_hub";
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/rt5350_tenda_3g150b.dts
b/target/linux/ramips/dts/rt5350_tenda_3g150b.dts
index 9d13625516..c924b7e5d1 100644
--- a/target/linux/ramips/dts/rt5350_tenda_3g150b.dts
+++ b/target/linux/ramips/dts/rt5350_tenda_3g150b.dts
@@ -42,16 +42,16 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <13 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };

diff --git a/target/linux/ramips/dts/rt5350_unbranded_a5-v11.dts
b/target/linux/ramips/dts/rt5350_unbranded_a5-v11.dts
index 707963d691..2192e7fba8 100644
--- a/target/linux/ramips/dts/rt5350_unbranded_a5-v11.dts
+++ b/target/linux/ramips/dts/rt5350_unbranded_a5-v11.dts
@@ -40,22 +40,23 @@
 			linux,code = <KEY_RESTART>;
 		};
 	};
+};

-	gpio_export {
-		compatible = "gpio-export";
-		#size-cells = <0>;
+&gpio0 {
+	status = "okay";

-		usb {
-			gpio-export,name = "usb";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-		};
+	usb {
+		gpio-hog;
+		line-name = "usb";
+		gpios = <7 GPIO_ACTIVE_HIGH>;
+		output-high;
+	};

-		root_hub {
-			gpio-export,name = "root_hub";
-			gpio-export,output = <1>;
-			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-		};
+	root_hub {
+		gpio-hog;
+		line-name = "root_hub";
+		gpios = <12 GPIO_ACTIVE_HIGH>;
+		output-high;
 	};
 };


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
