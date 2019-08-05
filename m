Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC73825E1
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 22:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvejCUYsFF/1Syytcl/xUR0pvUAyyj0o8bLWVZILOB4=; b=b21IHPo1EtJqkK
	DYy1pJKruqCrLlDML1+8pomGDtcNs5pht6qtrNyDHxDnTCS4xtmboSNrGkHoHpbg0bhENT8ulm+9t
	hJ4exr1I6kkf3tehw3uz+U1GJm67jtlTtKTK96LzpRudv3CEJ8w8nQJZ5LGuKAOAu7CiAY4UwURF9
	W0iWsUlitOgi4de4Dorzy2/XoNNv3LteC8fJTJ0MzOlQm0CBN5b6G7QriVCeY5hNV6FSzQInaaKBX
	fxKfTtzhcZ92vE6EDpuTVz6KZu6zk0nbQEDuOlz5/mJVWNflI2xyZ6gg904wiOMB6ALlmnfu8LXeV
	E6E1pJnxMXsHlw9w8Wrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hujHm-0006nl-2T; Mon, 05 Aug 2019 20:08:50 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hujHV-0006U6-53
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 20:08:34 +0000
Received: by mail-qk1-x742.google.com with SMTP id c74so127798qkb.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 13:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dhIudazwiBKPiV6VmbUj2h8iGiKY0h0TFO9MNFqBb08=;
 b=hKQqgvFyJIDLb7KbdSpuUQ23lA5oxSVUKGFYZnx0CPE4Jap0NiFn1AQ1z+qzP1m+uj
 V2Vlpl5Nr/0HN4CN70RRnIz6VGcgoqfbJ4YckP4fbJQPJijm3JrF788/++zUeqgX6lKF
 q+hm0jTSjFHgRswIBRgoMHSgeJN3j+eGOiDKbjNfFGT9WMG3meJsc7TOKFXI5a3+Pcds
 mdZ2KqhAIaMrj6hx4A9vV7OVlUN5mE3xHJ+XKc1UwG/XWtivoQWbe3GyF1M5KOBsV4Vn
 g9pLKFQOGxblX6/Qj+qrC4UJw9E/NyeHNhBqroUqnMCL4uqEaxk4XnZ6BgDgYWO7NqZ9
 xXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dhIudazwiBKPiV6VmbUj2h8iGiKY0h0TFO9MNFqBb08=;
 b=OaV9AUkh0TDbDDAOLhDnrPvh6masGAoJAbYbHTADYdqhWar0+DDF0S+xSFDjXZuLwU
 iMPKNUjs1jv2XD1bggJLltOus47hOg5K6fx1MXp9O31KUtCFwKH2hB5p817OLy3eMeWy
 HWmQMBHY/5ZuioGRzQ2mvDiFV14LUBEiaGu1gRP4KQv7w4slcJK/30Sq9FGq+zxhn2qr
 YUfpn8AB2k7ky7Mbm4Ykhmcoc3PEgL7tj/MPSo5JEPoVpYgAL00ftvF0WBREjG7TiQal
 imEfmjXFQTELfGnnpM1a/ME2o/2J6xfClvDFXDI+uuVWUjnr8a5/+yXAvVtS+RAy4Q6h
 +akg==
X-Gm-Message-State: APjAAAU5aY8P5rHhTqlkaFht/8ANCqu2br8hZ7iLYH2OY8IMbcb//BzC
 JikrBV6uGX53koGIzUAPDnVarHZzsBY=
X-Google-Smtp-Source: APXvYqynLc+5pkEQkFDYn5qg2UnH6R+hSkWgwDc6M1GDLUtQUfXZzRbmPLFumnF77tcBFWBTP5SuyQ==
X-Received: by 2002:a37:aa10:: with SMTP id t16mr73638qke.332.1565035711869;
 Mon, 05 Aug 2019 13:08:31 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id 2sm44390828qtz.73.2019.08.05.13.08.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 13:08:31 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 17:07:48 -0300
Message-Id: <20190805200748.29474-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805200748.29474-1-cotequeiroz@gmail.com>
References: <20190805200748.29474-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_130833_190697_A77FC730 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [ustream-ssl PATCH 2/2] Revise supported
 ciphersuites
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

