Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734051496EA
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Jan 2020 18:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mvNhFSh+lIq/FGTG0TtIlODNQ1m3gjEYzS6c9oy/fk0=; b=huHvIMhh8Fg8H2
	zubeDfz9wDmnsDyjrvHF8YEv6zNTR9PdzcNhLtGZOv1Y/zW8eclSY3lRSwp1sR5pvp34+MIEMBb8O
	OIdqnK7orSIsaNoywUP5wYK0aBQf3bvuenfeyQuol9vOauhaX2xlo1iL5Y2Za7pseJ/R5TXejrkxD
	2qs2BJUsNRF/MgBsyaXqUQw0tLZ4/VGFaoHJoiLhkr9DG+BWeCSBzGlYmqt8pHhXd5npGe8kEtk8s
	YlHF+PO4CZ0BiyMrsbLzJLBL9E20PidzZ9MnppFkYGetrNVgfb3Pxf+X5Lx4dGPv2EVyoD2seMcqe
	tbGCg09+ym6sFREF6Ymg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivPJp-0007Q5-VN; Sat, 25 Jan 2020 17:34:02 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivPJg-0007Pl-M6
 for openwrt-devel@lists.openwrt.org; Sat, 25 Jan 2020 17:33:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id n18so6126394ljo.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 25 Jan 2020 09:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r5MUrzRngSft6MFUCWONPBs70koGpPdYUHxZ8EGtJsU=;
 b=mEysXWv07uYzzA3R0UVrhzBIQcb7MzWPh6GqYvv6cqShrDpIuEp1UEPNhYDPoO2vh2
 W92a3CoiaGYVHMbt9mdc0kLrCHKOzhhmX4wacofmRoQDJ88OQ6LediWtLbAgV1EpnZZk
 niVqLmTVPFAC5H453tixI0kqN6Qiye8yBOyMU7L5kXVzZUlCjA4ypV982kPjJx7bpg/Y
 zGo8y9HbwK041gaJYJvv4MV9NtIxeFcQ2gQvBF5HWRKf7PvkJf2+9y93uVA416OkjdN/
 Yzdn8YxQCse1vasYs+zX6Bp+TCZhOoF0fyUNMFJ/LMRmNmurPy4F8afLsCkUW/T430GW
 e1xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r5MUrzRngSft6MFUCWONPBs70koGpPdYUHxZ8EGtJsU=;
 b=AhbKWyp0klu3IEza8P5tXwlRIlvV29IHCSQBNr7z1vRqXRdpiRc+wWXO2iCcqWqZ8l
 sX0Ep5rWMc8h8HrU6hPfZAPKxOS88uyWSWDmeMY/QnDIWd+xadlth18v0Ircf6u6Rowj
 QsXfN5BvLqma8Rm95yrkNgoQqZcxprZOUkBAPbqzpPFhcHVtnag4PKRWmaOp1T7yDCwG
 BJrNUfe/iNTqSbECVm2Z92NAKgDqbrpK/3LVG81LBs/QrMTpbJ6qiZJEuJUgIFfpyjSE
 JtChiVXxluXaywLYUgHiAWFgQhhrL5gFk8gxH0tgZhPFbbXW8mrfoVOrOby8n71P6vvn
 1PvQ==
X-Gm-Message-State: APjAAAWBF7r1KTlPh3GfV50Y/aQ9bGVSEtSb3XnFk9twNyuLSesPXk1v
 7+jupdeA82aXGJdlVNeydjNLEes+
X-Google-Smtp-Source: APXvYqxPBgrTuUfHPhPIC4aJLM+DXt6xSZEQR6kdwrvp2+yaNRB4S/k8pA93OO6zMUs/p+JbbkSYDQ==
X-Received: by 2002:a2e:b0c9:: with SMTP id g9mr5676812ljl.134.1579973629865; 
 Sat, 25 Jan 2020 09:33:49 -0800 (PST)
Received: from localhost.localdomain (209.89-10-150.nextgentel.com.
 [89.10.150.209])
 by smtp.gmail.com with ESMTPSA id q14sm4997678lfc.60.2020.01.25.09.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Jan 2020 09:33:49 -0800 (PST)
From: Magnus Kroken <mkroken@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 25 Jan 2020 18:33:41 +0100
Message-Id: <20200125173341.13157-1-mkroken@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_093352_752193_2537F78C 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mkroken[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] mbedtls: update to 2.16.4
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

