Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DD9823E2
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 19:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ND+NC8VQO3z23vNpgHyqXiOTqCRVYZsZMGOzg8FVec=; b=I+2g8XfEynjg88
	X2nazxWg5kBZUBg1y9M8OGmwwp/bJNKKFQIkWKEP+ApiAmEI/lpZAH0SNt2jGjZD0+u+vMJx14aFc
	UbexRIaTnLpTeYU4dLf5jzsTG/f35d75Wb3VOjGSbnb9Hs3KrXXBWBhFDz7luk/362012HwvvPyym
	74qRfhsnjGRsXCzVoqZPX9gRA+4gy6bkVaiBPLY5qFOhii0OSj9GJH/UhtVCTK/4b148NukRsFc0m
	P9017kvLH9OzzfPuAE9kRmjiPxjLMRIf8SNkMe0JNeyKWHwC7CUM+9jA35ZtZxDMwnD5PNuboSSf0
	4nw29GVISa7DI70oCp1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hugec-0005OP-UI; Mon, 05 Aug 2019 17:20:14 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hugdx-0004wG-Ss
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 17:19:38 +0000
Received: by mail-qk1-x742.google.com with SMTP id r6so60724060qkc.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 10:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zY+I76WpzYkFrS18p5azl8w2d2WrFYlQD4sbM3l4GCs=;
 b=nHECy+u+LB3Ok1wOAtEG1jPCftKEYpAnjo0Bd1thJaPydwQT4najW++PoN5L7uz3zl
 fSrmJ24nr5GmSEi5rSGHpFjqFeqNvHF6Midfk1AoyZ8yoxMgfZ1m/JKZ1T5leuYZh411
 s30l1Zz5uuFG1obwNmlUvalQBUOuvIR3BSWqCfhmVmn+6VVK8G7xJLKPtLQd2NPnMwih
 GGK+YbEN7cqJcXn/L1i28pQIHAEclvC6/TMTEbVZ2yuKPfEA9nut6z0Jv6LJmRtSq/I+
 4VyfSb6XB2QNvMojrShIUciq4daLnqgR4iQAZXwWIM0HBTTm/7tdmjJPoRcw2UaNR21+
 Cl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zY+I76WpzYkFrS18p5azl8w2d2WrFYlQD4sbM3l4GCs=;
 b=RR8GqGXHbP+k2q6c4pkZrTf+HaMsJ1jdd+BpvnTFXrVk2UJMJT0wl1BEBtps+DVobe
 CoKfUOwjkHCJ3d+EzFuhvmcnpAcvYaIgSerSAWEagdzWvnrtpvZcLJlQEgBYFF3WhOCA
 LDFd+58VVinFwFyzlFXK/x4i9BNivYVfvraBpCxJXtYQvLuL0yzo68HiSvAR+SMUwmJu
 NFl/KmKNudO93stRDiicsOdSwXmnq6oARupHX8QSMA+mG8ti7MjKrn0kUJAqYj82Jh62
 4EW6eTNnvtsRTK92xYSyJjQ0z0hlYNpWuRUO3K+o6nwhIa9l658tvRvC2sGHMKnNkmsD
 +g7g==
X-Gm-Message-State: APjAAAV3p2TKYhhx4RU3Hh0fFK5ktLow3m/BfHBqB6Eby0xJfPUA6wa5
 MUEKO2k+l3MjLgyOXP8fnyXEf7Ufnb8=
X-Google-Smtp-Source: APXvYqz7FJndXQkG2TDMyUeqSisSlYBy6a4P/1NKCkr842tcCceBp2DJVDLjznFXU81YQacS7oKJxw==
X-Received: by 2002:a37:4a46:: with SMTP id x67mr98205980qka.294.1565025572357; 
 Mon, 05 Aug 2019 10:19:32 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id j2sm38491728qtb.89.2019.08.05.10.19.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 10:19:31 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 14:19:19 -0300
Message-Id: <20190805171921.3995-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805144758.3129-1-cotequeiroz@gmail.com>
References: <20190805144758.3129-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_101933_961143_4F00549E 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
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
Subject: [OpenWrt-Devel] [RFC 18.06 PATCH 1/3] wolfssl: bump to 4.1.0-stable
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

CVE-2018-16870: a new variant of the Bleichenbacher attack to perform
downgrade attacks against TLS, which may lead to leakage of sensible
data.

CVE-2019-13628 (currently assigned-only): potential leak of nonce sizes
when performing ECDSA signing operations. The leak is considered to be
difficult to exploit but it could potentially be used maliciously to
perform a lattice based timing attack.

