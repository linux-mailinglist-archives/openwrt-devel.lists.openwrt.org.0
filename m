Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143BEFB669
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 18:27:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kW/BSrV9lijD+WFtH+Oz5zvumUeN3N/Jo3puYdKGWyo=; b=YiDcZi1EA1dfqN/plZiqwncas
	wU6a2laXV1upAo9VJ2Q3FQ4eUTMVjNiCuqt5TuEJPRTzpuBaxiis6Q3VhV3kA8rGbjgP+YYs0ZAso
	f9liYNYfsKXH/NoYLQjSUXLcFkwpnuf6yGty76jyH6dT7InswFIMKZFpqsu2AUI78YcuJkG1aL5ZN
	t4S5/q7ZgKC1pDshdAvv5hPim5+zUtzTtuOOObIJyrgZxpBN+fjtXq98wTlo7t+wPkDql9FOU7uhS
	e4oyxr5+nRuDz1ZMNDwWcC6fXtX1f/SG9rDE1IBnRblTvEyVFfkh1cvRfggUcSIvYBSkvUWcbWzd1
	1drBJpm3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwQ6-0007uw-82; Wed, 13 Nov 2019 17:27:06 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwPu-0007uF-4g
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 17:26:55 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MHXWL-1iiMgZ47Xt-00DXxU; Wed, 13
 Nov 2019 18:26:47 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>
References: <20190930195425.28617-1-ynezz@true.cz>
 <002f01d577d1$ccf77fa0$66e67ee0$@adrianschmutzler.de>
 <20191001045015.GH40628@meh.true.cz>
 <006001d57840$08b18770$1a149650$@adrianschmutzler.de>
In-Reply-To: <006001d57840$08b18770$1a149650$@adrianschmutzler.de>
Date: Wed, 13 Nov 2019 18:26:46 +0100
Message-ID: <002b01d59a47$86a9ad00$93fd0700$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJ9fJfkzozzshFSdva/zMqLIcYurAG8ZbflAm9ctkkBvQh4yKYKTg1Q
Content-Language: de
X-Provags-ID: V03:K1:l85+yVJ6FErAQ5sThrHeUA9f5+Nn6v6biTFfIrlXPly12noQKt1
 0uBNr4WPHAY56PBfTDEFw3P8E8YsiHobf6Pc9kzKm0lbet2t5nIez++2yCZtkOKpQMaMnzc
 LwYPyVgKSjVT9UX7tX53/NpKyQmPxxQPaop8pK6yQ8TW2UevJ2hsLPMsJMxrewpcIbhCu6o
 Z/eDIOsOoNc+DLgNUPWzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vcMeKNgcfpk=:89wT01qju06iBcEkOd1RrJ
 OKamGvrblSJ2XNd6KEndObKLLGiLzq2EFUMK1hH9pPepcu+VPMCbx5ENYTUKswGXuX7van1EQ
 /c/H5bCEvjSO5hpvVf7Z6veJuGekZvFYJgbaeHRV/2RJKFadD9tc4+eCpTQptHM1MCN+W2pRL
 s8va4KQt/bbSVrnbpfgYZ7CV16PhDArsulfDQ7ocffQyvRYBeMSbsg4wrxV/cvP6QERxQrgeN
 xb9GM1qU1DAvggjJWZpp5TIJ7uk0cVApSH8hnvBgnPn2aKRd2GKGid/7pXNGHjpaZIcMvlg00
 uAU4IedxMoehRVZ3+ogw8qdJUJNtgzCLSDEvV95vZJVqVtqTbSI9F1fYIErvhxh7+v8FfawwG
 7fs1fBM3R44Ap7X8wFkCpsnpeLYCkjpnLAwBSv0N3gpWz2ivzNTilQgG14IgQJlHukGem+b5o
 iCtA67bDz9pTvQJqbF7e34pyj5/H9WTR2F+jG+UL7xCaObn/TFG7+bfrgkWKgsUF1CO6PW1I+
 m6wD4K+Hx6SPGZ5sWyVqTOfLrvJFMayDzPth4jec0Jom2UNFddOyYh+kS4hiGh0k1Mnljdreg
 0NxcBTvWAwK6Yns/KGOcgzOMcBxmKKgGo35DI0pEXejywPMuQ5EM9+So1snqEOvKVp8sEq7mt
 GsZQuh8PjG/BJURQ/CKLWKKRgC/yI97dNrOudYDWnA2/IgrnqeCJkbCsze7BNUI00tHvGjPm6
 3c12XLAYyEPMsZ0vMDGHqAwyFzK4PHCwZPqm5mBD0HqLK4KouUtNFzKlZOVFg9n9QJWTzCBMJ
 KiBnlQDOZThEgHe9I8pJ2a2Zjw+DL7JHvUgb0tUP4Um/kTafMSqwbSXR/LtcKAjiajoxV64px
 YXvVaLJAL9a0to/9tosAesVJxZoofqoDCUKg5GMjM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_092654_475858_FE2D739E 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath79
 for wndr3700v2 and wndr3800
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
Content-Type: multipart/mixed; boundary="===============2552866364777729651=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2552866364777729651==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=HEPUFlbohJFnsO=-="

