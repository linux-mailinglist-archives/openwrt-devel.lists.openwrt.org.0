Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C213618E64F
	for <lists+openwrt-devel@lfdr.de>; Sun, 22 Mar 2020 04:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Aa64+el5y2PO47sMIoFKIyZGdcHLVuCIxf7QAzMuwp4=; b=RhkuWUfSBM0o6P
	lZjixUO3J1YDKzYvG77OhK5Fpb3JMfOmjmCj+sf5FPFStZl8T6qkz4jvvfoj+61BCw2NqmUYkeq3p
	xgvTQQCGj2yDSwz/7+RI58CUI6SZIR5dSWYCTLeHzlhQdiX7Ehec7gDG7BZRdRuXH8jMV2W4trZcy
	hMGoqMlShlnXT0fX8pE9caWqbu/hXuHyrXCuui4u/wb6cftORyxZe8mQ0YNGXcFTB/oJ/NMdxz/zk
	5KXNXM5bUnmkDSGIqB0YSvE/silyJdRqyaJ/H0sYI8dZcQlRhoGMQ/eonYLWHR5wrf3CMHA2l6HLr
	zPrVQhjBPADjBoHZfjQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFrPX-0004yO-NF; Sun, 22 Mar 2020 03:36:27 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFrPQ-0004xr-C8
 for openwrt-devel@lists.openwrt.org; Sun, 22 Mar 2020 03:36:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id x1so307779plm.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Mar 2020 20:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hRhkvMVHp1yYookBqam+smLKYE5CxjsJvNFk2UFuVsI=;
 b=pg49oUKqxzPFGITIVgMlG6m6X3cuE4GTdxrsy0/GqUTC2VHC7VUS0DpBtrRCZRGWSH
 dRHiXqEp5YTsWIgLwGKza9+XWoN1Q6kWt1E5rP0Zc/xy0yPjwC7OFuZwf3EOReDnTIH6
 1BH61pjrd7ez3WWNgPgoL0efuNq0m6Tk+mkPQkenyXsqWWZjL/rMOWbPJnLXwg+Pwu/D
 iPsbb4IGs8jIutAuAlE95VW9gjhcZV8F1wXsrObgTY4QuoNOWh4Bb6OUCDrRBtpJEq7y
 D/VwLTls70cGgIvY3ORgc+Ba3pKhS+a2sk54THbnePT6P59wCCzoRBUk4BTEMfnOtBDg
 czuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hRhkvMVHp1yYookBqam+smLKYE5CxjsJvNFk2UFuVsI=;
 b=QjRbalSCW95VWdbkU1wrJip0xWY8aFgjwfDw4dkwjxYg0/vlSJLLD0MisJ3YMv/QlE
 NBSyEFwAXFdm9kT7fSNIOX/RmCrcsetOiLAgub14U4ai66VHJI4TEnQ+hEGpyNK8ojLv
 rvXodRPbvJvHU6gN7XbOQGXureXntzBWlQSdicKIKftk0OIQMN4PPfAaBJrTwRKeKY6u
 XSJafaEpgGHD2C0JzTW1WC0Zw2LV7eiD9JAsl93F3Ui8lnYhMnoW8icVktLM9tHS5Jz8
 /h5sHnCMkzB3dMblW89+2iqhWvTPFCA+4pVG3CrX5s2+aekTRRf+cz6fup/jtpZhqjEv
 EZVQ==
X-Gm-Message-State: ANhLgQ1fd3OU8vJpa00Z+G0kAOgI25L1b3RdC/zsvr+Rs5Lpp2DBl8YU
 UFbp1p+8cFv/OfeEf5Vybjq61javpho=
X-Google-Smtp-Source: ADFU+vu8+cQBr8v3kupJ00tygEHP1OoJ6Yc3NYCS+AWRSs2z4pvf07c4X5x6AOonExEt2EKX1pjz4w==
X-Received: by 2002:a17:902:b206:: with SMTP id
 t6mr14323333plr.75.1584848177575; 
 Sat, 21 Mar 2020 20:36:17 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id j126sm9605120pfg.60.2020.03.21.20.36.16
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Mar 2020 20:36:16 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 21 Mar 2020 20:36:15 -0700
Message-Id: <20200322033615.285409-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_203620_441007_7C24142C 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFT][PATCH] toolchain/musl: update to 1.2.0
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

