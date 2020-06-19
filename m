Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3A1200556
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 11:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0scWX0rKDdtUAh7YI0bF9Eechr0a6B6m6y3nR3eyzEw=; b=YeViqfWA6hSflqba5UbGttWVC
	ePfy/1GdBzx3CAPyxb9C4kvFU9lIXBhpih9ZDyH18Fa5tevn231jkK5P3mPcMHygcq2SiIOrDm+dr
	PqrboazTvjRnxMMxZgO2hin6BuGpWoXUP9vPQrkLFqy0nlfsXRHvQS0ijoJpSYcVSS9j32legQuYX
	At5PuhfHvtipOyn1ik3OCRlYBHvxCLbvUGDNWxfj69Iujz0a0EMA9jsGHKUkcGI3f/l/elMphDLYw
	kpw1ZEiN8Na2k0cDEmPiH9s6uMNZO13VreVuHtEU60sJkBUl1u1eC6OT8k3iDNvIRLNXHPMD5m4oe
	ieoFXZtyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDST-00013T-Uk; Fri, 19 Jun 2020 09:37:13 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDS8-0000vc-Fv
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 09:36:54 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MTAS1-1jJRmV41pn-00UdKu; Fri, 19 Jun 2020 11:36:45 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <20200619093215.28273-1-ynezz@true.cz>
In-Reply-To: <20200619093215.28273-1-ynezz@true.cz>
Date: Fri, 19 Jun 2020 11:36:44 +0200
Message-ID: <008901d6461d$256e4d70$704ae850$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQIf1o5TbssDCISdttvAlDEN7nH+7KhMjOOQ
Content-Language: de
X-Provags-ID: V03:K1:Oegu3VEapCgVt+EKPmFf9oWmZRV7Ww1EQD1sq5CyngRnv1hTtnb
 AIP7Y8HxSX20D32DFsVfz/w/odEXBlcfjPpzdM5deN/xLswZESMGJty1sd0w44pdVCQ6yDp
 aXYwpIwwz4pyTbWQpmg7/ppa5ODCUqsOy14hYbWZDsIk6ASj1PTJWTzoKp/C6EMN14V5tQz
 pXzGOI6rHJaYxSYabaENg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:V1L0JI0UY7k=:rXIXn9Xo87cHZFAjpAyYE/
 18g8TrWnExMGWuIew5Eo2vJ1NuuFg0bDvSlqeG7B27uQdEK7E1tgELzwWVobpri4s/KuQw7Zr
 MoWkGFh4/PUgHMiZmPmDoRXfUeZhqrt6J5FyqFJQ4oW0v4zNQqS40ItEwre3XNgHiUNij8gRD
 nmzpKdyd61Ta8ZbPtHFbeuF+o4NcsocxBp6Nm0yjstXr3Xho5Hc8+MoisRzc3ffAuGrlXEJ9V
 Qg/+qTpQ13Ew6/NFqTYjh+sTn31gKRM7MgdWMyWaEW/c6wBIi9JGIC0uRBnVVvEbILfG4J/R0
 C6e4YVXzQGdQPm4PswrHzb87tY0tzSIk8pxg5ihUiR8JMcrZaWNomiLm90gT65BU0MU8VK4qr
 uX/fo52NFAIE7Z8Bwr59tjZ+8O7Pz8OItPg7mbntUiQqgnmui02R6hiGEpVnLj9M4iVxTdx8o
 LnTLf8eNmbe1cr3ON5BRMjprnEgBsUtThCohabjNaAEyoIhX+p+B4NAGYd9cQ64XPT/Xa618D
 cwAmVlW5lbLXUiLnMTC63HiGYn6x3k+paGFx5hpQpCxUZh1Bm3c79eNsIa3nCQf7M5PqPsd3i
 sq+eCOiKjtj4MA91dSJJVqgubaoK+M3R2fKnu0CzKc7C/HcLIglYugncq9EOzPpRMSh2BiXAT
 UZfsY2X4fJ0OOMbrjeVbo+XYRhYFhRywLDflw1k/BACHsiHaGPM1QGtuO0QvRFGzQpcbL50QR
 MRr8FymXLsFh3kVr2g26NsU8BMeVltTQeSpvrNogib3DffcwJNLDUQxdMpNky3tUrAQlBVgvU
 6D1WNNUBxuSufVrQyctPisGZeCHKq3RVAUaXHwvdhYVDYiSZ4X5V1BFKqrm7/ol8PU6U5JK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_023652_848362_58CF9065 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: image: fix initramfs for
 safeloader devices
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
Content-Type: multipart/mixed; boundary="===============7576244393200068160=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7576244393200068160==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=1Pyi0MPTQtITP1=-="

This is a multipart message in MIME format.

