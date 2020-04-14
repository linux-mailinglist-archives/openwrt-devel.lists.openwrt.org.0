Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC50A1A788C
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 12:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jhIG6MMdnxkGmFkDcWPDjC56+MNEwBBkXWwEADW90IA=; b=gTSNZ7yfWtzL5Q4F8t5/+5zF1
	4Ky5UKUbJhT+r9gEiE0qrdygbAiPh1xiM7F4Kc81kDseVf0ANxdZrRgBYC3Zv6f1Dp35fuhGkSLxc
	ofuHOmYdv8S1SMoobT1W050mnYWgONqV/b31LjTwLkNxsK9YpUG19ge089LugfevvQTH3lufdJo6H
	gpighKeL37JvAv+bjxBNzCys8RPpyO4lDzLWUiB0P0u58WE/p6klbym4RFznbbHyyoCzbFuXPfs2R
	7epIwSWIN4pbhf3Wefa0m/gFC1yTtjU8WUn8y/rhXAIiDB/hmPtCyJIvxXCr/a0p1eT43QkgTGtu5
	6WaN6ZPhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIwc-0006db-4n; Tue, 14 Apr 2020 10:37:30 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIwU-0006d0-LJ
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 10:37:24 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N8n8I-1jAVS51f1S-015s8t; Tue, 14 Apr 2020 12:37:19 +0200
From: <mail@adrianschmutzler.de>
To: "'Chuanhong Guo'" <gch981213@gmail.com>
References: <20200414064438.1172618-1-gch981213@gmail.com>
 <001101d6123e$e3da86b0$ab8f9410$@adrianschmutzler.de>
 <CAJsYDV+g-Mj4NVeXPVJbCuZq648iDTbydvwNNNMp5Aw=fHHSSQ@mail.gmail.com>
In-Reply-To: <CAJsYDV+g-Mj4NVeXPVJbCuZq648iDTbydvwNNNMp5Aw=fHHSSQ@mail.gmail.com>
Date: Tue, 14 Apr 2020 12:37:18 +0200
Message-ID: <006301d61248$ac71c210$05554630$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQISpFEeq2hra7qghCTmY1pDLce8nwFLT4jkARyVvqmn7AfewA==
X-Provags-ID: V03:K1:wwcZMEmp3ta+hBEjfv8SUGWrAZKh1NZKHShtPfhN5fl8t5E7agc
 2brog5elHgsIK0npanHFjncmJX72i5trnpQRykTIDR/KfZhMIHlKagUneYT1C9oCbpzwDr2
 yH3ODyaeOg+6Oe/aGCX90kuNrEJpDz6Ow1GkW36klyV+2OZ/ah/00mCENpn9K3YHbrtFgBm
 Qk7CaqVidK8M0x60hS/8A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9ZCE6t44LZw=:avvma5lSHRUrUxfKWQkibo
 rNXQQerSJEAXAAycSydUJjMURq01RYNByALLW/As61NrShk1p7S6F2HOl7vnOlP5oaO+lduPN
 30XTiSoR+IykzZGY1jXBodPtad/dGi/CmWKc9EL0SX8VOhMb2EBbhHQUVxp3k27BdO8Y2QLgE
 9g1v/r/1sHK3uyLIlKnHuaMKtnq9x59+AIKfUp2CzpTKpfwwq+AdTT151SmL8p3zbVJrKmcWI
 1EYGggf/hMDX6GXFRgdbc+8yRYfk8UMfCz3eSMcoCNUsvDE2c+WxQCeww6d7XaGJSJKGtii33
 yPGG7GR6pXEhXEX/IzQwhbKr7jvgQ0NuBoN/pfiItxOWgPydfDkUg7AQed3QFtqIsuGbAIvsP
 h1XMZApy509ixFibUDKxOVF465LcIOx+bgWXFO4zgUWOoVIN73SlLi7eUwU3fu1xiLLRXNOI3
 WVbdwTl0X7tG9DDR63Y3VXdf8Q1TrJBxOS836/0uH9HTGxwTrhYByVISm8ipxMb67wOMmpSIT
 wf+EroyN1wx0DuyhedoAJ5U/+NiCTqNbDl75YLMEqX9+4FiBdkC+4kquZXMjaKc0+01Lof9uU
 FJ+Kwf90S9WCIIVCWWTW8b/N0moOWAntvtyTJZLtDLHWW/QEdhRB7fSK3PNeURPAiy3wQbW4E
 QgefGPuZQjBeoRe6b+FjDuCmJjgyjQwQJZ5qzeHkm5H8KTEXvpOQKFu8TFFfVU8jr4xpfawKS
 uNgQOrNLpf2V5Y6PpIWnYHAiV8tyTtgAnWq9wfAe2hpndOZ/z9VU2LMt5vrja24i7gepsC2Zx
 jdLPcbYyEMk2DkCLe/HoF02Mxg/FNuZYbOYl2A1Ff6JTHw4bKyBJTpBQo/3HHg2FMsel3TX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_033722_989134_65A76D04 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader for
 all devices
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
Cc: 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5065020439139765304=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5065020439139765304==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=GyVqboTLm81K+9=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=GyVqboTLm81K+9=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Chuanhong Guo [mailto:gch981213@gmail.com]
> Sent: Dienstag, 14. April 2020 12:20
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader
> for all devices
>=20
> Hi!
>=20
> On Tue, Apr 14, 2020 at 5:27 PM <mail@adrianschmutzler.de> wrote:
> > be aware that LZMA_TEXT_START=3D0x82000000, so this won't work on any
> 32 MB RAM devices if I calculated right.
>=20
> Correct. But I assume there won't be enough memory for userspace
> programs if uncompressed kernel reaches 5MB.
>=20
> > This of course won't be a problem for mt7621, but if the same strategy =
is
> applied to other subtargets, LZMA_TEXT_START might be lowered then.
> > So, maybe it would make sense to lower that right away before testing if
> that applies. (One obviously could also have subtarget-dependent values f=
or
> that or just disable all 32 MB devices as well...) On ath79, for example,=
 this
