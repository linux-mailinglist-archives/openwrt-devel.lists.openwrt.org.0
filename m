Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 377CFB14FE
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Sep 2019 22:00:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NXFRMxYAOAks5Pne/CXc7QxxZkj/a2EIXxR8hVHC1T8=; b=cn00FakvYuNb/p
	CgmzjUoNaTR2QpLi8pxQaOR9WmWAOjHsuXdqjo6kolVMPTKAcVTgN7DK5igW1IE/Ym5EIfsCT5kyF
	3YpBN/0t87JWk+NYDzPzI94klP6YQgwHZOUF6HU8Za2m35i/1EgqvvwZ34Xujb2tg5CAkTQag/JYP
	G2wBVo/TW7el5vgJof1/igN1TxEWCPTH++9CZWaKGTJ87HFI/bmrdrP4gPJXoR8OLlkgMyMbXD7IA
	8BF5uObE4Xpr4PFQe+t2V5jaxblgTQTqb/baubMfoYN3fSppNmE/kFkLlykYwBq8nZZq4hEHRGbZz
	V+z6VQTN6s5hoEbcW2Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VGn-00077R-Jr; Thu, 12 Sep 2019 20:00:45 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VGH-0006u1-1x
 for openwrt-devel@lists.openwrt.org; Thu, 12 Sep 2019 20:00:17 +0000
Received: by mail-qt1-x842.google.com with SMTP id g13so30725573qtj.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Sep 2019 13:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5xIiHlsgijB+eV2XDWQrMmqGeO+EYeFLto1r6CHOBA4=;
 b=NuV0wYqlslMUO+gFMyLjdZqR1eXqFPqXi3NsNZVCLgDjn2D9WATLP7uM/LwHBLqfOt
 ecprHHcgT2b3KWezHfnbkwOUrZu0lDt8mlMA8kEIvAYAt2Jsw4eJ/p9rxN7JhdJeUzt0
 2tc5Z33mHr1EN0varedQOdphpSz4jQr5jBf5FQwd9c0lUBPXB3hjTw+o0aDHbB9DyYXb
 iBLRXnYdVc7O1Oz7Q3IAROCD1yDn7+jF/i4xIFt3lcWe1BaWzltji2novGWn/4a7qbPj
 nwiLaN1eTW3Aa4gcW5PMIho3CvV8mC3riZ0PbwIn/eFjRoN2Oj9fh1EKU0GWCrvdm2bc
 EtrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5xIiHlsgijB+eV2XDWQrMmqGeO+EYeFLto1r6CHOBA4=;
 b=NAmv5kLOkJeJDfeHImuceog078RUDlv5trJnpV6DtgcROROy3+7PViSn8D3VrBcriE
 L7Vbqn3ubk1KYaGAqOrmB3lWEJv0YSSo8cjrIuank0uE8fGUGZFrsUM121MV7SOTUTzc
 ts+UyHyRNmWMe2AS1YWYXIlHyvGGKlRFXVeIdSrIzNy2v28uadodGojpFyozZmDAbO2B
 /9YQ5GZKbD19n6H7YRKdvFp827hj5hJ6krIww6Z16awIgN/tGlNpRBzNpwu/wksxmzxg
 BpIwkUokG1V8CawTN31ul8//Q7a1QwGVWLNBzsz2EaPduxM4WQzzdPgIRKlbdSs4iPqC
 ScPQ==
X-Gm-Message-State: APjAAAUWSYYU39wt/YG62hGN9o2TXb966AQipetLltCE46yTAaC0glrx
 eni6Kso6x7C1SpKta6LIjXgSY/hY
X-Google-Smtp-Source: APXvYqysLk7Q1b/9LO3Ql8kqapT+Jj+q/VzQDxsDCtkIUlDD4QywDJW3Dz5IAf+OnBZyfdCbQOuEjw==
X-Received: by 2002:a0c:ec11:: with SMTP id y17mr263635qvo.159.1568318407064; 
 Thu, 12 Sep 2019 13:00:07 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id l185sm7103140qkd.20.2019.09.12.13.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 13:00:06 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Sep 2019 17:00:00 -0300
Message-Id: <20190912200000.12440-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_130013_256061_B5FC3FA3 
X-CRM114-Status: GOOD (  10.14  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] wolfssl: allow building with hw-crytpo and
 AES-CCM
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

Hardware acceleration was disabled when AES-CCM was selected as a
workaround for a build failure.  This applies a couple of upstream
patches fixing this.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
This is the result of this upstream issue:
https://github.com/wolfSSL/wolfssl/issues/2392

It was tested on WRT3200ACM (mvebu) running openwrt master, using
uhttpd, curl, and uclient-fetch (with ustream-ssl fixes applied).

This should be cherry-picked to 19.07 as well.

diff --git a/package/libs/wolfssl/Config.in b/package/libs/wolfssl/Config.in
index a729f73a1d..4ac69f821a 100644
--- a/package/libs/wolfssl/Config.in
+++ b/package/libs/wolfssl/Config.in
@@ -50,28 +50,27 @@ config WOLFSSL_HAS_ECC25519
 config WOLFSSL_HAS_DEVCRYPTO
 	bool
 