Remove PKG_SOURCE and PKG_SOURCE_SUBDIR since the defaults are used.

Remove GLOB_ONLYDIR patch. Does not seem to be needed.

Remove woresize.h file. It does not seem to be needed.

Update features.h file from upstream. Needed for compilation of this
version.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 The GLOB_ONLYDIR macro is only needed for fstools, which should be
 fixed there.
 I compile tested this with the base and mostly the packages feed.
 toolchain/musl/common.mk                              |  8 +++-----
 toolchain/musl/include/bits/wordsize.h                |  1 -
 toolchain/musl/include/features.h                     | 10 +++++++++-
 toolchain/musl/patches/100-add_glob_onlydir.patch     | 11 -----------
 toolchain/musl/patches/200-add_libssp_nonshared.patch |  6 +++---
 toolchain/musl/patches/300-relative.patch             |  2 +-
 6 files changed, 16 insertions(+), 22 deletions(-)
 delete mode 100644 toolchain/musl/include/bits/wordsize.h
 delete mode 100644 toolchain/musl/patches/100-add_glob_onlydir.patch

diff --git a/toolchain/musl/common.mk b/toolchain/musl/common.mk
index e1354f2635..f7756f6056 100644
--- a/toolchain/musl/common.mk
+++ b/toolchain/musl/common.mk
@@ -8,15 +8,13 @@ include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/target.mk
 
 PKG_NAME:=musl
-PKG_VERSION:=1.1.24
+PKG_VERSION:=1.2.0
 PKG_RELEASE:=1
 
 PKG_SOURCE_PROTO:=git
-PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
-PKG_SOURCE_VERSION:=ea9525c8bcf6170df59364c4bcd616de1acf8703
-PKG_MIRROR_HASH:=6975c45b9bfe586ac00dbfcd1b1a13ab110af0528028ab3dee03e23e2c0763e5
 PKG_SOURCE_URL:=https://git.musl-libc.org/git/musl
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.xz
+PKG_SOURCE_VERSION:=v$(PKG_VERSION)
+PKG_MIRROR_HASH:=f68308e7182300bf7d48fed740785db2d212216c41df1a6ed9a51d8a370f6120
 
 LIBC_SO_VERSION:=$(PKG_VERSION)
 PATCH_DIR:=$(PATH_PREFIX)/patches
diff --git a/toolchain/musl/include/bits/wordsize.h b/toolchain/musl/include/bits/wordsize.h
deleted file mode 100644
index 2d4cbe8317..0000000000
--- a/toolchain/musl/include/bits/wordsize.h
+++ /dev/null
@@ -1 +0,0 @@
-#include <sys/user.h>
diff --git a/toolchain/musl/include/features.h b/toolchain/musl/include/features.h
index edb8cc72d4..e801e2299a 100644
--- a/toolchain/musl/include/features.h
+++ b/toolchain/musl/include/features.h
@@ -1,10 +1,14 @@
 #ifndef _FEATURES_H
 #define _FEATURES_H
 
-#ifdef _ALL_SOURCE
+#if defined(_ALL_SOURCE) && !defined(_GNU_SOURCE)
 #define _GNU_SOURCE 1
 #endif
 
+#if defined(_DEFAULT_SOURCE) && !defined(_BSD_SOURCE)
+#define _BSD_SOURCE 1
+#endif
+
 #if !defined(_POSIX_SOURCE) && !defined(_POSIX_C_SOURCE) \
  && !defined(_XOPEN_SOURCE) && !defined(_GNU_SOURCE) \
  && !defined(_BSD_SOURCE) && !defined(__STRICT_ANSI__)
@@ -20,6 +24,8 @@
 
 #if __STDC_VERSION__ >= 199901L || defined(__cplusplus)
 #define __inline inline
