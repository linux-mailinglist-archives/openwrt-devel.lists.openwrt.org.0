Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9063219738B
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Mar 2020 06:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FitjFwy+BEU8u0F1c0AcxyHY3XfdVabJj+3SnuopqXk=; b=OvklPhXAIEDCx2
	ULwOqDSofCs/YVNT7suUL3oIDkTBm2RsTMKwBEimQqf56FWgdS96E69V+6FgM1frewbymBZ/WLVRC
	xBrVXg6rtWS5KChet6bqWVqHdCXmF4UNC0Wi7sMV9k93ZgYJLEGTtlg2hgx+KdQO0F/VfxuYYv0hY
	CuWB6wkllkas0yEHo0NZrZhUv2tmWk6veKBuwc2wZtnXyWzK02MhW6mw5UGLF30k/TDYDiLnTyOdf
	awW9m9cPvq8joiaqHgTp31iEOY/gMXGPJBzhSqKxupwoSkNAf+Y1CTqIoluagfK+P6Or3wYm8PWZy
	K7008BjjEC/Rxt5JZqGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jImL3-0001cu-25; Mon, 30 Mar 2020 04:47:53 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImKr-0001cL-0M
 for openwrt-devel@lists.openwrt.org; Mon, 30 Mar 2020 04:47:43 +0000
Received: by mail-pg1-x52e.google.com with SMTP id k5so5898440pga.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 29 Mar 2020 21:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7XvCSRTlYHLTdW2INc51Yc2qF6ZOXFMf69gzMh/0sAU=;
 b=twsoIzz1YmPn/QJbl2PaXrYVcBm/tF+rfUkzgg5vDNOUF2E6/YQ9XPq+ZbG0wfcl61
 3zY9jnJM7+2F8ijh+DUjdXwQkxc76Zvl2JKAx9QNliLoxVmu9LDuyJ8jjUZf97uDV5K6
 Hv5EotrGGg7pzJL95Wr2beW4JYo6198M8T05ssI1O16nT4HOXbJvZFWbVauo8CMQLFHB
 om0t47d7F7nUP0LUIOHe+SXM8CJlWKiykl5UcFMWxm0fLgHQNv7CBN9hCzg4c8qkjuJ4
 YjxYLjyDDPBilOT3tC8rlFq8hC65jU6x4q7zum1Sft5IsqJy4TcBbW/qG0OO7QlYNeTk
 ufkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7XvCSRTlYHLTdW2INc51Yc2qF6ZOXFMf69gzMh/0sAU=;
 b=KtRic55b2zivy2aYWKYuf2AnHNAfsR2y7Jov03ZQ599LLtz+NAP0RWNAMNckBevwOm
 cHj77oCkXbd/XjY5RzYKDi8Y4CbuhK5VrJFmsJfwY/OGtTlP3cXjRjRZ0O+37tCD/Pzg
 kNFQ9utecMY8z1vQC86/rcIBvW+P+rjvoJwG4LdxVoKLzlA+CQ1aL8wnoSKhQiZm6LN5
 ESeISzGvHnx6v9u70JVKEMNT+F5oYd8HaVwDV1PBh47JGczEnI/gtpypJETyUXi2Ga/M
 pAjQ/Mw3NlL1C8Z/ZSirE1XpTW06PGEmpLLcoQK6uGIDfdzUeEC3PitiLHpWAhisar0t
 U31w==
X-Gm-Message-State: ANhLgQ2tHd13MCq/wsSq0Juyd98Nttyx3FTLb0CpmuG8KrxZDFBdy9Xt
 U+Ea1GUHFU8PpklM81OxbMUBKG8bVuA=
X-Google-Smtp-Source: ADFU+vsbUogakmSn3caOgnz62wbs/rrcB6ZBMEgGDX1WjndwPOIeW1T5XSJJhzVttsbxXrQQdoTHlg==
X-Received: by 2002:a63:6b0a:: with SMTP id g10mr11497912pgc.386.1585543659372; 
 Sun, 29 Mar 2020 21:47:39 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id w16sm9194650pfj.79.2020.03.29.21.47.38
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 21:47:38 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 29 Mar 2020 21:47:32 -0700
Message-Id: <20200330044732.1954941-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_214741_059784_ABE380E6 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv2] toolchain/musl: update to 1.2.0
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

