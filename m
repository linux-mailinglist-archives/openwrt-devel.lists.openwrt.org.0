Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178C810056B
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 13:15:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y2trvgv+go5zZcYubKDBrE6ncfKeSE+60ioJviQBFXE=; b=IdLAeOK2KtPbiMjdduywU//ct
	4y/1uAgWgfSxJ85qOvqmiR92OwVsP6HHVXGLAqdT2lOJuUnsSscc3ghSNOTIb9HyMLPuxv9FYG6Du
	dghK+csz0RsQ5mDZdGSBRw+g+ieuCmPZ1o2N7hjqvFljqrArlAHeqJEutssi6ccRGMXAvLVet9INZ
	SAr2DSaGkSumzeNCVwLllq6FCGx4mNVd5h7hweLbMS/O4XXPW1xfEwdYMydXQ1uAxqfnjYUaNYu6X
	gydDXqHQdNXtVuKBY3d9wjDA42lkTJJ0CWHSvXRCPYQRcnVvWvQlHoCPgBMKZQ+cszbrikHanzbcq
	QTfOpYpvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfwZ-0003hp-OG; Mon, 18 Nov 2019 12:15:47 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfwR-0003h2-Ny
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 12:15:41 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MJEMt-1iH3lV32kt-00Kgif; Mon, 18
 Nov 2019 13:13:34 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 "'Joe Ayers'" <joe@ayerscasa.com>
References: <CAALvt2OQ-LCg=C86GkcgZkw4V-deTbxVYGsxte9iyO9E3BX_cg@mail.gmail.com>
 <20191118110716.GB19872@meh.true.cz>
In-Reply-To: <20191118110716.GB19872@meh.true.cz>
Date: Mon, 18 Nov 2019 13:13:36 +0100
Message-ID: <010401d59e09$9bafc660$d30f5320$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQH6NJ6Oj8cUusNNA7Cq9fjY3dDDjQGOFlZPpzs33BA=
X-Provags-ID: V03:K1:LMXVG33Vy2MQ17sbKwCUZiq25YLo6u0bRuGBA0gCzoUOzhXQWPT
 BM6P8CyR0fTe2J71zmCeEh5hwgtP7SjBjQQvzRfcRjt0AvX9sd6Bu/refv1lb0DWxG9W+Ye
 MMJcLTm52SB2lx/+i6t9akdepplBRjhJN0VDvzN6elyHvSa3AXz+VqTnnn764mj2TuXqVwQ
 vC5eEIN9Ew/AuQKezd/sA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/1lOLg8JcgY=:yTOX2kFCdxZoDoqAmHyiUl
 sBuYGGFnirnj+UiRnZteshMMGr2bDS52RPZdIwNK/jtksfegL1mxJkAskJ8teBzD3TWYblSqs
 7dguz2w7YoQJnQRKrUN0mhM+r3EfeG44Wt9ILa2fXbtsofK9Vxi2EsZ/VLjIIOgTqSytigml+
 MinfFlWzRa+6TvnLxJil1TaqohKps7NWriPLskt5rtXFUkU1jwAe2SmaNBI1+a+eXqSaiENj7
 FsH9ZjjBPO+owNErIcXU95cscS+PQkcfMGgO4ezqrUS0MTcCSHxvAneaZq7naS+84JKJv71ja
 kakBeSSy8S1iQ7NDulv1xKZJ+6UFTXpAzYEAQTO5irCvlcAd3OEbtVnSdqBn2XL86tJWKCG/Q
 RsC/9kAKkdjEsKQKelDrYS94MznPTtIOlsCGhk90E6H5T44dAccF6QAV69ED9XIWDDRXTCyJ0
 3QIKLVNIdiM3oo82scKWJO2lVUirpCshcUg7YWiDI6rgvnzxwy9Ypy3FoZxcwhuCiJZVh7RmW
 gWAX7GtMkWhtT8A5mkd9cGdA+h2Drz4z0MdF67JX7KnRyzyOsQ9ZqcH2DxrauTvQBOdQJQWBS
 H/AiGjE7CPiddVpHEWj1pEW+SEPmfBvqCRsI392s9TmPpfzSmBei0YWwZ3SpNy/J9okVT3F+w
 9TE2JZBKyFOjAhaRt33ETZWXjKxV8sF7kC2LFfbHCMCOr6HN2cHbUsBoL10p8WGi5QISfWqM/
 iH/y0nxYFrd9/QjrUiDFgzCPxkqJ0oO23Z1OrES5Az9yPsddwpWZt8FxvHjOjAb8gTSZTvsLD
 MKyeQnuMTCIgo9vqIXyQLZknEkiXuxCP9LD2ankwzC+s2RmQUVmCG0pV12zjo+PdOOkvsFyB/
 i5dByynRs6FeRSXLV8tzFYHrRxKD/jM+99kOcnqXw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_041540_074898_94A6CA25 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
 entries
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
Cc: 'Andrew Cameron' <apcameron@softhome.net>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7986138926025332755=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7986138926025332755==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=LJSez0eM0VUfUk=-="

