Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE251DEF07
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 20:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vWebLkICJAyL2z5rTHrZKGpZd2psVdf5OYg/Q8ki4wM=; b=aGdh3LFWKWdUF328iIOQAiDsr
	Xjlc8Zkwks+LlgSNbJRz/YgVdD78nff1aTV3NixMB7Og7qKu+ZRz2tmfWeE+IKo/Wb5XZhJ3Z4uAA
	w57UFtPuTxgOtCidzp2XeY5FT7p8B4M5wDGHgJ8ZiCGmvhNHvxetheAbgTIfMlc1U6szs1REsnQM5
	HOZygT+lHJiu/rEsejNAcvW3ntxUHWvZfhwmi+T8gtD/l21B8MpVT21E0RjKo0iyFZhxgl4Aap5UJ
	6QgIfgzwD762a5F8LrG4CZHzwS9lhlgUWRyAyh/Gm5BgKSomQOAbW9WPHJp75Jy+WSGCG2k+UgqBa
	wHUZGrY2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcCEd-0000z2-7p; Fri, 22 May 2020 18:17:31 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcCEW-0000yY-KB
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 18:17:26 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MEVJq-1jnlk23s66-00FzCQ; Fri, 22 May 2020 20:17:20 +0200
From: <mail@adrianschmutzler.de>
To: "'Stijn Segers'" <foss@volatilesystems.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200522174111.3539-1-foss@volatilesystems.org>
 <20200522174815.3723-1-foss@volatilesystems.org>
In-Reply-To: <20200522174815.3723-1-foss@volatilesystems.org>
Date: Fri, 22 May 2020 20:17:20 +0200
Message-ID: <018c01d63065$3befa6c0$b3cef440$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQEpu9ifRxaQMHGvDapCrx6RfifcQwKEsrrAqfko2yA=
X-Provags-ID: V03:K1:8aT3khDFY1LQOKi5hxICHzkV9L2Z8C3zJXf7RBsGSfCqVWS+//i
 MWVI8DihyihoSf1ZJ5kLmIeH3SJ/a2UStvgzipsAXKPMT5siXEe1J+5cgFhFoJeNUHtzTcd
 uUWOPYZ0CjYgnuTBr1UTlqsRBsBBj8hAnSt8J1fvHNXSzzhGpF2K83cQmE8wIfYKMmYPkLI
 WRJeECCGIjA7JiS+Ia89A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Xnm5juRr5JQ=:S26b43qOX+aDNZh6HpH2GG
 U3siH8/zGgFDOAFfMwupozb/K5RqRLwrD/d05Kuc11bP/tRgs4HqojpdfdWeizacJtFHS4XVq
 uc/2Ou2PqMP6wFrB6lbl/O6wMk0U4/E9KSTJOpD3ILF9eTdUFPouWwFLrJ5F1ZlVIAp0/C4RW
 2SrBluYmGuLF54qcHJw7IEBghjw3RVFXoZb8Xl9weaBrsOYZALhNmV9xrqa+/xJqmaepuEln7
 vdVAIPEWVK6R2949uAvW62vnFZywxqRAwp0wFaM6T53ygGSYNRRg7LCmJK0xIYVi5QK+KVTED
 xPo7/Twj1JuWWrko4Tz1hEjiCiUclagb/0uJTaSa5WxDK9spxQJdA2ch1XQQlY63kVRXHsbLj
 cugVeePJe48SYLaaHqgv7Q1ErYawIeS8LeiqKjtpoyxW80iTdN0Y+rfX2oI4OJn0GFFBxPwu6
 Zt/wj4m/EO+K4A+LrpatOEMrOr9x6PMsVs5Qcu9c2yvcQO83WfZjp06P0shZFOPlN3juZ8lOw
 X3gpQipCmP1UHFpL17RDyxgYY0vodu5eUnUS0d0qk5pyCwvk6iTTv7BHzsWXLdRTsxgWH4fZN
 eMsn8kxgkDKsvzB3V058/6ZIKfF6miawYUdsnlLqrZ+Ee6wV29OPNHUd84Ssh1anc0rGPiQgl
 h8hw9Vr4ELYccyYhVpK7sYkT+0eYnNmCQ950roQtdUczDZQP6UMHkXKbP4I6RS3MSlL2y4LZt
 LMa/cLiJPgSlwewOQUIyncNsM7XUzZ0jXpJ74iTwJAB2ur4B6WnCIzOHIwpKNmsYX947SAOc0
 RSOIwSijBKFZRI9CA2J98BPAMsYNgqSqTbuHnHcYowQT1ogZxUdqvqCMAbJ4rJFiOuBOVgo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_111724_953355_D5337FF8 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79/nand: add support for Netgear
 WNDR4300 SW
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
Content-Type: multipart/mixed; boundary="===============1057101228938564372=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1057101228938564372==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=r434tV6gcO6fh8=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=r434tV6gcO6fh8=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

