Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0116D9A043
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 21:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PuRaaWOK6fWDApbdMLosRJiqQ+IrJ/rRQYKaQKPsxkE=; b=FCbX5M5BC1w8p5shjz4cJVJ7/
	WbbmwbH4VSNpCwLxuk02Y0SU5WU8XsTINoBwfFKyLsLH3OA9zJd5s+G4gCzcEnL7ncas01D61bShF
	OJ0YKqY2UWK/OUxtyEAoc0z3hofFIo9rsB6t61aH+ldM6d+Vo4u6QR31IPohkpw+gIAAnMVhMnXlR
	gZ6CECMsYx235c8DSH4n7Mw9nx/LC0ewTB9Qp9r7uYwMpehwkvK6VLDb8E+k9W6VkRPG5fnCvIUDl
	tPNGgJZEw9Fsj+5H4wIG/FivmEkl3tKXJmYdPXZoQRaxOwPin6DM56r8m+6YbM90+IYCnxc1g5twE
	eesaH9yIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0swu-0004ai-J3; Thu, 22 Aug 2019 19:40:44 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0swl-0004a4-2f
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 19:40:36 +0000
Received: from desktop ([188.193.174.123]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N8EdM-1iMez90cgi-014Bdh; Thu, 22 Aug 2019 21:40:31 +0200
From: <mail@adrianschmutzler.de>
To: "'Paul Spooren'" <mail@aparcar.org>, "'John Crispin'" <john@phrozen.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20190822005924.32310-1-mail@aparcar.org>
 <40b56056-3fc8-931f-81d8-97e3b78d6004@phrozen.org>
 <1511b4b8-335c-1863-3c45-0c46a3fd3d61@aparcar.org>
 <770d1eb5-f4de-bb7d-dadc-2632af7f5084@phrozen.org>
 <41fade4a-4c0b-fd6d-1f35-1d084a6f0aea@aparcar.org>
In-Reply-To: <41fade4a-4c0b-fd6d-1f35-1d084a6f0aea@aparcar.org>
Date: Thu, 22 Aug 2019 21:40:30 +0200
Message-ID: <011a01d55921$752a7fd0$5f7f7f70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKIP7cC6wC/r9MgZSlLfvbP6KUeaAJX7VpEAReOPk4BVYINdwGc16sbpW60GNA=
Content-Language: de
X-Provags-ID: V03:K1:/aBxVSpsVirQI6srKWDTEEv09RInkel+LUkxVFSuES5sTCcE4C9
 H1flLywTFlESP13bRBC/cgK0rb4XhlF8axo8UwcNrjmddICn5oa/dMtbIiezNSwm5Cds8SJ
 CMb+UtUZ/D0zOkWaCgea1fo9qCKYljCABVlNB9zfMrGfp72hFVt3yk5fKHuZcZEf4pmYaLa
 152NAFa53ZIBe98iSm6lA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QLDEJJg7AGU=:VJqE1opPW90l23iZBLhqik
 tWYpUwgGB4g36bGvP2ttlcvtYGNBdr/3QuEuzwVma3xZTvnIGlGWyZ1V52P8tLeF6meumRWcf
 gVhkOeWpBo0TN8dZ+HpF9dfcWh2jMipz5m0RfsmX2LjwkbRgl4uBzDXpyMkdoEFjN3Q78TyqO
 Ju893uaCdkLBanWKkknjEV8dypa2MmTcDbbkQKmYwT6Uqo1410qHcD692TGeUgMSQds+6wXEr
 VFkTLGfeSXzTOO2wD+c5shHL60mMJZkGD6aGylgj8RvldF/0wjPvK6J+JnRtDxQhenhUkEtFH
 Nap1MjB7NSPCnJw90mXDpCRe9lAxxDR0uOQZw6mmG3ri/4dkCwviPLo+ou8TFU2/RYLWgh3ap
 0bvx+62L5z1sztFXRH46UyPu12/I+hzrSuMNtHKJs/gTwg2hVkxLek5Eaoe0dn17J+XcAUe6T
 m0I+cxu1Y2IEtEfotP8Ur9qH6kIKr9jv9Xj37MSg3z95R4hyxY9l6yyBfaOyGJMIoPg7wb5f3
 W2Xdv319+ka0FV2sk0J6L1qa8Yf+CwET4k16Oy2BOZgqRsGDGqu2uanPElfbkh9L/o4010tNB
 27u9gvW5RQpszEH8hgbk9NpedLZtIWEPZbRG68n8rJvvKvHWqJRlL4CI5C2yBAVjONQ/N5grk
 FXGJpXic2MEmhEwzFMMXYNNVtojiKyCgFZ+FhVwfpuza3441sEovy0AV5WLnupBVuYKcTt5he
 lVvvokqTfiJtqchEj5FVR3Fg6PJhQwP/x8rOsjt9Rc7GTIw0jAwbrSeh87U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_124035_409592_242F12E6 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ipqx0xx: add Generic subtarget
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
Content-Type: multipart/mixed; boundary="===============6447467772867495108=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6447467772867495108==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=4rK3DYZKOqKCEx=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=4rK3DYZKOqKCEx=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Paul Spooren
> Sent: Donnerstag, 22. August 2019 21:07
> To: John Crispin <john@phrozen.org>; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] ipqx0xx: add Generic subtarget
>=20
>=20
> On 22.08.19 00:11, John Crispin wrote:
> >
> > On 22/08/2019 08:47, Paul Spooren wrote:
> >> Hi John,
> >>> This commit adds the Generic subtarget resulting in consistent naming.
> >>
> >> and
> >>
> >>> already uses `x/generic/` as subfolder as if the subtarget would exis=
t.
> >>
> >> I'm very much in favor of consistent names[0][1][2] as it reduces the
> >> hassle when trying automate things, like building images via an API[3].
> >>
> >> Is the subtarget causing any harm except for eight additional
> >> characters per filename?
> >>
> >> Paul
> >>
> >> [0]: https://github.com/openwrt/openwrt/pull/2330
> >> [1]: https://github.com/openwrt/openwrt/pull/2334
> >> [2]: https://github.com/openwrt/openwrt/pull/2326
> >> [3]: https://github.com/aparcar/attendedsysupgrade-server
> >>
> > dont really care, just wondering why
>=20
> If you don't mind please merge it, I think it's the last target without a=
 defined
