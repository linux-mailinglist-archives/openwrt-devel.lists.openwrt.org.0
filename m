Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16102AA12D
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 13:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xO3ylZ9o40M/ZZ+82yuoFxNo3tuXDHSLG/nlF4B5GrA=; b=u7qQizgHX7bLHEJxQBZxjm8li
	2yEWawv5QGg97B1J+HUSxWtebXqdPXksmBRuW8ujDkeKHBjl2XjVHVUZUSjlcYvrDQW6hQ2zIHdoS
	C5qti/8vyukEik+qrkMahm9jPQ6VCJFQqH9CFGODH6IdHlB0th4BWQ3H2fD9AFDCOXxNUDF9qXdrg
	QF86l/nrlpen0BiVxwjqpR9zH8uekQsu4tnMmKAjkec8nt7fL7wthNh/6EfmZYzMerlNmPmTdA38W
	nPD5eqZZqSnd9F2OIvE9bC89f8v7i94vOpZtyjbAO7CYQg84uDfmZjF8VHkw3CbirONGgTwY6kVxH
	ekREiVbqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pph-0002vf-3A; Thu, 05 Sep 2019 11:21:45 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ppW-0002vA-06
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 11:21:35 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mv2gw-1iNE9j1vSS-00r0Zw; Thu, 05
 Sep 2019 13:21:31 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <20190904191929.14455-1-mail@david-bauer.net>
 <000401d5635c$78985d50$69c917f0$@adrianschmutzler.de>
 <5ef2bbcb-0a9d-8e4e-6bc5-cfdc4adfdc7d@david-bauer.net>
In-Reply-To: <5ef2bbcb-0a9d-8e4e-6bc5-cfdc4adfdc7d@david-bauer.net>
Date: Thu, 5 Sep 2019 13:21:31 +0200
Message-ID: <01ab01d563dc$117f2d80$347d8880$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQHSNXhwc9B9YvESjIfuYG2fDqlvMgInSUUEAje3dFGnAFKAIA==
X-Provags-ID: V03:K1:6v3lXtpceP0fcnixOLduArnl5mi8CvUgd4lBVQnJU5wdSLb3htv
 4ngFN0qqM602Lnz4RahS93xC/HaOgKpAHMajbRdNO1rpDYPpeqniYFRkqIDEHG6hcPMGDoO
 koJxmnop/KH2kEAT6HyvGmuQopAoc3Fm4fWW8E8dsZiFcm3Jb00wHEtSJYiu6RrWWR8KXfU
 B0j2J/TLzwz/YfWccKd1A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4flBBvLPSyM=:62YuXkvKlNs+sOAloBsG6P
 Wg8vZlbNgM2iDPMf+3y/GztiNbvBqVnuU+s7wNOf9if1jk1hD9WsZk7QD0IxUXjNazwmE0dtR
 shJS7298W1EJAOciBU2rTUx5vlbdJyLpEwhsStTnwpTEP9sxqqAkXqwUwgDU0ArIH6q5/aMQC
 YMp4nWvE0LNp6oVL6r9WcSOBMpumBi3xJHjJ5IMBsHbi7oZPx3qw+bhNjAay7RF2clmgYMLNG
 hYrfscpqdSYJqp+Z97Xb6DFDhoDmGaTxXJOpoEaXhbviNDyn5BLmIJLZQH8eb3wCyMtEcvbM7
 ZeORvr//KOmx/cwL4vQlVft77vVom43heNOf6y4ggmZ/TDX0uhUv87TXEwSikz1j2xm3+tQVM
 4tocayofZ3UWcQpHAuc83n3tpvJJpa/6pTHQET+I5wHaeqpr3yyZLZEsW7nPcn3QoalpWl5lA
 I2o0yWGwH7zBks8wVL4ohkvOVr/o/m4DjHYsI7WKmiBRJZw0FVzuvuyqA2gfhdJg/RiZajKLq
 ktJRAQCkhVLSwYAISHm4/k8asI5NK7T9Xt2Y0zECFnfsXGfwOQH4PxY3kLxsTW69tRsA9n6L5
 ePD5yZIiM4HAehPaIQeronl7Kb3d8nEKs1QNuf3vF0u/uiEKfKOnEkI0ppDzdZYzeRvXmQwc6
 Qtyd3iYGCsAoUBcRczP/GyKSJcf1TGAa29WKWhPI2WrlLZfdryNLDOvxNwqP7q+TOAKDlRo45
 eMEQ48IdMye/9Ht7VSItmYitaWNYa42GM1qk+t4wP+XhgcP3qBSOfo936UTnCRfSUWi9gNhIH
 1SkfLB9isCGM3ockNdwST2bBJg8CpOtsaDAdTwpbYHJKvDiAvhVC+govTHLwwESMeibrBMj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_042134_331947_B4335827 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: fix get_mac_address not
 accepting hex offsets
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
Content-Type: multipart/mixed; boundary="===============8230161665079224056=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8230161665079224056==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Kz+9NeZQh+pU6E=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=Kz+9NeZQh+pU6E=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

