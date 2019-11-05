Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806E2F016C
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 16:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vUfKywKZy2g8sgYqP7T5PgRRSefGijB9VdjRejZjMIw=; b=Top1+sk9FxOX+khTzsIApVAPt
	x+pJ6Ja61TTMS5GRYNffMLt2gBJasPvgxKf2SJvB91o/qBTJoLNM/gZakDIrU/b4cB4/OebgSh7Zu
	uUk0lCJ4dXBZTW5Wp4+2v8ZDShP541ceZD+6wWgbNm1UsWhOZC+xsTruDnY3dfjuGgFBqZ38XY0a5
	QBloiAOcn2heoL8DHWkRIEUb9x6nUgLh4TiZbZNWQVtftkIMgZzT1ElDJDo1C5WtmGFOSbYNdvMzy
	ml1hd0UbMeHzwWusfbUzeZRfOk729ojtNekSLaq8vcSqclcTk0DBcOtwQzNtQqPyG1BIz6RjBhdNK
	iO3NeEOLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS0m0-0003vw-Eh; Tue, 05 Nov 2019 15:29:36 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS0lr-0003ui-5w
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 15:29:30 +0000
Received: from x59cc8279.dyn.telefonica.de ([89.204.130.121]
 helo=[10.151.83.121]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1iS0lk-0000RZ-5s; Tue, 05 Nov 2019 16:29:20 +0100
Date: Tue, 05 Nov 2019 16:29:18 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <F898C9DE-9B7D-4876-AFDD-F9D816720B12@birger-koblitz.de>
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1572967767;
 33088364; 
X-HE-SMSGID: 1iS0lk-0000RZ-5s
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_072927_520661_EAC6545F 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
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
Content-Type: multipart/mixed; boundary="===============1196494701745738479=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1196494701745738479==
Content-Type: multipart/alternative; boundary="----MAXGJAQ9L8VTN14K1CQ864J7H0RXVQ"
Content-Transfer-Encoding: 7bit

------MAXGJAQ9L8VTN14K1CQ864J7H0RXVQ
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Adrian for taking this up again!

Birger

On 5 November 2019 16:12:02 CET, Adrian Schmutzler <freifunk@adrianschmutz=
ler=2Ede> wrote:
>From: Birger Koblitz <mail@birger-koblitz=2Ede>
>
>The gpio-export functionality is a hack for missing kernel
>functionality, which was rejected in upstream kernel long time ago,
>for details see this email
>http://lists=2Einfradead=2Eorg/pipermail/openwrt-devel/2019-February/0157=
72=2Ehtml,
>discussion in PR#1366 or
>https://github=2Ecom/openwrt/openwrt/pull/1814#issuecomment-462942022=2E
>
>This patch converts all DTS files with settings that normally do
>not need user interaction, e=2Eg=2E power for external USB ports, to
>gpio_hog=2E The only remaining gpio-export will be in
>qca9558_openmesh_om5p-ac-v2=2Edts
>
>Signed-off-by: Birger Koblitz <mail@birger-koblitz=2Ede>
>[rebased, renamed nodes, do not change openmesh, removed redundant
>status=3Dokay, updated commit message]
>Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler=2Ede>
>
>---
>
>This is a resubmission of the patch initially created by Birger
>Koblitz=2E It should be limited to conversion that do not require
>the user setting the value=2E
>---
> =2E=2E=2E/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts      | 19 ++++++------
> =2E=2E=2E/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi    | 15 +++++-----
> =2E=2E=2E/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts  | 19 +++++-------
> =2E=2E=2E/ath79/dts/ar7242_buffalo_wzr-bhr=2Edtsi     | 20 ++++++-------
> =2E=2E=2E/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts  | 20 ++++++-------
> =2E=2E=2E/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts  | 19 ++++++------
> =2E=2E=2E/ath79/dts/qca9558_devolo_dvl1750e=2Edts     | 15 +++++-----
> =2E=2E=2E/ath79/dts/qca9558_tplink_archer-c7=2Edtsi   | 30 +++++++++----=
------
> =2E=2E=2E/dts/qca9558_tplink_tl-wdr4900-v2=2Edts      | 28 +++++++++----=
----
> =2E=2E=2E/ath79/dts/qca9558_tplink_tl-wr1043nd=2Edtsi | 20 +++++--------
> =2E=2E=2E/ath79/dts/qca9561_tplink_archer-c5x=2Edtsi  | 30 +++++++++----=
------
> =2E=2E=2E/ath79/dts/qca9563_dlink_dir-859-a1=2Edts    | 20 +++++--------
> =2E=2E=2E/ath79/dts/qca9563_tplink_archer-c7-v4=2Edts | 30 +++++++++----=
------
> =2E=2E=2E/dts/qca9563_tplink_archer-x7-v5=2Edtsi      | 17 +++++------
> =2E=2E=2E/dts/qca9563_tplink_tl-wr1043nd-v4=2Edts     | 16 +++++-----
> 15 files changed, 145 insertions(+), 173 deletions(-)
>
>diff --git a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts
>b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts
>index f51bc0f771=2E=2E23f1845876 100644
>--- a/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts
>+++ b/target/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts
>@@ -120,16 +120,6 @@
> 		};
> 	};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-
>-		gpio_usb_power {
>-			gpio-export,name =3D "buffalo:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 2 GPIO_ACTIVE_HIGH>;
>-		};
>-	};
>-
> 	flash {
> 		compatible =3D "mtd-concat";
>=20
>@@ -172,6 +162,15 @@
> 	};
> };
>=20
>+&gpio {
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "buffalo:power:usb";
>+		gpios =3D <2 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
>+};
>+
> &usb_phy {
> 	status =3D "okay";
> };
>diff --git a/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi
>b/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi
>index 04403637b6=2E=2E333ee17ceb 100644
>--- a/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi
>+++ b/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi
>@@ -3,15 +3,14 @@
> #include "ar7241_tplink=2Edtsi"
>=20
> / {
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-		#size-cells =3D <0>;
>+};
>=20
>-		gpio_usb_power {
>-			gpio-export,name =3D "tp-link:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 6 GPIO_ACTIVE_HIGH>;
>-		};
>+&gpio {
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb";
>+		gpios =3D <6 GPIO_ACTIVE_HIGH>;
>+		output-high;
> 	};
> };
>=20
>diff --git a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts
>b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts
>index 162b5f2838=2E=2Eee468df244 100644
>--- a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts
>+++ b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts
>@@ -66,15 +66,16 @@
> 			linux,default-trigger =3D "phy0tpt";
> 		};
> 	};
>+};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>+&gpio {
>+	status =3D "okay";
>=20
>-		gpio_usb_power {
>-			gpio-export,name =3D "tp-link:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 6 GPIO_ACTIVE_HIGH>;
>-		};
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb";
>+		gpios =3D <6 GPIO_ACTIVE_HIGH>;
>+		output-high;
> 	};
> };
>=20
>@@ -155,10 +156,6 @@
> 	mtd-mac-address-increment =3D <1>;
> };
>=20
>-&gpio {
>-	status =3D "okay";
>-};
>-
> &uart {
> 	status =3D "okay";
> };
>diff --git a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr=2Edtsi
>b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr=2Edtsi
>index 3b5a4dd13d=2E=2Ed7632faf5c 100644
>--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr=2Edtsi
>+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr=2Edtsi
>@@ -57,17 +57,6 @@
> 		};
> 	};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-		#size-cells =3D <0>;
>-
>-		gpio_usb_power {
>-			gpio-export,name =3D "buffalo:usb-power";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 16 GPIO_ACTIVE_HIGH>;
>-		};
>-	};
>-
> 	virtual_flash {
> 		compatible =3D "mtd-concat";
> 		devices =3D <&flash0 &flash1>;
>@@ -109,6 +98,15 @@
> 	};
> };
>=20
>+&gpio {
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "buffalo:usb-power";
>+		gpios =3D <16 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
>+};
>+
> &spi {
> 	status =3D "okay";
> 	cs-gpios =3D <0>, <0>;
>diff --git
>a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts
>b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts
>index 8ac4df2194=2E=2E2b30b7830b 100644
>--- a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts
>+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts
>@@ -109,17 +109,6 @@
> 		};
> 	};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-		#size-cells =3D <0>;
>-
>-		gpio_usb_power {
>-			gpio-export,name =3D "buffalo:usb-power";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 13 GPIO_ACTIVE_HIGH>;
>-		};
>-	};
>-
> 	virtual_flash {
> 		compatible =3D "mtd-concat";
> 		devices =3D <&flash0 &flash1>;
>@@ -161,6 +150,15 @@
> 	};
> };
>=20
>+&gpio {
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "buffalo:usb-power";
>+		gpios =3D <13 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
>+};
>+
> &spi {
> 	status =3D "okay";
> 	cs-gpios =3D <0>, <0>;
>diff --git a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts
>b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts
>index 86a316b518=2E=2E1df0e27cb2 100644
>--- a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts
>+++ b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts
>@@ -6,16 +6,6 @@
> / {
> 	model =3D "TP-Link TL-WR842N/ND v2";
> 	compatible =3D "tplink,tl-wr842n-v2", "qca,ar9341";
>-
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-
>-		gpio_usb_power {
>-			gpio-export,name =3D "tp-link:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 4 GPIO_ACTIVE_HIGH>;
>-		};
>-	};
> };
>=20
> &keys {
>@@ -36,6 +26,15 @@
> 	};
> };
>=20
>+&gpio {
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb";
>+		gpios =3D <4 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
>+};
>+
> &spi {
> 	num-cs =3D <1>;
>=20
>diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1750e=2Edts
>b/target/linux/ath79/dts/qca9558_devolo_dvl1750e=2Edts
>index 3d25004c40=2E=2Ee790cf0df4 100644
>--- a/target/linux/ath79/dts/qca9558_devolo_dvl1750e=2Edts
>+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1750e=2Edts
>@@ -53,15 +53,14 @@
> 		compatible =3D "gpio-beeper";
> 		gpios =3D <&gpio 4 GPIO_ACTIVE_HIGH>;
> 	};
>+};
>=20
>-	gpio_export {
>-		compatible =3D "gpio-export";
>-
>-		gpio_usb_power {
>-			gpio-export,name =3D "devolo:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 11 GPIO_ACTIVE_HIGH>;
>-		};
>+&gpio {
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "devolo:power:usb";
>+		gpios =3D <11 GPIO_ACTIVE_HIGH>;
>+		output-high;
> 	};
> };
>=20
>diff --git a/target/linux/ath79/dts/qca9558_tplink_archer-c7=2Edtsi
>b/target/linux/ath79/dts/qca9558_tplink_archer-c7=2Edtsi
>index c77613dad6=2E=2Efb38f35dc1 100644
>--- a/target/linux/ath79/dts/qca9558_tplink_archer-c7=2Edtsi
>+++ b/target/linux/ath79/dts/qca9558_tplink_archer-c7=2Edtsi
>@@ -64,22 +64,6 @@
> 			debounce-interval =3D <60>;
> 		};
> 	};
>-
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-
>-		gpio_usb1_power {
>-			gpio-export,name =3D "tp-link:power:usb1";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 21 GPIO_ACTIVE_HIGH>;
>-		};
>-
>-		gpio_usb2_power {
>-			gpio-export,name =3D "tp-link:power:usb2";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 22 GPIO_ACTIVE_HIGH>;
>-		};
>-	};
> };
>=20
> &pcie1 {
>@@ -92,6 +76,20 @@
>=20
> &gpio {
> 	status =3D "okay";
>+
>+	usb1_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb1";
>+		gpios =3D <21 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
>+
>+	usb2_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb2";
>+		gpios =3D <22 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
> };
>=20
> &usb_phy0 {
>diff --git a/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2=2Edts
>b/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2=2Edts
>index 77166b8bfe=2E=2E470b742578 100644
>--- a/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2=2Edts
>+++ b/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2=2Edts
>@@ -57,7 +57,7 @@
> 		};
> 	};
>=20
>-	 ath9k-leds {
>+	ath9k-leds {
> 		compatible =3D "gpio-leds";
>=20
> 		wlan5g {
>@@ -77,21 +77,23 @@
> 			debounce-interval =3D <60>;
> 		};
> 	};
>+};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>+&gpio {
>+	status =3D "okay";
>=20
>-		gpio_usb1_power {
>-			gpio-export,name =3D "tp-link:power:usb1";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 21 GPIO_ACTIVE_HIGH>;
>-		};
>+	usb1_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb1";
>+		gpios =3D <21 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
>=20
>-		gpio_usb2_power {
>-			gpio-export,name =3D "tp-link:power:usb2";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 22 GPIO_ACTIVE_HIGH>;
>-		};
>+	usb2_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb2";
>+		gpios =3D <22 GPIO_ACTIVE_HIGH>;
>+		output-high;
> 	};
> };
>=20
>diff --git a/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd=2Edtsi
>b/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd=2Edtsi
>index 1092250f02=2E=2Ef6d34ab3ff 100644
>--- a/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd=2Edtsi
>+++ b/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd=2Edtsi
>@@ -64,16 +64,16 @@
> 			debounce-interval =3D <60>;
> 		};
> 	};
>+};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-		#size-cells =3D <0>;
>+&gpio {
>+	status =3D "okay";
>=20
>-		gpio_usb_power {
>-			gpio-export,name =3D "tp-link:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 21 GPIO_ACTIVE_HIGH>;
>-		};
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb";
>+		gpios =3D <21 GPIO_ACTIVE_HIGH>;
>+		output-high;
> 	};
> };
>=20
>@@ -81,10 +81,6 @@
> 	status =3D "okay";
> };
>=20
>-&gpio {
>-	status =3D "okay";
>-};
>-
> &usb_phy0 {
> 	status =3D "okay";
> };
>diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c5x=2Edtsi
>b/target/linux/ath79/dts/qca9561_tplink_archer-c5x=2Edtsi
>index ddf92108b5=2E=2E53329f2268 100644
>--- a/target/linux/ath79/dts/qca9561_tplink_archer-c5x=2Edtsi
>+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c5x=2Edtsi
>@@ -103,22 +103,6 @@
> 			gpios =3D <&gpio 21 GPIO_ACTIVE_LOW>;
> 		};
> 	};
>-
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-
>-		gpio_shift_register_oe {
>-			gpio-export,name =3D "tp-link:oe:sr";
>-			gpio-export,output =3D <0>;
>-			gpios =3D <&gpio 16 GPIO_ACTIVE_HIGH>;
>-		};
>-
>-		gpio_shift_register_reset {
>-			gpio-export,name =3D "tp-link:reset:sr";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 19 GPIO_ACTIVE_HIGH>;
>-		};
>-	};
> };
>=20
> &uart {
>@@ -127,6 +111,20 @@
>=20
> &gpio {
> 	status =3D "okay";
>+
>+	shift_register_oe {
>+		gpio-hog;
>+		line-name =3D "tp-link:oe:sr";
>+		gpios =3D <16 GPIO_ACTIVE_HIGH>;
>+		output-low;
>+	};
>+
>+	shift_register_reset {
>+		gpio-hog;
>+		line-name =3D "tp-link:reset:sr";
>+		gpios =3D <19 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
> };
>=20
> &pcie {
>diff --git a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1=2Edts
>b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1=2Edts
>index a17d9f263a=2E=2E63baa376c6 100644
>--- a/target/linux/ath79/dts/qca9563_dlink_dir-859-a1=2Edts
>+++ b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1=2Edts
>@@ -61,16 +61,16 @@
> 			debounce-interval =3D <60>;
> 		};
> 	};
>+};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-		#size-cells =3D <0>;
>+&gpio {
>+	status =3D "okay";
>=20
>-		gpio_switch_reset {
>-			gpio-export,name =3D "dir-859-a1:reset:switch";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 11 GPIO_ACTIVE_HIGH>;
>-		};
>+	switch_reset {
>+		gpio-hog;
>+		line-name =3D "dir-859-a1:reset:switch";
>+		gpios =3D <11 GPIO_ACTIVE_HIGH>;
>+		output-high;
> 	};
> };
>=20
>@@ -78,10 +78,6 @@
> 	status =3D "okay";
> };
>=20
>-&gpio {
>-	status =3D "okay";
>-};
>-
> &pcie {
> 	status =3D "okay";
> };
>diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4=2Edts
>b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4=2Edts
>index 470a8e6bf9=2E=2E66083aa7f9 100644
>--- a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4=2Edts
>+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4=2Edts
>@@ -42,22 +42,6 @@
> 		};
> 	};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-
>-		gpio_shift_register_oe {
>-			gpio-export,name =3D "tp-link:oe:sr";
>-			gpio-export,output =3D <0>;
>-			gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;	// 74HC595 /OE (Output Enable)
>-		};
>-
>-		gpio_shift_register_reset {
>-			gpio-export,name =3D "tp-link:reset:sr";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 21 GPIO_ACTIVE_LOW>;	// 74HC595 /SRCLR (Serial
>Clear)
>-		};
>-	};
>-
> 	leds {
> 		compatible =3D "gpio-leds";
>=20
>@@ -158,6 +142,20 @@
>=20
> &gpio {
> 	status =3D "okay";
>+
>+	shift_register_oe { // 74HC595 /OE
>+		gpio-hog;
>+		line-name =3D "tp-link:oe:sr";
>+		gpios =3D <1 GPIO_ACTIVE_LOW>;
>+		output-low;
>+	};
>+
>+	shift_register_reset { // 74HC595 /SRCLR
>+		gpio-hog;
>+		line-name =3D "tp-link:reset:sr";
>+		gpios =3D <21 GPIO_ACTIVE_LOW>;
>+		output-high;
>+	};
> };
>=20
> &usb_phy0 {
>diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5=2Edtsi
>b/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5=2Edtsi
>index 2e66e0f03e=2E=2E64115c4248 100644
>--- a/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5=2Edtsi
>+++ b/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5=2Edtsi
>@@ -93,16 +93,6 @@
> 			debounce-interval =3D <60>;
> 		};
> 	};
>-
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-
>-		gpio_usb_power {
>-			gpio-export,name =3D "tp-link:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 19 GPIO_ACTIVE_HIGH>;
>-		};
>-	};
> };
>=20
> &pcie {
>@@ -115,6 +105,13 @@
>=20
> &gpio {
> 	status =3D "okay";
>+
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb";
>+		gpios =3D <19 GPIO_ACTIVE_HIGH>;
>+		output-high;
>+	};
> };
>=20
> &usb_phy0 {
>diff --git a/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4=2Edts
>b/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4=2Edts
>index 07a7409886=2E=2E45ee0c21c7 100644
>--- a/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4=2Edts
>+++ b/target/linux/ath79/dts/qca9563_tplink_tl-wr1043nd-v4=2Edts
>@@ -6,16 +6,14 @@
> / {
> 	compatible =3D "tplink,tl-wr1043nd-v4", "qca,qca9563";
> 	model =3D "TP-Link TL-WR1043ND v4";
>+};
>=20
>-	gpio-export {
>-		compatible =3D "gpio-export";
>-		#size-cells =3D <0>;
>-
>-		gpio_usb_power {
>-			gpio-export,name =3D "tp-link:power:usb";
>-			gpio-export,output =3D <1>;
>-			gpios =3D <&gpio 8 GPIO_ACTIVE_HIGH>;
>-		};
>+&gpio {
>+	usb_power {
>+		gpio-hog;
>+		line-name =3D "tp-link:power:usb";
>+		gpios =3D <8 GPIO_ACTIVE_HIGH>;
>+		output-high;
> 	};
> };
>=20
>--=20
>2=2E20=2E1
>
>
>_______________________________________________
>openwrt-devel mailing list
>openwrt-devel@lists=2Eopenwrt=2Eorg
>https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel

------MAXGJAQ9L8VTN14K1CQ864J7H0RXVQ
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Thanks Adrian for taking this up again!<br><br>Bir=
ger<br><br><div class=3D"gmail_quote">On 5 November 2019 16:12:02 CET, Adri=
an Schmutzler &lt;freifunk@adrianschmutzler=2Ede&gt; wrote:<blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px so=
lid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">From: Birger Koblitz &lt;mail@birger-koblitz=2Ede&gt=
;<br><br>The gpio-export functionality is a hack for missing kernel<br>func=
tionality, which was rejected in upstream kernel long time ago,<br>for deta=
ils see this email<br><a href=3D"http://lists=2Einfradead=2Eorg/pipermail/o=
penwrt-devel/2019-February/015772=2Ehtml,">http://lists=2Einfradead=2Eorg/p=
ipermail/openwrt-devel/2019-February/015772=2Ehtml,</a><br>discussion in PR=
#1366 or<br><a href=3D"https://github=2Ecom/openwrt/openwrt/pull/1814#issue=
comment-462942022=2E">https://github=2Ecom/openwrt/openwrt/pull/1814#issuec=
omment-462942022=2E</a><br><br>This patch converts all DTS files with setti=
ngs that normally do<br>not need user interaction, e=2Eg=2E power for exter=
nal USB ports, to<br>gpio_hog=2E The only remaining gpio-export will be in<=
br>qca9558_openmesh_om5p-ac-v2=2Edts<br><br>Signed-off-by: Birger Koblitz &=
lt;mail@birger-koblitz=2Ede&gt;<br>[rebased, renamed nodes, do not change o=
penmesh, removed redundant<br>status=3Dokay, updated commit message]<br>Sig=
ned-off-by: Adrian Schmutzler &lt;freifunk@adrianschmutzler=2Ede&gt;<hr>Thi=
s is a resubmission of the patch initially created by Birger<br>Koblitz=2E =
It should be limited to conversion that do not require<br>the user setting =
the value=2E<hr> =2E=2E=2E/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts      | 19=
 ++++++------<br> =2E=2E=2E/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi    | 1=
5 +++++-----<br> =2E=2E=2E/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts  | 19=
 +++++-------<br> =2E=2E=2E/ath79/dts/ar7242_buffalo_wzr-bhr=2Edtsi     | 2=
0 ++++++-------<br> =2E=2E=2E/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts  |=
 20 ++++++-------<br> =2E=2E=2E/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts =
 | 19 ++++++------<br> =2E=2E=2E/ath79/dts/qca9558_devolo_dvl1750e=2Edts   =
  | 15 +++++-----<br> =2E=2E=2E/ath79/dts/qca9558_tplink_archer-c7=2Edtsi  =
 | 30 +++++++++----------<br> =2E=2E=2E/dts/qca9558_tplink_tl-wdr4900-v2=2E=
dts      | 28 +++++++++--------<br> =2E=2E=2E/ath79/dts/qca9558_tplink_tl-w=
r1043nd=2Edtsi | 20 +++++--------<br> =2E=2E=2E/ath79/dts/qca9561_tplink_ar=
cher-c5x=2Edtsi  | 30 +++++++++----------<br> =2E=2E=2E/ath79/dts/qca9563_d=
link_dir-859-a1=2Edts    | 20 +++++--------<br> =2E=2E=2E/ath79/dts/qca9563=
_tplink_archer-c7-v4=2Edts | 30 +++++++++----------<br> =2E=2E=2E/dts/qca95=
63_tplink_archer-x7-v5=2Edtsi      | 17 +++++------<br> =2E=2E=2E/dts/qca95=
63_tplink_tl-wr1043nd-v4=2Edts     | 16 +++++-----<br> 15 files changed, 14=
5 insertions(+), 173 deletions(-)<br><br>diff --git a/target/linux/ath79/dt=
s/ar7161_buffalo_wzr-hp-ag300h=2Edts b/target/linux/ath79/dts/ar7161_buffal=
o_wzr-hp-ag300h=2Edts<br>index f51bc0f771=2E=2E23f1845876 100644<br>--- a/t=
arget/linux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts<br>+++ b/target/li=
nux/ath79/dts/ar7161_buffalo_wzr-hp-ag300h=2Edts<br>@@ -120,16 +120,6 @@<br=
> 		};<br> 	};<br> <br>-	gpio-export {<br>-		compatible =3D "gpio-export";<=
br>-<br>-		gpio_usb_power {<br>-			gpio-export,name =3D "buffalo:power:usb"=
;<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 2=
 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>-	};<br>-<br> 	flash {<br> 		compatible =
=3D "mtd-concat";<br> <br>@@ -172,6 +162,15 @@<br> 	};<br> };<br> <br>+&amp=
;gpio {<br>+	usb_power {<br>+		gpio-hog;<br>+		line-name =3D "buffalo:power=
:usb";<br>+		gpios =3D &lt;2 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br>+	=
};<br>+};<br>+<br> &amp;usb_phy {<br> 	status =3D "okay";<br> };<br>diff --=
git a/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi b/target/linux/=
ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi<br>index 04403637b6=2E=2E333ee17ce=
b 100644<br>--- a/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi<br>=
+++ b/target/linux/ath79/dts/ar7241_tplink_tl-mr3x20=2Edtsi<br>@@ -3,15 +3,=
14 @@<br> #include "ar7241_tplink=2Edtsi"<br> <br> / {<br>-	gpio-export {<b=
r>-		compatible =3D "gpio-export";<br>-		#size-cells =3D &lt;0&gt;;<br>+};<=
br> <br>-		gpio_usb_power {<br>-			gpio-export,name =3D "tp-link:power:usb"=
;<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 6=
 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>+&amp;gpio {<br>+	usb_power {<br>+		gpio=
-hog;<br>+		line-name =3D "tp-link:power:usb";<br>+		gpios =3D &lt;6 GPIO_A=
CTIVE_HIGH&gt;;<br>+		output-high;<br> 	};<br> };<br> <br>diff --git a/targ=
et/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts b/target/linux/ath79/dt=
s/ar7241_tplink_tl-wr842n-v1=2Edts<br>index 162b5f2838=2E=2Eee468df244 1006=
44<br>--- a/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts<br>+++ =
b/target/linux/ath79/dts/ar7241_tplink_tl-wr842n-v1=2Edts<br>@@ -66,15 +66,=
16 @@<br> 			linux,default-trigger =3D "phy0tpt";<br> 		};<br> 	};<br>+};<b=
r> <br>-	gpio-export {<br>-		compatible =3D "gpio-export";<br>+&amp;gpio {<=
br>+	status =3D "okay";<br> <br>-		gpio_usb_power {<br>-			gpio-export,name=
 =3D "tp-link:power:usb";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			g=
pios =3D &lt;&amp;gpio 6 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>+	usb_power {<br=
>+		gpio-hog;<br>+		line-name =3D "tp-link:power:usb";<br>+		gpios =3D &lt;=
6 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br> 	};<br> };<br> <br>@@ -155,1=
0 +156,6 @@<br> 	mtd-mac-address-increment =3D &lt;1&gt;;<br> };<br> <br>-&=
amp;gpio {<br>-	status =3D "okay";<br>-};<br>-<br> &amp;uart {<br> 	status =
=3D "okay";<br> };<br>diff --git a/target/linux/ath79/dts/ar7242_buffalo_wz=
r-bhr=2Edtsi b/target/linux/ath79/dts/ar7242_buffalo_wzr-bhr=2Edtsi<br>inde=
x 3b5a4dd13d=2E=2Ed7632faf5c 100644<br>--- a/target/linux/ath79/dts/ar7242_=
buffalo_wzr-bhr=2Edtsi<br>+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-b=
hr=2Edtsi<br>@@ -57,17 +57,6 @@<br> 		};<br> 	};<br> <br>-	gpio-export {<br=
>-		compatible =3D "gpio-export";<br>-		#size-cells =3D &lt;0&gt;;<br>-<br>=
-		gpio_usb_power {<br>-			gpio-export,name =3D "buffalo:usb-power";<br>-		=
	gpio-export,output =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 16 GPIO_A=
CTIVE_HIGH&gt;;<br>-		};<br>-	};<br>-<br> 	virtual_flash {<br> 		compatible=
 =3D "mtd-concat";<br> 		devices =3D &lt;&amp;flash0 &amp;flash1&gt;;<br>@@=
 -109,6 +98,15 @@<br> 	};<br> };<br> <br>+&amp;gpio {<br>+	usb_power {<br>+=
		gpio-hog;<br>+		line-name =3D "buffalo:usb-power";<br>+		gpios =3D &lt;16=
 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br>+	};<br>+};<br>+<br> &amp;spi =
{<br> 	status =3D "okay";<br> 	cs-gpios =3D &lt;0&gt;, &lt;0&gt;;<br>diff -=
-git a/target/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts b/targ=
et/linux/ath79/dts/ar7242_buffalo_wzr-hp-g302h-a1a0=2Edts<br>index 8ac4df21=
94=2E=2E2b30b7830b 100644<br>--- a/target/linux/ath79/dts/ar7242_buffalo_wz=
r-hp-g302h-a1a0=2Edts<br>+++ b/target/linux/ath79/dts/ar7242_buffalo_wzr-hp=
-g302h-a1a0=2Edts<br>@@ -109,17 +109,6 @@<br> 		};<br> 	};<br> <br>-	gpio-e=
xport {<br>-		compatible =3D "gpio-export";<br>-		#size-cells =3D &lt;0&gt;=
;<br>-<br>-		gpio_usb_power {<br>-			gpio-export,name =3D "buffalo:usb-powe=
r";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio=
 13 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>-	};<br>-<br> 	virtual_flash {<br> 		=
compatible =3D "mtd-concat";<br> 		devices =3D &lt;&amp;flash0 &amp;flash1&=
gt;;<br>@@ -161,6 +150,15 @@<br> 	};<br> };<br> <br>+&amp;gpio {<br>+	usb_p=
ower {<br>+		gpio-hog;<br>+		line-name =3D "buffalo:usb-power";<br>+		gpios=
 =3D &lt;13 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br>+	};<br>+};<br>+<br=