--=-=1Pyi0MPTQtITP1=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Petr,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Petr =C5=A0tetiar
> Sent: Freitag, 19. Juni 2020 11:32
> To: openwrt-devel@lists.openwrt.org
> Cc: Petr =C5=A0tetiar <ynezz@true.cz>
> Subject: [OpenWrt-Devel] [PATCH] ath79: image: fix initramfs for safeload=
er
> devices
>=20
> Currently it's not possible to tftpboot initramfs image on archer-c7-v5 a=
s the
> image contains tplink-v1-header which leads to:
>=20
>  ath> bootm
>  ## Booting image at 81000000 ...
>  Bad Magic Number
>=20
> as U-Boot expect uImage wrapped image. This is caused by following
> inheritance issue:
>=20
>   define Device/Init
>     KERNEL_INITRAMFS =3D $$(KERNEL)
>=20
>   define Device/tplink-v1
>     KERNEL :=3D kernel-bin | append-dtb | lzma
>     KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | tplink-v1-head=
er
>=20
>   define Device/tplink-safeloader
>     $(Device/tplink-v1)
>=20
>   define Device/tplink-safeloader-uimage
>     $(Device/tplink-safeloader)
>     KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma
>=20
>   define Device/tplink_archer-c7-v5
>     $(Device/tplink-safeloader-uimage)
>=20
> where tplink-v1 defines KERNEL_INITRAMFS with tplink-v1-header and it's
> then used by all devices inheriting from tplink-safeloader. Fix this by
> overriding KERNEL_INITRAMFS to KERNEL variable again.

So, I wonder whether that's specific to the C7 v5 then or whether it would =
apply to the other tplink-safeloader-uimage devices as well?

Best

Adrian

>=20
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> ---
>  target/linux/ath79/image/common-tp-link.mk | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/target/linux/ath79/image/common-tp-link.mk
> b/target/linux/ath79/image/common-tp-link.mk
> index 328eaaed3056..81a557df4871 100644
> --- a/target/linux/ath79/image/common-tp-link.mk
> +++ b/target/linux/ath79/image/common-tp-link.mk
> @@ -78,6 +78,7 @@ define Device/tplink-safeloader
>    $(Device/tplink-v1)
>    TPLINK_HWREV :=3D 0x0
>    KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-v1-header -O
> +  KERNEL_INITRAMFS :=3D $$(KERNEL)
>    IMAGE/sysupgrade.bin :=3D append-rootfs | tplink-safeloader sysupgrade=
 | \
>  	append-metadata | check-size
>    IMAGE/factory.bin :=3D append-rootfs | tplink-safeloader factory @@ -8=
6,6
> +87,7 @@ endef  define Device/tplink-safeloader-uimage
>    $(Device/tplink-safeloader)
>    KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma
> +  KERNEL_INITRAMFS :=3D $$(KERNEL)
>  endef
>=20
>  define Device/tplink-safeloader-okli
> @@ -96,4 +98,5 @@ define Device/tplink-safeloader-okli
>    COMPILE/loader-$(1).elf :=3D loader-okli-compile
>    KERNEL :=3D kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49=
 | \
>  	loader-okli $(1) 12288
> +  KERNEL_INITRAMFS :=3D $$(KERNEL)
>  endef
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=1Pyi0MPTQtITP1=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7shycACgkQoNyKO7qx
AnC8ZxAAugRvwSFvNWi5Ja8GbSPYL129kmuWKY5l19NhxsPju6UR7cdZ9Vu3MFgh
qbGNszK7x7uU6oLb6DPEskkuziEjRyFQqsNbXkiJYXyBrf+TwLjMl2A79o781KLu
mQNb6c1X+3H+nFg355sjO6FFwG+/4C7NieHpyit7UFZw33OuevL2qvkMmKlGmEov
m2oiy4moggUL1Zyc2m+ZODAKsXU8FBtNWCmQLZlfTvT4qPzZwzPxP2MfstlYHXeg
88tXTyChh9duuMuP2IASwxn6movDd+G5lWV7Wl411j8WjC2bDp/RR97h2cSfdj7R
HsTLJBIlys5HSjQTIGzFSqVveiEDx+DkVFuT5gM/R3duMBt0ePaVcqDY8e8Mq0Ss
mE7AcyA4aAudWUtUzQIa81HWRWDmnwMyWZ93DntoXcwlCzG/fsK4Fz7AB8Ez+XSo
DwlaIHMSZPmQ57ypc6556f97njS+4j5zhISThLOznbnoDY5ag6VLmZ1GjZNEVF2J
1mBYh/5nZnd8tbU64Tlj2FrXDmELLYc+tljC5TrBTfDTlohFcmP53wNbv+P/+hiW
v7k6dRfbgYP3G3FqxLu3TfsD5l//9yxKhF39JzLZgFcW5zGXcD4rSA6ACNNLb41P
F/OSq3yFsvCxq9jKt8BBVNYNzDkOLJbaHV69XPIdljLjsUmn1uI=
=tWHz
-----END PGP SIGNATURE-----


--=-=1Pyi0MPTQtITP1=-=--



--===============7576244393200068160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7576244393200068160==--


