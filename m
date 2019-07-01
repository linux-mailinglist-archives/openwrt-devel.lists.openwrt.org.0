Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB94F5C158
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 18:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gucCFdG2Bfulofhbe19OyZBJGDU+2+o+/YsvBikkDCY=; b=Yi+4TwGIebyF7Y
	PWM9kKRESi7oF+HRyaDh28tMi411Mi614SuKsB04Jxarh56jv0w+wD9HfxRxHcOSHYZ4tYKhhBSmu
	85D4zJW6vENA92VCjRgoNMD50O+qw5Y+S2EWFXX/GUMZQ1LEZkLAwJr7ApGZ9SJ/hllgETfSrkzKh
	vsF5sc2aTaKYwuacj8n5hvsJc7Kj8euC0nGWU6z7TbQXaJf7T09lVEjI2WdqknaDzhZ5nMee8Dgqf
	qybmVXG7J5iOqmqJCPznB6jAiFiDbv9LtiTBsQBG4IcRWl0B+s5bKGWurk3/EyoSWqVak4VF/t2GV
	vyM3UaX4HZWxfwxfRDJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhzMq-0007PC-K2; Mon, 01 Jul 2019 16:41:24 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhzM0-0006dn-9d
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 16:40:36 +0000
Received: by mail-qt1-x832.google.com with SMTP id i34so15316009qta.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jul 2019 09:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pxasCKG9zAAB9RUflQr7t/jXE/ColBHKFhNPbh8R5iE=;
 b=YdNtZlgFb9bTTp6A7mi0ti2qyOTYNwxOIi6+OaAAuMRaMuGngU6sWjXacefAfl3A5g
 6J9vK1k845sFxD0hEfDhFmrc0QLd0FrN3svhgR0jEHa8ljoCLkRBK7MBvf5/ovK6ai0r
 VTjiir6wkMTdOyy/MEszjQzIE7fPjj+ume6pE8ztEviXHmxQiMZazm3nhO4sHJsBQYv/
 tEHVudz/Q21FjYW8o/f26IyebKOBekAzp0mpBQvP6WjA81BZ4NIMq4d7WDMZRsCXuXBO
 VVlQ6Ej714qrlIyvZUv0C3LyM//deQo1yJQRMdkV4ECEHe/HlwFlQ85GYM5iUZgirCkM
 U4JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pxasCKG9zAAB9RUflQr7t/jXE/ColBHKFhNPbh8R5iE=;
 b=Gu4iNytKHBkbb0QzCCQrnn9kHQ7pPCp/ot4Odqx3A9+D0z7KMZTJ6RmRnoWnOvtzXW
 bQ8nSB0HGYHDxoWamIuUgVDDmi7u7kD0n64QvvAlV/7Q5RYSWIP9lJel5makp0AJevb8
 79UoiCwC0t1WeBEtf1/LrH5bdJW31ByuGog4NxOBfoLPm7bLU+sxP5qmNoTXTV1TyTaW
 KyGR5NGhj01mmxQH1HLEffLR/daCsobjydZtmmQIJ6NAxOvpJ2GjUUKfipKQ9DoW/gJc
 m7ts0ETN5bCBRScSW6mv1jk8r3JoIckUHlmXklw6wDfafzDgbRlIXfy4qnnQc5zaD6sH
 lgIA==
X-Gm-Message-State: APjAAAWR0QI3Z5nq8hhWFV3k+TQJMFVHHJSd6jyM2EWEXCkzjW0zLnwg
 SUVh/tZg32dJft55AssP4m6Yrxp+
X-Google-Smtp-Source: APXvYqy2rl8HxA+ONV36K7iItzMERxCsLqUzh7wIbNcoDOS2Hy8mWhaILTctXMXCaOJOnYSZyrGE7g==
X-Received: by 2002:a0c:8774:: with SMTP id 49mr21643932qvi.223.1561999230695; 
 Mon, 01 Jul 2019 09:40:30 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id 70sm4780910qkj.118.2019.07.01.09.40.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 09:40:30 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  1 Jul 2019 13:40:00 -0300
Message-Id: <20190701164002.13915-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701164002.13915-1-cotequeiroz@gmail.com>
References: <20190701164002.13915-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_094032_349207_919DA324 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:832 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 2/3] wolfssl: update to 4.0.0-stable
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

Removed options that can't be turned off because we're building with
--enable-stunnel, some of which affect hostapd's Config.in.
Adjusted the title of OCSP option, as OCSP itself can't be turned off,
only the stapling part is selectable.
Mark options turned on when wpad support is selected.
Add building options for TLS 1.0, and TLS 1.3.
Add hardware crypto support, which due to a bug, only works when CCM
support is turned off.
Reorganized option conditionals in Makefile.
Add Eneas U de Queiroz as maintainer.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/wolfssl/Config.in b/package/libs/wolfssl/Config.in
index 4aa163b361..875ff5e6a3 100644
--- a/package/libs/wolfssl/Config.in
+++ b/package/libs/wolfssl/Config.in
@@ -8,12 +8,8 @@ config WOLFSSL_HAS_AES_GCM
 	bool "Include AES-GCM support"
 	default y
 
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
@@ -24,12 +20,17 @@ config WOLFSSL_HAS_ARC4
 	bool "Include ARC4 support"
 	default y
 
