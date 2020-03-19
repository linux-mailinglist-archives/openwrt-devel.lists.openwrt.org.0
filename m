Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B9418C029
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Mar 2020 20:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGaAPMoa9xRbSHLknyrN0KtRWuWwpNUsYsvYVmy+yvE=; b=NBmP6bv7ueqF6v
	KwwzgxsCMw56WWlbd39z8NmYJU5z5bsbSWfuj0WtdI2+z+VRvyIvmVA6JV6TJorCscvSHSfMF/waH
	wRfS8CYfstHgxGkPqyEqcHd3Iyjg6JHG/sLEYoNKFphWmQjyBb5NhoZdQ3Iqa5fKMrlDMSy0kc4Mq
	tT0vxtgVs6Jy19/022+S8qFWJ4dWtF4buCrXwub64uas4Wz3Mq4cPO6/iNHMfsg51uoQ3zGl9qzHG
	0xlczCqwtrigFbspkT4qmOErPN4+u6hrM21BtDQqPGqcqZ3JNBbfkRyu/cKWBjMXmD0Q8Q19vBEQ/
	ycUYufyYTT0PPncuV+bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF0b9-0004FR-Tg; Thu, 19 Mar 2020 19:12:56 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF0al-0003t3-5f
 for openwrt-devel@lists.openwrt.org; Thu, 19 Mar 2020 19:12:33 +0000
Received: by mail-qv1-xf44.google.com with SMTP id n1so1663582qvz.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 19 Mar 2020 12:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jy/s/koHOntxfQ8K9s5+0q4F/D5WQmNA0oiTHirmysU=;
 b=Rjk2K4LMjzJpR63bBxk1NNpNVoRdCxLlsN5WS41hSRLKqxTrvCoRjcBxVK1AAXgJan
 Lcm50DbkB4DNqKMgoB1AvZ5BPwjFuBnNCN2I1z8rbwBncBCQjiHpCiw6KXIONV+Yb90V
 N6RCnZJ/tFDrNxSFK1ZfnDA2kRn/RgwrqbaCey72F7Ev/a+yrHchFWaoV/aNT/o3Au/m
 kJFIxrpj583aDtHJ4GC58w69XlhAWCRpHgIU/iGkJ37G5PkNJyHBi8DxbXXOuKEC607J
 5eVdetogQjMxJ6+hKLcFAWaE1RbvNKM5kLosZoFo91/431jiVfwMCOznF6V4+MucyOU4
 bTCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jy/s/koHOntxfQ8K9s5+0q4F/D5WQmNA0oiTHirmysU=;
 b=TQNjfM6P8/C9MbCQjSMD9YmHGH4y/Bpg/2OR6LD51hKlOHJ0atD6qoc+NEcumDjK0k
 07ncpNPutxusEfvkYaKpdlLP7+jOdx40RzWhqMChZ3eHEy2bAH8f1tfUSEfb0StHlw4N
 Z2CgDLWmofHNzrqn9UbE2w2/sZgZF3yJCq+VoTMlmZ4t73FfsbKO1i5YutdMVLh/38wK
 tWkNdEydiAxG+vFso6jgpteYPHGIXfoExJ9BxBSpcLMyQ+w//7pJq3zqIBWtk02Wl9W0
 ZKWy6rkiFNSh48dQ21XXOc6AZJu1Vzn4QH4WbeBXBH+hyh4mfo0/UHyzPEuqfQz6uQ59
 WhHQ==
X-Gm-Message-State: ANhLgQ2QLVq83vqK/rz6YAG1RTb2SfvgkKYesAA3eXVflmkPW6KFY447
 yQwQNQuyV848kxAdhit0a3sBGvZtzA4=
X-Google-Smtp-Source: ADFU+vtgQy1oALUjH8bohcJPQktH8flN/0JIWkKb1wbYaaZaNPKlj5lvqd96LvpuMKSweWbPhGajLw==
X-Received: by 2002:a05:6214:a73:: with SMTP id
 ef19mr4499093qvb.98.1584645149407; 
 Thu, 19 Mar 2020 12:12:29 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id w204sm2112481qkb.133.2020.03.19.12.12.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 12:12:28 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Mar 2020 16:12:15 -0300
Message-Id: <20200319191215.30710-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200319191215.30710-1-cotequeiroz@gmail.com>
References: <20200319191215.30710-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_121231_216490_828FCADE 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/2] openssl: update to 1.1.1e
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

This version includes bug and security fixes, including medium-severity
CVE-2019-1551, affecting RSA1024, RSA1536, DSA1024 & DH512 on x86_64.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index ca393be88f..353ae453f5 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -9,9 +9,9 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssl
 PKG_BASE:=1.1.1
