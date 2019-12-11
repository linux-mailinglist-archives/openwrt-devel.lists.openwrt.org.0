Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E305B11A920
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 11:42:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NCuXpMd7ZUdE6ISTKV46FAEcOIA/sgdnrD+wtUSDE/k=; b=eWkk29yavMGWoCBgEE2c7i7XK
	YNCvIa6EzwMr9DBuHlJ7Pg16WKAnJ/tIrC6eghNv7VsxQ6s/JqcJ6ZdZQfLFkG9MYqEZDrfBis4lP
	Ou7wM6rNj1z3RCQgyjo4rtwPglEi7wh3H3QBhzqih3G7PQlu4VlQK1jqgDf8BbG+6QDsvEINadz9I
	6TZALBw79K2MLXZyIQGUvZiYPX8TIsSFLA43zf3S7IODciK1vzzQrFr7rkjmCK0FcKa3rrRjfCy+c
	qXqoXk0haBmth3aza2bRktI370gIR22x+/yMWzJYTcljppl3cN/5cw+cbmB23ipCRmFHrSJYwww0y
	yPc3E7/OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezS0-0006Bj-Nm; Wed, 11 Dec 2019 10:42:36 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezRp-0006AW-RL
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 10:42:28 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1Ml3ym-1i0BaV3BEq-00lUMf; Wed, 11
 Dec 2019 11:42:23 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
 <20191207222826.47389-3-freifunk@adrianschmutzler.de>
 <c548878d-5a73-6530-168b-f42057b124c3@o2.pl>
In-Reply-To: <c548878d-5a73-6530-168b-f42057b124c3@o2.pl>
Date: Wed, 11 Dec 2019 11:42:22 +0100
Message-ID: <008b01d5b00f$ac39ba00$04ad2e00$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIg8uL5W0LbU13NgEjaIr76/4apSgJ0476pAgso3G+m+jaCgA==
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:vTersMaNlJmPPwEFfrWzElQVaYOzewv92HPRwCIDIrSgLd6OtKn
 vjuh4axHZweF/c/HS9lQ64tqAQtRyn2fa/qcP2uW1sy1BXR8uNDekfbR+RAmgriIT7wqcyY
 Wudo+m/ovYLcQjfpj6Narr3b3j24u0+2C92OvrbDK7C/wpZY80l9vRs+lKp+Wk59KArV9ZO
 s8/hF9y4k0aRDJnmP/tLw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WdjUAh2bh84=:DMGZsLVaHRUTj6JqYE1zvv
 F79q3R9sztbJWnDsl0Scig50MrQiu7KpSDi9wE5KXdGUHr2t3DOKFCQg+A/TsFiYfLbz65xJ+
 56Qid4BHiJeDXpawyn5XOvl2Wo9mndV3Pl1zerrmKad/suClfwcvw0ALYbZfijAGwsz8Fc1O2
 CnOherIf3Aah7QWc6G/+lJO1XO6j3botT7Bu4z9x+r1Yf2tZBEx9xQBQS3UazYSoUQ6Y6abF/
 E4JTRy2N0Tfm07MyKgH6XIw2H8SH7OXxJx3cKtNdJmdDras/vl7Kcj/rebzJ++pVkt/PfNkUY
 cL51bsvZeaDZhbdy37gD7MA6leqdio7dk/Kz3l/Xfj1Q5Zh37mR9MdzWAykVAitkoJPjQycV2
 FnUyLtHeIOFa2+KroKaEB/s7GrTtKPhWHD84nByLHfVhxiGv9Vje9AT8/qRH/d+slI7bsTuvv
 Zm+uvEFZAN1f7bxOyo7Y847gc1bF0GSaWOqs/cTMUEsEEMlP3nvxTPQiIyBVpkHKOUiBuAewx
 Qs9woEgdpuS57Q8fjaibieNWO+9bEx9BiDP+QCKaBCq4JxYMW3mMUERncZ001hc6XUBI9IA9K
 Q0MCY3RXu+fJTl8Eh3oCyhw+KJ406TfRGyCfO60PNX/sxct7kbv2jewYvhgzacPqQFBvNMxXf
 kGWhuYZ19Wrnif/EYuuHnjawKTN9dCmBsTiLr0SADvfu9aFRfXXHBEGtE+AItD3z1f+o16bli
 P4raJJfo8J8G7ISzFNOWbhp/TjdHda1eOSM9aM8DtF6ZpFxLE0ubNSQqVKsm7iI2OHq04QCro
 gxiS/xtpyDWCrvZEtlYNCcSdeIwJ6CboRPNf83Wwg7Cl3rQAUSrlgy3m1G8e0rQNNckUl0aoA
 OMMNLH+1S0IN973mswmH98O3SaHleJnADuw3TTWuE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_024226_196009_511D213E 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] sunxi: construct DTS name from
 device node name and SOC
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
Content-Type: multipart/mixed; boundary="===============7991575329890317015=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7991575329890317015==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=dwEPK3CXo5sTLJ=-="

This is a multipart message in MIME format.

