Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2B3B4FB5
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 15:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xoEYQS3N7aVfBHV1DSr5ye7hh/JIxtikSDoVCCunNzk=; b=ufG2C5sK7x72Jb
	VIgvNJAN+c4ixDuXcIqbWK3igWd4Ut1isTH0k4sDX7yV8eMLlLFEXxnNidBlgBvi9zK+AEZZ55+4g
	ncJ5IYol2NB0t2FapB42SgSlmpjns7e2Pm4mxat0qIO2/i+edGinw/2RYCb+SL8WRsiompOm3wFkF
	n6HVFPdwF0lFkqpvK7hiiUVODm/+1mS67yiL+uHtKzrmiLcaGPEYzq46ZNDvElyvuqawh3A2nLJRm
	IUEt4qsKLCe7C4CMdHVOpPrDKSEd6sAg5IIqapKKeaCG44hQT3100yYRLCeSq9vgSXFbLCbEeKSKo
	w0qJoijEQ5IvVCo6GOFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADuo-0004Wa-JG; Tue, 17 Sep 2019 13:53:10 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADu1-00043k-5V
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 13:52:29 +0000
Received: by mail-qk1-x733.google.com with SMTP id p10so4044563qkg.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 06:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VlklRYUU0qfKtj59VfyZ84WajwQptl1DSl0/PRRivCg=;
 b=Pi+8DRHou/Nb5mgqm94atiNPQCI74HdbZZ1v7eLo/sCOTNEY+jHlqV8a3SWrasLK0w
 LUKqSXFoYvgd0HzblGEy7jfVxE1JcZSryEFTHrWN6zqOK6KLo1/xrfuvrivCoySw1KaR
 +G159ij/FRnhSAeuZ60inEOHCvqRmVIKOiePFxcHZc/Pgj5hXzU2oXM8Z9w9em67t716
 jBqYYTnkNaWAXN8VuaKnrY46+kYwl86Akd1wE2/ypqDH8etUrqLlZhVJRUrYEZMHEG1t
 a9g9R1DsUEZQejf+BG213uuxK+zxkrkVTQb5AVIZpMy9gOvlrHkHGse3buxLX7WU4znc
 mQrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VlklRYUU0qfKtj59VfyZ84WajwQptl1DSl0/PRRivCg=;
 b=luX+Y9sN70jsylX8YUUW+uhOkrQNgracOHG06Pb5nqH7R510ZnZt8cB7fy1FX8bXP7
 WYeAv66lZ3Bvr7/+UProbtkAlet5Y9oohnqvgUaMKPaguX1ZYOwTOSECmI4lYjZRTAUs
 b2BFOp4ju6qHee87MgvxrGpXAqmhFVnP0FYkih31LYhbd4IWgrLierQ6En/tPW8iyuUN
 ZOiNjs0BKLRArTIMqzrrRC56I53i9CG8isL2hmoKDBQwkg5Umlv/KbFRIHcOQZbTzhWd
 7+HpiBj0F5DLu/CnpdrncHFaY0BFIeSxzP+EHYCvR+HIXy8lBxg0CCz4ptN7KLelxG+B
 LUwg==
X-Gm-Message-State: APjAAAUEQyhb3ty/UXNRp4nxUIDHMsbVik8r+WQjaQ86Z8PWe7NxEgVJ
 W0pzlqVO5uL8H8nO8KqrGxBJlmq0
X-Google-Smtp-Source: APXvYqwtCb/JtieNeqTUJD3AhNnJdSlGqTJKnCiGF3p1HsoSojOmtrhqEUNBv3uCjv6R1sR7MtWNYg==
X-Received: by 2002:a05:620a:1252:: with SMTP id
 a18mr3974020qkl.88.1568728337932; 
 Tue, 17 Sep 2019 06:52:17 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id u23sm1213015qkm.49.2019.09.17.06.52.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 06:52:17 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 10:52:11 -0300
Message-Id: <20190917135211.21673-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Spam-Note: CRM114 run bypassed due to message size (118571 bytes)
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] openssl: bump to 1.1.1d
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

This version fixes 3 low-severity vulnerabilities:

- CVE-2019-1547: ECDSA remote timing attack
- CVE-2019-1549: Fork Protection
- CVE-2019-1563: Padding Oracle in PKCS7_dataDecode and
		 CMS_decrypt_set1_pkey

Patches were refreshed.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

--
Run-tested on WRT3200ACM, mvebu, running openwrt master, using uhttpd,
nginx, openssl-util, and uclient-fetch; devcrypto engine specifically
tested.

This should be cherry-picked to openwrt-19.07 as well.

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 5663fd4b95..28625bad05 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -9,9 +9,9 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssl
 PKG_BASE:=1.1.1
-PKG_BUGFIX:=c
+PKG_BUGFIX:=d
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=2
+PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
@@ -24,7 +24,7 @@ PKG_SOURCE_URL:= \
 	ftp://ftp.pca.dfn.de/pub/tools/net/openssl/source/ \
 	http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/
-PKG_HASH:=f6fb3079ad15076154eda9413fed42877d668e7069d9b87396d0804fdb3f4c90
+PKG_HASH:=1e3a91bc1f9dfce01af26026f856e064eab4c8ee0a8f457b5ae30b40b8b711f2
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
diff --git a/package/libs/openssl/patches/100-Configure-afalg-support.patch b/package/libs/openssl/patches/100-Configure-afalg-support.patch
index 274a4f1cf9..0f91a9d5da 100644
--- a/package/libs/openssl/patches/100-Configure-afalg-support.patch
+++ b/package/libs/openssl/patches/100-Configure-afalg-support.patch
@@ -1,4 +1,4 @@
-From bf4f3a5696c65b4a48935599ccba43311c114c95 Mon Sep 17 00:00:00 2001
+From 559fbff13af9ce2fbc0b9bc5727a7323e1db6217 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Thu, 27 Sep 2018 08:29:21 -0300
 Subject: Do not use host kernel version to disable AFALG
@@ -8,9 +8,11 @@ version to disable building the AFALG engine on openwrt targets.
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/Configure b/Configure
+index 5a699836f3..74d057c219 100755
 --- a/Configure
 +++ b/Configure
