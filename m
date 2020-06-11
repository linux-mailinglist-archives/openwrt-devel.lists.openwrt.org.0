Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1570D1F6C07
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 18:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9uTDF+EwybG/vBF2jNXpfKO9HwSCOLucXJl2RqFkIPU=; b=fDqNv9vdt82w+8ejH7S4qfIwj
	WwdPzTiIxCO44OYYK4xeARScp7O+KOJKozzYdpwR3bUBpZiQgjX7QYLD+ahHmA8KIRj0stu6Kp8cs
	H8+oxgVw4cGKvhGRfB9adEp15EE7GN20soyuGtKr6jXDPm9qHsWueUKR2SdE+4j0/EvOVXq23vVbx
	BnEcBJkc56tPfjU4yJvLwgT36y9wAVkl0elWwFjKaIXirlmlKiOEWS9NFfEBO5QIA6Qha4QUVPHzv
	kVs5RwOxiHLu5fYA1KcEsFZXzLGkEfppcSMRTbD0lJIsygfQEdZcQzYdLhp6VU4Q0+/XAI/B4LLAz
	eSbcq+yng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPrP-0004hk-Q5; Thu, 11 Jun 2020 16:15:23 +0000
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPrH-0004XV-Hd
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 16:15:17 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 49jTTr1dMqzQlGc;
 Thu, 11 Jun 2020 18:15:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id BXvXQSFxsmwx; Thu, 11 Jun 2020 18:15:09 +0200 (CEST)
To: Ian Cooper <iancooper@hotmail.com>, openwrt-devel@lists.openwrt.org
References: <KU1PR01MB2022EE2CC6B85C0499DD382CAD860@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <d18a4611-ea02-934d-d170-af6717310435@hauke-m.de>
Date: Thu, 11 Jun 2020 18:15:04 +0200
MIME-Version: 1.0
In-Reply-To: <KU1PR01MB2022EE2CC6B85C0499DD382CAD860@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
X-Rspamd-Queue-Id: 0ECD91734
X-Rspamd-Score: -6.67 / 15.00 / 15.00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_091515_895888_4A9A0E91 
X-CRM114-Status: GOOD (  26.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] toolchain: remove gcc libssp and use
 libc variant
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
Content-Type: multipart/mixed; boundary="===============3662414661014508070=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3662414661014508070==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="BJpVKNacbRJp8XUsPIbFYnqg8jKte2s8Z"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--BJpVKNacbRJp8XUsPIbFYnqg8jKte2s8Z
Content-Type: multipart/mixed; boundary="jCWKyWnmeutxxK7FGUD3p2xZcgTOgZL9Q"

--jCWKyWnmeutxxK7FGUD3p2xZcgTOgZL9Q
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 6/6/20 1:42 AM, Ian Cooper wrote:
> Removes the standalone implementation of stack smashing protection
> in gcc's libssp in favour of the native implementation in musl,
> glibc and uClibc and introduces a uniform configuration interface.
>=20
> This also makes kernel-level stack smashing protection available
> for builds using non-musl libc (subject to architecture support).
>=20
> Signed-off-by: Ian Cooper <iancooper@hotmail.com>
> ---
>=20
> Update fixes an artefact with menuconfig which caused a toolchain
> menu option to move to the front page of menuconfig due to the
> removal of a prompt associated with a different CONFIG_ variable.
>=20
> NOTE: after applying this patch you must do a make dirclean as the
> entire toolchain and all packages will need to be rebuilt.
>=20
> This patch does not change the behaviour ot the musl toolchain.
> There are no changes to the uclibc toolchain since it's already
> being compiled with it's native ssp implementation enabled.

If a toolchain recompilation is only needed for glibc this should be ok.


>=20
>  config/Config-build.in    | 4 ----
>  toolchain/Config.in       | 6 +++++-
>  toolchain/gcc/Config.in   | 8 --------
>  toolchain/glibc/common.mk | 3 ++-
>  4 files changed, 7 insertions(+), 14 deletions(-)
>=20
> diff --git a/config/Config-build.in b/config/Config-build.in
> index 61a9265ad7..ac1e05d2ff 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -249,7 +249,6 @@ menu "Global build settings"
> =20
>  	choice
>  		prompt "User space Stack-Smashing Protection"
> -		depends on USE_MUSL
>  		default PKG_CC_STACKPROTECTOR_REGULAR
>  		help
>  		  Enable GCC Stack Smashing Protection (SSP) for userspace applicati=
ons
> @@ -257,18 +256,15 @@ menu "Global build settings"
>  			bool "None"
>  		config PKG_CC_STACKPROTECTOR_REGULAR
>  			bool "Regular"
> -			select GCC_LIBSSP if !USE_MUSL
>  			depends on KERNEL_CC_STACKPROTECTOR_REGULAR
>  		config PKG_CC_STACKPROTECTOR_STRONG
>  			bool "Strong"
> -			select GCC_LIBSSP if !USE_MUSL
>  			depends on KERNEL_CC_STACKPROTECTOR_STRONG

