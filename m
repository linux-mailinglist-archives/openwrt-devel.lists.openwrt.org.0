Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F40E1D685B
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 16:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9oiFAvZTjm43meROzeRtIJ5xAQlK7RE4rm+A10warg0=; b=MQ3oLOB2a+YA68u3AFgvx1cnn
	N0b4pTLVckadkwqgxR9hKUzTbnRuGz9C4OaIo/WISSj5obbyzBjCYWKQik/IeqF89XuEQTYHRBbjH
	4RRFEL9qDvuQFOjyeh6CsbNrnlLV2EmyE+N7zwTIXIUWaU7RjcL7GxLhEDtH3fBoLhaZ/Yd5eLN5a
	CU+BYsdu5AyhdFsRxsQf4GdbPYlobvmJvLwuGYblP8CY03fJqEylxSvIvxGvWKvI5iB8UgOu3obSf
	3cvK/8bAMi2LBw4JaUe5Crw84yDTdxmD/UGlBKM6tiHXz/fN5BdvquqLg9O0B2S4zGlS8fAe/KSXp
	9z12DKPVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaJwu-0006ww-IP; Sun, 17 May 2020 14:07:28 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaJwk-0006vU-AB
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 14:07:19 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MDhpf-1jkWhB020V-00AobZ; Sun, 17 May 2020 16:07:14 +0200
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200514140252.42880-1-freifunk@adrianschmutzler.de>
 <20200514140252.42880-2-freifunk@adrianschmutzler.de>
 <e91cb9f9-748f-36bb-315c-936ae78d6ed6@gmail.com>
In-Reply-To: <e91cb9f9-748f-36bb-315c-936ae78d6ed6@gmail.com>
Date: Sun, 17 May 2020 16:07:13 +0200
Message-ID: <00a501d62c54$770ffda0$652ff8e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKbLyN7oxH8s7HKvjJ9itbqgeoTTwGpJBCvAoq296+nAKuHsA==
Content-Language: de
X-Provags-ID: V03:K1:R5CsEQCkJAcWITIfuyMscrAXEdJ82OsFF3I0nZ64uEnNCCbb+11
 j7uyGK2dnTSLqX9kRlYkCqmG3/7AkJzSbc4sJ4J2Z2sxNwidXM1ObVEufYJ3Nr8p2vATBQJ
 9k2gXBSKJXeLvOEoYpaVDgcakjb1u6JM06ahjcaiCmbG7JsGu2S+yHRfsFUGt6vTJi1WxwU
 nuUs+mdt/4+ti6PW6EhlQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fk03HChcJ3k=:KfSZnar86J5RkcWM62+MRn
 r3Y/QKgUvSAbulQ3roxUq7MidfY0M+ftwGViEWwhr531RG4CyeYHQzVzU0sayA1s/dcJcjqjT
 0agcQsytDv4Lk4riNwl/cCAr6jwVhN8MJN+Lj9knt2m065c+OQe9fAUzmP+k5lAEpE+uPJROE
 7wM/HDJ8OJIAsg+ffDh6Zs1JeJaGg1qbN4wYqaNpCzHJapJuC9poHORW5yqa5IGRKz3lOxI5I
 kYeOVvxbA4zVi014gJ0RnnWqNxwBP0XmKE7Nyss7sI70GP+bxAYvGX5F6H9dDYuWyChVZtLwc
 0UDf/4NIOUO9lzaSqzLIMRhxMZrf35jH1+GJJIQcnHogOh/g7X3QsGt84nwr/q43Uh+JOgpFs
 lY+mQWE8h0ZQUoE6lu1SM+qJ6e5MP6DB0xHjliZ8ARRHlsQuLSfDQ7bfES2hgkjGm0R39zqZW
 9Ah/P4EYDIJcEXl+C1k/4DIona5LnGPUWNaJ/BG/hDiEYr263esS42NOp3Vl+gd0sCNdLro8p
 2jKyuWJOsxS0NHVdlssTazNQAebxmGzHM32zMuN3UFXfEhd1KcNLyG3qTY/jdzjVUs5ynO14I
 2ULHgXaBQD69vDJhBrFb7hl876C3PAvE2S0DxtPld0kgV2r/qy+39wTVt6fABk2vuCWfVuaAg
 fvPptRn5ynxa66fue8hI8WNmvxt3doEtgrDv0hixnXcKGJUV+mfHgHHCLQXQSavvYJRHMVJDx
 q2H24DM+a/Gbb6wRFwGoRtKrLdGlMSPY0KKXy4vP9vorhpsAgi/88LQ/pFRMo8Mu/TghPspjW
 1qRIM8kMIMfihX/VN6eAzCd9uHEXSe/bCnZpFDnF8duLSbzqjnoxxnAkFq4Sya2P2YIT/z+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_070718_659593_B4B7AF34 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: drop non-existant ralink,
 port-map for Ravpower WD03
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
Content-Type: multipart/mixed; boundary="===============9064688261161248099=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9064688261161248099==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=filiMb0Hl4qGJp=-="

