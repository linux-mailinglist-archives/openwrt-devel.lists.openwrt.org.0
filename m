Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCFEE64A5
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 18:46:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1rsC9nFgGbWFeNujrm0FDwjpltliSvhCnxQe08GnVo=; b=e2t3NwPrmIRHrm
	a7FO5zRipJkbTH54VpHE4ezTD9QkJ9/LIV8CX+84x/yjsg6+xSQopv/hOOFUTiLfkvH9dDSVyyo/E
	hxPDoh9dPjUwMeZdm0wOpGL6bGSg2zmdZSQ4345v+5ib3BCql8vYKinNJq7j2vtgSxGfLotUMD1dh
	Qm7XTo1ihSIwJl/xwKYmHIMn0huxXRwu6Rs3GO4IXsFoB3Z5/nMvZooTON1jfFU1r7bCWDPkNntDI
	E3mGqlCLVczPQh+gXPjBvTzn6+W3Ey+n5k4Ln6K0hP4it6WQLlhyaH9yckSH2q8V/RHqeUeDqge3g
	K5yo6E2Zdx8RXuXKjwKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmcA-0004nl-Jg; Sun, 27 Oct 2019 17:46:06 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbM-00041K-Fa
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 17:45:21 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2a.mailbox.org (Postfix) with ESMTPS id F33F2A3A1A;
 Sun, 27 Oct 2019 18:45:08 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id SEWQtBI2Lwir; Sun, 27 Oct 2019 18:45:03 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 27 Oct 2019 18:44:33 +0100
Message-Id: <20191027174438.25795-2-hauke@hauke-m.de>
In-Reply-To: <20191027174438.25795-1-hauke@hauke-m.de>
References: <20191027174438.25795-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104516_881054_5444CE95 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/6] buildsystem: Make PIE ASLR option
 tristate
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, daniel.engberg.lists@pyret.net,
 lynxis@fe80.eu, dave@taht.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This tristate choose allows to select to build only some applications
with PIE enabled. On MIPS binaries are getting about 30% bigger when PIE
is activated for the, which is a huge increase.

Network exposed applications like dnsmasq should then be build with PIE
enabled, but some applications which are normally not parsing data from
the network do not have it activated. The regular option should give a
good trade off between extra flash and RAM memory usage and security.

This changes the default from building no applications with PIE to build
some specifically marked applications with PIE enabled. This option is
only activated for targets with bigger flash and RAM to not consume
extra memory on the very small targets. On SDK builds the Regular option
should always be selected, because some tiny targets share the
applications with big targets and only the images for the tiny targets
should contain the none PIE applications, but the images for the normal
targets should use PIE. The shared packages should always use PIE when
it should be normally activated.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

I hope this !SDK option works. I haven't fully tested this.
I want to make sure this is activated on the targets which are not 
small, but not activate it in the tiny images. For extra installed 
packages it should be activated.


 config/Config-build.in | 22 ++++++++++++++++++----
 include/hardening.mk   |  9 ++++++++-
 2 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/config/Config-build.in b/config/Config-build.in
index 872e5c12ab..aa05e34f56 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -212,11 +212,10 @@ menu "Global build settings"
 		  this per package by adding PKG_CHECK_FORMAT_SECURITY:=0 in the package
 		  Makefile.
 
-	config PKG_ASLR_PIE
-		bool
+	choice
 		prompt "User space ASLR PIE compilation"
-		select BUSYBOX_DEFAULT_PIE
-		default n
+		default PKG_ASLR_PIE_NONE if ((SMALL_FLASH || LOW_MEMORY_FOOTPRINT) && !SDK)
+		default PKG_ASLR_PIE_REGULAR
 		help
 		  Add -fPIC to CFLAGS and -specs=hardened-build-ld to LDFLAGS.
 		  This enables package build as Position Independent Executables (PIE)
@@ -227,6 +226,21 @@ menu "Global build settings"
 		  to predict when an attacker is attempting a memory-corruption exploit.
 		  You can disable this per package by adding PKG_ASLR_PIE:=0 in the package
 		  Makefile.
+		  Be ware that ASLR increases the binary size.
+		config PKG_ASLR_PIE_NONE
+			bool "None"
+			help
+			  PIE is deactivated for all applications
+		config PKG_ASLR_PIE_REGULAR
+			bool "Regular"
+			help
+			  PIE is activated for some binaries, mostly network exposed applications
+		config PKG_ASLR_PIE_ALL
+			bool "All"
+			select BUSYBOX_DEFAULT_PIE
+			help
+			  PIE is activated for all applications
+	endchoice
 
 	choice
 		prompt "User space Stack-Smashing Protection"
diff --git a/include/hardening.mk b/include/hardening.mk
index 60f39428e8..4e49e6b1b9 100644
--- a/include/hardening.mk
+++ b/include/hardening.mk
@@ -7,6 +7,7 @@
 
 PKG_CHECK_FORMAT_SECURITY ?= 1
 PKG_ASLR_PIE ?= 1
+PKG_ASLR_PIE_REGULAR ?= 0
 PKG_SSP ?= 1
 PKG_FORTIFY_SOURCE ?= 1
 PKG_RELRO ?= 1
@@ -16,12 +17,18 @@ ifdef CONFIG_PKG_CHECK_FORMAT_SECURITY
     TARGET_CFLAGS += -Wformat -Werror=format-security
   endif
 endif
-ifdef CONFIG_PKG_ASLR_PIE
+ifdef CONFIG_PKG_ASLR_PIE_ALL
   ifeq ($(strip $(PKG_ASLR_PIE)),1)
     TARGET_CFLAGS += $(FPIC)
     TARGET_LDFLAGS += $(FPIC) -specs=$(INCLUDE_DIR)/hardened-ld-pie.specs
   endif
 endif
+ifdef CONFIG_PKG_ASLR_PIE_REGULAR
+  ifeq ($(strip $(PKG_ASLR_PIE_REGULAR)),1)
+    TARGET_CFLAGS += $(FPIC)
+    TARGET_LDFLAGS += $(FPIC) -specs=$(INCLUDE_DIR)/hardened-ld-pie.specs
+  endif
+endif
 ifdef CONFIG_PKG_CC_STACKPROTECTOR_REGULAR
   ifeq ($(strip $(PKG_SSP)),1)
     TARGET_CFLAGS += -fstack-protector
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
