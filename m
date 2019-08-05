Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BD082431
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 19:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbTSCTAsFLy7B7vv2Mo0uS0ZiozfHdP+ZoI20m0Nmi8=; b=GyTUF6ffE//GVn
	fQveYmz7agBD/2knWlUmdXXQmeWC2QM3T9YTSWOoddbYi6OrhuoULrywDyv572SzgSg+XlMtkJbZX
	zRiEp0UKzl4YcSaVcdchD46ATtkoyZhYOXGl2zy4H9I4Osurcm5ZX7P8t0ts/6ZSBfLIdgA44xUDz
	/qJd2K+XFYtJ8FN7Qh5QTUD1L1urg3V3XTORwKZQLh22ub1sWyOehSpHIUE1QzigsJSq0wBc12ysN
	Cs8x+BMk52g2hiVO+eP5mbsPPES3Xvf6o7mZ3yPq7DbDQlx+P4YLhqXahIKSI6Txlbs207st91vf+
	Q0mIZFvCuTLmMra2CQAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huh3Z-0006hn-2p; Mon, 05 Aug 2019 17:46:01 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huh3N-0006fU-Kl
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 17:45:52 +0000
Received: by mail-qt1-x82c.google.com with SMTP id l9so81724269qtu.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 10:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wWTOSHvGofSjAziT4vbWKtWXNcN7gzTMMd/Enet6KU8=;
 b=An4n1sN/hjcDoUiu8pWlBgX00APTc7JxJoUkgpLpRo59PI3OVh3110W1b1sKSfdAyl
 Kx6SIESbw8Y4MqyFgJd0fIJAeBDWVFOu6btrfd51s74P4en5tU1m8YJ+UahyhLEkumuh
 zL5B0oG1Z4qH67lU+Iu2FyOLQvI3rmV+ObKyA7w6K5hh25oy0l88Ewr6LT9gG9Ub/jov
 xVmxCQp5i8Gv+yqKK/CQmRRsrmAy2dlwlfbqe6LTCMJsyXWtAOgXnEMl2tbHU61dDNwW
 /eaesZA3OHhdep7KPvBa7XsOuOaLmQliXkRoWyzysiTdYkXmJqipuHFVc/o68Qjn6npO
 pdBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wWTOSHvGofSjAziT4vbWKtWXNcN7gzTMMd/Enet6KU8=;
 b=nkS0ET1wZu7IBv+M9FtPVnWlMAu1yrJA6JTZqbVDNk4pgYVdvrelfXV/ziUrmEbPrg
 TdE2ryA3x5b8L60Cq6PHuFNHNy9HwBv4Zt9UvM/4rTqcCa2pYKA6giVHn71zZOT91rNl
 Unc5MyDmq3tE18JrJqKKBxD9kpZJxCqrhdwkFaAaEraSpN6Lp94W0Y0tWqHcu3RSFcS8
 1ac0rUa7Rl0p2lV0KHQz7cSTYsYS+KFnNPQthn/6y0duhq4GKERswSpnEWNZrw91pZ7y
 g8IpFzYZsEtgMkL8eiwc6AAhboujuGEk/dOVrY7UxBapnALS6VIu+YaB5iJxU84KAmKo
 fkSg==
X-Gm-Message-State: APjAAAXtAzXA/S9Ap1K5MEosoTMBk6/ZWSlyEnpdzlsaBhWHH93qHtmj
 YGIlDoCHJSyWwHnk78Z8Lf1DP+C5C9g=
X-Google-Smtp-Source: APXvYqwEd2nIv5Ad3DvWwYHDAUdhFK1HEqcWWI2YApX0VkI2bERnvhoXzGnHbGcilm1KeYPrvN9xMQ==
X-Received: by 2002:a0c:b084:: with SMTP id o4mr110547095qvc.227.1565027147977; 
 Mon, 05 Aug 2019 10:45:47 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id h4sm36435264qkk.39.2019.08.05.10.45.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 10:45:47 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 14:45:41 -0300
Message-Id: <20190805174541.20539-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805144758.3129-1-cotequeiroz@gmail.com>
References: <20190805144758.3129-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_104549_717390_29D407AA 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82c listed in]
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
Subject: [OpenWrt-Devel] [RFC 18.06-alt PATCH 1/1] wolfssl: fixes for
 CVE-2018-16870 & CVE-2019-13628
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

CVE-2018-16870: medium-severity, new variant of the Bleichenbacher
attack to perform downgrade attacks against TLS, which may lead to
leakage of sensible data. Backported from 3.15.7.

CVE-2019-13628 (currently assigned-only): potential leak of nonce sizes
when performing ECDSA signing operations. The leak is considered to be
difficult to exploit but it could potentially be used maliciously to
perform a lattice based timing attack. Backported from 4.1.0.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
This is an alternative to updating 18.06 to 4.1.0, just backporting the
patches.  This has been tested on x86_64 with the package's testsuite,
in addition to regular run-testing on WRT3200ACM, using uhttpd,
uclient-fetch, and curl.