-@@ -1535,7 +1535,9 @@ unless ($disabled{"crypto-mdebug-backtra
+@@ -1532,7 +1532,9 @@ unless ($disabled{"crypto-mdebug-backtrace"})
  
  unless ($disabled{afalgeng}) {
      $config{afalgeng}="";
diff --git a/package/libs/openssl/patches/110-openwrt_targets.patch b/package/libs/openssl/patches/110-openwrt_targets.patch
index bc49e27aeb..d0530b4661 100644
--- a/package/libs/openssl/patches/110-openwrt_targets.patch
+++ b/package/libs/openssl/patches/110-openwrt_targets.patch
@@ -1,4 +1,4 @@
-From 9a83f8fb7c46215dfb8d6dc2e2cc612bc2a0fd01 Mon Sep 17 00:00:00 2001
+From 3d43acc6068f00dbfc0c9a06355e2c8f7d302d0f Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Thu, 27 Sep 2018 08:30:24 -0300
 Subject: Add openwrt targets
@@ -7,6 +7,9 @@ Targets are named: linux-$(CONFIG_ARCH)-openwrt
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/Configurations/25-openwrt.conf b/Configurations/25-openwrt.conf
+new file mode 100644
+index 0000000000..86a86d31e4
 --- /dev/null
 +++ b/Configurations/25-openwrt.conf
 @@ -0,0 +1,48 @@
diff --git a/package/libs/openssl/patches/120-strip-cflags-from-binary.patch b/package/libs/openssl/patches/120-strip-cflags-from-binary.patch
index d6e35b7451..75fb9d1684 100644
--- a/package/libs/openssl/patches/120-strip-cflags-from-binary.patch
+++ b/package/libs/openssl/patches/120-strip-cflags-from-binary.patch
@@ -1,16 +1,18 @@
-From f453f3eccb852740e37e9436dac5670d311c13b0 Mon Sep 17 00:00:00 2001
+From 4ad8f2fe6bf3b91df7904fcbe960e5fdfca36336 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Thu, 27 Sep 2018 08:31:38 -0300
-Subject: void exposing build directories
+Subject: Avoid exposing build directories
 
 The CFLAGS contain the build directories, and are shown by calling
 OpenSSL_version(OPENSSL_CFLAGS), or running openssl version -a
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/crypto/build.info b/crypto/build.info
+index 2c619c62e8..893128345a 100644
 --- a/crypto/build.info
 +++ b/crypto/build.info
-@@ -10,7 +10,7 @@ EXTRA=  ../ms/uplink-x86.pl ../ms/uplink
+@@ -10,7 +10,7 @@ EXTRA=  ../ms/uplink-x86.pl ../ms/uplink.c ../ms/applink.c \
          ppccpuid.pl pariscid.pl alphacpuid.pl arm64cpuid.pl armv4cpuid.pl
  
  DEPEND[cversion.o]=buildinf.h
diff --git a/package/libs/openssl/patches/130-dont-build-tests-fuzz.patch b/package/libs/openssl/patches/130-dont-build-tests-fuzz.patch
index 7c61b1e292..fa79cc6022 100644
--- a/package/libs/openssl/patches/130-dont-build-tests-fuzz.patch
+++ b/package/libs/openssl/patches/130-dont-build-tests-fuzz.patch
@@ -1,4 +1,4 @@
-From e2339aa9c68837089d17cf309022cee497fe2412 Mon Sep 17 00:00:00 2001
+From ba2fe646f2d9104a18b066e43582154049e9ffcb Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Thu, 27 Sep 2018 08:34:38 -0300
 Subject: Do not build tests and fuzz directories
@@ -7,9 +7,11 @@ This shortens build time.
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/Configure b/Configure
+index 74d057c219..5813e9f8fe 100755
 --- a/Configure
 +++ b/Configure
-@@ -299,7 +299,7 @@ my $auto_threads=1;    # enable threads
+@@ -296,7 +296,7 @@ my $auto_threads=1;    # enable threads automatically? true by default
  my $default_ranlib;
  
  # Top level directories to build
@@ -18,7 +20,7 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  # crypto/ subdirectories to build
  $config{sdirs} = [
      "objects",
-@@ -311,7 +311,7 @@ $config{sdirs} = [
+@@ -308,7 +308,7 @@ $config{sdirs} = [
      "cms", "ts", "srp", "cmac", "ct", "async", "kdf", "store"
      ];
  # test/ subdirectories to build
diff --git a/package/libs/openssl/patches/140-allow-prefer-chacha20.patch b/package/libs/openssl/patches/140-allow-prefer-chacha20.patch
index ecbb5c61db..b293db28f7 100644
--- a/package/libs/openssl/patches/140-allow-prefer-chacha20.patch
+++ b/package/libs/openssl/patches/140-allow-prefer-chacha20.patch
@@ -1,4 +1,4 @@
-From 286e015bf0d30530707a5e7b3b871509f2ab50d7 Mon Sep 17 00:00:00 2001
+From 4f7ab2040bb71f03a8f8388911144559aa2a5b60 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Thu, 27 Sep 2018 08:44:39 -0300
 Subject: Add OPENSSL_PREFER_CHACHA_OVER_GCM option
@@ -14,6 +14,8 @@ when the client has it on top of its ciphersuite preference.
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/include/openssl/ssl.h b/include/openssl/ssl.h
+index 6724ccf2d2..96d959427e 100644
 --- a/include/openssl/ssl.h
 +++ b/include/openssl/ssl.h
 @@ -173,9 +173,15 @@ extern "C" {
@@ -35,9 +37,11 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  # else
  #  define TLS_DEFAULT_CIPHERSUITES "TLS_AES_256_GCM_SHA384:" \
                                     "TLS_AES_128_GCM_SHA256"
+diff --git a/ssl/ssl_ciph.c b/ssl/ssl_ciph.c
+index 27a1b2ec68..7039811323 100644
 --- a/ssl/ssl_ciph.c
 +++ b/ssl/ssl_ciph.c
-@@ -1466,11 +1466,29 @@ STACK_OF(SSL_CIPHER) *ssl_create_cipher_
+@@ -1467,11 +1467,29 @@ STACK_OF(SSL_CIPHER) *ssl_create_cipher_list(const SSL_METHOD *ssl_method,
      ssl_cipher_apply_rule(0, SSL_kECDHE, 0, 0, 0, 0, 0, CIPHER_DEL, -1, &head,
                            &tail);
  
@@ -67,7 +71,7 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  
      /*
       * ...and generally, our preferred cipher is AES.
-@@ -1526,7 +1544,7 @@ STACK_OF(SSL_CIPHER) *ssl_create_cipher_
+@@ -1527,7 +1545,7 @@ STACK_OF(SSL_CIPHER) *ssl_create_cipher_list(const SSL_METHOD *ssl_method,
       * Within each group, ciphers remain sorted by strength and previous
       * preference, i.e.,
       * 1) ECDHE > DHE
diff --git a/package/libs/openssl/patches/400-eng_devcrypto-save-ioctl-if-EVP_MD_.FLAG_ONESHOT.patch b/package/libs/openssl/patches/400-eng_devcrypto-save-ioctl-if-EVP_MD_.FLAG_ONESHOT.patch
index ebc4aa988f..84c68b16a2 100644
--- a/package/libs/openssl/patches/400-eng_devcrypto-save-ioctl-if-EVP_MD_.FLAG_ONESHOT.patch
+++ b/package/libs/openssl/patches/400-eng_devcrypto-save-ioctl-if-EVP_MD_.FLAG_ONESHOT.patch
@@ -1,7 +1,7 @@
-From 48e2c9202ea345347da91f4c583e5915eb010d50 Mon Sep 17 00:00:00 2001
+From f14345422747a495a52f9237a43b8be189f21912 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Mon, 5 Nov 2018 15:54:17 -0200
-Subject: [PATCH 1/4] eng_devcrypto: save ioctl if EVP_MD_..FLAG_ONESHOT
+Subject: eng_devcrypto: save ioctl if EVP_MD_..FLAG_ONESHOT
 
 Since each ioctl causes a context switch, slowing things down, if
 EVP_MD_CTX_FLAG_ONESHOT is set, then:
@@ -14,6 +14,8 @@ Reviewed-by: Matthias St. Pierre <Matthias.St.Pierre@ncp-e.com>
 Reviewed-by: Richard Levitte <levitte@openssl.org>
 (Merged from https://github.com/openssl/openssl/pull/7585)
 
+diff --git a/crypto/engine/eng_devcrypto.c b/crypto/engine/eng_devcrypto.c
+index a727c6f646..a2c9a966f7 100644
 --- a/crypto/engine/eng_devcrypto.c
 +++ b/crypto/engine/eng_devcrypto.c
 @@ -461,6 +461,7 @@ struct digest_ctx {
@@ -24,7 +26,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  };
  
  static const struct digest_data_st {
-@@ -564,12 +565,15 @@ static int digest_update(EVP_MD_CTX *ctx
+@@ -564,12 +565,15 @@ static int digest_update(EVP_MD_CTX *ctx, const void *data, size_t count)
      if (digest_ctx == NULL)
          return 0;
  
@@ -44,7 +46,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  }
  
  static int digest_final(EVP_MD_CTX *ctx, unsigned char *md)
-@@ -579,7 +583,10 @@ static int digest_final(EVP_MD_CTX *ctx,
+@@ -579,7 +583,10 @@ static int digest_final(EVP_MD_CTX *ctx, unsigned char *md)
  
      if (md == NULL || digest_ctx == NULL)
          return 0;
diff --git a/package/libs/openssl/patches/410-eng_devcrypto-add-configuration-options.patch b/package/libs/openssl/patches/410-eng_devcrypto-add-configuration-options.patch
index 18a430e83d..8745364cf2 100644
--- a/package/libs/openssl/patches/410-eng_devcrypto-add-configuration-options.patch
+++ b/package/libs/openssl/patches/410-eng_devcrypto-add-configuration-options.patch
@@ -1,7 +1,7 @@
-From 800272d22acf95070f22c870eca15bdba0539a6a Mon Sep 17 00:00:00 2001
+From 1c2fabcdb34e436286b4a8760cfbfbff11ea551a Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Sat, 3 Nov 2018 15:41:10 -0300
-Subject: [PATCH 2/4] eng_devcrypto: add configuration options
+Subject: eng_devcrypto: add configuration options
 
 USE_SOFTDRIVERS: whether to use software (not accelerated) drivers
 CIPHERS: list of ciphers to enable
@@ -13,6 +13,8 @@ Reviewed-by: Matthias St. Pierre <Matthias.St.Pierre@ncp-e.com>
 Reviewed-by: Richard Levitte <levitte@openssl.org>
 (Merged from https://github.com/openssl/openssl/pull/7585)
 
+diff --git a/crypto/engine/eng_devcrypto.c b/crypto/engine/eng_devcrypto.c
+index a2c9a966f7..5ec38ca8f3 100644
 --- a/crypto/engine/eng_devcrypto.c
 +++ b/crypto/engine/eng_devcrypto.c
 @@ -16,6 +16,7 @@
@@ -78,7 +80,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  
      /*
       * Code further down must make sure that only NIDs in the table above
-@@ -333,19 +367,40 @@ static int cipher_cleanup(EVP_CIPHER_CTX
+@@ -333,19 +367,40 @@ static int cipher_cleanup(EVP_CIPHER_CTX *ctx)
  }
  
  /*
@@ -184,7 +186,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  static const EVP_CIPHER *get_cipher_method(int nid)
  {
      size_t i = get_cipher_data_index(nid);
-@@ -438,6 +520,36 @@ static int devcrypto_ciphers(ENGINE *e,
+@@ -438,6 +520,36 @@ static int devcrypto_ciphers(ENGINE *e, const EVP_CIPHER **cipher,
      return *cipher != NULL;
  }
  
@@ -245,7 +247,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  
      /*
       * Code further down must make sure that only NIDs in the table above
-@@ -516,8 +637,8 @@ static const struct digest_data_st *get_
+@@ -516,8 +637,8 @@ static const struct digest_data_st *get_digest_data(int nid)
  }
  
  /*
@@ -256,7 +258,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
   */
  
  static int digest_init(EVP_MD_CTX *ctx)
-@@ -630,52 +751,94 @@ static int digest_cleanup(EVP_MD_CTX *ct
+@@ -630,52 +751,94 @@ static int digest_cleanup(EVP_MD_CTX *ctx)
      return clean_devcrypto_session(&digest_ctx->sess);
  }
  
@@ -401,7 +403,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
      }
  }
  
-@@ -739,7 +909,153 @@ static int devcrypto_digests(ENGINE *e,
+@@ -739,8 +909,154 @@ static int devcrypto_digests(ENGINE *e, const EVP_MD **digest,
      return *digest != NULL;
  }
  
@@ -477,8 +479,8 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
 +    "DIGESTS",
 +    "either ALL, NONE, or a comma-separated list of digests to enable [default=ALL]",
 +    ENGINE_CMD_FLAG_STRING},
-+#endif
-+
+ #endif
+ 
 +   {0, NULL, NULL, 0}
 +};
 +
@@ -502,7 +504,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
 +        use_softdrivers = i;
 +#ifdef IMPLEMENT_DIGEST
 +        rebuild_known_digest_nids(e);
- #endif
++#endif
 +        rebuild_known_cipher_nids(e);
 +        return 1;
 +#endif /* CIOCGSESSINFO */
@@ -552,9 +554,10 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
 +    }
 +    return 0;
 +}
- 
++
  /******************************************************************************
   *
+  * LOAD / UNLOAD
 @@ -793,6 +1109,8 @@ void engine_load_devcrypto_int()
  
      if (!ENGINE_set_id(e, "devcrypto")
diff --git a/package/libs/openssl/patches/420-eng_devcrypto-add-command-to-dump-driver-info.patch b/package/libs/openssl/patches/420-eng_devcrypto-add-command-to-dump-driver-info.patch
index bb18d71aba..ad83a51a10 100644
--- a/package/libs/openssl/patches/420-eng_devcrypto-add-command-to-dump-driver-info.patch
+++ b/package/libs/openssl/patches/420-eng_devcrypto-add-command-to-dump-driver-info.patch
@@ -1,7 +1,7 @@
-From ced41f7d44cb8cd3c4523f7271530d9d92e4f064 Mon Sep 17 00:00:00 2001
+From 78e7b1cc7119622645bc5a8542c55b6c95dc7868 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Tue, 6 Nov 2018 22:54:07 -0200
-Subject: [PATCH 3/4] eng_devcrypto: add command to dump driver info
+Subject: eng_devcrypto: add command to dump driver info
 
 This is useful to determine the kernel driver running each algorithm.
 
@@ -11,9 +11,11 @@ Reviewed-by: Matthias St. Pierre <Matthias.St.Pierre@ncp-e.com>
 Reviewed-by: Richard Levitte <levitte@openssl.org>
 (Merged from https://github.com/openssl/openssl/pull/7585)
 
+diff --git a/crypto/engine/eng_devcrypto.c b/crypto/engine/eng_devcrypto.c
+index 5ec38ca8f3..64dc6b891d 100644
 --- a/crypto/engine/eng_devcrypto.c
 +++ b/crypto/engine/eng_devcrypto.c
-@@ -50,16 +50,20 @@ static int use_softdrivers = DEVCRYPTO_D
+@@ -50,16 +50,20 @@ static int use_softdrivers = DEVCRYPTO_DEFAULT_USE_SOFDTRIVERS;
   */
  struct driver_info_st {
      enum devcrypto_status_t {
@@ -80,7 +82,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  #endif /* CIOCGSESSINFO */
          }
          ioctl(cfd, CIOCFSESSION, &sess.ses);
-@@ -505,8 +514,11 @@ static void destroy_all_cipher_methods(v
+@@ -505,8 +514,11 @@ static void destroy_all_cipher_methods(void)
  {
      size_t i;
  
@@ -93,7 +95,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  }
  
  static int devcrypto_ciphers(ENGINE *e, const EVP_CIPHER **cipher,
-@@ -550,6 +562,40 @@ static int cryptodev_select_cipher_cb(co
+@@ -550,6 +562,40 @@ static int cryptodev_select_cipher_cb(const char *str, int len, void *usr)
      return 1;
  }
  
@@ -188,7 +190,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
              EVP_MD_meth_free(known_digest_methods[i]);
              known_digest_methods[i] = NULL;
              goto finish;
-@@ -894,8 +945,11 @@ static void destroy_all_digest_methods(v
+@@ -894,8 +945,11 @@ static void destroy_all_digest_methods(void)
  {
      size_t i;
  
@@ -201,7 +203,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  }
  
  static int devcrypto_digests(ENGINE *e, const EVP_MD **digest,
-@@ -939,6 +993,43 @@ static int cryptodev_select_digest_cb(co
+@@ -939,6 +993,43 @@ static int cryptodev_select_digest_cb(const char *str, int len, void *usr)
      return 1;
  }
  
@@ -245,7 +247,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
  #endif
  
  /******************************************************************************
-@@ -983,6 +1074,11 @@ static const ENGINE_CMD_DEFN devcrypto_c
+@@ -983,6 +1074,11 @@ static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
      ENGINE_CMD_FLAG_STRING},
  #endif
  
@@ -257,7 +259,7 @@ Reviewed-by: Richard Levitte <levitte@openssl.org>
     {0, NULL, NULL, 0}
  };
  
-@@ -1051,6 +1147,13 @@ static int devcrypto_ctrl(ENGINE *e, int
+@@ -1051,6 +1147,13 @@ static int devcrypto_ctrl(ENGINE *e, int cmd, long i, void *p, void (*f) (void))
          return 1;
  #endif /* IMPLEMENT_DIGEST */
  
diff --git a/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch b/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch
index bfe727aded..ee33942426 100644
--- a/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch
+++ b/package/libs/openssl/patches/430-e_devcrypto-make-the-dev-crypto-engine-dynamic.patch
@@ -1,13 +1,15 @@
-From 37a5c14aad5051201e4bd18faf1a4b25a824cc30 Mon Sep 17 00:00:00 2001
+From f3cef70b34afde3afd13ce3636232d41533b0162 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Tue, 6 Nov 2018 10:57:03 -0200
-Subject: [PATCH 4/4] e_devcrypto: make the /dev/crypto engine dynamic
+Subject: e_devcrypto: make the /dev/crypto engine dynamic
 
 Engine has been moved from crypto/engine/eng_devcrypto.c to
 engines/e_devcrypto.c.
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/crypto/engine/build.info b/crypto/engine/build.info
+index e00802a3fd..47fe948966 100644
 --- a/crypto/engine/build.info
 +++ b/crypto/engine/build.info
 @@ -6,6 +6,3 @@ SOURCE[../../libcrypto]=\
@@ -17,9 +19,11 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 -IF[{- !$disabled{devcryptoeng} -}]
 -  SOURCE[../../libcrypto]=eng_devcrypto.c
 -ENDIF
+diff --git a/crypto/init.c b/crypto/init.c
+index 9fc0e8ef68..b387559920 100644
 --- a/crypto/init.c
 +++ b/crypto/init.c
-@@ -329,18 +329,6 @@ DEFINE_RUN_ONCE_STATIC(ossl_init_engine_
+@@ -329,18 +329,6 @@ DEFINE_RUN_ONCE_STATIC(ossl_init_engine_openssl)
      engine_load_openssl_int();
      return 1;
  }
@@ -38,7 +42,7 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  
  # ifndef OPENSSL_NO_RDRAND
  static CRYPTO_ONCE engine_rdrand = CRYPTO_ONCE_STATIC_INIT;
-@@ -365,6 +353,18 @@ DEFINE_RUN_ONCE_STATIC(ossl_init_engine_
+@@ -365,6 +353,18 @@ DEFINE_RUN_ONCE_STATIC(ossl_init_engine_dynamic)
      return 1;
  }
  # ifndef OPENSSL_NO_STATIC_ENGINE
@@ -57,7 +61,7 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  #  if !defined(OPENSSL_NO_HW) && !defined(OPENSSL_NO_HW_PADLOCK)
  static CRYPTO_ONCE engine_padlock = CRYPTO_ONCE_STATIC_INIT;
  DEFINE_RUN_ONCE_STATIC(ossl_init_engine_padlock)
-@@ -713,11 +713,6 @@ int OPENSSL_init_crypto(uint64_t opts, c
+@@ -713,11 +713,6 @@ int OPENSSL_init_crypto(uint64_t opts, const OPENSSL_INIT_SETTINGS *settings)
      if ((opts & OPENSSL_INIT_ENGINE_OPENSSL)
              && !RUN_ONCE(&engine_openssl, ossl_init_engine_openssl))
          return 0;
@@ -69,7 +73,7 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  # ifndef OPENSSL_NO_RDRAND
      if ((opts & OPENSSL_INIT_ENGINE_RDRAND)
              && !RUN_ONCE(&engine_rdrand, ossl_init_engine_rdrand))
-@@ -727,6 +722,11 @@ int OPENSSL_init_crypto(uint64_t opts, c
+@@ -727,6 +722,11 @@ int OPENSSL_init_crypto(uint64_t opts, const OPENSSL_INIT_SETTINGS *settings)
              && !RUN_ONCE(&engine_dynamic, ossl_init_engine_dynamic))
          return 0;
  # ifndef OPENSSL_NO_STATIC_ENGINE
@@ -81,9 +85,11 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  #  if !defined(OPENSSL_NO_HW) && !defined(OPENSSL_NO_HW_PADLOCK)
      if ((opts & OPENSSL_INIT_ENGINE_PADLOCK)
              && !RUN_ONCE(&engine_padlock, ossl_init_engine_padlock))
+diff --git a/engines/build.info b/engines/build.info
+index 1db771971c..33a25d7004 100644
 --- a/engines/build.info
 +++ b/engines/build.info
-@@ -10,6 +10,9 @@ IF[{- !$disabled{"engine"} -}]
+@@ -11,6 +11,9 @@ IF[{- !$disabled{"engine"} -}]
      IF[{- !$disabled{afalgeng} -}]
        SOURCE[../libcrypto]=e_afalg.c
      ENDIF
@@ -91,9 +97,9 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 +      SOURCE[../libcrypto]=e_devcrypto.c
 +    ENDIF
    ELSE
-     ENGINES=padlock
-     SOURCE[padlock]=e_padlock.c {- $target{padlock_asm_src} -}
-@@ -27,6 +30,12 @@ IF[{- !$disabled{"engine"} -}]
+     IF[{- !$disabled{hw} && !$disabled{'hw-padlock'} -}]
+       ENGINES=padlock
+@@ -30,6 +33,12 @@ IF[{- !$disabled{"engine"} -}]
        DEPEND[afalg]=../libcrypto
        INCLUDE[afalg]= ../include
      ENDIF
@@ -106,2464 +112,136 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  
      ENGINES_NO_INST=ossltest dasync
      SOURCE[dasync]=e_dasync.c
+diff --git a/crypto/engine/eng_devcrypto.c b/engines/e_devcrypto.c
+similarity index 95%
+rename from crypto/engine/eng_devcrypto.c
+rename to engines/e_devcrypto.c
+index 64dc6b891d..fb5c6e1636 100644
 --- a/crypto/engine/eng_devcrypto.c
-+++ /dev/null
-@@ -1,1264 +0,0 @@
--/*
-- * Copyright 2017-2019 The OpenSSL Project Authors. All Rights Reserved.
-- *
-- * Licensed under the OpenSSL license (the "License").  You may not use
-- * this file except in compliance with the License.  You can obtain a copy
-- * in the file LICENSE in the source distribution or at
-- * https://www.openssl.org/source/license.html
-- */
--
--#include "e_os.h"
--#include <string.h>
--#include <sys/types.h>
--#include <sys/stat.h>
--#include <fcntl.h>
--#include <sys/ioctl.h>
--#include <unistd.h>
--#include <assert.h>
--
--#include <openssl/conf.h>
--#include <openssl/evp.h>
--#include <openssl/err.h>
--#include <openssl/engine.h>
--#include <openssl/objects.h>
--#include <crypto/cryptodev.h>
--
--#include "internal/engine.h"
--
--/* #define ENGINE_DEVCRYPTO_DEBUG */
--
--#ifdef CRYPTO_ALGORITHM_MIN
--# define CHECK_BSD_STYLE_MACROS
--#endif
--
--/*
-- * ONE global file descriptor for all sessions.  This allows operations
-- * such as digest session data copying (see digest_copy()), but is also
-- * saner...  why re-open /dev/crypto for every session?
-- */
--static int cfd;
--#define DEVCRYPTO_REQUIRE_ACCELERATED 0 /* require confirmation of acceleration */
--#define DEVCRYPTO_USE_SOFTWARE        1 /* allow software drivers */
--#define DEVCRYPTO_REJECT_SOFTWARE     2 /* only disallow confirmed software drivers */
--
--#define DEVCRYPTO_DEFAULT_USE_SOFDTRIVERS DEVCRYPTO_REJECT_SOFTWARE
--static int use_softdrivers = DEVCRYPTO_DEFAULT_USE_SOFDTRIVERS;
--
--/*
-- * cipher/digest status & acceleration definitions
-- * Make sure the defaults are set to 0
-- */
--struct driver_info_st {
--    enum devcrypto_status_t {
--        DEVCRYPTO_STATUS_FAILURE         = -3, /* unusable for other reason */
--        DEVCRYPTO_STATUS_NO_CIOCCPHASH   = -2, /* hash state copy not supported */
--        DEVCRYPTO_STATUS_NO_CIOCGSESSION = -1, /* session open failed */
--        DEVCRYPTO_STATUS_UNKNOWN         =  0, /* not tested yet */
--        DEVCRYPTO_STATUS_USABLE          =  1  /* algo can be used */
--    } status;
--
--    enum devcrypto_accelerated_t {
--        DEVCRYPTO_NOT_ACCELERATED        = -1, /* software implemented */
--        DEVCRYPTO_ACCELERATION_UNKNOWN   =  0, /* acceleration support unkown */
--        DEVCRYPTO_ACCELERATED            =  1  /* hardware accelerated */
--    } accelerated;
--
--    char *driver_name;
--};
--
--static int clean_devcrypto_session(struct session_op *sess) {
--    if (ioctl(cfd, CIOCFSESSION, &sess->ses) < 0) {
--        SYSerr(SYS_F_IOCTL, errno);
--        return 0;
--    }
--    memset(sess, 0, sizeof(struct session_op));
--    return 1;
--}
--
--/******************************************************************************
-- *
-- * Ciphers
-- *
-- * Because they all do the same basic operation, we have only one set of
-- * method functions for them all to share, and a mapping table between
-- * NIDs and cryptodev IDs, with all the necessary size data.
-- *
-- *****/
--
--struct cipher_ctx {
--    struct session_op sess;
--    int op;                      /* COP_ENCRYPT or COP_DECRYPT */
--    unsigned long mode;          /* EVP_CIPH_*_MODE */
--
--    /* to handle ctr mode being a stream cipher */
--    unsigned char partial[EVP_MAX_BLOCK_LENGTH];
--    unsigned int blocksize, num;
--};
--
--static const struct cipher_data_st {
--    int nid;
--    int blocksize;
--    int keylen;
--    int ivlen;
--    int flags;
--    int devcryptoid;
--} cipher_data[] = {
--#ifndef OPENSSL_NO_DES
--    { NID_des_cbc, 8, 8, 8, EVP_CIPH_CBC_MODE, CRYPTO_DES_CBC },
--    { NID_des_ede3_cbc, 8, 24, 8, EVP_CIPH_CBC_MODE, CRYPTO_3DES_CBC },
--#endif
--#ifndef OPENSSL_NO_BF
--    { NID_bf_cbc, 8, 16, 8, EVP_CIPH_CBC_MODE, CRYPTO_BLF_CBC },
--#endif
--#ifndef OPENSSL_NO_CAST
--    { NID_cast5_cbc, 8, 16, 8, EVP_CIPH_CBC_MODE, CRYPTO_CAST_CBC },
--#endif
--    { NID_aes_128_cbc, 16, 128 / 8, 16, EVP_CIPH_CBC_MODE, CRYPTO_AES_CBC },
--    { NID_aes_192_cbc, 16, 192 / 8, 16, EVP_CIPH_CBC_MODE, CRYPTO_AES_CBC },
--    { NID_aes_256_cbc, 16, 256 / 8, 16, EVP_CIPH_CBC_MODE, CRYPTO_AES_CBC },
--#ifndef OPENSSL_NO_RC4
--    { NID_rc4, 1, 16, 0, EVP_CIPH_STREAM_CIPHER, CRYPTO_ARC4 },
--#endif
--#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_AES_CTR)
--    { NID_aes_128_ctr, 16, 128 / 8, 16, EVP_CIPH_CTR_MODE, CRYPTO_AES_CTR },
--    { NID_aes_192_ctr, 16, 192 / 8, 16, EVP_CIPH_CTR_MODE, CRYPTO_AES_CTR },
--    { NID_aes_256_ctr, 16, 256 / 8, 16, EVP_CIPH_CTR_MODE, CRYPTO_AES_CTR },
--#endif
--#if 0                            /* Not yet supported */
--    { NID_aes_128_xts, 16, 128 / 8 * 2, 16, EVP_CIPH_XTS_MODE, CRYPTO_AES_XTS },
--    { NID_aes_256_xts, 16, 256 / 8 * 2, 16, EVP_CIPH_XTS_MODE, CRYPTO_AES_XTS },
--#endif
--#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_AES_ECB)
--    { NID_aes_128_ecb, 16, 128 / 8, 0, EVP_CIPH_ECB_MODE, CRYPTO_AES_ECB },
--    { NID_aes_192_ecb, 16, 192 / 8, 0, EVP_CIPH_ECB_MODE, CRYPTO_AES_ECB },
--    { NID_aes_256_ecb, 16, 256 / 8, 0, EVP_CIPH_ECB_MODE, CRYPTO_AES_ECB },
--#endif
--#if 0                            /* Not yet supported */
--    { NID_aes_128_gcm, 16, 128 / 8, 16, EVP_CIPH_GCM_MODE, CRYPTO_AES_GCM },
--    { NID_aes_192_gcm, 16, 192 / 8, 16, EVP_CIPH_GCM_MODE, CRYPTO_AES_GCM },
--    { NID_aes_256_gcm, 16, 256 / 8, 16, EVP_CIPH_GCM_MODE, CRYPTO_AES_GCM },
--#endif
--#ifndef OPENSSL_NO_CAMELLIA
--    { NID_camellia_128_cbc, 16, 128 / 8, 16, EVP_CIPH_CBC_MODE,
--      CRYPTO_CAMELLIA_CBC },
--    { NID_camellia_192_cbc, 16, 192 / 8, 16, EVP_CIPH_CBC_MODE,
--      CRYPTO_CAMELLIA_CBC },
--    { NID_camellia_256_cbc, 16, 256 / 8, 16, EVP_CIPH_CBC_MODE,
--      CRYPTO_CAMELLIA_CBC },
--#endif
--};
--
--static size_t find_cipher_data_index(int nid)
--{
--    size_t i;
--
--    for (i = 0; i < OSSL_NELEM(cipher_data); i++)
--        if (nid == cipher_data[i].nid)
--            return i;
--    return (size_t)-1;
--}
--
--static size_t get_cipher_data_index(int nid)
--{
--    size_t i = find_cipher_data_index(nid);
--
--    if (i != (size_t)-1)
--        return i;
--
--    /*
--     * Code further down must make sure that only NIDs in the table above
--     * are used.  If any other NID reaches this function, there's a grave
--     * coding error further down.
--     */
--    assert("Code that never should be reached" == NULL);
--    return -1;
--}
--
--static const struct cipher_data_st *get_cipher_data(int nid)
--{
--    return &cipher_data[get_cipher_data_index(nid)];
--}
--
--/*
-- * Following are the three necessary functions to map OpenSSL functionality
-- * with cryptodev.
-- */
--
--static int cipher_init(EVP_CIPHER_CTX *ctx, const unsigned char *key,
--                       const unsigned char *iv, int enc)
--{
--    struct cipher_ctx *cipher_ctx =
--        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
--    const struct cipher_data_st *cipher_d =
--        get_cipher_data(EVP_CIPHER_CTX_nid(ctx));
--
--    /* cleanup a previous session */
--    if (cipher_ctx->sess.ses != 0 &&
--        clean_devcrypto_session(&cipher_ctx->sess) == 0)
--        return 0;
--
--    cipher_ctx->sess.cipher = cipher_d->devcryptoid;
--    cipher_ctx->sess.keylen = cipher_d->keylen;
--    cipher_ctx->sess.key = (void *)key;
--    cipher_ctx->op = enc ? COP_ENCRYPT : COP_DECRYPT;
--    cipher_ctx->mode = cipher_d->flags & EVP_CIPH_MODE;
--    cipher_ctx->blocksize = cipher_d->blocksize;
--    if (ioctl(cfd, CIOCGSESSION, &cipher_ctx->sess) < 0) {
--        SYSerr(SYS_F_IOCTL, errno);
--        return 0;
--    }
--
--    return 1;
--}
--
--static int cipher_do_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
--                            const unsigned char *in, size_t inl)
--{
--    struct cipher_ctx *cipher_ctx =
--        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
--    struct crypt_op cryp;
--    unsigned char *iv = EVP_CIPHER_CTX_iv_noconst(ctx);
--#if !defined(COP_FLAG_WRITE_IV)
--    unsigned char saved_iv[EVP_MAX_IV_LENGTH];
--    const unsigned char *ivptr;
--    size_t nblocks, ivlen;
--#endif
--
--    memset(&cryp, 0, sizeof(cryp));
--    cryp.ses = cipher_ctx->sess.ses;
--    cryp.len = inl;
--    cryp.src = (void *)in;
--    cryp.dst = (void *)out;
--    cryp.iv = (void *)iv;
--    cryp.op = cipher_ctx->op;
--#if !defined(COP_FLAG_WRITE_IV)
--    cryp.flags = 0;
--
--    ivlen = EVP_CIPHER_CTX_iv_length(ctx);
--    if (ivlen > 0)
--        switch (cipher_ctx->mode) {
--        case EVP_CIPH_CBC_MODE:
--            assert(inl >= ivlen);
--            if (!EVP_CIPHER_CTX_encrypting(ctx)) {
--                ivptr = in + inl - ivlen;
--                memcpy(saved_iv, ivptr, ivlen);
--            }
--            break;
--
--        case EVP_CIPH_CTR_MODE:
--            break;
--
--        default: /* should not happen */
--            return 0;
--        }
--#else
--    cryp.flags = COP_FLAG_WRITE_IV;
--#endif
--
--    if (ioctl(cfd, CIOCCRYPT, &cryp) < 0) {
--        SYSerr(SYS_F_IOCTL, errno);
--        return 0;
--    }
--
--#if !defined(COP_FLAG_WRITE_IV)
--    if (ivlen > 0)
--        switch (cipher_ctx->mode) {
--        case EVP_CIPH_CBC_MODE:
--            assert(inl >= ivlen);
--            if (EVP_CIPHER_CTX_encrypting(ctx))
--                ivptr = out + inl - ivlen;
--            else
--                ivptr = saved_iv;
--
--            memcpy(iv, ivptr, ivlen);
--            break;
--
--        case EVP_CIPH_CTR_MODE:
--            nblocks = (inl + cipher_ctx->blocksize - 1)
--                      / cipher_ctx->blocksize;
--            do {
--                ivlen--;
--                nblocks += iv[ivlen];
--                iv[ivlen] = (uint8_t) nblocks;
--                nblocks >>= 8;
--            } while (ivlen);
--            break;
--
--        default: /* should not happen */
--            return 0;
--        }
--#endif
--
--    return 1;
--}
--
--static int ctr_do_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
--                         const unsigned char *in, size_t inl)
--{
--    struct cipher_ctx *cipher_ctx =
--        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
--    size_t nblocks, len;
--
--    /* initial partial block */
--    while (cipher_ctx->num && inl) {
--        (*out++) = *(in++) ^ cipher_ctx->partial[cipher_ctx->num];
--        --inl;
--        cipher_ctx->num = (cipher_ctx->num + 1) % cipher_ctx->blocksize;
--    }
--
--    /* full blocks */
--    if (inl > (unsigned int) cipher_ctx->blocksize) {
--        nblocks = inl/cipher_ctx->blocksize;
--        len = nblocks * cipher_ctx->blocksize;
--        if (cipher_do_cipher(ctx, out, in, len) < 1)
--            return 0;
--        inl -= len;
--        out += len;
--        in += len;
--    }
--
--    /* final partial block */
--    if (inl) {
--        memset(cipher_ctx->partial, 0, cipher_ctx->blocksize);
--        if (cipher_do_cipher(ctx, cipher_ctx->partial, cipher_ctx->partial,
--            cipher_ctx->blocksize) < 1)
--            return 0;
--        while (inl--) {
--            out[cipher_ctx->num] = in[cipher_ctx->num]
--                                   ^ cipher_ctx->partial[cipher_ctx->num];
--            cipher_ctx->num++;
--        }
--    }
--
--    return 1;
--}
--
--static int cipher_ctrl(EVP_CIPHER_CTX *ctx, int type, int p1, void* p2)
--{
--    struct cipher_ctx *cipher_ctx =
--        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
--    EVP_CIPHER_CTX *to_ctx = (EVP_CIPHER_CTX *)p2;
--    struct cipher_ctx *to_cipher_ctx;
--
--    switch (type) {
--    case EVP_CTRL_COPY:
--        if (cipher_ctx == NULL)
--            return 1;
--        /* when copying the context, a new session needs to be initialized */
--        to_cipher_ctx =
--            (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(to_ctx);
--        memset(&to_cipher_ctx->sess, 0, sizeof(to_cipher_ctx->sess));
--        return cipher_init(to_ctx, cipher_ctx->sess.key, EVP_CIPHER_CTX_iv(ctx),
--                           (cipher_ctx->op == COP_ENCRYPT));
--
--    case EVP_CTRL_INIT:
--        memset(&cipher_ctx->sess, 0, sizeof(cipher_ctx->sess));
--        return 1;
--
--    default:
--        break;
--    }
--
--    return -1;
--}
--
--static int cipher_cleanup(EVP_CIPHER_CTX *ctx)
--{
--    struct cipher_ctx *cipher_ctx =
--        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
--
--    return clean_devcrypto_session(&cipher_ctx->sess);
--}
--
--/*
-- * Keep tables of known nids, associated methods, selected ciphers, and driver
-- * info.
-- * Note that known_cipher_nids[] isn't necessarily indexed the same way as
-- * cipher_data[] above, which the other tables are.
-- */
--static int known_cipher_nids[OSSL_NELEM(cipher_data)];
--static int known_cipher_nids_amount = -1; /* -1 indicates not yet initialised */
--static EVP_CIPHER *known_cipher_methods[OSSL_NELEM(cipher_data)] = { NULL, };
--static int selected_ciphers[OSSL_NELEM(cipher_data)];
--static struct driver_info_st cipher_driver_info[OSSL_NELEM(cipher_data)];
--
--
--static int devcrypto_test_cipher(size_t cipher_data_index)
--{
--    return (cipher_driver_info[cipher_data_index].status == DEVCRYPTO_STATUS_USABLE
--            && selected_ciphers[cipher_data_index] == 1
--            && (cipher_driver_info[cipher_data_index].accelerated
--                    == DEVCRYPTO_ACCELERATED
--                || use_softdrivers == DEVCRYPTO_USE_SOFTWARE
--                || (cipher_driver_info[cipher_data_index].accelerated
--                        != DEVCRYPTO_NOT_ACCELERATED
--                    && use_softdrivers == DEVCRYPTO_REJECT_SOFTWARE)));
--}
--
--static void prepare_cipher_methods(void)
--{
--    size_t i;
--    struct session_op sess;
--    unsigned long cipher_mode;
--#ifdef CIOCGSESSINFO
--    struct session_info_op siop;
--#endif
--
--    memset(&cipher_driver_info, 0, sizeof(cipher_driver_info));
--
--    memset(&sess, 0, sizeof(sess));
--    sess.key = (void *)"01234567890123456789012345678901234567890123456789";
--
--    for (i = 0, known_cipher_nids_amount = 0;
--         i < OSSL_NELEM(cipher_data); i++) {
--
--        selected_ciphers[i] = 1;
--        /*
--         * Check that the cipher is usable
--         */
--        sess.cipher = cipher_data[i].devcryptoid;
--        sess.keylen = cipher_data[i].keylen;
--        if (ioctl(cfd, CIOCGSESSION, &sess) < 0) {
--            cipher_driver_info[i].status = DEVCRYPTO_STATUS_NO_CIOCGSESSION;
--            continue;
--        }
--
--        cipher_mode = cipher_data[i].flags & EVP_CIPH_MODE;
--
--        if ((known_cipher_methods[i] =
--                 EVP_CIPHER_meth_new(cipher_data[i].nid,
--                                     cipher_mode == EVP_CIPH_CTR_MODE ? 1 :
--                                                    cipher_data[i].blocksize,
--                                     cipher_data[i].keylen)) == NULL
--            || !EVP_CIPHER_meth_set_iv_length(known_cipher_methods[i],
--                                              cipher_data[i].ivlen)
--            || !EVP_CIPHER_meth_set_flags(known_cipher_methods[i],
--                                          cipher_data[i].flags
--                                          | EVP_CIPH_CUSTOM_COPY
--                                          | EVP_CIPH_CTRL_INIT
--                                          | EVP_CIPH_FLAG_DEFAULT_ASN1)
--            || !EVP_CIPHER_meth_set_init(known_cipher_methods[i], cipher_init)
--            || !EVP_CIPHER_meth_set_do_cipher(known_cipher_methods[i],
--                                     cipher_mode == EVP_CIPH_CTR_MODE ?
--                                              ctr_do_cipher :
--                                              cipher_do_cipher)
--            || !EVP_CIPHER_meth_set_ctrl(known_cipher_methods[i], cipher_ctrl)
--            || !EVP_CIPHER_meth_set_cleanup(known_cipher_methods[i],
--                                            cipher_cleanup)
--            || !EVP_CIPHER_meth_set_impl_ctx_size(known_cipher_methods[i],
--                                                  sizeof(struct cipher_ctx))) {
--            cipher_driver_info[i].status = DEVCRYPTO_STATUS_FAILURE;
--            EVP_CIPHER_meth_free(known_cipher_methods[i]);
--            known_cipher_methods[i] = NULL;
--        } else {
--            cipher_driver_info[i].status = DEVCRYPTO_STATUS_USABLE;
--#ifdef CIOCGSESSINFO
--            siop.ses = sess.ses;
--            if (ioctl(cfd, CIOCGSESSINFO, &siop) < 0) {
--                cipher_driver_info[i].accelerated = DEVCRYPTO_ACCELERATION_UNKNOWN;
--            } else {
--                cipher_driver_info[i].driver_name =
--                    OPENSSL_strndup(siop.cipher_info.cra_driver_name,
--                                    CRYPTODEV_MAX_ALG_NAME);
--                if (!(siop.flags & SIOP_FLAG_KERNEL_DRIVER_ONLY))
--                    cipher_driver_info[i].accelerated = DEVCRYPTO_NOT_ACCELERATED;
--                else
--                    cipher_driver_info[i].accelerated = DEVCRYPTO_ACCELERATED;
--            }
--#endif /* CIOCGSESSINFO */
--        }
--        ioctl(cfd, CIOCFSESSION, &sess.ses);
--        if (devcrypto_test_cipher(i)) {
--            known_cipher_nids[known_cipher_nids_amount++] =
--                cipher_data[i].nid;
--        }
--    }
--}
--
--static void rebuild_known_cipher_nids(ENGINE *e)
--{
--    size_t i;
--
--    for (i = 0, known_cipher_nids_amount = 0; i < OSSL_NELEM(cipher_data); i++) {
--        if (devcrypto_test_cipher(i))
--            known_cipher_nids[known_cipher_nids_amount++] = cipher_data[i].nid;
--    }
--    ENGINE_unregister_ciphers(e);
--    ENGINE_register_ciphers(e);
--}
--
--static const EVP_CIPHER *get_cipher_method(int nid)
--{
--    size_t i = get_cipher_data_index(nid);
--
--    if (i == (size_t)-1)
--        return NULL;
--    return known_cipher_methods[i];
--}
--
--static int get_cipher_nids(const int **nids)
--{
--    *nids = known_cipher_nids;
--    return known_cipher_nids_amount;
--}
--
--static void destroy_cipher_method(int nid)
--{
--    size_t i = get_cipher_data_index(nid);
--
--    EVP_CIPHER_meth_free(known_cipher_methods[i]);
--    known_cipher_methods[i] = NULL;
--}
--
--static void destroy_all_cipher_methods(void)
--{
--    size_t i;
--
--    for (i = 0; i < OSSL_NELEM(cipher_data); i++) {
--        destroy_cipher_method(cipher_data[i].nid);
--        OPENSSL_free(cipher_driver_info[i].driver_name);
--        cipher_driver_info[i].driver_name = NULL;
--    }
--}
--
--static int devcrypto_ciphers(ENGINE *e, const EVP_CIPHER **cipher,
--                             const int **nids, int nid)
--{
--    if (cipher == NULL)
--        return get_cipher_nids(nids);
--
--    *cipher = get_cipher_method(nid);
--
--    return *cipher != NULL;
--}
--
--static void devcrypto_select_all_ciphers(int *cipher_list)
--{
--    size_t i;
--
--    for (i = 0; i < OSSL_NELEM(cipher_data); i++)
--        cipher_list[i] = 1;
--}
--
--static int cryptodev_select_cipher_cb(const char *str, int len, void *usr)
--{
--    int *cipher_list = (int *)usr;
--    char *name;
--    const EVP_CIPHER *EVP;
--    size_t i;
--
--    if (len == 0)
--        return 1;
--    if (usr == NULL || (name = OPENSSL_strndup(str, len)) == NULL)
--        return 0;
--    EVP = EVP_get_cipherbyname(name);
--    if (EVP == NULL)
--        fprintf(stderr, "devcrypto: unknown cipher %s\n", name);
--    else if ((i = find_cipher_data_index(EVP_CIPHER_nid(EVP))) != (size_t)-1)
--        cipher_list[i] = 1;
--    else
--        fprintf(stderr, "devcrypto: cipher %s not available\n", name);
--    OPENSSL_free(name);
--    return 1;
--}
--
--static void dump_cipher_info(void)
--{
--    size_t i;
--    const char *name;
--
--    fprintf (stderr, "Information about ciphers supported by the /dev/crypto"
--             " engine:\n");
--#ifndef CIOCGSESSINFO
--    fprintf(stderr, "CIOCGSESSINFO (session info call) unavailable\n");
--#endif
--    for (i = 0; i < OSSL_NELEM(cipher_data); i++) {
--        name = OBJ_nid2sn(cipher_data[i].nid);
--        fprintf (stderr, "Cipher %s, NID=%d, /dev/crypto info: id=%d, ",
--                 name ? name : "unknown", cipher_data[i].nid,
--                 cipher_data[i].devcryptoid);
--        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCGSESSION ) {
--            fprintf (stderr, "CIOCGSESSION (session open call) failed\n");
--            continue;
--        }
--        fprintf (stderr, "driver=%s ", cipher_driver_info[i].driver_name ?
--                 cipher_driver_info[i].driver_name : "unknown");
--        if (cipher_driver_info[i].accelerated == DEVCRYPTO_ACCELERATED)
--            fprintf(stderr, "(hw accelerated)");
--        else if (cipher_driver_info[i].accelerated == DEVCRYPTO_NOT_ACCELERATED)
--            fprintf(stderr, "(software)");
--        else
--            fprintf(stderr, "(acceleration status unknown)");
--        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_FAILURE)
--            fprintf (stderr, ". Cipher setup failed");
--        fprintf(stderr, "\n");
--    }
--    fprintf(stderr, "\n");
--}
--
--/*
-- * We only support digests if the cryptodev implementation supports multiple
-- * data updates and session copying.  Otherwise, we would be forced to maintain
-- * a cache, which is perilous if there's a lot of data coming in (if someone
-- * wants to checksum an OpenSSL tarball, for example).
-- */
--#if defined(CIOCCPHASH) && defined(COP_FLAG_UPDATE) && defined(COP_FLAG_FINAL)
--#define IMPLEMENT_DIGEST
--
--/******************************************************************************
-- *
-- * Digests
-- *
-- * Because they all do the same basic operation, we have only one set of
-- * method functions for them all to share, and a mapping table between
-- * NIDs and cryptodev IDs, with all the necessary size data.
-- *
-- *****/
--
--struct digest_ctx {
--    struct session_op sess;
--    /* This signals that the init function was called, not that it succeeded. */
--    int init_called;
--    unsigned char digest_res[HASH_MAX_LEN];
--};
--
--static const struct digest_data_st {
--    int nid;
--    int blocksize;
--    int digestlen;
--    int devcryptoid;
--} digest_data[] = {
--#ifndef OPENSSL_NO_MD5
--    { NID_md5, /* MD5_CBLOCK */ 64, 16, CRYPTO_MD5 },
--#endif
--    { NID_sha1, SHA_CBLOCK, 20, CRYPTO_SHA1 },
--#ifndef OPENSSL_NO_RMD160
--# if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_RIPEMD160)
--    { NID_ripemd160, /* RIPEMD160_CBLOCK */ 64, 20, CRYPTO_RIPEMD160 },
--# endif
--#endif
--#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_224)
--    { NID_sha224, SHA256_CBLOCK, 224 / 8, CRYPTO_SHA2_224 },
--#endif
--#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_256)
--    { NID_sha256, SHA256_CBLOCK, 256 / 8, CRYPTO_SHA2_256 },
--#endif
--#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_384)
--    { NID_sha384, SHA512_CBLOCK, 384 / 8, CRYPTO_SHA2_384 },
--#endif
--#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_512)
--    { NID_sha512, SHA512_CBLOCK, 512 / 8, CRYPTO_SHA2_512 },
--#endif
--};
--
--static size_t find_digest_data_index(int nid)
--{
--    size_t i;
--
--    for (i = 0; i < OSSL_NELEM(digest_data); i++)
--        if (nid == digest_data[i].nid)
--            return i;
--    return (size_t)-1;
--}
--
--static size_t get_digest_data_index(int nid)
--{
--    size_t i = find_digest_data_index(nid);
--
--    if (i != (size_t)-1)
--        return i;
--
--    /*
--     * Code further down must make sure that only NIDs in the table above
--     * are used.  If any other NID reaches this function, there's a grave
--     * coding error further down.
--     */
--    assert("Code that never should be reached" == NULL);
--    return -1;
--}
--
--static const struct digest_data_st *get_digest_data(int nid)
--{
--    return &digest_data[get_digest_data_index(nid)];
--}
--
--/*
-- * Following are the five necessary functions to map OpenSSL functionality
-- * with cryptodev: init, update, final, cleanup, and copy.
-- */
--
--static int digest_init(EVP_MD_CTX *ctx)
--{
--    struct digest_ctx *digest_ctx =
--        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
--    const struct digest_data_st *digest_d =
--        get_digest_data(EVP_MD_CTX_type(ctx));
--
--    digest_ctx->init_called = 1;
--
--    memset(&digest_ctx->sess, 0, sizeof(digest_ctx->sess));
--    digest_ctx->sess.mac = digest_d->devcryptoid;
--    if (ioctl(cfd, CIOCGSESSION, &digest_ctx->sess) < 0) {
--        SYSerr(SYS_F_IOCTL, errno);
--        return 0;
--    }
--
--    return 1;
--}
--
--static int digest_op(struct digest_ctx *ctx, const void *src, size_t srclen,
--                     void *res, unsigned int flags)
--{
--    struct crypt_op cryp;
--
--    memset(&cryp, 0, sizeof(cryp));
--    cryp.ses = ctx->sess.ses;
--    cryp.len = srclen;
--    cryp.src = (void *)src;
--    cryp.dst = NULL;
--    cryp.mac = res;
--    cryp.flags = flags;
--    return ioctl(cfd, CIOCCRYPT, &cryp);
--}
--
--static int digest_update(EVP_MD_CTX *ctx, const void *data, size_t count)
--{
--    struct digest_ctx *digest_ctx =
--        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
--
--    if (count == 0)
--        return 1;
--
--    if (digest_ctx == NULL)
--        return 0;
--
--    if (EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_ONESHOT)) {
--        if (digest_op(digest_ctx, data, count, digest_ctx->digest_res, 0) >= 0)
--            return 1;
--    } else if (digest_op(digest_ctx, data, count, NULL, COP_FLAG_UPDATE) >= 0) {
--        return 1;
--    }
--
--    SYSerr(SYS_F_IOCTL, errno);
--    return 0;
--}
--
--static int digest_final(EVP_MD_CTX *ctx, unsigned char *md)
--{
--    struct digest_ctx *digest_ctx =
--        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
--
--    if (md == NULL || digest_ctx == NULL)
--        return 0;
--
--    if (EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_ONESHOT)) {
--        memcpy(md, digest_ctx->digest_res, EVP_MD_CTX_size(ctx));
--    } else if (digest_op(digest_ctx, NULL, 0, md, COP_FLAG_FINAL) < 0) {
--        SYSerr(SYS_F_IOCTL, errno);
--        return 0;
--    }
--
--    return 1;
--}
--
--static int digest_copy(EVP_MD_CTX *to, const EVP_MD_CTX *from)
--{
--    struct digest_ctx *digest_from =
--        (struct digest_ctx *)EVP_MD_CTX_md_data(from);
--    struct digest_ctx *digest_to =
--        (struct digest_ctx *)EVP_MD_CTX_md_data(to);
--    struct cphash_op cphash;
--
--    if (digest_from == NULL || digest_from->init_called != 1)
--        return 1;
--
--    if (!digest_init(to)) {
--        SYSerr(SYS_F_IOCTL, errno);
--        return 0;
--    }
--
--    cphash.src_ses = digest_from->sess.ses;
--    cphash.dst_ses = digest_to->sess.ses;
--    if (ioctl(cfd, CIOCCPHASH, &cphash) < 0) {
--        SYSerr(SYS_F_IOCTL, errno);
--        return 0;
--    }
--    return 1;
--}
--
--static int digest_cleanup(EVP_MD_CTX *ctx)
--{
--    struct digest_ctx *digest_ctx =
--        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
--
--    if (digest_ctx == NULL)
--        return 1;
--
--    return clean_devcrypto_session(&digest_ctx->sess);
--}
--
--/*
-- * Keep tables of known nids, associated methods, selected digests, and
-- * driver info.
-- * Note that known_digest_nids[] isn't necessarily indexed the same way as
-- * digest_data[] above, which the other tables are.
-- */
--static int known_digest_nids[OSSL_NELEM(digest_data)];
--static int known_digest_nids_amount = -1; /* -1 indicates not yet initialised */
--static EVP_MD *known_digest_methods[OSSL_NELEM(digest_data)] = { NULL, };
--static int selected_digests[OSSL_NELEM(digest_data)];
--static struct driver_info_st digest_driver_info[OSSL_NELEM(digest_data)];
--
--static int devcrypto_test_digest(size_t digest_data_index)
--{
--    return (digest_driver_info[digest_data_index].status == DEVCRYPTO_STATUS_USABLE
--            && selected_digests[digest_data_index] == 1
--            && (digest_driver_info[digest_data_index].accelerated
--                    == DEVCRYPTO_ACCELERATED
--                || use_softdrivers == DEVCRYPTO_USE_SOFTWARE
--                || (digest_driver_info[digest_data_index].accelerated
--                        != DEVCRYPTO_NOT_ACCELERATED
--                    && use_softdrivers == DEVCRYPTO_REJECT_SOFTWARE)));
--}
--
--static void rebuild_known_digest_nids(ENGINE *e)
--{
--    size_t i;
--
--    for (i = 0, known_digest_nids_amount = 0; i < OSSL_NELEM(digest_data); i++) {
--        if (devcrypto_test_digest(i))
--            known_digest_nids[known_digest_nids_amount++] = digest_data[i].nid;
--    }
--    ENGINE_unregister_digests(e);
--    ENGINE_register_digests(e);
--}
--
--static void prepare_digest_methods(void)
--{
--    size_t i;
--    struct session_op sess1, sess2;
--#ifdef CIOCGSESSINFO
--    struct session_info_op siop;
--#endif
--    struct cphash_op cphash;
--
--    memset(&digest_driver_info, 0, sizeof(digest_driver_info));
--
--    memset(&sess1, 0, sizeof(sess1));
--    memset(&sess2, 0, sizeof(sess2));
--
--    for (i = 0, known_digest_nids_amount = 0; i < OSSL_NELEM(digest_data);
--         i++) {
--
--        selected_digests[i] = 1;
--
--        /*
--         * Check that the digest is usable
--         */
--        sess1.mac = digest_data[i].devcryptoid;
--        sess2.ses = 0;
--        if (ioctl(cfd, CIOCGSESSION, &sess1) < 0) {
--            digest_driver_info[i].status = DEVCRYPTO_STATUS_NO_CIOCGSESSION;
--            goto finish;
--        }
--
--#ifdef CIOCGSESSINFO
--        /* gather hardware acceleration info from the driver */
--        siop.ses = sess1.ses;
--        if (ioctl(cfd, CIOCGSESSINFO, &siop) < 0) {
--            digest_driver_info[i].accelerated = DEVCRYPTO_ACCELERATION_UNKNOWN;
--        } else {
--            digest_driver_info[i].driver_name =
--                OPENSSL_strndup(siop.hash_info.cra_driver_name,
--                                CRYPTODEV_MAX_ALG_NAME);
--            if (siop.flags & SIOP_FLAG_KERNEL_DRIVER_ONLY)
--                digest_driver_info[i].accelerated = DEVCRYPTO_ACCELERATED;
--            else
--                digest_driver_info[i].accelerated = DEVCRYPTO_NOT_ACCELERATED;
--        }
--#endif
--
--        /* digest must be capable of hash state copy */
--        sess2.mac = sess1.mac;
--        if (ioctl(cfd, CIOCGSESSION, &sess2) < 0) {
--            digest_driver_info[i].status = DEVCRYPTO_STATUS_FAILURE;
--            goto finish;
--        }
--        cphash.src_ses = sess1.ses;
--        cphash.dst_ses = sess2.ses;
--        if (ioctl(cfd, CIOCCPHASH, &cphash) < 0) {
--            digest_driver_info[i].status = DEVCRYPTO_STATUS_NO_CIOCCPHASH;
--            goto finish;
--        }
--        if ((known_digest_methods[i] = EVP_MD_meth_new(digest_data[i].nid,
--                                                       NID_undef)) == NULL
--            || !EVP_MD_meth_set_input_blocksize(known_digest_methods[i],
--                                                digest_data[i].blocksize)
--            || !EVP_MD_meth_set_result_size(known_digest_methods[i],
--                                            digest_data[i].digestlen)
--            || !EVP_MD_meth_set_init(known_digest_methods[i], digest_init)
--            || !EVP_MD_meth_set_update(known_digest_methods[i], digest_update)
--            || !EVP_MD_meth_set_final(known_digest_methods[i], digest_final)
--            || !EVP_MD_meth_set_copy(known_digest_methods[i], digest_copy)
--            || !EVP_MD_meth_set_cleanup(known_digest_methods[i], digest_cleanup)
--            || !EVP_MD_meth_set_app_datasize(known_digest_methods[i],
--                                             sizeof(struct digest_ctx))) {
--            digest_driver_info[i].status = DEVCRYPTO_STATUS_FAILURE;
--            EVP_MD_meth_free(known_digest_methods[i]);
--            known_digest_methods[i] = NULL;
--            goto finish;
--        }
--        digest_driver_info[i].status = DEVCRYPTO_STATUS_USABLE;
--finish:
--        ioctl(cfd, CIOCFSESSION, &sess1.ses);
--        if (sess2.ses != 0)
--            ioctl(cfd, CIOCFSESSION, &sess2.ses);
--        if (devcrypto_test_digest(i))
--            known_digest_nids[known_digest_nids_amount++] = digest_data[i].nid;
--    }
--}
--
--static const EVP_MD *get_digest_method(int nid)
--{
--    size_t i = get_digest_data_index(nid);
--
--    if (i == (size_t)-1)
--        return NULL;
--    return known_digest_methods[i];
--}
--
--static int get_digest_nids(const int **nids)
--{
--    *nids = known_digest_nids;
--    return known_digest_nids_amount;
--}
--
--static void destroy_digest_method(int nid)
--{
--    size_t i = get_digest_data_index(nid);
--
--    EVP_MD_meth_free(known_digest_methods[i]);
--    known_digest_methods[i] = NULL;
--}
--
--static void destroy_all_digest_methods(void)
--{
--    size_t i;
--
--    for (i = 0; i < OSSL_NELEM(digest_data); i++) {
--        destroy_digest_method(digest_data[i].nid);
--        OPENSSL_free(digest_driver_info[i].driver_name);
--        digest_driver_info[i].driver_name = NULL;
--    }
--}
--
--static int devcrypto_digests(ENGINE *e, const EVP_MD **digest,
--                             const int **nids, int nid)
--{
--    if (digest == NULL)
--        return get_digest_nids(nids);
--
--    *digest = get_digest_method(nid);
--
--    return *digest != NULL;
--}
--
--static void devcrypto_select_all_digests(int *digest_list)
--{
--    size_t i;
--
--    for (i = 0; i < OSSL_NELEM(digest_data); i++)
--        digest_list[i] = 1;
--}
--
--static int cryptodev_select_digest_cb(const char *str, int len, void *usr)
--{
--    int *digest_list = (int *)usr;
--    char *name;
--    const EVP_MD *EVP;
--    size_t i;
--
--    if (len == 0)
--        return 1;
--    if (usr == NULL || (name = OPENSSL_strndup(str, len)) == NULL)
--        return 0;
--    EVP = EVP_get_digestbyname(name);
--    if (EVP == NULL)
--        fprintf(stderr, "devcrypto: unknown digest %s\n", name);
--    else if ((i = find_digest_data_index(EVP_MD_type(EVP))) != (size_t)-1)
--        digest_list[i] = 1;
--    else
--        fprintf(stderr, "devcrypto: digest %s not available\n", name);
--    OPENSSL_free(name);
--    return 1;
--}
--
--static void dump_digest_info(void)
--{
--    size_t i;
--    const char *name;
--
--    fprintf (stderr, "Information about digests supported by the /dev/crypto"
--             " engine:\n");
--#ifndef CIOCGSESSINFO
--    fprintf(stderr, "CIOCGSESSINFO (session info call) unavailable\n");
--#endif
--
--    for (i = 0; i < OSSL_NELEM(digest_data); i++) {
--        name = OBJ_nid2sn(digest_data[i].nid);
--        fprintf (stderr, "Digest %s, NID=%d, /dev/crypto info: id=%d, driver=%s",
--                 name ? name : "unknown", digest_data[i].nid,
--                 digest_data[i].devcryptoid,
--                 digest_driver_info[i].driver_name ? digest_driver_info[i].driver_name : "unknown");
--        if (digest_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCGSESSION) {
--            fprintf (stderr, ". CIOCGSESSION (session open) failed\n");
--            continue;
--        }
--        if (digest_driver_info[i].accelerated == DEVCRYPTO_ACCELERATED)
--            fprintf(stderr, " (hw accelerated)");
--        else if (digest_driver_info[i].accelerated == DEVCRYPTO_NOT_ACCELERATED)
--            fprintf(stderr, " (software)");
--        else
--            fprintf(stderr, " (acceleration status unknown)");
--        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_FAILURE)
--            fprintf (stderr, ". Cipher setup failed\n");
--        else if (digest_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCCPHASH)
--            fprintf(stderr, ", CIOCCPHASH failed\n");
--        else
--            fprintf(stderr, ", CIOCCPHASH capable\n");
--    }
--    fprintf(stderr, "\n");
--}
--
--#endif
--
--/******************************************************************************
-- *
-- * CONTROL COMMANDS
-- *
-- *****/
--
--#define DEVCRYPTO_CMD_USE_SOFTDRIVERS ENGINE_CMD_BASE
--#define DEVCRYPTO_CMD_CIPHERS (ENGINE_CMD_BASE + 1)
--#define DEVCRYPTO_CMD_DIGESTS (ENGINE_CMD_BASE + 2)
--#define DEVCRYPTO_CMD_DUMP_INFO (ENGINE_CMD_BASE + 3)
--
--/* Helper macros for CPP string composition */
--#ifndef OPENSSL_MSTR
--# define OPENSSL_MSTR_HELPER(x) #x
--# define OPENSSL_MSTR(x) OPENSSL_MSTR_HELPER(x)
--#endif
--
--static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
--#ifdef CIOCGSESSINFO
--   {DEVCRYPTO_CMD_USE_SOFTDRIVERS,
--    "USE_SOFTDRIVERS",
--    "specifies whether to use software (not accelerated) drivers ("
--        OPENSSL_MSTR(DEVCRYPTO_REQUIRE_ACCELERATED) "=use only accelerated drivers, "
--        OPENSSL_MSTR(DEVCRYPTO_USE_SOFTWARE) "=allow all drivers, "
--        OPENSSL_MSTR(DEVCRYPTO_REJECT_SOFTWARE)
--        "=use if acceleration can't be determined) [default="
--        OPENSSL_MSTR(DEVCRYPTO_DEFAULT_USE_SOFDTRIVERS) "]",
--    ENGINE_CMD_FLAG_NUMERIC},
--#endif
--
--   {DEVCRYPTO_CMD_CIPHERS,
--    "CIPHERS",
--    "either ALL, NONE, or a comma-separated list of ciphers to enable [default=ALL]",
--    ENGINE_CMD_FLAG_STRING},
--
--#ifdef IMPLEMENT_DIGEST
--   {DEVCRYPTO_CMD_DIGESTS,
--    "DIGESTS",
--    "either ALL, NONE, or a comma-separated list of digests to enable [default=ALL]",
--    ENGINE_CMD_FLAG_STRING},
--#endif
--
--   {DEVCRYPTO_CMD_DUMP_INFO,
--    "DUMP_INFO",
--    "dump info about each algorithm to stderr; use 'openssl engine -pre DUMP_INFO devcrypto'",
--    ENGINE_CMD_FLAG_NO_INPUT},
--
--   {0, NULL, NULL, 0}
--};
--
--static int devcrypto_ctrl(ENGINE *e, int cmd, long i, void *p, void (*f) (void))
--{
--    int *new_list;
--    switch (cmd) {
--#ifdef CIOCGSESSINFO
--    case DEVCRYPTO_CMD_USE_SOFTDRIVERS:
--        switch (i) {
--        case DEVCRYPTO_REQUIRE_ACCELERATED:
--        case DEVCRYPTO_USE_SOFTWARE:
--        case DEVCRYPTO_REJECT_SOFTWARE:
--            break;
--        default:
--            fprintf(stderr, "devcrypto: invalid value (%ld) for USE_SOFTDRIVERS\n", i);
--            return 0;
--        }
--        if (use_softdrivers == i)
--            return 1;
--        use_softdrivers = i;
--#ifdef IMPLEMENT_DIGEST
--        rebuild_known_digest_nids(e);
--#endif
--        rebuild_known_cipher_nids(e);
--        return 1;
--#endif /* CIOCGSESSINFO */
--
--    case DEVCRYPTO_CMD_CIPHERS:
--        if (p == NULL)
--            return 1;
--        if (strcasecmp((const char *)p, "ALL") == 0) {
--            devcrypto_select_all_ciphers(selected_ciphers);
--        } else if (strcasecmp((const char*)p, "NONE") == 0) {
--            memset(selected_ciphers, 0, sizeof(selected_ciphers));
--        } else {
--            new_list=OPENSSL_zalloc(sizeof(selected_ciphers));
--            if (!CONF_parse_list(p, ',', 1, cryptodev_select_cipher_cb, new_list)) {
--                OPENSSL_free(new_list);
--                return 0;
--            }
--            memcpy(selected_ciphers, new_list, sizeof(selected_ciphers));
--            OPENSSL_free(new_list);
--        }
--        rebuild_known_cipher_nids(e);
--        return 1;
--
--#ifdef IMPLEMENT_DIGEST
--    case DEVCRYPTO_CMD_DIGESTS:
--        if (p == NULL)
--            return 1;
--        if (strcasecmp((const char *)p, "ALL") == 0) {
--            devcrypto_select_all_digests(selected_digests);
--        } else if (strcasecmp((const char*)p, "NONE") == 0) {
--            memset(selected_digests, 0, sizeof(selected_digests));
--        } else {
--            new_list=OPENSSL_zalloc(sizeof(selected_digests));
--            if (!CONF_parse_list(p, ',', 1, cryptodev_select_digest_cb, new_list)) {
--                OPENSSL_free(new_list);
--                return 0;
--            }
--            memcpy(selected_digests, new_list, sizeof(selected_digests));
--            OPENSSL_free(new_list);
--        }
--        rebuild_known_digest_nids(e);
--        return 1;
--#endif /* IMPLEMENT_DIGEST */
--
--    case DEVCRYPTO_CMD_DUMP_INFO:
--        dump_cipher_info();
--#ifdef IMPLEMENT_DIGEST
--        dump_digest_info();
--#endif
--        return 1;
--
--    default:
--        break;
--    }
--    return 0;
--}
--
--/******************************************************************************
-- *
-- * LOAD / UNLOAD
-- *
-- *****/
--
--static int devcrypto_unload(ENGINE *e)
--{
--    destroy_all_cipher_methods();
--#ifdef IMPLEMENT_DIGEST
--    destroy_all_digest_methods();
--#endif
--
--    close(cfd);
--
--    return 1;
--}
--/*
-- * This engine is always built into libcrypto, so it doesn't offer any
-- * ability to be dynamically loadable.
-- */
--void engine_load_devcrypto_int()
--{
--    ENGINE *e = NULL;
--
--    if ((cfd = open("/dev/crypto", O_RDWR, 0)) < 0) {
--#ifndef ENGINE_DEVCRYPTO_DEBUG
--        if (errno != ENOENT)
--#endif
--            fprintf(stderr, "Could not open /dev/crypto: %s\n", strerror(errno));
--        return;
--    }
--
--    if ((e = ENGINE_new()) == NULL
--        || !ENGINE_set_destroy_function(e, devcrypto_unload)) {
--        ENGINE_free(e);
--        /*
--         * We know that devcrypto_unload() won't be called when one of the
--         * above two calls have failed, so we close cfd explicitly here to
--         * avoid leaking resources.
--         */
--        close(cfd);
--        return;
--    }
--
--    prepare_cipher_methods();
--#ifdef IMPLEMENT_DIGEST
--    prepare_digest_methods();
--#endif
--
--    if (!ENGINE_set_id(e, "devcrypto")
--        || !ENGINE_set_name(e, "/dev/crypto engine")
--        || !ENGINE_set_cmd_defns(e, devcrypto_cmds)
--        || !ENGINE_set_ctrl_function(e, devcrypto_ctrl)
--
--/*
-- * Asymmetric ciphers aren't well supported with /dev/crypto.  Among the BSD
-- * implementations, it seems to only exist in FreeBSD, and regarding the
-- * parameters in its crypt_kop, the manual crypto(4) has this to say:
-- *
-- *    The semantics of these arguments are currently undocumented.
-- *
-- * Reading through the FreeBSD source code doesn't give much more than
-- * their CRK_MOD_EXP implementation for ubsec.
-- *
-- * It doesn't look much better with cryptodev-linux.  They have the crypt_kop
-- * structure as well as the command (CRK_*) in cryptodev.h, but no support
-- * seems to be implemented at all for the moment.
-- *
-- * At the time of writing, it seems impossible to write proper support for
-- * FreeBSD's asym features without some very deep knowledge and access to
-- * specific kernel modules.
-- *
-- * /Richard Levitte, 2017-05-11
-- */
--#if 0
--# ifndef OPENSSL_NO_RSA
--        || !ENGINE_set_RSA(e, devcrypto_rsa)
--# endif
--# ifndef OPENSSL_NO_DSA
--        || !ENGINE_set_DSA(e, devcrypto_dsa)
--# endif
--# ifndef OPENSSL_NO_DH
--        || !ENGINE_set_DH(e, devcrypto_dh)
--# endif
--# ifndef OPENSSL_NO_EC
--        || !ENGINE_set_EC(e, devcrypto_ec)
--# endif
--#endif
--        || !ENGINE_set_ciphers(e, devcrypto_ciphers)
--#ifdef IMPLEMENT_DIGEST
--        || !ENGINE_set_digests(e, devcrypto_digests)
--#endif
--        ) {
--        ENGINE_free(e);
--        return;
--    }
--
--    ENGINE_add(e);
--    ENGINE_free(e);          /* Loose our local reference */
--    ERR_clear_error();
--}
---- /dev/null
-+++ b/engines/e_devcrypto.c
-@@ -0,0 +1,1315 @@
-+/*
-+ * Copyright 2017-2019 The OpenSSL Project Authors. All Rights Reserved.
-+ *
-+ * Licensed under the OpenSSL license (the "License").  You may not use
-+ * this file except in compliance with the License.  You can obtain a copy
-+ * in the file LICENSE in the source distribution or at
-+ * https://www.openssl.org/source/license.html
-+ */
-+
-+#include "../e_os.h"
-+#include <string.h>
-+#include <sys/types.h>
-+#include <sys/stat.h>
-+#include <fcntl.h>
-+#include <sys/ioctl.h>
-+#include <unistd.h>
-+#include <assert.h>
-+
-+#include <openssl/conf.h>
-+#include <openssl/evp.h>
-+#include <openssl/err.h>
-+#include <openssl/engine.h>
-+#include <openssl/objects.h>
-+#include <crypto/cryptodev.h>
-+
-+/* #define ENGINE_DEVCRYPTO_DEBUG */
-+
-+#ifdef CRYPTO_ALGORITHM_MIN
-+# define CHECK_BSD_STYLE_MACROS
-+#endif
-+
-+#define engine_devcrypto_id "devcrypto"
-+
-+/*
-+ * ONE global file descriptor for all sessions.  This allows operations
-+ * such as digest session data copying (see digest_copy()), but is also
-+ * saner...  why re-open /dev/crypto for every session?
-+ */
-+static int cfd = -1;
-+#define DEVCRYPTO_REQUIRE_ACCELERATED 0 /* require confirmation of acceleration */
-+#define DEVCRYPTO_USE_SOFTWARE        1 /* allow software drivers */
-+#define DEVCRYPTO_REJECT_SOFTWARE     2 /* only disallow confirmed software drivers */
-+
-+#define DEVCRYPTO_DEFAULT_USE_SOFTDRIVERS DEVCRYPTO_REJECT_SOFTWARE
-+static int use_softdrivers = DEVCRYPTO_DEFAULT_USE_SOFTDRIVERS;
-+
-+/*
-+ * cipher/digest status & acceleration definitions
-+ * Make sure the defaults are set to 0
-+ */
-+struct driver_info_st {
-+    enum devcrypto_status_t {
-+        DEVCRYPTO_STATUS_FAILURE         = -3, /* unusable for other reason */
-+        DEVCRYPTO_STATUS_NO_CIOCCPHASH   = -2, /* hash state copy not supported */
-+        DEVCRYPTO_STATUS_NO_CIOCGSESSION = -1, /* session open failed */
-+        DEVCRYPTO_STATUS_UNKNOWN         =  0, /* not tested yet */
-+        DEVCRYPTO_STATUS_USABLE          =  1  /* algo can be used */
-+    } status;
-+
-+    enum devcrypto_accelerated_t {
-+        DEVCRYPTO_NOT_ACCELERATED        = -1, /* software implemented */
-+        DEVCRYPTO_ACCELERATION_UNKNOWN   =  0, /* acceleration support unkown */
-+        DEVCRYPTO_ACCELERATED            =  1  /* hardware accelerated */
-+    } accelerated;
-+
-+    char *driver_name;
-+};
-+
-+#ifdef OPENSSL_NO_DYNAMIC_ENGINE
-+void engine_load_devcrypto_int(void);
-+#endif
-+
-+static int clean_devcrypto_session(struct session_op *sess) {
-+    if (ioctl(cfd, CIOCFSESSION, &sess->ses) < 0) {
-+        SYSerr(SYS_F_IOCTL, errno);
-+        return 0;
-+    }
-+    memset(sess, 0, sizeof(struct session_op));
-+    return 1;
-+}
-+
-+/******************************************************************************
-+ *
-+ * Ciphers
-+ *
-+ * Because they all do the same basic operation, we have only one set of
-+ * method functions for them all to share, and a mapping table between
-+ * NIDs and cryptodev IDs, with all the necessary size data.
-+ *
-+ *****/
-+
-+struct cipher_ctx {
-+    struct session_op sess;
-+    int op;                      /* COP_ENCRYPT or COP_DECRYPT */
-+    unsigned long mode;          /* EVP_CIPH_*_MODE */
-+
-+    /* to handle ctr mode being a stream cipher */
-+    unsigned char partial[EVP_MAX_BLOCK_LENGTH];
-+    unsigned int blocksize, num;
-+};
-+
-+static const struct cipher_data_st {
-+    int nid;
-+    int blocksize;
-+    int keylen;
-+    int ivlen;
-+    int flags;
-+    int devcryptoid;
-+} cipher_data[] = {
-+#ifndef OPENSSL_NO_DES
-+    { NID_des_cbc, 8, 8, 8, EVP_CIPH_CBC_MODE, CRYPTO_DES_CBC },
-+    { NID_des_ede3_cbc, 8, 24, 8, EVP_CIPH_CBC_MODE, CRYPTO_3DES_CBC },
-+#endif
-+#ifndef OPENSSL_NO_BF
-+    { NID_bf_cbc, 8, 16, 8, EVP_CIPH_CBC_MODE, CRYPTO_BLF_CBC },
-+#endif
-+#ifndef OPENSSL_NO_CAST
-+    { NID_cast5_cbc, 8, 16, 8, EVP_CIPH_CBC_MODE, CRYPTO_CAST_CBC },
-+#endif
-+    { NID_aes_128_cbc, 16, 128 / 8, 16, EVP_CIPH_CBC_MODE, CRYPTO_AES_CBC },
-+    { NID_aes_192_cbc, 16, 192 / 8, 16, EVP_CIPH_CBC_MODE, CRYPTO_AES_CBC },
-+    { NID_aes_256_cbc, 16, 256 / 8, 16, EVP_CIPH_CBC_MODE, CRYPTO_AES_CBC },
-+#ifndef OPENSSL_NO_RC4
-+    { NID_rc4, 1, 16, 0, EVP_CIPH_STREAM_CIPHER, CRYPTO_ARC4 },
-+#endif
-+#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_AES_CTR)
-+    { NID_aes_128_ctr, 16, 128 / 8, 16, EVP_CIPH_CTR_MODE, CRYPTO_AES_CTR },
-+    { NID_aes_192_ctr, 16, 192 / 8, 16, EVP_CIPH_CTR_MODE, CRYPTO_AES_CTR },
-+    { NID_aes_256_ctr, 16, 256 / 8, 16, EVP_CIPH_CTR_MODE, CRYPTO_AES_CTR },
-+#endif
-+#if 0                            /* Not yet supported */
-+    { NID_aes_128_xts, 16, 128 / 8 * 2, 16, EVP_CIPH_XTS_MODE, CRYPTO_AES_XTS },
-+    { NID_aes_256_xts, 16, 256 / 8 * 2, 16, EVP_CIPH_XTS_MODE, CRYPTO_AES_XTS },
-+#endif
-+#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_AES_ECB)
-+    { NID_aes_128_ecb, 16, 128 / 8, 0, EVP_CIPH_ECB_MODE, CRYPTO_AES_ECB },
-+    { NID_aes_192_ecb, 16, 192 / 8, 0, EVP_CIPH_ECB_MODE, CRYPTO_AES_ECB },
-+    { NID_aes_256_ecb, 16, 256 / 8, 0, EVP_CIPH_ECB_MODE, CRYPTO_AES_ECB },
-+#endif
-+#if 0                            /* Not yet supported */
-+    { NID_aes_128_gcm, 16, 128 / 8, 16, EVP_CIPH_GCM_MODE, CRYPTO_AES_GCM },
-+    { NID_aes_192_gcm, 16, 192 / 8, 16, EVP_CIPH_GCM_MODE, CRYPTO_AES_GCM },
-+    { NID_aes_256_gcm, 16, 256 / 8, 16, EVP_CIPH_GCM_MODE, CRYPTO_AES_GCM },
-+#endif
-+#ifndef OPENSSL_NO_CAMELLIA
-+    { NID_camellia_128_cbc, 16, 128 / 8, 16, EVP_CIPH_CBC_MODE,
-+      CRYPTO_CAMELLIA_CBC },
-+    { NID_camellia_192_cbc, 16, 192 / 8, 16, EVP_CIPH_CBC_MODE,
-+      CRYPTO_CAMELLIA_CBC },
-+    { NID_camellia_256_cbc, 16, 256 / 8, 16, EVP_CIPH_CBC_MODE,
-+      CRYPTO_CAMELLIA_CBC },
-+#endif
-+};
-+
-+static size_t find_cipher_data_index(int nid)
-+{
-+    size_t i;
-+
-+    for (i = 0; i < OSSL_NELEM(cipher_data); i++)
-+        if (nid == cipher_data[i].nid)
-+            return i;
-+    return (size_t)-1;
-+}
-+
-+static size_t get_cipher_data_index(int nid)
-+{
-+    size_t i = find_cipher_data_index(nid);
-+
-+    if (i != (size_t)-1)
-+        return i;
-+
-+    /*
-+     * Code further down must make sure that only NIDs in the table above
-+     * are used.  If any other NID reaches this function, there's a grave
-+     * coding error further down.
-+     */
-+    assert("Code that never should be reached" == NULL);
-+    return -1;
-+}
-+
-+static const struct cipher_data_st *get_cipher_data(int nid)
-+{
-+    return &cipher_data[get_cipher_data_index(nid)];
-+}
-+
-+/*
-+ * Following are the three necessary functions to map OpenSSL functionality
-+ * with cryptodev.
-+ */
-+
-+static int cipher_init(EVP_CIPHER_CTX *ctx, const unsigned char *key,
-+                       const unsigned char *iv, int enc)
-+{
-+    struct cipher_ctx *cipher_ctx =
-+        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
-+    const struct cipher_data_st *cipher_d =
-+        get_cipher_data(EVP_CIPHER_CTX_nid(ctx));
-+
-+    /* cleanup a previous session */
-+    if (cipher_ctx->sess.ses != 0 &&
-+        clean_devcrypto_session(&cipher_ctx->sess) == 0)
-+        return 0;
-+
-+    cipher_ctx->sess.cipher = cipher_d->devcryptoid;
-+    cipher_ctx->sess.keylen = cipher_d->keylen;
-+    cipher_ctx->sess.key = (void *)key;
-+    cipher_ctx->op = enc ? COP_ENCRYPT : COP_DECRYPT;
-+    cipher_ctx->mode = cipher_d->flags & EVP_CIPH_MODE;
-+    cipher_ctx->blocksize = cipher_d->blocksize;
-+    if (ioctl(cfd, CIOCGSESSION, &cipher_ctx->sess) < 0) {
-+        SYSerr(SYS_F_IOCTL, errno);
-+        return 0;
-+    }
-+
-+    return 1;
-+}
-+
-+static int cipher_do_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
-+                            const unsigned char *in, size_t inl)
-+{
-+    struct cipher_ctx *cipher_ctx =
-+        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
-+    struct crypt_op cryp;
-+    unsigned char *iv = EVP_CIPHER_CTX_iv_noconst(ctx);
-+#if !defined(COP_FLAG_WRITE_IV)
-+    unsigned char saved_iv[EVP_MAX_IV_LENGTH];
-+    const unsigned char *ivptr;
-+    size_t nblocks, ivlen;
-+#endif
-+
-+    memset(&cryp, 0, sizeof(cryp));
-+    cryp.ses = cipher_ctx->sess.ses;
-+    cryp.len = inl;
-+    cryp.src = (void *)in;
-+    cryp.dst = (void *)out;
-+    cryp.iv = (void *)iv;
-+    cryp.op = cipher_ctx->op;
-+#if !defined(COP_FLAG_WRITE_IV)
-+    cryp.flags = 0;
-+
-+    ivlen = EVP_CIPHER_CTX_iv_length(ctx);
-+    if (ivlen > 0)
-+        switch (cipher_ctx->mode) {
-+        case EVP_CIPH_CBC_MODE:
-+            assert(inl >= ivlen);
-+            if (!EVP_CIPHER_CTX_encrypting(ctx)) {
-+                ivptr = in + inl - ivlen;
-+                memcpy(saved_iv, ivptr, ivlen);
-+            }
-+            break;
-+
-+        case EVP_CIPH_CTR_MODE:
-+            break;
-+
-+        default: /* should not happen */
-+            return 0;
-+        }
-+#else
-+    cryp.flags = COP_FLAG_WRITE_IV;
-+#endif
-+
-+    if (ioctl(cfd, CIOCCRYPT, &cryp) < 0) {
-+        SYSerr(SYS_F_IOCTL, errno);
-+        return 0;
-+    }
-+
-+#if !defined(COP_FLAG_WRITE_IV)
-+    if (ivlen > 0)
-+        switch (cipher_ctx->mode) {
-+        case EVP_CIPH_CBC_MODE:
-+            assert(inl >= ivlen);
-+            if (EVP_CIPHER_CTX_encrypting(ctx))
-+                ivptr = out + inl - ivlen;
-+            else
-+                ivptr = saved_iv;
-+
-+            memcpy(iv, ivptr, ivlen);
-+            break;
-+
-+        case EVP_CIPH_CTR_MODE:
-+            nblocks = (inl + cipher_ctx->blocksize - 1)
-+                      / cipher_ctx->blocksize;
-+            do {
-+                ivlen--;
-+                nblocks += iv[ivlen];
-+                iv[ivlen] = (uint8_t) nblocks;
-+                nblocks >>= 8;
-+            } while (ivlen);
-+            break;
-+
-+        default: /* should not happen */
-+            return 0;
-+        }
-+#endif
-+
-+    return 1;
-+}
-+
-+static int ctr_do_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
-+                         const unsigned char *in, size_t inl)
-+{
-+    struct cipher_ctx *cipher_ctx =
-+        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
-+    size_t nblocks, len;
-+
-+    /* initial partial block */
-+    while (cipher_ctx->num && inl) {
-+        (*out++) = *(in++) ^ cipher_ctx->partial[cipher_ctx->num];
-+        --inl;
-+        cipher_ctx->num = (cipher_ctx->num + 1) % cipher_ctx->blocksize;
-+    }
-+
-+    /* full blocks */
-+    if (inl > (unsigned int) cipher_ctx->blocksize) {
-+        nblocks = inl/cipher_ctx->blocksize;
-+        len = nblocks * cipher_ctx->blocksize;
-+        if (cipher_do_cipher(ctx, out, in, len) < 1)
-+            return 0;
-+        inl -= len;
-+        out += len;
-+        in += len;
-+    }
-+
-+    /* final partial block */
-+    if (inl) {
-+        memset(cipher_ctx->partial, 0, cipher_ctx->blocksize);
-+        if (cipher_do_cipher(ctx, cipher_ctx->partial, cipher_ctx->partial,
-+            cipher_ctx->blocksize) < 1)
-+            return 0;
-+        while (inl--) {
-+            out[cipher_ctx->num] = in[cipher_ctx->num]
-+                                   ^ cipher_ctx->partial[cipher_ctx->num];
-+            cipher_ctx->num++;
-+        }
-+    }
-+
-+    return 1;
-+}
-+
-+static int cipher_ctrl(EVP_CIPHER_CTX *ctx, int type, int p1, void* p2)
-+{
-+    struct cipher_ctx *cipher_ctx =
-+        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
-+    EVP_CIPHER_CTX *to_ctx = (EVP_CIPHER_CTX *)p2;
-+    struct cipher_ctx *to_cipher_ctx;
-+
-+    switch (type) {
-+
-+    case EVP_CTRL_COPY:
-+        if (cipher_ctx == NULL)
-+            return 1;
-+        /* when copying the context, a new session needs to be initialized */
-+        to_cipher_ctx =
-+            (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(to_ctx);
-+        memset(&to_cipher_ctx->sess, 0, sizeof(to_cipher_ctx->sess));
-+        return cipher_init(to_ctx, cipher_ctx->sess.key, EVP_CIPHER_CTX_iv(ctx),
-+                           (cipher_ctx->op == COP_ENCRYPT));
-+
-+    case EVP_CTRL_INIT:
-+        memset(&cipher_ctx->sess, 0, sizeof(cipher_ctx->sess));
-+        return 1;
-+
-+    default:
-+        break;
-+    }
-+
-+    return -1;
-+}
-+
-+static int cipher_cleanup(EVP_CIPHER_CTX *ctx)
-+{
-+    struct cipher_ctx *cipher_ctx =
-+        (struct cipher_ctx *)EVP_CIPHER_CTX_get_cipher_data(ctx);
-+
-+    return clean_devcrypto_session(&cipher_ctx->sess);
-+}
-+
-+/*
-+ * Keep tables of known nids, associated methods, selected ciphers, and driver
-+ * info.
-+ * Note that known_cipher_nids[] isn't necessarily indexed the same way as
-+ * cipher_data[] above, which the other tables are.
-+ */
-+static int known_cipher_nids[OSSL_NELEM(cipher_data)];
-+static int known_cipher_nids_amount = -1; /* -1 indicates not yet initialised */
-+static EVP_CIPHER *known_cipher_methods[OSSL_NELEM(cipher_data)] = { NULL, };
-+static int selected_ciphers[OSSL_NELEM(cipher_data)];
-+static struct driver_info_st cipher_driver_info[OSSL_NELEM(cipher_data)];
-+
-+
-+static int devcrypto_test_cipher(size_t cipher_data_index)
-+{
-+    return (cipher_driver_info[cipher_data_index].status == DEVCRYPTO_STATUS_USABLE
-+            && selected_ciphers[cipher_data_index] == 1
-+            && (cipher_driver_info[cipher_data_index].accelerated
-+                    == DEVCRYPTO_ACCELERATED
-+                || use_softdrivers == DEVCRYPTO_USE_SOFTWARE
-+                || (cipher_driver_info[cipher_data_index].accelerated
-+                        != DEVCRYPTO_NOT_ACCELERATED
-+                    && use_softdrivers == DEVCRYPTO_REJECT_SOFTWARE)));
-+}
-+
-+static void prepare_cipher_methods(void)
-+{
-+    size_t i;
-+    struct session_op sess;
-+    unsigned long cipher_mode;
-+#ifdef CIOCGSESSINFO
-+    struct session_info_op siop;
-+#endif
-+
-+    memset(&cipher_driver_info, 0, sizeof(cipher_driver_info));
-+
-+    memset(&sess, 0, sizeof(sess));
-+    sess.key = (void *)"01234567890123456789012345678901234567890123456789";
-+
-+    for (i = 0, known_cipher_nids_amount = 0;
-+         i < OSSL_NELEM(cipher_data); i++) {
-+
-+        selected_ciphers[i] = 1;
-+        /*
-+         * Check that the cipher is usable
-+         */
-+        sess.cipher = cipher_data[i].devcryptoid;
-+        sess.keylen = cipher_data[i].keylen;
-+        if (ioctl(cfd, CIOCGSESSION, &sess) < 0) {
-+            cipher_driver_info[i].status = DEVCRYPTO_STATUS_NO_CIOCGSESSION;
-+            continue;
-+        }
-+
-+        cipher_mode = cipher_data[i].flags & EVP_CIPH_MODE;
-+
-+        if ((known_cipher_methods[i] =
-+                 EVP_CIPHER_meth_new(cipher_data[i].nid,
-+                                     cipher_mode == EVP_CIPH_CTR_MODE ? 1 :
-+                                                    cipher_data[i].blocksize,
-+                                     cipher_data[i].keylen)) == NULL
-+            || !EVP_CIPHER_meth_set_iv_length(known_cipher_methods[i],
-+                                              cipher_data[i].ivlen)
-+            || !EVP_CIPHER_meth_set_flags(known_cipher_methods[i],
-+                                          cipher_data[i].flags
-+                                          | EVP_CIPH_CUSTOM_COPY
-+                                          | EVP_CIPH_CTRL_INIT
-+                                          | EVP_CIPH_FLAG_DEFAULT_ASN1)
-+            || !EVP_CIPHER_meth_set_init(known_cipher_methods[i], cipher_init)
-+            || !EVP_CIPHER_meth_set_do_cipher(known_cipher_methods[i],
-+                                     cipher_mode == EVP_CIPH_CTR_MODE ?
-+                                              ctr_do_cipher :
-+                                              cipher_do_cipher)
-+            || !EVP_CIPHER_meth_set_ctrl(known_cipher_methods[i], cipher_ctrl)
-+            || !EVP_CIPHER_meth_set_cleanup(known_cipher_methods[i],
-+                                            cipher_cleanup)
-+            || !EVP_CIPHER_meth_set_impl_ctx_size(known_cipher_methods[i],
-+                                                  sizeof(struct cipher_ctx))) {
-+            cipher_driver_info[i].status = DEVCRYPTO_STATUS_FAILURE;
-+            EVP_CIPHER_meth_free(known_cipher_methods[i]);
-+            known_cipher_methods[i] = NULL;
-+        } else {
-+            cipher_driver_info[i].status = DEVCRYPTO_STATUS_USABLE;
-+#ifdef CIOCGSESSINFO
-+            siop.ses = sess.ses;
-+            if (ioctl(cfd, CIOCGSESSINFO, &siop) < 0) {
-+                cipher_driver_info[i].accelerated = DEVCRYPTO_ACCELERATION_UNKNOWN;
-+            } else {
-+                cipher_driver_info[i].driver_name =
-+                    OPENSSL_strndup(siop.cipher_info.cra_driver_name,
-+                                    CRYPTODEV_MAX_ALG_NAME);
-+                if (!(siop.flags & SIOP_FLAG_KERNEL_DRIVER_ONLY))
-+                    cipher_driver_info[i].accelerated = DEVCRYPTO_NOT_ACCELERATED;
-+                else
-+                    cipher_driver_info[i].accelerated = DEVCRYPTO_ACCELERATED;
-+            }
-+#endif /* CIOCGSESSINFO */
-+        }
-+        ioctl(cfd, CIOCFSESSION, &sess.ses);
-+        if (devcrypto_test_cipher(i)) {
-+            known_cipher_nids[known_cipher_nids_amount++] =
-+                cipher_data[i].nid;
-+        }
-+    }
-+}
-+
-+static void rebuild_known_cipher_nids(ENGINE *e)
-+{
-+    size_t i;
-+
-+    for (i = 0, known_cipher_nids_amount = 0; i < OSSL_NELEM(cipher_data); i++) {
-+        if (devcrypto_test_cipher(i))
-+            known_cipher_nids[known_cipher_nids_amount++] = cipher_data[i].nid;
-+    }
-+    ENGINE_unregister_ciphers(e);
-+    ENGINE_register_ciphers(e);
-+}
-+
-+static const EVP_CIPHER *get_cipher_method(int nid)
-+{
-+    size_t i = get_cipher_data_index(nid);
-+
-+    if (i == (size_t)-1)
-+        return NULL;
-+    return known_cipher_methods[i];
-+}
-+
-+static int get_cipher_nids(const int **nids)
-+{
-+    *nids = known_cipher_nids;
-+    return known_cipher_nids_amount;
-+}
-+
-+static void destroy_cipher_method(int nid)
-+{
-+    size_t i = get_cipher_data_index(nid);
-+
-+    EVP_CIPHER_meth_free(known_cipher_methods[i]);
-+    known_cipher_methods[i] = NULL;
-+}
-+
-+static void destroy_all_cipher_methods(void)
-+{
-+    size_t i;
-+
-+    for (i = 0; i < OSSL_NELEM(cipher_data); i++) {
-+        destroy_cipher_method(cipher_data[i].nid);
-+        OPENSSL_free(cipher_driver_info[i].driver_name);
-+        cipher_driver_info[i].driver_name = NULL;
-+    }
-+}
-+
-+static int devcrypto_ciphers(ENGINE *e, const EVP_CIPHER **cipher,
-+                             const int **nids, int nid)
-+{
-+    if (cipher == NULL)
-+        return get_cipher_nids(nids);
-+
-+    *cipher = get_cipher_method(nid);
-+
-+    return *cipher != NULL;
-+}
-+
-+static void devcrypto_select_all_ciphers(int *cipher_list)
-+{
-+    size_t i;
-+
-+    for (i = 0; i < OSSL_NELEM(cipher_data); i++)
-+        cipher_list[i] = 1;
-+}
-+
-+static int cryptodev_select_cipher_cb(const char *str, int len, void *usr)
-+{
-+    int *cipher_list = (int *)usr;
-+    char *name;
-+    const EVP_CIPHER *EVP;
-+    size_t i;
-+
-+    if (len == 0)
-+        return 1;
-+    if (usr == NULL || (name = OPENSSL_strndup(str, len)) == NULL)
-+        return 0;
-+    EVP = EVP_get_cipherbyname(name);
-+    if (EVP == NULL)
-+        fprintf(stderr, "devcrypto: unknown cipher %s\n", name);
-+    else if ((i = find_cipher_data_index(EVP_CIPHER_nid(EVP))) != (size_t)-1)
-+        cipher_list[i] = 1;
-+    else
-+        fprintf(stderr, "devcrypto: cipher %s not available\n", name);
-+    OPENSSL_free(name);
-+    return 1;
-+}
-+
-+static void dump_cipher_info(void)
-+{
-+    size_t i;
-+    const char *name;
-+
-+    fprintf (stderr, "Information about ciphers supported by the /dev/crypto"
-+             " engine:\n");
-+#ifndef CIOCGSESSINFO
-+    fprintf(stderr, "CIOCGSESSINFO (session info call) unavailable\n");
-+#endif
-+    for (i = 0; i < OSSL_NELEM(cipher_data); i++) {
-+        name = OBJ_nid2sn(cipher_data[i].nid);
-+        fprintf (stderr, "Cipher %s, NID=%d, /dev/crypto info: id=%d, ",
-+                 name ? name : "unknown", cipher_data[i].nid,
-+                 cipher_data[i].devcryptoid);
-+        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCGSESSION ) {
-+            fprintf (stderr, "CIOCGSESSION (session open call) failed\n");
-+            continue;
-+        }
-+        fprintf (stderr, "driver=%s ", cipher_driver_info[i].driver_name ?
-+                 cipher_driver_info[i].driver_name : "unknown");
-+        if (cipher_driver_info[i].accelerated == DEVCRYPTO_ACCELERATED)
-+            fprintf(stderr, "(hw accelerated)");
-+        else if (cipher_driver_info[i].accelerated == DEVCRYPTO_NOT_ACCELERATED)
-+            fprintf(stderr, "(software)");
-+        else
-+            fprintf(stderr, "(acceleration status unknown)");
-+        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_FAILURE)
-+            fprintf (stderr, ". Cipher setup failed");
-+        fprintf(stderr, "\n");
-+    }
-+    fprintf(stderr, "\n");
-+}
-+
-+/*
-+ * We only support digests if the cryptodev implementation supports multiple
-+ * data updates and session copying.  Otherwise, we would be forced to maintain
-+ * a cache, which is perilous if there's a lot of data coming in (if someone
-+ * wants to checksum an OpenSSL tarball, for example).
-+ */
-+#if defined(CIOCCPHASH) && defined(COP_FLAG_UPDATE) && defined(COP_FLAG_FINAL)
-+#define IMPLEMENT_DIGEST
-+
-+/******************************************************************************
-+ *
-+ * Digests
-+ *
-+ * Because they all do the same basic operation, we have only one set of
-+ * method functions for them all to share, and a mapping table between
-+ * NIDs and cryptodev IDs, with all the necessary size data.
-+ *
-+ *****/
-+
-+struct digest_ctx {
-+    struct session_op sess;
-+    /* This signals that the init function was called, not that it succeeded. */
-+    int init_called;
-+    unsigned char digest_res[HASH_MAX_LEN];
-+};
-+
-+static const struct digest_data_st {
-+    int nid;
-+    int blocksize;
-+    int digestlen;
-+    int devcryptoid;
-+} digest_data[] = {
-+#ifndef OPENSSL_NO_MD5
-+    { NID_md5, /* MD5_CBLOCK */ 64, 16, CRYPTO_MD5 },
-+#endif
-+    { NID_sha1, SHA_CBLOCK, 20, CRYPTO_SHA1 },
-+#ifndef OPENSSL_NO_RMD160
-+# if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_RIPEMD160)
-+    { NID_ripemd160, /* RIPEMD160_CBLOCK */ 64, 20, CRYPTO_RIPEMD160 },
-+# endif
-+#endif
-+#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_224)
-+    { NID_sha224, SHA256_CBLOCK, 224 / 8, CRYPTO_SHA2_224 },
-+#endif
-+#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_256)
-+    { NID_sha256, SHA256_CBLOCK, 256 / 8, CRYPTO_SHA2_256 },
-+#endif
-+#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_384)
-+    { NID_sha384, SHA512_CBLOCK, 384 / 8, CRYPTO_SHA2_384 },
-+#endif
-+#if !defined(CHECK_BSD_STYLE_MACROS) || defined(CRYPTO_SHA2_512)
-+    { NID_sha512, SHA512_CBLOCK, 512 / 8, CRYPTO_SHA2_512 },
-+#endif
-+};
-+
-+static size_t find_digest_data_index(int nid)
-+{
-+    size_t i;
-+
-+    for (i = 0; i < OSSL_NELEM(digest_data); i++)
-+        if (nid == digest_data[i].nid)
-+            return i;
-+    return (size_t)-1;
-+}
-+
-+static size_t get_digest_data_index(int nid)
-+{
-+    size_t i = find_digest_data_index(nid);
-+
-+    if (i != (size_t)-1)
-+        return i;
-+
-+    /*
-+     * Code further down must make sure that only NIDs in the table above
-+     * are used.  If any other NID reaches this function, there's a grave
-+     * coding error further down.
-+     */
-+    assert("Code that never should be reached" == NULL);
-+    return -1;
-+}
-+
-+static const struct digest_data_st *get_digest_data(int nid)
-+{
-+    return &digest_data[get_digest_data_index(nid)];
-+}
-+
-+/*
-+ * Following are the five necessary functions to map OpenSSL functionality
-+ * with cryptodev: init, update, final, cleanup, and copy.
-+ */
-+
-+static int digest_init(EVP_MD_CTX *ctx)
-+{
-+    struct digest_ctx *digest_ctx =
-+        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
-+    const struct digest_data_st *digest_d =
-+        get_digest_data(EVP_MD_CTX_type(ctx));
-+
-+    digest_ctx->init_called = 1;
-+
-+    memset(&digest_ctx->sess, 0, sizeof(digest_ctx->sess));
-+    digest_ctx->sess.mac = digest_d->devcryptoid;
-+    if (ioctl(cfd, CIOCGSESSION, &digest_ctx->sess) < 0) {
-+        SYSerr(SYS_F_IOCTL, errno);
-+        return 0;
-+    }
-+    return 1;
-+}
-+
-+static int digest_op(struct digest_ctx *ctx, const void *src, size_t srclen,
-+                     void *res, unsigned int flags)
-+{
-+    struct crypt_op cryp;
-+
-+    memset(&cryp, 0, sizeof(cryp));
-+    cryp.ses = ctx->sess.ses;
-+    cryp.len = srclen;
-+    cryp.src = (void *)src;
-+    cryp.dst = NULL;
-+    cryp.mac = res;
-+    cryp.flags = flags;
-+    return ioctl(cfd, CIOCCRYPT, &cryp);
-+}
-+
-+static int digest_update(EVP_MD_CTX *ctx, const void *data, size_t count)
-+{
-+    struct digest_ctx *digest_ctx =
-+        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
-+
-+    if (count == 0)
-+        return 1;
-+
-+    if (digest_ctx == NULL)
-+        return 0;
-+
-+    if (EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_ONESHOT)) {
-+        if (digest_op(digest_ctx, data, count, digest_ctx->digest_res, 0) >= 0)
-+            return 1;
-+    } else if (digest_op(digest_ctx, data, count, NULL, COP_FLAG_UPDATE) >= 0) {
-+        return 1;
-+    }
-+
-+    SYSerr(SYS_F_IOCTL, errno);
-+    return 0;
-+}
-+
-+static int digest_final(EVP_MD_CTX *ctx, unsigned char *md)
-+{
-+    struct digest_ctx *digest_ctx =
-+        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
-+
-+    if (md == NULL || digest_ctx == NULL)
-+        return 0;
-+
-+    if (EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_ONESHOT)) {
-+        memcpy(md, digest_ctx->digest_res, EVP_MD_CTX_size(ctx));
-+    } else if (digest_op(digest_ctx, NULL, 0, md, COP_FLAG_FINAL) < 0) {
-+        SYSerr(SYS_F_IOCTL, errno);
-+        return 0;
-+    }
-+
-+    return 1;
-+}
-+
-+static int digest_copy(EVP_MD_CTX *to, const EVP_MD_CTX *from)
-+{
-+    struct digest_ctx *digest_from =
-+        (struct digest_ctx *)EVP_MD_CTX_md_data(from);
-+    struct digest_ctx *digest_to =
-+        (struct digest_ctx *)EVP_MD_CTX_md_data(to);
-+    struct cphash_op cphash;
-+
-+    if (digest_from == NULL || digest_from->init_called != 1)
-+        return 1;
-+
-+    if (!digest_init(to)) {
-+        SYSerr(SYS_F_IOCTL, errno);
-+        return 0;
-+    }
-+
-+    cphash.src_ses = digest_from->sess.ses;
-+    cphash.dst_ses = digest_to->sess.ses;
-+    if (ioctl(cfd, CIOCCPHASH, &cphash) < 0) {
-+        SYSerr(SYS_F_IOCTL, errno);
-+        return 0;
-+    }
-+    return 1;
-+}
-+
-+static int digest_cleanup(EVP_MD_CTX *ctx)
-+{
-+    struct digest_ctx *digest_ctx =
-+        (struct digest_ctx *)EVP_MD_CTX_md_data(ctx);
-+
-+    if (digest_ctx == NULL)
-+        return 1;
-+
-+    return clean_devcrypto_session(&digest_ctx->sess);
-+}
-+
-+/*
-+ * Keep tables of known nids, associated methods, selected digests, and
-+ * driver info.
-+ * Note that known_digest_nids[] isn't necessarily indexed the same way as
-+ * digest_data[] above, which the other tables are.
-+ */
-+static int known_digest_nids[OSSL_NELEM(digest_data)];
-+static int known_digest_nids_amount = -1; /* -1 indicates not yet initialised */
-+static EVP_MD *known_digest_methods[OSSL_NELEM(digest_data)] = { NULL, };
-+static int selected_digests[OSSL_NELEM(digest_data)];
-+static struct driver_info_st digest_driver_info[OSSL_NELEM(digest_data)];
-+
-+static int devcrypto_test_digest(size_t digest_data_index)
-+{
-+    return (digest_driver_info[digest_data_index].status == DEVCRYPTO_STATUS_USABLE
-+            && selected_digests[digest_data_index] == 1
-+            && (digest_driver_info[digest_data_index].accelerated
-+                    == DEVCRYPTO_ACCELERATED
-+                || use_softdrivers == DEVCRYPTO_USE_SOFTWARE
-+                || (digest_driver_info[digest_data_index].accelerated
-+                        != DEVCRYPTO_NOT_ACCELERATED
-+                    && use_softdrivers == DEVCRYPTO_REJECT_SOFTWARE)));
-+}
-+
-+static void rebuild_known_digest_nids(ENGINE *e)
-+{
-+    size_t i;
-+
-+    for (i = 0, known_digest_nids_amount = 0; i < OSSL_NELEM(digest_data); i++) {
-+        if (devcrypto_test_digest(i))
-+            known_digest_nids[known_digest_nids_amount++] = digest_data[i].nid;
-+    }
-+    ENGINE_unregister_digests(e);
-+    ENGINE_register_digests(e);
-+}
-+
-+static void prepare_digest_methods(void)
-+{
-+    size_t i;
-+    struct session_op sess1, sess2;
-+#ifdef CIOCGSESSINFO
-+    struct session_info_op siop;
-+#endif
-+    struct cphash_op cphash;
-+
-+    memset(&digest_driver_info, 0, sizeof(digest_driver_info));
-+
-+    memset(&sess1, 0, sizeof(sess1));
-+    memset(&sess2, 0, sizeof(sess2));
-+
-+    for (i = 0, known_digest_nids_amount = 0; i < OSSL_NELEM(digest_data);
-+         i++) {
-+
-+        selected_digests[i] = 1;
-+
-+        /*
-+         * Check that the digest is usable
-+         */
-+        sess1.mac = digest_data[i].devcryptoid;
-+        sess2.ses = 0;
-+        if (ioctl(cfd, CIOCGSESSION, &sess1) < 0) {
-+            digest_driver_info[i].status = DEVCRYPTO_STATUS_NO_CIOCGSESSION;
-+            goto finish;
-+        }
-+
-+#ifdef CIOCGSESSINFO
-+        /* gather hardware acceleration info from the driver */
-+        siop.ses = sess1.ses;
-+        if (ioctl(cfd, CIOCGSESSINFO, &siop) < 0) {
-+            digest_driver_info[i].accelerated = DEVCRYPTO_ACCELERATION_UNKNOWN;
-+        } else {
-+            digest_driver_info[i].driver_name =
-+                OPENSSL_strndup(siop.hash_info.cra_driver_name,
-+                                CRYPTODEV_MAX_ALG_NAME);
-+            if (siop.flags & SIOP_FLAG_KERNEL_DRIVER_ONLY)
-+                digest_driver_info[i].accelerated = DEVCRYPTO_ACCELERATED;
-+            else
-+                digest_driver_info[i].accelerated = DEVCRYPTO_NOT_ACCELERATED;
-+        }
-+#endif
-+
-+        /* digest must be capable of hash state copy */
-+        sess2.mac = sess1.mac;
-+        if (ioctl(cfd, CIOCGSESSION, &sess2) < 0) {
-+            digest_driver_info[i].status = DEVCRYPTO_STATUS_FAILURE;
-+            goto finish;
-+        }
-+        cphash.src_ses = sess1.ses;
-+        cphash.dst_ses = sess2.ses;
-+        if (ioctl(cfd, CIOCCPHASH, &cphash) < 0) {
-+            digest_driver_info[i].status = DEVCRYPTO_STATUS_NO_CIOCCPHASH;
-+            goto finish;
-+        }
-+        if ((known_digest_methods[i] = EVP_MD_meth_new(digest_data[i].nid,
-+                                                       NID_undef)) == NULL
-+            || !EVP_MD_meth_set_input_blocksize(known_digest_methods[i],
-+                                                digest_data[i].blocksize)
-+            || !EVP_MD_meth_set_result_size(known_digest_methods[i],
-+                                            digest_data[i].digestlen)
-+            || !EVP_MD_meth_set_init(known_digest_methods[i], digest_init)
-+            || !EVP_MD_meth_set_update(known_digest_methods[i], digest_update)
-+            || !EVP_MD_meth_set_final(known_digest_methods[i], digest_final)
-+            || !EVP_MD_meth_set_copy(known_digest_methods[i], digest_copy)
-+            || !EVP_MD_meth_set_cleanup(known_digest_methods[i], digest_cleanup)
-+            || !EVP_MD_meth_set_app_datasize(known_digest_methods[i],
-+                                             sizeof(struct digest_ctx))) {
-+            digest_driver_info[i].status = DEVCRYPTO_STATUS_FAILURE;
-+            EVP_MD_meth_free(known_digest_methods[i]);
-+            known_digest_methods[i] = NULL;
-+            goto finish;
-+        }
-+        digest_driver_info[i].status = DEVCRYPTO_STATUS_USABLE;
-+finish:
-+        ioctl(cfd, CIOCFSESSION, &sess1.ses);
-+        if (sess2.ses != 0)
-+            ioctl(cfd, CIOCFSESSION, &sess2.ses);
-+        if (devcrypto_test_digest(i))
-+            known_digest_nids[known_digest_nids_amount++] = digest_data[i].nid;
-+    }
-+}
-+
-+static const EVP_MD *get_digest_method(int nid)
-+{
-+    size_t i = get_digest_data_index(nid);
-+
-+    if (i == (size_t)-1)
-+        return NULL;
-+    return known_digest_methods[i];
-+}
-+
-+static int get_digest_nids(const int **nids)
-+{
-+    *nids = known_digest_nids;
-+    return known_digest_nids_amount;
-+}
-+
-+static void destroy_digest_method(int nid)
-+{
-+    size_t i = get_digest_data_index(nid);
-+
-+    EVP_MD_meth_free(known_digest_methods[i]);
-+    known_digest_methods[i] = NULL;
-+}
-+
-+static void destroy_all_digest_methods(void)
-+{
-+    size_t i;
-+
-+    for (i = 0; i < OSSL_NELEM(digest_data); i++) {
-+        destroy_digest_method(digest_data[i].nid);
-+        OPENSSL_free(digest_driver_info[i].driver_name);
-+        digest_driver_info[i].driver_name = NULL;
-+    }
-+}
-+
-+static int devcrypto_digests(ENGINE *e, const EVP_MD **digest,
-+                             const int **nids, int nid)
-+{
-+    if (digest == NULL)
-+        return get_digest_nids(nids);
-+
-+    *digest = get_digest_method(nid);
-+
-+    return *digest != NULL;
-+}
-+
-+static void devcrypto_select_all_digests(int *digest_list)
-+{
-+    size_t i;
-+
-+    for (i = 0; i < OSSL_NELEM(digest_data); i++)
-+        digest_list[i] = 1;
-+}
-+
-+static int cryptodev_select_digest_cb(const char *str, int len, void *usr)
-+{
-+    int *digest_list = (int *)usr;
-+    char *name;
-+    const EVP_MD *EVP;
-+    size_t i;
-+
-+    if (len == 0)
-+        return 1;
-+    if (usr == NULL || (name = OPENSSL_strndup(str, len)) == NULL)
-+        return 0;
-+    EVP = EVP_get_digestbyname(name);
-+    if (EVP == NULL)
-+        fprintf(stderr, "devcrypto: unknown digest %s\n", name);
-+    else if ((i = find_digest_data_index(EVP_MD_type(EVP))) != (size_t)-1)
-+        digest_list[i] = 1;
-+    else
-+        fprintf(stderr, "devcrypto: digest %s not available\n", name);
-+    OPENSSL_free(name);
-+    return 1;
-+}
-+
-+static void dump_digest_info(void)
-+{
-+    size_t i;
-+    const char *name;
-+
-+    fprintf (stderr, "Information about digests supported by the /dev/crypto"
-+             " engine:\n");
-+#ifndef CIOCGSESSINFO
-+    fprintf(stderr, "CIOCGSESSINFO (session info call) unavailable\n");
-+#endif
-+
-+    for (i = 0; i < OSSL_NELEM(digest_data); i++) {
-+        name = OBJ_nid2sn(digest_data[i].nid);
-+        fprintf (stderr, "Digest %s, NID=%d, /dev/crypto info: id=%d, driver=%s",
-+                 name ? name : "unknown", digest_data[i].nid,
-+                 digest_data[i].devcryptoid,
-+                 digest_driver_info[i].driver_name ? digest_driver_info[i].driver_name : "unknown");
-+        if (digest_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCGSESSION) {
-+            fprintf (stderr, ". CIOCGSESSION (session open) failed\n");
-+            continue;
-+        }
-+        if (digest_driver_info[i].accelerated == DEVCRYPTO_ACCELERATED)
-+            fprintf(stderr, " (hw accelerated)");
-+        else if (digest_driver_info[i].accelerated == DEVCRYPTO_NOT_ACCELERATED)
-+            fprintf(stderr, " (software)");
-+        else
-+            fprintf(stderr, " (acceleration status unknown)");
-+        if (cipher_driver_info[i].status == DEVCRYPTO_STATUS_FAILURE)
-+            fprintf (stderr, ". Cipher setup failed\n");
-+        else if (digest_driver_info[i].status == DEVCRYPTO_STATUS_NO_CIOCCPHASH)
-+            fprintf(stderr, ", CIOCCPHASH failed\n");
-+        else
-+            fprintf(stderr, ", CIOCCPHASH capable\n");
-+    }
-+    fprintf(stderr, "\n");
-+}
++++ b/engines/e_devcrypto.c
+@@ -7,7 +7,7 @@
+  * https://www.openssl.org/source/license.html
+  */
+ 
+-#include "e_os.h"
++#include "../e_os.h"
+ #include <string.h>
+ #include <sys/types.h>
+ #include <sys/stat.h>
+@@ -23,26 +23,26 @@
+ #include <openssl/objects.h>
+ #include <crypto/cryptodev.h>
+ 
+-#include "internal/engine.h"
+-
+ /* #define ENGINE_DEVCRYPTO_DEBUG */
+ 
+ #if CRYPTO_ALGORITHM_MIN < CRYPTO_ALGORITHM_MAX
+ # define CHECK_BSD_STYLE_MACROS
+ #endif
+ 
++#define engine_devcrypto_id "devcrypto"
 +