This brings some changes from master as well:
* Removed options that can't be turned off because we're building with
  --enable-stunnel, some of which affect hostapd's Config.in.
* Adjusted the title of OCSP option, as OCSP itself can't be turned off,
  only the stapling part is selectable.
* Mark options turned on when wpad support is selected.
* Add building options for TLS 1.0, and TLS 1.3.
* Add AF_ALG hardware crypto support, which due to a bug, only works
  when CCM support is turned off.
* Reorganized option conditionals in Makefile.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/wolfssl/Config.in b/package/libs/wolfssl/Config.in
index 50b0bb9cdf..32b0f74089 100644
--- a/package/libs/wolfssl/Config.in
+++ b/package/libs/wolfssl/Config.in
@@ -4,16 +4,8 @@ config WOLFSSL_HAS_AES_CCM
 	bool "Include AES-CCM support"
 	default y
 
-config WOLFSSL_HAS_AES_GCM
-	bool "Include AES-GCM support"
-	default y
-
-config WOLFSSL_HAS_CHACHA
-	bool "Include ChaCha cipher suite support"
-	default n
-
-config WOLFSSL_HAS_ECC
-	bool "Include ECC (Elliptic Curve Cryptography) support"
+config WOLFSSL_HAS_CHACHA_POLY
+	bool "Include ChaCha20-Poly1305 cipher suite support"
 	default y
 
 config WOLFSSL_HAS_DH
@@ -24,12 +16,12 @@ config WOLFSSL_HAS_ARC4
 	bool "Include ARC4 support"
 	default y
 
-config WOLFSSL_HAS_DES3
-	bool "Include DES3 (Tripple-DES) support"
+config WOLFSSL_HAS_TLSV10
+	bool "Include TLS 1.0 support"
 	default y
 
-config WOLFSSL_HAS_PSK
-	bool "Include PKS (Pre Share Key) support"
+config WOLFSSL_HAS_TLSV13
+	bool "Include TLS 1.3 support"
 	default y
 
 config WOLFSSL_HAS_SESSION_TICKET
@@ -41,20 +33,34 @@ config WOLFSSL_HAS_DTLS
 	default n
 
 config WOLFSSL_HAS_OCSP
-	bool "Include OSCP support"
+	bool "Include OSCP stapling support"
 	default y
 
 config WOLFSSL_HAS_WPAS
 	bool "Include wpa_supplicant support"
+	select WOLFSSL_HAS_ARC4
+	select WOLFSSL_HAS_OCSP
+	select WOLFSSL_HAS_SESSION_TICKET
 	default y
 
 config WOLFSSL_HAS_ECC25519
 	bool "Include ECC Curve 22519 support"
-	depends on WOLFSSL_HAS_ECC
 	default n
 
-config WOLFSSL_HAS_POLY_1305
-	bool "Include Poly-1305 support"
-	default n
+if WOLFSSL_HAS_AES_CCM
+	comment "! Hardware Acceleration does not build with AES-CCM enabled"
+endif
+if !WOLFSSL_HAS_AES_CCM
+	choice
+		prompt "Hardware Acceleration"
+		default WOLFSSL_HAS_NO_HW
+
+		config WOLFSSL_HAS_NO_HW
+			bool "None"
+
+		config WOLFSSL_HAS_AFALG
+			bool "AF_ALG"
+	endchoice
+endif
 
 endif
diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index a01a8949aa..03bbda714d 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -8,29 +8,29 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
-PKG_VERSION:=3.15.3-stable
+PKG_VERSION:=4.1.0-stable
 PKG_RELEASE:=1
 
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).zip
-# PKG_SOURCE_URL:=https://www.wolfssl.com/
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=dc97c07a7667b39a890e14f4b4a209f51524a4cabee7adb6c80822ee78c1f62a
+PKG_HASH:=f0d630c3ddfeb692b8ae38cc739f47d5e9f0fb708662aa241ede0c42a5eb3dd8
 
 PKG_FIXUP:=libtool
 PKG_INSTALL:=1
 PKG_USE_MIPS16:=0
 PKG_BUILD_PARALLEL:=1
-PKG_LICENSE:=GPL-2.0+
-PKG_CPE_ID:=cpe:/a:yassl:cyassl
+PKG_LICENSE:=GPL-2.0-or-later
+PKG_LICENSE_FILES:=LICENSING COPYING
+PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
+PKG_CPE_ID:=cpe:/a:wolfssl:wolfssl
 
 PKG_CONFIG_DEPENDS:=\
