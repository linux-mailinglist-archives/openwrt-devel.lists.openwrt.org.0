Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A441D6B3F
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 19:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/e4sjiIk8p0sQZt2ZbXiQGJI4u/aG875VVBRRsibF8M=; b=TGblT5bJIOcQj8wmlPwsd+aUm
	uxXOYZzzKql0aFCkb1lJnjWyhRmuWseVZhZdxTjxht3Hud36+3sy5459vFFgESAfRxsdbQce2NTEI
	U3Gdi7O2XE5o/cx0QUGU3yIsUCzyBUko24xE+L8Q7laRZwcgehuSa/9ilzK8TCB0AlL0GIYCZ2boI
	CjJS/sVBEotWX9haEPGOiBIfs/tkIzXpGQ+8AIMCciUMbrlwbNEan263D5PDhoNRow0lZs49p6qZB
	VW4MQxe0djZxDNS71XnesVikcK3zGvryPkPGGeodGYVAX56poUkhif1DAsSfEN8uaLqP8pwf/Wv5P
	rPZcYi/rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaMea-0006vE-DY; Sun, 17 May 2020 17:00:44 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaMeR-0006uj-JD
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 17:00:37 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MfYgC-1j7uad382K-00fw97; Sun, 17 May 2020 19:00:31 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Daniel_Gonz=C3=A1lez_Cabanelas'?= <dgcbueu@gmail.com>,
 <openwrt-devel@lists.openwrt.org>
References: <3676440.c42S0g3a1G@tool>
In-Reply-To: <3676440.c42S0g3a1G@tool>
Date: Sun, 17 May 2020 19:00:31 +0200
Message-ID: <00d001d62c6c$ac971180$05c53480$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJxbEgMOcEwkamT/bHNbtDVG/8oZKd2ABiQ
Content-Language: de
X-Provags-ID: V03:K1:dWf8Wme4o0knp2AB8DltX+DPovql7OwcV0efciQQ3P33NGuRsDI
 FdKMg/WNg+QEAR61/lyzIc6koWyFD8rQ5egHX6seaiC+Gy3UetLNXhYa21W+5kAF8N2d71T
 zIbrBQxh1eJUb/pZy51ki22KbjQxRdxS66JcOa7uFtKh8AIFQ33U+VYOjOg15Oi91+rt9fT
 /KuxttIbSgmT5oy38XUJA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o1cVQlpfMZ4=:8fERbYEiQSKd66PeyVCbV+
 Bv3r1nZqfbNrvFh2ZAhcCiGgR9G783LbxpbvpgCcOXjW/z6xWLCmfylIaWMLSiiFEj5EB8I1K
 aD0wfIXdynGnun0azyucRvH2cx0qQRPlipCMfCGZJAegUrKaVJq7X6d4nRfuPE1qXDvUqH+UD
 ojXLp/3taCTCef7FgAySkkpgM2AUwTcHsqLIWVTqSo4gCoX61auHcxViFso5xoQviawloz7zC
 DGRmPH4OeTQSk5A8ENFEWxfdWkCRZZvRPlKbrkB9eIgQIk/AAYuTddKqeNckZMs6tXf8V2U0H
 8QXGhbNGGkqaL1P8EyIQI7DJl+B/wNHQGxjAW5TfhnFTz9DEOAX9wHdacxrAZSu9vNKWOhBOS
 stor/JwAsfQL2s5PbTfcg6sVjexUcpNiqweHgnT8eZtA8eojI0suOj5XHo5t95kqHcronlWSj
 RSnsuB0m5kbX7Dq1p4FW4TI1cTmyLY3mVsbgn32siUAdsUWm0ItkzrRUdiEPL5vrmbC4wudMi
 V4TWJxBeSXk0bh9q8Igt31U5cGGtBwK8vOZdwpofi5hNoGmmGjEUGjjoNZJQM2iUBz876N1+O
 f8DHMY4n6L9n2cr7FXsaX0fYktf8mnkSKCI0wdIXIyRXs3C5YlOnCpDaMbxXDQP/NWVE2S8wK
 eUKMje0q6lIKv4v7CbMYphp4ELfV0jeMsxb7zC50AWOEnp7rxC6og/rgIQuS2J5/6teUy4uwO
 4ZXdftPdvKiYPK8v6XtXh0CRKQu5k/ZrxUh+znlTGwBEgSb0gYcIGffv2kqSXII+ha2eSR8ns
 9XkGz+knamqIm2f8gMmitXZE8OUa5HGvFG2D7ULZRr9fCkEkKXDn4wp8i9u1BXKx/9g/EWU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_100035_922715_CD93F3F0 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] bcm63xx: Livebox1: reenable the image
 generation
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
Cc: noltari@gmail.com
Content-Type: multipart/mixed; boundary="===============0208864005698612154=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0208864005698612154==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=Q/aDNPXHQZ/9cn=-="