> value was chosen differently to work on 32 MB RAM devices as well.
>=20
> lzma-loader can be executed from anywhere in memory. After being
> executed, the first thing it does is copying itself to defined
> LZMA_TEXT_START. We don't really need to test a change of
> LZMA_TEXT_START on every boards as its our own code doing the same
> thing. So I'd like to leave this untouched and change it later if needed.

That's not what I'm aiming at, but in ath79 we had the problem that the unc=
ompressed part became too big and was overwriting the lzma-loader:
https://github.com/openwrt/openwrt/commit/071a6372762d289b2fa5a8d1a138eff94=
4c93c9e

If we move LZMA_TEXT_START closer to the start, that might be an issue in r=
amips as well (though, only theoretically). That's what I meant with testin=
g.

I didn't want to stop you, though, I just wanted to make you aware of the s=
ituation. Most probably it won't matter at the end.

Best

Adrian

>=20
> --
> Regards,
> Chuanhong Guo

--=-=GyVqboTLm81K+9=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6VklsACgkQoNyKO7qx
AnAsAg//YwBwMr37ykrdAGTgUDIJP8Bo0/h3uYvB+vvS01rbMm1qMBPtkuDxXH2S
Oj3F13wAUKgTSZxaBettoKJO7v5tcIGQVKcwLel0VCVqufRzQfVDc5dk1qZ0yKIt
lL4toOnNEAwgPhrJYck0oonmpo/yWuh2yxnVwg4kUilsWkBRjO9+jSyL7urS9sSV
JR8RARK3cgOHWEpWAFATcBj60WX6vqyiIl9++kvzAV6GNCVgtgdrHarMQbC7CDu1
gke7Sz6q3kdG6QfwKVeLS6YvClCzToWbUKL9T79Q12xVxOY1Jp5Z/NfoJqwyQbnf
8owb2lEJvBfHlIV8t1FN039/iuIq48FDNX+VNG7CtvLhjL84BsBnyhdQkCaw+auj
kUFQtkfAk7NdMefAG6x1s901NQRnN3NuakiGJE/FA+9uPlMuZMbrr6AKfk3Yiktj
optRzsphkCuFAunffOkehMeyL0FaAL5BjN+FShywvxJ8xUNFgAa0/VYGnmPeu3xJ
ZhpYpQpmBH6cSBkX6ijbQOryeqDDIYEsvPfitCmijWmJwY2jD0z8UgmpyYNMAqKg
ECQvwuIqnhohFkoxGZoM34pn/Q4Wm+RRZtJvK8qfngOqWFWDk+IGFW6WUPXO9ar9
gfUGYHJdyLjy9Oq/+0tFbY0EVMhk0Ly/tyZ/LGl5K2bL+SrXFPA=
=ze/N
-----END PGP SIGNATURE-----


--=-=GyVqboTLm81K+9=-=--



--===============5065020439139765304==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5065020439139765304==--


