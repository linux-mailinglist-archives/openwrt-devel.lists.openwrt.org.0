Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29701D1EEE
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 21:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2gakAfBk7IieZLB1rYHcICdlTBEptPTE4348DoAOxg=; b=UBSlyGuMGQ72nh
	KaZerdUKNgkD3mCbFXqhhfEQRkNtpHJt4O5h/N0a3ATBHRfFOzX+vWC3BVS8sA42+Bt/a5TwaEACj
	fW3a8/FieMjX9OrS4STKN8b6/jFjkfxBhbRMbGrKFMdaSO4sKpHQqjtRYeegcMq3l3ebmCtrPwl0/
	6LlcItzqzxD0WMByllVZ9NQrTxA+BJilbuXFXSUICyz07l61fCMZfniWPOU5lf6lkKQQeUSkbgaNj
	rSDiiC2Ianj5pGaey2jyzjeDwb6FuejK/OrMdlx87+RpzT7A0CkauLNUwFMSDbuS1LHY+7OKNal11
	kfwLrpZK44rIWIwnAFng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYww6-00089c-UM; Wed, 13 May 2020 19:20:58 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwvf-0007hn-2c
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 19:20:33 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 8276B251F2;
 Wed, 13 May 2020 21:20:24 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 13 May 2020 21:19:44 +0200
Message-Id: <96937b728d9ddd55df3cfdb6e3816cff3f6fd392.1589396871.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1589396871.git.mschiffer@universe-factory.net>
References: <cover.1589396871.git.mschiffer@universe-factory.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_122031_427877_A4BFD230 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] tools: add zstd
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
Cc: mschiffer@universe-factory.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---
 tools/zstd/Makefile                           | 20 ++++++
 ...re-portable-header-prefix-usage-1987.patch | 61 +++++++++++++++++++
 2 files changed, 81 insertions(+)
 create mode 100644 tools/zstd/Makefile
 create mode 100644 tools/zstd/patches/0001-build-issue-More-portable-header-prefix-usage-1987.patch

