Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6655FECBF1
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 00:30:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DlWv5rBKPKqiJZFSJzCk+6cXXoaT4PcEUqoQQJTbYes=; b=qZr1zkkjYp9hTv
	DoMW3i1rstjJWmSoHbuWyp31is8MoFsn9r38IImVmee+A7faPES0HtAWE+QA77OxLBTjhSjdVhfcv
	1nYobdU9en+LioL9gb3dK7v00KWV0Q7u+3yJLtJGCwkdt7Xb66du8lvTeBKJTta5mda+IbYDz+MUV
	fgpES97M8DzVNX/l21aPe/op6umFslIc12qTYRuxJgacGmFWx77K2/znpZinboWzce5aCJPIgkznp
	zxI0n4/GIUrLNaoYAvMrAJuDYsawyCzLFPiiIhGS6AyyFekAoXoNtFIZX274DGtSIDPxgzJDBt2eD
	Qsg7OB9pLdzyXIzI1IUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQgNB-00079T-7v; Fri, 01 Nov 2019 23:30:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQgN4-00078r-7m
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 23:30:25 +0000
Received: by mail-pg1-x542.google.com with SMTP id p12so7386455pgn.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 16:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FV6WLbFjf3f/mw6DteGGAaz6mLudhhKrN9nkndBjj8s=;
 b=LTuudDr+/xiUfm8NAkSO6JmLyPeyhs3LJBJyTVgT2/EuxRqvfYP45oCoFeauW3poZO
 KDSaZ20+B7U78WdVtHrqX09nNQorrWeMnU/9ObEtWGzF0ObseiMNg3KdrbhRoFBiQEY/
 MqXPeOtJ8hINnt8iNhby2PZ5y+9ne++Dse9uCP/m8aQscalq0JW6hj9b6HSrcb9PUf8j
 7RgQJmsZZQMtvo0OF0vF7K2VBmu9lQdOLGMtGhwfesqIxQSjJSBVEFO5XIS1JtfKynvs
 Vuy24oHcMYEyebrvlG+A8lMvrWS/GqBSwSpW86e9nZsPyc212PTwpFlMghuvIr28Ug+j
 WuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FV6WLbFjf3f/mw6DteGGAaz6mLudhhKrN9nkndBjj8s=;
 b=Qg9mf15PAZwvcgkk4YNHrapQyoM3qF4W74RwhIozVuw/vHQoRuDgvajTJcINhsiPiF
 eTZYpHnTYixsvkxlEceF60Ve8G4rmTcKSSDIuHnbqYqjL7XqLxiPAmjpSU3jjdmBkMkm
 Qy2E3pFQWk91bxCNdBr7MV9w6SDvbGxO752sBc8jGQAG2YIfRbgVoSj+T1L+FT80JQ+N
 3Fof49PfXYz+J6aTjtrflirS4NZPrUvogs/H0j6XacC4m5VKKQhq4uGO4HGlHHU6cdLk
 jBM3FKmCJEW3IfspAEFWEv9ZjOW+mNZoWsSbueMHpu5lGOfTLnqfDibt5RtgCsoLOxQs
 Cthw==
X-Gm-Message-State: APjAAAWuHavnphDl7mXzjusbuiFCv2XsW55I6BNNUgi/cuRzMrV5fNJV
 QrpDv8dnNpYR8yHphCXWBb+ABDGB
X-Google-Smtp-Source: APXvYqzcBkv4j+GTloAr5tvnvEWL2cpZExbeBBaSIo+QQ425je8x7FcdJxRxoZGhoxywvvf72X4hFw==
X-Received: by 2002:aa7:814e:: with SMTP id d14mr16534009pfn.39.1572651020427; 
 Fri, 01 Nov 2019 16:30:20 -0700 (PDT)
Received: from localhost.localdomain (232.90-149-217.nextgentel.com.
 [90.149.217.232])
 by smtp.gmail.com with ESMTPSA id bb15sm9369377pjb.22.2019.11.01.16.30.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 16:30:19 -0700 (PDT)
From: Magnus Kroken <mkroken@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  2 Nov 2019 00:30:02 +0100
Message-Id: <20191101233002.4172-1-mkroken@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_163022_282050_1740BF4C 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mkroken[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] openvpn: update to 2.4.8
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
Cc: Magnus Kroken <mkroken@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Backport two upstream commits that allow building
openvpn-openssl without OpenSSLs deprecated APIs.

Full changelog:
https://community.openvpn.net/openvpn/wiki/ChangesInOpenvpn24#OpenVPN2.4.8

Signed-off-by: Magnus Kroken <mkroken@gmail.com>
---
Runtime-tested openvpn-mbedtls and openvpn-openssl on x86_64. 
openvpn-openssl was tested against libopenssl built with and without
deprecated APIs.

