Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF6614311B
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 18:52:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zLGU6ELkhG5cCL2gG/x1D4RW0TLWAI97G23dwOJDORc=; b=bKEBWvUtkWwXFskjGihbVxCgP
	t3xJm5rZvNgZ+o/MO3yZkh2aD3LKq6FtZMFZNuY0OImjz0ngqDa2YC6GtH9OnUaDSyyrxefXvToZC
	tSBdPr97u/oTezKvegCDKfksaoDRadr5IuhtDe0gDF+WKo5yCLrMx73UTFJskrIW77n2fcJ7ud1Mh
	lXaMHgJTyBP/kTALRoLpP+RStX87NpJoWcwug4ZPTBewzgQtwSCR/PhNm2cT1Bd3moyoFc5Ujbtt/
	FcoBbhdMZeYJ3jQyocKG1JxOUbnOFPLq/qi5zP8jb7yGeDgZxU0+CWK5erd2+bcc1kvdgzX1WKyjq
	6AK3imhCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itbE9-00011A-F8; Mon, 20 Jan 2020 17:52:41 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itbE1-00010r-D0
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 17:52:35 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MRTAj-1jEB0T2I4b-00NPKf; Mon, 20
 Jan 2020 18:52:28 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20191222215052.6901e39f@kosmio.komorska>
 <20191222215253.1538b661@kosmio.komorska>
In-Reply-To: <20191222215253.1538b661@kosmio.komorska>
Date: Mon, 20 Jan 2020 18:52:28 +0100
Message-ID: <02a001d5cfba$61977440$24c65cc0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQGUYQOCxx2RgMJEAVBz7rQLS8E9wALTF2gQqGAZuRA=
X-Provags-ID: V03:K1:PAqTztO/oWE1uMpnNJBzmA779GOxJz9l3VhfOn9eHG6Nd7O1UCR
 GGYHX5K+hGf6s+WMRJxughQ0LHwJLdfX7d5pyLVj+T0KsX5Kc/BOH1cd9PMfp98DT+gHTnQ
 XmeITSWhGCkYmXyrk6sue+4Voy9LYvZk10oTh0rfh/GcJRBkeH/QYdahriMmLai7xjb+M+j
 GmgKpspCujFkU06BuDpGw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:D7Tm22U9cZ0=:71JY7Lk/oobUv78uj8uh8b
 iJM7YQOr3/+MWEeHz4NiIx1LW1Ha4mWPq0p5lJAVLVihDHTRHH0t0ddqAxpy0zOT34TtvZqAX
 I0uzIvdIQ4HRVk3Y60x3JjLghV1lVqc/bFsq3GmOH+Bn04hZDEL+fWBGGdGZduITTBzD7kQeJ
 VtGWQXfJR30ngNQxMIXZwWWQrZJ9f2Xrrpszzjf/KlQ69FAeZX+K2hvjAUctp0+SBEzp/hlah
 TZ4OxAPEkWo7o5ojAVjIycToJTNdTYGCS7E35SKQAmShZkGs8v+15D9AsqpPz9pE9M1ilmL80
 M9/Ksl4orcti9H38FhhO1qe2cFJDIOr5ewLn1gVypPikJsmpyeqA2he+tQEdZafFqy+0NubHk
 RW+o/yPJpsAUPhxo5xwfoWUBs1DHT/ItxAcAS6EhWhproahc7oORR7xXLHgNN8CFXDogpHKFH
 ZXw3JzEBZnYMI4bonfpBiAaJm9z2JaZnalj3lZVuq5k+nMUOCkUqy9neiSueIC89ls92i9kd+
 ya7p2nH48O2Uh6bS+J5Cc8UlD1+sVpWocxXZAUGwglB8iOaszSYBpNjiUM43kQ6HDcajzAYBI
 CEuYhaG05yJ2HQIhiV/VPLq94ROCN8rul6jqYuKo9h1w0Wd7mQ3hH7bCICeJKIenA4t889ZQU
 L0vwof2NSb7vvCUtBL6E5SogW+XfmvAHmY8v0o13P7cv8gcxAp8U1hHOSV9VSZrM+Ordc7ePZ
 ITWPmV3q7NmWozTkX+VSYs50Q59ItikHEoQIXRi8kkV/Y5K+c6N4IPGCJCl3R5HY+XpPX89mc
 CqqXFn3/MIS4Zl2/P7swBV23eBv69843hWHzMyZ3bFgsUD4Lv+2W3yuqu1FETKMc/+BEx9fnj
 lE7s+Jo/V/p1n9hD2aFVLUD19vO2dfcF2aukBFTUA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_095233_729121_95107C39 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/4] ath79: WNDR4300: increase kernel
 partition to 4M
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
Content-Type: multipart/mixed; boundary="===============0267084640936725545=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0267084640936725545==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=FpgEsnP6C7PKkh=-="