This is a multipart message in MIME format.

--=-=filiMb0Hl4qGJp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

> -----Original Message-----
> From: Piotr Dymacz [mailto:pepe2k@gmail.com]
> Sent: Sonntag, 17. Mai 2020 16:04
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: drop non-existant ralink,
> port-map for Ravpower WD03
>=20
> Hi Adrian,
>=20
> On 14.05.2020 16:02, Adrian Schmutzler wrote:
> > The property "ralink,port-map" never existed, and the device is a
> > one-port anyway. Just remove it.
>=20
> Never? Did you check d57223259b?

Interesting. Obviously I missed that. I will do some additional research an=
d adjust the commit message.

Thanks.

>=20
> --
> Cheers,
> Piotr
>=20
> >
> > Fixes: 5ef79af4f80f ("ramips: add support for Ravpower WD03")
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >   target/linux/ramips/dts/mt7620n_ravpower_wd03.dts | 1 -
> >   1 file changed, 1 deletion(-)
> >
> > diff --git a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> > b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> > index 6d734bb836..f67f186be1 100644
> > --- a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> > +++ b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> > @@ -100,7 +100,6 @@
> >
> >   &ethernet {
> >   	mtd-mac-address =3D <&factory 0x4000>;
> > -	ralink,port-map =3D "wllll";
> >   };
> >
> >   &wmac {
> >

--=-=filiMb0Hl4qGJp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7BRQoACgkQoNyKO7qx
AnDLHQ//ab+Ns9sNarcZZ3EM3cGHYm3n5C7j45pIYglzClg31coXgor/sMypw8iT
Pj6I/jXwnrY8qYmMd7QSze9qd5LSQFgonAQ7T+UXBmBUxG0yIBHc1Vfacd9v7TWz
Os0WOMMcb3eLAtWon/DVxY7pUEm/EnK6NPjGjaUyOFKPoRqNTse+jbKccBa0Hn7+
ARq/47tXbw8ax8+JkZsXEQhYc45aS+X8Ww2pN5nsnCuTN4IgLGpG+qTiejl/OwdZ
iwbeLsedBJ34AF1XWZSUjaSIx/3/Fio1Tolo+ko4KdWenQbn3BiBToYY8dxdz9Sg
HG8gebEf9ZI1mrnoE/iT44tFXZmyS6mOKCq23D3kL3XbiZjgFQknW/PJ73FFeRM/
LUgT0VoKS8U9lNKAopUzwuu13vuKU90LAbiDoVzBXax8VpYoSGtcPqwCeNshE7KG
irWvaGvSyRYgvYG0l6/1rm9Bz3mW/o0y1DsqAb96K2uwJy27EOFoeuLbmNibaf9d
T+/G+LENGuDjlwF3Jr7jeUQxE4qXGITM+sXbYqmvh+cRyLOqi8mCmJDOkcW/8psg
L0sOLR99RBeenT6HcDnngvnZIVXRL1NgwAynj7Z6a8UzrEiUa9kxwypgaBFbOHEB
GU28EE2raVt0DliLqFQ47f5+Pszutl7q/WqtRI9TkQ/lF4wX4N8=
=rT1H
-----END PGP SIGNATURE-----


--=-=filiMb0Hl4qGJp=-=--



--===============9064688261161248099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9064688261161248099==--


