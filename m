Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895E11600F7
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Feb 2020 23:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WV39aWc5bTJuPXtWd1bvRZ9slMn3Ljxvs6NzgpMvQfw=; b=ixF6k1jyqgaK3t
	LnBP7g/yK+y+NmjAKBt7Ul6BqxmCgouHjT8MNQ5X2669tq4dXTVXGlh2EyLQr8R0timBccNW/glar
	+TItZKIEJvrkWVR/8lBjD5bTzYN16zZk1hQrk3oLtEnPZzpoRPd/1XJccZA7c4kxYDzxbX6zxhMOx
	0sxpKo2G2M6kGVTQGZrzn/Zlx8ZWZ0v2Hu+crK3dDskHeVrBV4dKUlkUpMpBTWAXZFSz5SXvSSeeA
	w1MEtl6ZyzEjEFc/gdk58uf1AyBt/BuGLklsrhLK6KTQnNhQo3Q/6F/EoIASbkw51D4wmMfo3kZY+
	FkaHTMP7oO+c2SNTS1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j36LQ-0004Mm-C4; Sat, 15 Feb 2020 22:55:28 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j36LJ-0004MC-HI
 for openwrt-devel@lists.openwrt.org; Sat, 15 Feb 2020 22:55:23 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 77E2256421; Sat, 15 Feb 2020 23:55:15 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 335A05641F
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Feb 2020 23:55:14 +0100 (CET)
Received: (qmail 97080 invoked from network); 15 Feb 2020 23:55:14 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.41.162)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 15 Feb 2020 23:55:14 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Feb 2020 23:54:53 +0100
Message-Id: <20200215225453.1652552-1-jo@mein.io>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_145521_729693_7CAB7DBE 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ustream-ssl] add support for specifying
 usable ciphers
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Implement a new ustream_ssl_ops.context_set_ciphers() function which allows
to specify the usable ciphers for TLS context which is useful to restrict
the accepted cipher subset especially for ustream-ssl server applications.

For the OpenSSL backend, the given cipher string is passed as-is to the
SSL_CTX_set_cipher_list().

For mbedTLS, the given string is split on colons and each item of the list
is resolved through mbedtls_ssl_get_ciphersuite_id() to construct a numeric
list of allowed ciphers.

Note that OpenSSL and mbedTLS use different names for their ciphers but both
implementations simply ignore unknown names, so it is possible to specify
cipherstrings which are applicable to either library, e.g. `-ALL:ECDHE-
ECDSA-AES128-GCM-SHA256:TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256` would
enable ChaCha20/Poly1305 in both OpenSSL and mbedTLS.

Another crucial difference between the libraries is that the cipherstring
in mbedTLS is effectively a whitelist of allowed ciphers while, without
additional syntax elements, OpenSSL's cipherstring merely appends ciphers
to the default selection.

Ref: https://www.openssl.org/docs/man1.1.1/man3/SSL_CTX_set_cipher_list.html
Ref: https://tls.mbed.org/api/ssl_8h.html#a9914cdf5533e813e1ea7ca52981aa006
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 ustream-internal.h |  1 +
 ustream-mbedtls.c  | 66 ++++++++++++++++++++++++++++++++++++++++++++++
 ustream-mbedtls.h  |  1 +
 ustream-openssl.c  | 11 +++++++-
 ustream-ssl.c      |  1 +
 ustream-ssl.h      |  3 +++
 6 files changed, 82 insertions(+), 1 deletion(-)

diff --git a/ustream-internal.h b/ustream-internal.h
index 8d5d0db..147141a 100644
--- a/ustream-internal.h
+++ b/ustream-internal.h
@@ -38,6 +38,7 @@ struct ustream_ssl_ctx *__ustream_ssl_context_new(bool server);
 int __ustream_ssl_add_ca_crt_file(struct ustream_ssl_ctx *ctx, const char *file);
 int __ustream_ssl_set_crt_file(struct ustream_ssl_ctx *ctx, const char *file);
 int __ustream_ssl_set_key_file(struct ustream_ssl_ctx *ctx, const char *file);
+int __ustream_ssl_set_ciphers(struct ustream_ssl_ctx *ctx, const char *ciphers);
 void __ustream_ssl_context_free(struct ustream_ssl_ctx *ctx);
 enum ssl_conn_status __ustream_ssl_connect(struct ustream_ssl *us);
 int __ustream_ssl_read(struct ustream_ssl *us, char *buf, int len);
diff --git a/ustream-mbedtls.c b/ustream-mbedtls.c
index 74c27a5..9f73c58 100644
--- a/ustream-mbedtls.c
+++ b/ustream-mbedtls.c
@@ -225,6 +225,71 @@ __hidden int __ustream_ssl_set_key_file(struct ustream_ssl_ctx *ctx, const char
 	return 0;
 }
 
