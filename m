Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C2B81F6C
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 16:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGTMycgBQe5UZTVJFVLPSw6lDrdZ2EYCvKEOWs/aDm4=; b=Mo1rSSO+1PUw/m
	Vzd1J5wWuPMVENRJ/AlIHIqV5jFqOk6Q+lDtQ6XXeluW4Las5kp2Ldt54VGQ8dpX2SMd6eqbMPXd3
	ckULs5P9L+Qw5xVpMWgkqGhwP0eF2ivLdPSJkELi+jyIV6EAaJpGKs+o7i+jtH1DjyTZJvWfSME4P
	wQ5p598hc+K5ayvj76G7wV0SEh5JyRv0QMmGI1magN5Oit1I1j45Pt+00dZV55IyCpKQc71pBpVd1
	1GbkYqfZ/xGL6YLoK9I6sdyHIo3eBUdF0GM7sqY+5IDO7TtjJZ/Epms+ob4O9xipF1zU7OWKEQxFf
	S+w+38nFP0uQdQj1WFxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hueIB-0001uB-4y; Mon, 05 Aug 2019 14:48:55 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueHz-0001rk-Cg
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 14:48:47 +0000
Received: by mail-qt1-x841.google.com with SMTP id d17so2254528qtj.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 07:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=54jjXo+zVfc2a3eb1zynYhlfeW/psIDejTKWEB1URFU=;
 b=QsWB4EYL4HWjIfEJ9b0pAH3aejQYSUNi0C0iNcL5XPCnaUnUpiZDI87P8aM1fKw5kb
 njTBZP9xXXltE/z+ZIzOBO9RjcK6yUiXIEEmHJ14nru6n2fdS0cu2sTq06HF9VdrMPgv
 2dNck3THU/ot929Ua5YyMMgipgNqq9l2dr95pSyE41K4Jkm4HWK0VdwUyRmImquelsuM
 OAGbCroda+zkMwyo3jauXW97d3yER1Jmy7qb+a5vjbg/Rdj3DWQQuwm51ar8xNl1OxLm
 QCgab5Znzn2i46loJq95OM+0Nr1AuBSoVnM6uhA91dre2WIYr15y/7gp1LKq/gP6Mj8+
 g7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=54jjXo+zVfc2a3eb1zynYhlfeW/psIDejTKWEB1URFU=;
 b=bTzjraNYKY41o/BeRiwmhMhnKMcQplEqpCKYFDN5eGXX0sIwkH11AQnxTmp+C4l4TB
 gH2vL6aOrVHWop/kbcBuzM+UP5OPFimARnC3jEpXhNba8bj0efqupLfjvIq15+CKVHvE
 SNTL2mxmJVFps37rs0o777G8jxXlg3qeEW1AJm8MA2XZpte41NMbHpsqOBIO//oHiVrO
 0M5nh8ElSaooghYkSgMIQ2SB3DT7hZs651TsekcBp1g0R44sgr+tBDqeWAej8+VjjY5F
 bPNA3oUTBjNdtHnmuxfbWA2s+YoEFPyVBoHeFAZkf3YcumX7eVAWYov09pKe6tMbCV3F
 Tycw==
X-Gm-Message-State: APjAAAVCEc8/ySM9H5eFLpFw4oOW+6eRlX/n0UTgLcU1yHb86yih4SQO
 MSavRIAK/8MMryH4TP0T+eRVPmRe81c=
X-Google-Smtp-Source: APXvYqxYUetacuWf4lFSeuG7q9CgNKjVfP2uuh1vwk3HXdKDlUIrj9FyxD96vLVbPXcgkpvuMfAn8w==
X-Received: by 2002:ac8:21f2:: with SMTP id 47mr107665991qtz.38.1565016521054; 
 Mon, 05 Aug 2019 07:48:41 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id u7sm43947469qta.82.2019.08.05.07.48.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 07:48:40 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 11:47:58 -0300
Message-Id: <20190805144758.3129-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805144758.3129-1-cotequeiroz@gmail.com>
References: <20190805144758.3129-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_074843_430245_8CFF713C 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/1] wolfssl: bump to 4.1.0-stable
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

