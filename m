Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E551F20C3
	for <lists+openwrt-devel@lfdr.de>; Wed,  6 Nov 2019 22:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FETDLbENqpAyzhMbxvLFA9Rl4xx7Z6WeMyauKX5AcEI=; b=mkqHkML0QYf2kR
	Kp+cNToGWcZZvBshPGycKMGd70UVU6HAx2OD0CiNMHhUvz0P+ZCom/8Ss4t0wI/sbCPnwn+KzVB8b
	oUHs6YOH9Tas6m1iyEdLmgc+qjFYfyHX2optiBw9qLj7i8eOA8zEFB62zNiLIjUZ01W5nLbO9Jxlh
	BhlMzV+nnuZWcJpsB4LDqpvxsg2sQXrhH3Udy0thCHhZY+/G9VEe0O5z3DbFIrdPa8UyaeSd0zPdP
	x72Vl3e/F7HZ8H1r2Y5K53MLtbkJhS9mfbIKrFcF24a38sThDGw0Za4RVMYq/VQvhiwuqa1pG4the
	Lh7MSmCNCcKdMWoKEW/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSSmM-0003wK-Jy; Wed, 06 Nov 2019 21:23:50 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSSm9-0003pG-BU
 for openwrt-devel@lists.openwrt.org; Wed, 06 Nov 2019 21:23:41 +0000
Received: by mail-qt1-x82d.google.com with SMTP id t8so35379644qtc.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 06 Nov 2019 13:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ukZ8C6FTDpwzSRl/xIKJJLi+LBwP35svCgIlDR9tzTs=;
 b=VYfj/kASvXqsBBHTQfpBAjoUE+HphLwXC+qr1BCgwvDBRCXsUSVXN5Q+8JxEH+bBhX
 h6Y6E+rDZYm3F/xoPd9ymZWq/CHOxDBHJn33mpXAznYA4AF/oPp/zC7HktbYgAikidCO
 KDMCmJw8w7XNWEAMVO1m1fXzEfy4wdDJcxeQViyOwKXZy2Pyu2yF/eh6EXVEofK0AHzs
 uJnIy6JFvX0wlKT1eVDdY1uvOPyhJ3rhANXJxu9H71tO9NOAudnUoCdmZL7MzhbEG1Xs
 OKxk2HNtfXoKcSuBrvcGypZv/NC6SR0+LQo4rc6IRe8aCYRy1O2Ey4J0ovB0HcNfnKCY
 xV1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ukZ8C6FTDpwzSRl/xIKJJLi+LBwP35svCgIlDR9tzTs=;
 b=sUczdKqVNJEZXL+eTE3JNSZGu+fFZPcjjYyl8WbhF5ZdAGH8dHqoLcijL8J2YY5qo9
 f5Ene9B03C/58+azpJQY/OmwkHGGHQnIZM0hu8tlT/7U8Th+zUAZ+/WqtPZukRGuJao/
 EHfPoolf7nnRFfMKG58XPE08A8knIrSG8Xl9lKQVXFhNeIyaW8nDfwcr7Fn++6dCDuWg
 CwQdGtANtxdxtu6ohQuS4gMHOGf3TTM7eCGqCe9OJryapTZc0rNquMpjhLuzzMgWiXyD
 et5UoQ2d0KMSsFCbgSHYaNBic17SCvq7o/ZSN5cTja6zbib6XLc1T9Pn82vJNTVcBpvX
 KwSg==
X-Gm-Message-State: APjAAAXl4qefA3vwBrsPSI7AxPVDM3iVBxmf0XrcmtbhrIegcwJBCOYT
 6mD6HuPEfXvOwg64RJlshqVb/bcT
X-Google-Smtp-Source: APXvYqzua+YwJrnH3OTTmczhalBrzur93m7RZaQicNy9gNQeZESk5Jjau4ghmIxx8mjgTlifnWtl2w==
X-Received: by 2002:ac8:5412:: with SMTP id b18mr104005qtq.34.1573075413599;
 Wed, 06 Nov 2019 13:23:33 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id p59sm97109qtd.2.2019.11.06.13.23.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 13:23:33 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  6 Nov 2019 18:22:52 -0300
Message-Id: <20191106212252.27165-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191106212252.27165-1-cotequeiroz@gmail.com>
References: <20191106212252.27165-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_132337_438855_1F9FF348 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] wolfssl: update to v4.2.0-stable
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

Many bugs were fixed--2 patches removed here.

