Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8C84F5EF
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 15:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W8UMembpwVw5lvqd4FWxBN4Cp37+XHg4XLutsvokZvA=; b=ZBu83QP1QJr8Bfz3geR1oPMfF
	HOtEmnkzvWm5x/c4oaToHAgGFI96RU6v9QfAeds+l+mkln61RqufG31hx0iuz7g+YQXY7hOI9wVKQ
	BqbIqa4Gj9heykrfOzaB3LdoucZ4iG6HMxbLmmG+0QXCbDDntlt+eeP0Jk78mITy7+V6v4Za+OVVW
	+ioE+twkziJYC18qTaqQqaYwnf0XkRSGAi2rZeWSqv2r7kui58JU/HlgAv6F+Ae32XxywdZGFF9tN
	iJtdriS0FSXTYIsXh3PSWhPDCeBx/X/k5ZahPlH6IDGAnkxF6+xQJZelxG0etAseOg8ZwdbQUIx8m
	AQvDSopSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hegH3-00040e-PD; Sat, 22 Jun 2019 13:41:45 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hegGt-0003zb-T6
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 13:41:37 +0000
Received: from desktop ([188.194.85.108]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MqZE0-1iRAFc3U5Q-00mate; Sat, 22 Jun 2019 15:41:28 +0200
From: <mail@adrianschmutzler.de>
To: "'Jonas Gorski'" <jonas.gorski@gmail.com>
References: <20190622093157.1372-1-freifunk@adrianschmutzler.de>
 <CAOiHx==j6CXNKKkmKCaMr1K+RR6Sj=VExQncOoepxkYHd1DsHA@mail.gmail.com>
In-Reply-To: <CAOiHx==j6CXNKKkmKCaMr1K+RR6Sj=VExQncOoepxkYHd1DsHA@mail.gmail.com>
Date: Sat, 22 Jun 2019 15:41:27 +0200
Message-ID: <000b01d52900$31ca7bb0$955f7310$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIXyNCTL39+8zxnNSk8TMTB/chb8QKBzt0bpg5eWRA=
Content-Language: de
X-Provags-ID: V03:K1:ncTL3tQ/O3WeC2NLFjBdAYPf2m4gzvTPZDbZBt+po+7is7I75+1
 qmKu0FZfMfJxp/ngcjRk/vKW+SWLvSFpj14vVAXdp3V0I491AOv+7mPgMBqxZwzUojCf/M+
 WiKOaoP3yLrg7Mb4iHMjOPMUee/tAgArWW5zCDOWxrXvWJ+GwA4dzQHIm5kixfJ8FigIqsV
 maAtIb0MLaREVw1rs94fw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OrgJ5dywwVM=:yQmkqxVr4cmx/FIoASVcF1
 BvnrxvEkVYnBdJk/ZvRTXIxQjs4xw5lpZQ1kFFpp+bYqWIOj5g9BFOIZy37gurKhRA19gYAau
 YDCpo08WzRvytVJxLOHa5+EGhgG2Y727l9PncoKHYQPT0w8ae7SsuCj2BB2vurg7DMT2wtNal
 LawcJizsMzFyUlJa7wlIjr8glqgTyc28Z7qCNewMvlCv73PsPPp6SaOpp9bmBJnknLpeNcatj
 LwdgXaem1o5yucypMH6p6x/WCv1YA2xcvA6iLvlg4jsBkKkY1j4vGUOYb/r+CEFA6XYn/16pW
 8XzxfxwD9ePOBt1PPTPEnMlgarMAc8Gf8+B9FHIlePVIIq1hVbFKbsosW5JdnLnxGnpIrk37W
 kazIcrgljg/Q7R3KOfDfMubLNuZQHfD1p0Z18+nHa1aJuFIoCeeNfc/0wor1YfWrVgiIqtOP6
 3a4SID27EccXrRdW6DOb2TjvRa9jA6tr129dYtodGMXYVhtgCnhbyc7JJCbwZq0dNPp1J3bXj
 pmBDgFjykWSAp8SwkH6gQ2d2kzHILxO6JANjxX0cWq4+cyDDuLWvyA07GuHWDW1u4RfeMOi58
 UJv3oXj+Ndy7ex5TZ2GWmvED0bDE/bhsIvG/tbjGuiyiZekRQcq7XMjzwVLDBEo+FRdMoy+MR
 bsFcENTBnt6/B0v3RVAqVS+ARCyfkqNjYIeMc5Ks9QN+HJUMXKXZmeB6Oe1NUWD/QXfSCZEwh
 L2TbJTguGeUC4jEpdzGgXcvr42JBBci92KPo8f+SyBo2EJ8CUBvPvPEFdjU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_064136_237827_3C7031EE 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] openwrt-19.07: ath79: Code style
 fixes in 10_fix_wifi_mac
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
Content-Type: multipart/mixed; boundary="===============7160975927624028346=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7160975927624028346==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=TNJKcbuygaQuA4=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=TNJKcbuygaQuA4=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Jonas Gorski
> Sent: Samstag, 22. Juni 2019 14:14
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] openwrt-19.07: ath79: Code style
> fixes in 10_fix_wifi_mac
>=20
> Hi,
>=20
> On Sat, 22 Jun 2019 at 11:33, Adrian Schmutzler
> <freifunk@adrianschmutzler.de> wrote:
> > Subject: [PATCH 1/2] openwrt-19.07: ath79: Code style fixes in
> > 10_fix_wifi_mac
>=20
> the openwrt-19.07 belongs between the [ ], so [PATCH openwrt-19.07 1/2].