CBC ciphersuites have been under scrutiny because of the many padding
oracle vulnerabilities that keep popping up; it seems that we won't be
able to patch up the inherent wakness of MAC-then-encrypt forever.  They
have been blacklisted by HTTP/2, and recently dropped from Mozilla's
Security/Serverside TLS intermediate compatibility list:
https://wiki.mozilla.org/Security/Server_Side_TLS

This commit removes ECDSA-CBC ciphersuites.  Basically, you can choose a
level of ciphersuite security, using the private-key type as a switch:

For RSA keys, CBC and RSA-key exchange ciphers will be enabled--mostly
matching Mozilla's Old backward compatibility list.

If you use an EC private key, then only ephemeral-key, authenticated
ciphers will be used, along the lines of what Mozilla's Intermediate
compatibility list prescribes.

The order does not match Mozilla's list 100% because in most embedded
systems, the server is going to be the least-capable machine.  So,
chacha20-poly1305 is moved ahead of AES, and the cipher preference is
always given to the server.  Also, DHE ciphers are not used for server.

The client list had the order changed to prioritize authenticated
ciphers, so DHE-chacha and DHE-GCM were moved ahead of ECDHE-CBC.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
If you use the intermediate compatibility list, you lose compatibility
with Safari on iOS<=8 and OS X<=10.10. Windows XP will not work either,
but since it is not compatible with EC keys, it does not change what we
had before.

I don't think we should drop ciphers from client-mode yet; none of the
ciphers are terribly bad from a client perspective, and if we disable
them, we can either get locked out of a service, or be forced to use an
unencrypted connection.

diff --git a/ustream-mbedtls.c b/ustream-mbedtls.c
index b7d7629..85bbb1c 100644
--- a/ustream-mbedtls.c
+++ b/ustream-mbedtls.c
@@ -86,18 +86,25 @@ static int _urandom(void *ctx, unsigned char *out, size_t len)
 	return 0;
 }
 
-#define AES_CIPHERS(v)					\
+#define AES_GCM_CIPHERS(v)				\
 	MBEDTLS_TLS_##v##_WITH_AES_128_GCM_SHA256,	\
-	MBEDTLS_TLS_##v##_WITH_AES_256_GCM_SHA384,	\
+	MBEDTLS_TLS_##v##_WITH_AES_256_GCM_SHA384
+
+#define AES_CBC_CIPHERS(v)				\
 	MBEDTLS_TLS_##v##_WITH_AES_128_CBC_SHA,		\
 	MBEDTLS_TLS_##v##_WITH_AES_256_CBC_SHA
 
+#define AES_CIPHERS(v)					\
+	AES_GCM_CIPHERS(v),				\
+	AES_CBC_CIPHERS(v)
+
 static const int default_ciphersuites_server[] =
 {
 	MBEDTLS_TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256,
-	AES_CIPHERS(ECDHE_ECDSA),
+	AES_GCM_CIPHERS(ECDHE_ECDSA),
 	MBEDTLS_TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256,
-	AES_CIPHERS(ECDHE_RSA),
+	AES_GCM_CIPHERS(ECDHE_RSA),
+	AES_CBC_CIPHERS(ECDHE_RSA),
 	AES_CIPHERS(RSA),
 	0
 };
