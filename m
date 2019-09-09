Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DD2AE07C
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 00:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xw09B2X2hFd6275VrR+0J7cJtpRU9tUGGXUCz3fX4Ls=; b=fZUYLT3HWzU7sZ+NTL9C+/wTc
	b2i+Hn64MTPfrH662syydixZUJcDHOWc1lMXPRvI+vzBxkC1/KB2/TaR34KEnol8X0CTLIsRnIluR
	RriQElG1uco6p/1gEF1Ff3e7+YbGQc7BPqPa0JuMHLiTDZrxl7voB7S6aYWrs5O7CUsS2qM0BlFNw
	DRJ3EO/RFCF0ekzfiJKrWyhk5FkrgxBazDh2dF0PsupWPaHbIRT1UUcJH2+YcKk2yJimJW3bdTr2K
	COyp9q/To7rd/4REXaheSTiaAKc4kOgucSBZ1Ru5aY3HSjRw3lmCaOfoZpVZKKtvkkiwVREAJrIv4
	yzW5C+uTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7RiR-0005tf-Td; Mon, 09 Sep 2019 22:00:55 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7RiL-0005tI-A3
 for openwrt-devel@lists.openwrt.org; Mon, 09 Sep 2019 22:00:50 +0000
Received: from desktop ([188.192.136.169]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MF39S-1hwUQw1aB6-00FUNy for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep
 2019 00:00:38 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190908141052.17443-1-freifunk@adrianschmutzler.de>
Date: Tue, 10 Sep 2019 00:00:37 +0200
Message-ID: <005f01d5675a$03b2ba60$0b182f20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQEK1d2fWDlkXu4EV+r5wcwARMnkWai5B3OQ
X-Provags-ID: V03:K1:NVrmSJY/fzCZfHNJncIx/jxDsiYb/5y9fUMFc5RN9vtRsNBICTv
 o6pj9RGjYVnPVO44hCClhyoFvVIppSJqVQL20VdoCE10lTXKpTuq30TnHAf5RIgs40bMRHe
 42fkXE60+YbHVpEZgQvcdMEtVGdxdO9EUvto9I0Zi1MRbLAXljN2sTONSFDZgUO2R9+rJWC
 qdLUT4RiURlONHkShGjlQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xPWyyOIsZ30=:PM2jMtTs1mg/L1DV8e2kqU
 EtxFiCFufb1Fr931U+j9iUYrACIU+M+1XgnkmtQyb09yUUQ/O/sgGm4dW0nZxUCST9IWFwkc3
 Ub5ifdMzosn10Tm5NAffgAkd17FtJQkJ5VXwT8Nr6wj/bwW7wh7+7MDVuE2e1Z3WaRlW1v29n
 0j1hi2nWTJgk68wXGMqYj3fvg7+ueJ/+eBI5jwenMg5QkELUN0aky5sj5pmX20XK4cHEfCxqS
 cd/zIuUdsd5YYGTHr3fhjyD+xnMh8PCIfCtCZCi6FEg7qJJbEzCzWfZZYUsRnRqktpH1FNEM/
 Twsz5TYVLQzPmPdX/fqhWhTb2N0IP/kFekT5ru2CdX3qzlSKg7YX7HJH25Seu3q5CtGIsJMA9
 3QV6eV1+7w6Zqt+QnzTKuq7UmbEvLed55sqjO5ZxBJlzQsQpagx3r+zMbqH2MS1JEfI7f5zZ0
 1ptiY16qCv3jHxjaaUtmIBViHvYbghmADqUEcpoVEy5OtSkY7a6cWVOrqOYwsbSWuNmoXBEy8
 X/cR9v7eHBwunf8koP67KTuEod+C/QI2PrmL/LoznQrGSsWtTrX4sk1gDSHQIENf305wNUgrG
 wSaU7nJ6q20I2EijZDnO768UHcj+rgfeUQyiZ+4OysOHbY8KFzqzbIx0yZbhXIh1FVNVuEU/J
 21A7/eegiRsZJ/g+e3drtEwRkfiQvC+3vxEIsyQnpcMwqE0A22GjeWSaJ9SDrun8stACaCkLL
 CMiEZs5ZwWaEhg0aMPIw/iwnppp5piJMjfTp7EDQ8BB6PzB6G/7csQajKqCUwfj9a0RMUSxjt
 BLzW5vrQoAid1RvUBF4MvOVfIlaWoNU6MS0PKq447lN/uSHe2fvU59bk5mMsokQpjNvhj9P
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_150049_646453_6B916D2B 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/4] Move caldata extraction and MAC
 patching to common file
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
Content-Type: multipart/mixed; boundary="===============5151223478325254895=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5151223478325254895==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=QtITP1mZdqlA3r=-="

This is a multipart message in MIME format.

--=-=QtITP1mZdqlA3r=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Sonntag, 8. September 2019 16:11
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 0/4] Move caldata extraction and MAC
> patching to common file
>=20
> This is another attempt to unify caldata extraction and MAC patching.
>=20
> Compared to my first attempt half a year ago, this includes more targets =
and
> does more code cleanup, particularly by merging several differently
> implemented function spread across the code which effectively do the same.
>=20
> I also plan to address the special situation in lantiq when a find some
> additional time.
>=20
> Note that the current state is only slightly above RFC quality. It has no=
t been
> tested so far on any target.

Checked the code a second time and tested successfully on
ath79/ath9k: WDR4300 v1
ath79/ath10k: Archer C60 v2

I would be happy if someone could test some of the other targets.

Note that I do not touch ar71xx in this series and do not plan to do so (I =
didn't explicitly mention this before).

Best

Adrian

--=-=QtITP1mZdqlA3r=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl12y4EACgkQoNyKO7qx
AnA0bg//Y6S9gn1a0Y817qTet4N9kovOyI1BQHqnc20M7HSlNDbvwIJs3msiPc9f
06leg2Bed+89GKVfSY0+GtQgsn5ChaULI9XVXDfQ5aM33V9PsqlBzwpMriU6nx5X
EjDOigt4ZfhowVIBeVN+SaglwcXhuNBicRWB9e/Pz3CGOwWW+GJa9isr93/x2ESg
/zKR8DKpi3e37gi9jg4MzZsqe+2KAWyP96e8lFPAWfy0cnuEXbtimH9BKWl2rVlt
i4YEvC46Ec53uo/t84g2e+ch1LV44CPONncTEUL2XxFKZU5O+H51h6tXBZZUoZDg
qkNGjLhmkUvlsxdUPDSJMSyRDr3Mn0BJ86/LEYeCs7JWnGEc/t+A58m9My7hfa4t
pNayXhV/4j/+0g1IFRmovulTh+/1YXPFkmBkP512WkcWkAAjER0/1qW+JmgJxfpt
wEVI3+K9GrqIgh6W5UhKqxqJ/O2eDCF9lDY/E2l0wTfMxXhqXqw+maRTdS1khC3n
G6OZ9iOTAvNbavRYUJnK63s8ZkMV6YEd8WQ2WIooWSNO6aRhtqPH3aa/hRJdVCoK
dugmj+c2m0qYQHiDyYg6SysmV9AhjbV/hSEXDlk4Y3nFxHz+twmdGlT20IW3/5ZB
rFy1kxUzHeNN9WRPBwN3DeiQzxrli87/QVUE/UvajqVnHOYvnfY=
=MYdC
-----END PGP SIGNATURE-----


--=-=QtITP1mZdqlA3r=-=--



--===============5151223478325254895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5151223478325254895==--