> &amp;spi {<br> 	status =3D "okay";<br> 	cs-gpios =3D &lt;0&gt;, &lt;0&gt;=
;<br>diff --git a/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts b=
/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2=2Edts<br>index 86a316b51=
8=2E=2E1df0e27cb2 100644<br>--- a/target/linux/ath79/dts/ar9341_tplink_tl-w=
r842n-v2=2Edts<br>+++ b/target/linux/ath79/dts/ar9341_tplink_tl-wr842n-v2=
=2Edts<br>@@ -6,16 +6,6 @@<br> / {<br> 	model =3D "TP-Link TL-WR842N/ND v2"=
;<br> 	compatible =3D "tplink,tl-wr842n-v2", "qca,ar9341";<br>-<br>-	gpio-e=
xport {<br>-		compatible =3D "gpio-export";<br>-<br>-		gpio_usb_power {<br>=
-			gpio-export,name =3D "tp-link:power:usb";<br>-			gpio-export,output =3D=
 &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 4 GPIO_ACTIVE_HIGH&gt;;<br>-		};=
<br>-	};<br> };<br> <br> &amp;keys {<br>@@ -36,6 +26,15 @@<br> 	};<br> };<b=
r> <br>+&amp;gpio {<br>+	usb_power {<br>+		gpio-hog;<br>+		line-name =3D "t=
p-link:power:usb";<br>+		gpios =3D &lt;4 GPIO_ACTIVE_HIGH&gt;;<br>+		output=
-high;<br>+	};<br>+};<br>+<br> &amp;spi {<br> 	num-cs =3D &lt;1&gt;;<br> <b=
r>diff --git a/target/linux/ath79/dts/qca9558_devolo_dvl1750e=2Edts b/targe=
t/linux/ath79/dts/qca9558_devolo_dvl1750e=2Edts<br>index 3d25004c40=2E=2Ee7=
90cf0df4 100644<br>--- a/target/linux/ath79/dts/qca9558_devolo_dvl1750e=2Ed=
ts<br>+++ b/target/linux/ath79/dts/qca9558_devolo_dvl1750e=2Edts<br>@@ -53,=
15 +53,14 @@<br> 		compatible =3D "gpio-beeper";<br> 		gpios =3D &lt;&amp;g=
pio 4 GPIO_ACTIVE_HIGH&gt;;<br> 	};<br>+};<br> <br>-	gpio_export {<br>-		co=
mpatible =3D "gpio-export";<br>-<br>-		gpio_usb_power {<br>-			gpio-export,=
name =3D "devolo:power:usb";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-	=
		gpios =3D &lt;&amp;gpio 11 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>+&amp;gpio {=
<br>+	usb_power {<br>+		gpio-hog;<br>+		line-name =3D "devolo:power:usb";<b=
r>+		gpios =3D &lt;11 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br> 	};<br> =
};<br> <br>diff --git a/target/linux/ath79/dts/qca9558_tplink_archer-c7=2Ed=
tsi b/target/linux/ath79/dts/qca9558_tplink_archer-c7=2Edtsi<br>index c7761=
3dad6=2E=2Efb38f35dc1 100644<br>--- a/target/linux/ath79/dts/qca9558_tplink=
_archer-c7=2Edtsi<br>+++ b/target/linux/ath79/dts/qca9558_tplink_archer-c7=
=2Edtsi<br>@@ -64,22 +64,6 @@<br> 			debounce-interval =3D &lt;60&gt;;<br> =
		};<br> 	};<br>-<br>-	gpio-export {<br>-		compatible =3D "gpio-export";<br=
>-<br>-		gpio_usb1_power {<br>-			gpio-export,name =3D "tp-link:power:usb1"=
;<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 2=
1 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>-<br>-		gpio_usb2_power {<br>-			gpio-e=
xport,name =3D "tp-link:power:usb2";<br>-			gpio-export,output =3D &lt;1&gt=
;;<br>-			gpios =3D &lt;&amp;gpio 22 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>-	};=
<br> };<br> <br> &amp;pcie1 {<br>@@ -92,6 +76,20 @@<br> <br> &amp;gpio {<br=
> 	status =3D "okay";<br>+<br>+	usb1_power {<br>+		gpio-hog;<br>+		line-nam=
e =3D "tp-link:power:usb1";<br>+		gpios =3D &lt;21 GPIO_ACTIVE_HIGH&gt;;<br=
>+		output-high;<br>+	};<br>+<br>+	usb2_power {<br>+		gpio-hog;<br>+		line-=
name =3D "tp-link:power:usb2";<br>+		gpios =3D &lt;22 GPIO_ACTIVE_HIGH&gt;;=
<br>+		output-high;<br>+	};<br> };<br> <br> &amp;usb_phy0 {<br>diff --git a=
/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2=2Edts b/target/linux/a=
th79/dts/qca9558_tplink_tl-wdr4900-v2=2Edts<br>index 77166b8bfe=2E=2E470b74=
2578 100644<br>--- a/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2=2E=
dts<br>+++ b/target/linux/ath79/dts/qca9558_tplink_tl-wdr4900-v2=2Edts<br>@=
@ -57,7 +57,7 @@<br> 		};<br> 	};<br> <br>-	 ath9k-leds {<br>+	ath9k-leds {=
<br> 		compatible =3D "gpio-leds";<br> <br> 		wlan5g {<br>@@ -77,21 +77,23 =
@@<br> 			debounce-interval =3D &lt;60&gt;;<br> 		};<br> 	};<br>+};<br> <br=
>-	gpio-export {<br>-		compatible =3D "gpio-export";<br>+&amp;gpio {<br>+	s=
tatus =3D "okay";<br> <br>-		gpio_usb1_power {<br>-			gpio-export,name =3D =
"tp-link:power:usb1";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			gpios=
 =3D &lt;&amp;gpio 21 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>+	usb1_power {<br>+=
		gpio-hog;<br>+		line-name =3D "tp-link:power:usb1";<br>+		gpios =3D &lt;2=
1 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br>+	};<br> <br>-		gpio_usb2_pow=
er {<br>-			gpio-export,name =3D "tp-link:power:usb2";<br>-			gpio-export,o=
utput =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 22 GPIO_ACTIVE_HIGH&gt;=
;<br>-		};<br>+	usb2_power {<br>+		gpio-hog;<br>+		line-name =3D "tp-link:p=
ower:usb2";<br>+		gpios =3D &lt;22 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;=
<br> 	};<br> };<br> <br>diff --git a/target/linux/ath79/dts/qca9558_tplink_=
tl-wr1043nd=2Edtsi b/target/linux/ath79/dts/qca9558_tplink_tl-wr1043nd=2Edt=
si<br>index 1092250f02=2E=2Ef6d34ab3ff 100644<br>--- a/target/linux/ath79/d=
ts/qca9558_tplink_tl-wr1043nd=2Edtsi<br>+++ b/target/linux/ath79/dts/qca955=
8_tplink_tl-wr1043nd=2Edtsi<br>@@ -64,16 +64,16 @@<br> 			debounce-interval=
 =3D &lt;60&gt;;<br> 		};<br> 	};<br>+};<br> <br>-	gpio-export {<br>-		comp=
atible =3D "gpio-export";<br>-		#size-cells =3D &lt;0&gt;;<br>+&amp;gpio {<=
br>+	status =3D "okay";<br> <br>-		gpio_usb_power {<br>-			gpio-export,name=
 =3D "tp-link:power:usb";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			g=
pios =3D &lt;&amp;gpio 21 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>+	usb_power {<b=
r>+		gpio-hog;<br>+		line-name =3D "tp-link:power:usb";<br>+		gpios =3D &lt=
;21 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br> 	};<br> };<br> <br>@@ -81,=
10 +81,6 @@<br> 	status =3D "okay";<br> };<br> <br>-&amp;gpio {<br>-	status=
 =3D "okay";<br>-};<br>-<br> &amp;usb_phy0 {<br> 	status =3D "okay";<br> };=
