Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CE419F830
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 16:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Yx7f3azQ+aajaimI1d/CTqFEAfwHsF9kwIFfeDthF8=; b=LCMRMjspWC6P64A8x/ExRxpZy
	8Wd0T6mLc111M3J+wQ4K5ZKP/ppbgnirTFxkW/sl87uAJ3qlBZLCfCeu5X4wcQWjqeqTpBnuyZWGr
	GrkVVDhdcQcowlHSw5BpoL1yhks3dJJ9xZg5p09FwoqeJHahSB8L5DetmotwB/Y4o93JcxVnRGOEU
	L00OZBAHldge42XuYMFWpTh7FK5sL5+PQjF0L4cIE/gaXIobAH5MtrQ8apBZ+aiQkE7pQWqs64xGR
	B8hVKrn67m4IGUH3AJu2FJ5bKuvHFZ/43rU0Q3EfoaNWJCuUCCe7a74bhkkaMGwUVblLbr3DdsX+x
	I4jUtMwlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLT0W-00037u-Do; Mon, 06 Apr 2020 14:45:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLT0N-00037L-QF
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 14:45:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id h2so6944135wmb.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 07:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3EILRWtdeWQt/6RShksX2LyYnytxFA8mUHBdfCWYA0s=;
 b=vXc98WdUzVN3dsVXRlVKUOHMk1k1aQZq7iQl596Rmh8AFilrLZctxRDRLaqnYcQnbZ
 TEKInjPxnoCds07Cd4v8yIt/nCtzsJNDlrOqPr/oZle4Pgl+oA7rUs8BOaLuooV8iNjp
 fIb/R8GC5OjI4+2hq/onBUZaL+auMCseuhIbrfER1hGoUZG77iX9RfUf3rpqxQC8ug2s
 1xXcvLgCHuDI+CkhjS1R/eUOGJCz5Hgbu4gGUWzX4XzPYfvMPF/hHnQi95WRRV8lBXyJ
 i4E7oKhuvIX5hn1dd8HWsNCF+yA5ocHeJQuFx39mGbfHjzUQkTPQvQCQpqYprFoKUETU
 ZAzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3EILRWtdeWQt/6RShksX2LyYnytxFA8mUHBdfCWYA0s=;
 b=XmQXN5y6sw8og9fLSPaP3H3AmIgfnelUIJ7uJ9g02colfWUTGGsvW2ja6Q8ZHi0D+4
 qk7c0en2QI3CC8YqmnkxHjgUYi0ixn7d4MmusYlejZU2CR14MiCrT/7eiNQKPjXSZi3X
 iX9GU/fc7tboNxgJomyi+scMeOzLnVdTFXqG9G0XFQP+RccMseh5EEjefoJAHiiCIFQn
 5MPRBZtRank2f1E1HAHTUEjirDCbLXROY7A5i5imgkDo+9fmwTjoiNVcsl8BsA3EFsbD
 bC6z/5AE74XMKUIHYHSfTT0bdp+ks84KkxihTpcxbOUpVZJBFflZHBea43TOcXDdL2bC
 1ECA==
X-Gm-Message-State: AGi0PubIy10NxTC8lSWA8ZAKrecA3U45cRnSQwdNy+ptM923toHtVHuQ
 lJvzrwgf2LVOSNo5joxc54nkTQOZWFDF3PN4gos=
X-Google-Smtp-Source: APiQypKBYLqidaBS6c2pP2osowkOLcjSGiWJLYgHv242pcs4Vpw6v6FgbvECYapPnx0S3eNkSsLbYjzyCHoWcOYo42U=
X-Received: by 2002:a1c:7504:: with SMTP id o4mr24709wmc.111.1586184337679;
 Mon, 06 Apr 2020 07:45:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200406020238.3780-1-rosenp@gmail.com>
 <CALdrqOT-WvqRp-imiTadXr_cz0JQ1nw+ZBobr6=Uh-=PEKCkTw@mail.gmail.com>
 <CAKxU2N-mvVAPdMcPvhogwg4FPz4iKhic0eMV2PUQ1WMX2ktpGg@mail.gmail.com>
In-Reply-To: <CAKxU2N-mvVAPdMcPvhogwg4FPz4iKhic0eMV2PUQ1WMX2ktpGg@mail.gmail.com>
From: =?UTF-8?B?T2xkxZlpY2ggSmVkbGnEjWth?= <oldium.pro@gmail.com>
Date: Mon, 6 Apr 2020 16:45:26 +0200
Message-ID: <CALdrqOR9eOtbs75oKeiiXTOd8-hEKTOLg3sU4RZtfXNcPZOz_Q@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_074539_883980_664A5D25 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Content-Type: multipart/mixed; boundary="===============8347459072951823650=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8347459072951823650==
Content-Type: multipart/alternative; boundary="000000000000feec2905a2a051dd"

