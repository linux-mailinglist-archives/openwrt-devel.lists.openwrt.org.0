Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447D719EF3F
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 04:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nO/dhDl+SJH9C1GjsH43/mh0WonQzfI2iVXFq3hCxBw=; b=H+hu53tkhHfYk+
	68z6zwAVwWYT+img6z6jU2iIF9eh72vPBfW56U8XFOqtvBIBEYXgvTaE1SYHS5bJ7qUBw5BfmVguc
	3rJ9JVYECir5Hd5ZpK2n2Qaao5CTqbMOCf2Uvk9gOO1ixwb7s+nKrfFoyJim5Z0s4IV3y1jpbrqlf
	MI26Au5fkqJzPpmbfnFpix6B9ZyQ926qxrsB6jrioTQ2zzBr9454J2PGehN73QBo5G5BvkypEJeIv
	tQUGYN9ic3Es9PQUjYFZMGHIQduRXHsQDZpNfHUVZBdN+lUX2jCA/sTrW6PeXO9yMU3h8mKBsNRbR
	IToxnFt+9aSKW+lJ0W/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLH6G-00064p-8c; Mon, 06 Apr 2020 02:02:56 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLH67-000641-8z
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 02:02:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ng8so5835665pjb.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 19:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=okNu7TDyuaqrf9/NNQ3uDoKpoTagJfzNdtuSxKLWC2A=;
 b=n7nGvzREJq+qtU/jiz8H6BL1Fz/5rqTFFxKgHuYcnjHR9VpHiKAn+wiv8HiI2LUIkC
 cbrOg8wFrR8v35oeQcY869HWbxUtocX3XDOf2uqVqtmIJ4Tbqq7dN1WrXX84U7j1umya
 DNfi0XFJtxZ/j+k30pISswV5OlnjUZOfTAShXz5VWS7wPtRzRQd8bz49r2okCA9u42nq
 37581AWexzt9wv/Z3dtTtSqSGHMWZDgg1dm4E4ylRWLJLpgnky8ShrHUMKjbqzZz0hFY
 LHDk+ZNLre0F5I9ePCjTB7q/OyT9MmVoTw1YGWxXbtTZQQaWc2gjcSGTbcKD3dcAow0W
 egTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=okNu7TDyuaqrf9/NNQ3uDoKpoTagJfzNdtuSxKLWC2A=;
 b=q23Fceu6+/5GaoidZCra3ldIUMYUE0IJ2Cm/Klt6lcDEH2cnOhMi+kw4TGVvtBsu10
 ClfRzLmcLwTL12x3nhP62Ir+7ng2koitRzqY+nu9661MDVCjSBCgzhahB7W2Hv6V+/Jx
 uVzMxLdF6j4rLNkoMGNXjuwfJ6toTEFZT8aNn1QXrnxFGw14NbHMorZv5U6EZU6Mp3AP
 E7tMaCfjtZYzh7a64VoP1g/skFHTNBzngW66GKdMpPz72FE+IyMYST5d6/34GNkzlqef
 nTxtr0EsjNBd8DgTGmgJGcRblaFEQjI+IOTuBEyyPi2rouZnFujZuRiRxe87n9Mbz753
 U3rQ==
X-Gm-Message-State: AGi0PuZE/9tQAOtxMhCdj2K4O0bGJmbr7s0lIiusqwxsYAylYelheuTj
 82buSCXAMC6q1J9vErOJDoNOhW6v
X-Google-Smtp-Source: APiQypLzHsaGyOyZITsXDsuVwVu99bsn74orzFIDyXrFylJxWJn5vOSuUlyEoaX6lHfiSjwap1J2XQ==
X-Received: by 2002:a17:902:7404:: with SMTP id
 g4mr17517034pll.69.1586138563115; 
 Sun, 05 Apr 2020 19:02:43 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id u41sm9867199pgn.8.2020.04.05.19.02.40
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 19:02:42 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 19:02:38 -0700
Message-Id: <20200406020238.3780-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_190247_343807_49FE2AF2 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] elfutils: update to 0.179
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Removed sys/cdefs usage. The header is deprecated.

Removed canonicalize_file_name define. It's already fixed upstream.

Added --disable-debuginfod. Seems to be needed.

Modified patch 005 to build more stuff. It was failing before. It still
only builds libraries.