Remove PKG_SOURCE and PKG_SOURCE_SUBDIR since the defaults are used.

Remove GLOB_ONLYDIR patch. Only fstools relies on it. fstools can be fixed
separately.

Remove woresize.h file. It seems to be for an old version of GCC.

Remove features.h and glibc-types files. Same as above.

Replace sys/cdefs.h with what is in alpine, openembedded, and yocto. The
actual header is deprecated and should not be used. This version is
smaller than the glibc version currently in the tree.

Explanation from buildroot:

  sys/cdefs.h is a non-standard header, originating from glibc,
  that defines non-standard and legacy macros. This header is not
  always available (e.g. musl does not provide it, but Buildroot
  installs a surrogate, minimalist one in this case).

  Some packages use this header, which is wrong, as that makes
  then non-portable.

  By default, Buildroot does not detect the use of that header.
  In the future, this default may change to warning, or even to
  erroring out.

Tested with all packages in the base tree. They all compile.

Tested with most packages in the other feeds.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: removed more glibc headers.
 toolchain/musl/common.mk                      |   8 +-
 toolchain/musl/include/bits/wordsize.h        |   1 -
 toolchain/musl/include/features.h             |  48 ---
 toolchain/musl/include/sgidefs.h              |  73 ----
 toolchain/musl/include/sys/cdefs.h            | 370 +-----------------
 toolchain/musl/include/sys/glibc-types.h      |  35 --
 .../musl/patches/100-add_glob_onlydir.patch   |  11 -
 .../patches/200-add_libssp_nonshared.patch    |   6 +-
 toolchain/musl/patches/300-relative.patch     |   2 +-
 9 files changed, 16 insertions(+), 538 deletions(-)
 delete mode 100644 toolchain/musl/include/bits/wordsize.h
 delete mode 100644 toolchain/musl/include/features.h
 delete mode 100644 toolchain/musl/include/sgidefs.h
 delete mode 100644 toolchain/musl/include/sys/glibc-types.h
 delete mode 100644 toolchain/musl/patches/100-add_glob_onlydir.patch

diff --git a/toolchain/musl/common.mk b/toolchain/musl/common.mk
index e1354f2635..f7756f6056 100644
--- a/toolchain/musl/common.mk
+++ b/toolchain/musl/common.mk
@@ -8,15 +8,13 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/target.mk
 
 PKG_NAME:=musl
-PKG_VERSION:=1.1.24
+PKG_VERSION:=1.2.0
 PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
-PKG_SOURCE_VERSION:=ea9525c8bcf6170df59364c4bcd616de1acf8703
-PKG_MIRROR_HASH:=6975c45b9bfe586ac00dbfcd1b1a13ab110af0528028ab3dee03e23e2c0763e5
 PKG_SOURCE_URL:=https://git.musl-libc.org/git/musl
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.xz
+PKG_SOURCE_VERSION:=v$(PKG_VERSION)
+PKG_MIRROR_HASH:=f68308e7182300bf7d48fed740785db2d212216c41df1a6ed9a51d8a370f6120
 
 LIBC_SO_VERSION:=$(PKG_VERSION)
 PATCH_DIR:=$(PATH_PREFIX)/patches
