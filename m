Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753BF118695
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 12:39:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RhsIQxJsp6RMv3y3B46NS7vcJnCdMrUQOJdtLSl31fg=; b=aNCtsyXucKZonKmSTfhJbmqa5
	/Y/ZHMxwgopQviJJee91EbB4AKT6GGm8C0itAA75WieBICL+inZnoZd759KqfsEEq0jTN+tCrBbdj
	1tJkcdq2l3znAbQsTay5YaV6dJxsOVecJlMqyY5ISvXFQZm4xvlnJuv1jIgUQcv+gjRVDDexlYp+f
	F1W2ZH03j2mc+Zz91bNGFCDJnHF7kUyoCfsuQXj+wyhdV38RMtGq1pkqN0R7SgyTDUxsBYmr39o4b
	8G/mnj9lE1oOtnR1g7uh6Ss8L0nfC7pGbG0XRHsJrOoQrHo8zDnVxNryLRsMaDo90enukvh7dNGmf
	a4gZ/al9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iedrW-0001NJ-By; Tue, 10 Dec 2019 11:39:30 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iedrN-0001MN-OY
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 11:39:23 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MYLqs-1iID9x2Jc2-00VSsb; Tue, 10
 Dec 2019 12:39:11 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <vargagab@gmail.com>, <openwrt-devel@lists.openwrt.org>,
 "'Birger Koblitz'" <mail@birger-koblitz.de>
References: <20191209220358.103352-1-vargagab@gmail.com>
In-Reply-To: <20191209220358.103352-1-vargagab@gmail.com>
Date: Tue, 10 Dec 2019 12:39:10 +0100
Message-ID: <011b01d5af4e$70ff5830$52fe0890$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJIPYEFOxgZO5l15Y8SOyw0Q5Np86bOIR1Q
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:y/qhRHth3tXNq+S412CqODuZkeOTB21nkhO58snjKUsjpEg0aDy
 rcvefQronEMxKTQOJZvjqJnjm+7ajSiBWp5YViVbmZRHGlwfEPBOhoFm4uv9YvH7Bk0/ARB
 52YKR4MvRte0fHHSe72E/QAuU8Qc+o6EfmZxCu9A97JfZ7HxpzmkZQYo2wtoU/HF66JwfmT
 KNXW8KqQrNCNW1vdW48Cw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NXg8SjJl3r4=:n+6J+BscfP/WqhFXIiXQ7I
 BP0e+J+FECLS4ljIXtoB6yC1zmINAbRRVnu05A4W4frfW6jFBJm5MPZJsxyB96cGc3W+JPwRb
 Cw8uuh6bSwNIUQ2Tigv4aFrdeZRaKCeJVWukSFn+Mw0zAB/Ts07Tb0jCg5nPrAORs8ZpStfAE
 5YkreTLi7c5123vegsuY5cKhPTUz2oS5nUdFaU8AqbncA5G6pDzbXbf1PtVjXgmSk+/wDURO4
 X0P6QLmZj9fQcynjSY7iFLjfGWhWn4OOcJ3cmgLuHSQ6CWPvbUJRuIJTYRf/eGMegU7qplHFr
 8OxEgYxW1Imqaq9FEZZYI3zlhh3c6FZ96L2e3PCYWlXLVPUJi8DyjeOcNw9z9fTyqdHn3Y/GA
 iUE/AgRjACy8SwLEfE57q2GrKfYyS5pOC43odgWhwoVpDS4qSfRgf0sSnkA6lbfkKPS1sqAl5
 w+9nMdPeZIVoPXLvEQvDtoAOFIaivBvmTM3xXlUnRRHCsiOsxw9A3Sg2mLsN8t0RVtGY2i7aS
 EGd4gclsFrogvM7dq+urPzVmrJoahe+7A+8JXRSQGHn0/YptqpncjgcKg4FLLwGEM45xwioW5
 dBnT12QN8Ge1R4eXQNggFW2wtCKxRzzV1MdtR4tGuc+2ioZK/JhqFEA/DVa7g2/VHMk8V3xIG
 md7eKFFz86bqPzbPSoxrYXkWMtqvhlIlJmUyX0oLubpgzJAwgYmC+KSzvLk9H7NpxsjaQWlze
 e6ikNvxN/+a7Igu6XevdG9LdVTOp5yNyBXUp0FnyD5+e0D4hrYbZUAJkrBxnxB8KKdyMvR2jQ
 BnmsXKhsGzx13dDIE4HKdWdsSjZNCmM+iGo0IpVYz6umQrS/rI1G1hZMUUm1sQRWJP+IXU+Dg
 x7vt+yhQPo4wgalC2yJhJeB6Q6f9NQYpJ69A+75+s=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_033922_090095_18B64AB2 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering for
 RT-AC65P/RT-AC85P
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
Content-Type: multipart/mixed; boundary="===============7445469393845324783=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7445469393845324783==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=OG2IczoN++yrx/=-="

