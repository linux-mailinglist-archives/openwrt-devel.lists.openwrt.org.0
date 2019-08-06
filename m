Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B317833DD
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 16:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9SbeGtPo6wQSHQgRCVdEVzFqRVcp+td/F5xqQ7pG/yI=; b=Ad3716cwHxMcIuKyi36De9enR
	OGDyQHCcb3eUlRGv7Y3QPzIMcVewJ+U7ww5pK1IjKpTGrVsCCixIi1Ic5eOXStIMW9hl29sEyFnq7
	Ni+vcChLnSGbG4E3SqCaAn9DLidRW3AbVpFjSd+LPxaUHWH9Tv+BsLzbZzf6/zg7j6VqCmWq5otnO
	a8iZjLlMcCA6gdYFEMkHlQwCYiC+4vwy78h1uaCoFY6ZEUVqH8xKrTeO/9S5RCCAJiARuuby+gXLF
	bZSkl6tSCBaZ5wGTNag+orwnS0rZO3IOyaTMKLci3rN18wYHcZqNxaLcjAaakOAzHs1nadEXxUTtC
	sLXQVBnaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0NP-0001fz-QM; Tue, 06 Aug 2019 14:23:47 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0NH-0001fD-8T
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 14:23:40 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N9d4t-1iQbbv1ImL-015ZAf; Tue, 06
 Aug 2019 16:23:34 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190806155540.4e27407b@kosmio.komorska>
 <20190806160347.2a851c4d@kosmio.komorska>
In-Reply-To: <20190806160347.2a851c4d@kosmio.komorska>
Date: Tue, 6 Aug 2019 16:23:33 +0200
Message-ID: <011a01d54c62$879f2ec0$96dd8c40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQOL7QHnymnlz/3+5VSVADj4hR324wKE1QMbo2zCc3A=
X-Provags-ID: V03:K1:BEo4ZKdt4hmm1vONBZWHO3vsfFuOGcG+/MXyr0ISUIPdVe1nX5u
 fyeRTp4kZH+hcPYmDjC7Na/o25+NOXeEcNVA9T8HUYZSO3EcwssVuo/WLtG6mAIrbE6Va8J
 5M5IJgt4VvpiU71WOTd0dctTttGcNrHd9RGUrDvd3JsUbf8wMyes+X+MnWc9v6bsNkZSq+C
 ZsxR15gStKFmypzSQOYOg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jTQG8h3uwIA=:7d23qeGVNQiyrtNS4HEkdQ
 gbuP+bUKiHQXUvJ0B0gCqcjJiHHt46qSYScTgelex0Nnye1snhqy1W054BfMbcQJTUiEQ7dTs
 De1R/2bDOr4W7341E46P237dCqyX8ur+6KpCxZH0qyP0u5FabAq68dx0ahq6j5/kyjav7jz0A
 Aznd++Uep40YV/3M/MWoEr0OCrN0I3VT08VrrZycPudh1cTGA3ULB5Xo9AfnWCJbqQlzm2IA0
 eOliiPQIkgJldmLlbtRkiIJ9CnX0dKmDa2X7GZDZZE/Z1HeWDCiofDlVjXnBKGVoY6BLU8VVp
 7/iovH0G3IKDAExqlnubaQV6vCISd/+8Lvsi12254EOl3ONnyt856f4PrcxlVBoV2zsAvk4Li
 pYObWWP0RKeZeZcmY6fmih0bU4Gwm5cfLjPHVx8U9djr2HBUk60m8b7WzcHy7MMiDSwxIATU2
 SpeU9cRCqxIIwQAGPWQdN8l/tNICrxmoHGTL/ikExEOX4aMUgmfCRI0l4FOpYLaPO3eUfzDFJ
 qeqtWQj/5bBITwHc9BH+eY61nwV3cEhNtIiMfWQhDKaJGT6I9KO8GTtbvTxgM4rNxE/D+ph2j
 7YJexuxdbhiZZC2/Y7EtOeabsP10MnlTR5nhWvSeCuXXjbqgxZzwXiuDv+qBRe2R1DKQWtOL+
 ku+R7tgB2fVu/dh2MXegyY9HgNVkvfjA2wfPsYbxDa0XCP24VaKBHCLrG6sqZz3TEhEyPsnW4
 sgOa/jfj1AKMaExLUghKkjuS8TUxWFiuSlYktj/tN+DjE8ROmobkNLbEgsg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_072339_598616_4F812547 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 3/5] ath79: add support for Netgear
 WNR2000 v3
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
Content-Type: multipart/mixed; boundary="===============3195650786226992853=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3195650786226992853==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=2CLXr2xhb9aqye=-="

This is a multipart message in MIME format.

