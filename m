Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509C11A2A1B
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 22:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i87JCAguIbi2llkjo7UUg7OJqjzUsPRhkDqSG+l8Lio=; b=KMTHJI21hBBnAloJOI6LJU/Qi
	x9qp0IL5sQwV5IW1WQZJN/fvOcGlyFb5ZG6nv96It+CTOac6pJQS1+1KnluU6KbF0950gOMaUxvJ5
	iaDTbCYwmk2wD+3FsUudCHj/2dgD2as4OeBLI5FPpxnhDMkeIE173LKWWRFdFC00i669jHMw7WREr
	/qfiJDUoixqcheLUOkgkIE8EhLuZVu6UCyHYIOd242rcYnkcaRcIxuK3kczZgPlc2j0vlwgVFBYNE
	vuwz4wDZ4i20MuRHFbITeTw2BwGgTB40H+pfRD0/qZLXY4AvNA8xsWg1AapxJubBW8ZgCbvtvRG80
	JMABs13cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMH4h-0005zr-PA; Wed, 08 Apr 2020 20:13:27 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMH4Z-0005yf-Un
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 20:13:22 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MEmtx-1jWxW53pQx-00GIZx; Wed, 08 Apr 2020 22:13:14 +0200
From: <mail@adrianschmutzler.de>
To: "'Alexey Dobrovolsky'" <dobrovolskiy.alexey@gmail.com>
References: <01de01d60d0e$f02f8e40$d08eaac0$@adrianschmutzler.de>
 <20200408184336.1428-1-dobrovolskiy.alexey@gmail.com>
In-Reply-To: <20200408184336.1428-1-dobrovolskiy.alexey@gmail.com>
Date: Wed, 8 Apr 2020 22:13:14 +0200
Message-ID: <001001d60de2$22aad7c0$68008740$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJD9buLsDgM4FM5KZZsg0J4Btjk8QLU4PB3p30xHCA=
X-Provags-ID: V03:K1:31FTr9UK0Q96aeEN8eBG56BREKx3JR6KplxwMNWBCLZ840wpTBG
 xLeM7YLt7sJG3Ehy1R7v2ABhYTASXZhDT42hZ9FH4x/7oON/zTDJKn8aBSPNWpJ5OiMSJvI
 Q4EKdU3eSoFDAibKZ2ydR01gVzh7DgCfJrzG9VcnbEyEU+R8zFIM2SiQnPmrzXSSUE8rUHx
 z+QUjXn3h6mdCC17H5pww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Taf6F7uRug4=:oJXJgv12KkohmQEmz6Atm9
 0SPKiGGF7pXEc2njl5/QMWRByAhug2nRO/In+O22cIOlinVurKg/8VsGyqDAG8+mYf9ZGrtw2
 w/l81GPwOF35VhP1I3wxyqGFhkPDHkDYwOgUxl77FSVb41abaXkLoSrjdZrK/M9/LdIZnh12g
 sQEnk/1YRbfscl8du+XcOwVoWbUp3THR4gkKR/lN7JBIyCYSTXrSVZy3rcNzfwOFEQweB4C10
 agb9Yd1A2rTpmBKJVzDD2lPyifNyBRKJZ70vs22YxinptgZ/xo0Mf3kCkzxAlnjQsHTAo9X6R
 B0SbFeD/ofvQlf2hf2m/qfvfWNZ5UjvotjRJ8Y4ONlzdVbRw5567VWlnkuIS4YWI9N8sEGPQD
 WzXoqDdA8VVZ/CuQKpZJUS3c8eA9F2KiNdg5Bw6MMBOP69RpexnMOi/Z7+YjPrzuNi15zycNe
 R/bTsbj6EHT+QCDKqDv2ScFYF7LihOSIGxGfEIOoYrgKePsh97hZSVKz2f+Rx9+8/2Qo43orx
 zqjJJLdd7ob7mXQgL36Rje7niex5MbZywhmv4OTMmoT584NcRAFPRId03eoqj/wOiL8QSGr6l
 +Q+MO5CB8Qw/KXniCt0DThehirzTIQAKcQrAl9akFO8Ui1jYhKwnOoo/DyBEX4a5vnAfYnuPH
 aBZAzFo06MsgZJ8mJpyrHayPRvFEloJS5jpNCNCAJSRcmsnZNPa6TlRA4wDpz0T0PXDy5NiFM
 ziyZpqNKtMa6+hkbadNb7LiPBOcARHz02tkCMRuQc1+yzy4bF/DaNAHL2ehW1SbZFUSnOWED2
 bwpGwJQJVW5O0FuCsxsbLyCHz6e247EBWOf4xHy3rgnCBaVj8lGgaaROitB2swwnsM/mzxV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_131320_286013_94810002 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: use full 8MB flash on ZyXEL
 Keenetic
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
Content-Type: multipart/mixed; boundary="===============2422642858261547895=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2422642858261547895==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=dUL8W1F7TNJKcb=-="

