Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D987115EE4
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 23:12:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qWQS4me0AOKi1pwVzKnM7ikwNBZeUKfa6wWNdC6hBAI=; b=U7s3zlvSK4hV4+Z9FKkToQsR9
	m9EbL5g54jilBwZoKirYG7fYjQB+tWJLdVTRnzsJ94/6WNH2BcNTNSVDn4kiJH21YluszVq4bf9Ht
	zHYnTD6CgIVXVpy4lwazT6BzKmpGwjCNwOY1QlCSSIv6WHj0nmC0Uz/adYpIwMRJNulyuZyM1LWPK
	dzMlWnB/F+hA4Txqgow3sAjXfDpVlM7RrBQie953+be3+0i5v8E3B4d/HwfJBGzGqv8quoSipPhmg
	04ojtkmbyIpI4/b2aL+6XHcrYhf4Lo0JUOHWz2C8PKgdnWEEiP5f/njy9O95qcx/6/enm5l7dB4uE
	tt2Tl2KUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiIp-0003aj-34; Sat, 07 Dec 2019 22:11:51 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiIh-0003a2-S3
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 22:11:45 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MdeX1-1i4vVj0ZCD-00ZhSq; Sat, 07 Dec 2019 23:11:30 +0100
From: <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20191103113247.9782-1-fercerpav@gmail.com>
 <20191109135320.25020-1-fercerpav@gmail.com>
 <20191207140405.GE11070@home.paul.comp> <20191207150413.GF71465@meh.true.cz>
 <20191207201011.GF11070@home.paul.comp> <20191207205826.GG71465@meh.true.cz>
 <20191207211114.GG11070@home.paul.comp>
In-Reply-To: <20191207211114.GG11070@home.paul.comp>
Date: Sat, 7 Dec 2019 23:11:27 +0100
Message-ID: <003901d5ad4b$46efc9d0$d4cf5d70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFlRFxqn6fDMSD1VqGll6s+n+BPMAHHmw79ATQq/FQBQXZwggLNlnwgATreCeIDLd3oXKg0brvw
X-Provags-ID: V03:K1:CUs0IXbkadxMA0ahX+EwHgZX7MFOIoBrTAxvuugkaDB0omFpXI2
 iCt5FYsKUxoj92llbDHtZtJUF6cmLb/d8etmHEUfVp4DbT2go4bRQm7QOfV/np6XQrqPRuw
 8xjTgCAzL27OMVatd75VIgLCX2MsltCJ9qHYVZgFLkh3EpLGZ3HhMQfx65Af2o0ZoRgekt6
 J2u7X+lGvtVgRKSxNmlxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zd3CmnPUhu0=:AfRVeOOjjxLUxnbr0YwXlM
 bZHmMugB4ynm68aXpTi860v+Zc3G5jMOJflI/0O8V050PtQELdrm1bQWa2jlUiRQPd4FzbOd2
 A/c6CRD+4JPDPG1IXf+uOJtOCZmRFXopMeTcpupWZ5XDaiiBNNXVp4g04v7iv/t4CITOfV3SN
 clkX1TMTTL1YjUyJkT5CK/kKz/hlWf+Qc8IMujKW78LfrQ0uVeXiVX1OOIbgYPumExWZwTM/8
 WAcKSFjcOzEyEERlxL98xFvszPUps1nMRW7MCgybi/Eclhft76eJt/FlkVLINDiuBy94Aj/pS
 X1oxd2+utSEX0VoUyo7QmybmYhGHCyurNxBZxxAi4MkDunpboWmfq4rtw+yZHxw1/wiBqL66c
 GIIpqfmkFXdcfxxyZcxVBuqIo+REGCYnLpL/E/V6MfqaYCQ1uHIMhn0MJ/4fs3R+l/0v8s/gi
 8hGMieQPfRxUf4iRtCEpubw8zy6b/zAeokXtceh8FErpwtPHhtQYQwytIfBCT+ZdxxPKSO00r
 mphaF7TSITaZ89vDTCOx2uGXG6r7SVKQxzJBnNoCefXD+coEImaFOg/OasIVub70Mjasf5zF5
 Ag0z2lPAbZvqr3n0fpnoEeC/jypcluPGj5qEfhQ3PJlRSxvxJoJvxUU3Q64nXVfqrQmWwc2UV
 UvOfxfMqX1hFX/px9lR8/xJ/ZBHefARCUqnZc46kiZ3WW3z5za9xrH22i+atPDXLyky9EARyJ
 w07ECQGMESZH84AUrZcPPWpnlml3YQehYCIEt3vcWSOmtXUX7v8fLHE92/HIHhaOzSoU5Snnw
 1z5i4DytH4NGVZEWz3zD6dV4Z2ivE8ndATKMBgRM2NigrGANViJmMdkeViFFZEqFIwVJU6XcS
 F85bgH62njAp96b9jVORjaQhxlQ6zidnN47XpvIPE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_141144_202764_2F0640DD 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
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
Content-Type: multipart/mixed; boundary="===============6488074711459681971=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6488074711459681971==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=Jh/pPhNRedcWyy=-="

