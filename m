Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E45819F033
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 08:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=42v6EsnWovdkOJwVW76tUxOluDnjgV96qfB+//L8dFw=; b=IVb+Oj+HQU9NgE+DIIp6Ypqog
	JiYs2Aj0bUOOk93HXfTTZ328NIoSQadkpskcdxlXBFsPcMWmwRijZj3IUOzN0FJcq3mnox3eO4VZd
	Flxx/PEYylMYLEQktVL5zXYT0FkVceX7GLlSS2RYsDB9Rn6X2ig3FIEgUllBrmBs3Iuom8VJuh2zo
	9Fv3hZ8PlK9kYLzoACWqyYP3j9YJsnd2ccq1hbL6sV3PKe8SgDuzReKfXFivAdDTknEryBz0tzyBS
	bt+ieyco6BCD8EWlpSegyfTxrNGKiBBjZHYIw0RaqvruULJ+I4cGNaClxzt8oSswaz/TubygOA9X+
	LtxkEqnOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLKp1-0006Ng-Oj; Mon, 06 Apr 2020 06:01:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLKos-0006NA-Lz
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 06:01:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id o17so1612778wrv.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 23:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uOqCJcLblNnjXrZ35wUqn9OAgpmXaz7BUFMnH+v5DiA=;
 b=Ik6SpjqS4x9hfBaPEiglRsDHUTCXQVbyYumxab7lRaLcHK1B3QHVY2pwCjLBGZU+bA
 kjX0dSuYH3/Jvm5VKDpcLqEtHzk4XfEiTrtUeYDi202WvwyCgd3Eg5DY37zqWMw1kD8Q
 gRWFs0Pf2pW3P/WM+nCNoTFQcEzW7BdTCLsV7XHcoV7USoNtZzFEbOG8BSIFIPpO5PJK
 nkIYFQ5UC2CGie13Y33OcxMEYzKRiWNGQXWL9g0BUXfEcI9X2eqR5E+MYNYoHs94XAe5
 aLy7/Oz3DmdK8ade6EypUpVyhMLuj4dm1Xl3yZ64yKacgzTev3lW++KvWgvsHGALlYzx
 Ncpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uOqCJcLblNnjXrZ35wUqn9OAgpmXaz7BUFMnH+v5DiA=;
 b=Cft/wC8ifT2r9SebOccQTZ6nTVo3XONmWJGxR4gz74eB7GFaOumhh6Q6uKo0zgaU/8
 lpXZ7H6KfFA6EX5pLR4GYfnUu/asiA5g0p2vt0eoEYaO5Yxb2GBJOeC26bxKQJOVR2Gv
 RuQUInJVKSuSvEXHNJW4RjZf+HiHaEdpVB/l3ICIBOpFGnwvt6EUabevS4C5I5C6Ghxe
 HzyBwowqRLabNuhNwrC1v/o9YQnd1EdygYRah1144I4xIMKYfnmP534sqsK3Ijw4swYd
 BpLfU6/YPBRWyBdFcL/dx6Z7LjZKcsz0wwTd7VjKQ0YbpJQ+KxaOh7+5kwxcQhxtZdx0
 LwRw==
X-Gm-Message-State: AGi0PuavVe/C2IdoG01Luo5upq8FfHSVtHOaMoluzx9TDuEtkeuHbRWL
 gOqPNNEZ3/4oa6nd4IbWGlnZGT4YnQDZ97/dxrQ=
X-Google-Smtp-Source: APiQypKmXv4zBE1Ni/oTJNY/aYqwilrnvalmOqxp02vf2JuZ4riv6iTDAx98ffPanGR0+cpwJu7lOumJxaRcE400t78=
X-Received: by 2002:adf:b1c6:: with SMTP id r6mr21608619wra.49.1586152872313; 
 Sun, 05 Apr 2020 23:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200406020238.3780-1-rosenp@gmail.com>