Fixes side channel vulnerabilities in mbed TLS' implementation of ECDSA.

Release announcement:
https://tls.mbed.org/tech-updates/releases/mbedtls-2.16.4-and-2.7.13-released

Security advisory:
https://tls.mbed.org/tech-updates/security-advisories/mbedtls-security-advisory-2019-12

Signed-off-by: Magnus Kroken <mkroken@gmail.com>
---
Runtime-tested on mips/ath79. Tested with uhttpd and uclient-fetch using
libustream-mbedtls.

 package/libs/mbedtls/Makefile                 |  4 +-
 package/libs/mbedtls/patches/200-config.patch | 44 +++++++++----------
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/package/libs/mbedtls/Makefile b/package/libs/mbedtls/Makefile
index 307d03432e..618a74703a 100644
--- a/package/libs/mbedtls/Makefile
+++ b/package/libs/mbedtls/Makefile
@@ -8,13 +8,13 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=mbedtls
-PKG_VERSION:=2.16.3
+PKG_VERSION:=2.16.4
 PKG_RELEASE:=1
 PKG_USE_MIPS16:=0
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-gpl.tgz
 PKG_SOURCE_URL:=https://tls.mbed.org/download/
-PKG_HASH:=fd01fe4b289116df7781d05e1ef712b6c98823c5334f4a27404f13a8d066ef6a
+PKG_HASH:=5fdb9c43ab43fd9bcc3631508170b089ede7b86dd655253a93cb0ffeb42309f3
 
 PKG_BUILD_PARALLEL:=1
 PKG_LICENSE:=GPL-2.0+
diff --git a/package/libs/mbedtls/patches/200-config.patch b/package/libs/mbedtls/patches/200-config.patch
index a09cf1f49b..298fa4aa79 100644
--- a/package/libs/mbedtls/patches/200-config.patch
+++ b/package/libs/mbedtls/patches/200-config.patch
@@ -17,7 +17,7 @@
  
  /**
   * \def MBEDTLS_CIPHER_NULL_CIPHER
-@@ -750,19 +750,19 @@
+@@ -757,19 +757,19 @@
   *
   * Comment macros to disable the curve and functions for it
   */
@@ -46,7 +46,7 @@
  
  /**
   * \def MBEDTLS_ECP_NIST_OPTIM
-@@ -864,7 +864,7 @@
+@@ -871,7 +871,7 @@
   *             See dhm.h for more details.
   *
   */
@@ -55,7 +55,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED
-@@ -884,7 +884,7 @@
+@@ -891,7 +891,7 @@
   *      MBEDTLS_TLS_ECDHE_PSK_WITH_3DES_EDE_CBC_SHA
   *      MBEDTLS_TLS_ECDHE_PSK_WITH_RC4_128_SHA
   */
@@ -64,7 +64,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_RSA_PSK_ENABLED
-@@ -909,7 +909,7 @@
+@@ -916,7 +916,7 @@
   *      MBEDTLS_TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA
   *      MBEDTLS_TLS_RSA_PSK_WITH_RC4_128_SHA
   */
@@ -73,7 +73,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_RSA_ENABLED
-@@ -1043,7 +1043,7 @@
+@@ -1050,7 +1050,7 @@
   *      MBEDTLS_TLS_ECDH_ECDSA_WITH_CAMELLIA_128_GCM_SHA256
   *      MBEDTLS_TLS_ECDH_ECDSA_WITH_CAMELLIA_256_GCM_SHA384
   */
@@ -82,7 +82,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED
-@@ -1067,7 +1067,7 @@
+@@ -1074,7 +1074,7 @@
   *      MBEDTLS_TLS_ECDH_RSA_WITH_CAMELLIA_128_GCM_SHA256
   *      MBEDTLS_TLS_ECDH_RSA_WITH_CAMELLIA_256_GCM_SHA384
   */
@@ -91,7 +91,7 @@
  
  /**
   * \def MBEDTLS_KEY_EXCHANGE_ECJPAKE_ENABLED
-@@ -1171,7 +1171,7 @@
+@@ -1178,7 +1178,7 @@
   * This option is only useful if both MBEDTLS_SHA256_C and
   * MBEDTLS_SHA512_C are defined. Otherwise the available hash module is used.
   */