+__hidden int __ustream_ssl_set_ciphers(struct ustream_ssl_ctx *ctx, const char *ciphers)
+{
+	int *ciphersuites = NULL, *tmp, id;
+	char *cipherstr, *p, *last, c;
+	size_t len = 0;
+
+	if (ciphers == NULL)
+		return -1;
+
+	cipherstr = strdup(ciphers);
+
+	if (cipherstr == NULL)
+		return -1;
+
+	for (p = cipherstr, last = p;; p++) {
+		if (*p == ':' || *p == 0) {
+			c = *p;
+			*p = 0;
+
+			id = mbedtls_ssl_get_ciphersuite_id(last);
+
+			if (id != 0) {
+				tmp = realloc(ciphersuites, (len + 2) * sizeof(int));
+
+				if (tmp == NULL) {
+					free(ciphersuites);
+					free(cipherstr);
+
+					return -1;
+				}
+
+				ciphersuites = tmp;
+				ciphersuites[len++] = id;
+				ciphersuites[len] = 0;
+			}
+
+			if (c == 0)
+				break;
+
+			last = p + 1;
+		}
+
+		/*
+		 * mbedTLS expects cipher names with dashes while many sources elsewhere
+		 * like the Firefox wiki or Wireshark specify ciphers with underscores,
+		 * so simply convert all underscores to dashes to accept both notations.
+		 */
+		else if (*p == '_') {
+			*p = '-';
+		}
+	}
+
+	free(cipherstr);
+
+	if (len == 0)
+		return -1;
+
+	mbedtls_ssl_conf_ciphersuites(&ctx->conf, ciphersuites);
+	free(ctx->ciphersuites);
+
+	ctx->ciphersuites = ciphersuites;
+
+	return 0;
+}
+
 __hidden void __ustream_ssl_context_free(struct ustream_ssl_ctx *ctx)
 {
 #if defined(MBEDTLS_SSL_CACHE_C)
@@ -234,6 +299,7 @@ __hidden void __ustream_ssl_context_free(struct ustream_ssl_ctx *ctx)
 	mbedtls_x509_crt_free(&ctx->ca_cert);
 	mbedtls_x509_crt_free(&ctx->cert);
 	mbedtls_ssl_config_free(&ctx->conf);
+	free(ctx->ciphersuites);
 	free(ctx);
 }
 
diff --git a/ustream-mbedtls.h b/ustream-mbedtls.h
index 0e5988a..e622e5e 100644
--- a/ustream-mbedtls.h
+++ b/ustream-mbedtls.h
@@ -41,6 +41,7 @@ struct ustream_ssl_ctx {
 	mbedtls_ssl_cache_context cache;
 #endif
 	bool server;
+	int *ciphersuites;
 };
 
 static inline char *__ustream_ssl_strerror(int error, char *buffer, int len)
diff --git a/ustream-openssl.c b/ustream-openssl.c
index 1469473..049aa40 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -190,6 +190,16 @@ __hidden int __ustream_ssl_set_key_file(struct ustream_ssl_ctx *ctx, const char
 	return 0;
 }
 
+__hidden int __ustream_ssl_set_ciphers(struct ustream_ssl_ctx *ctx, const char *ciphers)
+{
+	int ret = SSL_CTX_set_cipher_list((void *) ctx, ciphers);
+
+	if (ret == 0)
+		return -1;
+
+	return 0;
+}
+
 __hidden void __ustream_ssl_context_free(struct ustream_ssl_ctx *ctx)
 {
 	SSL_CTX_free((void *) ctx);
@@ -306,4 +316,3 @@ __hidden int __ustream_ssl_read(struct ustream_ssl *us, char *buf, int len)
 
 	return ret;
 }
-
diff --git a/ustream-ssl.c b/ustream-ssl.c
index 47f66d6..dbc3bee 100644
--- a/ustream-ssl.c
+++ b/ustream-ssl.c
@@ -231,6 +231,7 @@ const struct ustream_ssl_ops ustream_ssl_ops = {
 	.context_set_crt_file = __ustream_ssl_set_crt_file,
 	.context_set_key_file = __ustream_ssl_set_key_file,
 	.context_add_ca_crt_file = __ustream_ssl_add_ca_crt_file,
+	.context_set_ciphers = __ustream_ssl_set_ciphers,
 	.context_free = __ustream_ssl_context_free,
 	.init = _ustream_ssl_init,
 	.set_peer_cn = _ustream_ssl_set_peer_cn,
diff --git a/ustream-ssl.h b/ustream-ssl.h
index 7787788..db89297 100644
--- a/ustream-ssl.h
+++ b/ustream-ssl.h
@@ -56,6 +56,8 @@ struct ustream_ssl_ops {
 
 	int (*init)(struct ustream_ssl *us, struct ustream *conn, struct ustream_ssl_ctx *ctx, bool server);
 	int (*set_peer_cn)(struct ustream_ssl *conn, const char *name);
+
+	int (*context_set_ciphers)(struct ustream_ssl_ctx *ctx, const char *ciphers);
 };
 
 extern const struct ustream_ssl_ops ustream_ssl_ops;
@@ -64,6 +66,7 @@ extern const struct ustream_ssl_ops ustream_ssl_ops;
 #define ustream_ssl_context_set_crt_file	ustream_ssl_ops.context_set_crt_file
 #define ustream_ssl_context_set_key_file	ustream_ssl_ops.context_set_key_file
 #define ustream_ssl_context_add_ca_crt_file	ustream_ssl_ops.context_add_ca_crt_file
+#define ustream_ssl_context_set_ciphers		ustream_ssl_ops.context_set_ciphers
 #define ustream_ssl_context_free		ustream_ssl_ops.context_free
 #define ustream_ssl_init			ustream_ssl_ops.init
 #define ustream_ssl_set_peer_cn			ustream_ssl_ops.set_peer_cn
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
