Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407A019A029
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Mar 2020 22:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KdYY7Vvxv7DfW3F1gT6TdMxKa0gKwhja7wRDeLjDKHc=; b=Sb50a/TrWrRWW+
	ldJwVtDc+UoQukaI+BpsRC7ktgWDZYSEkcYX50QNE7Plxi00nRGlD/4tq/ggoiXLg/uNOb58tQ6im
	nsaS7nB1nTqSAlXRC8j5xv25ielnS7gxM+1ejR5B4b5Xrjy0kaym8xwAS6kKXkI5wz5I1Esp+aAwt
	qhYmt/i6UBJG//QI2IJ3O50ov73MvWjVL909L/HVFWEi5DwpHa7ZXf+k9vScAYLGv+bv1KT681A7S
	L4Oi47xESei78sQvqBDgnd3G+Q0ctrbJL7UY86v87bxQlueekbvb/h0fwJIIjGKU/KMZ0LTo9sAHg
	p/ASdiGv/z51hck3bDAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJNri-0001hP-1l; Tue, 31 Mar 2020 20:52:06 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJNrb-0001gM-LC
 for openwrt-devel@lists.openwrt.org; Tue, 31 Mar 2020 20:52:01 +0000
Received: by mail-qv1-xf33.google.com with SMTP id bu9so5656180qvb.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Mar 2020 13:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LxwB8/+NSU3MThmn3N3MhTx8s+vuPFrfqjxNvTdFhYs=;
 b=GQuuB3pdWm/RTteUA9Y2oNi/Vh7HakWBu0n+8tDyRUpYg0TU4qk2BzIEjFbprUSkQY
 iQq6Zv2jzNQScqyp/OGnZ9EgHpu0gLcOpvck3ueeD0F+b26F95zY6c59O5QbvuoI19wu
 JAxJ5FNda5t1C85YRDnVfz8E65TwMBaoZcJ6mqvnRGMl0vnG1nviVspPkVkxQvBmMRMX
 H+NWGFIS2wGQGHorrg5Lcd7OY23gdfWjrla33J/9zptj5R41YUZyDBAV/xbrB0b2goQY
 3Rf2E/7yCCCVUPavwjEHUT3UVpW9nrFHvr0rJATxfzwQOEnAH8CpEJfv6LQLW8V3G/j+
 6wRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LxwB8/+NSU3MThmn3N3MhTx8s+vuPFrfqjxNvTdFhYs=;
 b=jz7Qx6FJ26f6hGWZsX+xtdYAypZhzIj55YDUJ/k2KAmlfgjjHpl9VWhTEiE1w3kGV+
 EKpg654F1GT5Sv34zbLXMZbT3/gVvLQp1MDE0OgpxLiIyhsyx4jBe6vpv6ch1gXTrEQV
 BPjXPsxwy0IyeJTbgLBpzPSZABnugDe465Z39UPPLS/O3p7+Gv+Q6qT+dF8+GJdowM6L
 F9PSgVr3dLq2nqfUFp9PsnAIK0d+r0ipBFiSdo0l4yv6jX1gsKif3xZLE49MeMoSVSjV
 zOrhsu773HZvDyOlFNwI23ea4Cjl8TO9F8y2+s6m3jOIBvUN2D1/Z/T6MCcpaYBGAhJG
 wDkg==
X-Gm-Message-State: ANhLgQ1urdwHQ6nmoRq3Vai15U79jnJbqVuawXr+hAKfOerNatkOBOO7
 ZpxEWp5Q8LsJSmJY8d+1YAaVbGUZ2BU=
X-Google-Smtp-Source: ADFU+vvzcLrRIfWhU3jeJB67iEn7xhrRVK6+/lotFz83YB6xHiPiEAl5mZ9P1HVcn0pGVRe5zkSWWQ==
X-Received: by 2002:a0c:a903:: with SMTP id y3mr18331262qva.245.1585687917289; 
 Tue, 31 Mar 2020 13:51:57 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id j85sm84550qke.20.2020.03.31.13.51.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 13:51:56 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Mar 2020 17:51:45 -0300
Message-Id: <20200331205145.690-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_135159_719448_CC871442 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f33 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] openssl: bump to 1.1.1f
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

There were two changes between 1.1.1e and 1.1.1f:
- a change in BN prime generation to avoid possible fingerprinting of
  newly generated RSA modules
- the patch reversing EOF detection we had already applied.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
This was tested with nginx and openssl util on WRT3200ACM, and should be
applied to 19.07.

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index ca45549800..e2f2661566 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -9,9 +9,9 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssl
 PKG_BASE:=1.1.1
-PKG_BUGFIX:=e
+PKG_BUGFIX:=f
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=2
+PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
@@ -24,7 +24,7 @@ PKG_SOURCE_URL:= \
 	ftp://ftp.pca.dfn.de/pub/tools/net/openssl/source/ \
 	http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/
