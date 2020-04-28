Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A91BC4D2
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 18:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y/bVtBdl5UiCCoKmZnaqLQzYWpiVexqG5oXu6tYfpmk=; b=pa81XU7V4qGv1+KjjZeUMf5Zt
	qcqBHMIFXR7GQ5J7ZkATKtseHqwybqIfAQxKp/bhCUhs8nhwFFW3Td5k5rmsyEVQ+hf8pwzrexha7
	Qzht0rXjm3x6KMq3wQZT0QFmOujizYpZvsNWjgyVaaz3d7FQccWzeCING8PIgmKVB0DQ08EeZfcMa
	pbZCcXoLiH4u0SoIg3ZKXvyLXzOp/L4ih610TzlWpzshjO7jg2Jfek5BdNgLctHko0pCB1/4xVMmU
	RVxoOolX9YXyIdN7YQR1K29+bE4AkUj4sGEgoRQLMIxyvka426djDfot51Lm1gFR2GfunBLiw+9nY
	zERy6o0zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSti-0001GY-Tf; Tue, 28 Apr 2020 16:15:50 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTStb-0001F7-Fa
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 16:15:45 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N9MYu-1j8eDe3I7I-015IP0; Tue, 28 Apr 2020 18:15:38 +0200
From: <mail@adrianschmutzler.de>
To: "'e9hack'" <e9hack@gmail.com>,
	<openwrt-devel@lists.openwrt.org>
References: <75d8e585-74b0-c24c-0ea5-4243df88f2b4@gmail.com>
 <002701d61d6b$9bab0170$d3010450$@adrianschmutzler.de>
 <49006edd-9a8c-5823-38ae-0e03d286a0d0@gmail.com>
In-Reply-To: <49006edd-9a8c-5823-38ae-0e03d286a0d0@gmail.com>
Date: Tue, 28 Apr 2020 18:15:38 +0200
Message-ID: <006601d61d78$419bf830$c4d3e890$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQMBUYsGVHivecJ1+3pA6Pjt2DBlwwHNxq+HAqxzN9GmFHs4AA==
Content-Language: de
X-Provags-ID: V03:K1:1wwXoo1/NZrU8FNpoZJuhiUB0jAi9dYmbPA3QP8NG8v3MFhqIhC
 zrEwOJD98Tte4Kx8jmrvxj5uZddiAdrsAisC0Xfq4OMgpERFbpMsqT4yURc3uf85AP5l00q
 hktoEiZXY5bBD48b3yxgWV2qQ6J4Z3cjB73S8DxMwRlAXg4mBLUYR2xBQVSoQ/AdU8lFvKx
 SxwGlvxREVCDnSklEDhsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TdleSl1d1lo=:wcbHB+qXzZH1jFStt6Jo6A
 2m4PBq/Pxyh4UB2S0cGu33TX35IcvwQiPARb+1evjYs4tpQk6fKCuvGlyWyC/+vSsIB7RFtou
 sRnaQyq3C+Ws0tAcGKjp2BRXQm0GHcb92hqnEGu5JKzwRkTBOg7ulCtOHdE/SUOssRYim1rll
 /5Byqiih1/kKrorIBupk4Hdyj9W5U8M7mPnFmSe4RpUEuaz/N4NbJvv2LqUB3C3JZ7+N3S6ow
 KcyKP0nb5nIXZbikJ6pvYyBXZ0klj1aTrBiJY7Zae/d9suWXy5DKMVereRRxdc4l53KwyVTo9
 fmwhwflD3nL9s7yf37k3eOqk0tfizz6YkeUZDc8TSBtyjwtaV2ytXSrOOsnNVzROz5bE+4QbC
 ZGpJptyBNqvvW+jSA2Z81eB9crFOn6XFbkF7f232REG+FIosPkytKq9KinCDX71hkAdbqjpPZ
 TdOPdBjbg2WK8+TCqiYmgf3cv5DmJmPQmDsamCJbVJxPoYtNZqyozl39N7fukhuFJK7v+H3BI
 gnXqj4XozazZSykcNw+6Qn/qGaJK0ETlDhsZZIJW5NqnyyQjdAc7q42P/Qr3ghtCNaOevwncv
 J6i3XYv6Cc9gUuawUd+iSvQ3wuRoISjkjR+wQEAB0uYdirX4QrONVVWAeV8ApLoRz4sgt9E4r
 T2QruDBQveWlw4UaABcXpDkt6nyIeY50A60qRZKBy4+A7/qrs2cSHnNuyvAyGEQB2evaZS4sf
 U8G93ZdmDOQ9tOUAWUEfqA+BRC3Nf+yzww5ZDoZjLA/SRocKeXCG48RV741WvmRLGB3HZQpIe
 zDfjVD+IqVYUCTN6254zC28sySqZyHoecloXgd4tWGQs0hCjWgvRagfxB9ClKW2VvI/uO6V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_091543_811461_65259089 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] kernel packages
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
Content-Type: multipart/mixed; boundary="===============9142362959366942786=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9142362959366942786==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=egdLCD/BHEPUFl=-="

This is a multipart message in MIME format.

