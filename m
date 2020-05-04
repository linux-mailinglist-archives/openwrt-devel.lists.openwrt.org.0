Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6556E1C46F8
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 May 2020 21:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dkCqjtekNgmwWKYM1ifEbnlZZwP5HWZ9G9Os9YYjN6A=; b=NkN8Lfk4wYqkHFwh4Oq/kx9m2
	MonoFUq2kCbAN/oJLMJuEdoDHhOx2N7ifl7Xk3uXsB4bFiKFD9uQDR4tWN0SPe2fyE/D128RCuoYT
	aPqC0h/tWiVGeFARTIB+Ffz/LDGfqfcI9kyL5Uo+PJKOILvtXjwXSzeOIK29kpU1oR9seqU8zGyHJ
	WITHui1rhpBiUjZ613ZI/tNaTuDiu73ViYCkLFNufDzi/D4bHr4OrImQ7tLbXdAo5vR3rVrQncGk4
	zL1JIpMYfMR0PqSxlZY6/AC7BfpV+kHheVWmNazIEYidRvFxQ6FEIhTYeFUip39rjN3gswzV5rW61
	iexA2W10A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgfS-0007EB-L0; Mon, 04 May 2020 19:22:18 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgfM-0007DM-AS
 for openwrt-devel@lists.openwrt.org; Mon, 04 May 2020 19:22:14 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M5wY1-1jUJlB1xHP-007Txn; Mon, 04 May 2020 21:22:10 +0200
From: <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>, <openwrt-devel@lists.openwrt.org>
References: <20200504174855.24934-1-tomek_n@o2.pl>
 <002c01d62242$322f12a0$968d37e0$@adrianschmutzler.de>
 <71b372ef-74a5-be8b-1f78-21a4dc65947a@o2.pl>
In-Reply-To: <71b372ef-74a5-be8b-1f78-21a4dc65947a@o2.pl>
Date: Mon, 4 May 2020 21:22:10 +0200
Message-ID: <003b01d62249$4eda88b0$ec8f9a10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQL3KaEh2VB94hNBXWN3nlXBh3Eg/wIN1p5lA3xN8lKmKeXLgA==
Content-Language: de
X-Provags-ID: V03:K1:AyEbFqniDyq2qGEnEzEOHKeYmR+RWcvnxzsgpmBGzbWjTJK0IMK
 mcJtzCHZK0DSRgVkbJKwWm0tVsDshzQcyk3Nzup+MQ+sUq19OjnubQs4U5VNLyYVYwTTflu
 OKJxtss/vkXp4SYoabCsporjoO8taJPSFUIOWqQjgaTYWGen8z6U213Nlv5rvUgnkshtw5v
 bHloYahKYV2GiwW9mBoGQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:j+PIIudnSxM=:hPYUbu755XS5MD2Sdyw2DC
 kZIR/+5/3ww6qBcnffjcutkaxC3JJiX6yg0tuO0Onv58rta6ycNYp3jeH0YdaXuYeNqbwmHso
 6YvG5Zmcyrx1R+kKLTlQC4YY0+x0phcHGN632LNtvAqMDcbzDpAgGxRbsSOrCIVfeJXFsbZBB
 qjIVI7nikM+V7QmCCGlEUxM6ADlfTzAISQGpqC3CtgM8aLiLycO0pQfTt+QVoiwqaEUWNAIud
 kS03KT5jsWKWFT8PE2c4lMqNzl02J6o6KamJp6QJQ7R0QMXkuEw1ebS7wAE9c3v1sMvUGxLX5
 oHy+XJ1kG92OG/xsH1QIa612MXDY11++bw8+wYFhdYRXgz7Rss5gOJhiZ2wSXzd35+7auHbNX
 1ZkWL2RVuo/rmi53USFiYHjeTaUMEuBCp4//FZqJkC9fy2vBhBrqXRGbFjBcgcn2MQJUO3dLa
 ocLiuGRUyr+NvkjGTNOsfNlPcappd5FYs9laIFG9PL7dLp6CseoNuAoUtN9xTKLSu0iTAul9j
 B0l4MJBa0tuUzXfOjHEQG8u1X2BrVs/LYCcxDhuywrec7DJwmjvTJcl7/S2yeLwF7J02aRZ4M
 zlfJUvirw9b4AJ1QFxy4oU6GtOddTFLnxl49HyNzv8UzjusygAahazKaH5s4CB2yzDG2cEe7i
 3kB4rDvauHccX0LQFO537COtPGIBliU6TYLNpN7gYHgGfhVfDxLTzkRxkSxu+r6SCvS6LsxjK
 XbHjTrSgCyX4olpwtdL/tv4WmPMN1pIfaf4VuVyLl6+9wUBU6vjDwOvbGQb+WD2GAufoCHVU2
 WlwLeSXx6bWugh+iKCeiM4ksbnFhzMqv1maRIdrSWC6nnkUmP9JtYt3oU4wnbrWXGgQCFqD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_122212_655293_9488C8D9 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for Sitecom
 WLR-7100
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
Content-Type: multipart/mixed; boundary="===============8393869588386271660=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8393869588386271660==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Ohwc+ZxfiliMb0=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=Ohwc+ZxfiliMb0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Tomasz Maciej Nowak [mailto:tomek_n@o2.pl]
> Sent: Montag, 4. Mai 2020 20:45
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for
> Sitecom WLR-7100
>=20
> W dniu 04.05.2020 o=C2=A020:31, mail@adrianschmutzler.de pisze:
> > Hi,
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of Tomasz Maciej Nowak
> >> Sent: Montag, 4. Mai 2020 19:49
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] [19.07] [PATCH] ath79: add support for
> >> Sitecom
> >> WLR-7100
> >>
> >> Backported from: 1bc921f419df508c57dc07cd3e43cdf0408c17dd
> >
> > Device support is typically not backported to stable branches, unless y=
ou
> have a very good reason for it.
>=20
> I see bunch of devices added during rc phase and after stable release, so
> what's the truth here?