This is a multipart message in MIME format.

--=-=HEPUFlbohJFnsO=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Petr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Adrian Schmutzler
> Sent: Dienstag, 1. Oktober 2019 12:07
> To: 'Petr =C5=A0tetiar' <ynezz@true.cz>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ar71xx: fix sysupgrade to ath7=
9 for
> wndr3700v2 and wndr3800
>=20

just stumbled over this "old" patch again.

I think it would be good to merge it soon (before a -rc2 comes up) or adjus=
t the ath79 SUPPORTED_DEVICES otherwise.

I think we should establish a forceless upgrade path (and some user testing=
 for the changed board names) before 19.07.0 is released.

Best

Adrian

--=-=HEPUFlbohJFnsO=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3MPNMACgkQoNyKO7qx
AnCP9g/+L+klcVoDDYfWj2GdTsdQkVmswYKGxjnbLTzl+pvnohfsiVBQmL3kaRci
3+yxoKSlltZfJiy3R+OfwADLAUuJAqHY1ZLhbG8HHU1KgwoSexfiaBL2VxPN9Ksp
cMAkDyiplswiC/SNJXzhUL9MRE2uY6C8vGMNErysoLW+yj3E05af6o99SZBDzY/A
wCuVgBokRk6kZeq1QSM48ofUZbXKP9aJSu3QyOaL8RyWhrH0ptQifaf2OizvIccw
W98TivoA4nx9cp/wJQMk3r9J9b1hENcYC0nGkzKzwddkBSUlf88gbqd/tFyhGI/M
g81AmJ5LvI/YLK7i76pYXxQ3zOuDMV8d48vot4vlR6Bn5aKkYd8CUN3KmdpZActk
1zAI3DvzHlhPMBKHqe1101DrJDKt1EUcPvfb897d0sGNNioC5auxrkmFPARWMu8V
O6fQTMOq5BGfCncOxFzcBNblfRFr9r5BtVA5poVL05E1CViT1pZCOifIN7hGLecq
84rqkE+YZ6BZlnOtggwsmV77B0aa+b487JDrmNPXi85fNQixsZEtgd/0csKQQBGg
V5kf7w2+oo2FrkA9pln+2cRULOzGjVmL6CnWXZPEDeS5ZvE2MOk4W4bRgm4PCbn/
le4lg8pCLo1XBb4qjaWcwUJuEMUrJdxuuodff6uJMc77SKwS6Jk=
=qYy5
-----END PGP SIGNATURE-----


--=-=HEPUFlbohJFnsO=-=--



--===============2552866364777729651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2552866364777729651==--