This patch can be cherry-picked to openwrt-19.07.

 package/network/services/openvpn/Makefile     |  8 +--
 ...l-dont-use-deprecated-ssleay-symbols.patch | 58 +++++++++++++++++
 ...enssl-add-missing-include-statements.patch | 65 +++++++++++++++++++
 .../210-build_always_use_internal_lz4.patch   |  2 +-
 .../openvpn/patches/220-disable_des.patch     |  2 +-
 5 files changed, 129 insertions(+), 6 deletions(-)
 create mode 100644 package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch
 create mode 100644 package/network/services/openvpn/patches/111-openssl-add-missing-include-statements.patch

diff --git a/package/network/services/openvpn/Makefile b/package/network/services/openvpn/Makefile
index aed9f43f80..baa8c1d07e 100644
--- a/package/network/services/openvpn/Makefile
+++ b/package/network/services/openvpn/Makefile
@@ -9,14 +9,14 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openvpn
 
-PKG_VERSION:=2.4.7
-PKG_RELEASE:=2
+PKG_VERSION:=2.4.8
+PKG_RELEASE:=1
 
 PKG_SOURCE_URL:=\
 	https://build.openvpn.net/downloads/releases/ \
 	https://swupdate.openvpn.net/community/releases/
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
-PKG_HASH:=a42f53570f669eaf10af68e98d65b531015ff9e12be7a62d9269ea684652f648
+PKG_HASH:=fb8ca66bb7807fff595fbdf2a0afd085c02a6aa47715c9aa3171002f9f1a3f91
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
@@ -44,7 +44,7 @@ else
 endif
 endef
 
-Package/openvpn-openssl=$(call Package/openvpn/Default,openssl,OpenSSL,+PACKAGE_openvpn-openssl:libopenssl +@OPENSSL_WITH_DEPRECATED)
+Package/openvpn-openssl=$(call Package/openvpn/Default,openssl,OpenSSL,+PACKAGE_openvpn-openssl:libopenssl)
 Package/openvpn-mbedtls=$(call Package/openvpn/Default,mbedtls,mbedTLS,+PACKAGE_openvpn-mbedtls:libmbedtls)
 Package/openvpn-nossl=$(call Package/openvpn/Default,nossl,plaintext (no SSL))
 