This is a multipart message in MIME format.

--=-=FpgEsnP6C7PKkh=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

can you comment on/take care of
https://github.com/openwrt/openwrt/commit/4e6af8b9efcfc51e217d793239487dd8a=
f1f410e#commitcomment-36881083

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Michal Cieslakiewicz
> Sent: Sonntag, 22. Dezember 2019 21:53
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>; David Bauer <mail@david-
> bauer.net>
> Subject: [OpenWrt-Devel] [PATCH v2 2/4] ath79: WNDR4300: increase kernel
> partition to 4M
>=20
> Increase kernel partition from 2 MiB to 4 MiB for Netgear WNDR routers
> with NAND flash. Change affects following devices:
>  * Netgear WNDR3700 v4
>  * Netgear WNDR4300
>=20
> Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> ---
>  target/linux/ath79/dts/ar9344_netgear_wndr.dtsi | 10 +++++-----
>  target/linux/ath79/image/nand.mk                |  2 +-
>  2 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> index 38dd052f5f..dd212c0d88 100644
> --- a/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> +++ b/target/linux/ath79/dts/ar9344_netgear_wndr.dtsi
> @@ -106,9 +106,9 @@
>  			#address-cells =3D <1>;
>  			#size-cells =3D <1>;
>=20
> -			ubi@8c0000 {
> +			ubi@ac0000 {
>  				label =3D "ubi";
> -				reg =3D <0x0 0x7700000>;
> +				reg =3D <0x0 0x7500000>;
>  			};
>  		};
>  	};
> @@ -167,12 +167,12 @@
>=20
>  		kernel@6c0000 {
>  			label =3D "kernel";
> -			reg =3D <0x6c0000 0x200000>;
> +			reg =3D <0x6c0000 0x400000>;
>  		};
>=20
> -		ubipart0: partition@8c0000 {
> +		ubipart0: partition@ac0000 {
>  			label =3D "ubipart0";
> -			reg =3D <0x8c0000 0x1700000>;
> +			reg =3D <0xac0000 0x1500000>;
>  		};
>=20
>  		partition@6c0000 {
> diff --git a/target/linux/ath79/image/nand.mk
> b/target/linux/ath79/image/nand.mk
> index c6a1441ed9..5f893e0044 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -111,7 +111,7 @@ TARGET_DEVICES +=3D glinet_gl-ar750s-nor
>  define Device/netgear_ath79_nand
>    DEVICE_VENDOR :=3D NETGEAR
>    DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ledtrig-usbport
> -  KERNEL_SIZE :=3D 2048k
> +  KERNEL_SIZE :=3D 4096k
>    BLOCKSIZE :=3D 128k
>    PAGESIZE :=3D 2048
>    IMAGE_SIZE :=3D 25600k
> --
> 2.24.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=FpgEsnP6C7PKkh=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4l6NgACgkQoNyKO7qx
AnCqLBAA0+vKa6P9NnDIMPdgMfYxRixhTeBZqKFMjrhE7LaQyigpIu5lnFgeWerq
oDCfPsjVA4r63GEjmkIWA9joQ2eepcL8tCYgnUHkRHlKFtvICO8PK8fBFuIV4SJ5
qAzWjwbmLgJt+WLprfHs+T0Q0fJDnZq/oJF9RZ2bvcjf6v1yiXfJ6kIOQXydBF77
tzXZ9MTf02K0Wwv6tCj807hPHmWauvvcXxSUx0COFvv7JwlN0vpYx3hl52puvRM3
lfTpjYnLRX4iPi6Y62/2S7D5d4fwqZkmYKMt3EYLBrCFFvkOpueDZzQAFOYhOuaz
v1RSUpt5sdVYJLInB0sC87HEftP4QXzNy6PJ/2vCFjklCI5/TCxBcdJOVyecsSpN
NR2poULmIGn2o8kf3MCwDtJSZ57vbD+dCMPn68o5JaryY+lPRB8AVr61GGrzJYTn
6r4wKAqMPviOOJ+PsSihBWv/Tx2WtgmG3TbvT+XhEbKOsg3/LSrgrEBEy+Yb62Ff
mCq4i8DePMFGU/sYbPAa6cuY+4WMRjWREJqfwcOGe94pDOHIP3nJPdPLtfwyBs6b
0x1xSSmFCMiwY9BRK61nSB/oNIegKXikBsoN2nqRec4okrVZO+uKT0FBwfYfjjqW
MFFi10KWATNXUZ647xQUExyEeLtrT6Zsh7tM0opeJ0MEx0cC6NY=
=7AV0
-----END PGP SIGNATURE-----


--=-=FpgEsnP6C7PKkh=-=--



--===============0267084640936725545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0267084640936725545==--


