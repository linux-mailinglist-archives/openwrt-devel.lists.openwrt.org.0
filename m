Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ECAB2F98
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 12:41:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GmoeiHhJudfbnsW19sgADQy93njKrCWPJdd+ZLqDz4A=; b=hmOy3z/S8o/4DxJ58zTWwAvXz
	OkzNQqW9WhYQdmPagQOcLNcqqTBz6+7OcOwq8+54yur/33bqegIzOne0VNz7ZsU/IKeYUaZupmo2M
	QYyTMmfQndqKkGWyYonobSy66rC+sMOb5u1sYQhQJwmLZ5hwyQKThdVof8EWg1L/FmBpDgqDjV24S
	Bhipz+33kByVucbyWuw4xZvDKh+MIDHHHYi1OD0tdJdo/ywAZBGfo2xxYvUjQjU3umsYp2AUmu1p2
	Sb1f3V5OTZ484ZCeX8NVvChIu9q9TLOSQbbC+9gEXnhdHYweU3p3OnboMXfEjgRbrIeeNEUbpA5Ux
	hIIWDypsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Rxx-00039y-Vw; Sun, 15 Sep 2019 10:41:13 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Rxp-000392-Cq
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 10:41:08 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MUXYs-1hj9fM3lFQ-00QTwA; Sun, 15 Sep 2019 12:40:49 +0200
From: <mail@adrianschmutzler.de>
To: "'Jonas Gorski'" <jonas.gorski@gmail.com>,
 "'Paul Spooren'" <mail@aparcar.org>
References: <20190823090237.9471-1-mail@aparcar.org>
 <CAOiHx=mT7i73+=B-_OXQD4SUHpd3goAsGJoaFncOKcFFqKgrbw@mail.gmail.com>
In-Reply-To: <CAOiHx=mT7i73+=B-_OXQD4SUHpd3goAsGJoaFncOKcFFqKgrbw@mail.gmail.com>
Date: Sun, 15 Sep 2019 12:40:46 +0200
Message-ID: <006601d56bb2$09c12020$1d436060$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJFqxXwgOdtJa8XENxPDb3FZewp7gCK7n8Ppke0WUA=
Content-Language: de
X-Provags-ID: V03:K1:cPqxj61U578sVELZHH4avCM+P7zfvIC3cSPdF2atKTVBdJsZf+K
 MDXHX8+Ze63Ze6VwfE/wnOVbjNUfp0Sosp7ouFgT5dukG/3Mu57Np7WF+NMjIeDLFZUtF3g
 +3pDyZj9m8NXYEdKpXwK0jtock2RW+nNumdfLQEtVnZtUFPV3pOiKSVfsPOxo8pbJvR4OBS
 z8gJrvsGaLRvlqztdKjQw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vYai4lk8Roo=:1D+zBAtgVthEcItl56JRrq
 7BJXZE47MHqvkWz2sa5CXAvDryArM+owQ8MqPeN4uQPZNGTuEPXXi06Gs1QCWphhjiFvjKJ60
 had5517R3xiniE49aU7Kw8pOxdq5FQVeFHWMw9ola0aSKoySjCL3epCy/AkyXPa4n1Udqszx6
 EQrogFSEEuTy4YEep/X1lSVykOz87EaL2TydB2tf09P5MnDKiJna8x+RG6eY0WXj8YWzabIrT
 nMZKif5Lud9mSF9lGC3Ogfj3b0USk0X0nwMSyDWgoR7VVA5TpNGlbbz2aoEdHGcvfdXgbqFeL
 IzIVf6++MjD0vWfO+LOcg8qn7ACFz8dTW1OmDuS64NkBPWNfmmi9ziFx8/UYr33rRYkXjzayZ
 32ekfq9EJVCehjUdFERKBGFG0LrufpNHNhT6nedqb2Hyt+wDwgYzT3bmLVXl4w57rMS0I2cok
 f570zQ04D/FKtlZv1QFCi/NBzcwxDLSb3F05sBDWFTt6PmyTN0WYzQedM672c+/3zU2Ad8wLQ
 97AprsoNOHFZRDYhQarCHBGpUBr08o+hoKfG+B1jhO2+6MVy22jR1gfdRPlePqfGFA3z3Ykfl
 vIFf08PrWeUxQCNxAs6Vss0LiwbUEl2nLR4CxADOt1sl/q9hZIG/RKOqGRJABnPTr7FlRhqoe
 T6MKytDOIo0T6o7+LnLo3ZSk9SebiFCvh1BgZLCNe+vcFiD3OkHwCUIgeIiTbBEBVHhvUPz9z
 W7j4hnFj5LKPJwS39mJ+tBgDHwqNaM5zrXZkIEU8BkMUDyN3NGqJeHFk6kfufVQNJo1bgd7DV
 fjfsnKMdSXgKv79d9g1SdKL6at4so2nUFTYhhQbOZY9MAYAyFEbdmzqLine6WSbk7ji9iNU6v
 G2kGOE10eJ7+qsb6uVces6PFmItmgHuWpuNV680W0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_034105_741858_7CB1C917 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: add Generic subtarget if
 missing
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
Cc: 'Sergey Ryazanov' <ryazanov.s.a@gmail.com>,
 'Tomasz Maciej Nowak' <tomek_n@o2.pl>, 'Roman Yeryomin' <roman@advem.lv>,
 'Tim Harvey' <tharvey@gateworks.com>, 'Luka Perkov' <luka@openwrt.org>,
 'Jason Wu' <jason.wu.misc@gmail.com>, 'Alexander Couzens' <lynxis@fe80.eu>,
 'John Crispin' <john@phrozen.org>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Felix Fietkau' <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============4054314757201196272=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4054314757201196272==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=Jq5lIhAUx7qlRo=-="