This is a multipart message in MIME format.

--=-=Q/aDNPXHQZ/9cn=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Daniel Gonz=C3=A1lez Cabanelas
> Sent: Sonntag, 17. Mai 2020 18:52
> To: openwrt-devel@lists.openwrt.org
> Cc: noltari@gmail.com
> Subject: [OpenWrt-Devel] [PATCH] bcm63xx: Livebox1: reenable the image
> generation
>=20
> This old BCM6348 device still runs quite fine with OpenWrt snapshots when
> the board is modded with 64MB of RAM.
>=20
> Reenable the image generation and advertise the mod in the image filename

OpenWrt does not officially support modded devices. If you require somethin=
g like that, just build the appropriate image yourself.

Despite that, I don't think the way you modify the image name would fit the=
 naming logic on that target very well.

I will mark this patch as Rejected. Sorry.

Best

Adrian

>=20
> Signed-off-by: Daniel Gonz=C3=A1lez Cabanelas <dgcbueu@gmail.com>
> ---
>  target/linux/bcm63xx/image/bcm63xx.mk | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/target/linux/bcm63xx/image/bcm63xx.mk
> b/target/linux/bcm63xx/image/bcm63xx.mk
> index d5601e2c3c..1e5b0b9776 100644
> --- a/target/linux/bcm63xx/image/bcm63xx.mk
> +++ b/target/linux/bcm63xx/image/bcm63xx.mk
> @@ -759,7 +759,7 @@ define Device/inventel_livebox-1
>    DEVICE_MODEL :=3D Livebox 1
>    SOC :=3D bcm6348
>    DEVICE_PACKAGES :=3D $(B43_PACKAGES) $(USB1_PACKAGES)
> -  DEFAULT :=3D n
> +  IMAGE_NAME =3D $$(IMAGE_PREFIX)-64RAM_mod-$$(1).$$(2)
>  endef
>  TARGET_DEVICES +=3D inventel_livebox-1
>=20
> --
> 2.26.2
>=20
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=Q/aDNPXHQZ/9cn=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7BbasACgkQoNyKO7qx
AnCR6A/9GU9W5/d6n8wOV/4P1qXc3nGBqF4YVM4m9I3wUd0TSMd5lYnr5jnlunWh
pgSKqhkoBMu/hX6lacdTZRJhiary66RZZuMDBtyDbV14kWwdr3Howvi5pN1BllHB
8KnZufzQsslZ/WM2a/a69PqdlXcNym6QmuuKBogGNLXssyWCGauUsdECMdMd3pyT
Yh+7D4LHNw91Wixk1OYb69C6QfDXZrdVbpKqLVtt3gBWWGrPnAhBKIv4z8o4LEFH
v7up4kbWwAKisZZGtQ5Zl6lTp6qIIedwk/C7Fzg245aPByzmyxbYt4DWyAzT02q7
9UXxuF8ezVmQZT7auNJ1kxCHpfnl2EuuB7EKXdMgoEnzJY4dnhDG2xiu6W2SvEgk
Ncivufql+xNqB74BsVQAUbiQEnZy88pR1D6OZszTL1wtk5H+vmCI8YiiHA8SPmUz
6RSwOCEsb/oiqg/d4cCvYmgv4ETYfzMRJbEq5rThghGihNlfX6FYr5aNvT3crtAi
M6/8xMBGQSCOAUWV7tkEK8o1y0+U92FhvtmCeTg7Kv2B/F38d7OPfPKTd3VSUGf2
i5yXyMBTFh6LwbCFjr+Gm77PgVtLf5dYLHDRP19zdCoEa8G3qN/QFh27GDVpJc2R
5JS36OE5KDFm9Q+pd/fiU2oXKGZ3eUAvHHOV/cn5CKOBusHGd/E=
=5RW0
-----END PGP SIGNATURE-----


--=-=Q/aDNPXHQZ/9cn=-=--



--===============0208864005698612154==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0208864005698612154==--


