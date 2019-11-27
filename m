Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6DB10B23D
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 16:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6+qELkFwlT5A3eBvcxLbcx9jAm8STax+nS6XfX4+lEw=; b=ZHV7U4JlEpKnj2I8IH7ucL4v7
	uIC6ihAAJ+2u5/YsvFslepZButkNx1lz6ZQgrNs3c+VeRHYSM6R3dM1zPSI9R3QRTC3s5vVEXjFN3
	Mo8qbfMB2WisJL7pWvtIaxu8wOnGRtjPwEs0S55cXmOZ+y9bsYIB+o+rhnT58L0NCfQQzb5OvQHTb
	jmk3B+b+aprY7CceOLkMRRlAY44BIpe6ueKXF1hY0oH+hL85+6xGKIHipoma5iNBzOdOZJuxYYoty
	5NIfSF/1KRcSPTxTw50u6YP3jXbRfyVy6t+m4sv4F636TX2N5tLpoy5IgXmqo79vNW1ObHKEBVWiS
	xDFlCTZfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZz4P-0003ZI-41; Wed, 27 Nov 2019 15:17:33 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZz4H-0003YE-9L
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 15:17:27 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MGz5f-1ie7g806wF-00E2zz; Wed, 27
 Nov 2019 16:17:23 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <20191122134549.43222-1-freifunk@adrianschmutzler.de>
 <08ec62eb-c779-4f98-c486-7d5fff2deb5a@david-bauer.net>
In-Reply-To: <08ec62eb-c779-4f98-c486-7d5fff2deb5a@david-bauer.net>
Date: Wed, 27 Nov 2019 16:17:22 +0100
Message-ID: <00c301d5a535$c4c51e00$4e4f5a00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJpdRM38yi+G3k8RLfiuISz/iIQfgJx1kMYpmPxlXA=
X-Provags-ID: V03:K1:3oyNTL2by32czT7ea4/jZwsWaq7SIo7y+m1aSfCNnUZc9G96ORz
 xZfDrEP4yJaBXUPh+Tk3nAxozE4CKM8baP4x8w7O31yA10Dc0HJYhUoVgnBb4x2qF7X6rDw
 bnxYJQjXVnODTjRvyDC8IqfOAd41PLxg7F77EujqQBs9qJudrleRqZuRN5e4d1EE89AAryp
 hjISTqWx81t0dnKUIcGaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bHgsCNMz9AY=:p3ru5/s/CzKbdxXq3W7k4q
 q7CCzY2FnU8lelQjiUlnA45mMmkxmiWUCZhxcnjqtTMBni0Bddvrs8GMdKB+jTi1pFydBdbMd
 SrapG/8aVUfhn7tcJ4Yq8s1BjMkoCWXU8E648OGWqGcuS4gmjJ5rDF4HYYia3+DOwrwIpdy46
 SD+BzNHyEoKpfK78fQPpOlmb8LFRpI0eRlwWCv8YQmTTZBLNqCQledtaUPZ9pIUOAhtEAHSo/
 4l6eesWLRskEUMoy4Kq5+8vV3yRz0SLO+bT9DHg2Q0cO9OE9fkrr0PFGeRqF2CICsXA4V4AFY
 uI5ab1ePeS2SAsKUxT7hTpP1x+zPCXKXwvglSXMH+IM5NDE/NuskHV1nv4nVqfp5QSXEHvCRC
 yZQ7pvq9a5K9X8TvoyEOItFlIGlLR7dliK0ISgYcRK1ylIeoJtQnn197Pvkzrpu/BQqVN2F5U
 wdAyFVQswAY2DYTivWDg7lDT60Ak8REW6nuPsMrOnDgfvnLC1efz/GXmexebglw8EUjFGKsi0
 gJdQgdGBUW2RAflCRS4lItV6HCz4YoMEhL22PPNdlaH8zBHwklUUjIPXQ6kWkZpu+b+DjVFre
 m7CkaGPBN4WKyExxnLjkXLCuQcYBclNxesr+5bvblbTY61hpERJLLkw/k3ObbShP30XdcsSwg
 N5skQrPs7ibCiriw30W7xYtfFq9qwh8MQ3wmHEaKCcn99ftEPhEPnnTEPVGEtKd3VZPsmxWwT
 SoT9ENiN+Ww73u9agEyw00x6ZaLkScnNSgUgNrnAEyVkuuWdEGcntndXEcCEi8QRPuL2qrGmr
 Pe5bBQcKI4Fv3OVhFzrzza+oOWMMne8SS7gYx47ebCm3Mn6+XxTvrGestG8zrJty3NeSFb878
 GX2KHWT4o/zdtsK35/8WzlEpwSGqIk519IZANnqXA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_071725_628235_4EF6E8F1 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: rename EEPROM to art
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============8906906981766714524=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8906906981766714524==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=5kbAmhdSlI84rK=-="