Modified patch 100 to use strerror under non-glibc. It is used under
glibc as strerror is not thread safe. It is under musl and uClibc-ng.
strerror_l is not available under uClibc-ng.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/elfutils/Makefile                |  7 +-
 .../patches/003-libintl-compatibility.patch   | 75 +++++++++----------
 .../patches/005-build_only_libs.patch         | 13 ++--
 .../elfutils/patches/100-musl-compat.patch    | 22 ++----
 .../libs/elfutils/patches/101-no-fts.patch    |  2 +-
 .../libs/elfutils/patches/110-no-cdefs.patch  | 58 ++++++++++++++
 6 files changed, 113 insertions(+), 64 deletions(-)
 create mode 100644 package/libs/elfutils/patches/110-no-cdefs.patch

diff --git a/package/libs/elfutils/Makefile b/package/libs/elfutils/Makefile
index 630c48820a..e6868c56f4 100644
--- a/package/libs/elfutils/Makefile
+++ b/package/libs/elfutils/Makefile
@@ -7,12 +7,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=elfutils
-PKG_VERSION:=0.177
-PKG_RELEASE:=2
+PKG_VERSION:=0.179
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=https://sourceware.org/$(PKG_NAME)/ftp/$(PKG_VERSION)
-PKG_HASH:=fa489deccbcae7d8c920f60d85906124c1989c591196d90e0fd668e3dc05042e
+PKG_HASH:=25a545566cbacaa37ae6222e58f1c48ea4570f53ba991886e2f5ce96e22a23a2
 
 PKG_MAINTAINER:=Luiz Angelo Daros de Luca <luizluca@gmail.com>
 PKG_LICENSE:=GPL-3.0-or-later
@@ -63,6 +63,7 @@ endif
 
 CONFIGURE_ARGS += \
 	--program-prefix=eu- \
+	--disable-debuginfod \
 	--without-lzma
 
 TARGET_CFLAGS += -D_GNU_SOURCE -Wno-unused-result -Wno-format-nonliteral