<br>diff --git a/target/linux/ath79/dts/qca9561_tplink_archer-c5x=2Edtsi b/=
target/linux/ath79/dts/qca9561_tplink_archer-c5x=2Edtsi<br>index ddf92108b5=
=2E=2E53329f2268 100644<br>--- a/target/linux/ath79/dts/qca9561_tplink_arch=
er-c5x=2Edtsi<br>+++ b/target/linux/ath79/dts/qca9561_tplink_archer-c5x=2Ed=
tsi<br>@@ -103,22 +103,6 @@<br> 			gpios =3D &lt;&amp;gpio 21 GPIO_ACTIVE_L=
OW&gt;;<br> 		};<br> 	};<br>-<br>-	gpio-export {<br>-		compatible =3D "gpio=
-export";<br>-<br>-		gpio_shift_register_oe {<br>-			gpio-export,name =3D "=
tp-link:oe:sr";<br>-			gpio-export,output =3D &lt;0&gt;;<br>-			gpios =3D &=
lt;&amp;gpio 16 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>-<br>-		gpio_shift_regist=
er_reset {<br>-			gpio-export,name =3D "tp-link:reset:sr";<br>-			gpio-expo=
rt,output =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 19 GPIO_ACTIVE_HIGH=
&gt;;<br>-		};<br>-	};<br> };<br> <br> &amp;uart {<br>@@ -127,6 +111,20 @@<=
br> <br> &amp;gpio {<br> 	status =3D "okay";<br>+<br>+	shift_register_oe {<=
br>+		gpio-hog;<br>+		line-name =3D "tp-link:oe:sr";<br>+		gpios =3D &lt;16=
 GPIO_ACTIVE_HIGH&gt;;<br>+		output-low;<br>+	};<br>+<br>+	shift_register_r=
eset {<br>+		gpio-hog;<br>+		line-name =3D "tp-link:reset:sr";<br>+		gpios =
=3D &lt;19 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br>+	};<br> };<br> <br>=
 &amp;pcie {<br>diff --git a/target/linux/ath79/dts/qca9563_dlink_dir-859-a=
1=2Edts b/target/linux/ath79/dts/qca9563_dlink_dir-859-a1=2Edts<br>index a1=
7d9f263a=2E=2E63baa376c6 100644<br>--- a/target/linux/ath79/dts/qca9563_dli=
nk_dir-859-a1=2Edts<br>+++ b/target/linux/ath79/dts/qca9563_dlink_dir-859-a=
1=2Edts<br>@@ -61,16 +61,16 @@<br> 			debounce-interval =3D &lt;60&gt;;<br>=
 		};<br> 	};<br>+};<br> <br>-	gpio-export {<br>-		compatible =3D "gpio-exp=
ort";<br>-		#size-cells =3D &lt;0&gt;;<br>+&amp;gpio {<br>+	status =3D "oka=
y";<br> <br>-		gpio_switch_reset {<br>-			gpio-export,name =3D "dir-859-a1:=
reset:switch";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			gpios =3D &l=
t;&amp;gpio 11 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>+	switch_reset {<br>+		gpi=
o-hog;<br>+		line-name =3D "dir-859-a1:reset:switch";<br>+		gpios =3D &lt;1=
1 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br> 	};<br> };<br> <br>@@ -78,10=
 +78,6 @@<br> 	status =3D "okay";<br> };<br> <br>-&amp;gpio {<br>-	status =
=3D "okay";<br>-};<br>-<br> &amp;pcie {<br> 	status =3D "okay";<br> };<br>d=
iff --git a/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4=2Edts b/targ=
et/linux/ath79/dts/qca9563_tplink_archer-c7-v4=2Edts<br>index 470a8e6bf9=2E=
=2E66083aa7f9 100644<br>--- a/target/linux/ath79/dts/qca9563_tplink_archer-=
c7-v4=2Edts<br>+++ b/target/linux/ath79/dts/qca9563_tplink_archer-c7-v4=2Ed=
ts<br>@@ -42,22 +42,6 @@<br> 		};<br> 	};<br> <br>-	gpio-export {<br>-		com=
patible =3D "gpio-export";<br>-<br>-		gpio_shift_register_oe {<br>-			gpio-=
export,name =3D "tp-link:oe:sr";<br>-			gpio-export,output =3D &lt;0&gt;;<b=
r>-			gpios =3D &lt;&amp;gpio 1 GPIO_ACTIVE_LOW&gt;;	// 74HC595 /OE (Output=
 Enable)<br>-		};<br>-<br>-		gpio_shift_register_reset {<br>-			gpio-export=
,name =3D "tp-link:reset:sr";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-=
			gpios =3D &lt;&amp;gpio 21 GPIO_ACTIVE_LOW&gt;;	// 74HC595 /SRCLR (Seria=
l Clear)<br>-		};<br>-	};<br>-<br> 	leds {<br> 		compatible =3D "gpio-leds"=
;<br> <br>@@ -158,6 +142,20 @@<br> <br> &amp;gpio {<br> 	status =3D "okay";=
<br>+<br>+	shift_register_oe { // 74HC595 /OE<br>+		gpio-hog;<br>+		line-na=
me =3D "tp-link:oe:sr";<br>+		gpios =3D &lt;1 GPIO_ACTIVE_LOW&gt;;<br>+		ou=
tput-low;<br>+	};<br>+<br>+	shift_register_reset { // 74HC595 /SRCLR<br>+		=
gpio-hog;<br>+		line-name =3D "tp-link:reset:sr";<br>+		gpios =3D &lt;21 GP=
IO_ACTIVE_LOW&gt;;<br>+		output-high;<br>+	};<br> };<br> <br> &amp;usb_phy0=
 {<br>diff --git a/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5=2Edts=
i b/target/linux/ath79/dts/qca9563_tplink_archer-x7-v5=2Edtsi<br>index 2e66=
e0f03e=2E=2E64115c4248 100644<br>--- a/target/linux/ath79/dts/qca9563_tplin=
k_archer-x7-v5=2Edtsi<br>+++ b/target/linux/ath79/dts/qca9563_tplink_archer=
-x7-v5=2Edtsi<br>@@ -93,16 +93,6 @@<br> 			debounce-interval =3D &lt;60&gt;=
;<br> 		};<br> 	};<br>-<br>-	gpio-export {<br>-		compatible =3D "gpio-expor=
t";<br>-<br>-		gpio_usb_power {<br>-			gpio-export,name =3D "tp-link:power:=
usb";<br>-			gpio-export,output =3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gp=
io 19 GPIO_ACTIVE_HIGH&gt;;<br>-		};<br>-	};<br> };<br> <br> &amp;pcie {<br=
>@@ -115,6 +105,13 @@<br> <br> &amp;gpio {<br> 	status =3D "okay";<br>+<br>=
+	usb_power {<br>+		gpio-hog;<br>+		line-name =3D "tp-link:power:usb";<br>+=
		gpios =3D &lt;19 GPIO_ACTIVE_HIGH&gt;;<br>+		output-high;<br>+	};<br> };<=
br> <br> &amp;usb_phy0 {<br>diff --git a/target/linux/ath79/dts/qca9563_tpl=
ink_tl-wr1043nd-v4=2Edts b/target/linux/ath79/dts/qca9563_tplink_tl-wr1043n=
d-v4=2Edts<br>index 07a7409886=2E=2E45ee0c21c7 100644<br>--- a/target/linux=
/ath79/dts/qca9563_tplink_tl-wr1043nd-v4=2Edts<br>+++ b/target/linux/ath79/=
dts/qca9563_tplink_tl-wr1043nd-v4=2Edts<br>@@ -6,16 +6,14 @@<br> / {<br> 	c=
ompatible =3D "tplink,tl-wr1043nd-v4", "qca,qca9563";<br> 	model =3D "TP-Li=
nk TL-WR1043ND v4";<br>+};<br> <br>-	gpio-export {<br>-		compatible =3D "gp=
io-export";<br>-		#size-cells =3D &lt;0&gt;;<br>-<br>-		gpio_usb_power {<br=
>-			gpio-export,name =3D "tp-link:power:usb";<br>-			gpio-export,output =
=3D &lt;1&gt;;<br>-			gpios =3D &lt;&amp;gpio 8 GPIO_ACTIVE_HIGH&gt;;<br>-	=
	};<br>+&amp;gpio {<br>+	usb_power {<br>+		gpio-hog;<br>+		line-name =3D "t=
p-link:power:usb";<br>+		gpios =3D &lt;8 GPIO_ACTIVE_HIGH&gt;;<br>+		output=
-high;<br> 	};<br> };<br> </pre></blockquote></div></body></html>
------MAXGJAQ9L8VTN14K1CQ864J7H0RXVQ--


--===============1196494701745738479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1196494701745738479==--

