Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CEE2003D1
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 10:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HHYgB6VqVZcMfPG30ImsOs18pTiNZrc3NV0fUXR3oaY=; b=uiPGuGKa7ARfRlMHjLwVibGp4
	FJIsNa2B//4dGzrNHG/vKhizuQzyw06crKCjFOse5jWSBeugCY8cjt35vsAnuaVWPMBgkKqm/ka0X
	hKvMPRkrCfAp9CATz1btgUShkXaVI0CE69gi3blw7jifVDxVNN2L2nHZJdKcKqNUy1OZug441JQNx
	2ZhtOfHteaKB4gmU8jWdSC17g7HmrHPbotd8Aem/DODf6DV8C88bxTV92B/BLdiyqPnkZ077BKJzH
	2pWE8o70BvV8PaYcKYHWTGUT0e23x4zga28ERhbN2Iw27NkBH3fCij8tNOIsL9JAeAWCFpchvuyQ1
	4CrObIaCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCLd-0000Vf-1I; Fri, 19 Jun 2020 08:26:05 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCIs-0004Gr-4F
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 08:23:22 +0000
Received: from [2001:912:1800::249] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1jmCId-0003j9-Ou; Fri, 19 Jun 2020 10:22:59 +0200
Date: Fri, 19 Jun 2020 10:22:57 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200619082257.GA563509@tuxmachine.localdomain>
References: <20200617215657.4330-1-ynezz@true.cz>
MIME-Version: 1.0
In-Reply-To: <20200617215657.4330-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012314_444290_4F14A1C7 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: archer-c7-v5: fix initramfs image
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
Content-Type: multipart/mixed; boundary="===============1597701808661127450=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============1597701808661127450==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On 17-06-20, Petr =C5=A0tetiar wrote:
> Currently it's not possible to tftpboot initramfs image as the image
> contains tplink-v1-header which leads to:

Out of curiosity, it looks like booting an initramfs image is only
possible with serial access to the bootloader?

> --- a/target/linux/ath79/image/generic-tp-link.mk
> +++ b/target/linux/ath79/image/generic-tp-link.mk
> @@ -197,6 +197,7 @@ define Device/tplink_archer-c7-v5
>    TPLINK_BOARD_ID :=3D ARCHER-C7-V5
>    BOARDNAME :=3D ARCHER-C7-V5
>    SUPPORTED_DEVICES +=3D archer-c7-v5
> +  KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | uImageArcher lz=
ma
>  endef
>  TARGET_DEVICES +=3D tplink_archer-c7-v5

This is strange, Device/tplink-safeloader-uimage already defines KERNEL
the same way:

  KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma

AFAIK, KERNEL_INITRAMFS should default to the same value as KERNEL.

Baptiste

--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7sddkACgkQvgHsIqBO
LkYJyxAAr1odPtnFgw7rg4VoaM1Xbl5VRyufekA8ftmyXq2bBhjDgS+ihbX6W4Zc
uOtRKIs//5Y+70DsLzqRDrcQMwc7ZDEq1YmiGqsfM039qIYR+hILieQkMW3s4ow5
BJsOju40/koExfSnMjcSeSBI/t7hee7U4jp1x17S9DbZcarU4TLOrd+i/CVMq7PJ
IyLTPhsF75yYC9PoeT/9+o/m4Ea8zGG5QqhQSnf9PgijGRrxKyiJxCo+GRsN9q1s
cVv3qfcnXumhFyIkmNXi6gIbpVqAvulV4m2nnWMmExnyEEv0a0kpAfETlBtPqKI4
vfhro6z29cR/ZFYSMpdGtTp6sUbRnpuRyv8GiA4yc2p8Rb9uDbhogxxGfXdoXXPE
e9gqO9khvRawvCCtQvT7K+PX1xU7568085jpw8Qi3U5S2sxcgi9aXo2X3N436I9P
JFLJ8ifZ5Tw4f8oYwhGPw2YgZZYE6F29NnW3Yiopz7ovQ68vr+bCBvK03343zIXN
LBAtO0OewPuXUQmLCqwoQMk4kU6yWdG3lVKB7e2TKKSdPY9dspgZrpzqbByDXim1
8neWY/CY5yeIJ/anXtNuQqnEgFKxKAxOIHWyFWfzJV3UwIDILKbrUm3c25xtvUqr
bGgDsjgBRBG5jyiDMw/gzsc/qeMI2Ur5YHgI3fToaRruVrtj75w=
=fl0y
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--


--===============1597701808661127450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1597701808661127450==--