This release of wolfSSL includes fixes for 5 security vulnerabilities,
including two CVEs with high/critical base scores:

- potential invalid read with TLS 1.3 PSK, including session tickets
- potential hang with ocspstaping2 (always enabled in openwrt)
- CVE-2019-15651: 1-byte overread when decoding certificate extensions
- CVE-2019-16748: 1-byte overread when checking certificate signatures
- DSA attack to recover DSA private keys

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
This was run-tested on WRT3200ACM, using uhttpdi, uclient-fetch, curl &
wpad-wolfssl.

diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index 778754ffdc..3d2a56a97f 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
-PKG_VERSION:=4.1.0-stable
-PKG_RELEASE:=2
+PKG_VERSION:=4.2.0-stable
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=f0d630c3ddfeb692b8ae38cc739f47d5e9f0fb708662aa241ede0c42a5eb3dd8
+PKG_HASH:=3562af485c26cd7abe94d9404fbfc0c5c9bceb4aab29b81ebf5e6c2467507e12
 
 PKG_FIXUP:=libtool
 PKG_INSTALL:=1
@@ -44,7 +44,7 @@ define Package/libwolfssl
   MENU:=1
   PROVIDES:=libcyassl
   DEPENDS:=+WOLFSSL_HAS_DEVCRYPTO:kmod-cryptodev +WOLFSSL_HAS_AFALG:kmod-crypto-user
-  ABI_VERSION:=19
+  ABI_VERSION:=23
 endef
 
 define Package/libwolfssl/description