--=-=2CLXr2xhb9aqye=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Michal Cieslakiewicz
> Sent: Dienstag, 6. August 2019 16:04
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH v2 3/5] ath79: add support for Netgear WN=
R2000 v3
>=20
> This patch adds ath79 support for Netgear WNR2000v3.
> Router was previously supported by ar71xx target only.
> Note: this is a 4_32 device with limited upgrade capabilities.
>=20

...

>=20
> diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/l=
inux/ath79/base-files/etc/board.d/01_leds
> index 29c32ada72..f083ab9ea2 100755
> --- a/target/linux/ath79/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
> @@ -93,6 +93,19 @@ glinet,gl-ar300m-lite)
>  glinet,gl-x750)
>  	ucidef_set_led_netdev "wan" "WAN" "$boardname:green:wan" "eth1"
>  	;;
> +netgear,wnr2000-v3)
> +	ucidef_set_led_netdev "wan-amber" "WAN (amber)" "netgear:amber:wan" "et=
h0"
> +	ucidef_set_led_default "wan-green" "WAN (green)" "netgear:green:wan" "0"
> +	ucidef_set_led_wlan "wlan" "WLAN" "netgear:blue:wlan" "phy0tpt"

Don't think you need this if trigger is defined in DTS?

...

> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	mtd-mac-address =3D <&art 0x00>;

Maybe just use 0x0 here instead of 0x00, also for subsequent cases ...

...

> +
> +define Device/netgear_wnr2000-v3
> +  ATH_SOC :=3D ar7241
> +  DEVICE_VENDOR :=3D Netgear

Device_vendor is inherited from netgear_ath79, remove it here.

> +  DEVICE_MODEL :=3D WNR2000
> +  DEVICE_VARIANT :=3D v3
> +  DEVICE_DTS :=3D ar7241_netgear_wnr2000-v3

DEVICE_DTS can be removed, it is calculated automatically.

> +  NETGEAR_KERNEL_MAGIC :=3D 0x32303033
> +  NETGEAR_BOARD_ID :=3D WNR2000V3
> +  NETGEAR_HW_ID :=3D 29763551+04+32
> +  IMAGE_SIZE :=3D 3712k
> +  IMAGE/default :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | netgear-sq=
uashfs | append-rootfs | pad-rootfs
> +  IMAGES +=3D factory-NA.img
> +  IMAGE/factory-NA.img :=3D $$(IMAGE/default) | netgear-dni NA | check-s=
ize $$$$(IMAGE_SIZE)
> +  SUPPORTED_DEVICES +=3D wnr2000-v3
> +  $(Device/netgear_ath79)
> +endef
> +TARGET_DEVICES +=3D netgear_wnr2000-v3

You may also adjust the subsequent device support PRs accordingly.

Best

Adrian


--=-=2CLXr2xhb9aqye=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1JjWAACgkQoNyKO7qx
AnBAqBAAuCX/UcyAKZcSiqEuvazm/wBisWaSl/aHtGpCFchmBjqbwFjaDI/SBgey
hS0TAGBYGfyt8r2qsaxL6oqZ6JOD6aSJ8ZYpllnzqc0ewmuyc9esEjUk2XekTMxA
KarjP6MfZSGhSweHN7TSnF5IsCUYS5/5h+kSuyZyB1K2IBi84j1I2hxBmU4Fai5/
8DdABUKEyZQOm3uj0mCv7iCC4L8h28yzqEb42k4f005Il6Aefv02X2StfffBKIly
UxHXzPam+V1s+961jnVpmhGqSyGFUy/QanJc5NIhLr+aEB3DBvlu4Vxkq7dTD2U/
D7N2JLyZRDWzylHV9hZ5FmfQ4qf9zcbpfRJeaybdbYc1/uE/7kSFh9U2pH4p0sV2
/3W3DipAAaPJRLdpnV6WPaaLXBKEFDpKqohSOCTXLcQD0WVtkEmIdLkhfN2Ca2RO
JKQTWFydUkusdmpf5qdDec3RPKx68Uv5tJdDnJ9VEgf62EQCR7+3niK+jhPZnTDF
EZ5jc+21mHu8nTi101UzESZ0OQLSA2MgnHdVpb35vhF4AuKac4LXzq5S7SAX9LIT
H0TO+QGY5Dh3vXOdjcGqN8N0jQzP5wdpO/30YtjpoBjr6BQAh7B5aoggFEwjnkvS
JXPaIyFd60ftznF/OOq3kIioxEtN5wuAlGWpALSXEjcg0Rx9gmc=
=p58V
-----END PGP SIGNATURE-----


--=-=2CLXr2xhb9aqye=-=--



--===============3195650786226992853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3195650786226992853==--


