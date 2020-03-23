Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D1219016F
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 23:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytmAGwtsKk8fgFw73H6JtOBlZAu1j9jHBw7Sn5BwHaQ=; b=iqJxVzvLq2kJ0i
	YgKgbYfsHH/tww8JZORBfrBFkRJqk4UONCM6XeEZTZRkhz7IVNSvmrUnIOk6vtrAziorjclINd6VK
	0UgKYPl3idWJlPJXgMhdQeQqGcjAo7u/HQ5CvBn4mhf5k0+3LSXWMXNSuHvHWajQ6vsCP3K/PHFJL
	ZR52dorycRlU2F2zgNYC2tIVsPAHpRe/LdJF8mKRQ5pe1L5pF8P2lUdCh7xubAoBpK5fJ3iBEsE0Z
	2mhMiQkxuuZLsBpqc5JqEQP2OZAzb7s2VvdtWuNl0UlZHKIVs+nxH/ioNl8Ev2ZJBi4zRKGX/z7M4
	q7cD66/fx41DD96qZTkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGW0T-0008Lm-TR; Mon, 23 Mar 2020 22:57:17 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVzJ-0007Br-QV
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 22:56:10 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 48mV9C5P79zQlF6;
 Mon, 23 Mar 2020 23:55:59 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id Fw_mJgOnJIci; Mon, 23 Mar 2020 23:55:55 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 23 Mar 2020 23:55:40 +0100
Message-Id: <20200323225540.10886-3-hauke@hauke-m.de>
In-Reply-To: <20200323225540.10886-1-hauke@hauke-m.de>
References: <20200323225540.10886-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_155606_184700_C3D41E6A 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.56.171 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 3/3] toolchain: Update glibc to version 2.31
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates glibc to the most recent version 2.31.

001-regex-read-overrun.patch was a backport from a more recent version
and is integrated in glibc 2.31.

050-Revert-Disallow-use-of-DES-encryption-functions-in-n.patch is needed
to add the DES crypto functions back again. They were removed in glibc
2.28, but we still use them in ppp.
musl lib also provides these DES crypto functions. Without them we would
have to link ppp against openssl or an other crypto library.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 toolchain/glibc/common.mk                     |   6 +-
 .../patches/001-regex-read-overrun.patch      |  26 -
 ...use-of-DES-encryption-functions-in-n.patch | 686 ++++++++++++++++++
 .../patches/200-add-dl-search-paths.patch     |   2 +-
 4 files changed, 690 insertions(+), 30 deletions(-)
 delete mode 100644 toolchain/glibc/patches/001-regex-read-overrun.patch
 create mode 100644 toolchain/glibc/patches/050-Revert-Disallow-use-of-DES-encryption-functions-in-n.patch

diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
index 41ee989b14d3..ec00b95bf37a 100644
--- a/toolchain/glibc/common.mk
+++ b/toolchain/glibc/common.mk
@@ -7,12 +7,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=glibc
-PKG_VERSION:=2.27
+PKG_VERSION:=2.31
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
-PKG_SOURCE_VERSION:=bef0b1cb31bed76a355776154af9191ed1758222
-PKG_MIRROR_HASH:=24a137758acdc0d8c5254891204ba38d759838123bab09a64ec0bdb94289aafd
+PKG_SOURCE_VERSION:=3937f6806d9de4bbd25ff6e6dc4df8f47ad47573
+PKG_MIRROR_HASH:=8ae05d6fe3841009b0bfe373319fbbfd49e8ee0915054799fa7dd7331617457d
 PKG_SOURCE_URL:=https://sourceware.org/git/glibc.git
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.xz
 