-config WOLFSSL_HAS_DES3
-	bool "Include DES3 (Tripple-DES) support"
+config WOLFSSL_HAS_TLSV10
+	bool "Include TLS 1.0 support"
 	default y
 
-config WOLFSSL_HAS_PSK
-	bool "Include PKS (Pre Share Key) support"
+if !(WOLFSSL_HAS_AES_CCM||WOLFSSL_HAS_AES_GCM||WOLFSSL_HAS_CHACHA_POLY)
+	comment "! TLS 1.3 support needs one of: AES-CCM, AES-GCM, ChaCha20-Poly1305"
+endif
+
+config WOLFSSL_HAS_TLSV13
+	bool "Include TLS 1.3 support"
+	depends on WOLFSSL_HAS_AES_CCM||WOLFSSL_HAS_AES_GCM||WOLFSSL_HAS_CHACHA_POLY
 	default y
 
 config WOLFSSL_HAS_SESSION_TICKET
@@ -41,20 +42,40 @@ config WOLFSSL_HAS_DTLS
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
 
-config WOLFSSL_HAS_POLY1305
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
+
+		config WOLFSSL_HAS_DEVCRYPTO_AES
+			bool "/dev/crypto - AES-only"
+
+		config WOLFSSL_HAS_DEVCRYPTO_FULL
+			bool "/dev/crypto - full"
+	endchoice
+endif
 
 endif
diff --git a/package/libs/wolfssl/Makefile b/package/libs/wolfssl/Makefile
index 7aaa562539..678eb4936b 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -8,12 +8,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=wolfssl
-PKG_VERSION:=3.15.7-stable
+PKG_VERSION:=4.0.0-stable
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=dc97c07a7667b39a890e14f4b4a209f51524a4cabee7adb6c80822ee78c1f62a
+PKG_HASH:=6cf678c72b485d1904047c40c20f85104c96b5f39778822783a2c407ccb23657
 
 PKG_FIXUP:=libtool
 PKG_INSTALL:=1
@@ -21,15 +21,17 @@ PKG_USE_MIPS16:=0
 PKG_BUILD_PARALLEL:=1
 PKG_LICENSE:=GPL-2.0-or-later
 PKG_LICENSE_FILES:=LICENSING COPYING
+PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
 PKG_CPE_ID:=cpe:/a:wolfssl:wolfssl
 
 PKG_CONFIG_DEPENDS:=\
 	CONFIG_WOLFSSL_HAS_AES_CCM CONFIG_WOLFSSL_HAS_AES_GCM \
-	CONFIG_WOLFSSL_HAS_ARC4 CONFIG_WOLFSSL_HAS_CHACHA \
-	CONFIG_WOLFSSL_HAS_DES3 CONFIG_WOLFSSL_HAS_DH CONFIG_WOLFSSL_HAS_DTLS \
-	CONFIG_WOLFSSL_HAS_ECC CONFIG_WOLFSSL_HAS_ECC25519 \
-	CONFIG_WOLFSSL_HAS_OCSP CONFIG_WOLFSSL_HAS_POLY1305 \
-	CONFIG_WOLFSSL_HAS_PSK CONFIG_WOLFSSL_HAS_SESSION_TICKET \
+	CONFIG_WOLFSSL_HAS_AFALG CONFIG_WOLFSSL_HAS_ARC4 \
+	CONFIG_WOLFSSL_HAS_CHACHA_POLY CONFIG_WOLFSSL_HAS_DEVCRYPTO_AES \
+	CONFIG_WOLFSSL_HAS_DEVCRYPTO_FULL, CONFIG_WOLFSSL_HAS_DH \
+	CONFIG_WOLFSSL_HAS_DTLS CONFIG_WOLFSSL_HAS_ECC25519 \
+	CONFIG_WOLFSSL_HAS_OCSP CONFIG_WOLFSSL_HAS_SESSION_TICKET \
+	CONFIG_WOLFSSL_HAS_TLSV10 CONFIG_WOLFSSL_HAS_TLSV13 \
 	CONFIG_WOLFSSL_HAS_WPAS
 
 include $(INCLUDE_DIR)/package.mk
@@ -42,6 +44,7 @@ define Package/libwolfssl
   URL:=http://www.wolfssl.com/
   MENU:=1
   PROVIDES:=libcyassl
+  DEPENDS:=+WOLFSSL_HAS_DEVCRYPTO:kmod-cryptodev +WOLFSSL_HAS_AFALG:kmod-crypto-user
   ABI_VERSION:=19
 endef
 
