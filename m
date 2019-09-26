Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21633BF369
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 14:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KYEMyfmYVNCKwr7VG9DuPYcVf7XzIdLkVhhRxvqhBU0=; b=eYajsBg6ZjvjXv2eR+RCKlfjw
	le2jnEEE0FWxATi2Kqui6Sc7krZw5TtIrpbUFVq1xt0l+GrVS+HyxqVU0eoxssrON8fjOiYviE84D
	WXMByeVU4swBCtDCJ5888SMSHmljYBizLknC7fs/aJLYZe4uRKat++9zfOC3qNE2lGJEMsqWvN7Ru
	vLDZwl6qzv8CDHkIZ9fIyhGCWQrzisf3bPOYD8tIDxM4j0GoNIm9XeUXskXBa0zfbWqHaL6EyW26I
	bGx4rGPwCtpWbx85gxK+fdQzkrZVBotUsEOVI0oaxl1Fg23T3bcaq9p2jNlzPeT2yqVS4vThDPB73
	Ea9QpDxqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTH1-000756-F4; Thu, 26 Sep 2019 12:53:31 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTGN-00073J-KV
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 12:53:01 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M26n9-1iBYWF2o1J-002aRW; Thu, 26 Sep 2019 14:52:38 +0200
From: <mail@adrianschmutzler.de>
To: "'Kristian Evensen'" <kristian.evensen@gmail.com>
References: <20190924104712.19812-1-kristian.evensen@gmail.com>
 <20190924104712.19812-3-kristian.evensen@gmail.com>
 <00b801d572cb$2755f550$7601dff0$@adrianschmutzler.de>
 <CAKfDRXhp++naehcrx2wXCLr7o20K3vUpLsJB2vk95f_CW8J-1g@mail.gmail.com>
 <003e01d572f4$1adc4e90$5094ebb0$@adrianschmutzler.de>
 <CAKfDRXgDxOZK7_NrFkWS+aAYdY61ZjGmLb=iH0NipOXpZJY9dw@mail.gmail.com>
In-Reply-To: <CAKfDRXgDxOZK7_NrFkWS+aAYdY61ZjGmLb=iH0NipOXpZJY9dw@mail.gmail.com>
Date: Thu, 26 Sep 2019 14:52:37 +0200
Message-ID: <004101d57469$46e330a0$d4a991e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQE48aeUHmlhzGInI3E9EeTxZNIyBQFrV36IAZgkTbICFcP2RAHr6GU4A1gz6X2oJALPwA==
X-Provags-ID: V03:K1:sC1vFqsDKrhOZhlSyHdFheRxu4pb32DX0ORZyPGhJlciAJQ6LmU
 jJXSbAEFHrYgQw1SByM/IErqiHZrgx6N5yawTm6VVcI9Ll1Hq7qJrYZ1wScUl/QNmEWra7T
 A1Z5CPFVhPOGtsTCE4f4tMXaucZMQTQh56VLYZLViUThB0Ddk6JaYE9dxZgBwC1fD0gCm9s
 MMk1ZPv58QGhrgsLeVSRg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rAxL78g3qkE=:P9EMM/q+Px5IWmwAnBPtuw
 M75DjUI4uR9zUmvyYz49yz13dgCNlbL1OzbPMjhVaAV7aK1YlXNSe/H+7DdK+Et49Jmzoye7G
 h1qfNvSFujXCNf55TCTrq6PvRLLINeL7qseh+9UrfTDoZPg0tEpH3xZEd9QbqnLClQ5TgSsbT
 qzvJ/sTw/nflx76owT94XM9b7cvioNIFGIK87bxMHGRJWmfbRoYjMFRbl6WfdKKRwd/d+aZrA
 qA3cKy7NuOhwhnw8t8EytZF/dPXHiS0HoCTt9en14yPfSRU64EBliT1UCakw+YVzHUuc4kidS
 z5U2MN9X/o7pxDB+5zOutY/DhQAtt1ncgknfb0MaHcrhH37zouKdeQ5PYRas+jaH5dV40LFJx
 OOxQAJTLHEBHXScabihqDeuIQQazypD1STig0vKqOdi2Xcp0fGqAS2870Y6CdWOOhPkJ4WEPb
 WVIjs7pgG5N2sI2K44VUuc/kDotvSiveacFinzJ+jTINb/XpxukFBgjUkFo0Y94jSxIL7iulV
 wSQjtFwN9IhxtMke1xe78kqhh9ynjubePuL6aNfhRmiFgqQ6VCcVb+9RSfrdWu2dmKhPqKE8J
 2iiMFjPhgdxp5gmzT54f4UC7ZQ7Sxo2EHASLx0Jsrf/43pEf9pXkT0++tR0wRXq6sd4rgI5XZ
 mywrqX2Rv4ACIgsk5pleR6RT80A5O+UdQQZTG35nTc1xD0DxaBLfxriOJNdTdc+jf8ttA2y/O
 g0EsJJ6oI8LcroziC9N9LhqH5OFtpg6ZrKjguGGk4Hijr4y8xYgvWsFCQfJUtDRVwnxYJmW0o
 oh3KeM2tctS3U3MA7bTpuU8wFue0X53aLao0973qE972Plf2Q6uZTPqvDD0bpBIMoK7V5I4Zt
 TMiWNWJ4bqeOu6ZS3OWsvkMrhUI7FOaAoZMHMW6aU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_055252_951219_FAFA161C 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.13 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT
 WE1026-H
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
Cc: 'Alex Maclean' <monkeh@monkeh.net>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 musashino.open@gmail.com, 'Mathias Kresin' <dev@kresin.me>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="===============8509585769249108687=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8509585769249108687==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=1FgZ9XnKZ2tQCJ=-="

