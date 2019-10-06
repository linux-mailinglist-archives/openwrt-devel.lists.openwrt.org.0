Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6487ECD3B3
	for <lists+openwrt-devel@lfdr.de>; Sun,  6 Oct 2019 18:52:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9+XstfwR3Wj/Kvt+yfHgYUOSbY4Pfi52gqK/FRaXFFk=; b=fTGWVy9CqfsiLHwHuOQyWOXoL
	gTOR0n+rmaZKULOZzqCtewbuOzQsnCMms/6u9ygw/5XwqMV64OxsVZ8CEZGg6uXLvncfv6LzZBx8K
	VzA8pPgKEcfQU3BKw6byJiEM7wiApJDjPx2Co+dzEkAz46kAgnOKG2cj5Pvk2cbpaxaNOGIQuQ/K9
	qPA4OScRgCOsW0lkVGlfnUSOlP9tOcdJncCQsJ3WK69uCaZw6PMj/f/SMTmCpqa79a7EqEVzgQKAZ
	bhmF3n+gm68RwqkXAEhMXDQ7q8VLBvLBSKVsjjgvaEeEgEwO5nBt9p0gXMbZTPUuF2xa9haPgQhjp
	xNRx4o6vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH9lM-0005GS-Oq; Sun, 06 Oct 2019 16:52:04 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH9lG-0005G4-4N
 for openwrt-devel@lists.openwrt.org; Sun, 06 Oct 2019 16:52:00 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MXoQG-1ic8YE0JDA-00YCTy; Sun, 06 Oct 2019 18:51:50 +0200
From: <mail@adrianschmutzler.de>
To: <vargagab@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20190924175256.3845-1-vargagab@gmail.com>
In-Reply-To: <20190924175256.3845-1-vargagab@gmail.com>
Date: Sun, 6 Oct 2019 18:51:49 +0200
Message-ID: <024c01d57c66$591f4e70$0b5deb50$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKXb0I+40h/MW5zwaKnXwIM8/SB5qXJ7UXA
X-Provags-ID: V03:K1:2EO+oTCy6eD30sVE8HA/pDxZTNhr8Dt/ASDIS91A/D+dEcjunbG
 stl047GGbsqW8NMkVZISx3ObwfMyWVKRonAZHCYy4HaTlr/5V82ZFZ6p859TXtlOa4uMkdy
 7iwSjBL2zuiCteubaM+vqj5pXv8E5zuEr98KIHwpyapgNlsyXYPsg4/TwZ4GQeABBbFPeR2
 Pg2pRo9UeVdC32eke1d9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zHIVQr1rPoU=:koDZP4vRYiKS9kgHfLJTo2
 tWqPcJJrI7kJiSCnni1viTU9LGBXdpLv6ncmArod0OZVptYZ96+8FLF6V0qtrrh1gTi1BbiZc
 OUY3xdRgXBGug2+kp/n18RgHAxo14nyj6V93GR1e48lrPPP+9GqdkU+4v14sbetsquxJRfL7J
 bHTgtFDfs4jwFTG5xhF3eA7ZH0leG1MhU43hoPqYAsCkY8DWuKG0rcqMMCgVpm1haxO6RauoV
 qD8mcveQVRaZVZvUk6xxin3sxQ7Ozst4Ov0IwfNING+UfvglhsPEtMeMZ3F/QQ+qhnyUt21F/
 AnRqTqmuSCO9CBxoU92wcXfqn/v0vverpPyyRbIr9k45QBP3FJLn+ZaW87hsP/sUvs0BIdlSQ
 CcZnl/tn8BTNnG6ZXssTAJSt8DF5T/qxjIN+qJBCTwnNVhz/ZL4KTz9Y64R6shTl5fvnRvdIL
 Jcf81b3bMjuHxGlcttq+D6HQhY6rt+ELxFT7hXO90OW7y42UqMn1yek5kFbACV4I2XFmf8cOm
 MGi2XAd/eL5sQw3hey59wV7ECD+5VjUu4kNtP5aw6RCk50sSVFRf6LU3hRsCbXi/LVaYAmYwF
 xHEHxlhjIrzHbFaK+yzeuyQZ6CR83gwLmpGhMBIrUrNzh/gLmDNj7KB9munVxq/RPWN8Ve9nf
 cUYB+XYEriRa6AGXleRH8Oln22jowh7/fU8NJTH0oOxDKE4QYr3tt4I+C7qtedmpaAChSerOx
 Rd2E4oEyfd1GwLSWYF/fO0J9Ncw/bF3XCsX+spWONGQuQhBGNoaBU5ThpVSygKkdDYAnje9Cn
 J1GriGRymNO8znNJz6q/u7eRcfRJsIKa/Tc6X4i6VAN6nz70Qyd1I53OmSqNksHcKYD3VXV8N
 NQgeFuktKbYp0DSLcWHG2yHhbB4jJ9BO+q2QFoCqQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_095158_465166_08542B79 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Asus RT-AC65P
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
Cc: ynezz@true.cz, gch981213@gmail.com
Content-Type: multipart/mixed; boundary="===============6858606267757898852=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6858606267757898852==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=leCYCyNr2Us74v=-="

This is a multipart message in MIME format.

--=-=leCYCyNr2Us74v=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> +#include "mt7621_asus_rt-ac[68]5p.dtsi"

that's not really nice. Consider to use just: mt7621_asus_rt-acx5p.dtsi

Best

Adrian

--=-=leCYCyNr2Us74v=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2aG6AACgkQoNyKO7qx
AnAw6RAAkbdpV2VrjQz935R10GQv3+50nrzoXN09VVp+YHGFKSza7tA40NW/ObU9
+ilQw0SIZrrJqo2huKdSSsMXN7wzsREZWOnzxFplB9HG8b1KtKTcIpjhJbqi+Lgb
qEORgslLgXmMDAWIJLh3Pkm+zSclKVasWqqtEhO7cChcrCbfv7XOncrCBYr6NR2M
WDiP0vA30lpdnnOOwFyVln/iBmF8Qh/+VVayqyODApf0i/azVtnU4GQI5cS0Rj5v
VU4FSCrG/3sKjjq18RptEBdkT7iOJCKVdI0rFJ+bw31jKY1QOSEyPo13Xv674LwL
B5kwt68Jyp8EfhD2wmCmgIEzSNAUoldeua8uOpyVmIWID4kIE3aBT84AIQ7CU+Fc
sD1GUHzWMJpCinGtd7EEAUy43ox8znZjPrk7NCC0bIvRBc2m96EAGEUDy9Nwzehb
r7gHx0SttHCpBiP3f+Q1i+W0gRdH/8gY7ynLoGuV8Z3stGFSzR3E52CH82j0YfvZ
xFI6dMkJpNJVg0KTVSrM1t0Q1W7e61AVYZ3aK8Ivi+hA5aZWUDwG+r96HC1N+ESi
L1H+6Ry34lRJ9/g6z0bw725taYQ9G53EKLpf6HhQc1rEE8VE0l/pT7cB9nnYp/KB
dMNmKqzUtm1Ayan0bYn/UHPl67xA4AI2ib+FsvyfmLmgeCy/3fQ=
=1ZJl
-----END PGP SIGNATURE-----


--=-=leCYCyNr2Us74v=-=--



--===============6858606267757898852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6858606267757898852==--