-	CONFIG_WOLFSSL_HAS_AES_CCM CONFIG_WOLFSSL_HAS_AES_GCM \
-	CONFIG_WOLFSSL_HAS_ARC4 CONFIG_WOLFSSL_HAS_CHACHA \
-	CONFIG_WOLFSSL_HAS_DES3 CONFIG_WOLFSSL_HAS_DH CONFIG_WOLFSSL_HAS_DTLS \
-	CONFIG_WOLFSSL_HAS_ECC CONFIG_WOLFSSL_HAS_ECC25519 \
-	CONFIG_WOLFSSL_HAS_OCSP CONFIG_WOLFSSL_HAS_POLY_1305 \
-	CONFIG_WOLFSSL_HAS_PSK CONFIG_WOLFSSL_HAS_SESSION_TICKET \
-	CONFIG_WOLFSSL_HAS_WPAS
+	CONFIG_WOLFSSL_HAS_AES_CCM CONFIG_WOLFSSL_HAS_AFALG \
+	CONFIG_WOLFSSL_HAS_ARC4 CONFIG_WOLFSSL_HAS_CHACHA_POLY \
+	CONFIG_WOLFSSL_HAS_DH CONFIG_WOLFSSL_HAS_DTLS \
+	CONFIG_WOLFSSL_HAS_ECC25519 CONFIG_WOLFSSL_HAS_OCSP \
+	CONFIG_WOLFSSL_HAS_SESSION_TICKET CONFIG_WOLFSSL_HAS_TLSV10 \
+	CONFIG_WOLFSSL_HAS_TLSV13 CONFIG_WOLFSSL_HAS_WPAS
 
 include $(INCLUDE_DIR)/package.mk
 
@@ -42,6 +42,8 @@ define Package/libwolfssl
   URL:=http://www.wolfssl.com/
   MENU:=1
   PROVIDES:=libcyassl
+  DEPENDS:=+WOLFSSL_HAS_AFALG:kmod-crypto-user
+  ABI_VERSION:=19
 endef
 
 define Package/libwolfssl/description
@@ -53,7 +55,7 @@ define Package/libwolfssl/config
 	source "$(SOURCE)/Config.in"
 endef
 
-TARGET_CFLAGS += $(FPIC)
+TARGET_CFLAGS += $(FPIC) -DFP_MAX_BITS=8192
 
 # --enable-stunnel needed for OpenSSL API compatibility bits
 CONFIGURE_ARGS += \
@@ -61,70 +63,19 @@ CONFIGURE_ARGS += \
 	--enable-sni \
 	--enable-stunnel \
 	--disable-examples \
-	--disable-leanpsk \
-	--disable-leantls \
-
-ifeq ($(CONFIG_IPV6),y)
-CONFIGURE_ARGS += \
-        --enable-ipv6
-endif
-
-ifeq ($(CONFIG_WOLFSSL_HAS_AES_CCM),y)
-CONFIGURE_ARGS += \
-	--enable-aesccm
-endif
-
-ifneq ($(CONFIG_WOLFSSL_HAS_AES_GCM),y)
-CONFIGURE_ARGS += \
-	--disable-aesgcm
-endif
-
-ifneq ($(CONFIG_WOLFSSL_HAS_CHACHA),y)
-CONFIGURE_ARGS += \
-	--disable-chacha
-endif
-
-ifeq ($(CONFIG_WOLFSSL_HAS_ECC),y)
-CONFIGURE_ARGS += \
-	--enable-ecc \
-	--enable-supportedcurves
-endif
-
-ifeq ($(CONFIG_WOLFSSL_HAS_DH),y)
-CONFIGURE_ARGS += \
-	--enable-dh
-endif
-
-ifneq ($(CONFIG_WOLFSSL_HAS_ARC4),y)
-CONFIGURE_ARGS += \
-	--disable-arc4
-else
-CONFIGURE_ARGS += \
-	--enable-arc4
-endif
-
-ifneq ($(CONFIG_WOLFSSL_HAS_DES3),y)
-CONFIGURE_ARGS += \
-	--disable-des3
-else
-CONFIGURE_ARGS += \
-	--enable-des3
-endif
-
-ifeq ($(CONFIG_WOLFSSL_HAS_PSK),y)
-CONFIGURE_ARGS += \
-	--enable-psk
-endif
-
-ifeq ($(CONFIG_WOLFSSL_HAS_SESSION_TICKET),y)
-CONFIGURE_ARGS += \
-	--enable-session-ticket
-endif
-
-ifeq ($(CONFIG_WOLFSSL_HAS_DTLS),y)
-CONFIGURE_ARGS += \
-	--enable-dtls
-endif
+	--disable-jobserver \
+	--$(if $(CONFIG_IPV6),enable,disable)-ipv6 \
+	--$(if $(CONFIG_WOLFSSL_HAS_AES_CCM),enable,disable)-aesccm \
+	--$(if $(CONFIG_WOLFSSL_HAS_CHACHA_POLY),enable,disable)-chacha \
+	--$(if $(CONFIG_WOLFSSL_HAS_CHACHA_POLY),enable,disable)-poly1305 \
+	--$(if $(CONFIG_WOLFSSL_HAS_DH),enable,disable)-dh \
+	--$(if $(CONFIG_WOLFSSL_HAS_ARC4),enable,disable)-arc4 \
+	--$(if $(CONFIG_WOLFSSL_HAS_TLSV10),enable,disable)-tlsv10 \
+	--$(if $(CONFIG_WOLFSSL_HAS_TLSV13),enable,disable)-tls13 \
+	--$(if $(CONFIG_WOLFSSL_HAS_SESSION_TICKET),enable,disable)-session-ticket \
+	--$(if $(CONFIG_WOLFSSL_HAS_DTLS),enable,disable)-dtls \
+	--$(if $(CONFIG_WOLFSSL_HAS_ECC25519),enable,disable)-curve25519 \
+	--$(if $(CONFIG_WOLFSSL_HAS_AFALG),enable,disable)-afalg
 
 ifeq ($(CONFIG_WOLFSSL_HAS_OCSP),y)
 CONFIGURE_ARGS += \
