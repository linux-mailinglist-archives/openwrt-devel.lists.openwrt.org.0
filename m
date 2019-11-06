Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDA6F1A57
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 16:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PnYfuhlcDe9bI6z+gJ8CjhZeD4qd6pzTcrjp2ubqZ6s=; b=KgHTxrr+r2bZsr5stn3eRlHQK
	YyZ6ioLnvdO5ipHeQWEQnh1lh9O/cfSlbL2ec7bqfkGGbAdFj+4/2LN3asM+MRIG8kvNXn4ml2RdE
	EUqiYWBbztg7TaqMBHmfef0ao7+M74HvHRzu9V1u/NnXzo+9TXHFIyLYESHxMgtrKOzu/KMeQLDWD
	Ip8G368dKqLqQl3Y3VmhIGSvBfIs/2k8PZXpxKb4gtQej4Kv0D4AmzUfeGG4qsXsNdA3wJMVPO2Rf
	+I0edE67dHl81egK5RhlIORlJLgz6+EJcHZdAn9yhk4L54oJD0TmHFOvW+yJAAjAtmX/aBtW8zq5k
	+Ce8G+HIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNX8-0002zU-7W; Wed, 06 Nov 2019 15:47:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNX2-0002zM-V1
 for openwrt-devel@bombadil.infradead.org; Wed, 06 Nov 2019 15:47:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:In-Reply-To:References:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XD7nWQl6HhkaY79m3TjYK/BBnEY5XFSwRLsKBcO3KVg=; b=X3JPOwUnI/i6fBJWU1/1Wpoj/
 Gs3TXkKvf0hO3GfHLzdnnuXfypQzNwKzTurTEI8ixVdz2Ec6UwMI63GFPm9MQIqqXNk74CKrPNe1v
 g/aivGoBBOvaeRjv0LkvMf0j/dmXiftt01m0JWsXCQxZ6KEBJ+b/YrnzfodFEhHS6YPgRlSXYkUVs
 iLKPdlFM3gl08iqGQQIAaVCDRjO6hKIpnFo/s68+CwnflgO7Dpp5ipYUPgGlnbsY4GNqWWsg65HVF
 M4jUzDBrWvBlFlRMGPgFV0UKiXNMQAn/UvbXwePJ3nJJWJ93sjaEvp2fOzPx4Uk6WvXLvH9LWtJHJ
 K/jSCpKoA==;
Received: from mout.kundenserver.de ([212.227.126.131])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNXV-0003XN-OB
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 15:48:11 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M4bA6-1iSvkx36Kk-001iQq; Wed, 06
 Nov 2019 16:47:17 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <00d201d5941e$a6b5a6f0$f420f4d0$@adrianschmutzler.de>
 <087b061c-d246-2eb9-7412-9a668784b4a6@gmail.com>
 <014001d5942e$c68d67a0$53a836e0$@adrianschmutzler.de>
 <eadbf51f-6c46-8d2b-673a-87cce7b360f0@gmail.com>
In-Reply-To: <eadbf51f-6c46-8d2b-673a-87cce7b360f0@gmail.com>
Date: Wed, 6 Nov 2019 16:47:16 +0100
Message-ID: <017e01d594b9$77d3af80$677b0e80$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQIj3krgsob+/zBNRWrfaNFjtbIbyAEpGQuxAiCqGnYBMCrDvQJGxh/rpqusy0A=
X-Provags-ID: V03:K1:cJB3E9iTUPTdem5D2kJdMAaA5m4UbLhdaxNLO3Kq634lVhGQDFj
 pGRkvLRxWaq5O+qyabZPVOdW1QRr4bxh/GiLf+GHDBum055w0RBOp0vfthJvowXffhEUc3q
 mFXBf4ofIFYEh4zLDpaNMdt8ZwKthMPQwUDTJqs4i8NmTT9XIkIMgjeadHwUYiEBjsjMcl1
 qBUzLm1rZEE8K3dBEU0bA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fNdL68JGasI=:jGCykJ/gF4kO56geYUQ9SV
 GioQI93VmJvazinknrQNIRZeGu7zyOgoug/P2VpJaHfxTmt3EZCy1cduMMThAv8AQNPuaPHPd
 Emoz/3Nk04tTawIex2Ret3LCWZO5TGcSjUg0ylTvlbhd2OCLpAFWxWf9NJZQDLA7QSSL71BZF
 ZRjqmkGOft962QNVVaw4m0bv8+/IeLMvp7t8r/qawEzODT1bGVttzr+CLKawh/mYsoiAY6STt
 QQEt+luFR6UoGxIc7AuEnghdLB0TS9tUJLWvN/SLExOLGQESQyyoLDdzO5RhNT/4brIC2z5Be
 QruMjVYK1zYUE733OUYxIgc/B3a4UDY8xLeXIG61f39tmTbNI+U/A5iZY4ZRLhvg7H/B2uCqE
 Go4yylfduEMfsEfUa6t/YQO+kctKGwjlcYAmtjPKMQB4G9hyShXlAjzxE7izevZxOf1EfJiHv
 f30BuHjxiPjmxfMwQ2mGMKQnSpEZXMz+UnCCR7HrX68vk4QNg19MiR23bq199589RmFJ8ZxRK
 evArviNgeLVp+IEO4TrOdEkrpTswSV58cUD9Q0jZ3tADpafRLMJ6Nk7fiIDxXkowop/XWkzLF
 z2NuDR3g+GUuwiqeqeypffC0ivZL/cQGDT5Ujl1/I/+1/bh4HG9ZuBZtObz6M4AWoFEVeUJFB
 hqMM1at1XVNihjuIDIMoIuN+1Evbhjbhm25IdpYxPBzzpuMOSYPLl+cEtj9SdtQ+znnqszsJ8
 qk2JzdjdzyMHY/wUAj98MFQZh/mko1n7bYgu79LCAypywZS3PKBqz2WDWTQ1ZVDBF03VTeo2H
 IbLvqVIrCaocdmLLgEV0e+y9on5QUGP4TSrame9P7DLG/iDdBuFskIjnOAZPy3OI4Ileepv+N
 9JPabjKluTGW4ZcpOcB+c142Crrp+5muNvNoUOj/w=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_154809_848868_3B0FCA34 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: 'Mathias Kresin' <dev@kresin.me>, 'Enrico Mioso' <mrkiko.rs@gmail.com>,
 bjorn@mork.no, 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Type: multipart/mixed; boundary="===============2950336243490600844=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2950336243490600844==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=aybBg/cLd2pJ0C=-="

