Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42820FB8C5
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 20:27:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1giiXgQ7AlIBzLKw7CinKPzWawBepdfEv6O5gzJWi6M=; b=K3mIHdc0+cNbKikqNpJ5D4Z/c
	Vpygrv6HSavrUB1FO2+MzSGsUrRk0mHbtiXN/+gEAMqMV1coQc+qKWKM/T5TSC22LNjqhijTbNcgL
	TMsZOzPToOyqZ4KFL9kNVRh/8zMAJ8PhHCj9lvsJco3k1ai4nNI4KIUNCN72yFqd/Jb75WyBoOwCN
	b7HmdzVLirzZP6cZxQzJpN2UgBlKviKIh4fnTLvWQQSIf60YAHXCyOk9nIez44Xso/PC/OVym0eUk
	O7rKNNkJR+qPd7L0rw7E0iaASW8GdQ51CGI1wVapCfEETS/CT35/F4jGfaprluDlATng8NLwrsxCs
	SgQEG81ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUyI6-00075x-3p; Wed, 13 Nov 2019 19:26:58 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUyHu-00075X-9E
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 19:26:49 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Macay-1huFp140Ve-00cAVQ; Wed, 13 Nov 2019 20:26:38 +0100
From: <mail@adrianschmutzler.de>
To: "'Paul Blazejowski'" <paulb@blazebox.homeip.net>,
 <openwrt-devel@lists.openwrt.org>
References: <20191113191932.11470-1-paulb@blazebox.homeip.net>
In-Reply-To: <20191113191932.11470-1-paulb@blazebox.homeip.net>
Date: Wed, 13 Nov 2019 20:26:37 +0100
Message-ID: <00aa01d59a58$44d4e460$ce7ead20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQJd+oYoXLfl6MbOgwxFuVe9LSDewKZ4uwiA
X-Provags-ID: V03:K1:l532P9tOhPUgQdm5UIo6MOvUIUMJXVjtelU9BvdkT3VQcvX2svK
 mxxlOBm0bEX1KuCNppOuqFvrczB6NFd7OKXxGeRmRw3dWeUllkVaGa3P4b98v6EknbETXeQ
 vQZTgXYGkYUzEq93uFuV5BUI6tfjh6+crJ2oCD5YCxghBzhjB/41NYmILnn+HYq5G7tO4CJ
 O+HLqo+PqlVnbucowMU6Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M2Ipnzh4JGU=:27ffNUJhbCvjtxaKr+rP/e
 1nR0HZtBQGMdEnmMR6byologwUYCp9urVYxfQxr1qZ9Y+RGmMPGenCPlk099zBKs5TIh1kLLa
 2ssCiEvSF7nQzmJgb7qwppQc/0LR2tmnLfA1beDYA50n5/BRvwOBkZa9hjlUuGb5L5r9CC0cG
 x4MBdFOPpuB1PDOzc+0eGlzP6hLjL2r9KugqqnIR38KTvphNYqy4cHWTztGXHW3xjV141mrgw
 ZWAnZGtu4b5fCZ9+vwQaQPlpT/uHn+hctjYrZQc1jWRWN3zhZPFf2dwdzrsCG8UocM8NJTFpx
 kGqVnkUOxu9zCmN9ER8V3s6gfMOkykpDeSSnF22v1eEnCt+iFqzvWeWKGoCb/ZIOuAhJW4KTg
 4iFWTNrd06ftP53ffePEomWrsniFIKJ/eyyjO0KS/wpHutzt/305rep7MnLl2WMUyltjRUPyk
 oDi2w53w9KxL9S7NAOuB28tCNxf8HS98uPobm4kbIDr34Vv8S9gDuXGlCPEwPBd+J/XQcK6dB
 s6h3WKkvjnHDFRRLLnkqkFRSU8fzgARbGdvD8yx4EJb8SBHy7sFMtEhauMcdyuxShrbDQTPv0
 jYl+YLIq2bKSVHG9lyNDyerwqNAWkIzH+xMYp8pIWCnBZPbX/D+oRBIueXTZqZNxWkEdAsrvp
 3OzCG93Yj1+uqgywQ1BWZbWEd1TLc382mHHoH+0Y9RTEsszjEY39wnoZ33UboHDSZiLva51kh
 FnkCduRb3fRUHkylMHccRhU2LlpEWx/V69aOgTFm2mAUTMR4txt6dJPALyeBZoJSDAA8C1spS
 MBK40ME3znZ9f8iv/M2IR2tcsXiUpY/o+qdvS5e39waLVpKXtYRi2Hz8JRqXNkGKBEYg8LJma
 l9ofMhjcDa4Azq4vbl5zoUn/uBfS4DJUk0JQJrLu0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_112646_614193_58201F4C 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: split dts file for Netgear
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
Cc: 'Michal Cieslakiewicz' <michal.cieslakiewicz@wp.pl>
Content-Type: multipart/mixed; boundary="===============6016993662914712983=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6016993662914712983==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=wSakUOxF+pV4Gq=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=wSakUOxF+pV4Gq=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Paul Blazejowski
> Sent: Mittwoch, 13. November 2019 20:20
> To: openwrt-devel@lists.openwrt.org
> Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> Subject: [OpenWrt-Devel] [PATCH 1/2] ath79: split dts file for Netgear
> WNDR4300

this is 1:1 equivalent to the previous submission by Michal, which I will m=
ark as superseded.

The patch just copies everything to the DTSI:

Reviewed-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

Best

Adrian=20

--=-=wSakUOxF+pV4Gq=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3MWOwACgkQoNyKO7qx
AnA2+xAAykZ0O8X9ZlGV41IBFevRUT6AgNZ8E4pW/ZfvrUo+9rgiIVZEpbKAqgIe
NiYtP8IgP1o9AOCpRi68DrBsXmpXg+MbJD3X2Mc3avQFnWKzaRgG60wWFF+Hhut0
Y22KI+XfXc3NlGpx9p15XBQel8FRXHWqF6hJrjtfPjQtRimaQTdFs1VEdCwCfszM
H66H/HosC4mf7dzZOew18IszyG+QTT73mmEzhcDHXxlSEAPWsqO8nrroJewROpL0
neWfGSudTqxcLkz5UhyyofqQ9iV/1NO028EAoCDPPuyDu6fUEzsdUWm9lLkVyIcJ
e+8QFwnOVxEP62eH2jrjj4W/OAUX4+YN1nTt3pm7VOIjml+7+R05bkCn2oFF/u9H
o7nMMrVioT84Dd3m1N4KpKPbpPS6E79SyPrOlmEB//dfFij+sza9YZ/ZDJDppAoI
YKp30DX9K4ud5lsJpPsPaWzDvnvG/5B73BxlwpCqD4ijPPf+yIIiWmepYQVSmopt
HOSNakR4Jn9VyeXWI/d9F9om4+XZEpUgZ3//SIwwYaF+otdCg4D3Z8NKFpMt2O9/
BaxNW5Z/e1jscS/l85CO/spAcHVnorNjRYnj2EAwBx+XP8KdQevSz5DV80lz3E7K
EFbnbDgkaN8qHil4WjldA8m01GMtQnx0LsAah2Cyu2BGBxTaQqU=
=aRp+
-----END PGP SIGNATURE-----


--=-=wSakUOxF+pV4Gq=-=--



--===============6016993662914712983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6016993662914712983==--