Do you know why the user space stack protector depends on the kernel
stack protector? I assumed this should be independent? You should not
fix it in this patch, I am just curious and if this is not needed we
should fix it in an other patch.

>  	endchoice
> =20
>  	choice
>  		prompt "Kernel space Stack-Smashing Protection"
>  		default KERNEL_CC_STACKPROTECTOR_REGULAR
> -		depends on USE_MUSL || !(x86_64 || i386)
>  		help
>  		  Enable GCC Stack-Smashing Protection (SSP) for the kernel
>  		config KERNEL_CC_STACKPROTECTOR_NONE
> diff --git a/toolchain/Config.in b/toolchain/Config.in
> index 762f4e10d7..e2af1c2c8e 100644
> --- a/toolchain/Config.in
> +++ b/toolchain/Config.in
> @@ -283,8 +283,12 @@ config USE_MUSL
>  	default y if !TOOLCHAINOPTS && !EXTERNAL_TOOLCHAIN && !NATIVE_TOOLCHA=
IN && !(arc)
>  	bool
> =20
> +config GCC_LIBSSP
> +        default n
> +        bool
> +

As nothing activates GCC_LIBSSP it is always false. I think we can
remove this, this is not used by any package in the Kconfig part as far
as I see it and only in some Makefiles and should be removed there
later, but should not harm.

>  config SSP_SUPPORT
> -	default y if USE_MUSL || GCC_LIBSSP
> +	default y if !PKG_CC_STACKPROTECTOR_NONE
>  	bool
> =20
>  config USE_EXTERNAL_LIBC
> diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
> index 7d7f34210a..4b2ba7aaae 100644
> --- a/toolchain/gcc/Config.in
> +++ b/toolchain/gcc/Config.in
> @@ -47,14 +47,6 @@ config GCC_DEFAULT_SSP
>  	help
>  	    Use gcc configure option --enable-default-ssp to turn on -fstack-=
protector-strong by default.
> =20
> -config GCC_LIBSSP
> -	bool
> -	prompt "Build gcc libssp" if TOOLCHAINOPTS
> -	depends on !USE_MUSL
> -	default y if !USE_MUSL
> -	help
> -	    Enable Stack-Smashing Protection support
> -
>  config SJLJ_EXCEPTIONS
>  	bool
>  	prompt "Use setjump()/longjump() exceptions" if TOOLCHAINOPTS
> diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
> index db4f0fcc0e..f0b95d3cc7 100644
> --- a/toolchain/glibc/common.mk
> +++ b/toolchain/glibc/common.mk
> @@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
>    endif
>  endif
> =20
> -
>  # -Os miscompiles w. 2.24 gcc5/gcc6
>  # only -O2 tested by upstream changeset
>  # "Optimize i386 syscall inlining for GCC 5"
> @@ -61,6 +60,8 @@ GLIBC_CONFIGURE:=3D \
>  		--without-cvs \
>  		--enable-add-ons \
>  		--$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
> +		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protec=
tor=3Dyes) \
> +		  $(if $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protect=
or=3Dstrong) \
>  		--enable-kernel=3D4.14.0
> =20
>  export libc_cv_ssp=3Dno
>=20

The libssp package is packaged in package/libs/toolchain/Makefile
shouldn't it be removed there too?
Then the dependency in include/package-defaults.mk can then also be remov=
ed.

Hauke


--jCWKyWnmeutxxK7FGUD3p2xZcgTOgZL9Q--

--BJpVKNacbRJp8XUsPIbFYnqg8jKte2s8Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl7iWIgACgkQ8bdnhZyy
68fKAAf/ZapbCcVqqbAshz7BdsAJbQvKpxMix/N8oFbRi4sINoeiFowBgN/Q+yRo
8NTrNJyE7X2b4vEjRSwWFbbsUzIZ1uWQDzMGqkiMPxZ8U3fX1YMq2Qq5oeZXkNdJ
mQzRw848c/jwIRoqMadugfU5x2u1nlxt+v2ZMrIcr6v1/7YClEJgYK5oewyzA1CH
XjQqfnl11DTxFtPjeW+EHnoIgiFnVEuRbW9Qn3XpU/vJGpzWM8Ohg2n6FygLDuWo
g9JBGZXWix3oyyR2tZxuAjBJvfTCc+fntOus3RlMPBQ3F2ZqNwwEOYhhrLZoApdY
nq0LSoZVv0nnRguYqtcPxHevrwtumg==
=yyg3
-----END PGP SIGNATURE-----

--BJpVKNacbRJp8XUsPIbFYnqg8jKte2s8Z--


--===============3662414661014508070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3662414661014508070==--