-PKG_HASH:=694f61ac11cb51c9bf73f54e771ff6022b0327a43bbdfa1b2f19de1662a6dcbe
+PKG_HASH:=186c6bfe6ecfba7a5b48c47f8a1673d0f3b0e5ba2e25602dd23b629975da3f35
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
diff --git a/package/libs/openssl/patches/200-Partially-revert-Detect-EOF-while-reading-in-libssl.patch b/package/libs/openssl/patches/200-Partially-revert-Detect-EOF-while-reading-in-libssl.patch
deleted file mode 100644
index c269dff07c..0000000000
--- a/package/libs/openssl/patches/200-Partially-revert-Detect-EOF-while-reading-in-libssl.patch
+++ /dev/null
@@ -1,80 +0,0 @@
-From 30d190caf311d534867df97e26b552e628cb7d85 Mon Sep 17 00:00:00 2001
-From: Tomas Mraz <tmraz@fedoraproject.org>
-Date: Wed, 25 Mar 2020 14:15:31 +0100
-Subject: [PATCH] Partially revert "Detect EOF while reading in libssl"
-
-This partially reverts commit db943f43a60d1b5b1277e4b5317e8f288e7a0a3a.
-
-Reviewed-by: Matt Caswell <matt@openssl.org>
-(Merged from https://github.com/openssl/openssl/pull/11400)
-
-diff --git a/crypto/err/openssl.txt b/crypto/err/openssl.txt
-index f5324c6819..35512f9caf 100644
---- a/crypto/err/openssl.txt
-+++ b/crypto/err/openssl.txt
-@@ -2852,7 +2852,6 @@ SSL_R_UNABLE_TO_LOAD_SSL3_MD5_ROUTINES:242:unable to load ssl3 md5 routines
- SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES:243:unable to load ssl3 sha1 routines
- SSL_R_UNEXPECTED_CCS_MESSAGE:262:unexpected ccs message
- SSL_R_UNEXPECTED_END_OF_EARLY_DATA:178:unexpected end of early data
--SSL_R_UNEXPECTED_EOF_WHILE_READING:294:unexpected eof while reading
- SSL_R_UNEXPECTED_MESSAGE:244:unexpected message
- SSL_R_UNEXPECTED_RECORD:245:unexpected record
- SSL_R_UNINITIALIZED:276:uninitialized
-diff --git a/include/openssl/sslerr.h b/include/openssl/sslerr.h
-index 0ef684f3c1..ba4c4ae5fb 100644
---- a/include/openssl/sslerr.h
-+++ b/include/openssl/sslerr.h
-@@ -1,6 +1,6 @@
- /*
-  * Generated by util/mkerr.pl DO NOT EDIT
-- * Copyright 1995-2020 The OpenSSL Project Authors. All Rights Reserved.
-+ * Copyright 1995-2019 The OpenSSL Project Authors. All Rights Reserved.
-  *
-  * Licensed under the OpenSSL license (the "License").  You may not use
-  * this file except in compliance with the License.  You can obtain a copy
-@@ -734,7 +734,6 @@ int ERR_load_SSL_strings(void);
- # define SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES          243
- # define SSL_R_UNEXPECTED_CCS_MESSAGE                     262
- # define SSL_R_UNEXPECTED_END_OF_EARLY_DATA               178
--# define SSL_R_UNEXPECTED_EOF_WHILE_READING               294
- # define SSL_R_UNEXPECTED_MESSAGE                         244
- # define SSL_R_UNEXPECTED_RECORD                          245
- # define SSL_R_UNINITIALIZED                              276
-diff --git a/ssl/record/rec_layer_s3.c b/ssl/record/rec_layer_s3.c
-index 1c885a664f..b2a7a47eb0 100644
---- a/ssl/record/rec_layer_s3.c
-+++ b/ssl/record/rec_layer_s3.c
-@@ -296,12 +296,6 @@ int ssl3_read_n(SSL *s, size_t n, size_t max, int extend, int clearold,
-             ret = BIO_read(s->rbio, pkt + len + left, max - left);
-             if (ret >= 0)
-                 bioread = ret;
--            if (ret <= 0
--                    && !BIO_should_retry(s->rbio)
--                    && BIO_eof(s->rbio)) {
--                SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_READ_N,
--                         SSL_R_UNEXPECTED_EOF_WHILE_READING);
--            }
-         } else {
-             SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_READ_N,
-                      SSL_R_READ_BIO_NOT_SET);
-diff --git a/ssl/ssl_err.c b/ssl/ssl_err.c
-index a0c7b79659..4b12ed1485 100644
---- a/ssl/ssl_err.c
-+++ b/ssl/ssl_err.c
-@@ -1,6 +1,6 @@
- /*
-  * Generated by util/mkerr.pl DO NOT EDIT
-- * Copyright 1995-2020 The OpenSSL Project Authors. All Rights Reserved.
-+ * Copyright 1995-2019 The OpenSSL Project Authors. All Rights Reserved.
-  *
-  * Licensed under the OpenSSL license (the "License").  You may not use
-  * this file except in compliance with the License.  You can obtain a copy
-@@ -1205,8 +1205,6 @@ static const ERR_STRING_DATA SSL_str_reasons[] = {
-     "unexpected ccs message"},
-     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_END_OF_EARLY_DATA),
-     "unexpected end of early data"},
--    {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_EOF_WHILE_READING),
--    "unexpected eof while reading"},
-     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_MESSAGE), "unexpected message"},
-     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_RECORD), "unexpected record"},
-     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNINITIALIZED), "uninitialized"},

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
