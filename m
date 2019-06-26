Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CE755DF7
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 03:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpbFxs0dwdWXkxtwXTW3ajpnvhsb7vlZ50VKcJr+M2g=; b=gYF8ncZ/fCswvV
	UrDbFmpFD0gd2NSGbO5UjTvVajV8GWLI7P/JQnyZB9m+6gY8Hw1a41EnaDRrE0oYq/SEdXlTNMJvN
	scw6C/I9NOyyffVVa89OHOphUiMPEPDBq+vxRsjOw3bCMzxLqNm8Pf4ZQ+zyGZp55klezlaZsR9po
	425XAjgPVtacnZUUBOpK9gh2ePRUG4uW+a1BO3TggciKE60RHdqvyXYMNhX7Fw2rm8iFGV650jVl+
	yjKcyKZ21aZUoLl9CUxQWX0loTPNVSpNx4kAY2L2k23zn65/1f5+YQ1kUEUk7MZTOgDC32K71jhw2
	PJz3DklPLFFtWDb1rACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfx5m-0005Nk-TV; Wed, 26 Jun 2019 01:51:22 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfx4r-0004uY-0T
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 01:50:27 +0000
Received: by mail-qk1-x744.google.com with SMTP id a27so369732qkk.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 18:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=emRk4wMXn4ql6DHl459EUbzDINmnf0S28X2BfPicAto=;
 b=RUMGbXgxg7mMUhK2walvU85s/SxWJ0twK4A1BXgwLZnKh/kjrC9VduzWHa0TqR8MuL
 g21Cy9Yuzp9wJ9FF5a2g+FhYcy8vMEneaJOAnbH4S7/eKDEXfWpkpdJbVrjqg072AJ0P
 LVdDq9ARhXTmYY+JYHgiReG8NQFWJ2i4IGnzhWczxNtiwaHYicNuubDvjUqJV4k3r2FF
 MlNJglWSF0MCJyOJL69sAVkKIQfeE54tCkF/8GwxycDBoQmz0hMfdwDcTlS1z3jXQcwm
 yOo06oBimGGRpnPPKIYBiCZ3EDKLVtSEBKb1cVfMxgWWrQ7EUP6/XPMFoTwqZ2BZUPsi
 +RTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=emRk4wMXn4ql6DHl459EUbzDINmnf0S28X2BfPicAto=;
 b=gRrf3OMkQCVaBvxSrei7XUto26gPiibOFqN6iL4umzU7erHDjcHvdxCISaubIQP5l1
 YMQUZztL5MfU4WhePXLSt6aFlXx3jb3YcR/fEQiBRQEcVEoI9wjn67ES4rtTDzN5pzqr
 3czRFbNwNIVUfOLLmKhvur1rrehtPm1wdbJzy9nCkha2Co4Xkyea4cCfbXdttwW4Jxvt
 bj+PcH1Nb30sjp+kAN5FMUA8DaR6RkJwLxN0HGd5KzxkWC2oaSpOR7Sc8JWkjzaBjMva
 jHfDDyJfPfL3jcprJ2IlD6ieeh2QBq6hqz6GYJD0aUvHnEcZJB/xxFf2NGEKFO0+5A22
 QGyw==
X-Gm-Message-State: APjAAAXjBmZ3oxvessSKcJEbtXrcGcq0YiBXcdkO0w8xncLthh/NRMyb
 EpsJUwfV1jEQAVKYydEksGHpyTpryl4=
X-Google-Smtp-Source: APXvYqyjYIbM/W7iPDuwFoVBu7tUdz+5O59oOJRvRnAAwzKXLvH90STNzV9mLuCYLNScLIHOznQiDg==
X-Received: by 2002:a37:4e51:: with SMTP id c78mr1517521qkb.19.1561513823665; 
 Tue, 25 Jun 2019 18:50:23 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id a54sm6523437qtk.85.2019.06.25.18.50.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 18:50:23 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Jun 2019 22:49:46 -0300
Message-Id: <20190626014947.19818-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626014947.19818-1-cotequeiroz@gmail.com>
References: <20190626014947.19818-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_185025_533305_CF99B9CE 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/3] wolfssl: reorganize, add build options
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
Add building options for TLS 1.0 and TLS 1.3.
Add hardware crypto support, which due to a bug, only works when CCM
support is turned off.
Reorganized option conditionals in Makefile.
Add Eneas U de Queiroz as maintainer.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/wolfssl/Config.in b/package/libs/wolfssl/Config.in
index 4aa163b361..711b789f6e 100644
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
@@ -24,13 +20,18 @@ config WOLFSSL_HAS_ARC4
 	bool "Include ARC4 support"
 	default y
 
-config WOLFSSL_HAS_DES3
-	bool "Include DES3 (Tripple-DES) support"
+config WOLFSSL_HAS_TLSV10
+	bool "Include TLS 1.0 support"
 	default y
 
-config WOLFSSL_HAS_PSK
-	bool "Include PKS (Pre Share Key) support"
-	default y
+if !(WOLFSSL_HAS_AES_CCM||WOLFSSL_HAS_AES_GCM||WOLFSSL_HAS_CHACHA_POLY)
+	comment "! TLS 1.3 support needs one of: AES-CCM, AES-GCM, ChaCha20-Poly1305"
+endif
+
+config WOLFSSL_HAS_TLSV13
+	bool "Include TLS 1.3 support"
+	depends on WOLFSSL_HAS_AES_CCM||WOLFSSL_HAS_AES_GCM||WOLFSSL_HAS_CHACHA_POLY
+	default n
 
 config WOLFSSL_HAS_SESSION_TICKET
 	bool "Include session ticket support"
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
index d96dbea323..77a5f9d8fd 100644
--- a/package/libs/wolfssl/Makefile
+++ b/package/libs/wolfssl/Makefile
@@ -13,7 +13,7 @@ PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/wolfSSL/wolfssl/archive/v$(PKG_VERSION)
-PKG_HASH:=dc97c07a7667b39a890e14f4b4a209f51524a4cabee7adb6c80822ee78c1f62a
+PKG_HASH:=70e4fbeb91284a269b25a84fc526755c670475aee4034a6f237b1f754d108af3
 
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

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
