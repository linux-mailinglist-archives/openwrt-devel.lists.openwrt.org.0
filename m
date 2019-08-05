Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93CD824F2
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 20:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4qEMkxfa2pcOIY0gh7tgtBOW4zBBdXYjihcFN/wUdM=; b=oSXx94ClUp06Qu
	A0JpXd6NsLbuH0ndW5WnJb1leM/eOBU2XBJh4C27lAAxwirdCQhLlb02m0bWNqbgw+0/VPJHmWhZr
	U1SUNGyuiilnyswl7m3lDTZOfW7h+ExMnO8LS16RsllTIwxVov4zV5ztJvVWe1XP2woBN3qVP/4n9
	hoQyM46wA+wVuI2auCXFs6elA3wuKuEfxBMGKpH6uxVpLFeIJ/N64ivqhu0xvdLGa6uIi59d49893
	lVF4Unr+xSJATJ84bItc3z0OwPVODZYhmxwHxtK6A5Fe9zxafi+h2dYDOyo86sme4HoXqmksV9S0/
	hUkHRgyKGA2IBV65E6JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhpt-0001fp-G6; Mon, 05 Aug 2019 18:35:57 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhpa-0001V6-MQ
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 18:35:39 +0000
Received: by mail-qt1-x844.google.com with SMTP id y26so81960407qto.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 11:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iYtmfZGKVRytPZAiIWkutGPwm6Kmcw3WC51PY9/Ya9g=;
 b=gnWOHocI9d9i4g0ycyDxenXVDwQ1Bp+NNSr6fHJSBI1JRWk2mrn9Mmueq7wDQdYmO8
 CMa2BRW9Nvv+sX8F5nmoKHS8tAdgLQG82v5LfaYREF2K7r8WZbQlU+GaHTEpMk2kmW/S
 dkyMd9O6XyijvgzG9ts1LcDFb/T2ionXKObpNYsbHgvpwmKO70w2zpTdPdmU7MReM9RW
 qF+K52Qreg/njWjQqd1dfJRocJlWyo3EGjgez2IWSHe/PvpobrIL4kXsDE1rZQKjBL/+
 gHa5gHg6z0H9cenV9Mq9jejRPsX9PwR7j+ihZqsCSC5RgcQ83G/0ZOwOmzMHSaX6Cktr
 kwew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iYtmfZGKVRytPZAiIWkutGPwm6Kmcw3WC51PY9/Ya9g=;
 b=KO9rySt9WwUADXf4u3kMxrobmYn0I3Z1kO2QXAU8X97/rATbrqa8m+bE33RQSN2eb7
 XX5J9pw2nRJcGxX98YGBmu2Lo56tlF3yQe8POBRxLY0yXj3Geup+8D/cHhDO2xr/E77p
 eH0/5zAc83Wr735cJkBvqjaBdLNc/lZN14AjfbdLvrliMfSFYcJ+G+YO9GBTEDrulCEs
 pVny4F7hPMOoylFJuQHKLr5sp493RuWRfwY/KjJg4gA8wXtrrgsR6kgNUJtFx5IgQF4k
 t+wH8jddUzdt0FRAjYpg0FqKzQg9Z3944anqFbRUZIxF5FzqkFa5jbkEOVt6zPI3uK1K
 2aXw==
X-Gm-Message-State: APjAAAUM3ibBRHaJJUK8T2NQFoCjeUG3yqnEFImoEitF+x4Dc+ng39C3
 spzgGkp70nEajRsFX3Sid32vEYQ5Wi0=
X-Google-Smtp-Source: APXvYqygC9CRYw3nHAhXkpw8Rtp8vsqdfaTU5n4ULb9/x+lgG1LKBLFHlqnEr/E5Wv6vS5aTREcvaQ==
X-Received: by 2002:ac8:19d8:: with SMTP id s24mr108719026qtk.44.1565030137310; 
 Mon, 05 Aug 2019 11:35:37 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e7sm34565926qtp.91.2019.08.05.11.35.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 11:35:36 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  5 Aug 2019 15:34:37 -0300
Message-Id: <20190805183439.17926-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805183439.17926-1-cotequeiroz@gmail.com>
References: <20190805183439.17926-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_113538_728815_209A5836 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/3] openssl: always build with EC support
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

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/openssl/Config.in b/package/libs/openssl/Config.in
index 63493829ba..d1281ec6fa 100644
--- a/package/libs/openssl/Config.in
+++ b/package/libs/openssl/Config.in
@@ -76,7 +76,6 @@ config OPENSSL_WITH_TLS13
 	bool
 	default y
 	prompt "Enable support for TLS 1.3"
-	select OPENSSL_WITH_EC
 	help
 		TLS 1.3 is the newest version of the TLS specification.
 		It aims:
@@ -120,19 +119,8 @@ config OPENSSL_WITH_CMS
 
 comment "Algorithm Selection"
 
-config OPENSSL_WITH_EC
-	bool
-	default y
-	prompt "Enable elliptic curve support"
-	help
-		Elliptic-curve cryptography (ECC) is an approach to public-key
-		cryptography based on the algebraic structure of elliptic curves
-		over finite fields. ECC requires smaller keys compared to non-ECC
-		cryptography to provide equivalent security.
-
 config OPENSSL_WITH_EC2M
 	bool
-	depends on OPENSSL_WITH_EC
 	prompt "Enable ec2m support"
 	help
 		This option enables the more efficient, yet less common, binary
diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index b8f97a82e8..24a84c0c54 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -11,7 +11,7 @@ PKG_NAME:=openssl
 PKG_BASE:=1.1.1
 PKG_BUGFIX:=c
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 PKG_USE_MIPS16:=0
 ENGINES_DIR=engines-1.1
 
@@ -28,7 +28,7 @@ PKG_HASH:=f6fb3079ad15076154eda9413fed42877d668e7069d9b87396d0804fdb3f4c90
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
-PKG_MAINTAINER:=Eneas U de Queiroz <cote2004-github@yahoo.com>
+PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
 PKG_CPE_ID:=cpe:/a:openssl:openssl
 PKG_CONFIG_DEPENDS:= \
 	CONFIG_OPENSSL_ENGINE \
@@ -48,7 +48,6 @@ PKG_CONFIG_DEPENDS:= \
 	CONFIG_OPENSSL_WITH_CMS \
 	CONFIG_OPENSSL_WITH_COMPRESSION \
 	CONFIG_OPENSSL_WITH_DTLS \
-	CONFIG_OPENSSL_WITH_EC \
 	CONFIG_OPENSSL_WITH_EC2M \
 	CONFIG_OPENSSL_WITH_ERROR_MESSAGES \
 	CONFIG_OPENSSL_WITH_GOST \
@@ -203,10 +202,6 @@ ifndef CONFIG_OPENSSL_WITH_ASYNC
   OPENSSL_OPTIONS += no-async
 endif
 
-ifndef CONFIG_OPENSSL_WITH_EC
-  OPENSSL_OPTIONS += no-ec
-endif
-
 ifndef CONFIG_OPENSSL_WITH_EC2M
   OPENSSL_OPTIONS += no-ec2m
 endif

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
