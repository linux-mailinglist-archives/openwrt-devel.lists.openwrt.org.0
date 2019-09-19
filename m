Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95601B7189
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 04:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIOF/n93Q155X36mVjynmu2oD1rWmNPmVwFWPrSXv6Q=; b=kqYJrkzizaqHVo
	Hs4COZ0SEm3riIwOzBKUj9R99VnRVt+pPcu4ky9KU9KnDMDvgluXR+JHJ0VZXxi3IJYYUHkD4Q6wv
	jYvHymv/dtg+MsTkwjQO0HZ97JSDLkB3tSY/I0WQOTuvSYdatQH4semq7+u/SvpD2rQP3Yevor8Gl
	0HgvCuw43KgOwrlRe5x9Ok1BO2qQ2UJqeLgSwuhqPNzH3GREFFKfXC6e6aFWjKGUtABGKaLOwSuib
	dqgnzIfPDK1a+2H8yHvPO/+tzAwZcyovnIh1tS7u/+iLo3EDX1IklzCZSCEGh0uJAigRBoxtorM3P
	BgLjOqYBrElWF75LAdbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAm28-0008G3-8p; Thu, 19 Sep 2019 02:19:00 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAm1O-00081E-4N
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 02:18:15 +0000
Received: by mail-qt1-x844.google.com with SMTP id o12so2339461qtf.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 19:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cwh2hNlmSOnYm8+2Qw5qQpuaOuxhfb9jDehNzv4hlqM=;
 b=pvuvi9FZnfgcAZf/cO6STvG8rSWqqlUVWJ78uhzmwTghim8yN3t5iSl+1gEzbDDb6Y
 VlYvE5p9Rtk06avi5TToWZqj734A5bxlAtXP5vJtShUPORK4yuDyQuZDRI0PnDcbqs1u
 Gux95dTV4tHzNTh1VPtlRZjxaq2DSP0PkljiXpKKYDz2E2B26EzYxrgbQ3XUS1kpUJpt
 Z8dOdPbWReLTZyoo8RqRM24TFZyvv5aNWUK5f3V2S/If5jDkfSThac42GTVPJkUCcaFn
 x+Rf8K71hM7urDt9ocAFAhyMX1kIEK4xoE72kBUycGvvUfDmPDdd7RZ/tmNHtTRQId9X
 gosg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cwh2hNlmSOnYm8+2Qw5qQpuaOuxhfb9jDehNzv4hlqM=;
 b=jfbKwN8ipCEApZQ8fx+VzeH5k4AYNDiHeALcV+/PDlJFgb8YLVqkpieQNA3Ojrq0xf
 IGfNy+59ze98A/t0LmboDlT27gbccYjImgZvZfckXKznzmmrvRyhW+qRLp+nTtLonXdQ
 WsdFNt0aVrjZW17DUN8ObXsP4L5N0zUxXjmWNBqZF6+PUCtsjCDYRdPOhWL09iHv/WAU
 HJwLVGl8f3dCMxg0ZgtwzgLXmBKqbs6NUvWcwSLIHkzos8feSDku0yjsZTFfcOC2c4O4
 m1UC+Ts7jf24l4lXTSkzkkIAm1RQtxW96HAX1NQwSbP1TOg7Hc/c3TbWY6fJ2SdFug5M
 alNg==
X-Gm-Message-State: APjAAAUc+igVEsXNSn3rIGDNxm287eEjasBChWqzauX1vfArx9i+7nz4
 xLMevj1otKLNjcoUxXUxZhk+pDIf
X-Google-Smtp-Source: APXvYqxKjFCvMvetsNCdQE70/IpJ2lCSHngDWQgRfN3sZFX7PvyP5x/bRo05mCKe2JwG9vNEtxRfSg==
X-Received: by 2002:ad4:5483:: with SMTP id q3mr6053986qvy.238.1568859492709; 
 Wed, 18 Sep 2019 19:18:12 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id i30sm3984496qte.27.2019.09.18.19.18.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 19:18:12 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Sep 2019 23:18:01 -0300
