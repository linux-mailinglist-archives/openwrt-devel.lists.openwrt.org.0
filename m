Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FE21C258D
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 May 2020 15:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4s7rra0zVQ7gyBm92NPXnUAtCiGW65ZZWQN4rX0Vddw=; b=B6PMKVSXMCx3nC
	EY8QwkfsQS0xtb/kQBoMAzYq/h6Io89Mh/4SC6gqk67mAtbQLB/5L4o/WH1a0/KaibOdtg73mXk5G
	kVn+FP0HacULC/oyqA3Ym17h7X4Wr7FfhKLWw6oFgQ1+Yt9PFSiFCj3PzWsuZO/lx5rKHzRWkvGEc
	B3lNDXYArAL+6cgT/GdP/XTQXmZYK4hOcRtefAhnh4g2lUJfXh5uzzuRmJnM9dndVaTsMLxuJSkzx
	j+n1O+gdL6Wf3fiVbY1j5/k/2M6oz4iSpHhsD7teFaWFRqMgc3GJRpmDSrcymdwlI3kv8Qk7VG9Y5
	Lky1NGm8MrI+4dlXK5/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUrol-0007wz-I3; Sat, 02 May 2020 13:04:31 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUrof-0007wS-E0
 for openwrt-devel@lists.openwrt.org; Sat, 02 May 2020 13:04:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so3041499wmj.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 May 2020 06:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fG8e9uTFWmkUQmGQIuOrvIWf7zVpMyfqMgBmxD8hac8=;
 b=cgMoFrPBupV43iBWHyVp63daQFUpgF0H/ubdNfS/aA4AjEZIlBunLYayjEZH6SPJUG
 o+kpvfXkf3hhIt2tDiRhTX2A4BwVwXfU3EdQvtiHh5WgdsLs1Qu8bZxDjlQKhRO2rIZj
 kcCC8qioR62T7LJuQKNhlRH1g7/DdOvOiz4GtSoJFj93m+LXBHmRx8oa5uV7puy14zRz
 z68yd+8T5UNUe/iR23y34rvwEh8hSXnqLmcG+3Dx7c87KHyj5cgy/ER/8NyxYvhKOs3k
 4Mq24SrgdUuSmqJuL5rk+4Py/3SEo2Ff7BkBims/hVo5etQzKBOTzYmrsy3DFy6MPRK9
 ebtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fG8e9uTFWmkUQmGQIuOrvIWf7zVpMyfqMgBmxD8hac8=;
 b=HPu99jpb75Z9c0e4GB3eIsoycdsh6UCCSc2Qr7e9wRHPCdamjCQdqB+mR6kQEgHSQV
 fvQRncy6+LEFNPJWBckVLGtJsMrS24xYuLjZZfGfEv/oIHACwIg6zTb12WxWwdsGxfLu
 iKIN/PbItYUInLUVgwLBVc85aPubXJNrJbxIiAlZSQ0UmEEIsVNXhxLmgbZeWXs2+7Jg
 zryS8yh0HcDXCC1xWTqjDRoaK4Mjn/JRm+7aYBJjDZWf7mXf0MXm9t+RCCOeZlMJS79l
 TUY2YIg7uz8rdBIVE8f6HsOFN/O1LOcqAbh39vha5+l2XfUFSmuVA0O+codJ0wSu+KVe
 kXMw==
X-Gm-Message-State: AGi0PubFW4Sk+mJBqqSv8HSRqPuAWv4dOZ8yY21ZqamRkkzPqsACA7D4
 j2L9G7bBGofjxKgzyr4tIrAuDP1i
X-Google-Smtp-Source: APiQypL8WomFrNA0J/k2Uzqw7161jfEXsSZ7zxYai2dZVXVYi2RX0zKji/dOO6RSlit+sw8K5LlL+A==
X-Received: by 2002:a1c:790e:: with SMTP id l14mr4475431wme.174.1588424663318; 
 Sat, 02 May 2020 06:04:23 -0700 (PDT)
Received: from localhost.localdomain (ip-78-102-138-110.net.upcbroadband.cz.
 [78.102.138.110])
 by smtp.gmail.com with ESMTPSA id x13sm4541544wmc.5.2020.05.02.06.04.22
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 06:04:22 -0700 (PDT)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Date: Sat,  2 May 2020 15:03:47 +0200
Message-Id: <20200502130347.28160-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_060425_495209_B7C54239 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe.schlehofer[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] curl: update to version 7.70.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

- Release notes:
https://curl.haxx.se/changes.html#7_70_0

- Refreshed patch

Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
---
 package/network/utils/curl/Makefile                |  4 ++--
 .../utils/curl/patches/200-no_docs_tests.patch     | 14 +++++++-------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/package/network/utils/curl/Makefile b/package/network/utils/curl/Makefile
index c483ec1186..f2a7406164 100644
--- a/package/network/utils/curl/Makefile
+++ b/package/network/utils/curl/Makefile
@@ -8,7 +8,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=curl
-PKG_VERSION:=7.69.1
+PKG_VERSION:=7.70.0
 PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
@@ -16,7 +16,7 @@ PKG_SOURCE_URL:=https://dl.uxnr.de/mirror/curl/ \
 	https://curl.mirror.anstey.ca/ \
 	https://curl.askapache.com/download/ \
 	https://curl.haxx.se/download/
-PKG_HASH:=03c7d5e6697f7b7e40ada1b2256e565a555657398e6c1fcfa4cb251ccd819d4f
+PKG_HASH:=032f43f2674008c761af19bf536374128c16241fb234699a55f9fb603fcfbae7
 
 PKG_LICENSE:=MIT
 PKG_LICENSE_FILES:=COPYING
diff --git a/package/network/utils/curl/patches/200-no_docs_tests.patch b/package/network/utils/curl/patches/200-no_docs_tests.patch
index e52694e2c9..53f8c6c3f6 100644
--- a/package/network/utils/curl/patches/200-no_docs_tests.patch
+++ b/package/network/utils/curl/patches/200-no_docs_tests.patch
@@ -1,6 +1,6 @@
 --- a/Makefile.am
 +++ b/Makefile.am
-@@ -179,7 +179,7 @@ CLEANFILES = $(VC6_LIBDSP) $(VC6_SRCDSP)
+@@ -189,7 +189,7 @@ CLEANFILES = $(VC6_LIBDSP) $(VC6_SRCDSP)
  bin_SCRIPTS = curl-config
  
  SUBDIRS = lib src
@@ -9,14 +9,14 @@
  
  pkgconfigdir = $(libdir)/pkgconfig
  pkgconfig_DATA = libcurl.pc
-@@ -290,8 +290,8 @@ cygwinbin:
+@@ -300,8 +300,8 @@ cygwinbin:
  # We extend the standard install with a custom hook:
  install-data-hook:
- 	cd include && $(MAKE) install
--	cd docs && $(MAKE) install
--	cd docs/libcurl && $(MAKE) install
-+	#cd docs && $(MAKE) install
-+	#cd docs/libcurl && $(MAKE) install
+	(cd include && $(MAKE) install)
+-	(cd docs && $(MAKE) install)
+-	(cd docs/libcurl && $(MAKE) install)
++	#(cd docs && $(MAKE) install)
++	#(cd docs/libcurl && $(MAKE) install)
  
  # We extend the standard uninstall with a custom hook:
  uninstall-hook:
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
