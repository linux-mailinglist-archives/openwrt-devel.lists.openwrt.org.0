Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC99319C33D
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 15:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PLZff4NgF1TFEFQteSh8TmCI0kWNX8/R5HcTesIFbBM=; b=UqUquQAdS4NJOXGEP0AWt4j7x
	0juHV2kvRfjiIhuzpzaHO4Rvb7WkeAtsA+bMrwx7AO1hn7rzxvAEx6WQIwOPFKhwpeN9Y1sDp2f1b
	9C9owT+GX5gUcE4L9HkSRUV5JaoFDRI5htsZb2h+qt3Rg7Pw3D+azJ3zWaHZ6hTrbCHjNGpM6KOtF
	z+UXkg/jWUhj6QbVWv7HXvGJnd7wpn7rTDzESlu6Ug6xlsi0+2aYVcYNkUF58gTJAYyBvbU4wW8kx
	7jAzSt5xb4AfHuPFd/AgfESBg1FImhE17rOtCVDe7vf2xcfUDxozC4G7I/ayHT9EDJ8BCFY5qardT
	fkafM8Muw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK0I7-000736-7b; Thu, 02 Apr 2020 13:53:55 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK0Hw-00071p-Nl
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 13:53:46 +0000
Received: from desktop ([188.192.134.31]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MAP77-1jVEYY0kYt-00Brh0 for <openwrt-devel@lists.openwrt.org>; Thu, 02 Apr
 2020 15:53:41 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20200402135059.33253-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200402135059.33253-1-freifunk@adrianschmutzler.de>
Date: Thu, 2 Apr 2020 15:53:40 +0200
Message-ID: <010401d608f6$1dfc0140$59f403c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJg1jViV19IhT0jhml8SsLxPmVLkadQP6bw
Content-Language: de
X-Provags-ID: V03:K1:izcLz/nVRJJAptM3VO9CZCGC7W88Vy5OBP+bAiVxq+paPZ/vmr6
 1woTcTUXh5oqSWAreWPbUeyyn5daSGkNCmNh9MRK0/HQ2K4SSr33gtb8YjCudxP7bWt1spV
 rduI3HTSkxbpDPFL/m7fVnH7ruuZ/HRS/A6rPfKO2YVyUNbun++1l8wq5nb9mU+au8O/u50
 boKGPiqhtbHmjwjlmWx+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tbsJCMBJb8w=:I0h+3v0s7VEjzlUoQtzcTV
 yr3hoC/Fep+5ESYFejsSGxWOI3f2OodbZFYIDFuGCmtTogUusKcBkroMPC9PBqmkdM4a4OhSK
 zVxQpXPu7L5fFH+ejRaLgw0ctxTpmxWvcO/SSYpRqyEcdzAak802GSXZi45HuWDxclTCtH6qJ
 fMrS4HJcwvyXqyZUsyanjLknKZIvIjP7JCASwb9X2KJg3kYwn03wmIkvSUsz1K6evCA65PKr6
 t7GdYQMNWuqZa3GZfR1/xaMmGFGhrzmu3RhPXSuNN5wkGShdIxU1Etse44sV0gkxsA8JG11Sj
 QgLNvC4A6dmyxoS4Y6jNnrQausgB455GkplSk/62Ee+baRBeVcnLxdyIuMc1xVxOOBKkAkoDC
 5A6jklPvqkTizuTKy3us/v1Yse6xK4OtRZDsOGX0cLRsbPkZH6loCN8CSnLH6R+jd2JQzFJf3
 CEYhy9NaO1e5VJoMt/twrfA890ayxuvR95D53Z12YEiok2+6YEyQe1bryaFW3IIGedvqELd6K
 bWyibqPYvnYuiyzbEi5BiiOY0Ie5/Y2+dr6eLKpzpGo72LWiCksFo3N0Vf3yiRrfKNOseTGUI
 4P1VOokJQ6leswretTDzpZAiaXtf+lV9PlHRAIBZBUsbRT1ayok81jxENDJvT7q4wGCV8X2m6
 crnPGw6IQ5vgE5Vv02AwI+dtcxEitAidpMgF1XlRUHumZOzI29C70rMCes9Y5qOHjAkRZDc+Q
 403hidJHkucuJGBaFZVaiET9VBQWxGTxU3pSbFPo3TjIJvOmtn7Mpc8B3Ouz7+gOhLRbc0UfG
 pDyDiiO1Z/FFxGa5tem+gB7TOWv3P+5N8GDQhpupBGBDAH0P89YGtQ2Lb0hC6nInAJkaE05
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_065345_091023_547E6CA5 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] buildscript: copy all squashfs images
 for one device
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
Content-Type: multipart/mixed; boundary="===============8720115486607662495=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8720115486607662495==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=VOAEZr434tV6gc=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=VOAEZr434tV6gc=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry, wrong list, please ignore.