This is a multipart message in MIME format.

--=-=Jh/pPhNRedcWyy=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Well, address the issues we have agreed on in a v3.

=46rom my scanning of the open discussion points, the following was unresol=
ved in some way:
1. Name prefix for LED labels
In ar71xx, all devices use "d-link". In ath79, so far two devices use "d-li=
nk" and four devices use the device name.
Since d-link looks like a vendor where heavy use of DTSI files is possible,=
 I would use "d-link" as prefix for those.

2. Comments for ethX nodes in DTS files: I would remove the comments. It wo=
uldn't be a big problem if you keep them for v3, though.

3. Partitioning: Remove the commented partitions and provide an extensive e=
xplanation in the commit message.

Further discussion may be led based on a v3 patch then.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Paul Fertser
> Sent: Samstag, 7. Dezember 2019 22:11
> To: Petr =C5=A0tetiar <ynezz@true.cz>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: add D-Link DIR-615 E4
>=20
> On Sat, Dec 07, 2019 at 09:58:26PM +0100, Petr =C5=A0tetiar wrote:
> > > I'll be happy to change the patch in any way that will get it accepte=
d.
> >
> > Then just do the requested changes in v3, solved.
>=20
> I got an impression Adrian is not sure anymore he's requesting all the
> changes we talked about, as I provided some reasonable counter-arguments
> and that he is waiting for someone else to chime in. If you tell me I sho=
uld
> just do whatever Adrian says, ok, np. Do I get it right?
>=20
> --
> Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
> mailto:fercerpav@gmail.com
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=Jh/pPhNRedcWyy=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3sI4sACgkQoNyKO7qx
AnB2gRAAjCMYUBzHkOK64BEICqklnak4sGkDflg2vaffs/bPPQ6lXdsI+e5auO2j
HxNUjFMia5mjsrq9rTu2S/ZZWM6CQz0P+IQtMLtyTCSYQbiM76VUmTbMl7uHCUKp
hXA93JAmVqVlX77UbKIdwT/26sDvzmsybSJC/FqXtlWUD97lHAj7Dz8iRCUKzjGf
NBqntzbsEGDnQIq4RVSvI9Llu/UXQzXytVRF0hM5/11Mb01DoeCiCAYLhjqd2Ioc
TX44cF4pHhqxi16Hmq1D45pdN4Alc4RkZkErT/wnK/yQTUc/dmY3H60y6mFMZQZG
6t6fzyVojV2Vy+NR9Z9Zr54qou4mK7nCH9BcNVjpjh2yRgS3Mq9wjPsBG+9PLq/2
ZzwBLAGtA4wNZHo6gChTY9YTN0NfCTknRDh2vNDavVaYh5QEc6AiBqrxBxxTCbRD
XU0bDFIL7AM0hsgu46H6cItDw+m1sVqrCUDbK7rF0x3RBE4kqVTu+Bz8e0gHCKBN
SD3N88oGAo92LIrg7VAQGo2T1zaCCfIf4bSXVu7i/8vKR7vv7opu8kcogncc83AT
OvelEFTCk7AFO6rJ3wiB479Ctn+pPGXOy16jibjh4tDuEVKFLrX/BY8fWzo79R4i
i5dZDp6Q6AG+YaPQDK4SNFs4UYwYe5SAPAyaVeEWiHz0U5sTQ6s=
=9UMi
-----END PGP SIGNATURE-----


--=-=Jh/pPhNRedcWyy=-=--



--===============6488074711459681971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6488074711459681971==--