-PKG_BUGFIX:=d
+PKG_BUGFIX:=e
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=3
+PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
@@ -24,7 +24,7 @@ PKG_SOURCE_URL:= \
 	ftp://ftp.pca.dfn.de/pub/tools/net/openssl/source/ \
 	http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/
-PKG_HASH:=1e3a91bc1f9dfce01af26026f856e064eab4c8ee0a8f457b5ae30b40b8b711f2
+PKG_HASH:=694f61ac11cb51c9bf73f54e771ff6022b0327a43bbdfa1b2f19de1662a6dcbe
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
diff --git a/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch b/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch
index ee33942426..71dc5bf99b 100644
--- a/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch
+++ b/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch
@@ -1,4 +1,4 @@
-From f3cef70b34afde3afd13ce3636232d41533b0162 Mon Sep 17 00:00:00 2001
+From 0000000000000000000000000000000000000000 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Tue, 6 Nov 2018 10:57:03 -0200
 Subject: e_devcrypto: make the /dev/crypto engine dynamic
@@ -20,7 +20,7 @@ index e00802a3fd..47fe948966 100644
 -  SOURCE[../../libcrypto]=eng_devcrypto.c
 -ENDIF
 diff --git a/crypto/init.c b/crypto/init.c
-index 9fc0e8ef68..b387559920 100644
+index 1b0d523bea..ee3e2eb075 100644
 --- a/crypto/init.c
 +++ b/crypto/init.c
 @@ -329,18 +329,6 @@ DEFINE_RUN_ONCE_STATIC(ossl_init_engine_openssl)
@@ -116,7 +116,7 @@ diff --git a/crypto/engine/eng_devcrypto.c b/engines/e_devcrypto.c
 similarity index 95%
 rename from crypto/engine/eng_devcrypto.c
 rename to engines/e_devcrypto.c
-index 64dc6b891d..fb5c6e1636 100644
+index 0d420e50aa..3fcd81de7a 100644
 --- a/crypto/engine/eng_devcrypto.c
 +++ b/engines/e_devcrypto.c
 @@ -7,7 +7,7 @@
@@ -128,15 +128,7 @@ index 64dc6b891d..fb5c6e1636 100644
  #include <string.h>
  #include <sys/types.h>
  #include <sys/stat.h>
-@@ -23,26 +23,26 @@
- #include <openssl/objects.h>
- #include <crypto/cryptodev.h>
- 
--#include "internal/engine.h"
--
- /* #define ENGINE_DEVCRYPTO_DEBUG */
- 
- #if CRYPTO_ALGORITHM_MIN < CRYPTO_ALGORITHM_MAX
+@@ -31,18 +31,20 @@
  # define CHECK_BSD_STYLE_MACROS
  #endif
  
@@ -160,18 +152,7 @@ index 64dc6b891d..fb5c6e1636 100644
  
  /*
   * cipher/digest status & acceleration definitions
-@@ -66,6 +66,10 @@ struct driver_info_st {
-     char *driver_name;
- };
- 
-+#ifdef OPENSSL_NO_DYNAMIC_ENGINE
-+void engine_load_devcrypto_int(void);
-+#endif
-+
- static int clean_devcrypto_session(struct session_op *sess) {
-     if (ioctl(cfd, CIOCFSESSION, &sess->ses) < 0) {
-         SYSerr(SYS_F_IOCTL, errno);
-@@ -341,6 +345,7 @@ static int cipher_ctrl(EVP_CIPHER_CTX *ctx, int type, int p1, void* p2)
+@@ -341,6 +343,7 @@ static int cipher_ctrl(EVP_CIPHER_CTX *ctx, int type, int p1, void* p2)
      struct cipher_ctx *to_cipher_ctx;
  
      switch (type) {
@@ -179,7 +160,7 @@ index 64dc6b891d..fb5c6e1636 100644
      case EVP_CTRL_COPY:
          if (cipher_ctx == NULL)
              return 1;
-@@ -702,7 +707,6 @@ static int digest_init(EVP_MD_CTX *ctx)
+@@ -702,7 +705,6 @@ static int digest_init(EVP_MD_CTX *ctx)
          SYSerr(SYS_F_IOCTL, errno);
          return 0;
      }
@@ -187,7 +168,7 @@ index 64dc6b891d..fb5c6e1636 100644
      return 1;
  }
  
-@@ -1058,7 +1062,7 @@ static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
+@@ -1058,7 +1060,7 @@ static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
          OPENSSL_MSTR(DEVCRYPTO_USE_SOFTWARE) "=allow all drivers, "
          OPENSSL_MSTR(DEVCRYPTO_REJECT_SOFTWARE)
          "=use if acceleration can't be determined) [default="
@@ -196,7 +177,7 @@ index 64dc6b891d..fb5c6e1636 100644
      ENGINE_CMD_FLAG_NUMERIC},
  #endif
  
-@@ -1166,55 +1170,70 @@ static int devcrypto_ctrl(ENGINE *e, int cmd, long i, void *p, void (*f) (void))
+@@ -1166,55 +1168,70 @@ static int devcrypto_ctrl(ENGINE *e, int cmd, long i, void *p, void (*f) (void))
   *
   *****/
  
