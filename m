Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50F01AFA1B
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 14:40:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AEg/XAJnBsybaN5KSwyDEfGiiH8a85imTWllKtCiiFM=; b=Z2K3rOovpZG0W2BSYsuCKzyUQ
	OKIEiv6bbEOCsoN04uOw1loOATXIBPmh/ejqmQGTmA4QAK7aFdp4cuxsNtz8qt5cdrrQjWbZdOM5/
	oeEqtVqtEOlo0q8gfpn5DZko+czXrfmnNn0j53xI8hhuOFFEBRiQl0KQtC5Kzz4216wILIp2b+gun
	n/BHkrFRKUPCx+F32o+myPpZ+JSGXhdj2GgZGVdvit/OKT33ywm86gYI8umJjCCFreFZwmcMAnlAf
	2rWnqTMY7nzbGI89m3kTLKcnLjxa/W15DUq/PlNqcOI4JYos0FbAnuMLoCHN5FqHj5qVxdGqQHfjo
	iI4eRuWLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9FD-0006vw-KJ; Sun, 19 Apr 2020 12:40:19 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9F1-0005WN-NK
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 12:40:09 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MYeV3-1jmxBA0qyR-00Vh7N; Sun, 19 Apr 2020 14:40:03 +0200
From: <mail@adrianschmutzler.de>
To: "'Szabolcs Hubai'" <szab.hu@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20200416153146.4377-1-szab.hu@gmail.com>
 <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419003715.26284-3-szab.hu@gmail.com>
In-Reply-To: <20200419003715.26284-3-szab.hu@gmail.com>
Date: Sun, 19 Apr 2020 14:39:59 +0200
Message-ID: <00b001d61647$a5d0ec30$f172c490$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQL0dhLR5hkXWCP1Xd1+5I+zBvPv/ALP5V3AAuZgmXGmFe5SoA==
X-Provags-ID: V03:K1:OFdL59d2OVcB6PxZ48WqNpwu8m8h7xhBz7K4Ou3VZTLQI9WFeRO
 oAJcm41c+xjKZ3xubMGVXs230h3LyWRrZWUl/LLDbQbxbKzGUZRzcfCg25TjgDpnk+Ap0vM
 apqIhDM8DD9iQXDBe6m0WHkK9BqU8BNLBoL8v3Wvp2o2JbUWdWH1Elog31NmqT25ThwOo9O
 ecv9anpANPaGUyMkGoQVQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7WBd6rweELA=:Tamii6IPZraRhsAU75Bmk0
 HJ1wTTqAGoYO8y7WLhnx4x1RVbbzfoUP4+fKqGruaFb7gdFlgh82x4Ye5ghFz4eHnf8v1bzf/
 M9dXjH76oDsHCGoL6Jd0hiiYK2D6TjMp6EYhUYKUL7zlwE2bJ7qLxFdUz5UM6pm4bOXUsaXq8
 D0ZEz3idRP/Nj6rPehbhlFzCTbZnIRpcSb06U2GN+BmQcNTwnppSaV7iduyHzXVsZXU/w3U1C
 c8LMmRSzZMXFI2+iLqIgZb19b7TF94uPGTjWnW7cF7q8dZ9Vb3HaqzjR+I9QPRAVX5fNho0aF
 J88wmVRi+hHXilprM3ArG9xp+N5qmbwS7Xm8OoUOJmgPWCMbq2k/dWMdIf7pYqwhNUvbiu6Og
 FYG50QA9ry8BstIB39k3ijECS2f98CyijD7q4FE1tmWuTG/xPZ00qAnQx9C8G9CrInn00oRaR
 BP1I/j+lWqgWeVQVqaLw85p4F1RvERNl12LHIQ0DKY/NfmNveYIeBPo29m2dzIYWR7WjNsY0u
 ru8RrBXDXRSlrIimajSzeVRgLtaqHQboKoH/+E1y3F/qaMltBgxF3CqPM4rDyz+QiQfYV4nvK
 fxj4HNW17UilGTaLoPve8D96Wmms1zZJc474rRCUbSU8GdQiRKASQy7yjfO4EDKQCf+BAiaxj
 A521iBZ+E1B7otGqlXw5d9kEmUt9XGwB6hB8HRX5ZevBzKJaswfaMjcJ9iRpuFbRqWsyMs6cU
 qadPdDRXxEeT5rBY2a/lUoz1H3srmFqvEv/YaVceNv9uLKLk55gzA9acdk4ZA/I2ek5TZPXfI
 k+rHq6g9KeZhaPXtWcJuNgGW62YReq8snhlWlSzH2kSDedEvb9uRJ1eK7s4d+22RWB/i5/n
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_054008_064300_2BA2859E 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L
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
Content-Type: multipart/mixed; boundary="===============9131539988071941065=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9131539988071941065==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=MT/nW/UW+tcOmD=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=MT/nW/UW+tcOmD=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Szabolcs Hubai
> Sent: Sonntag, 19. April 2020 02:37
> To: openwrt-devel@lists.openwrt.org
> Cc: Szabolcs Hubai <szab.hu@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: mt7621: use lzma-loader for
> D-Link DIR-860L
>=20
> This device has trouble extracting big kernel from flash, and supports LZ=
MA
> compressed kernels only.
>=20
> Using OpenWrt kernel loader saves us 64 KB compared to the dictionary size
> limiting workaround.
>=20
> Factory image sizes (commit: 5f126c541a74) with "CONFIG_ALL_KMODS=3Dy":
> - original ("-d23", default): 4784188 bytes, LZMA ERROR 1
> - with "-d19": 4915260, LZMA ERROR 1
> - with "-d18": 4915260, diff to original: +128 KB
> - with "-d17": 4980796, diff to original: +192 KB
> - with this patch: 4849724, diff to original: +64 KB
>=20
> To save some CPU cycle, use minimal compression ("-a0") for the LZMA
> compressed uImage.
>=20
> Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
> ---
>  target/linux/ramips/image/mt7621.mk | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index aa6836d50a..28d2637bd3 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -216,9 +216,10 @@ TARGET_DEVICES +=3D buffalo_wsr-600dhp
>=20
>  define Device/dlink_dir-860l-b1
>    $(Device/seama)
> +  $(Device/lzma-loader)