diff --git a/tools/zstd/Makefile b/tools/zstd/Makefile
new file mode 100644
index 000000000000..dc0bf8ffaff8
--- /dev/null
+++ b/tools/zstd/Makefile
@@ -0,0 +1,20 @@
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=zstd
+PKG_VERSION:=1.4.4
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=@GITHUB/facebook/zstd/releases/download/v$(PKG_VERSION)
+PKG_HASH:=a364f5162c7d1a455cc915e8e3cf5f4bd8b75d09bc0f53965b0c9ca1383c52c8
+
+PKG_LICENSE:=BSD-3-Clause
+PKG_LICENSE_FILES:=LICENSE
+PKG_CPE_ID:=cpe:/a:facebook:zstandard
+
+HOST_BUILD_PARALLEL:=1
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_MAKE_FLAGS = PREFIX=$(HOST_BUILD_PREFIX)
+
+$(eval $(call HostBuild))
diff --git a/tools/zstd/patches/0001-build-issue-More-portable-header-prefix-usage-1987.patch b/tools/zstd/patches/0001-build-issue-More-portable-header-prefix-usage-1987.patch
new file mode 100644
index 000000000000..6d743aa38552
--- /dev/null
+++ b/tools/zstd/patches/0001-build-issue-More-portable-header-prefix-usage-1987.patch
@@ -0,0 +1,61 @@
+From 06a57cf57e3c4e887cadcf688e3081154f3f6db4 Mon Sep 17 00:00:00 2001
+Message-Id: <06a57cf57e3c4e887cadcf688e3081154f3f6db4.1589392463.git.mschiffer@universe-factory.net>
+From: Bimba Shrestha <bimbashrestha@fb.com>
+Date: Thu, 6 Feb 2020 14:10:51 -0800
+Subject: [PATCH] [build-issue] More portable header prefix usage (#) (#1987)
+
+* make 4.3 build issue fix
+
+* Changing header name and adding comment
+---
+ programs/Makefile | 11 +++++++----
+ 1 file changed, 7 insertions(+), 4 deletions(-)
+
+diff --git a/programs/Makefile b/programs/Makefile
+index b75314a83f43..a9ee3cb5311b 100644
+--- a/programs/Makefile
++++ b/programs/Makefile
+@@ -94,9 +94,12 @@ endif
+ 
+ VOID = /dev/null
+ 
++# Make 4.3 doesn't support '\#' anymore (https://lwn.net/Articles/810071/)
++NUM_SYMBOL := \#
++
+ # thread detection
+ NO_THREAD_MSG := ==> no threads, building without multithreading support
+-HAVE_PTHREAD := $(shell printf '\#include <pthread.h>\nint main(void) { return 0; }' > have_pthread.c && $(CC) $(FLAGS) -o have_pthread$(EXT) have_pthread.c -pthread 2> $(VOID) && rm have_pthread$(EXT) && echo 1 || echo 0; rm have_pthread.c)
++HAVE_PTHREAD := $(shell printf '$(NUM_SYMBOL)include <pthread.h>\nint main(void) { return 0; }' > have_pthread.c && $(CC) $(FLAGS) -o have_pthread$(EXT) have_pthread.c -pthread 2> $(VOID) && rm have_pthread$(EXT) && echo 1 || echo 0; rm have_pthread.c)
+ HAVE_THREAD := $(shell [ "$(HAVE_PTHREAD)" -eq "1" -o -n "$(filter Windows%,$(OS))" ] && echo 1 || echo 0)
+ ifeq ($(HAVE_THREAD), 1)
+ THREAD_MSG := ==> building with threading support
+@@ -108,7 +111,7 @@ endif
+ 
+ # zlib detection
+ NO_ZLIB_MSG := ==> no zlib, building zstd without .gz support
+-HAVE_ZLIB := $(shell printf '\#include <zlib.h>\nint main(void) { return 0; }' > have_zlib.c && $(CC) $(FLAGS) -o have_zlib$(EXT) have_zlib.c -lz 2> $(VOID) && rm have_zlib$(EXT) && echo 1 || echo 0; rm have_zlib.c)
++HAVE_ZLIB := $(shell printf '$(NUM_SYMBOL)include <zlib.h>\nint main(void) { return 0; }' > have_zlib.c && $(CC) $(FLAGS) -o have_zlib$(EXT) have_zlib.c -lz 2> $(VOID) && rm have_zlib$(EXT) && echo 1 || echo 0; rm have_zlib.c)
+ ifeq ($(HAVE_ZLIB), 1)
+ ZLIB_MSG := ==> building zstd with .gz compression support
+ ZLIBCPP = -DZSTD_GZCOMPRESS -DZSTD_GZDECOMPRESS
+@@ -119,7 +122,7 @@ endif
+ 
+ # lzma detection
+ NO_LZMA_MSG := ==> no liblzma, building zstd without .xz/.lzma support
+-HAVE_LZMA := $(shell printf '\#include <lzma.h>\nint main(void) { return 0; }' > have_lzma.c && $(CC) $(FLAGS) -o have_lzma$(EXT) have_lzma.c -llzma 2> $(VOID) && rm have_lzma$(EXT) && echo 1 || echo 0; rm have_lzma.c)
++HAVE_LZMA := $(shell printf '$(NUM_SYMBOL)include <lzma.h>\nint main(void) { return 0; }' > have_lzma.c && $(CC) $(FLAGS) -o have_lzma$(EXT) have_lzma.c -llzma 2> $(VOID) && rm have_lzma$(EXT) && echo 1 || echo 0; rm have_lzma.c)
+ ifeq ($(HAVE_LZMA), 1)
+ LZMA_MSG := ==> building zstd with .xz/.lzma compression support
+ LZMACPP = -DZSTD_LZMACOMPRESS -DZSTD_LZMADECOMPRESS
+@@ -130,7 +133,7 @@ endif
+ 
+ # lz4 detection
+ NO_LZ4_MSG := ==> no liblz4, building zstd without .lz4 support
+-HAVE_LZ4 := $(shell printf '\#include <lz4frame.h>\n\#include <lz4.h>\nint main(void) { return 0; }' > have_lz4.c && $(CC) $(FLAGS) -o have_lz4$(EXT) have_lz4.c -llz4 2> $(VOID) && rm have_lz4$(EXT) && echo 1 || echo 0; rm have_lz4.c)
++HAVE_LZ4 := $(shell printf '$(NUM_SYMBOL)include <lz4frame.h>\n\#include <lz4.h>\nint main(void) { return 0; }' > have_lz4.c && $(CC) $(FLAGS) -o have_lz4$(EXT) have_lz4.c -llz4 2> $(VOID) && rm have_lz4$(EXT) && echo 1 || echo 0; rm have_lz4.c)
+ ifeq ($(HAVE_LZ4), 1)
+ LZ4_MSG := ==> building zstd with .lz4 compression support
+ LZ4CPP = -DZSTD_LZ4COMPRESS -DZSTD_LZ4DECOMPRESS
+-- 
+2.26.2
+
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
