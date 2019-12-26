Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248F112ADD7
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 19:14:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BIck/5jXrHWKWtpO2N0PkdZ79cdcOWcith5dOyWaIxw=; b=oFDdwTFT/+K5OP
	Vu3qFJquyq+8RS86+0JoYvhudto+ikVyeTIL0Rzs0+js3QtVMZ0wJPpnRCTPog0qdKuJlH1jfZSUn
	3KtVJtFar76lz+eHPMJ1eGdpkdg7puj/2SKfKFnWB0VrFqDa1ne4CPqN0mwMo7p4SzMI3SYEBG2Lc
	vCOr2iVt3UGi2YEsw1V+CXOyvN4ZCeUvPqbOgM2f+2815esVY5W0heEUK0tIk8wH6Hb2JfiC6bN0L
	BL5IYGx7HZTE9izAOg/OjnVqZte7P9QdfXeW+xzgc17AeKSyT1LfEsUi9n/Z9XxT6Bk8piCmYwf6K
	jB9L9EqOudEWfIgHzALg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikXeb-00067y-4Y; Thu, 26 Dec 2019 18:14:33 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikXeU-00067V-Rx
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 18:14:28 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so13191151pgc.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 10:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vb8mNhhczC1EI5MpXt+IPtC6svi1fmE0lW9Iq0QRHgU=;
 b=DE9vqaMPwPrnanCaj5jDSZvCvs3xefoRY4RjYEvU6gLiTfF6n9XyJtmBz0srRMOlKa
 TIdVrpPayOJWILp7gdRM+3EqtBoq6lkD/x0Ee4Ye2Ho15zKZ3ZDx2iyuf0u+gqDGVPC3
 gzR3fxnk7e6esFCwHitugPp03CTuRdmmabobpDoybPi121vWV8U7CF4OLaQPfGU7lSRO
 +1P0qtRxcHuzuO8zAKjEpAbFKjuFYDp8OLOa9aVFn1dfCEkMEMFIsyAnN7FZVdllqOVo
 eUZPX1fYhqaCpnYdfzKqpTDFE7XPEjC6RDsmS5X/yJK90FJ4WPngvfJ/IaQnQo6Vg1jC
 tBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Vb8mNhhczC1EI5MpXt+IPtC6svi1fmE0lW9Iq0QRHgU=;
 b=O9kjCPlgjxgLF3o2Sf2mscIW2mM14FvrrqAHfwzdjoSwYxdL1ztzEexfrr5OBdYf2G
 YSzsnssL0aAZsUbaq/8eX+5rIaVM9BP+ovy7Nb4cABvwmLHyQtAuvASge4qUpOPfXzHy
 JCgMcHkg6LOUn4B8VXmqD6LZ8ZRfigCeWlY7UsZqsZyL5XBjtVOGoviU+VOJcDTzEXJz
 DaHucHXLkudofK0ZE8fDgu69aVrvUN3o6omHYa1njg+JnYHvgbcmD1tx3/jzZ7K9ZH1s
 Meku13sM8wzKrkJvRgzh3bYjkNAKYC36JLiVRf9NbVx4SYMPT0WA44JRhRx12YF3vVRg
 jDlw==
X-Gm-Message-State: APjAAAWR5u7ASeuTIStiqHNtGFOkEheA8bZNZPDzvgUDC/9lK1Ig6py7
 9QJNQgYo4zoQuDCf2IYgpkeY3B0gikI=
X-Google-Smtp-Source: APXvYqwZAe5DaTodZFnTzb1e6wfdvA8F57xqkOA5lCAgFi5f6poEVd6yxSiJqM2RbhjEt4QAiLlSng==
X-Received: by 2002:a63:c04a:: with SMTP id z10mr42829519pgi.441.1577384061587; 
 Thu, 26 Dec 2019 10:14:21 -0800 (PST)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id d23sm36691080pfo.176.2019.12.26.10.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Dec 2019 10:14:21 -0800 (PST)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Dec 2019 15:14:09 -0300
Message-Id: <20191226181409.16135-1-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_101426_905269_9FE3B60A 
X-CRM114-Status: UNSURE (   4.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] curl: rename cyassl->wolfssl
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

The old name was dropped and no longer works.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
--
While testing this with wolfssl, I noticed the package was built without
TLS support.  This was run-tested with wolfssl on WRT3200ACM

diff --git a/package/network/utils/curl/Makefile b/package/network/utils/curl/Makefile
index 830d5a7192..8ccfaedc46 100644
--- a/package/network/utils/curl/Makefile
+++ b/package/network/utils/curl/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=curl
 PKG_VERSION:=7.67.0
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://dl.uxnr.de/mirror/curl/ \
@@ -118,7 +118,7 @@ CONFIGURE_ARGS += \
 	\
 	$(call autoconf_bool,CONFIG_IPV6,ipv6) \
 	\
-	$(if $(CONFIG_LIBCURL_WOLFSSL),--with-cyassl="$(STAGING_DIR)/usr",--without-cyassl) \
+	$(if $(CONFIG_LIBCURL_WOLFSSL),--with-wolfssl="$(STAGING_DIR)/usr",--without-wolfssl) \
 	$(if $(CONFIG_LIBCURL_GNUTLS),--with-gnutls="$(STAGING_DIR)/usr",--without-gnutls) \
 	$(if $(CONFIG_LIBCURL_OPENSSL),--with-ssl="$(STAGING_DIR)/usr",--without-ssl) \
 	$(if $(CONFIG_LIBCURL_MBEDTLS),--with-mbedtls="$(STAGING_DIR)/usr",--without-mbedtls) \

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