--=-=egdLCD/BHEPUFl=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: e9hack [mailto:e9hack@gmail.com]
> Sent: Dienstag, 28. April 2020 17:58
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] kernel packages
>=20
>=20
> Hi,
>=20
> it looks like I can make dependencies for a module itself depend on a ker=
nel
> version only. My issue is, I've to add an additional kernel module to lib=
-lzo,
> which is part of lib-lzo in kernel 5.4.x:
>=20
> diff --git a/package/kernel/linux/modules/lib.mk
> b/package/kernel/linux/modules/lib.mk
> index e14c6b31c0..ee71cf610f 100644
> --- a/package/kernel/linux/modules/lib.mk
> +++ b/package/kernel/linux/modules/lib.mk
> @@ -109,9 +109,10 @@ define KernelPackage/lib-lzo
>    HIDDEN:=3D1
>    FILES:=3D \
>  	$(LINUX_DIR)/crypto/lzo.ko \
> +	$(LINUX_DIR)/crypto/lzo-rle.ko \

Looking for something like this:

  FILES:=3D$(LINUX_DIR)/lib/cordic.ko@lt5.2 \
	  $(LINUX_DIR)/lib/math/cordic.ko@ge5.2

?

Best

Adrian

>  	$(LINUX_DIR)/lib/lzo/lzo_compress.ko \
>  	$(LINUX_DIR)/lib/lzo/lzo_decompress.ko
> -  AUTOLOAD:=3D$(call AutoProbe,lzo lzo_compress lzo_decompress)
> +  AUTOLOAD:=3D$(call AutoProbe,lzo lzo-rle lzo_compress lzo_decompress)
>  endef
>=20
>  define KernelPackage/lib-lzo/description
>=20
> With the options, which you did mention, I can create a second lib-lzo (e=
g. lib-
> lzo-rle) and add the dependency to zlib:
>=20
> diff --git a/package/kernel/linux/modules/other.mk
> b/package/kernel/linux/modules/other.mk
> index 43709228f9..d727719882 100644
> --- a/package/kernel/linux/modules/other.mk
> +++ b/package/kernel/linux/modules/other.mk
> @@ -861,7 +861,7 @@ $(eval $(call KernelPackage,ikconfig))  define
> KernelPackage/zram
>    SUBMENU:=3D$(OTHER_MENU)
>    TITLE:=3DZRAM
> -  DEPENDS:=3D+kmod-lib-lzo +kmod-lib-lz4
> +  DEPENDS:=3D+!LINUX_5_4:kmod-lib-lzo +LINUX_5_4:kmod-lib-lzo-rle
> + +kmod-lib-lz4
>    KCONFIG:=3D \
>  	CONFIG_ZSMALLOC \
>  	CONFIG_ZRAM \
>=20
> Or do I've another option to solve this?
>=20
> Regards,
> Hartmut
>=20
> Am 28.04.2020 um 16:45 schrieb mail@adrianschmutzler.de:
> > Hi,
> >
> > @LINUX_5_4
> > @!LINUX_5_4
> > +LINUX_5_4:somepackage
> > +!LINUX_5_4:somepackage
> >
> > further details:
> >
> > https://openwrt.org/docs/guide-developer/packages#dependency_types
> >
> > Best
> >
> > Adrian
> >
> >> -----Original Message-----
> >> From: openwrt-devel [mailto:openwrt-devel-
> bounces@lists.openwrt.org]
> >> On Behalf Of e9hack
> >> Sent: Dienstag, 28. April 2020 15:32
> >> To: openwrt-devel@lists.openwrt.org
> >> Subject: [OpenWrt-Devel] kernel packages
> >>
> >> Hi,
> >>
> >> is it possible to depend on kernel versions in
> >> package/kernel/linux/modules/lib.mk?
> >>
> >> With kernel 5.4.x, zram needs the additional module lzo-rle, which is
> >> part of lib-lzo.
> >>
> >> Regards,
> >> Hartmut
> >>
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=egdLCD/BHEPUFl=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6oVqkACgkQoNyKO7qx
AnAOIw//W6Mfww4lOGrDxImyyNmecgXeYyEUePLSVI80i9fhxNul0F7kFzNZl1y4
Z7XUaN353vGif0KZyvp4NPQCB5VPnNSsdxjIuUaGu4775JouYXfj9/aL+JOcTPfj
yvkBOX03WDL4BlFk7852UCVjHczYOQXAiJTzuTLYr/lZEiR2hhnMaAIqpu8v+G8E
977RM2uHIFJzHsh3WY3xRes5L4ydCcwFO6vaRTrhu+pJZxwxXY6bLoLAKqopI3yU
rQfx9Nr6Aa12kn2RDfEdLajjk42x5g8tkCpYSzsJM7I4vrz7boH8bW/i3dJwdj/a
Ad14hDIwuzYVIURFj/ZTvz5ikQfOe5CLhY4LwJywxEHmfLYDySiioXItf5ED2+4r
I6Jg4e8Ivaeq3vamJyHxC1crm1iecf0tvLwRQP76+TvcPYuNjEKrdP5jyP2Cqni2
tEzbAVSRfWpT6CDVlryPLuwJ1DPLbanCandlOu42KrA+b6f2LWxP+8JaOuAKHLBn
BKducrFhsQ9YND1n+JXZMbPTERPJ/sNdE3QMAOU57R2o5sn0qXK5nAv2H8Hu89QO
wFk56D8bv9xPl8k7ID3f2RR1TkboJwDtpWntb+8VoVKJegENaNaVy57MbI5u5r49
nrxgYaE82fR7mX9uiwNHfI6lx8FmSd+ff0vQvDp16i1YjbqACCc=
=Bn4h
-----END PGP SIGNATURE-----


--=-=egdLCD/BHEPUFl=-=--



--===============9142362959366942786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9142362959366942786==--


