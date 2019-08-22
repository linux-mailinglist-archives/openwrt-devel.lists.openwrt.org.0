Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE7498F24
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 11:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9csT2p56uwWP49/k83mHHQXwd4/9KnmJb2rkQkP8Q3U=; b=W/gojk8sQFc1HY7KwHyhEVt2F
	zgTJXjytP1O4YfgIsCoLdm9jJ8rPFyatZlSQ8laCzZBfRH66ysp1LwNI8maYZPQ+cAA7TlAzw7uOK
	zI+4wbeJett3gAKd0SL+VfJU8EpOFJFZqnOavOUmugkSl6GuTR6D0i+KrdY+VXAh+8SGWDMC/sOES
	gwWPYpjj3oefQ3JP3HlO3/RkeIT5o+ls+xdtJgrLxXTRekALTFRFnSQhJLpAhukX9L0A4BbCUBGLL
	nmYt60VrpGRK69Jfnjd4Leu0N81GbdlVov/JerFtdPOF1FSMlvEjEAMWIO9dMDzf9XI5X9U9H92r/
	juxL/rnug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jFC-0007KF-4w; Thu, 22 Aug 2019 09:18:58 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jEQ-0006x3-Hb
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 09:18:13 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MDgtl-1i8BUT1hV1-00ApLi; Thu, 22 Aug 2019 11:18:02 +0200
From: <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>
References: <20190813165904.1988-1-fercerpav@gmail.com>
 <026101d551fb$78adb9b0$6a092d10$@adrianschmutzler.de>
 <20190822062706.dmpis5iu2uhp4zmq@home.paul.comp>
In-Reply-To: <20190822062706.dmpis5iu2uhp4zmq@home.paul.comp>
Date: Thu, 22 Aug 2019 11:18:01 +0200
Message-ID: <00a601d558ca$7f9336d0$7eb9a470$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJGTuvU5TPUP3BJ7aVufPNy3iqCAAF28lL5Ac7CuEimCsa6gA==
X-Provags-ID: V03:K1:GWm941gcHdxHT2Ko+TIAxzHl0dJVgA9paRSbf4vBaHgfj2AsLrm
 xkTsm1KBSZm25ZHPSL4+55EEtW4V3c6izXmC4IZOePyfeU9+ogngW9RM/4XpqfZ/GR1lDyp
 H3mJjEbGAm6lTRLnSyEo54G/jdibP6JX+QBK799bTT0zHP83HaMfft/0GMUZQu2M64WoAO7
 t8AOt6WOab0ZjzkOBf4tw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aIDLhWT0e0w=:JUbaoe/XQdKgcEq/Vfeue4
 qMNxVAwP+fOYJ4fRI1Pn2mxCJ2MupgsDRTzDlsvkBTtrkV2fOqd9tj9+z5noo7BLbssQKn9HG
 F49ma5VJ6IuJEJGa+dQ8lTkw0euBSCfoXwQ6m66vPCMMXQUPzd9M3gOQnmhqZ0BIFVNPDyJri
 veshSzCvd3of6waYdIpGnAIQOp5E6BNJHIa1YICywROkzNsh/un7bBeQJhaIApkybNyEgfG55
 ydVPdysiafeR/vXcSCA3b43KEb+GW8QcGVF9XG6cCN6305G3X0duPCuzesq9ueOi/ly+EzVGj
 4m2ngHrvM1hKjc3vE2xVCul8rQGSXVI6J4XJWh+7N1MO+6QI/bq1BA/tLWJbDb/a3FfmKmQ5q
 b7+L4GVNp5xOY3LsS3N8LBG56xQzo2C35ZVm4slKzQlbegD0VuGCgLz6/cp/6CYVHnQOpLnwR
 Sh3uuRPg9c2PJJH3QFFB0LSpd6hXi8x5fizcm5VNVgdtkhamo9Dbjaxh489oUpPu+mxd9wD+1
 jFZTtepdOCrbyzNd9Cfj/0Txu1cpYt0ojZEmTFcRTjlf6kPivnufA2UAVRrzEeOyHK5OKH1xL
 t8763oXsAkU5P7b5EZPNQsTl+j8Ndv6NWFShGzSKN4AqhO2qzsFUI25WEH+EEDftfBCmD349a
 2miLHBKWT1lyeEG5A5BKvPmAdGLzFssIa7eOBwUa3wCt4vBFTD4aqkAC6LdsvaAm19LkcloYh
 XzMBA+fmhdQ3kI82BdLsvcyTTA1zk/7J+jORctZl1ywo1bl2Suks9HZjH4k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_021811_206864_81247184 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi Wi-Fi
 Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org, 'John Crispin' <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============8169056203905566743=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8169056203905566743==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=anZjRVQ4oRZshm=-="