Those git-send macros make it too easy.

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Donnerstag, 2. April 2020 15:51
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] buildscript: copy all squashfs images for
> one device
>=20
> So far, we are selecting specific squashfs images to be copied from openw=
rt
> bin folder to our "final" bin directory. This has the disadvantage that
> additional image types/names have to be added explicitly, bloating the
> relevant code in buildscript.
>=20
> With this patch, this behavior is changed in order to copy all squashfs i=
mages
> for a particular device. As before, this will _not_ copy initramfs images.
>=20
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---
>=20
> This has been tested with my firmware, but not after porting to official.
>=20
> ---
>  buildscript | 27 ++++++++++++++++-----------
>  1 file changed, 16 insertions(+), 11 deletions(-)
>=20
> diff --git a/buildscript b/buildscript
> index b0935a4c..bbfb2f92 100755
> --- a/buildscript
> +++ b/buildscript
> @@ -292,18 +292,23 @@ cp_firmware() {
>=20
>      mkdir -p "bin/$variant"
>=20
> +    imagesrcpath=3D"$builddir/bin/targets/${chipset}/${subtarget}"
> +    imagedestpath=3D"./bin/$variant"
> +
>      for image in ${images[@]}; do
> -        filename_build=3D${image//openwrt/fff-${version}}
> -        filename_build=3D${filename_build//squashfs-/}
> -        filename_build=3D${filename_build//${chipset}-${subtarget}-/}
> -        cp "$builddir/bin/targets/${chipset}/${subtarget}/$image"
> "./bin/$variant/$filename_build"
> -
> -        for region in "" "-eu" "-us"; do
> -            image_factory=3D${image/sysupgrade/factory$region}
> -            if [[ -f "$builddir/bin/targets/${chipset}/${subtarget}/$ima=
ge_factory"
> ]]; then
> -
> filename_build_factory=3D${filename_build/sysupgrade/factory$region}
> -              cp "$builddir/bin/targets/${chipset}/${subtarget}/$image_f=
actory"
> "./bin/$variant/$filename_build_factory"
> -            fi
> +        # the following line is no mistake, since the first expression
> +        # is evaluated, while the second is used literally
> +        fullsrcpath=3D$imagesrcpath/${image//squashfs-*/squashfs-*}
> +        if ! ls $fullsrcpath >/dev/null 2>/dev/null; then
> +            echo "Warning: $image not found."
> +            continue
> +        fi
> +        for f in $fullsrcpath; do
> +            filename_build=3D${f##*/}
> +            filename_build=3D${filename_build//openwrt/fff-${version}}
> +            filename_build=3D${filename_build//squashfs-/}
> +            filename_build=3D${filename_build//${chipset}-${subtarget}-/}
> +            cp "$f" "$imagedestpath/$filename_build"
>          done
>      done
>  }
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=VOAEZr434tV6gc=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6F7l8ACgkQoNyKO7qx
AnDvLxAAubNpUuxy2PYnaRamoE/+kizxuKpYDiRoFS14ppU2aQ0Cel967Ez4xMC3
EyU4eLj1l7srSSgT7FskTLsHfi0sEeOSwW1FV9JFFhNph9pv/niwpUDtbvg5VEPB
ssqWvl9yP6DwFUsOkV+VFQB2OmXpOf4WKF/5kQJfZJXnn9MO91KMuedaV/QbwR6+
pd1tVc9ZiidD5hywFj7PIIb0IbTt2/TnHCoYc6f4+Qsqq/0LRUGWucJZ8+4w4Cay
JwceplPchvdVeRVnl7eFbtS1yIL1Q/ihX8AVgW7mW+93u1a4/i8761OsRWmJafhw
576TMrNyLxSnD31N38oTUALK7MNnxzedRnqKHPD6ZX0O4ehLzp7ZWANQxwap4pKL
LC7l5DPWibG2L1IRt7el7M2KUoejbGltowROVpmgESW2AqAYjuPxqx/deuk8Yjsk
ByuV/T1vNEKUR0x1hAFLiInDSV/GQabT6zafL+eO6jeacp0bdXtsBoaPcoHTtYLX
TMkLvQr+bps0tOFERLfDIBIMwimqQIa1iIGV2JmTBE9/n0RUWX0VBNhSaKt1S9b5
jQVgXgciv5F8de1ckMmXAo75tdYzm8Tq/iFUYfVqSiyBfBinchCNueobh6eNDk/+
HzqrmDrEpmFfUxeAzDCShRUcUqnjJj2jNNwD1llq/mhDFn4FKBU=
=yc0d
-----END PGP SIGNATURE-----


--=-=VOAEZr434tV6gc=-=--



--===============8720115486607662495==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8720115486607662495==--