-if WOLFSSL_HAS_AES_CCM
-	comment "! Hardware Acceleration does not build with AES-CCM enabled"
-endif
-if !WOLFSSL_HAS_AES_CCM
-	choice
-		prompt "Hardware Acceleration"
-		default WOLFSSL_HAS_NO_HW
+choice
+	prompt "Hardware Acceleration"
+	default WOLFSSL_HAS_NO_HW
 
-		config WOLFSSL_HAS_NO_HW
-			bool "None"
+	config WOLFSSL_HAS_NO_HW
+		bool "None"
 
-		config WOLFSSL_HAS_AFALG
-			bool "AF_ALG"
+	config WOLFSSL_HAS_AFALG
+		bool "AF_ALG"
 
-		config WOLFSSL_HAS_DEVCRYPTO_AES
-			bool "/dev/crypto - AES-only"
-			select WOLFSSL_HAS_DEVCRYPTO
+	config WOLFSSL_HAS_DEVCRYPTO_CBC
+		bool "/dev/crytpo - AES-CBC-only"
+		select WOLFSSL_HAS_DEVCRYPTO
 
-		config WOLFSSL_HAS_DEVCRYPTO_FULL
-			bool "/dev/crypto - full"
-			select WOLFSSL_HAS_DEVCRYPTO
-	endchoice
-endif
+	config WOLFSSL_HAS_DEVCRYPTO_AES
+		bool "/dev/crypto - AES-only (all supported modes)"
+		select WOLFSSL_HAS_DEVCRYPTO
+
+	config WOLFSSL_HAS_DEVCRYPTO_FULL
+		bool "/dev/crypto - full"
+		select WOLFSSL_HAS_DEVCRYPTO
+endchoice
 
 endif
diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index 2ad03a5aca..778754ffdc 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
 PKG_VERSION:=4.1.0-stable
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
@@ -77,7 +77,9 @@ CONFIGURE_ARGS += \
 	--$(if $(CONFIG_WOLFSSL_HAS_DTLS),enable,disable)-dtls \
 	--$(if $(CONFIG_WOLFSSL_HAS_ECC25519),enable,disable)-curve25519 \
 	--$(if $(CONFIG_WOLFSSL_HAS_AFALG),enable,disable)-afalg \
-	--enable-devcrypto=$(if $(CONFIG_WOLFSSL_HAS_DEVCRYPTO_AES),aes,$(if $(CONFIG_WOLFSSL_HAS_DEVCRYPTO_FULL),yes,no))
+	--enable-devcrypto=$(if $(CONFIG_WOLFSSL_HAS_DEVCRYPTO_CBC),cbc\
+			  ,$(if $(CONFIG_WOLFSSL_HAS_DEVCRYPTO_AES),aes\
+			  ,$(if $(CONFIG_WOLFSSL_HAS_DEVCRYPTO_FULL),yes,no)))
 
 ifeq ($(CONFIG_WOLFSSL_HAS_OCSP),y)
 CONFIGURE_ARGS += \