diff --git a/package/libs/elfutils/patches/003-libintl-compatibility.patch b/package/libs/elfutils/patches/003-libintl-compatibility.patch
index 32bfaf8e6d..ea0f4535a5 100644
--- a/package/libs/elfutils/patches/003-libintl-compatibility.patch
+++ b/package/libs/elfutils/patches/003-libintl-compatibility.patch
@@ -1,8 +1,31 @@
---- a/libelf/libelfP.h
-+++ b/libelf/libelfP.h
-@@ -39,6 +39,9 @@
- #include <stdio.h>
- #include <string.h>
+--- a/config/libelf.pc.in
++++ b/config/libelf.pc.in
+@@ -8,7 +8,7 @@ Description: elfutils libelf library to read and write ELF files
+ Version: @VERSION@
+ URL: http://elfutils.org/
+ 
+-Libs: -L${libdir} -lelf
++Libs: -L${libdir} -lelf @intl_LDFLAGS@
+ Cflags: -I${includedir}
+ 
+ Requires.private: zlib
+--- a/configure.ac
++++ b/configure.ac
+@@ -586,6 +586,9 @@ AC_CONFIG_FILES([config/libelf.pc config/libdw.pc config/libdebuginfod.pc])
+ AC_SUBST(USE_NLS, yes)
+ AM_PO_SUBDIRS
+ 
++case "$USE_NLS" in yes) intl_LDFLAGS="-lintl" ;; esac
++AC_SUBST([intl_LDFLAGS])
++
+ dnl Appended to the config.h file.
+ dnl We hide all kinds of configuration magic in lib/eu-config.h.
+ AH_BOTTOM([#include <eu-config.h>])
+--- a/libasm/libasmP.h
++++ b/libasm/libasmP.h
+@@ -36,6 +36,9 @@
+ 
+ #include "libdwelf.h"
  
 +#ifdef _ /* fix libintl-stub */
 +#undef _
@@ -12,20 +35,19 @@
  
 --- a/libdw/libdwP.h
 +++ b/libdw/libdwP.h
-@@ -35,7 +35,9 @@
- #include <libdw.h>
+@@ -37,6 +37,9 @@
  #include <dwarf.h>
+ #include "atomics.h"
  
--
 +#ifdef _ /* fix libintl-stub */
 +#undef _
 +#endif
+ 
  /* gettext helper macros.  */
  #define _(Str) dgettext ("elfutils", Str)
- 
 --- a/libdwfl/libdwflP.h
 +++ b/libdwfl/libdwflP.h
-@@ -43,6 +43,9 @@
+@@ -44,6 +44,9 @@
  
  typedef struct Dwfl_Process Dwfl_Process;
  
@@ -35,11 +57,11 @@
  /* gettext helper macros.  */
  #define _(Str) dgettext ("elfutils", Str)
  
---- a/libasm/libasmP.h
-+++ b/libasm/libasmP.h
-@@ -35,6 +35,9 @@
- 
- #include "libdwelf.h"
+--- a/libelf/libelfP.h
++++ b/libelf/libelfP.h
+@@ -39,6 +39,9 @@
+ #include <stdio.h>
+ #include <string.h>
  
 +#ifdef _ /* fix libintl-stub */
 +#undef _
@@ -47,26 +69,3 @@
  /* gettext helper macros.  */
  #define _(Str) dgettext ("elfutils", Str)
  
---- a/config/libelf.pc.in
-+++ b/config/libelf.pc.in
-@@ -8,7 +8,7 @@ Description: elfutils libelf library to
- Version: @VERSION@
- URL: http://elfutils.org/
- 
--Libs: -L${libdir} -lelf
-+Libs: -L${libdir} -lelf @intl_LDFLAGS@
- Cflags: -I${includedir}
- 
- Requires.private: zlib
---- a/configure.ac
-+++ b/configure.ac
-@@ -543,6 +543,9 @@ AC_CONFIG_FILES([config/libelf.pc config
- AC_SUBST(USE_NLS, yes)
- AM_PO_SUBDIRS
- 
-+case "$USE_NLS" in yes) intl_LDFLAGS="-lintl" ;; esac
-+AC_SUBST([intl_LDFLAGS])
-+
- dnl Appended to the config.h file.
- dnl We hide all kinds of configuration magic in lib/eu-config.h.
- AH_BOTTOM([#include <eu-config.h>])
diff --git a/package/libs/elfutils/patches/005-build_only_libs.patch b/package/libs/elfutils/patches/005-build_only_libs.patch
index 93d593a0fc..a81d1d2cab 100644
--- a/package/libs/elfutils/patches/005-build_only_libs.patch
+++ b/package/libs/elfutils/patches/005-build_only_libs.patch
@@ -1,12 +1,11 @@
 --- a/Makefile.am
 +++ b/Makefile.am
-@@ -27,8 +27,7 @@ AM_MAKEFLAGS = --no-print-directory
+@@ -27,7 +27,7 @@ AM_MAKEFLAGS = --no-print-directory
  pkginclude_HEADERS = version.h
  
- # Add doc back when we have some real content.
--SUBDIRS = config m4 lib libelf libebl libdwelf libdwfl libdw libcpu libasm \
--	  backends src po tests
-+SUBDIRS = config m4 lib libelf libebl libdwelf libdwfl libdw libasm
+ SUBDIRS = config m4 lib libelf libcpu backends libebl libdwelf libdwfl libdw \
+-	  libasm src po doc tests
++	  libasm
  
- EXTRA_DIST = elfutils.spec GPG-KEY NOTES CONTRIBUTING \
- 	     COPYING COPYING-GPLV2 COPYING-LGPLV3
+ if DEBUGINFOD
+ SUBDIRS += debuginfod
diff --git a/package/libs/elfutils/patches/100-musl-compat.patch b/package/libs/elfutils/patches/100-musl-compat.patch
index 109b7ece08..374e832d3f 100644
--- a/package/libs/elfutils/patches/100-musl-compat.patch
+++ b/package/libs/elfutils/patches/100-musl-compat.patch
@@ -22,20 +22,9 @@ https://sourceware.org/bugzilla/show_bug.cgi?id=21002
  #include <stddef.h>
  #include <stdint.h>
  #include <sys/param.h>
-@@ -38,6 +49,10 @@
- #include <byteswap.h>
- #include <unistd.h>
- 
-+#ifndef __GLIBC__
-+#define canonicalize_file_name(name) realpath(name,NULL)
-+#endif
-+
- #if __BYTE_ORDER == __LITTLE_ENDIAN
- # define LE32(n)	(n)
- # define LE64(n)	(n)
 --- a/libdw/libdw_alloc.c
 +++ b/libdw/libdw_alloc.c
-@@ -73,5 +73,5 @@ __attribute ((noreturn)) attribute_hidde
+@@ -147,5 +147,5 @@ __attribute ((noreturn)) attribute_hidde
  __libdw_oom (void)
  {
    while (1)
@@ -44,12 +33,15 @@ https://sourceware.org/bugzilla/show_bug.cgi?id=21002
  }
 --- a/libdwfl/dwfl_error.c
 +++ b/libdwfl/dwfl_error.c
-@@ -154,7 +154,7 @@ dwfl_errmsg (int error)
+@@ -154,7 +154,11 @@ dwfl_errmsg (int error)
    switch (error &~ 0xffff)
      {
      case OTHER_ERROR (ERRNO):
--      return strerror_r (error & 0xffff, "bad", 0);
-+      return strerror_l (error & 0xffff, LC_GLOBAL_LOCALE);
++#if defined(__GLIBC__) && !defined(__UCLIBC__)
+       return strerror_r (error & 0xffff, "bad", 0);
++#else
++      return strerror (error & 0xffff);
++#endif
      case OTHER_ERROR (LIBELF):
        return elf_errmsg (error & 0xffff);
      case OTHER_ERROR (LIBDW):
diff --git a/package/libs/elfutils/patches/101-no-fts.patch b/package/libs/elfutils/patches/101-no-fts.patch
index a6e192f8ff..29ec9ecac0 100644
--- a/package/libs/elfutils/patches/101-no-fts.patch
+++ b/package/libs/elfutils/patches/101-no-fts.patch
@@ -72,7 +72,7 @@
  	struct parse_opt *opt = state->hook;
 --- a/libdwfl/Makefile.am
 +++ b/libdwfl/Makefile.am
-@@ -49,7 +49,7 @@ libdwfl_a_SOURCES = dwfl_begin.c dwfl_en
+@@ -50,7 +50,7 @@ libdwfl_a_SOURCES = dwfl_begin.c dwfl_en
  		    argp-std.c find-debuginfo.c \
  		    dwfl_build_id_find_elf.c \
  		    dwfl_build_id_find_debuginfo.c \
diff --git a/package/libs/elfutils/patches/110-no-cdefs.patch b/package/libs/elfutils/patches/110-no-cdefs.patch
new file mode 100644
index 0000000000..b5f8b08127
--- /dev/null
+++ b/package/libs/elfutils/patches/110-no-cdefs.patch
@@ -0,0 +1,58 @@
+From e399540ab67ffe83ca3c4cb768a2f0f2f32a9057 Mon Sep 17 00:00:00 2001
+From: Rosen Penev <rosenp@gmail.com>
+Date: Sun, 5 Apr 2020 15:56:59 -0700
+Subject: [PATCH] libelf: remove usage of sys/cdefs
+
+sys/cdefs is a deprecated glibc header that is unavailable with other
+libc implementations such as musl.
+
+features.h under glibc includes sys/cdefs whereas it does not under musl.
+
+Signed-off-by: Rosen Penev <rosenp@gmail.com>
+---
+ lib/fixedsizehash.h |  1 -
+ libelf/elf.h        | 10 ++++++----
+ 2 files changed, 6 insertions(+), 5 deletions(-)
+
+diff --git a/lib/fixedsizehash.h b/lib/fixedsizehash.h
+index dac2a5f5..43016fc3 100644
+--- a/lib/fixedsizehash.h
++++ b/lib/fixedsizehash.h
+@@ -30,7 +30,6 @@
+ #include <errno.h>
+ #include <stdlib.h>
+ #include <string.h>
+-#include <sys/cdefs.h>
+ 
+ #include <system.h>
+ 
+diff --git a/libelf/elf.h b/libelf/elf.h
+index 01648bdb..d36fb806 100644
+--- a/libelf/elf.h
++++ b/libelf/elf.h
+@@ -19,9 +19,9 @@
+ #ifndef _ELF_H
+ #define	_ELF_H 1
+ 
+-#include <features.h>
+-
+-__BEGIN_DECLS
++#ifdef __cplusplus
++extern "C" {
++#endif
+ 
+ /* Standard ELF types.  */
+ 
+@@ -4007,6 +4007,8 @@ enum
+ #define R_NDS32_TLS_TPOFF	102
+ #define R_NDS32_TLS_DESC	119
+ 
+-__END_DECLS
++#ifdef __cplusplus
++}
++#endif
+ 
+ #endif	/* elf.h */
+-- 
+2.25.1
+
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