diff --git a/toolchain/musl/include/bits/wordsize.h b/toolchain/musl/include/bits/wordsize.h
deleted file mode 100644
index 2d4cbe8317..0000000000
--- a/toolchain/musl/include/bits/wordsize.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <sys/user.h>
diff --git a/toolchain/musl/include/features.h b/toolchain/musl/include/features.h
deleted file mode 100644
index edb8cc72d4..0000000000
--- a/toolchain/musl/include/features.h
+++ /dev/null
@@ -1,48 +0,0 @@
-#ifndef _FEATURES_H
-#define _FEATURES_H
-
-#ifdef _ALL_SOURCE
-#define _GNU_SOURCE 1
-#endif
-
-#if !defined(_POSIX_SOURCE) && !defined(_POSIX_C_SOURCE) \
- && !defined(_XOPEN_SOURCE) && !defined(_GNU_SOURCE) \
- && !defined(_BSD_SOURCE) && !defined(__STRICT_ANSI__)
-#define _BSD_SOURCE 1
-#define _XOPEN_SOURCE 700
-#endif
-
-#if __STDC_VERSION__ >= 199901L
-#define __restrict restrict
-#elif !defined(__GNUC__)
-#define __restrict
-#endif
-
-#if __STDC_VERSION__ >= 199901L || defined(__cplusplus)
-#define __inline inline
-#endif
-
-#if __STDC_VERSION__ >= 201112L
-#elif defined(__GNUC__)
-#define _Noreturn __attribute__((__noreturn__))
-#else
-#define _Noreturn
-#endif
-
-/* Convenience macros to test the versions of glibc and gcc.
-   Use them like this:
-   #if __GNUC_PREREQ (2,8)
-   ... code requiring gcc 2.8 or later ...
-   #endif
-   Note - they won't work for gcc1 or glibc1, since the _MINOR macros
-   were not defined then.  */
-#if defined __GNUC__ && defined __GNUC_MINOR__
-# define __GNUC_PREREQ(maj, min) \
-	((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))
-#else
-# define __GNUC_PREREQ(maj, min) 0
-#endif
-
-#include <sys/glibc-types.h>
-
-#endif
diff --git a/toolchain/musl/include/sgidefs.h b/toolchain/musl/include/sgidefs.h
deleted file mode 100644
index 74509fdbd0..0000000000
--- a/toolchain/musl/include/sgidefs.h
+++ /dev/null
@@ -1,73 +0,0 @@
-/* Copyright (C) 1996, 1997, 1998, 2003, 2004 Free Software Foundation, Inc.
-   This file is part of the GNU C Library.
-   Contributed by Ralf Baechle <ralf@gnu.org>.
-
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, write to the Free
-   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
-   02111-1307 USA.  */
-
-#ifndef _SGIDEFS_H
-#define _SGIDEFS_H	1
-
-/*
- * A crude hack to stop <asm/sgidefs.h>
- */
-#undef __ASM_SGIDEFS_H
-#define __ASM_SGIDEFS_H
-
-/*
- * And remove any damage it might have already done
- */
-#undef _MIPS_ISA_MIPS1
-#undef _MIPS_ISA_MIPS2
-#undef _MIPS_ISA_MIPS3
-#undef _MIPS_ISA_MIPS4
-#undef _MIPS_ISA_MIPS5
-#undef _MIPS_ISA_MIPS32
-#undef _MIPS_ISA_MIPS64
-
-#undef _MIPS_SIM_ABI32
-#undef _MIPS_SIM_NABI32
-#undef _MIPS_SIM_ABI64
-
-/*
- * Definitions for the ISA level
- */
-#define _MIPS_ISA_MIPS1 1
-#define _MIPS_ISA_MIPS2 2
-#define _MIPS_ISA_MIPS3 3
-#define _MIPS_ISA_MIPS4 4
-#define _MIPS_ISA_MIPS5 5
-#define _MIPS_ISA_MIPS32 6
-#define _MIPS_ISA_MIPS64 7
-
-/*
- * Subprogram calling convention
- */
-#ifndef _ABIO32
-# define _ABIO32		1
-#endif
-#define _MIPS_SIM_ABI32		_ABIO32
-
-#ifndef _ABIN32
-# define _ABIN32		2
-#endif
-#define _MIPS_SIM_NABI32	_ABIN32
-
-#ifndef _ABI64
-# define _ABI64			3
-#endif
-#define _MIPS_SIM_ABI64		_ABI64
-
-#endif /* sgidefs.h */
diff --git a/toolchain/musl/include/sys/cdefs.h b/toolchain/musl/include/sys/cdefs.h
index e9866700d0..209a623c0f 100644
--- a/toolchain/musl/include/sys/cdefs.h
+++ b/toolchain/musl/include/sys/cdefs.h
@@ -1,101 +1,15 @@
-/* Copyright (C) 1992-2002, 2004, 2005, 2006, 2007, 2009, 2011, 2012
-   Free Software Foundation, Inc.
-   This file is part of the GNU C Library.
+#warning usage of non-standard #include <sys/cdefs.h> is deprecated
 
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
+#undef __P
+#undef __PMT
 
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, see
-   <http://www.gnu.org/licenses/>.  */
-
-#ifndef	_SYS_CDEFS_H
-#define	_SYS_CDEFS_H	1
-
-/* We are almost always included from features.h. */
-#ifndef _FEATURES_H
-# include <features.h>
-#endif
-
-/* The GNU libc does not support any K&R compilers or the traditional mode
-   of ISO C compilers anymore.  Check for some of the combinations not
-   anymore supported.  */
-#if defined __GNUC__ && !defined __STDC__
-# error "You need a ISO C conforming compiler to use the glibc headers"
-#endif
-
-/* Some user header file might have defined this before.  */
-#undef	__P
-#undef	__PMT
-
-#ifdef __GNUC__
-
-/* All functions, except those with callbacks or those that
-   synchronize memory, are leaf functions.  */
-# if __GNUC_PREREQ (4, 6) && !defined _LIBC
-#  define __LEAF , __leaf__
-#  define __LEAF_ATTR __attribute__ ((__leaf__))
-# else
-#  define __LEAF
-#  define __LEAF_ATTR
-# endif
-
-/* GCC can always grok prototypes.  For C++ programs we add throw()
-   to help it optimize the function calls.  But this works only with
-   gcc 2.8.x and egcs.  For gcc 3.2 and up we even mark C functions
-   as non-throwing using a function attribute since programs can use
-   the -fexceptions options for C code as well.  */
-# if !defined __cplusplus && __GNUC_PREREQ (3, 3)
-#  define __THROW	__attribute__ ((__nothrow__ __LEAF))
-#  define __THROWNL	__attribute__ ((__nothrow__))
-#  define __NTH(fct)	__attribute__ ((__nothrow__ __LEAF)) fct
-# else
-#  if defined __cplusplus && __GNUC_PREREQ (2,8)
-#   define __THROW	throw ()
-#   define __THROWNL	throw ()
-#   define __NTH(fct)	__LEAF_ATTR fct throw ()
-#  else
-#   define __THROW
-#   define __THROWNL
-#   define __NTH(fct)	fct
-#  endif
-# endif
-
-#else	/* Not GCC.  */
-
-# define __inline		/* No inline functions.  */
-
-# define __THROW
-# define __THROWNL
-# define __NTH(fct)	fct
-
-#endif	/* GCC.  */
-
-/* These two macros are not used in glibc anymore.  They are kept here
-   only because some other projects expect the macros to be defined.  */
 #define __P(args)	args
 #define __PMT(args)	args
 
