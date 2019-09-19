Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC099B718A
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Sep 2019 04:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeuS92lHiyZhmR4/l7DT2YxJnDokRgHx9xCZSlNQA50=; b=WBOvBBknWsQUkO
	qJ3ltNKxqBkAxB5+Qc2rh+BcsmseZi7miPvkzE4Sib+wx4txw0D6rZ6jYzOQ+7QsOFnVrOAX920Nh
	I9SwsjcJPug4EP+QkHStLd4kJio8KvxqCOhuwh+SjlKq6XvBs2ZKCmnOZVpLiqYTWam2LF+K10v00
	lBV0qEbZElNt7HVoO5HJZk+kDrzdoXFTb/z0x3jfr24kKGrhVwU5GqgwmFKQlXt5B632NL9s3SheU
	TxwltEzX7//ptOVC/ScOU/0Gp9h+1zYCJ4UfeVRS1QoaCX43sgzC/T5jdqJxPflkDWSsBm2vj1g4n
	SW3p4KPhWMbWPIC6hHRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAm2Q-00006G-8h; Thu, 19 Sep 2019 02:19:18 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAm1P-00081W-6W
 for openwrt-devel@lists.openwrt.org; Thu, 19 Sep 2019 02:18:16 +0000
Received: by mail-qt1-x844.google.com with SMTP id u40so2269911qth.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 19:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=840IiyLzl7KD7tPilIu1rAuLuTPGLJor77+MODULET4=;
 b=XSCdZ4QzKBfEIwhRAwNwlzD1cSet1istqqmR1W6ZkvqG8rQL1GS+mDxMY9rwBYf9UF
 LxEu5GT6VnF6WJ8rCEQ1jv7R5qJS0kHUnDULDdTHUwWPCl3jtec8osEQYfuSY5dc6bpp
 OOf1XGF4AHTyiBPb5bHGozQtgEs/67Kwj73zy8asNWzrssYaTYd1j8y01FpQATb4c6Pi
 NxaJ5pGOaUhB8AYK2rP8w/IWmfjAn1chZNpvS+eO1M1/BEmpLYwWcivapbe/xyZChQPP
 7BmMy6WYD3+bs8i42YB1M31uZB/XG2b5duJSe79AF9BCrpF0WUHBUr4jFdN7bjc5rhT3
 Ksfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=840IiyLzl7KD7tPilIu1rAuLuTPGLJor77+MODULET4=;
 b=E3KHsNLVdKBxxOxYi+TJrBOJqCHr5pxBe9lv6J6Qs+IJ6alCFQPdjMhNU2YGkBGz6v
 iks0tIOvcvWpZr38B7M6bwN34uReuTr/rnAELhCK+HoT0YPBomMrbtZNhOMsrDZ5rZwU
 kzJmeb9j/1qBG9A1i2XE2yscvwUYid0BdVGM22rs1ZAghiZP9MMQLtc7KCXXAhsxd2QO
 TFGSxKRJ3i1ZMlsTEQ37nmz5wHHAamcKRVc6vK0gyK+VXI9ojdxSjsouqxUuB+Lp2m8n
 ZIxknKMu8/0An7+FFdWVhJnWxmrwOtP7KXvG4e3FwGtbbBMgVhAnQPMw8wEmTGrqZ+PO
 VcMw==
X-Gm-Message-State: APjAAAUbfRC039VaqtoKNEndspgWeJsqBBVAh3InrO3Xvi5DkrGRLGIV
 Qpdg7AEgG3wFSXC9IzNSknHgMzfv
X-Google-Smtp-Source: APXvYqy5KLb84NxkaSW2t/ZAf2HqEHgE8vT8fiHF0Rlw/x5hw4wT0etIa7pdAIHjRh2pFAbXZtzGWw==
X-Received: by 2002:a0c:e90e:: with SMTP id a14mr715219qvo.184.1568859494164; 
 Wed, 18 Sep 2019 19:18:14 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id i30sm3984496qte.27.2019.09.18.19.18.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 19:18:13 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Sep 2019 23:18:02 -0300