--=-=dwEPK3CXo5sTLJ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Tomasz Maciej Nowak [mailto:tomek_n@o2.pl]
> Sent: Dienstag, 10. Dezember 2019 14:39
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 2/2] sunxi: construct DTS name from
> device node name and SOC
>=20
> Hi Adrian.
>=20
> W dniu 07.12.2019 o=C2=A023:28, Adrian Schmutzler pisze:
> > The device part in the SUNXI_DTS variable always corresponds to
> > device node name. This is another redundancy that can be removed
> > by calculating the DTS name from a newly introduced SUNXI_SOC
> > variable and the node name.
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> > ---
> >  target/linux/sunxi/image/Makefile      |  5 ++-
> >  target/linux/sunxi/image/cortex-a53.mk | 18 +++++++----
> >  target/linux/sunxi/image/cortex-a7.mk  | 44 +++++++++++++-------------
> >  target/linux/sunxi/image/cortex-a8.mk  | 13 ++++----
> >  4 files changed, 45 insertions(+), 35 deletions(-)
> >
> > diff --git a/target/linux/sunxi/image/Makefile
> b/target/linux/sunxi/image/Makefile
> > index 04e0abee49..929f4c70f9 100644
> > --- a/target/linux/sunxi/image/Makefile
> > +++ b/target/linux/sunxi/image/Makefile
> > @@ -32,12 +32,15 @@ endef
> >  # why \x00\x00\x00\x00 for zImage-initramfs
> >  define Device/Default
> >    PROFILES :=3D Default
> > -  DEVICE_VARS :=3D SUNXI_DTS SUNXI_UBOOT
> > +  DEVICE_VARS :=3D SUNXI_SOC SUNXI_DTS SUNXI_DTS_DIR SUNXI_UBOOT
>=20
> Instead of adding new target speciffic variables, wouldn't using already
> specified ones be better? We have DEVICE_DTS and DEVICE_DTS_DIR. Also the

Based on
https://github.com/openwrt/openwrt/commit/7a8d3432c739c6ff038295176e8b6324e=
92fc116
I had the impression that DEVICE_DTS and DEVICE_DTS_DIR are reserved keywor=
ds for a particular mechanism to append DTB.

Thus, and since the target has been using "custom" SUNXI_DTS variable so fa=
r, I decided to stick to that pattern.

> SUNXI_SOC feels bit redundant since it needs to be specified for each dev=
ice
> and it could be replaced with DEVICE_DTS :=3D sun50i-h5-$(1) or simply fu=
ll dts
> name.

No, because I need to cut down the device name, so it would be
DEVICE_DTS :=3D sun50i-h5-$(lastword $(subst _, ,$(1)))
which I would not like to repeat over and over.

I admit that changing the DTS variable is the weakest part in my patchset. =
However, I think introducing the SUNXI_SOC and SUNXI_DTS_DIR will make the =
target more organized. Despite, by this it becomes more consistent with oth=
er targets where this has been reorganized recently (i.e. ath79 and ramips,=
 where we use ATH_SOC and MTK_SOC to do the very same).
At least I personally think that this is better that repeating the very sam=
e name again in the DTS definition.

Best

Adrian

--=-=dwEPK3CXo5sTLJ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3wyAkACgkQoNyKO7qx
AnAe4w//aFldY02SqjIq+EfG74J+WbdnWdkYkme8IhwMqUMQgg340qvL2OelIcbY
Gbu+yh+ek4EIjg6WFqjUTp8tD7jW5P/98qcmj1FracTnd9ySVFkD7ljif9gJ/I5L
/7QjOq886tEZXWF5rlnEHzXZEfUTcvNevWLieuyWkTks0zOCjrHqtySehTUw1TRC
09X2KUH/PLnv9lJBO88+2zy3HAOKy4MiRXM6WDqJf+RMeRFKMRpezv8/NJleAVFC
9sRN7gWNjjajLvlRfDS6ujVPlxE0HeW+IFkqvjCwdj0fy5xaD44rSZiQF02XPPB4
qC14PQiHmN/Ur/aIQinJ0SAkWsfz0bPDIqapeN9TWCTg9EmZ+u+yxxmGvguRTIxP
ZTnudJL/Ugp89QW2WYy+vorssfidiS1ziddTc5WNuBXj5fdtLda9K4bi2Tzndqor
e7lTqZy4tTlmihtCk2J11HXi9xNZIFC6DsMsSIJERcFHruAdDhHuvfUXJgK12J78
9/UNT+VwZK6j7icnrWo6Nmm6oaZ1B1VH3D6L53JI+hwSrjHuImnkllp1lp3vt/AZ
0zFBhtD14nJDw+ntWAmQXuEKwyex3XkKdl9Sj6nXFEHR8GVjHB4h7IwD4NY3Fl+X
kcrplcBZW472tTtLso2nULYJ7lOzmvq4Tid9b8/qrmw0ZKaY5hg=
=Esqh
-----END PGP SIGNATURE-----


--=-=dwEPK3CXo5sTLJ=-=--



--===============7991575329890317015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7991575329890317015==--