This is a multipart message in MIME format.

--=-=aybBg/cLd2pJ0C=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> Wouldn't it make more sense to spend time now on implementing
> future-proof solution and switch to it when it's ready?

Obviously, yes. But for the meantime, I'd like to have a less-arbitrary sta=
tus quo.

> I believe the major issue here is that there is no 'in place'
> replacement for 'gpio-export' (or I'm just not aware of it).
>=20
[...]
>=20
> Are there any other reasons to get rid of 'gpio-export' _now_, other
> than the fact upstream rejected this approach?
>=20
 [...]
>=20
> '03_gpio_switches' doesn't handle inputs.
>=20
> Of course, it has advantages, like the fact it makes the GPIO setup
> uci-based but on the other hand... it does its job fairly late during
> bootup. In some cases, you might want to, for example, enable power for
> 3/4G modem as early as possible, to give it time to register in network.
>=20
> Anyway, under the hood, it's the same approach, export named GPIO using
> _deprecated_ sysfs. Excluding uci and place in boot time where it
> happens, the difference is where the GPIOs are defined, DTS vs.
> user-space scripts.
>=20

So, both 03_gpio_switches and gpio-hogs provide less functionality than gpi=
o-exports with no striking benefit. From that point of view we should actua=
lly allow gpio-exports in device support submissions again, and actually di=
scourage gpio_hogs for the status quo ... (and it would be better to conver=
t hogs to exports and not the other way around ...)

Best

Adrian

--=-=aybBg/cLd2pJ0C=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3C6vwACgkQoNyKO7qx
AnDt8RAAsQBzMc/orOIYk+4oVSmKAP1vJCsPC59vrtqgVOQx0j+6w1MOw+k6cgi5
b2Av4/36zhsjGmc5Ay/vYvclcCpVCQ1eywQyWwVy0xA6uqOts4pEF1tWTzIHkj0w
ZtZO6MqHfYHPtg9OrQBgyiFFCAflWrknT2hcKQQ48gF7or5AEkZNBTLR/Tpp/SOc
LqX5xO5KI7DqQR6AcmLskrlBn+wMDiSV95RNWYZZgCTmmZeFlTdZMGrHCOkr9RaF
ySuMHheJQ+eJMvFD/GvD99IhVjOuI0EygwVZ1D4HD3Ef2fRMTO4GJZPeL7pPUU+t
17Y4/jptakL6PLXG0MGOG2FrNnCrRhrISGtFhIrzX75/G8S6PVL4m7PqTOqO7jAA
SVonl9BxnijeZaDHSUADUI6P6VGT/YenAfX2Jj53T6w3bkuPzvG7+vOmslhiZd+R
905d3TVtgehIduFiTyYWeqXN13szlinXCyUQfSOAWrfrReoJ8xQEUAEF2vzf0FAQ
drXbC5j5I/wg5xJXZgfrG9WBGu6hPc3mnxMqFA3VinrMcgxaZcMrZKKoVEVCpUby
OlL9uV9Yc+v6HmaCo2HYBmgpqBnOXwuKE9jPiA6zsa+F+9AByEq71cPYG7pwBsCr
iKojWYLh3T2avyKYY0MUTekdv4Kpht72vf74vnEWn96IQ5Bl63g=
=nJ4B
-----END PGP SIGNATURE-----


--=-=aybBg/cLd2pJ0C=-=--



--===============2950336243490600844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2950336243490600844==--


