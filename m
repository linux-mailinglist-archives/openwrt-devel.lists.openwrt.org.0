Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59B2B26C7
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 22:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J1Ch1Za0sRs95FQso5UshPN52pL8RbW9MS+RXF99ZAU=; b=uTaMf+ndLYmJfjKtaJvgVZwN4
	PpvotlZM4xTl5BGKceV+DSNPDGSTpxzJKPYvbO8Z5ULn/rxrtDvo0bRV15UGcMpu/Leje+Sp2sgP4
	8ciBvR1NLZaVTp8n8rgvxE0l/RqzmklBEhYmH8lwwig59ANEgBLdY2CA4wkRK6WCTJ394EYPEA43g
	TnwIsdJmt9YCeASxPZjVsB7MWoJTrXhAfyQxq2KSfHWW0zv7dM+DUeU9ll0rkW2lBk0uXQimYci+9
	EheXYJscahAV1jSz0qg/N2j9qPG7RHVgb1XiBb+QnZqRqrUjc5YMIYscuSxwOWG9U5Zj30XHhmDj4
	TGHMVkpAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8sNt-0008Tp-SF; Fri, 13 Sep 2019 20:41:38 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8sNj-0008TV-Rz
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 20:41:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MZk5x-1heE8A0xZH-00WnaO; Fri, 13
 Sep 2019 22:41:25 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Ivan_H=C3=B6rler'?= <ivanhoerler@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <8957A07D-2E40-45D2-9EF4-AA06AE649692@gmail.com>
In-Reply-To: <8957A07D-2E40-45D2-9EF4-AA06AE649692@gmail.com>
Date: Fri, 13 Sep 2019 22:41:25 +0200
Message-ID: <020801d56a73$9c3f6000$d4be2000$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHaMlTncWNiIRTOPm/aTEWCHpEaqKcggUxw
X-Provags-ID: V03:K1:GFObse9ipWspmS6VdtEKIteD3nFERLP2BqFCe1MCRvp01VK01sU
 XPaDTfLVqqBwRjadIC3EUAMw882Rnkin3WJWo/PUWrlEvHsZG+mqhs4OyUbLd6wIacXg4B9
 IDHHT966Wq+FPo4T4we1uAiGVg1/IliTUZhZ+JNhJOnQcR6kqqGGBISqbZOpibB8lf5ElwT
 WapkB4GLUbmKos12OI/pA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wZKgXx25Ko0=:COf6B9lJTlQKrbA1hfXvXO
 8Emkmn8rbOHnQkT/y5GKsPfki55p2mwdV4bSTIF19NDJyhx+avJvpbgUzP6W4ChXXkHPqV3wk
 cple3EEOOX3M9b/QeKOWSRby4MyVO/1cUohsE6odY2uGCundMV4jkKj8PUPNjIOW3cO3ftI/v
 Q5fYSMgwNqI4rogfXaHSBAyiBOV1qi16z08YWj1RuN0E1CbBqbdgZcJ6FdNyLaxk+jJMtwOpV
 BoU/Qmu1BwQXKCxjjrrp7ESM0jAqRJUuU3IdZRCgRcN0pkfH7kMC6vC/EjhtIIutbc/r+/tnj
 tqBBZOpJi9qhiORI41pLp3ykAWrzYCZJQkfOA9ZV9JCBKLgtz6dcsLJSScTESF6+PlsNGj456
 hoDfsHiksXYwT3DB/oAJwq+s4220sj4hhQxLu/P9oHVQEtKvRnnq5hsH1N7vzK/ja0tCC3y7O
 +4aYUt7zRynqWzEgcdaOH3Yk5RAO3BNcS6B9TDdK6Uy8Olnktj8arfCV33GmDUoleq2zEccTU
 ZlCn8F18WA9xhiRfbgbAcRIKt/tVe1cz2LaxXZKtzfbjda7PvRN4yHBnvyoge/voHUWa5kGRg
 ru4g8fJlnnIEvLQ7Zotpe8q4chS2tVwsvyPNqQdY9PHM5KYeNP5BaIT+dxVra3mVkq3rK4nv2
 6rk9ThTnmSPBYzrqizlpvF5rtPyFCM21MMrA3JNKfXG8P8jXPYA2n6ANdXAXbD+TvmbYQ7m4g
 LoXiwfJeFJ93wE7PS48Cv77oNqezGLO9E3/AgIzUyvZqEryxLsL80dGPiUGhySuAbZFt9PIs5
 fDnMmGTi5jpwGiPU0WbfNDC194jTeEAMeseZXIpnAyGLD2f+sWzHeS/gIpXfKdlxvlCIf9ZwG
 t5XwxlawfN4Oww+o9zxjat5W7l2aN9fsvGEJe/LxA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_134128_205688_D9A392C8 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
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
Content-Type: multipart/mixed; boundary="===============0900575564047674681=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0900575564047674681==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=wMA/gNHKf0qaDL=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=wMA/gNHKf0qaDL=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Ivan H=C3=B6rler
> Sent: Freitag, 13. September 2019 22:32
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [ramips] Linkit Smart 7688 kmod-sdhci-mt7620
>=20
> Hi
> I have a question about how openwrt handles packages needed by a target.
> The Linkit Smart 7688 has a SD-Card reader that does not work with the of=
ficial build of openwrt 18.06.
> Adding  kmod-sdhci-mt7620 makes it working.
> I think it would be nice to get a fully working device when updateing wit=
h the official build. Right?
>=20
> So i had a look in to the files and found
> openwrt/target/linux/ramips/mt76x8/target.mk
> and
> openwrt/target/linux/ramips/mt76x8/profiles/00-default.mk
> where some packages are defined.