this starts with some nitpicks, and becomes more important closer to the en=
d:

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Stijn Segers
> Sent: Freitag, 22. Mai 2020 19:48
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v2] ath79/nand: add support for Netgear
> WNDR4300 SW
>=20
> The Netgear WNDR4300 SW is identical to the regular WNDR4300 and only
> differs by its BOARD_ID.

Personally, I like to have the Specifications and Flashing instructions for=
 each device support patch, even if it's just a stupid clone (which in turn=
 should make it easy to get the relevant information from the clone).

>=20
> Resulting image has been confirmed working [1].
>=20
> Because of the minor difference with the regular model I am unsure about
> the approach, so please let me know if this overdoes it (and what I should
> change).

This sentence should not go into the commit description itself (as it would=
 end up in the repo if the patch was just merged), but could be added after=
 a line containing just "---". Everything after that would be cut off if so=
mebody takes the patch from patchwork.

For example, have a look at how this is done in my patch here: https://patc=
hwork.ozlabs.org/project/openwrt/patch/20200326155654.48317-1-freifunk@adri=
anschmutzler.de/

(Sorry if I tell you something you already know :-) ).

>=20
>=20
> [1] https://forum.openwrt.org/t/porting-wndr4300-to-ath79/16006/57
>=20
> Signed-off-by: Stijn Segers <foss@volatilesystems.org>
> ---
>  target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts |  9 +++++++++
>  target/linux/ath79/image/nand.mk                     | 12 ++++++++++++
>  .../linux/ath79/nand/base-files/etc/board.d/01_leds  |  1 +
>  .../ath79/nand/base-files/etc/board.d/02_network     |  1 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom           |  1 +
>  5 files changed, 24 insertions(+)
>  create mode 100644
> target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
>=20
> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
> b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
> new file mode 100644
> index 0000000000..fb90eee550
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr4300sw.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include "ar9344_netgear_wndr.dtsi"
> +
> +/ {
> +	compatible =3D "netgear,wndr4300sw", "qca,ar9344";
> +	model =3D "Netgear WNDR4300SW";
> +};
> diff --git a/target/linux/ath79/image/nand.mk
> b/target/linux/ath79/image/nand.mk
> index 3ccd19914f..9814815ff1 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -172,6 +172,18 @@ define Device/netgear_wndr4300  endef
> TARGET_DEVICES +=3D netgear_wndr4300
>=20
> +define Device/netgear_wndr4300sw
> +  SOC :=3D ar9344
> +  DEVICE_MODEL :=3D WNDR4300
> +  DEVICE_VARIANT :=3D SW

If you use DEVICE_VARIANT here, this implies a space between WNDR4300 and S=
W: "WNDR4300 SW"
For consistency, this would then require a hyphen in definition and compati=
ble, DTS name etc.: netgear_wndr4300-sw

A simpler alternative would be to "decide" SW is not a variant, but part of=
 the device model name. Then you would just use
DEVICE_MODEL :=3D WNDR4300SW
without DEVICE_VARIANT.

Based on googling, I could not find out what's the "true name" here.

> +  NETGEAR_KERNEL_MAGIC :=3D 0x33373033
> +  NETGEAR_BOARD_ID :=3D WNDR4300SW
> +  NETGEAR_HW_ID :=3D 29763948+0+128+128+2x2+3x3
> +  $(Device/netgear_ath79_nand)
> +endef
> +TARGET_DEVICES +=3D netgear_wndr4300sw
> +
> +

Only one empty line please.

