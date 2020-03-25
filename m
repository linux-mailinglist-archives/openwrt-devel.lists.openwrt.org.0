Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4511926FC
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 12:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wj6Z4nfHhhcaU3j4hqVWMHT98KXOcLdiLBuEOnzad2E=; b=LOPaKdrzxF1DW8W3YP3NJGx4T
	lFI/ydvZ9JuSfZnSBuRbKEqX9IQeG5hwqtPUa16yEXku2S/k0OTwmuLUxXhNfEVkOy7/IdgshmjqA
	JzGi5ovavRJIfeoSoCLYwfbCgseTp5j35y8SKk5nNBMyuI8X1knRjm0VOlSLXRzrI4w6Ks9iolULZ
	k1nPMV6wv7L5A/4pktKmY59yCt/w9P6pUDY+f3HaoD3o4B6LDRyHl1kIg0TVUTXJ8ZdZe2cL7Oxdc
	tq0COCfPICYB+KrfBIwhbnsC6Iocd3LYooVKHNCLkEN3VVikbzUKa9Sz0irEQ8siHP/5pIHGk99O1
	4/kBAQ4xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH46t-0001KR-RK; Wed, 25 Mar 2020 11:22:11 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH46l-0001Jq-MV
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 11:22:05 +0000
Received: from desktop ([188.192.136.247]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MuluN-1jY2lA00iR-00rrrn; Wed, 25 Mar 2020 12:21:59 +0100
From: <mail@adrianschmutzler.de>
To: "'Piotr Dymacz'" <pepe2k@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <20200324233343.27749-1-pepe2k@gmail.com>
In-Reply-To: <20200324233343.27749-1-pepe2k@gmail.com>
Date: Wed, 25 Mar 2020 12:21:58 +0100
Message-ID: <003c01d60297$995af2c0$cc10d840$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQFMfYalWKnQ1I3jeoHKM4AeJPTRWqlsMzpg
Content-Language: de
X-Provags-ID: V03:K1:GbCsBGsv3tQqyxbDyDFZ54Qo7Ubz6LEI/KNl+VtYeVGFxISE6hF
 eSyKPg3xRyuzhWxB2eMc02bjaYMP+v5aAmw4tBYZnwVaPNwFuZOC+OVxZER5d6w0XmpWMNK
 8ZedgdPwt92ofUQzmP4QZ9GLrUvyi/0/Rd8BsaUuMS3oCe68aF0KE0TAL/7Sk0IrErHDEo3
 TS5Z6PJtHMGHh2UIMB39g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fXqx+ZVT5u0=:iVfsQrKETXpB7KPcuGIumS
 txEMpEagweikHZRedb/2y1thtczaDd1l5Ruy73+hMbPaOMvA4MEX/t+obmjU9/J8QMXjNBmoL
 rgCWCaag+WoeIBc6qcYjz6cev1v5IhaF+lcogrFF6deMuAgZo1MBuS/yYTImN5OVly89Qbhhq
 Rou597HHK0Y+7HWYXCa4Dum3ui7xRYwKBRDRZa/9C4fv95mh8hEseOxz4iBKDw+Jd+OzaZXAs
 +bXhsUh6tmcgOCwNeaWtLU1yETcobDmBeHJ9OWyAdBC0fs75/ZhNK01polJKbNmCs2SpWD03Z
 Oldd4CIwUVUN5sGctdy2lcjeYDumlAW6Ix0ebBh3MPt2HWybyqr2GKlssdsfUF43XVlrSoNxj
 E6LCaUk6/st43bnIlWFXLD/FlCF6AwlbiaOpfTAZTZ+Px1mhpHNBmpeNlXK0b4X/psqroJRS5
 eo6eorZo2O53PtYIWH9nPchxkPQZerdqLqK6qaIMcheiFiWw/Yp9zmx2BD5FLzv1wSsF/Jfgu
 +9vvKpCnex4b0KMmb3/Dw6GkWrpjkuPL4Po3Ggwu5UbcZF25UYRovPZuLUFAI13pxM2wO39V1
 VHCoq2K7kiA7kvziaKC9Leu3h67uW4VNfRnzgwSNbrbQCx8Y4lW9KRuFBVjZ7sAArktn5WIW3
 m4xEDQ/167AaJScR1PjmLtCxpNXoUBL0wVPb4HgKtkpIR3cVFfGAIkfOdCgkVxzM+K4k8jl9/
 atBeaAD9CmyKVoiX59GGmRYeq9LwMf00LH7h/FHMqp1pfrYv/rQYVz5TdjYh5MOXd6ZBOZJUU
 tfIL/lJSzyzJHT/p/iMMdl7ksNwyvcU/+d0tIbMk0dzpqpX6ltFKonZOxtiREkA6Da7fO+P
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_042204_029877_20B85C07 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default
 with any wpad variant
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
Content-Type: multipart/mixed; boundary="===============8596186159651072007=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8596186159651072007==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=iRdhLfawKZC5yd=-="

This is a multipart message in MIME format.

--=-=iRdhLfawKZC5yd=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Piotr Dymacz
> Sent: Mittwoch, 25. M=C3=A4rz 2020 00:34
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] target.mk: enable iwinfo by default with
> any wpad variant
>=20
> There are currently 7 variants of 'wpad' package but 'iwinfo' is included=
 by