--000000000000feec2905a2a051dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

po 6. 4. 2020 v 8:45 odes=C3=ADlatel Rosen Penev <rosenp@gmail.com> napsal:

> On Sun, Apr 5, 2020 at 11:01 PM Old=C5=99ich Jedli=C4=8Dka <oldium.pro@gm=
ail.com>
> wrote:
> >
> > po 6. 4. 2020 v 4:02 odes=C3=ADlatel Rosen Penev <rosenp@gmail.com> nap=
sal:
> >>
> >> Removed sys/cdefs usage. The header is deprecated.
> >>
> >> Removed canonicalize_file_name define. It's already fixed upstream.
> >>
> >> Added --disable-debuginfod. Seems to be needed.
> >>
> >> Modified patch 005 to build more stuff. It was failing before. It stil=
l
> >> only builds libraries.
> >>
> >> Modified patch 100 to use strerror under non-glibc. It is used under
> >> glibc as strerror is not thread safe. It is under musl and uClibc-ng.
> >> strerror_l is not available under uClibc-ng.
> >>
> >> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> >> ---
> >>  package/libs/elfutils/Makefile                |  7 +-
> >>  .../patches/003-libintl-compatibility.patch   | 75 +++++++++---------=
-
> >>  .../patches/005-build_only_libs.patch         | 13 ++--
> >>  .../elfutils/patches/100-musl-compat.patch    | 22 ++----
> >>  .../libs/elfutils/patches/101-no-fts.patch    |  2 +-
> >>  .../libs/elfutils/patches/110-no-cdefs.patch  | 58 ++++++++++++++
> >>  6 files changed, 113 insertions(+), 64 deletions(-)
> >>  create mode 100644 package/libs/elfutils/patches/110-no-cdefs.patch
> >>
> >> diff --git a/package/libs/elfutils/Makefile
> b/package/libs/elfutils/Makefile
> >> index 630c48820a..e6868c56f4 100644
> >> --- a/package/libs/elfutils/Makefile
> >> +++ b/package/libs/elfutils/Makefile
> >> @@ -7,12 +7,12 @@
> >>  include $(TOPDIR)/rules.mk
> >>
> >>  PKG_NAME:=3Delfutils
> >> -PKG_VERSION:=3D0.177
> >> -PKG_RELEASE:=3D2
> >> +PKG_VERSION:=3D0.179
> >> +PKG_RELEASE:=3D1
> >>
> >>  PKG_SOURCE:=3D$(PKG_NAME)-$(PKG_VERSION).tar.bz2
> >>  PKG_SOURCE_URL:=3Dhttps://sourceware.org/$(PKG_NAME)/ftp/$(PKG_VERSIO=
N)
> >>
> -PKG_HASH:=3Dfa489deccbcae7d8c920f60d85906124c1989c591196d90e0fd668e3dc05=
042e
> >>
> +PKG_HASH:=3D25a545566cbacaa37ae6222e58f1c48ea4570f53ba991886e2f5ce96e22a=
23a2
> >>
> >>  PKG_MAINTAINER:=3DLuiz Angelo Daros de Luca <luizluca@gmail.com>
> >>  PKG_LICENSE:=3DGPL-3.0-or-later
> >> @@ -63,6 +63,7 @@ endif
> >>
> >>  CONFIGURE_ARGS +=3D \
> >>         --program-prefix=3Deu- \
> >> +       --disable-debuginfod \
> >>         --without-lzma
> >>
> >>  TARGET_CFLAGS +=3D -D_GNU_SOURCE -Wno-unused-result
> -Wno-format-nonliteral
> >> diff --git
> a/package/libs/elfutils/patches/003-libintl-compatibility.patch
> b/package/libs/elfutils/patches/003-libintl-compatibility.patch
> >> index 32bfaf8e6d..ea0f4535a5 100644
> >> --- a/package/libs/elfutils/patches/003-libintl-compatibility.patch
> >> +++ b/package/libs/elfutils/patches/003-libintl-compatibility.patch
> >> @@ -1,8 +1,31 @@
> >> ---- a/libelf/libelfP.h
> >> -+++ b/libelf/libelfP.h
> >> -@@ -39,6 +39,9 @@
> >> - #include <stdio.h>
> >> - #include <string.h>
> >> +--- a/config/libelf.pc.in
> >> ++++ b/config/libelf.pc.in
> >> +@@ -8,7 +8,7 @@ Description: elfutils libelf library to read and writ=
e
> ELF files
> >> + Version: @VERSION@
> >> + URL: http://elfutils.org/
> >> +
> >> +-Libs: -L${libdir} -lelf
> >> ++Libs: -L${libdir} -lelf @intl_LDFLAGS@
> >> + Cflags: -I${includedir}
> >> +
> >> + Requires.private: zlib
> >> +--- a/configure.ac
> >> ++++ b/configure.ac
> >> +@@ -586,6 +586,9 @@ AC_CONFIG_FILES([config/libelf.pc config/libdw.pc
> config/libdebuginfod.pc])
> >> + AC_SUBST(USE_NLS, yes)
> >> + AM_PO_SUBDIRS
> >> +
> >> ++case "$USE_NLS" in yes) intl_LDFLAGS=3D"-lintl" ;; esac
> >> ++AC_SUBST([intl_LDFLAGS])
> >> ++
> >> + dnl Appended to the config.h file.
> >> + dnl We hide all kinds of configuration magic in lib/eu-config.h.
> >> + AH_BOTTOM([#include <eu-config.h>])
> >> +--- a/libasm/libasmP.h
> >> ++++ b/libasm/libasmP.h
> >> +@@ -36,6 +36,9 @@
> >> +
> >> + #include "libdwelf.h"
> >>
> >>  +#ifdef _ /* fix libintl-stub */
> >>  +#undef _
> >> @@ -12,20 +35,19 @@
> >>
> >>  --- a/libdw/libdwP.h
> >>  +++ b/libdw/libdwP.h
> >> -@@ -35,7 +35,9 @@
> >> - #include <libdw.h>
> >> +@@ -37,6 +37,9 @@
> >>   #include <dwarf.h>
> >> + #include "atomics.h"
> >>
> >> --
> >>  +#ifdef _ /* fix libintl-stub */
> >>  +#undef _
> >>  +#endif
> >> +
> >>   /* gettext helper macros.  */
> >>   #define _(Str) dgettext ("elfutils", Str)
> >> -
> >>  --- a/libdwfl/libdwflP.h
> >>  +++ b/libdwfl/libdwflP.h
> >> -@@ -43,6 +43,9 @@
> >> +@@ -44,6 +44,9 @@
> >>
> >>   typedef struct Dwfl_Process Dwfl_Process;
> >>
> >> @@ -35,11 +57,11 @@
> >>   /* gettext helper macros.  */
> >>   #define _(Str) dgettext ("elfutils", Str)
> >>
> >> ---- a/libasm/libasmP.h
> >> -+++ b/libasm/libasmP.h
> >> -@@ -35,6 +35,9 @@
> >> -
> >> - #include "libdwelf.h"
> >> +--- a/libelf/libelfP.h
> >> ++++ b/libelf/libelfP.h
> >> +@@ -39,6 +39,9 @@
> >> + #include <stdio.h>
> >> + #include <string.h>
> >>
> >>  +#ifdef _ /* fix libintl-stub */
> >>  +#undef _
> >> @@ -47,26 +69,3 @@
> >>   /* gettext helper macros.  */
> >>   #define _(Str) dgettext ("elfutils", Str)
> >>
> >> ---- a/config/libelf.pc.in
> >> -+++ b/config/libelf.pc.in
> >> -@@ -8,7 +8,7 @@ Description: elfutils libelf library to
> >> - Version: @VERSION@
> >> - URL: http://elfutils.org/
> >> -
> >> --Libs: -L${libdir} -lelf
> >> -+Libs: -L${libdir} -lelf @intl_LDFLAGS@
> >> - Cflags: -I${includedir}
> >> -
> >> - Requires.private: zlib
> >> ---- a/configure.ac
> >> -+++ b/configure.ac
> >> -@@ -543,6 +543,9 @@ AC_CONFIG_FILES([config/libelf.pc config
> >> - AC_SUBST(USE_NLS, yes)
> >> - AM_PO_SUBDIRS
> >> -
> >> -+case "$USE_NLS" in yes) intl_LDFLAGS=3D"-lintl" ;; esac
> >> -+AC_SUBST([intl_LDFLAGS])
> >> -+
> >> - dnl Appended to the config.h file.
> >> - dnl We hide all kinds of configuration magic in lib/eu-config.h.
> >> - AH_BOTTOM([#include <eu-config.h>])
> >> diff --git a/package/libs/elfutils/patches/005-build_only_libs.patch
> b/package/libs/elfutils/patches/005-build_only_libs.patch
> >> index 93d593a0fc..a81d1d2cab 100644
> >> --- a/package/libs/elfutils/patches/005-build_only_libs.patch
> >> +++ b/package/libs/elfutils/patches/005-build_only_libs.patch
> >> @@ -1,12 +1,11 @@
> >>  --- a/Makefile.am
> >>  +++ b/Makefile.am
> >> -@@ -27,8 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory
> >> +@@ -27,7 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory
> >>   pkginclude_HEADERS =3D version.h
> >>
> >> - # Add doc back when we have some real content.
> >> --SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw libcp=
u
> libasm \
> >> --        backends src po tests
> >> -+SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw libas=
m
> >> + SUBDIRS =3D config m4 lib libelf libcpu backends libebl libdwelf
> libdwfl libdw \
> >> +-        libasm src po doc tests
> >> ++        libasm
> >>
> >> - EXTRA_DIST =3D elfutils.spec GPG-KEY NOTES CONTRIBUTING \
> >> -            COPYING COPYING-GPLV2 COPYING-LGPLV3
> >> + if DEBUGINFOD
> >> + SUBDIRS +=3D debuginfod
> >> diff --git a/package/libs/elfutils/patches/100-musl-compat.patch
> b/package/libs/elfutils/patches/100-musl-compat.patch
> >> index 109b7ece08..374e832d3f 100644
> >> --- a/package/libs/elfutils/patches/100-musl-compat.patch
> >> +++ b/package/libs/elfutils/patches/100-musl-compat.patch
> >> @@ -22,20 +22,9 @@
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D21002
> >>   #include <stddef.h>
> >>   #include <stdint.h>
> >>   #include <sys/param.h>
> >> -@@ -38,6 +49,10 @@
> >> - #include <byteswap.h>
> >> - #include <unistd.h>
> >> -
> >> -+#ifndef __GLIBC__
> >> -+#define canonicalize_file_name(name) realpath(name,NULL)
> >> -+#endif
> >> -+
> >> - #if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN
> >> - # define LE32(n)      (n)
> >> - # define LE64(n)      (n)
> >>  --- a/libdw/libdw_alloc.c
> >>  +++ b/libdw/libdw_alloc.c
> >> -@@ -73,5 +73,5 @@ __attribute ((noreturn)) attribute_hidde
> >> +@@ -147,5 +147,5 @@ __attribute ((noreturn)) attribute_hidde
> >>   __libdw_oom (void)
> >>   {
> >>     while (1)
> >> @@ -44,12 +33,15 @@
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D21002
> >>   }
> >>  --- a/libdwfl/dwfl_error.c
> >>  +++ b/libdwfl/dwfl_error.c
> >> -@@ -154,7 +154,7 @@ dwfl_errmsg (int error)
> >> +@@ -154,7 +154,11 @@ dwfl_errmsg (int error)
> >>     switch (error &~ 0xffff)
> >>       {
> >>       case OTHER_ERROR (ERRNO):
> >> --      return strerror_r (error & 0xffff, "bad", 0);
> >> -+      return strerror_l (error & 0xffff, LC_GLOBAL_LOCALE);
> >> ++#if defined(__GLIBC__) && !defined(__UCLIBC__)
> >> +       return strerror_r (error & 0xffff, "bad", 0);
> >
> >
> > According to GNU documentation, this call uses insufficient buffer size
> (buflen is 0), so it should lead to error ERANGE. Moreover, supplying fix=
ed
> string as a buffer does not look correct, so I doubt this does anything
> useful.
> All I know is, this code is writteb with glibc in mind.
>

I checked glibc sources and it either returns address of glibc error
message (from a static table), or tries to fill the buffer with =E2=80=9CUn=
known
error N=E2=80=9D if there is enough space (in this case it just returns poi=
nter to
the =E2=80=9Cbad=E2=80=9D string without modifying it). So fine for me.


> >
> > Regards,
> > Oldrich.
> >
>

--000000000000feec2905a2a051dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">po 6. 4. 2020 v=C2=A08:45 odes=C3=ADlatel=
 Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com">rosenp@gmail.com</a>&g=
t; napsal:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Sun, Apr 5, 2020 at 11:01 PM Old=C5=99ich Jedli=C4=
=8Dka &lt;<a href=3D"mailto:oldium.pro@gmail.com" target=3D"_blank">oldium.=
pro@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; po 6. 4. 2020 v 4:02 odes=C3=ADlatel Rosen Penev &lt;<a href=3D"mailto=
:rosenp@gmail.com" target=3D"_blank">rosenp@gmail.com</a>&gt; napsal:<br>
&gt;&gt;<br>
&gt;&gt; Removed sys/cdefs usage. The header is deprecated.<br>
&gt;&gt;<br>
&gt;&gt; Removed canonicalize_file_name define. It&#39;s already fixed upst=
ream.<br>
&gt;&gt;<br>
&gt;&gt; Added --disable-debuginfod. Seems to be needed.<br>
&gt;&gt;<br>
&gt;&gt; Modified patch 005 to build more stuff. It was failing before. It =
still<br>
&gt;&gt; only builds libraries.<br>
&gt;&gt;<br>
&gt;&gt; Modified patch 100 to use strerror under non-glibc. It is used und=
er<br>
&gt;&gt; glibc as strerror is not thread safe. It is under musl and uClibc-=
ng.<br>
&gt;&gt; strerror_l is not available under uClibc-ng.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com"=
 target=3D"_blank">rosenp@gmail.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 package/libs/elfutils/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 7 +-<br>
&gt;&gt;=C2=A0 .../patches/003-libintl-compatibility.patch=C2=A0 =C2=A0| 75=
 +++++++++----------<br>
&gt;&gt;=C2=A0 .../patches/005-build_only_libs.patch=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 13 ++--<br>
&gt;&gt;=C2=A0 .../elfutils/patches/100-musl-compat.patch=C2=A0 =C2=A0 | 22=
 ++----<br>
&gt;&gt;=C2=A0 .../libs/elfutils/patches/101-no-fts.patch=C2=A0 =C2=A0 |=C2=
=A0 2 +-<br>
&gt;&gt;=C2=A0 .../libs/elfutils/patches/110-no-cdefs.patch=C2=A0 | 58 ++++=
++++++++++<br>
&gt;&gt;=C2=A0 6 files changed, 113 insertions(+), 64 deletions(-)<br>
&gt;&gt;=C2=A0 create mode 100644 package/libs/elfutils/patches/110-no-cdef=
s.patch<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/package/libs/elfutils/Makefile b/package/libs/elfutil=
s/Makefile<br>
&gt;&gt; index 630c48820a..e6868c56f4 100644<br>
&gt;&gt; --- a/package/libs/elfutils/Makefile<br>
&gt;&gt; +++ b/package/libs/elfutils/Makefile<br>
&gt;&gt; @@ -7,12 +7,12 @@<br>
&gt;&gt;=C2=A0 include $(TOPDIR)/<a href=3D"http://rules.mk" rel=3D"norefer=
rer" target=3D"_blank">rules.mk</a><br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 PKG_NAME:=3Delfutils<br>
&gt;&gt; -PKG_VERSION:=3D0.177<br>
&gt;&gt; -PKG_RELEASE:=3D2<br>
&gt;&gt; +PKG_VERSION:=3D0.179<br>
&gt;&gt; +PKG_RELEASE:=3D1<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 PKG_SOURCE:=3D$(PKG_NAME)-$(PKG_VERSION).tar.bz2<br>
&gt;&gt;=C2=A0 PKG_SOURCE_URL:=3D<a href=3D"https://sourceware.org/$(PKG_NA=
ME)/ftp/$(PKG_VERSION)" rel=3D"noreferrer" target=3D"_blank">https://source=
ware.org/$(PKG_NAME)/ftp/$(PKG_VERSION)</a><br>
&gt;&gt; -PKG_HASH:=3Dfa489deccbcae7d8c920f60d85906124c1989c591196d90e0fd66=
8e3dc05042e<br>
&gt;&gt; +PKG_HASH:=3D25a545566cbacaa37ae6222e58f1c48ea4570f53ba991886e2f5c=
e96e22a23a2<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 PKG_MAINTAINER:=3DLuiz Angelo Daros de Luca &lt;<a href=3D"m=
ailto:luizluca@gmail.com" target=3D"_blank">luizluca@gmail.com</a>&gt;<br>
&gt;&gt;=C2=A0 PKG_LICENSE:=3DGPL-3.0-or-later<br>
&gt;&gt; @@ -63,6 +63,7 @@ endif<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 CONFIGURE_ARGS +=3D \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--program-prefix=3Deu- \<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0--disable-debuginfod \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--without-lzma<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 TARGET_CFLAGS +=3D -D_GNU_SOURCE -Wno-unused-result -Wno-for=
mat-nonliteral<br>
&gt;&gt; diff --git a/package/libs/elfutils/patches/003-libintl-compatibili=
ty.patch b/package/libs/elfutils/patches/003-libintl-compatibility.patch<br=
>
&gt;&gt; index 32bfaf8e6d..ea0f4535a5 100644<br>
&gt;&gt; --- a/package/libs/elfutils/patches/003-libintl-compatibility.patc=
h<br>
&gt;&gt; +++ b/package/libs/elfutils/patches/003-libintl-compatibility.patc=
h<br>
&gt;&gt; @@ -1,8 +1,31 @@<br>
&gt;&gt; ---- a/libelf/libelfP.h<br>
&gt;&gt; -+++ b/libelf/libelfP.h<br>
&gt;&gt; -@@ -39,6 +39,9 @@<br>
&gt;&gt; - #include &lt;stdio.h&gt;<br>
&gt;&gt; - #include &lt;string.h&gt;<br>
&gt;&gt; +--- a/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" t=
arget=3D"_blank">libelf.pc.in</a><br>
&gt;&gt; ++++ b/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" t=
arget=3D"_blank">libelf.pc.in</a><br>
&gt;&gt; +@@ -8,7 +8,7 @@ Description: elfutils libelf library to read and =
write ELF files<br>
&gt;&gt; + Version: @VERSION@<br>
&gt;&gt; + URL: <a href=3D"http://elfutils.org/" rel=3D"noreferrer" target=
=3D"_blank">http://elfutils.org/</a><br>
&gt;&gt; +<br>
&gt;&gt; +-Libs: -L${libdir} -lelf<br>
&gt;&gt; ++Libs: -L${libdir} -lelf @intl_LDFLAGS@<br>
&gt;&gt; + Cflags: -I${includedir}<br>
&gt;&gt; +<br>
&gt;&gt; + Requires.private: zlib<br>
&gt;&gt; +--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=
=3D"_blank">configure.ac</a><br>
&gt;&gt; ++++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=
=3D"_blank">configure.ac</a><br>
&gt;&gt; +@@ -586,6 +586,9 @@ AC_CONFIG_FILES([config/libelf.pc config/libd=
w.pc config/libdebuginfod.pc])<br>
&gt;&gt; + AC_SUBST(USE_NLS, yes)<br>
&gt;&gt; + AM_PO_SUBDIRS<br>
&gt;&gt; +<br>
&gt;&gt; ++case &quot;$USE_NLS&quot; in yes) intl_LDFLAGS=3D&quot;-lintl&qu=
ot; ;; esac<br>
&gt;&gt; ++AC_SUBST([intl_LDFLAGS])<br>
&gt;&gt; ++<br>
&gt;&gt; + dnl Appended to the config.h file.<br>
&gt;&gt; + dnl We hide all kinds of configuration magic in lib/eu-config.h.=
<br>
&gt;&gt; + AH_BOTTOM([#include &lt;eu-config.h&gt;])<br>
&gt;&gt; +--- a/libasm/libasmP.h<br>
&gt;&gt; ++++ b/libasm/libasmP.h<br>
&gt;&gt; +@@ -36,6 +36,9 @@<br>
&gt;&gt; +<br>
&gt;&gt; + #include &quot;libdwelf.h&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 +#ifdef _ /* fix libintl-stub */<br>
&gt;&gt;=C2=A0 +#undef _<br>
&gt;&gt; @@ -12,20 +35,19 @@<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 --- a/libdw/libdwP.h<br>
&gt;&gt;=C2=A0 +++ b/libdw/libdwP.h<br>
&gt;&gt; -@@ -35,7 +35,9 @@<br>
&gt;&gt; - #include &lt;libdw.h&gt;<br>
&gt;&gt; +@@ -37,6 +37,9 @@<br>
&gt;&gt;=C2=A0 =C2=A0#include &lt;dwarf.h&gt;<br>
&gt;&gt; + #include &quot;atomics.h&quot;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt;=C2=A0 +#ifdef _ /* fix libintl-stub */<br>
&gt;&gt;=C2=A0 +#undef _<br>
&gt;&gt;=C2=A0 +#endif<br>
&gt;&gt; +<br>
&gt;&gt;=C2=A0 =C2=A0/* gettext helper macros.=C2=A0 */<br>
&gt;&gt;=C2=A0 =C2=A0#define _(Str) dgettext (&quot;elfutils&quot;, Str)<br=
>
&gt;&gt; -<br>
&gt;&gt;=C2=A0 --- a/libdwfl/libdwflP.h<br>
&gt;&gt;=C2=A0 +++ b/libdwfl/libdwflP.h<br>
&gt;&gt; -@@ -43,6 +43,9 @@<br>
&gt;&gt; +@@ -44,6 +44,9 @@<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0typedef struct Dwfl_Process Dwfl_Process;<br>
&gt;&gt;<br>
&gt;&gt; @@ -35,11 +57,11 @@<br>
&gt;&gt;=C2=A0 =C2=A0/* gettext helper macros.=C2=A0 */<br>
&gt;&gt;=C2=A0 =C2=A0#define _(Str) dgettext (&quot;elfutils&quot;, Str)<br=
>
&gt;&gt;<br>
&gt;&gt; ---- a/libasm/libasmP.h<br>
&gt;&gt; -+++ b/libasm/libasmP.h<br>
&gt;&gt; -@@ -35,6 +35,9 @@<br>
&gt;&gt; -<br>
&gt;&gt; - #include &quot;libdwelf.h&quot;<br>
&gt;&gt; +--- a/libelf/libelfP.h<br>
&gt;&gt; ++++ b/libelf/libelfP.h<br>
&gt;&gt; +@@ -39,6 +39,9 @@<br>
&gt;&gt; + #include &lt;stdio.h&gt;<br>
&gt;&gt; + #include &lt;string.h&gt;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 +#ifdef _ /* fix libintl-stub */<br>
&gt;&gt;=C2=A0 +#undef _<br>
&gt;&gt; @@ -47,26 +69,3 @@<br>
&gt;&gt;=C2=A0 =C2=A0/* gettext helper macros.=C2=A0 */<br>
&gt;&gt;=C2=A0 =C2=A0#define _(Str) dgettext (&quot;elfutils&quot;, Str)<br=
>
&gt;&gt;<br>
&gt;&gt; ---- a/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" t=
arget=3D"_blank">libelf.pc.in</a><br>
&gt;&gt; -+++ b/config/<a href=3D"http://libelf.pc.in" rel=3D"noreferrer" t=
arget=3D"_blank">libelf.pc.in</a><br>
&gt;&gt; -@@ -8,7 +8,7 @@ Description: elfutils libelf library to<br>
&gt;&gt; - Version: @VERSION@<br>
&gt;&gt; - URL: <a href=3D"http://elfutils.org/" rel=3D"noreferrer" target=
=3D"_blank">http://elfutils.org/</a><br>
&gt;&gt; -<br>
&gt;&gt; --Libs: -L${libdir} -lelf<br>
&gt;&gt; -+Libs: -L${libdir} -lelf @intl_LDFLAGS@<br>
&gt;&gt; - Cflags: -I${includedir}<br>
&gt;&gt; -<br>
&gt;&gt; - Requires.private: zlib<br>
&gt;&gt; ---- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=
=3D"_blank">configure.ac</a><br>
&gt;&gt; -+++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=
=3D"_blank">configure.ac</a><br>
&gt;&gt; -@@ -543,6 +543,9 @@ AC_CONFIG_FILES([config/libelf.pc config<br>
&gt;&gt; - AC_SUBST(USE_NLS, yes)<br>
&gt;&gt; - AM_PO_SUBDIRS<br>
&gt;&gt; -<br>
&gt;&gt; -+case &quot;$USE_NLS&quot; in yes) intl_LDFLAGS=3D&quot;-lintl&qu=
ot; ;; esac<br>
&gt;&gt; -+AC_SUBST([intl_LDFLAGS])<br>
&gt;&gt; -+<br>
&gt;&gt; - dnl Appended to the config.h file.<br>
&gt;&gt; - dnl We hide all kinds of configuration magic in lib/eu-config.h.=
<br>
&gt;&gt; - AH_BOTTOM([#include &lt;eu-config.h&gt;])<br>
&gt;&gt; diff --git a/package/libs/elfutils/patches/005-build_only_libs.pat=
ch b/package/libs/elfutils/patches/005-build_only_libs.patch<br>
&gt;&gt; index 93d593a0fc..a81d1d2cab 100644<br>
&gt;&gt; --- a/package/libs/elfutils/patches/005-build_only_libs.patch<br>
&gt;&gt; +++ b/package/libs/elfutils/patches/005-build_only_libs.patch<br>
&gt;&gt; @@ -1,12 +1,11 @@<br>
&gt;&gt;=C2=A0 --- a/Makefile.am<br>
&gt;&gt;=C2=A0 +++ b/Makefile.am<br>
&gt;&gt; -@@ -27,8 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory<br>
&gt;&gt; +@@ -27,7 +27,7 @@ AM_MAKEFLAGS =3D --no-print-directory<br>
&gt;&gt;=C2=A0 =C2=A0pkginclude_HEADERS =3D version.h<br>
&gt;&gt;<br>
&gt;&gt; - # Add doc back when we have some real content.<br>
&gt;&gt; --SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw l=
ibcpu libasm \<br>
&gt;&gt; --=C2=A0 =C2=A0 =C2=A0 =C2=A0 backends src po tests<br>
&gt;&gt; -+SUBDIRS =3D config m4 lib libelf libebl libdwelf libdwfl libdw l=
ibasm<br>
&gt;&gt; + SUBDIRS =3D config m4 lib libelf libcpu backends libebl libdwelf=
 libdwfl libdw \<br>
&gt;&gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 libasm src po doc tests<br>
&gt;&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 libasm<br>
&gt;&gt;<br>
&gt;&gt; - EXTRA_DIST =3D elfutils.spec GPG-KEY NOTES CONTRIBUTING \<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 COPYING COPYING-GPLV2 C=
OPYING-LGPLV3<br>
&gt;&gt; + if DEBUGINFOD<br>
&gt;&gt; + SUBDIRS +=3D debuginfod<br>
&gt;&gt; diff --git a/package/libs/elfutils/patches/100-musl-compat.patch b=
/package/libs/elfutils/patches/100-musl-compat.patch<br>
&gt;&gt; index 109b7ece08..374e832d3f 100644<br>
&gt;&gt; --- a/package/libs/elfutils/patches/100-musl-compat.patch<br>
&gt;&gt; +++ b/package/libs/elfutils/patches/100-musl-compat.patch<br>
&gt;&gt; @@ -22,20 +22,9 @@ <a href=3D"https://sourceware.org/bugzilla/show=
_bug.cgi?id=3D21002" rel=3D"noreferrer" target=3D"_blank">https://sourcewar=
e.org/bugzilla/show_bug.cgi?id=3D21002</a><br>
&gt;&gt;=C2=A0 =C2=A0#include &lt;stddef.h&gt;<br>
&gt;&gt;=C2=A0 =C2=A0#include &lt;stdint.h&gt;<br>
&gt;&gt;=C2=A0 =C2=A0#include &lt;sys/param.h&gt;<br>
&gt;&gt; -@@ -38,6 +49,10 @@<br>
&gt;&gt; - #include &lt;byteswap.h&gt;<br>
&gt;&gt; - #include &lt;unistd.h&gt;<br>
&gt;&gt; -<br>
&gt;&gt; -+#ifndef __GLIBC__<br>
&gt;&gt; -+#define canonicalize_file_name(name) realpath(name,NULL)<br>
&gt;&gt; -+#endif<br>
&gt;&gt; -+<br>
&gt;&gt; - #if __BYTE_ORDER =3D=3D __LITTLE_ENDIAN<br>
&gt;&gt; - # define LE32(n)=C2=A0 =C2=A0 =C2=A0 (n)<br>
&gt;&gt; - # define LE64(n)=C2=A0 =C2=A0 =C2=A0 (n)<br>
&gt;&gt;=C2=A0 --- a/libdw/libdw_alloc.c<br>
&gt;&gt;=C2=A0 +++ b/libdw/libdw_alloc.c<br>
&gt;&gt; -@@ -73,5 +73,5 @@ __attribute ((noreturn)) attribute_hidde<br>
&gt;&gt; +@@ -147,5 +147,5 @@ __attribute ((noreturn)) attribute_hidde<br>
&gt;&gt;=C2=A0 =C2=A0__libdw_oom (void)<br>
&gt;&gt;=C2=A0 =C2=A0{<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0while (1)<br>
&gt;&gt; @@ -44,12 +33,15 @@ <a href=3D"https://sourceware.org/bugzilla/sho=
w_bug.cgi?id=3D21002" rel=3D"noreferrer" target=3D"_blank">https://sourcewa=
re.org/bugzilla/show_bug.cgi?id=3D21002</a><br>
&gt;&gt;=C2=A0 =C2=A0}<br>
&gt;&gt;=C2=A0 --- a/libdwfl/dwfl_error.c<br>
&gt;&gt;=C2=A0 +++ b/libdwfl/dwfl_error.c<br>
&gt;&gt; -@@ -154,7 +154,7 @@ dwfl_errmsg (int error)<br>
&gt;&gt; +@@ -154,7 +154,11 @@ dwfl_errmsg (int error)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0switch (error &amp;~ 0xffff)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0{<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0case OTHER_ERROR (ERRNO):<br>
&gt;&gt; --=C2=A0 =C2=A0 =C2=A0 return strerror_r (error &amp; 0xffff, &quo=
t;bad&quot;, 0);<br>
&gt;&gt; -+=C2=A0 =C2=A0 =C2=A0 return strerror_l (error &amp; 0xffff, LC_G=
LOBAL_LOCALE);<br>
&gt;&gt; ++#if defined(__GLIBC__) &amp;&amp; !defined(__UCLIBC__)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return strerror_r (error &amp; 0xffff,=
 &quot;bad&quot;, 0);<br>
&gt;<br>
&gt;<br>
&gt; According to GNU documentation, this call uses insufficient buffer siz=
e (buflen is 0), so it should lead to error ERANGE. Moreover, supplying fix=
ed string as a buffer does not look correct, so I doubt this does anything =
useful.<br>
All I know is, this code is writteb with glibc in mind.<br></blockquote><di=
v><br></div><div>I checked glibc sources and it either returns address of g=
libc error message (from a static table), or tries to fill the buffer with =
=E2=80=9CUnknown error N=E2=80=9D if there is enough space (in this case it=
 just returns pointer to the=C2=A0=E2=80=9Cbad=E2=80=9D string without modi=
fying it). So fine for me.</div><div>=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
&gt;<br>
&gt; Regards,<br>
&gt; Oldrich.<br>
&gt;<br>
</blockquote></div></div>

--000000000000feec2905a2a051dd--


--===============8347459072951823650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8347459072951823650==--