diff --git a/package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch b/package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch
new file mode 100644
index 0000000000..7e9931f0f3
--- /dev/null
+++ b/package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch
@@ -0,0 +1,58 @@
+From 17a476fd5c8cc49f1d103a50199e87ede76b1b67 Mon Sep 17 00:00:00 2001
+From: Steffan Karger <steffan@karger.me>
+Date: Sun, 26 Nov 2017 16:04:00 +0100
+Subject: [PATCH] openssl: don't use deprecated SSLEAY/SSLeay symbols
+
+Compiling our current master against OpenSSL 1.1 with
+-DOPENSSL_API_COMPAT=0x10100000L screams bloody murder.  This patch fixes
+the errors about the deprecated SSLEAY/SSLeay symbols and defines.
+
+Signed-off-by: Steffan Karger <steffan@karger.me>
+Acked-by: Gert Doering <gert@greenie.muc.de>
+Message-Id: <20171126150401.28565-1-steffan@karger.me>
+URL: https://www.mail-archive.com/openvpn-devel@lists.sourceforge.net/msg15934.html
+Signed-off-by: Gert Doering <gert@greenie.muc.de>
+---
+ configure.ac                 | 1 +
+ src/openvpn/openssl_compat.h | 8 ++++++++
+ src/openvpn/ssl_openssl.c    | 2 +-
+ 3 files changed, 10 insertions(+), 1 deletion(-)
+
+--- a/configure.ac
++++ b/configure.ac
+@@ -904,6 +904,7 @@ if test "${enable_crypto}" = "yes" -a "$
+ 			EVP_MD_CTX_free \
+ 			EVP_MD_CTX_reset \
+ 			EVP_CIPHER_CTX_reset \
++			OpenSSL_version \
+ 			SSL_CTX_get_default_passwd_cb \
+ 			SSL_CTX_get_default_passwd_cb_userdata \
+ 			SSL_CTX_set_security_level \
+--- a/src/openvpn/openssl_compat.h
++++ b/src/openvpn/openssl_compat.h
+@@ -689,6 +689,14 @@ EC_GROUP_order_bits(const EC_GROUP *grou
+ #endif
+ 
+ /* SSLeay symbols have been renamed in OpenSSL 1.1 */
++#ifndef OPENSSL_VERSION
++#define OPENSSL_VERSION SSLEAY_VERSION
++#endif
++
++#ifndef HAVE_OPENSSL_VERSION
++#define OpenSSL_version SSLeay_version
++#endif
++
+ #if !defined(RSA_F_RSA_OSSL_PRIVATE_ENCRYPT)
+ #define RSA_F_RSA_OSSL_PRIVATE_ENCRYPT       RSA_F_RSA_EAY_PRIVATE_ENCRYPT
+ #endif
+--- a/src/openvpn/ssl_openssl.c
++++ b/src/openvpn/ssl_openssl.c
+@@ -1977,7 +1977,7 @@ get_highest_preference_tls_cipher(char *
+ const char *
+ get_ssl_library_version(void)
+ {
+-    return SSLeay_version(SSLEAY_VERSION);
++    return OpenSSL_version(OPENSSL_VERSION);
+ }
+ 
+ #endif /* defined(ENABLE_CRYPTO) && defined(ENABLE_CRYPTO_OPENSSL) */
diff --git a/package/network/services/openvpn/patches/111-openssl-add-missing-include-statements.patch b/package/network/services/openvpn/patches/111-openssl-add-missing-include-statements.patch
new file mode 100644
index 0000000000..6a62b16500
--- /dev/null
+++ b/package/network/services/openvpn/patches/111-openssl-add-missing-include-statements.patch
@@ -0,0 +1,65 @@
+From 1987498271abadf042d8bb3feee1fe0d877a9d55 Mon Sep 17 00:00:00 2001
+From: Steffan Karger <steffan@karger.me>
+Date: Sun, 26 Nov 2017 16:49:12 +0100
+Subject: [PATCH] openssl: add missing #include statements
+
+Compiling our current master against OpenSSL 1.1 with
+-DOPENSSL_API_COMPAT=0x10100000L screams bloody murder.  This patch fixes
+the errors caused by missing includes.  Previous openssl versions would
+usually include 'the rest of the world', but they're fixing that.  So we
+should no longer rely on it.
+
+(And sneaking in alphabetic ordering of the includes while touching them.)
+
+Signed-off-by: Steffan Karger <steffan@karger.me>
+Acked-by: Gert Doering <gert@greenie.muc.de>
+Message-Id: <20171126154912.13283-1-steffan@karger.me>
+URL: https://www.mail-archive.com/openvpn-devel@lists.sourceforge.net/msg15936.html
+Signed-off-by: Gert Doering <gert@greenie.muc.de>
+---
+ src/openvpn/openssl_compat.h     | 1 +
+ src/openvpn/ssl_openssl.c        | 6 +++++-
+ src/openvpn/ssl_verify_openssl.c | 3 ++-
+ 3 files changed, 8 insertions(+), 2 deletions(-)
+
+--- a/src/openvpn/openssl_compat.h
++++ b/src/openvpn/openssl_compat.h
+@@ -42,6 +42,7 @@
+ 
+ #include "buffer.h"
+ 
++#include <openssl/rsa.h>
+ #include <openssl/ssl.h>
+ #include <openssl/x509.h>
+ 
+--- a/src/openvpn/ssl_openssl.c
++++ b/src/openvpn/ssl_openssl.c
+@@ -52,10 +52,14 @@
+ 
+ #include "ssl_verify_openssl.h"
+ 
++#include <openssl/bn.h>
++#include <openssl/crypto.h>
++#include <openssl/dh.h>
++#include <openssl/dsa.h>
+ #include <openssl/err.h>
+ #include <openssl/pkcs12.h>
++#include <openssl/rsa.h>
+ #include <openssl/x509.h>
+-#include <openssl/crypto.h>
+ #ifndef OPENSSL_NO_EC
+ #include <openssl/ec.h>
+ #endif
+--- a/src/openvpn/ssl_verify_openssl.c
++++ b/src/openvpn/ssl_verify_openssl.c
+@@ -44,8 +44,9 @@
+ #include "ssl_verify_backend.h"
+ #include "openssl_compat.h"
+ 
+-#include <openssl/x509v3.h>
++#include <openssl/bn.h>
+ #include <openssl/err.h>
++#include <openssl/x509v3.h>
+ 
+ int
+ verify_callback(int preverify_ok, X509_STORE_CTX *ctx)
diff --git a/package/network/services/openvpn/patches/210-build_always_use_internal_lz4.patch b/package/network/services/openvpn/patches/210-build_always_use_internal_lz4.patch
index dc4039c3e6..5cf5174a9d 100644
--- a/package/network/services/openvpn/patches/210-build_always_use_internal_lz4.patch
+++ b/package/network/services/openvpn/patches/210-build_always_use_internal_lz4.patch
@@ -1,6 +1,6 @@
 --- a/configure.ac
 +++ b/configure.ac
-@@ -1078,68 +1078,15 @@ dnl
+@@ -1080,68 +1080,15 @@ dnl
  AC_ARG_VAR([LZ4_CFLAGS], [C compiler flags for lz4])
  AC_ARG_VAR([LZ4_LIBS], [linker flags for lz4])
  if test "$enable_lz4" = "yes" && test "$enable_comp_stub" = "no"; then
diff --git a/package/network/services/openvpn/patches/220-disable_des.patch b/package/network/services/openvpn/patches/220-disable_des.patch
index 030958d1bc..2b8f47a802 100644
--- a/package/network/services/openvpn/patches/220-disable_des.patch
+++ b/package/network/services/openvpn/patches/220-disable_des.patch
@@ -66,7 +66,7 @@
  }
  
  /*
-@@ -710,10 +718,12 @@ cipher_des_encrypt_ecb(const unsigned ch
+@@ -705,10 +713,12 @@ cipher_des_encrypt_ecb(const unsigned ch
                         unsigned char *src,
                         unsigned char *dst)
  {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