In-Reply-To: <20200406020238.3780-1-rosenp@gmail.com>
From: =?UTF-8?B?T2xkxZlpY2ggSmVkbGnEjWth?= <oldium.pro@gmail.com>
Date: Mon, 6 Apr 2020 08:01:02 +0200
Message-ID: <CALdrqOT-WvqRp-imiTadXr_cz0JQ1nw+ZBobr6=Uh-=PEKCkTw@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_230114_749303_2883E850 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oldium.pro[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] elfutils: update to 0.179
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2442205287144703517=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2442205287144703517==
Content-Type: multipart/alternative; boundary="00000000000083893505a298fedc"

--00000000000083893505a298fedc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

po 6. 4. 2020 v 4:02 odes=C3=ADlatel Rosen Penev <rosenp@gmail.com> napsal:

> Removed sys/cdefs usage. The header is deprecated.
>
> Removed canonicalize_file_name define. It's already fixed upstream.
>
> Added --disable-debuginfod. Seems to be needed.
>
> Modified patch 005 to build more stuff. It was failing before. It still
> only builds libraries.
>
> Modified patch 100 to use strerror under non-glibc. It is used under
> glibc as strerror is not thread safe. It is under musl and uClibc-ng.
> strerror_l is not available under uClibc-ng.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/libs/elfutils/Makefile                |  7 +-
>  .../patches/003-libintl-compatibility.patch   | 75 +++++++++----------
>  .../patches/005-build_only_libs.patch         | 13 ++--
>  .../elfutils/patches/100-musl-compat.patch    | 22 ++----
>  .../libs/elfutils/patches/101-no-fts.patch    |  2 +-
>  .../libs/elfutils/patches/110-no-cdefs.patch  | 58 ++++++++++++++
>  6 files changed, 113 insertions(+), 64 deletions(-)
>  create mode 100644 package/libs/elfutils/patches/110-no-cdefs.patch
>
> diff --git a/package/libs/elfutils/Makefile
> b/package/libs/elfutils/Makefile
> index 630c48820a..e6868c56f4 100644
> --- a/package/libs/elfutils/Makefile
> +++ b/package/libs/elfutils/Makefile
> @@ -7,12 +7,12 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=3Delfutils
> -PKG_VERSION:=3D0.177
> -PKG_RELEASE:=3D2
> +PKG_VERSION:=3D0.179
> +PKG_RELEASE:=3D1
>
>  PKG_SOURCE:=3D$(PKG_NAME)-$(PKG_VERSION).tar.bz2
>  PKG_SOURCE_URL:=3Dhttps://sourceware.org/$(PKG_NAME)/ftp/$(PKG_VERSION)
> -PKG_HASH:=3Dfa489deccbcae7d8c920f60d85906124c1989c591196d90e0fd668e3dc05=
042e
> +PKG_HASH:=3D25a545566cbacaa37ae6222e58f1c48ea4570f53ba991886e2f5ce96e22a=
23a2
> <https://sourceware.org/$(PKG_NAME)/ftp/$(PKG_VERSION)-PKG_HASH:=3Dfa489d=
eccbcae7d8c920f60d85906124c1989c591196d90e0fd668e3dc05042e+PKG_HASH:=3D25a5=
45566cbacaa37ae6222e58f1c48ea4570f53ba991886e2f5ce96e22a23a2>
>
>  PKG_MAINTAINER:=3DLuiz Angelo Daros de Luca <luizluca@gmail.com>
>  PKG_LICENSE:=3DGPL-3.0-or-later
> @@ -63,6 +63,7 @@ endif
>
>  CONFIGURE_ARGS +=3D \
>         --program-prefix=3Deu- \
> +       --disable-debuginfod \
>         --without-lzma
>
>  TARGET_CFLAGS +=3D -D_GNU_SOURCE -Wno-unused-result -Wno-format-nonliter=
al
> diff --git a/package/libs/elfutils/patches/003-libintl-compatibility.patc=
h
> b/package/libs/elfutils/patches/003-libintl-compatibility.patch
> index 32bfaf8e6d..ea0f4535a5 100644
> --- a/package/libs/elfutils/patches/003-libintl-compatibility.patch
> +++ b/package/libs/elfutils/patches/003-libintl-compatibility.patch
> @@ -1,8 +1,31 @@
> ---- a/libelf/libelfP.h
> -+++ b/libelf/libelfP.h
> -@@ -39,6 +39,9 @@
> - #include <stdio.h>
> - #include <string.h>
> +--- a/config/libelf.pc.in
> ++++ b/config/libelf.pc.in
> +@@ -8,7 +8,7 @@ Description: elfutils libelf library to read and write
> ELF files
> + Version: @VERSION@
> + URL: http://elfutils.org/
> +
> +-Libs: -L${libdir} -lelf
> ++Libs: -L${libdir} -lelf @intl_LDFLAGS@
> + Cflags: -I${includedir}
> +
> + Requires.private: zlib
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -586,6 +586,9 @@ AC_CONFIG_FILES([config/libelf.pc config/libdw.pc
> config/libdebuginfod.pc])
> + AC_SUBST(USE_NLS, yes)
> + AM_PO_SUBDIRS
> +
> ++case "$USE_NLS" in yes) intl_LDFLAGS=3D"-lintl" ;; esac
> ++AC_SUBST([intl_LDFLAGS])
> ++
> + dnl Appended to the config.h file.
> + dnl We hide all kinds of configuration magic in lib/eu-config.h.
> + AH_BOTTOM([#include <eu-config.h>])
> +--- a/libasm/libasmP.h
> ++++ b/libasm/libasmP.h
> +@@ -36,6 +36,9 @@
> +
> + #include "libdwelf.h"
>
>  +#ifdef _ /* fix libintl-stub */
>  +#undef _
> @@ -12,20 +35,19 @@
>
>  --- a/libdw/libdwP.h
>  +++ b/libdw/libdwP.h
> -@@ -35,7 +35,9 @@
> - #include <libdw.h>
> +@@ -37,6 +37,9 @@
>   #include <dwarf.h>
> + #include "atomics.h"
>
> --
>  +#ifdef _ /* fix libintl-stub */
>  +#undef _
>  +#endif
> +
>   /* gettext helper macros.  */
>   #define _(Str) dgettext ("elfutils", Str)
> -
>  --- a/libdwfl/libdwflP.h
>  +++ b/libdwfl/libdwflP.h
> -@@ -43,6 +43,9 @@
> +@@ -44,6 +44,9 @@
>
>   typedef struct Dwfl_Process Dwfl_Process;
>
> @@ -35,11 +57,11 @@
>   /* gettext helper macros.  */
>   #define _(Str) dgettext ("elfutils", Str)
>
> ---- a/libasm/libasmP.h
> -+++ b/libasm/libasmP.h
> -@@ -35,6 +35,9 @@
> -
> - #include "libdwelf.h"
> +--- a/libelf/libelfP.h
> ++++ b/libelf/libelfP.h
> +@@ -39,6 +39,9 @@
> + #include <stdio.h>
> + #include <string.h>
>
>  +#ifdef _ /* fix libintl-stub */
>  +#undef _
> @@ -47,26 +69,3 @@
>   /* gettext helper macros.  */
>   #define _(Str) dgettext ("elfutils", Str)
>
> ---- a/config/libelf.pc.in
> -+++ b/config/libelf.pc.in
> -@@ -8,7 +8,7 @@ Description: elfutils libelf library to
> - Version: @VERSION@
> - URL: http://elfutils.org/
> -
> --Libs: -L${libdir} -lelf
> -+Libs: -L${libdir} -lelf @intl_LDFLAGS@
> - Cflags: -I${includedir}
> -
> - Requires.private: zlib
> ---- a/configure.ac
> -+++ b/configure.ac
> -@@ -543,6 +543,9 @@ AC_CONFIG_FILES([config/libelf.pc config
> - AC_SUBST(USE_NLS, yes)
> - AM_PO_SUBDIRS
> -
> -+case "$USE_NLS" in yes) intl_LDFLAGS=3D"-lintl" ;; esac
> -+AC_SUBST([intl_LDFLAGS])
> -+
> - dnl Appended to the config.h file.
> - dnl We hide all kinds of configuration magic in lib/eu-config.h.
> - AH_BOTTOM([#include <eu-config.h>])
> diff --git a/package/libs/elfutils/patches/005-build_only_libs.patch
> b/package/libs/elfutils/patches/005-build_only_libs.patch
> index 93d593a0fc..a81d1d2cab 100644
> --- a/package/libs/elfutils/patches/005-build_only_libs.patch
> +++ b/package/libs/elfutils/patches/005-build_only_libs.patch
> @@ -1,12 +1,11 @@
>  --- a/Makefile.am
>  +++ b/Makefile.am
> -@@ -27,8 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory
> +@@ -27,7 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory
>   pkginclude_HEADERS =3D version.h
>
> - # Add doc back when we have some real content.
> --SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw libcpu
> libasm \
> --        backends src po tests
> -+SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw libasm
> + SUBDIRS =3D config m4 lib libelf libcpu backends libebl libdwelf libdwf=
l
> libdw \
> +-        libasm src po doc tests
> ++        libasm
>
> - EXTRA_DIST =3D elfutils.spec GPG-KEY NOTES CONTRIBUTING \
> -            COPYING COPYING-GPLV2 COPYING-LGPLV3
> + if DEBUGINFOD
> + SUBDIRS +=3D debuginfod
> diff --git a/package/libs/elfutils/patches/100-musl-compat.patch
> b/package/libs/elfutils/patches/100-musl-compat.patch
> index 109b7ece08..374e832d3f 100644
> --- a/package/libs/elfutils/patches/100-musl-compat.patch
> +++ b/package/libs/elfutils/patches/100-musl-compat.patch
> @@ -22,20 +22,9 @@ https://sourceware.org/bugzilla/show_bug.cgi?id=3D2100=
2
>   #include <stddef.h>
>   #include <stdint.h>
>   #include <sys/param.h>
> -@@ -38,6 +49,10 @@
> - #include <byteswap.h>
> - #include <unistd.h>
> -
> -+#ifndef __GLIBC__
> -+#define canonicalize_file_name(name) realpath(name,NULL)
> -+#endif
> -+
> - #if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
> - # define LE32(n)      (n)
> - # define LE64(n)      (n)
>  --- a/libdw/libdw_alloc.c
>  +++ b/libdw/libdw_alloc.c
> -@@ -73,5 +73,5 @@ __attribute ((noreturn)) attribute_hidde
> +@@ -147,5 +147,5 @@ __attribute ((noreturn)) attribute_hidde
>   __libdw_oom (void)
>   {
>     while (1)
> @@ -44,12 +33,15 @@ https://sourceware.org/bugzilla/show_bug.cgi?id=3D210=
02
>   }
>  --- a/libdwfl/dwfl_error.c
>  +++ b/libdwfl/dwfl_error.c
> -@@ -154,7 +154,7 @@ dwfl_errmsg (int error)
> +@@ -154,7 +154,11 @@ dwfl_errmsg (int error)
>     switch (error &~ 0xffff)
>       {
>       case OTHER_ERROR (ERRNO):
> --      return strerror_r (error & 0xffff, "bad", 0);
> -+      return strerror_l (error & 0xffff, LC_GLOBAL_LOCALE);
> ++#if defined(__GLIBC__) && !defined(__UCLIBC__)
> +       return strerror_r (error & 0xffff, "bad", 0);
>

According to GNU documentation, this call uses insufficient buffer size
(buflen is 0), so it should lead to error ERANGE. Moreover, supplying fixed
string as a buffer does not look correct, so I doubt this does anything
useful.

Regards,
Oldrich.

--00000000000083893505a298fedc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">po 6. 4. 2020 v=C2=A04:02 odes=C3=ADlatel=
 Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com">rosenp@gmail.com</a>&g=
t; napsal:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Removed sys/cdefs usage. The header is deprecated.<br=
>
<br>
Removed canonicalize_file_name define. It&#39;s already fixed upstream.<br>
<br>
Added --disable-debuginfod. Seems to be needed.<br>
<br>
Modified patch 005 to build more stuff. It was failing before. It still<br>
only builds libraries.<br>
<br>
Modified patch 100 to use strerror under non-glibc. It is used under<br>
glibc as strerror is not thread safe. It is under musl and uClibc-ng.<br>
strerror_l is not available under uClibc-ng.<br>
<br>
Signed-off-by: Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com" target=
=3D"_blank">rosenp@gmail.com</a>&gt;<br>
---<br>
=C2=A0package/libs/elfutils/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 7 +-<br>
=C2=A0.../patches/003-libintl-compatibility.patch=C2=A0 =C2=A0| 75 ++++++++=
+----------<br>
=C2=A0.../patches/005-build_only_libs.patch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0| 13 ++--<br>
=C2=A0.../elfutils/patches/100-musl-compat.patch=C2=A0 =C2=A0 | 22 ++----<b=
r>
=C2=A0.../libs/elfutils/patches/101-no-fts.patch=C2=A0 =C2=A0 |=C2=A0 2 +-<=
br>
=C2=A0.../libs/elfutils/patches/110-no-cdefs.patch=C2=A0 | 58 +++++++++++++=
+<br>
=C2=A06 files changed, 113 insertions(+), 64 deletions(-)<br>
=C2=A0create mode 100644 package/libs/elfutils/patches/110-no-cdefs.patch<b=
r>
<br>
diff --git a/package/libs/elfutils/Makefile b/package/libs/elfutils/Makefil=
e<br>
index 630c48820a..e6868c56f4 100644<br>
--- a/package/libs/elfutils/Makefile<br>
+++ b/package/libs/elfutils/Makefile<br>
@@ -7,12 +7,12 @@<br>
=C2=A0include $(TOPDIR)/<a href=3D"http://rules.mk" rel=3D"noreferrer" targ=
et=3D"_blank">rules.mk</a><br>
<br>
=C2=A0PKG_NAME:=3Delfutils<br>
-PKG_VERSION:=3D0.177<br>
-PKG_RELEASE:=3D2<br>
+PKG_VERSION:=3D0.179<br>
+PKG_RELEASE:=3D1<br>
<br>
=C2=A0PKG_SOURCE:=3D$(PKG_NAME)-$(PKG_VERSION).tar.bz2<br>
=C2=A0PKG_SOURCE_URL:=3D<a href=3D"https://sourceware.org/$(PKG_NAME)/ftp/$=
(PKG_VERSION)-PKG_HASH:=3Dfa489deccbcae7d8c920f60d85906124c1989c591196d90e0=
fd668e3dc05042e+PKG_HASH:=3D25a545566cbacaa37ae6222e58f1c48ea4570f53ba99188=
6e2f5ce96e22a23a2" rel=3D"noreferrer" target=3D"_blank">https://sourceware.=
org/$(PKG_NAME)/ftp/$(PKG_VERSION)<br>
-PKG_HASH:=3Dfa489deccbcae7d8c920f60d85906124c1989c591196d90e0fd668e3dc0504=
2e<br>
+PKG_HASH:=3D25a545566cbacaa37ae6222e58f1c48ea4570f53ba991886e2f5ce96e22a23=
a2</a><br>
<br>
=C2=A0PKG_MAINTAINER:=3DLuiz Angelo Daros de Luca &lt;<a href=3D"mailto:lui=
zluca@gmail.com" target=3D"_blank">luizluca@gmail.com</a>&gt;<br>
=C2=A0PKG_LICENSE:=3DGPL-3.0-or-later<br>
@@ -63,6 +63,7 @@ endif<br>
<br>
=C2=A0CONFIGURE_ARGS +=3D \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --program-prefix=3Deu- \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-debuginfod \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 --without-lzma<br>
<br>
=C2=A0TARGET_CFLAGS +=3D -D_GNU_SOURCE -Wno-unused-result -Wno-format-nonli=
teral<br>
diff --git a/package/libs/elfutils/patches/003-libintl-compatibility.patch =
b/package/libs/elfutils/patches/003-libintl-compatibility.patch<br>
index 32bfaf8e6d..ea0f4535a5 100644<br>
--- a/package/libs/elfutils/patches/003-libintl-compatibility.patch<br>
+++ b/package/libs/elfutils/patches/003-libintl-compatibility.patch<br>
@@ -1,8 +1,31 @@<br>
---- a/libelf/libelfP.h<br>
-+++ b/libelf/libelfP.h<br>
-@@ -39,6 +39,9 @@<br>
- #include &lt;stdio.h&gt;<br>
- #include &lt;string.h&gt;<br>
+--- a/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" target=3D"=
_blank">libelf.pc.in</a><br>
++++ b/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" target=3D"=
_blank">libelf.pc.in</a><br>
+@@ -8,7 +8,7 @@ Description: elfutils libelf library to read and write ELF=
 files<br>
+ Version: @VERSION@<br>
+ URL: <a href=3D"http://elfutils.org/" rel=3D"noreferrer" target=3D"_blank=
">http://elfutils.org/</a><br>
+ <br>
+-Libs: -L${libdir} -lelf<br>
++Libs: -L${libdir} -lelf @intl_LDFLAGS@<br>
+ Cflags: -I${includedir}<br>
+ <br>
+ Requires.private: zlib<br>
+--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a><br>
++++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a><br>
+@@ -586,6 +586,9 @@ AC_CONFIG_FILES([config/libelf.pc config/libdw.pc conf=
ig/libdebuginfod.pc])<br>
+ AC_SUBST(USE_NLS, yes)<br>
+ AM_PO_SUBDIRS<br>
+ <br>
++case &quot;$USE_NLS&quot; in yes) intl_LDFLAGS=3D&quot;-lintl&quot; ;; es=
ac<br>
++AC_SUBST([intl_LDFLAGS])<br>
++<br>
+ dnl Appended to the config.h file.<br>
+ dnl We hide all kinds of configuration magic in lib/eu-config.h.<br>
+ AH_BOTTOM([#include &lt;eu-config.h&gt;])<br>
+--- a/libasm/libasmP.h<br>
++++ b/libasm/libasmP.h<br>
+@@ -36,6 +36,9 @@<br>
+ <br>
+ #include &quot;libdwelf.h&quot;<br>
<br>
=C2=A0+#ifdef _ /* fix libintl-stub */<br>
=C2=A0+#undef _<br>
@@ -12,20 +35,19 @@<br>
<br>
=C2=A0--- a/libdw/libdwP.h<br>
=C2=A0+++ b/libdw/libdwP.h<br>
-@@ -35,7 +35,9 @@<br>
- #include &lt;libdw.h&gt;<br>
+@@ -37,6 +37,9 @@<br>
=C2=A0 #include &lt;dwarf.h&gt;<br>
+ #include &quot;atomics.h&quot;<br>
<br>
--<br>
=C2=A0+#ifdef _ /* fix libintl-stub */<br>
=C2=A0+#undef _<br>
=C2=A0+#endif<br>
+ <br>
=C2=A0 /* gettext helper macros.=C2=A0 */<br>
=C2=A0 #define _(Str) dgettext (&quot;elfutils&quot;, Str)<br>
- <br>
=C2=A0--- a/libdwfl/libdwflP.h<br>
=C2=A0+++ b/libdwfl/libdwflP.h<br>
-@@ -43,6 +43,9 @@<br>
+@@ -44,6 +44,9 @@<br>
<br>
=C2=A0 typedef struct Dwfl_Process Dwfl_Process;<br>
<br>
@@ -35,11 +57,11 @@<br>
=C2=A0 /* gettext helper macros.=C2=A0 */<br>
=C2=A0 #define _(Str) dgettext (&quot;elfutils&quot;, Str)<br>
<br>
---- a/libasm/libasmP.h<br>
-+++ b/libasm/libasmP.h<br>
-@@ -35,6 +35,9 @@<br>
- <br>
- #include &quot;libdwelf.h&quot;<br>
+--- a/libelf/libelfP.h<br>
++++ b/libelf/libelfP.h<br>
+@@ -39,6 +39,9 @@<br>
+ #include &lt;stdio.h&gt;<br>
+ #include &lt;string.h&gt;<br>
<br>
=C2=A0+#ifdef _ /* fix libintl-stub */<br>
=C2=A0+#undef _<br>
@@ -47,26 +69,3 @@<br>
=C2=A0 /* gettext helper macros.=C2=A0 */<br>
=C2=A0 #define _(Str) dgettext (&quot;elfutils&quot;, Str)<br>
<br>
---- a/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" target=3D"=
_blank">libelf.pc.in</a><br>
-+++ b/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" target=3D"=
_blank">libelf.pc.in</a><br>
-@@ -8,7 +8,7 @@ Description: elfutils libelf library to<br>
- Version: @VERSION@<br>
- URL: <a href=3D"http://elfutils.org/" rel=3D"noreferrer" target=3D"_blank=
">http://elfutils.org/</a><br>
- <br>
--Libs: -L${libdir} -lelf<br>
-+Libs: -L${libdir} -lelf @intl_LDFLAGS@<br>
- Cflags: -I${includedir}<br>
- <br>
- Requires.private: zlib<br>
---- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a><br>
-+++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a><br>
-@@ -543,6 +543,9 @@ AC_CONFIG_FILES([config/libelf.pc config<br>
- AC_SUBST(USE_NLS, yes)<br>
- AM_PO_SUBDIRS<br>
- <br>
-+case &quot;$USE_NLS&quot; in yes) intl_LDFLAGS=3D&quot;-lintl&quot; ;; es=
ac<br>
-+AC_SUBST([intl_LDFLAGS])<br>
-+<br>
- dnl Appended to the config.h file.<br>
- dnl We hide all kinds of configuration magic in lib/eu-config.h.<br>
- AH_BOTTOM([#include &lt;eu-config.h&gt;])<br>
diff --git a/package/libs/elfutils/patches/005-build_only_libs.patch b/pack=
age/libs/elfutils/patches/005-build_only_libs.patch<br>
index 93d593a0fc..a81d1d2cab 100644<br>
--- a/package/libs/elfutils/patches/005-build_only_libs.patch<br>
+++ b/package/libs/elfutils/patches/005-build_only_libs.patch<br>
@@ -1,12 +1,11 @@<br>
=C2=A0--- a/Makefile.am<br>
=C2=A0+++ b/Makefile.am<br>
-@@ -27,8 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory<br>
+@@ -27,7 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory<br>
=C2=A0 pkginclude_HEADERS =3D version.h<br>
<br>
- # Add doc back when we have some real content.<br>
--SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw libcpu lib=
asm \<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 backends src po tests<br>
-+SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw libasm<br>
+ SUBDIRS =3D config m4 lib libelf libcpu backends libebl libdwelf libdwfl =
libdw \<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 libasm src po doc tests<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 libasm<br>
<br>
- EXTRA_DIST =3D elfutils.spec GPG-KEY NOTES CONTRIBUTING \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 COPYING COPYING-GPLV2 COPYING-LG=
PLV3<br>
+ if DEBUGINFOD<br>
+ SUBDIRS +=3D debuginfod<br>
diff --git a/package/libs/elfutils/patches/100-musl-compat.patch b/package/=
libs/elfutils/patches/100-musl-compat.patch<br>
index 109b7ece08..374e832d3f 100644<br>
--- a/package/libs/elfutils/patches/100-musl-compat.patch<br>
+++ b/package/libs/elfutils/patches/100-musl-compat.patch<br>
@@ -22,20 +22,9 @@ <a href=3D"https://sourceware.org/bugzilla/show_bug.cgi?=
id=3D21002" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bug=
zilla/show_bug.cgi?id=3D21002</a><br>
=C2=A0 #include &lt;stddef.h&gt;<br>
=C2=A0 #include &lt;stdint.h&gt;<br>
=C2=A0 #include &lt;sys/param.h&gt;<br>
-@@ -38,6 +49,10 @@<br>
- #include &lt;byteswap.h&gt;<br>
- #include &lt;unistd.h&gt;<br>
- <br>
-+#ifndef __GLIBC__<br>
-+#define canonicalize_file_name(name) realpath(name,NULL)<br>
-+#endif<br>
-+<br>
- #if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN<br>
- # define LE32(n)=C2=A0 =C2=A0 =C2=A0 (n)<br>
- # define LE64(n)=C2=A0 =C2=A0 =C2=A0 (n)<br>
=C2=A0--- a/libdw/libdw_alloc.c<br>
=C2=A0+++ b/libdw/libdw_alloc.c<br>
-@@ -73,5 +73,5 @@ __attribute ((noreturn)) attribute_hidde<br>
+@@ -147,5 +147,5 @@ __attribute ((noreturn)) attribute_hidde<br>
=C2=A0 __libdw_oom (void)<br>
=C2=A0 {<br>
=C2=A0 =C2=A0 while (1)<br>
@@ -44,12 +33,15 @@ <a href=3D"https://sourceware.org/bugzilla/show_bug.cgi=
?id=3D21002" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/show_bug.cgi?id=3D21002</a><br>
=C2=A0 }<br>
=C2=A0--- a/libdwfl/dwfl_error.c<br>
=C2=A0+++ b/libdwfl/dwfl_error.c<br>
-@@ -154,7 +154,7 @@ dwfl_errmsg (int error)<br>
+@@ -154,7 +154,11 @@ dwfl_errmsg (int error)<br>
=C2=A0 =C2=A0 switch (error &amp;~ 0xffff)<br>
=C2=A0 =C2=A0 =C2=A0 {<br>
=C2=A0 =C2=A0 =C2=A0 case OTHER_ERROR (ERRNO):<br>
--=C2=A0 =C2=A0 =C2=A0 return strerror_r (error &amp; 0xffff, &quot;bad&quo=
t;, 0);<br>
-+=C2=A0 =C2=A0 =C2=A0 return strerror_l (error &amp; 0xffff, LC_GLOBAL_LOC=
ALE);<br>
++#if defined(__GLIBC__) &amp;&amp; !defined(__UCLIBC__)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return strerror_r (error &amp; 0xffff, &quot;ba=
d&quot;, 0);<br></blockquote><div><br></div><div>According to GNU documenta=
tion, this call uses=C2=A0insufficient buffer size (buflen is 0), so it sho=
uld lead to error ERANGE. Moreover, supplying fixed string as a buffer does=
 not look correct, so I doubt this does anything useful.</div><div><br></di=
v><div>Regards,</div><div>Oldrich.</div><div><br></div></div></div>

--00000000000083893505a298fedc--


--===============2442205287144703517==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2442205287144703517==--