-/* For these things, GCC behaves the ANSI way normally,
-   and the non-ANSI way under -traditional.  */
-
 #define __CONCAT(x,y)	x ## y
 #define __STRING(x)	#x
 
-/* This is not a typedef so `const __ptr_t' does the right thing.  */
-#define __ptr_t void *
-#define __long_double_t  long double
-
-
-/* C++ needs to know that types and declarations are C, not C++.  */
-#ifdef	__cplusplus
+#ifdef  __cplusplus
 # define __BEGIN_DECLS	extern "C" {
 # define __END_DECLS	}
 #else
@@ -103,276 +17,10 @@
 # define __END_DECLS
 #endif
 
-
-/* The standard library needs the functions from the ISO C90 standard
-   in the std namespace.  At the same time we want to be safe for
-   future changes and we include the ISO C99 code in the non-standard
-   namespace __c99.  The C++ wrapper header take case of adding the
-   definitions to the global namespace.  */
-#if defined __cplusplus && defined _GLIBCPP_USE_NAMESPACES
-# define __BEGIN_NAMESPACE_STD	namespace std {
-# define __END_NAMESPACE_STD	}
-# define __USING_NAMESPACE_STD(name) using std::name;
-# define __BEGIN_NAMESPACE_C99	namespace __c99 {
-# define __END_NAMESPACE_C99	}
-# define __USING_NAMESPACE_C99(name) using __c99::name;
-#else
-/* For compatibility we do not add the declarations into any
-   namespace.  They will end up in the global namespace which is what
-   old code expects.  */
-# define __BEGIN_NAMESPACE_STD
-# define __END_NAMESPACE_STD
-# define __USING_NAMESPACE_STD(name)
-# define __BEGIN_NAMESPACE_C99
-# define __END_NAMESPACE_C99
-# define __USING_NAMESPACE_C99(name)
-#endif
-
-
-/* Support for bounded pointers.  */
-#ifndef __BOUNDED_POINTERS__
-# define __bounded	/* nothing */
-# define __unbounded	/* nothing */
-# define __ptrvalue	/* nothing */
-#endif
-
-
-/* Fortify support.  */
-#define __bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)
-#define __bos0(ptr) __builtin_object_size (ptr, 0)
-#define __fortify_function __extern_always_inline __attribute_artificial__
-
-#if __GNUC_PREREQ (4,3)
-# define __warndecl(name, msg) \
-  extern void name (void) __attribute__((__warning__ (msg)))
-# define __warnattr(msg) __attribute__((__warning__ (msg)))
-# define __errordecl(name, msg) \
-  extern void name (void) __attribute__((__error__ (msg)))
-#else
-# define __warndecl(name, msg) extern void name (void)
-# define __warnattr(msg)
-# define __errordecl(name, msg) extern void name (void)
-#endif
-
-/* Support for flexible arrays.  */
-#if __GNUC_PREREQ (2,97)
-/* GCC 2.97 supports C99 flexible array members.  */
-# define __flexarr	[]
+#if defined(__GNUC__) && !defined(__cplusplus)
+# define __THROW	__attribute__ ((__nothrow__))
+# define __NTH(fct)	__attribute__ ((__nothrow__)) fct
 #else
