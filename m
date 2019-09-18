Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFA1B66D8
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 17:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tlqJAKYwvrr2KdmyYARAjJYaMZ1K4PgioCLLfdVPqWA=; b=UHXNCkBBnSwMnjSF90LW9461o
	45ntdkcxeoNGHkhcn5LcuoaHPZhur4t4AboyBG1gq8NT29nXGv2pZKN79eTmCOo/tPTE5XFmvJiek
	1l062kRpGg6qhA+ioLn4Ud9RMcAYZsfMUFK8s4DZ0sZM3RyNgleLNzCUOOh9k6RnE1xSL9FnyofEq
	dkwcYPnQqI5uzO+DXYhFxeyAlRNk/Yh+Vp8or6BjvpwjW9WmdR/p3/7Rt6DGGewvFpiAKf3jkxFjT
	TPV/nhqEG9q3tnK4fmT78pFGqyYNAdCN41An66c+JgEwIhKG0PtnObAcT+O2xcN0V3ONSrh6bfKhy
	RkRMoyUMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbes-0004kz-I8; Wed, 18 Sep 2019 15:14:18 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbei-0004kh-AT
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 15:14:10 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N8ojI-1i6snb1pHK-015oW6; Wed, 18
 Sep 2019 17:14:05 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>
References: <008301d56e1b$214f38b0$63edaa10$@adrianschmutzler.de>
 <CAJsYDVJ8nr7Dk8gHR63=CT=tv8h6TYpfqky9guKfGFn2_RapkQ@mail.gmail.com>
 <01ec01d56e30$ea157ce0$be4076a0$@adrianschmutzler.de>
 <4e97a46f-00b8-cf23-6f61-76c86e2cfb9f@david-bauer.net>
In-Reply-To: <4e97a46f-00b8-cf23-6f61-76c86e2cfb9f@david-bauer.net>
Date: Wed, 18 Sep 2019 17:14:04 +0200
Message-ID: <01f701d56e33$b6149f90$223ddeb0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIFtGz3UDpzIYogMio5pneSfcnX8AHGj2WLAnp7ItwCxSJVaKaYzHbg
Content-Language: de
X-Provags-ID: V03:K1:47PLIUGfxfUNxgSUThtgKLNY238YNIgJhobLJTBZjP6BuCelvxM
 R/5DMNGgOIek3srs+sava+ubHgfvjHHW80fYvyk+WENfGm6im4oiFbJ269yGXPVlDn036lg
 /wavBSaCIFGS2lNMiMIMJvc4Bs3Qgu++qs1ovxsbuC8J60x+W9hQWAckHoj3bXZRlB56bHL
 MCzSQL/wBhAYIrD7Xy/dA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FSI6pVWoR7A=:uea//jMLFp3YxQ03tWqg4N
 62d63Y4EiwsVll5wbocH4bbAeaxWVxhHXiu8d+XvmzpzKj5V1CxJk6qqkjhuNQf0gieUaFRDU
 3UAgFkYOFgzlyonjYfz1whz0VDdHfxEcDLgxl87NFaVMoOdc/6C78Mq0iSYIejjp9WJKt+7Nc
 HdPEfU0smO/SXLTcOho4zw6xAy76IlGIXiYmrz6I8bd9uVBnSur+JIn+w2+r0MflnVuPIhpUL
 SKAQAPf/d2W+fdhwMMmGZcWixlF07FP1ceqeFpWykf5I3ivsYyBEK40zFxBvNQD3PqJqeL2v+
 /vX4bQ5N3KmqWwciPmnf2Zr00aSiU3qVTxNSfPyIb+eRWmBRcpgARWvr8vN7BmC150o/ZaUHA
 78g0US6xPW3ErHUwZJKDdtMS4zzCi4HdzA4ObbJ5tZHoHxL6PASH7som8lvTImw+y7wm9IAGP
 7I3VEcGP4+WBxTCVj6hY/G9w6RaCvg2tPgSPkrjCKva8d79WujN+IQ678It7r2ezDSw9vFKz1
 5y01twaDu8XcJxM02e7Ycw0YK0nGxde2Sjc3vHfv9JlE4smKP/8CuXSg1N+zL4fLKZTT0J7l1
 UoWKg8yaSa3j16kgesXgtcoZcaDhWI2sjg5tu+Pu4OtgdIsV1R3JR/QRWELiXYCXIcDPp8Oxy
 o0ayrpkHmjRPasZ5KzYOA+MoezmQtTlXyQJR3DJQIdNsGItxhsTirz8tDzR+BOKO4WFxVtF4F
 dSiSCXzylGM6Ut6/B8Vv8cxJTJBmTjvwWXTvIGFtEsMZ4dgi7gv2MzFOSLvDWNxAOMqPKiUFV
 AY4SYPvBHIwokzLZj1jsmrO+mRPJCKM0K9Q1LImo4/YplhdQ3mdsujom+FyLzh4H7p7qZQyE0
 6PCv2Relxdu51YJXv49z3JPmt294DewSTUduAIl0o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_081408_661840_C65B956C 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Negative offset for checksum in ath79's
 10-ath9k-eeprom
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
Cc: openwrt-devel@lists.openwrt.org, 'Chuanhong Guo' <gch981213@gmail.com>,
 'Sebastian Kemper' <sebastian_ml@gmx.net>,
 'Christian Lamparter' <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============7479801778432902729=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7479801778432902729==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=gKgPdWvFTpXoZM=-="

