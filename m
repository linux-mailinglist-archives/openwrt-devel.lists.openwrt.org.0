Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2F410FDD3
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 13:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m+v14yAvzkdIxICdzul3kIpuV4IVp2SBS/0JnQYkmzw=; b=CymM42zPKrcrKS2ZZdpL24iIK
	WT7NhI3lfLsD/+gfRQ0RfvF6NUiS+g8aKzhDmXlhcQEexszyornIrbTD8CFaJ1rHW0xwFGZggj2mK
	jA8uhFJ5uJ0IHMGKVBlT7QXJlf/2xTEtwxJLjR6CbrsoYJze+piYCgKKI2hfaIgrPq2wOAk9SNP7C
	+0rwZUI1gJPQmGuXzIYLX6Z8Oy4/nmOBsnYi0O10JPc8fT25jCTzYiHAsZLtr3vkN/2BwTEt0+2g5
	e9ymNXP3RkRBkZ8KU5cZlMsQ+wHNE1lP4IvNq9TnBmsSsrqINa3r0rbMEy2+c/olNE1w110f/+2oO
	kK3+7Yo1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7TS-0005z9-4o; Tue, 03 Dec 2019 12:40:14 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7TC-0005ym-0Z
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 12:39:59 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M2Plu-1icfhS4C46-003thn; Tue, 03
 Dec 2019 13:39:49 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>,
 =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
 <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
 <20191203120930.GC8181@meh.true.cz>
 <010701d5a9d3$92f3c320$b8db4960$@adrianschmutzler.de>
 <20191203123144.GE8181@meh.true.cz>
 <12d89195-b1b7-5f9e-52a8-5411ad142733@linux-ipv6.be>
In-Reply-To: <12d89195-b1b7-5f9e-52a8-5411ad142733@linux-ipv6.be>
Date: Tue, 3 Dec 2019 13:39:48 +0100
Message-ID: <012e01d5a9d6$c03434c0$409c9e40$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGTXJoeUjZX+dYvmEdnKnqdj0FkCwKX8CklAfcicwACX0CtAgH8zkFEAh5HiJMCJvYM0QH4GIa3p7OwU3A=
X-Provags-ID: V03:K1:dt9KvILM45gszGtMfLtuY2pyqC6Y7BxFxvu3BhGr4oVR2CKG6jt
 pONBkhY/4fKkLuhwbUt1Uel/3RPjMw9rtzbgD9qAnk0aLEjT8xBoOmASK3Jyt3DfTtNdumn
 /wfgyQBjdHW3DeZ40ZzraW6Wp8lDfr6iT/KclVAPVmJP5GnbuwI6p7DQ1ahKZbNRNtLKHLP
 WFNRfOaY+4yluhkXpEzUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UWSNJzPud3s=:4aM4mvY+V/iVcUDaF25g21
 ytr/jpw6PrILJClitZ9iWaPZP4mIFYlhiEHQtZm8qmYXySZBkK/Do/rcI5LhD35yIFaQFuXG+
 fOw/BP51VWQZeCWe/srDOogs3wFRnxjmR0PnZsXwX/ZpUGNObX6V3B3UV4ukR9CgeihwFTSAn
 myKsL3FHVzJH+jyZK9K5JsEzV/onVrXOalUymyjMTt1dC3vTrzVxrXb49rubGlKAglWKT0Jau
 U338S9hU3IsNMZb7GoRAgAq3ErDWXMUWwwewVKYDjGEBtoSlTE3K/1/xtUzPQwzevHia7hgCy
 Lr9ys48XVy7lZ0U7l7E7zoTvsazmqo0GSLgLZn3TMIHrfzCJZbQH9X11BiBGi6HUnM88iHaQY
 yBwjD2CL6ttIm4GgqWFz3VuhZnawY4G2897UY0HE8bmVpr7JSAAyemKPM3doy7OW0sQi+1+yW
 HCvcp65V7/ZrSr8QWBtDr9LgFLLG94DF3CO9DkGaC2jIk0L9i0ikTfH+u72QZYTsTD/7AUYIw
 tqB/ntRFNSBBXbmzBmO9irUr23G21LRR4gLv2bAf10oK1DVvufzL9PAfK0GnARCw2P0A7Ql+W
 WcHhODmySikoU/dSEyiLWxc2HGRyyv0Edjd/jFSETN5z35VUsyICFNFlBFmBKzG2vNJ4uePbG
 jR01ExbNpKHZSGjzDI5k4BXfBk8JnRvjrTUW9WarHvAnSiPSopTSiU7knAsBOkHpgKXfNbZPW
 emQE/N+vqcM2zXuqLbbTexyIr7HyxrLtl/P7OPsv5dxLXc5q5FZdc5c8Z9JEqEmxPykzmY5Xs
 jdHkoepLq2GgytOig2a8+RdMERjOJKit+s2sQjuR002Jz+K9Rybrrj9Wo+7d3WjAwtQ7Ga8YK
 cJd2Pu8o03/ocqY9+1lwqPkAVzv5Ua3rJD9OgLPA0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_043958_354022_6A80ECA8 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: openwrt-devel@lists.openwrt.org, pozega.tomislav@gmail.com
