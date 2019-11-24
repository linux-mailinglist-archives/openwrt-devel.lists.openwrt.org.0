Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED6D10853E
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 Nov 2019 23:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=onDC6eJ5dTuPtGMtXl16gEw5gr9tsR6ND/H9EL9NpLY=; b=WP5zRWtYg8YWVbY7Vh4B21oQi
	UQVueNoVZkFOwurGUVJ1yZYykBxoJEOrXnucKJwHKR0yXHiiUW/ZNJyLKsD3EC+qGQuPv529MUs2m
	rzXDENxKQAAt1NMg5y/i3M9cVH7xAsDC52serNxnzahhxHskTmo1M5MqaK52+lSLE2PF4BQl1FSTJ
	KOC8uIspvl/oEdB8BKsV3Oypeyd63sl7bVeCYhCgCeS0pN1owzqGFHlmOZ3ihB7phpO+/GVPJVi5l
	pOLhGyCExYPVmdKrF+6v8lkC00FmZ7g2Uq1ON5t5V1ygIT9MICfUkR9i18KNROqxfEQ3pyNoJoyyp
	j93osjtcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ058-0006hm-JH; Sun, 24 Nov 2019 22:10:14 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ04x-00061m-5i
 for openwrt-devel@lists.openwrt.org; Sun, 24 Nov 2019 22:10:05 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M2ON6-1iXKqu1vDC-003wLs; Sun, 24 Nov 2019 23:09:58 +0100
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20191123180507.265078-1-mail@david-bauer.net>
In-Reply-To: <20191123180507.265078-1-mail@david-bauer.net>
Date: Sun, 24 Nov 2019 23:09:57 +0100
Message-ID: <00e501d5a313$e8f16d20$bad44760$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGZ+KHdGxPKQKUNUyXQyTGOwGiNnagSNM9Q
Content-Language: de
X-Provags-ID: V03:K1:ALNHg6RSQVUrQPt3OJJectCatHtbpqIX5Dd7vXfL+vI+sCL6KUd
 uwDwL7rgezfNzAGznjjtOB4Hjbx0j4u1LlUEiJmdjJIuLnkceMVIUux9nJpGZJIdGtYTMG6
 6jn36lSgxZ/WA9N/qiMonp4uj3gYVgbtivVKu4Pd7aY1E+cDg+Ayo8ZLGqFOyq+fFy1ELxI
 ZYY/r1HXpFOrq0akRyPrg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lSb10uMclEY=:fGTIfw33mqxrmWcajF92kA
 KrDR6uEpEbANtPkUlBEAxmCiuO2dC5xs4D9pdpPA3eNptkoCGE0jePEQhKvH+mRq1JXAHvHgI
 GufZ0LrdTlBliOM4YBPa+n0qffv9mP3zz/T2IFb4s9mW9taAZ7ybCBnmwwWdV9f+45Q7o5Nt0
 SENJu295k2wFgKh74GwBZNN/wVhZ7YOaTHhoe48EtLp8vWQ8s+lppLSdeUCv2Ba4uqdEyAGJX
 3fh5qgCMmQpjTthaw/rsQ7vTtMBF2FTY3C9goVUwrkMOSnEcQ6+3JuVI6KlhjBk6KNh/s0enk
 gSXKQHS6ZmzX9w4PQFcTE7P/CdywpCxvDny2oLk2yvgHW/+K+KWugnYKUzVeEIMOhisg9J48T
 UbxmgCL2jokm0+/GrTRILsO+muv+b++wQH+WpKpkessGLdpOeeSeDUTQX5SgpfWKdR7xBFhmm
 TD4su26E7HCZMGY647jj+tbyBZ8ZxTXGhUsObK9oBYggYyYjIEExl+TNkpi2Wn6R3kGhrkVAw
 eB9knEVZ31YpIKT6V2rezM9FNnPDHf/X0TXNXP1g5mpacXDWuhf2EbXrDUy8uQPBFKPEXEmL2
 4PPVMcoVqW2QkCPgRTTca4HGSPYNa1mPgNkf1BVsLwSXMVUYafdAf/dHBNv6epvb1ZU6dQdDp
 QpxwApyA263fTTUukA9Qu8zJqmsvH9z5Cw7JS5fxqGOXkNIk1XPiu1pXoe8r7FQhdRDZMfZeF
 GESjJ7rGOpMX9PKH50uSf2kdFyGm+THFlpYVx2khuvryIUreCALF34+d3H7MFDhI3c/23pjft
 R1ltf17c1ci/gH4OaSRyf7uaCtt7nwkkIn9AS8Tgiaud0cLCUwYsdun4Vg5fPvFkBItOF420H
 2pas0r/3FFRbErL0WqK91gREvB2qInLThR3gXkj1A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_141003_516655_695B85ED 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: reorganize NETGAR sercomm boards
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
Content-Type: multipart/mixed; boundary="===============5365230781476993494=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5365230781476993494==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=+SblDl80FTYoOL=-="

