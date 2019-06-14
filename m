Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E38467A5
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 20:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpbz9Qx/8zok0+KORyGaOvwcseQz4U6cu13h1v4pFeY=; b=r805RDgzcBudpJ
	lC0aUZ4NprXQuDXxjaT5zoFt1N7iW2OJLfHP4TpNZqP89bE57RB+Hd4SCueBpSxgsmc9OmWWea8Et
	Dydqox/c1H8M6CoP5L2UX3S4ICoiXjooMwG45xdGJb7UDoHKQ94z4H/xt2WILQ7y8a4f+d1rjMY9x
	ifMyMsJ629edqu3EyF47xAiY7PIu9UjXnDGb4Buau2vJ4TGyFR0s+YXEXZprzovn+QXTdvSqeg6uW
	WtgmIqQoNpwR3d52atCzq829KjENJYHY3HzMkyVVv4QT1mgq1HqyHA6uS941vc3z5FPLV9QQ4tbMg
	NJ78SFIyS1CBBpFQPT4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbr4D-00038C-NU; Fri, 14 Jun 2019 18:36:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbr3I-0002DI-2l
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 18:35:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so1961128pfq.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 11:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NXeCT0ddOuJ/z+kvKOTk4Ika/jsd4JnvfcHWJGkdXRU=;
 b=iU9zccecSrkQs5cF87XQ0Lw7Q2E7BFxyB02nqaCfvGHfaQhA1msFJd3bvVEtl2si3G
 5okGzLKanRN4L/vF7cmuF2fGl/t7e1ywE2wd24VlAeOAZX1H00ek9AkK/3H4kkcsCX10
 pL/ZGzn5n1/eBehfN6zjcnaG7ergeEWBvSfsCuq5KNwZ+I4RPXY6o6LMlR2Z9hEhop/E
 cXKvq5bTiluDwC/YZw7kip11BL0C1sY00xF88V0b++JWf3XnyEUbud8qJncTEExk27Bl
 DcwlGwbr8VhUczDAjxPIcZvhjn5ldJSsfRSZIc1SirAbV58ubFlPG0J46buxb6Pg1cN/
 nDug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NXeCT0ddOuJ/z+kvKOTk4Ika/jsd4JnvfcHWJGkdXRU=;
 b=U0Lhmdvksl/o3D/EYUGEmS0we7S/3i/lmgHgl7AlddinxYcQqyAndZUyqvLxJHWN5+
 7XZpnAy/OpOqYN7+zRHtixLUgKmvRfPct2FdeGDjic8NokmtJAdZ4PvMYOHHKuTYtC8B
 6DtpJ0tW/kPE/jz4xXV2VHgA3nnIbzu5c99kNSB6HXoFmXmgZIoecuYvmE6/Cm7kgxog
 7OP4orMh0Ab14b3OtNkbACD8VVz6z4CMV2qy54gnEjTQlkOZu80MwVC4eK5vq035qA68
 DL4FbSBuC+XLejeZRMK6G1umfPL2CwPfLi2UTsxpnhM/G79KJYle1cLGWzlayvo5FwkF
 XIYQ==
X-Gm-Message-State: APjAAAWRnWZtfsjGsxo/QrXicxT2IFIml4GPv7yGlPpjvJnGohQvn4ey
 Vkq5zNsQB95Ah2Ul2FTHVTaNVITOf7I=
X-Google-Smtp-Source: APXvYqzpf62Kx+3/8IXB8vW88+GaF7t0Redn8rfb3PUKem2yxlwO8BmPbBC4Wwb8vcbJqRocF8teug==
X-Received: by 2002:aa7:8c0f:: with SMTP id c15mr74162073pfd.113.1560537350477; 
 Fri, 14 Jun 2019 11:35:50 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id a24sm3388775pgb.85.2019.06.14.11.35.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:35:50 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 02:35:33 +0800
Message-Id: <20190614183534.14768-5-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614183534.14768-1-jeffery.to@gmail.com>
References: <20190614183534.14768-1-jeffery.to@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_113552_180914_C17B9C73 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 5/6] tools: Install files into staging
 directory
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates Host/Install for many tools to install files into the given
staging directory, instead of into $(STAGING_DIR_HOST) directly, so that
files can be automatically tracked and uninstalled.