> default only if 'wpad', 'wpad-{basic,mini}' or 'nas'
> packages are included in {DEVICE,DEFAULT}_PACKAGES. Use 'wpad-*'
> pattern to include 'iwinfo' with any 'wpad' variant.
>=20
> Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
> ---
>  include/target.mk | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/include/target.mk b/include/target.mk index
> 9bd4c14936..004db1f45b 100644
> --- a/include/target.mk
> +++ b/include/target.mk
> @@ -55,7 +55,7 @@ endif
>  DEFAULT_PACKAGES +=3D $(DEFAULT_PACKAGES.$(DEVICE_TYPE))
>=20
>  filter_packages =3D $(filter-out -% $(patsubst -%,%,$(filter -%,$(1))),$=
(1)) -
> extra_packages =3D $(if $(filter wpad-mini wpad-basic wpad nas,$(1)),iwin=
fo)
> +extra_packages =3D $(if $(filter wpad wpad-% nas,$(1)),iwinfo)

Since you are touching this, maybe you can elaborate why this extra_package=
s construct is needed at all?

Why can't we just add iwinfo as selective dependency to the wpad-/nas packa=
ges as we do for all of the other packages?

I'm asking because I recently had a downstream case where we use hostapd in=
stead of wpad and wanted to get of iwinfo.
I expected iwinfo to go away because nothing selected it anymore, but in th=
is case it turned out that iwinfo is not automatically deselected, but has =
to be removed manually as well.

Best

Adrian

>=20
>  define ProfileDefault
>    NAME:=3D
> --
> 2.20.1
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=iRdhLfawKZC5yd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl57PtMACgkQoNyKO7qx
AnB5wBAAzU/OTlQFlTIwmKht2Qq8eE3Q0OrdS8+6HLG7TxdFvs+EopTp5AygmZiy
561WcDyuqpjl2UTBZILBUMJlormVmBzHUztbbbFvy6+vOpgl2botQcwwbtQu9gR1
nRv25gK2kQE+NPjcvHddwOEjYn1yap+ptM+76Y4jf9izwVBUPVneOjwp8CyjFcJo
+r1LC6J3sjZbI4XaTJKhvI4gO6QqOLVGvl9y4r+fcHAIrzY11c4iiXjkqF4DywnD
l1hZU0pp2cezx2ruTZyI5DtGEX/0pApFdatarKaztGAfV0t8uMlHI/Voav1nfOgl
EmnEl2/awuuyp0hLvIcfZPi3rUYKHKmokkKMbWFuob7yaVDTw12W48ZQqvkBKNI4
JekbV6miu9QkNtBO3BOhbRTdVsdgV8E+IrS6CmucevoT6uELCHkM70jQ7oPrdQdJ
gbD5FazKu7jIfbO9ju0iFDRPwrJ1NEy36nN9FhYqsmOYxaHdin5v5BGeRgv6ETrq
F0/elgMk96UWD22GjqGRhUTwsgekBx7pSgQWVNAXZsuFG5e49on5zvFYdVsJVdzR
0i5z/xEXyJI3mhi2li8gMwD8uCTkNiBxp0cdyEoLMtZfwKbnnDPodQMmaa02p/Ig
w0lon1O5WusFJMmBfecZTLRZJ34GpunTVcGiFX3VHg+wgYkXTZI=
=9slz
-----END PGP SIGNATURE-----


--=-=iRdhLfawKZC5yd=-=--



--===============8596186159651072007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8596186159651072007==--


