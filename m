Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C41FD3D31
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 12:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0mh5Ogkce8FiH9LOJ5BHnrxvru/qriHG+sNe4WDe9i4=; b=kOCL2TiuE9Lf8GonJa/YtN4QU
	V4HpTffikOHv2wKZKrBR5Ns7Y83wBpnWQardiKe/23IRJXrBcz0LyxMfPbIaPDWbsSue/wqRiAF1Y
	i5kXkfXtxpSuHjtxJWa9BRKSvtzOlElZGM/A+7wpz68Ca+UqPDFWDcPFtX1t76BRekD/Y/wn/wlyV
	bhlbYuZlJVNT+psdbt9MRJOcgHCYWMKY0NlolOsn56qhAX5derRdr1o+yTxDG162ihS3jWSwhYQKZ
	rTZ5cI2Ia4iMEjZkec6pXGADQWu0lgYk6Vo0hISZsInxG2OCxP4jDgvrY26rB2NvdTHWopq/fZGGT
	2ie5LxgnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIs1w-0004ZB-RH; Fri, 11 Oct 2019 10:20:16 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIs1p-00048t-QZ
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 10:20:11 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mq2Wi-1hfyZr0umo-00nBqE; Fri, 11
 Oct 2019 12:20:05 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20191011111446.77a86e7b@kosmio.komorska>
 <20191011111709.344d3667@kosmio.komorska>
In-Reply-To: <20191011111709.344d3667@kosmio.komorska>
Date: Fri, 11 Oct 2019 12:20:04 +0200
Message-ID: <001e01d5801d$73318610$59949230$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHFckNLZYiPIwXRKnWMdxFuyzZjxwFhmhhWp2pFy8A=
X-Provags-ID: V03:K1:kN6ljNeMbQ5r283DGiNgFRVqf5sxW2jSj4YXQFi+svpchMtCd5X
 404nsIhrLMGwQkDfjXeiwRoKnBkG2SEP7+nXMZGYqF2lFV72/L1ZBWctCocniRhXhAOtMDy
 /thBgOSES0JX9vyh8tvrf970bf+rTH12VwkA+gpUJv0TLiPGoMYBQnwxv6RKo/1cVYF/fNx
 hhBZd4rRK28xqT35+/2yw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6Q4eJE50ekE=:OyFOrdGOy48wrIjdEF1Vv/
 6HnA7jorgaOmvFZDUSsJ44MC2nOuVpThA39QYpxPAWuqEydqeOZOJ+H+gJd5VQzJE1To2uL7c
 cSvSgUQIB96JyNVy4nle60Fu1YLf/p4s52gYxOct3Wk806KW2y4AR+JhdaJKOs8DaXDpHuqXu
 Ol7TX7v8mw64F+HGXXH54cJWTuhWA2DJPlq66Jyqwo8gNZRkgCG93gLvnnnm2U6/XRcD0Ey1+
 i/zNzuTd59NZF3jtQdKy2GY+v6+UTqsp9oLMTdCELI0KgJmITw/nLrG/EqVGqUgu9PKslzLUk
 GyTlP1HWceoYU8AgHVMuYZGITspGiHLAfR2vqTnTASycaostyfYMHk5SefgOhiGGZHNmqP1yk
 APiP14BRRtX9Ce6NyDqzaH0PxlMs7jzGO9nJxXfw1VziW4HRlZFKhJVdLXBKZV3kCXHJA+ADN
 S/VWRrsI7jh6QqWUIdPFwHRmg/JGobJMY5AmHA33gPLaKZGx2ud7Si8gTgv/wATrTnzCvWrW2
 0vwIeemBrgLwf2b2G5io85BP+FnY/HKRB8tSmkC368lsOEv+HyWVrbSEEt9Kuxb4wLtpL2q04
 PABBGTaUb2RCUv3eJX5o9aPRNjos5ffZa+QuJeHKqpeuJU+IbhN6EUIYr8k5/VDbP6hFbjkLt
 IGk2DZdZVokC93jMnxZ08JaaqZpS2ylwScLXmD2q0b4nkiVDf47HKHv8POxMSyxFNXd5AF1Ch
 By3umPuAkehaL1gmOlCmZbUSkeyc4lG87vErCHeRVQQhk6QQTY63OT/fw+bCarVYUv+2dCmTS
 JMuCfYyov1YbFJ+PW8/hpT6Avb2FbFmV5wH+Yyv9UxMNbniDaHOJPki0RXfaL+4lp+Iz5FOKR
 sxYJVKcc3MUZol3ERGLqjiQJhdMtAdlDC6e+aiZsw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_032010_159583_72FCCA82 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: add support for Netgear
 WNDR4300
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
Content-Type: multipart/mixed; boundary="===============4739248605188216759=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4739248605188216759==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=7zCfYwSakUOxF+=-="