This is a multipart message in MIME format.

--=-=gKgPdWvFTpXoZM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of David Bauer
> Sent: Mittwoch, 18. September 2019 17:04
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; 'Chuanhong Guo' <gch981213@gmail.com=
>; 'Sebastian Kemper' <sebastian_ml@gmx.net>;
> 'Christian Lamparter' <chunkeey@gmail.com>
> Subject: Re: [OpenWrt-Devel] Negative offset for checksum in ath79's 10-a=
th9k-eeprom
>=20
> Hello Adrian,
>=20
> On 9/18/19 4:54 PM, Adrian Schmutzler wrote:
> > From a practical perspective, it does not matter which function is used=
, because the checksum is not evaluated. So one could use
> either ath10kcal_patch_mac or ath10kcal_patch_mac_crc in all cases and wo=
uld get the same result (in terms of functionality).
>=20
> ath10kcal_patch_mac_crc is not nearly as old as ath10kcal_patch_mac. ath1=
0kcal_patch_mac_crc is a requirement for 2nd generation
> 802.11ac chips which require a bdf in addition to the eeprom-caldata. Fir=
st generation chips do not have this requirement.

Okay.

I think I will add a migration to crc for the ath10k functions to my caldat=
a-unification patchset. I will resend that one anyway after my recent fixes=
 (checksum hex2dec and ath9k crc fix) are merged.

Best

Adrian

>=20
> Best wishes
> David
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=gKgPdWvFTpXoZM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2CSbkACgkQoNyKO7qx
AnCr9xAAuAMuCEqtwr8AW7aUN0MsyFPnw1ss6FzU/2CtJDv9QcE5k6i372dHScFl
fnhi6vkOtuLqUHjUaAEV2GWgTC6s64hQKerGnleuuVISsqwy6YiQuL6hl3gtR26W
jEuKLd8dGUQCUdl/UKdZHaI6ZYCKDbXnxkGFnkoh7sXVokqdxKICFwcZTmhJ8G3Q
oX8/OkhaPvtr6csm498KgeFfMqM6bjyuDAb0To8qRC+5w8LsnIaSS8c36jBcqsMW
/gDdnv1jiC1ocS+2m3lXaREi4cJcQI2Kyf0UOck5UH0aDZFdjt+Ns7H70wa/RN6O
fZ7bi7n7XWo6DQfqc+Ah4Csg7qBV0xJAnpwQaPHHLk3Kabjbv3G9NawiLb6fbNrq
nYY2YZtbqiQnr2+rYM617ky6FeIt8e//m5ZRN85zcNcTPKyureHm858ONfwcMIRY
OfYplcEVVZmbRHHkNbvmYQ0FxfnKaMEjEtW4jqDSidJxxc/yW5pbXL1S9+aO9gOf
0AKOiwHbyMUtBbbcMlMd6GGwc+HlBCwH6vyE9F9XqTaAD3wiuxtEeML+80/hY+9W
ecK73pUd6zZ3pU9+YCUb+JmqL2duLhynV8t3iORJyU3edPR+BvJH6uQMinhFVEKg
THrk6+RuyarKz1LXS/9XFEuJeQ+oRIOfaLY8thwSHrz08q/b01I=
=yjIP
-----END PGP SIGNATURE-----


--=-=gKgPdWvFTpXoZM=-=--



--===============7479801778432902729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7479801778432902729==--