This also removes Host/Clean (now necessary) for many tools.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 tools/automake/Makefile           | 21 ++++++++-------------
 tools/b43-tools/Makefile          | 17 +++++------------
 tools/bison/Makefile              |  9 ++-------
 tools/cbootimage-configs/Makefile |  8 ++------
 tools/cbootimage/Makefile         |  5 -----
 tools/ccache/Makefile             | 12 ++++--------
 tools/e2fsprogs/Makefile          | 18 +++++++-----------
 tools/elftosb/Makefile            |  3 ++-
 tools/expat/Makefile              |  4 ----
 tools/firmware-utils/Makefile     |  3 ++-
 tools/flex/Makefile               |  9 ++-------
 tools/flock/Makefile              |  3 ++-
 tools/genext2fs/Makefile          |  7 ++-----
 tools/gengetopt/Makefile          |  7 ++-----
 tools/kernel2minor/Makefile       |  7 ++-----
 tools/libelf/Makefile             | 12 +++---------
 tools/libtool/Makefile            | 13 ++++---------
 tools/lzma-old/Makefile           |  7 ++-----
 tools/lzma/Makefile               |  7 ++-----
 tools/m4/Makefile                 |  5 -----
 tools/make-ext4fs/Makefile        |  7 ++-----
 tools/missing-macros/Makefile     |  8 ++++----
 tools/mkimage/Makefile            | 10 +++-------
 tools/mklibs/Makefile             | 15 ++++++---------
 tools/mm-macros/Makefile          |  9 ++-------
 tools/mtd-utils/Makefile          |  7 ++-----
 tools/mtools/Makefile             | 10 +++-------
 tools/padjffs2/Makefile           |  7 ++-----
 tools/patch-image/Makefile        | 10 +++-------
 tools/patchelf/Makefile           |  4 ++--
 tools/pkg-config/Makefile         | 11 +++--------
 tools/qemu/Makefile               |  4 ++--
 tools/scons/Makefile              |  7 ++++---
 tools/sdimage/Makefile            |  7 ++-----
 tools/sed/Makefile                |  7 ++-----
 tools/sparse/Makefile             |  3 ++-
 tools/squashfs/Makefile           | 10 +++-------
 tools/squashfskit4/Makefile       | 10 +++-------
 tools/sstrip/Makefile             |  7 ++-----
 tools/wrt350nv2-builder/Makefile  | 13 ++++---------
 tools/xz/Makefile                 |  2 +-
 tools/zip/Makefile                |  4 ++--
 tools/zlib/Makefile               | 18 +++++++-----------
 43 files changed, 119 insertions(+), 248 deletions(-)

diff --git a/tools/automake/Makefile b/tools/automake/Makefile
index c016f1d76a..e63871f6ba 100644
--- a/tools/automake/Makefile
+++ b/tools/automake/Makefile
@@ -33,19 +33,14 @@ define Host/Install
 	# remove old automake resources to avoid version conflicts
 	rm -rf $(STAGING_DIR_HOST)/share/aclocal-[0-9]*
 	rm -rf $(STAGING_DIR_HOST)/share/automake-[0-9]*
-	$(MAKE) -C $(HOST_BUILD_DIR) install
-	mv $(STAGING_DIR_HOST)/bin/aclocal $(STAGING_DIR_HOST)/bin/aclocal.real
-	$(INSTALL_BIN) ./files/aclocal $(STAGING_DIR_HOST)/bin
-	ln -sf aclocal $(STAGING_DIR_HOST)/bin/aclocal-1.9
-	ln -sf aclocal $(STAGING_DIR_HOST)/bin/aclocal-1.10
-	ln -sf aclocal $(STAGING_DIR_HOST)/bin/aclocal-1.11
-	ln -sf aclocal $(STAGING_DIR_HOST)/bin/aclocal-1.11.6
-	ln -sf aclocal $(STAGING_DIR_HOST)/bin/aclocal-1.15
-endef
-
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
+	$(call Host/Install/Default,$(1),)
+	mv $(1)/bin/aclocal $(1)/bin/aclocal.real
+	$(INSTALL_BIN) ./files/aclocal $(1)/bin/
+	ln -sf aclocal $(1)/bin/aclocal-1.9
+	ln -sf aclocal $(1)/bin/aclocal-1.10
+	ln -sf aclocal $(1)/bin/aclocal-1.11
+	ln -sf aclocal $(1)/bin/aclocal-1.11.6
+	ln -sf aclocal $(1)/bin/aclocal-1.15
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/b43-tools/Makefile b/tools/b43-tools/Makefile
index a99b0c9e53..1ef7d8ce58 100644
--- a/tools/b43-tools/Makefile
+++ b/tools/b43-tools/Makefile
@@ -33,18 +33,11 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/fwcutter/b43-fwcutter $(STAGING_DIR_HOST)/bin/
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/assembler/b43-asm $(STAGING_DIR_HOST)/bin/
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/assembler/b43-asm.bin $(STAGING_DIR_HOST)/bin/
-	$(INSTALL_BIN) ./files/b43-fwsquash.py $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/b43-fwcutter
-	rm -f $(STAGING_DIR_HOST)/bin/b43-asm
-	rm -f $(STAGING_DIR_HOST)/bin/b43-asm.bin
-	rm -f $(STAGING_DIR_HOST)/bin/b43-fwsquash.py
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/fwcutter/b43-fwcutter $(1)/bin/
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/assembler/b43-asm $(1)/bin/
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/assembler/b43-asm.bin $(1)/bin/
+	$(INSTALL_BIN) ./files/b43-fwsquash.py $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/bison/Makefile b/tools/bison/Makefile
index 2dcbe617af..1d5a406716 100644
--- a/tools/bison/Makefile
+++ b/tools/bison/Makefile
@@ -19,14 +19,9 @@ include $(INCLUDE_DIR)/host-build.mk
 
 HOST_CONFIGURE_ARGS += --enable-threads=pth
 
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
-endef
-
 define Host/Install