@@ -136,23 +87,6 @@ CONFIGURE_ARGS += \
 	--enable-wpas --enable-sha512 --enable-fortress --enable-fastmath
 endif
 
-ifeq ($(CONFIG_WOLFSSL_HAS_ECC25519),y)
-CONFIGURE_ARGS += \
-	--enable-curve25519
-endif
-
-ifneq ($(CONFIG_WOLFSSL_HAS_POLY1305),y)
-CONFIGURE_ARGS += \
-	--enable-poly1305
-endif
-
-#ifneq ($(CONFIG_TARGET_x86),)
-#	CONFIGURE_ARGS += --enable-intelasm
-#endif
-#ifneq ($(CONFIG_TARGET_x86_64),)
-#	CONFIGURE_ARGS += --enable-intelasm
-#endif
-
 define Build/InstallDev
 	$(INSTALL_DIR) $(1)/usr/include $(1)/usr/lib/pkgconfig
 	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
@@ -167,8 +101,7 @@ endef
 
 define Package/libwolfssl/install
 	$(INSTALL_DIR) $(1)/usr/lib
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libwolfssl.so* $(1)/usr/lib/
-	ln -s libwolfssl.so $(1)/usr/lib/libcyassl.so
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libwolfssl.so.* $(1)/usr/lib/
 endef
 
 $(eval $(call BuildPackage,libwolfssl))
diff --git a/package/libs/wolfssl/patches/100-disable-hardening-check.patch b/package/libs/wolfssl/patches/100-disable-hardening-check.patch
index d913b5fdea..6cecb6b7d6 100644
--- a/package/libs/wolfssl/patches/100-disable-hardening-check.patch
+++ b/package/libs/wolfssl/patches/100-disable-hardening-check.patch
@@ -1,6 +1,6 @@
 --- a/wolfssl/wolfcrypt/settings.h
 +++ b/wolfssl/wolfcrypt/settings.h
-@@ -1624,7 +1624,7 @@ extern void uITRON4_free(void *p) ;
+@@ -1880,7 +1880,7 @@ extern void uITRON4_free(void *p) ;
  #endif
  
  /* warning for not using harden build options (default with ./configure) */
@@ -8,4 +8,4 @@
 +#if 0
      #if (defined(USE_FAST_MATH) && !defined(TFM_TIMING_RESISTANT)) || \
          (defined(HAVE_ECC) && !defined(ECC_TIMING_RESISTANT)) || \
-         (!defined(NO_RSA) && !defined(WC_RSA_BLINDING) && !defined(HAVE_FIPS))
+         (!defined(NO_RSA) && !defined(WC_RSA_BLINDING) && !defined(HAVE_FIPS) && \
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
index f7756b11c6..0000000000
--- a/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch
+++ /dev/null
@@ -1,21 +0,0 @@
---- a/configure.ac
-+++ b/configure.ac
-@@ -4140,7 +4140,6 @@ AC_CONFIG_FILES([support/wolfssl.pc])
- AC_CONFIG_FILES([rpm/spec])
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