-# ifdef __GNUC__
-#  define __flexarr	[0]
-# else
-#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
-#   define __flexarr	[]
-#  else
-/* Some other non-C99 compiler.  Approximate with [1].  */
-#   define __flexarr	[1]
-#  endif
-# endif
-#endif
-
-
-/* __asm__ ("xyz") is used throughout the headers to rename functions
-   at the assembly language level.  This is wrapped by the __REDIRECT
-   macro, in order to support compilers that can do this some other
-   way.  When compilers don't support asm-names at all, we have to do
-   preprocessor tricks instead (which don't have exactly the right
-   semantics, but it's the best we can do).
-
-   Example:
-   int __REDIRECT(setpgrp, (__pid_t pid, __pid_t pgrp), setpgid); */
-
-#if defined __GNUC__ && __GNUC__ >= 2
-
-# define __REDIRECT(name, proto, alias) name proto __asm__ (__ASMNAME (#alias))
-# ifdef __cplusplus
-#  define __REDIRECT_NTH(name, proto, alias) \
-     name proto __THROW __asm__ (__ASMNAME (#alias))
-#  define __REDIRECT_NTHNL(name, proto, alias) \
-     name proto __THROWNL __asm__ (__ASMNAME (#alias))
-# else
-#  define __REDIRECT_NTH(name, proto, alias) \
-     name proto __asm__ (__ASMNAME (#alias)) __THROW
-#  define __REDIRECT_NTHNL(name, proto, alias) \
-     name proto __asm__ (__ASMNAME (#alias)) __THROWNL
-# endif
-# define __ASMNAME(cname)  __ASMNAME2 (__USER_LABEL_PREFIX__, cname)
-# define __ASMNAME2(prefix, cname) __STRING (prefix) cname
-
-/*
-#elif __SOME_OTHER_COMPILER__
-
-# define __REDIRECT(name, proto, alias) name proto; \
-	_Pragma("let " #name " = " #alias)
-*/
-#endif
-
-/* GCC has various useful declarations that can be made with the
-   `__attribute__' syntax.  All of the ways we use this do fine if
-   they are omitted for compilers that don't understand it. */
-#if !defined __GNUC__ || __GNUC__ < 2
-# define __attribute__(xyz)	/* Ignore */
-#endif
-
-/* At some point during the gcc 2.96 development the `malloc' attribute
-   for functions was introduced.  We don't want to use it unconditionally
-   (although this would be possible) since it generates warnings.  */
-#if __GNUC_PREREQ (2,96)
-# define __attribute_malloc__ __attribute__ ((__malloc__))
-#else
-# define __attribute_malloc__ /* Ignore */
-#endif
-
-/* At some point during the gcc 2.96 development the `pure' attribute
-   for functions was introduced.  We don't want to use it unconditionally
-   (although this would be possible) since it generates warnings.  */
-#if __GNUC_PREREQ (2,96)
-# define __attribute_pure__ __attribute__ ((__pure__))
-#else
-# define __attribute_pure__ /* Ignore */
-#endif
-
-/* This declaration tells the compiler that the value is constant.  */
-#if __GNUC_PREREQ (2,5)
-# define __attribute_const__ __attribute__ ((__const__))
-#else
-# define __attribute_const__ /* Ignore */
-#endif
-
-/* At some point during the gcc 3.1 development the `used' attribute
-   for functions was introduced.  We don't want to use it unconditionally
-   (although this would be possible) since it generates warnings.  */
-#if __GNUC_PREREQ (3,1)
-# define __attribute_used__ __attribute__ ((__used__))
-# define __attribute_noinline__ __attribute__ ((__noinline__))
-#else
-# define __attribute_used__ __attribute__ ((__unused__))
-# define __attribute_noinline__ /* Ignore */
-#endif
-
-/* gcc allows marking deprecated functions.  */
-#if __GNUC_PREREQ (3,2)
-# define __attribute_deprecated__ __attribute__ ((__deprecated__))
-#else
-# define __attribute_deprecated__ /* Ignore */
-#endif
-
-/* At some point during the gcc 2.8 development the `format_arg' attribute
-   for functions was introduced.  We don't want to use it unconditionally
-   (although this would be possible) since it generates warnings.
-   If several `format_arg' attributes are given for the same function, in
-   gcc-3.0 and older, all but the last one are ignored.  In newer gccs,
-   all designated arguments are considered.  */
-#if __GNUC_PREREQ (2,8)
-# define __attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))
-#else
-# define __attribute_format_arg__(x) /* Ignore */
-#endif
-
-/* At some point during the gcc 2.97 development the `strfmon' format
-   attribute for functions was introduced.  We don't want to use it
-   unconditionally (although this would be possible) since it
-   generates warnings.  */
-#if __GNUC_PREREQ (2,97)
-# define __attribute_format_strfmon__(a,b) \
-  __attribute__ ((__format__ (__strfmon__, a, b)))
-#else
-# define __attribute_format_strfmon__(a,b) /* Ignore */
-#endif
-
-/* The nonull function attribute allows to mark pointer parameters which
-   must not be NULL.  */
-#if __GNUC_PREREQ (3,3)
-# define __nonnull(params) __attribute__ ((__nonnull__ params))
-#else
-# define __nonnull(params)
-#endif
-
-/* If fortification mode, we warn about unused results of certain
-   function calls which can lead to problems.  */
-#if __GNUC_PREREQ (3,4)
-# define __attribute_warn_unused_result__ \
-   __attribute__ ((__warn_unused_result__))
-# if __USE_FORTIFY_LEVEL > 0
-#  define __wur __attribute_warn_unused_result__
-# endif
-#else
-# define __attribute_warn_unused_result__ /* empty */
-#endif
-#ifndef __wur
-# define __wur /* Ignore */
-#endif
-
-/* Forces a function to be always inlined.  */
-#if __GNUC_PREREQ (3,2)
-# define __always_inline __inline __attribute__ ((__always_inline__))
-#else
-# define __always_inline __inline
-#endif
-
-/* Associate error messages with the source location of the call site rather
-   than with the source location inside the function.  */
-#if __GNUC_PREREQ (4,3)
-# define __attribute_artificial__ __attribute__ ((__artificial__))
-#else
-# define __attribute_artificial__ /* Ignore */
-#endif
-
-/* GCC 4.3 and above with -std=c99 or -std=gnu99 implements ISO C99
-   inline semantics, unless -fgnu89-inline is used.  */
-#if !defined __cplusplus || __GNUC_PREREQ (4,3)
-# if defined __GNUC_STDC_INLINE__ || defined __cplusplus
-#  define __extern_inline extern __inline __attribute__ ((__gnu_inline__))
-#  define __extern_always_inline \
-  extern __always_inline __attribute__ ((__gnu_inline__))
-# else
-#  define __extern_inline extern __inline
-#  define __extern_always_inline extern __always_inline
-# endif
-#endif
-
-/* GCC 4.3 and above allow passing all anonymous arguments of an
-   __extern_always_inline function to some other vararg function.  */
-#if __GNUC_PREREQ (4,3)
-# define __va_arg_pack() __builtin_va_arg_pack ()
-# define __va_arg_pack_len() __builtin_va_arg_pack_len ()
-#endif
-
-/* It is possible to compile containing GCC extensions even if GCC is
-   run in pedantic mode if the uses are carefully marked using the
-   `__extension__' keyword.  But this is not generally available before
-   version 2.8.  */
-#if !__GNUC_PREREQ (2,8)
-# define __extension__		/* Ignore */
-#endif
-
-/* __restrict is known in EGCS 1.2 and above. */
-#if !__GNUC_PREREQ (2,92)
-# define __restrict	/* Ignore */
-#endif
-
-/* ISO C99 also allows to declare arrays as non-overlapping.  The syntax is
-     array_name[restrict]
-   GCC 3.1 supports this.  */
-#if __GNUC_PREREQ (3,1) && !defined __GNUG__
-# define __restrict_arr	__restrict
-#else
-# ifdef __GNUC__
-#  define __restrict_arr	/* Not supported in old GCC.  */
-# else
-#  if defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L
-#   define __restrict_arr	restrict
-#  else
-/* Some other non-C99 compiler.  */
-#   define __restrict_arr	/* Not supported.  */
-#  endif
-# endif
-#endif
-
-#if __GNUC__ >= 3
-# define __glibc_unlikely(cond) __builtin_expect((cond), 0)
-#else
-# define __glibc_unlikely(cond) (cond)
+# define __THROW
+# define __NTH(fct)     fct
 #endif
-
-#endif	 /* sys/cdefs.h */
diff --git a/toolchain/musl/include/sys/glibc-types.h b/toolchain/musl/include/sys/glibc-types.h
deleted file mode 100644
index fa0684ced2..0000000000
--- a/toolchain/musl/include/sys/glibc-types.h
+++ /dev/null
@@ -1,35 +0,0 @@
-#ifndef __MUSL_GLIBC_TYPES_H
-#define __MUSL_GLIBC_TYPES_H
-
-#include <sys/cdefs.h>
-
-/* Convenience types.  */
-typedef unsigned char __u_char;
-typedef unsigned short int __u_short;
-typedef unsigned int __u_int;
-typedef unsigned long int __u_long;
-
-/* Fixed-size types, underlying types depend on word size and compiler.  */
-typedef signed char __int8_t;
-typedef unsigned char __uint8_t;
-typedef signed short int __int16_t;
-typedef unsigned short int __uint16_t;
-typedef signed int __int32_t;
-typedef unsigned int __uint32_t;
-#if __WORDSIZE == 64
-typedef signed long int __int64_t;
-typedef unsigned long int __uint64_t;
-#else
-__extension__ typedef signed long long int __int64_t;
-__extension__ typedef unsigned long long int __uint64_t;
-#endif
-
-#define __off64_t off_t
-#define __loff_t off_t
-typedef char *__caddr_t;
-#define __locale_t locale_t
-
-#define __gid_t gid_t
-#define __uid_t uid_t
-
-#endif
diff --git a/toolchain/musl/patches/100-add_glob_onlydir.patch b/toolchain/musl/patches/100-add_glob_onlydir.patch
deleted file mode 100644
index a784e770df..0000000000
--- a/toolchain/musl/patches/100-add_glob_onlydir.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/include/glob.h
-+++ b/include/glob.h
-@@ -34,6 +34,8 @@ void globfree(glob_t *);
- #define GLOB_TILDE       0x1000
- #define GLOB_TILDE_CHECK 0x4000
- 
-+#define GLOB_ONLYDIR	0x100
-+
- #define GLOB_NOSPACE 1
- #define GLOB_ABORTED 2
- #define GLOB_NOMATCH 3
diff --git a/toolchain/musl/patches/200-add_libssp_nonshared.patch b/toolchain/musl/patches/200-add_libssp_nonshared.patch
index 05bd2fe54a..9a4de743be 100644
--- a/toolchain/musl/patches/200-add_libssp_nonshared.patch
+++ b/toolchain/musl/patches/200-add_libssp_nonshared.patch
@@ -16,7 +16,7 @@ Signed-off-by: Steven Barth <steven@midlink.org>
  ALL_TOOLS = obj/musl-gcc
  
  WRAPCC_GCC = gcc
-@@ -86,7 +86,7 @@ else
+@@ -87,7 +87,7 @@ else
  
  all: $(ALL_LIBS) $(ALL_TOOLS)
  
@@ -25,7 +25,7 @@ Signed-off-by: Steven Barth <steven@midlink.org>
  
  $(ALL_LIBS) $(ALL_TOOLS) $(ALL_OBJS) $(ALL_OBJS:%.o=%.lo) $(GENH) $(GENH_INT): | $(OBJ_DIRS)
  
-@@ -113,6 +113,8 @@ obj/crt/rcrt1.o: $(srcdir)/ldso/dlstart.
+@@ -114,6 +114,8 @@ obj/crt/rcrt1.o: $(srcdir)/ldso/dlstart.
  
  obj/crt/Scrt1.o obj/crt/rcrt1.o: CFLAGS_ALL += -fPIC
  
@@ -34,7 +34,7 @@ Signed-off-by: Steven Barth <steven@midlink.org>
  OPTIMIZE_SRCS = $(wildcard $(OPTIMIZE_GLOBS:%=$(srcdir)/src/%))
  $(OPTIMIZE_SRCS:$(srcdir)/%.c=obj/%.o) $(OPTIMIZE_SRCS:$(srcdir)/%.c=obj/%.lo): CFLAGS += -O3
  
-@@ -165,6 +167,11 @@ lib/libc.a: $(AOBJS)
+@@ -166,6 +168,11 @@ lib/libc.a: $(AOBJS)
  	$(AR) rc $@ $(AOBJS)
  	$(RANLIB) $@
  
diff --git a/toolchain/musl/patches/300-relative.patch b/toolchain/musl/patches/300-relative.patch
index e34e60a09d..50041cac60 100644
--- a/toolchain/musl/patches/300-relative.patch
+++ b/toolchain/musl/patches/300-relative.patch
@@ -1,6 +1,6 @@
 --- a/Makefile
 +++ b/Makefile
-@@ -215,7 +215,7 @@ $(DESTDIR)$(includedir)/%: $(srcdir)/inc
+@@ -216,7 +216,7 @@ $(DESTDIR)$(includedir)/%: $(srcdir)/inc
  	$(INSTALL) -D -m 644 $< $@
  
  $(DESTDIR)$(LDSO_PATHNAME): $(DESTDIR)$(libdir)/libc.so
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
