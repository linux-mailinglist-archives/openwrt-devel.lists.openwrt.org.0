Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E4DB55E2
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 21:02:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GlmW+eW2KxgdKWKGli/CvhB248wle9WOMH6Gj+z15PA=; b=k5NDDncFO1V/vu
	gOPZqUhamSN+Vwcxqav8F+rIuFnhJPIQHcWvlmNe75CFPalxxAWIUpR7JVnncQ/oU0zr7UuWM9Q/U
	S87qowFhw7SQuFMrRqPVx3ZqW4vNdYzeOdEQlPilDWD+Ezj+eo5oA1dwFJ+NkCQrUVD0LuwzWza87
	36DXD3b4YyRje9X28CXLE/ZOrloSosFJdhlAKvl2Qk3lIpFYt9Q4ECtVcYggkdxqM+UDhhRl7nqoE
	tkwVAFiCzWMb3GrHaCAhDeeN71igsOD8Jns2JrvFGQk1TR4I+LGhcfGV7kM8ocWwh4VWCtyHv8ewM
	0UE5x8yrRcH4/mje79Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAIk5-0006Mv-E2; Tue, 17 Sep 2019 19:02:25 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAIjZ-0006FI-UA
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 19:01:59 +0000
Received: by mail-qk1-x72b.google.com with SMTP id i78so5144025qke.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Sep 2019 12:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPXyCn2qvq308S8ipH0d6LgvfcPLwQ/PDlULZc8euGg=;
 b=dQTa2u30R2UlmyUftVSe7eozG3aWWnzVoECWROzqteNiZL5JC+wXGlRsDieUy524+1
 jex7VOt4/srSdwL3QKBbg9JicwoIX2vo+FNynwZxzZvQWEsHQordCVsoXNXSa79LsP1j
 ILYyJxJ488X7lVVbyjqSRl+WrhzleTJyRBpCUBHM/n+hMdnULgPz978Wzs7trZX3445M
 L/0e3RSTyI8WzwhguNRPHtjON2MNaLRl+C8duLzL17uua21DtB71iydyMaMMbah4VbIQ
 bSiXR22bBCIxHBqhepN9ZwQuVLhU9g5/U5VeRn+oVfE4Pi1nTQSZpS6lOVcAAq0aJRIx
 2okQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EPXyCn2qvq308S8ipH0d6LgvfcPLwQ/PDlULZc8euGg=;
 b=Yn3WRFpugz66Yy5+Kf2BXsuennKjYqSwu3wC9Vo+uXBxf2unxyf+0VCq9TNznWEw5n
 LoXmBpKSqT2H8+PcViBOxzZI2+m2f+AvY0LjUp7CjDSKa7PNt9IJ+QIfTJiXlqqP8i2b
 okSysXuvOTzJForebJnRpgE+I7WC+62sBPZp0YxQ02LrQ2DAUU2pgfLHkbN/X4eylhnH
 nH2dEy5jMAd0KJVI5wNjXr9/Sq9tXKP7GDcfQR9pH0eVAN5OUjM0iY5jJ62RWl7tTBpK
 73Ow6XrXPja1vIjx2UdaEXRBl6TNsHj3MmaAAgIFb6mbS7940AjveckI3D4QWpT6HAWw
 1EJg==
X-Gm-Message-State: APjAAAW/oCjwJ3l1ItaA5ZqyQqyuqUiSSVeUSGkVuK2GukiMW91a2sm+
 358LlcBuJK+QBo8D2O8xD+3m3rfm
X-Google-Smtp-Source: APXvYqwGDhOtDr/lReZ+amzV2gFN6qhmMINZQaa52Tql5W5k613jloMRE8hDC7JTX7UVoR3pgJUIDA==
X-Received: by 2002:a37:aa8b:: with SMTP id t133mr5238420qke.406.1568746912561; 
 Tue, 17 Sep 2019 12:01:52 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id o14sm1424432qtk.52.2019.09.17.12.01.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 12:01:52 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 16:01:45 -0300
Message-Id: <20190917190145.8144-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_120157_560401_DAD6A666 
X-CRM114-Status: UNSURE (   4.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72b listed in]
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
Subject: [OpenWrt-Devel] [PATCH lede-17.01] openssl: bump to 1.0.2t,
 Makefile updates
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

Patches were refreshed, PKG_SOURCE_URL was updated to match
openwrt-18.06, and Eneas U de Queiroz added as maintainer.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/openssl/Makefile b/package/libs/openssl/Makefile
index 60357604b1..3f8907cf17 100644
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
@@ -18,15 +18,17 @@ PKG_BUILD_PARALLEL:=0
 
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_SOURCE_URL:=http://www.openssl.org/source/ \
-	ftp://ftp.openssl.org/source/ \
-	http://www.openssl.org/source/old/$(PKG_BASE)/ \
-	ftp://ftp.funet.fi/pub/crypt/mirrors/ftp.openssl.org/source \
-	ftp://ftp.sunet.se/pub/security/tools/net/openssl/source/
-PKG_HASH:=cabd5c9492825ce5bd23f3c3aeed6a97f8142f606d893df216411f07d1abab96
+PKG_SOURCE_URL:= \
+	http://ftp.fi.muni.cz/pub/openssl/source/ \
+	http://ftp.linux.hr/pub/openssl/source/ \
+	http://gd.tuwien.ac.at/infosys/security/openssl/source/ \
+	http://www.openssl.org/source/ \
+	http://www.openssl.org/source/old/$(PKG_BASE)/
+PKG_HASH:=14cb464efe7ac6b54799b34456bd69558a749a4931ecfd9cf9f71d7881cac7bc
 
 PKG_LICENSE:=OpenSSL
 PKG_LICENSE_FILES:=LICENSE
+PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
 PKG_CONFIG_DEPENDS:= \
 	CONFIG_OPENSSL_ENGINE_CRYPTO \
 	CONFIG_OPENSSL_ENGINE_DIGEST \
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