Message-Id: <20190919021803.31271-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912195558.11513-1-cotequeiroz@gmail.com>
References: <20190912195558.11513-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_191815_236305_60CBA86A 
X-CRM114-Status: UNSURE (   8.84  )
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
Subject: [OpenWrt-Devel] [PATCH ustream-ssl v2 2/3] ustream-io-cyassl.c: fix
 client-mode connections
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

Starting in v3.13.2, wolfSSL stores the BIO send and recv callbacks
in the SSL struct.  When the SSL session is created, it inherits the
calls from the SSL_CTX, but they do not get updated when the SSL_CTX
callbacks are changed.

Currently, ustream-ssl sets the callbacks after the SSL session is
created, causing failures.  Client apps, such as uclient-fetch fail
immediately to connect to https URLs with a 'Connection failed' error
message.  uhttpd seems unaffected.

New calls to set them directly to the SSL struct were added in 4.1.0, so
we can use them, with a check in CMakeLists.txt to detect their
presence.  Otherwise, another call to ustream_set_io is done before
creating the SSL session to properly set the callbacks.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 3b557c3..6b3fc8c 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -1,5 +1,7 @@
 cmake_minimum_required(VERSION 2.6)
 
+INCLUDE(CheckSymbolExists)
+
 PROJECT(ustream-ssl C)
 ADD_DEFINITIONS(-Os -Wall -Werror --std=gnu99 -g3 -Wmissing-declarations)
 
@@ -13,6 +15,12 @@ ELSEIF(WOLFSSL)
   ADD_DEFINITIONS(-DHAVE_WOLFSSL)
   SET(SSL_SRC ustream-io-wolfssl.c ustream-openssl.c)
   SET(SSL_LIB wolfssl m)
+  SET(CMAKE_REQUIRED_LIBRARIES "-lwolfssl -lm")
+  CHECK_SYMBOL_EXISTS (wolfSSL_SSLSetIORecv "wolfssl/ssl.h"
+		       HAVE_WOLFSSL_SSLSETIORECV)
+  IF (NOT HAVE_WOLFSSL_SSLSETIORECV)
+    ADD_DEFINITIONS(-DNO_WOLFSSL_SSLSETIO_SEND_RECV)
+  ENDIF()
 ELSE()
   SET(SSL_SRC ustream-io-openssl.c ustream-openssl.c)
   SET(SSL_LIB crypto ssl)
diff --git a/ustream-io-wolfssl.c b/ustream-io-wolfssl.c
index 052518a..db69499 100644
--- a/ustream-io-wolfssl.c
+++ b/ustream-io-wolfssl.c
@@ -67,8 +67,15 @@ static int io_send_cb(SSL* ssl, char *buf, int sz, void *ctx)
 
 __hidden void ustream_set_io(struct ustream_ssl_ctx *ctx, void *ssl, struct ustream *conn)
 {
-	wolfSSL_SetIOReadCtx(ssl, conn);
-	wolfSSL_SetIOWriteCtx(ssl, conn);
+#ifndef NO_WOLFSSL_SSLSETIO_SEND_RECV
+	wolfSSL_SSLSetIORecv(ssl, io_recv_cb);
+	wolfSSL_SSLSetIOSend(ssl, io_send_cb);
+#else
 	wolfSSL_SetIORecv((void *) ctx, io_recv_cb);
 	wolfSSL_SetIOSend((void *) ctx, io_send_cb);
+	if (ssl == NULL)
+		return;
+#endif
+	wolfSSL_SetIOReadCtx(ssl, conn);
+	wolfSSL_SetIOWriteCtx(ssl, conn);
 }
diff --git a/ustream-ssl.c b/ustream-ssl.c
index dd0faf9..e6b084b 100644
--- a/ustream-ssl.c
+++ b/ustream-ssl.c
@@ -179,6 +179,9 @@ static int _ustream_ssl_init(struct ustream_ssl *us, struct ustream *conn, struc
 	us->conn = conn;
 	us->ctx = ctx;
 
+#if defined(HAVE_WOLFSSL) && defined(NO_WOLFSSL_SSLSETIO_SEND_RECV)
+	ustream_set_io(ctx, NULL, conn);
+#endif
 	us->ssl = __ustream_ssl_session_new(us->ctx);
 	if (!us->ssl)
 		return -ENOMEM;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
