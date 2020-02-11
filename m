Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF891586BF
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 01:23:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UO6XfA6xDPE8WPRSc1mFdOZurSmgggEjv5dflKkzELc=; b=DZkPFUmlIwgdnQxJMe1jmUjEp
	J9siNTDPqgIeDlruKZGaR77Aqq6Eb7Sfzic7Wf94OMmwj8iBZV+k3VfFzON2b+KJVkWtQQtDJuK4v
	bBy6WexibXis4ZbRXx9chTd8Mk8FhmjbtOJ7wvsuVDEPd3PF651q4f4U3+ucxXHvhPbjQ7ykjCpCM
	WFJHJ/uv1AOaJNmX89P1c8XgvlUzb8rCESYX6DaMnI4FaWe4aoFrsIJaI+COPKIw0z3ypOwMZKWn2
	KprvlILzr/GlpIw7lUIDt6rpzKsEJaPF61MJrpjWmWqtKbhWS82nVjfg1O7VLAYP0T68tDgYQ5YXa
	rFcci3ZbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1JL9-0003uu-P0; Tue, 11 Feb 2020 00:23:47 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1JL2-0003uD-77
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 00:23:42 +0000
Received: from desktop ([188.193.202.56]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mr8O8-1jpAbI3gwQ-00oInd; Tue, 11 Feb 2020 01:23:26 +0100
From: <mail@adrianschmutzler.de>
To: "'Baptiste Jonglez'" <baptiste@bitsofnetworks.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200208193807.33692-1-freifunk@adrianschmutzler.de>
 <20200210222156.GE2373538@lud.localdomain>
In-Reply-To: <20200210222156.GE2373538@lud.localdomain>
Date: Tue, 11 Feb 2020 01:23:25 +0100
Message-ID: <003f01d5e071$7a8ced00$6fa6c700$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHp0ha7lKjPYlgZsHZxvjoJzzB4mwHqN2m3p93nolA=
Content-Language: de
X-Provags-ID: V03:K1:9X/cjSwhQKvhuusiydlNPhk3qZ1Gle0WRPbIPgoS7b5sXHOPviK
 OP/ZQcpKsm1vBybk4DwOG1US/Z+lJhQZXe0mNQBK8y503vko+gg0Nhr8YuHsvqR0ELNMb1Z
 egAludt2DmJ++63xol9p9BDxdO/360ZczxkEAbBAMburgADXwoJyh37MGGaOqJtEiVlLW5f
 /36hR20oHUcilugS0w6SQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hc4gKH1psY4=:1qkqc2hHfrLBMgRg5WUW6q
 fxvH9B2FTV0B6L/W+sF/cB+Q+3VzpJy+ZlLLAgMTj03zwu0s/GvNev2f6tBerYlzjb86zR+8r
 kFRdO5iflWT6GwrtYlDI7jEcHpEl6ueLuxth9FrYt3ge6Qb+v8RoH4zAWUoSNBhen2a23FKE5
 +pPOCKxW2KWE1mSNyvzHOhHwl1rrfKpm8cUmhbYpZlHKDR9Y6NZMnxoh4IytfrYZ2aaPqU6hw
 Qv4jjIi0OibYB3N6EjG7LTb1WgASnh5Gf7ZYzlFh2/dUCWaLLMkEcd+EvOqEP0yCOqxWIBdF3
 7gRGNJZ4xkiyjhHwSkR3I0ZLycMq57tIUS49UonWWFHE9ihvdzeAedn2JS4CadnC6ki5KntIr
 pXug+JQjrvVtDD7z18MxDvZcI8FyvELuo2jlJZ7rV2ameIzrs+Wdc0TlBMhlmTcIg7Rdk/pYi
 74Bq4OKA3SeuCUpp5vboP6jSZqJnRQzIcIehw0fQFddZ+bHRPQLZIUT1X2Pl7OyAAzTxFd3sS
 M041SzOa65qJHKdLdU7AU8YopzY42J/MtLEA0/LxXdkJc8x55usqCA0kVg4ErKLLfRoIxe86m
 W4JwCayauUb/Fu6wKJtPZkkCIDTplsdIPVgjhZtqteZh8sLSE2R6Qw4qd/1T18/Ss10ZH8Nyq
 O0sgvKG5pMA6bUy63bbwlFb5y3T9HjWKcxtsVVKQCHhlc54ERU4PhTFia2bRT0JKaMQqrJ1be
 pNSoSi9tddfqnmFzLTZ68/E4dj4IHAC7yuhKAA1zKlwtvmT68SjUlny8pyqY7xPRzA1je+3wl
 2rSgJ9f5LYGHi8B3GoHFpwEa7u4W7d3WcC7DNzcI8sJlbzHS2oHYvqK2qA8baIZLJ+Euxzd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_162340_551182_0FD2E5EC 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to bcm47xx
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
Content-Type: multipart/mixed; boundary="===============7754182671396866195=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7754182671396866195==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=hAUx7qlRoBMWpL=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=hAUx7qlRoBMWpL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Baptiste Jonglez
> Sent: Montag, 10. Februar 2020 23:22
> To: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 1/2] brcm47xx: rename target to
> bcm47xx
>=20
> On 08-02-20, Adrian Schmutzler wrote:
> > This change makes the names of Broadcom targets consistent by using
> > the common notation based on SoC/CPU ID (which is used internally
> > anyway), bcmXXXX instead of brcmXXXX.
> > This is even used for target TITLE in make menuconfig already, only
> > the short target name used brcm so far.
>=20
> Won't this break various things such as the wiki, the download servers,
> maybe other infrastructure?

