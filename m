Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32247187251
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 19:28:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bS3HIfEPJmegD+/BdFkkpLc4S5F/p1Lf5VbrhtPuP8I=; b=QW1wPhtrpAhufrztjHOSCJ0ia
	gRQ8H7KhdU7tmIfyRVYjHyEyikb0BL6N5tOuhxhdiivdYWTJ8CwIuW1UN26PsDgzaYccEQH3Lv6k5
	iJVHuGY7ZFaiOuIbvLjfg49d1O+51zxxEgPaiNCOfNZzgbJvcFTduoNaT2Acqct5vuJFBk83r97oO
	AH82gpyeYsAcjmkRGm2+Z5fhW0xjKnLH1vzmwq64i5XrxfO4fiQotu2Tet+J0S35vrXD27fx2/lP4
	i+tQ548IRooQZP0v18t+psNIEqSZfF6WCRMFsHtN/s8xmJifoNyXDr8W+XJw+cf1stwdsGcgKC1ht
	MaoriURbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDuTS-0005Ae-E3; Mon, 16 Mar 2020 18:28:26 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDuT5-00052K-I1
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 18:28:05 +0000
Received: from desktop ([188.193.174.43]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N49Yn-1jMGIi0jk9-010531; Mon, 16 Mar 2020 19:27:53 +0100
From: <mail@adrianschmutzler.de>
To: "'Luis Araneda'" <luaraneda@gmail.com>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20200313032313.383555-1-luaraneda@gmail.com>
 <20200313032313.383555-2-luaraneda@gmail.com>
 <006501d5f92f$3a268600$ae739200$@adrianschmutzler.de>
 <20200313121336.GA56199@meh.true.cz>
 <006701d5f931$6532a7f0$2f97f7d0$@adrianschmutzler.de>
 <20200313123430.GC56199@meh.true.cz>
 <CAHbBuxrYNf_q4juGQAzSNAw-Z+YbCTPz30_5_GPK_=TTbZ2i2A@mail.gmail.com>
In-Reply-To: <CAHbBuxrYNf_q4juGQAzSNAw-Z+YbCTPz30_5_GPK_=TTbZ2i2A@mail.gmail.com>
Date: Mon, 16 Mar 2020 19:27:52 +0100
Message-ID: <014401d5fbc0$9b1cdbb0$d1569310$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQJZT1RipxLpYczUcqYHkhfaJgx+ZQHtN3mJARX3smIBlIP/EAHz39t9AiEmYFQCGwRMaqbupF4Q
X-Provags-ID: V03:K1:FrnkrFSjHl/iF5MchixLMq4hV0uOPsshnZ/la8iEj1iDTTnpPfI
 caEgcbfwjssLZXNS/lGPwDbHgWVafwar/35QpnBtPKKAyDWTyGzipAwcFxO1TEcVQfABUzS
 BZrol0oN4dMXKi0opTFaaDOt63k2Zo01KWx5Yw1bYqcGzykGqe2RVP7GKByBJjLpyvghDdg
 oN1kM0DXMRBDhP9VFFXxw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pw+54eEhhSM=:YSAu8rn4XQG+IP/kn+d7JG
 Ie7c46eSuh/ACTozhkIzP+UMKvag/lpcP9Ruw7HBtjjR4P0kj1yC1Rv9uElZ+4rOrtj8iTGeC
 Do/aYt+DcSP/ySil2PJOJmA/WUenywGrBxMVyEL0LHCR3nY89aMuF21Nlc/0lhS3buqDm1jEJ
 vvN04/rNiuj5jiz/VghNS8o88OnlFvYjP+wrvvAKY9qNu/79/9sJKBPSXPpq8T30lIDl0UW3x
 g/IJ1sCT8N0KFofn5dCW18aXsl199NVneFqfFNKN4GMcjVqr0r5aEeD1Z18NwvBb5jrUKoP8c
 qshTjatq4RTtgbQxBYJMjmrjz/mYsnDKm4eDTVt6QLmPcwfHcWIdkC3Iy9zxsTHt04tHRGB7N
 XiMCDXR9ymSGGIwyoqWxN+3qJ+Ga5Jv82pkJcVMt2t9jH6CpFQcE6TE/oIOcKS7taBunNSJ5e
 z0yI0Hg6CklZO3G4DAH6s0G6q16XS65QKM7gW4XQoKMdIsJTvYiELAA3pH2VuqT1JGaS97RYC
 YqdOu9VaoML0zLiFf8vt5lJfG07D8Lsa2DHYsXOykff4jOPlt6bvYRDWoD9rziTavocnGyS61
 gMosR7jJV/zBAPk++lisuc3zbLbNIshyrQrpsEarLaNPpgJxPBAMV0FTTcnkYLeBKTJNJ4aYN
 p/BlY1g+LbSVXGS9YkEN+EMTTVvXgwx5Ra6626QumqaXZpXZz0HehSzwgrU9MGLh9+Nr5Y8B9
 oPkNh66VQPVE99frOYrhWCG85LcVdRJETiE3OmkmyQlmiqPcGW3IavY/FUh3YtcRklPFwk6x2
 igFFB0EVGUQ6hspfHdAn78EuR985cqUEvCFn4EUvmRy5XgUfanXx3D/yD8HLr/kosVOMvEt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_112803_907133_A1F5D2CE 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel 4.19
 to 5.4
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
Content-Type: multipart/mixed; boundary="===============8854520078683741002=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8854520078683741002==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=sCUSsUpw2DvjVB=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=sCUSsUpw2DvjVB=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Luis Araneda [mailto:luaraneda@gmail.com]
> Sent: Freitag, 13. M=C3=A4rz 2020 22:51
> To: Petr =C5=A0tetiar <ynezz@true.cz>
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>; openwrt-
> devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/3] zynq: copy config from kernel
> 4.19 to 5.4
>=20
> Hi,
>=20
> On Fri, Mar 13, 2020 at 9:34 AM Petr =C5=A0tetiar <ynezz@true.cz> wrote:
> >
> > Adrian Schmutzler <mail@adrianschmutzler.de> [2020-03-13 13:17:42]:
> >
> > > I'm aware of the two-step procedure (1. copy without changes, 2.
> > > refresh), I just read the message in a way that the config was
> > > refreshed _before_ copying it?
> >
> > Yep, Luis did exactly what he described in his commit description, he
> > really refreshed the 4.19 config first (IIRC two symbols refreshed?)
> > and copied it to 5.4.
> >
> > That's probably the pedantic way, fixing first 4.19 config, then
> > refresh it for 5.4, so the diff for 5.4 contains only symbols related
> > to 5.4, not to 4.19 cleanup/refresh.
>=20
> That's exactly what I did.
> My apologies if it caused any inconvenience, but I thought that an additi=
onal
> commit for just two symbols (one removed, one added) was not necessary.
>=20
> Please let me know if you want a refresh commit in the future (next kernel
> version?) even if it just a couple of symbols.