>  define Device/netgear_wndr4300-v2
>    SOC :=3D qca9563
>    DEVICE_MODEL :=3D WNDR4300
> diff --git a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> index d9989ec538..4f601849fc 100755
> --- a/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/nand/base-files/etc/board.d/01_leds
> @@ -14,6 +14,7 @@ glinet,gl-ar300m-nor)
>  	;;
>  netgear,wndr3700-v4|\
>  netgear,wndr4300|\
> +netgear,wndr4300sw|\
>  netgear,wndr4300-v2|\
>  netgear,wndr4500-v3)
>  	ucidef_set_led_switch "wan-amber" "WAN (amber)"
> "netgear:amber:wan" "switch0" "0x20"
> diff --git a/target/linux/ath79/nand/base-files/etc/board.d/02_network
> b/target/linux/ath79/nand/base-files/etc/board.d/02_network
> index b2191eed92..42be72af53 100755
> --- a/target/linux/ath79/nand/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/nand/base-files/etc/board.d/02_network
> @@ -44,6 +44,7 @@ ath79_setup_macs()
>  	case "$board" in
>  	netgear,wndr3700-v4|\
>  	netgear,wndr4300|\
> +	netgear,wndr4300sw|\
>  	netgear,wndr4300-v2|\
>  	netgear,wndr4500-v3)
>  		wan_mac=3D$(mtd_get_mac_binary caldata 0x6) diff --git
> a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-
> ath9k-eeprom
> index f5fae46dfb..f89fc83ddf 100644
> --- a/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom
> +++ b/target/linux/ath79/nand/base-files/etc/hotplug.d/firmware/10-ath9k
> +++ -eeprom
> @@ -24,6 +24,7 @@ case "$FIRMWARE" in
>  	case $board in
>  	netgear,wndr3700-v4|\
>  	netgear,wndr4300|\
> +	netgear,wndr4300sw|\

Both 02_network and 10-ath9k-eeprom have two entries for wndr4300, but you =
add only one for the sw variant.

Consequently, an image built from this patch should have wrong wan_mac and =
lack calibration data for one WiFi.

Fixing everything noted above should be easy, but you should improve your t=
est protocols, as the missing caldata shouldn't have slipped through :-)

Best

Adrian

>  	netgear,wndr4300-v2|\
>  	netgear,wndr4500-v3)
>  		caldata_extract "caldata" 0x5000 0x440
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=r434tV6gcO6fh8=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7IFy0ACgkQoNyKO7qx
AnDA7hAAws6qr0CZLYNUEQ/azJMgzQuNPhICasXJB3eqAXJizw5SV1bBaB3gxuHx
o9wBQJTT8BJVDEJLoR+AoAmt1FqZiz05ze61apuX5u+tzE+n3GquPR3lm9y4eFMp
MUlIrm2z27Xg5DlRVeNLQLG3JjSW91Pq3eqAzkBU4gsJBFrY6m43LZDryNGIj1o1
gsxZH0/F/ZDkXjkzhiKWz88lpB4M4TNqwPknxN5yxa1ULySlqwdm+88+QsfLqh0f
kHsOeyY7/TeJLWhMcEcYsln1qTLcHMVbEdQBVSMWHCxdzcgbqgAu6kFlYpVZMwXp
/ExeaS70O6bEGVTGRhjmNtHJGhInN8MDI+A2UtHQoawd6jtT7jncI1LpnHm2giy2
ce5dwm1yxTIQ8R3JkFwiY2dCTNztuQi2TrZMHk1hVsJCdOWHmvA9N/x/GSxQYfLl
fnkRRJINXZnUc6nKdn8Wj8SoZau4uCtrts7ovNKONWpAY0qo2s4ZteDYSPNmCGJI
CEnWlZFmILIkZZdnaHZiVANLPy98H0+NGY6xCVuiI/Kuxcm533VIxDXwcI1Hx9oq
QxZbfT82D6B8hP9WbL9EURc0he4JJpTejMJQP4Vf4QaT6nOsZfJv0HyUsyQOITda
d7po0NyQ1UJnkAWbIgkoueob18IGYrwsaK/czGafZ6Mg1zbw9jw=
=+U/n
-----END PGP SIGNATURE-----


--=-=r434tV6gcO6fh8=-=--



--===============1057101228938564372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1057101228938564372==--


