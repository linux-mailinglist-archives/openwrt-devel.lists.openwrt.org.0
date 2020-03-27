Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8D4194ED6
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 03:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yZJDYH8MLNZzlRMOpUxTe2KxE8h4xudTRTqPWxvc+8=; b=EjBWz0XG8kddrl
	+rHRYv6h20QmMfxIjZ0B9qcdlvk7VN6cbCu/cQBQn8eq8lXz2AigENBxBCuFtmL3P+xQ82yMk9CgB
	uOqD1Bfbfbz+ZXhqKrQmxW6XyzkYCrEswH2HDPa6RAooi7CVim0VHhIq21TXris6QBiylWXWMD8G6
	eaYRvjLwnibPjhXdY4ZW5Kjhlbid9xs6e+TsTb6WjiJPFwhN32xaroVzsKjQiVRBUSz4MzqQ/Ul+Z
	AVlWmUT48Y1dSra+WiqAYdxdPW88qn1pRnnxWuuz54fJMjnZ5Zf6mwfL5bap4UGvThStpsGSvLSEm
	t4j8mBYLfgbskADctmfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHebv-0004Eq-0x; Fri, 27 Mar 2020 02:20:39 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHebd-00048e-H9
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 02:20:23 +0000
Received: by mail-qt1-x830.google.com with SMTP id m33so7442262qtb.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 19:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bc0F2S8zcyYh6WckylqizBCexoyH0Tg4G21Ww8hXB04=;
 b=S9CXdtQw2Gfy8XBM2LkPpcgFSpre/mDHicv9fl9zR7qabfXE5kghoJh8Lf5EIJaB44
 S14WvQkb9iDZCz7WkB/bENV7WD/6LYgXYE1XGEHSiYDpNdk5QnV+dvy06bcajqM+Vckd
 ywML/D/Q0nvTby1Qjcii92foTflcMFFdPbRDHdwH01Jx/3F4SIe3DsnwjHCuFNc6SawU
 KSKH7PU86cgYiFekL86rzcrG4ndcF0dQPHgJmSj/MM4JyGvlpdKCtQP5kdG8/QcA1NVM
 GsxiJAKCrHXV7se6+8eJWVbd7hQHNEoCDArXhpfr0qKHvCqdUzpwgRE4tH2USZOEPUqF
 MA3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bc0F2S8zcyYh6WckylqizBCexoyH0Tg4G21Ww8hXB04=;
 b=bPaXONhpA9E6oiqs4xv9+HCLh61dP9zYBJb+fLRBW6sb5iAGjeaC0wcTGVzNxwY7YL
 33bOjR0Lfx4ojg9Ak1XJzoBgQHvBlxpalI/lwUixWg9OreZMSIXWL5UM0F/+/JrI3l/T
 e9rdzNYgPK5gvvh2dmz5kMnpf/n7i99SflzTsLBxTmfeHn/cPjN3EkLI2ZAQQvMbqSQv
 0acNsa3nfKk/mVtT38TQINEvWhKh/3gUyLvTxQXmOdRNBF7CJ2UN5eZP/U20zbwNDr8K
 7S+OZV7VNGGJbU7U4F4smA+k+8P3JkKyeiDX3Y6ustFyKjp+IJ453qB7KTGBPjsbqIG9
 qM/g==
X-Gm-Message-State: ANhLgQ2rW7o4IJ98S5rit6d5CAHKzxRf0TMqQU8f9JpDaZdAzOu2aqLL
 n1hTddDm4ojAYIg+SzfeRntxyvXuDVM=
X-Google-Smtp-Source: ADFU+vtFft6hoXSHuiV3CmuM7TC2Hifo5fyAl68xdtnGaNZWAmY+pM+2+1UMmq2u2q+fJHTDDc8ing==
X-Received: by 2002:ac8:4e84:: with SMTP id 4mr12195921qtp.353.1585275618775; 
 Thu, 26 Mar 2020 19:20:18 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id q34sm2885630qtb.41.2020.03.26.19.20.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 19:20:18 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Mar 2020 23:20:08 -0300
Message-Id: <20200327022008.18016-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200327022008.18016-1-cotequeiroz@gmail.com>
References: <20200327022008.18016-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_192021_569235_11BED1DC 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:830 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/1] openssl: revert EOF detection change in
 1.1.1
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

This adds patches to avoid possible application breakage caused by a
change in behavior introduced in 1.1.1e.  It affects at least nginx,
which logs error messages such as:
nginx[16652]: [crit] 16675#0: *358 SSL_read() failed (SSL: error:
4095126:SSL routines:ssl3_read_n:unexpected eof while reading) while
keepalive, client: xxxx, server: [::]:443

Openssl commits db943f4 (Detect EOF while reading in libssl), and
22623e0 (Teach more BIOs how to handle BIO_CTRL_EOF) changed the
behavior when encountering an EOF in SSL_read().  Previous behavior was
to return SSL_ERROR_SYSCALL, but errno would still be 0.  The commits
being reverted changed it to SSL_ERRO_SSL, and add an error to the
stack, which is correct.  Unfortunately this affects a number of
applications that counted on the old behavior, including nginx.