This is a multipart message in MIME format.

--=-=+SblDl80FTYoOL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

in the commit title NETGAR -> NETGEAR.

One could additionally remove the includes in mt7621_netgear_r6850.dts

Two nitpicks below.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of David Bauer
> Sent: Samstag, 23. November 2019 19:05
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: reorganize NETGAR sercomm
> boards
>=20
> This re-organizes the device-tree files for the Sercomm-manufactured
> NETGEAR routers. They are now split into two different base-boards, from
> which the respective model is extended.
>=20
> This partially reverts commit c7842ceaaa27 ("ramips: reorganize DTSI file=
s for
> Netgear R devices"), which introduced inheritance between two completely
> unrelated base-boards.
>=20
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  .../linux/ramips/dts/mt7621_netgear_r6220.dts | 35 ++------  ...m.dtsi =
=3D>
> mt7621_netgear_sercomm_ayx.dtsi} | 26 ++++++
>  .../dts/mt7621_netgear_sercomm_chj.dtsi       | 90 ++++++++++++++++++-
>  .../ramips/dts/mt7621_netgear_wndr3700-v5.dts | 35 ++------
>  4 files changed, 125 insertions(+), 61 deletions(-)  rename
> target/linux/ramips/dts/{mt7621_netgear_sercomm.dtsi =3D>
> mt7621_netgear_sercomm_ayx.dtsi} (80%)
>=20
> diff --git a/target/linux/ramips/dts/mt7621_netgear_r6220.dts
> b/target/linux/ramips/dts/mt7621_netgear_r6220.dts
> index f23e12b852..4779b71c1d 100644
> --- a/target/linux/ramips/dts/mt7621_netgear_r6220.dts
> +++ b/target/linux/ramips/dts/mt7621_netgear_r6220.dts
> @@ -1,40 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /dts-v1/;
>=20
> -#include "mt7621_netgear_sercomm.dtsi"
> +#include "mt7621_netgear_sercomm_ayx.dtsi"
>=20
>  / {
>  	compatible =3D "netgear,r6220", "mediatek,mt7621-soc";
>  	model =3D "Netgear R6220";
> -
> -	keys {
> -		compatible =3D "gpio-keys";
> -
> -		wps {
> -			label =3D "wps";
> -			gpios =3D <&gpio0 7 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <KEY_WPS_BUTTON>;
> -		};
> -
> -		wifi {
> -			label =3D "wifi";
> -			gpios =3D <&gpio0 8 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <KEY_RFKILL>;
> -		};
> -
> -		reset {
> -			label =3D "reset";
> -			gpios =3D <&gpio0 14 GPIO_ACTIVE_LOW>;
> -			linux,code =3D <KEY_RESTART>;
> -		};
> -	};
> -};
> -
> -&leds {
> -	wps {
> -		gpios =3D <&gpio0 12 GPIO_ACTIVE_LOW>;
> -		label =3D "r6220:green:wps";
> -	};
>  };
>=20
>  &led_power {
> @@ -53,6 +24,10 @@
>  	label =3D "r6220:green:wifi";
>  };
>=20
> +&led_wps {
> +	label =3D "r6220:green:wps";
> +};
> +
>  &nand {
>  	status =3D "okay";
>=20
> diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
> b/target/linux/ramips/dts/mt7621_netgear_sercomm_ayx.dtsi
> similarity index 80%
> rename from target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
> rename to target/linux/ramips/dts/mt7621_netgear_sercomm_ayx.dtsi
> index 7cff51a090..4e6e91ed8f 100644
> --- a/target/linux/ramips/dts/mt7621_netgear_sercomm.dtsi
> +++ b/target/linux/ramips/dts/mt7621_netgear_sercomm_ayx.dtsi
> @@ -21,6 +21,28 @@
>  		bootargs =3D "console=3DttyS0,57600";
>  	};
>=20
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		wps {
> +			label =3D "wps";
> +			gpios =3D <&gpio0 7 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +		};
> +
> +		wifi {
> +			label =3D "wifi";
> +			gpios =3D <&gpio0 8 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RFKILL>;
> +		};
> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio0 14 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +	};
> +
>  	leds: leds {

This label can be removed. It shouldn't be needed anymore ...

>  		compatible =3D "gpio-leds";
>=20
> @@ -42,6 +64,10 @@
>  			gpios =3D <&gpio0 16 GPIO_ACTIVE_LOW>;
>  			linux,default-trigger =3D "phy0tpt";
>  		};
> +
> +		led_wps: wps {
> +			gpios =3D <&gpio0 12 GPIO_ACTIVE_LOW>;
> +		};
>  	};
>=20
>  	reg_usb_vbus: regulator {
> diff --git a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
> b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
> index d09585a753..f2222a1412 100644
> --- a/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
> +++ b/target/linux/ramips/dts/mt7621_netgear_sercomm_chj.dtsi
> @@ -1,9 +1,49 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /dts-v1/;
>=20
> -#include "mt7621_netgear_sercomm.dtsi"
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
>=20
>  / {
> +	compatible =3D "mediatek,mt7621-soc";
> +
> +	aliases {
> +		led-boot =3D &led_power;
> +		led-failsafe =3D &led_power;
> +		led-running =3D &led_power;
> +		led-upgrade =3D &led_power;
> +		label-mac-device =3D &ethernet;
> +	};
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,57600";
> +	};
> +
> +	leds: leds {

This label can be removed, too.

Best

Adrian=20

--=-=+SblDl80FTYoOL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3a/60ACgkQoNyKO7qx
AnDh+A/+Kp6gzgzxur9nsnlLRKNZL5t5ezXaZoeZHmIWnLyVR70qo54ekpsLgXjY
q9ADKPSCEaO8xlhebLoTZMSCpTveik3ktBm35V59lyFOAtJmlolZCJW5jxWTWGKW
P3GelKy3o5DAwCttIU5NT6rxPlGlWi+yWb9UGSOvISXHMUjXpiEoOcqirzRymWZc
P+EcA35x38aoKGWF+Vgc+6s3Rk/4NeZC9TY52UWw1MB9rfywKkXS/FsoyEeGCqPU
FVWcfbhDujPdFsxsCbd9Cp5ELqhLsPRmzkKiGjZB5RpYZkRzdgK4OdrDOziAsoar
eB5B+ugkNDNY9D8QMcs+jen/q2WJI3IhR/jrRuHqksSyY6ewqd4sLoA1YSbuZ0Ot
jhNcPsB0HKSUVm+AJmJOxM8xVUq1epTOr8dfR6NdntEDXyQvDSm4YUvoyj5MxHvW
9/j2mkc38YBMnGWVd20qlP5LNFT9D1Y6IGijm49dJ22EDRK6HTsoIZsc6L+m9lhP
y5HexIlFCS6fr/OLdcfHdhu4pACdIGKV3ZP4/npqBVGEBtDcALYouO8S5aCDcZUy
54M+KoU4NCwdz6/dzWK4vvC5W3sBB69rBrWxMxFgIR0+VJMrm1A79WkL0WB8N87M
s9YRk6atSs2n7YlpC6SutxhpJh5xerKLS0A4E2hj+k4Uc00ilCE=
=d2rZ
-----END PGP SIGNATURE-----


--=-=+SblDl80FTYoOL=-=--



--===============5365230781476993494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5365230781476993494==--


