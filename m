Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61796B6BD5
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 21:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pQusegxOz5BhmGGs6KkPkC/CLQT1lBEssClZIbru+sE=; b=p3rQA/ekVFdUh0
	UVRPFjS+U+s6Mht1d4SlDx4hW+tmMt6pd/h+kDDUgmEqhHpWPHobqiP9huyeqdA+f8sDoM/7i8mNK
	n+K44YlVEOsdEi4/Pz2KnSNh9DHoaQLas2HKZewrteuGc9TTuQF9i2M/jtPn3/+x+v8yN5fWxrm5m
	ydgisehA+TLBjeuEmndZVxHuTLkma+lIX2trMevVVd/LkStxQ2MzyxYJyRTKTOW/cJGDRaWi8INFZ
	nvviHyEdpLr6DOMRCNRxuRdFfW6d8X6WpT5Sb4obC/MtMt/nQKKdo/HVa6lCYbHdSfyCY2ZEtrXVu
	txcgYXaP1dhW2L1B7PSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAfPL-00046C-Ez; Wed, 18 Sep 2019 19:14:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAfPD-00045m-NJ
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 19:14:25 +0000
Received: by mail-wr1-x442.google.com with SMTP id i18so526527wru.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 12:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=468DrJOqkTvpNefnHclmeORggP7XwGRjJL4LODFn5xE=;
 b=PVqZrmjYgx43RcaCaHpXMTUE7axRe/LleMnWbK3Ax9GbvVIfCS9S2zDz9D2duFqOhF
 hJHgtK7lYZ48JIEzRI+KKYVHNRxC9LT2tu+rhaTNA5esopnWfD14UGLbe0lCgl1Xi1eK
 KCfqxFeWz2ARoF8RPaqP/xfCYLcdfuJGPHB+z+MMU5YKz/gtVyZI2a+dB5XuREY3y2/S
 TvqXoRotjoLagzG3FW7uekX/iDtmJn3rEPUfucoA+3uUVlkv25z9O25BFMLl1q0NfvGj
 mcI82xNC0pRe0kVuiGb9dM9mQ8PuM6aNx5hgenjAaVzl1/pnOZTzx+1t27jL0T2041O7
 SkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=468DrJOqkTvpNefnHclmeORggP7XwGRjJL4LODFn5xE=;
 b=Uq7Hl14v/fSjBazns3dHab9Tc4EuShKFYygmGmjgIYNurgzwW2/nFAc29TH2o4nAGk
 xD7U0BuhLVMdpPMaCllyyn/vd5UZ1qWdJeuUW/GTCBaV2vO57vMLycFeYw1KQrsya0nT
 epsLnPfjugAdZx5SZpr+ZmFXvKpgl5xXCldFYp2D1dBS5nqHXzSWOgyv+60we5BJg+Xe
 cpzireMW74ZqwoLB2ZLjvPoFtt44CpBjT08VMCYAm0VLSIsVQT7LvHYQ6VdVTgq/tYJi
 fujwZsfVe6OKtjg4Q4w3dj4fisUwDj+QKx/AW0HWuvGJbxKHm5wgD29GpFNGxhdPy3wb
 KavA==
X-Gm-Message-State: APjAAAUmunBHIjAT7H0SsTiKzmNtdcMHyz6qYLnSFWgDo07V0x7WHcDb
 3GiA1dbAkMwAnaoSmkGo9CE1gwBo
X-Google-Smtp-Source: APXvYqyWLRNVT8P2VHwPwFOak2SjiYJTJPmtotvzioTb2U2weZC3TwibzumV98U68xAv1XX0i/QI5g==
X-Received: by 2002:adf:f151:: with SMTP id y17mr4141847wro.244.1568834060212; 
 Wed, 18 Sep 2019 12:14:20 -0700 (PDT)
Received: from localhost.localdomain (232.90-149-217.nextgentel.com.
 [90.149.217.232])
 by smtp.gmail.com with ESMTPSA id g73sm4809822wme.10.2019.09.18.12.14.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 12:14:19 -0700 (PDT)
From: Magnus Kroken <mkroken@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 18 Sep 2019 21:14:18 +0200
Message-Id: <20190918191418.22707-1-mkroken@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_121423_790747_1259CB93 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mkroken[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] mbedtls: update to 2.16.3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Remove 300-bn_mul.h-Use-optimized-MULADDC-code-only-on-ARM-6.patch,
the issue has been fixed upstream.

Signed-off-by: Magnus Kroken <mkroken@gmail.com>
---
Runtime-tested on: ath79

 package/libs/mbedtls/Makefile                 |  4 +-
 package/libs/mbedtls/patches/200-config.patch | 46 +++++++++----------
 ...optimized-MULADDC-code-only-on-ARM-6.patch | 27 -----------
 3 files changed, 25 insertions(+), 52 deletions(-)
 delete mode 100644 package/libs/mbedtls/patches/300-bn_mul.h-Use-optimized-MULADDC-code-only-on-ARM-6.patch

