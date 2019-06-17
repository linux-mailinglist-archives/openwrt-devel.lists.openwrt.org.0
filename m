Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E452A4960A
	for <lists+openwrt-devel@lfdr.de>; Tue, 18 Jun 2019 01:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sY7adHXxciTWi3HhLGnW6KHnxW5kXhCSo23/8E8Pg3s=; b=VKmEPIXBS/oTgZ
	10BaojSDwcWnoBwes3SAFIrO+SOwT3PkETZ4R7l0yWQotOrruPA+gtJq4/hIAVJrMlN911NP3dxoM
	kCX74n77XU+dTYGQP0ErQE1jFnCf4IF8xVb1jw/XSMiVrgecxrqDVKBWpFm1dcm/zlzSpPWlGdwpN
	q59+x6hDmMP4lsV77Xw2Ssw02Kk8H1pkGWgypJb53f20XOmVJou/Yo/dteLGe6brvzF9VKCqOYvK1
	BvFt5lalaHDtKu7M78TvGgSL22KWo2skX/3YYq/semKyf1oEwjsj4ZZkMmhkTD1V1vFY626RF6A1l
	WA0tY0/TNGxk2yEry9MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd1IY-0005eV-E3; Mon, 17 Jun 2019 23:44:26 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd1IM-0005cx-Jf
 for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 23:44:16 +0000
Received: by mail-pf1-x431.google.com with SMTP id 19so6507310pfa.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Jun 2019 16:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=UVR9Y+lABvzdQC/xBrA+Fm4Gtegu5z1Pj7RcJ3QmhKY=;
 b=SvoRKJDtICQZzGDsr8qmBdLCSFGpQxlORK3cDWzQ41ko6d61WDdQNyRA6nf1YqzbR1
 QfNJGkJ+KD/szC4tq8vNBZ3AVTe+D/bVXePFREZpBQTrcbfTQEP8/uCeSiE2HrTwQH6r
 50qYimQkKgzRuDa2ZMTiW3X7DzNVRQ334uxuCX9/zevBEdkqmy1HkIp0agWLe2/KCmcN
 o/vsBlG82LFt03gBhFOZEha+ZlY9irLKck9dDm7+mAxzYDHwAtQ9gSZLQ5CgGXmP/FKn
 egp6p1NEwhwvHeUVJqbUTrfgwwgI3FKIjh0pWdRx/iFuWlGnXozbL6hA80tikRq8mFFN
 pXyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=UVR9Y+lABvzdQC/xBrA+Fm4Gtegu5z1Pj7RcJ3QmhKY=;
 b=lALf4xaY3h1RaDcH1pc/ac9ZxfRhMaZSJjNUxTe8tSzJeH9/e2CHjoi9CQZopwVHmA
 uVqNvMptR6ivd1BIbjTYuoE8QGaXU6oiN+ueSFQEryzPtP4OyTqm6GMM8VZpmi83RCwd
 YDWh5JUPsyD9iWaNKvqsO+20RSlda89cT0T5AKMFBzWnneDRJcJo2LhL8Sfk8DD2Cl36
 Rh75Hx8vavGhrjqi8h6e+ct6z9IAQ+QIAL9oavlWgqKYdrt0MCVGydZPXcuIEEBoqQ8b
 BM7k/xe9Bg7evjNquVySDDkv3mBfmnSysNPZH9dm60VC9+5MkU7UTyWk1nE5XAZDdIDT
 vvlw==
X-Gm-Message-State: APjAAAUHoAQSyni5r9rnhCfwNLo4q6ndn0CPSNWNzicU/8eQCt2BZeBR
 lBZlD1tru9h8lFSG5wbCBsGG1ne1
