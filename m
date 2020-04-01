Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAE919AC53
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 15:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nph4dKtB2HdpNR6YuaPzEygjIGPSCGdVRmmSrbR0Uqg=; b=cIp0ZCqVTtJ2dkqM92olKHf6y
	fAmhXf/R58QCJ0bmVeRaxc3stoz7akMubALktPSusW8WpHSnz50rmPk7csI3paipo1cP8JEGzbz3k
	zWAPvacxYzP1UMhJtHSR/R18OW/FE268VJ7XudSieaWBdKnyWl/YDnTT77qZoF41TqJlTcHtowt/y
	85XY1CryQ4gNoZ2mjOaeRvGnmDJtG1vY7JQPp7aLPfvnrtWh0eaMXf00w4zoQt9ub2X5lhSVO8xk7
	SXRXQpj9DeQ749hGNWs3t+j3feepy/p+0+re+a3ukAf1v9If2+JVunADztZjFHepT31ubkth9Bbfx
	iC7xyyNcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJd1B-0008Vi-T1; Wed, 01 Apr 2020 13:02:53 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJd14-0008Uc-JC
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 13:02:49 +0000
Received: from desktop ([188.192.134.104]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MT9v5-1jm4Pq35Ul-00Ud1u; Wed, 01 Apr 2020 15:02:37 +0200
From: <mail@adrianschmutzler.de>
To: "'Tomasz Maciej Nowak'" <tomek_n@o2.pl>,
 "'Piotr Dymacz'" <pepe2k@gmail.com>,
 "'Tomasz Maciej Nowak'" <tmn505@gmail.com>,
 "'Paul Spooren'" <mail@aparcar.org>, <openwrt-devel@lists.openwrt.org>
References: <20200331232009.1948083-1-mail@aparcar.org>
 <427c8bc6-3313-e334-f346-73d6dcfe04c5@gmail.com>
 <909b15c0-b36f-db64-8aaf-f12afe539a61@gmail.com>
 <fb5cb860-aee7-a61e-d2ff-6f122f9100b8@gmail.com>
 <1ca5e93f-b486-61e7-7ac6-7f86fdaf2e3c@o2.pl>
In-Reply-To: <1ca5e93f-b486-61e7-7ac6-7f86fdaf2e3c@o2.pl>
Date: Wed, 1 Apr 2020 15:02:36 +0200
Message-ID: <024101d60825$d1a03d00$74e0b700$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQKxJu2u/CofiSf23nZhORVgzmxxdgOTscTFAjjJuTEBMVAW3wH7ZrxGpmYzxNA=
Content-Language: de
X-Provags-ID: V03:K1:AbsByCPVh5i0u2lWu8u4NbPpFbHEdTirPpeVko/445C4J8cVCG7
 OS5eNg4Uz69TCWXsdDhn1ZJFbx72WpaXqdc2AxZ/2dJz5uRSP1+cimQuvTVO3cftQCQjlEz
 LfyLz3e/cRgeCVVg5WxMmE06Q4LR1m7okBS48boTTs21qOKcWJ8YNdQthOU1P7yktSjXodJ
 45s7fMgb+dzM/KYTseHYQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:haaJojTrryQ=:1ivHXAg/A5f/yhA1A+1ZeL
 E2QaW+i24uhnY3U47pr+DcKMy12k2nvNwxE/Sy50ZC//X3CfiAwr7vIuOkrcGH/NpyHU35tP3
 h9nO5ZK3Vb6UPHfF0uBQV1bHu1BucsM6eVP8WO9tBu1/aUz0ITsBKau1fr7dvZ4KK6q2EFwM1
 Jsbh/aDH7m8NFOWG9Qyd158gpV0YBKTd4kAuIeOoO2keETGoLuY0PsVNHMAfPSTltPDnEcLNl
 r/EBzg4bHFs4/I/XAyv96xW5dUyPr/ANEoUz4e3IQxHHoc+lJAurbhjDPqdkkBzJMS1Yj6mX8
 daEeW5H0ILh9A1v7s5CZdKMnYkn0206lGBZpEyWzR5A83dBqhxWvcH/DnQLYwyHhootZDhzUy
 a2kjIVi2vInt7UhYanoJTjj/cdL7yOFDfG7b1ypwYXyrPY83+O2GL5xGQDKARnqzMbin9Lt7Y
 nsmJTgTyi8F8/2x5vmiLDLZHr2yekXkMbC4lgKF+AsyAHzpJqMRDjV+y6N85+aZWFPVarcg6c
 fzNerKfkuOgqbwvQKyHCgXAI09bjhkt3TtwCbWUy3r/xVqsib4SqaPBsYnHGHsh+pefTg3CuR
 UYfBHHU9e61WY9mcTDiTubz4BgKWhaH4oloiksu0vj6EQJH9r0C3rOCNnVwMxm6Dz6QNzM515
 Fh2n+V5RIAOJpDXs7CkTc97PF3/uZZEb2NHNmgczeJhlLV1Cymbzuq9jFaaEGT/Yp97IO2Hli
 LGx9dLOwm6NccDyY15o27F3NMUirObHhxaLVePaTpxRC4pdLqlc+uNEpK7R8Caw1wg7BP3QlO
 kHqzzIgNz8NndTC4NCNO5UffkGzPFaOsvcUCDOgQqC87zumEUtikGDo51Bn2ZjHpDWNR+OK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_060246_923233_4BFB456F 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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
Cc: 'Daniel Golle' <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============1424938330402454122=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1424938330402454122==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=lDXFpgEsnP6C7P=-="

This is a multipart message in MIME format.

--=-=lDXFpgEsnP6C7P=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > How about patching device's DTSes and include 'manufacturer,model'
> there instead (in front of the existing ones)? Scripts in 'basic-files' w=
ould also
> need to be fixed but this way we save this (in my opinion) misuse of
> 'DEVICE_ALT*'.
>=20
> Yes, that would be the easiest solution, not introducing cryptic image fi=
le
> names.
>=20
> >
> > I'm also not sure how many devices are affected here, only Linksys?
> >
>=20
> Only Linksys and rather unpopular MACCHIATObin (I don't mention Marvell's
> dev boards as these are scarce).
> Don't know about other targets.

I'd also prefer that for consistency, at least for the Linksys ones.

However, since those are partially in the kernel, we should at least try th=
ere as well.

Best

Adrian

>=20
> --
> TMN
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=lDXFpgEsnP6C7P=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6EkOgACgkQoNyKO7qx
AnBQRhAAvXOBjfZdehCQtQoaqaMY9KrhpgAfEdgXEGHGzPF9GlLaFXClwCwVN38h
jQFa2bgegEancfGj8xNjF0ueiITqmTmqyyLgu0nV4bo7kQn8z+MufQlJMxajc4mq
LPGSpKb7nxXjU7gz5XUEzn5H4FWEjyX8OBZzC4ncIGKXeMvtnHcacTv17sjzcEVp
Q42gbl15yLOMIP0D9FxJhEulG5hNeJ9mcOcNuvEC/cYqZ8mYyG1MMV0WBK8HRJxT
a0XUIYfOLXWSZOP0Vbvfr3OnFwTWMXMw/OF0d4vxgOFRPk8ZxzS8+hiGSs6tQUA3
kyv5W5J3J0YJNvB2In7sBffVLrL6PgEELCrjBtIEi4Rj8zHj0LOGIVGMeG0Bsytu
zywvwmwhXYEOpSN/tfzHFuEZ4GMrQ2I/CogJPz4s+c9kKCrSOQoaIZV2mwvNR99P
YOf2H9zOripQ0yX3GVkxszNAgFGZgHJYVE5I4AYif5Mcfbics5KjzpfYHeu9llgR
IPQLwWL1Wza3FXSqQ5ZcadaO+pNcRgr7nHBA8JPAvczQIYjrLSM3MNU2dCV/gsJE
3wziqL3JEEk56UPDADcrkj1lnCz73oFcaYUB4JR+IRICUVSJRaWdp3NqXS30uYbA
9Jwznwg2eHtkCOGVFfP7k8G5Gk68ACzPvUbBisPb7Mjypnp60eg=
=ZM7V
-----END PGP SIGNATURE-----


--=-=lDXFpgEsnP6C7P=-=--



--===============1424938330402454122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1424938330402454122==--