For the download servers, I assume this will just be another directory. I'm=
 not sure how the build servers work, whether they just go through all the =
targets (then it would just continue to work) or whether some setup for b(r=
)cm targets would need to be adjusted. However, there are targets with over=
 1 year old builds on the snapshot server and nobody cares. So, to me it lo=
oks like we just need to manually delete the old dirs brcmxxxx after the bc=
mxxxx have been built successfully.

The biggest obstacle might actually be the Wiki.

>=20
> For instance: https://openwrt.org/docs/techref/targets/brcm47xx
>=20
> All techdata URLs would need to be updated, but only for the upcoming
> release: https://openwrt.org/toh/netgear/wndr4000#installation

I do not know how those URLs are updated, and how much manual interference =
is needed there.
However, note that I have introduced a lot of device renames after 19.07 al=
ready (ramips is > 300 devices alone, though not all were renamed). So, jus=
t because of these naming adjustments there will be a lot to adjust for the=
 next release anyway, and I don't think renaming bc(r)m target will make th=
e big difference here. Actually, I aim at having as much of the consistency=
 renames done as possible between these two releases, so 20.xx is as tidy a=
s possible then. BTW I also updated names in bcm63xx just recently, so thos=
e will require update anyway.
(After all, brcm47xx might be the target where there are least arguments fo=
r changing. bcm27xx only has a few devices and bcm63xx has seen renames any=
way.)

>=20
> This sounds like some amount of work and potential for breakage...

Yes. This will cause some work, and I think it's worth it. But since it's p=
urely cosmetical, I do understand that other people feel differently here.
I actually don't expect major "breakage" beyond what's usual in a developme=
nt tree; a dead link in the Wiki is unpleasant but it does not really break=
 anything, and might be easy to fix if it's just a rename.
I'd be delighted to learn more about how the Wiki links are updated, though=
, so maybe I can better judge the amount of work required there.

Best

Adrian

>=20
> Baptiste

--=-=hAUx7qlRoBMWpL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5B8/oACgkQoNyKO7qx
AnDQHg/9E/J7mvijPVLjcM5+W9Y9Ryuo5jB6bmB8aBCzCxyjS2TzAV8iSwfolcEq
1JX9eLehlJZM1rq6cIh+F0OKYodvqrCfShPjUw1ItZrBbzo8Z0EMDB5U12EtYMqp
M9j5cLnJXa/qaJNP8AF3gBlq6uQgqFxKRQ9YBJwqrZIcc3Jw8+yot+Rla7fb9hMg
JaMRQGSv85Twdq5bSSr8lFMJey99MPljAjI4vk5UsCsyrT90e93dJrwF2wdiR67C
4eRuMq+vO1kOZDNz3s5Mq/kIR2f/shboc///V/P5vB55i7wWKIa2rCaq8C2OAmP4
Be3iri3Whk2TczG1cOYB0Vy+czJOBCKftnPp19BfBWRKA4OF/fJlv/vRIa4a1KaB
OaJe81q9gIb7oLBqI8Cn1ufa2H5F+g8fFHJlTO9Za7DRPlgTd41/JvEr6HWT9q6j
oDJs4/jhbpShsnQfzwrq6SAaSxBpIUPCbZc5N8hj2RvdJd3Rt9ZYSma6KTHLt7Aa
nh00sftziCTXRdb5UCN9GDAmOLmKZOYx/8Nvpujqss/01vr+VHBRMYu+AZ0iLcVC
RPwCfP2NYYapS9Hhyo/qSsGB3YynreIVdXMcWVWsHubeD2dvontVC/CJcbfc/ylo
+jsmdM9O+Ni+tfMUE7+k2b//Inya8UkIsnKak9MYNNi7Yrdjrng=
=FIxt
-----END PGP SIGNATURE-----


--=-=hAUx7qlRoBMWpL=-=--



--===============7754182671396866195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7754182671396866195==--