This is a multipart message in MIME format.

--=-=5kbAmhdSlI84rK=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of David Bauer
> Sent: Freitag, 22. November 2019 22:40
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: rename EEPROM to art
>=20
> Hello Adrian,
>=20
> On 11/22/19 2:45 PM, Adrian Schmutzler wrote:
> > This renames all remaining occurrences of "EEPROM" to "art" to
> > further harmonize the partition labelling in ath79.
>=20
> Hmm, I'm not sure if/why we should to these changes.
>=20
> Ubiquiti names these partitions "EEPROM" in their firmware
> and it contains more information (e.g. board-id / sub-revision)
> than just the calibration data.

similar to what Piotr stated, I just give the unification slightly higher p=
riority than the consistency with the vendor names in this case.

Despite, note that for XM the partition is already named "art" in ath79, to=
o, so we are also increasing consistency from that angle.

Best

Adrian

>=20
> Best wishes
> David
>=20
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >  .../linux/ath79/dts/ar9342_ubnt_lap-120.dts   |  2 +-
> >  .../ath79/dts/ar9342_ubnt_nanobeam-ac.dts     |  2 +-
> >  .../dts/ar9342_ubnt_nanostation-ac-loco.dts   |  2 +-
> >  .../ath79/dts/ar9342_ubnt_nanostation-ac.dts  |  4 ++--
> >  target/linux/ath79/dts/ar9342_ubnt_wa.dtsi    |  6 +++---
> >  target/linux/ath79/dts/ar9342_ubnt_xw.dtsi    |  8 ++++----
> >  .../linux/ath79/dts/qca9533_ubnt_acb-isp.dts  | 10 +++++-----
> >  .../ath79/dts/qca9563_ubnt_unifiac-lite.dtsi  |  2 +-
> >  .../ath79/dts/qca9563_ubnt_unifiac-pro.dtsi   |  2 +-
> >  .../linux/ath79/dts/qca9563_ubnt_unifiac.dtsi |  6 +++---
> >  .../etc/hotplug.d/firmware/11-ath10k-caldata  | 20 +++++++++----------
> >  11 files changed, 31 insertions(+), 33 deletions(-)
> >
> > diff --git a/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
> b/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
> > index 82f864b8e3..757654eaee 100644
> > --- a/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
> > +++ b/target/linux/ath79/dts/ar9342_ubnt_lap-120.dts
> > @@ -26,7 +26,7 @@
> >  	/* default for ar934x, except for 1000M and 10M */
> >  	pll-data =3D <0x06000000 0x00000101 0x00001313>;
> >
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >
> >  	phy-mode =3D "rgmii";
> >  	phy-handle =3D <&phy4>;
> > diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
> b/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
> > index 6e64c7faad..30d054dfed 100644
> > --- a/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
> > +++ b/target/linux/ath79/dts/ar9342_ubnt_nanobeam-ac.dts
> > @@ -51,7 +51,7 @@
> >  	/* default for ar934x, except for 1000M and 10M */
> >  	pll-data =3D <0x06000000 0x00000101 0x00001313>;
> >
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >
> >  	phy-mode =3D "rgmii";
> >  	phy-handle =3D <&phy4>;
> > diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
> b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
> > index 9b26d1a628..89904721c0 100644
> > --- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
> > +++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac-loco.dts
> > @@ -27,7 +27,7 @@
> >  	/* default for ar934x, except for 1000M and 10M */
> >  	pll-data =3D <0x06000000 0x00000101 0x00001313>;
> >
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >
> >  	phy-mode =3D "rgmii";
> >  	phy-handle =3D <&phy4>;
> > diff --git a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
> b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
> > index b591925154..97597e5f15 100644
> > --- a/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
> > +++ b/target/linux/ath79/dts/ar9342_ubnt_nanostation-ac.dts
> > @@ -58,7 +58,7 @@
> >  	/* default for ar934x, except for 1000M and 10M */
> >  	pll-data =3D <0x06000000 0x00000101 0x00001313>;
> >
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >
> >  	phy-mode =3D "rgmii";
> >  	phy-handle =3D <&phy0>;
> > @@ -73,5 +73,5 @@
> >  &wmac {
> >  	status =3D "okay";
> >
> > -	mtd-cal-data =3D <&eeprom 0x1000>;
> > +	mtd-cal-data =3D <&art 0x1000>;
> >  };
> > diff --git a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
> b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
> > index 30fa299638..2847d4098c 100644
> > --- a/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
> > +++ b/target/linux/ath79/dts/ar9342_ubnt_wa.dtsi
> > @@ -75,8 +75,8 @@
> >  				read-only;
> >  			};
> >
> > -			eeprom: partition@ff0000 {
> > -				label =3D "EEPROM";
> > +			art: partition@ff0000 {
> > +				label =3D "art";
> >  				reg =3D <0xff0000 0x010000>;
> >  				read-only;
> >  			};
> > @@ -88,5 +88,5 @@
> >  	status =3D "okay";
> >
> >  	qca,disable-5ghz;
> > -	mtd-cal-data =3D <&eeprom 0x1000>;
> > +	mtd-cal-data =3D <&art 0x1000>;
> >  };
> > diff --git a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
> b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
> > index ee42498af1..cf24aba5aa 100644
> > --- a/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
> > +++ b/target/linux/ath79/dts/ar9342_ubnt_xw.dtsi
> > @@ -103,8 +103,8 @@
> >  				read-only;
> >  			};
> >
> > -			eeprom: partition@7f0000 {
> > -				label =3D "EEPROM";
> > +			art: partition@7f0000 {
> > +				label =3D "art";
> >  				reg =3D <0x7f0000 0x010000>;
> >  				read-only;
> >  			};
> > @@ -115,9 +115,9 @@
> >  &wmac {
> >  	status =3D "okay";
> >
> > -	mtd-cal-data =3D <&eeprom 0x1000>;
> > +	mtd-cal-data =3D <&art 0x1000>;
> >  };
> >
> >  &eth0 {
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >  };
> > diff --git a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
> b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
> > index 629899e1a2..ded95f3a18 100644
> > --- a/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
> > +++ b/target/linux/ath79/dts/qca9533_ubnt_acb-isp.dts
> > @@ -64,8 +64,8 @@
> >  				read-only;
> >  			};
> >
> > -			eeprom: partition@ff0000 {
> > -				label =3D "EEPROM";
> > +			art: partition@ff0000 {
> > +				label =3D "art";
> >  				reg =3D <0xff0000 0x010000>;
> >  				read-only;
> >  			};
> > @@ -79,13 +79,13 @@
> >
> >  &eth0 {
> >  	status =3D "okay";
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >  	phy-handle =3D <&swphy4>;
> >  };
> >
> >  &eth1 {
> >  	status =3D "okay";
> > -	mtd-mac-address =3D <&eeprom 0x6>;
> > +	mtd-mac-address =3D <&art 0x6>;
> >
> >  	gmac-config {
> >  		device =3D <&gmac>;
> > @@ -94,5 +94,5 @@
> >
> >  &wmac {
> >  	status =3D "okay";
> > -	mtd-cal-data =3D <&eeprom 0x1000>;
> > +	mtd-cal-data =3D <&art 0x1000>;
> >  };
> > diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
> b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
> > index 4f77661fbd..8248e060c5 100644
> > --- a/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
> > +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-lite.dtsi
> > @@ -21,6 +21,6 @@
> >  &eth0 {
> >  	status =3D "okay";
> >
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >  	phy-handle =3D <&phy4>;
> >  };
> > diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
> b/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
> > index 3a6c0cd3fa..5a0cf4bade 100644
> > --- a/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
> > +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac-pro.dtsi
> > @@ -25,6 +25,6 @@
> >  &eth0 {
> >  	status =3D "okay";
> >
> > -	mtd-mac-address =3D <&eeprom 0x0>;
> > +	mtd-mac-address =3D <&art 0x0>;
> >  	phy-handle =3D <&phy0>;
> >  };
> > diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
> b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
> > index bb20caba47..bfad3ff306 100644
> > --- a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
> > +++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
> > @@ -104,8 +104,8 @@
> >  				read-only;
> >  			};
> >
> > -			eeprom: partition@ff0000 {
> > -				label =3D "EEPROM";
> > +			art: partition@ff0000 {
> > +				label =3D "art";
> >  				reg =3D <0xff0000 0x010000>;
> >  				read-only;
> >  			};
> > @@ -116,5 +116,5 @@
> >  &wmac {
> >  	status =3D "okay";
> >
> > -	mtd-cal-data =3D <&eeprom 0x1000>;
> > +	mtd-cal-data =3D <&art 0x1000>;
> >  };
> > diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmwa=
re/11-
> ath10k-caldata b/target/linux/ath79/generic/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> > index f128e8759f..258efc3bf4 100644
> > --- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-a=
th10k-
> caldata
> > +++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-
> ath10k-caldata
> > @@ -12,6 +12,15 @@ case "$FIRMWARE" in
> >  	case $board in
> >  	comfast,cf-wr650ac-v1|\
> >  	comfast,cf-wr650ac-v2|\
> > +	ubnt,unifiac-lite|\
> > +	ubnt,unifiac-lr|\
> > +	ubnt,unifiac-mesh|\
> > +	ubnt,unifiac-mesh-pro|\
> > +	ubnt,lap-120|\
> > +	ubnt,nanobeam-ac|\
> > +	ubnt,nanostation-ac|\
> > +	ubnt,nanostation-ac-loco|\
> > +	ubnt,unifiac-pro|\
> >  	yuncore,a770)
> >  		caldata_extract "art" 0x5000 0x844
> >  		;;
> > @@ -101,17 +110,6 @@ case "$FIRMWARE" in
> >  		caldata_extract "art" 0x5000 0x844
> >  		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_binary info
> 0x8) +1)
> >  		;;
> > -	ubnt,unifiac-lite|\
> > -	ubnt,unifiac-lr|\
> > -	ubnt,unifiac-mesh|\
> > -	ubnt,unifiac-mesh-pro|\
> > -	ubnt,lap-120|\
> > -	ubnt,nanobeam-ac|\
> > -	ubnt,nanostation-ac|\
> > -	ubnt,nanostation-ac-loco|\
> > -	ubnt,unifiac-pro)
> > -		caldata_extract "EEPROM" 0x5000 0x844
> > -		;;
> >  	esac
> >  	;;
> >  "ath10k/pre-cal-pci-0000:00:00.0.bin")
> >
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=5kbAmhdSlI84rK=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3ek34ACgkQoNyKO7qx
AnCiKg//UiOBoohiS6ixS8y6PM9hUqkKXE/ZgbiYXfeRn4trX2rKL3zjlmGs3ydr
+fbtgqL2FEK5zs7wDoAGowQZ4pbJtTueMrJg9yupR42V90hG1+qTeVdLIM+i0I1W
cJWguRa1HY4clbfpAdViQgQUH9SdFVac0NTi/kW9Ty9/+s6xpxcRyLjNLkxroC2T
ykxAflQ7uxX+VcUEeWAx8vf0qJ9OiKcoEnNX8jHldjJ5b2zf2f+78LDWiBA+Ammi
aHzEvBVbLQUtOFXfufx0xg9qt6z9VP+EVeaJIcTd6CR+XtXMcwPIVJ0RV579kGrL
f4eeiHqaHWQYbSEO8IBiG4Z+njE4gHia+tNgpxeor9VLOiHm8W7IQQkl04THbaCG
h9nDExWOSlfAD2pcP3POUnVTijKvwP6pn78Nc6m8TqGlBGNp1TntJZw90wyhqdzo
XawdvzIXTshKlC+NK41FsbDF2NBsqEorPP56Movsfob7INNDpPBhEZqpBjuL+Qzd
kswUYQSXCQcfh09biXPxr6B06eL3QFd7kuV+g8uHY7YB/zwUFlOxQgFJnGvYgfdp
O/gogZVCN5vVmZWY0klInPhij2+QvA84N49sYWIxz+e+WxwrOL0wOJsMPn62cBix
SDIn9zbZQWrolyLonRLmi0feYy4+onU1S9KagT4BG+oWk9DEGIY=
=GU23
-----END PGP SIGNATURE-----


--=-=5kbAmhdSlI84rK=-=--



--===============8906906981766714524==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8906906981766714524==--