+ /*
+  * ONE global file descriptor for all sessions.  This allows operations
+  * such as digest session data copying (see digest_copy()), but is also
+  * saner...  why re-open /dev/crypto for every session?
+  */
+-static int cfd;
++static int cfd = -1;
+ #define DEVCRYPTO_REQUIRE_ACCELERATED 0 /* require confirmation of acceleration */
+ #define DEVCRYPTO_USE_SOFTWARE        1 /* allow software drivers */
+ #define DEVCRYPTO_REJECT_SOFTWARE     2 /* only disallow confirmed software drivers */
+ 
+-#define DEVCRYPTO_DEFAULT_USE_SOFDTRIVERS DEVCRYPTO_REJECT_SOFTWARE
+-static int use_softdrivers = DEVCRYPTO_DEFAULT_USE_SOFDTRIVERS;
++#define DEVCRYPTO_DEFAULT_USE_SOFTDRIVERS DEVCRYPTO_REJECT_SOFTWARE
++static int use_softdrivers = DEVCRYPTO_DEFAULT_USE_SOFTDRIVERS;
+ 
+ /*
+  * cipher/digest status & acceleration definitions
+@@ -66,6 +66,10 @@ struct driver_info_st {
+     char *driver_name;
+ };
+ 
++#ifdef OPENSSL_NO_DYNAMIC_ENGINE
++void engine_load_devcrypto_int(void);
 +#endif
 +
-+/******************************************************************************
-+ *
-+ * CONTROL COMMANDS
-+ *
-+ *****/
-+
-+#define DEVCRYPTO_CMD_USE_SOFTDRIVERS ENGINE_CMD_BASE
-+#define DEVCRYPTO_CMD_CIPHERS (ENGINE_CMD_BASE + 1)
-+#define DEVCRYPTO_CMD_DIGESTS (ENGINE_CMD_BASE + 2)
-+#define DEVCRYPTO_CMD_DUMP_INFO (ENGINE_CMD_BASE + 3)
-+
-+/* Helper macros for CPP string composition */
-+#ifndef OPENSSL_MSTR
-+# define OPENSSL_MSTR_HELPER(x) #x
-+# define OPENSSL_MSTR(x) OPENSSL_MSTR_HELPER(x)
-+#endif
+ static int clean_devcrypto_session(struct session_op *sess) {
+     if (ioctl(cfd, CIOCFSESSION, &sess->ses) < 0) {
+         SYSerr(SYS_F_IOCTL, errno);
+@@ -341,6 +345,7 @@ static int cipher_ctrl(EVP_CIPHER_CTX *ctx, int type, int p1, void* p2)
+     struct cipher_ctx *to_cipher_ctx;
+ 
+     switch (type) {
 +
-+static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
-+#ifdef CIOCGSESSINFO
-+   {DEVCRYPTO_CMD_USE_SOFTDRIVERS,
-+    "USE_SOFTDRIVERS",
-+    "specifies whether to use software (not accelerated) drivers ("
-+        OPENSSL_MSTR(DEVCRYPTO_REQUIRE_ACCELERATED) "=use only accelerated drivers, "
-+        OPENSSL_MSTR(DEVCRYPTO_USE_SOFTWARE) "=allow all drivers, "
-+        OPENSSL_MSTR(DEVCRYPTO_REJECT_SOFTWARE)
-+        "=use if acceleration can't be determined) [default="
+     case EVP_CTRL_COPY:
+         if (cipher_ctx == NULL)
+             return 1;
+@@ -702,7 +707,6 @@ static int digest_init(EVP_MD_CTX *ctx)
+         SYSerr(SYS_F_IOCTL, errno);
+         return 0;
+     }
+-
+     return 1;
+ }
+ 
+@@ -1058,7 +1062,7 @@ static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
+         OPENSSL_MSTR(DEVCRYPTO_USE_SOFTWARE) "=allow all drivers, "
+         OPENSSL_MSTR(DEVCRYPTO_REJECT_SOFTWARE)
+         "=use if acceleration can't be determined) [default="
+-        OPENSSL_MSTR(DEVCRYPTO_DEFAULT_USE_SOFDTRIVERS) "]",
 +        OPENSSL_MSTR(DEVCRYPTO_DEFAULT_USE_SOFTDRIVERS) "]",
-+    ENGINE_CMD_FLAG_NUMERIC},
-+#endif
-+
-+   {DEVCRYPTO_CMD_CIPHERS,
-+    "CIPHERS",
-+    "either ALL, NONE, or a comma-separated list of ciphers to enable [default=ALL]",
-+    ENGINE_CMD_FLAG_STRING},
-+
-+#ifdef IMPLEMENT_DIGEST
-+   {DEVCRYPTO_CMD_DIGESTS,
-+    "DIGESTS",
-+    "either ALL, NONE, or a comma-separated list of digests to enable [default=ALL]",
-+    ENGINE_CMD_FLAG_STRING},
-+#endif
-+
-+   {DEVCRYPTO_CMD_DUMP_INFO,
-+    "DUMP_INFO",
-+    "dump info about each algorithm to stderr; use 'openssl engine -pre DUMP_INFO devcrypto'",
-+    ENGINE_CMD_FLAG_NO_INPUT},
-+
-+   {0, NULL, NULL, 0}
-+};
-+
-+static int devcrypto_ctrl(ENGINE *e, int cmd, long i, void *p, void (*f) (void))
-+{
-+    int *new_list;
-+    switch (cmd) {
-+#ifdef CIOCGSESSINFO
-+    case DEVCRYPTO_CMD_USE_SOFTDRIVERS:
-+        switch (i) {
-+        case DEVCRYPTO_REQUIRE_ACCELERATED:
-+        case DEVCRYPTO_USE_SOFTWARE:
-+        case DEVCRYPTO_REJECT_SOFTWARE:
-+            break;
-+        default:
-+            fprintf(stderr, "devcrypto: invalid value (%ld) for USE_SOFTDRIVERS\n", i);
-+            return 0;
-+        }
-+        if (use_softdrivers == i)
-+            return 1;
-+        use_softdrivers = i;
-+#ifdef IMPLEMENT_DIGEST
-+        rebuild_known_digest_nids(e);
-+#endif
-+        rebuild_known_cipher_nids(e);
-+        return 1;
-+#endif /* CIOCGSESSINFO */
-+
-+    case DEVCRYPTO_CMD_CIPHERS:
-+        if (p == NULL)
-+            return 1;
-+        if (strcasecmp((const char *)p, "ALL") == 0) {
-+            devcrypto_select_all_ciphers(selected_ciphers);
-+        } else if (strcasecmp((const char*)p, "NONE") == 0) {
-+            memset(selected_ciphers, 0, sizeof(selected_ciphers));
-+        } else {
-+            new_list=OPENSSL_zalloc(sizeof(selected_ciphers));
-+            if (!CONF_parse_list(p, ',', 1, cryptodev_select_cipher_cb, new_list)) {
-+                OPENSSL_free(new_list);
-+                return 0;
-+            }
-+            memcpy(selected_ciphers, new_list, sizeof(selected_ciphers));
-+            OPENSSL_free(new_list);
-+        }
-+        rebuild_known_cipher_nids(e);
-+        return 1;
-+
-+#ifdef IMPLEMENT_DIGEST
-+    case DEVCRYPTO_CMD_DIGESTS:
-+        if (p == NULL)
-+            return 1;
-+        if (strcasecmp((const char *)p, "ALL") == 0) {
-+            devcrypto_select_all_digests(selected_digests);
-+        } else if (strcasecmp((const char*)p, "NONE") == 0) {
-+            memset(selected_digests, 0, sizeof(selected_digests));
-+        } else {
-+            new_list=OPENSSL_zalloc(sizeof(selected_digests));
-+            if (!CONF_parse_list(p, ',', 1, cryptodev_select_digest_cb, new_list)) {
-+                OPENSSL_free(new_list);
-+                return 0;
-+            }
-+            memcpy(selected_digests, new_list, sizeof(selected_digests));
-+            OPENSSL_free(new_list);
-+        }
-+        rebuild_known_digest_nids(e);
-+        return 1;
-+#endif /* IMPLEMENT_DIGEST */
-+
-+    case DEVCRYPTO_CMD_DUMP_INFO:
-+        dump_cipher_info();
-+#ifdef IMPLEMENT_DIGEST
-+        dump_digest_info();
-+#endif
-+        return 1;
-+
-+    default:
-+        break;
-+    }
-+    return 0;
-+}
-+
-+/******************************************************************************
-+ *
-+ * LOAD / UNLOAD
-+ *
-+ *****/
-+
-+/*
+     ENGINE_CMD_FLAG_NUMERIC},
+ #endif
+ 
+@@ -1166,55 +1170,70 @@ static int devcrypto_ctrl(ENGINE *e, int cmd, long i, void *p, void (*f) (void))
+  *
+  *****/
+ 
+-static int devcrypto_unload(ENGINE *e)
+-{
+-    destroy_all_cipher_methods();
+-#ifdef IMPLEMENT_DIGEST
+-    destroy_all_digest_methods();
+-#endif
+-
+-    close(cfd);
+-
+-    return 1;
+-}
+ /*
+- * This engine is always built into libcrypto, so it doesn't offer any
+- * ability to be dynamically loadable.
 + * Opens /dev/crypto
-+ */
+  */
+-void engine_load_devcrypto_int()
 +static int open_devcrypto(void)