This is a multipart message in MIME format.

--=-=Jq5lIhAUx7qlRo=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jonas Gorski
> Sent: Samstag, 14. September 2019 11:54
> To: Paul Spooren <mail@aparcar.org>
> Cc: Sergey Ryazanov <ryazanov.s.a@gmail.com>; Tomasz Maciej Nowak
> <tomek_n@o2.pl>; Roman Yeryomin <roman@advem.lv>; Tim Harvey
> <tharvey@gateworks.com>; Luka Perkov <luka@openwrt.org>; Jason Wu
> <jason.wu.misc@gmail.com>; Alexander Couzens <lynxis@fe80.eu>; John
> Crispin <john@phrozen.org>; OpenWrt Development List <openwrt-
> devel@lists.openwrt.org>; Felix Fietkau <nbd@nbd.name>
> Subject: Re: [OpenWrt-Devel] [PATCH] treewide: add Generic subtarget if
> missing
>=20
> On Fri, 23 Aug 2019 at 11:04, Paul Spooren <mail@aparcar.org> wrote:
> > As in 853e4dd OpenWrt should follow a unified structure, where every
> > device has a target/subtarget combination, if there is only one
> > subtarget, call it "Generic". This introduces predictable filenames.
>=20
> If it's about (I assume generated) filenames, wouldn't it be easier to ju=
st use
> "Generic" for the subtarget part of the filename if there are no subtarge=
ts?
> I'm not really a fan of unnecessary code fluff without any real function,
> especially if it means additional, mainly empty files.

What you suggest is about what we have right now. This kind of creates a mi=
sleading situation where for some targets subtargets are present, while for=
 others paths and image names are "fixed" in several places to include a "g=
eneric". The reason for Paul's patch was to get rid of the fixes at individ=
ual places (which was/is applied somewhat inconsistently) by just making al=
l targets apply to the same logic (i.e. that there is at least one subtarge=
t).
So, the empty files are introduced to make the process of building and crea=
ting images afterwards simpler (to follow/understand).

I was suffering from the same problem when I dealt with OpenWrt-derived fir=
mware, where I suddenly encountered a target without subtargets and had to =
implement extra code to work around that.

However, I also wondered whether one couldn't code around the necessity of =
the empty file, and just add the SUBTARGET/SUBTARGETS variables here...

Best

Adrian

>=20
> Regards
> Jonas
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=Jq5lIhAUx7qlRo=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1+FS0ACgkQoNyKO7qx
AnATLRAAiEWWqmXp/lPVsZlnQjNpuGBkWSNHhLROemwXi8FLgW2Uj7O8GEPXWKX+
dTj7EELgV4jLYVhv2TTXKo7k6faDVZSH7nml5K4tc3r+ogCeOA4+dP9+MP/VS6Uj
WQDjh9X0EuJ1DOA3HrOgSG/p1WS236YCxr4d35yoIm/55F4DPLycMx17oAZX0hYu
6zutniw+7P4n9WTrP4XaxrpQbu1FP3plz/TXXO2Aod2o8k0CZBasPvQzu1ccpWqB
EdVmFCoiRyhD7O7EU+x3Tp43YS/XTi06HcM5d4V9u4W6aKufyHrYVToXg5Re9kUM
nq+B93HY7WHltpCPIjih9GhwGwdr1PgShSM6+tEgMicmOzoeG8Gc8F3CNyo2w0jS
rjv++4hnpzd/sr6HYbaAOWMgxj4GdR1skW1JezAG79cEPGkyKf1q79IqGhpUGghG
+0xsp9FhKW5DBVHCuAIq8v9JOo+smAFJaWjGSC1RF1BX8APzhTb5N7sY+Uxzcb0s
kqr8YuJ5c/R+rRiR+AZCNlWRKK0m11QfvqjSbrZbPnnEdmzXk+4wT+SC/Q0fTBFe
qWFaU4Am3m/GynzevZkYRycynQiKJV/sPJKbfo+ee1KsW8RatrZRAxc/s2klBX4m
/8vWy8CPutOgfOUtR027r4EE9S4jJAZzJS+cNwiuv3jMXXh80nM=
=t9tH
-----END PGP SIGNATURE-----


--=-=Jq5lIhAUx7qlRo=-=--



--===============4054314757201196272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4054314757201196272==--


