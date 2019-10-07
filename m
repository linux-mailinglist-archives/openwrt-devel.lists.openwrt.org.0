Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D14CECB9
	for <lists+openwrt-devel@lfdr.de>; Mon,  7 Oct 2019 21:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AZmrPufY8/zxHw6lhvq/+roeu15wInTit0Ky6MU1V/8=; b=OyhkvqU1Zx9iafoGqxTqeBzWo
	M4SN0ALyhPoQ6lLNuU/LeJyg8j/P75oP2AWbkkURAK8e4A/LqsisuusZAXfBrwFEhpmvsxrpWzlev
	iTWEYEA9pPiPYRN75cVKFl4Th2blxLRxjOXVQx0pTB2arCUQpD2IYbwF2/BH/a83VYSmH9ymr6aGr
	56iuk2udCHllyZ7PPCIEYujP7IBedUs+mKR97rVGbF4dfwvJRutaxVvxU7wVfo2CHPFdg9UsVPjQf
	3rVVevaaoH1YvmgCUnbKbVd5j5IJbQa3+NRr5uZi6HqyL8LUK/WRPjV2+Loq9aM/qc+LX7WMyEjSO
	Y6U5Em8Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHYc3-0005Vu-Ok; Mon, 07 Oct 2019 19:24:07 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHYbt-0005V8-St
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 19:24:00 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 9F44CA1893;
 Mon,  7 Oct 2019 21:23:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id 5l3okw4xQu4X; Mon,  7 Oct 2019 21:23:43 +0200 (CEST)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20191007142833.26168-1-ynezz@true.cz>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <36c27081-c7db-4d98-cbe9-ad5e21272981@hauke-m.de>
Date: Mon, 7 Oct 2019 21:23:38 +0200
MIME-Version: 1.0
In-Reply-To: <20191007142833.26168-1-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_122358_238243_FADD675E 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] libnl-tiny: move source code into
 separate Git repository
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
Content-Type: multipart/mixed; boundary="===============7131500195842351757=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7131500195842351757==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="u9FJeJsNdxEm8p1fDBwIgqY2DtvlGXnwK"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--u9FJeJsNdxEm8p1fDBwIgqY2DtvlGXnwK
Content-Type: multipart/mixed; boundary="PO1XtzZs6yAZYZmriZvfdJNluU01bibfq";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Message-ID: <36c27081-c7db-4d98-cbe9-ad5e21272981@hauke-m.de>
Subject: Re: [OpenWrt-Devel] [PATCH] libnl-tiny: move source code into
 separate Git repository
References: <20191007142833.26168-1-ynezz@true.cz>
In-Reply-To: <20191007142833.26168-1-ynezz@true.cz>

--PO1XtzZs6yAZYZmriZvfdJNluU01bibfq
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 10/7/19 4:28 PM, Petr =C5=A0tetiar wrote:
> In order to make the source code usable and testable separately out of
> buildroot.
>=20
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>

Acked-by: Hauke Mehrtens <hauke@hauke-m.de>

I Like this especially as this is pretty big.