-+{
+ {
+-    ENGINE *e = NULL;
 +    if (cfd >= 0)
 +        return 1;
-+
-+    if ((cfd = open("/dev/crypto", O_RDWR, 0)) < 0) {
-+#ifndef ENGINE_DEVCRYPTO_DEBUG
-+        if (errno != ENOENT)
-+#endif
-+            fprintf(stderr, "Could not open /dev/crypto: %s\n", strerror(errno));
+ 
+     if ((cfd = open("/dev/crypto", O_RDWR, 0)) < 0) {
+ #ifndef ENGINE_DEVCRYPTO_DEBUG
+         if (errno != ENOENT)
+ #endif
+             fprintf(stderr, "Could not open /dev/crypto: %s\n", strerror(errno));
+-        return;
 +        return 0;
-+    }
-+
+     }
+ 
+-    if ((e = ENGINE_new()) == NULL
+-        || !ENGINE_set_destroy_function(e, devcrypto_unload)) {
+-        ENGINE_free(e);
+-        /*
+-         * We know that devcrypto_unload() won't be called when one of the
+-         * above two calls have failed, so we close cfd explicitly here to
+-         * avoid leaking resources.
+-         */
+-        close(cfd);
+-        return;
 +    return 1;
 +}
 +
@@ -2578,17 +256,20 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 +    if (ret != 0) {
 +        fprintf(stderr, "Error closing /dev/crypto: %s\n", strerror(errno));
 +        return 0;
-+    }
+     }
 +    return 1;
 +}
