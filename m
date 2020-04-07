Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671921A1574
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 21:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WoXVsA8JOdD/8e6x/BrZw65EPVhBT5rPofeJeVI6OvM=; b=gB4HKQEdF1mQVYGFZsfHdUOsg
	nisjzkh9I4IYKKqvesi38GUiKIA3hkfNriYjyDZ7jwAomSi6CNPLQGO2hsdUazdSbk17dd8NeL1yx
	4uLgkc+d89kZbE3hqGReCjLSbVBcmMZM+NyxF/dPMyS8gGFN3EqNEVUrHVaHGcU00tdzTVKNxJaVM
	JW1mMhPBUSzvypjRoiY/k1m1zAzKkQPXWF3POSnupof8ZKWMrOD4+vA92+qYiWiGVmNF/4awFmZDY
	rfSESgc9HTNY3eaWbBuNLnOl+u0scCdJa2iK/e5ef+orUfz/oI/U21FUnrzEJ2gIOl6WcPGYFKiiR
	eWnwqL9bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtTe-0001vO-BJ; Tue, 07 Apr 2020 19:01:38 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtTW-0001tj-Pj
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 19:01:32 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MiJhW-1iqQ4m1h82-00fPfS; Tue, 07 Apr 2020 21:01:26 +0200
From: <mail@adrianschmutzler.de>
To: "'Alexey Dobrovolskiy'" <dobrovolskiy.alexey@gmail.com>
References: <012501d600a4$5c819100$1584b300$@adrianschmutzler.de>
 <20200326191041.2179-1-dobrovolskiy.alexey@gmail.com>
 <041401d60c4d$b0e96830$12bc3890$@adrianschmutzler.de>
 <CANCYDrxbZQm7ZcX=S+Xy7t9MZNzu8vYbmf7n9WrjKVpGAwnhSw@mail.gmail.com>
In-Reply-To: <CANCYDrxbZQm7ZcX=S+Xy7t9MZNzu8vYbmf7n9WrjKVpGAwnhSw@mail.gmail.com>
Date: Tue, 7 Apr 2020 21:01:26 +0200
Message-ID: <01de01d60d0e$f02f8e40$d08eaac0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQN2+tZX2orZXKTtwQiDP1HmixgW9QIZei7xAmx8INgCObdZ3KT2Kckw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:Nd8Pqg4/OLzeaLbOUAszTRq2a0pLdiMf1HxIRHMIkbpCWCU4MY3
 /+4vo8pMlYT+GakGgoUgxHNGOjGVY14pGE5XAbiYe7fwuI39NuJuGBAZ99Ig2Q0QuONxXEP
 cN4LfH4iOfoFloRDNokjrxExEcmWm98CiziQAO6GYTshtLQWGAI2sHgyb3LxOhx+7S7iRCQ
 yBhat7cVIthKKZlM0/Y8w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oYwidMhQqDM=:QPDBCImXAdx69RGU1QeWKF
 CXbXMmQKjRqzDKJCApM1hh58WRfBvJ0S+FnPqJQ3qya+oDok+W0fX4hq3m+ZAOGzHkRvJ5tJV
 +Z0MQGARQkNr2vzfKrNwz8ogbP56ye1j33SYFYwbAyTDYZeBf9iqdDqHs33hUDOJ42Myn4YCk
 NO6qpX7gjHCyrNx2twqS93Gb+Fp6XaezODGDteRf/hKx6yZHmkhd5RTxIZkOdMIlejAH1Ubm8
 MPDE1cSmoKJyxLQO7CHTPPozPqHtBp7/pBcyhmZPDLuHsFtNOdCcvnUuXYnIA3fjKzGomUd9h
 yYs2v9U8ABh7PlLvDs22rYn1bw6ta7xk+ItH4IV79+VoUaPEdqajYSt32G2cqSCbAmQfaAyho
 4tciu3Y5SHW480CiCCIuJfmzIoPcZvoinFl5LHOmyUHHy1tLujbphtGo/ZLoncPtefqBJYeXi
 +MZf+JKMjy3x2XYjaMNoAbd5DtOMRlxykrpWFxZ9fmsImahzMneCw/HpJnhvzZXG9r0szvJx0
 b2NcImqFuf+JatP73tJdM7sv6hHAuVez12LKu4igqPFGptyy7MMyUVbuVTxsE98HhyejE8qdU
 Kw0AomBPxYBy3IDeNhCMwr5uZO9ZPxpXf5kWyxHBgYLzlwYjHzONuWA3GTKzwiNnqzjXBGiT5
 H1wOz7QgYJAj+UrlNRYpl6tiq2qpC1BrZtz8aF4yEixPN9Thmtz7uhj2w+OimrIQ5pwxj1kjg
 28oucJrVDvtoHOs6cr4FGunebAYor0tE9XzVY/0CHhLDjwxgE6PIFJVbJNhJqAubliiY2OvAJ
 t54XXFQzEeMVUZx4asVobkrCU6H16q5FM3LsN+Lq+/GKzKiqn6bX7Y/BVu8uPrflQiEY8Mh
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_120131_127540_A05E9F35 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============0403810401297273711=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0403810401297273711==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=3Kfl0QVo9H6d2S=-="

