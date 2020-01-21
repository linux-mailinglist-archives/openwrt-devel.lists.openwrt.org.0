Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76F21444F6
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 20:19:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gvtmmn2iatIcwx3oJWsOhDLfOSyCSM5AtRKNZOR1mcA=; b=AHbHBkpW82g1fvoAPbHBfj26b
	b1PL+GtDPhkxrchzDwS0UCOUdVguv++oM17Rfclp6Z4XlPdBPNoc50oknpBo5OJOILgxs+qJR7fxs
	ROxxxnW5oj3CuzNRg6abxaVEarV8gnwekcVQGcCOjiUYADsqqDFs96xu24KNDfpKBGPSmZHl3rTqu
	4jGm01qC/1BpzApX8yNdAxZpqujveB5ynBRfDV+5zCkLdhw39RJqH4lYuh8kxAOq4jh+A4RpBih9O
	PvW+vE4qSWYocXqgwsVvgDfp1N0XLtMiW7X1ALQgB8wMCxOrd/cASwivJNasD2xTAGRWWNfdQmks5
	bHhxS79JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itz3k-0002Oo-PS; Tue, 21 Jan 2020 19:19:32 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itz3a-0002Nj-MM
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 19:19:27 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MmkfQ-1jItfh0rBe-00jqZj; Tue, 21
 Jan 2020 20:19:15 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <20200120194024.25841-1-ynezz@true.cz>
 <cf4c98bc-af17-0c67-08ef-3094466c608b@gmail.com>
In-Reply-To: <cf4c98bc-af17-0c67-08ef-3094466c608b@gmail.com>
Date: Tue, 21 Jan 2020 20:19:14 +0100
Message-ID: <025701d5d08f$ab6b14c0$02413e40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIVsuySktPfIYJohjynWu/DYjCzOAKCNTDjp2Gnm/A=
X-Provags-ID: V03:K1:PGL/uD4/n8HQnklSdRKEHql5jEJTiYJn1kNPoioHzNIzgHd+if0
 yHbLvvNhw2+5QpLgykdTeOXC4wOo5xKOaZpXGL5lQoHF1PhLj69ermLQ9oiHT9cCtxxJW3j
 0atA2WJVUdYZw+biaOEO27nWJsVPa7d8jTiEBK+6BLuSzr02DZ+WGulcs2f5pOSJIwuFs5P
 yl5bk1c1ezry7tYSCs3jQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SXQQkuCqIRA=:XyFZ3RPcINOuShlM+ig60o
 cqcQThQDWR18lEN3rZRKU0/nINYcAyCDmgxnyt5dpew2X+Y1/3K0Rt/2UtwEFyhlvdtyB6GTr
 YNyAu0RDUIBlub4LnUujxOJBRtoI5IakuJEd11r3jF6/qLUBzTYZ9Hh6jRQFJ5Bphw7ggXp0l
 Ghwtu3v17Q1sNKia9MbTlEvPV6BsYK2VYTolsR6XipZONYVikNTfvDFBpbU+e9dDIEOKTtTya
 DDjtmipce+YjyjJd25Q1ipj5GhIbG3bM5oGMqhq+mcpBModXRKcS+IfQtpGKgdPgt6qzN0Yaa
 J2p0WLYcJSpwNOB9NIkb+W1iZQxvGMCyawtSP2/uNDQawatwPcwr6D3h5Pex5fhqz9KnlsDxh
 uMkLJrAoQeDv0Z1+n+ark4qNJkYEcGd+3xCX34V6ShDYPjzyKtzr6HPNiKzZ9x3rusc9/n9tg
 vIhtVmRLGnTpLdXc9UJfbHEGQEbw5Abl2PB2Z0H54YDD07+JB8LFupn5mEyzhnOxRnHGk+K6C
 k+BiIRhFLvs5JBF8lJh8UIQoa7tqqjugjmJS/YmtWpcylsZe8UvzBG94qTfEmD2fX25Psrvsj
 gihQSKmRmq4XD1xlqBiPIsQrzsZSfotgkMA95w2Lm49pOz3JFCHVKzyV30EF3eajRu3W5oN3P
 C4JKSqxqNAlH96vTB/tzGMv0A/03RAOrXGjXfhEzBQROCJ7zMPx8kmJRdPoLATW9o79yBNNID
 iTTqaeDJPub1OkHR1LGYrMNlqQWPv5hoWYHnGp9zJhVMIWXCctF+BaJSpC6Kc03xolHH0cWI0
 5RGFGZIZruhrRhPJptZA3vT8NQpsX8MoY0WZCTBETYgZhMv0gRFxJwumLsO7dzFKa7oZtQHRF
 OTEA69jtBRHyLRAHuTMLr3naOEw5Qe2paA9Fxtzys=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_111923_030036_3561089B 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ramips: mt7621: ubnt-erx: allow
 sysupgrade from master
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
Content-Type: multipart/mixed; boundary="===============0932457876856015966=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0932457876856015966==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=Dy0xj9M7L1bptN=-="

