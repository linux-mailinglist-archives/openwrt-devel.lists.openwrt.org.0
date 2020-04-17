Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2541AE13D
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Apr 2020 17:35:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3sM/m/OXSXXmDo1imfh3zpN7nUn2YrNCX6HZM9mSlAY=; b=EDXdI+c01fEYum
	9yUCiK4ENwTcmqgM0cCIpc03B43lNSh+l8if8017zipbSkgs1JJ2jNtROIBCAat1/XzI5FlpjKpVz
	uDaK8Ezqi0xKxl9P3ZpCMB5cpVWrf1yHiwYuQmr1Ugt30Zcwkmm42d5DaU6LvRq3ywVKeXhj384Wk
	CMElfk9Jge1gEYn1Z5Kk9C4AH52Wlk84kfWPkX1uMLnxUbIRyMHwwyPjvoGb5BaIYDXFuXLtWp7l4
	uWTdmDwn/hNqGNIiVrdJl69gh9iMQnG26tdmBS3VFu3e5gtcCslp8HiyYAi6qkI7VOxrUUyG/E5Aw
	6SfBy+cm1uTX5idlwojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPT1Q-0004W4-BV; Fri, 17 Apr 2020 15:35:16 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPT19-0004Rq-IB
 for openwrt-devel@lists.openwrt.org; Fri, 17 Apr 2020 15:35:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so3552008wrp.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Apr 2020 08:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lSuZJ/9ETGjoBmApORrWmkaeH0uCXkckGivd1cBGU9U=;
 b=lFqqt/EqQLzI9nmWs63Bp9sWsCMa08aaCX4edRxT4N1eNVLZUeEEe7tKjGQBdoY0Rt
 5FtyTAd9DBYuHAB2erOLPCPiwxpBRMYwbkkVEXk71Ir4ec5wy9X5VwUKT44K8mHZWvU/
 daG5s5so9/II7FPrKIAsnYPUs2C1cdULbH8g5puPJgvSUtETHt3IkhCAY+fQgoyFT+Py
 Ja1Lp8m1z+ROYBceIPGrzGg+QljVN+ucQsd4Cap4m6QmNdsxZqYig+3FkxpIepFeDo/W
 R/gGAdjTC2GtsHK5MPhfZR+kbqcM70regTA3caZK8m7bJ1/A6bbUAIjiwWfp5ikT4Uf5
 r8AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lSuZJ/9ETGjoBmApORrWmkaeH0uCXkckGivd1cBGU9U=;
 b=eObmM6mHFK1dejX/ib3NAG7i745VjFMvqIdWWWYo8HwqhULXql11GHILjdC5tQJv3r
 +9H33IGYyKB9PAd28rqqObnNeRz3KXPw9Ddo1Ofw6/TILl8fhjUj+LCwWXCDdjK/4L23
 XUP0Kv0Xy02JStO9HlpjNsLmQCx8HxXL/7eZNC0NC0Z4fIsT5SdFQTOjN1NOA/tS6XQ9
 hjbaZcJe9mZOc9YFe3zMnAU2mNZsyGQmJM2AbhRQWP0nwapT7BVt96t7CQLW+bzYbFgJ
 6hALRdkoo6lLSEY+PWy6lz6Qf2eAul6k3V3soS472rSDyjxf2m2/+mJLLbBG+Cm9MDk3
 1GLQ==
X-Gm-Message-State: AGi0PuZerhApFDHA3ny23OjWFCxlJGbYPzaLYX4Lxzp0MDH9cUsip4jJ
 0+Ax4oGj/qP9TLKvRo7Td6fg6+m5
X-Google-Smtp-Source: APiQypLTciwPIDrxZkS87viWjOrYJZFycqf4x2xbosevLvha06CbBESEXmiIbKtgg6D6AI5lbM7DPA==
X-Received: by 2002:adf:cd12:: with SMTP id w18mr4436541wrm.311.1587137695827; 
 Fri, 17 Apr 2020 08:34:55 -0700 (PDT)
Received: from localhost.localdomain (209.89-10-150.nextgentel.com.
 [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id 5sm8320812wmg.34.2020.04.17.08.34.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 08:34:55 -0700 (PDT)
From: Magnus Kroken <mkroken@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 17 Apr 2020 17:34:42 +0200
Message-Id: <20200417153442.20860-1-mkroken@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_083459_626602_65E0F4F3 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] openvpn: update to 2.4.9
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
Cc: Magnus Kroken <mkroken@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is primarily a maintenance release with bugfixes and improvements.
This release also fixes a security issue (CVE-2020-11810) which allows
disrupting service of a freshly connected client that has not yet
negotiated session keys. The vulnerability cannot be used to
inject or steal VPN traffic.

Release announcement:
https://openvpn.net/community-downloads/#heading-13812
Full list of changes:
https://community.openvpn.net/openvpn/wiki/ChangesInOpenvpn24#OpenVPN2.4.9

Signed-off-by: Magnus Kroken <mkroken@gmail.com>
---
Compile- and run-tested on arm.

Tests run: openvpn-mbedtls as server.

 package/network/services/openvpn/Makefile                     | 4 ++--
 .../patches/100-mbedtls-disable-runtime-version-check.patch   | 2 +-
 .../110-openssl-dont-use-deprecated-ssleay-symbols.patch      | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/network/services/openvpn/Makefile b/package/network/services/openvpn/Makefile
index baa8c1d07e..5f102d967d 100644
--- a/package/network/services/openvpn/Makefile
+++ b/package/network/services/openvpn/Makefile
@@ -9,14 +9,14 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=openvpn
 
-PKG_VERSION:=2.4.8
+PKG_VERSION:=2.4.9
 PKG_RELEASE:=1
 
 PKG_SOURCE_URL:=\
 	https://build.openvpn.net/downloads/releases/ \
 	https://swupdate.openvpn.net/community/releases/
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
-PKG_HASH:=fb8ca66bb7807fff595fbdf2a0afd085c02a6aa47715c9aa3171002f9f1a3f91
+PKG_HASH:=641f3add8694b2ccc39fd4fd92554e4f089ad16a8db6d2b473ec284839a5ebe2
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
 
diff --git a/package/network/services/openvpn/patches/100-mbedtls-disable-runtime-version-check.patch b/package/network/services/openvpn/patches/100-mbedtls-disable-runtime-version-check.patch
index 7fc0089000..cb16a906fe 100644
--- a/package/network/services/openvpn/patches/100-mbedtls-disable-runtime-version-check.patch
+++ b/package/network/services/openvpn/patches/100-mbedtls-disable-runtime-version-check.patch
@@ -1,6 +1,6 @@
 --- a/src/openvpn/ssl_mbedtls.c
 +++ b/src/openvpn/ssl_mbedtls.c
-@@ -1406,7 +1406,7 @@ const char *
+@@ -1415,7 +1415,7 @@ const char *
  get_ssl_library_version(void)
  {
      static char mbedtls_version[30];
diff --git a/package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch b/package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch
index 7e9931f0f3..c7faf7c0c0 100644
--- a/package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch
+++ b/package/network/services/openvpn/patches/110-openssl-dont-use-deprecated-ssleay-symbols.patch
@@ -47,7 +47,7 @@ Signed-off-by: Gert Doering <gert@greenie.muc.de>
  #endif
 --- a/src/openvpn/ssl_openssl.c
 +++ b/src/openvpn/ssl_openssl.c
-@@ -1977,7 +1977,7 @@ get_highest_preference_tls_cipher(char *
+@@ -2008,7 +2008,7 @@ get_highest_preference_tls_cipher(char *
  const char *
  get_ssl_library_version(void)
  {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