> subtarget.
>=20
> Paul
>=20

Just to back Paul up, I also think this will be helpful, as we just have on=
e special case to deal with (i.e. targets without subtarget) less and it do=
esn't hurt much.

Best

Adrian

--=-=4rK3DYZKOqKCEx=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1e76kACgkQoNyKO7qx
AnBXSBAAvIrv17f2VrAMXBAakF+qaIuiWXJXvJpGxQzbGuuDWDbuS+fnBxYyihLu
8d5HuOCdpjBN7g2A4P0T2+qx7HZHS6I2T8YeqPv1zrM/L/tcMzgfOSYSQM3jPYfz
/CeBWYlfyrTl0GY4pHWzM8T+9PzHZmijaZV+fpnZSIeDeKqlTvuWhQw2PYksNOHy
kbv2XhKr762Z00kRyKMaPmdbrTn5iKGemPlzBB1LIS32LrHek3jds1UCda/UQB9/
bPogNV8F0WLKV1psxyqeRNhSJFbPS+nmNuHgngVJKMEia2XvlfZdRrnY7gMWLHti
vDH0VCRB+abPWwwHJzSEh/U4aa+WceU2buVR2FBoLSS2M6wcZAQrFPbmsphYbVCL
6+DTaK0a94sosRJgN6k1es6iIa4KDcupB9zsIePIO84Mf7fnZazb/D5ifn8e9GCd
WBJszYJYm74pcxQebPz59KB646qfomy3m4vm8Ufx+L8vKDn6MRVABgd19DUZYbJI
oW4wwyWbOmJWJ6VblaWr1fjJ2JG7uZdIk7D3TFb0l9IWy/GEL9CBK9rqC3DgIh8p
IdtBEl+jcQ4bXn2iSBpcvcJoAoyk8o2XmrYY3APGyeKTZDsDjOGTOLXjpRa3aUVD
UX+0UTB+Nq24lsqNNRQGAQIDJdcAAZDIsdsDoabl3vSWw6n1xm0=
=7aQX
-----END PGP SIGNATURE-----


--=-=4rK3DYZKOqKCEx=-=--



--===============6447467772867495108==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6447467772867495108==--