okay, I will do that next time.

>=20
> >
> > This fixes one comparison and several useless echos.
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>=20
> Are these fixes present in master? If no, then please submit these for
> master. If yes, please generate these patches with cherry-pick -x, so they
> have a reference to the master commit (makes it easier to see if these are
> backports or not).

The patch for master is the direct predecessor in patchwork:
https://patchwork.ozlabs.org/patch/1120551/
(Unfortunately the commit title is not exactly the same.)

I like to send master and backport patches (if there are any) in one bunch.=
 If this is discouraged, please tell me.

Note that for ar71xx I only sent a patch for openwrt-19.07 (2/2), since I s=
ee no point to still patch in master.
If I'm supposed to patch ar71xx in master first although it is semi-retired=
, please tell me.

Thanks for your input.

Best

Adrian

>=20
>=20
> Regards
> Jonas
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=TNJKcbuygaQuA4=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0OMAQACgkQoNyKO7qx
AnAtkw/5AdV4udGbHgO+HQZBcwj4X+SDVZ2G+bkltmeMwt7dnHycgo/RnTklTwzT
PozHE62q+XgP1x4ftUS3QohOmI/z3nqfOvuz4v+d2h0Y63C3HQ0IgKXPOJUmmxZH
E3Gwr6p98ldiAHra+9SO/aTwd7osGFv4TrOZat/f1IsuXcARP+b6oLxKlw6VsgRL
4B2XVe1bFrO7HKzY6aFxHmfpLDMKLQTKjK3mIE0AeHrErFV10ckFMi8ka0idk1sP
EDpO6ZimnCANBsMZFPVHJloa9JnK04/WRWvksdXWZ57HQk3yZKhu8oBvToofoE8+
z5ig6og7iz2U2/rx/1F66+AYESFOnNZvCAdV2+cEL9uzBm3OcAjLavE28QT7dyJY
1MZSK7s1Dq94jeNA1SDfc3Y6lmjKOQx+rqDvHVZ/IG0mdmIUG/f04L/g4FAE7dr7
lplrl7V6irK5+zWc0amnAcaqjwc7nRLAlKjCcYu1d3Xcyo/yu3gWBUTSBUFiCIa4
xygFXu9VlbAuuCow5sJsAr6srRFVyjc9CSi1P0uYG5vh5qPh+Ykm6XWju0AT8Lq8
i04hJ2F15Cgqa9z99Yrbp4tPBu5rFVZhL8QZq/om4c808ahk6N8ZMlTkqM73zixn
vrO1Bt8K/zLfEMVu2vJ/hEtjsYGnKs3BYP7lHY0K53EaPhLiUR8=
=OSWl
-----END PGP SIGNATURE-----


--=-=TNJKcbuygaQuA4=-=--



--===============7160975927624028346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7160975927624028346==--


