Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6667B6F08C
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jul 2019 21:58:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b8ERDNsPwSQ3Y4HXnJ3V5ZYq86XgKgqB5yBLs6tFosY=; b=M+jjS0Aczw6OmbhhcnaJVEDNU
	bkr1u8JLIP1sZYiM+KWsJb3si/cuU0bzx8TyX+FoEVOujWacDrp68fHjtoTGK9BnfzSwz1WGlcOTd
	8VtsDd7Q61BLWFPHeukR76e5AGsu+QOFsKfaYv/gpwUK83qpEsy7itfzQWJVwV+O63LulHZtA10rU
	4QGrpQL6U5a1EnovNQBjf1a/Q/nrfM/600AZXTPI4IrL/NIHfHW9F676eSxNzbINhiXxaMKvwxrKY
	/uWXCYiUHV1oUqqt2g7X2Yx6FXbT5GKSuLWaseCCBNLhI4mQNxZRjZHfAD29xvuXDWuto8+wtwT52
	DS2dc+M5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hovUg-0008OO-Vd; Sat, 20 Jul 2019 19:58:10 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hovUX-0008Nr-KO
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jul 2019 19:58:03 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MZAvp-1hsvpm0zMf-00V7sF; Sat, 20
 Jul 2019 21:57:51 +0200
From: <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 <openwrt-devel@lists.openwrt.org>
References: <88efe791-03b2-2047-d2c2-98ba06f1ee36@birger-koblitz.de>
In-Reply-To: <88efe791-03b2-2047-d2c2-98ba06f1ee36@birger-koblitz.de>
Date: Sat, 20 Jul 2019 21:57:49 +0200
Message-ID: <006c01d53f35$69799550$3c6cbff0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQCpTA4eKbXfGbmPdHUvKSUFR0z7Bakr0ICA
Content-Language: de
X-Provags-ID: V03:K1:+7hjckr6lCPhRkFCSPBG95S+vcoJEHB1wgoV2iPHDoiQPYOy6HF
 wOp+6tcELLck3q1/H8hk8+Ugl4esPO2MZoJc7CG4NJepKHp0MnOHPNjylkC0CtwTMdX1W0x
 EIHA5bRiOaN7YaJTFJP7b2MCVJWDbrbLYbrVT15MgyBsCzOGFip/S18TJ8MB9y9hgCNPdoa
 /I4ZijdjjDKxh9NUY49bA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Q1pIuiwx8uY=:5xVPjGrJN7GJJouQXe3tgn
 J+EMVCx+Hxg6bMsxwfgytyteGOrTRCy1pg7jdruBo4cXrL2upqNasAQ2P0gKba199mIjepUhw
 ViLRbknLghNfQQCu7LsGzsmRWpn94qP4Hy72k4LI1flHKpzHVyuYpMakCR+p9IPXcO6F3wbeG
 RDpSUnPcStkUEGGCVR9YKSCoILNSzUaRXbzCqLBjRB9Gqlc+gJmMw11ZKO5l4SN1L5z7xqXlo
 XvXpM9CQCp+jMd4LTsqkdt5pBCRHTjVN8h/FyB6DSEVt7F1dznQf94Jwjm3EeZvCPH6Yt41GA
 31RMG+Ma8IUXrS0NUkDAONwuxFC9mX5wbDDfjsh6OyZxYlo31GrcBSz5t0h5mr0E0NaqydnAC
 BGxykwUtmtlg6N23jeB4uk2dkm/vsLtza+4PIlPH3F/p+txIeIEGjNXVOAj6J6pSdQkr02XU/
 px9+QSNJIHafo2Z0YcllJyE+MGgbuW3RynNbczATUdv+GvddamQElm4NSi4ukmQBp/hC48i+f
 Q93nN8XK3ZjWz+RpeNIyizz7Td31pZCZMaFKRTZeq66e0ahRjeJpWC79XVt8YGrA0d9XyA/db
 uNoSNgaBTmSV5/Oy6uD8CpwQ+i+jVGPWS8Za1aJYglIvmfqH+pwNZZC79TZDeWVSUTz1tWFtp
 XdSw2F4Pe9FnYZvTZNdt5UXgqa211iwfim1qkBGYWtahS1yIHDGw/MVWJTROIGV8nyx5qUg/s
 lCGoQHWDVG/dhkOcBTLFdFk57ft1DaesdTvTCm9NbH7RwzErp8/pvSnpU/E=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_125801_962618_96F16617 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Edimax RG21S
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
Content-Type: multipart/mixed; boundary="===============2375161558393139087=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2375161558393139087==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=q2Hth+lm0JApy0=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=q2Hth+lm0JApy0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

sorry, me again:

> +	model =3D "RG21S";

"Edimax RG21S"

> +	keys {
> +		compatible =3D "gpio-keys-polled";
> +		poll-interval =3D <20>;

Interrupt-driven "gpio-keys" should be available at mt7621.
So replace compatible and remove poll-interval.

> +	leds {
> +		compatible =3D "gpio-leds";
> +		/* there are 4 red leds, unlabled */

There is an "e" missing in unlabeled.

Despite, recently reviewers preferred having comments like this in the comm=
it message instead of the DTS.
If you move it, add an empty line between the compatible and the first led.

> +&pcie0 {
> +	wifi@0,0 {

This is what I was referring to in my other mail:

Maybe already use

+	wifi0: wifi@0,0 {

here, so I can refer to that one later.

> +&pcie1 {
> +	wifi@0,0 {

Consider adding "wifi1:" here as discussed above.

Best

Adrian

--=-=q2Hth+lm0JApy0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0zcjkACgkQoNyKO7qx
AnBGLRAAkvVQes4CQ/gLM/7MiLNxZthrCs5jFSdIg810rfBIo9H6fMg+7qP58xxx
4oc3Im4vYjONy2mRMLC+GzksLzHYtSIBu3ipznhZ/J2++Wln4pwQZe9WF6zORDV3
BQZVnjHZK4fuVGirQGZsTrbrzBEelnGso0izGNl1NburItTy4KYRZkwfL8rvarhv
ViBZ3/q03f6JQxEQT3Ec5pawi7bRxeBCfolTgzijojMd5UAyE2PwLxzigjLzITZf
7QyGC+NvqE7veKRHN6PtzQGtANYnRFJsIROMPgcEepEO2C9ujkA7V2ITqqxbNb0h
Rrmawnx+CCFA4Bm0qpZMJ03Jxr66vhi8jyDoDYzpBJoI0m8rFT3gzBxmHx4ZszxA
PEmD15kmZr22Xy0KpEbDw3gcViRTJDPs1zvWFY7CpjfsBAZWkxUVfVe6L7i4ksI9
dCQ/Pd1MTfaqNg37wtj7JHrJSxvG17VZbf9u+h9ZY3P5KqHJBh+4LvL1fD5/y5m4
HxDB06sBokTyTFMo3hDKCaOfzitLjW/IlE+9ylxJ3Aah6LUVyfBg6W75meMrK6Cc
xHaunAC0xkFs2McsFASmFQjbHgh5PFqmTcf0G37mFvVN5APPV0hrH15LIFWsvkYX
EQd+9vDFD1UuBTZNaYhV8wWMUtOKBaamYc8fLRUoHC9/dJIFcCg=
=SSnV
-----END PGP SIGNATURE-----


--=-=q2Hth+lm0JApy0=-=--



--===============2375161558393139087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2375161558393139087==--