-	$(call Host/Install/Default)
-	$(INSTALL_BIN) ./scripts/yacc $(STAGING_DIR_HOST)/bin/yacc
+	$(call Host/Install/Default,$(1),)
+	$(INSTALL_BIN) ./scripts/yacc $(1)/bin/yacc
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/cbootimage-configs/Makefile b/tools/cbootimage-configs/Makefile
index 5a1fc568cb..6232e26dde 100644
--- a/tools/cbootimage-configs/Makefile
+++ b/tools/cbootimage-configs/Makefile
@@ -20,13 +20,9 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/share/$(PKG_NAME)
+	$(INSTALL_DIR) $(1)/share/$(PKG_NAME)
 	$(CP) $(HOST_BUILD_DIR)/* \
-		$(STAGING_DIR_HOST)/share/$(PKG_NAME)
-endef
-
-define Host/Clean
-	rm -fR $(STAGING_DIR_HOST)/share/$(PKG_NAME)
+		$(1)/share/$(PKG_NAME)/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/cbootimage/Makefile b/tools/cbootimage/Makefile
index 42640eab36..eefc1e9a0b 100644
--- a/tools/cbootimage/Makefile
+++ b/tools/cbootimage/Makefile
@@ -23,9 +23,4 @@ define Host/Configure
 	$(call Host/Configure/Default)
 endef
 
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/$(PKG_NAME) \
-		$(STAGING_DIR_HOST)/share/man/man1/$(PKG_NAME).1
-endef
-
 $(eval $(call HostBuild))
diff --git a/tools/ccache/Makefile b/tools/ccache/Makefile
index 2612c5100f..e74d14bfcc 100644
--- a/tools/ccache/Makefile
+++ b/tools/ccache/Makefile
@@ -19,17 +19,13 @@ include $(INCLUDE_DIR)/host-build.mk
 HOST_CONFIGURE_VARS += CC="$(HOSTCC_NOCACHE)"
 
 define Host/Install/ccache
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin/
-	$(CP) ./files/* $(STAGING_DIR_HOST)/bin/
+	$(INSTALL_DIR) $(1)/bin/
+	$(CP) ./files/* $(1)/bin/
 endef
 
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
-endef
 define Host/Install
-	$(call Host/Install/Default)
-	$(call Host/Install/ccache)
+	$(call Host/Install/Default,$(1),)
+	$(call Host/Install/ccache,$(1))
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/e2fsprogs/Makefile b/tools/e2fsprogs/Makefile
index db93c3beea..bc68e90c59 100644
--- a/tools/e2fsprogs/Makefile
+++ b/tools/e2fsprogs/Makefile
@@ -37,17 +37,13 @@ define Host/Prepare
 endef
 
 define Host/Install
-	$(Host/Install/Default)
-	$(MAKE) -C $(HOST_BUILD_DIR)/lib/uuid install
-	mkdir -p $(STAGING_DIR_HOST)/include/e2fsprogs
-	$(CP) $(STAGING_DIR_HOST)/include/uuid $(STAGING_DIR_HOST)/include/e2fsprogs/
-	rm -rf $(STAGING_DIR_HOST)/include/uuid
-	$(INSTALL_DATA) $(HOST_BUILD_DIR)/lib/uuid/libuuid.a $(STAGING_DIR_HOST)/lib/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/e2fsck
-	rm -f $(STAGING_DIR_HOST)/bin/tune2fs
+	$(call Host/Install/Default,$(1),)
+	$(MAKE) -C $(HOST_BUILD_DIR)/lib/uuid $(HOST_MAKE_INSTALL_FLAGS) install
+	$(CP) $(HOST_INSTALL_DIR)/$(HOST_BUILD_PREFIX)/* $(1)/
+	mkdir -p $(1)/include/e2fsprogs
+	$(CP) $(1)/include/uuid $(1)/include/e2fsprogs/
+	rm -rf $(1)/include/uuid
+	$(INSTALL_DATA) $(HOST_BUILD_DIR)/lib/uuid/libuuid.a $(1)/lib/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/elftosb/Makefile b/tools/elftosb/Makefile
index 9079ac5803..3944fd7ad4 100644
--- a/tools/elftosb/Makefile
+++ b/tools/elftosb/Makefile
@@ -20,7 +20,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/bld/linux/elftosb $(STAGING_DIR_HOST)/bin/elftosb
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/bld/linux/elftosb $(1)/bin/elftosb
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/expat/Makefile b/tools/expat/Makefile
index 14425ed124..27ad9d4869 100644
--- a/tools/expat/Makefile
+++ b/tools/expat/Makefile
@@ -22,8 +22,4 @@ include $(INCLUDE_DIR)/host-build.mk
 HOST_CONFIGURE_ARGS += \
 	--without-docbook
 
-define Host/Install
-	$(MAKE) -C $(HOST_BUILD_DIR) install
-endef
-
 $(eval $(call HostBuild))
diff --git a/tools/firmware-utils/Makefile b/tools/firmware-utils/Makefile
index bde90f0ecd..6efe62e9ce 100644
--- a/tools/firmware-utils/Makefile
+++ b/tools/firmware-utils/Makefile
@@ -89,7 +89,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/bin/* $(STAGING_DIR_HOST)/bin/
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/bin/* $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/flex/Makefile b/tools/flex/Makefile
index bb5aecbdfe..46130fc15a 100644
--- a/tools/flex/Makefile
+++ b/tools/flex/Makefile
@@ -22,13 +22,8 @@ include $(INCLUDE_DIR)/host-build.mk
 HOST_CONFIGURE_ARGS += --disable-shared
 
 define Host/Install
-	$(call Host/Install/Default)
-	$(LN) flex $(STAGING_DIR_HOST)/bin/lex
-endef
-
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
+	$(call Host/Install/Default,$(1),)
+	$(LN) flex $(1)/bin/lex
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/flock/Makefile b/tools/flock/Makefile
index 9939d12116..d61039d2b5 100644
--- a/tools/flock/Makefile
+++ b/tools/flock/Makefile
@@ -19,7 +19,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/flock $(STAGING_DIR_HOST)/bin/
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/flock $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/genext2fs/Makefile b/tools/genext2fs/Makefile
index 3a911df91a..cfc8e81134 100644
--- a/tools/genext2fs/Makefile
+++ b/tools/genext2fs/Makefile
@@ -41,11 +41,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	install -m0755 $(HOST_BUILD_DIR)/genext2fs $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/genext2fs
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/genext2fs $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/gengetopt/Makefile b/tools/gengetopt/Makefile
index 6d2b85e658..7d1aa81d54 100644
--- a/tools/gengetopt/Makefile
+++ b/tools/gengetopt/Makefile
@@ -20,11 +20,8 @@ HOST_BUILD_PARALLEL:=1
 include $(INCLUDE_DIR)/host-build.mk
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/src/gengetopt $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/gengetopt
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/src/gengetopt $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/kernel2minor/Makefile b/tools/kernel2minor/Makefile
index be730b4df6..062074b7d8 100644
--- a/tools/kernel2minor/Makefile
+++ b/tools/kernel2minor/Makefile
@@ -19,11 +19,8 @@ PKG_HASH:=33ca413403a3341af0c9a8e6d9bb58f4ad080a5339e8a8729b83637d35bfaf1b
 include $(INCLUDE_DIR)/host-build.mk
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/kernel2minor $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/kernel2minor
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/kernel2minor $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/libelf/Makefile b/tools/libelf/Makefile
index 31e2eaf0a8..2643ee9c0d 100644
--- a/tools/libelf/Makefile
+++ b/tools/libelf/Makefile
@@ -37,16 +37,10 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/{lib,include/libelf}
+	$(INSTALL_DIR) $(1)/{lib,include/libelf}
 	$(CP) $(HOST_BUILD_DIR)/lib/{elf_repl.h,gelf.h,libelf.h,nlist.h,sys_elf.h} \
-						$(STAGING_DIR_HOST)/include/libelf/
-	$(CP) $(HOST_BUILD_DIR)/lib/libelf.a $(STAGING_DIR_HOST)/lib/
-endef
-
-define Host/Clean
-	rm -rf $(STAGING_DIR_HOST)/include/libelf
-	rm -f $(STAGING_DIR_HOST)/lib/libelf.a
-	$(call Host/Clean/Default)
+						$(1)/include/libelf/
+	$(CP) $(HOST_BUILD_DIR)/lib/libelf.a $(1)/lib/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/libtool/Makefile b/tools/libtool/Makefile
index dd4a7f6380..844723d5cd 100644
--- a/tools/libtool/Makefile
+++ b/tools/libtool/Makefile
@@ -28,15 +28,10 @@ define Host/Prepare
 endef
 
 define Host/Install
-	$(MAKE) -C $(HOST_BUILD_DIR) install
-	$(SED) 's,\(hardcode_into_libs\)=yes,\1=no,g' $(STAGING_DIR_HOST)/bin/libtool
-	$(CP) $(STAGING_DIR_HOST)/bin/libtool $(STAGING_DIR_HOST)/bin/libtool-ucxx
-	$(SED) 's,-lstdc++,-luClibc++,g' $(STAGING_DIR_HOST)/bin/libtool-ucxx
-endef
-
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
+	$(call Host/Install/Default,$(1),)
+	$(SED) 's,\(hardcode_into_libs\)=yes,\1=no,g' $(1)/bin/libtool
+	$(CP) $(1)/bin/libtool $(1)/bin/libtool-ucxx
+	$(SED) 's,-lstdc++,-luClibc++,g' $(1)/bin/libtool-ucxx
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/lzma-old/Makefile b/tools/lzma-old/Makefile
index 5204127a80..527143b9d9 100644
--- a/tools/lzma-old/Makefile
+++ b/tools/lzma-old/Makefile
@@ -28,11 +28,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DATA) $(LIB_DIR)/liblzma.a $(STAGING_DIR_HOST)/lib/liblzma-old.a
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/lib/liblzma-old.a
+	$(INSTALL_DIR) $(1)/lib
+	$(INSTALL_DATA) $(LIB_DIR)/liblzma.a $(1)/lib/liblzma-old.a
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/lzma/Makefile b/tools/lzma/Makefile
index 7d2669e95f..51f25b6baa 100644
--- a/tools/lzma/Makefile
+++ b/tools/lzma/Makefile
@@ -26,11 +26,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/CPP/7zip/Compress/LZMA_Alone/lzma_alone $(STAGING_DIR_HOST)/bin/lzma
-endef
-
-define Host/Clean
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/CPP/7zip/Compress/LZMA_Alone/lzma_alone $(1)/bin/lzma
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/m4/Makefile b/tools/m4/Makefile
index a6d931b0fd..d81c2418d9 100644
--- a/tools/m4/Makefile
+++ b/tools/m4/Makefile
@@ -21,9 +21,4 @@ include $(INCLUDE_DIR)/host-build.mk
 
 HOST_CONFIGURE_VARS += gl_cv_func_strstr_linear=no
 
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
-endef
-
 $(eval $(call HostBuild))
diff --git a/tools/make-ext4fs/Makefile b/tools/make-ext4fs/Makefile
index f67ab6e5b5..ea09b4364a 100644
--- a/tools/make-ext4fs/Makefile
+++ b/tools/make-ext4fs/Makefile
@@ -18,11 +18,8 @@ PKG_MIRROR_HASH:=d7ccd5e426b1d15331ff000a37dc15161f6eef594453e970fd584fcde5a2507
 include $(INCLUDE_DIR)/host-build.mk
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/make_ext4fs $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/make_ext4fs
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/make_ext4fs $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/missing-macros/Makefile b/tools/missing-macros/Makefile
index e4b69b3875..ecd71e0066 100644
--- a/tools/missing-macros/Makefile
+++ b/tools/missing-macros/Makefile
@@ -19,10 +19,10 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/share/aclocal
-	$(INSTALL_DATA) ./src/m4/*.m4 $(STAGING_DIR_HOST)/share/aclocal/
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
-	$(INSTALL_BIN) ./src/bin/* $(STAGING_DIR_HOST)/bin/
+	$(INSTALL_DIR) $(1)/share/aclocal
+	$(INSTALL_DATA) ./src/m4/*.m4 $(1)/share/aclocal/
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) ./src/bin/* $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/mkimage/Makefile b/tools/mkimage/Makefile
index fbcf87cfc6..5cce91c942 100644
--- a/tools/mkimage/Makefile
+++ b/tools/mkimage/Makefile
@@ -34,13 +34,9 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(CP) $(HOST_BUILD_DIR)/tools/mkimage $(STAGING_DIR_HOST)/bin/
-	$(CP) $(HOST_BUILD_DIR)/tools/mkenvimage $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/mkimage
-	rm -f $(STAGING_DIR_HOST)/bin/mkenvimage
+	$(INSTALL_DIR) $(1)/bin
+	$(CP) $(HOST_BUILD_DIR)/tools/mkimage $(1)/bin/
+	$(CP) $(HOST_BUILD_DIR)/tools/mkenvimage $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/mklibs/Makefile b/tools/mklibs/Makefile
index 507c2fd394..4845c5209f 100644
--- a/tools/mklibs/Makefile
+++ b/tools/mklibs/Makefile
@@ -20,15 +20,12 @@ include $(INCLUDE_DIR)/host-build.mk
 HOST_CFLAGS += -I$(CURDIR)/include
 
 define Host/Install
-       $(INSTALL_BIN) \
-               $(HOST_BUILD_DIR)/src/mklibs \
-               $(HOST_BUILD_DIR)/src/mklibs-copy \
-               $(HOST_BUILD_DIR)/src/mklibs-readelf/mklibs-readelf \
-               $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-       rm -f $(STAGING_DIR_HOST)/bin/mklibs*
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) \
+		$(HOST_BUILD_DIR)/src/mklibs \
+		$(HOST_BUILD_DIR)/src/mklibs-copy \
+		$(HOST_BUILD_DIR)/src/mklibs-readelf/mklibs-readelf \
+		$(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/mm-macros/Makefile b/tools/mm-macros/Makefile
index 2d7991455f..b94c1d4463 100644
--- a/tools/mm-macros/Makefile
+++ b/tools/mm-macros/Makefile
@@ -19,13 +19,8 @@ HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/mm-common-$(PKG_VERSION)
 include $(INCLUDE_DIR)/host-build.mk
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/share/aclocal
-	$(INSTALL_DATA) $(HOST_BUILD_DIR)/macros/*.m4 $(STAGING_DIR_HOST)/share/aclocal/
-endef
-
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
+	$(INSTALL_DIR) $(1)/share/aclocal
+	$(INSTALL_DATA) $(HOST_BUILD_DIR)/macros/*.m4 $(1)/share/aclocal/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/mtd-utils/Makefile b/tools/mtd-utils/Makefile
index ff000b99e3..540faec73b 100644
--- a/tools/mtd-utils/Makefile
+++ b/tools/mtd-utils/Makefile
@@ -39,15 +39,12 @@ HOST_MAKE_FLAGS += \
 	PROGRAMS="mkfs.jffs2 ubinize mkfs.ubifs"
 
 define Host/Install
+	$(INSTALL_DIR) $(1)/bin
 	$(CP) \
 		$(HOST_BUILD_DIR)/mkfs.jffs2 \
 		$(HOST_BUILD_DIR)/mkfs.ubifs \
 		$(HOST_BUILD_DIR)/ubinize \
-		$(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/{mkfs.jffs2,mkfs.ubifs,ubinize}
+		$(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/mtools/Makefile b/tools/mtools/Makefile
index 9f9b09a91b..c2b4c08470 100644
--- a/tools/mtools/Makefile
+++ b/tools/mtools/Makefile
@@ -27,13 +27,9 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/mcopy $(STAGING_DIR_HOST)/bin/
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/mmd $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/mcopy
-	rm -f $(STAGING_DIR_HOST)/bin/mmd
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/mcopy $(1)/bin/
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/mmd $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/padjffs2/Makefile b/tools/padjffs2/Makefile
index 0a583b8e1a..969423de57 100644
--- a/tools/padjffs2/Makefile
+++ b/tools/padjffs2/Makefile
@@ -26,11 +26,8 @@ define Host/Configure
 endef
 
 define Host/Install
-	$(CP) $(HOST_BUILD_DIR)/padjffs2 $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/padjffs2
+	$(INSTALL_DIR) $(1)/bin
+	$(CP) $(HOST_BUILD_DIR)/padjffs2 $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/patch-image/Makefile b/tools/patch-image/Makefile
index 6f2900b96c..dac8d6498d 100644
--- a/tools/patch-image/Makefile
+++ b/tools/patch-image/Makefile
@@ -16,13 +16,9 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(CP) $(HOST_BUILD_DIR)/patch-cmdline $(STAGING_DIR_HOST)/bin/
-	$(CP) $(HOST_BUILD_DIR)/patch-dtb $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/patch-cmdline
-	rm -f $(STAGING_DIR_HOST)/bin/patch-dtb
+	$(INSTALL_DIR) $(1)/bin
+	$(CP) $(HOST_BUILD_DIR)/patch-cmdline $(1)/bin/
+	$(CP) $(HOST_BUILD_DIR)/patch-dtb $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/patchelf/Makefile b/tools/patchelf/Makefile
index 1728fba277..34e2801efd 100644
--- a/tools/patchelf/Makefile
+++ b/tools/patchelf/Makefile
@@ -19,8 +19,8 @@ HOST_FIXUP:=autoreconf
 include $(INCLUDE_DIR)/host-build.mk
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/src/patchelf $(STAGING_DIR_HOST)/bin/patchelf
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/src/patchelf $(1)/bin/patchelf
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/pkg-config/Makefile b/tools/pkg-config/Makefile
index 17a8737be1..9ecf4683b5 100644
--- a/tools/pkg-config/Makefile
+++ b/tools/pkg-config/Makefile
@@ -26,14 +26,9 @@ HOST_LDFLAGS += -framework CoreFoundation -framework Carbon
 endif
 
 define Host/Install
-	$(MAKE) -C $(HOST_BUILD_DIR) install
-	mv $(STAGING_DIR_HOST)/bin/pkg-config $(STAGING_DIR_HOST)/bin/pkg-config.real
-	$(INSTALL_BIN) ./files/pkg-config $(STAGING_DIR_HOST)/bin/pkg-config
-endef
-
-define Host/Clean
-	-$(MAKE) -C $(HOST_BUILD_DIR) uninstall
-	$(call Host/Clean/Default)
+	$(call Host/Install/Default,$(1),)
+	mv $(1)/bin/pkg-config $(1)/bin/pkg-config.real
+	$(INSTALL_BIN) ./files/pkg-config $(1)/bin/pkg-config
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/qemu/Makefile b/tools/qemu/Makefile
index d63ab3482e..54e26ebd60 100644
--- a/tools/qemu/Makefile
+++ b/tools/qemu/Makefile
@@ -38,8 +38,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/qemu-img $(STAGING_DIR_HOST)/bin
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/qemu-img $(1)/bin
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/scons/Makefile b/tools/scons/Makefile
index 5ec6554165..4ecef73845 100644
--- a/tools/scons/Makefile
+++ b/tools/scons/Makefile
@@ -24,12 +24,13 @@ define Host/Compile
 endef
 
 define Host/Install
-	./files/pywrap.sh $(HOST_BUILD_DIR)/setup.py install --prefix=$(STAGING_DIR_HOST)
-	rm -f $(STAGING_DIR_HOST)/bin/scons*.py
-	for bin in $(STAGING_DIR_HOST)/bin/scons*; do \
+	./files/pywrap.sh $(HOST_BUILD_DIR)/setup.py install --prefix=$(STAGING_DIR_HOST) --root=$(HOST_INSTALL_DIR)
+	rm -f $(HOST_INSTALL_DIR)/$(STAGING_DIR_HOST)/bin/scons*.py
+	for bin in $(HOST_INSTALL_DIR)/$(STAGING_DIR_HOST)/bin/scons*; do \
 		mv "$$$$bin" "$$$$bin.py";                \
 		cp ./files/pywrap.sh "$$$$bin";           \
 	done
+	$(CP) $(HOST_INSTALL_DIR)/$(STAGING_DIR_HOST)/* $(1)/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/sdimage/Makefile b/tools/sdimage/Makefile
index 532bc481ac..0122406c03 100644
--- a/tools/sdimage/Makefile
+++ b/tools/sdimage/Makefile
@@ -24,11 +24,8 @@ define Host/Configure
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/sdimage $(STAGING_DIR_HOST)/bin/sdimage
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/sdimage
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/sdimage $(1)/bin/sdimage
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/sed/Makefile b/tools/sed/Makefile
index ddeb6c457f..9276a7730a 100644
--- a/tools/sed/Makefile
+++ b/tools/sed/Makefile
@@ -36,11 +36,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/sed/sed $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/sed
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/sed/sed $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/sparse/Makefile b/tools/sparse/Makefile
index 959016b132..7ba425d8e9 100644
--- a/tools/sparse/Makefile
+++ b/tools/sparse/Makefile
@@ -18,7 +18,8 @@ PKG_BUILD_PARALLEL:=1
 include $(INCLUDE_DIR)/host-build.mk
 
 define Host/Install
-       $(INSTALL_BIN) $(HOST_BUILD_DIR)/sparse $(STAGING_DIR_HOST)/bin
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/sparse $(1)/bin
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/squashfs/Makefile b/tools/squashfs/Makefile
index 385cf69d9d..e79e470383 100644
--- a/tools/squashfs/Makefile
+++ b/tools/squashfs/Makefile
@@ -29,13 +29,9 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/mksquashfs-lzma $(STAGING_DIR_HOST)/bin/
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/unsquashfs-lzma $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/mksquashfs-lzma
-	rm -f $(STAGING_DIR_HOST)/bin/unsquashfs-lzma
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/mksquashfs-lzma $(1)/bin/
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/unsquashfs-lzma $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/squashfskit4/Makefile b/tools/squashfskit4/Makefile
index 4808c5607f..4de8eb72e1 100644
--- a/tools/squashfskit4/Makefile
+++ b/tools/squashfskit4/Makefile
@@ -29,13 +29,9 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/mksquashfs $(STAGING_DIR_HOST)/bin/mksquashfs4
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/unsquashfs $(STAGING_DIR_HOST)/bin/unsquashfs4
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/mksquashfs4
-	rm -f $(STAGING_DIR_HOST)/bin/unsquashfs4
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/mksquashfs $(1)/bin/mksquashfs4
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/squashfs-tools/unsquashfs $(1)/bin/unsquashfs4
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/sstrip/Makefile b/tools/sstrip/Makefile
index 180bd1743e..62f216141e 100644
--- a/tools/sstrip/Makefile
+++ b/tools/sstrip/Makefile
@@ -15,11 +15,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(CP) $(HOST_BUILD_DIR)/sstrip $(STAGING_DIR_HOST)/bin/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/sstrip
+	$(INSTALL_DIR) $(1)/bin
+	$(CP) $(HOST_BUILD_DIR)/sstrip $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/wrt350nv2-builder/Makefile b/tools/wrt350nv2-builder/Makefile
index a705b6dc8d..318770c977 100644
--- a/tools/wrt350nv2-builder/Makefile
+++ b/tools/wrt350nv2-builder/Makefile
@@ -24,18 +24,13 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/wrt350nv2-builder $(STAGING_DIR_HOST)/bin/
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/wrt350nv2-builder $(1)/bin/
 # optionally the builder can add a u-boot binary to create a complete webupgrade image, but this is not mandatory
 # u-boot images from stock firmware are available at ftp://ftp.maddes.net/openwrt/trunk/orion/stock/binaries/
 	[ ! -f "files/u-boot.bin" ] || ( \
-		$(INSTALL_DIR) $(STAGING_DIR_HOST)/share/wrt350nv2-builder; \
-		$(CP) files/u-boot.bin $(STAGING_DIR_HOST)/share/wrt350nv2-builder/; )
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/bin/wrt350nv2-builder
-	rm -f $(STAGING_DIR_HOST)/share/wrt350nv2-builder
+		$(INSTALL_DIR) $(1)/share/wrt350nv2-builder; \
+		$(CP) files/u-boot.bin $(1)/share/wrt350nv2-builder/; )
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/xz/Makefile b/tools/xz/Makefile
index 21029a74aa..be3c9fe616 100644
--- a/tools/xz/Makefile
+++ b/tools/xz/Makefile
@@ -29,7 +29,7 @@ HOST_CONFIGURE_ARGS += \
 	--with-pic
 
 define Host/Install
-	+$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR) install xzlinks="unxz xzcat"
+	$(call Host/Install/Default,$(1),install xzlinks="unxz xzcat")
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/zip/Makefile b/tools/zip/Makefile
index 7dd81a1b8b..82c3444fb9 100644
--- a/tools/zip/Makefile
+++ b/tools/zip/Makefile
@@ -28,8 +28,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOST)/bin/
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/zip $(STAGING_DIR_HOST)/bin/
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/zip $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/tools/zlib/Makefile b/tools/zlib/Makefile
index 279851f758..7886971bcf 100644
--- a/tools/zlib/Makefile
+++ b/tools/zlib/Makefile
@@ -25,17 +25,13 @@ include $(INCLUDE_DIR)/cmake.mk
 HOST_CFLAGS +=-fPIC
 
 define Host/Install
-	$(CP) $(HOST_BUILD_DIR)/libz.a $(STAGING_DIR_HOST)/lib/
-	$(CP) $(HOST_BUILD_DIR)/zconf.h $(STAGING_DIR_HOST)/include/
-	$(CP) $(HOST_BUILD_DIR)/zlib.h $(STAGING_DIR_HOST)/include/
-	$(CP) $(HOST_BUILD_DIR)/zlib.pc $(STAGING_DIR_HOST)/lib/pkgconfig/
-endef
-
-define Host/Clean
-	rm -f $(STAGING_DIR_HOST)/lib/libz.a
-	rm -f $(STAGING_DIR_HOST)/include/zconf.h
-	rm -f $(STAGING_DIR_HOST)/include/zlib.h
-	rm -f $(STAGING_DIR_HOST)/lib/pkgconfig//zlib.pc
+	$(INSTALL_DIR) $(1)/lib
+	$(CP) $(HOST_BUILD_DIR)/libz.a $(1)/lib/
+	$(INSTALL_DIR) $(1)/include
+	$(CP) $(HOST_BUILD_DIR)/zconf.h $(1)/include/
+	$(CP) $(HOST_BUILD_DIR)/zlib.h $(1)/include/
+	$(INSTALL_DIR) $(1)/lib/pkgconfig
+	$(CP) $(HOST_BUILD_DIR)/zlib.pc $(1)/lib/pkgconfig/
 endef
 
 $(eval $(call HostBuild))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
