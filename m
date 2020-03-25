Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EAB191EF9
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 03:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8J3aAUkxKZ2k3or7Ssqp4K4q3ldE96ftq/gVSU5BAk=; b=crkzcJ1vcLfvAk
	2GYeApUwzC4A96ryCoE1NP2dYsCjkzMIC4K57bstjPBMxKM8FjAPhxzCsFrMTzmE1LJGkAaV7J4ej
	xqK7aF11bU65zTz5637lwbTjWRG7e82yO8hPPbm8wEmciMHO4eWmX7mMDBACvZ925z6Zbq4hnh0Uq
	fD3AkAbsz7eFtKrCCnJOCTQUYvHGAcpBp8jZ11dgpD8sfHeSxN/5Vgoie3otSvSFc4eMapqEBhZFG
	DDhtWfvW7k8qKkbAcVOwdgyOGtBdkyWLwJiASwJT5puVrKWPYZgP2hxMQTPHXCp54Wnmd1yf6qobW
	WRvul/9yIZYnPv4fyp3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGviT-00005i-Oj; Wed, 25 Mar 2020 02:24:25 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGviG-0008U7-St
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 02:24:14 +0000
Received: by mail-qk1-x744.google.com with SMTP id j4so981103qkc.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 19:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DQmvwFsadLH97bl3NFQNQfYbi9N9r0wp/khQWRgvDe4=;
 b=Xa2J+B5139Ys1fXs2XDuqaNJrA6Iw+rZ+E32G3w+MO3WUjfamhb5RI8Dazfm9ax1tM
 oiphAM5Nyngg1IhoU5NHOQTXq2CeJMMupDi8fGiPHqhR83YOUF895TZBcDT2HmucydHv
 C5uQgcBXe8GOHUrCDvDltBVZDDPvswUqiyZFIgdMw/xHEnH2ij5SAdB5pK/xmyHuTnQF
 BOmAuNkpxGk/dVv07MTjXSQv2XJfDzoPD3FFufJKdiz9MSYxYsaw0Yeav+989Gxaog2l
 8BS9YlWcI5ldbseMZ5X+rNnVhySvvwLaoNr15odVxYuWztqT8cWKZblTVOHzCsw/TiCe
 1fAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DQmvwFsadLH97bl3NFQNQfYbi9N9r0wp/khQWRgvDe4=;
 b=lZuSYXY9S43kyBuE76Ay9GbaTHPLkcTqI5L2UNp/QCXhcoMHSXLF5Ut+U/TmA0a0Ax
 iH/vYSzOPfFRLp1DJo1SxK6alztdWpzN1+IScCkzaxTE4IdKWDBXlWUGGcHwMjbkApfR
 +AuRavSWuo9vkIi/D3grLRtp1y8A5E8vuL2k20kp/eBmIrbDYofOnBzWiIsmQrZlaIM4
 EY76JgkCkVbTzl9ZXw+FoUqmuG6X8ZD+YfjnIBJ2bRll7tIatPH2ahJ3Vq8bwL/b9+qQ
 krn2xQ9KWiOzE/D5V+5emPyFdxv8eJrD4iCjs2B6zqLC4PtupjUl1iIKvFxVq2ysMxBA
 Y4+A==
X-Gm-Message-State: ANhLgQ08uwbazMGBacXIS3+xq+DtOXTgLIBPx8Zn+afWWWENPBR+Tc94
 b+ZslylEjFARevZ9XuV3uLbWL+Ar9RI=
X-Google-Smtp-Source: ADFU+vvgooIeUPlDDQaiJTRcBDr5I+JN/5Q3JMV6TKODJinviWNC5qGchyn9LpE8En/vBtjJSygfAg==
X-Received: by 2002:a05:620a:14e:: with SMTP id
 e14mr905563qkn.16.1585103051191; 
 Tue, 24 Mar 2020 19:24:11 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id t43sm16072705qtc.14.2020.03.24.19.24.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 19:24:10 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 23:23:28 -0300
Message-Id: <20200325022328.20995-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200325022328.20995-1-cotequeiroz@gmail.com>
References: <20200325022328.20995-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_192412_943522_101EED5C 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFC PATCH 1/1] openssl: revert EOF detection
 change in 1.1.1
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

This adds patches to fix errors in nginx session resumption, and logging
messages such as:
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

Currently, openssl is discussing what to do, but leaning towards
reverting the commits in 1.1.1, while making the change for the next
release.

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
 