@@ -100,7 +100,7 @@
  
  /**
   * \def MBEDTLS_ENTROPY_NV_SEED
-@@ -1266,14 +1266,14 @@
+@@ -1273,14 +1273,14 @@
   * Uncomment this macro to disable the use of CRT in RSA.
   *
   */
@@ -117,7 +117,7 @@
  
  /**
   * \def MBEDTLS_SHA256_SMALLER
-@@ -1427,7 +1427,7 @@
+@@ -1434,7 +1434,7 @@
   *          configuration of this extension).
   *
   */
@@ -126,7 +126,7 @@
  
  /**
   * \def MBEDTLS_SSL_SRV_SUPPORT_SSLV2_CLIENT_HELLO
-@@ -1602,7 +1602,7 @@
+@@ -1609,7 +1609,7 @@
   *
   * Comment this macro to disable support for SSL session tickets
   */
@@ -135,7 +135,7 @@
  
  /**
   * \def MBEDTLS_SSL_EXPORT_KEYS
-@@ -1632,7 +1632,7 @@
+@@ -1639,7 +1639,7 @@
   *
   * Comment this macro to disable support for truncated HMAC in SSL
   */
@@ -144,7 +144,7 @@
  
  /**
   * \def MBEDTLS_SSL_TRUNCATED_HMAC_COMPAT
-@@ -1691,7 +1691,7 @@
+@@ -1698,7 +1698,7 @@
   *
   * Comment this to disable run-time checking and save ROM space
   */
@@ -153,7 +153,7 @@
  
  /**
   * \def MBEDTLS_X509_ALLOW_EXTENSIONS_NON_V3
-@@ -2021,7 +2021,7 @@
+@@ -2028,7 +2028,7 @@
   *      MBEDTLS_TLS_PSK_WITH_CAMELLIA_128_GCM_SHA256
   *      MBEDTLS_TLS_PSK_WITH_CAMELLIA_128_CBC_SHA256
   */
@@ -162,7 +162,7 @@
  
  /**
   * \def MBEDTLS_ARIA_C
-@@ -2087,7 +2087,7 @@
+@@ -2094,7 +2094,7 @@
   * This module enables the AES-CCM ciphersuites, if other requisites are
   * enabled as well.
   */
@@ -171,7 +171,7 @@
  
  /**
   * \def MBEDTLS_CERTS_C
-@@ -2099,7 +2099,7 @@
+@@ -2106,7 +2106,7 @@
   *
   * This module is used for testing (ssl_client/server).
   */
@@ -180,7 +180,7 @@
  
  /**
   * \def MBEDTLS_CHACHA20_C
-@@ -2203,7 +2203,7 @@
+@@ -2214,7 +2214,7 @@
   * \warning   DES is considered a weak cipher and its use constitutes a
   *            security risk. We recommend considering stronger ciphers instead.
   */
@@ -189,7 +189,7 @@
  
  /**
   * \def MBEDTLS_DHM_C
-@@ -2366,7 +2366,7 @@
+@@ -2377,7 +2377,7 @@
   * This module adds support for the Hashed Message Authentication Code
   * (HMAC)-based key derivation function (HKDF).
   */
@@ -198,7 +198,7 @@
  
  /**
   * \def MBEDTLS_HMAC_DRBG_C
-@@ -2676,7 +2676,7 @@
+@@ -2687,7 +2687,7 @@
   *
   * This module enables abstraction of common (libc) functions.
   */
@@ -207,7 +207,7 @@
  
  /**
   * \def MBEDTLS_POLY1305_C
-@@ -2697,7 +2697,7 @@
+@@ -2708,7 +2708,7 @@
   * Caller:  library/md.c
   *
   */
@@ -216,7 +216,7 @@
  
  /**
   * \def MBEDTLS_RSA_C
-@@ -2804,7 +2804,7 @@
+@@ -2815,7 +2815,7 @@
   *
   * Requires: MBEDTLS_CIPHER_C
   */
@@ -225,7 +225,7 @@
  
  /**
   * \def MBEDTLS_SSL_CLI_C
-@@ -2904,7 +2904,7 @@
+@@ -2915,7 +2915,7 @@
   *
   * This module provides run-time version information.
   */
@@ -234,7 +234,7 @@
  
  /**
   * \def MBEDTLS_X509_USE_C
-@@ -3014,7 +3014,7 @@
+@@ -3025,7 +3025,7 @@
   * Module:  library/xtea.c
   * Caller:
   */
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