CVE-2019-13628's patch applied cleanly, but the other one needed many
adjustments.

 package/libs/wolfssl/Makefile                 |   5 +-
 ...nstant-time-when-Block-Type-2-messag.patch | 584 ++++++++++++++++++
 .../020-Improve-nonce-use-in-ECC-mulmod.patch | 100 +++
 3 files changed, 687 insertions(+), 2 deletions(-)
 create mode 100644 package/libs/wolfssl/patches/010-Make-RsaUnPad-constant-time-when-Block-Type-2-messag.patch
 create mode 100644 package/libs/wolfssl/patches/020-Improve-nonce-use-in-ECC-mulmod.patch

diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index a01a8949aa..6f29cd668d 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
 PKG_VERSION:=3.15.3-stable
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).zip
 # PKG_SOURCE_URL:=https://www.wolfssl.com/
@@ -21,7 +21,8 @@ PKG_INSTALL:=1
 PKG_USE_MIPS16:=0
 PKG_BUILD_PARALLEL:=1
 PKG_LICENSE:=GPL-2.0+
-PKG_CPE_ID:=cpe:/a:yassl:cyassl
+PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
+PKG_CPE_ID:=cpe:/a:wolfssl:wolfssl
 
 PKG_CONFIG_DEPENDS:=\
 	CONFIG_WOLFSSL_HAS_AES_CCM CONFIG_WOLFSSL_HAS_AES_GCM \
