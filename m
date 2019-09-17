Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2A7B55E0
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 21:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iK0c09ENFG8CbpaiJKUpxsGg555Wa7l68K5dXl/SvM0=; b=PTj0eAg8eMGj7R
	9ML3HmYzlq/aVXAYh8xMiwljCAXQtt5c9dDMOPPdq2tl45Dr69gjz9QVSaJ25Vyre/K6crOH+AFeq
	3RBTKFcK1600dKH1bMXvWfHUNcPrULBajxO8kmZoqoMW1Z6wIkOy6wF58ZkoSiQ7U+FFWKrr2PEfH
	NuCHUmNcxmK+x0XKDwvyOPr3rGPi14TtR9eJHXtC/YaPUq85hkMIUFkQIEdCY9e+n1Y+7j5IRt2x0
	2dqqi6DxnoRQ0/Ftj3Svb+JQAvGuv0wT1Nfs/ve8G+jt0exw9dgzWWfoMF8Ze2TEED1AY0GmNI3Wy
	URsY0/CZteSlMOVYmBAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAIjg-0006C0-CB; Tue, 17 Sep 2019 19:02:00 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAIjL-0006Bj-WF
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 19:01:41 +0000
Received: by mail-qk1-x743.google.com with SMTP id h126so5165810qke.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 12:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3sAj4/4in907wvnAEI3dy905bVNe1F1MK5WSdVVTQ14=;
 b=GV58Tg3U3zClCqEO3wQWs7Upq27YShoOwgRnHtoeFZsuE+k9JjYn/TXhcvvy6iZvAQ
 pIgiDzpw2ZCGEmL9zAYNhaaMmGBsz3Px6Yz35ccjYlx9SMiISuH8DuuogyCBtc3DIlSC
 y2CGiYEkrD5x64dfHnbX8Fqci55Ft6Qh4QkyOuUfeUWarYPidO7PQqFCQQTgF01tZZwW
 5+CcgeL9CeHFVZnGWQgWKt3SaWQx4LGQdHqM61Ua1dz+mhLjzGJMJwaQAmjuaFmivF7i
 FVsIA5BRkMxooCtgxrgy9PamSLkqewEhEFLL1/mYJ3JCHtorpZuq67aDbh9nfb3jVpkj
 OPHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3sAj4/4in907wvnAEI3dy905bVNe1F1MK5WSdVVTQ14=;
 b=FuSSEreSZqfiIe1ueYWGf739ALE/53f5ZGvt9JEOQ3+8GkkVFM6a7CEqM8Kam+yoXe
 qs/zH6l92KgYpwISa+yqrKyv8KRhoXzUFpU+AAkPrl9ld0ffeGB1FxmuknxTBJW6rQOe
 UaIFYXSK6OWtTE70vxMKbI1G1VAgA8bfHFJuOpO09BIYCEPiCPvSBvZobHELHjzjTMFa
 xvSb+T7+a9Z6qZGHteZuCuwztROgk9XP0OIPoDRCxB1uPU2s5tMQ59gR1DA8/G/069+b
 jLjVl4Ezqe8Kwf+949Knj90rO/N6+h2aS6VBLNbUi12oX82nsRPNlOPDyVRpmTXHPkzi
 mBjQ==
X-Gm-Message-State: APjAAAX/wHMnzMOb+SYQcIYxy5LmdzNSYobNUdpJIomX1901JckVe1tW
 j3AzfGHXUZ3Av+gv4eoweUpfeqAI
X-Google-Smtp-Source: APXvYqwZfuYNJSuS6qSKvkRlq2nhLnHesQYabNUNA7yrVYQ/FFY1m/3owdlhAFsbpW0zdwBIaXcX4w==
X-Received: by 2002:a37:9ccc:: with SMTP id f195mr5610185qke.110.1568746898570; 
 Tue, 17 Sep 2019 12:01:38 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id d205sm1597329qke.96.2019.09.17.12.01.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:01:37 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 16:01:24 -0300
Message-Id: <20190917190125.8062-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_120140_056937_4A3CDCCA 
X-CRM114-Status: UNSURE (   4.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 18.06] openssl: bump to 1.0.2t,
 add maintainer
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

Patches were refreshed, and Eneas U de Queiroz added as maintainer.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

--
This was run-tested in openwrt master with 18.06 versions of libustream
and openssl with uhttp, uclient-fetch, and openssl-util.

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 99f1b861b4..50939568c8 100644
--- a/package/libs/openssl/Makefile
+++ b/package/libs/openssl/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openssl
 PKG_BASE:=1.0.2
-PKG_BUGFIX:=s
+PKG_BUGFIX:=t
 PKG_VERSION:=$(PKG_BASE)$(PKG_BUGFIX)
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
@@ -24,10 +24,11 @@ PKG_SOURCE_URL:= \
 	http://gd.tuwien.ac.at/infosys/security/openssl/source/ \
 	http://www.openssl.org/source/ \
 	http://www.openssl.org/source/old/$(PKG_BASE)/
-PKG_HASH:=cabd5c9492825ce5bd23f3c3aeed6a97f8142f606d893df216411f07d1abab96
+PKG_HASH:=14cb464efe7ac6b54799b34456bd69558a749a4931ecfd9cf9f71d7881cac7bc
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
+PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
 PKG_CPE_ID:=cpe:/a:openssl:openssl
 PKG_CONFIG_DEPENDS:= \
 	CONFIG_OPENSSL_ENGINE_CRYPTO \
diff --git a/package/libs/openssl/patches/150-no_engines.patch b/package/libs/openssl/patches/150-no_engines.patch
index a518a00496..314075a910 100644
--- a/package/libs/openssl/patches/150-no_engines.patch
+++ b/package/libs/openssl/patches/150-no_engines.patch
@@ -1,6 +1,6 @@
 --- a/Configure
 +++ b/Configure
-@@ -2144,6 +2144,11 @@ EOF
+@@ -2145,6 +2145,11 @@ EOF
  	close(OUT);
    }
    

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