This is a multipart message in MIME format.

--=-=dUL8W1F7TNJKcb=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Alexey Dobrovolsky
> Sent: Mittwoch, 8. April 2020 20:44
> To: mail@adrianschmutzler.de
> Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>; openwrt-
> devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: use full 8MB flash on ZyXEL
> Keenetic

Thanks.

I've applied the patch and queued it for backporting here:
https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/staging-19.07

Since this image was disabled to do insufficient flash space before, I will=
 have it enabled again and
it should be built for next point release in 19.07.

I will backport to 18.06 as well.

Best

Adrian

>=20
> ZyXEL Keenetic has 8MB flash, but OpenWrt uses only 4MB.
> This commit fixes the problem.
>=20
> Fixes: FS#2487
> Fixes: a7cbf59e0e04 ("ramips: add new device ZyXEL Keenetic as kn")
>=20
> WikiDevi page [1] says that ZyXEL Keenetic has FLA1: 8 MiB, there is an a=
rticle
> with specs [2] (in Russian).
>=20
> [1] https://wikidevi.wi-cat.ru/ZyXEL_Keenetic
> [2] https://3dnews.ru/608774/page-2.html
>=20
> Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
> ---
>  target/linux/ramips/dts/rt3052_zyxel_keenetic.dts | 2 +-
>  target/linux/ramips/image/rt305x.mk               | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> index ad641f47e4..436743cff3 100644
> --- a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> +++ b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> @@ -48,7 +48,7 @@
>  			partition@50000 {
>  				compatible =3D "denx,uimage";
>  				label =3D "firmware";
> -				reg =3D <0x50000 0x3b0000>;
> +				reg =3D <0x50000 0x7b0000>;
>  			};
>  		};
>  	};
> diff --git a/target/linux/ramips/image/rt305x.mk
> b/target/linux/ramips/image/rt305x.mk
> index 33f94edf3f..313c3fa315 100644
> --- a/target/linux/ramips/image/rt305x.mk
> +++ b/target/linux/ramips/image/rt305x.mk
> @@ -1149,7 +1149,7 @@ TARGET_DEVICES +=3D zorlik_zl5900v2  define
> Device/zyxel_keenetic
>    SOC :=3D rt3052
>    BLOCKSIZE :=3D 64k
> -  IMAGE_SIZE :=3D 3776k
> +  IMAGE_SIZE :=3D 7872k
>    DEVICE_VENDOR :=3D ZyXEL
>    DEVICE_MODEL :=3D Keenetic
>    DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-
> usbport
> --
> 2.17.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=dUL8W1F7TNJKcb=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6OMFYACgkQoNyKO7qx
AnC2Xg//fNjBHCkMUWkFVkNVtPo4sG09AO5XvKL/s7bNZdTKRXmkoDn07l6aIt1E
KjDH3qhwxtellEQNA1pdm9VpLSeRMbcdVT7p3/xWvV3TkMwJlFDEgbhmWkBw4ZNm
rWs66QB/0k2HlLVsQAAO2kgiIkEIetErj2R6XvxvpXfMixmbIqSYv8H1u5Na5+MH
34ejr8Y6pbrKXE4E+ur4lC57hfWbVw4oizVzE722fY/MJJX7XcAVw8iw13WDYPXN
3ExnubOV2ZwyVp0frL4ZgyTiq04j+f9Bk3yr1zRgjGoETIbDdj3WEemtMLaGMLZI
acjR9Ri+lDlkuqKxLsy9OT9iB3usPO3cENiaIuYJHgCk8uIuWEs01x5JXL8N8NWR
Bg/nOEHNOQvaaruLZX1ZQ+bKiI7Upv0sqZtv7kWd0ZAgHs8kOXwQQOK/Hbqdci5h
hPQqq1MHdggApnHAoirAnehGARNm+1pnJ9UixPYooNfQ/eaHfqKt7OHWWgr2YuzA
RAxG7to7fwMGU3v4nAWvsKJisUnHWhsKUqtMAhxou/QgSkznKDJfldWV7jl+2ylt
ytJlcwOI/RsiNIwjHQSRjJQ5Nsv45yZqH1m1OR6It3Q8hyWhJf2wNO183Aun5+8p
Dd/SyGsKucOUHjJeO7E+O+kJz8DAnTMAhU5qlbIEzgA76wehKH8=
=dVY7
-----END PGP SIGNATURE-----


--=-=dUL8W1F7TNJKcb=-=--



--===============2422642858261547895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2422642858261547895==--