X-Google-Smtp-Source: APXvYqwVB8Vzl1+LugJosGN8POcaal82+rPraOxEBHv50sWXXkzsCWuZeSRP0d3MdAcfGuQPGXgJ6w==
X-Received: by 2002:a62:2ec4:: with SMTP id
 u187mr115005120pfu.84.1560815053227; 
 Mon, 17 Jun 2019 16:44:13 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id 5sm10916401pfh.109.2019.06.17.16.44.12
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 16:44:12 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 17 Jun 2019 16:44:12 -0700
Message-Id: <20190617234412.6739-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_164414_648892_92FD9AD3 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] gdb-arc: Remove
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Normal GDB has supported ARC since 8.0

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/devel/gdb-arc/Makefile                | 94 -------------------
 .../patches/100-no_extern_inline.patch        | 32 -------
 .../gdb-arc/patches/110-no_testsuite.patch    | 21 -----
 .../120-fix-compile-flag-mismatch.patch       | 11 ---
 4 files changed, 158 deletions(-)
 delete mode 100644 package/devel/gdb-arc/Makefile
 delete mode 100644 package/devel/gdb-arc/patches/100-no_extern_inline.patch
 delete mode 100644 package/devel/gdb-arc/patches/110-no_testsuite.patch
 delete mode 100644 package/devel/gdb-arc/patches/120-fix-compile-flag-mismatch.patch