Message-Id: <20190919021803.31271-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912195558.11513-1-cotequeiroz@gmail.com>
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_191814_173345_BDF36A03 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH ustream-ssl v2 1/3] Remove CyaSSL,
 WolfSSL < 3.10.4 support
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates the CyaSSL names to wolfSSL, and removes obsolete code to
support old versions of the library < v3.10.4.

Some #include statements were moved around, so that wolfssl/options.h is
loaded before any other wolfssl/openssl header.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/CMakeLists.txt b/CMakeLists.txt
index c4a3c44..3b557c3 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -1,7 +1,5 @@
 cmake_minimum_required(VERSION 2.6)
 
-INCLUDE(CheckIncludeFiles)
-
 PROJECT(ustream-ssl C)
 ADD_DEFINITIONS(-Os -Wall -Werror --std=gnu99 -g3 -Wmissing-declarations)
 
@@ -11,15 +9,10 @@ IF(MBEDTLS)
   ADD_DEFINITIONS(-DHAVE_MBEDTLS)
   SET(SSL_SRC ustream-mbedtls.c)
   SET(SSL_LIB mbedtls mbedcrypto mbedx509 m)
-ELSEIF(CYASSL)
-  CHECK_INCLUDE_FILES (cyassl/version.h HAVE_CYASSL_VERSION_H)
-  SET(CMAKE_EXTRA_INCLUDE_FILES cyassl/ssl.h)
-  IF (HAVE_CYASSL_VERSION_H)
-    ADD_DEFINITIONS(-DHAVE_CYASSL_VERSION_H)
-  ENDIF()
-  ADD_DEFINITIONS(-DHAVE_CYASSL)
-  SET(SSL_SRC ustream-io-cyassl.c ustream-openssl.c)
-  SET(SSL_LIB cyassl m)
+ELSEIF(WOLFSSL)
+  ADD_DEFINITIONS(-DHAVE_WOLFSSL)
+  SET(SSL_SRC ustream-io-wolfssl.c ustream-openssl.c)
+  SET(SSL_LIB wolfssl m)
 ELSE()
   SET(SSL_SRC ustream-io-openssl.c ustream-openssl.c)
   SET(SSL_LIB crypto ssl)
diff --git a/ustream-internal.h b/ustream-internal.h
index a8c534f..8d5d0db 100644
--- a/ustream-internal.h
+++ b/ustream-internal.h
@@ -24,9 +24,6 @@
 #if defined(HAVE_MBEDTLS)
 #include "ustream-mbedtls.h"
 #else
-#if defined(HAVE_CYASSL)
-#include <wolfssl/options.h>
-#endif
 #include "ustream-openssl.h"
 #endif
 
diff --git a/ustream-io-cyassl.c b/ustream-io-wolfssl.c
similarity index 61%
rename from ustream-io-cyassl.c
rename to ustream-io-wolfssl.c
index d97d55e..052518a 100644
--- a/ustream-io-cyassl.c
+++ b/ustream-io-wolfssl.c
@@ -23,12 +23,6 @@
 #include "ustream-ssl.h"
 #include "ustream-internal.h"
 
-#ifdef HAVE_CYASSL_VERSION_H
-#include <cyassl/version.h>
-#else
-#define LIBCYASSL_VERSION_HEX 0
-#endif
-
 static int s_ustream_read(char *buf, int len, void *ctx)
 {
 	struct ustream *s = ctx;
@@ -61,7 +55,6 @@ static int s_ustream_write(char *buf, int len, void *ctx)
 	return ustream_write(s, buf, len, false);
 }
 