@@ -284,12 +265,12 @@ index 64dc6b891d..fb5c6e1636 100644
 -        || !ENGINE_set_ctrl_function(e, devcrypto_ctrl)
 +        || !ENGINE_set_ctrl_function(e, devcrypto_ctrl))
 +        return 0;
-+
+ 
 +    prepare_cipher_methods();
 +#ifdef IMPLEMENT_DIGEST
 +    prepare_digest_methods();
 +#endif
- 
++
 +    return (ENGINE_set_ciphers(e, devcrypto_ciphers)
 +#ifdef IMPLEMENT_DIGEST
 +        && ENGINE_set_digests(e, devcrypto_digests)
@@ -297,7 +278,7 @@ index 64dc6b891d..fb5c6e1636 100644
  /*
   * Asymmetric ciphers aren't well supported with /dev/crypto.  Among the BSD
   * implementations, it seems to only exist in FreeBSD, and regarding the
-@@ -1237,23 +1256,36 @@ void engine_load_devcrypto_int()
+@@ -1237,23 +1254,36 @@ void engine_load_devcrypto_int()
   */
  #if 0
  # ifndef OPENSSL_NO_RSA
@@ -343,7 +324,7 @@ index 64dc6b891d..fb5c6e1636 100644
          ENGINE_free(e);
          return;
      }
-@@ -1262,3 +1294,22 @@ void engine_load_devcrypto_int()
+@@ -1262,3 +1292,22 @@ void engine_load_devcrypto_int()
      ENGINE_free(e);          /* Loose our local reference */
      ERR_clear_error();
  }
diff --git a/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch b/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch
index 89385fa477..1f1cd7a582 100644
--- a/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch
+++ b/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch
@@ -1,4 +1,4 @@
-From 52ddedc09ee81fe05ea2fa384fce89afe92d6d72 Mon Sep 17 00:00:00 2001
+From 0000000000000000000000000000000000000000 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Mon, 11 Mar 2019 09:29:13 -0300
 Subject: e_devcrypto: default to not use digests in engine
@@ -20,10 +20,10 @@ turn them on if it is safe and fast enough.
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
 diff --git a/engines/e_devcrypto.c b/engines/e_devcrypto.c
-index fb5c6e1636..7741138b82 100644
+index 3fcd81de7a..d25230d366 100644
 --- a/engines/e_devcrypto.c
 +++ b/engines/e_devcrypto.c
-@@ -854,7 +854,7 @@ static void prepare_digest_methods(void)
+@@ -852,7 +852,7 @@ static void prepare_digest_methods(void)
      for (i = 0, known_digest_nids_amount = 0; i < OSSL_NELEM(digest_data);
           i++) {
  
@@ -32,7 +32,7 @@ index fb5c6e1636..7741138b82 100644
  
          /*
           * Check that the digest is usable
-@@ -1074,7 +1074,7 @@ static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
+@@ -1072,7 +1072,7 @@ static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
  #ifdef IMPLEMENT_DIGEST
     {DEVCRYPTO_CMD_DIGESTS,
      "DIGESTS",
diff --git a/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch b/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch
index 087994376d..bc514b88c9 100644
--- a/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch
+++ b/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch
@@ -1,4 +1,4 @@
-From b6b2744f06f64922b449b3cb4bf0ad3df3efba71 Mon Sep 17 00:00:00 2001
+From 0000000000000000000000000000000000000000 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Mon, 11 Mar 2019 10:15:14 -0300
 Subject: e_devcrypto: ignore error when closing session
@@ -9,10 +9,10 @@ session.  It may have been closed by another process after a fork.
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
 diff --git a/engines/e_devcrypto.c b/engines/e_devcrypto.c
-index 7741138b82..2480bdbd57 100644
+index d25230d366..f4570f1666 100644
 --- a/engines/e_devcrypto.c
 +++ b/engines/e_devcrypto.c
-@@ -197,9 +197,8 @@ static int cipher_init(EVP_CIPHER_CTX *ctx, const unsigned char *key,
+@@ -195,9 +195,8 @@ static int cipher_init(EVP_CIPHER_CTX *ctx, const unsigned char *key,
          get_cipher_data(EVP_CIPHER_CTX_nid(ctx));
  
      /* cleanup a previous session */

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