diff --git a/toolchain/glibc/patches/001-regex-read-overrun.patch b/toolchain/glibc/patches/001-regex-read-overrun.patch
deleted file mode 100644
index c4e4307aa6d4..000000000000
--- a/toolchain/glibc/patches/001-regex-read-overrun.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-commit 583dd860d5b833037175247230a328f0050dbfe9
-Author: Paul Eggert <eggert@cs.ucla.edu>
-Date:   Mon Jan 21 11:08:13 2019 -0800
-
-    regex: fix read overrun [BZ #24114]
-    
-    Problem found by AddressSanitizer, reported by Hongxu Chen in:
-    https://debbugs.gnu.org/34140
-    * posix/regexec.c (proceed_next_node):
-    Do not read past end of input buffer.
-
---- a/posix/regexec.c
-+++ b/posix/regexec.c
-@@ -1293,8 +1293,10 @@ proceed_next_node (const re_match_context_t *mctx, Idx nregs, regmatch_t *regs,
- 	      else if (naccepted)
- 		{
- 		  char *buf = (char *) re_string_get_buffer (&mctx->input);
--		  if (memcmp (buf + regs[subexp_idx].rm_so, buf + *pidx,
--			      naccepted) != 0)
-+		  if (mctx->input.valid_len - *pidx < naccepted
-+		      || (memcmp (buf + regs[subexp_idx].rm_so, buf + *pidx,
-+				  naccepted)
-+			  != 0))
- 		    return -1;
- 		}
- 	    }
diff --git a/toolchain/glibc/patches/050-Revert-Disallow-use-of-DES-encryption-functions-in-n.patch b/toolchain/glibc/patches/050-Revert-Disallow-use-of-DES-encryption-functions-in-n.patch
new file mode 100644
index 000000000000..4e3e2eebb21f
--- /dev/null
+++ b/toolchain/glibc/patches/050-Revert-Disallow-use-of-DES-encryption-functions-in-n.patch
@@ -0,0 +1,686 @@
+From cfc93329e00cd23c226f34b3ffd5552a93c35bd7 Mon Sep 17 00:00:00 2001
+From: Hauke Mehrtens <hauke@hauke-m.de>
+Date: Mon, 23 Mar 2020 22:33:46 +0100
+Subject: Revert "Disallow use of DES encryption functions in new programs."
+
+This reverts commit b10a0accee709a5efff2fadf0b0bbb79ff0ad759.
+
+ppp still uses the encrypt functions from the libc. musl libc also
+provides them.
+---
+ conform/data/stdlib.h-data |   3 +
+ conform/data/unistd.h-data |   6 ++
+ crypt/cert.c               |  26 -----
+ crypt/crypt-entry.c        |  15 ++-
+ crypt/crypt.h              |  16 +++
+ crypt/crypt_util.c         |   9 --
+ manual/conf.texi           |   2 -
+ manual/crypt.texi          | 201 +++++++++++++++++++++++++++++++++++++
+ manual/string.texi         |  82 +++++++--------
+ posix/unistd.h             |  22 ++--
+ stdlib/stdlib.h            |   6 ++
+ sunrpc/Makefile            |   2 +-
+ sunrpc/des_crypt.c         |   7 +-
+ sunrpc/des_soft.c          |   2 +-
+ 14 files changed, 303 insertions(+), 96 deletions(-)
+
+--- a/conform/data/stdlib.h-data
++++ b/conform/data/stdlib.h-data
+@@ -149,6 +149,9 @@ function {unsigned short int*} seed48 (u
+ #if !defined ISO && !defined ISO99 && !defined ISO11 && !defined POSIX && !defined XPG4 && !defined XPG42 && !defined UNIX98
+ function int setenv (const char*, const char*, int)
+ #endif
++#if !defined ISO && !defined ISO99 && !defined ISO11 && !defined POSIX && !defined POSIX2008
++function void setkey (const char*)
++#endif
+ #if !defined ISO && !defined ISO99 && !defined ISO11 && !defined XPG4 && !defined POSIX && !defined POSIX2008
+ function {char*} setstate (char*)
+ #endif
+--- a/conform/data/unistd.h-data
++++ b/conform/data/unistd.h-data
+@@ -437,6 +437,9 @@ function int chroot (const char*)
+ function int chown (const char*, uid_t, gid_t)
+ function int close (int)
+ function size_t confstr (int, char*, size_t)
++#if !defined POSIX && !defined POSIX2008
++function {char*} crypt (const char*, const char*)
++#endif
+ #if defined XPG4 || defined XPG42 || defined UNIX98
+ function {char*} ctermid (char*)
+ function {char*} cuserid (char*)
+@@ -446,6 +449,9 @@ allow cuserid
+ #endif
+ function int dup (int)
+ function int dup2 (int, int)
++#if !defined POSIX && !defined POSIX2008
++function void encrypt (char[64], int)
++#endif
+ function int execl (const char*, const char*, ...)
+ function int execle (const char*, const char*, ...)
+ function int execlp (const char*, const char*, ...)
+--- a/crypt/cert.c
++++ b/crypt/cert.c
+@@ -10,22 +10,6 @@
+ #include <stdlib.h>
+ #include "crypt.h"
+ 
+-/* This file tests the deprecated setkey/encrypt interface.  */
+-#include <shlib-compat.h>
+-#if TEST_COMPAT (libcrypt, GLIBC_2_0, GLIBC_2_28)
+-
+-#define libcrypt_version_reference(symbol, version) \
+-  _libcrypt_version_reference (symbol, VERSION_libcrypt_##version)
+-#define _libcrypt_version_reference(symbol, version) \
+-  __libcrypt_version_reference (symbol, version)
+-#define __libcrypt_version_reference(symbol, version) \
+-  __asm__ (".symver " #symbol ", " #symbol "@" #version)
+-
+-extern void setkey (const char *);
+-extern void encrypt (const char *, int);
+-libcrypt_version_reference (setkey, GLIBC_2_0);
+-libcrypt_version_reference (encrypt, GLIBC_2_0);
+-
+ int totfails = 0;
+ 
+ int main (int argc, char *argv[]);
+@@ -120,13 +104,3 @@ put8 (char *cp)
+ 	  printf("%02x", t);
+ 	}
+ }
+-
+-#else /* encrypt and setkey are not available.  */
+-
+-int
+-main (void)
+-{
+-  return 77; /* UNSUPPORTED */
+-}
+-
+-#endif
+--- a/crypt/crypt-entry.c
++++ b/crypt/crypt-entry.c
+@@ -35,7 +35,6 @@
+ #endif
+ 
+ #include "crypt-private.h"
+-#include <shlib-compat.h>
+ 
+ /* Prototypes for local functions.  */
+ #ifndef __GNU_LIBRARY__
+@@ -177,7 +176,17 @@ crypt (const char *key, const char *salt
+   return __crypt_r (key, salt, &_ufc_foobar);
+ }
+ 
+-#if SHLIB_COMPAT (libcrypt, GLIBC_2_0, GLIBC_2_28)
++
++/*
++ * To make fcrypt users happy.
++ * They don't need to call init_des.
++ */
++#ifdef _LIBC
+ weak_alias (crypt, fcrypt)
+-compat_symbol (libcrypt, fcrypt, fcrypt, GLIBC_2_0);
++#else
++char *
++__fcrypt (const char *key, const char *salt)
++{
++  return crypt (key, salt);
++}
+ #endif
+--- a/crypt/crypt.h
++++ b/crypt/crypt.h
+@@ -36,6 +36,14 @@ __BEGIN_DECLS
+ extern char *crypt (const char *__phrase, const char *__salt)
+      __THROW __nonnull ((1, 2));
+ 
++/* Setup DES tables according KEY.  */
++extern void setkey (const char *__key) __THROW __nonnull ((1));
++
++/* Encrypt data in BLOCK in place if EDFLAG is zero; otherwise decrypt
++   block in place.  */
++extern void encrypt (char *__glibc_block, int __edflag)
++     __THROW __nonnull ((1));
++
+ #ifdef __USE_GNU
+ 
+ /* This structure provides scratch and output buffers for 'crypt_r'.
+@@ -63,6 +71,14 @@ struct crypt_data
+ extern char *crypt_r (const char *__phrase, const char *__salt,
+ 		      struct crypt_data * __restrict __data)
+      __THROW __nonnull ((1, 2, 3));
++
++extern void setkey_r (const char *__key,
++		      struct crypt_data * __restrict __data)
++     __THROW __nonnull ((1, 2));
++
++extern void encrypt_r (char *__glibc_block, int __edflag,
++		       struct crypt_data * __restrict __data)
++     __THROW __nonnull ((1, 3));
+ #endif
+ 
+ __END_DECLS
+--- a/crypt/crypt_util.c
++++ b/crypt/crypt_util.c
+@@ -34,7 +34,6 @@
+ #endif
+ 
+ #include "crypt-private.h"
+-#include <shlib-compat.h>
+ 
+ /* Prototypes for local functions.  */
+ #ifndef __GNU_LIBRARY__
+@@ -151,7 +150,6 @@ static const int sbox[8][4][16]= {
+ 	}
+ };
+ 
+-#if SHLIB_COMPAT (libcrypt, GLIBC_2_0, GLIBC_2_28)
+ /*
+  * This is the initial
+  * permutation matrix
+@@ -162,7 +160,6 @@ static const int initial_perm[64] = {
+   57, 49, 41, 33, 25, 17,  9,  1, 59, 51, 43, 35, 27, 19, 11, 3,
+   61, 53, 45, 37, 29, 21, 13,  5, 63, 55, 47, 39, 31, 23, 15, 7
+ };
+-#endif
+ 
+ /*
+  * This is the final
+@@ -788,7 +785,6 @@ _ufc_output_conversion_r (ufc_long v1, u
+   __data->crypt_3_buf[13] = 0;
+ }
+ 
+-#if SHLIB_COMPAT (libcrypt, GLIBC_2_0, GLIBC_2_28)
+ 
+ /*
+  * UNIX encrypt function. Takes a bitvector
+@@ -889,14 +885,12 @@ __encrypt_r (char *__block, int __edflag
+   }
+ }
+ weak_alias (__encrypt_r, encrypt_r)
+-compat_symbol (libcrypt, encrypt_r, encrypt_r, GLIBC_2_0);
+ 
+ void
+ encrypt (char *__block, int __edflag)
+ {
+   __encrypt_r(__block, __edflag, &_ufc_foobar);
+ }
+-compat_symbol (libcrypt, encrypt, encrypt, GLIBC_2_0);
+ 
+ 
+ /*
+@@ -921,15 +915,12 @@ __setkey_r (const char *__key, struct cr
+   _ufc_mk_keytab_r((char *) ktab, __data);
+ }
+ weak_alias (__setkey_r, setkey_r)
+-compat_symbol (libcrypt, setkey_r, setkey_r, GLIBC_2_0);
+ 
+ void
+ setkey (const char *__key)
+ {
+   __setkey_r(__key, &_ufc_foobar);
+ }
+-compat_symbol (libcrypt, setkey, setkey, GLIBC_2_0);
+-#endif /* SHLIB_COMPAT (libcrypt, GLIBC_2_0, GLIBC_2_28) */
+ 
+ void
+ __b64_from_24bit (char **cp, int *buflen,
+--- a/manual/conf.texi
++++ b/manual/conf.texi
+@@ -780,8 +780,6 @@ Inquire about the parameter correspondin
+ @item _SC_XOPEN_CRYPT
+ @standards{X/Open, unistd.h}
+ Inquire about the parameter corresponding to @code{_XOPEN_CRYPT}.
+-@Theglibc no longer implements the @code{_XOPEN_CRYPT} extensions,
+-so @samp{sysconf (_SC_XOPEN_CRYPT)} always returns @code{-1}.
+ 
+ @item _SC_XOPEN_ENH_I18N
+ @standards{X/Open, unistd.h}
+--- a/manual/crypt.texi
++++ b/manual/crypt.texi
+@@ -16,8 +16,19 @@ subject to them, even if you do not use
+ yourself.  The restrictions vary from place to place and are changed
+ often, so we cannot give any more specific advice than this warning.
+ 
++@vindex AUTH_DES
++@cindex FIPS 140-2
++It also provides support for Secure RPC, and some library functions that
++can be used to perform normal DES encryption.  The @code{AUTH_DES}
++authentication flavor in Secure RPC, as provided by @theglibc{},
++uses DES and does not comply with FIPS 140-2 nor does any other use of DES
++within @theglibc{}.  It is recommended that Secure RPC should not be used
++for systems that need to comply with FIPS 140-2 since all flavors of
++encrypted authentication use normal DES.
++
+ @menu
+ * Passphrase Storage::          One-way hashing for passphrases.
++* DES Encryption::              Routines for DES encryption.
+ * Unpredictable Bytes::         Randomness for cryptographic purposes.
+ @end menu
+ 
+@@ -200,6 +211,196 @@ hashes for the same passphrase.
+ @include testpass.c.texi
+ @end smallexample
+ 
++@node DES Encryption
++@section DES Encryption
++
++@cindex FIPS 46-3
++The Data Encryption Standard is described in the US Government Federal
++Information Processing Standards (FIPS) 46-3 published by the National
++Institute of Standards and Technology.  The DES has been very thoroughly
++analyzed since it was developed in the late 1970s, and no new
++significant flaws have been found.
++
++However, the DES uses only a 56-bit key (plus 8 parity bits), and a
++machine has been built in 1998 which can search through all possible
++keys in about 6 days, which cost about US$200000; faster searches would
++be possible with more money.  This makes simple DES insecure for most
++purposes, and NIST no longer permits new US government systems
++to use simple DES.
++
++For serious encryption functionality, it is recommended that one of the
++many free encryption libraries be used instead of these routines.
++
++The DES is a reversible operation which takes a 64-bit block and a
++64-bit key, and produces another 64-bit block.  Usually the bits are
++numbered so that the most-significant bit, the first bit, of each block
++is numbered 1.
++
++Under that numbering, every 8th bit of the key (the 8th, 16th, and so
++on) is not used by the encryption algorithm itself.  But the key must
++have odd parity; that is, out of bits 1 through 8, and 9 through 16, and
++so on, there must be an odd number of `1' bits, and this completely
++specifies the unused bits.
++
++@deftypefun void setkey (const char *@var{key})
++@standards{BSD, crypt.h}
++@standards{SVID, crypt.h}
++@safety{@prelim{}@mtunsafe{@mtasurace{:crypt}}@asunsafe{@asucorrupt{} @asulock{}}@acunsafe{@aculock{}}}
++@c The static buffer stores the key, making it fundamentally
++@c thread-unsafe.  The locking issues are only in the initialization
++@c path; cancelling the initialization will leave the lock held, it
++@c would otherwise repeat the initialization on the next call.
++
++The @code{setkey} function sets an internal data structure to be an
++expanded form of @var{key}.  @var{key} is specified as an array of 64
++bits each stored in a @code{char}, the first bit is @code{key[0]} and
++the 64th bit is @code{key[63]}.  The @var{key} should have the correct
++parity.
++@end deftypefun
++
++@deftypefun void encrypt (char *@var{block}, int @var{edflag})
++@standards{BSD, crypt.h}
++@standards{SVID, crypt.h}
++@safety{@prelim{}@mtunsafe{@mtasurace{:crypt}}@asunsafe{@asucorrupt{} @asulock{}}@acunsafe{@aculock{}}}
++@c Same issues as setkey.
++
++The @code{encrypt} function encrypts @var{block} if
++@var{edflag} is 0, otherwise it decrypts @var{block}, using a key
++previously set by @code{setkey}.  The result is
++placed in @var{block}.
++
++Like @code{setkey}, @var{block} is specified as an array of 64 bits each
++stored in a @code{char}, but there are no parity bits in @var{block}.
++@end deftypefun
++
++@deftypefun void setkey_r (const char *@var{key}, {struct crypt_data *} @var{data})
++@deftypefunx void encrypt_r (char *@var{block}, int @var{edflag}, {struct crypt_data *} @var{data})
++@standards{GNU, crypt.h}
++@c setkey_r: @safety{@prelim{}@mtsafe{}@asunsafe{@asucorrupt{} @asulock{}}@acunsafe{@aculock{}}}
++@safety{@prelim{}@mtsafe{}@asunsafe{@asucorrupt{} @asulock{}}@acunsafe{@aculock{}}}
++
++These are reentrant versions of @code{setkey} and @code{encrypt}.  The
++only difference is the extra parameter, which stores the expanded
++version of @var{key}.  Before calling @code{setkey_r} the first time,
++@code{data->initialized} must be cleared to zero.
++@end deftypefun
++
++The @code{setkey_r} and @code{encrypt_r} functions are GNU extensions.
++@code{setkey}, @code{encrypt}, @code{setkey_r}, and @code{encrypt_r} are
++defined in @file{crypt.h}.
++
++@deftypefun int ecb_crypt (char *@var{key}, char *@var{blocks}, unsigned int @var{len}, unsigned int @var{mode})
++@standards{SUNRPC, rpc/des_crypt.h}
++@safety{@prelim{}@mtsafe{}@assafe{}@acsafe{}}
++
++The function @code{ecb_crypt} encrypts or decrypts one or more blocks
++using DES.  Each block is encrypted independently.
++
++The @var{blocks} and the @var{key} are stored packed in 8-bit bytes, so
++that the first bit of the key is the most-significant bit of
++@code{key[0]} and the 63rd bit of the key is stored as the
++least-significant bit of @code{key[7]}.  The @var{key} should have the
++correct parity.
++
++@var{len} is the number of bytes in @var{blocks}.  It should be a
++multiple of 8 (so that there are a whole number of blocks to encrypt).
++@var{len} is limited to a maximum of @code{DES_MAXDATA} bytes.
++
++The result of the encryption replaces the input in @var{blocks}.
++
++The @var{mode} parameter is the bitwise OR of two of the following:
++
++@vtable @code
++@item DES_ENCRYPT
++@standards{SUNRPC, rpc/des_crypt.h}
++This constant, used in the @var{mode} parameter, specifies that
++@var{blocks} is to be encrypted.
++
++@item DES_DECRYPT
++@standards{SUNRPC, rpc/des_crypt.h}
++This constant, used in the @var{mode} parameter, specifies that
++@var{blocks} is to be decrypted.
++
++@item DES_HW
++@standards{SUNRPC, rpc/des_crypt.h}
++This constant, used in the @var{mode} parameter, asks to use a hardware
++device.  If no hardware device is available, encryption happens anyway,
++but in software.
++
++@item DES_SW
++@standards{SUNRPC, rpc/des_crypt.h}
++This constant, used in the @var{mode} parameter, specifies that no
++hardware device is to be used.
++@end vtable
++
++The result of the function will be one of these values:
++
++@vtable @code
++@item DESERR_NONE
++@standards{SUNRPC, rpc/des_crypt.h}
++The encryption succeeded.
++
++@item DESERR_NOHWDEVICE
++@standards{SUNRPC, rpc/des_crypt.h}
++The encryption succeeded, but there was no hardware device available.
++
++@item DESERR_HWERROR
++@standards{SUNRPC, rpc/des_crypt.h}
++The encryption failed because of a hardware problem.
++
++@item DESERR_BADPARAM
++@standards{SUNRPC, rpc/des_crypt.h}
++The encryption failed because of a bad parameter, for instance @var{len}
++is not a multiple of 8 or @var{len} is larger than @code{DES_MAXDATA}.
++@end vtable
++@end deftypefun
++
++@deftypefun int DES_FAILED (int @var{err})
++@standards{SUNRPC, rpc/des_crypt.h}
++@safety{@prelim{}@mtsafe{}@assafe{}@acsafe{}}
++This macro returns 1 if @var{err} is a `success' result code from
++@code{ecb_crypt} or @code{cbc_crypt}, and 0 otherwise.
++@end deftypefun
++
++@deftypefun int cbc_crypt (char *@var{key}, char *@var{blocks}, unsigned int @var{len}, unsigned int @var{mode}, char *@var{ivec})
++@standards{SUNRPC, rpc/des_crypt.h}
++@safety{@prelim{}@mtsafe{}@assafe{}@acsafe{}}
++
++The function @code{cbc_crypt} encrypts or decrypts one or more blocks
++using DES in Cipher Block Chaining mode.
++
++For encryption in CBC mode, each block is exclusive-ored with @var{ivec}
++before being encrypted, then @var{ivec} is replaced with the result of
++the encryption, then the next block is processed.  Decryption is the
++reverse of this process.
++
++This has the advantage that blocks which are the same before being
++encrypted are very unlikely to be the same after being encrypted, making
++it much harder to detect patterns in the data.
++
++Usually, @var{ivec} is set to 8 random bytes before encryption starts.
++Then the 8 random bytes are transmitted along with the encrypted data
++(without themselves being encrypted), and passed back in as @var{ivec}
++for decryption.  Another possibility is to set @var{ivec} to 8 zeroes
++initially, and have the first block encrypted consist of 8 random
++bytes.
++
++Otherwise, all the parameters are similar to those for @code{ecb_crypt}.
++@end deftypefun
++
++@deftypefun void des_setparity (char *@var{key})
++@standards{SUNRPC, rpc/des_crypt.h}
++@safety{@prelim{}@mtsafe{}@assafe{}@acsafe{}}
++
++The function @code{des_setparity} changes the 64-bit @var{key}, stored
++packed in 8-bit bytes, to have odd parity by altering the low bits of
++each byte.
++@end deftypefun
++
++The @code{ecb_crypt}, @code{cbc_crypt}, and @code{des_setparity}
++functions and their accompanying macros are all defined in the header
++@file{rpc/des_crypt.h}.
++
+ @node Unpredictable Bytes
+ @section Generating Unpredictable Bytes
+ @cindex randomness source
+--- a/manual/string.texi
++++ b/manual/string.texi
+@@ -36,8 +36,8 @@ too.
+ 				 for delimiters.
+ * Erasing Sensitive Data::      Clearing memory which contains sensitive
+                                  data, after it's no longer needed.
+-* Shuffling Bytes::             Or how to flash-cook a string.
+-* Obfuscating Data::            Reversibly obscuring data from casual view.
++* strfry::                      Function for flash-cooking a string.
++* Trivial Encryption::          Obscuring data.
+ * Encode Binary Data::          Encoding and Decoding of Binary Data.
+ * Argz and Envz Vectors::       Null-separated string vectors.
+ @end menu
+@@ -2426,73 +2426,73 @@ functionality under a different name, su
+ systems it may be in @file{strings.h} instead.
+ @end deftypefun
+ 
+-
+-@node Shuffling Bytes
+-@section Shuffling Bytes
++@node strfry
++@section strfry
+ 
+ The function below addresses the perennial programming quandary: ``How do
+ I take good data in string form and painlessly turn it into garbage?''
+-This is not a difficult thing to code for oneself, but the authors of
+-@theglibc{} wish to make it as convenient as possible.
++This is actually a fairly simple task for C programmers who do not use
++@theglibc{} string functions, but for programs based on @theglibc{},
++the @code{strfry} function is the preferred method for
++destroying string data.
+ 
+-To @emph{erase} data, use @code{explicit_bzero} (@pxref{Erasing
+-Sensitive Data}); to obfuscate it reversibly, use @code{memfrob}
+-(@pxref{Obfuscating Data}).
++The prototype for this function is in @file{string.h}.
+ 
+ @deftypefun {char *} strfry (char *@var{string})
+ @standards{GNU, string.h}
+ @safety{@prelim{}@mtsafe{}@assafe{}@acsafe{}}
+ @c Calls initstate_r, time, getpid, strlen, and random_r.
+ 
+-@code{strfry} performs an in-place shuffle on @var{string}.  Each
+-character is swapped to a position selected at random, within the
+-portion of the string starting with the character's original position.
+-(This is the Fisher-Yates algorithm for unbiased shuffling.)
+-
+-Calling @code{strfry} will not disturb any of the random number
+-generators that have global state (@pxref{Pseudo-Random Numbers}).
++@code{strfry} creates a pseudorandom anagram of a string, replacing the
++input with the anagram in place.  For each position in the string,
++@code{strfry} swaps it with a position in the string selected at random
++(from a uniform distribution).  The two positions may be the same.
+ 
+ The return value of @code{strfry} is always @var{string}.
+ 
+ @strong{Portability Note:}  This function is unique to @theglibc{}.
+-It is declared in @file{string.h}.
++
+ @end deftypefun
+ 
+ 
+-@node Obfuscating Data
+-@section Obfuscating Data
++@node Trivial Encryption
++@section Trivial Encryption
++@cindex encryption
++
++
++The @code{memfrob} function converts an array of data to something
++unrecognizable and back again.  It is not encryption in its usual sense
++since it is easy for someone to convert the encrypted data back to clear
++text.  The transformation is analogous to Usenet's ``Rot13'' encryption
++method for obscuring offensive jokes from sensitive eyes and such.
++Unlike Rot13, @code{memfrob} works on arbitrary binary data, not just
++text.
+ @cindex Rot13
+ 
+-The @code{memfrob} function reversibly obfuscates an array of binary
+-data.  This is not true encryption; the obfuscated data still bears a
+-clear relationship to the original, and no secret key is required to
+-undo the obfuscation.  It is analogous to the ``Rot13'' cipher used on
+-Usenet for obscuring offensive jokes, spoilers for works of fiction,
+-and so on, but it can be applied to arbitrary binary data.
+-
+-Programs that need true encryption---a transformation that completely
+-obscures the original and cannot be reversed without knowledge of a
+-secret key---should use a dedicated cryptography library, such as
+-@uref{https://www.gnu.org/software/libgcrypt/,,libgcrypt}.
+-
+-Programs that need to @emph{destroy} data should use
+-@code{explicit_bzero} (@pxref{Erasing Sensitive Data}), or possibly
+-@code{strfry} (@pxref{Shuffling Bytes}).
++For true encryption, @xref{Cryptographic Functions}.
++
++This function is declared in @file{string.h}.
++@pindex string.h
+ 
+ @deftypefun {void *} memfrob (void *@var{mem}, size_t @var{length})
+ @standards{GNU, string.h}
+ @safety{@prelim{}@mtsafe{}@assafe{}@acsafe{}}
+ 
+-The function @code{memfrob} obfuscates @var{length} bytes of data
+-beginning at @var{mem}, in place.  Each byte is bitwise xor-ed with
+-the binary pattern 00101010 (hexadecimal 0x2A).  The return value is
+-always @var{mem}.
+-
+-@code{memfrob} a second time on the same data returns it to
+-its original state.
++@code{memfrob} transforms (frobnicates) each byte of the data structure
++at @var{mem}, which is @var{length} bytes long, by bitwise exclusive
++oring it with binary 00101010.  It does the transformation in place and
++its return value is always @var{mem}.
++
++Note that @code{memfrob} a second time on the same data structure
++returns it to its original state.
++
++This is a good function for hiding information from someone who doesn't
++want to see it or doesn't want to see it very much.  To really prevent
++people from retrieving the information, use stronger encryption such as
++that described in @xref{Cryptographic Functions}.
+ 
+ @strong{Portability Note:}  This function is unique to @theglibc{}.
+-It is declared in @file{string.h}.
++
+ @end deftypefun
+ 
+ @node Encode Binary Data
+--- a/posix/unistd.h
++++ b/posix/unistd.h
+@@ -107,6 +107,9 @@ __BEGIN_DECLS
+ /* The X/Open Unix extensions are available.  */
+ #define _XOPEN_UNIX	1
+ 
++/* Encryption is present.  */
++#define	_XOPEN_CRYPT	1
++
+ /* The enhanced internationalization capabilities according to XPG4.2
+    are present.  */
+ #define	_XOPEN_ENH_I18N	1
+@@ -1115,17 +1118,20 @@ ssize_t copy_file_range (int __infd, __o
+ extern int fdatasync (int __fildes);
+ #endif /* Use POSIX199309 */
+ 
+-#ifdef __USE_MISC
+-/* One-way hash PHRASE, returning a string suitable for storage in the
+-   user database.  SALT selects the one-way function to use, and
+-   ensures that no two users' hashes are the same, even if they use
+-   the same passphrase.  The return value points to static storage
+-   which will be overwritten by the next call to crypt.  */
++
++/* XPG4.2 specifies that prototypes for the encryption functions must
++   be defined here.  */
++#ifdef	__USE_XOPEN
++/* Encrypt at most 8 characters from KEY using salt to perturb DES.  */
+ extern char *crypt (const char *__key, const char *__salt)
+      __THROW __nonnull ((1, 2));
+-#endif
+ 
+-#ifdef	__USE_XOPEN
++/* Encrypt data in BLOCK in place if EDFLAG is zero; otherwise decrypt
++   block in place.  */
++extern void encrypt (char *__glibc_block, int __edflag)
++     __THROW __nonnull ((1));
++
++
+ /* Swab pairs bytes in the first N bytes of the area pointed to by
+    FROM and copy the result to TO.  The value of TO must not be in the
+    range [FROM - N + 1, FROM - 1].  If N is odd the first byte in FROM
+--- a/stdlib/stdlib.h
++++ b/stdlib/stdlib.h
+@@ -961,6 +961,12 @@ extern int getsubopt (char **__restrict
+ #endif
+ 
+ 
++#ifdef __USE_XOPEN
++/* Setup DES tables according KEY.  */
++extern void setkey (const char *__key) __THROW __nonnull ((1));
++#endif
++
++
+ /* X/Open pseudo terminal handling.  */
+ 
+ #ifdef __USE_XOPEN2KXSI
+--- a/sunrpc/Makefile
++++ b/sunrpc/Makefile
+@@ -51,7 +51,7 @@ rpcsvc = bootparam_prot.x nlm_prot.x rst
+ headers-sunrpc = $(addprefix rpc/,auth.h auth_unix.h clnt.h pmap_clnt.h \
+ 				  pmap_prot.h pmap_rmt.h rpc.h rpc_msg.h \
+ 				  svc.h svc_auth.h types.h xdr.h auth_des.h \
+-				  key_prot.h) \
++				  des_crypt.h key_prot.h rpc_des.h) \
+ 		       $(rpcsvc:%=rpcsvc/%) rpcsvc/bootparam.h
+ headers = rpc/netdb.h
+ install-others = $(inst_sysconfdir)/rpc
+--- a/sunrpc/des_crypt.c
++++ b/sunrpc/des_crypt.c
+@@ -86,9 +86,6 @@ common_crypt (char *key, char *buf, regi
+   return desdev == DES_SW ? DESERR_NONE : DESERR_NOHWDEVICE;
+ }
+ 
+-/* Note: these cannot be excluded from the build yet, because they are
+-   still used internally.  */
+-
+ /*
+  * CBC mode encryption
+  */
+@@ -105,7 +102,7 @@ cbc_crypt (char *key, char *buf, unsigne
+   COPY8 (dp.des_ivec, ivec);
+   return err;
+ }
+-hidden_nolink (cbc_crypt, libc, GLIBC_2_1)
++libc_hidden_nolink_sunrpc (cbc_crypt, GLIBC_2_1)
+ 
+ /*
+  * ECB mode encryption
+@@ -118,4 +115,4 @@ ecb_crypt (char *key, char *buf, unsigne
+   dp.des_mode = ECB;
+   return common_crypt (key, buf, len, mode, &dp);
+ }
+-hidden_nolink (ecb_crypt, libc, GLIBC_2_1)
++libc_hidden_nolink_sunrpc (ecb_crypt, GLIBC_2_1)
+--- a/sunrpc/des_soft.c
++++ b/sunrpc/des_soft.c
+@@ -71,4 +71,4 @@ des_setparity (char *p)
+       p++;
+     }
+ }
+-hidden_nolink (des_setparity, libc, GLIBC_2_1)
++libc_hidden_nolink_sunrpc (des_setparity, GLIBC_2_1)
diff --git a/toolchain/glibc/patches/200-add-dl-search-paths.patch b/toolchain/glibc/patches/200-add-dl-search-paths.patch
index 5585ee1f0e71..18d751dd1a24 100644
--- a/toolchain/glibc/patches/200-add-dl-search-paths.patch
+++ b/toolchain/glibc/patches/200-add-dl-search-paths.patch
@@ -2,7 +2,7 @@ add /usr/lib to default search path for the dynamic linker
 
 --- a/Makeconfig
 +++ b/Makeconfig
-@@ -589,6 +589,9 @@ else
+@@ -601,6 +601,9 @@ else
  default-rpath = $(libdir)
  endif
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