This is a multipart message in MIME format.

--=-=3Kfl0QVo9H6d2S=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Alexey Dobrovolskiy [mailto:dobrovolskiy.alexey@gmail.com]
> Sent: Dienstag, 7. April 2020 20:51
> To: mail@adrianschmutzler.de
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [PATCH] ramips: use full 8MB flash on ZyXEL Keenetic
>=20
> Hi Adrian,
>=20
> thanks for you review.
>=20
> > But I still wonder how this device is now supported for almost three ye=
ars
> now and nobody mentioned that so far?
> The problem has already been described in bugreport FS#2487 [1].
> So i should also add
> Fixes: FS#2487

Yes.

>=20
> > Do you have further evidence?
> WikiDevi page [2] says that ZyXEL Keenetic has FLA1: 8 MiB, there are some
> articles with specs [3], [4] (in Russian).
> I own this device and tested the patch before sending.
> I filed a bugreport FS#2964 [5] about another problem with ZyXEL Keenetic,
> there you may find bootlogs with this patch applied.
> If it is not enough, i can cite more internet forum posts about this prob=
lem.
> What of these should i add into commit description?

I'd add references [2] and [4] (the latter because of the nice pictures).

>=20
> > Despite, if this is merged, somebody should add
> >
> > Fixes: a7cbf59e0e04 ("ramips: add new device ZyXEL Keenetic as kn")
>=20
> I'll add.

Just add those pieces of information, resubmit and I will merge it.
Don't invest to much work in it, it's fine and I just wanted to have a litt=
le bit more of evidence.

Best

Adrian