diff --git a/package/libs/wolfssl/patches/010-build-with-devcrypto-and-aesccm.patch b/package/libs/wolfssl/patches/010-build-with-devcrypto-and-aesccm.patch
new file mode 100644
index 0000000000..a9b8aee918
--- /dev/null
+++ b/package/libs/wolfssl/patches/010-build-with-devcrypto-and-aesccm.patch
@@ -0,0 +1,74 @@
+From e8e1d35744c68b165e172a687e870a549438bdf0 Mon Sep 17 00:00:00 2001
+From: Jacob Barthelmeh <jacob@wolfssl.com>
+Date: Tue, 13 Aug 2019 14:12:45 -0600
+Subject: [PATCH] build with devcrypto and aesccm
+
+
+diff --git a/configure.ac b/configure.ac
+index f943cc6ef..cf03e7f52 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1096,6 +1096,10 @@ then
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO"
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_CBC"
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_AES"
++    if test "$ENABLED_AESCCM" = "yes"
++    then
++        AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AES_DIRECT"
++    fi
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_HASH"
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_NO_HASH_RAW"
+     ENABLED_DEVCRYPTO=yes
+@@ -1106,6 +1110,10 @@ then
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO"
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_AES"
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_CBC"
++    if test "$ENABLED_AESCCM" = "yes"
++    then
++        AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AES_DIRECT"
++    fi
+     ENABLED_DEVCRYPTO=yes
+ fi
+ if test "$ENABLED_DEVCRYPTO" = "cbc"
+diff --git a/wolfcrypt/src/aes.c b/wolfcrypt/src/aes.c
+index beeae72a6..b583d03e9 100644
+--- a/wolfcrypt/src/aes.c
++++ b/wolfcrypt/src/aes.c
+@@ -760,6 +760,14 @@
+ #elif defined(WOLFSSL_DEVCRYPTO_AES)
+     /* if all AES is enabled with devcrypto then tables are not needed */
+ 
++    #if defined(HAVE_AESCCM)
++    static int wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
++    {
++        wc_AesEncryptDirect(aes, outBlock, inBlock);
++        return 0;
++    }
++    #endif
++
+ #else
+ 
+     /* using wolfCrypt software implementation */
+@@ -1314,7 +1322,8 @@ static const word32 Td[4][256] = {
+ };
+ 
+ 
+-#if defined(HAVE_AES_CBC) || defined(WOLFSSL_AES_DIRECT)
++#if (defined(HAVE_AES_CBC) && !defined(WOLFSSL_DEVCRYPTO_CBC)) \
++			|| defined(WOLFSSL_AES_DIRECT)
+ static const byte Td4[256] =
+ {
+     0x52U, 0x09U, 0x6aU, 0xd5U, 0x30U, 0x36U, 0xa5U, 0x38U,
+diff --git a/wolfcrypt/src/port/devcrypto/devcrypto_aes.c b/wolfcrypt/src/port/devcrypto/devcrypto_aes.c
+index 5c63421e2..d5061f364 100644
+--- a/wolfcrypt/src/port/devcrypto/devcrypto_aes.c
++++ b/wolfcrypt/src/port/devcrypto/devcrypto_aes.c
+@@ -168,7 +168,7 @@ static int wc_DevCrypto_AesDirect(Aes* aes, byte* out, const byte* in,
+ #endif
+ 
+ 
+-#if defined(WOLFSSL_AES_DIRECT)
++#if defined(WOLFSSL_AES_DIRECT) || defined(HAVE_AESCCM)
+ void wc_AesEncryptDirect(Aes* aes, byte* out, const byte* in)
+ {
+     wc_DevCrypto_AesDirect(aes, out, in, AES_BLOCK_SIZE, COP_ENCRYPT);
diff --git a/package/libs/wolfssl/patches/020-build-fix-for-aesccm-devcrypto-cbc-wpas-and-afalg.patch b/package/libs/wolfssl/patches/020-build-fix-for-aesccm-devcrypto-cbc-wpas-and-afalg.patch
new file mode 100644
index 0000000000..bb4c6fd04b
--- /dev/null
+++ b/package/libs/wolfssl/patches/020-build-fix-for-aesccm-devcrypto-cbc-wpas-and-afalg.patch
@@ -0,0 +1,64 @@
+From 9fd38dc340c38dee6e5935da174f90270a63bfbf Mon Sep 17 00:00:00 2001
+From: Jacob Barthelmeh <jacob@wolfssl.com>
+Date: Fri, 30 Aug 2019 16:15:48 -0600
+Subject: [PATCH] build fix for aesccm + devcrypto=cbc + wpas and afalg
+
+
+diff --git a/configure.ac b/configure.ac
+index 61fad39dd..30731eb52 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -1045,6 +1045,10 @@ AC_ARG_ENABLE([afalg],
+ 
+ if test "$ENABLED_AFALG" = "yes"
+ then
++    if test "$ENABLED_AESCCM" = "yes"
++    then
++        AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AES_DIRECT"
++    fi
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AFALG"
+     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AFALG_HASH"
+ fi
+diff --git a/wolfcrypt/src/aes.c b/wolfcrypt/src/aes.c
+index fef2f9c74..d294f6236 100644
+--- a/wolfcrypt/src/aes.c
++++ b/wolfcrypt/src/aes.c
+@@ -759,7 +759,9 @@
+         }
+     #endif /* HAVE_AES_DECRYPT */
+ 
+-#elif defined(WOLFSSL_IMX6_CAAM) && !defined(NO_IMX6_CAAM_AES)
++#elif (defined(WOLFSSL_IMX6_CAAM) && !defined(NO_IMX6_CAAM_AES)) || \
++      ((defined(WOLFSSL_AFALG) || defined(WOLFSSL_DEVCRYPTO_AES)) && \
++        defined(HAVE_AESCCM))
+         static int wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
+         {
+             wc_AesEncryptDirect(aes, outBlock, inBlock);
+@@ -768,16 +770,6 @@
+ 
+ #elif defined(WOLFSSL_AFALG)
+ #elif defined(WOLFSSL_DEVCRYPTO_AES)
+-    /* if all AES is enabled with devcrypto then tables are not needed */
+-
+-    #if defined(HAVE_AESCCM)
+-    static int wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
+-    {
+-        wc_AesEncryptDirect(aes, outBlock, inBlock);
+-        return 0;
+-    }
+-    #endif
+-
+ #else
+ 
+     /* using wolfCrypt software implementation */
+@@ -1593,8 +1585,8 @@ static void wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
+ #endif /* HAVE_AES_CBC || WOLFSSL_AES_DIRECT || HAVE_AESGCM */
+ 
+ #if defined(HAVE_AES_DECRYPT)
+-#if (defined(HAVE_AES_CBC) || defined(WOLFSSL_AES_DIRECT)) && \
+-    !defined(WOLFSSL_DEVCRYPTO_CBC)
++#if (defined(HAVE_AES_CBC) && !defined(WOLFSSL_DEVCRYPTO_CBC)) || \
++     defined(WOLFSSL_AES_DIRECT)
+ 
+ /* load 4 Td Tables into cache by cache line stride */
+ static WC_INLINE word32 PreFetchTd(void)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