The reversion was discussed in openssl/openssl#11378, and implemented as
PR openssl/openssl#11400.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 353ae453f5..ca45549800 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -11,7 +11,7 @@ PKG_NAME:=openssl
 PKG_BASE:=1.1.1
 PKG_BUGFIX:=e
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
diff --git a/package/libs/openssl/patches/200-Partially-revert-Detect-EOF-while-reading-in-libssl.patch b/package/libs/openssl/patches/200-Partially-revert-Detect-EOF-while-reading-in-libssl.patch
new file mode 100644
index 0000000000..c269dff07c
--- /dev/null
+++ b/package/libs/openssl/patches/200-Partially-revert-Detect-EOF-while-reading-in-libssl.patch
@@ -0,0 +1,80 @@
+From 30d190caf311d534867df97e26b552e628cb7d85 Mon Sep 17 00:00:00 2001
+From: Tomas Mraz <tmraz@fedoraproject.org>
+Date: Wed, 25 Mar 2020 14:15:31 +0100
+Subject: [PATCH] Partially revert "Detect EOF while reading in libssl"
+
+This partially reverts commit db943f43a60d1b5b1277e4b5317e8f288e7a0a3a.
+
+Reviewed-by: Matt Caswell <matt@openssl.org>
+(Merged from https://github.com/openssl/openssl/pull/11400)
+
+diff --git a/crypto/err/openssl.txt b/crypto/err/openssl.txt
+index f5324c6819..35512f9caf 100644
+--- a/crypto/err/openssl.txt
++++ b/crypto/err/openssl.txt
+@@ -2852,7 +2852,6 @@ SSL_R_UNABLE_TO_LOAD_SSL3_MD5_ROUTINES:242:unable to load ssl3 md5 routines
+ SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES:243:unable to load ssl3 sha1 routines
+ SSL_R_UNEXPECTED_CCS_MESSAGE:262:unexpected ccs message
+ SSL_R_UNEXPECTED_END_OF_EARLY_DATA:178:unexpected end of early data
+-SSL_R_UNEXPECTED_EOF_WHILE_READING:294:unexpected eof while reading
+ SSL_R_UNEXPECTED_MESSAGE:244:unexpected message
+ SSL_R_UNEXPECTED_RECORD:245:unexpected record
+ SSL_R_UNINITIALIZED:276:uninitialized
+diff --git a/include/openssl/sslerr.h b/include/openssl/sslerr.h
+index 0ef684f3c1..ba4c4ae5fb 100644
+--- a/include/openssl/sslerr.h
++++ b/include/openssl/sslerr.h
+@@ -1,6 +1,6 @@
+ /*
+  * Generated by util/mkerr.pl DO NOT EDIT
+- * Copyright 1995-2020 The OpenSSL Project Authors. All Rights Reserved.
++ * Copyright 1995-2019 The OpenSSL Project Authors. All Rights Reserved.
+  *
+  * Licensed under the OpenSSL license (the "License").  You may not use
+  * this file except in compliance with the License.  You can obtain a copy
+@@ -734,7 +734,6 @@ int ERR_load_SSL_strings(void);
+ # define SSL_R_UNABLE_TO_LOAD_SSL3_SHA1_ROUTINES          243
+ # define SSL_R_UNEXPECTED_CCS_MESSAGE                     262
+ # define SSL_R_UNEXPECTED_END_OF_EARLY_DATA               178
+-# define SSL_R_UNEXPECTED_EOF_WHILE_READING               294
+ # define SSL_R_UNEXPECTED_MESSAGE                         244
+ # define SSL_R_UNEXPECTED_RECORD                          245
+ # define SSL_R_UNINITIALIZED                              276
+diff --git a/ssl/record/rec_layer_s3.c b/ssl/record/rec_layer_s3.c
+index 1c885a664f..b2a7a47eb0 100644
+--- a/ssl/record/rec_layer_s3.c
++++ b/ssl/record/rec_layer_s3.c
+@@ -296,12 +296,6 @@ int ssl3_read_n(SSL *s, size_t n, size_t max, int extend, int clearold,
+             ret = BIO_read(s->rbio, pkt + len + left, max - left);
+             if (ret >= 0)
+                 bioread = ret;
+-            if (ret <= 0
+-                    && !BIO_should_retry(s->rbio)
+-                    && BIO_eof(s->rbio)) {
+-                SSLfatal(s, SSL_AD_DECODE_ERROR, SSL_F_SSL3_READ_N,
+-                         SSL_R_UNEXPECTED_EOF_WHILE_READING);
+-            }
+         } else {
+             SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_READ_N,
+                      SSL_R_READ_BIO_NOT_SET);
+diff --git a/ssl/ssl_err.c b/ssl/ssl_err.c
+index a0c7b79659..4b12ed1485 100644
+--- a/ssl/ssl_err.c
++++ b/ssl/ssl_err.c
+@@ -1,6 +1,6 @@
+ /*
+  * Generated by util/mkerr.pl DO NOT EDIT
+- * Copyright 1995-2020 The OpenSSL Project Authors. All Rights Reserved.
++ * Copyright 1995-2019 The OpenSSL Project Authors. All Rights Reserved.
+  *
+  * Licensed under the OpenSSL license (the "License").  You may not use
+  * this file except in compliance with the License.  You can obtain a copy
+@@ -1205,8 +1205,6 @@ static const ERR_STRING_DATA SSL_str_reasons[] = {
+     "unexpected ccs message"},
+     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_END_OF_EARLY_DATA),
+     "unexpected end of early data"},
+-    {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_EOF_WHILE_READING),
+-    "unexpected eof while reading"},
+     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_MESSAGE), "unexpected message"},
+     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNEXPECTED_RECORD), "unexpected record"},
+     {ERR_PACK(ERR_LIB_SSL, 0, SSL_R_UNINITIALIZED), "uninitialized"},

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