> ---
>=20
> tl;dr this is just a first step, having more in the pipeline[0]
>=20
> I'm working on a proof-of-concept CI suite[1] based on GitLab (but it c=
ould be
> used on anything which supports Docker) and which could be hopefully re=
-used
> for CI testing of all OpenWrt C language based projects without much ha=
ssle,
> currently it boils down to about 3-7 lines of YAML code in .gitlab-ci.y=
ml
> file[2].
>=20
> So far I've added two CI compile tests[3], one of them is `ci-sdk-oot-b=
uild`
> which is building the source code out of the tree[4] with the provided =
SDK for
> a (randomly selected) list of platforms ath79, imx6, malta_be and
> mvebu_cortexa53 in order to cover different CPUs, endianess, register w=
idths
> etc. This tests works fine with the source code in the buildroot.
>=20
> The 2nd test is a "frankenstein" one[5] called `ci-native-checks`, whic=
h is
> compile testing the source code natively on x86/64 with gcc-{7,8,9},cla=
ng-9
> and then with scan-build and cppcheck static analyzers. This doesn't wo=
rk
> currently for me with odhcpd as it depends on libnl-tiny, and in order =
to
> provide libnl-tiny one would need to check out complete OpenWrt tree in=
 order
> to get its source code and build it.
>=20
> To be clear, getting the source code is a no brainer for me, I could so=
lve it
> somehow even with the buildroot (putting aside the waste of resources),=
 but
> running the CI test suite on libnl-tiny itself uncovers some issues[6] =
and I
> think, that it would simply make sense to allow running of those test e=
asily
> for anyone (clone the repo on GitLab; push; profit) in the future as we=
ll.
>=20
> 0. https://gitlab.com/ynezz/openwrt-libnl-tiny/commits/wip
> 1. https://gitlab.com/ynezz/gitlab-evaluation/blob/wip/gitlab-ci/README=
=2Emd
> 2. https://gitlab.com/ynezz/openwrt-libnl-tiny/blob/wip/.gitlab-ci.yml
> 3. https://gitlab.com/ynezz/gitlab-evaluation/blob/wip/gitlab-ci/gitlab=
-ci-pipeline.yml
> 4. https://gitlab.com/ynezz/gitlab-evaluation/blob/wip/gitlab-ci/sdk-bu=
ild.mk#L45
> 5. https://gitlab.com/ynezz/gitlab-evaluation/blob/wip/gitlab-ci/native=
-build.mk
> 6. https://ynezz.gitlab.io/-/openwrt-libnl-tiny/-/jobs/313680815/artifa=
cts/build/scan/2019-10-07-122715-143-1/index.html
>=20
>  package/libs/libnl-tiny/Makefile              |  19 +-
>  package/libs/libnl-tiny/files/libnl-tiny.pc   |  10 -
>  package/libs/libnl-tiny/src/Makefile          |  17 -
>  package/libs/libnl-tiny/src/attr.c            | 668 ----------------
>  package/libs/libnl-tiny/src/cache.c           | 376 ---------
>  package/libs/libnl-tiny/src/cache_mngt.c      | 131 ----
>  package/libs/libnl-tiny/src/error.c           | 116 ---
>  package/libs/libnl-tiny/src/genl.c            | 268 -------
>  package/libs/libnl-tiny/src/genl_ctrl.c       | 380 ---------
>  package/libs/libnl-tiny/src/genl_family.c     | 169 ----
>  package/libs/libnl-tiny/src/genl_mngt.c       | 193 -----
>  package/libs/libnl-tiny/src/handlers.c        | 162 ----
>  .../libnl-tiny/src/include/netlink-generic.h  |  20 -
>  .../libnl-tiny/src/include/netlink-local.h    | 160 ----
>  .../libnl-tiny/src/include/netlink-types.h    |  88 ---
>  .../libnl-tiny/src/include/netlink/addr.h     |  69 --
>  .../libnl-tiny/src/include/netlink/attr.h     | 726 ------------------=

>  .../src/include/netlink/cache-api.h           | 199 -----
>  .../libnl-tiny/src/include/netlink/cache.h    | 128 ---
>  .../libnl-tiny/src/include/netlink/data.h     |  41 -
>  .../libnl-tiny/src/include/netlink/errno.h    |  64 --
>  .../src/include/netlink/genl/ctrl.h           |  40 -
>  .../src/include/netlink/genl/family.h         | 134 ----
>  .../src/include/netlink/genl/genl.h           |  47 --
>  .../src/include/netlink/genl/mngt.h           |  87 ---
>  .../libnl-tiny/src/include/netlink/handlers.h | 231 ------
>  .../libnl-tiny/src/include/netlink/list.h     |  88 ---
>  .../libs/libnl-tiny/src/include/netlink/msg.h | 308 --------
>  .../src/include/netlink/netlink-compat.h      |  50 --
>  .../src/include/netlink/netlink-kernel.h      | 196 -----
>  .../libnl-tiny/src/include/netlink/netlink.h  |  82 --
>  .../src/include/netlink/object-api.h          | 331 --------
>  .../libnl-tiny/src/include/netlink/object.h   | 164 ----
>  .../libnl-tiny/src/include/netlink/socket.h   | 231 ------
>  .../libnl-tiny/src/include/netlink/types.h    | 121 ---
>  .../libnl-tiny/src/include/netlink/utils.h    |  78 --
>  .../libnl-tiny/src/include/netlink/version.h  |  18 -
>  package/libs/libnl-tiny/src/include/unl.h     |  47 --
>  package/libs/libnl-tiny/src/msg.c             | 561 --------------
>  package/libs/libnl-tiny/src/nl.c              | 720 -----------------
>  package/libs/libnl-tiny/src/object.c          | 147 ----
>  package/libs/libnl-tiny/src/socket.c          | 406 ----------
>  package/libs/libnl-tiny/src/unl.c             | 287 -------
>  43 files changed, 12 insertions(+), 8366 deletions(-)
>  delete mode 100644 package/libs/libnl-tiny/files/libnl-tiny.pc
>  delete mode 100644 package/libs/libnl-tiny/src/Makefile
>  delete mode 100644 package/libs/libnl-tiny/src/attr.c
>  delete mode 100644 package/libs/libnl-tiny/src/cache.c
>  delete mode 100644 package/libs/libnl-tiny/src/cache_mngt.c
>  delete mode 100644 package/libs/libnl-tiny/src/error.c
>  delete mode 100644 package/libs/libnl-tiny/src/genl.c
>  delete mode 100644 package/libs/libnl-tiny/src/genl_ctrl.c
>  delete mode 100644 package/libs/libnl-tiny/src/genl_family.c
>  delete mode 100644 package/libs/libnl-tiny/src/genl_mngt.c
>  delete mode 100644 package/libs/libnl-tiny/src/handlers.c
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink-generic=
=2Eh
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink-local.h=

>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink-types.h=

>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/addr.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/attr.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/cache-a=
pi.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/cache.h=

>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/data.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/errno.h=

>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/genl/ct=
rl.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/genl/fa=
mily.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/genl/ge=
nl.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/genl/mn=
gt.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/handler=
s.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/list.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/msg.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/netlink=
-compat.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/netlink=
-kernel.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/netlink=
=2Eh
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/object-=
api.h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/object.=
h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/socket.=
h
>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/types.h=

>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/utils.h=

>  delete mode 100644 package/libs/libnl-tiny/src/include/netlink/version=
=2Eh
>  delete mode 100644 package/libs/libnl-tiny/src/include/unl.h
>  delete mode 100644 package/libs/libnl-tiny/src/msg.c
>  delete mode 100644 package/libs/libnl-tiny/src/nl.c
>  delete mode 100644 package/libs/libnl-tiny/src/object.c
>  delete mode 100644 package/libs/libnl-tiny/src/socket.c
>  delete mode 100644 package/libs/libnl-tiny/src/unl.c
>=20
> diff --git a/package/libs/libnl-tiny/Makefile b/package/libs/libnl-tiny=
/Makefile
> index cabbb084218f..0536c6b73ec7 100644
> --- a/package/libs/libnl-tiny/Makefile
> +++ b/package/libs/libnl-tiny/Makefile
> @@ -8,8 +8,13 @@
>  include $(TOPDIR)/rules.mk
> =20
>  PKG_NAME:=3Dlibnl-tiny
> -PKG_VERSION:=3D0.1
> -PKG_RELEASE:=3D5
> +PKG_RELEASE:=3D1
> +
> +PKG_SOURCE_PROTO:=3Dgit
> +PKG_SOURCE_URL=3D$(PROJECT_GIT)/project/libnl-tiny.git
> +PKG_SOURCE_DATE:=3D2017-11-16
> +PKG_SOURCE_VERSION:=3D8ee5f3a4023f822d1c916bb2b5e845d3597ac674
> +PKG_MIRROR_HASH:=3De3dd137d69848b8cf2dbc58d70452586dd4178b55977896ea3a=
9dedaf62c768c
> =20
>  PKG_LICENSE:=3DLGPL-2.1
>  PKG_MAINTAINER:=3DFelix Fietkau <nbd@nbd.name>
> @@ -29,7 +34,7 @@ endef
>  TARGET_CFLAGS +=3D $(FPIC)
> =20
>  define Build/Compile
> -	$(MAKE) -C $(PKG_BUILD_DIR) \
> +	$(MAKE) -C $(PKG_BUILD_DIR)/src \
>  		$(TARGET_CONFIGURE_OPTS) \
>  		CFLAGS=3D"$(TARGET_CFLAGS)" \
>  		all
> @@ -37,14 +42,14 @@ endef
> =20
>  define Build/InstallDev
>  	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig $(1)/usr/include/libnl-tiny
> -	$(CP) $(PKG_BUILD_DIR)/include/* $(1)/usr/include/libnl-tiny
> -	$(CP) $(PKG_BUILD_DIR)/libnl-tiny.so $(1)/usr/lib/
> -	$(CP) ./files/libnl-tiny.pc $(1)/usr/lib/pkgconfig
> +	$(CP) $(PKG_BUILD_DIR)/src/include/* $(1)/usr/include/libnl-tiny
> +	$(CP) $(PKG_BUILD_DIR)/src/libnl-tiny.so $(1)/usr/lib/
> +	$(CP) $(PKG_BUILD_DIR)/files/libnl-tiny.pc $(1)/usr/lib/pkgconfig
>  endef
> =20
>  define Package/libnl-tiny/install
>  	$(INSTALL_DIR) $(1)/usr/lib
> -	$(CP) $(PKG_BUILD_DIR)/libnl-tiny.so $(1)/usr/lib/
> +	$(CP) $(PKG_BUILD_DIR)/src/libnl-tiny.so $(1)/usr/lib/
>  endef
> =20


--PO1XtzZs6yAZYZmriZvfdJNluU01bibfq--

--u9FJeJsNdxEm8p1fDBwIgqY2DtvlGXnwK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl2bkLoACgkQ8bdnhZyy
68cubAgAgSitHGS2KpPXYvbz6LhZYkTbCG5C2MFhabx/OVQIbJbXTgidPrGPzod5
L30M84aUrH5Mp1vJj1gJiIE/D08PKjRJe2lOBtGr30RplzM4zJ7qRVlp3hsf5ve7
HM7mhwdh82fmLFd9Y4SW1GvN+R1nMm6cT6KFBunEly6/krquWZsB3/GUzuQ2dw/p
C2QiEp75zYs4BoYpPczykSEylHnTgH/qZMLutllqOKSTVRk0PDzC3LA5cJorWDb2
jcc1SHfQ5KPU663gPZ3Lnw9dsYcxYIArgXfsA/1D8/JeDW7iv8Tw3jRLWznf6WY8
N7by8T2f+kdaYSpA0v0rWQA0xG6/1g==
=UAee
-----END PGP SIGNATURE-----

--u9FJeJsNdxEm8p1fDBwIgqY2DtvlGXnwK--


--===============7131500195842351757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7131500195842351757==--

