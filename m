Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAD9FF61F
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 00:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aqAB+uwwOWhBJMX3EO9PWxc2DDzUypZ++TitDO7dIv4=; b=LbxsBkhw1fchDlumc0XMpewwn
	Yuys/RZ0z0EFuRmLCu7cxnQHVja/4vJtqf0mlKRjV9I0DS1xPbWArgevpY8kA3bex41a0Ytbs3Bca
	7ABixFLrXht0v/KFJc4A9Ph1bAXzZQkMNAF3ERhYdE2swxwSQa07/n2n1sk5R08mi+EM8rdniiSx7
	z0EigJD0sjPjG8pkpGqAivRQRc4OhB1/+JQRSUM/0/KZmny6TmkiGVkeL07dEw34GM4WWjG+vp1qY
	uV1SqLrE/WilQLhtdp5X3Cgh0PPE50Vmi7+144Vn7HUMKrFlnADXn5y5NsbjUCmvn20KJRKqx+Q5J
	nU0z2Tf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW7WM-000515-H0; Sat, 16 Nov 2019 23:30:26 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW7WD-00050i-Qx
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 23:30:19 +0000
Received: from desktop ([188.193.230.49]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N49Yn-1hoMfU3ZtR-0106QL; Sun, 17 Nov 2019 00:30:13 +0100
From: <mail@adrianschmutzler.de>
To: "'Jo-Philipp Wich'" <jo@mein.io>,
	<openwrt-devel@lists.openwrt.org>
References: <20191116202346.31885-1-jo@mein.io>
 <20191116202346.31885-14-jo@mein.io>
In-Reply-To: <20191116202346.31885-14-jo@mein.io>
Date: Sun, 17 Nov 2019 00:30:12 +0100
Message-ID: <007801d59cd5$cbcffbb0$636ff310$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGG8lkgcAkgDkv0Oa0oCE0J9uTu0wIPeMmnqBtK+DA=
X-Provags-ID: V03:K1:ibdXk7N3mPuYJrCSmUTL2jG+NaGAtx0TjX3y0Kj1TBjaAl1EavD
 j6984sZZlq7GZl1V+U9mlmQT0OiweT/RZNMop/EyNuX4hsz/TMXHsKQcPqCuBP/snNbgRQw
 CjEc/+38JHpsv7kMcAn11GvpieVqgA+uDovQZMWU646hT8pexACpEhp4ceXpR3A9iCKTaKz
 x0jMra5KF2KJkqQjFpJBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iZ/ex0y62wA=:7SCsi3WEwkZUdmIFX8//pZ
 DC8gUIfYojQgTYu7l9cUb9b1uBMdOt0zF/wAXwDWI6y5glDoDqLGO8zOugOskf1ZmC3AtuWPO
 120G51d1JyDLL8NHoFxKKblL4bHcYsLgJA1D8ztc6dU5AtVeHy1Amy4RquQ/IMdGD4Fb+qXrC
 iMDoF9qQxu0Ng9RCGJsJ5xZatYRRyD/l62JnCw8xcDneH8yiAGbXx6AvPxqWFXbRGb66G9Op6
 mVe4iaL/NV8fnNXk+wxpblSUepJUe/a1tErSQSB2ZeqRQEu00I3YlYJfgSv+/1+TsgE4/xdF4
 X4YQHTTVobKya0DrBDo8+XC9p1gzIuwywu1AjvFFLwSqVq8r4uCA7T4HcbG4IGoQdQC4dsJ8p
 WQTTXdcshiv6csjk1XIoaPfYyiTdht/zA1lnj17cy7R6f+doMfZDrSrE4NpC81b2WvUzdsjwK
 wG8Il8h+BIh62b5HpmB6XuGJicsJpklf9najh1a5uTAQo1y/LirrmT5UtVO0k1q14GWYehRDh
 l0yW7GSj4gJOlPL/WBFU2zvlZmQws+s1erztH72PH0JyoEZkbRu74ERBnTaKwnPlny6LgNIqA
 6zVzOIgykd/QnSEzyGnaIgCEBxbgLDKHbRWhfZ1CV4RFgY/K+KGjn27z+4iZF1ZnK86hLiOv8
 Ew2DNx8nAwYt0/xcnXO76hyNnSFGzwkbAc64CORdGQK9EzxdF97EYGfVkMV9T0PJ5I/Qi3OXd
 9gVG+99Pl8oWlDyRQ8QBZU0A9zpOQgSvdIfpFzapBaRz4QFdlhvQ6kyO9j51vQbQ1ElQ8Abum
 M4RVM2WPZgeusJCyL4Ozou0AoFPGvrqJTX4tIB83Jtwz6B3KRdAzE052ThuqRM+xlPvg/T/Qe
 QMNbEMsQmDZEvv12NLO08cwPmbSIVvQXOdmUuM/ZM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_153018_167052_986B1F1B 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 13/17] brcm47xx: disable Netgear WNR2000
 v2 by default
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
Content-Type: multipart/mixed; boundary="===============4194887207818845297=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4194887207818845297==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=xtOjsohegdLCD/=-="