@@ -64,68 +67,20 @@ CONFIGURE_ARGS += \
 	--disable-examples \
 	--disable-leanpsk \
 	--disable-leantls \
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
+	--$(if $(CONFIG_IPV6),enable,disable)-ipv6 \
+	--$(if $(CONFIG_WOLFSSL_HAS_AES_CCM),enable,disable)-aesccm \
+	--$(if $(CONFIG_WOLFSSL_HAS_AES_GCM),enable,disable)-aesgcm \
+	--$(if $(CONFIG_WOLFSSL_HAS_CHACHA_POLY),enable,disable)-chacha \
+	--$(if $(CONFIG_WOLFSSL_HAS_CHACHA_POLY),enable,disable)-poly1305 \
+	--$(if $(CONFIG_WOLFSSL_HAS_DH),enable,disable)-dh \
+	--$(if $(CONFIG_WOLFSSL_HAS_ARC4),enable,disable)-arc4 \
+	--$(if $(CONFIG_WOLFSSL_HAS_TLSV10),enable,disable)-tlsv10 \
+	--$(if $(CONFIG_WOLFSSL_HAS_TLSV13),enable,disable)-tls13 \
+	--$(if $(CONFIG_WOLFSSL_HAS_SESSION_TICKET),enable,disable)-session-ticket \
+	--$(if $(CONFIG_WOLFSSL_HAS_DTLS),enable,disable)-dtls \
+	--$(if $(CONFIG_WOLFSSL_HAS_ECC25519),enable,disable)-curve25519 \
+	--$(if $(CONFIG_WOLFSSL_HAS_AFALG),enable,disable)-afalg \
+	--enable-devcrypto=$(if $(CONFIG_WOLFSSL_HAS_DEVCRYPTO_AES),aes,$(if $(CONFIG_WOLFSSL_HAS_DEVCRYPTO_FULL),yes,no))
 
 ifeq ($(CONFIG_WOLFSSL_HAS_OCSP),y)
 CONFIGURE_ARGS += \
@@ -137,23 +92,6 @@ CONFIGURE_ARGS += \
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
diff --git a/package/libs/wolfssl/patches/100-disable-hardening-check.patch b/package/libs/wolfssl/patches/100-disable-hardening-check.patch
index 8a51434633..6cecb6b7d6 100644
--- a/package/libs/wolfssl/patches/100-disable-hardening-check.patch
+++ b/package/libs/wolfssl/patches/100-disable-hardening-check.patch
@@ -1,6 +1,6 @@
 --- a/wolfssl/wolfcrypt/settings.h
 +++ b/wolfssl/wolfcrypt/settings.h
-@@ -1759,7 +1759,7 @@ extern void uITRON4_free(void *p) ;
+@@ -1880,7 +1880,7 @@ extern void uITRON4_free(void *p) ;
  #endif
  
  /* warning for not using harden build options (default with ./configure) */
diff --git a/package/libs/wolfssl/patches/101-AR-flags-configure-update.patch b/package/libs/wolfssl/patches/101-AR-flags-configure-update.patch
deleted file mode 100644
index 9401a54a5b..0000000000
--- a/package/libs/wolfssl/patches/101-AR-flags-configure-update.patch
+++ /dev/null
@@ -1,23 +0,0 @@
-From 42eacece82b6375a9f4bab3903a1a39f7d1dd579 Mon Sep 17 00:00:00 2001
-From: John Safranek <john@wolfssl.com>
-Date: Tue, 5 Mar 2019 09:26:30 -0800
-Subject: [PATCH] AR flags configure update In at least one environment the
- check for particular AR options was failing due to a bash script bug. Deleted
- an extra pair of parenthesis triggering an arithmetic statement when
- redundant grouping was desired.
-
----
- configure.ac | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
---- a/configure.ac
-+++ b/configure.ac
-@@ -15,7 +15,7 @@ AC_CONFIG_AUX_DIR([build-aux])
- : ${CFLAGS=""}
- 
- # Test ar for the "U" option. Should be checked before the libtool macros.
--xxx_ar_flags=$((ar --help) 2>&1)
-+xxx_ar_flags=$(ar --help 2>&1)
- AS_CASE([$xxx_ar_flags],[*'use actual timestamps and uids/gids'*],[: ${AR_FLAGS="Ucru"}])
- 
- AC_PROG_CC
diff --git a/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch b/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch
index 6b0861288f..34d3e62361 100644
--- a/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch
+++ b/package/libs/wolfssl/patches/900-remove-broken-autoconf-macros.patch
@@ -1,6 +1,6 @@
 --- a/configure.ac
 +++ b/configure.ac
-@@ -4614,7 +4614,6 @@ AC_CONFIG_FILES([stamp-h], [echo timesta
+@@ -4740,7 +4740,6 @@ AC_CONFIG_FILES([stamp-h], [echo timesta
  AC_CONFIG_FILES([Makefile wolfssl/version.h wolfssl/options.h cyassl/options.h support/wolfssl.pc rpm/spec])
  
  AX_CREATE_GENERIC_CONFIG

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