This is a multipart message in MIME format.

--=-=OG2IczoN++yrx/=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

have you verified this for both devices (rt-ac65p and rt-ac85p)?

I've added Birger Koblitz to recipients (RT-AC85P author).

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of vargagab@gmail.com
> Sent: Montag, 9. Dezember 2019 23:04
> To: openwrt-devel@lists.openwrt.org
> Cc: ynezz@true.cz; gch981213@gmail.com; Gabor Varga <vargagab@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering for RT-
> AC65P/RT-AC85P
> 
> From: Gabor Varga <vargagab@gmail.com>
> 
> The switch LAN port numbers are in reversed order with original config.
> With this patch they are fixed.
> 
> Signed-off-by: Gabor Varga <vargagab@gmail.com>
> ---
>  .../linux/ramips/mt7621/base-files/etc/board.d/02_network  | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> index 420780a101..42cdb4d57f 100755
> --- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> @@ -37,6 +37,11 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
>  		;;
> +	asus,rt-ac65p|\
> +	asus,rt-ac85p)
> +		ucidef_add_switch "switch0" \
> +			"1:lan:1" "2:lan:2" "3:lan:3" "4:lan:4" "0:wan" "6@eth0"
> +		;;
>  	alfa-network,quad-e4g|\
>  	netgear,r6220|\
>  	netgear,r6260|\
> @@ -64,8 +69,6 @@ ramips_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
>  		;;
> -	asus,rt-ac65p|\
> -	asus,rt-ac85p|\
>  	dlink,dir-860l-b1|\
>  	elecom,wrc-1167ghbk2-s|\
>  	elecom,wrc-1900gst|\
> --
> 2.24.0
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=OG2IczoN++yrx/=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3vg9QACgkQoNyKO7qx
AnBO9A//bV/OcgHJHE3T2EzzFgP+2sr/D2fiv8XHZruFDB5O7JcUSs8pTxdiL1sY
BYqa2oIyWnxZFj/SnAk2zlCQQtVY9AtUQw5ckT0GUzdu+L1pY8DiG5CXiCdt8fsk
6mzS+cS1vWJsQVZJjZ6hMxHvXxp8DZLp+tZWu8NqAEa/r5xk+LrOiCNGYMb67B+N
HVHkLy0VmycgaY8SwHlJY2fFH4RVHduiYUZ8Vhbkr+FV73xeA0LWOSMAUM3aR2GE
V0d3XJu2LirDIwKzHmwQ/RxPCbJSRsDUxe/WKK7pcXfDtP/3YobMMimfEuVILWwa
0SsTMw2oWkDt9ObzQaDJihQomq0zprQA1rlE+3C+vcoJkIEp5v+oonbaTZQpSTgz
uycSxzHYuLWwpAyR3QaxzVaFzl52SEvTPSx6dN5mPS0A7RZLWo3+GgaJBIyMuCsY
dLqurfMsRMYHDEGJJAg5BS6cLaByTvVCdx3CEulIZMy7O9rtobcTN0YpwLLmVaPG
ABDR9GT4mO3bDTk+cok2ecWZw/mVgFe+AZtxAdhC8sDXxQ9vUKkJwxP502qJTmf3
xv5arS3/qYmKMa55/z0HB90vuegdEe2e8dFZ6lZsBtdEceWYBcCmkTsYfFpG+Ifp
tKY4bhAHDAdr1TRbuXDlt9ZVSJFheuDBG0+F+dQjjP2qw8VqEI0=
=m86V
-----END PGP SIGNATURE-----


--=-=OG2IczoN++yrx/=-=--



--===============7445469393845324783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7445469393845324783==--


