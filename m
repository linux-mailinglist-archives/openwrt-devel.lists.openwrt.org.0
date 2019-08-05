Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAA9825E0
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 22:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wfTsWe75u+YW9juw5roQDTIa1r1bVkZdyyA679y34xg=; b=lRvYSZSTjEyT/3
	uHzVoRaf+0qUrQvk285j2N2YbdfLKeroNK9LO9Jija6fyilzEDj8Z1f0FMtj0OLFXf6KLhBcUSMxl
	Jv/iLO5f0buWv2BiXP7Erq8/rvu2I6vA+fpHInry3e5PVz/xFirpmi/USadXVaH30dPxUempmw3DA
	UKn5u/U0VhfLUCMGf4MNIxah9BJGHk3dJgwdds5osl7Z0Xs7W6bGEnfOoc22ipG0rQJJQK8nbwW8R
	+oc7/fojt9wvc2u9pTse5SgUbxZ2HsjagZE/6k2IdHxdXROv8wr0KvWw6hfBUhFOVZ1EgbdGQQKeD
	Qz8Ad5PfNneMn5Iq68pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hujHb-0006UW-3t; Mon, 05 Aug 2019 20:08:39 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hujHT-0006Tr-O3
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 20:08:33 +0000
Received: by mail-qt1-x842.google.com with SMTP id a15so82221391qtn.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 13:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zXgfo7JQvgWtV4ratKVZkrzOGCFs226Tv544I7eDTpY=;
 b=oulMFNcf0H0FMx/28mcLevbeb2PeoYzgoMLejDHwnfyOBfw3f4sYIUi/q3kvCFrQwZ
 Pgjdie/91ENJ3rxli+2EFzvWIN5rm2KofWqnkIQdqVjRcr0Sx7IXn/wEwEz9kDvpxFJG
 h1XCGbp5oJXAVHsvAZOXyK9wtXBtC4QV/mHOLlH0yYat/EzdpZJEjD+0Y6TC6v90iJXy
 FWnxzTHcjHV09t0XHpsYGdbxN1DuUC8cXtzmQpKNEToiyGM2G68hc5wrqJcJkhYdQB0T
 qCFogWZ5EkT6KvtMX7JLw1Z32FyJXNc+NX+RCnwOJ5bbvsR91Ib8t6qofLl8/o9yvRlm
 SA0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zXgfo7JQvgWtV4ratKVZkrzOGCFs226Tv544I7eDTpY=;
 b=F7D3p/kurwPn3DEfji7Ms0hDkxPq4GlAMxvCJEz3zz6Up5ZW0YoiqqX9jk4nQEUfjB
 KpsbjO76uDe68XhS3W5BcgcX5YMAz3Ldq6YsPwliqIsKehcipXK31e8//UVWG9dxmd12
 6WFjx/h960vSqpnDcJdNgY2KFHj7Jg40Q5ktxuNSHr0xa/KLA7HFNxP0J3vPkbGX7HV4
 hNXkkUEGyadaRWNf2xN+FDAqXfK2GfwXVnCpAAY4zzp8l/sjGFnFqOIX/t8UQlcEdmvr
 bPWxEVO62sa3JsvO+PS8p8pFfapHTpGxznzMzyW0Vd52ExXvM6GlBN0b/kox5OcxkUO7
 kJIw==
X-Gm-Message-State: APjAAAWfqFSC8y2AMYKKYXyRepix7aJRZ+cdNT7JDSwmhZVQWzz2Vt2N
 qBrXNp10X+1Qw+cwP81dbNiGeQB9Gg8=
X-Google-Smtp-Source: APXvYqzplncdstn3c2ZdKjUWTOg2cTWP3RKfd7I2gluaSH7ZF63gpyMYPMJxtnYgeulZOWGh/clFMA==
X-Received: by 2002:aed:3325:: with SMTP id
 u34mr106547410qtd.324.1565035710332; 
 Mon, 05 Aug 2019 13:08:30 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id 2sm44390828qtz.73.2019.08.05.13.08.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 13:08:29 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 17:07:47 -0300
Message-Id: <20190805200748.29474-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_130831_803678_6D2B10AC 
X-CRM114-Status: UNSURE (   4.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Subject: [OpenWrt-Devel] [ustream-ssl PATCH 1/2] wolfssl,
 openssl: use TLS 1.3, set ciphersuites
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

For wolfssl, instead of hard-coding TLS 1.2, use generic method and
disable older protocols, adding the necessary ciphersuites.

Openssl already had TLS 1.3 compatiblity, but its ciphersuite ordering
needs a separate call, so this sets the ciphersuite preference when
using TLS 1.3.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/ustream-openssl.c b/ustream-openssl.c
index 7c72ce1..3810d6a 100644
--- a/ustream-openssl.c
+++ b/ustream-openssl.c
@@ -33,6 +33,21 @@
  *	aes128, aes256, 3DES(client only)
  */
 
+#ifdef WOLFSSL_SSL_H
+# define top_ciphers							\
+				"TLS13-CHACHA20-POLY1305-SHA256:"	\
+				"TLS13-AES128-GCM-SHA256:"		\
+				"TLS13-AES256-GCM-SHA384:"		\
+				ecdhe_ciphers
+#else
+# define tls13_ciphersuites	"TLS_CHACHA20_POLY1305_SHA256:"		\
+				"TLS_AES_128_GCM_SHA256:"		\
+				"TLS_AES_256_GCM_SHA384"
+
+# define top_ciphers							\
+				ecdhe_ciphers
+#endif
+
 #define ecdhe_ciphers							\
 				"ECDHE-ECDSA-CHACHA20-POLY1305:"	\
 				"ECDHE-ECDSA-AES128-GCM-SHA256:"	\
@@ -60,11 +75,11 @@
 				"AES256-SHA"
 
 #define server_cipher_list						\
-				ecdhe_ciphers ":"			\
+				top_ciphers ":"				\
 				non_pfs_aes
 
 #define client_cipher_list						\
-				ecdhe_ciphers ":"			\
+				top_ciphers ":"				\
 				dhe_ciphers ":"				\
 				non_pfs_aes ":"				\
 				"DES-CBC3-SHA"
@@ -83,7 +98,7 @@ __ustream_ssl_context_new(bool server)
 		SSL_library_init();
 		_init = true;
 	}
-# define TLS_server_method TLSv1_2_server_method
+# define TLS_server_method SSLv23_server_method
 # define TLS_client_method SSLv23_client_method
 #endif
 
@@ -101,10 +116,15 @@ __ustream_ssl_context_new(bool server)
 			       SSL_OP_CIPHER_SERVER_PREFERENCE);
 #if defined(SSL_CTX_set_ecdh_auto) && OPENSSL_VERSION_NUMBER < 0x10100000L
 	SSL_CTX_set_ecdh_auto(c, 1);
+#elif OPENSSL_VERSION_NUMBER >= 0x10101000L
+	SSL_CTX_set_ciphersuites(c, tls13_ciphersuites);
 #endif
 	if (server) {
 #if OPENSSL_VERSION_NUMBER >= 0x10100000L
 		SSL_CTX_set_min_proto_version(c, TLS1_2_VERSION);
+#else
+		SSL_CTX_set_options(c, SSL_OP_NO_SSLv3 | SSL_OP_NO_TLSv1 |
+				       SSL_OP_NO_TLSv1_1);
 #endif
 		SSL_CTX_set_cipher_list(c, server_cipher_list);
 	} else {

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