diff --git a/package/devel/gdb-arc/Makefile b/package/devel/gdb-arc/Makefile
deleted file mode 100644
index 7d087ffcb6..0000000000
--- a/package/devel/gdb-arc/Makefile
+++ /dev/null
@@ -1,94 +0,0 @@
-#
-# Copyright (C) 2006-2016 OpenWrt.org
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-include $(TOPDIR)/rules.mk
-
-PKG_NAME:=gdb-arc
-PKG_VERSION:=arc-2017.09-gdb
-PKG_RELEASE:=1
-
-PKG_SOURCE:=gdb-arc-2017.09-gdb.tar.gz
-PKG_SOURCE_URL:=https://github.com/foss-for-synopsys-dwc-arc-processors/binutils-gdb/archive/$(PKG_VERSION)
-PKG_HASH:=6a91f86cc487c1548d3f5d4f29f7226d2019c0db8a63633aeabd5914a340f3f9
-
-PKG_BUILD_DIR:=$(BUILD_DIR)/binutils-gdb-arc-2017.09-gdb
-
-PKG_BUILD_PARALLEL:=1
-PKG_INSTALL:=1
-PKG_LICENSE:=GPL-3.0+
-
-include $(INCLUDE_DIR)/package.mk
-
-define Package/gdb-arc/Default
-  SECTION:=devel
-  CATEGORY:=Development
-  DEPENDS:=+!USE_MUSL:libthread-db +PACKAGE_zlib:zlib @arc
-  URL:=http://www.gnu.org/software/gdb/
-endef
-
-define Package/gdb-arc
-$(call Package/gdb-arc/Default)
-  TITLE:=GNU Debugger for ARC
-  DEPENDS+=+libreadline +libncurses +zlib
-endef
-
-define Package/gdb-arc/description
-GDB, the GNU Project debugger, allows you to see what is going on `inside'
-another program while it executes -- or what another program was doing at the
-moment it crashed.
-endef
-
-define Package/gdbserver-arc
-$(call Package/gdb-arc/Default)
-  TITLE:=Remote server for GNU Debugger
-endef
-
-define Package/gdbserver-arc/description
-GDBSERVER is a program that allows you to run GDB on a different machine than the
-one which is running the program being debugged.
-endef
-
-# XXX: add --disable-werror to prevent build failure with arm
-CONFIGURE_ARGS+= \
-	--with-system-readline \
-	--without-expat \
-	--without-lzma \
-	--disable-werror \
-	--disable-binutils \
-	--disable-ld \
-	--disable-gas \
-	--disable-sim
-
-CONFIGURE_VARS+= \
-	ac_cv_search_tgetent="$(TARGET_LDFLAGS) -lncurses -lreadline"
-
-define Build/Compile
-	+$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
-		DESTDIR="$(PKG_INSTALL_DIR)" \
-		CPPFLAGS="$(TARGET_CPPFLAGS)" \
-		all
-endef
-
-define Build/Install
-	$(MAKE) -C $(PKG_BUILD_DIR) \
-		DESTDIR="$(PKG_INSTALL_DIR)" \
-		CPPFLAGS="$(TARGET_CPPFLAGS)" \
-		install-gdb
-endef
-
-define Package/gdb-arc/install
-	$(INSTALL_DIR) $(1)/usr/bin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/gdb $(1)/usr/bin/
-endef
-
-define Package/gdbserver-arc/install
-	$(INSTALL_DIR) $(1)/usr/bin
-	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/gdbserver $(1)/usr/bin/
-endef
-
-$(eval $(call BuildPackage,gdb-arc))
-$(eval $(call BuildPackage,gdbserver-arc))
diff --git a/package/devel/gdb-arc/patches/100-no_extern_inline.patch b/package/devel/gdb-arc/patches/100-no_extern_inline.patch
deleted file mode 100644
index 8c18c6e2e7..0000000000
--- a/package/devel/gdb-arc/patches/100-no_extern_inline.patch
+++ /dev/null
@@ -1,32 +0,0 @@
---- a/sim/common/sim-arange.c
-+++ b/sim/common/sim-arange.c
-@@ -280,11 +280,7 @@ sim_addr_range_delete (ADDR_RANGE *ar, a
-   build_search_tree (ar);
- }
- 
--#endif /* DEFINE_NON_INLINE_P */
--
--#if DEFINE_INLINE_P
--
--SIM_ARANGE_INLINE int
-+int
- sim_addr_range_hit_p (ADDR_RANGE *ar, address_word addr)
- {
-   ADDR_RANGE_TREE *t = ar->range_tree;
-@@ -301,4 +297,4 @@ sim_addr_range_hit_p (ADDR_RANGE *ar, ad
-   return 0;
- }
- 
--#endif /* DEFINE_INLINE_P */
-+#endif /* DEFINE_NON_INLINE_P */
---- a/sim/common/sim-arange.h
-+++ b/sim/common/sim-arange.h
-@@ -73,7 +73,7 @@ extern void sim_addr_range_delete (ADDR_
- 
- /* Return non-zero if ADDR is in range AR, traversing the entire tree.
-    If no range is specified, that is defined to mean "everything".  */
--SIM_ARANGE_INLINE int
-+extern int
- sim_addr_range_hit_p (ADDR_RANGE * /*ar*/, address_word /*addr*/);
- #define ADDR_RANGE_HIT_P(ar, addr) \
-   ((ar)->range_tree == NULL || sim_addr_range_hit_p ((ar), (addr)))
diff --git a/package/devel/gdb-arc/patches/110-no_testsuite.patch b/package/devel/gdb-arc/patches/110-no_testsuite.patch
deleted file mode 100644
index 1b284ea767..0000000000
--- a/package/devel/gdb-arc/patches/110-no_testsuite.patch
+++ /dev/null
@@ -1,21 +0,0 @@
---- a/gdb/configure
-+++ b/gdb/configure
-@@ -870,8 +870,7 @@ MAKEINFOFLAGS
- YACC
- YFLAGS
- XMKMF'
--ac_subdirs_all='testsuite
--gdbtk
-+ac_subdirs_all='gdbtk
- multi-ice
- gdbserver'
- 
-@@ -5610,7 +5610,7 @@ $as_echo "$with_auto_load_safe_path" >&6
- 
- 
- 
--subdirs="$subdirs testsuite"
-+subdirs="$subdirs"
- 
- 
- # Check whether to support alternative target configurations
diff --git a/package/devel/gdb-arc/patches/120-fix-compile-flag-mismatch.patch b/package/devel/gdb-arc/patches/120-fix-compile-flag-mismatch.patch
deleted file mode 100644
index c8b41f264a..0000000000
--- a/package/devel/gdb-arc/patches/120-fix-compile-flag-mismatch.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/gdb/gdbserver/configure
-+++ b/gdb/gdbserver/configure
-@@ -2468,7 +2468,7 @@ $as_echo "$as_me: error: \`$ac_var' was
-       ac_cache_corrupted=: ;;
-     ,);;
-     *)
--      if test "x$ac_old_val" != "x$ac_new_val"; then
-+      if test "`echo x$ac_old_val`" != "`echo x$ac_new_val`"; then
- 	# differences in whitespace do not lead to failure.
- 	ac_old_val_w=`echo x $ac_old_val`
- 	ac_new_val_w=`echo x $ac_new_val`
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
