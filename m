Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC168B645
	for <lists+openwrt-devel@lfdr.de>; Tue, 13 Aug 2019 13:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w3N0tgLuGzjuMThVa9QirgsLxEqsCPBPkJGhTOh1yK0=; b=GM1WuY3l1joLXptQQy8LQ8FVn
	qH5pAu4jQ1TEX4q0ORFHKKz0Pg2REMokBwipZqkObKcdIxgxBIx7iCRRIISMC4RXayyat8WimGHDQ
	VqMeGyhAnQweVKUhcMh+8WI2YJlhF0aprW2WhTIvVRKAX9UYtOCT4zVuP7xPU3XaGYGSUIK/2WONA
	Et9BzYQaWioXRio4V9ZrmxEnWVeB1ZLqUMtHH+3ogWRGlisGtqub4NLNcmEToRtKfvZ3lSTCfEAU9
	+NVCzaeLcrb5QS9dn2Sc6QFqUDJbWMmBHGXxx+gjPNBjHjHKwiDujWyJy0DZDQAGR9UVvfs6C3HHY
	7skMia7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUbb-00060c-0e; Tue, 13 Aug 2019 11:04:43 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUau-0005XY-4T
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 11:04:02 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MFKCV-1i4NHh05H7-00FjLY; Tue, 13
 Aug 2019 13:03:56 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190813104658.17f88b71@kosmio.komorska>
 <20190813105207.2ebe4fed@kosmio.komorska>
In-Reply-To: <20190813105207.2ebe4fed@kosmio.komorska>
Date: Tue, 13 Aug 2019 13:03:55 +0200
Message-ID: <00c101d551c6$cce609e0$66b21da0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHo4xaCp5EgVPp7rD2F4MgzLhtLYQH4dtXIpsIC1WA=
Content-Language: de
X-Provags-ID: V03:K1:W/yalqyLYhHPTtJiAw6TWiUfyDsjndflaJdwwCZfdPkAubW7sDE
 MMeU8ltO5qH29c8kqrZOZVQRKzVBk30cmmg8aMgp5H+3L/OFVZGnyHSzPtPTgqeAUKp4KRa
 xt/nUmncgIrGU0wsBgEaQ1bpdMJoEut4uP2KtPmvx3jYS8gD86Ay4zrE/FiWO5rjGrJoYS/
 95Jal1j9TYQv9IgZmm43Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6hDaU8w9/NE=:nbIAIN+0rVAaV6d3RhnFIO
 oId8MARu9Gj87qqsY6IOdlUe84wILrHAQgMUjsrAie7PLGNjqSD7l8tsJP7EGKgGjlYhsDGuT
 tJhMwc7gnw17HYcr3EpIpNG+xigaRh9SaYM0qD+eAZhbi8yPdwZR4q+voya50sfxSRKPxtNnm
 lbPSM0xK2HljYxrHEogExYgwLADlkcDP4oLtg7Vd85JpFaaLqFF37dZZdjZfcL387TBFO+Xaf
 yrmTyqdBKjJLC+6/w0buMGDpdwq/BEYB1tlbebgUdKu8ajUUmtydOogJ4+BPValh3dkKcfdSj
 un6GjuiWHGDICS7ARIYnNA9LhFAqvWHnGDyfuf96wviHwG40Snf9JJ4ORnmtQXVIj+v61uRNH
 RyAaIV6O+XQZU5eesP+1v/AIdCybupSmEPyvE9AD/pICPgU0hNidcxqHL1qty9tJa1G/2MiGU
 lS3F14LqllKil0UcSOCj2wrSdDO189jfowclnD8LiFO4u8sqpnMT1Drd/XR9CRTygRHrA99Ur
 5vZ+HSnN876jkYA75XvWLzed8+8CdzO1NuWUYMzU2CITvG4srQDEqnkYZ6EkMrch3s3tvIimW
 AucieBLmMVVq/iATPE1HKrmtlzto1/0nTvgzIm+UQjsydeRxh4JrQFXbn78o0NbiQBIOCnc77
 Qp9RbtX6m82B2rJyYKHjTd/lAMu7YwEVmJT8zDGJy0zM+a4oBQYGiNcqx9vOkQbMnB2BbH8FX
 vUVDfUMM9itHTwhuae68hg/17tXE9A7joUlOeqgKswpO8uzhQGeh2figGxU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040400_588663_B2F99E36 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v4 3/5] ath79: add support for Netgear
 WNR2000 v3
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
Content-Type: multipart/mixed; boundary="===============6095248784324368729=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6095248784324368729==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=liMb0Hl4qGJpC5=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=liMb0Hl4qGJpC5=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Michal Cieslakiewicz
> Sent: Dienstag, 13. August 2019 10:52
> To: openwrt-devel@lists.openwrt.org
> Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
> Subject: [OpenWrt-Devel] [PATCH v4 3/5] ath79: add support for Netgear WN=
R2000 v3
>=20
> This patch adds ath79 support for Netgear WNR2000v3.
> Router was previously supported by ar71xx target only.
> Note: this is a 4_32 device with limited upgrade capabilities.

Sorry, found two things again.

> +	ucidef_set_led_default "wan-green" "WAN (green)" "netgear:green:wan" "0"

Can this be done with default-state =3D off in DTS?

> +&gpio {
> +	status =3D "okay";
> +};

I think this is not required as gpio is not disabled. But please test.

As those changes are minor, maybe wait with a v5 until you receive feedback=
 from someone else, then ...

Best

Adrian

--=-=liMb0Hl4qGJpC5=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1SmRgACgkQoNyKO7qx
AnDyKBAAkBA2zcSZV8MvnRV4MOkQmu2WgnQbmv0Hd+oX+9GM++c/5Us9HmYiyzQ6
b4xWe9EVtJU9afHB2MITSIWMrpLXDoocOfx2lOh/dhvUmJhLfJ+mhZrn4M/l4vRd
2W3ZQ/FWzSrkiVMO8cI9p6HcQD3l/vXzfx01p5YGgu6dgRo+dYL996+UHtIi6Yi5
ZNF9bfC7FXpJYzR3Jn7kdQQ6AY49n/CAt/FBH8/ejTK7g/aqYxgcbILV/7EJbKDA
UpFxvBEBJ0v1Lq1PIlwO7X3js+RUNmQVI6xQa7MPNDLwyqp4lvXJTqd9D4ojsBYe
YrWL4yFTyPgO+tpFU6WX3KDc8RnfpLcbWeWly6zli18enT9zyqrTaY8WhKgAJ6fn
GN+1XQlJ2UUOELiXbzC7D5bKcQoASVultEGA8SgQQH23zwKoLL3EqGix+0bEKhXd
UntQOibnYawWN7viQWfKu4M71EKtWNDXu9qSin7ztAFftVeNWa5V6E88rOTc3qY7
ylp6ro62rPvOJlSQP5Iz6asvM+zgoONNTfIV+GOoIbajcFmTVbB2DXK+G5mY9mkB
z5jgWP3/Rbv8kmj+z+F2ydGW50QzaxKlthzPBGBsKhFoA3ClB9cbLxI9ioMeuD3n
Mx/ldtrhIw2ybYuHHoc5oDLgGlQRgMLyFOEhQD+3d808BjKtjCc=
=WR1/
-----END PGP SIGNATURE-----


--=-=liMb0Hl4qGJpC5=-=--



--===============6095248784324368729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6095248784324368729==--


