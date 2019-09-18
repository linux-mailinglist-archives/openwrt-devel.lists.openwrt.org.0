Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22115B6671
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 16:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zsm7mrzrQETTStd6dFxCG1ZtbPQ07XPvkOql0+KTKxU=; b=uu6H3O2Xm26yX/wOCNNu/Vm/P
	pKhIeRZPILv3wGUki2DvBBe1+xaURMh96LDoPFQuXnV32aLQEoHYP84VBB8YJH+k9Jw1PNhSxy1yI
	a0LuGU+zFBwkZ1OMR4LKidz/GHGo50ks/CZGXe1UyJNU/6lFs5Qh9XNcOzDankTZhWnHrzlecLKdQ
	EhEOzw3LqmJZ8CPPOg/TA5lE6p0XGTp1j9JYtJ2TlNBAkwIxwz1/8lSjnXFh/7utFGxqQlWk/UhFz
	/BWUAlwD9emGXFNmyuZAegJ+nQVxUngqHiDjNMp27GKySLypjP6YT1BSgWnK2VYT47HVrJO2LBnJt
	cU+tKjAag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAbLd-00044L-DB; Wed, 18 Sep 2019 14:54:25 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAbLM-00043x-Kb
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 14:54:10 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MAxPb-1iLux30mYj-00BIqu; Wed, 18
 Sep 2019 16:54:04 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Chuanhong Guo'" <gch981213@gmail.com>
References: <008301d56e1b$214f38b0$63edaa10$@adrianschmutzler.de>
 <CAJsYDVJ8nr7Dk8gHR63=CT=tv8h6TYpfqky9guKfGFn2_RapkQ@mail.gmail.com>
In-Reply-To: <CAJsYDVJ8nr7Dk8gHR63=CT=tv8h6TYpfqky9guKfGFn2_RapkQ@mail.gmail.com>
Date: Wed, 18 Sep 2019 16:54:03 +0200
Message-ID: <01ec01d56e30$ea157ce0$be4076a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIFtGz3UDpzIYogMio5pneSfcnX8AHGj2WLpsLC77A=
Content-Language: de
X-Provags-ID: V03:K1:4YI4Xi1fYBcMSZxASf9L6JeddGENqrMd4FuDifb41saGz4WYxKL
 /Im7chbLNdXycZ3M3pMI7nC5Sh2nUDRJ+Bi9VJmn/tEmQHhCLldmyox/zCiyalJ4eP0TkmG
 ykU3ZYKCtd1liNnGVUWXfumAfaH222mR0Jy2Eg24ZpEGMi2ae80AYhISKUXdh8UNdYfELiZ
 C7SAK58tleDkS719d5VRA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:V2ogszO3qyg=:hE/OeWOASeZ9PVaihOpr+Z
 +EhgRSHz5fObSqQgfXiIFOfZzj4/Hrmxa/Y1ME3xCJWEQ0QxGVr7o7wtZPucSfz/oJm3kU5ng
 zseO0+Lcbud+mKVkCuMYyMT/8EkyP66HGQai+5wH9lAv2B4d0ukUvHRWM7onxla1HklrMvYXM
 86GbFcup/S6XVyyI5cHDLp6yfdgF5orHe8YfPyrGEEJEnjw7IKNjeRwIPFYdrz6K1Uow8Wl1+
 XyalIhOQRgZCR6wl15Sc9pX+SxjqDU0ojdA2ftTPqpf0BHqi5q75fLjZWrZ4VL/ZDR49Ubap4
 GZGOZmAqjtk6CRkXnyNeutT/NjBZm6EMaGKJ/BHXyfgzOpV7/glMJRU2E5qJoB3/fMWTbP1se
 dG+oLWyLztS6cD90Ek9Ae4UvQw7b5Wdyx5/3YKjZx1JFXZqQ/j9lTuZssG/T9TGNl9isJpfzn
 5/sG0TSsz1yiin3uRnOIvzj9S+WH+coQ5Ett8+LALiSIF6txVIPUHZEmMAVJc3Lv+CM+nB9hi
 WVij1hRsU9QsPLrXCjIVK/JKrvw8rzwRs7hTYnHf7j11b3i/7wOLkvGgZ68/rtMTH+yNxSiTw
 r2txffPRTpSawMTxjt8HMf5fUoUoI4Fb+6lBo/kPcOmLlFdxO6LhJKGw0frlZgS9OCPJL2aMM
 NRCdmZmZVBSHBcL9cu3O1tTEcU1iE4rHbTRM/Ag940BsDtgGxX0ZzSdnSqE1TSnljwEZekPeW
 yoxYbwa+LUqsJqz+nr3SvD5WDGBGn6uANVD/X3eOBU9SnDO6ZNWy8HUQkRQIeX15k+aocxchz
 FGv/QS0+Wbe9eNaQd0vBVi6E83iX1xoRZ8QaytFa86uVsG34ENrRVUB934/9g8tjrDiuavggh
 PWp3+SduTwrb08pbYWbJClJHNveBB3CXbBcD1Tmmg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_075408_972096_96B7A5D6 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: openwrt-devel@lists.openwrt.org, 'Sebastian Kemper' <sebastian_ml@gmx.net>,
 'Christian Lamparter' <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============3413529664557470052=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3413529664557470052==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=QYGaybBg/cLd2p=-="