this sounds like a device-specific change to me.

To add packages for specific devices, you would normally add it to the DEVI=
CE_PACKAGES variable in the corresponding device node located in target/lin=
ux/ramips/image/mt76x8.mk (for your subtarget).

If this proves to be working, please send a patch to this list or open a Pu=
ll Request in GitHub to share your improvement!

Best

Adrian

--=-=wMA/gNHKf0qaDL=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl17/vEACgkQoNyKO7qx
AnAvkxAAkf5/p+Wr9/xfi5UKyyWmcNU8hDp9WIhuBmdeXtJYyJZRX6LXAoLVG1jD
mn/1APmaSUVldZ1PP7QOFs4QJo5zBS3DeXeSE7Ed5nyy5Dgqn7LyQLhG5slURctH
yefctPsNon3lPbPv14i0L/89jj8fUUNCg3+RLLfS3kMzo7aiYZfuIP4/HeJaJxwn
8DwX0dXQjAntGLBdSUdherDc2EeWFEidfEYLFpTuGeNmfbn/ocvTkG3n+mQ7gVPe
QjOG5+d7+iboUYfvKgthmr/3Wyfy3Vb5PWSNp1illVN4CF1N6iJSkkvUsu0OlBul
645hA3kP+cEiT6y1JMJdwO2DJh/JcEr86gaUAqyqCUh4wd8h7CsVLJvY3d9Djidl
cdZT9QMddtQCV6ZKkPrmbSbMy/3hgQmaok1lKjiUw63gwReJ9kdfj5bHRl6rQq7M
AghNBf4vhweJYec9ATstFZzB15N1ZFMgu0glzVXRj/GAtWKgSPEQ9sBROVEAAuIK
FhoOnqVDjVUdIqQQfuTnYfZA1swpbZ3fgw0fMQhk8bMooRkj/Z9qr/tZC3mhJhuQ
H1tMlkqxvZaxhWh8wEankLusqx49qtWx64voR21DAycIQeSSsi9Bol5HGGJ+v36g
s9MexKwx6R/H0Zl02UFuF8BbymMW8dyRBXlzlwbU9nuYEZad4GY=
=P5cH
-----END PGP SIGNATURE-----


--=-=wMA/gNHKf0qaDL=-=--



--===============0900575564047674681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0900575564047674681==--