Okay, so you want the long answer:

In general, stable branches are meant to only receive "fixes", but not "fea=
tures".
In that terminology, new devices are also considered "features", of course.

Backporting a device from master (or reviewing it) frequently needs a subst=
antial amount of work and care, as it is linked to several different parts =
of the code which all might have changed in the meantime. That's why "typic=
ally", device support is not backported. This saves a lot of review time th=
at can be spent on other stuff that will go into master (despite, if we'd b=
ackport devices to stable on a regular basis, it would defeat the idea of h=
aving stable branches).

However, as you have found out, there are exceptions to this "typical behav=
ior". In a nutshell, an exception is made whenever a committer decides to m=
ake one, and invests his/her time to review or create a device backport. Pe=
rsonally, I tend to make exceptions in the following cases:

1. A particular device is just a stupid clone of another device, and backpo=
rting would complete the family in the stable branch (i.e. add WDR4310 to a=
th79 where WDR4300 and WDR3600 are already present). Reason: Quick/easy (be=
cause clone), benefit (family complete)

2. I have backported a device for downstream anyway. (If I've done all the =
work anyway, there is no reason to not merge it so others can benefit as we=
ll.) Reason: No additional work.
Note that this is different from merging the device support somebody else p=
rovided: In that case, I would need to review it first, and reviewing a bac=
kport is about the same amount of work as needed for creating it in the fir=
st place.

3. There is a strong reason of any kind why a particular device should be m=
ade available. (That would also make me review a more substantial support b=
ackport from somebody else.)

But as Daniel stated, backporting device support is not "forbidden". That's=
 why I wrote "is typically not backported", as it's effectively a matter of=
 perceived behavior in the past, and no formal rule.

After all, you just have to find a committer who reviews and applies it. I =
just tried to express that this most probably won't happen, as other commit=
ters might follow a similar reasoning as discussed above (as experience tel=
ls).

So, please don't feel pestered.

Best

Adrian



>=20
> >
> > Best
> >
> > Adrian
> >
>=20
> --
> TMN

--=-=Ohwc+ZxfiliMb0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6wa14ACgkQoNyKO7qx
AnD0/A//WpXxechHb4JXuOMyICHKunFyzb9XfNssU7z8MlNEVnFVbi23zwX35utS
TH4GO3YG8qAV26d7zz+5OiITva4C7VC2xJjlDbD7AWzWsLoV4OyQ943oArjGPTcb
NA1YEm5xaUxxXh/nybqneLTxajGK8Nd8BTn/M+i28F1o5fVWXGEAknJZDqvWeDws
j87vA00gimCVaDxZ5ISQ5nXeaXcecjC2Rz99hK1uO3neGy7NYhzr/oGOIOOoYYbI
DK/RXsyrGYz9R211jv0u+azTWhhbcG2RTDlmfHFRsfNlxPB6vmWZWj3G3Vuxl4KD
c1uEDZSaZ1tnT5rEWw5Rf6yJJmU78HuiC4pY4rJZlKHmyaq2ovktSmJas/7D/PVT
XLzNsuVtbHtm6zb+ap99s6thlEbHdCqF2NjvgBz63oPsdzlCU9sboVDQ/hHCmLrN
MdMzdHNbZfKE6RN9zA9RQVsmr5DKaOHTPkFnbpa/Y4yROMq/SpPHVQksljNK34CF
NXA3C8P/TX7hlOHzYvf3y/zdMk4t6z8U2kPehl+DGSzRGX84Rb2XkNXSiMZthvCj
WrYbpPbJT44EFHd/HxwzBTkdfnJCMxOmdNxgF035kJvpOHmxgcSYrWdZbf5ciVfL
ai2wwjH6y7h9f2n8hzpWHlqps2Fy25hxCkm8G7l/F4pzmhGWWLw=
=hkAG
-----END PGP SIGNATURE-----


--=-=Ohwc+ZxfiliMb0=-=--



--===============8393869588386271660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8393869588386271660==--


