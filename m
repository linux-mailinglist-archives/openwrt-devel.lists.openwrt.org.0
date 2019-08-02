Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B96C7FC58
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 16:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u5SbjWxdrNAdVIoswK3X4W3MICbG2ENj1rMPUMtYXSo=; b=nLEYeCvAlmKJNiDtzCHfK1wxj
	oPQti14miwTDMaJg6+0F5FwD3jOMZfSKtoQnhmYkDQaeVYI46fgPgn3PCP2Jq102gEAdhWnCOa3tU
	Y9pZmwhGj8zKwGsw73ikmqccUe+btu9tBv7n5jIKT0RhgiXRqWbnRMs5579OnikhcMZo5VTgWYXhX
	Se2kAZlWQ2DQbb+iSk9Z7p1PMX1DJhOyRVAkpTleOPRHlxN40Zg622dTX67INKnJvAptgLROcttbt
	5SkYrLkNVqHxTyOFR6iY+tzYAogmk4YT1osL782dzNc8P9ZzndzQVVIfuIdxWgqK4nJfauBCaTD7l
	16ux9m4ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYgL-00055U-SD; Fri, 02 Aug 2019 14:37:21 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYgE-00054t-Pe
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 14:37:16 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id C3BF8A1134;
 Fri,  2 Aug 2019 16:37:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id 9bIsTlzEwGQM; Fri,  2 Aug 2019 16:36:45 +0200 (CEST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20190728213134.4937-1-ynezz@true.cz>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <aad7ef94-be52-8ee5-0b50-eea3a70d8864@hauke-m.de>
Date: Fri, 2 Aug 2019 16:36:24 +0200
MIME-Version: 1.0
In-Reply-To: <20190728213134.4937-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_073715_139074_CDB89629 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] scons: move to packages feed
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
Content-Type: multipart/mixed; boundary="===============3424267162411878957=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3424267162411878957==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="SgvCYdyeJ3RyT5rWdfQQ7ZNW6GB2PV3La"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SgvCYdyeJ3RyT5rWdfQQ7ZNW6GB2PV3La
Content-Type: multipart/mixed; boundary="U9QBFGHYkmWuQC02JrFD2zyjyUbqytEVe";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Message-ID: <aad7ef94-be52-8ee5-0b50-eea3a70d8864@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH] scons: move to packages feed
References: <20190728213134.4937-1-ynezz@true.cz>
In-Reply-To: <20190728213134.4937-1-ynezz@true.cz>

--U9QBFGHYkmWuQC02JrFD2zyjyUbqytEVe
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 7/28/19 11:31 PM, Petr =C5=A0tetiar wrote:
> This patch removes scons host build tool, as commit 0c090fde68b2
> ("scons: move host build tool to a proper place") in the packages feed
> has moved scons into the new home.
>=20
> There are currently no packages in the master tree which would need
> scons, yet scons is build always as part of host tools, just in order t=
o
> satisfy host build dependency of few packages in the packages feeds.
>=20
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>

Acked-by: Hauke Mehrtens <hauke@hauke-m.de>

> ---
>  tools/Makefile                             |  2 +-
>  tools/scons/Makefile                       | 35 ----------------------=

>  tools/scons/files/pywrap.sh                | 15 ----------
>  tools/scons/patches/001-platform_env.patch | 11 -------
>  4 files changed, 1 insertion(+), 62 deletions(-)
>  delete mode 100644 tools/scons/Makefile
>  delete mode 100755 tools/scons/files/pywrap.sh
>  delete mode 100644 tools/scons/patches/001-platform_env.patch
>=20
> diff --git a/tools/Makefile b/tools/Makefile
> index d7207ba89dd9..a161154b806b 100644
> --- a/tools/Makefile
> +++ b/tools/Makefile
> @@ -25,7 +25,7 @@ tools-$(BUILD_TOOLCHAIN) +=3D gmp mpfr mpc libelf exp=
at
>  tools-y +=3D m4 libtool autoconf automake flex bison pkg-config mklibs=
 zlib
>  tools-y +=3D sstrip make-ext4fs e2fsprogs mtd-utils mkimage
>  tools-y +=3D firmware-utils patch-image quilt padjffs2
> -tools-y +=3D mm-macros missing-macros cmake scons bc findutils gengeto=
pt patchelf
> +tools-y +=3D mm-macros missing-macros cmake bc findutils gengetopt pat=
chelf
>  tools-y +=3D mtools dosfstools libressl
>  tools-$(CONFIG_TARGET_orion_generic) +=3D wrt350nv2-builder upslug2
>  tools-$(CONFIG_TARGET_x86) +=3D qemu
> diff --git a/tools/scons/Makefile b/tools/scons/Makefile
> deleted file mode 100644
> index 5ec655416585..000000000000
> --- a/tools/scons/Makefile
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -#
> -# Copyright (C) 2011-2015 OpenWrt.org
> -#
> -# This is free software, licensed under the GNU General Public License=
 v2.