This is a multipart message in MIME format.

--=-=1FgZ9XnKZ2tQCJ=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Kristian,

I've just sent two patches on which you could rebase if you like.

Since I do not have the device, I cannot test, so they most probably won't =
be merged soon.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Kristian Evensen
> Sent: Donnerstag, 26. September 2019 11:36
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: Alex Maclean <monkeh@monkeh.net>; OpenWrt Development List
> <openwrt-devel@lists.openwrt.org>; Mathias Kresin <dev@kresin.me>;
> musashino.open@gmail.com; Petr =C5=A0tetiar <ynezz@true.cz>
> Subject: Re: [OpenWrt-Devel] [PATCH v2 2/2] ramips: Add support for ZBT
> WE1026-H
>=20
> Hi Adrian,
>=20
> On Tue, Sep 24, 2019 at 6:22 PM <mail@adrianschmutzler.de> wrote:
> > I'm all about consistency. I just scanned the image definitions in rami=
ps:
> >
> > ...
> >
> > The only device deviating from the pattern "zbtlink_zbt-something" is
> zbtlink_we1026-5g-16m.
> >
> > So, IMO the correct solution _in terms of consistency_ would be to rena=
me
> zbtlink_we1026-5g-16m to zbtlink_zbt-we1026-5g-16m and then adjust your
> device support for the -H to that scheme.
> >
> > Do you agree? If yes, you could either implement all changes within or
> before your patch 1/2. Or I could send a patch for that and you rebase on=
 it.
> >
> > What do you think?
>=20
> I am fine with either approach. I will not have time to look at this devi=
ce again
> before the weekend, so I will take whatever is in the tree then and rebas=
e +
> apply fixes. If you patch has not been accepted/merged, I will change the
> naming of the 1026-devices.
>=20
> BR,
> Kristian
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=1FgZ9XnKZ2tQCJ=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2MtJEACgkQoNyKO7qx
AnDuow/9ELF98HHIuMXPizOD7OneliI0pN4LDntEtCUUk/Ib1nRw4pR45R16l5fF
vwbjVPy4hZtNwMUISMK8UxqRALBjq0Qtp7fqRN5sOMM6HFei1JzcksMa0UN8S/Jk
G4LfnVn+XDPUSln3sSSRIqdTQF36oX1T8oVYhzoeLOM0av6t1QBum6X1i+lgj5b/
FrjURhIhgT9hct1ozmy1B4zdc5urbgZoJb1ZKR3UleSvea7h1yQoPtGSvnCO9Xqy
Zd1Ip1v5pddLPGlE7MNyCLBTkzqvqiZrLNEmuHWLR2bJrjtFFrrcNv+c3GPmpNxn
TtCslfDG4B5xsAd56ohRQF0+Ic9Z8nPhvsO37OklIS67FABJ7LoMLHGlM3YscWh4
In3t7X34yqsCQrl0usFmOyZeFh+/A+8M9lPGBYrZkBusMeFIhQbbw2XP81dN1Xo0
/cKSM6OkEU8f1YcF1FJUTc0z1e5sKthTqCOkgFCNELDU79nWbEpECQWMbDxl27WW
1bjC0gFWIpo6fedOccs6DFCcOlEM3n9SHrWxqVtu0+d0HkonKpd1HiBv37FOd2bN
GTZAziNDjtUSmsRsUmyPyPAEIRjX3dRRLcuhcbF1zdmQH/sSmDBjel3aG6E+ekDE
IxgqhrAdqKbl+P8IxTbdhYrb9QPJT9ZopxsoYcTZ8eiJjEeC0iY=
=g6sr
-----END PGP SIGNATURE-----


--=-=1FgZ9XnKZ2tQCJ=-=--



--===============8509585769249108687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8509585769249108687==--


