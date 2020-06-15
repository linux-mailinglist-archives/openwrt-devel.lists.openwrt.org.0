Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 810A81FA238
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 23:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XFD9Lq871xAW58ND6oLQXJ4QEGDH3ZhLjkbRKqR14+8=; b=uCmyhlnb6OPnK3nRD6hpqWC3H
	UzaafS5EkVCPbCwR3ZT7LsohqXnxcWk6cIRNPP43nLiUasIWMNqZBVh/QjIQfxAr+JdYk4y4yvkyN
	pWQ3qyM4PvelhurNXZVQMjtKsSbSrqO8/kcp4bu75noze6zP/5ZaUJOXaTYkfFh7WzcNUcbRRUn+R
	d9pb+3vmxQGe9KA2OSQvqXXitk17Jxyx0vVN7v+Bu1ApV6Y6b4rsfaYNlBv35qtpeJsgQ6T3GSVAl
	KiEjVQ5wONZ2G1ONIo/6tRfecCr0noMVNqGxwdF6eK4sazF/2AtnHP0uOVMFvlZO9qqUUUXZf2PvM
	UTZht5cLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkwEY-00064P-QK; Mon, 15 Jun 2020 21:01:34 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkwES-00063k-5g
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 21:01:29 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MYeZB-1jO1vL42y3-00Vij8; Mon, 15 Jun 2020 23:01:25 +0200
From: <mail@adrianschmutzler.de>
To: "'Martin Blumenstingl'" <martin.blumenstingl@googlemail.com>,
 =?UTF-8?Q?'Daniel_Gonz=C3=A1lez_Cabanelas'?= <dgcbueu@gmail.com>
References: <2235597.0Tboij76b4@tool>
 <CAFBinCC+MOxkpuqeU1uet70M+ncmhwFAYG-pV9wCE9urDNY8RQ@mail.gmail.com>
In-Reply-To: <CAFBinCC+MOxkpuqeU1uet70M+ncmhwFAYG-pV9wCE9urDNY8RQ@mail.gmail.com>
Date: Mon, 15 Jun 2020 23:01:24 +0200
Message-ID: <013d01d64358$215c52d0$6414f870$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQMygpRb81i+zn9f6kQM4wP3InPhXQHoWUb2phJoJcA=
Content-Language: de
X-Provags-ID: V03:K1:pM4h7mp3D0QOVjdFgAHG+IX7XUsqiG1yKwPwhxmRwl9BQRtaevk
 Gn6Lavkh2O2H78437taSR127B057oyXu3PQOxU2M+dc94lj8s9ory5S9QsK76ZOG9x0r5Yw
 LfOZ4pZqlnVZOOSBKxjNeIahgPSS7nbKU8KT8r1wuTkcqGuZ8xxbBsL9EpB4S7/qZylqUMk
 TphNuht3IOoqQsYpzpqnA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OJI19d0olc4=:EQVAo+Ixpek0kNkcDreoKy
 PnAvXahCR1O0tIb66kvRRkfm61VMGrE+jCPB9zSbymejwOIAh+DMvIeSAYoJ+Ysf7hFxI4ZKD
 C9mSN4x1D1F4R6q3wKsbhmnThXY7Y3eEld+oul2izdiVLkUwZvkyVJbruazYovItQzQ3oy3ov
 WFxe79bjeXYjw6QR5EFl+xR3f4GK/NAWSIXGyMSlTfOs6T9BoTMGbY57L4rxMnNH+/sTSfpV7
 ZReMK4r4OPkcchtgapEAQLMBEymPPukRSEepYe3PoavPO7js0UwTrqblgU2N/udzqiD30g7ns
 8jX9/KM2kPvZG53P3joG9uLUtpHOKwSFDaB5tj3uSSvgwPJj5dPx3WY4aJ1+5lbGwh7IKK1xL
 QxQadrVHINlu8BwzK20zO9M6FHG6ktKnEcVvt18Fq+/UeVxGVzZW1doprOqlg8aq/w0OdCsDS
 Hi4RBg7TrD+445S/dEwwvqpdgQM4d46otoudad3pcNP8/uvW64F0540hV7s3FI0xNqZjRfIXN
 ymRKhJ0WyV7+6Sr0qZW0MTuKCRt/vq0zQf6m3qhx95B4ghdnTkJBERGNyZujre302UbWHHSQr
 ncDZuWMf0xkutWrTSXFy/AN6Ulf/RL8gGGldZPms44lqS8jRxT1Lin5icDukdY3HKEyhnwRx9
 V1lgMZhA18Adt4IizKR0SaDfTE48HLMVBzKdvbTRYPcHPdTZZm6DdxxYI4SdgEqBTt+spzQZ5
 XTFSWbMhpn3PBHYQ9bPXiBiSXjFWT3MtsSxl7I48tTCti5cuztIimuMIpLikmcs/4ujsPG7MX
 ikjdc2C5bhNqWh2U7fIRPN9yJXESiDz1nPwc3w5ihSLu97ykK1lXqigqf/kahjes/Icq915
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_140128_511772_79C3F197 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.24 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: a226m-fwb: fix linux partition
 offset
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
Cc: openwrt-devel@lists.openwrt.org, noltari@gmail.com
Content-Type: multipart/mixed; boundary="===============4133050721933663314=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4133050721933663314==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=M4eZOv6/wU0d1l=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=M4eZOv6/wU0d1l=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Martin Blumenstingl [mailto:martin.blumenstingl@googlemail.com]
> Sent: Montag, 15. Juni 2020 22:47
> To: Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>
> Cc: openwrt-devel@lists.openwrt.org; noltari@gmail.com
> Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: a226m-fwb: fix linux
> partition offset
>=20
> Hi Daniel,
>=20
> On Mon, Jun 15, 2020 at 7:52 PM Daniel Gonz=C3=A1lez Cabanelas
> <dgcbueu@gmail.com> wrote:
> [...]
> > diff --git a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
> > b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
> > index d0b1e55213..b477fb40de 100644
> > --- a/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
> > +++ b/target/linux/bcm63xx/dts/bcm6358-pirelli-a226m-fwb.dts
> > @@ -109,7 +109,7 @@
> >
> >                 linux@10000 {
> please update the unit-address (above) as well, otherwise tools (like
> dtc) may start to complain

I did this already when I merged the patch today. :-)