diff --git a/package/libs/wolfssl/patches/010-build-with-devcrypto-and-aesccm.patch b/package/libs/wolfssl/patches/010-build-with-devcrypto-and-aesccm.patch
deleted file mode 100644
index a9b8aee918..0000000000
--- a/package/libs/wolfssl/patches/010-build-with-devcrypto-and-aesccm.patch
+++ /dev/null
@@ -1,74 +0,0 @@
-From e8e1d35744c68b165e172a687e870a549438bdf0 Mon Sep 17 00:00:00 2001
-From: Jacob Barthelmeh <jacob@wolfssl.com>
-Date: Tue, 13 Aug 2019 14:12:45 -0600
-Subject: [PATCH] build with devcrypto and aesccm
-
-
-diff --git a/configure.ac b/configure.ac
-index f943cc6ef..cf03e7f52 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1096,6 +1096,10 @@ then
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO"
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_CBC"
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_AES"
-+    if test "$ENABLED_AESCCM" = "yes"
-+    then
-+        AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AES_DIRECT"
-+    fi
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_HASH"
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_NO_HASH_RAW"
-     ENABLED_DEVCRYPTO=yes
-@@ -1106,6 +1110,10 @@ then
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO"
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_AES"
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_DEVCRYPTO_CBC"
-+    if test "$ENABLED_AESCCM" = "yes"
-+    then
-+        AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AES_DIRECT"
-+    fi
-     ENABLED_DEVCRYPTO=yes
- fi
- if test "$ENABLED_DEVCRYPTO" = "cbc"
-diff --git a/wolfcrypt/src/aes.c b/wolfcrypt/src/aes.c
-index beeae72a6..b583d03e9 100644
---- a/wolfcrypt/src/aes.c
-+++ b/wolfcrypt/src/aes.c
-@@ -760,6 +760,14 @@
- #elif defined(WOLFSSL_DEVCRYPTO_AES)
-     /* if all AES is enabled with devcrypto then tables are not needed */
- 
-+    #if defined(HAVE_AESCCM)
-+    static int wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
-+    {
-+        wc_AesEncryptDirect(aes, outBlock, inBlock);
-+        return 0;
-+    }
-+    #endif
-+
- #else
- 
-     /* using wolfCrypt software implementation */
-@@ -1314,7 +1322,8 @@ static const word32 Td[4][256] = {
- };
- 
- 
--#if defined(HAVE_AES_CBC) || defined(WOLFSSL_AES_DIRECT)
-+#if (defined(HAVE_AES_CBC) && !defined(WOLFSSL_DEVCRYPTO_CBC)) \
-+			|| defined(WOLFSSL_AES_DIRECT)
- static const byte Td4[256] =
- {
-     0x52U, 0x09U, 0x6aU, 0xd5U, 0x30U, 0x36U, 0xa5U, 0x38U,
-diff --git a/wolfcrypt/src/port/devcrypto/devcrypto_aes.c b/wolfcrypt/src/port/devcrypto/devcrypto_aes.c
-index 5c63421e2..d5061f364 100644
---- a/wolfcrypt/src/port/devcrypto/devcrypto_aes.c
-+++ b/wolfcrypt/src/port/devcrypto/devcrypto_aes.c
-@@ -168,7 +168,7 @@ static int wc_DevCrypto_AesDirect(Aes* aes, byte* out, const byte* in,
- #endif
- 
- 
--#if defined(WOLFSSL_AES_DIRECT)
-+#if defined(WOLFSSL_AES_DIRECT) || defined(HAVE_AESCCM)
- void wc_AesEncryptDirect(Aes* aes, byte* out, const byte* in)
- {
-     wc_DevCrypto_AesDirect(aes, out, in, AES_BLOCK_SIZE, COP_ENCRYPT);
diff --git a/package/libs/wolfssl/patches/020-build-fix-for-aesccm-devcrypto-cbc-wpas-and-afalg.patch b/package/libs/wolfssl/patches/020-build-fix-for-aesccm-devcrypto-cbc-wpas-and-afalg.patch
deleted file mode 100644
index bb4c6fd04b..0000000000
--- a/package/libs/wolfssl/patches/020-build-fix-for-aesccm-devcrypto-cbc-wpas-and-afalg.patch
+++ /dev/null
@@ -1,64 +0,0 @@
-From 9fd38dc340c38dee6e5935da174f90270a63bfbf Mon Sep 17 00:00:00 2001
-From: Jacob Barthelmeh <jacob@wolfssl.com>
-Date: Fri, 30 Aug 2019 16:15:48 -0600
-Subject: [PATCH] build fix for aesccm + devcrypto=cbc + wpas and afalg
-
-
-diff --git a/configure.ac b/configure.ac
-index 61fad39dd..30731eb52 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1045,6 +1045,10 @@ AC_ARG_ENABLE([afalg],
- 
- if test "$ENABLED_AFALG" = "yes"
- then
-+    if test "$ENABLED_AESCCM" = "yes"
-+    then
-+        AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AES_DIRECT"
-+    fi
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AFALG"
-     AM_CFLAGS="$AM_CFLAGS -DWOLFSSL_AFALG_HASH"
- fi
-diff --git a/wolfcrypt/src/aes.c b/wolfcrypt/src/aes.c
-index fef2f9c74..d294f6236 100644
---- a/wolfcrypt/src/aes.c
-+++ b/wolfcrypt/src/aes.c
-@@ -759,7 +759,9 @@
-         }
-     #endif /* HAVE_AES_DECRYPT */
- 
--#elif defined(WOLFSSL_IMX6_CAAM) && !defined(NO_IMX6_CAAM_AES)
-+#elif (defined(WOLFSSL_IMX6_CAAM) && !defined(NO_IMX6_CAAM_AES)) || \
-+      ((defined(WOLFSSL_AFALG) || defined(WOLFSSL_DEVCRYPTO_AES)) && \
-+        defined(HAVE_AESCCM))
-         static int wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
-         {
-             wc_AesEncryptDirect(aes, outBlock, inBlock);
-@@ -768,16 +770,6 @@
- 
- #elif defined(WOLFSSL_AFALG)
- #elif defined(WOLFSSL_DEVCRYPTO_AES)
--    /* if all AES is enabled with devcrypto then tables are not needed */
--
--    #if defined(HAVE_AESCCM)
--    static int wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
--    {
--        wc_AesEncryptDirect(aes, outBlock, inBlock);
--        return 0;
--    }
--    #endif
--
- #else
- 
-     /* using wolfCrypt software implementation */
-@@ -1593,8 +1585,8 @@ static void wc_AesEncrypt(Aes* aes, const byte* inBlock, byte* outBlock)
- #endif /* HAVE_AES_CBC || WOLFSSL_AES_DIRECT || HAVE_AESGCM */
- 
- #if defined(HAVE_AES_DECRYPT)
--#if (defined(HAVE_AES_CBC) || defined(WOLFSSL_AES_DIRECT)) && \
--    !defined(WOLFSSL_DEVCRYPTO_CBC)
-+#if (defined(HAVE_AES_CBC) && !defined(WOLFSSL_DEVCRYPTO_CBC)) || \
-+     defined(WOLFSSL_AES_DIRECT)
- 
- /* load 4 Td Tables into cache by cache line stride */
- static WC_INLINE word32 PreFetchTd(void)

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