This is a multipart message in MIME format.

--=-=LJSez0eM0VUfUk=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Petr =C5=A0tetiar
> Sent: Montag, 18. November 2019 12:07
> To: Joe Ayers <joe@ayerscasa.com>
> Cc: Andrew Cameron <apcameron@softhome.net>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
> entries
>=20
> Joe Ayers <joe@ayerscasa.com> [2019-11-16 15:37:28]:
>=20
> Hi,
>=20
> > On nanostation-m-xw ath79 target in master and 19.07,
> > "/sys/devices/pci0000:00"  does not exist.  Unable to access vendor
> > and device IDs, and no longer reported in "iwinfo <dev> info"
> >
> > This is working on ath79 for 'nanostation-m'.   I'm guessing the pcie
> > entry in dts needs more definition on the nanostation-m-xw?

Note that nanostation-m and nanostation-m-xw are different:

nanostation-m uses &pcie node and caldata extraction in 10-ath9k-eeprom (I =
fixed the latter only recently):

&pcie {
	status =3D "okay";

	wifi: wifi@0,0 {
		reg =3D <0x0000 0 0 0 0>;
		qca,no-eeprom;
	};
};

nanostation-m-xw uses &wmac:

&wmac {
	status =3D "okay";

	mtd-cal-data =3D <&eeprom 0x1000>;
};

So, I do not think you will learn much from comparing those two devices.

Off-topic: I just learned that both nanostation-m and -m-xw miss the poe-pa=
ssthrough switch on ath79.
I will compile a patch for that and submit it on GitHub.

Best

Adrian=20

--=-=LJSez0eM0VUfUk=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3SiuwACgkQoNyKO7qx
AnBRxA/9E3S4XRfI/EBBPJoFdAY7mjgGL9+47Fk+MFwRMHqp0AYIs5//TiaIQkDb
KJf3Lmcq5P9jl8U+Idkom0+FPoGa77yrqAG7VzF1x0OdKwRw/43IzUHXgji1n0ww
muq0v2utKMVNO/8kMSHSglH0go7e2g2Du1ughiy3aWgoamqM4qqy4EYsj4il0mTL
WmPdB3ON2gWOzjxYoTnK0ZkGKxuU57RilYJ8scHHfJGqLGUZlSlsEXHB9i+EWmBh
kAn03BBn6+WmrOn9pBNaNhGkQp4VLWx6yABCNWaDjTfq64Ccc47Xrm5/yDENhGYt
bEc3seBhVrEIkP2EC+wdoYtyPChrO45OoSkqtPwsO3jWYpHjlcE/doPDbiv7MorM
VMGGQRa4B1ZnAhr01x7HCkU53QA2qNJRZxmg4qm+12VAOBBK4TcJq3kRsHk1Dwj0
ZOpwYo/ZHDiFqIau6vdCHAsWGqs1LlC0qr0H1c236gzxP0T/hE3qJOLqxsunBKdf
GGPOSJBSR5UNXeUObKJOWALGgX18bXaSbC2pK0TQdzfiHlFcTjvm7ZgzuE4Q6xut
5mwe3laWVsTvk4l9fB4UbUSirwl7QMHSgXdE8u5ykoYsXjJDSWYWjYwnCqodUDie
VJJzNIdr1yyUEvYD459THieiPiIgE+DDrApIua0AJpVezqtifT8=
=7AB9
-----END PGP SIGNATURE-----


--=-=LJSez0eM0VUfUk=-=--



--===============7986138926025332755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7986138926025332755==--