Always build AES-GCM support.
Unnecessary patches were removed.

This includes two vulnerability fixes:

CVE-2019-11873: a potential buffer overflow case with the TLSv1.3 PSK
extension parsing.

CVE-2019-13628 (currently assigned-only): potential leak of nonce sizes
when performing ECDSA signing operations. The leak is considered to be
difficult to exploit but it could potentially be used maliciously to
perform a lattice based timing attack.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/wolfssl/Config.in b/package/libs/wolfssl/Config.in
index 875ff5e6a3..a729f73a1d 100644
--- a/package/libs/wolfssl/Config.in
+++ b/package/libs/wolfssl/Config.in
@@ -4,10 +4,6 @@ config WOLFSSL_HAS_AES_CCM
 	bool "Include AES-CCM support"
 	default y
 
-config WOLFSSL_HAS_AES_GCM
-	bool "Include AES-GCM support"
-	default y
-
 config WOLFSSL_HAS_CHACHA_POLY
 	bool "Include ChaCha20-Poly1305 cipher suite support"
 	default y
@@ -24,13 +20,8 @@ config WOLFSSL_HAS_TLSV10
 	bool "Include TLS 1.0 support"
 	default y
 
-if !(WOLFSSL_HAS_AES_CCM||WOLFSSL_HAS_AES_GCM||WOLFSSL_HAS_CHACHA_POLY)
-	comment "! TLS 1.3 support needs one of: AES-CCM, AES-GCM, ChaCha20-Poly1305"
-endif
-
 config WOLFSSL_HAS_TLSV13
 	bool "Include TLS 1.3 support"
-	depends on WOLFSSL_HAS_AES_CCM||WOLFSSL_HAS_AES_GCM||WOLFSSL_HAS_CHACHA_POLY
 	default y
 
 config WOLFSSL_HAS_SESSION_TICKET
@@ -56,6 +47,9 @@ config WOLFSSL_HAS_ECC25519
 	bool "Include ECC Curve 22519 support"
 	default n
 
+config WOLFSSL_HAS_DEVCRYPTO
+	bool
+
 if WOLFSSL_HAS_AES_CCM
 	comment "! Hardware Acceleration does not build with AES-CCM enabled"
 endif
@@ -72,9 +66,11 @@ if !WOLFSSL_HAS_AES_CCM
 
 		config WOLFSSL_HAS_DEVCRYPTO_AES
 			bool "/dev/crypto - AES-only"
+			select WOLFSSL_HAS_DEVCRYPTO
 
 		config WOLFSSL_HAS_DEVCRYPTO_FULL
 			bool "/dev/crypto - full"
+			select WOLFSSL_HAS_DEVCRYPTO
 	endchoice
 endif
 
diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index 678eb4936b..2ad03a5aca 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
-PKG_VERSION:=4.0.0-stable
+PKG_VERSION:=4.1.0-stable
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=6cf678c72b485d1904047c40c20f85104c96b5f39778822783a2c407ccb23657
+PKG_HASH:=f0d630c3ddfeb692b8ae38cc739f47d5e9f0fb708662aa241ede0c42a5eb3dd8
 
 PKG_FIXUP:=libtool
 PKG_INSTALL:=1
@@ -25,14 +25,13 @@ PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
 PKG_CPE_ID:=cpe:/a:wolfssl:wolfssl
 
 PKG_CONFIG_DEPENDS:=\