> -# See /LICENSE for more information.
> -#
> -
> -include $(TOPDIR)/rules.mk
> -
> -PKG_NAME:=3Dscons
> -PKG_VERSION:=3D3.0.5
> -
> -PKG_SOURCE:=3D$(PKG_NAME)-$(PKG_VERSION).tar.gz
> -PKG_SOURCE_URL:=3D@SF/scons \
> -		http://fossies.org/linux/misc/
> -PKG_HASH:=3Ddf676f23dc6d4bfa384fc389d95dcd21ab907e6349d4c848958ba4befb=
73c73e
> -
> -include $(INCLUDE_DIR)/host-build.mk
> -
> -define Host/Configure
> -endef
> -
> -define Host/Compile
> -endef
> -
> -define Host/Install
> -	./files/pywrap.sh $(HOST_BUILD_DIR)/setup.py install --prefix=3D$(STA=
GING_DIR_HOST)
> -	rm -f $(STAGING_DIR_HOST)/bin/scons*.py
> -	for bin in $(STAGING_DIR_HOST)/bin/scons*; do \
> -		mv "$$$$bin" "$$$$bin.py";                \
> -		cp ./files/pywrap.sh "$$$$bin";           \
> -	done
> -endef
> -
> -$(eval $(call HostBuild))
> diff --git a/tools/scons/files/pywrap.sh b/tools/scons/files/pywrap.sh
> deleted file mode 100755
> index 53910e947209..000000000000
> --- a/tools/scons/files/pywrap.sh
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -#!/usr/bin/env bash
> -
> -case "${0##*/}" in
> -	pywrap.sh) arg1=3D"";;
> -	*) arg1=3D"$0.py" ;;
> -esac
> -
> -for bin in python python3; do
> -    case "$($bin -V 2>&1)" in
> -        "Python 3"*) exec $bin $arg1 "$@" ;;
> -    esac
> -done
> -
> -echo "Unable to find a Python 3.x interpreter for executing ${arg1:+$a=
rg1 }$@ !" >&2
> -exit 1
> diff --git a/tools/scons/patches/001-platform_env.patch b/tools/scons/p=
atches/001-platform_env.patch
> deleted file mode 100644
> index 2be31470c27d..000000000000
> --- a/tools/scons/patches/001-platform_env.patch
> +++ /dev/null
> @@ -1,11 +0,0 @@
> ---- a/engine/SCons/Platform/__init__.py
> -+++ b/engine/SCons/Platform/__init__.py
> -@@ -65,6 +65,8 @@ def platform_default():
> -     care about the machine architecture.
> -     """
> -     osname =3D os.name
> -+    if 'PLATFORM' in os.environ:
> -+        return os.environ['PLATFORM']
> -     if osname =3D=3D 'java':
> -         osname =3D os._osType
> -     if osname =3D=3D 'posix':
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



--U9QBFGHYkmWuQC02JrFD2zyjyUbqytEVe--

--SgvCYdyeJ3RyT5rWdfQQ7ZNW6GB2PV3La
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl1ESmgACgkQ8bdnhZyy
68exRQgAy01uAlVAylW80fJ7nHowpevNd/kUwZ1VcLSSERhOSKseAh1oJU2BaEZo
lRJttmzxV8U9U5yGFxOLoQlrBKAYkJf2wJknDOI3AR/hV+g1WM2u8Ogs3KxWIwbT
jYmW92bFu1rYN/PIgRL1cnum49X2j5CLuKRoBnoiYwyl66HwpBbOXU65qQer/EiR
bg+CTVlwAdm1KGRmDb5sppp8bqvJxlaxxvRdj6F/ctaG6CTOES17RTVNRroxSPV1
nNui1WyjVUnPCrZDhblJNH0+7j3gPXZl48ggJpufU1h7UJb7DO2tcsXU98QTLUpC
cpE7Do8lRWTbnHuzF09HzAoofLqTzg==
=g8hp
-----END PGP SIGNATURE-----

--SgvCYdyeJ3RyT5rWdfQQ7ZNW6GB2PV3La--


--===============3424267162411878957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3424267162411878957==--