This is a multipart message in MIME format.

--=-=QYGaybBg/cLd2p=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

that's interesting.

> BTW there's another misuse in ath10k-caldata: All ath10k eeproms have
> checksum fields and should use ath10k_patch_mac_crc, ath10k_patch_mac
> exists only because ath10k firmware doesn't verify it.

So, let me repeat this to check whether I understood it:

=46rom a technical perspective, it would be correct to change all ath10kcal=
_patch_mac to ath10kcal_patch_mac_crc (on all targets with ath10k exists). =
This would ensure the correct checksum in the firmware file.

=46rom a practical perspective, it does not matter which function is used, =
because the checksum is not evaluated. So one could use either ath10kcal_pa=
tch_mac or ath10kcal_patch_mac_crc in all cases and would get the same resu=
lt (in terms of functionality).

?

Best

Adrian


>=20
> Regards,
> Chuanhong Guo
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=QYGaybBg/cLd2p=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2CRQgACgkQoNyKO7qx
AnCswg//VralNG/nO/ILURRjzRJGIVaBXeXWVNb0ily7X0e8gkLZDd6D4ffyKOEY
R+jq3QJQ2E79xnCPf69V20/D35j+mLt8qS2N5BsO6R40FDWWiC3KsE9teElUqDjl
ISlbrD/3xrGEd2QtIRVq8lxCyRbPSPfzfTuHQZ9vWRJ3noLy0ciPIJq5CAUS+wou
T5Xczy9NkoP5A5465FqIpBcldusYxXL6qkSL/kG2u5lU67752WWUoD14fyCEgcwn
nabdHg092Da3obDQ9J+Q9W9kLEtN452c0Zh+OTpUMug93dsXf1D/RzG7lF/iRLdP
c35wdq1mST+BiAKaHl2miAhZJbleqfh5K3ktXmvQx2omI2RGBFhqkQW5jmcMFJHq
cy5k5NwQW/zFRu9JQXHO4EAeIDx5u3EZMqzf8Rii0DqO2vKYCiHC20iN6otl31Mt
qPDo/DXiGniVUqtEFApSycUXbb8LJs1oPtJmFL4gdkrlsd/g0H97Dllg58QkfjSr
kMFSZxyIKuZWoq4MgQhWNW80x/otsylfuSL+sQnWIGtuD0+VT04Gz/se0WZ4mHHf
jX0E7CEnNJ0J+fcRK2ly2otnpZn4Odw2i6bvgtrVn56qk1KZmP105QqWbsfhsA3s
8faOj7ZTW1pZnUyOre79abwvQhxyzbx/9BbzyYsa95fue8aZrK4=
=U+Tv
-----END PGP SIGNATURE-----


--=-=QYGaybBg/cLd2p=-=--



--===============3413529664557470052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3413529664557470052==--