-+
+ 
+-    prepare_cipher_methods();
 +static int devcrypto_unload(ENGINE *e)
 +{
 +    destroy_all_cipher_methods();
-+#ifdef IMPLEMENT_DIGEST
+ #ifdef IMPLEMENT_DIGEST
+-    prepare_digest_methods();
 +    destroy_all_digest_methods();
-+#endif
-+
+ #endif
+ 
+-    if (!ENGINE_set_id(e, "devcrypto")
 +    close_devcrypto();
 +
 +    return 1;
@@ -2597,9 +278,10 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 +static int bind_devcrypto(ENGINE *e) {
 +
 +    if (!ENGINE_set_id(e, engine_devcrypto_id)
-+        || !ENGINE_set_name(e, "/dev/crypto engine")
+         || !ENGINE_set_name(e, "/dev/crypto engine")
 +        || !ENGINE_set_destroy_function(e, devcrypto_unload)
-+        || !ENGINE_set_cmd_defns(e, devcrypto_cmds)
+         || !ENGINE_set_cmd_defns(e, devcrypto_cmds)
+-        || !ENGINE_set_ctrl_function(e, devcrypto_ctrl)
 +        || !ENGINE_set_ctrl_function(e, devcrypto_ctrl))
 +        return 0;
 +
@@ -2607,45 +289,39 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 +#ifdef IMPLEMENT_DIGEST
 +    prepare_digest_methods();
 +#endif
-+
+ 
 +    return (ENGINE_set_ciphers(e, devcrypto_ciphers)
 +#ifdef IMPLEMENT_DIGEST
 +        && ENGINE_set_digests(e, devcrypto_digests)
 +#endif
-+/*
-+ * Asymmetric ciphers aren't well supported with /dev/crypto.  Among the BSD
-+ * implementations, it seems to only exist in FreeBSD, and regarding the
-+ * parameters in its crypt_kop, the manual crypto(4) has this to say:
-+ *
-+ *    The semantics of these arguments are currently undocumented.
-+ *
-+ * Reading through the FreeBSD source code doesn't give much more than
-+ * their CRK_MOD_EXP implementation for ubsec.
-+ *
-+ * It doesn't look much better with cryptodev-linux.  They have the crypt_kop
-+ * structure as well as the command (CRK_*) in cryptodev.h, but no support
-+ * seems to be implemented at all for the moment.
-+ *
-+ * At the time of writing, it seems impossible to write proper support for
-+ * FreeBSD's asym features without some very deep knowledge and access to
-+ * specific kernel modules.
-+ *
-+ * /Richard Levitte, 2017-05-11
-+ */
-+#if 0
-+# ifndef OPENSSL_NO_RSA
+ /*
+  * Asymmetric ciphers aren't well supported with /dev/crypto.  Among the BSD
+  * implementations, it seems to only exist in FreeBSD, and regarding the
+@@ -1237,23 +1256,36 @@ void engine_load_devcrypto_int()
+  */
+ #if 0
+ # ifndef OPENSSL_NO_RSA
+-        || !ENGINE_set_RSA(e, devcrypto_rsa)
 +        && ENGINE_set_RSA(e, devcrypto_rsa)
-+# endif
-+# ifndef OPENSSL_NO_DSA
+ # endif
+ # ifndef OPENSSL_NO_DSA
+-        || !ENGINE_set_DSA(e, devcrypto_dsa)
 +        && ENGINE_set_DSA(e, devcrypto_dsa)
-+# endif
-+# ifndef OPENSSL_NO_DH
+ # endif
+ # ifndef OPENSSL_NO_DH
+-        || !ENGINE_set_DH(e, devcrypto_dh)
 +        && ENGINE_set_DH(e, devcrypto_dh)
-+# endif
-+# ifndef OPENSSL_NO_EC
+ # endif
+ # ifndef OPENSSL_NO_EC
+-        || !ENGINE_set_EC(e, devcrypto_ec)
 +        && ENGINE_set_EC(e, devcrypto_ec)
-+# endif
-+#endif
+ # endif
+ #endif
+-        || !ENGINE_set_ciphers(e, devcrypto_ciphers)
+-#ifdef IMPLEMENT_DIGEST
+-        || !ENGINE_set_digests(e, devcrypto_digests)
+-#endif
+-        ) {
 +        );
 +}
 +
@@ -2664,14 +340,13 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 +    if ((e = ENGINE_new()) == NULL
 +        || !bind_devcrypto(e)) {
 +        close_devcrypto();
-+        ENGINE_free(e);
-+        return;
-+    }
-+
-+    ENGINE_add(e);
-+    ENGINE_free(e);          /* Loose our local reference */
-+    ERR_clear_error();
-+}
+         ENGINE_free(e);
+         return;
+     }
+@@ -1262,3 +1294,22 @@ void engine_load_devcrypto_int()
+     ENGINE_free(e);          /* Loose our local reference */
+     ERR_clear_error();
+ }
 +
 +#else
 +