diff --git a/package/libs/mbedtls/Makefile b/package/libs/mbedtls/Makefile
index 03f291ebc3..307d03432e 100644
--- a/package/libs/mbedtls/Makefile
+++ b/package/libs/mbedtls/Makefile
@@ -8,13 +8,13 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=mbedtls
-PKG_VERSION:=2.16.2
+PKG_VERSION:=2.16.3
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-gpl.tgz
 PKG_SOURCE_URL:=https://tls.mbed.org/download/
-PKG_HASH:=40d18965dd36ce0158a2b037c8c54401bad54f683f4311502518ee1a1a0b622c
+PKG_HASH:=fd01fe4b289116df7781d05e1ef712b6c98823c5334f4a27404f13a8d066ef6a
 
 PKG_BUILD_PARALLEL:=1
 PKG_LICENSE:=GPL-2.0+
diff --git a/package/libs/mbedtls/patches/200-config.patch b/package/libs/mbedtls/patches/200-config.patch
index da482eb027..a09cf1f49b 100644
--- a/package/libs/mbedtls/patches/200-config.patch
+++ b/package/libs/mbedtls/patches/200-config.patch
@@ -1,6 +1,6 @@
 --- a/include/mbedtls/config.h
 +++ b/include/mbedtls/config.h
-@@ -599,14 +599,14 @@
+@@ -633,14 +633,14 @@
   *
   * Enable Output Feedback mode (OFB) for symmetric ciphers.
   */
@@ -17,7 +17,7 @@
  
  /**
   * \def MBEDTLS_CIPHER_NULL_CIPHER
-@@ -716,19 +716,19 @@
+@@ -750,19 +750,19 @@
   *
   * Comment macros to disable the curve and functions for it
   */
@@ -46,7 +46,7 @@
  
  /**
   * \def MBEDTLS_ECP_NIST_OPTIM
-@@ -830,7 +830,7 @@
+@@ -864,7 +864,7 @@
   *             See dhm.h for more details.
   *
   */
@@ -55,7 +55,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED
-@@ -850,7 +850,7 @@
+@@ -884,7 +884,7 @@
   *      MBEDTLS_TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA
   *      MBEDTLS_TLS_ECDHE_PSK_WITH_RC4_128_SHA
   */
@@ -64,7 +64,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_RSA_PSK_ENABLED
-@@ -875,7 +875,7 @@
+@@ -909,7 +909,7 @@
   *      MBEDTLS_TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA
   *      MBEDTLS_TLS_RSA_PSK_WITH_RC4_128_SHA
   */
@@ -73,7 +73,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_RSA_ENABLED
-@@ -1009,7 +1009,7 @@
+@@ -1043,7 +1043,7 @@
   *      MBEDTLS_TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256
   *      MBEDTLS_TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384
   */
@@ -82,7 +82,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED
-@@ -1033,7 +1033,7 @@
+@@ -1067,7 +1067,7 @@
   *      MBEDTLS_TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256
   *      MBEDTLS_TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384
   */
@@ -91,7 +91,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_ECJPAKE_ENABLED
-@@ -1137,7 +1137,7 @@
+@@ -1171,7 +1171,7 @@
   * This option is only useful if both MBEDTLS_SHA256_C and
   * MBEDTLS_SHA512_C are defined. Otherwise the available hash module is used.
   */
@@ -100,7 +100,7 @@
  
  /**
   * \def MBEDTLS_ENTROPY_NV_SEED
-@@ -1232,14 +1232,14 @@
+@@ -1266,14 +1266,14 @@
   * Uncomment this macro to disable the use of CRT in RSA.
   *
   */
@@ -117,7 +117,7 @@
  
  /**
   * \def MBEDTLS_SHA256_SMALLER
-@@ -1393,7 +1393,7 @@
+@@ -1427,7 +1427,7 @@
   *          configuration of this extension).
   *
   */
@@ -126,7 +126,7 @@
  
  /**
   * \def MBEDTLS_SSL_SRV_SUPPORT_SSLV2_CLIENT_HELLO
-@@ -1568,7 +1568,7 @@
+@@ -1602,7 +1602,7 @@
   *
   * Comment this macro to disable support for SSL session tickets
   */
@@ -135,7 +135,7 @@
  
  /**
   * \def MBEDTLS_SSL_EXPORT_KEYS
-@@ -1598,7 +1598,7 @@
+@@ -1632,7 +1632,7 @@
   *
   * Comment this macro to disable support for truncated HMAC in SSL
   */
