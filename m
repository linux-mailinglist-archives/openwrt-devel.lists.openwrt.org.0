Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F237C9470
	for <lists+openwrt-devel@lfdr.de>; Thu,  3 Oct 2019 00:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HAvt55qJCxBkDKjUEEqxRB/Jm3dZqXc1V1X0+aeDgdA=; b=KknryRmcIvOjOh83rQHSe5B98
	IJ4VXiVH36Aph3zOHyY09Jux8sE4Woq2zicodM7De3OvK+SJqslWCeaS8jsnh6N8LR5CctVjQkxFx
	sPOJHxmnvK5A/MCCsKQ5hSl0mKlub0DjUiyOqbK3Mhx1Zg7TYA/hK3VnV3kFqat8wFj+Y0Mf0E1+v
	F3nD1PkYLBYxYb9rADMpr65FQ/Gpyxm2OfD6DfyxCH+T8slxvqswYa9hTuU5OrtPRvCv2vfz+OzUt
	NX0mBIIx3TkS0ALfiC0rN/8HKTQ/lli68Jqf39MJT4iX5eU1n+V5pT7ySDHmLfaFpGvegwkI9hKtb
	+rjjBWDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFnOH-0006VF-Fi; Wed, 02 Oct 2019 22:46:37 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFnOA-0006Ur-91
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 22:46:31 +0000
Received: from desktop ([188.192.136.78]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mk1BG-1hrgvD0GtM-00kSmB for <openwrt-devel@lists.openwrt.org>; Thu, 03 Oct
 2019 00:46:27 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20190922095717.1714-1-freifunk@adrianschmutzler.de>
Date: Thu, 3 Oct 2019 00:46:26 +0200
Message-ID: <000201d57973$398c8cd0$aca5a670$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIAQtOeg3XhQajU7dU87m+ETVuHCqbyYJ2A
Content-Language: de
X-Provags-ID: V03:K1:tPCBPB3WsSilomX/b3qHNvTX3VGHmwGN2TfBKcYgsxw/nKj97cJ
 eJXA7txG8VjLec+PWGx2CodObjokE/mH+AJw0fhH18Cvo2NnYkJNu4Rp51VSkWlIjVdHuMW
 2Vac44rjppeVNCVzz3MPmbftnXwzBCekOGN2MhWgoK+tcMGH6fdTMu1nbc3GYGtv8rzvEfB
 r9tlhqy0oBsLHaylcPG8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:L/P8KqmqZzI=:9mWqV9yeuShGgI8z9fUUss
 j2CxfOjRmA9eRxf7FwEO4mBhgV9YEYCWxTf/KjByJ+1ksgSmSS4sgI1EnErjHl2KO+A+SmOqz
 YN6rcvsQ265IMtH9I3J8kA0BzApnCoYe3guHtaiN422YOFtWM9FzJ5gyvn7rJE190rVEjm3b2
 iESvGyBHX9IOYTFFyKGRA44DI3tcjkHEuriZcQZI5VH9MjPNqNwZYOKEVG+gxinRcY/TT3kMo
 URmeHPGrsi3rtdzs8KX+d5mQEuga6SHqfTeEXus7mv8d+Wqpj5eKDWovvW7MaFQsfwz7kaHFb
 8/CZ4PNheDYi13hU6hsXVeGFlnGgpSDRVxcqQNKgE8rRhgGl3Xz/JDoWkWPINMi/4p7RRlYNP
 GT2f7MLwylM4S6ummS0gJDtsiF35u/WYu9UiYkpOW8ee1YLMuKNdwhT3kwU0kAKXzdqdzZ9iz
 I0DpmkoW5ZXyVAR/r3p9JFmvOtD19hOciEgqaIQkhSfTI3CPtec14TONIyNkHYS5CknttgsSW
 f6/fmHsWG4o5B+tUQp2qvEEGkQhpL9to6/HHvSD1seK3452OkthMrH9qgnswyVqMVcCWBu6Hc
 2xEm8guwM9a4EJ+gT5csTnkkwn7/WqSuw5ZV3uWt9S1pqmdWwTj6rEijOSE/KeVQtAC6snXVG
 ge8P+u6/MhLk1PoRH4cR89O6xQwVWeMEmzDl6uOvXOJbw5ykp/1oXXsx003VN6aAaJSTfXDk9
 S1qH+RMyetxoVJL8Qvx2AO/dL0KvrqP2NH06Mt59SXqDmvL190mmZ/azEyus/VIxzsacdVKfc
 MNiHnxp3/uKi64646kJO5DXnKZyW/ACsqxjDqpKCMjaLsAO5GwwP4feYvv+xH82hRw1Ys3Ur8
 SR2UwxsoY42CQ8Yh4xajetz3uwroLmOiWOfGsSh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_154630_612600_CC083AD4 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.13 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/7] Move caldata extraction and MAC
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
Content-Type: multipart/mixed; boundary="===============4617311340516063448=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4617311340516063448==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=dhLfawKZC5ydJs=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=dhLfawKZC5ydJs=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Sonntag, 22. September 2019 11:57
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH v2 0/7] Move caldata extraction and MAC
> patching to common file
>=20
> This is an update of my patchset unifying caldata extraction and MAC
> patching. I've improved some tiny things and despite that mostly done
> rebasing.
> I've also included the patch for the special situation in lantiq I sent s=
eparately
> for v1.
>=20
> The patchset removes 417 lines of redundant code, which despite that also
> included several variations of the same approach.
>=20
> This has been tested on:
> - ath79/ath9k: WDR4300 v1
> - ath79/ath10k: Archer C60 v2
> - ipq806x: TP-Link C2600
>=20

Tested on mpc85xx (WDR4900 v1).

--=-=dhLfawKZC5ydJs=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2VKL4ACgkQoNyKO7qx
AnDVLg//ZA6iwYZWwu7h8ecWV9+f/e9euNxI1qvKUU2otzo3/YZc0rH2Om7oPPd6
6jWALxoVdtcVp0RWkUmZqdh1uygn569pouHwc5VuKm6FOU36cz9XdnkXL31ln0vZ
3oaj7xb7c5K+rn5exCGme8KIlRvl5eDNIZwD7m0GqXruc5xA9oO5pNkvUYQ4T59d
YEynmZvuYinqJpKZz6a+nIUi7jFHyIL6gs4W1wY7tRRRWS8I4vTeK2ZcQPesOFAU
oxTBbZOud5w9fdACt6iS+wH/pDTYvmlv4qHXfH5tkhhd6uiz5f1TsaFQtq/bl4PD
u91NObdwAYiI6yKGMJxL2G4Nx7vl+k8NemFGJ+3fr3csdvPaTIaGWYdp8x2/hpyx
5++rKCuRcyawFMIpxe7RttEDyq4zhkyrVEHGDA9+ROLUUz0g9Kj/StMfGZ7aZn0J
FBXwa6eO8woiBnhQbugkD6uD5BQ5ZVTrqD2+ItXncggx9t0ZO8zwDwmVlh78cBzV
OsqtC4FJXBNdofdiuH4lkzeA3NLMZCgvAq+hRNVkFvHj3JyRCivXSHHZ5IdTwFJc
nfaeIe41k1BXugPOC9gVG3XNzT92N8lfxHj2Vef6ZWJ4beZwIWaafGhyJYYJzxZS
ZsXdU7JmQHAvkEYgVrTZCOdpc3+foRtcKkf6dDESg2XDnG5/Jag=
=mjBL
-----END PGP SIGNATURE-----


--=-=dhLfawKZC5ydJs=-=--



--===============4617311340516063448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4617311340516063448==--