This is a multipart message in MIME format.

--=-=anZjRVQ4oRZshm=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > > +  DEVICE_MODEL :=3D Mi router 3G v2
> >
> > Capitalize "router". Despite, use DEVICE_VARIANT, so:
> >
> > +  DEVICE_MODEL :=3D Mi Router 3G
> > +  DEVICE_VARIANT :=3D v2
> >
> > > +  SUPPORTED_DEVICES +=3D mir3gv2
> >
> > Drop this line.
>=20
> So apparently this "v2" is in fact an _officially_ relabled "Xiaomi Mi Ro=
uter 4A
> Gigabit Edition (R4AG/R4A Gigabit)", according to the reports from [1] and
> the related thread on "4pda.ru" forum. Insane, yes.
>=20
> What course of actions would you recommend in this case?

Well, you essentially have two options then:

You could just add the new image anyway, if device names are different and =
there is a chance for taking the wrong image (i.e. mir3g because there is n=
o v2), this is generally reasonable.

If the devices really are 100 % similar, you might instead want to exploit =
the syntax introduced in https://github.com/openwrt/openwrt/pull/2250 and j=
ust add
DEVICE_ALT0_VENDOR :=3D Xiaomi
DEVICE_ALT0_MODEL :=3D Mi Router 3G
DEVICE_ALT0_VARIANT :=3D v2
to the existing configuration of the "Xiaomi Mi Router 4A Gigabit Edition (=
R4AG/R4A Gigabit)" (without adding a new device).

The second approach would have the advantage that you do not need to create=
 the same image twice.
The disadvantage would be that the new name is only available in "make menu=
config" etc., i.e. when you build the image, but you won't get an additiona=
l image file with the new name.
Despite, the PR is already waiting for a long time, so this might additiona=
lly prolong your waiting (although device support typically has long waitin=
g, too).

Since there is a "v1" for the mir3g, I personally would go for option 1 and=
 just keep what you did so far.

Unless I misunderstood something, this has nothing to do with SUPPORTED_DEV=
ICES which should be removed, unless Xiaomi ships an OpenWrt distro as vend=
or firmware.

Best

Adrian



>=20
> TIA
>=20
> [1] https://forum.openwrt.org/t/xiaomi-mi-router-4a-gigabit-edition-r4ag-
> r4a-gigabit-fully-supported-but-requires-overwriting-spi-flash-with-
> programmer/36685/41
>=20
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com

--=-=anZjRVQ4oRZshm=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1eXcUACgkQoNyKO7qx
AnD8kw//Rlap+w+Lg33wz2TLGH8hOPrWxHFoNMIoKNPTxqdhlFIuEzehYt3AmNoa
5RhTB7bU/DB5SGWiKQTGqbFeCzMFjO+1woYQvKp8kUyYFS3v1LSOx0HzT/buJnag
3LUFZAnKhUKY64aA51ljzJvqkc5DkKaSlMWu6GUMu1zHRqpD5eHxU4pRyp6IwEq6
meDfWkmyTvT7dIytSDoFqujmGSCqfEDeeMyx4RJwlILpfmzN9s2E79d/wdcsFbED
FO+m4oI7Cf6hDQmhB7jnFa72mIcJoF0BnbfeuY3UZOfAdIvVskEk1tZB9eN8oL/9
94nlsdMBYLLGfoNoy1MzGlX4O9v2/PdaXRrlyL+XVkAR2fQwBBQibbK6NhszZiRW
HX3rF+es66A3oJlPsbli8mFIu6SkGoiICIESUt+yr3FK6VGuVgoib6ulEGFqrJdO
FADlFaNusLBAvmWPGk05wNjGJx7aC6qPJTFJ5vqapr/pwLmD2cbeMI5kjH6qoChg
336W3dLsN74IRxB3YBOoCpMwlNhEfPHQsFLszjryzQgErhZZ+1q79O2AyJoHgB5i
wyjpkDo2W3vxCyEO8KNmSiYOX7ysba0oD3qxw6Tt8OdaX2d2StZD9Kab9ECRNBOD
oCZK+Jp/66B0Z6/1gjzN7lgmQSmzKbyswYJzOwe8oI2svrK6pcU=
=T7RQ
-----END PGP SIGNATURE-----


--=-=anZjRVQ4oRZshm=-=--



--===============8169056203905566743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8169056203905566743==--