-	CONFIG_WOLFSSL_HAS_AES_CCM CONFIG_WOLFSSL_HAS_AES_GCM \
-	CONFIG_WOLFSSL_HAS_AFALG CONFIG_WOLFSSL_HAS_ARC4 \
-	CONFIG_WOLFSSL_HAS_CHACHA_POLY CONFIG_WOLFSSL_HAS_DEVCRYPTO_AES \
-	CONFIG_WOLFSSL_HAS_DEVCRYPTO_FULL, CONFIG_WOLFSSL_HAS_DH \
-	CONFIG_WOLFSSL_HAS_DTLS CONFIG_WOLFSSL_HAS_ECC25519 \
-	CONFIG_WOLFSSL_HAS_OCSP CONFIG_WOLFSSL_HAS_SESSION_TICKET \
-	CONFIG_WOLFSSL_HAS_TLSV10 CONFIG_WOLFSSL_HAS_TLSV13 \
-	CONFIG_WOLFSSL_HAS_WPAS
+	CONFIG_WOLFSSL_HAS_AES_CCM CONFIG_WOLFSSL_HAS_AFALG \
+	CONFIG_WOLFSSL_HAS_ARC4 CONFIG_WOLFSSL_HAS_CHACHA_POLY \
+	CONFIG_WOLFSSL_HAS_DEVCRYPTO_AES CONFIG_WOLFSSL_HAS_DEVCRYPTO_FULL \
+	CONFIG_WOLFSSL_HAS_DH CONFIG_WOLFSSL_HAS_DTLS \
+	CONFIG_WOLFSSL_HAS_ECC25519 CONFIG_WOLFSSL_HAS_OCSP \
+	CONFIG_WOLFSSL_HAS_SESSION_TICKET CONFIG_WOLFSSL_HAS_TLSV10 \
+	CONFIG_WOLFSSL_HAS_TLSV13 CONFIG_WOLFSSL_HAS_WPAS
 
 include $(INCLUDE_DIR)/package.mk
 
@@ -65,11 +64,9 @@ CONFIGURE_ARGS += \
 	--enable-sni \
 	--enable-stunnel \
 	--disable-examples \
-	--disable-leanpsk \
-	--disable-leantls \
+	--disable-jobserver \
 	--$(if $(CONFIG_IPV6),enable,disable)-ipv6 \
 	--$(if $(CONFIG_WOLFSSL_HAS_AES_CCM),enable,disable)-aesccm \
-	--$(if $(CONFIG_WOLFSSL_HAS_AES_GCM),enable,disable)-aesgcm \
 	--$(if $(CONFIG_WOLFSSL_HAS_CHACHA_POLY),enable,disable)-chacha \
 	--$(if $(CONFIG_WOLFSSL_HAS_CHACHA_POLY),enable,disable)-poly1305 \
 	--$(if $(CONFIG_WOLFSSL_HAS_DH),enable,disable)-dh \
diff --git a/package/libs/wolfssl/patches/400-additional_compatibility.patch b/package/libs/wolfssl/patches/400-additional_compatibility.patch
deleted file mode 100644
index 1464e9d2a8..0000000000
--- a/package/libs/wolfssl/patches/400-additional_compatibility.patch
+++ /dev/null
@@ -1,12 +0,0 @@
---- a/cyassl/openssl/ssl.h
-+++ b/cyassl/openssl/ssl.h
-@@ -28,6 +28,9 @@
- #define CYASSL_OPENSSL_H_
- 
- #include <cyassl/ssl.h>
-+#ifndef HAVE_SNI
-+#undef CYASSL_SNI_HOST_NAME
-+#endif
- #include <wolfssl/openssl/ssl.h>
- 
- #endif
diff --git a/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch b/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch
deleted file mode 100644
index 34d3e62361..0000000000
--- a/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch
+++ /dev/null
@@ -1,21 +0,0 @@
---- a/configure.ac
-+++ b/configure.ac
-@@ -4740,7 +4740,6 @@ AC_CONFIG_FILES([stamp-h], [echo timesta
- AC_CONFIG_FILES([Makefile wolfssl/version.h wolfssl/options.h cyassl/options.h support/wolfssl.pc rpm/spec])
- 
- AX_CREATE_GENERIC_CONFIG
--AX_AM_JOBSERVER([yes])
- 
- AC_OUTPUT
- 
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -20,8 +20,6 @@ dist_noinst_SCRIPTS =
- noinst_SCRIPTS =
- check_SCRIPTS =
- 
--#includes additional rules from aminclude.am
--@INC_AMINCLUDE@
- DISTCLEANFILES+= aminclude.am
- 
- CLEANFILES+= cert.der \

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
