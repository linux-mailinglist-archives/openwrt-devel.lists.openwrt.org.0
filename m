Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A3317EA4B
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 21:42:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wciu9HLeDi9vfJyUl4oEf3FH18Xd92AZdvZUg8r76W4=; b=aEvHbKLKlmYYDtVwB1k1PU9wl
	nLRkUYnSt2mMLLlERS6nFwqbEWVuWKBXkWdVXkqbJ3svfGjZw2FqZ8N4CFZbK8RJMj0QyJN+t2as0
	uAk1yrRVB5fnW5Q5LpNuHIiV5wOEm/6SdjsagS+E66/zvO/6T6aOBCOLA/xMX8Cq3wZn5RayrA0Fc
	aCXhMT6spn7Tws/E6dha/YP0T8wBQ+s0FZS8o7HxD9WB84twgAugeFLSwCKWyhmkes/IJ0FZd62T4
	hKQf5+Pq2No59xsC/1ya30EYvvqhHIH+tDQgFb0QvazyRzi2kmIA52OAn4znZ1e3t1ByVa8/BtkQR
	p5fv2mR9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPEc-0002N8-90; Mon, 09 Mar 2020 20:42:46 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPER-0002Mc-U4
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 20:42:37 +0000
Received: from desktop ([188.193.174.43]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mw9Dg-1jRqDQ0e4i-00s3sU; Mon, 09 Mar 2020 21:42:20 +0100
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 "'Hauke Mehrtens'" <hauke@hauke-m.de>
References: <20200301121241.5545-1-hauke@hauke-m.de>
 <20200301121510.GA61863@meh.true.cz>
In-Reply-To: <20200301121510.GA61863@meh.true.cz>
Date: Mon, 9 Mar 2020 21:42:19 +0100
Message-ID: <007a01d5f653$3a84d540$af8e7fc0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQG2JvxEk3jVUCnaIe0ZuW0MAURT9AI3ajsgqG6dEkA=
X-Provags-ID: V03:K1:VhdlLOfHlz5GS2F8dN47Yje/ZSt6SDOD9dOShWoON99RaY43VMT
 P3yaYePKHMx0bQU/3LRdb736o6tsY0yfMmo9+MbXTEb0UnOAYnQgy4F/7eMDg3WmAJfvZzU
 faDpuUwripEMM5NB06XAc9XQzfEFZiBjO7ukYusYBFrTK8MjqzUfZpjQpZ1vPyVDIc4PQoK
 A/QPtIUpFaVYGpzV9vxXg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Iib4waS7tOg=:g7YzGroD/nnBqxKlMNWgIn
 eaaDQRiJ1Y+SWakOxEz6zq9H9YPB9mxYBPY/i2s/L5uwvaRtp6KX5zcOtAH7LUJ11i1aNne8G
 VEpUIzmylcUuKopqIKYUYtcVPa1mfkh5RGQNJfBIBTU70T78IINM78Rn85L0t8HKkR9d2sC0w
 0znXJ1zsVWUZ3tDOksTOcgsvwymBSXrXiSk5QAPp7dRqyttNJJidoz3eXn0TQsWekZ1lhBQ3F
 d/E8tpulSC4n+S/MJ4Yjywf6dhrsvlBPULwrT4L7FpvJhuLjvFbtUSSZhiI98DoDpr6OuO5NK
 6wsIxmaV9k6yUFDfXqndpVVMSmVjdrqrmCQShin2C4wF4Teac9CEoDSHVBDvfsyqCkdaUl2H8
 8oRwKn0imfF3JMQCDqopz35G2kxEAzUT1zdUGMiYUoviPJb0TmmDwHhDkNb3RpEgpSBIInlDy
 f467ipX/ckxTzFFrnoflGpTcqEq2TO6DmmSUsYFP9y9qBSya0efNwP54z61AHis4qWK50l7P6
 4GpKZ0YNUOq29wU4VuE7Ls0ovvQ1+uw8pKH6XUUDz6WGKSwqrAS4WhM4gbFcsagxzJPfLhXEE
 TfQnTS/zA9Vl08JEdv11mGn2iO9XkzkCAoj3wl+EBhfY8J0x5NQB7oC1Ir7HXieUVcf3wkX+n
 Q1NgChny+COnu3Vwr1ODfYlNvVv8hboEREPXD84Nz030PunjmQUjKD1znGHYqF+f52Kg5xlGn
 rWifPavOGV4vbrz4HaWWnj+YVbEkdxT6Jt6qUkM5DWRs8RgOI3CdDt9oRR94ts9oOaVoNw9Sh
 WfdaNYGfjfD9L82kMuq2L9FOBEARbzzDZ0mxmQF+jfhFMSXw4V5+mTzAmQqmCkie6pyRwHM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_134236_264377_40647442 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 00/12] targets: Remove kernel 4.14
 support
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
Content-Type: multipart/mixed; boundary="===============2609067030118777664=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2609067030118777664==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=noU3KKQXo26W7R=-="