>=20
> [1] https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2487
> [2] https://wikidevi.wi-cat.ru/ZyXEL_Keenetic
> [3] https://www.ixbt.com/comm/zyxel-keenetic.shtml
> [4] https://3dnews.ru/608774/page-2.html
> [5] https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2964
>=20
> Best regards,
> Alexey
>=20
> =D0=BF=D0=BD, 6 =D0=B0=D0=BF=D1=80. 2020 =D0=B3. =D0=B2 22:58, <mail@adri=
anschmutzler.de>:
> >
> > Hi Alexey,
> >
> > this patch is obviously correct in its implementation.
> >
> > But I still wonder how this device is now supported for almost three ye=
ars
> now and nobody mentioned that so far?
> >
> > Do you have further evidence?
> >
> > Interestingly, I just found that the initial support commit even mentio=
ns
> "Flash: 8 MiB". But this could also be an error in the commit message.
> >
> > Despite, if this is merged, somebody should add
> >
> > Fixes: a7cbf59e0e04 ("ramips: add new device ZyXEL Keenetic as kn")
> >
> > Best
> >
> > Adrian
> >
> > > -----Original Message-----
> > > From: Alexey Dobrovolsky [mailto:dobrovolskiy.alexey@gmail.com]
> > > Sent: Donnerstag, 26. M=C3=A4rz 2020 20:11
> > > To: mail@adrianschmutzler.de
> > > Cc: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>; openwrt-
> > > devel@lists.openwrt.org
> > > Subject: [PATCH] ramips: use full 8MB flash on ZyXEL Keenetic
> > >
> > > ZyXEL Keenetic has 8MB flash, but OpenWrt uses only 4MB.
> > > This commit fixes the problem.
> > >
> > > Signed-off-by: Alexey Dobrovolsky <dobrovolskiy.alexey@gmail.com>
> > > ---
> > >  target/linux/ramips/dts/rt3052_zyxel_keenetic.dts | 2 +-
> > >  target/linux/ramips/image/rt305x.mk               | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> > > b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> > > index ad641f47e4..436743cff3 100644
> > > --- a/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> > > +++ b/target/linux/ramips/dts/rt3052_zyxel_keenetic.dts
> > > @@ -48,7 +48,7 @@
> > >                       partition@50000 {
> > >                               compatible =3D "denx,uimage";
> > >                               label =3D "firmware";
> > > -                             reg =3D <0x50000 0x3b0000>;
> > > +                             reg =3D <0x50000 0x7b0000>;
> > >                       };
> > >               };
> > >       };
> > > diff --git a/target/linux/ramips/image/rt305x.mk
> > > b/target/linux/ramips/image/rt305x.mk
> > > index 33f94edf3f..313c3fa315 100644
> > > --- a/target/linux/ramips/image/rt305x.mk
> > > +++ b/target/linux/ramips/image/rt305x.mk
> > > @@ -1149,7 +1149,7 @@ TARGET_DEVICES +=3D zorlik_zl5900v2  define
> > > Device/zyxel_keenetic
> > >    SOC :=3D rt3052
> > >    BLOCKSIZE :=3D 64k
> > > -  IMAGE_SIZE :=3D 3776k
> > > +  IMAGE_SIZE :=3D 7872k
> > >    DEVICE_VENDOR :=3D ZyXEL
> > >    DEVICE_MODEL :=3D Keenetic
> > >    DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ehci kmod-usb-ledtrig-
> > > usbport
> > > --
> > > 2.17.1

--=-=3Kfl0QVo9H6d2S=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6MzgIACgkQoNyKO7qx
AnDyBw//S+itKAcoiEuUaliR9s9mYMtRVpwc8H05F6ibwsM+W6JSjv/PO9PowPod
iQPyEIYuJeED1r/UC592By0BkpuZQwjav1vRheH26b8rOyqy770wIA3R7MZeXkmV
UN0Un85cfNrXtYCB1h/1tiZUefDYp11FOiJl2iTgQBc2bAUjAOGk368Mzgok7Rgz
SKTt3WapOKyjkYyb/I6D9mVrH40m4DFFIABfEI+b6k5U/ZTvgwHC+h7geXrgs/2N
8ilAwMlDc2+TJSDnZtG8CDtGQRFCZwyvdX6sX5npropH15h77utR2aIqRLXmvioC
M73OWDo1Nxuw0raht5eDdiFYnSJz1pVd1fEr+uamwSNWibeSZ0Oovv/fCQkCq6Ch
nOqQM1SMRTmUClFgOkdtkaqY/qoV1CIXRyc36wA/lh8U6ukb4u1NVa4nQupnqXi8
fLTY4+GG1s9wpeQYTQllVFfSerOVoq29Mf7PSYpmNYfUaZDKdR5y2IGzSUPkjyNx
UenMQldomFILXhyscnX0yxxnjQzw6bxapwU5CU+/eY3lXGBRa9CIKjBwy5AzX+Xu
ES01nNAE2iS7KjQxH8U2O9qwKzoOup/aMVpqwJhtsyBpCyAVGjYcbXt6D08yt+4Z
9cjVGtJdIu5cG9dI9e8LVC0GrGeV5A3eqG8mnbzFiqX2fSaANuY=
=OV52
-----END PGP SIGNATURE-----


--=-=3Kfl0QVo9H6d2S=-=--



--===============0403810401297273711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0403810401297273711==--