-#if (LIBCYASSL_VERSION_HEX > 0)
 static int io_recv_cb(SSL* ssl, char *buf, int sz, void *ctx)
 {
 	return s_ustream_read(buf, sz, ctx);
@@ -71,36 +64,11 @@ static int io_send_cb(SSL* ssl, char *buf, int sz, void *ctx)
 {
 	return s_ustream_write(buf, sz, ctx);
 }
-#else
-/* not defined in the header file */
-typedef int (*CallbackIORecv)(char *buf, int sz, void *ctx);
-typedef int (*CallbackIOSend)(char *buf, int sz, void *ctx);
-
-void SetCallbackIORecv_Ctx(SSL_CTX*, CallbackIORecv);
-void SetCallbackIOSend_Ctx(SSL_CTX*, CallbackIOSend);
-void SetCallbackIO_ReadCtx(SSL* ssl, void *rctx);
-void SetCallbackIO_WriteCtx(SSL* ssl, void *wctx);
-
-#define CyaSSL_SetIOReadCtx SetCallbackIO_ReadCtx
-#define CyaSSL_SetIOWriteCtx SetCallbackIO_WriteCtx
-#define CyaSSL_SetIORecv SetCallbackIORecv_Ctx
-#define CyaSSL_SetIOSend SetCallbackIOSend_Ctx
-
-static int io_recv_cb(char *buf, int sz, void *ctx)
-{
-	return s_ustream_read(buf, sz, ctx);
-}
-
-static int io_send_cb(char *buf, int sz, void *ctx)
-{
-	return s_ustream_write(buf, sz, ctx);
-}
-#endif
 
 __hidden void ustream_set_io(struct ustream_ssl_ctx *ctx, void *ssl, struct ustream *conn)
 {
-	CyaSSL_SetIOReadCtx(ssl, conn);
-	CyaSSL_SetIOWriteCtx(ssl, conn);
-	CyaSSL_SetIORecv((void *) ctx, io_recv_cb);
-	CyaSSL_SetIOSend((void *) ctx, io_send_cb);
+	wolfSSL_SetIOReadCtx(ssl, conn);
+	wolfSSL_SetIOWriteCtx(ssl, conn);
+	wolfSSL_SetIORecv((void *) ctx, io_recv_cb);
+	wolfSSL_SetIOSend((void *) ctx, io_send_cb);
 }
diff --git a/ustream-openssl.c b/ustream-openssl.c
index b2df362..21abf61 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -18,9 +18,9 @@
 
 #include <string.h>
 #include <ctype.h>
-#include <openssl/x509v3.h>
 #include "ustream-ssl.h"
 #include "ustream-internal.h"
+#include <openssl/x509v3.h>
 
 /* Ciphersuite preference:
  * - for server, no weak ciphers are used if you use an ECDSA key.
@@ -203,7 +203,7 @@ static void ustream_ssl_error(struct ustream_ssl *us, int ret)
 	uloop_timeout_set(&us->error_timer, 0);
 }
 
-#ifndef CYASSL_OPENSSL_H_
+#ifndef WOLFSSL_OPENSSL_H_
 
 static bool ustream_ssl_verify_cn(struct ustream_ssl *us, X509 *cert)
 {
@@ -252,7 +252,7 @@ __hidden enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us)
 		r = SSL_connect(ssl);
 
 	if (r == 1) {
-#ifndef CYASSL_OPENSSL_H_
+#ifndef WOLFSSL_OPENSSL_H_
 		ustream_ssl_verify_cert(us);
 #endif
 		return U_SSL_OK;
diff --git a/ustream-openssl.h b/ustream-openssl.h
index afff22b..0a6ca91 100644
--- a/ustream-openssl.h
+++ b/ustream-openssl.h
@@ -19,6 +19,10 @@
 #ifndef __USTREAM_OPENSSL_H
 #define __USTREAM_OPENSSL_H
 
+#if defined(HAVE_WOLFSSL)
+#include <wolfssl/options.h>
+#endif
+
 #include <openssl/ssl.h>
 #include <openssl/err.h>
 #include <stdbool.h>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