This is a multipart message in MIME format.

--=-=noU3KKQXo26W7R=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Petr =C5=A0tetiar
> Sent: Sonntag, 1. M=C3=A4rz 2020 13:15
> To: Hauke Mehrtens <hauke@hauke-m.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 00/12] targets: Remove kernel 4.14
> support
>=20
> Hauke Mehrtens <hauke@hauke-m.de> [2020-03-01 13:12:29]:
>=20
> > This removed the kernel 4.14 support for multiple targets which were
> > early switched to kernel 4.19. This should reduce the maintenance
> > efforts especially after or when we add kernel 5.4 support for these
> > targets. Some of these targets do not even compile against 4.14 any
> > more.

Go ahead ...

>=20
> Acked-by: Petr =C5=A0tetiar <ynezz@true.cz>
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=noU3KKQXo26W7R=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5mqicACgkQoNyKO7qx
AnBpqxAAwNNOYsaqGuT6hDnp/d6Wa+4YGvpW/LS2orWrcDScEqBptlR4YFuvZbF9
6/l4nFm4nouBXtW8Oy9MIenQYngljfjqEGEQIzwof0hJxmZlY83qkpL4d/1m4wga
3XizTCC8ZV0r6Gd49ZOqTOJEyDlluo5rwqig1ROAXqj9ZTmrO/kE21LMPGzGFbQj
9r4ok+8fOmW0b1pcjoL2OY6N54xAYyIlDQ7SyCAVMm2w1QO9qxHVhfPVAp7NIx4w
wP0aUUADVuj7qFi4CkrCji5G/vTX/oSnORYoRSHDVtKrkJuW54W3qfkAVv0BbqOB
kl5CLW3slPbds1vLGWiE/Zpd7+Fg9c+5Xj5iXPHNZL1kB+py3AOtvRbnGQpnTyUX
uqY9Vu/Y/7c5KsmFDIgbCXtIi9DbrlgtyrQYuqcvVOuSM/pgWA5F1fTwq2Hmje2J
ohaEqfVKcINh3JWe06meZNhWdLr/AiUPkEhQGN/xmAKs5dA0O+8XyXYfHhnf3F7H
+2THQVb0mnXtklCym/3rIwILndbO9AtgiHZXnwlsKMeRL4MeGNphdyJ4djPUVjnQ
P25NtOuUJeZ5bCo//IGQFFw1OSnyi+8N3Ds5i9XTQFyj6W877baSjCk1qeYHwxgq
ZMs/B67GGWS661h20h727ostWVIp7EaAcC0VxQX1bz4JNr5KazE=
=mgrp
-----END PGP SIGNATURE-----


--=-=noU3KKQXo26W7R=-=--



--===============2609067030118777664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2609067030118777664==--


