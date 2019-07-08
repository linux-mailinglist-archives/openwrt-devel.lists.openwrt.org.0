Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB0261B9F
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jul 2019 10:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PETSUwPkL2GzAbPAwtcmeKJxF/bgz2Fv6vENd2kJ3yo=; b=bS7
	FdBijSxTy2hGF0Rdea3y93EaawEJzwbKf4E5IwJ2Jt3neOaVSSb3jbL69VszeYYAAhflAOLnVfYRC
	va0qsM/2tEIMGn3f8AQom4oyx1fF/4Y6YMKpm6tj2qbSNDTSeyGn1DOMjtUGM4qCtlmYHMYuTsGgv
	GAbUciEjGqYlje84Da13PlnAp9OfMUa5dogG5EEfIufi21ja18thxtJrf+tY4apPGei9/7DTsmdC3
	A7P2YkzvGI0T3QJ/hiOB6ULKN9RxjWVwBU6OxRU1b+HVq/wcv8jfTr5T65iCB/b5jd7O+laOa5ABt
	Sq4vccd7ItoIpF/eLdi5aY7TtL5v0VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkOsz-00008O-Th; Mon, 08 Jul 2019 08:20:33 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkOsn-00007v-BO
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jul 2019 08:20:22 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MPaQU-1i5lVt1n6Y-00Mddq; Mon, 08
 Jul 2019 10:20:15 +0200
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>
Date: Mon, 8 Jul 2019 10:20:14 +0200
Message-ID: <003201d53565$f882ac20$e9880460$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdU1Zb3XHm0Owf1gRJyIYjOFqJRpGgAAAGdA
X-Provags-ID: V03:K1:3hCm13dhOQuTeRR62j+0VVNvqYILERzSbQpLFpuwkm2pU0nwnNr
 lMUpS8j3wwmZwQMnHkvPBBzgeWaPtA55jEy8iDWwmaZPoK+Q4+R7GMGgD8K4SytXLhKHwYP
 oJrUNx2XbFR9+NyfI+K6R7E5N3Ik+1+wIoXLIKpK9aoZedHIC4jrDqlh01DpAE2oI1TDPUQ
 zVLhcQufDByLZu/yxKgfQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pTAIAFYf4SA=:mYU6Dp/2wAbdM74vOquXSL
 q6d+vBGb+6wel+cNJtP6a+C/zu9Zwlcbs7Di2KWOdBRmOc0TSB0sfblXkgcsIj8HwvP5mkU8C
 Lub8MgrpYM5OxlAO5sbKvl7jBJK0mVZYhuue4ATJ9NgtkCjSnIfcpe994JzbRl2FEoKrHV/Gq
 H2z38RTNUh3fymHIXd3Q4j64mS4BrfaKXWq7SOn6NhR/ZaN7QJatzXUMt3DQW2yYduWfhPvB/
 v0gLbquCrjuTTTCXrU1BinuEY4dfUr8pvFT8T0s74sQ6xyjmbtSVyyonRBS+X4dfZNt8tOH7S
 YP/EtsGdisI9sp8Fn/F3720VyKEpVJaV03LYw/td5zypAV6oN58zqRHhSOWOTsOueyhYzSMJ5
 X59pOcMxJK4dhgMfB8xxl5nRt6G6v3EImiDk1hgZ7tqo1dQsFEvLcgkHq3tU6PwVXEk6/4Uob
 n2OMJ5CNJlqRSwHeI0NmwNStZZ1K9i+Wz/zpZIMBQYgoZZLr6V3ALWbXuTYUvNF+vpaGDZ5kX
 vUBz3m1qVcDFDKKApntFIbCuUa0bKX2r8Oydhq+Q/lRW6Z2tM1asUWoiT//2fWFOtZkFIPWUp
 LbMCRcqCESN9nyCdjnLt39yov6OHVgYaY5w4whAOiQT93Mef6KelFjUZOP8x7IBqnnOdOYcUh
 mkEo6NES19Djt1bLXohijbj/onwP76wWYZ4mxLC+hsJnvZtduSMZ2+kGvqUgXUE7pXaAC6No3
 sUVv90ZqCDJH9nkR2o3XvkeeLWFXMWgGq5DayGZljrITE0xoFYQJnMt1Apg=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_012021_685901_71D0CB84 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: Really check path in
 get_mac_binary
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4589066063325765281=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4589066063325765281==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=KZC5ydJsA+FZVp=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=KZC5ydJsA+FZVp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: Matthias Schiffer [mailto:mschiffer@universe-factory.net]=20
> Sent: Montag, 8. Juli 2019 01:02
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] base-files: Really check path in get=
_mac_binary
>=20
> On 7/4/19 11:28 PM, Adrian Schmutzler wrote:=20
> > Currently, path argument is only checked for being not empty.=20
> >=20
> > This changes behavior to actually check whether path exists.=20
> >=20
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>=20
> This was applied already, but it seems the logic is reversed now?=20
> Regards,=20
> Matthias=20

Indeed, 1 of 1 patched lines are wrong ...

Thanks for spotting. Just sent a fix.

Best

Adrian

--=-=KZC5ydJsA+FZVp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0i/LoACgkQoNyKO7qx
AnALCQ//ecOA8/tSgEJWzvPCd+UVJ4Ei3NDGfR9oS0UYya7T2p29BKrpqkNVSpyK
1IifjR4nYcFQUqUL0jJRdZJxuZSL4WkS5MerJphh8LsofihdOe3RM6Ls1SXC5UFl
HPeAsfgQqxrw4pAkjVk6DXxa09PwQCEtjjS7AGqzz2ua0/tNB5bnfvagJ964VU2K
RQRsw2X0UQv8J5wAaazTZPZBUjZqyAyGgSeD4IaAPe/hBv+2n/YKxjZUY1ggb2F0
/sr/2QBK+7x2x91L9ycEKFjtoYmHzQRYuleVkB26hiWiOYYsDoFQsKMhl8iF0qGg
XtEY8rcI5POvr9+ICyyOI23dmoiPlZPFqlBw2zlZPTNtetHO/pLmtNWki5ZcwShq
RR2hVUGgbxP+FgDRPD84fXDU6EfR4DHkhO+Fra00WeNSRVLNir1zbmD0ajlYjmFw
FF/c9ZQul6VAxoTIbv36G/FR3xOcFPKr/FXNmEffCfQGhNtIKyICO3t2c1jX6NKE
cRwtB9rU3gEwVpQRQTVy3BXZl0Q4A6bZedTIAQ01czO8Hs2BPHNLXW2+OUz/jA+7
WUbj/naG0g7qCFigtEjaLgG0zqn5V/VYob0WLvguLrYwIxGfsONwwlTqf06tWWBl
1COD9TMgK3qKqzSEvNTz2iF2rNlR+X90bZeQDkVwD7BOTFqr1kA=
=pw/f
-----END PGP SIGNATURE-----


--=-=KZC5ydJsA+FZVp=-=--



--===============4589066063325765281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4589066063325765281==--


