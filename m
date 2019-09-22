Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E203BA5A8
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Sep 2019 21:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZDe2CnWTVZxjOGbPf9yNlhWIdFAUAV3lYPxv+wzca0k=; b=NVLAbeOs0mFI0xPBuNtVWWnrE
	jTCslfeWqCaNtLKOeaBlRNghNL0G4BoT6x3bi4GyxUYmulFra7C05CYT8lbbeFuEyA20qg+teB69V
	Y5CcHC/0G0AJsqgicie+CEv8wIug3k/gePgP1vmlxz3h1jmp7RxDfC2sMiAnpTNC+VfODZ9MqO+Vx
	E5WyykJ0+fSaGht8eN3hQk+GWtpLPwLuLYTpBj8Pxw9AP8TnSeR4H49eUaINuvkMXtMQm8ll2jI2E
	mhAm8k91o4lXdnioIfWga9RefXWpZLKFJH1CPyNdhzv4NJscYpgBBXDQo32uNYdjVDwNj0gqBKD5W
	dvIz4XpFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC7YS-0002lV-Sb; Sun, 22 Sep 2019 19:29:56 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC7YI-0002kQ-4W
 for openwrt-devel@lists.openwrt.org; Sun, 22 Sep 2019 19:29:47 +0000
Received: from t480s ([88.152.169.61]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MDQNq-1iJJ5l3dyQ-00AYln; Sun, 22
 Sep 2019 21:29:35 +0200
Message-ID: <1e45965645d09e1ed872aebab33b6e1b2ca3a2b0.camel@brenken.org>
From: Dirk Brenken <dev@brenken.org>
To: Petr =?UTF-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Date: Sun, 22 Sep 2019 21:29:26 +0200
In-Reply-To: <20190921090912.GB40628@meh.true.cz>
References: <33816ee341ddf7d59aea750de63a57d5dc7ee355.camel@brenken.org>
 <20190921090912.GB40628@meh.true.cz>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:riNMUIx32RJVJf7v2s1lxpRrH2FJuDINnprrKA/Yt5OlQWxVU8a
 eLwL6qawxkEhZUj8j7aYkKgLwVSdcRJuVQSkuU6Qo9qUGn8PrQPeb1aNPxW6F0oxJ/9gzN1
 2syYdzJu1xeE4hSH+b1hbIt4G0mc6PF62fZjtoX3QuF8Dg8u3uPp+jg11RKI3HIZmr2yJgc
 6NCxjeHdttkbN1yFYIdpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B5pcQe0tABs=:uoN4WAyezbFpkGHKoqcMx3
 IybqmW+CVruLnCr4UkqTAJybFN0UbwPV5DBq5co9pb5U9rl3T5ROWpU7HkIkGkAoFSbP3LUy6
 7kpa1C1joEcScXYZzSNDIie/B27ZJZxL/r1K340DJzZfjnYNh/usn4XLrVXPj5iXqNq6YIfsJ
 s7QuW8cRST8C/+V+7g1n4nzsq6rveRqIPkalhZGvp85gBpA91tj43urMMDDAaIR1wZh6Ozewh
 OHnh3NUA/4YY3HTZldoNkJee1f4H6Kv9s0prRK/kWg1OLFxfaL5AzwdTzP+m+mUGAlg9X76Qb
 DFzv4UWPMXmE6RxocW4gpgYZF7jkqRKhs9KN+vwWsWRFlwRv7cby6DFDUwFdGilm6oZm9Z0hL
 bSCk5lSEVlBZWivV2mDoNp/SduY7YNZ5BKSjKwJLUgeFLUV+flWHVttxB9nt68SI1SkoSG3ah
 eEB/dh1+txspqjMklrhvVsraFJXQ+79gLqyu0N5eOZ8BL4wjsRC5JEt21JErvI7e3j2jGUU1v
 yhA5z2QrVPJvK/z3tQPKTqLteD6899TG8knz3TARTy5lmPqLfoAw5UMUlQy+Tzern9AzgyaYP
 J9/q1q8S9PrFN8F9FzQuJAG25PsQ2DYORNAaNjDFFy6iGI9VaV0hjUiJmTKhZtNZm/lRloI6L
 ZluYCe4FcTePaKn+Ix8TTtHgk3q7SIR1G0ftRm6470BWwr8B4WxnBoiC8CdBU7XsOpHYl3VWs
 wE05Mr4o2NTcXSiyIEsvcshI9Glcpqs0NsSciayk8AWt2BjVC6CPJFQmAJuXvsOIxoGh4EN1z
 1C0f5Hgccn26AGSpT4TM7M0nNR4adzc/LX5fRwYxnbBql3jBNwYvalijwslcI5XFJ4pR6OrAG
 u8U0DoWtJByHe4+TkiqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_122946_473231_4EDCF0AC 
X-CRM114-Status: UNSURE (   7.64  )
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
Subject: Re: [OpenWrt-Devel] the change 'base-files,
 procd: add generic service status' breaks several packages
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
Content-Type: multipart/mixed; boundary="===============1491714833412007007=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============1491714833412007007==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-5/w7oBiTvA6KKMKRufYP"


--=-5/w7oBiTvA6KKMKRufYP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2019-09-21 at 11:09 +0200, Petr =C5=A0tetiar wrote:
> Dirk Brenken <
> dev@brenken.org
> > [2019-09-21 09:15:56]:
>=20
> Hi,
>=20
> > How to proceed?
>=20
> can you please try following fix[1]? Thanks!
>=20
> 1. =20
> https://gitlab.com/ynezz/openwrt-packages/commit/79270c139f166550c8fcf89c=
c8f18135e3173ce5
>=20
>=20
> -- ynezz
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
>=20
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20

I've tested your patch with adblock and it works for me - thank you.
Please bump the PKG_RELEASE in the Makefile as well.

Best regards
Dirk

--=-5/w7oBiTvA6KKMKRufYP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvk9F2uJ4OsaK+T5unXHNVHv65oQFAl2Hy5YACgkQnXHNVHv6
5oQGgRAAocsC7mPyGvfsmxKKPD74WsQti/RMJfAr4aW6/BsXs+48oHzrpa1zqfia
tV4rxnsdZX3UTdtJoY7b0vA6ZpHy0y3MOSKYQvU2bBxu7N+Ba62fPceb/QPRev8Y
t+0y0avBdupbmJ+bACJfghSGAgEm8EZRB957j9Lq6MTsxW8NeL4OIJ7eaEyjNHvr
KylbWoJjlNEixRJNhDBktFYKMXEbU4S4cCdy6QVIQUHCLPQ1SvrKeuT2ugFfHelC
z5z0wp3kp+5B70GGum3DnSBKbH1EBlKczHOXs/MyhDy6ZII3YTnG6Nni7npzdbCP
oYh67fo2D2FsM0vCcwQsJHYMyMm5RyFo9euxsitVZq1OTXGzfSt5+jWr3IDY4e7z
L/Zyk+XnEL+iK/dCqXJByq3bBGNJV5RrbyoHCKXSw26W68Z52tKijpl0dz5rbaHG
HRVEcnugi81GKqZQOJQLar84m0giUtYkkNz2f0nZrPDFauMNa/JXxIsRU/ZbtwXc
h62VGzEO4rRZxKOR8ZJzxGxKHFgDseIQgIwVoH7RkTg9Ap2WTO6DvBWm65057m/n
Fq8Y+MWoGCn8O4SA6jcqFrEQjJh472mzjeU/BFKMDSbgN2GdjrIItND7ChVOXgy2
UOVbVTtOLg+rV3qAT3i15Pe2TBzTISiMe20fyS3eDFrupv/hhdY=
=opIw
-----END PGP SIGNATURE-----

--=-5/w7oBiTvA6KKMKRufYP--



--===============1491714833412007007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1491714833412007007==--