This is a multipart message in MIME format.

--=-=xtOjsohegdLCD/=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

this actually additionally disables netgear-wnr3500l-v1-na without a commen=
t about it.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jo-Philipp Wich
> Sent: Samstag, 16. November 2019 21:24
> To: openwrt-devel@lists.openwrt.org
> Cc: Jo-Philipp Wich <jo@mein.io>
> Subject: [OpenWrt-Devel] [PATCH 13/17] brcm47xx: disable Netgear
> WNR2000 v2 by default
>=20
> Disable the Netgear WNR2000 v2 image by default as the device has
> insufficient flash space for release build images.
>=20
> Ref: https://forum.openwrt.org/t/devices-too-big-to-save-overlay/18161/72
> Signed-off-by: Jo-Philipp Wich <jo@mein.io>
> ---
>  target/linux/brcm47xx/image/Makefile | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/target/linux/brcm47xx/image/Makefile
> b/target/linux/brcm47xx/image/Makefile
> index c2bf9d41d5..969d523956 100644
> --- a/target/linux/brcm47xx/image/Makefile
> +++ b/target/linux/brcm47xx/image/Makefile
> @@ -916,6 +916,7 @@ define Device/netgear-wnr2000v2
>    $(Device/netgear)
>    NETGEAR_BOARD_ID :=3D U12H114T00_NETGEAR
>    NETGEAR_REGION :=3D 2
> +  DEFAULT :=3D n
>  endef
>  TARGET_DEVICES +=3D netgear-wnr2000v2
>=20
> @@ -925,6 +926,7 @@ define Device/netgear-wnr3500l-v1-na
>    $(Device/netgear)
>    NETGEAR_BOARD_ID :=3D U12H136T99_NETGEAR
>    NETGEAR_REGION :=3D 2
> +  DEFAULT :=3D n
>  endef
>  TARGET_DEVICES +=3D netgear-wnr3500l-v1-na
>=20
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=xtOjsohegdLCD/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3QhoQACgkQoNyKO7qx
AnA0lhAAnUUipLVzz88mZbcQoh0tX3+qL9pAJ0+ibzWteqxYQvI71fNHE2gQ2HeF
QHscoQBwGrzZYKZ3kCcx/s26Ie/BtobUmtQCpY3eFVGwzZqwdyTihOIg5a9/egzw
CRGDddI3OOAzmEV31c/lY4iB3F3qB0ndyRxl30P3KFfdDyx98MeHc2XLyhWBjFyl
qRRuscO8UVmsbgLGFDRO/1W9IaNM+GrX5DoZ101OnmH+qJBW2Sfy08yfX2pc//bX
mHkR+FnRYCXEkkTZJb9Kxy6hzl4nfzG+fu6HS6WQ5Qp8gUPOcHzC0GT5zckr3rM3
UDY9QP1w7gDIvLwPWMsSdSR7yVh7QMcmi1WVV8lG+68aWjidTZyAqoUGEMb6iOMs
aHtyNYdXTpadirdSdHk8l90SjWxEXNNmm2rcklkv8t0hea2ZwrfSdjURdkUc7Cl8
/AVP3rmcNixlGSVKA138Fhkpjizie8hqzzOh/n4FABlkyGEouFY8FGYsKyoHuxWC
h0NYCXQVekeBTln8ITUZiNmJKI/ZYV0p/c3uTEi5u2j3eXy8oBLfkV23MrZSZCvw
3xmzJ01i2HI+wWKqcMQkeWxxG4EME2D2m+NRIQYELSv2fEp2iBmbfDeA/8PL7h+D
9LmrJWUA8/J3XsJgW8jubLmXBxYOD7l7FX5Ijun/o8dEG+eJ+CE=
=BrVf
-----END PGP SIGNATURE-----


--=-=xtOjsohegdLCD/=-=--



--===============4194887207818845297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4194887207818845297==--