@@ -105,11 +112,14 @@ static const int default_ciphersuites_server[] =
 static const int default_ciphersuites_client[] =
 {
 	MBEDTLS_TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256,
-	AES_CIPHERS(ECDHE_ECDSA),
+	AES_GCM_CIPHERS(ECDHE_ECDSA),
 	MBEDTLS_TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256,
-	AES_CIPHERS(ECDHE_RSA),
+	AES_GCM_CIPHERS(ECDHE_RSA),
 	MBEDTLS_TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256,
-	AES_CIPHERS(DHE_RSA),
+	AES_GCM_CIPHERS(DHE_RSA),
+	AES_CBC_CIPHERS(ECDHE_ECDSA),
+	AES_CBC_CIPHERS(ECDHE_RSA),
+	AES_CBC_CIPHERS(DHE_RSA),
 	MBEDTLS_TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA,
 	AES_CIPHERS(RSA),
 	MBEDTLS_TLS_RSA_WITH_3DES_EDE_CBC_SHA,
diff --git a/ustream-openssl.c b/ustream-openssl.c
index 3810d6a..b2df362 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -22,14 +22,16 @@
 #include "ustream-ssl.h"
 #include "ustream-internal.h"
 
-
 /* Ciphersuite preference:
- * - key exchange: prefer ECDHE, then DHE(client only), then RSA
- * - prefer AEAD ciphers:
+ * - for server, no weak ciphers are used if you use an ECDSA key.
+ * - forward-secret (pfs), authenticated (AEAD) ciphers are at the top:
  *   	chacha20-poly1305, the fastest in software, 256-bits
  * 	aes128-gcm, 128-bits
  * 	aes256-gcm, 256-bits
- * - CBC ciphers
+ * - key exchange: prefer ECDHE, then DHE (client only)
+ * - forward-secret ECDSA CBC ciphers (client-only)
+ * - forward-secret RSA CBC ciphers
+ * - non-pfs ciphers
  *	aes128, aes256, 3DES(client only)
  */
 
@@ -38,32 +40,38 @@
 				"TLS13-CHACHA20-POLY1305-SHA256:"	\
 				"TLS13-AES128-GCM-SHA256:"		\
 				"TLS13-AES256-GCM-SHA384:"		\
-				ecdhe_ciphers
+				ecdhe_aead_ciphers
 #else
 # define tls13_ciphersuites	"TLS_CHACHA20_POLY1305_SHA256:"		\
 				"TLS_AES_128_GCM_SHA256:"		\
 				"TLS_AES_256_GCM_SHA384"
 
 # define top_ciphers							\
-				ecdhe_ciphers
+				ecdhe_aead_ciphers
 #endif
 
-#define ecdhe_ciphers							\
+#define ecdhe_aead_ciphers						\
 				"ECDHE-ECDSA-CHACHA20-POLY1305:"	\
 				"ECDHE-ECDSA-AES128-GCM-SHA256:"	\
 				"ECDHE-ECDSA-AES256-GCM-SHA384:"	\
-				"ECDHE-ECDSA-AES128-SHA:"		\
-				"ECDHE-ECDSA-AES256-SHA:"		\
 				"ECDHE-RSA-CHACHA20-POLY1305:"		\
 				"ECDHE-RSA-AES128-GCM-SHA256:"		\
-				"ECDHE-RSA-AES256-GCM-SHA384:"		\
-				"ECDHE-RSA-AES128-SHA:"			\
-				"ECDHE-RSA-AES256-SHA"
+				"ECDHE-RSA-AES256-GCM-SHA384"
 
-#define dhe_ciphers							\
+#define dhe_aead_ciphers						\
 				"DHE-RSA-CHACHA20-POLY1305:"		\
 				"DHE-RSA-AES128-GCM-SHA256:"		\
-				"DHE-RSA-AES256-GCM-SHA384:"		\
+				"DHE-RSA-AES256-GCM-SHA384"
+
+#define ecdhe_ecdsa_cbc_ciphers						\
+				"ECDHE-ECDSA-AES128-SHA:"		\
+				"ECDHE-ECDSA-AES256-SHA"
+
+#define ecdhe_rsa_cbc_ciphers						\
+				"ECDHE-RSA-AES128-SHA:"			\
+				"ECDHE-RSA-AES256-SHA"
+
+#define dhe_cbc_ciphers							\
 				"DHE-RSA-AES128-SHA:"			\
 				"DHE-RSA-AES256-SHA:"			\
 				"DHE-DES-CBC3-SHA"
@@ -76,11 +84,15 @@
 
 #define server_cipher_list						\
 				top_ciphers ":"				\
+				ecdhe_rsa_cbc_ciphers ":"		\
 				non_pfs_aes
 
 #define client_cipher_list						\
 				top_ciphers ":"				\
-				dhe_ciphers ":"				\
+				dhe_aead_ciphers ":"			\
+				ecdhe_ecdsa_cbc_ciphers ":"		\
+				ecdhe_rsa_cbc_ciphers ":"		\
+				dhe_cbc_ciphers ":"			\
 				non_pfs_aes ":"				\
 				"DES-CBC3-SHA"
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