> -----Original Message-----
> From: David Bauer [mailto:mail@david-bauer.net]
> Sent: Mittwoch, 4. September 2019 23:07
> To: mail@adrianschmutzler.de
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] base-files: fix get_mac_address not =
accepting hex offsets
>=20
> Hello Adrian,
>=20
> On 9/4/19 10:08 PM, mail@adrianschmutzler.de wrote:
> > when I tested it then, the hexdump offset did accept hexadecimal values=
 intrinsically.
> > I remember that because I was quite surprised that offset accepted hexa=
decimal values and size didn't.
>=20
> This might be the case for hexdump, however dd does not accept hexadecima=
l values.

Indeed, I overlooked that one. So we have four cases:

1. mtd_get_mac_text:

This uses dd and should currently be broken, so it needs the $(($...)) as a=
 fix.

2. get_mac_binary:

This one uses hexdump, so $(($...)) is not required, but might be added for=
 convenience.

3. mtd_get_mac_binary:

This one is just calling get_mac_binary. I'd say that get_mac_binary should=
 be safe to be called with hex offset, so I would not change to decimal _be=
fore_, so just keep this as it is.

4. mtd_get_mac_binary_ubi:

This could be treated similar to 2. However, on a closer look part of this =
function is the same as in get_mac_binary. So, IMO this one should be refac=
tored to call get_mac_binary as in mtd_get_mac_binary.

Nevertheless, thanks for spotting and repairing the bug introduced in my pa=
tch!

Best

Adrian

>=20
> The commit message is indeed not correct in that regard. However I've cha=
nged the
> evaluation there too, as originally it was provided decimal numbers, keep=
ing the
> underlying call stable.
>=20
> Best wishes
> David

--=-=Kz+9NeZQh+pU6E=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1w77cACgkQoNyKO7qx
AnB1iw/+NyJgigAWeRyTRxgWEO1GCCCXxUAsSYhAgx29jQxJZ7x0KcWVbW+z/u74
TwR7q/+5/YF1U9RZQdeVFrwCwEJ0Y+qZVZLqBxXi0nB4J18u0HM7+QXJyyM29mv2
IrGevkE7WUJvhAI9pEW9Ra5YUA9+x2IYetVViaVLq5giK2kkZBxLuwzxRK36Gaia
qMO2XNS0TxtnsK7YQ41Nmz5WdHG5RsHVrsOCsOBFNkDD8E03UTu83t7T+JzjcZ0N
XzjaeKkJ9PtSoBDEkpeN9ESWOQhZiUqRGyzRm/pqJqkj3JlFROJuiRIrw24fX5l+
7neER/zUi10uckKAmrGYnYIbVcsXT8fBLj36MmDtDO7/r7nYK24GWJt89uUWCq1L
HNnxMX66+q2U2BTTVtprtkHAzurAJf95PspBttRicEG/Eigc/L4z9PGXEbhSWWgD
HJ1tQOGgduduon6oHdU1RXftEF5ljSBc5sJqqAlwWiZdpCpNydfdd7vo67uMI5m8
AkDy/vqIxhghKHPazlluHHuVZ1qrlFwvM6KkFX/fpZVMSlnwGm4PHkk/M2At9sJy
rvZPJWjVcLIBAK38lOqu7gg/U0Hwm2UgCbTH58hf4Ex4X7dOcb0Gpj6gz93fv4uv
FEtJTL2fD6fWdlq8nhS8Ynwb+FuaD/sW8buMoSDmu1zClNdpyDU=
=pi2I
-----END PGP SIGNATURE-----


--=-=Kz+9NeZQh+pU6E=-=--



--===============8230161665079224056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8230161665079224056==--


