Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19EFC482C
	for <lists+openwrt-devel@lfdr.de>; Wed,  2 Oct 2019 09:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gTsA+DdTg/HNF6yLI0Sgw+EUcXlEbReUllwPVggFvXM=; b=PhRfsG03ykU5f3
	CoQShalUcv8yFuz9wvtIiE+ZRgakrk2CASdoh6eCGbiHxGPVCDfUK1JzT2kY99opO48vAYoFFL0k2
	s8IiUbcPEJJOia50r6nagy+nF97xNgNAWltcSEXLqaVEuwRIhZDVpMI/OMe4S+NC41MHHW1E7sceC
	U648BUIRwYi/mlC7QA7YRDE4CLoMvyC+CyUyRphlQnCQ8H/gkjYC4hUEGN0naF/GpgRkErWlJcNWs
	lBQdrlswPTA+4Egv5d3ar0i+P06wjnFwu0nOQpfWaY13SukB0cCeAXAtJ+KpA/ohsHdC6q3fdUeUs
	JNrEDAgGQM6ALVukvkAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFYrs-0005Lw-JK; Wed, 02 Oct 2019 07:16:12 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYrl-0005LA-HO
 for openwrt-devel@lists.openwrt.org; Wed, 02 Oct 2019 07:16:08 +0000
X-Originating-IP: 98.151.65.6
Received: from localhost.localdomain (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 26A5740007;
 Wed,  2 Oct 2019 07:15:52 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  1 Oct 2019 21:15:44 -1000
Message-Id: <20191002071544.8017-1-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_001605_876576_EDEFDDC9 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2] toolchain/gcc: switch to version 8 by
 default
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
Cc: Andre Heider <a.heider@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Main motivation for this commit is the introduction of
`-ffile-prefix-map=` which alows reproducible build path.

Compiling tested without errors on the following targets:

* ath79
* brcm2708
* brcm63xx
* ixp4xx
* ramips
* sunxi
* x86

CC: Andre Heider <a.heider@gmail.com>

Thanks to Andre for the iremap fixup

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 config/Config-build.in                             |  2 --
 .../patches/120-strip-cflags-from-binary.patch     |  2 +-
 rules.mk                                           |  8 ++++----
 toolchain/gcc/Config.in                            |  8 ++++++--
 toolchain/gcc/Config.version                       | 14 ++++----------
 5 files changed, 15 insertions(+), 19 deletions(-)

diff --git a/config/Config-build.in b/config/Config-build.in
index 9669fc86c7..872e5c12ab 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -243,7 +243,6 @@ menu "Global build settings"
 		config PKG_CC_STACKPROTECTOR_STRONG
 			bool "Strong"
 			select GCC_LIBSSP if !USE_MUSL
-			depends on !GCC_VERSION_4_8
 			depends on KERNEL_CC_STACKPROTECTOR_STRONG
 	endchoice
 
@@ -258,7 +257,6 @@ menu "Global build settings"
 		config KERNEL_CC_STACKPROTECTOR_REGULAR
 			bool "Regular"
 		config KERNEL_CC_STACKPROTECTOR_STRONG
-			depends on !GCC_VERSION_4_8
 			bool "Strong"
 	endchoice
 
diff --git a/package/libs/openssl/patches/120-strip-cflags-from-binary.patch b/package/libs/openssl/patches/120-strip-cflags-from-binary.patch
index 75fb9d1684..7faec9ab88 100644
--- a/package/libs/openssl/patches/120-strip-cflags-from-binary.patch
+++ b/package/libs/openssl/patches/120-strip-cflags-from-binary.patch
@@ -17,7 +17,7 @@ index 2c619c62e8..893128345a 100644
  
  DEPEND[cversion.o]=buildinf.h
 -GENERATE[buildinf.h]=../util/mkbuildinf.pl "$(CC) $(LIB_CFLAGS) $(CPPFLAGS_Q)" "$(PLATFORM)"
-+GENERATE[buildinf.h]=../util/mkbuildinf.pl "$(filter-out -I% -iremap% -fmacro-prefix-map%,$(CC) $(LIB_CFLAGS) $(CPPFLAGS_Q))" "$(PLATFORM)"
++GENERATE[buildinf.h]=../util/mkbuildinf.pl "$(filter-out -I% -iremap% -fmacro-prefix-map% -ffile-prefix-map%,$(CC) $(LIB_CFLAGS) $(CPPFLAGS_Q))" "$(PLATFORM)"
  DEPEND[buildinf.h]=../configdata.pm
  
  GENERATE[uplink-x86.s]=../ms/uplink-x86.pl $(PERLASM_SCHEME)
diff --git a/rules.mk b/rules.mk
index b140fbca70..7063cf3ad6 100644
--- a/rules.mk
+++ b/rules.mk
@@ -139,11 +139,11 @@ else
   TOOLCHAIN_DIR_NAME:=toolchain-$(GNU_TARGET_NAME)
 endif
 
-ifeq ($(or $(CONFIG_EXTERNAL_TOOLCHAIN),$(CONFIG_GCC_VERSION_4_8),$(CONFIG_TARGET_uml)),)
-  ifeq ($(CONFIG_GCC_USE_EMBEDDED_PATH_REMAP),y)
-    iremap = -fmacro-prefix-map=$(1)=$(2)
-  else
+ifeq ($(or $(CONFIG_EXTERNAL_TOOLCHAIN),$(CONFIG_TARGET_uml)),)
+  ifeq ($(CONFIG_GCC_USE_IREMAP),y)
     iremap = -iremap$(1):$(2)
+  else
+    iremap = -ffile-prefix-map=$(1)=$(2)
   endif
 endif
 
diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
index 0977f9b4e7..3882815d7f 100644
--- a/toolchain/gcc/Config.in
+++ b/toolchain/gcc/Config.in
@@ -2,8 +2,7 @@
 
 choice
 	prompt "GCC compiler Version" if TOOLCHAINOPTS
-	default GCC_USE_VERSION_8 if arc
-	default GCC_USE_VERSION_7
+	default GCC_USE_VERSION_8
 	help
 	  Select the version of gcc you wish to use.
 
@@ -22,6 +21,11 @@ choice
 		bool "gcc 9.x"
 endchoice
 
+config GCC_USE_IREMAP
+	default y if ( GCC_USE_VERSION_5 || GCC_USE_VERSION_7 )
+	default n
+	bool
+
 config GCC_USE_GRAPHITE
 	bool
 	prompt "Compile in support for the new Graphite framework in GCC 4.4+" if TOOLCHAINOPTS
diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
index d9732b3e0d..0658f3d52b 100644
--- a/toolchain/gcc/Config.version
+++ b/toolchain/gcc/Config.version
@@ -2,23 +2,17 @@ config GCC_VERSION_5
 	default y if GCC_USE_VERSION_5
 	bool
 
-config GCC_VERSION_8
-	default y if GCC_USE_VERSION_8
-	default y if arc && !GCC_USE_VERSION_9
+config GCC_VERSION_7
+	default y if GCC_USE_VERSION_7
 	bool
 
 config GCC_VERSION_9
 	default y if GCC_USE_VERSION_9
 	bool
 
-config GCC_USE_EMBEDDED_PATH_REMAP
-	default y if ( GCC_VERSION_8 || GCC_VERSION_9 )
-	default n
-	bool
-
 config GCC_VERSION
 	string
 	default "5.5.0"		if GCC_VERSION_5
-	default "8.3.0"		if GCC_VERSION_8
+	default "7.4.0"		if GCC_VERSION_7
 	default "9.2.0"		if GCC_VERSION_9
-	default "7.4.0"
+	default "8.3.0"
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