diff --git a/package/libs/wolfssl/patches/010-Make-RsaUnPad-constant-time-when-Block-Type-2-messag.patch b/package/libs/wolfssl/patches/010-Make-RsaUnPad-constant-time-when-Block-Type-2-messag.patch
new file mode 100644
index 0000000000..26ceaef4c5
--- /dev/null
+++ b/package/libs/wolfssl/patches/010-Make-RsaUnPad-constant-time-when-Block-Type-2-messag.patch
@@ -0,0 +1,584 @@
+From 278d54d95de9fa80b4ac9f6dd0f900841114ca8c Mon Sep 17 00:00:00 2001
+From: Sean Parkinson <sean@wolfssl.com>
+Date: Mon, 27 Aug 2018 10:16:40 +1000
+Subject: [PATCH] Make RsaUnPad constant time when Block Type 2 message
+
+(cherry picked from commit ab03f9291b040269ae21d33b9f01529ed8311728)
+[cherry-pick changes]
+Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
+
+diff --git a/src/internal.c b/src/internal.c
+index dfb3a2fe9..4b2477e7a 100644
+--- a/src/internal.c
++++ b/src/internal.c
+@@ -24766,26 +24766,22 @@ static int DoSessionTicket(WOLFSSL* ssl, const byte* input, word32* inOutIdx,
+                          * indistinguishable from correctly formatted RSA blocks
+                          */
+ 
+-                        ret = args->lastErr;
+                         args->lastErr = 0; /* reset */
+ 
+                         /* build PreMasterSecret */
+                         ssl->arrays->preMasterSecret[0] = ssl->chVersion.major;
+                         ssl->arrays->preMasterSecret[1] = ssl->chVersion.minor;
+-                        if (ret == 0 && args->sigSz == SECRET_LEN &&
+-                                                         args->output != NULL) {
++                        if (args->output != NULL) {
+                             XMEMCPY(&ssl->arrays->preMasterSecret[VERSION_SZ],
+-                                &args->output[VERSION_SZ],
+-                                SECRET_LEN - VERSION_SZ);
+-                        }
+-                        else {
+-                            /* preMasterSecret has RNG and version set */
+-                            /* return proper length and ignore error */
+-                            /* error will be caught as decryption error */
+-                            args->sigSz = SECRET_LEN;
+-                            ret = 0;
++                                    &args->output[VERSION_SZ],
++                                    SECRET_LEN - VERSION_SZ);
+                         }
+-
++                        /* preMasterSecret has RNG and version set
++                         * return proper length and ignore error
++                         * error will be caught as decryption error
++                         */
++                        args->sigSz = SECRET_LEN;
++                        ret = 0;
+                         break;
+                     } /* rsa_kea */
+                 #endif /* !NO_RSA */
+diff --git a/src/tls.c b/src/tls.c
+index 9f0c49497..cc985410a 100644
+--- a/src/tls.c
++++ b/src/tls.c
+@@ -1136,12 +1136,12 @@ static int Hmac_UpdateFinal_CT(Hmac* hmac, byte* digest, const byte* in,
+             else if (k < maxLen)
+                 b = in[k - WOLFSSL_TLS_HMAC_INNER_SZ];
+ 
+-            b = ctMaskSel(atEoc, b, 0x80);
++            b = ctMaskSel(atEoc, 0x80, b);
+             b &= ~pastEoc;
+             b &= ~isOutBlock | isEocBlock;
+ 
+             if (j >= blockSz - 8) {
+-                b = ctMaskSel(isOutBlock, b, lenBytes[j - (blockSz - 8)]);
++                b = ctMaskSel(isOutBlock, lenBytes[j - (blockSz - 8)], b);
+             }
+ 
+             hashBlock[j] = b;
+diff --git a/wolfcrypt/src/integer.c b/wolfcrypt/src/integer.c
+index 84290c64f..2e1487061 100644
+--- a/wolfcrypt/src/integer.c
++++ b/wolfcrypt/src/integer.c
+@@ -321,6 +321,17 @@ int mp_to_unsigned_bin (mp_int * a, unsigned char *b)
+   return res;
+ }
+ 
++int mp_to_unsigned_bin_len(mp_int * a, unsigned char *b, int c)
++{
++    int i, len;
++
++    len = mp_unsigned_bin_size(a);
++
++    /* pad front w/ zeros to match length */
++    for (i = 0; i < c - len; i++)
++        b[i] = 0x00;
++    return mp_to_unsigned_bin(a, b + i);
++}
+ 
+ /* creates "a" then copies b into it */
+ int mp_init_copy (mp_int * a, mp_int * b)
+diff --git a/wolfcrypt/src/misc.c b/wolfcrypt/src/misc.c
+index f5017e356..1460d5164 100644
+--- a/wolfcrypt/src/misc.c
++++ b/wolfcrypt/src/misc.c
+@@ -341,10 +341,22 @@ STATIC INLINE byte ctMaskEq(int a, int b)
+     return 0 - (a == b);
+ }
+ 
+-/* Constant time - select b when mask is set and a otherwise. */
++/* Constant time - mask set when a != b. */
++STATIC INLINE byte ctMaskNotEq(int a, int b)
++{
++    return 0 - (a != b);
++}
++
++/* Constant time - select a when mask is set and b otherwise. */
+ STATIC INLINE byte ctMaskSel(byte m, byte a, byte b)
+ {
+-    return (a & ~m) | (b & m);
++    return (b & ~m) | (a & m);
++}
++
++/* Constant time - select integer a when mask is set and integer b otherwise. */
++STATIC INLINE int ctMaskSelInt(byte m, int a, int b)
++{
++    return (b & (~(int)(char)m)) | (a & ((int)(char)m));
+ }
+ 
+ /* Constant time - bit set when a <= b. */
+diff --git a/wolfcrypt/src/rsa.c b/wolfcrypt/src/rsa.c
+index a4a7adcb0..af0413f1c 100644
+--- a/wolfcrypt/src/rsa.c
++++ b/wolfcrypt/src/rsa.c
+@@ -989,10 +989,8 @@ static int RsaUnPad_OAEP(byte *pkcsBlock, unsigned int pkcsBlockLen,
+     ret += pkcsBlock[idx++] ^ 0x01; /* separator value is 0x01 */
+     ret += pkcsBlock[0]     ^ 0x00; /* Y, the first value, should be 0 */
+ 
+-    if (ret != 0) {
+-        WOLFSSL_MSG("RsaUnPad_OAEP: Padding Error");
+-        return BAD_PADDING_E;
+-    }
++    /* Return 0 data length on error. */
++    idx = ctMaskSelInt(ctMaskEq(ret, 0), idx, pkcsBlockLen);
+ 
+     /* adjust pointer to correct location in array and return size of M */
+     *output = (byte*)(pkcsBlock + idx);
+@@ -1078,48 +1076,60 @@ static int RsaUnPad_PSS(byte *pkcsBlock, unsigned int pkcsBlockLen,
+ /* UnPad plaintext, set start to *output, return length of plaintext,
+  * < 0 on error */
+ static int RsaUnPad(const byte *pkcsBlock, unsigned int pkcsBlockLen,
+-                                               byte **output, byte padValue)
++                    byte **output, byte padValue)
+ {
+-    word32 maxOutputLen = (pkcsBlockLen > 10) ? (pkcsBlockLen - 10) : 0;
+-    word32 invalid = 0;
+-    word32 i = 1;
+-    word32 outputLen;
++    int    ret;
++    word32 i;
++    byte   invalid = 0;
+ 
+     if (output == NULL || pkcsBlockLen == 0) {
+         return BAD_FUNC_ARG;
+     }
+ 
+-    if (pkcsBlock[0] != 0x0) { /* skip past zero */
+-        invalid = 1;
+-    }
+-    pkcsBlock++; pkcsBlockLen--;
++    if (padValue == RSA_BLOCK_TYPE_1) {
++        /* First byte must be 0x00 and Second byte, block type, 0x01 */
++        if (pkcsBlock[0] != 0 || pkcsBlock[1] != RSA_BLOCK_TYPE_1) {
++            WOLFSSL_MSG("RsaUnPad error, invalid formatting");
++            return RSA_PAD_E;
++        }
+ 
+-    /* Require block type padValue */
+-    invalid = (pkcsBlock[0] != padValue) || invalid;
++        /* check the padding until we find the separator */
++        for (i = 2; i < pkcsBlockLen && pkcsBlock[i++] == 0xFF; ) { }
+ 
+-    /* verify the padding until we find the separator */
+-    if (padValue == RSA_BLOCK_TYPE_1) {
+-        while (i<pkcsBlockLen && pkcsBlock[i++] == 0xFF) {/* Null body */}
+-    }
+-    else {
+-        while (i<pkcsBlockLen && pkcsBlock[i++]) {/* Null body */}
+-    }
++        /* Minimum of 11 bytes of pre-message data and must have separator. */
++        if (i < RSA_MIN_PAD_SZ || pkcsBlock[i-1] != 0) {
++            WOLFSSL_MSG("RsaUnPad error, bad formatting");
++            return RSA_PAD_E;
++        }
+ 
+-    if (!(i==pkcsBlockLen || pkcsBlock[i-1]==0)) {
+-        WOLFSSL_MSG("RsaUnPad error, bad formatting");
+-        return RSA_PAD_E;
++        *output = (byte *)(pkcsBlock + i);
++        ret = pkcsBlockLen - i;
+     }
++    else {
++        word32 j;
++        byte   pastSep = 0;
++
++        /* Decrypted with private key - unpad must be constant time. */
++        for (i = 0, j = 2; j < pkcsBlockLen; j++) {
++           /* Update i if not passed the separator and at separator. */
++           i |= (~pastSep) & ctMaskEq(pkcsBlock[j], 0x00) & (j + 1);
++           pastSep |= ctMaskEq(pkcsBlock[j], 0x00);
++        }
+ 
+-    outputLen = pkcsBlockLen - i;
+-    invalid = (outputLen > maxOutputLen) || invalid;
++        /* Minimum of 11 bytes of pre-message data - including leading 0x00. */
++        invalid |= ctMaskLT(i, RSA_MIN_PAD_SZ);
++        /* Must have seen separator. */
++        invalid |= ~pastSep;
++        /* First byte must be 0x00. */
++        invalid |= ctMaskNotEq(pkcsBlock[0], 0x00);
++        /* Check against expected block type: padValue */
++        invalid |= ctMaskNotEq(pkcsBlock[1], padValue);
+ 
+-    if (invalid) {
+-        WOLFSSL_MSG("RsaUnPad error, invalid formatting");
+-        return RSA_PAD_E;
++        *output = (byte *)(pkcsBlock + i);
++        ret = ((int)~invalid) & (pkcsBlockLen - i);
+     }
+ 
+-    *output = (byte *)(pkcsBlock + i);
+-    return outputLen;
++    return ret;
+ }
+ 
+ /* helper function to direct unpadding
+@@ -1249,7 +1259,7 @@ static int wc_RsaFunctionSync(const byte* in, word32 inLen, byte* out,
+     mp_int rnd, rndi;
+ #endif
+     int    ret = 0;
+-    word32 keyLen, len;
++    word32 keyLen;
+ #endif
+ 
+ #ifdef WOLFSSL_HAVE_SP_RSA
+@@ -1308,6 +1318,7 @@ static int wc_RsaFunctionSync(const byte* in, word32 inLen, byte* out,
+     }
+ #endif
+ 
++#ifndef TEST_UNPAD_CONSTANT_TIME
+     if (mp_read_unsigned_bin(&tmp, (byte*)in, inLen) != MP_OKAY)
+         ERROR_OUT(MP_READ_E);
+ 
+@@ -1418,21 +1429,18 @@ static int wc_RsaFunctionSync(const byte* in, word32 inLen, byte* out,
+         ERROR_OUT(RSA_BUFFER_E);
+     }
+ 
+-    len = mp_unsigned_bin_size(&tmp);
+-
+-    /* pad front w/ zeros to match key length */
+-    while (len < keyLen) {
+-        *out++ = 0x00;
+-        len++;
+-    }
+-
+     *outLen = keyLen;
+-
+-    /* convert */
+-    if (mp_to_unsigned_bin(&tmp, out) != MP_OKAY)
++    if (mp_to_unsigned_bin_len(&tmp, out, keyLen) != MP_OKAY)
+         ERROR_OUT(MP_TO_E);
+ 
+ done:
++#else
++    (void)type;
++    (void)key;
++    (void)keyLen;
++    XMEMCPY(out, in, inLen);
++    *outLen = inLen;
++#endif
+     mp_clear(&tmp);
+ #ifdef WC_RSA_BLINDING
+     if (type == RSA_PRIVATE_DECRYPT || type == RSA_PRIVATE_ENCRYPT) {
+@@ -1633,6 +1641,7 @@ int wc_RsaFunction(const byte* in, word32 inLen, byte* out,
+     }
+ #endif
+ 
++#ifndef TEST_UNPAD_CONSTANT_TIME
+ #ifndef NO_RSA_BOUNDS_CHECK
+     if (type == RSA_PRIVATE_DECRYPT &&
+         key->state == RSA_STATE_DECRYPT_EXPTMOD) {
+@@ -1667,6 +1676,7 @@ int wc_RsaFunction(const byte* in, word32 inLen, byte* out,
+             return ret;
+     }
+ #endif /* NO_RSA_BOUNDS_CHECK */
++#endif
+ 
+ #if defined(WOLFSSL_ASYNC_CRYPT) && defined(WC_ASYNC_ENABLE_RSA)
+     if (key->asyncDev.marker == WOLFSSL_ASYNC_MARKER_RSA &&
+@@ -1880,7 +1890,8 @@ static int RsaPrivateDecryptEx(byte* in, word32 inLen, byte* out,
+ 
+         /* if not doing this inline then allocate a buffer for it */
+         if (outPtr == NULL) {
+-            key->data = (byte*)XMALLOC(inLen, key->heap, DYNAMIC_TYPE_WOLF_BIGINT);
++            key->data = (byte*)XMALLOC(inLen, key->heap,
++                                                      DYNAMIC_TYPE_WOLF_BIGINT);
+             key->dataIsAlloc = 1;
+             if (key->data == NULL) {
+                 ret = MEMORY_E;
+@@ -1909,20 +1920,29 @@ static int RsaPrivateDecryptEx(byte* in, word32 inLen, byte* out,
+         ret = wc_RsaUnPad_ex(key->data, key->dataLen, &pad, pad_value, pad_type,
+                              hash, mgf, label, labelSz, saltLen,
+                              mp_count_bits(&key->n), key->heap);
+-        if (ret > 0 && ret <= (int)outLen && pad != NULL) {
++        if (rsa_type == RSA_PUBLIC_DECRYPT && ret > (int)outLen)
++            ret = RSA_BUFFER_E;
++        else if (ret >= 0 && pad != NULL) {
++            char c;
++
+             /* only copy output if not inline */
+             if (outPtr == NULL) {
+-                XMEMCPY(out, pad, ret);
++                word32 i, j;
++                int start = (int)((size_t)pad - (size_t)key->data);
++
++                for (i = 0, j = 0; j < key->dataLen; j++) {
++                    out[i] = key->data[j];
++                    c  = ctMaskGTE(j, start);
++                    c &= ctMaskLT(i, outLen);
++                    /* 0 - no add, -1 add */
++                    i += -c;
++                }
+             }
+-            else {
++            else
+                 *outPtr = pad;
+-            }
+-        }
+-        else if (ret >= 0) {
+-            ret = RSA_BUFFER_E;
+-        }
+-        if (ret < 0) {
+-            break;
++
++            ret = ctMaskSelInt(ctMaskLTE(ret, outLen), ret, RSA_BUFFER_E);
++            ret = ctMaskSelInt(ctMaskNotEq(ret, 0), ret, RSA_BUFFER_E);
+         }
+ 
+         key->state = RSA_STATE_DECRYPT_RES;
+@@ -1934,12 +1954,14 @@ static int RsaPrivateDecryptEx(byte* in, word32 inLen, byte* out,
+             defined(HAVE_CAVIUM)
+         if (key->asyncDev.marker == WOLFSSL_ASYNC_MARKER_RSA &&
+                                                    pad_type != WC_RSA_PSS_PAD) {
+-            /* convert result */
+-            byte* dataLen = (byte*)&key->dataLen;
+-            ret = (dataLen[0] << 8) | (dataLen[1]);
++            if (ret > 0) {
++                /* convert result */
++                byte* dataLen = (byte*)&key->dataLen;
++                ret = (dataLen[0] << 8) | (dataLen[1]);
+ 
+-            if (outPtr)
+-                *outPtr = in;
++                if (outPtr)
++                    *outPtr = in;
++            }
+         }
+     #endif
+         break;
+diff --git a/wolfcrypt/src/sp_int.c b/wolfcrypt/src/sp_int.c
+index 74a37b6be..4ff618bca 100644
+--- a/wolfcrypt/src/sp_int.c
++++ b/wolfcrypt/src/sp_int.c
+@@ -286,7 +286,8 @@ int sp_leading_bit(sp_int* a)
+  * The array must be large enough for encoded number - use mp_unsigned_bin_size
+  * to calculate the number of bytes required.
+  *
+- * a  SP integer.
++ * a    SP integer.
++ * out  Array to put encoding into.
+  * returns MP_OKAY always.
+  */
+ int sp_to_unsigned_bin(sp_int* a, byte* out)
+@@ -305,6 +306,31 @@ int sp_to_unsigned_bin(sp_int* a, byte* out)
+     return MP_OKAY;
+ }
+ 
++/* Convert the big number to an array of bytes in big-endian format.
++ * The array must be large enough for encoded number - use mp_unsigned_bin_size
++ * to calculate the number of bytes required.
++ * Front-pads the output array with zeros make number the size of the array.
++ *
++ * a      SP integer.
++ * out    Array to put encoding into.
++ * outSz  Size of the array.
++ * returns MP_OKAY always.
++ */
++int sp_to_unsigned_bin_len(sp_int* a, byte* out, int outSz)
++{
++    int i, j, b;
++
++    j = outSz - 1;
++    for (i=0; j>=0; i++) {
++        for (b = 0; b < SP_WORD_SIZE; b += 8) {
++            out[j--] = a->dp[i] >> b;
++            if (j < 0)
++                break;
++        }
++    }
++
++    return MP_OKAY;
++}
+ /* Ensure the data in the big number is zeroed.
+  *
+  * a  SP integer.
+diff --git a/wolfcrypt/src/tfm.c b/wolfcrypt/src/tfm.c
+index 664a74b54..6ebeeef8d 100644
+--- a/wolfcrypt/src/tfm.c
++++ b/wolfcrypt/src/tfm.c
+@@ -1964,6 +1964,48 @@ void fp_to_unsigned_bin(fp_int *a, unsigned char *b)
+   fp_reverse (b, x);
+ }
+ 
++int fp_to_unsigned_bin_len(fp_int *a, unsigned char *b, int c)
++{
++#if DIGIT_BIT == 64 || DIGIT_BIT == 32
++  int i, j, x;
++
++  for (x=c-1,j=0,i=0; x >= 0; x--) {
++     b[x] = (unsigned char)(a->dp[i] >> j);
++     j += 8;
++     i += j == DIGIT_BIT;
++     j &= DIGIT_BIT - 1;
++  }
++
++  return FP_OKAY;
++#else
++  int     x;
++#ifndef WOLFSSL_SMALL_STACK
++   fp_int t[1];
++#else
++   fp_int *t;
++#endif
++
++#ifdef WOLFSSL_SMALL_STACK
++   t = (fp_int*)XMALLOC(sizeof(fp_int), NULL, DYNAMIC_TYPE_TMP_BUFFER);
++   if (t == NULL)
++       return FP_MEM;
++#endif
++
++  fp_init_copy(t, a);
++
++  for (x = 0; x < c; x++) {
++      b[x] = (unsigned char) (t->dp[0] & 255);
++      fp_div_2d (t, 8, t, NULL);
++  }
++  fp_reverse (b, x);
++
++#ifdef WOLFSSL_SMALL_STACK
++  XFREE(t, NULL, DYNAMIC_TYPE_TMP_BUFFER);
++#endif
++  return FP_OKAY;
++#endif
++}
++
+ int fp_unsigned_bin_size(fp_int *a)
+ {
+   int     size = fp_count_bits (a);
+@@ -2435,6 +2477,10 @@ int mp_to_unsigned_bin (mp_int * a, unsigned char *b)
+   return MP_OKAY;
+ }
+ 
++int mp_to_unsigned_bin_len(mp_int * a, unsigned char *b, int c)
++{
++  return fp_to_unsigned_bin_len(a, b, c);
++}
+ /* reads a unsigned char array, assumes the msb is stored first [big endian] */
+ int mp_read_unsigned_bin (mp_int * a, const unsigned char *b, int c)
+ {
+diff --git a/wolfssl/wolfcrypt/integer.h b/wolfssl/wolfcrypt/integer.h
+index 14767b9ab..dd34d1342 100644
+--- a/wolfssl/wolfcrypt/integer.h
++++ b/wolfssl/wolfcrypt/integer.h
+@@ -277,6 +277,7 @@ MP_API int  mp_unsigned_bin_size(mp_int * a);
+ MP_API int  mp_read_unsigned_bin (mp_int * a, const unsigned char *b, int c);
+ MP_API int  mp_to_unsigned_bin_at_pos(int x, mp_int *t, unsigned char *b);
+ MP_API int  mp_to_unsigned_bin (mp_int * a, unsigned char *b);
++MP_API int  mp_to_unsigned_bin_len(mp_int * a, unsigned char *b, int c);
+ MP_API int  mp_exptmod (mp_int * G, mp_int * X, mp_int * P, mp_int * Y);
+ /* end functions needed by Rsa */
+ 
+diff --git a/wolfssl/wolfcrypt/misc.h b/wolfssl/wolfcrypt/misc.h
+index 7cf4cff2a..cde3d99b2 100644
+--- a/wolfssl/wolfcrypt/misc.h
++++ b/wolfssl/wolfcrypt/misc.h
+@@ -97,7 +97,9 @@ WOLFSSL_LOCAL byte ctMaskGTE(int a, int b);
+ WOLFSSL_LOCAL byte ctMaskLT(int a, int b);
+ WOLFSSL_LOCAL byte ctMaskLTE(int a, int b);
+ WOLFSSL_LOCAL byte ctMaskEq(int a, int b);
++WOLFSSL_LOCAL byte ctMaskNotEq(int a, int b);
+ WOLFSSL_LOCAL byte ctMaskSel(byte m, byte a, byte b);
++WOLFSSL_LOCAL int  ctMaskSelInt(byte m, int a, int b);
+ WOLFSSL_LOCAL byte ctSetLTE(int a, int b);
+ 
+ #endif /* NO_INLINE */
+diff --git a/wolfssl/wolfcrypt/sp_int.h b/wolfssl/wolfcrypt/sp_int.h
+index 51b9e2fb8..a421c4359 100644
+--- a/wolfssl/wolfcrypt/sp_int.h
++++ b/wolfssl/wolfcrypt/sp_int.h
+@@ -119,7 +119,8 @@ MP_API int sp_read_radix(sp_int* a, const char* in, int radix);
+ MP_API int sp_cmp(sp_int* a, sp_int* b);
+ MP_API int sp_count_bits(sp_int* a);
+ MP_API int sp_leading_bit(sp_int* a);
+-MP_API int sp_to_unsigned_bin(sp_int* a, byte* in);
++MP_API int sp_to_unsigned_bin(sp_int* a, byte* out);
++MP_API int sp_to_unsigned_bin_len(sp_int* a, byte* out, int outSz);
+ MP_API void sp_forcezero(sp_int* a);
+ MP_API int sp_copy(sp_int* a, sp_int* b);
+ MP_API int sp_set(sp_int* a, sp_int_digit d);
+@@ -156,30 +157,31 @@ typedef sp_digit mp_digit;
+ 
+ #define mp_free(a)
+ 
+-#define mp_init                 sp_init
+-#define mp_init_multi           sp_init_multi
+-#define mp_clear                sp_clear
+-#define mp_read_unsigned_bin    sp_read_unsigned_bin
+-#define mp_unsigned_bin_size    sp_unsigned_bin_size
+-#define mp_read_radix           sp_read_radix
+-#define mp_cmp                  sp_cmp
+-#define mp_count_bits           sp_count_bits
+-#define mp_leading_bit          sp_leading_bit
+-#define mp_to_unsigned_bin      sp_to_unsigned_bin
+-#define mp_forcezero            sp_forcezero
+-#define mp_copy                 sp_copy
+-#define mp_set                  sp_set
+-#define mp_iszero               sp_iszero
+-#define mp_clamp                sp_clamp
+-#define mp_grow                 sp_grow
+-#define mp_sub_d                sp_sub_d
+-#define mp_cmp_d                sp_cmp_d
+-#define mp_mod                  sp_mod
+-#define mp_zero                 sp_zero
+-#define mp_add_d                sp_add_d
+-#define mp_lshd                 sp_lshd
+-#define mp_add                  sp_add
+-#define mp_isodd                sp_isodd
++#define mp_init                     sp_init
++#define mp_init_multi               sp_init_multi
++#define mp_clear                    sp_clear
++#define mp_read_unsigned_bin        sp_read_unsigned_bin
++#define mp_unsigned_bin_size        sp_unsigned_bin_size
++#define mp_read_radix               sp_read_radix
++#define mp_cmp                      sp_cmp
++#define mp_count_bits               sp_count_bits
++#define mp_leading_bit              sp_leading_bit
++#define mp_to_unsigned_bin          sp_to_unsigned_bin
++#define mp_to_unsigned_bin_len      sp_to_unsigned_bin_len
++#define mp_forcezero                sp_forcezero
++#define mp_copy                     sp_copy
++#define mp_set                      sp_set
++#define mp_iszero                   sp_iszero
++#define mp_clamp                    sp_clamp
++#define mp_grow                     sp_grow
++#define mp_sub_d                    sp_sub_d
++#define mp_cmp_d                    sp_cmp_d
++#define mp_mod                      sp_mod
++#define mp_zero                     sp_zero
++#define mp_add_d                    sp_add_d
++#define mp_lshd                     sp_lshd
++#define mp_add                      sp_add
++#define mp_isodd                    sp_isodd
+ 
+ #define MP_INT_DEFINED
+ 
+diff --git a/wolfssl/wolfcrypt/tfm.h b/wolfssl/wolfcrypt/tfm.h
+index 43217f584..f5f249128 100644
+--- a/wolfssl/wolfcrypt/tfm.h
++++ b/wolfssl/wolfcrypt/tfm.h
+@@ -563,6 +563,7 @@ int fp_leading_bit(fp_int *a);
+ int fp_unsigned_bin_size(fp_int *a);
+ void fp_read_unsigned_bin(fp_int *a, const unsigned char *b, int c);
+ void fp_to_unsigned_bin(fp_int *a, unsigned char *b);
++int fp_to_unsigned_bin_len(fp_int *a, unsigned char *b, int c);
+ int fp_to_unsigned_bin_at_pos(int x, fp_int *t, unsigned char *b);
+ 
+ /*int fp_signed_bin_size(fp_int *a);*/
+@@ -686,6 +687,7 @@ MP_API int  mp_unsigned_bin_size(mp_int * a);
+ MP_API int  mp_read_unsigned_bin (mp_int * a, const unsigned char *b, int c);
+ MP_API int  mp_to_unsigned_bin_at_pos(int x, mp_int *t, unsigned char *b);
+ MP_API int  mp_to_unsigned_bin (mp_int * a, unsigned char *b);
++MP_API int  mp_to_unsigned_bin_len(mp_int * a, unsigned char *b, int c);
+ 
+ MP_API int  mp_sub_d(fp_int *a, fp_digit b, fp_int *c);
+ MP_API int  mp_copy(fp_int* a, fp_int* b);
diff --git a/package/libs/wolfssl/patches/020-Improve-nonce-use-in-ECC-mulmod.patch b/package/libs/wolfssl/patches/020-Improve-nonce-use-in-ECC-mulmod.patch
new file mode 100644
index 0000000000..025d19cf1d
--- /dev/null
+++ b/package/libs/wolfssl/patches/020-Improve-nonce-use-in-ECC-mulmod.patch
@@ -0,0 +1,100 @@
+From ba4d612892bf6e3aae9cca7edce2a6d6b43e3e22 Mon Sep 17 00:00:00 2001
+From: Sean Parkinson <sean@wolfssl.com>
+Date: Wed, 17 Jul 2019 08:26:02 +1000
+Subject: [PATCH] Improve nonce use in ECC mulmod
+
+(cherry picked from commit 483f6a5acd9808b405306661c121aa6407464dc2)
+
+diff --git a/wolfcrypt/src/ecc.c b/wolfcrypt/src/ecc.c
+index 8daa52e63..48e21396e 100644
+--- a/wolfcrypt/src/ecc.c
++++ b/wolfcrypt/src/ecc.c
+@@ -2039,7 +2039,7 @@ int wc_ecc_mulmod_ex(mp_int* k, ecc_point *G, ecc_point *R,
+    #define M_POINTS 8
+    int           first = 1, bitbuf = 0, bitcpy = 0, j;
+ #else
+-   #define M_POINTS 3
++   #define M_POINTS 4
+ #endif
+ 
+    ecc_point     *tG, *M[M_POINTS];
+@@ -2253,7 +2253,9 @@ int wc_ecc_mulmod_ex(mp_int* k, ecc_point *G, ecc_point *R,
+    mode   = 0;
+    bitcnt = 1;
+    buf    = 0;
+-   digidx = get_digit_count(k) - 1;
++   digidx = get_digit_count(modulus) - 1;
++   /* The order MAY be 1 bit longer than the modulus. */
++   digidx += (modulus->dp[digidx] >> (DIGIT_BIT-1));
+ 
+    /* perform ops */
+    if (err == MP_OKAY) {
+@@ -2272,25 +2274,53 @@ int wc_ecc_mulmod_ex(mp_int* k, ecc_point *G, ecc_point *R,
+            i = (buf >> (DIGIT_BIT - 1)) & 1;
+            buf <<= 1;
+ 
+-           if (mode == 0 && i == 0) {
++           if (mode == 0) {
++               mode = i;
+                /* timing resistant - dummy operations */
+                if (err == MP_OKAY)
+-                   err = ecc_projective_add_point(M[0], M[1], M[2], a, modulus,
+-                                                  mp);
+-               if (err == MP_OKAY)
+-                   err = ecc_projective_dbl_point(M[1], M[2], a, modulus, mp);
+-               if (err == MP_OKAY)
+-                   continue;
+-           }
+-
+-           if (mode == 0 && i == 1) {
+-               mode = 1;
+-               /* timing resistant - dummy operations */
+-               if (err == MP_OKAY)
+-                   err = ecc_projective_add_point(M[0], M[1], M[2], a, modulus,
++                   err = ecc_projective_add_point(M[1], M[2], M[2], a, modulus,
+                                                   mp);
++#ifdef WC_NO_CACHE_RESISTANT
+                if (err == MP_OKAY)
+-                   err = ecc_projective_dbl_point(M[1], M[2], a, modulus, mp);
++                   err = ecc_projective_dbl_point(M[2], M[3], a, modulus, mp);
++#else
++               /* instead of using M[i] for double, which leaks key bit to cache
++                * monitor, use M[2] as temp, make sure address calc is constant,
++                * keep M[0] and M[1] in cache */
++              if (err == MP_OKAY)
++                  err = mp_copy((mp_int*)
++                             ( ((wolfssl_word)M[0]->x & wc_off_on_addr[i^1]) +
++                               ((wolfssl_word)M[1]->x & wc_off_on_addr[i])),
++                             M[2]->x);
++              if (err == MP_OKAY)
++                  err = mp_copy((mp_int*)
++                             ( ((wolfssl_word)M[0]->y & wc_off_on_addr[i^1]) +
++                               ((wolfssl_word)M[1]->y & wc_off_on_addr[i])),
++                             M[2]->y);
++              if (err == MP_OKAY)
++                  err = mp_copy((mp_int*)
++                             ( ((wolfssl_word)M[0]->z & wc_off_on_addr[i^1]) +
++                               ((wolfssl_word)M[1]->z & wc_off_on_addr[i])),
++                             M[2]->z);
++              if (err == MP_OKAY)
++                  err = ecc_projective_dbl_point(M[2], M[3], a, modulus, mp);
++              /* copy M[2] back to M[i] */
++              if (err == MP_OKAY)
++                  err = mp_copy(M[2]->x,
++                             (mp_int*)
++                             ( ((wolfssl_word)M[0]->x & wc_off_on_addr[i^1]) +
++                               ((wolfssl_word)M[1]->x & wc_off_on_addr[i])) );
++              if (err == MP_OKAY)
++                  err = mp_copy(M[2]->y,
++                             (mp_int*)
++                             ( ((wolfssl_word)M[0]->y & wc_off_on_addr[i^1]) +
++                               ((wolfssl_word)M[1]->y & wc_off_on_addr[i])) );
++              if (err == MP_OKAY)
++                  err = mp_copy(M[2]->z,
++                             (mp_int*)
++                             ( ((wolfssl_word)M[0]->z & wc_off_on_addr[i^1]) +
++                               ((wolfssl_word)M[1]->z & wc_off_on_addr[i])) );
++#endif
+                if (err == MP_OKAY)
+                    continue;
+            }
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