As Petr stated, you did everything right, I was commenting based on wrong a=
ssumptions.

Best

Adrian

>=20
> Regards,
> Luis Araneda.

--=-=sCUSsUpw2DvjVB=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5vxScACgkQoNyKO7qx
AnBkgxAAmEvFV2+SC6eozAaw8/0d+sDKx3RYEOuejIWGhGREqnIPQU4vEV6TW/q+
OfITJ9Dzp1DBPTaUmBcrWkm5UP5UY96m9N9bCIVk+P9HmbvjhH2diWUWglkEBKA7
8Kt1jKbwVwIABD8hJOra8XMCvD5ixy1fkeFxw16GWIah0j607aGFdsGlVcbzAVh+
P4dgj3MLem0PIPEOuACEXvbXWoKlkTDtNbVZyn0xS8d/PqGCz/ii919YYJFNgiQU
FgfIg8xX6AUjii3tmbGkvhYlfLrQmKq0oTD+DsGw4I6n36H97xClJwRo0/Rx7LD6
k5iYj0fIYj2z5tSN1Xg5/vRM4T+o0ypQMMYuCnC0KO7oA0pA4lgOHzeNngfoJdth
sXggakXDkJbvIFGhN63r9VNQUXHBoz8yopUb9OP0ct7OcWtqf3fvgeXZ+6cyTl0j
AuYUt7K6QX52hSTsqzBm0Eje+WQ+HLTL5EnzYDKMG0VAuiX3CKV+fTOqOQZ/N6bT
1js/SNayKcJWbQH7Vi6U4oaOAkOpcPwSuYlvgqnf2kfMVAMNa2FYpdagXQ+nEnpk
Ts74M18dLmmBWREy3HD/gOoGAXzGHR6Kie0vovdFnAvguj4lUcaJc6TPZVsHH76k
WsL60ollA0uRGtgQBA1BadwlFRkbGSDdnEfy88FQkEiHuMSuTv4=
=Wyxw
-----END PGP SIGNATURE-----


--=-=sCUSsUpw2DvjVB=-=--



--===============8854520078683741002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8854520078683741002==--