I do not really see the benefit of having this definition if you have to mo=
dify it below anyway.
Having seen this, I'd prefer to drop patch 1/2 entirely and just add the ne=
cessary adjustments directly to this particular device:

LOADER_TYPE :=3D bin
KERNEL :=3D kernel-bin | append-dtb | lzma | loader-kernel | relocate-kerne=
l | lzma -a0 | uImage lzma
(properly wrapped of course)

If we have five devices like this at some point, I'll be happy to discuss h=
ow we can create a shared recipe.

Best

Adrian

>    BLOCKSIZE :=3D 64k
>    SEAMA_SIGNATURE :=3D wrgac13_dlink.2013gui_dir860lb
> -  KERNEL :=3D kernel-bin | append-dtb | relocate-kernel | lzma | uImage =
lzma
> +  KERNEL +=3D | relocate-kernel | lzma -a0 | uImage lzma
>    IMAGE_SIZE :=3D 16064k
>    DEVICE_VENDOR :=3D D-Link
>    DEVICE_MODEL :=3D DIR-860L
> --
> 2.17.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=MT/nW/UW+tcOmD=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6cRpkACgkQoNyKO7qx
AnB51Q//b3OR3ctMuZY7yvmNrMxAVEmInayfkQPWZgaG6JQGT4QWtlmJ0HfdwYfJ
+RBhngRv8fnReVPAOPuJXSnDGO8BasKqe2c9rRMr23B/2MCHYutD0UAASLNtQBov
ON/47OCBZQZMyunRCspE8DW/2ujMrfMpUNSxYlMBLqPyuCqg1UY7/f16qkrcg5bp
9XbNZLKMc4uq0jnWhlBy1eAhxijf85nU+wGfPO92woWdv2EOto8Qh7r4Qqxm7z/0
hPjAYGVOY0BnS7Y1H8sHEBPeiCFAbf/mRukDtUD2RNSzTfoVOeRIpGiG4bQsZTLk
3at3Rwbp7oz3JVKY/lV4sOwWvT/PK2EbgGNnK0JAjOLefM9f9HxnhzZIwUfetU7u
qaHmQ5EqEjLvNaMPORoKeljCMgjmvjQbXTailr1CwsyW/aXpuIxngNzQwioF1Bn+
Jiy2FnvqPDpRmmFd7+B2gT5GT3GUTh0UjjM+lWodJAxZgCPcVF8rwDBsq99fkcTs
OQUp88Uf3UJoZBeWl62eZvvCqrXhxX/xPRT2mlnfKZP4+qFPMbkhrffsBg8Z9rDo
HoXEQcHZ1cnbklfhSST83SUgqXAmg+giV1kcKp0CdhScECii47eAxLH6mOLJx6JO
7DYvtLKjCXt/UaXhPGNcCY07Y5OEqrObXSZXhSmC9V3xhEF2zNw=
=+7UE
-----END PGP SIGNATURE-----


--=-=MT/nW/UW+tcOmD=-=--



--===============9131539988071941065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9131539988071941065==--