This is a multipart message in MIME format.

--=-=Dy0xj9M7L1bptN=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Piotr Dymacz
> Sent: Dienstag, 21. Januar 2020 20:13
> To: Petr =C5=A0tetiar <ynezz@true.cz>; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ramips: mt7621: ubnt-erx: allow
> sysupgrade from master
>=20
> Hi Petr,
>=20
> On 20.01.2020 20:40, Petr =C5=A0tetiar wrote:
> > Currently it's not possible to downgrade from master:
> >
> >   Device ubiquiti,edgerouterx not supported by this image
> >   Supported devices: ubnt-erx
> >
> > So fix it by adding a DTS based device name from master into
> > SUPPORTED_DEVICES list.
> >
> > Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> > ---
> >   target/linux/ramips/image/mt7621.mk | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> > index 53a264f527a6..a8999974731a 100644
> > --- a/target/linux/ramips/image/mt7621.mk
> > +++ b/target/linux/ramips/image/mt7621.mk
> > @@ -483,6 +483,7 @@ define Device/ubnt-erx
> >     KERNEL_INITRAMFS :=3D $$(KERNEL) | ubnt-erx-factory-image
> $(KDIR)/tmp/$$(KERNEL_INITRAMFS_PREFIX)-factory.tar
> >     IMAGE/sysupgrade.bin :=3D sysupgrade-tar | append-metadata
> >     DEVICE_TITLE :=3D Ubiquiti EdgeRouter X
> > +  SUPPORTED_DEVICES +=3D ubiquiti_edgerouterx
>=20
> Shouldn't that be: 'ubiquiti,edgerouterx' (',' vs. '_')?

indeed, '_' needs to be changed to ',' in both cases.

Best

Adrian

>=20
> --
> Cheers,
> Piotr
>=20
> >   endef
> >   TARGET_DEVICES +=3D ubnt-erx
> >
> > @@ -491,6 +492,7 @@ define Device/ubnt-erx-sfp
> >     DTS :=3D UBNT-ERX-SFP
> >     DEVICE_TITLE :=3D Ubiquiti EdgeRouter X-SFP
> >     DEVICE_PACKAGES +=3D kmod-i2c-algo-pca kmod-gpio-pca953x kmod-i2c-g=
pio-
> custom
> > +  SUPPORTED_DEVICES +=3D ubiquiti_edgerouterx-sfp
> >   endef
> >   TARGET_DEVICES +=3D ubnt-erx-sfp
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=Dy0xj9M7L1bptN=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4nTq8ACgkQoNyKO7qx
AnBTJg//YCmhTk4EzJAS9Jjki61OyOdcNLPRQlwL9YpE1mli7TGJJUVmBbY51cW/
jMs04hiXNi1qGJ7lr+3qSQiV112euzNgfoZHDHyos9X0UZfkjeTLTmA/b/HaOHT0
JPeclUm00mPTy8PK0KKWIyEBFrgAbNgwlk6sLwcmGXMjIIIUvBv7sCe3JVCqEtMD
nrtJxlNOMZw048Kf3bjCqUgN9QGa6CT6vP70AKjkJLirswpBblcAbjK4TH8F5WGN
xH+F5W4CYksfIBUugRhRJcLwjxoxWE+TmEqH7uqfzN8zixLSp7uGK8rTgtisaOjN
KPucHXWqijDtRyO3zzyELbWcSwPuTx6+dHr26tLzRoWQ0fyPlf17TuybVifKVK7y
Q2BLsYu1fsqY8j6nVb3YCp5mekBS7uNI05JZzh+v8mnj10xh0tK85yqNUhYFaYNb
g3TXjAsBb5DtHSB8INDeIdEqYJv71fUGpoETR+fWcAlFRj6ii0THBtWDYnGegSGy
hnMM+XmIBNuYXXRKXURUN/hla6G1KUUn4/RuJ/dBHRkZUGAjjfmlTij3iaqk3XRG
uwYXwY0vdhYjnhtOa/qe5uNX1zRNWSD2n0nHHTXbkqQAv5w+wAByR2BC4oaXA2tV
Ilp6bQitYBPMN0tja1xBhdVnJNtvl54/L/S4Nv10U7/fWiQMnRo=
=++YB
-----END PGP SIGNATURE-----


--=-=Dy0xj9M7L1bptN=-=--



--===============0932457876856015966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0932457876856015966==--