diff --git a/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch b/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch
index bca198eb34..89385fa477 100644
--- a/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch
+++ b/package/libs/openssl/patches/500-e_devcrypto-default-to-not-use-digests-in-engine.patch
@@ -1,7 +1,7 @@
-From 5d3be6bc8ed7d73ab2c4d389fb0f0a03dacd04b1 Mon Sep 17 00:00:00 2001
+From 52ddedc09ee81fe05ea2fa384fce89afe92d6d72 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Mon, 11 Mar 2019 09:29:13 -0300
-Subject: [PATCH] e_devcrypto: default to not use digests in engine
+Subject: e_devcrypto: default to not use digests in engine
 
 Digests are almost always slower when using /dev/crypto because of the
 cost of the context switches.  Only for large blocks it is worth it.
@@ -19,6 +19,8 @@ turn them on if it is safe and fast enough.
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/engines/e_devcrypto.c b/engines/e_devcrypto.c
+index fb5c6e1636..7741138b82 100644
 --- a/engines/e_devcrypto.c
 +++ b/engines/e_devcrypto.c
 @@ -854,7 +854,7 @@ static void prepare_digest_methods(void)
@@ -30,7 +32,7 @@ Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
  
          /*
           * Check that the digest is usable
-@@ -1074,7 +1074,7 @@ static const ENGINE_CMD_DEFN devcrypto_c
+@@ -1074,7 +1074,7 @@ static const ENGINE_CMD_DEFN devcrypto_cmds[] = {
  #ifdef IMPLEMENT_DIGEST
     {DEVCRYPTO_CMD_DIGESTS,
      "DIGESTS",
diff --git a/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch b/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch
index fb69599aeb..087994376d 100644
--- a/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch
+++ b/package/libs/openssl/patches/510-e_devcrypto-ignore-error-when-closing-session.patch
@@ -1,16 +1,18 @@
-From b6e6d157367bae91a8015434769572e430257d40 Mon Sep 17 00:00:00 2001
+From b6b2744f06f64922b449b3cb4bf0ad3df3efba71 Mon Sep 17 00:00:00 2001
 From: Eneas U de Queiroz <cote2004-github@yahoo.com>
 Date: Mon, 11 Mar 2019 10:15:14 -0300
-Subject: [PATCH] e_devcrypto: ignore error when closing session
+Subject: e_devcrypto: ignore error when closing session
 
 In cipher_init, ignore an eventual error when closing the previous
 session.  It may have been closed by another process after a fork.
 
 Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
 
+diff --git a/engines/e_devcrypto.c b/engines/e_devcrypto.c
+index 7741138b82..2480bdbd57 100644
 --- a/engines/e_devcrypto.c
 +++ b/engines/e_devcrypto.c
-@@ -197,9 +197,8 @@ static int cipher_init(EVP_CIPHER_CTX *c
+@@ -197,9 +197,8 @@ static int cipher_init(EVP_CIPHER_CTX *ctx, const unsigned char *key,
          get_cipher_data(EVP_CIPHER_CTX_nid(ctx));
  
      /* cleanup a previous session */

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