diff --git a/package/libs/openssl/patches/200-Revert-Detect-EOF-while-reading-in-libssl.patch b/package/libs/openssl/patches/200-Revert-Detect-EOF-while-reading-in-libssl.patch
new file mode 100644
index 0000000000..307a0980e3
--- /dev/null
+++ b/package/libs/openssl/patches/200-Revert-Detect-EOF-while-reading-in-libssl.patch
@@ -0,0 +1,112 @@
+From 0000000000000000000000000000000000000000 Mon Sep 17 00:00:00 2001
+From: Eneas U de Queiroz <cotequeiroz@gmail.com>
+Date: Tue, 24 Mar 2020 22:09:01 -0300
+Subject: [PATCH] Revert "Detect EOF while reading in libssl"
+
+This reverts commit db943f43a60d1b5b1277e4b5317e8f288e7a0a3a.
+
+diff --git a/crypto/bio/bss_sock.c b/crypto/bio/bss_sock.c
+index 6251f3d46a..a3d34daab3 100644
+--- a/crypto/bio/bss_sock.c
++++ b/crypto/bio/bss_sock.c
+@@ -101,8 +101,6 @@ static int sock_read(BIO *b, char *out, int outl)
+         if (ret <= 0) {
+             if (BIO_sock_should_retry(ret))
+                 BIO_set_retry_read(b);
+-            else if (ret == 0)
+-                b->flags |= BIO_FLAGS_IN_EOF;
+         }
+     }
+     return ret;
+@@ -153,9 +151,6 @@ static long sock_ctrl(BIO *b, int cmd, long num, void *ptr)
+     case BIO_CTRL_FLUSH:
+         ret = 1;
+         break;
+-    case BIO_CTRL_EOF:
+-        ret = (b->flags & BIO_FLAGS_IN_EOF) != 0 ? 1 : 0;
+-        break;
+     default:
+         ret = 0;
+         break;
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
+diff --git a/include/openssl/bio.h b/include/openssl/bio.h
+index ae559a5105..250aecba27 100644
+--- a/include/openssl/bio.h
++++ b/include/openssl/bio.h
+@@ -169,7 +169,6 @@ extern "C" {
+  */
+ # define BIO_FLAGS_MEM_RDONLY    0x200
+ # define BIO_FLAGS_NONCLEAR_RST  0x400
+-# define BIO_FLAGS_IN_EOF        0x800
+ 
+ typedef union bio_addr_st BIO_ADDR;
+ typedef struct bio_addrinfo_st BIO_ADDRINFO;
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
diff --git a/package/libs/openssl/patches/210-Revert-Teach-more-BIOs-how-to-handle-BIO_CTRL_EOF.patch b/package/libs/openssl/patches/210-Revert-Teach-more-BIOs-how-to-handle-BIO_CTRL_EOF.patch
new file mode 100644
index 0000000000..2adde6f41d
--- /dev/null
+++ b/package/libs/openssl/patches/210-Revert-Teach-more-BIOs-how-to-handle-BIO_CTRL_EOF.patch
@@ -0,0 +1,71 @@
+From 0000000000000000000000000000000000000000 Mon Sep 17 00:00:00 2001
+From: Eneas U de Queiroz <cotequeiroz@gmail.com>
+Date: Tue, 24 Mar 2020 22:16:06 -0300
+Subject: [PATCH] Revert "Teach more BIOs how to handle BIO_CTRL_EOF"
+
+This reverts commit 22623e0cc26a11908253206a721873d4101cd466.
+
+diff --git a/crypto/bio/bss_acpt.c b/crypto/bio/bss_acpt.c
+index b38e47a592..f0272ef32f 100644
+--- a/crypto/bio/bss_acpt.c
++++ b/crypto/bio/bss_acpt.c
+@@ -527,12 +527,7 @@ static long acpt_ctrl(BIO *b, int cmd, long num, void *ptr)
+         break;
+     case BIO_CTRL_DUP:
+         break;
+-    case BIO_CTRL_EOF:
+-        if (b->next_bio == NULL)
+-            ret = 0;
+-        else
+-            ret = BIO_ctrl(b->next_bio, cmd, num, ptr);
+-        break;
++
+     default:
+         ret = 0;
+         break;
+diff --git a/crypto/bio/bss_conn.c b/crypto/bio/bss_conn.c
+index dd43a40601..84b9520328 100644
+--- a/crypto/bio/bss_conn.c
++++ b/crypto/bio/bss_conn.c
+@@ -316,8 +316,6 @@ static int conn_read(BIO *b, char *out, int outl)
+         if (ret <= 0) {
+             if (BIO_sock_should_retry(ret))
+                 BIO_set_retry_read(b);
+-            else if (ret == 0)
+-                b->flags |= BIO_FLAGS_IN_EOF;
+         }
+     }
+     return ret;
+@@ -497,9 +495,6 @@ static long conn_ctrl(BIO *b, int cmd, long num, void *ptr)
+             *fptr = data->info_callback;
+         }
+         break;
+-    case BIO_CTRL_EOF:
+-        ret = (b->flags & BIO_FLAGS_IN_EOF) != 0 ? 1 : 0;
+-        break;
+     default:
+         ret = 0;
+         break;
+diff --git a/crypto/bio/bss_fd.c b/crypto/bio/bss_fd.c
+index ccbe1626ba..31d5241e6a 100644
+--- a/crypto/bio/bss_fd.c
++++ b/crypto/bio/bss_fd.c
+@@ -123,8 +123,6 @@ static int fd_read(BIO *b, char *out, int outl)
+         if (ret <= 0) {
+             if (BIO_fd_should_retry(ret))
+                 BIO_set_retry_read(b);
+-            else if (ret == 0)
+-                b->flags |= BIO_FLAGS_IN_EOF;
+         }
+     }
+     return ret;
+@@ -188,9 +186,6 @@ static long fd_ctrl(BIO *b, int cmd, long num, void *ptr)
+     case BIO_CTRL_FLUSH:
+         ret = 1;
+         break;
+-    case BIO_CTRL_EOF:
+-        ret = (b->flags & BIO_FLAGS_IN_EOF) != 0 ? 1 : 0;
+-        break;
+     default:
+         ret = 0;
+         break;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