>=20
>=20
> Martin

--=-=M4eZOv6/wU0d1l=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7n4Z0ACgkQoNyKO7qx
AnBktQ/+OfqrECZBoFURIqu74j5AHmBXGcGHorXUOJyiDXDVqZpm832jgs7IG/uz
f/4iDAM2RW0AQmYM4YScUUfX3M6gAvhs3CFdD2ULvRb5oYIUVrv03/zsf7v8RvNq
6gCagIrGBpyHWIM0zFK+CF8Xh3Dnfm6pG/HTg+w1sHwjC0ZyxV546kbIgReTSxBk
gBQpbZq/heqw9sNRGxgWt+9k/wbXK1e7MuQShi9Cq7nWbQs8CeRbuYPi6zFjHDT4
B9+l5oUw1JGF0DASeKx3ymNGQhix6SDE+kFDGvBYkRYoZr6f1fXzCKvFjVVFiSWb
jqvtkyKKTp/+BhppzpORUgYLyN1in+CsYiUJ5X12C2vEcXJ1OS1h3+l0wOslu+6I
Ct60CxGRVJGL3FzuiMbxoN9vuP0/g+7E5ljcqkPrvXowjvO6vyc74lxypv6vFkAh
HP2ln9nS9ErprJNF9EjyB1y5LAa62hrxx4GNcA12y9hwTLln4CWM3Zjug8tK0esH
II3EbIoHsKQY4vrQenaUnRqOtbj3PSgSUrVdX/yQCL6fkX7f/7iNg2W9WxHwNpkt
+Yie22a1wcqmXEhvbRt2TeYyFuqTHpqahTHEPevuFmeFPHsj7K0tp9Jo5DVcA1K7
Zy0GOycckDJWv35ya8odE6teTQToPD4rjzjGDaXCYncCH0kmXW8=
=NP41
-----END PGP SIGNATURE-----


--=-=M4eZOv6/wU0d1l=-=--



--===============4133050721933663314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4133050721933663314==--