@@ -144,7 +144,7 @@
  
  /**
   * \def MBEDTLS_SSL_TRUNCATED_HMAC_COMPAT
-@@ -1657,7 +1657,7 @@
+@@ -1691,7 +1691,7 @@
   *
   * Comment this to disable run-time checking and save ROM space
   */
@@ -153,7 +153,7 @@
  
  /**
   * \def MBEDTLS_X509_ALLOW_EXTENSIONS_NON_V3
-@@ -1987,7 +1987,7 @@
+@@ -2021,7 +2021,7 @@
   *      MBEDTLS_TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256
   *      MBEDTLS_TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256
   */
@@ -162,7 +162,7 @@
  
  /**
   * \def MBEDTLS_ARIA_C
-@@ -2053,7 +2053,7 @@
+@@ -2087,7 +2087,7 @@
   * This module enables the AES-CCM ciphersuites, if other requisites are
   * enabled as well.
   */
@@ -171,7 +171,7 @@
  
  /**
   * \def MBEDTLS_CERTS_C
-@@ -2065,7 +2065,7 @@
+@@ -2099,7 +2099,7 @@
   *
   * This module is used for testing (ssl_client/server).
   */
@@ -180,7 +180,7 @@
  
  /**
   * \def MBEDTLS_CHACHA20_C
-@@ -2169,7 +2169,7 @@
+@@ -2203,7 +2203,7 @@
   * \warning   DES is considered a weak cipher and its use constitutes a
   *            security risk. We recommend considering stronger ciphers instead.
   */
@@ -189,7 +189,7 @@
  
  /**
   * \def MBEDTLS_DHM_C
-@@ -2332,7 +2332,7 @@
+@@ -2366,7 +2366,7 @@
   * This module adds support for the Hashed Message Authentication Code
   * (HMAC)-based key derivation function (HKDF).
   */
@@ -198,7 +198,7 @@
  
  /**
   * \def MBEDTLS_HMAC_DRBG_C
-@@ -2642,7 +2642,7 @@
+@@ -2676,7 +2676,7 @@
   *
   * This module enables abstraction of common (libc) functions.
   */
@@ -207,7 +207,7 @@
  
  /**
   * \def MBEDTLS_POLY1305_C
-@@ -2663,7 +2663,7 @@
+@@ -2697,7 +2697,7 @@
   * Caller:  library/md.c
   *
   */
@@ -216,7 +216,7 @@
  
  /**
   * \def MBEDTLS_RSA_C
-@@ -2770,7 +2770,7 @@
+@@ -2804,7 +2804,7 @@
   *
   * Requires: MBEDTLS_CIPHER_C
   */
@@ -225,7 +225,7 @@
  
  /**
   * \def MBEDTLS_SSL_CLI_C
-@@ -2870,7 +2870,7 @@
+@@ -2904,7 +2904,7 @@
   *
   * This module provides run-time version information.
   */
@@ -234,7 +234,7 @@
  
  /**
   * \def MBEDTLS_X509_USE_C
-@@ -2980,7 +2980,7 @@
+@@ -3014,7 +3014,7 @@
   * Module:  library/xtea.c
   * Caller:
   */
diff --git a/package/libs/mbedtls/patches/300-bn_mul.h-Use-optimized-MULADDC-code-only-on-ARM-6.patch b/package/libs/mbedtls/patches/300-bn_mul.h-Use-optimized-MULADDC-code-only-on-ARM-6.patch
deleted file mode 100644
index 757d83f49c..0000000000
--- a/package/libs/mbedtls/patches/300-bn_mul.h-Use-optimized-MULADDC-code-only-on-ARM-6.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From 7aff5a70f3580426865b6c86437a3e47546d13f7 Mon Sep 17 00:00:00 2001
-From: Hauke Mehrtens <hauke@hauke-m.de>
-Date: Sun, 16 Dec 2018 13:02:49 +0100
-Subject: [PATCH] bn_mul.h: Use optimized MULADDC code only on ARM >= 6
-
-The optimized code uses umaal which was only introduced with ARMv6 and
-is not available on older versions.
-This broke compilation with arm926ej-s CPU for me.
-
-Fixes: 16b1bd89326 ("bn_mul.h: add ARM DSP optimized MULADDC code")
-Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
----
- include/mbedtls/bn_mul.h | 3 ++-
- 1 file changed, 2 insertions(+), 1 deletion(-)
-
---- a/include/mbedtls/bn_mul.h
-+++ b/include/mbedtls/bn_mul.h
-@@ -644,7 +644,8 @@
-            "r6", "r7", "r8", "r9", "cc"         \
-          );
- 
--#elif defined (__ARM_FEATURE_DSP) && (__ARM_FEATURE_DSP == 1)
-+#elif defined (__ARM_FEATURE_DSP) && (__ARM_FEATURE_DSP == 1) && \
-+      __TARGET_ARCH_ARM >= 6
- 
- #define MULADDC_INIT                            \
-     asm(
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