+#elif !defined(__GNUC__)
+#define __inline
 #endif
 
 #if __STDC_VERSION__ >= 201112L
@@ -29,6 +35,8 @@
 #define _Noreturn
 #endif
 
+#define __REDIR(x,y) __typeof__(x) x __asm__(#y)
+
 /* Convenience macros to test the versions of glibc and gcc.
    Use them like this:
    #if __GNUC_PREREQ (2,8)
diff --git a/toolchain/musl/patches/100-add_glob_onlydir.patch b/toolchain/musl/patches/100-add_glob_onlydir.patch
deleted file mode 100644
index a784e770df..0000000000
--- a/toolchain/musl/patches/100-add_glob_onlydir.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/include/glob.h
-+++ b/include/glob.h
-@@ -34,6 +34,8 @@ void globfree(glob_t *);
- #define GLOB_TILDE       0x1000
- #define GLOB_TILDE_CHECK 0x4000
- 
-+#define GLOB_ONLYDIR	0x100
-+
- #define GLOB_NOSPACE 1
- #define GLOB_ABORTED 2
- #define GLOB_NOMATCH 3
diff --git a/toolchain/musl/patches/200-add_libssp_nonshared.patch b/toolchain/musl/patches/200-add_libssp_nonshared.patch
index 05bd2fe54a..9a4de743be 100644
--- a/toolchain/musl/patches/200-add_libssp_nonshared.patch
+++ b/toolchain/musl/patches/200-add_libssp_nonshared.patch
@@ -16,7 +16,7 @@ Signed-off-by: Steven Barth <steven@midlink.org>
  ALL_TOOLS = obj/musl-gcc
  
  WRAPCC_GCC = gcc
-@@ -86,7 +86,7 @@ else
+@@ -87,7 +87,7 @@ else
  
  all: $(ALL_LIBS) $(ALL_TOOLS)
  
@@ -25,7 +25,7 @@ Signed-off-by: Steven Barth <steven@midlink.org>
  
  $(ALL_LIBS) $(ALL_TOOLS) $(ALL_OBJS) $(ALL_OBJS:%.o=%.lo) $(GENH) $(GENH_INT): | $(OBJ_DIRS)
  
-@@ -113,6 +113,8 @@ obj/crt/rcrt1.o: $(srcdir)/ldso/dlstart.
+@@ -114,6 +114,8 @@ obj/crt/rcrt1.o: $(srcdir)/ldso/dlstart.
  
  obj/crt/Scrt1.o obj/crt/rcrt1.o: CFLAGS_ALL += -fPIC
  
@@ -34,7 +34,7 @@ Signed-off-by: Steven Barth <steven@midlink.org>
  OPTIMIZE_SRCS = $(wildcard $(OPTIMIZE_GLOBS:%=$(srcdir)/src/%))
  $(OPTIMIZE_SRCS:$(srcdir)/%.c=obj/%.o) $(OPTIMIZE_SRCS:$(srcdir)/%.c=obj/%.lo): CFLAGS += -O3
  
-@@ -165,6 +167,11 @@ lib/libc.a: $(AOBJS)
+@@ -166,6 +168,11 @@ lib/libc.a: $(AOBJS)
  	$(AR) rc $@ $(AOBJS)
  	$(RANLIB) $@
  
diff --git a/toolchain/musl/patches/300-relative.patch b/toolchain/musl/patches/300-relative.patch
index e34e60a09d..50041cac60 100644
--- a/toolchain/musl/patches/300-relative.patch
+++ b/toolchain/musl/patches/300-relative.patch
@@ -1,6 +1,6 @@
 --- a/Makefile
 +++ b/Makefile
-@@ -215,7 +215,7 @@ $(DESTDIR)$(includedir)/%: $(srcdir)/inc
+@@ -216,7 +216,7 @@ $(DESTDIR)$(includedir)/%: $(srcdir)/inc
  	$(INSTALL) -D -m 644 $< $@
  
  $(DESTDIR)$(LDSO_PATHNAME): $(DESTDIR)$(libdir)/libc.so
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