Content-Type: multipart/mixed; boundary="===============6587872112934183048=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6587872112934183048==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Do/dJf5J0Og8le=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=Do/dJf5J0Og8le=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

LGTM. (Haven't checked the network setup.) :-)

Adrian

> -----Original Message-----
> From: Stijn Tintel [mailto:stijn@linux-ipv6.be]
> Sent: Dienstag, 3. Dezember 2019 13:33
> To: Petr =C5=A0tetiar <ynezz@true.cz>; Adrian Schmutzler
> <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; pozega.tomislav@gmail.com
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti Lite=
Beam
> AC Gen2
>=20
> On 3/12/2019 14:31, Petr =C5=A0tetiar wrote:
> > Adrian Schmutzler <mail@adrianschmutzler.de> [2019-12-03 13:17:04]:
> >
> >> Other ubnt-wa do this, too, they just do not define it in parent node:
> > Ok, I've checked only the parent node.
> >
> >> So, the question is whether it would make sense to remove the line for=
 all the
> other ubnt-wa devices, too, then.
> > I would remove it, it doesn't make sense and is misleading.
> >
> > -- ynezz
>=20
> Updated my staging tree again:
> https://git.openwrt.org/?p=3Dopenwrt/staging/stintel.git;a=3Dshortlog;h=
=3Drefs/heads
> /lbe-5ac-gen2
>=20
> Thanks,
> Stijn

--=-=Do/dJf5J0Og8le=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3mV5EACgkQoNyKO7qx
AnAl4xAAwI9id/U4DU3y/+YgZZ7uaGT21/Hcfzu/pDiuWOrGGkBCmyiYil95778/
/gyQYT60mVef12nYzmEAsxlfCxDXQVM4CyLCU9+QsIqdiq/4xn/Cca/31JIXy66C
DMiouosgRyVwLsesYpo9ZrqZ1xwS6dfMtbWMTP0KL3m1ZONo6qjY7lTgBfUk8BnY
4s7UNJV2pS3zVr3786BTKCrT/QRGvM6GGTP4iQRCdD8evQtx8Xp+XyMeXKT0Isal
pUelCQuPSEHyAv8IN/QbmYHhd5XAYDxAff2FzQgLNM6kghyyNrbeLGgcPK4CcVrS
MIeCetkfNQhX0GheFdULgbAXQgTyaaXsibAXikNrmMuQUMNThs7y7h13/BVQIARb
wHHxgfWQhSxIvkAw4q76w2CiV8EYeLOaLN4vYgMytnX9XRo9LDBGEhuXc6hcYwxi
FtZzBw6X9qyAbGJGwZnVCr1YSUiqznJwbOAi5ILPBXjMNdGf8PjJUusEaxFCx7bD
rl8Qe42jFDM9raKn1u8D/cMQCEy5ljEQrHtGS5nLag3SPb/IaS0R5/2rfrsZ4xjv
PJOrUGlgvfuZRoq2+9vsBh9OyvJzWVjE964BUbLa4yuUSHuJ3PqNb+1En+k2FBuU
bOCUH5Yq9cKpWLFmGn/sG7FDTRW7QohQBv8rX+7LVrDPRCIUYHo=
=JmDq
-----END PGP SIGNATURE-----


--=-=Do/dJf5J0Og8le=-=--



--===============6587872112934183048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6587872112934183048==--