This is a multipart message in MIME format.

--=-=7zCfYwSakUOxF+=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

just some MAC related comments below:

> @@ -403,6 +404,10 @@ ath79_setup_macs()
>  	netgear,wndr3800)
>  		lan_mac=3D$(macaddr_setbit_la "$(mtd_get_mac_binary art 0x0)")
>  		;;
> +	netgear,wndr4300)
> +		lan_mac=3D$(mtd_get_mac_binary caldata 0x0)
> +		wan_mac=3D$(mtd_get_mac_binary caldata 0x6)
> +		;;

lan_mac should be removed here. You already set mtd-mac-address in dts.

> +&wmac {
> +	status =3D "okay";
> +
> +	mtd-mac-address =3D <&art 0x0>;
> +	qca,no-eeprom;
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +
> +	ath9k: wifi@0,0 {
> +		compatible =3D "pci168c,0033";
> +		reg =3D <0x0000 0 0 0 0>;
> +		mtd-mac-address =3D <&art 0xc>;

This order of addresses looks a litte uncommon. Have you verified it agains=
t stock firmware?

lan art 0x0
wan art 0x6
2.4 GHz art 0x0
5 GHz art 0xc

Have you checked that there are no usable addresses in 0x1002 and 0x5006?

Best

Adrian

--=-=7zCfYwSakUOxF+=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2gV00ACgkQoNyKO7qx
AnD4AhAA04TgCURHNWOz3ZKKP5UT7vvTLjmWoxaqROibFuEdzteutpmNYB8tpb0P
17xdH7sY6yUaSORPosmmUw4WkKLxuT7KMJBby14S9N5HwlTbJoPpQtTB/1qDd9lY
01+ojG64rxBnQ2217WiaClmZPRvlgO51KETskmkKkOki+rxQxT9L+WuhlEfxIrr8
jnS2erAOrHkCl7HUPp5KrUTY+XdOaxsGT0VeYn1/vpIVhe9TC+TNx1fG1IHyL3FQ
hY5z4OwsY00ywUlXFVTVVV4y+iK53mJ2ca6Y4izqYKFFEOFUyvIoGLBI9TJ51TTm
i9a7lmRwwccs4fln32NAY6LqKW7K4OnVOqRmnZ4NPX7MC4/W0TPEkfmlE5N7lhZi
wmtNm4xKrlmyJpKbs6GyibJ9gTgwANHom+cfw4fIwO0TFm/uDA4BCLuMYEFQwusH
xcZxMWUbCd1pJoDkRK9WAK9BDcT87F9yzf6f/y9Ed/jyqaONeeS3CvbEAb0r78Sd
cnIT7pXUJxmnAkHYNfZ2xW57NTSTFG6rhzrQlXMn4zzJAF0CO+FZAoPpLdTshH9J
Q4TR+xk/WufQzOxZAtHM4YFs9ry6GhBWBRSAcL+DT8fldQDPOqRG+zL5iUgRvgxM
lfNPEgJMM3A9Oth3u0E9V+01XZTQnCtZX6puvFiUIur1DzLkUDw=
=Jwnp
-----END PGP SIGNATURE-----


--=-=7zCfYwSakUOxF+=-=--



--===============4739248605188216759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4739248605188216759==--


