Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA371A1688
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 22:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8x1V0qVk397iBwstgk8dvWmWnyfOXRnZxMz0VNGXsQ0=; b=a4I6XxDUT/2Qcn
	3S65n82qqbv3N5+lBQOO5RnIntuqkeRAI/U5wevGQHkx0P/u0+v/lcBqBDaYSkiEUxWQAyoy9Hwh2
	BQWV+rxDdPr+6l6+NEFPa5yDKHl0HRfm+NfBCYIhU+1JYllws21DZbq4ens2VfZNxgQ4UsXGB5cMq
	GLG+Mvx+tyOq0CEI//8J2bCLoAUQuhI+xPx/jOAEjJx1/LnAQ/T13fySQFxHRwgv2YnEF9lE3c3Pj
	37gvvHS+Z19iuCS+hQQZquGJJvVxOCSssmGSNo5k4dFf96cfJacM7awF0vQbMWIV57JxaCqQbGmGz
	auhoq3TKQNB/MkkbEN9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuWq-0007xc-SN; Tue, 07 Apr 2020 20:09:00 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLuVk-0006kk-3b
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 20:07:58 +0000
Received: by mail-qk1-x734.google.com with SMTP id m67so720311qke.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 13:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=73Lu1v6WpRvg2P0BsIv4Og4OrMpX/pj18P8ZzE8X+ng=;
 b=cKNqyveCYDA7WpXojuCGZU59Zynno851wAABFoI2op6RAIs2n8iquKQ73vqu/gEYAj
 +MhdPd1n8X8fy64Vff1eouMDAB1Fjp3iOcBG4ZeFkIgCVHbaRiRWd0g/FY/DR/g2sUXn
 BvVtJzGC4iTWDVVqtQRC2+r80H+o3ESY9o9yNbSsxKKDHB/ZW0LvqM9JEwqef+JggKR3
 SFI9FYQX6bSVrx8AiEBU/3GeiiXt1pqBPKTtiY+oMhNgj2kC8ZSInMf8WNEBgb9uFKLq
 zvESJMhRmiPxAttSg1tTBDTfPpHTy4DLlh2eGKoUj2N5W3Qbt1jP4Eio1EULhZ3buB50
 Ztwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=73Lu1v6WpRvg2P0BsIv4Og4OrMpX/pj18P8ZzE8X+ng=;
 b=baw+0IgIfm9b7kbBAQ1Q+XAFtsFBARP69daEJeZ23Kzp9cFxHyiANL1/9fdF04mX8P
 FDwqJ5qGd3N8jIGhkO0cNzBi7v3bpRCyUocowtgPQSxr5v9iTB8YlfqTtz3aCNxnbt0Q
 GW6aQA1rZPxgkCnv1LZh9lkCZbxaLvByHSrVUgcEa+DEneXCG/KyxX/hs+Wyfi3nxTmm
 TGYlfSo+X+DFmKEoDLqaoD50XVqsPRXXdtA5phH/8Fi7xenARJiFZV8mrYMpObCRxuXn
 9ajXHh/VHqeqQGmw3H36yzge7zP7dLwadWwymCRjCvUcsYftNh7Ddtbr7XOajSRB0znV
 OLPA==
X-Gm-Message-State: AGi0PuZVH8a21kHFr0pphU8/1ElgOdxOsqMWN5c1aLuhstZFU1BChW82
 h8ZwtB8FiwreTSWLnTFzUVM49vLb65w=
X-Google-Smtp-Source: APiQypLrcv52880fzCMh56JWXmJz20cMtKZx6wLRAHslFFJSKCQ9YRowb3UxhERGmNIospD/AdA7Hg==
X-Received: by 2002:a37:93c1:: with SMTP id v184mr4069770qkd.47.1586290066705; 
 Tue, 07 Apr 2020 13:07:46 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id e10sm4913365qtj.76.2020.04.07.13.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 13:07:45 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 17:07:23 -0300
Message-Id: <20200407200724.8308-6-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200407200724.8308-1-cotequeiroz@gmail.com>
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 run bypassed due to message size (480451 bytes)
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
Subject: [OpenWrt-Devel] [PATCH v2 5/6] build: scripts/config - update to
 kconfig-v5.6
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Major changes include:
 - Much more readable reverse dependencies separated in groups
 - Improved recursive dependency report
 - More readable .config files: add comments to signal end of menus
 - More warnings for incorrect Config.in entries, such as a 'choice'
   default not contained in the 'choice'
 - Hability to properly display pseudographics with non-latin locales
 - Recursive dependencies are now treated as errors - this should make
   it harder for them to creep in.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
 scripts/config/.gitignore                     |   29 +-
 scripts/config/Makefile                       |  174 +-
 scripts/config/README                         |   26 +-
 scripts/config/conf.c                         |  248 +-
 scripts/config/confdata.c                     |  533 +-
 scripts/config/expr.c                         |  216 +-
 scripts/config/expr.h                         |  110 +-
 scripts/config/images.c                       |   34 +-
 scripts/config/images.h                       |   33 +
 scripts/config/{zconf.l => lexer.l}           |  340 +-
 scripts/config/lexer.lex.c                    | 4499 +++++++++++++++++
 scripts/config/list.h                         |    1 +
 scripts/config/lkc.h                          |   58 +-
 scripts/config/lkc_proto.h                    |   21 +-
 scripts/config/lxdialog/.gitignore            |    2 -
 scripts/config/lxdialog/check-lxdialog.sh     |   91 -
 scripts/config/lxdialog/checklist.c           |   19 +-
 scripts/config/lxdialog/dialog.h              |   23 +-
 scripts/config/lxdialog/inputbox.c            |   22 +-
 scripts/config/lxdialog/menubox.c             |   25 +-
 scripts/config/lxdialog/textbox.c             |   17 +-
 scripts/config/lxdialog/util.c                |   15 +-
 scripts/config/lxdialog/yesno.c               |   19 +-
 scripts/config/mconf-cfg.sh                   |   50 +
 scripts/config/mconf.c                        |  179 +-
 scripts/config/menu.c                         |  451 +-
 .../{zconf.tab.c_shipped => parser.tab.c}     |  939 ++--
 scripts/config/parser.tab.h                   |  129 +
 scripts/config/{zconf.y => parser.y}          |  429 +-
 scripts/config/preprocess.c                   |  575 +++
 scripts/config/qconf-cfg.sh                   |   32 +
 scripts/config/qconf.cc                       |  174 +-
 scripts/config/qconf.h                        |    3 +-
 scripts/config/symbol.c                       |  269 +-
 scripts/config/util.c                         |   86 +-
 scripts/config/zconf.gperf                    |   49 -
 scripts/config/zconf.hash.c_shipped           |  250 -
 scripts/config/zconf.lex.c_shipped            | 2533 ----------
 38 files changed, 7752 insertions(+), 4951 deletions(-)
 create mode 100644 scripts/config/images.h
 rename scripts/config/{zconf.l => lexer.l} (50%)
 create mode 100644 scripts/config/lexer.lex.c
 delete mode 100644 scripts/config/lxdialog/.gitignore
 delete mode 100644 scripts/config/lxdialog/check-lxdialog.sh
 create mode 100755 scripts/config/mconf-cfg.sh
 rename scripts/config/{zconf.tab.c_shipped => parser.tab.c} (73%)
 create mode 100644 scripts/config/parser.tab.h
 rename scripts/config/{zconf.y => parser.y} (64%)
 create mode 100644 scripts/config/preprocess.c
 create mode 100755 scripts/config/qconf-cfg.sh
 delete mode 100644 scripts/config/zconf.gperf
 delete mode 100644 scripts/config/zconf.hash.c_shipped
 delete mode 100644 scripts/config/zconf.lex.c_shipped

diff --git a/scripts/config/.gitignore b/scripts/config/.gitignore
index 1206e50229..b5bf92f66d 100644
--- a/scripts/config/.gitignore
+++ b/scripts/config/.gitignore
@@ -1,15 +1,14 @@
-*.o
-conf*
-!conf*.c
-!conf*.h
-mconf*
-!mconf*.c
-!mconf*.h
-mconf_check
-*.*.c
-qconf*
-qconf*.moc
-!qconf*.cc
-!qconf*.h
-!images*.c
-.tmp_qtcheck
+#
+# Generated files
+#
+*.moc
+*conf-cfg
+
+#
+# configuration programs
+#
+conf
+mconf
+nconf
+qconf
+gconf
diff --git a/scripts/config/Makefile b/scripts/config/Makefile
index 1f9184e3aa..eb55b759a8 100644
--- a/scripts/config/Makefile
+++ b/scripts/config/Makefile
@@ -1,102 +1,124 @@
+# SPDX-License-Identifier: GPL-2.0
 # ===========================================================================
 # OpenWrt configuration targets
-# These targets are used from top-level makefile
+
+.PHONY: clean all
+all: conf mconf
+clean:
+	rm -f *.o lxdialog/*.o *.moc $(clean-files) conf mconf qconf
+
+clean-files	:=
 
 # ===========================================================================
-# Shared Makefile for the various kconfig executables:
-# conf:	  Used for defconfig, oldconfig and related targets
-# mconf:  Used for the mconfig target.
-#         Utilizes the lxdialog package
-# qconf:  Used for the xconfig target
-#         Based on Qt which needs to be installed to compile it
+# Variables needed by the upstream Makefile
+
+# Avoids displaying 'UPD mconf-cfg' in an otherwise quiet make menuconfig
+kecho:=true
+
+CONFIG_SHELL:=$(SHELL)
+srctree:=.
+src:=.
+obj:=.
+Q:=$(if $V,,@)
+cmd = $(cmd_$(1))
+dot-target = $(dir $@).$(notdir $@)
+
+# taken from ../Kbuild.include
+define filechk
+	$(Q)set -e;						\
+	mkdir -p $(dir $@);					\
+	trap "rm -f $(dot-target).tmp" EXIT;			\
+	{ $(filechk_$(1)); } > $(dot-target).tmp;		\
+	if [ ! -r $@ ] || ! cmp -s $@ $(dot-target).tmp; then	\
+		$(kecho) '  UPD     $@';			\
+		mv -f $(dot-target).tmp $@;			\
+	fi
+endef
+
+### Stripped down upstream Makefile follows:
+# ===========================================================================
 # object files used by all kconfig flavours
+common-objs	:= confdata.o expr.o lexer.lex.o parser.tab.o preprocess.o \
+		   symbol.o util.o
+
+$(obj)/lexer.lex.o: $(obj)/parser.tab.h
+HOSTCFLAGS_lexer.lex.o	:= -I $(srctree)/$(src)
+HOSTCFLAGS_parser.tab.o	:= -I $(srctree)/$(src)
 
+# conf: Used for defconfig, oldconfig and related targets
+hostprogs-y	+= conf
+conf-objs	:= conf.o $(common-objs)
 
-# Platform specific fixes
-#
-# FreeBSD
+# mconf: Used for the menuconfig target based on lxdialog
+hostprogs-y	+= mconf
+lxdialog	:= $(addprefix lxdialog/, \
+		     checklist.o inputbox.o menubox.o textbox.o util.o yesno.o)
+mconf-objs	:= mconf.o $(lxdialog) $(common-objs)
 
-check_lxdialog = $(shell $(SHELL) $(CURDIR)/lxdialog/check-lxdialog.sh -$(1))
-export CFLAGS += -DKBUILD_NO_NLS -I. $(call check_lxdialog,ccflags)
-export CXXFLAGS += -DKBUILD_NO_NLS
+HOSTLDLIBS_mconf = $(shell . $(obj)/mconf-cfg && echo $$libs)
+$(foreach f, mconf.o $(lxdialog), \
+  $(eval HOSTCFLAGS_$f = $$(shell . $(obj)/mconf-cfg && echo $$$$cflags)))
 
-conf-objs	:= conf.o zconf.tab.o
-mconf-objs	:= mconf.o zconf.tab.o
+$(addprefix $(obj)/, mconf.o $(lxdialog)): $(obj)/mconf-cfg
+
+# qconf: Used for the xconfig target based on Qt
+hostprogs-y	+= qconf
 qconf-cxxobjs	:= qconf.o
-qconf-objs	:= zconf.tab.o
+qconf-objs	:= images.o $(common-objs)
 
-lxdialog-objs := \
-	lxdialog/checklist.o lxdialog/util.o lxdialog/inputbox.o \
-	lxdialog/textbox.o lxdialog/yesno.o lxdialog/menubox.o
+HOSTLDLIBS_qconf	= $(shell . $(obj)/qconf-cfg && echo $$libs)
+HOSTCXXFLAGS_qconf.o	= $(shell . $(obj)/qconf-cfg && echo $$cflags)
 
-clean-files	:= zconf.tab.c zconf.lex.c zconf.hash.c
-# Remove qconf junk files
-clean-files	+= $(qconf-cxxobjs) qconf.moc .tmp_qtcheck qconf
+$(obj)/qconf.o: $(obj)/qconf-cfg $(obj)/qconf.moc
 
-all: conf mconf
+quiet_cmd_moc = MOC     $@
+      cmd_moc = $(shell . $(obj)/qconf-cfg && echo $$moc) -i $< -o $@
 
-conf: $(conf-objs)
-mconf: $(mconf-objs) $(lxdialog-objs)
-	$(CC) -o $@ $^ $(call check_lxdialog,ldflags $(CC))
-qconf: $(qconf-cxxobjs) $(qconf-objs)
-	$(CXX) -o $@ $^ $(HOSTLOADLIBES_qconf)
+$(obj)/%.moc: $(src)/%.h $(obj)/qconf-cfg
+	$(call cmd,moc)
 
-clean:
-	rm -f *.o lxdialog/*.o $(clean-files) conf mconf
+# check if necessary packages are available, and configure build flags
+filechk_conf_cfg = $(CONFIG_SHELL) $<
+
+$(obj)/%conf-cfg: $(src)/%conf-cfg.sh FORCE
+	$(call filechk,conf_cfg)
+
+clean-files += *conf-cfg
 
-zconf.tab.o: zconf.lex.c zconf.hash.c confdata.c
+# ===========================================================================
+# OpenWrt rules and final adjustments that need to be made after reading the
+# full upstream Makefile
+
+FORCE:
 
-kconfig_load.o: lkc_defs.h
+ifdef BUILD_SHIPPED_FILES
+shipped-files := lexer.lex.c parser.tab.c parser.tab.h
+clean-files += $(shipped-files)
 
-zconf.tab.c: zconf.y $(wildcard zconf.tab.c_shipped)
-zconf.lex.c: zconf.l $(wildcard zconf.lex.c_shipped)
-zconf.hash.c: zconf.gperf $(wildcard zconf.hash.c_shipped)
+.SECONDARY: $(shipped-files)
 
-%.tab.c: %.y
-	cp $@_shipped $@ || bison -l -b $* -p $(notdir $*) $<
+%.tab.c %.tab.h: %.y
+	bison -l -d -b $* $<
 
 %.lex.c: %.l
-	cp $@_shipped $@ || flex -L -P$(notdir $*) -o$@ $<
-
-%.hash.c: %.gperf
-	cp $@_shipped $@ || gperf < $< > $@
-
-ifeq ($(MAKECMDGOALS),qconf)
-qconf.o: .tmp_qtcheck
-.tmp_qtcheck: Makefile
--include .tmp_qtcheck
-
-# Qt needs some extra effort...
-.tmp_qtcheck:
-	@set -e; echo "  CHECK   qt"; \
-	if pkg-config --exists Qt5Core; then \
-	    cflags="-std=c++11 -fPIC `pkg-config --cflags Qt5Core Qt5Gui Qt5Widgets`"; \
-	    libs=`pkg-config --libs Qt5Core Qt5Gui Qt5Widgets`; \
-	    moc=`pkg-config --variable=host_bins Qt5Core`/moc; \
-	elif pkg-config --exists QtCore; then \
-	    cflags=`pkg-config --cflags QtCore QtGui`; \
-	    libs=`pkg-config --libs QtCore QtGui`; \
-	    moc=`pkg-config --variable=moc_location QtCore`; \
-	else \
-	    echo >&2 "*"; \
-	    echo >&2 "* Could not find Qt via pkg-config."; \
-	    echo >&2 "* Please install either Qt 4.8 or 5.x. and make sure it's in PKG_CONFIG_PATH"; \
-	    echo >&2 "*"; \
-	    exit 1; \
-	fi; \
-	echo "KC_QT_CFLAGS=$$cflags" > $@; \
-	echo "KC_QT_LIBS=$$libs" >> $@; \
-	echo "KC_QT_MOC=$$moc" >> $@
+	flex -L -o$@ $<
 endif
 
-#Define compiler flags to build qconf
-HOSTLOADLIBES_qconf	= $(KC_QT_LIBS)
-HOSTCXXFLAGS_qconf.o	= $(KC_QT_CFLAGS)
+$(foreach f, mconf.o $(lxdialog), \
+  $(eval $f: CFLAGS+=$$(HOSTCFLAGS_$f)))
 
-qconf.o: qconf.moc
-qconf.o: CXXFLAGS+=$(HOSTCXXFLAGS_qconf.o)
+$(obj)/lexer.lex.o: CFLAGS += $(HOSTCFLAGS_lexer.lex.o)
+$(obj)/parser.tab.o: CFLAGS += $(HOSTCFLAGS_parser.tab.o)
+$(obj)/qconf.o: CXXFLAGS+=$(HOSTCXXFLAGS_qconf.o)
+
+conf: $(conf-objs)
 
-moc = $(KC_QT_MOC) -i $< -o $@
+# The *conf-cfg file is used (then filtered out) as the first prerequisite to
+# avoid sourcing it before the script is built, when trying to compute CFLAGS
+# for the actual first prerequisite.  This avoids errors like:
+# '/bin/sh: ./mconf-cfg: No such file or directory'
+mconf: mconf-cfg $(mconf-objs)
+	$(CC) -o $@ $(filter-out mconf-cfg,$^) $(HOSTLDLIBS_mconf)
 
-%.moc: %.h .tmp_qtcheck
-	$(call moc)
+qconf: qconf-cfg $(qconf-cxxobjs) $(qconf-objs)
+	$(CXX) -o $@ $(filter-out qconf-cfg,$^) $(HOSTLDLIBS_qconf)
diff --git a/scripts/config/README b/scripts/config/README
index ea911be6a7..ac5f094ff2 100644
--- a/scripts/config/README
+++ b/scripts/config/README
@@ -1,2 +1,24 @@
-These files were taken from the Linux 3.9 Kernel
-Configuration System and modified for the OpenWrt Buildroot.
+These files were taken from the Linux Kernel Configuration System at commit
+089b7d890f972f6b649fedc9259f6b93a18fb970 (Feb 4, 2020) and modified for the
+OpenWrt Buildroot:
+ - removed nconf, gconf, tests and kernel configuration targets
+ - adjusted the Makefile to compile outside the kernel
+ - always use default file when running make all{no,mod,yes}config
+ - added a 'reset' command to reset config when the target changes
+ - allow config reading from & writing to a different file
+ - allow 'source' command to use globs to include multiple files
+ - don't write auto.conf and other files under include/ directory
+ - reverted a commit to allow use of '/' & '.' in unquoted config symbols.
+   There are too many of those in OpenWrt right now.
+ - reverted a commit that was issuing a warning when there were more than
+   one help text.  This is used in a few packages to use different texts
+   for the menuconfig help, and the ipkg package description.
+ - reverted an upstream change that avoids writing symbols that are not
+   visible to .config, which breaks OpenWrt busybox's '.config' generation
+   logic.
+ - use pre-built *.lex.c *.tab.[ch] files by default, to avoid depending on
+   flex & bison.  Rebuild/remove these files only if running make with
+   BUILD_SHIPPED_FILES defined
+
+For a full list of changes, see the repository at:
+https://github.com/cotequeiroz/linux/commits/openwrt/scripts/kconfig
diff --git a/scripts/config/conf.c b/scripts/config/conf.c
index cf20e0a216..eacd8ed25e 100644
--- a/scripts/config/conf.c
+++ b/scripts/config/conf.c
@@ -1,9 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
-#include <locale.h>
 #include <ctype.h>
 #include <limits.h>
 #include <stdio.h>
@@ -20,11 +19,10 @@
 
 static void conf(struct menu *menu);
 static void check_conf(struct menu *menu);
-static void xfgets(char *str, int size, FILE *in);
 
 enum input_mode {
 	oldaskconfig,
-	silentoldconfig,
+	syncconfig,
 	oldconfig,
 	allnoconfig,
 	allyesconfig,
@@ -34,12 +32,15 @@ enum input_mode {
 	defconfig,
 	savedefconfig,
 	listnewconfig,
+	helpnewconfig,
 	olddefconfig,
-} input_mode = oldaskconfig;
+	yes2modconfig,
+	mod2yesconfig,
+};
+static enum input_mode input_mode = oldaskconfig;
 
 static int indent = 1;
 static int tty_stdio;
-static int valid_stdin = 1;
 static int sync_kconfig;
 static int conf_cnt;
 static char line[PATH_MAX];
@@ -72,14 +73,14 @@ static void strip(char *str)
 		*p-- = 0;
 }
 
-static void check_stdin(void)
+/* Helper function to facilitate fgets() by Jean Sacren. */
+static void xfgets(char *str, int size, FILE *in)
 {
-	if (!valid_stdin) {
-	        printf("%s",_("aborted!\n\n"));
-		printf("%s",_("Console input/output is redirected. "));
-		printf("%s",_("Run 'make oldconfig' to update configuration.\n\n"));
-		exit(1);
-	}
+	if (!fgets(str, size, in))
+		fprintf(stderr, "\nError in reading or end of file.\n");
+
+	if (!tty_stdio)
+		printf("%s", str);
 }
 
 static int conf_askvalue(struct symbol *sym, const char *def)
@@ -87,12 +88,12 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 	enum symbol_type type = sym_get_type(sym);
 
 	if (!sym_has_value(sym))
-	        printf("%s",_("(NEW) "));
+		printf("(NEW) ");
 
 	line[0] = '\n';
 	line[1] = 0;
 
-	if (!sym_is_changable(sym)) {
+	if (!sym_is_changeable(sym)) {
 		printf("%s\n", def);
 		line[0] = '\n';
 		line[1] = 0;
@@ -101,18 +102,15 @@ static int conf_askvalue(struct symbol *sym, const char *def)
 
 	switch (input_mode) {
 	case oldconfig:
-	case silentoldconfig:
+	case syncconfig:
 		if (sym_has_value(sym)) {
 			printf("%s\n", def);
 			return 0;
 		}
-		check_stdin();
 		/* fall through */
 	case oldaskconfig:
 		fflush(stdout);
 		xfgets(line, sizeof(line), stdin);
-		if (!tty_stdio)
-			printf("\n");
 		return 1;
 	default:
 		break;
@@ -137,7 +135,7 @@ static int conf_string(struct menu *menu)
 	const char *def;
 
 	while (1) {
-		printf("%*s%s ", indent - 1, "", _(menu->prompt->text));
+		printf("%*s%s ", indent - 1, "", menu->prompt->text);
 		printf("(%s) ", sym->name);
 		def = sym_get_string_value(sym);
 		if (sym_get_string_value(sym))
@@ -170,7 +168,7 @@ static int conf_sym(struct menu *menu)
 	tristate oldval, newval;
 
 	while (1) {
-		printf("%*s%s ", indent - 1, "", _(menu->prompt->text));
+		printf("%*s%s ", indent - 1, "", menu->prompt->text);
 		if (sym->name)
 			printf("(%s) ", sym->name);
 		putchar('[');
@@ -192,9 +190,7 @@ static int conf_sym(struct menu *menu)
 			printf("/m");
 		if (oldval != yes && sym_tristate_within_range(sym, yes))
 			printf("/y");
-		if (menu_has_help(menu))
-			printf("/?");
-		printf("] ");
+		printf("/?] ");
 		if (!conf_askvalue(sym, sym_get_string_value(sym)))
 			return 0;
 		strip(line);
@@ -241,7 +237,7 @@ static int conf_choice(struct menu *menu)
 
 	sym = menu->sym;
 	is_new = !sym_has_value(sym);
-	if (sym_is_changable(sym)) {
+	if (sym_is_changeable(sym)) {
 		conf_sym(menu);
 		sym_calc_value(sym);
 		switch (sym_get_tristate_value(sym)) {
@@ -257,7 +253,7 @@ static int conf_choice(struct menu *menu)
 		case no:
 			return 1;
 		case mod:
-			printf("%*s%s\n", indent - 1, "", _(menu_get_prompt(menu)));
+			printf("%*s%s\n", indent - 1, "", menu_get_prompt(menu));
 			return 0;
 		case yes:
 			break;
@@ -267,7 +263,7 @@ static int conf_choice(struct menu *menu)
 	while (1) {
 		int cnt, def;
 
-		printf("%*s%s\n", indent - 1, "", _(menu_get_prompt(menu)));
+		printf("%*s%s\n", indent - 1, "", menu_get_prompt(menu));
 		def_sym = sym_get_choice_value(sym);
 		cnt = def = 0;
 		line[0] = 0;
@@ -275,7 +271,7 @@ static int conf_choice(struct menu *menu)
 			if (!menu_is_visible(child))
 				continue;
 			if (!child->sym) {
-				printf("%*c %s\n", indent, '*', _(menu_get_prompt(child)));
+				printf("%*c %s\n", indent, '*', menu_get_prompt(child));
 				continue;
 			}
 			cnt++;
@@ -284,31 +280,27 @@ static int conf_choice(struct menu *menu)
 				printf("%*c", indent, '>');
 			} else
 				printf("%*c", indent, ' ');
-			printf(" %d. %s", cnt, _(menu_get_prompt(child)));
+			printf(" %d. %s", cnt, menu_get_prompt(child));
 			if (child->sym->name)
 				printf(" (%s)", child->sym->name);
 			if (!sym_has_value(child->sym))
-			        printf("%s",_(" (NEW)"));
+				printf(" (NEW)");
 			printf("\n");
 		}
-		printf(_("%*schoice"), indent - 1, "");
+		printf("%*schoice", indent - 1, "");
 		if (cnt == 1) {
 			printf("[1]: 1\n");
 			goto conf_childs;
 		}
-		printf("[1-%d", cnt);
-		if (menu_has_help(menu))
-			printf("?");
-		printf("]: ");
+		printf("[1-%d?]: ", cnt);
 		switch (input_mode) {
 		case oldconfig:
-		case silentoldconfig:
+		case syncconfig:
 			if (!is_new) {
 				cnt = def;
 				printf("%d\n", cnt);
 				break;
 			}
-			check_stdin();
 			/* fall through */
 		case oldaskconfig:
 			fflush(stdout);
@@ -368,10 +360,11 @@ static void conf(struct menu *menu)
 
 		switch (prop->type) {
 		case P_MENU:
-			if ((input_mode == silentoldconfig ||
-			     input_mode == listnewconfig ||
-			     input_mode == olddefconfig) &&
-			    rootEntry != menu) {
+			/*
+			 * Except in oldaskconfig mode, we show only menus that
+			 * contain new symbols.
+			 */
+			if (input_mode != oldaskconfig && rootEntry != menu) {
 				check_conf(menu);
 				return;
 			}
@@ -381,7 +374,7 @@ static void conf(struct menu *menu)
 			if (prompt)
 				printf("%*c\n%*c %s\n%*c\n",
 					indent, '*',
-					indent, '*', _(prompt),
+					indent, '*', prompt,
 					indent, '*');
 		default:
 			;
@@ -428,15 +421,30 @@ static void check_conf(struct menu *menu)
 
 	sym = menu->sym;
 	if (sym && !sym_has_value(sym)) {
-		if (sym_is_changable(sym) ||
+		if (sym_is_changeable(sym) ||
 		    (sym_is_choice(sym) && sym_get_tristate_value(sym) == yes)) {
 			if (input_mode == listnewconfig) {
-				if (sym->name && !sym_is_choice_value(sym)) {
-					printf("%s%s\n", CONFIG_, sym->name);
+				if (sym->name) {
+					const char *str;
+
+					if (sym->type == S_STRING) {
+						str = sym_get_string_value(sym);
+						str = sym_escape_string_value(str);
+						printf("%s%s=%s\n", CONFIG_, sym->name, str);
+						free((void *)str);
+					} else {
+						str = sym_get_string_value(sym);
+						printf("%s%s=%s\n", CONFIG_, sym->name, str);
+					}
 				}
-			} else if (input_mode != olddefconfig) {
+			} else if (input_mode == helpnewconfig) {
+				printf("-----\n");
+				print_help(menu);
+				printf("-----\n");
+
+			} else {
 				if (!conf_cnt++)
-				        printf("%s",_("*\n* Restart config...\n*\n"));
+					printf("*\n* Restart config...\n*\n");
 				rootEntry = menu_get_parent_menu(menu);
 				conf(rootEntry);
 			}
@@ -450,8 +458,8 @@ static void check_conf(struct menu *menu)
 static struct option long_opts[] = {
 	{"oldaskconfig",    no_argument,       NULL, oldaskconfig},
 	{"oldconfig",       no_argument,       NULL, oldconfig},
-	{"silentoldconfig", no_argument,       NULL, silentoldconfig},
-	{"defconfig",       optional_argument, NULL, defconfig},
+	{"syncconfig",      no_argument,       NULL, syncconfig},
+	{"defconfig",       required_argument, NULL, defconfig},
 	{"savedefconfig",   required_argument, NULL, savedefconfig},
 	{"allnoconfig",     no_argument,       NULL, allnoconfig},
 	{"allyesconfig",    no_argument,       NULL, allyesconfig},
@@ -459,13 +467,10 @@ static struct option long_opts[] = {
 	{"alldefconfig",    no_argument,       NULL, alldefconfig},
 	{"randconfig",      no_argument,       NULL, randconfig},
 	{"listnewconfig",   no_argument,       NULL, listnewconfig},
+	{"helpnewconfig",   no_argument,       NULL, helpnewconfig},
 	{"olddefconfig",    no_argument,       NULL, olddefconfig},
-	/*
-	 * oldnoconfig is an alias of olddefconfig, because people already
-	 * are dependent on its behavior(sets new symbols to their default
-	 * value but not 'n') with the counter-intuitive name.
-	 */
-	{"oldnoconfig",     no_argument,       NULL, olddefconfig},
+	{"yes2modconfig",   no_argument,       NULL, yes2modconfig},
+	{"mod2yesconfig",   no_argument,       NULL, mod2yesconfig},
 	{NULL, 0, NULL, 0}
 };
 
@@ -475,11 +480,12 @@ static void conf_usage(const char *progname)
 	printf("Usage: %s [-s] [option] <kconfig-file>\n", progname);
 	printf("[option] is _one_ of the following:\n");
 	printf("  --listnewconfig         List new options\n");
+	printf("  --helpnewconfig         List new options and help text\n");
 	printf("  --oldaskconfig          Start a new configuration using a line-oriented program\n");
 	printf("  --oldconfig             Update a configuration using a provided .config as base\n");
-	printf("  --silentoldconfig       Same as oldconfig, but quietly, additionally update deps\n");
-	printf("  --olddefconfig          Same as silentoldconfig but sets new symbols to their default value\n");
-	printf("  --oldnoconfig           An alias of olddefconfig\n");
+	printf("  --syncconfig            Similar to oldconfig but generates configuration in\n"
+	       "                          include/{generated/,config/}\n");
+	printf("  --olddefconfig          Same as oldconfig but sets new symbols to their default value\n");
 	printf("  --defconfig <file>      New config with default defined in <file>\n");
 	printf("  --savedefconfig <file>  Save the minimal current configuration to <file>\n");
 	printf("  --allnoconfig           New config where all options are answered with no\n");
@@ -487,6 +493,8 @@ static void conf_usage(const char *progname)
 	printf("  --allmodconfig          New config where all options are answered with mod\n");
 	printf("  --alldefconfig          New config with all symbols set to default\n");
 	printf("  --randconfig            New config with random answer to all options\n");
+	printf("  --yes2modconfig         Change answers from yes to mod if possible\n");
+	printf("  --mod2yesconfig         Change answers from mod to yes if possible\n");
 }
 
 int main(int ac, char **av)
@@ -494,14 +502,10 @@ int main(int ac, char **av)
 	const char *progname = av[0];
 	int opt;
 	const char *name, *defconfig_file = NULL /* gcc uninit */;
-	struct stat tmpstat;
 	const char *input_file = NULL, *output_file = NULL;
+	int no_conf_write = 0;
 
-	setlocale(LC_ALL, "");
-	bindtextdomain(PACKAGE, LOCALEDIR);
-	textdomain(PACKAGE);
-
-	tty_stdio = isatty(0) && isatty(1) && isatty(2);
+	tty_stdio = isatty(0) && isatty(1);
 
 	while ((opt = getopt_long(ac, av, "r:w:s", long_opts, NULL)) != -1) {
 		if (opt == 's') {
@@ -509,7 +513,12 @@ int main(int ac, char **av)
 			continue;
 		}
 		switch (opt) {
-		case silentoldconfig:
+		case syncconfig:
+			/*
+			 * syncconfig is invoked during the build stage.
+			 * Suppress distracting "configuration written to ..."
+			 */
+			conf_set_message_callback(NULL);
 			sync_kconfig = 1;
 			break;
 		case defconfig:
@@ -548,7 +557,10 @@ int main(int ac, char **av)
 		case allmodconfig:
 		case alldefconfig:
 		case listnewconfig:
+		case helpnewconfig:
 		case olddefconfig:
+		case yes2modconfig:
+		case mod2yesconfig:
 			break;
 		case 'r':
 			input_file = optarg;
@@ -564,43 +576,34 @@ int main(int ac, char **av)
 		input_mode = (enum input_mode)opt;
 	}
 	if (ac == optind) {
-		printf(_("%s: Kconfig file missing\n"), av[0]);
+		fprintf(stderr, "%s: Kconfig file missing\n", av[0]);
 		conf_usage(progname);
 		exit(1);
 	}
 	name = av[optind];
 	conf_parse(name);
 	//zconfdump(stdout);
-	if (sync_kconfig) {
-		name = conf_get_configname();
-		if (stat(name, &tmpstat)) {
-			fprintf(stderr, _("***\n"
-				"*** Configuration file \"%s\" not found!\n"
-				"***\n"
-				"*** Please run some configurator (e.g. \"make oldconfig\" or\n"
-				"*** \"make menuconfig\" or \"make xconfig\").\n"
-				"***\n"), name);
-			exit(1);
-		}
-	}
 
 	switch (input_mode) {
 	case defconfig:
-		if (!defconfig_file)
-			defconfig_file = conf_get_default_confname();
 		if (conf_read(defconfig_file)) {
-			printf(_("***\n"
-				"*** Can't find default configuration \"%s\"!\n"
-				"***\n"), defconfig_file);
+			fprintf(stderr,
+				"***\n"
+				  "*** Can't find default configuration \"%s\"!\n"
+				  "***\n",
+				defconfig_file);
 			exit(1);
 		}
 		break;
 	case savedefconfig:
-	case silentoldconfig:
+	case syncconfig:
 	case oldaskconfig:
 	case oldconfig:
 	case listnewconfig:
+	case helpnewconfig:
 	case olddefconfig:
+	case yes2modconfig:
+	case mod2yesconfig:
 	case allnoconfig:
 	case allyesconfig:
 	case allmodconfig:
@@ -613,15 +616,15 @@ int main(int ac, char **av)
 	}
 
 	if (sync_kconfig) {
-		if (conf_get_changed()) {
-			name = getenv("KCONFIG_NOSILENTUPDATE");
-			if (name && *name) {
+		name = getenv("KCONFIG_NOSILENTUPDATE");
+		if (name && *name) {
+			if (conf_get_changed()) {
 				fprintf(stderr,
-					_("\n*** The configuration requires explicit update.\n\n"));
+					"\n*** The configuration requires explicit update.\n\n");
 				return 1;
 			}
+			no_conf_write = 1;
 		}
-		valid_stdin = tty_stdio;
 	}
 
 	switch (input_mode) {
@@ -646,58 +649,59 @@ int main(int ac, char **av)
 		break;
 	case savedefconfig:
 		break;
+	case yes2modconfig:
+		conf_rewrite_mod_or_yes(def_y2m);
+		break;
+	case mod2yesconfig:
+		conf_rewrite_mod_or_yes(def_m2y);
+		break;
 	case oldaskconfig:
 		rootEntry = &rootmenu;
 		conf(&rootmenu);
-		input_mode = silentoldconfig;
+		input_mode = oldconfig;
 		/* fall through */
 	case oldconfig:
 	case listnewconfig:
-	case olddefconfig:
-	case silentoldconfig:
+	case helpnewconfig:
+	case syncconfig:
 		/* Update until a loop caused no more changes */
 		do {
 			conf_cnt = 0;
 			check_conf(&rootmenu);
-		} while (conf_cnt &&
-			 (input_mode != listnewconfig &&
-			  input_mode != olddefconfig));
+		} while (conf_cnt);
+		break;
+	case olddefconfig:
+	default:
 		break;
 	}
 
-	if (sync_kconfig) {
-		/* silentoldconfig is used during the build so we shall update autoconf.
-		 * All other commands are only used to generate a config.
-		 */
-		if ((output_file || conf_get_changed()) &&
-		    conf_write(output_file)) {
-			fprintf(stderr, _("\n*** Error during writing of the configuration.\n\n"));
-			exit(1);
-		}
-		if (conf_write_autoconf()) {
-			fprintf(stderr, _("\n*** Error during update of the configuration.\n\n"));
-			return 1;
-		}
-	} else if (input_mode == savedefconfig) {
+	if (input_mode == savedefconfig) {
 		if (conf_write_defconfig(defconfig_file)) {
-			fprintf(stderr, _("n*** Error while saving defconfig to: %s\n\n"),
+			fprintf(stderr, "n*** Error while saving defconfig to: %s\n\n",
 				defconfig_file);
 			return 1;
 		}
-	} else if (input_mode != listnewconfig) {
-		if (conf_write(output_file)) {
-			fprintf(stderr, _("\n*** Error during writing of the configuration.\n\n"));
+	} else if (input_mode != listnewconfig && input_mode != helpnewconfig) {
+		if ((output_file || !no_conf_write) &&
+		    conf_write(output_file)) {
+			fprintf(stderr, "\n*** Error during writing of the configuration.\n\n");
 			exit(1);
 		}
+
+		/*
+		 * Create auto.conf if it does not exist.
+		 * This prevents GNU Make 4.1 or older from emitting
+		 * "include/config/auto.conf: No such file or directory"
+		 * in the top-level Makefile
+		 *
+		 * syncconfig always creates or updates auto.conf because it is
+		 * used during the build.
+		 */
+		if (conf_write_autoconf(sync_kconfig) && sync_kconfig) {
+			fprintf(stderr,
+				"\n*** Error during sync of the configuration.\n\n");
+			return 1;
+		}
 	}
 	return 0;
 }
-
-/*
- * Helper function to facilitate fgets() by Jean Sacren.
- */
-void xfgets(char *str, int size, FILE *in)
-{
-	if (fgets(str, size, in) == NULL)
-		fprintf(stderr, "\nError in reading or end of file.\n");
-}
diff --git a/scripts/config/confdata.c b/scripts/config/confdata.c
index 3a3a4bff43..b696dda5e0 100644
--- a/scripts/config/confdata.c
+++ b/scripts/config/confdata.c
@@ -1,12 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
+#include <sys/mman.h>
 #include <sys/stat.h>
 #include <ctype.h>
 #include <errno.h>
 #include <fcntl.h>
+#include <limits.h>
 #include <stdarg.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -16,6 +18,151 @@
 
 #include "lkc.h"
 
+/* return true if 'path' exists, false otherwise */
+static bool is_present(const char *path)
+{
+	struct stat st;
+
+	return !stat(path, &st);
+}
+
+/* return true if 'path' exists and it is a directory, false otherwise */
+static bool is_dir(const char *path)
+{
+	struct stat st;
+
+	if (stat(path, &st))
+		return 0;
+
+	return S_ISDIR(st.st_mode);
+}
+
+/* return true if the given two files are the same, false otherwise */
+static bool is_same(const char *file1, const char *file2)
+{
+	int fd1, fd2;
+	struct stat st1, st2;
+	void *map1, *map2;
+	bool ret = false;
+
+	fd1 = open(file1, O_RDONLY);
+	if (fd1 < 0)
+		return ret;
+
+	fd2 = open(file2, O_RDONLY);
+	if (fd2 < 0)
+		goto close1;
+
+	ret = fstat(fd1, &st1);
+	if (ret)
+		goto close2;
+	ret = fstat(fd2, &st2);
+	if (ret)
+		goto close2;
+
+	if (st1.st_size != st2.st_size)
+		goto close2;
+
+	map1 = mmap(NULL, st1.st_size, PROT_READ, MAP_PRIVATE, fd1, 0);
+	if (map1 == MAP_FAILED)
+		goto close2;
+
+	map2 = mmap(NULL, st2.st_size, PROT_READ, MAP_PRIVATE, fd2, 0);
+	if (map2 == MAP_FAILED)
+		goto close2;
+
+	if (bcmp(map1, map2, st1.st_size))
+		goto close2;
+
+	ret = true;
+close2:
+	close(fd2);
+close1:
+	close(fd1);
+
+	return ret;
+}
+
+/*
+ * Create the parent directory of the given path.
+ *
+ * For example, if 'include/config/auto.conf' is given, create 'include/config'.
+ */
+static int make_parent_dir(const char *path)
+{
+	char tmp[PATH_MAX + 1];
+	char *p;
+
+	strncpy(tmp, path, sizeof(tmp));
+	tmp[sizeof(tmp) - 1] = 0;
+
+	/* Remove the base name. Just return if nothing is left */
+	p = strrchr(tmp, '/');
+	if (!p)
+		return 0;
+	*(p + 1) = 0;
+
+	/* Just in case it is an absolute path */
+	p = tmp;
+	while (*p == '/')
+		p++;
+
+	while ((p = strchr(p, '/'))) {
+		*p = 0;
+
+		/* skip if the directory exists */
+		if (!is_dir(tmp) && mkdir(tmp, 0755))
+			return -1;
+
+		*p = '/';
+		while (*p == '/')
+			p++;
+	}
+
+	return 0;
+}
+
+static char depfile_path[PATH_MAX];
+static size_t depfile_prefix_len;
+
+/* touch depfile for symbol 'name' */
+static int conf_touch_dep(const char *name)
+{
+	int fd, ret;
+	const char *s;
+	char *d, c;
+
+	/* check overflow: prefix + name + ".h" + '\0' must fit in buffer. */
+	if (depfile_prefix_len + strlen(name) + 3 > sizeof(depfile_path))
+		return -1;
+
+	d = depfile_path + depfile_prefix_len;
+	s = name;
+
+	while ((c = *s++))
+		*d++ = (c == '_') ? '/' : tolower(c);
+	strcpy(d, ".h");
+
+	/* Assume directory path already exists. */
+	fd = open(depfile_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
+	if (fd == -1) {
+		if (errno != ENOENT)
+			return -1;
+
+		ret = make_parent_dir(depfile_path);
+		if (ret)
+			return ret;
+
+		/* Try it again. */
+		fd = open(depfile_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
+		if (fd == -1)
+			return -1;
+	}
+	close(fd);
+
+	return 0;
+}
+
 struct conf_printer {
 	void (*print_symbol)(FILE *, struct symbol *, const char *, void *);
 	void (*print_comment)(FILE *, const char *, void *);
@@ -28,9 +175,7 @@ static void conf_message(const char *fmt, ...)
 	__attribute__ ((format (printf, 1, 2)));
 
 static const char *conf_filename;
-static int conf_lineno, conf_warnings, conf_unsaved;
-
-const char conf_defname[] = "arch/$ARCH/defconfig";
+static int conf_lineno, conf_warnings;
 
 static void conf_warning(const char *fmt, ...)
 {
@@ -43,16 +188,16 @@ static void conf_warning(const char *fmt, ...)
 	conf_warnings++;
 }
 
-static void conf_default_message_callback(const char *fmt, va_list ap)
+static void conf_default_message_callback(const char *s)
 {
 	printf("#\n# ");
-	vprintf(fmt, ap);
+	printf("%s", s);
 	printf("\n#\n");
 }
 
-static void (*conf_message_callback) (const char *fmt, va_list ap) =
+static void (*conf_message_callback)(const char *s) =
 	conf_default_message_callback;
-void conf_set_message_callback(void (*fn) (const char *fmt, va_list ap))
+void conf_set_message_callback(void (*fn)(const char *s))
 {
 	conf_message_callback = fn;
 }
@@ -60,10 +205,15 @@ void conf_set_message_callback(void (*fn) (const char *fmt, va_list ap))
 static void conf_message(const char *fmt, ...)
 {
 	va_list ap;
+	char buf[4096];
+
+	if (!conf_message_callback)
+		return;
 
 	va_start(ap, fmt);
-	if (conf_message_callback)
-		conf_message_callback(fmt, ap);
+
+	vsnprintf(buf, sizeof(buf), fmt, ap);
+	conf_message_callback(buf);
 	va_end(ap);
 }
 
@@ -74,55 +224,13 @@ const char *conf_get_configname(void)
 	return name ? name : ".config";
 }
 
-const char *conf_get_autoconfig_name(void)
+static const char *conf_get_autoconfig_name(void)
 {
 	char *name = getenv("KCONFIG_AUTOCONFIG");
 
 	return name ? name : "include/config/auto.conf";
 }
 
-static char *conf_expand_value(const char *in)
-{
-	struct symbol *sym;
-	const char *src;
-	static char res_value[SYMBOL_MAXLENGTH];
-	char *dst, name[SYMBOL_MAXLENGTH];
-
-	res_value[0] = 0;
-	dst = name;
-	while ((src = strchr(in, '$'))) {
-		strncat(res_value, in, src - in);
-		src++;
-		dst = name;
-		while (isalnum(*src) || *src == '_')
-			*dst++ = *src++;
-		*dst = 0;
-		sym = sym_lookup(name, 0);
-		sym_calc_value(sym);
-		strcat(res_value, sym_get_string_value(sym));
-		in = src;
-	}
-	strcat(res_value, in);
-
-	return res_value;
-}
-
-char *conf_get_default_confname(void)
-{
-	struct stat buf;
-	static char fullname[PATH_MAX+1];
-	char *env, *name;
-
-	name = conf_expand_value(conf_defname);
-	env = getenv(SRCTREE);
-	if (env) {
-		sprintf(fullname, "%s/%s", env, name);
-		if (!stat(fullname, &buf))
-			return fullname;
-	}
-	return name;
-}
-
 static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 {
 	char *p2;
@@ -150,14 +258,6 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 			conf_warning("symbol value '%s' invalid for %s",
 				     p, sym->name);
 		return 1;
-	case S_OTHER:
-		if (*p != '"') {
-			for (p2 = p; *p2 && !isspace(*p2); p2++)
-				;
-			sym->type = S_STRING;
-			goto done;
-		}
-		/* fall through */
 	case S_STRING:
 		if (*p++ != '"')
 			break;
@@ -176,9 +276,8 @@ static int conf_set_sym_val(struct symbol *sym, int def, int def_flags, char *p)
 		/* fall through */
 	case S_INT:
 	case S_HEX:
-	done:
 		if (sym_string_valid(sym, p)) {
-			sym->def[def].val = strdup(p);
+			sym->def[def].val = xstrdup(p);
 			sym->flags |= def_flags;
 		} else {
 			if (def != S_DEF_AUTO)
@@ -201,7 +300,7 @@ static int add_byte(int c, char **lineptr, size_t slen, size_t *n)
 	if (new_size > *n) {
 		new_size += LINE_GROWTH - 1;
 		new_size *= 2;
-		nline = realloc(*lineptr, new_size);
+		nline = xrealloc(*lineptr, new_size);
 		if (!nline)
 			return -1;
 
@@ -299,10 +398,11 @@ int conf_read_simple(const char *name, int def)
 			if (expr_calc_value(prop->visible.expr) == no ||
 			    prop->expr->type != E_SYMBOL)
 				continue;
-			name = conf_expand_value(prop->expr->left.sym->name);
+			sym_calc_value(prop->expr->left.sym);
+			name = sym_get_string_value(prop->expr->left.sym);
 			in = zconf_fopen(name);
 			if (in) {
-				conf_message(_("using defaults found in %s"),
+				conf_message("using defaults found in %s",
 					 name);
 				goto load;
 			}
@@ -315,7 +415,6 @@ load:
 	conf_filename = name;
 	conf_lineno = 0;
 	conf_warnings = 0;
-	conf_unsaved = 0;
 
 	def_flags = SYMBOL_DEF << def;
 	conf_reset(def);
@@ -336,7 +435,7 @@ load:
 				sym = sym_find(line + 2 + strlen(CONFIG_));
 				if (!sym) {
 					sym_add_change_count(1);
-					goto setsym;
+					continue;
 				}
 			} else {
 				sym = sym_lookup(line + 2 + strlen(CONFIG_), 0);
@@ -363,17 +462,22 @@ load:
 				if (*p2 == '\r')
 					*p2 = 0;
 			}
-			if (def == S_DEF_USER) {
-				sym = sym_find(line + strlen(CONFIG_));
-				if (!sym) {
+
+			sym = sym_find(line + strlen(CONFIG_));
+			if (!sym) {
+				if (def == S_DEF_AUTO)
+					/*
+					 * Reading from include/config/auto.conf
+					 * If CONFIG_FOO previously existed in
+					 * auto.conf but it is missing now,
+					 * include/config/foo.h must be touched.
+					 */
+					conf_touch_dep(line + strlen(CONFIG_));
+				else
 					sym_add_change_count(1);
-					goto setsym;
-				}
-			} else {
-				sym = sym_lookup(line + strlen(CONFIG_), 0);
-				if (sym->type == S_UNKNOWN)
-					sym->type = S_OTHER;
+				continue;
 			}
+
 			if (conf_set_sym_val(sym, def, def_flags, p))
 				continue;
 		} else {
@@ -383,7 +487,7 @@ load:
 
 			continue;
 		}
-setsym:
+
 		if (sym && sym_is_choice_value(sym)) {
 			struct symbol *cs = prop_get_symbol(sym_get_choice_prop(sym));
 			switch (sym->def[def].tri) {
@@ -412,6 +516,7 @@ setsym:
 int conf_read(const char *name)
 {
 	struct symbol *sym;
+	int conf_unsaved = 0;
 	int i;
 
 	sym_set_change_count(0);
@@ -425,18 +530,16 @@ int conf_read(const char *name)
 
 	for_all_symbols(i, sym) {
 		sym_calc_value(sym);
-		if (sym_is_choice(sym) || (sym->flags & SYMBOL_AUTO))
+		if (sym_is_choice(sym) || (sym->flags & SYMBOL_NO_WRITE))
 			continue;
 		if (sym_has_value(sym) && (sym->flags & SYMBOL_WRITE)) {
 			/* check that calculated value agrees with saved value */
 			switch (sym->type) {
 			case S_BOOLEAN:
 			case S_TRISTATE:
-				if (sym->def[S_DEF_USER].tri != sym_get_tristate_value(sym))
-					break;
-				if (!sym_is_choice(sym))
+				if (sym->def[S_DEF_USER].tri == sym_get_tristate_value(sym))
 					continue;
-				/* fall through */
+				break;
 			default:
 				if (!strcmp(sym->curr.val, sym->def[S_DEF_USER].val))
 					continue;
@@ -610,32 +713,12 @@ static struct conf_printer header_printer_cb =
 	.print_comment = header_print_comment,
 };
 
-/*
- * Tristate printer
- *
- * This printer is used when generating the `include/config/tristate.conf' file.
- */
-static void
-tristate_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
-{
-
-	if (sym->type == S_TRISTATE && *value != 'n')
-		fprintf(fp, "%s%s=%c\n", CONFIG_, sym->name, (char)toupper(*value));
-}
-
-static struct conf_printer tristate_printer_cb =
-{
-	.print_symbol = tristate_print_symbol,
-	.print_comment = kconfig_print_comment,
-};
-
 static void conf_write_symbol(FILE *fp, struct symbol *sym,
 			      struct conf_printer *printer, void *printer_arg)
 {
 	const char *str;
 
 	switch (sym->type) {
-	case S_OTHER:
 	case S_UNKNOWN:
 		break;
 	case S_STRING:
@@ -695,7 +778,7 @@ int conf_write_defconfig(const char *filename)
 				goto next_menu;
 			sym->flags &= ~SYMBOL_WRITE;
 			/* If we cannot change the symbol - skip */
-			if (!sym_is_changable(sym))
+			if (!sym_is_changeable(sym))
 				goto next_menu;
 			/* If symbol equals to default value - skip */
 			if (strcmp(sym_get_string_value(sym), sym_get_string_default(sym)) == 0)
@@ -746,41 +829,36 @@ int conf_write(const char *name)
 	FILE *out;
 	struct symbol *sym;
 	struct menu *menu;
-	const char *basename;
 	const char *str;
-	char dirname[PATH_MAX+1], tmpname[PATH_MAX+1], newname[PATH_MAX+1];
+	char tmpname[PATH_MAX + 1], oldname[PATH_MAX + 1];
 	char *env;
+	int i;
+	bool need_newline = false;
+
+	if (!name)
+		name = conf_get_configname();
+
+	if (!*name) {
+		fprintf(stderr, "config name is empty\n");
+		return -1;
+	}
+
+	if (is_dir(name)) {
+		fprintf(stderr, "%s: Is a directory\n", name);
+		return -1;
+	}
+
+	if (make_parent_dir(name))
+		return -1;
 
-	dirname[0] = 0;
-	if (name && name[0]) {
-		struct stat st;
-		char *slash;
-
-		if (!stat(name, &st) && S_ISDIR(st.st_mode)) {
-			strcpy(dirname, name);
-			strcat(dirname, "/");
-			basename = conf_get_configname();
-		} else if ((slash = strrchr(name, '/'))) {
-			int size = slash - name + 1;
-			memcpy(dirname, name, size);
-			dirname[size] = 0;
-			if (slash[1])
-				basename = slash + 1;
-			else
-				basename = conf_get_configname();
-		} else
-			basename = name;
-	} else
-		basename = conf_get_configname();
-
-	sprintf(newname, "%s%s", dirname, basename);
 	env = getenv("KCONFIG_OVERWRITECONFIG");
-	if (!env || !*env) {
-		sprintf(tmpname, "%s.tmpconfig.%d", dirname, (int)getpid());
-		out = fopen(tmpname, "w");
-	} else {
+	if (env && *env) {
 		*tmpname = 0;
-		out = fopen(newname, "w");
+		out = fopen(name, "w");
+	} else {
+		snprintf(tmpname, sizeof(tmpname), "%s.%d.tmp",
+			 name, (int)getpid());
+		out = fopen(tmpname, "w");
 	}
 	if (!out)
 		return 1;
@@ -801,12 +879,17 @@ int conf_write(const char *name)
 				     "#\n"
 				     "# %s\n"
 				     "#\n", str);
-		} else if (!(sym->flags & SYMBOL_CHOICE)) {
+			need_newline = false;
+		} else if (!(sym->flags & SYMBOL_CHOICE) &&
+			   !(sym->flags & SYMBOL_WRITTEN)) {
 			sym_calc_value(sym);
 			if (!(sym->flags & SYMBOL_WRITE))
 				goto next;
-			sym->flags &= ~SYMBOL_WRITE;
-
+			if (need_newline) {
+				fprintf(out, "\n");
+				need_newline = false;
+			}
+			sym->flags |= SYMBOL_WRITTEN;
 			conf_write_symbol(out, sym, &kconfig_printer_cb, NULL);
 		}
 
@@ -818,6 +901,12 @@ next:
 		if (menu->next)
 			menu = menu->next;
 		else while ((menu = menu->parent)) {
+			if (!menu->sym && menu_is_visible(menu) &&
+			    menu != &rootmenu) {
+				str = menu_get_prompt(menu);
+				fprintf(out, "# end of %s\n", str);
+				need_newline = true;
+			}
 			if (menu->next) {
 				menu = menu->next;
 				break;
@@ -826,41 +915,76 @@ next:
 	}
 	fclose(out);
 
+	for_all_symbols(i, sym)
+		sym->flags &= ~SYMBOL_WRITTEN;
+
 	if (*tmpname) {
-		strcat(dirname, basename);
-		strcat(dirname, ".old");
-		rename(newname, dirname);
-		if (rename(tmpname, newname))
+		if (is_same(name, tmpname)) {
+			conf_message("No change to %s", name);
+			unlink(tmpname);
+			sym_set_change_count(0);
+			return 0;
+		}
+
+		snprintf(oldname, sizeof(oldname), "%s.old", name);
+		rename(name, oldname);
+		if (rename(tmpname, name))
 			return 1;
 	}
 
-	conf_message(_("configuration written to %s"), newname);
+	conf_message("configuration written to %s", name);
 
 	sym_set_change_count(0);
 
 	return 0;
 }
 
-static int conf_split_config(void)
+/* write a dependency file as used by kbuild to track dependencies */
+static int conf_write_dep(const char *name)
+{
+	struct file *file;
+	FILE *out;
+
+	out = fopen("..config.tmp", "w");
+	if (!out)
+		return 1;
+	fprintf(out, "deps_config := \\\n");
+	for (file = file_list; file; file = file->next) {
+		if (file->next)
+			fprintf(out, "\t%s \\\n", file->name);
+		else
+			fprintf(out, "\t%s\n", file->name);
+	}
+	fprintf(out, "\n%s: \\\n"
+		     "\t$(deps_config)\n\n", conf_get_autoconfig_name());
+
+	env_write_dep(out, conf_get_autoconfig_name());
+
+	fprintf(out, "\n$(deps_config): ;\n");
+	fclose(out);
+
+	if (make_parent_dir(name))
+		return 1;
+	rename("..config.tmp", name);
+	return 0;
+}
+
+static int conf_touch_deps(void)
 {
 	const char *name;
-	char path[PATH_MAX+1];
-	char *s, *d, c;
 	struct symbol *sym;
-	struct stat sb;
-	int res, i, fd;
+	int res, i;
+
+	strcpy(depfile_path, "include/config/");
+	depfile_prefix_len = strlen(depfile_path);
 
 	name = conf_get_autoconfig_name();
 	conf_read_simple(name, S_DEF_AUTO);
 	sym_calc_value(modules_sym);
 
-	if (chdir("include/config"))
-		return 1;
-
-	res = 0;
 	for_all_symbols(i, sym) {
 		sym_calc_value(sym);
-		if ((sym->flags & SYMBOL_AUTO) || !sym->name)
+		if ((sym->flags & SYMBOL_NO_WRITE) || !sym->name)
 			continue;
 		if (sym->flags & SYMBOL_WRITE) {
 			if (sym->flags & SYMBOL_DEF_AUTO) {
@@ -909,86 +1033,44 @@ static int conf_split_config(void)
 		 *	different from 'no').
 		 */
 
-		/* Replace all '_' and append ".h" */
-		s = sym->name;
-		d = path;
-		while ((c = *s++)) {
-			c = tolower(c);
-			*d++ = (c == '_') ? '/' : c;
-		}
-		strcpy(d, ".h");
-
-		/* Assume directory path already exists. */
-		fd = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-		if (fd == -1) {
-			if (errno != ENOENT) {
-				res = 1;
-				break;
-			}
-			/*
-			 * Create directory components,
-			 * unless they exist already.
-			 */
-			d = path;
-			while ((d = strchr(d, '/'))) {
-				*d = 0;
-				if (stat(path, &sb) && mkdir(path, 0755)) {
-					res = 1;
-					goto out;
-				}
-				*d++ = '/';
-			}
-			/* Try it again. */
-			fd = open(path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-			if (fd == -1) {
-				res = 1;
-				break;
-			}
-		}
-		close(fd);
+		res = conf_touch_dep(sym->name);
+		if (res)
+			return res;
 	}
-out:
-	if (chdir("../.."))
-		return 1;
 
-	return res;
+	return 0;
 }
 
-int conf_write_autoconf(void)
+int conf_write_autoconf(int overwrite)
 {
 	struct symbol *sym;
 	const char *name;
-	FILE *out, *tristate, *out_h;
+	const char *autoconf_name = conf_get_autoconfig_name();
+	FILE *out, *out_h;
 	int i;
 
-	sym_clear_all_valid();
+#ifndef OPENWRT_DOES_NOT_WANT_THIS
+	return 0;
+#endif
+	if (!overwrite && is_present(autoconf_name))
+		return 0;
 
-	file_write_dep("include/config/auto.conf.cmd");
+	conf_write_dep("include/config/auto.conf.cmd");
 
-	if (conf_split_config())
+	if (conf_touch_deps())
 		return 1;
 
 	out = fopen(".tmpconfig", "w");
 	if (!out)
 		return 1;
 
-	tristate = fopen(".tmpconfig_tristate", "w");
-	if (!tristate) {
-		fclose(out);
-		return 1;
-	}
-
 	out_h = fopen(".tmpconfig.h", "w");
 	if (!out_h) {
 		fclose(out);
-		fclose(tristate);
 		return 1;
 	}
 
 	conf_write_heading(out, &kconfig_printer_cb, NULL);
-
-	conf_write_heading(tristate, &tristate_printer_cb, NULL);
-
 	conf_write_heading(out_h, &header_printer_cb, NULL);
 
 	for_all_symbols(i, sym) {
@@ -996,33 +1078,28 @@ int conf_write_autoconf(void)
 		if (!(sym->flags & SYMBOL_WRITE) || !sym->name)
 			continue;
 
-		/* write symbol to auto.conf, tristate and header files */
+		/* write symbols to auto.conf and autoconf.h */
 		conf_write_symbol(out, sym, &kconfig_printer_cb, (void *)1);
-
-		conf_write_symbol(tristate, sym, &tristate_printer_cb, (void *)1);
-
 		conf_write_symbol(out_h, sym, &header_printer_cb, NULL);
 	}
 	fclose(out);
-	fclose(tristate);
 	fclose(out_h);
 
 	name = getenv("KCONFIG_AUTOHEADER");
 	if (!name)
 		name = "include/generated/autoconf.h";
+	if (make_parent_dir(name))
+		return 1;
 	if (rename(".tmpconfig.h", name))
 		return 1;
-	name = getenv("KCONFIG_TRISTATE");
-	if (!name)
-		name = "include/config/tristate.conf";
-	if (rename(".tmpconfig_tristate", name))
+
+	if (make_parent_dir(autoconf_name))
 		return 1;
-	name = conf_get_autoconfig_name();
 	/*
 	 * This must be the last step, kbuild has a dependency on auto.conf
 	 * and this marks the successful completion of the previous steps.
 	 */
-	if (rename(".tmpconfig", name))
+	if (rename(".tmpconfig", autoconf_name))
 		return 1;
 
 	return 0;
@@ -1126,7 +1203,7 @@ void set_all_choice_values(struct symbol *csym)
 bool conf_set_all_new_symbols(enum conf_def_mode mode)
 {
 	struct symbol *sym, *csym;
-	int i, cnt, pby, pty, ptm;	/* pby: probability of boolean  = y
+	int i, cnt, pby, pty, ptm;	/* pby: probability of bool     = y
 					 * pty: probability of tristate = y
 					 * ptm: probability of tristate = m
 					 */
@@ -1250,3 +1327,19 @@ bool conf_set_all_new_symbols(enum conf_def_mode mode)
 
 	return has_changed;
 }
+
+void conf_rewrite_mod_or_yes(enum conf_def_mode mode)
+{
+	struct symbol *sym;
+	int i;
+	tristate old_val = (mode == def_y2m) ? yes : mod;
+	tristate new_val = (mode == def_y2m) ? mod : yes;
+
+	for_all_symbols(i, sym) {
+		if (sym_get_type(sym) == S_TRISTATE &&
+		    sym->def[S_DEF_USER].tri == old_val) {
+			sym->def[S_DEF_USER].tri = new_val;
+			sym_add_change_count(1);
+		}
+	}
+}
diff --git a/scripts/config/expr.c b/scripts/config/expr.c
index 8cee597d33..81ebf8108c 100644
--- a/scripts/config/expr.c
+++ b/scripts/config/expr.c
@@ -1,8 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
+#include <ctype.h>
+#include <errno.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
@@ -11,7 +13,6 @@
 
 #define DEBUG_EXPR	0
 
-static int expr_eq(struct expr *e1, struct expr *e2);
 static struct expr *expr_eliminate_yn(struct expr *e);
 
 struct expr *expr_alloc_symbol(struct symbol *sym)
@@ -94,7 +95,7 @@ struct expr *expr_copy(const struct expr *org)
 		e->right.expr = expr_copy(org->right.expr);
 		break;
 	default:
-		printf("can't copy type %d\n", e->type);
+		fprintf(stderr, "can't copy type %d\n", e->type);
 		free(e);
 		e = NULL;
 		break;
@@ -113,7 +114,7 @@ void expr_free(struct expr *e)
 		break;
 	case E_NOT:
 		expr_free(e->left.expr);
-		return;
+		break;
 	case E_EQUAL:
 	case E_GEQ:
 	case E_GTH:
@@ -127,7 +128,7 @@ void expr_free(struct expr *e)
 		expr_free(e->right.expr);
 		break;
 	default:
-		printf("how to free type %d?\n", e->type);
+		fprintf(stderr, "how to free type %d?\n", e->type);
 		break;
 	}
 	free(e);
@@ -138,8 +139,18 @@ static int trans_count;
 #define e1 (*ep1)
 #define e2 (*ep2)
 
+/*
+ * expr_eliminate_eq() helper.
+ *
+ * Walks the two expression trees given in 'ep1' and 'ep2'. Any node that does
+ * not have type 'type' (E_OR/E_AND) is considered a leaf, and is compared
+ * against all other leaves. Two equal leaves are both replaced with either 'y'
+ * or 'n' as appropriate for 'type', to be eliminated later.
+ */
 static void __expr_eliminate_eq(enum expr_type type, struct expr **ep1, struct expr **ep2)
 {
+	/* Recurse down to leaves */
+
 	if (e1->type == type) {
 		__expr_eliminate_eq(type, &e1->left.expr, &e2);
 		__expr_eliminate_eq(type, &e1->right.expr, &e2);
@@ -150,12 +161,18 @@ static void __expr_eliminate_eq(enum expr_type type, struct expr **ep1, struct e
 		__expr_eliminate_eq(type, &e1, &e2->right.expr);
 		return;
 	}
+
+	/* e1 and e2 are leaves. Compare them. */
+
 	if (e1->type == E_SYMBOL && e2->type == E_SYMBOL &&
 	    e1->left.sym == e2->left.sym &&
 	    (e1->left.sym == &symbol_yes || e1->left.sym == &symbol_no))
 		return;
 	if (!expr_eq(e1, e2))
 		return;
+
+	/* e1 and e2 are equal leaves. Prepare them for elimination. */
+
 	trans_count++;
 	expr_free(e1); expr_free(e2);
 	switch (type) {
@@ -172,6 +189,35 @@ static void __expr_eliminate_eq(enum expr_type type, struct expr **ep1, struct e
 	}
 }
 
+/*
+ * Rewrites the expressions 'ep1' and 'ep2' to remove operands common to both.
+ * Example reductions:
+ *
+ *	ep1: A && B           ->  ep1: y
+ *	ep2: A && B && C      ->  ep2: C
+ *
+ *	ep1: A || B           ->  ep1: n
+ *	ep2: A || B || C      ->  ep2: C
+ *
+ *	ep1: A && (B && FOO)  ->  ep1: FOO
+ *	ep2: (BAR && B) && A  ->  ep2: BAR
+ *
+ *	ep1: A && (B || C)    ->  ep1: y
+ *	ep2: (C || B) && A    ->  ep2: y
+ *
+ * Comparisons are done between all operands at the same "level" of && or ||.
+ * For example, in the expression 'e1 && (e2 || e3) && (e4 || e5)', the
+ * following operands will be compared:
+ *
+ *	- 'e1', 'e2 || e3', and 'e4 || e5', against each other
+ *	- e2 against e3
+ *	- e4 against e5
+ *
+ * Parentheses are irrelevant within a single level. 'e1 && (e2 && e3)' and
+ * '(e1 && e2) && e3' are both a single level.
+ *
+ * See __expr_eliminate_eq() as well.
+ */
 void expr_eliminate_eq(struct expr **ep1, struct expr **ep2)
 {
 	if (!e1 || !e2)
@@ -197,10 +243,23 @@ void expr_eliminate_eq(struct expr **ep1, struct expr **ep2)
 #undef e1
 #undef e2
 
-static int expr_eq(struct expr *e1, struct expr *e2)
+/*
+ * Returns true if 'e1' and 'e2' are equal, after minor simplification. Two
+ * &&/|| expressions are considered equal if every operand in one expression
+ * equals some operand in the other (operands do not need to appear in the same
+ * order), recursively.
+ */
+int expr_eq(struct expr *e1, struct expr *e2)
 {
 	int res, old_count;
 
+	/*
+	 * A NULL expr is taken to be yes, but there's also a different way to
+	 * represent yes. expr_is_yes() checks for either representation.
+	 */
+	if (!e1 || !e2)
+		return expr_is_yes(e1) && expr_is_yes(e2);
+
 	if (e1->type != e2->type)
 		return 0;
 	switch (e1->type) {
@@ -243,6 +302,17 @@ static int expr_eq(struct expr *e1, struct expr *e2)
 	return 0;
 }
 
+/*
+ * Recursively performs the following simplifications in-place (as well as the
+ * corresponding simplifications with swapped operands):
+ *
+ *	expr && n  ->  n
+ *	expr && y  ->  expr
+ *	expr || n  ->  expr
+ *	expr || y  ->  y
+ *
+ * Returns the optimized expression.
+ */
 static struct expr *expr_eliminate_yn(struct expr *e)
 {
 	struct expr *tmp;
@@ -516,12 +586,21 @@ static struct expr *expr_join_and(struct expr *e1, struct expr *e2)
 	return NULL;
 }
 
+/*
+ * expr_eliminate_dups() helper.
+ *
+ * Walks the two expression trees given in 'ep1' and 'ep2'. Any node that does
+ * not have type 'type' (E_OR/E_AND) is considered a leaf, and is compared
+ * against all other leaves to look for simplifications.
+ */
 static void expr_eliminate_dups1(enum expr_type type, struct expr **ep1, struct expr **ep2)
 {
 #define e1 (*ep1)
 #define e2 (*ep2)
 	struct expr *tmp;
 
+	/* Recurse down to leaves */
+
 	if (e1->type == type) {
 		expr_eliminate_dups1(type, &e1->left.expr, &e2);
 		expr_eliminate_dups1(type, &e1->right.expr, &e2);
@@ -532,6 +611,9 @@ static void expr_eliminate_dups1(enum expr_type type, struct expr **ep1, struct
 		expr_eliminate_dups1(type, &e1, &e2->right.expr);
 		return;
 	}
+
+	/* e1 and e2 are leaves. Compare and process them. */
+
 	if (e1 == e2)
 		return;
 
@@ -568,6 +650,17 @@ static void expr_eliminate_dups1(enum expr_type type, struct expr **ep1, struct
 #undef e2
 }
 
+/*
+ * Rewrites 'e' in-place to remove ("join") duplicate and other redundant
+ * operands.
+ *
+ * Example simplifications:
+ *
+ *	A || B || A    ->  A || B
+ *	A && B && A=y  ->  A=y && B
+ *
+ * Returns the deduplicated expression.
+ */
 struct expr *expr_eliminate_dups(struct expr *e)
 {
 	int oldcount;
@@ -584,6 +677,7 @@ struct expr *expr_eliminate_dups(struct expr *e)
 			;
 		}
 		if (!trans_count)
+			/* No simplifications done in this pass. We're done */
 			break;
 		e = expr_eliminate_yn(e);
 	}
@@ -591,6 +685,12 @@ struct expr *expr_eliminate_dups(struct expr *e)
 	return e;
 }
 
+/*
+ * Performs various simplifications involving logical operators and
+ * comparisons.
+ *
+ * Allocates and returns a new expression.
+ */
 struct expr *expr_transform(struct expr *e)
 {
 	struct expr *tmp;
@@ -805,6 +905,20 @@ bool expr_depends_symbol(struct expr *dep, struct symbol *sym)
  	return false;
 }
 
+/*
+ * Inserts explicit comparisons of type 'type' to symbol 'sym' into the
+ * expression 'e'.
+ *
+ * Examples transformations for type == E_UNEQUAL, sym == &symbol_no:
+ *
+ *	A              ->  A!=n
+ *	!A             ->  A=n
+ *	A && B         ->  !(A=n || B=n)
+ *	A || B         ->  !(A=n && B=n)
+ *	A && (B || C)  ->  !(A=n || (B=n && C=n))
+ *
+ * Allocates and returns a new expression.
+ */
 struct expr *expr_trans_compare(struct expr *e, enum expr_type type, struct symbol *sym)
 {
 	struct expr *e1, *e2;
@@ -874,7 +988,6 @@ enum string_value_kind {
 	k_string,
 	k_signed,
 	k_unsigned,
-	k_invalid
 };
 
 union string_value {
@@ -905,13 +1018,10 @@ static enum string_value_kind expr_parse_string(const char *str,
 		val->u = strtoull(str, &tail, 16);
 		kind = k_unsigned;
 		break;
-	case S_STRING:
-	case S_UNKNOWN:
+	default:
 		val->s = strtoll(str, &tail, 0);
 		kind = k_signed;
 		break;
-	default:
-		return k_invalid;
 	}
 	return !errno && !*tail && tail > str && isxdigit(tail[-1])
 	       ? kind : k_string;
@@ -967,13 +1077,7 @@ tristate expr_calc_value(struct expr *e)
 
 	if (k1 == k_string || k2 == k_string)
 		res = strcmp(str1, str2);
-	else if (k1 == k_invalid || k2 == k_invalid) {
-		if (e->type != E_EQUAL && e->type != E_UNEQUAL) {
-			printf("Cannot compare \"%s\" and \"%s\"\n", str1, str2);
-			return no;
-		}
-		res = strcmp(str1, str2);
-	} else if (k1 == k_unsigned || k2 == k_unsigned)
+	else if (k1 == k_unsigned || k2 == k_unsigned)
 		res = (lval.u > rval.u) - (lval.u < rval.u);
 	else /* if (k1 == k_signed && k2 == k_signed) */
 		res = (lval.s > rval.s) - (lval.s < rval.s);
@@ -1031,49 +1135,9 @@ static int expr_compare_type(enum expr_type t1, enum expr_type t2)
 	return 0;
 }
 
-static inline struct expr *
-expr_get_leftmost_symbol(const struct expr *e)
-{
-
-	if (e == NULL)
-		return NULL;
-
-	while (e->type != E_SYMBOL)
-		e = e->left.expr;
-
-	return expr_copy(e);
-}
-
-/*
- * Given expression `e1' and `e2', returns the leaf of the longest
- * sub-expression of `e1' not containing 'e2.
- */
-struct expr *expr_simplify_unmet_dep(struct expr *e1, struct expr *e2)
-{
-	struct expr *ret;
-
-	switch (e1->type) {
-	case E_OR:
-		return expr_alloc_and(
-		    expr_simplify_unmet_dep(e1->left.expr, e2),
-		    expr_simplify_unmet_dep(e1->right.expr, e2));
-	case E_AND: {
-		struct expr *e;
-		e = expr_alloc_and(expr_copy(e1), expr_copy(e2));
-		e = expr_eliminate_dups(e);
-		ret = (!expr_eq(e, e1)) ? e1 : NULL;
-		expr_free(e);
-		break;
-		}
-	default:
-		ret = e1;
-		break;
-	}
-
-	return expr_get_leftmost_symbol(ret);
-}
-
-void expr_print(struct expr *e, void (*fn)(void *, struct symbol *, const char *), void *data, int prevtoken)
+void expr_print(struct expr *e,
+		void (*fn)(void *, struct symbol *, const char *),
+		void *data, int prevtoken)
 {
 	if (!e) {
 		fn(data, NULL, "y");
@@ -1207,3 +1271,33 @@ void expr_gstr_print(struct expr *e, struct gstr *gs)
 {
 	expr_print(e, expr_print_gstr_helper, gs, E_NONE);
 }
+
+/*
+ * Transform the top level "||" tokens into newlines and prepend each
+ * line with a minus. This makes expressions much easier to read.
+ * Suitable for reverse dependency expressions.
+ */
+static void expr_print_revdep(struct expr *e,
+			      void (*fn)(void *, struct symbol *, const char *),
+			      void *data, tristate pr_type, const char **title)
+{
+	if (e->type == E_OR) {
+		expr_print_revdep(e->left.expr, fn, data, pr_type, title);
+		expr_print_revdep(e->right.expr, fn, data, pr_type, title);
+	} else if (expr_calc_value(e) == pr_type) {
+		if (*title) {
+			fn(data, NULL, *title);
+			*title = NULL;
+		}
+
+		fn(data, NULL, "  - ");
+		expr_print(e, fn, data, E_NONE);
+		fn(data, NULL, "\n");
+	}
+}
+
+void expr_gstr_print_revdep(struct expr *e, struct gstr *gs,
+			    tristate pr_type, const char *title)
+{
+	expr_print_revdep(e, expr_print_gstr_helper, gs, pr_type, &title);
+}
diff --git a/scripts/config/expr.h b/scripts/config/expr.h
index d21bbe3b31..bbd516bdf5 100644
--- a/scripts/config/expr.h
+++ b/scripts/config/expr.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #ifndef EXPR_H
@@ -62,7 +62,7 @@ struct symbol_value {
 };
 
 enum symbol_type {
-	S_UNKNOWN, S_BOOLEAN, S_TRISTATE, S_INT, S_HEX, S_STRING, S_OTHER
+	S_UNKNOWN, S_BOOLEAN, S_TRISTATE, S_INT, S_HEX, S_STRING
 };
 
 /* enum values are used as index to symbol.def[] */
@@ -74,20 +74,64 @@ enum {
 	S_DEF_COUNT
 };
 
+/*
+ * Represents a configuration symbol.
+ *
+ * Choices are represented as a special kind of symbol and have the
+ * SYMBOL_CHOICE bit set in 'flags'.
+ */
 struct symbol {
+	/* The next symbol in the same bucket in the symbol hash table */
 	struct symbol *next;
+
+	/* The name of the symbol, e.g. "FOO" for 'config FOO' */
 	char *name;
+
+	/* S_BOOLEAN, S_TRISTATE, ... */
 	enum symbol_type type;
+
+	/*
+	 * The calculated value of the symbol. The SYMBOL_VALID bit is set in
+	 * 'flags' when this is up to date. Note that this value might differ
+	 * from the user value set in e.g. a .config file, due to visibility.
+	 */
 	struct symbol_value curr;
+
+	/*
+	 * Values for the symbol provided from outside. def[S_DEF_USER] holds
+	 * the .config value.
+	 */
 	struct symbol_value def[S_DEF_COUNT];
+
+	/*
+	 * An upper bound on the tristate value the user can set for the symbol
+	 * if it is a boolean or tristate. Calculated from prompt dependencies,
+	 * which also inherit dependencies from enclosing menus, choices, and
+	 * ifs. If 'n', the user value will be ignored.
+	 *
+	 * Symbols lacking prompts always have visibility 'n'.
+	 */
 	tristate visible;
+
+	/* SYMBOL_* flags */
 	int flags;
+
+	/* List of properties. See prop_type. */
 	struct property *prop;
+
+	/* Dependencies from enclosing menus, choices, and ifs */
 	struct expr_value dir_dep;
+
+	/* Reverse dependencies through being selected by other symbols */
 	struct expr_value rev_dep;
+
+	/*
+	 * "Weak" reverse dependencies through being implied by other symbols
+	 */
+	struct expr_value implied;
 };
 
-#define for_all_symbols(i, sym) for (i = 0; i < SYMBOL_HASHSIZE; i++) for (sym = symbol_hash[i]; sym; sym = sym->next) if (sym->type != S_OTHER)
+#define for_all_symbols(i, sym) for (i = 0; i < SYMBOL_HASHSIZE; i++) for (sym = symbol_hash[i]; sym; sym = sym->next)
 
 #define SYMBOL_CONST      0x0001  /* symbol is const */
 #define SYMBOL_CHECK      0x0008  /* used during dependency checking */
@@ -97,7 +141,8 @@ struct symbol {
 #define SYMBOL_OPTIONAL   0x0100  /* choice is optional - values can be 'n' */
 #define SYMBOL_WRITE      0x0200  /* write symbol to file (KCONFIG_CONFIG) */
 #define SYMBOL_CHANGED    0x0400  /* ? */
-#define SYMBOL_AUTO       0x1000  /* value from environment variable */
+#define SYMBOL_WRITTEN    0x0800  /* track info to avoid double-write to .config */
+#define SYMBOL_NO_WRITE   0x1000  /* Symbol for internal use only; it will not be written */
 #define SYMBOL_CHECKED    0x2000  /* used during dependency checking */
 #define SYMBOL_WARNED     0x8000  /* warning has been issued */
 
@@ -127,24 +172,26 @@ struct symbol {
  * config BAZ
  *         int "BAZ Value"
  *         range 1..255
+ *
+ * Please, also check parser.y:print_symbol() when modifying the
+ * list of property types!
  */
 enum prop_type {
 	P_UNKNOWN,
 	P_PROMPT,   /* prompt "foo prompt" or "BAZ Value" */
 	P_COMMENT,  /* text associated with a comment */
-	P_MENU,     /* prompt associated with a menuconfig option */
+	P_MENU,     /* prompt associated with a menu or menuconfig symbol */
 	P_DEFAULT,  /* default y */
 	P_CHOICE,   /* choice value */
 	P_SELECT,   /* select BAR */
+	P_IMPLY,    /* imply BAR */
 	P_RANGE,    /* range 7..100 (for a symbol) */
-	P_ENV,      /* value from environment variable */
 	P_SYMBOL,   /* where a symbol is defined */
 	P_RESET,	/* reset to defaults condition */
 };
 
 struct property {
 	struct property *next;     /* next property - null if last */
-	struct symbol *sym;        /* the symbol for which the property is associated */
 	enum prop_type type;       /* type of property */
 	const char *text;          /* the prompt value - P_PROMPT, P_MENU, P_COMMENT */
 	struct expr_value visible;
@@ -165,22 +212,67 @@ struct property {
 	for (st = sym->prop; st; st = st->next) \
 		if (st->text)
 
+/*
+ * Represents a node in the menu tree, as seen in e.g. menuconfig (though used
+ * for all front ends). Each symbol, menu, etc. defined in the Kconfig files
+ * gets a node. A symbol defined in multiple locations gets one node at each
+ * location.
+ */
 struct menu {
+	/* The next menu node at the same level */
 	struct menu *next;
+
+	/* The parent menu node, corresponding to e.g. a menu or choice */
 	struct menu *parent;
+
+	/* The first child menu node, for e.g. menus and choices */
 	struct menu *list;
+
+	/*
+	 * The symbol associated with the menu node. Choices are implemented as
+	 * a special kind of symbol. NULL for menus, comments, and ifs.
+	 */
 	struct symbol *sym;
+
+	/*
+	 * The prompt associated with the node. This holds the prompt for a
+	 * symbol as well as the text for a menu or comment, along with the
+	 * type (P_PROMPT, P_MENU, etc.)
+	 */
 	struct property *prompt;
+
+	/*
+	 * 'visible if' dependencies. If more than one is given, they will be
+	 * ANDed together.
+	 */
 	struct expr *visibility;
+
+	/*
+	 * Ordinary dependencies from e.g. 'depends on' and 'if', ANDed
+	 * together
+	 */
 	struct expr *dep;
+
+	/* MENU_* flags */
 	unsigned int flags;
+
+	/* Any help text associated with the node */
 	char *help;
+
+	/* The location where the menu node appears in the Kconfig files */
 	struct file *file;
 	int lineno;
+
+	/* For use by front ends that need to store auxiliary data */
 	void *data;
 };
 
+/*
+ * Set on a menu node when the corresponding symbol changes state in some way.
+ * Can be checked by front ends.
+ */
 #define MENU_CHANGED		0x0001
+
 #define MENU_ROOT		0x0002
 
 struct jump_key {
@@ -209,6 +301,7 @@ struct expr *expr_alloc_or(struct expr *e1, struct expr *e2);
 struct expr *expr_copy(const struct expr *org);
 void expr_free(struct expr *e);
 void expr_eliminate_eq(struct expr **ep1, struct expr **ep2);
+int expr_eq(struct expr *e1, struct expr *e2);
 tristate expr_calc_value(struct expr *e);
 struct expr *expr_trans_bool(struct expr *e);
 struct expr *expr_eliminate_dups(struct expr *e);
@@ -216,11 +309,12 @@ struct expr *expr_transform(struct expr *e);
 int expr_contains_symbol(struct expr *dep, struct symbol *sym);
 bool expr_depends_symbol(struct expr *dep, struct symbol *sym);
 struct expr *expr_trans_compare(struct expr *e, enum expr_type type, struct symbol *sym);
-struct expr *expr_simplify_unmet_dep(struct expr *e1, struct expr *e2);
 
 void expr_fprint(struct expr *e, FILE *out);
 struct gstr; /* forward */
 void expr_gstr_print(struct expr *e, struct gstr *gs);
+void expr_gstr_print_revdep(struct expr *e, struct gstr *gs,
+			    tristate pr_type, const char *title);
 
 static inline int expr_is_yes(struct expr *e)
 {
diff --git a/scripts/config/images.c b/scripts/config/images.c
index d4f84bd4a9..b4fa0e4a63 100644
--- a/scripts/config/images.c
+++ b/scripts/config/images.c
@@ -1,9 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
-static const char *xpm_load[] = {
+#include "images.h"
+
+const char *xpm_load[] = {
 "22 22 5 1",
 ". c None",
 "# c #000000",
@@ -33,7 +35,7 @@ static const char *xpm_load[] = {
 "###############.......",
 "......................"};
 
-static const char *xpm_save[] = {
+const char *xpm_save[] = {
 "22 22 5 1",
 ". c None",
 "# c #000000",
@@ -63,7 +65,7 @@ static const char *xpm_save[] = {
 "..##################..",
 "......................"};
 
-static const char *xpm_back[] = {
+const char *xpm_back[] = {
 "22 22 3 1",
 ". c None",
 "# c #000083",
@@ -91,7 +93,7 @@ static const char *xpm_back[] = {
 "......................",
 "......................"};
 
-static const char *xpm_tree_view[] = {
+const char *xpm_tree_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -118,7 +120,7 @@ static const char *xpm_tree_view[] = {
 "......................",
 "......................"};
 
-static const char *xpm_single_view[] = {
+const char *xpm_single_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -145,7 +147,7 @@ static const char *xpm_single_view[] = {
 "......................",
 "......................"};
 
-static const char *xpm_split_view[] = {
+const char *xpm_split_view[] = {
 "22 22 2 1",
 ". c None",
 "# c #000000",
@@ -172,7 +174,7 @@ static const char *xpm_split_view[] = {
 "......................",
 "......................"};
 
-static const char *xpm_symbol_no[] = {
+const char *xpm_symbol_no[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -189,7 +191,7 @@ static const char *xpm_symbol_no[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_symbol_mod[] = {
+const char *xpm_symbol_mod[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -206,7 +208,7 @@ static const char *xpm_symbol_mod[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_symbol_yes[] = {
+const char *xpm_symbol_yes[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -223,7 +225,7 @@ static const char *xpm_symbol_yes[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_choice_no[] = {
+const char *xpm_choice_no[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -240,7 +242,7 @@ static const char *xpm_choice_no[] = {
 "    ....    ",
 "            "};
 
-static const char *xpm_choice_yes[] = {
+const char *xpm_choice_yes[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -257,7 +259,7 @@ static const char *xpm_choice_yes[] = {
 "    ....    ",
 "            "};
 
-static const char *xpm_menu[] = {
+const char *xpm_menu[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -274,7 +276,7 @@ static const char *xpm_menu[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_menu_inv[] = {
+const char *xpm_menu_inv[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -291,7 +293,7 @@ static const char *xpm_menu_inv[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_menuback[] = {
+const char *xpm_menuback[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
@@ -308,7 +310,7 @@ static const char *xpm_menuback[] = {
 " .......... ",
 "            "};
 
-static const char *xpm_void[] = {
+const char *xpm_void[] = {
 "12 12 2 1",
 "  c white",
 ". c black",
diff --git a/scripts/config/images.h b/scripts/config/images.h
new file mode 100644
index 0000000000..d8ff614bd0
--- /dev/null
+++ b/scripts/config/images.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
+ */
+
+#ifndef IMAGES_H
+#define IMAGES_H
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+extern const char *xpm_load[];
+extern const char *xpm_save[];
+extern const char *xpm_back[];
+extern const char *xpm_tree_view[];
+extern const char *xpm_single_view[];
+extern const char *xpm_split_view[];
+extern const char *xpm_symbol_no[];
+extern const char *xpm_symbol_mod[];
+extern const char *xpm_symbol_yes[];
+extern const char *xpm_choice_no[];
+extern const char *xpm_choice_yes[];
+extern const char *xpm_menu[];
+extern const char *xpm_menu_inv[];
+extern const char *xpm_menuback[];
+extern const char *xpm_void[];
+
+#ifdef __cplusplus
+}
+#endif
+
+#endif /* IMAGES_H */
diff --git a/scripts/config/zconf.l b/scripts/config/lexer.l
similarity index 50%
rename from scripts/config/zconf.l
rename to scripts/config/lexer.l
index 44d895fb24..83995662d1 100644
--- a/scripts/config/zconf.l
+++ b/scripts/config/lexer.l
@@ -1,13 +1,13 @@
-%option nostdinit noyywrap never-interactive full ecs
-%option 8bit nodefault perf-report perf-report
-%option noinput
-%x COMMAND HELP STRING PARAM
-%{
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
+%option nostdinit noyywrap never-interactive full ecs
+%option 8bit nodefault yylineno
+%x ASSIGN_VAL HELP STRING
+%{
 
+#include <assert.h>
 #include <limits.h>
 #include <stdio.h>
 #include <stdlib.h>
@@ -17,6 +17,9 @@
 #include <libgen.h>
 
 #include "lkc.h"
+#include "parser.tab.h"
+
+#define YY_DECL		static int yylex1(void)
 
 #define START_STRSIZE	16
 
@@ -25,6 +28,8 @@ static struct {
 	int lineno;
 } current_pos;
 
+static int prev_prev_token = T_EOL;
+static int prev_token = T_EOL;
 static char *text;
 static int text_size, text_asize;
 
@@ -37,6 +42,8 @@ struct buffer *current_buf;
 
 static int last_ts, first_ts;
 
+static char *expand_token(const char *in, size_t n);
+static void append_expanded_string(const char *in);
 static void zconf_endhelp(void);
 static void zconf_endfile(void);
 
@@ -54,7 +61,7 @@ static void append_string(const char *str, int size)
 	if (new_size > text_asize) {
 		new_size += START_STRSIZE - 1;
 		new_size &= -START_STRSIZE;
-		text = realloc(text, new_size);
+		text = xrealloc(text, new_size);
 		text_asize = new_size;
 	}
 	memcpy(text + text_size, str, size);
@@ -73,7 +80,7 @@ static void warn_ignored_character(char chr)
 {
 	fprintf(stderr,
 	        "%s:%d:warning: ignoring unsupported character '%c'\n",
-	        zconf_curname(), zconf_lineno(), chr);
+	        current_file->name, yylineno, chr);
 }
 %}
 
@@ -83,116 +90,114 @@ n	[A-Za-z0-9_-]
 	int str = 0;
 	int ts, i;
 
-[ \t]*#.*\n	|
-[ \t]*\n	{
-	current_file->lineno++;
-	return T_EOL;
-}
-[ \t]*#.*
-
-
-[ \t]+	{
-	BEGIN(COMMAND);
-}
-
-.	{
-	unput(yytext[0]);
-	BEGIN(COMMAND);
-}
-
-
-<COMMAND>{
-	{n}+	{
-		const struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
-		BEGIN(PARAM);
-		current_pos.file = current_file;
-		current_pos.lineno = current_file->lineno;
-		if (id && id->flags & TF_COMMAND) {
-			zconflval.id = id;
-			return id->token;
-		}
-		alloc_string(yytext, yyleng);
-		zconflval.string = text;
-		return T_WORD;
-	}
-	.	warn_ignored_character(*yytext);
-	\n	{
-		BEGIN(INITIAL);
-		current_file->lineno++;
-		return T_EOL;
-	}
-}
+#.*			/* ignore comment */
+[ \t]*			/* whitespaces */
+\\\n			/* escaped new line */
+\n			return T_EOL;
+"allnoconfig_y"		return T_ALLNOCONFIG_Y;
+"bool"			return T_BOOL;
+"choice"		return T_CHOICE;
+"comment"		return T_COMMENT;
+"config"		return T_CONFIG;
+"def_bool"		return T_DEF_BOOL;
+"def_tristate"		return T_DEF_TRISTATE;
+"default"		return T_DEFAULT;
+"defconfig_list"	return T_DEFCONFIG_LIST;
+"depends"		return T_DEPENDS;
+"endchoice"		return T_ENDCHOICE;
+"endif"			return T_ENDIF;
+"endmenu"		return T_ENDMENU;
+"help"|"---help---"	return T_HELP;
+"hex"			return T_HEX;
+"if"			return T_IF;
+"imply"			return T_IMPLY;
+"int"			return T_INT;
+"mainmenu"		return T_MAINMENU;
+"menu"			return T_MENU;
+"menuconfig"		return T_MENUCONFIG;
+"modules"		return T_MODULES;
+"on"			return T_ON;
+"option"		return T_OPTION;
+"optional"		return T_OPTIONAL;
+"prompt"		return T_PROMPT;
+"range"			return T_RANGE;
+"reset"			return T_RESET;
+"select"		return T_SELECT;
+"source"		return T_SOURCE;
+"string"		return T_STRING;
+"tristate"		return T_TRISTATE;
+"visible"		return T_VISIBLE;
+"||"			return T_OR;
+"&&"			return T_AND;
+"="			return T_EQUAL;
+"!="			return T_UNEQUAL;
+"<"			return T_LESS;
+"<="			return T_LESS_EQUAL;
+">"			return T_GREATER;
+">="			return T_GREATER_EQUAL;
+"!"			return T_NOT;
+"("			return T_OPEN_PAREN;
+")"			return T_CLOSE_PAREN;
+":="			return T_COLON_EQUAL;
+"+="			return T_PLUS_EQUAL;
+\"|\'			{
+				str = yytext[0];
+				new_string();
+				BEGIN(STRING);
+			}
+({n}|[/.])+		{
+				alloc_string(yytext, yyleng);
+				yylval.string = text;
+				return T_WORD;
+			}
+({n}|[/.$])+		{
+				/* this token includes at least one '$' */
+				yylval.string = expand_token(yytext, yyleng);
+				if (strlen(yylval.string))
+					return T_WORD;
+				free(yylval.string);
+			}
+.			warn_ignored_character(*yytext);
 
-<PARAM>{
-	"&&"	return T_AND;
-	"||"	return T_OR;
-	"("	return T_OPEN_PAREN;
-	")"	return T_CLOSE_PAREN;
-	"!"	return T_NOT;
-	"="	return T_EQUAL;
-	"!="	return T_UNEQUAL;
-	"<="	return T_LESS_EQUAL;
-	">="	return T_GREATER_EQUAL;
-	"<"	return T_LESS;
-	">"	return T_GREATER;
-	\"|\'	{
-		str = yytext[0];
-		new_string();
-		BEGIN(STRING);
-	}
-	\n	BEGIN(INITIAL); current_file->lineno++; return T_EOL;
-	({n}|[/.])+	{
-		const struct kconf_id *id = kconf_id_lookup(yytext, yyleng);
-		if (id && id->flags & TF_PARAM) {
-			zconflval.id = id;
-			return id->token;
-		}
+<ASSIGN_VAL>{
+	[^[:blank:]\n]+.*	{
 		alloc_string(yytext, yyleng);
-		zconflval.string = text;
-		return T_WORD;
-	}
-	#.*	/* comment */
-	\\\n	current_file->lineno++;
-	[[:blank:]]+
-	.	warn_ignored_character(*yytext);
-	<<EOF>> {
-		BEGIN(INITIAL);
+		yylval.string = text;
+		return T_ASSIGN_VAL;
 	}
+	\n	{ BEGIN(INITIAL); return T_EOL; }
+	.
 }
 
 <STRING>{
-	[^'"\\\n]+/\n	{
+	"$".*	append_expanded_string(yytext);
+	[^$'"\\\n]+	{
 		append_string(yytext, yyleng);
-		zconflval.string = text;
-		return T_WORD_QUOTE;
-	}
-	[^'"\\\n]+	{
-		append_string(yytext, yyleng);
-	}
-	\\.?/\n	{
-		append_string(yytext + 1, yyleng - 1);
-		zconflval.string = text;
-		return T_WORD_QUOTE;
 	}
 	\\.?	{
 		append_string(yytext + 1, yyleng - 1);
 	}
 	\'|\"	{
 		if (str == yytext[0]) {
-			BEGIN(PARAM);
-			zconflval.string = text;
+			BEGIN(INITIAL);
+			yylval.string = text;
 			return T_WORD_QUOTE;
 		} else
 			append_string(yytext, 1);
 	}
 	\n	{
-		printf("%s:%d:warning: multi-line strings not supported\n", zconf_curname(), zconf_lineno());
-		current_file->lineno++;
+		fprintf(stderr,
+			"%s:%d:warning: multi-line strings not supported\n",
+			zconf_curname(), zconf_lineno());
+		unput('\n');
 		BEGIN(INITIAL);
-		return T_EOL;
+		yylval.string = text;
+		return T_WORD_QUOTE;
 	}
 	<<EOF>>	{
 		BEGIN(INITIAL);
+		yylval.string = text;
+		return T_WORD_QUOTE;
 	}
 }
 
@@ -220,12 +225,10 @@ n	[A-Za-z0-9_-]
 		}
 	}
 	[ \t]*\n/[^ \t\n] {
-		current_file->lineno++;
 		zconf_endhelp();
 		return T_HELPTEXT;
 	}
 	[ \t]*\n	{
-		current_file->lineno++;
 		append_string("\n", 1);
 	}
 	[^ \t\n].* {
@@ -245,6 +248,12 @@ n	[A-Za-z0-9_-]
 }
 
 <<EOF>>	{
+	BEGIN(INITIAL);
+
+	if (prev_token != T_EOL && prev_token != T_HELPTEXT)
+		fprintf(stderr, "%s:%d:warning: no new line at end of file\n",
+			current_file->name, yylineno);
+
 	if (current_file) {
 		zconf_endfile();
 		return T_EOL;
@@ -254,6 +263,93 @@ n	[A-Za-z0-9_-]
 }
 
 %%
+
+/* second stage lexer */
+int yylex(void)
+{
+	int token;
+
+repeat:
+	token = yylex1();
+
+	if (prev_token == T_EOL || prev_token == T_HELPTEXT) {
+		if (token == T_EOL) {
+			/* Do not pass unneeded T_EOL to the parser. */
+			goto repeat;
+		} else {
+			/*
+			 * For the parser, update file/lineno at the first token
+			 * of each statement. Generally, \n is a statement
+			 * terminator in Kconfig, but it is not always true
+			 * because \n could be escaped by a backslash.
+			 */
+			current_pos.file = current_file;
+			current_pos.lineno = yylineno;
+		}
+	}
+
+	if (prev_prev_token == T_EOL && prev_token == T_WORD &&
+	    (token == T_EQUAL || token == T_COLON_EQUAL || token == T_PLUS_EQUAL))
+		BEGIN(ASSIGN_VAL);
+
+	prev_prev_token = prev_token;
+	prev_token = token;
+
+	return token;
+}
+
+static char *expand_token(const char *in, size_t n)
+{
+	char *out;
+	int c;
+	char c2;
+	const char *rest, *end;
+
+	new_string();
+	append_string(in, n);
+
+	/* get the whole line because we do not know the end of token. */
+	while ((c = input()) != EOF) {
+		if (c == '\n') {
+			unput(c);
+			break;
+		}
+		c2 = c;
+		append_string(&c2, 1);
+	}
+
+	rest = text;
+	out = expand_one_token(&rest);
+
+	/* push back unused characters to the input stream */
+	end = rest + strlen(rest);
+	while (end > rest)
+		unput(*--end);
+
+	free(text);
+
+	return out;
+}
+
+static void append_expanded_string(const char *str)
+{
+	const char *end;
+	char *res;
+
+	str++;
+
+	res = expand_dollar(&str);
+
+	/* push back unused characters to the input stream */
+	end = str + strlen(str);
+	while (end > str)
+		unput(*--end);
+
+	append_string(res, strlen(res));
+
+	free(res);
+}
+
 void zconf_starthelp(void)
 {
 	new_string();
@@ -263,7 +359,7 @@ void zconf_starthelp(void)
 
 static void zconf_endhelp(void)
 {
-	zconflval.string = text;
+	yylval.string = text;
 	BEGIN(INITIAL);
 }
 
@@ -285,7 +381,8 @@ FILE *zconf_fopen(const char *name)
 	if (!f && name != NULL && name[0] != '/') {
 		env = getenv(SRCTREE);
 		if (env) {
-			sprintf(fullname, "%s/%s", env, name);
+			snprintf(fullname, sizeof(fullname),
+				 "%s/%s", env, name);
 			f = fopen(fullname, "r");
 		}
 	}
@@ -296,7 +393,7 @@ void zconf_initscan(const char *name)
 {
 	yyin = zconf_fopen(name);
 	if (!yyin) {
-		printf("can't find file %s\n", name);
+		fprintf(stderr, "can't find file %s\n", name);
 		exit(1);
 	}
 
@@ -304,7 +401,7 @@ void zconf_initscan(const char *name)
 	memset(current_buf, 0, sizeof(*current_buf));
 
 	current_file = file_lookup(name);
-	current_file->lineno = 1;
+	yylineno = 1;
 }
 
 static void __zconf_nextfile(const char *name)
@@ -317,35 +414,34 @@ static void __zconf_nextfile(const char *name)
 	current_buf->state = YY_CURRENT_BUFFER;
 	yyin = zconf_fopen(file->name);
 	if (!yyin) {
-		printf("%s:%d: can't open file \"%s\"\n",
-		    zconf_curname(), zconf_lineno(), file->name);
+		fprintf(stderr, "%s:%d: can't open file \"%s\"\n",
+			zconf_curname(), zconf_lineno(), file->name);
 		exit(1);
 	}
 	yy_switch_to_buffer(yy_create_buffer(yyin, YY_BUF_SIZE));
 	buf->parent = current_buf;
 	current_buf = buf;
 
-	for (iter = current_file->parent; iter; iter = iter->parent ) {
-		if (!strcmp(current_file->name,iter->name) ) {
-			printf("%s:%d: recursive inclusion detected. "
-			       "Inclusion path:\n  current file : '%s'\n",
-			       zconf_curname(), zconf_lineno(),
-			       zconf_curname());
-			iter = current_file->parent;
-			while (iter && \
-			       strcmp(iter->name,current_file->name)) {
-				printf("  included from: '%s:%d'\n",
-				       iter->name, iter->lineno-1);
+	current_file->lineno = yylineno;
+	file->parent = current_file;
+
+	for (iter = current_file; iter; iter = iter->parent) {
+		if (!strcmp(iter->name, file->name)) {
+			fprintf(stderr,
+				"Recursive inclusion detected.\n"
+				"Inclusion path:\n"
+				"  current file : %s\n", file->name);
+			iter = file;
+			do {
 				iter = iter->parent;
-			}
-			if (iter)
-				printf("  included from: '%s:%d'\n",
-				       iter->name, iter->lineno+1);
+				fprintf(stderr, "  included from: %s:%d\n",
+					iter->name, iter->lineno - 1);
+			} while (strcmp(iter->name, file->name));
 			exit(1);
 		}
 	}
-	file->lineno = 1;
-	file->parent = current_file;
+
+	yylineno = 1;
 	current_file = file;
 }
 
@@ -405,6 +501,8 @@ static void zconf_endfile(void)
 	struct buffer *parent;
 
 	current_file = current_file->parent;
+	if (current_file)
+		yylineno = current_file->lineno;
 
 	parent = current_buf->parent;
 	if (parent) {
diff --git a/scripts/config/lexer.lex.c b/scripts/config/lexer.lex.c
new file mode 100644
index 0000000000..98b3aa16e3
--- /dev/null
+++ b/scripts/config/lexer.lex.c
@@ -0,0 +1,4499 @@
+
+#define  YY_INT_ALIGNED short int
+
+/* A lexical scanner generated by flex */
+
+#define FLEX_SCANNER
+#define YY_FLEX_MAJOR_VERSION 2
+#define YY_FLEX_MINOR_VERSION 6
+#define YY_FLEX_SUBMINOR_VERSION 4
+#if YY_FLEX_SUBMINOR_VERSION > 0
+#define FLEX_BETA
+#endif
+
+/* First, we deal with  platform-specific or compiler-specific issues. */
+
+/* begin standard C headers. */
+#include <stdio.h>
+#include <string.h>
+#include <errno.h>
+#include <stdlib.h>
+
+/* end standard C headers. */
+
+/* flex integer type definitions */
+
+#ifndef FLEXINT_H
+#define FLEXINT_H
+
+/* C99 systems have <inttypes.h>. Non-C99 systems may or may not. */
+
+#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
+
+/* C99 says to define __STDC_LIMIT_MACROS before including stdint.h,
+ * if you want the limit (max/min) macros for int types. 
+ */
+#ifndef __STDC_LIMIT_MACROS
+#define __STDC_LIMIT_MACROS 1
+#endif
+
+#include <inttypes.h>
+typedef int8_t flex_int8_t;
+typedef uint8_t flex_uint8_t;
+typedef int16_t flex_int16_t;
+typedef uint16_t flex_uint16_t;
+typedef int32_t flex_int32_t;
+typedef uint32_t flex_uint32_t;
+#else
+typedef signed char flex_int8_t;
+typedef short int flex_int16_t;
+typedef int flex_int32_t;
+typedef unsigned char flex_uint8_t; 
+typedef unsigned short int flex_uint16_t;
+typedef unsigned int flex_uint32_t;
+
+/* Limits of integral types. */
+#ifndef INT8_MIN
+#define INT8_MIN               (-128)
+#endif
+#ifndef INT16_MIN
+#define INT16_MIN              (-32767-1)
+#endif
+#ifndef INT32_MIN
+#define INT32_MIN              (-2147483647-1)
+#endif
+#ifndef INT8_MAX
+#define INT8_MAX               (127)
+#endif
+#ifndef INT16_MAX
+#define INT16_MAX              (32767)
+#endif
+#ifndef INT32_MAX
+#define INT32_MAX              (2147483647)
+#endif
+#ifndef UINT8_MAX
+#define UINT8_MAX              (255U)
+#endif
+#ifndef UINT16_MAX
+#define UINT16_MAX             (65535U)
+#endif
+#ifndef UINT32_MAX
+#define UINT32_MAX             (4294967295U)
+#endif
+
+#ifndef SIZE_MAX
+#define SIZE_MAX               (~(size_t)0)
+#endif
+
+#endif /* ! C99 */
+
+#endif /* ! FLEXINT_H */
+
+/* begin standard C++ headers. */
+
+/* TODO: this is always defined, so inline it */
+#define yyconst const
+
+#if defined(__GNUC__) && __GNUC__ >= 3
+#define yynoreturn __attribute__((__noreturn__))
+#else
+#define yynoreturn
+#endif
+
+/* Returned upon end-of-file. */
+#define YY_NULL 0
+
+/* Promotes a possibly negative, possibly signed char to an
+ *   integer in range [0..255] for use as an array index.
+ */
+#define YY_SC_TO_UI(c) ((YY_CHAR) (c))
+
+/* Enter a start condition.  This macro really ought to take a parameter,
+ * but we do it the disgusting crufty way forced on us by the ()-less
+ * definition of BEGIN.
+ */
+#define BEGIN (yy_start) = 1 + 2 *
+/* Translate the current start state into a value that can be later handed
+ * to BEGIN to return to the state.  The YYSTATE alias is for lex
+ * compatibility.
+ */
+#define YY_START (((yy_start) - 1) / 2)
+#define YYSTATE YY_START
+/* Action number for EOF rule of a given start state. */
+#define YY_STATE_EOF(state) (YY_END_OF_BUFFER + state + 1)
+/* Special action meaning "start processing a new file". */
+#define YY_NEW_FILE yyrestart( yyin  )
+#define YY_END_OF_BUFFER_CHAR 0
+
+/* Size of default input buffer. */
+#ifndef YY_BUF_SIZE
+#ifdef __ia64__
+/* On IA-64, the buffer size is 16k, not 8k.
+ * Moreover, YY_BUF_SIZE is 2*YY_READ_BUF_SIZE in the general case.
+ * Ditto for the __ia64__ case accordingly.
+ */
+#define YY_BUF_SIZE 32768
+#else
+#define YY_BUF_SIZE 16384
+#endif /* __ia64__ */
+#endif
+
+/* The state buf must be large enough to hold one state per character in the main buffer.
+ */
+#define YY_STATE_BUF_SIZE   ((YY_BUF_SIZE + 2) * sizeof(yy_state_type))
+
+#ifndef YY_TYPEDEF_YY_BUFFER_STATE
+#define YY_TYPEDEF_YY_BUFFER_STATE
+typedef struct yy_buffer_state *YY_BUFFER_STATE;
+#endif
+
+#ifndef YY_TYPEDEF_YY_SIZE_T
+#define YY_TYPEDEF_YY_SIZE_T
+typedef size_t yy_size_t;
+#endif
+
+extern int yyleng;
+
+extern FILE *yyin, *yyout;
+
+#define EOB_ACT_CONTINUE_SCAN 0
+#define EOB_ACT_END_OF_FILE 1
+#define EOB_ACT_LAST_MATCH 2
+    
+    /* Note: We specifically omit the test for yy_rule_can_match_eol because it requires
+     *       access to the local variable yy_act. Since yyless() is a macro, it would break
+     *       existing scanners that call yyless() from OUTSIDE yylex.
+     *       One obvious solution it to make yy_act a global. I tried that, and saw
+     *       a 5% performance hit in a non-yylineno scanner, because yy_act is
+     *       normally declared as a register variable-- so it is not worth it.
+     */
+    #define  YY_LESS_LINENO(n) \
+            do { \
+                int yyl;\
+                for ( yyl = n; yyl < yyleng; ++yyl )\
+                    if ( yytext[yyl] == '\n' )\
+                        --yylineno;\
+            }while(0)
+    #define YY_LINENO_REWIND_TO(dst) \
+            do {\
+                const char *p;\
+                for ( p = yy_cp-1; p >= (dst); --p)\
+                    if ( *p == '\n' )\
+                        --yylineno;\
+            }while(0)
+    
+/* Return all but the first "n" matched characters back to the input stream. */
+#define yyless(n) \
+	do \
+		{ \
+		/* Undo effects of setting up yytext. */ \
+        int yyless_macro_arg = (n); \
+        YY_LESS_LINENO(yyless_macro_arg);\
+		*yy_cp = (yy_hold_char); \
+		YY_RESTORE_YY_MORE_OFFSET \
+		(yy_c_buf_p) = yy_cp = yy_bp + yyless_macro_arg - YY_MORE_ADJ; \
+		YY_DO_BEFORE_ACTION; /* set up yytext again */ \
+		} \
+	while ( 0 )
+#define unput(c) yyunput( c, (yytext_ptr)  )
+
+#ifndef YY_STRUCT_YY_BUFFER_STATE
+#define YY_STRUCT_YY_BUFFER_STATE
+struct yy_buffer_state
+	{
+	FILE *yy_input_file;
+
+	char *yy_ch_buf;		/* input buffer */
+	char *yy_buf_pos;		/* current position in input buffer */
+
+	/* Size of input buffer in bytes, not including room for EOB
+	 * characters.
+	 */
+	int yy_buf_size;
+
+	/* Number of characters read into yy_ch_buf, not including EOB
+	 * characters.
+	 */
+	int yy_n_chars;
+
+	/* Whether we "own" the buffer - i.e., we know we created it,
+	 * and can realloc() it to grow it, and should free() it to
+	 * delete it.
+	 */
+	int yy_is_our_buffer;
+
+	/* Whether this is an "interactive" input source; if so, and
+	 * if we're using stdio for input, then we want to use getc()
+	 * instead of fread(), to make sure we stop fetching input after
+	 * each newline.
+	 */
+	int yy_is_interactive;
+
+	/* Whether we're considered to be at the beginning of a line.
+	 * If so, '^' rules will be active on the next match, otherwise
+	 * not.
+	 */
+	int yy_at_bol;
+
+    int yy_bs_lineno; /**< The line count. */
+    int yy_bs_column; /**< The column count. */
+
+	/* Whether to try to fill the input buffer when we reach the
+	 * end of it.
+	 */
+	int yy_fill_buffer;
+
+	int yy_buffer_status;
+
+#define YY_BUFFER_NEW 0
+#define YY_BUFFER_NORMAL 1
+	/* When an EOF's been seen but there's still some text to process
+	 * then we mark the buffer as YY_EOF_PENDING, to indicate that we
+	 * shouldn't try reading from the input source any more.  We might
+	 * still have a bunch of tokens to match, though, because of
+	 * possible backing-up.
+	 *
+	 * When we actually see the EOF, we change the status to "new"
+	 * (via yyrestart()), so that the user can continue scanning by
+	 * just pointing yyin at a new input file.
+	 */
+#define YY_BUFFER_EOF_PENDING 2
+
+	};
+#endif /* !YY_STRUCT_YY_BUFFER_STATE */
+
+/* Stack of input buffers. */
+static size_t yy_buffer_stack_top = 0; /**< index of top of stack. */
+static size_t yy_buffer_stack_max = 0; /**< capacity of stack. */
+static YY_BUFFER_STATE * yy_buffer_stack = NULL; /**< Stack as an array. */
+
+/* We provide macros for accessing buffer states in case in the
+ * future we want to put the buffer states in a more general
+ * "scanner state".
+ *
+ * Returns the top of the stack, or NULL.
+ */
+#define YY_CURRENT_BUFFER ( (yy_buffer_stack) \
+                          ? (yy_buffer_stack)[(yy_buffer_stack_top)] \
+                          : NULL)
+/* Same as previous macro, but useful when we know that the buffer stack is not
+ * NULL or when we need an lvalue. For internal use only.
+ */
+#define YY_CURRENT_BUFFER_LVALUE (yy_buffer_stack)[(yy_buffer_stack_top)]
+
+/* yy_hold_char holds the character lost when yytext is formed. */
+static char yy_hold_char;
+static int yy_n_chars;		/* number of characters read into yy_ch_buf */
+int yyleng;
+
+/* Points to current character in buffer. */
+static char *yy_c_buf_p = NULL;
+static int yy_init = 0;		/* whether we need to initialize */
+static int yy_start = 0;	/* start state number */
+
+/* Flag which is used to allow yywrap()'s to do buffer switches
+ * instead of setting up a fresh yyin.  A bit of a hack ...
+ */
+static int yy_did_buffer_switch_on_eof;
+
+void yyrestart ( FILE *input_file  );
+void yy_switch_to_buffer ( YY_BUFFER_STATE new_buffer  );
+YY_BUFFER_STATE yy_create_buffer ( FILE *file, int size  );
+void yy_delete_buffer ( YY_BUFFER_STATE b  );
+void yy_flush_buffer ( YY_BUFFER_STATE b  );
+void yypush_buffer_state ( YY_BUFFER_STATE new_buffer  );
+void yypop_buffer_state ( void );
+
+static void yyensure_buffer_stack ( void );
+static void yy_load_buffer_state ( void );
+static void yy_init_buffer ( YY_BUFFER_STATE b, FILE *file  );
+#define YY_FLUSH_BUFFER yy_flush_buffer( YY_CURRENT_BUFFER )
+
+YY_BUFFER_STATE yy_scan_buffer ( char *base, yy_size_t size  );
+YY_BUFFER_STATE yy_scan_string ( const char *yy_str  );
+YY_BUFFER_STATE yy_scan_bytes ( const char *bytes, int len  );
+
+void *yyalloc ( yy_size_t  );
+void *yyrealloc ( void *, yy_size_t  );
+void yyfree ( void *  );
+
+#define yy_new_buffer yy_create_buffer
+#define yy_set_interactive(is_interactive) \
+	{ \
+	if ( ! YY_CURRENT_BUFFER ){ \
+        yyensure_buffer_stack (); \
+		YY_CURRENT_BUFFER_LVALUE =    \
+            yy_create_buffer( yyin, YY_BUF_SIZE ); \
+	} \
+	YY_CURRENT_BUFFER_LVALUE->yy_is_interactive = is_interactive; \
+	}
+#define yy_set_bol(at_bol) \
+	{ \
+	if ( ! YY_CURRENT_BUFFER ){\
+        yyensure_buffer_stack (); \
+		YY_CURRENT_BUFFER_LVALUE =    \
+            yy_create_buffer( yyin, YY_BUF_SIZE ); \
+	} \
+	YY_CURRENT_BUFFER_LVALUE->yy_at_bol = at_bol; \
+	}
+#define YY_AT_BOL() (YY_CURRENT_BUFFER_LVALUE->yy_at_bol)
+
+/* Begin user sect3 */
+
+#define yywrap() (/*CONSTCOND*/1)
+#define YY_SKIP_YYWRAP
+typedef flex_uint8_t YY_CHAR;
+
+FILE *yyin = NULL, *yyout = NULL;
+
+typedef int yy_state_type;
+
+extern int yylineno;
+int yylineno = 1;
+
+extern char *yytext;
+#ifdef yytext_ptr
+#undef yytext_ptr
+#endif
+#define yytext_ptr yytext
+
+static const flex_int16_t yy_nxt[][44] =
+    {
+    {
+        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
+        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
+        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
+        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
+        0,    0,    0,    0
+    },
+
+    {
+        9,   10,   11,   12,   13,   14,   15,   16,   17,   14,
+       18,   19,   20,   21,   22,   22,   23,   24,   25,   26,
+       27,   22,   28,   29,   30,   31,   32,   22,   22,   33,
+       34,   22,   35,   22,   36,   37,   38,   39,   40,   22,
+       41,   22,   22,   42
+
+    },
+
+    {
+        9,   10,   11,   12,   13,   14,   15,   16,   17,   14,
+       18,   19,   20,   21,   22,   22,   23,   24,   25,   26,
+       27,   22,   28,   29,   30,   31,   32,   22,   22,   33,
+       34,   22,   35,   22,   36,   37,   38,   39,   40,   22,
+       41,   22,   22,   42
+    },
+
+    {
+        9,   43,   44,   45,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43
+
+    },
+
+    {
+        9,   43,   44,   45,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43,   43,   43,   43,   43,   43,   43,
+       43,   43,   43,   43
+    },
+
+    {
+        9,   46,   47,   48,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46
+
+    },
+
+    {
+        9,   46,   47,   48,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46,   46,   46,   46,   46,   46,   46,
+       46,   46,   46,   46
+    },
+
+    {
+        9,   49,   49,   50,   49,   51,   49,   52,   49,   51,
+       49,   49,   49,   49,   49,   49,   49,   49,   49,   49,
+       53,   49,   49,   49,   49,   49,   49,   49,   49,   49,
+       49,   49,   49,   49,   49,   49,   49,   49,   49,   49,
+       49,   49,   49,   49
+
+    },
+
+    {
+        9,   49,   49,   50,   49,   51,   49,   52,   49,   51,
+       49,   49,   49,   49,   49,   49,   49,   49,   49,   49,
+       53,   49,   49,   49,   49,   49,   49,   49,   49,   49,
+       49,   49,   49,   49,   49,   49,   49,   49,   49,   49,
+       49,   49,   49,   49
+    },
+
+    {
+       -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,
+       -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,
+       -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,
+       -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,   -9,
+       -9,   -9,   -9,   -9
+
+    },
+
+    {
+        9,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,
+      -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,
+      -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,
+      -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,  -10,
+      -10,  -10,  -10,  -10
+    },
+
+    {
+        9,  -11,   54,  -11,  -11,  -11,  -11,  -11,  -11,  -11,
+      -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,
+      -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,
+      -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,
+      -11,  -11,  -11,  -11
+
+    },
+
+    {
+        9,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,
+      -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,
+      -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,
+      -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,
+      -12,  -12,  -12,  -12
+    },
+
+    {
+        9,  -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,
+      -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,   55,  -13,
+      -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,
+      -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13,
+      -13,  -13,  -13,  -13
+
+    },
+
+    {
+        9,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,
+      -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,
+      -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,
+      -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,
+      -14,  -14,  -14,  -14
+    },
+
+    {
+        9,   56,   56,  -15,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56
+
+    },
+
+    {
+        9,  -16,  -16,  -16,  -16,  -16,  -16,   57,  -16,  -16,
+      -16,  -16,  -16,   57,   57,   57,  -16,  -16,  -16,  -16,
+      -16,   57,   57,   57,   57,   57,   57,   57,   57,   57,
+       57,   57,   57,   57,   57,   57,   57,   57,   57,   57,
+       57,   57,   57,  -16
+    },
+
+    {
+        9,  -17,  -17,  -17,  -17,  -17,  -17,  -17,   58,  -17,
+      -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,
+      -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,
+      -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,
+      -17,  -17,  -17,  -17
+
+    },
+
+    {
+        9,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,
+      -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,
+      -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,
+      -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,
+      -18,  -18,  -18,  -18
+    },
+
+    {
+        9,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,
+      -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,
+      -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,
+      -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,  -19,
+      -19,  -19,  -19,  -19
+
+    },
+
+    {
+        9,  -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,
+      -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,   59,  -20,
+      -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,
+      -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20,
+      -20,  -20,  -20,  -20
+    },
+
+    {
+        9,  -21,  -21,  -21,  -21,  -21,  -21,   57,  -21,  -21,
+      -21,  -21,  -21,   60,   61,   61,  -21,  -21,  -21,  -21,
+      -21,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -21
+
+    },
+
+    {
+        9,  -22,  -22,  -22,  -22,  -22,  -22,   57,  -22,  -22,
+      -22,  -22,  -22,   61,   61,   61,  -22,  -22,  -22,  -22,
+      -22,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -22
+    },
+
+    {
+        9,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,
+      -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,   62,  -23,
+      -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,
+      -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,
+      -23,  -23,  -23,  -23
+
+    },
+
+    {
+        9,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,
+      -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,   63,  -24,
+      -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,
+      -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,
+      -24,  -24,  -24,  -24
+    },
+
+    {
+        9,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,
+      -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,
+      -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,
+      -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,  -25,
+      -25,  -25,  -25,  -25
+
+    },
+
+    {
+        9,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,
+      -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,   64,  -26,
+      -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,
+      -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,
+      -26,  -26,  -26,  -26
+    },
+
+    {
+        9,  -27,  -27,   65,  -27,  -27,  -27,  -27,  -27,  -27,
+      -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,
+      -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,
+      -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27,
+      -27,  -27,  -27,  -27
+
+    },
+
+    {
+        9,  -28,  -28,  -28,  -28,  -28,  -28,   57,  -28,  -28,
+      -28,  -28,  -28,   61,   61,   61,  -28,  -28,  -28,  -28,
+      -28,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   66,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -28
+    },
+
+    {
+        9,  -29,  -29,  -29,  -29,  -29,  -29,   57,  -29,  -29,
+      -29,  -29,  -29,   61,   61,   61,  -29,  -29,  -29,  -29,
+      -29,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   67,   61,   61,   61,   61,   61,
+       61,   61,   61,  -29
+
+    },
+
+    {
+        9,  -30,  -30,  -30,  -30,  -30,  -30,   57,  -30,  -30,
+      -30,  -30,  -30,   61,   61,   61,  -30,  -30,  -30,  -30,
+      -30,   61,   61,   61,   61,   61,   61,   61,   61,   68,
+       61,   61,   61,   61,   69,   61,   61,   61,   61,   61,
+       61,   61,   61,  -30
+    },
+
+    {
+        9,  -31,  -31,  -31,  -31,  -31,  -31,   57,  -31,  -31,
+      -31,  -31,  -31,   61,   61,   61,  -31,  -31,  -31,  -31,
+      -31,   61,   61,   61,   61,   61,   70,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -31
+
+    },
+
+    {
+        9,  -32,  -32,  -32,  -32,  -32,  -32,   57,  -32,  -32,
+      -32,  -32,  -32,   61,   61,   61,  -32,  -32,  -32,  -32,
+      -32,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   71,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -32
+    },
+
+    {
+        9,  -33,  -33,  -33,  -33,  -33,  -33,   57,  -33,  -33,
+      -33,  -33,  -33,   61,   61,   61,  -33,  -33,  -33,  -33,
+      -33,   61,   61,   61,   61,   61,   72,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -33
+
+    },
+
+    {
+        9,  -34,  -34,  -34,  -34,  -34,  -34,   57,  -34,  -34,
+      -34,  -34,  -34,   61,   61,   61,  -34,  -34,  -34,  -34,
+      -34,   61,   61,   61,   61,   61,   61,   73,   61,   61,
+       61,   61,   74,   75,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -34
+    },
+
+    {
+        9,  -35,  -35,  -35,  -35,  -35,  -35,   57,  -35,  -35,
+      -35,  -35,  -35,   61,   61,   61,  -35,  -35,  -35,  -35,
+      -35,   61,   76,   61,   61,   61,   77,   61,   61,   61,
+       61,   61,   61,   61,   78,   61,   61,   61,   61,   61,
+       61,   61,   61,  -35
+
+    },
+
+    {
+        9,  -36,  -36,  -36,  -36,  -36,  -36,   57,  -36,  -36,
+      -36,  -36,  -36,   61,   61,   61,  -36,  -36,  -36,  -36,
+      -36,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   79,   61,   80,   61,   61,   61,   61,
+       61,   61,   61,  -36
+    },
+
+    {
+        9,  -37,  -37,  -37,  -37,  -37,  -37,   57,  -37,  -37,
+      -37,  -37,  -37,   61,   61,   61,  -37,  -37,  -37,  -37,
+      -37,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   81,   61,   61,   61,
+       61,   61,   61,  -37
+
+    },
+
+    {
+        9,  -38,  -38,  -38,  -38,  -38,  -38,   57,  -38,  -38,
+      -38,  -38,  -38,   61,   61,   61,  -38,  -38,  -38,  -38,
+      -38,   61,   82,   61,   61,   61,   83,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -38
+    },
+
+    {
+        9,  -39,  -39,  -39,  -39,  -39,  -39,   57,  -39,  -39,
+      -39,  -39,  -39,   61,   61,   61,  -39,  -39,  -39,  -39,
+      -39,   61,   61,   61,   61,   61,   84,   61,   61,   61,
+       61,   61,   61,   61,   85,   61,   61,   61,   86,   61,
+       61,   61,   61,  -39
+
+    },
+
+    {
+        9,  -40,  -40,  -40,  -40,  -40,  -40,   57,  -40,  -40,
+      -40,  -40,  -40,   61,   61,   61,  -40,  -40,  -40,  -40,
+      -40,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   87,   61,   61,   61,
+       61,   61,   61,  -40
+    },
+
+    {
+        9,  -41,  -41,  -41,  -41,  -41,  -41,   57,  -41,  -41,
+      -41,  -41,  -41,   61,   61,   61,  -41,  -41,  -41,  -41,
+      -41,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       88,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -41
+
+    },
+
+    {
+        9,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,
+      -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,
+      -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,
+      -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,
+      -42,  -42,  -42,   89
+    },
+
+    {
+        9,   90,   91,  -43,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90
+
+    },
+
+    {
+        9,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,
+      -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,
+      -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,
+      -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,  -44,
+      -44,  -44,  -44,  -44
+    },
+
+    {
+        9,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,
+      -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,
+      -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,
+      -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,
+      -45,  -45,  -45,  -45
+
+    },
+
+    {
+        9,   92,   92,  -46,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92
+    },
+
+    {
+        9,  -47,   93,   94,  -47,  -47,  -47,  -47,  -47,  -47,
+      -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,
+      -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,
+      -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,  -47,
+      -47,  -47,  -47,  -47
+
+    },
+
+    {
+        9,   95,  -48,  -48,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95
+    },
+
+    {
+        9,   96,   96,  -49,   96,  -49,   96,  -49,   96,  -49,
+       96,   96,   96,   96,   96,   96,   96,   96,   96,   96,
+      -49,   96,   96,   96,   96,   96,   96,   96,   96,   96,
+       96,   96,   96,   96,   96,   96,   96,   96,   96,   96,
+       96,   96,   96,   96
+
+    },
+
+    {
+        9,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,
+      -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,
+      -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,
+      -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,
+      -50,  -50,  -50,  -50
+    },
+
+    {
+        9,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,
+      -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,
+      -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,
+      -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,  -51,
+      -51,  -51,  -51,  -51
+
+    },
+
+    {
+        9,   97,   97,  -52,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97
+    },
+
+    {
+        9,   98,   98,  -53,   98,   98,   98,   98,   98,   98,
+       98,   98,   98,   98,   98,   98,   98,   98,   98,   98,
+       98,   98,   98,   98,   98,   98,   98,   98,   98,   98,
+       98,   98,   98,   98,   98,   98,   98,   98,   98,   98,
+       98,   98,   98,   98
+
+    },
+
+    {
+        9,  -54,   54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,
+      -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,
+      -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,
+      -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,
+      -54,  -54,  -54,  -54
+    },
+
+    {
+        9,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,
+      -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,
+      -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,
+      -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,
+      -55,  -55,  -55,  -55
+
+    },
+
+    {
+        9,   56,   56,  -56,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56,   56,   56,   56,   56,   56,   56,
+       56,   56,   56,   56
+    },
+
+    {
+        9,  -57,  -57,  -57,  -57,  -57,  -57,   57,  -57,  -57,
+      -57,  -57,  -57,   57,   57,   57,  -57,  -57,  -57,  -57,
+      -57,   57,   57,   57,   57,   57,   57,   57,   57,   57,
+       57,   57,   57,   57,   57,   57,   57,   57,   57,   57,
+       57,   57,   57,  -57
+
+    },
+
+    {
+        9,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,
+      -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,
+      -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,
+      -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,
+      -58,  -58,  -58,  -58
+    },
+
+    {
+        9,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,
+      -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,
+      -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,
+      -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,
+      -59,  -59,  -59,  -59
+
+    },
+
+    {
+        9,  -60,  -60,  -60,  -60,  -60,  -60,   57,  -60,  -60,
+      -60,  -60,  -60,   99,   61,   61,  -60,  -60,  -60,  -60,
+      -60,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -60
+    },
+
+    {
+        9,  -61,  -61,  -61,  -61,  -61,  -61,   57,  -61,  -61,
+      -61,  -61,  -61,   61,   61,   61,  -61,  -61,  -61,  -61,
+      -61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -61
+
+    },
+
+    {
+        9,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,
+      -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,
+      -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,
+      -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,
+      -62,  -62,  -62,  -62
+    },
+
+    {
+        9,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,
+      -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,
+      -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,
+      -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,
+      -63,  -63,  -63,  -63
+
+    },
+
+    {
+        9,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,
+      -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,
+      -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,
+      -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,  -64,
+      -64,  -64,  -64,  -64
+    },
+
+    {
+        9,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,
+      -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,
+      -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,
+      -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,  -65,
+      -65,  -65,  -65,  -65
+
+    },
+
+    {
+        9,  -66,  -66,  -66,  -66,  -66,  -66,   57,  -66,  -66,
+      -66,  -66,  -66,   61,   61,   61,  -66,  -66,  -66,  -66,
+      -66,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  100,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -66
+    },
+
+    {
+        9,  -67,  -67,  -67,  -67,  -67,  -67,   57,  -67,  -67,
+      -67,  -67,  -67,   61,   61,   61,  -67,  -67,  -67,  -67,
+      -67,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  101,   61,   61,   61,   61,   61,
+       61,   61,   61,  -67
+
+    },
+
+    {
+        9,  -68,  -68,  -68,  -68,  -68,  -68,   57,  -68,  -68,
+      -68,  -68,  -68,   61,   61,   61,  -68,  -68,  -68,  -68,
+      -68,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  102,   61,   61,   61,   61,   61,
+       61,   61,   61,  -68
+    },
+
+    {
+        9,  -69,  -69,  -69,  -69,  -69,  -69,   57,  -69,  -69,
+      -69,  -69,  -69,   61,   61,   61,  -69,  -69,  -69,  -69,
+      -69,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,  103,  104,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -69
+
+    },
+
+    {
+        9,  -70,  -70,  -70,  -70,  -70,  -70,   57,  -70,  -70,
+      -70,  -70,  -70,   61,   61,   61,  -70,  -70,  -70,  -70,
+      -70,   61,   61,   61,   61,   61,   61,  105,   61,   61,
+       61,   61,   61,   61,   61,  106,   61,   61,   61,   61,
+       61,   61,   61,  -70
+    },
+
+    {
+        9,  -71,  -71,  -71,  -71,  -71,  -71,   57,  -71,  -71,
+      -71,  -71,  -71,   61,   61,   61,  -71,  -71,  -71,  -71,
+      -71,   61,   61,   61,   61,  107,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -71
+
+    },
+
+    {
+        9,  -72,  -72,  -72,  -72,  -72,  -72,   57,  -72,  -72,
+      -72,  -72,  -72,   61,   61,   61,  -72,  -72,  -72,  -72,
+      -72,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  108,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  109,   61,  -72
+    },
+
+    {
+        9,  -73,  -73,  -73,  -73,  -73,  -73,   57,  -73,  -73,
+      -73,  -73,  -73,   61,   61,   61,  -73,  -73,  -73,  -73,
+      -73,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -73
+
+    },
+
+    {
+        9,  -74,  -74,  -74,  -74,  -74,  -74,   57,  -74,  -74,
+      -74,  -74,  -74,   61,   61,   61,  -74,  -74,  -74,  -74,
+      -74,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,  110,   61,   61,   61,   61,
+       61,   61,   61,  -74
+    },
+
+    {
+        9,  -75,  -75,  -75,  -75,  -75,  -75,   57,  -75,  -75,
+      -75,  -75,  -75,   61,   61,   61,  -75,  -75,  -75,  -75,
+      -75,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  111,   61,
+       61,   61,   61,  -75
+
+    },
+
+    {
+        9,  -76,  -76,  -76,  -76,  -76,  -76,   57,  -76,  -76,
+      -76,  -76,  -76,   61,   61,   61,  -76,  -76,  -76,  -76,
+      -76,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      112,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -76
+    },
+
+    {
+        9,  -77,  -77,  -77,  -77,  -77,  -77,   57,  -77,  -77,
+      -77,  -77,  -77,   61,   61,   61,  -77,  -77,  -77,  -77,
+      -77,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  113,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -77
+
+    },
+
+    {
+        9,  -78,  -78,  -78,  -78,  -78,  -78,   57,  -78,  -78,
+      -78,  -78,  -78,   61,   61,   61,  -78,  -78,  -78,  -78,
+      -78,   61,   61,   61,   61,  114,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -78
+    },
+
+    {
+        9,  -79,  -79,  -79,  -79,  -79,  -79,   57,  -79,  -79,
+      -79,  -79,  -79,   61,   61,   61,  -79,  -79,  -79,  -79,
+      -79,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -79
+
+    },
+
+    {
+        9,  -80,  -80,  -80,  -80,  -80,  -80,   57,  -80,  -80,
+      -80,  -80,  -80,   61,   61,   61,  -80,  -80,  -80,  -80,
+      -80,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  115,   61,
+       61,   61,   61,  -80
+    },
+
+    {
+        9,  -81,  -81,  -81,  -81,  -81,  -81,   57,  -81,  -81,
+      -81,  -81,  -81,   61,   61,   61,  -81,  -81,  -81,  -81,
+      -81,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  116,   61,   61,   61,   61,   61,
+       61,   61,   61,  -81
+
+    },
+
+    {
+        9,  -82,  -82,  -82,  -82,  -82,  -82,   57,  -82,  -82,
+      -82,  -82,  -82,   61,   61,   61,  -82,  -82,  -82,  -82,
+      -82,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  117,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -82
+    },
+
+    {
+        9,  -83,  -83,  -83,  -83,  -83,  -83,   57,  -83,  -83,
+      -83,  -83,  -83,   61,   61,   61,  -83,  -83,  -83,  -83,
+      -83,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,  118,   61,   61,
+       61,   61,   61,  -83
+
+    },
+
+    {
+        9,  -84,  -84,  -84,  -84,  -84,  -84,   57,  -84,  -84,
+      -84,  -84,  -84,   61,   61,   61,  -84,  -84,  -84,  -84,
+      -84,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  119,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -84
+    },
+
+    {
+        9,  -85,  -85,  -85,  -85,  -85,  -85,   57,  -85,  -85,
+      -85,  -85,  -85,   61,   61,   61,  -85,  -85,  -85,  -85,
+      -85,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,  120,
+       61,   61,   61,  -85
+
+    },
+
+    {
+        9,  -86,  -86,  -86,  -86,  -86,  -86,   57,  -86,  -86,
+      -86,  -86,  -86,   61,   61,   61,  -86,  -86,  -86,  -86,
+      -86,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,  121,   61,   61,   61,
+       61,   61,   61,  -86
+    },
+
+    {
+        9,  -87,  -87,  -87,  -87,  -87,  -87,   57,  -87,  -87,
+      -87,  -87,  -87,   61,   61,   61,  -87,  -87,  -87,  -87,
+      -87,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      122,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -87
+
+    },
+
+    {
+        9,  -88,  -88,  -88,  -88,  -88,  -88,   57,  -88,  -88,
+      -88,  -88,  -88,   61,   61,   61,  -88,  -88,  -88,  -88,
+      -88,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,  123,   61,   61,
+       61,   61,   61,  -88
+    },
+
+    {
+        9,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,
+      -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,
+      -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,
+      -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,  -89,
+      -89,  -89,  -89,  -89
+
+    },
+
+    {
+        9,   90,   91,  -90,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90,   90,   90,   90,   90,   90,   90,
+       90,   90,   90,   90
+    },
+
+    {
+        9,   91,   91,  -91,   91,   91,   91,   91,   91,   91,
+       91,   91,   91,   91,   91,   91,   91,   91,   91,   91,
+       91,   91,   91,   91,   91,   91,   91,   91,   91,   91,
+       91,   91,   91,   91,   91,   91,   91,   91,   91,   91,
+       91,   91,   91,   91
+
+    },
+
+    {
+        9,   92,   92,  -92,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92,   92,   92,   92,   92,   92,   92,
+       92,   92,   92,   92
+    },
+
+    {
+        9,  -93,   93,   94,  -93,  -93,  -93,  -93,  -93,  -93,
+      -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,
+      -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,
+      -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,  -93,
+      -93,  -93,  -93,  -93
+
+    },
+
+    {
+        9,   95,  -94,  -94,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95,   95,   95,   95,   95,   95,   95,
+       95,   95,   95,   95
+    },
+
+    {
+        9,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,
+      -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,
+      -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,
+      -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,  -95,
+      -95,  -95,  -95,  -95
+
+    },
+
+    {
+        9,   96,   96,  -96,   96,  -96,   96,  -96,   96,  -96,
+       96,   96,   96,   96,   96,   96,   96,   96,   96,   96,
+      -96,   96,   96,   96,   96,   96,   96,   96,   96,   96,
+       96,   96,   96,   96,   96,   96,   96,   96,   96,   96,
+       96,   96,   96,   96
+    },
+
+    {
+        9,   97,   97,  -97,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97,   97,   97,   97,   97,   97,   97,
+       97,   97,   97,   97
+
+    },
+
+    {
+        9,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,
+      -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,
+      -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,
+      -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,  -98,
+      -98,  -98,  -98,  -98
+    },
+
+    {
+        9,  -99,  -99,  -99,  -99,  -99,  -99,   57,  -99,  -99,
+      -99,  -99,  -99,   61,   61,   61,  -99,  -99,  -99,  -99,
+      -99,   61,   61,   61,   61,   61,   61,   61,   61,  124,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  -99
+
+    },
+
+    {
+        9, -100, -100, -100, -100, -100, -100,   57, -100, -100,
+     -100, -100, -100,   61,   61,   61, -100, -100, -100, -100,
+     -100,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  125,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -100
+    },
+
+    {
+        9, -101, -101, -101, -101, -101, -101,   57, -101, -101,
+     -101, -101, -101,   61,   61,   61, -101, -101, -101, -101,
+     -101,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  126,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -101
+
+    },
+
+    {
+        9, -102, -102, -102, -102, -102, -102,   57, -102, -102,
+     -102, -102, -102,   61,   61,   61, -102, -102, -102, -102,
+     -102,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      127,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -102
+    },
+
+    {
+        9, -103, -103, -103, -103, -103, -103,   57, -103, -103,
+     -103, -103, -103,   61,   61,   61, -103, -103, -103, -103,
+     -103,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,  128,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -103
+
+    },
+
+    {
+        9, -104, -104, -104, -104, -104, -104,   57, -104, -104,
+     -104, -104, -104,   61,   61,   61, -104, -104, -104, -104,
+     -104,   61,   61,   61,   61,   61,   61,  129,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -104
+    },
+
+    {
+        9, -105, -105, -105, -105, -105, -105,   57, -105, -105,
+     -105, -105, -105,   61,   61,   61, -105, -105, -105, -105,
+     -105,  130,  131,   61,  132,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -105
+
+    },
+
+    {
+        9, -106, -106, -106, -106, -106, -106,   57, -106, -106,
+     -106, -106, -106,   61,   61,   61, -106, -106, -106, -106,
+     -106,   61,   61,   61,   61,   61,  133,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -106
+    },
+
+    {
+        9, -107, -107, -107, -107, -107, -107,   57, -107, -107,
+     -107, -107, -107,   61,   61,   61, -107, -107, -107, -107,
+     -107,   61,   61,   61,  134,   61,   61,   61,   61,   61,
+      135,   61,  136,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -107
+
+    },
+
+    {
+        9, -108, -108, -108, -108, -108, -108,   57, -108, -108,
+     -108, -108, -108,   61,   61,   61, -108, -108, -108, -108,
+     -108,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,  137,   61,   61,   61,   61,
+       61,   61,   61, -108
+    },
+
+    {
+        9, -109, -109, -109, -109, -109, -109,   57, -109, -109,
+     -109, -109, -109,   61,   61,   61, -109, -109, -109, -109,
+     -109,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -109
+
+    },
+
+    {
+        9, -110, -110, -110, -110, -110, -110,   57, -110, -110,
+     -110, -110, -110,   61,   61,   61, -110, -110, -110, -110,
+     -110,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  138,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -110
+    },
+
+    {
+        9, -111, -111, -111, -111, -111, -111,   57, -111, -111,
+     -111, -111, -111,   61,   61,   61, -111, -111, -111, -111,
+     -111,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -111
+
+    },
+
+    {
+        9, -112, -112, -112, -112, -112, -112,   57, -112, -112,
+     -112, -112, -112,   61,   61,   61, -112, -112, -112, -112,
+     -112,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  139,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -112
+    },
+
+    {
+        9, -113, -113, -113, -113, -113, -113,   57, -113, -113,
+     -113, -113, -113,   61,   61,   61, -113, -113, -113, -113,
+     -113,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,  140,
+       61,   61,   61, -113
+
+    },
+
+    {
+        9, -114, -114, -114, -114, -114, -114,   57, -114, -114,
+     -114, -114, -114,   61,   61,   61, -114, -114, -114, -114,
+     -114,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,  141,
+       61,   61,   61, -114
+    },
+
+    {
+        9, -115, -115, -115, -115, -115, -115,   57, -115, -115,
+     -115, -115, -115,   61,   61,   61, -115, -115, -115, -115,
+     -115,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      142,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -115
+
+    },
+
+    {
+        9, -116, -116, -116, -116, -116, -116,   57, -116, -116,
+     -116, -116, -116,   61,   61,   61, -116, -116, -116, -116,
+     -116,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,  143,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -116
+    },
+
+    {
+        9, -117, -117, -117, -117, -117, -117,   57, -117, -117,
+     -117, -117, -117,   61,   61,   61, -117, -117, -117, -117,
+     -117,   61,   61,   61,   61,   61,   61,   61,  144,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -117
+
+    },
+
+    {
+        9, -118, -118, -118, -118, -118, -118,   57, -118, -118,
+     -118, -118, -118,   61,   61,   61, -118, -118, -118, -118,
+     -118,   61,   61,   61,   61,   61,  145,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -118
+    },
+
+    {
+        9, -119, -119, -119, -119, -119, -119,   57, -119, -119,
+     -119, -119, -119,   61,   61,   61, -119, -119, -119, -119,
+     -119,   61,   61,   61,   61,   61,  146,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -119
+
+    },
+
+    {
+        9, -120, -120, -120, -120, -120, -120,   57, -120, -120,
+     -120, -120, -120,   61,   61,   61, -120, -120, -120, -120,
+     -120,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,  147,   61,   61,   61,
+       61,   61,   61, -120
+    },
+
+    {
+        9, -121, -121, -121, -121, -121, -121,   57, -121, -121,
+     -121, -121, -121,   61,   61,   61, -121, -121, -121, -121,
+     -121,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      148,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -121
+
+    },
+
+    {
+        9, -122, -122, -122, -122, -122, -122,   57, -122, -122,
+     -122, -122, -122,   61,   61,   61, -122, -122, -122, -122,
+     -122,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,  149,   61,   61,
+       61,   61,   61, -122
+    },
+
+    {
+        9, -123, -123, -123, -123, -123, -123,   57, -123, -123,
+     -123, -123, -123,   61,   61,   61, -123, -123, -123, -123,
+     -123,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      150,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -123
+
+    },
+
+    {
+        9, -124, -124, -124, -124, -124, -124,   57, -124, -124,
+     -124, -124, -124,   61,   61,   61, -124, -124, -124, -124,
+     -124,   61,   61,   61,   61,   61,  151,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -124
+    },
+
+    {
+        9, -125, -125, -125, -125, -125, -125,   57, -125, -125,
+     -125, -125, -125,   61,   61,   61, -125, -125, -125, -125,
+     -125,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  152,   61,   61,   61,   61,   61,
+       61,   61,   61, -125
+
+    },
+
+    {
+        9, -126, -126, -126, -126, -126, -126,   57, -126, -126,
+     -126, -126, -126,   61,   61,   61, -126, -126, -126, -126,
+     -126,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -126
+    },
+
+    {
+        9, -127, -127, -127, -127, -127, -127,   57, -127, -127,
+     -127, -127, -127,   61,   61,   61, -127, -127, -127, -127,
+     -127,   61,   61,   61,  153,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -127
+
+    },
+
+    {
+        9, -128, -128, -128, -128, -128, -128,   57, -128, -128,
+     -128, -128, -128,   61,   61,   61, -128, -128, -128, -128,
+     -128,   61,   61,   61,   61,   61,  154,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -128
+    },
+
+    {
+        9, -129, -129, -129, -129, -129, -129,   57, -129, -129,
+     -129, -129, -129,   61,   61,   61, -129, -129, -129, -129,
+     -129,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      155,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -129
+
+    },
+
+    {
+        9, -130, -130, -130, -130, -130, -130,   57, -130, -130,
+     -130, -130, -130,   61,   61,   61, -130, -130, -130, -130,
+     -130,   61,   61,  156,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  157,   61,
+       61,   61,   61, -130
+    },
+
+    {
+        9, -131, -131, -131, -131, -131, -131,   57, -131, -131,
+     -131, -131, -131,   61,   61,   61, -131, -131, -131, -131,
+     -131,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,  158,
+       61,   61,   61, -131
+
+    },
+
+    {
+        9, -132, -132, -132, -132, -132, -132,   57, -132, -132,
+     -132, -132, -132,   61,   61,   61, -132, -132, -132, -132,
+     -132,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  159,   61,   61,   61,   61,   61,
+       61,   61,   61, -132
+    },
+
+    {
+        9, -133, -133, -133, -133, -133, -133,   57, -133, -133,
+     -133, -133, -133,   61,   61,   61, -133, -133, -133, -133,
+     -133,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  160,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -133
+
+    },
+
+    {
+        9, -134, -134, -134, -134, -134, -134,   57, -134, -134,
+     -134, -134, -134,   61,   61,   61, -134, -134, -134, -134,
+     -134,   61,   61,   61,   61,   61,   61,   61,   61,  161,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -134
+    },
+
+    {
+        9, -135, -135, -135, -135, -135, -135,   57, -135, -135,
+     -135, -135, -135,   61,   61,   61, -135, -135, -135, -135,
+     -135,   61,   61,   61,   61,   61,   61,  162,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -135
+
+    },
+
+    {
+        9, -136, -136, -136, -136, -136, -136,   57, -136, -136,
+     -136, -136, -136,   61,   61,   61, -136, -136, -136, -136,
+     -136,   61,   61,   61,   61,   61,  163,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -136
+    },
+
+    {
+        9, -137, -137, -137, -137, -137, -137,   57, -137, -137,
+     -137, -137, -137,   61,   61,   61, -137, -137, -137, -137,
+     -137,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -137
+
+    },
+
+    {
+        9, -138, -138, -138, -138, -138, -138,   57, -138, -138,
+     -138, -138, -138,   61,   61,   61, -138, -138, -138, -138,
+     -138,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,  164, -138
+    },
+
+    {
+        9, -139, -139, -139, -139, -139, -139,   57, -139, -139,
+     -139, -139, -139,   61,   61,   61, -139, -139, -139, -139,
+     -139,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,  165,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -139
+
+    },
+
+    {
+        9, -140, -140, -140, -140, -140, -140,   57, -140, -140,
+     -140, -140, -140,   61,   61,   61, -140, -140, -140, -140,
+     -140,   61,   61,   61,  166,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -140
+    },
+
+    {
+        9, -141, -141, -141, -141, -141, -141,   57, -141, -141,
+     -141, -141, -141,   61,   61,   61, -141, -141, -141, -141,
+     -141,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  167,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -141
+
+    },
+
+    {
+        9, -142, -142, -142, -142, -142, -142,   57, -142, -142,
+     -142, -142, -142,   61,   61,   61, -142, -142, -142, -142,
+     -142,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  168,   61,   61,   61,   61,   61,
+       61,   61,   61, -142
+    },
+
+    {
+        9, -143, -143, -143, -143, -143, -143,   57, -143, -143,
+     -143, -143, -143,   61,   61,   61, -143, -143, -143, -143,
+     -143,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,  169,   61,   61,   61,   61,
+       61,   61,   61, -143
+
+    },
+
+    {
+        9, -144, -144, -144, -144, -144, -144,   57, -144, -144,
+     -144, -144, -144,   61,   61,   61, -144, -144, -144, -144,
+     -144,   61,   61,   61,   61,   61,  170,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -144
+    },
+
+    {
+        9, -145, -145, -145, -145, -145, -145,   57, -145, -145,
+     -145, -145, -145,   61,   61,   61, -145, -145, -145, -145,
+     -145,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  171,   61,
+       61,   61,   61, -145
+
+    },
+
+    {
+        9, -146, -146, -146, -146, -146, -146,   57, -146, -146,
+     -146, -146, -146,   61,   61,   61, -146, -146, -146, -146,
+     -146,   61,   61,   61,  172,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -146
+    },
+
+    {
+        9, -147, -147, -147, -147, -147, -147,   57, -147, -147,
+     -147, -147, -147,   61,   61,   61, -147, -147, -147, -147,
+     -147,   61,   61,   61,  173,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -147
+
+    },
+
+    {
+        9, -148, -148, -148, -148, -148, -148,   57, -148, -148,
+     -148, -148, -148,   61,   61,   61, -148, -148, -148, -148,
+     -148,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  174,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -148
+    },
+
+    {
+        9, -149, -149, -149, -149, -149, -149,   57, -149, -149,
+     -149, -149, -149,   61,   61,   61, -149, -149, -149, -149,
+     -149,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  175,   61,
+       61,   61,   61, -149
+
+    },
+
+    {
+        9, -150, -150, -150, -150, -150, -150,   57, -150, -150,
+     -150, -150, -150,   61,   61,   61, -150, -150, -150, -150,
+     -150,   61,   61,  176,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -150
+    },
+
+    {
+        9, -151, -151, -151, -151, -151, -151,   57, -151, -151,
+     -151, -151, -151,   61,   61,   61, -151, -151, -151, -151,
+     -151,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  177,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -151
+
+    },
+
+    {
+        9, -152, -152, -152, -152, -152, -152,   57, -152, -152,
+     -152, -152, -152,   61,   61,   61, -152, -152, -152, -152,
+     -152,   61,   61,   61,  178,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -152
+    },
+
+    {
+        9, -153, -153, -153, -153, -153, -153,   57, -153, -153,
+     -153, -153, -153,   61,   61,   61, -153, -153, -153, -153,
+     -153,   61,   61,   61,   61,   61,  179,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -153
+
+    },
+
+    {
+        9, -154, -154, -154, -154, -154, -154,   57, -154, -154,
+     -154, -154, -154,   61,   61,   61, -154, -154, -154, -154,
+     -154,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  180,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -154
+    },
+
+    {
+        9, -155, -155, -155, -155, -155, -155,   57, -155, -155,
+     -155, -155, -155,   61,   61,   61, -155, -155, -155, -155,
+     -155,   61,   61,   61,   61,   61,   61,   61,  181,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -155
+
+    },
+
+    {
+        9, -156, -156, -156, -156, -156, -156,   57, -156, -156,
+     -156, -156, -156,   61,   61,   61, -156, -156, -156, -156,
+     -156,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  182,   61,   61,   61,   61,   61,
+       61,   61,   61, -156
+    },
+
+    {
+        9, -157, -157, -157, -157, -157, -157,   57, -157, -157,
+     -157, -157, -157,   61,   61,   61, -157, -157, -157, -157,
+     -157,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,  183,   61,   61,   61,
+       61,   61,   61, -157
+
+    },
+
+    {
+        9, -158, -158, -158, -158, -158, -158,   57, -158, -158,
+     -158, -158, -158,   61,   61,   61, -158, -158, -158, -158,
+     -158,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  184,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -158
+    },
+
+    {
+        9, -159, -159, -159, -159, -159, -159,   57, -159, -159,
+     -159, -159, -159,   61,   61,   61, -159, -159, -159, -159,
+     -159,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  185,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -159
+
+    },
+
+    {
+        9, -160, -160, -160, -160, -160, -160,   57, -160, -160,
+     -160, -160, -160,   61,   61,   61, -160, -160, -160, -160,
+     -160,   61,   61,   61,   61,  186,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -160
+    },
+
+    {
+        9, -161, -161, -161, -161, -161, -161,   57, -161, -161,
+     -161, -161, -161,   61,   61,   61, -161, -161, -161, -161,
+     -161,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  187,   61,   61,   61,   61,   61,
+       61,   61,   61, -161
+
+    },
+
+    {
+        9, -162, -162, -162, -162, -162, -162,   57, -162, -162,
+     -162, -162, -162,   61,   61,   61, -162, -162, -162, -162,
+     -162,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -162
+    },
+
+    {
+        9, -163, -163, -163, -163, -163, -163,   57, -163, -163,
+     -163, -163, -163,   61,   61,   61, -163, -163, -163, -163,
+     -163,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  188,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -163
+
+    },
+
+    {
+        9, -164, -164, -164, -164, -164, -164,   57, -164, -164,
+     -164, -164, -164,   61,   61,   61, -164, -164, -164, -164,
+     -164,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -164
+    },
+
+    {
+        9, -165, -165, -165, -165, -165, -165,   57, -165, -165,
+     -165, -165, -165,   61,   61,   61, -165, -165, -165, -165,
+     -165,   61,   61,   61,   61,   61,  189,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -165
+
+    },
+
+    {
+        9, -166, -166, -166, -166, -166, -166,   57, -166, -166,
+     -166, -166, -166,   61,   61,   61, -166, -166, -166, -166,
+     -166,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  190,   61,   61,   61,   61,   61,
+       61,   61,   61, -166
+    },
+
+    {
+        9, -167, -167, -167, -167, -167, -167,   57, -167, -167,
+     -167, -167, -167,   61,   61,   61, -167, -167, -167, -167,
+     -167,   61,   61,   61,   61,   61,  191,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -167
+
+    },
+
+    {
+        9, -168, -168, -168, -168, -168, -168,   57, -168, -168,
+     -168, -168, -168,   61,   61,   61, -168, -168, -168, -168,
+     -168,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  192,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -168
+    },
+
+    {
+        9, -169, -169, -169, -169, -169, -169,   57, -169, -169,
+     -169, -169, -169,   61,   61,   61, -169, -169, -169, -169,
+     -169,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  193,   61,
+       61,   61,   61, -169
+
+    },
+
+    {
+        9, -170, -170, -170, -170, -170, -170,   57, -170, -170,
+     -170, -170, -170,   61,   61,   61, -170, -170, -170, -170,
+     -170,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -170
+    },
+
+    {
+        9, -171, -171, -171, -171, -171, -171,   57, -171, -171,
+     -171, -171, -171,   61,   61,   61, -171, -171, -171, -171,
+     -171,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -171
+
+    },
+
+    {
+        9, -172, -172, -172, -172, -172, -172,   57, -172, -172,
+     -172, -172, -172,   61,   61,   61, -172, -172, -172, -172,
+     -172,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  194,   61,
+       61,   61,   61, -172
+    },
+
+    {
+        9, -173, -173, -173, -173, -173, -173,   57, -173, -173,
+     -173, -173, -173,   61,   61,   61, -173, -173, -173, -173,
+     -173,   61,   61,   61,   61,   61,  195,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -173
+
+    },
+
+    {
+        9, -174, -174, -174, -174, -174, -174,   57, -174, -174,
+     -174, -174, -174,   61,   61,   61, -174, -174, -174, -174,
+     -174,   61,   61,   61,   61,   61,   61,   61,  196,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -174
+    },
+
+    {
+        9, -175, -175, -175, -175, -175, -175,   57, -175, -175,
+     -175, -175, -175,   61,   61,   61, -175, -175, -175, -175,
+     -175,   61,  197,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -175
+
+    },
+
+    {
+        9, -176, -176, -176, -176, -176, -176,   57, -176, -176,
+     -176, -176, -176,   61,   61,   61, -176, -176, -176, -176,
+     -176,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  198,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -176
+    },
+
+    {
+        9, -177, -177, -177, -177, -177, -177,   57, -177, -177,
+     -177, -177, -177,   61,   61,   61, -177, -177, -177, -177,
+     -177,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,  199,   61,   61,   61,   61,
+       61,   61,   61, -177
+
+    },
+
+    {
+        9, -178, -178, -178, -178, -178, -178,   57, -178, -178,
+     -178, -178, -178,   61,   61,   61, -178, -178, -178, -178,
+     -178,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  200,   61,   61,   61,   61,   61,
+       61,   61,   61, -178
+    },
+
+    {
+        9, -179, -179, -179, -179, -179, -179,   57, -179, -179,
+     -179, -179, -179,   61,   61,   61, -179, -179, -179, -179,
+     -179,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -179
+
+    },
+
+    {
+        9, -180, -180, -180, -180, -180, -180,   57, -180, -180,
+     -180, -180, -180,   61,   61,   61, -180, -180, -180, -180,
+     -180,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  201,   61,
+       61,   61,   61, -180
+    },
+
+    {
+        9, -181, -181, -181, -181, -181, -181,   57, -181, -181,
+     -181, -181, -181,   61,   61,   61, -181, -181, -181, -181,
+     -181,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -181
+
+    },
+
+    {
+        9, -182, -182, -182, -182, -182, -182,   57, -182, -182,
+     -182, -182, -182,   61,   61,   61, -182, -182, -182, -182,
+     -182,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,  202,   61,   61,   61,   61,   61,
+       61,   61,   61, -182
+    },
+
+    {
+        9, -183, -183, -183, -183, -183, -183,   57, -183, -183,
+     -183, -183, -183,   61,   61,   61, -183, -183, -183, -183,
+     -183,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      203,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -183
+
+    },
+
+    {
+        9, -184, -184, -184, -184, -184, -184,   57, -184, -184,
+     -184, -184, -184,   61,   61,   61, -184, -184, -184, -184,
+     -184,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  204,   61,
+       61,   61,   61, -184
+    },
+
+    {
+        9, -185, -185, -185, -185, -185, -185,   57, -185, -185,
+     -185, -185, -185,   61,   61,   61, -185, -185, -185, -185,
+     -185,   61,   61,   61,   61,   61,   61,  205,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -185
+
+    },
+
+    {
+        9, -186, -186, -186, -186, -186, -186,   57, -186, -186,
+     -186, -186, -186,   61,   61,   61, -186, -186, -186, -186,
+     -186,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,  206,   61,   61,
+       61,   61,   61, -186
+    },
+
+    {
+        9, -187, -187, -187, -187, -187, -187,   57, -187, -187,
+     -187, -187, -187,   61,   61,   61, -187, -187, -187, -187,
+     -187,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      207,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -187
+
+    },
+
+    {
+        9, -188, -188, -188, -188, -188, -188,   57, -188, -188,
+     -188, -188, -188,   61,   61,   61, -188, -188, -188, -188,
+     -188,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,  208,
+       61,   61,   61, -188
+    },
+
+    {
+        9, -189, -189, -189, -189, -189, -189,   57, -189, -189,
+     -189, -189, -189,   61,   61,   61, -189, -189, -189, -189,
+     -189,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  209,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -189
+
+    },
+
+    {
+        9, -190, -190, -190, -190, -190, -190,   57, -190, -190,
+     -190, -190, -190,   61,   61,   61, -190, -190, -190, -190,
+     -190,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  210,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -190
+    },
+
+    {
+        9, -191, -191, -191, -191, -191, -191,   57, -191, -191,
+     -191, -191, -191,   61,   61,   61, -191, -191, -191, -191,
+     -191,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,  211,   61,   61,
+       61,   61,   61, -191
+
+    },
+
+    {
+        9, -192, -192, -192, -192, -192, -192,   57, -192, -192,
+     -192, -192, -192,   61,   61,   61, -192, -192, -192, -192,
+     -192,   61,  212,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -192
+    },
+
+    {
+        9, -193, -193, -193, -193, -193, -193,   57, -193, -193,
+     -193, -193, -193,   61,   61,   61, -193, -193, -193, -193,
+     -193,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -193
+
+    },
+
+    {
+        9, -194, -194, -194, -194, -194, -194,   57, -194, -194,
+     -194, -194, -194,   61,   61,   61, -194, -194, -194, -194,
+     -194,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -194
+    },
+
+    {
+        9, -195, -195, -195, -195, -195, -195,   57, -195, -195,
+     -195, -195, -195,   61,   61,   61, -195, -195, -195, -195,
+     -195,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -195
+
+    },
+
+    {
+        9, -196, -196, -196, -196, -196, -196,   57, -196, -196,
+     -196, -196, -196,   61,   61,   61, -196, -196, -196, -196,
+     -196,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -196
+    },
+
+    {
+        9, -197, -197, -197, -197, -197, -197,   57, -197, -197,
+     -197, -197, -197,   61,   61,   61, -197, -197, -197, -197,
+     -197,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  213,   61,
+       61,   61,   61, -197
+
+    },
+
+    {
+        9, -198, -198, -198, -198, -198, -198,   57, -198, -198,
+     -198, -198, -198,   61,   61,   61, -198, -198, -198, -198,
+     -198,   61,   61,   61,   61,   61,  214,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -198
+    },
+
+    {
+        9, -199, -199, -199, -199, -199, -199,   57, -199, -199,
+     -199, -199, -199,  215,   61,   61, -199, -199, -199, -199,
+     -199,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -199
+
+    },
+
+    {
+        9, -200, -200, -200, -200, -200, -200,   57, -200, -200,
+     -200, -200, -200,   61,   61,   61, -200, -200, -200, -200,
+     -200,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,  216,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -200
+    },
+
+    {
+        9, -201, -201, -201, -201, -201, -201,   57, -201, -201,
+     -201, -201, -201,   61,   61,   61, -201, -201, -201, -201,
+     -201,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -201
+
+    },
+
+    {
+        9, -202, -202, -202, -202, -202, -202,   57, -202, -202,
+     -202, -202, -202,   61,   61,   61, -202, -202, -202, -202,
+     -202,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  217,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -202
+    },
+
+    {
+        9, -203, -203, -203, -203, -203, -203,   57, -203, -203,
+     -203, -203, -203,   61,   61,   61, -203, -203, -203, -203,
+     -203,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,  218,   61,   61,
+       61,   61,   61, -203
+
+    },
+
+    {
+        9, -204, -204, -204, -204, -204, -204,   57, -204, -204,
+     -204, -204, -204,   61,   61,   61, -204, -204, -204, -204,
+     -204,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -204
+    },
+
+    {
+        9, -205, -205, -205, -205, -205, -205,   57, -205, -205,
+     -205, -205, -205,   61,   61,   61, -205, -205, -205, -205,
+     -205,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      219,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -205
+
+    },
+
+    {
+        9, -206, -206, -206, -206, -206, -206,   57, -206, -206,
+     -206, -206, -206,   61,   61,   61, -206, -206, -206, -206,
+     -206,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -206
+    },
+
+    {
+        9, -207, -207, -207, -207, -207, -207,   57, -207, -207,
+     -207, -207, -207,   61,   61,   61, -207, -207, -207, -207,
+     -207,   61,   61,   61,  220,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -207
+
+    },
+
+    {
+        9, -208, -208, -208, -208, -208, -208,   57, -208, -208,
+     -208, -208, -208,   61,   61,   61, -208, -208, -208, -208,
+     -208,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -208
+    },
+
+    {
+        9, -209, -209, -209, -209, -209, -209,   57, -209, -209,
+     -209, -209, -209,   61,   61,   61, -209, -209, -209, -209,
+     -209,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,  221,
+       61,   61,   61, -209
+
+    },
+
+    {
+        9, -210, -210, -210, -210, -210, -210,   57, -210, -210,
+     -210, -210, -210,   61,   61,   61, -210, -210, -210, -210,
+     -210,   61,   61,   61,   61,   61,   61,  222,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -210
+    },
+
+    {
+        9, -211, -211, -211, -211, -211, -211,   57, -211, -211,
+     -211, -211, -211,   61,   61,   61, -211, -211, -211, -211,
+     -211,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -211
+
+    },
+
+    {
+        9, -212, -212, -212, -212, -212, -212,   57, -212, -212,
+     -212, -212, -212,   61,   61,   61, -212, -212, -212, -212,
+     -212,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  223,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -212
+    },
+
+    {
+        9, -213, -213, -213, -213, -213, -213,   57, -213, -213,
+     -213, -213, -213,   61,   61,   61, -213, -213, -213, -213,
+     -213,   61,   61,   61,   61,   61,  224,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -213
+
+    },
+
+    {
+        9, -214, -214, -214, -214, -214, -214,   57, -214, -214,
+     -214, -214, -214,   61,   61,   61, -214, -214, -214, -214,
+     -214,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -214
+    },
+
+    {
+        9, -215, -215, -215, -215, -215, -215,   57, -215, -215,
+     -215, -215, -215,  225,   61,   61, -215, -215, -215, -215,
+     -215,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -215
+
+    },
+
+    {
+        9, -216, -216, -216, -216, -216, -216,   57, -216, -216,
+     -216, -216, -216,   61,   61,   61, -216, -216, -216, -216,
+     -216,   61,   61,   61,   61,   61,   61,  226,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -216
+    },
+
+    {
+        9, -217, -217, -217, -217, -217, -217,   57, -217, -217,
+     -217, -217, -217,   61,   61,   61, -217, -217, -217, -217,
+     -217,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -217
+
+    },
+
+    {
+        9, -218, -218, -218, -218, -218, -218,   57, -218, -218,
+     -218, -218, -218,   61,   61,   61, -218, -218, -218, -218,
+     -218,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  227,   61,
+       61,   61,   61, -218
+    },
+
+    {
+        9, -219, -219, -219, -219, -219, -219,   57, -219, -219,
+     -219, -219, -219,   61,   61,   61, -219, -219, -219, -219,
+     -219,   61,   61,   61,   61,   61,   61,   61,  228,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -219
+
+    },
+
+    {
+        9, -220, -220, -220, -220, -220, -220,   57, -220, -220,
+     -220, -220, -220,   61,   61,   61, -220, -220, -220, -220,
+     -220,   61,   61,   61,   61,   61,  229,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -220
+    },
+
+    {
+        9, -221, -221, -221, -221, -221, -221,   57, -221, -221,
+     -221, -221, -221,   61,   61,   61, -221, -221, -221, -221,
+     -221,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -221
+
+    },
+
+    {
+        9, -222, -222, -222, -222, -222, -222,   57, -222, -222,
+     -222, -222, -222,   61,   61,   61, -222, -222, -222, -222,
+     -222,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      230,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -222
+    },
+
+    {
+        9, -223, -223, -223, -223, -223, -223,   57, -223, -223,
+     -223, -223, -223,   61,   61,   61, -223, -223, -223, -223,
+     -223,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -223
+
+    },
+
+    {
+        9, -224, -224, -224, -224, -224, -224,   57, -224, -224,
+     -224, -224, -224,   61,   61,   61, -224, -224, -224, -224,
+     -224,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -224
+    },
+
+    {
+        9, -225, -225, -225, -225, -225, -225,   57, -225, -225,
+     -225, -225, -225,  137,   61,   61, -225, -225, -225, -225,
+     -225,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -225
+
+    },
+
+    {
+        9, -226, -226, -226, -226, -226, -226,   57, -226, -226,
+     -226, -226, -226,   61,   61,   61, -226, -226, -226, -226,
+     -226,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      231,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -226
+    },
+
+    {
+        9, -227, -227, -227, -227, -227, -227,   57, -227, -227,
+     -227, -227, -227,   61,   61,   61, -227, -227, -227, -227,
+     -227,   61,  232,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -227
+
+    },
+
+    {
+        9, -228, -228, -228, -228, -228, -228,   57, -228, -228,
+     -228, -228, -228,   61,   61,   61, -228, -228, -228, -228,
+     -228,  233,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -228
+    },
+
+    {
+        9, -229, -229, -229, -229, -229, -229,   57, -229, -229,
+     -229, -229, -229,   61,   61,   61, -229, -229, -229, -229,
+     -229,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -229
+
+    },
+
+    {
+        9, -230, -230, -230, -230, -230, -230,   57, -230, -230,
+     -230, -230, -230,   61,   61,   61, -230, -230, -230, -230,
+     -230,   61,   61,   61,   61,   61,   61,   61,  234,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -230
+    },
+
+    {
+        9, -231, -231, -231, -231, -231, -231,   57, -231, -231,
+     -231, -231, -231,   61,   61,   61, -231, -231, -231, -231,
+     -231,   61,   61,   61,   61,   61,   61,   61,  235,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -231
+
+    },
+
+    {
+        9, -232, -232, -232, -232, -232, -232,   57, -232, -232,
+     -232, -232, -232,   61,   61,   61, -232, -232, -232, -232,
+     -232,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  236,   61,
+       61,   61,   61, -232
+    },
+
+    {
+        9, -233, -233, -233, -233, -233, -233,   57, -233, -233,
+     -233, -233, -233,   61,   61,   61, -233, -233, -233, -233,
+     -233,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,  237,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -233
+
+    },
+
+    {
+        9, -234, -234, -234, -234, -234, -234,   57, -234, -234,
+     -234, -234, -234,   61,   61,   61, -234, -234, -234, -234,
+     -234,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -234
+    },
+
+    {
+        9, -235, -235, -235, -235, -235, -235,   57, -235, -235,
+     -235, -235, -235,   61,   61,   61, -235, -235, -235, -235,
+     -235,  238,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -235
+
+    },
+
+    {
+        9, -236, -236, -236, -236, -236, -236,   57, -236, -236,
+     -236, -236, -236,   61,   61,   61, -236, -236, -236, -236,
+     -236,   61,   61,   61,   61,   61,  239,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -236
+    },
+
+    {
+        9, -237, -237, -237, -237, -237, -237,   57, -237, -237,
+     -237, -237, -237,   61,   61,   61, -237, -237, -237, -237,
+     -237,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+      240,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -237
+
+    },
+
+    {
+        9, -238, -238, -238, -238, -238, -238,   57, -238, -238,
+     -238, -238, -238,   61,   61,   61, -238, -238, -238, -238,
+     -238,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,  241, -238
+    },
+
+    {
+        9, -239, -239, -239, -239, -239, -239,   57, -239, -239,
+     -239, -239, -239,   61,   61,   61, -239, -239, -239, -239,
+     -239,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -239
+
+    },
+
+    {
+        9, -240, -240, -240, -240, -240, -240,   57, -240, -240,
+     -240, -240, -240,   61,   61,   61, -240, -240, -240, -240,
+     -240,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,  242,   61,   61,
+       61,   61,   61, -240
+    },
+
+    {
+        9, -241, -241, -241, -241, -241, -241,   57, -241, -241,
+     -241, -241, -241,   61,   61,   61, -241, -241, -241, -241,
+     -241,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -241
+
+    },
+
+    {
+        9, -242, -242, -242, -242, -242, -242,   57, -242, -242,
+     -242, -242, -242,   61,   61,   61, -242, -242, -242, -242,
+     -242,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,  243,   61,
+       61,   61,   61, -242
+    },
+
+    {
+        9, -243, -243, -243, -243, -243, -243,   57, -243, -243,
+     -243, -243, -243,   61,   61,   61, -243, -243, -243, -243,
+     -243,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61,   61,   61,   61,   61,   61,   61,   61,
+       61,   61,   61, -243
+
+    },
+
+    } ;
+
+static yy_state_type yy_get_previous_state ( void );
+static yy_state_type yy_try_NUL_trans ( yy_state_type current_state  );
+static int yy_get_next_buffer ( void );
+static void yynoreturn yy_fatal_error ( const char* msg  );
+
+/* Done after the current pattern has been matched and before the
+ * corresponding action - sets up yytext.
+ */
+#define YY_DO_BEFORE_ACTION \
+	(yytext_ptr) = yy_bp; \
+	yyleng = (int) (yy_cp - yy_bp); \
+	(yy_hold_char) = *yy_cp; \
+	*yy_cp = '\0'; \
+	(yy_c_buf_p) = yy_cp;
+#define YY_NUM_RULES 67
+#define YY_END_OF_BUFFER 68
+/* This struct is not used in this scanner,
+   but its presence is necessary. */
+struct yy_trans_info
+	{
+	flex_int32_t yy_verify;
+	flex_int32_t yy_nxt;
+	};
+static const flex_int16_t yy_accept[244] =
+    {   0,
+        2,    2,    0,    0,    0,    0,    0,    0,   68,   54,
+        2,    4,   46,   51,    1,   53,   54,   47,   48,   54,
+       52,   52,   54,   42,   40,   44,   54,   52,   52,   52,
+       52,   52,   52,   52,   52,   52,   52,   52,   52,   52,
+       52,   54,   55,   57,   56,   66,   63,   65,   59,   62,
+       61,   58,   60,    2,   41,    1,   53,   39,   50,   52,
+       52,   49,   43,   45,    3,   52,   52,   52,   52,   52,
+       52,   52,   20,   52,   52,   52,   52,   52,   27,   52,
+       52,   52,   52,   52,   52,   52,   52,   52,   38,   55,
+       55,   66,   63,   65,   64,   59,   58,   60,   52,   52,
+
+       52,   52,   52,   52,   52,   52,   52,   52,   19,   52,
+       22,   52,   52,   52,   52,   52,   52,   52,   52,   52,
+       52,   52,   52,   52,   52,    6,   52,   52,   52,   52,
+       52,   52,   52,   52,   52,   52,   18,   52,   52,   24,
+       52,   52,   52,   52,   52,   52,   52,   52,   52,   52,
+       52,   52,   52,   52,   52,   52,   52,   52,   52,   52,
+       52,   16,   52,   21,   52,   52,   52,   52,   52,   31,
+       32,   52,   52,   52,   52,   52,   52,   52,    7,   52,
+        9,   52,   52,   52,   52,   52,   52,   52,   52,   52,
+       52,   28,   30,   33,   34,   35,   52,   52,   52,   52,
+
+        8,   52,   52,   12,   52,   14,   52,   17,   52,   52,
+       26,   52,   52,   37,   52,   52,   10,   52,   52,   52,
+       23,   52,   29,   36,   52,   52,   52,   52,   15,   52,
+       52,   52,   52,   25,   52,   52,   52,   52,   11,   52,
+        5,   52,   13
+    } ;
+
+static const YY_CHAR yy_ec[256] =
+    {   0,
+        1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    2,    4,    5,    6,    7,    1,    8,    9,   10,
+       11,    1,   12,    1,   13,   14,   14,   15,   15,   15,
+       15,   15,   15,   15,   15,   15,   15,   16,    1,   17,
+       18,   19,    1,    1,   15,   15,   15,   15,   15,   15,
+       15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
+       15,   15,   15,   15,   15,   15,   15,   15,   15,   15,
+        1,   20,    1,    1,   21,    1,   22,   23,   24,   25,
+
+       26,   27,   28,   29,   30,   15,   15,   31,   32,   33,
+       34,   35,   15,   36,   37,   38,   39,   40,   15,   41,
+       42,   15,    1,   43,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
+        1,    1,    1,    1,    1
+    } ;
+
+/* Table of booleans, true if rule could match eol. */
+static const flex_int32_t yy_rule_can_match_eol[68] =
+    {   0,
+0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
+    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
+    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 
+    0, 0, 1, 0, 1, 1, 0, 0,     };
+
+extern int yy_flex_debug;
+int yy_flex_debug = 0;
+
+/* The intent behind this definition is that it'll catch
+ * any uses of REJECT which flex missed.
+ */
+#define REJECT reject_used_but_not_detected
+#define yymore() yymore_used_but_not_detected
+#define YY_MORE_ADJ 0
+#define YY_RESTORE_YY_MORE_OFFSET
+char *yytext;
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
+ */
+
+#include <assert.h>
+#include <limits.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <unistd.h>
+#include <glob.h>
+#include <libgen.h>
+
+#include "lkc.h"
+#include "parser.tab.h"
+
+#define YY_DECL		static int yylex1(void)
+
+#define START_STRSIZE	16
+
+static struct {
+	struct file *file;
+	int lineno;
+} current_pos;
+
+static int prev_prev_token = T_EOL;
+static int prev_token = T_EOL;
+static char *text;
+static int text_size, text_asize;
+
+struct buffer {
+	struct buffer *parent;
+	YY_BUFFER_STATE state;
+};
+
+struct buffer *current_buf;
+
+static int last_ts, first_ts;
+
+static char *expand_token(const char *in, size_t n);
+static void append_expanded_string(const char *in);
+static void zconf_endhelp(void);
+static void zconf_endfile(void);
+
+static void new_string(void)
+{
+	text = xmalloc(START_STRSIZE);
+	text_asize = START_STRSIZE;
+	text_size = 0;
+	*text = 0;
+}
+
+static void append_string(const char *str, int size)
+{
+	int new_size = text_size + size + 1;
+	if (new_size > text_asize) {
+		new_size += START_STRSIZE - 1;
+		new_size &= -START_STRSIZE;
+		text = xrealloc(text, new_size);
+		text_asize = new_size;
+	}
+	memcpy(text + text_size, str, size);
+	text_size += size;
+	text[text_size] = 0;
+}
+
+static void alloc_string(const char *str, int size)
+{
+	text = xmalloc(size + 1);
+	memcpy(text, str, size);
+	text[size] = 0;
+}
+
+static void warn_ignored_character(char chr)
+{
+	fprintf(stderr,
+	        "%s:%d:warning: ignoring unsupported character '%c'\n",
+	        current_file->name, yylineno, chr);
+}
+
+#define INITIAL 0
+#define ASSIGN_VAL 1
+#define HELP 2
+#define STRING 3
+
+#ifndef YY_NO_UNISTD_H
+/* Special case for "unistd.h", since it is non-ANSI. We include it way
+ * down here because we want the user's section 1 to have been scanned first.
+ * The user has a chance to override it with an option.
+ */
+#include <unistd.h>
+#endif
+
+#ifndef YY_EXTRA_TYPE
+#define YY_EXTRA_TYPE void *
+#endif
+
+static int yy_init_globals ( void );
+
+/* Accessor methods to globals.
+   These are made visible to non-reentrant scanners for convenience. */
+
+int yylex_destroy ( void );
+
+int yyget_debug ( void );
+
+void yyset_debug ( int debug_flag  );
+
+YY_EXTRA_TYPE yyget_extra ( void );
+
+void yyset_extra ( YY_EXTRA_TYPE user_defined  );
+
+FILE *yyget_in ( void );
+
+void yyset_in  ( FILE * _in_str  );
+
+FILE *yyget_out ( void );
+
+void yyset_out  ( FILE * _out_str  );
+
+			int yyget_leng ( void );
+
+char *yyget_text ( void );
+
+int yyget_lineno ( void );
+
+void yyset_lineno ( int _line_number  );
+
+/* Macros after this point can all be overridden by user definitions in
+ * section 1.
+ */
+
+#ifndef YY_SKIP_YYWRAP
+#ifdef __cplusplus
+extern "C" int yywrap ( void );
+#else
+extern int yywrap ( void );
+#endif
+#endif
+
+#ifndef YY_NO_UNPUT
+    
+    static void yyunput ( int c, char *buf_ptr  );
+    
+#endif
+
+#ifndef yytext_ptr
+static void yy_flex_strncpy ( char *, const char *, int );
+#endif
+
+#ifdef YY_NEED_STRLEN
+static int yy_flex_strlen ( const char * );
+#endif
+
+#ifndef YY_NO_INPUT
+#ifdef __cplusplus
+static int yyinput ( void );
+#else
+static int input ( void );
+#endif
+
+#endif
+
+/* Amount of stuff to slurp up with each read. */
+#ifndef YY_READ_BUF_SIZE
+#ifdef __ia64__
+/* On IA-64, the buffer size is 16k, not 8k */
+#define YY_READ_BUF_SIZE 16384
+#else
+#define YY_READ_BUF_SIZE 8192
+#endif /* __ia64__ */
+#endif
+
+/* Copy whatever the last rule matched to the standard output. */
+#ifndef ECHO
+/* This used to be an fputs(), but since the string might contain NUL's,
+ * we now use fwrite().
+ */
+#define ECHO do { if (fwrite( yytext, (size_t) yyleng, 1, yyout )) {} } while (0)
+#endif
+
+/* Gets input and stuffs it into "buf".  number of characters read, or YY_NULL,
+ * is returned in "result".
+ */
+#ifndef YY_INPUT
+#define YY_INPUT(buf,result,max_size) \
+	errno=0; \
+	while ( (result = (int) read( fileno(yyin), buf, (yy_size_t) max_size )) < 0 ) \
+	{ \
+		if( errno != EINTR) \
+		{ \
+			YY_FATAL_ERROR( "input in flex scanner failed" ); \
+			break; \
+		} \
+		errno=0; \
+		clearerr(yyin); \
+	}\
+\
+
+#endif
+
+/* No semi-colon after return; correct usage is to write "yyterminate();" -
+ * we don't want an extra ';' after the "return" because that will cause
+ * some compilers to complain about unreachable statements.
+ */
+#ifndef yyterminate
+#define yyterminate() return YY_NULL
+#endif
+
+/* Number of entries by which start-condition stack grows. */
+#ifndef YY_START_STACK_INCR
+#define YY_START_STACK_INCR 25
+#endif
+
+/* Report a fatal error. */
+#ifndef YY_FATAL_ERROR
+#define YY_FATAL_ERROR(msg) yy_fatal_error( msg )
+#endif
+
+/* end tables serialization structures and prototypes */
+
+/* Default declaration of generated scanner - a define so the user can
+ * easily add parameters.
+ */
+#ifndef YY_DECL
+#define YY_DECL_IS_OURS 1
+
+extern int yylex (void);
+
+#define YY_DECL int yylex (void)
+#endif /* !YY_DECL */
+
+/* Code executed at the beginning of each rule, after yytext and yyleng
+ * have been set up.
+ */
+#ifndef YY_USER_ACTION
+#define YY_USER_ACTION
+#endif
+
+/* Code executed at the end of each rule. */
+#ifndef YY_BREAK
+#define YY_BREAK /*LINTED*/break;
+#endif
+
+#define YY_RULE_SETUP \
+	YY_USER_ACTION
+
+/** The main scanner function which does all the work.
+ */
+YY_DECL
+{
+	yy_state_type yy_current_state;
+	char *yy_cp, *yy_bp;
+	int yy_act;
+    
+	if ( !(yy_init) )
+		{
+		(yy_init) = 1;
+
+#ifdef YY_USER_INIT
+		YY_USER_INIT;
+#endif
+
+		if ( ! (yy_start) )
+			(yy_start) = 1;	/* first start state */
+
+		if ( ! yyin )
+			yyin = stdin;
+
+		if ( ! yyout )
+			yyout = stdout;
+
+		if ( ! YY_CURRENT_BUFFER ) {
+			yyensure_buffer_stack ();
+			YY_CURRENT_BUFFER_LVALUE =
+				yy_create_buffer( yyin, YY_BUF_SIZE );
+		}
+
+		yy_load_buffer_state(  );
+		}
+
+	{
+
+	int str = 0;
+	int ts, i;
+
+	while ( /*CONSTCOND*/1 )		/* loops until end-of-file is reached */
+		{
+		yy_cp = (yy_c_buf_p);
+
+		/* Support of yytext. */
+		*yy_cp = (yy_hold_char);
+
+		/* yy_bp points to the position in yy_ch_buf of the start of
+		 * the current run.
+		 */
+		yy_bp = yy_cp;
+
+		yy_current_state = (yy_start);
+yy_match:
+		while ( (yy_current_state = yy_nxt[yy_current_state][ yy_ec[YY_SC_TO_UI(*yy_cp)]  ]) > 0 )
+			++yy_cp;
+
+		yy_current_state = -yy_current_state;
+
+yy_find_action:
+		yy_act = yy_accept[yy_current_state];
+
+		YY_DO_BEFORE_ACTION;
+
+		if ( yy_act != YY_END_OF_BUFFER && yy_rule_can_match_eol[yy_act] )
+			{
+			int yyl;
+			for ( yyl = 0; yyl < yyleng; ++yyl )
+				if ( yytext[yyl] == '\n' )
+					
+    yylineno++;
+;
+			}
+
+do_action:	/* This label is used only to access EOF actions. */
+
+		switch ( yy_act )
+	{ /* beginning of action switch */
+case 1:
+YY_RULE_SETUP
+/* ignore comment */
+	YY_BREAK
+case 2:
+YY_RULE_SETUP
+/* whitespaces */
+	YY_BREAK
+case 3:
+/* rule 3 can match eol */
+YY_RULE_SETUP
+/* escaped new line */
+	YY_BREAK
+case 4:
+/* rule 4 can match eol */
+YY_RULE_SETUP
+return T_EOL;
+	YY_BREAK
+case 5:
+YY_RULE_SETUP
+return T_ALLNOCONFIG_Y;
+	YY_BREAK
+case 6:
+YY_RULE_SETUP
+return T_BOOL;
+	YY_BREAK
+case 7:
+YY_RULE_SETUP
+return T_CHOICE;
+	YY_BREAK
+case 8:
+YY_RULE_SETUP
+return T_COMMENT;
+	YY_BREAK
+case 9:
+YY_RULE_SETUP
+return T_CONFIG;
+	YY_BREAK
+case 10:
+YY_RULE_SETUP
+return T_DEF_BOOL;
+	YY_BREAK
+case 11:
+YY_RULE_SETUP
+return T_DEF_TRISTATE;
+	YY_BREAK
+case 12:
+YY_RULE_SETUP
+return T_DEFAULT;
+	YY_BREAK
+case 13:
+YY_RULE_SETUP
+return T_DEFCONFIG_LIST;
+	YY_BREAK
+case 14:
+YY_RULE_SETUP
+return T_DEPENDS;
+	YY_BREAK
+case 15:
+YY_RULE_SETUP
+return T_ENDCHOICE;
+	YY_BREAK
+case 16:
+YY_RULE_SETUP
+return T_ENDIF;
+	YY_BREAK
+case 17:
+YY_RULE_SETUP
+return T_ENDMENU;
+	YY_BREAK
+case 18:
+YY_RULE_SETUP
+return T_HELP;
+	YY_BREAK
+case 19:
+YY_RULE_SETUP
+return T_HEX;
+	YY_BREAK
+case 20:
+YY_RULE_SETUP
+return T_IF;
+	YY_BREAK
+case 21:
+YY_RULE_SETUP
+return T_IMPLY;
+	YY_BREAK
+case 22:
+YY_RULE_SETUP
+return T_INT;
+	YY_BREAK
+case 23:
+YY_RULE_SETUP
+return T_MAINMENU;
+	YY_BREAK
+case 24:
+YY_RULE_SETUP
+return T_MENU;
+	YY_BREAK
+case 25:
+YY_RULE_SETUP
+return T_MENUCONFIG;
+	YY_BREAK
+case 26:
+YY_RULE_SETUP
+return T_MODULES;
+	YY_BREAK
+case 27:
+YY_RULE_SETUP
+return T_ON;
+	YY_BREAK
+case 28:
+YY_RULE_SETUP
+return T_OPTION;
+	YY_BREAK
+case 29:
+YY_RULE_SETUP
+return T_OPTIONAL;
+	YY_BREAK
+case 30:
+YY_RULE_SETUP
+return T_PROMPT;
+	YY_BREAK
+case 31:
+YY_RULE_SETUP
+return T_RANGE;
+	YY_BREAK
+case 32:
+YY_RULE_SETUP
+return T_RESET;
+	YY_BREAK
+case 33:
+YY_RULE_SETUP
+return T_SELECT;
+	YY_BREAK
+case 34:
+YY_RULE_SETUP
+return T_SOURCE;
+	YY_BREAK
+case 35:
+YY_RULE_SETUP
+return T_STRING;
+	YY_BREAK
+case 36:
+YY_RULE_SETUP
+return T_TRISTATE;
+	YY_BREAK
+case 37:
+YY_RULE_SETUP
+return T_VISIBLE;
+	YY_BREAK
+case 38:
+YY_RULE_SETUP
+return T_OR;
+	YY_BREAK
+case 39:
+YY_RULE_SETUP
+return T_AND;
+	YY_BREAK
+case 40:
+YY_RULE_SETUP
+return T_EQUAL;
+	YY_BREAK
+case 41:
+YY_RULE_SETUP
+return T_UNEQUAL;
+	YY_BREAK
+case 42:
+YY_RULE_SETUP
+return T_LESS;
+	YY_BREAK
+case 43:
+YY_RULE_SETUP
+return T_LESS_EQUAL;
+	YY_BREAK
+case 44:
+YY_RULE_SETUP
+return T_GREATER;
+	YY_BREAK
+case 45:
+YY_RULE_SETUP
+return T_GREATER_EQUAL;
+	YY_BREAK
+case 46:
+YY_RULE_SETUP
+return T_NOT;
+	YY_BREAK
+case 47:
+YY_RULE_SETUP
+return T_OPEN_PAREN;
+	YY_BREAK
+case 48:
+YY_RULE_SETUP
+return T_CLOSE_PAREN;
+	YY_BREAK
+case 49:
+YY_RULE_SETUP
+return T_COLON_EQUAL;
+	YY_BREAK
+case 50:
+YY_RULE_SETUP
+return T_PLUS_EQUAL;
+	YY_BREAK
+case 51:
+YY_RULE_SETUP
+{
+				str = yytext[0];
+				new_string();
+				BEGIN(STRING);
+			}
+	YY_BREAK
+case 52:
+YY_RULE_SETUP
+{
+				alloc_string(yytext, yyleng);
+				yylval.string = text;
+				return T_WORD;
+			}
+	YY_BREAK
+case 53:
+YY_RULE_SETUP
+{
+				/* this token includes at least one '$' */
+				yylval.string = expand_token(yytext, yyleng);
+				if (strlen(yylval.string))
+					return T_WORD;
+				free(yylval.string);
+			}
+	YY_BREAK
+case 54:
+YY_RULE_SETUP
+warn_ignored_character(*yytext);
+	YY_BREAK
+
+case 55:
+YY_RULE_SETUP
+{
+		alloc_string(yytext, yyleng);
+		yylval.string = text;
+		return T_ASSIGN_VAL;
+	}
+	YY_BREAK
+case 56:
+/* rule 56 can match eol */
+YY_RULE_SETUP
+{ BEGIN(INITIAL); return T_EOL; }
+	YY_BREAK
+case 57:
+YY_RULE_SETUP
+
+	YY_BREAK
+
+case 58:
+YY_RULE_SETUP
+append_expanded_string(yytext);
+	YY_BREAK
+case 59:
+YY_RULE_SETUP
+{
+		append_string(yytext, yyleng);
+	}
+	YY_BREAK
+case 60:
+YY_RULE_SETUP
+{
+		append_string(yytext + 1, yyleng - 1);
+	}
+	YY_BREAK
+case 61:
+YY_RULE_SETUP
+{
+		if (str == yytext[0]) {
+			BEGIN(INITIAL);
+			yylval.string = text;
+			return T_WORD_QUOTE;
+		} else
+			append_string(yytext, 1);
+	}
+	YY_BREAK
+case 62:
+/* rule 62 can match eol */
+YY_RULE_SETUP
+{
+		fprintf(stderr,
+			"%s:%d:warning: multi-line strings not supported\n",
+			zconf_curname(), zconf_lineno());
+		unput('\n');
+		BEGIN(INITIAL);
+		yylval.string = text;
+		return T_WORD_QUOTE;
+	}
+	YY_BREAK
+case YY_STATE_EOF(STRING):
+{
+		BEGIN(INITIAL);
+		yylval.string = text;
+		return T_WORD_QUOTE;
+	}
+	YY_BREAK
+
+case 63:
+YY_RULE_SETUP
+{
+		ts = 0;
+		for (i = 0; i < yyleng; i++) {
+			if (yytext[i] == '\t')
+				ts = (ts & ~7) + 8;
+			else
+				ts++;
+		}
+		last_ts = ts;
+		if (first_ts) {
+			if (ts < first_ts) {
+				zconf_endhelp();
+				return T_HELPTEXT;
+			}
+			ts -= first_ts;
+			while (ts > 8) {
+				append_string("        ", 8);
+				ts -= 8;
+			}
+			append_string("        ", ts);
+		}
+	}
+	YY_BREAK
+case 64:
+/* rule 64 can match eol */
+*yy_cp = (yy_hold_char); /* undo effects of setting up yytext */
+YY_LINENO_REWIND_TO(yy_cp - 1);
+(yy_c_buf_p) = yy_cp -= 1;
+YY_DO_BEFORE_ACTION; /* set up yytext again */
+YY_RULE_SETUP
+{
+		zconf_endhelp();
+		return T_HELPTEXT;
+	}
+	YY_BREAK
+case 65:
+/* rule 65 can match eol */
+YY_RULE_SETUP
+{
+		append_string("\n", 1);
+	}
+	YY_BREAK
+case 66:
+YY_RULE_SETUP
+{
+		while (yyleng) {
+			if ((yytext[yyleng-1] != ' ') && (yytext[yyleng-1] != '\t'))
+				break;
+			yyleng--;
+		}
+		append_string(yytext, yyleng);
+		if (!first_ts)
+			first_ts = last_ts;
+	}
+	YY_BREAK
+case YY_STATE_EOF(HELP):
+{
+		zconf_endhelp();
+		return T_HELPTEXT;
+	}
+	YY_BREAK
+
+case YY_STATE_EOF(INITIAL):
+case YY_STATE_EOF(ASSIGN_VAL):
+{
+	BEGIN(INITIAL);
+
+	if (prev_token != T_EOL && prev_token != T_HELPTEXT)
+		fprintf(stderr, "%s:%d:warning: no new line at end of file\n",
+			current_file->name, yylineno);
+
+	if (current_file) {
+		zconf_endfile();
+		return T_EOL;
+	}
+	fclose(yyin);
+	yyterminate();
+}
+	YY_BREAK
+case 67:
+YY_RULE_SETUP
+YY_FATAL_ERROR( "flex scanner jammed" );
+	YY_BREAK
+
+	case YY_END_OF_BUFFER:
+		{
+		/* Amount of text matched not including the EOB char. */
+		int yy_amount_of_matched_text = (int) (yy_cp - (yytext_ptr)) - 1;
+
+		/* Undo the effects of YY_DO_BEFORE_ACTION. */
+		*yy_cp = (yy_hold_char);
+		YY_RESTORE_YY_MORE_OFFSET
+
+		if ( YY_CURRENT_BUFFER_LVALUE->yy_buffer_status == YY_BUFFER_NEW )
+			{
+			/* We're scanning a new file or input source.  It's
+			 * possible that this happened because the user
+			 * just pointed yyin at a new source and called
+			 * yylex().  If so, then we have to assure
+			 * consistency between YY_CURRENT_BUFFER and our
+			 * globals.  Here is the right place to do so, because
+			 * this is the first action (other than possibly a
+			 * back-up) that will match for the new input source.
+			 */
+			(yy_n_chars) = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
+			YY_CURRENT_BUFFER_LVALUE->yy_input_file = yyin;
+			YY_CURRENT_BUFFER_LVALUE->yy_buffer_status = YY_BUFFER_NORMAL;
+			}
+
+		/* Note that here we test for yy_c_buf_p "<=" to the position
+		 * of the first EOB in the buffer, since yy_c_buf_p will
+		 * already have been incremented past the NUL character
+		 * (since all states make transitions on EOB to the
+		 * end-of-buffer state).  Contrast this with the test
+		 * in input().
+		 */
+		if ( (yy_c_buf_p) <= &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] )
+			{ /* This was really a NUL. */
+			yy_state_type yy_next_state;
+
+			(yy_c_buf_p) = (yytext_ptr) + yy_amount_of_matched_text;
+
+			yy_current_state = yy_get_previous_state(  );
+
+			/* Okay, we're now positioned to make the NUL
+			 * transition.  We couldn't have
+			 * yy_get_previous_state() go ahead and do it
+			 * for us because it doesn't know how to deal
+			 * with the possibility of jamming (and we don't
+			 * want to build jamming into it because then it
+			 * will run more slowly).
+			 */
+
+			yy_next_state = yy_try_NUL_trans( yy_current_state );
+
+			yy_bp = (yytext_ptr) + YY_MORE_ADJ;
+
+			if ( yy_next_state )
+				{
+				/* Consume the NUL. */
+				yy_cp = ++(yy_c_buf_p);
+				yy_current_state = yy_next_state;
+				goto yy_match;
+				}
+
+			else
+				{
+				yy_cp = (yy_c_buf_p);
+				goto yy_find_action;
+				}
+			}
+
+		else switch ( yy_get_next_buffer(  ) )
+			{
+			case EOB_ACT_END_OF_FILE:
+				{
+				(yy_did_buffer_switch_on_eof) = 0;
+
+				if ( yywrap(  ) )
+					{
+					/* Note: because we've taken care in
+					 * yy_get_next_buffer() to have set up
+					 * yytext, we can now set up
+					 * yy_c_buf_p so that if some total
+					 * hoser (like flex itself) wants to
+					 * call the scanner after we return the
+					 * YY_NULL, it'll still work - another
+					 * YY_NULL will get returned.
+					 */
+					(yy_c_buf_p) = (yytext_ptr) + YY_MORE_ADJ;
+
+					yy_act = YY_STATE_EOF(YY_START);
+					goto do_action;
+					}
+
+				else
+					{
+					if ( ! (yy_did_buffer_switch_on_eof) )
+						YY_NEW_FILE;
+					}
+				break;
+				}
+
+			case EOB_ACT_CONTINUE_SCAN:
+				(yy_c_buf_p) =
+					(yytext_ptr) + yy_amount_of_matched_text;
+
+				yy_current_state = yy_get_previous_state(  );
+
+				yy_cp = (yy_c_buf_p);
+				yy_bp = (yytext_ptr) + YY_MORE_ADJ;
+				goto yy_match;
+
+			case EOB_ACT_LAST_MATCH:
+				(yy_c_buf_p) =
+				&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)];
+
+				yy_current_state = yy_get_previous_state(  );
+
+				yy_cp = (yy_c_buf_p);
+				yy_bp = (yytext_ptr) + YY_MORE_ADJ;
+				goto yy_find_action;
+			}
+		break;
+		}
+
+	default:
+		YY_FATAL_ERROR(
+			"fatal flex scanner internal error--no action found" );
+	} /* end of action switch */
+		} /* end of scanning one token */
+	} /* end of user's declarations */
+} /* end of yylex */
+
+/* yy_get_next_buffer - try to read in a new buffer
+ *
+ * Returns a code representing an action:
+ *	EOB_ACT_LAST_MATCH -
+ *	EOB_ACT_CONTINUE_SCAN - continue scanning from current position
+ *	EOB_ACT_END_OF_FILE - end of file
+ */
+static int yy_get_next_buffer (void)
+{
+    	char *dest = YY_CURRENT_BUFFER_LVALUE->yy_ch_buf;
+	char *source = (yytext_ptr);
+	int number_to_move, i;
+	int ret_val;
+
+	if ( (yy_c_buf_p) > &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars) + 1] )
+		YY_FATAL_ERROR(
+		"fatal flex scanner internal error--end of buffer missed" );
+
+	if ( YY_CURRENT_BUFFER_LVALUE->yy_fill_buffer == 0 )
+		{ /* Don't try to fill the buffer, so this is an EOF. */
+		if ( (yy_c_buf_p) - (yytext_ptr) - YY_MORE_ADJ == 1 )
+			{
+			/* We matched a single character, the EOB, so
+			 * treat this as a final EOF.
+			 */
+			return EOB_ACT_END_OF_FILE;
+			}
+
+		else
+			{
+			/* We matched some text prior to the EOB, first
+			 * process it.
+			 */
+			return EOB_ACT_LAST_MATCH;
+			}
+		}
+
+	/* Try to read more data. */
+
+	/* First move last chars to start of buffer. */
+	number_to_move = (int) ((yy_c_buf_p) - (yytext_ptr) - 1);
+
+	for ( i = 0; i < number_to_move; ++i )
+		*(dest++) = *(source++);
+
+	if ( YY_CURRENT_BUFFER_LVALUE->yy_buffer_status == YY_BUFFER_EOF_PENDING )
+		/* don't do the read, it's not guaranteed to return an EOF,
+		 * just force an EOF
+		 */
+		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars) = 0;
+
+	else
+		{
+			int num_to_read =
+			YY_CURRENT_BUFFER_LVALUE->yy_buf_size - number_to_move - 1;
+
+		while ( num_to_read <= 0 )
+			{ /* Not enough room in the buffer - grow it. */
+
+			/* just a shorter name for the current buffer */
+			YY_BUFFER_STATE b = YY_CURRENT_BUFFER_LVALUE;
+
+			int yy_c_buf_p_offset =
+				(int) ((yy_c_buf_p) - b->yy_ch_buf);
+
+			if ( b->yy_is_our_buffer )
+				{
+				int new_size = b->yy_buf_size * 2;
+
+				if ( new_size <= 0 )
+					b->yy_buf_size += b->yy_buf_size / 8;
+				else
+					b->yy_buf_size *= 2;
+
+				b->yy_ch_buf = (char *)
+					/* Include room in for 2 EOB chars. */
+					yyrealloc( (void *) b->yy_ch_buf,
+							 (yy_size_t) (b->yy_buf_size + 2)  );
+				}
+			else
+				/* Can't grow it, we don't own it. */
+				b->yy_ch_buf = NULL;
+
+			if ( ! b->yy_ch_buf )
+				YY_FATAL_ERROR(
+				"fatal error - scanner input buffer overflow" );
+
+			(yy_c_buf_p) = &b->yy_ch_buf[yy_c_buf_p_offset];
+
+			num_to_read = YY_CURRENT_BUFFER_LVALUE->yy_buf_size -
+						number_to_move - 1;
+
+			}
+
+		if ( num_to_read > YY_READ_BUF_SIZE )
+			num_to_read = YY_READ_BUF_SIZE;
+
+		/* Read in more data. */
+		YY_INPUT( (&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move]),
+			(yy_n_chars), num_to_read );
+
+		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
+		}
+
+	if ( (yy_n_chars) == 0 )
+		{
+		if ( number_to_move == YY_MORE_ADJ )
+			{
+			ret_val = EOB_ACT_END_OF_FILE;
+			yyrestart( yyin  );
+			}
+
+		else
+			{
+			ret_val = EOB_ACT_LAST_MATCH;
+			YY_CURRENT_BUFFER_LVALUE->yy_buffer_status =
+				YY_BUFFER_EOF_PENDING;
+			}
+		}
+
+	else
+		ret_val = EOB_ACT_CONTINUE_SCAN;
+
+	if (((yy_n_chars) + number_to_move) > YY_CURRENT_BUFFER_LVALUE->yy_buf_size) {
+		/* Extend the array by 50%, plus the number we really need. */
+		int new_size = (yy_n_chars) + number_to_move + ((yy_n_chars) >> 1);
+		YY_CURRENT_BUFFER_LVALUE->yy_ch_buf = (char *) yyrealloc(
+			(void *) YY_CURRENT_BUFFER_LVALUE->yy_ch_buf, (yy_size_t) new_size  );
+		if ( ! YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
+			YY_FATAL_ERROR( "out of dynamic memory in yy_get_next_buffer()" );
+		/* "- 2" to take care of EOB's */
+		YY_CURRENT_BUFFER_LVALUE->yy_buf_size = (int) (new_size - 2);
+	}
+
+	(yy_n_chars) += number_to_move;
+	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] = YY_END_OF_BUFFER_CHAR;
+	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars) + 1] = YY_END_OF_BUFFER_CHAR;
+
+	(yytext_ptr) = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[0];
+
+	return ret_val;
+}
+
+/* yy_get_previous_state - get the state just before the EOB char was reached */
+
+    static yy_state_type yy_get_previous_state (void)
+{
+	yy_state_type yy_current_state;
+	char *yy_cp;
+    
+	yy_current_state = (yy_start);
+
+	for ( yy_cp = (yytext_ptr) + YY_MORE_ADJ; yy_cp < (yy_c_buf_p); ++yy_cp )
+		{
+		yy_current_state = yy_nxt[yy_current_state][(*yy_cp ? yy_ec[YY_SC_TO_UI(*yy_cp)] : 1)];
+		}
+
+	return yy_current_state;
+}
+
+/* yy_try_NUL_trans - try to make a transition on the NUL character
+ *
+ * synopsis
+ *	next_state = yy_try_NUL_trans( current_state );
+ */
+    static yy_state_type yy_try_NUL_trans  (yy_state_type yy_current_state )
+{
+	int yy_is_jam;
+    
+	yy_current_state = yy_nxt[yy_current_state][1];
+	yy_is_jam = (yy_current_state <= 0);
+
+		return yy_is_jam ? 0 : yy_current_state;
+}
+
+#ifndef YY_NO_UNPUT
+
+    static void yyunput (int c, char * yy_bp )
+{
+	char *yy_cp;
+    
+    yy_cp = (yy_c_buf_p);
+
+	/* undo effects of setting up yytext */
+	*yy_cp = (yy_hold_char);
+
+	if ( yy_cp < YY_CURRENT_BUFFER_LVALUE->yy_ch_buf + 2 )
+		{ /* need to shift things up to make room */
+		/* +2 for EOB chars. */
+		int number_to_move = (yy_n_chars) + 2;
+		char *dest = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[
+					YY_CURRENT_BUFFER_LVALUE->yy_buf_size + 2];
+		char *source =
+				&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move];
+
+		while ( source > YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
+			*--dest = *--source;
+
+		yy_cp += (int) (dest - source);
+		yy_bp += (int) (dest - source);
+		YY_CURRENT_BUFFER_LVALUE->yy_n_chars =
+			(yy_n_chars) = (int) YY_CURRENT_BUFFER_LVALUE->yy_buf_size;
+
+		if ( yy_cp < YY_CURRENT_BUFFER_LVALUE->yy_ch_buf + 2 )
+			YY_FATAL_ERROR( "flex scanner push-back overflow" );
+		}
+
+	*--yy_cp = (char) c;
+
+    if ( c == '\n' ){
+        --yylineno;
+    }
+
+	(yytext_ptr) = yy_bp;
+	(yy_hold_char) = *yy_cp;
+	(yy_c_buf_p) = yy_cp;
+}
+
+#endif
+
+#ifndef YY_NO_INPUT
+#ifdef __cplusplus
+    static int yyinput (void)
+#else
+    static int input  (void)
+#endif
+
+{
+	int c;
+    
+	*(yy_c_buf_p) = (yy_hold_char);
+
+	if ( *(yy_c_buf_p) == YY_END_OF_BUFFER_CHAR )
+		{
+		/* yy_c_buf_p now points to the character we want to return.
+		 * If this occurs *before* the EOB characters, then it's a
+		 * valid NUL; if not, then we've hit the end of the buffer.
+		 */
+		if ( (yy_c_buf_p) < &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] )
+			/* This was really a NUL. */
+			*(yy_c_buf_p) = '\0';
+
+		else
+			{ /* need more input */
+			int offset = (int) ((yy_c_buf_p) - (yytext_ptr));
+			++(yy_c_buf_p);
+
+			switch ( yy_get_next_buffer(  ) )
+				{
+				case EOB_ACT_LAST_MATCH:
+					/* This happens because yy_g_n_b()
+					 * sees that we've accumulated a
+					 * token and flags that we need to
+					 * try matching the token before
+					 * proceeding.  But for input(),
+					 * there's no matching to consider.
+					 * So convert the EOB_ACT_LAST_MATCH
+					 * to EOB_ACT_END_OF_FILE.
+					 */
+
+					/* Reset buffer status. */
+					yyrestart( yyin );
+
+					/*FALLTHROUGH*/
+
+				case EOB_ACT_END_OF_FILE:
+					{
+					if ( yywrap(  ) )
+						return 0;
+
+					if ( ! (yy_did_buffer_switch_on_eof) )
+						YY_NEW_FILE;
+#ifdef __cplusplus
+					return yyinput();
+#else
+					return input();
+#endif
+					}
+
+				case EOB_ACT_CONTINUE_SCAN:
+					(yy_c_buf_p) = (yytext_ptr) + offset;
+					break;
+				}
+			}
+		}
+
+	c = *(unsigned char *) (yy_c_buf_p);	/* cast for 8-bit char's */
+	*(yy_c_buf_p) = '\0';	/* preserve yytext */
+	(yy_hold_char) = *++(yy_c_buf_p);
+
+	if ( c == '\n' )
+		
+    yylineno++;
+;
+
+	return c;
+}
+#endif	/* ifndef YY_NO_INPUT */
+
+/** Immediately switch to a different input stream.
+ * @param input_file A readable stream.
+ * 
+ * @note This function does not reset the start condition to @c INITIAL .
+ */
+    void yyrestart  (FILE * input_file )
+{
+    
+	if ( ! YY_CURRENT_BUFFER ){
+        yyensure_buffer_stack ();
+		YY_CURRENT_BUFFER_LVALUE =
+            yy_create_buffer( yyin, YY_BUF_SIZE );
+	}
+
+	yy_init_buffer( YY_CURRENT_BUFFER, input_file );
+	yy_load_buffer_state(  );
+}
+
+/** Switch to a different input buffer.
+ * @param new_buffer The new input buffer.
+ * 
+ */
+    void yy_switch_to_buffer  (YY_BUFFER_STATE  new_buffer )
+{
+    
+	/* TODO. We should be able to replace this entire function body
+	 * with
+	 *		yypop_buffer_state();
+	 *		yypush_buffer_state(new_buffer);
+     */
+	yyensure_buffer_stack ();
+	if ( YY_CURRENT_BUFFER == new_buffer )
+		return;
+
+	if ( YY_CURRENT_BUFFER )
+		{
+		/* Flush out information for old buffer. */
+		*(yy_c_buf_p) = (yy_hold_char);
+		YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
+		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
+		}
+
+	YY_CURRENT_BUFFER_LVALUE = new_buffer;
+	yy_load_buffer_state(  );
+
+	/* We don't actually know whether we did this switch during
+	 * EOF (yywrap()) processing, but the only time this flag
+	 * is looked at is after yywrap() is called, so it's safe
+	 * to go ahead and always set it.
+	 */
+	(yy_did_buffer_switch_on_eof) = 1;
+}
+
+static void yy_load_buffer_state  (void)
+{
+    	(yy_n_chars) = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
+	(yytext_ptr) = (yy_c_buf_p) = YY_CURRENT_BUFFER_LVALUE->yy_buf_pos;
+	yyin = YY_CURRENT_BUFFER_LVALUE->yy_input_file;
+	(yy_hold_char) = *(yy_c_buf_p);
+}
+
+/** Allocate and initialize an input buffer state.
+ * @param file A readable stream.
+ * @param size The character buffer size in bytes. When in doubt, use @c YY_BUF_SIZE.
+ * 
+ * @return the allocated buffer state.
+ */
+    YY_BUFFER_STATE yy_create_buffer  (FILE * file, int  size )
+{
+	YY_BUFFER_STATE b;
+    
+	b = (YY_BUFFER_STATE) yyalloc( sizeof( struct yy_buffer_state )  );
+	if ( ! b )
+		YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );
+
+	b->yy_buf_size = size;
+
+	/* yy_ch_buf has to be 2 characters longer than the size given because
+	 * we need to put in 2 end-of-buffer characters.
+	 */
+	b->yy_ch_buf = (char *) yyalloc( (yy_size_t) (b->yy_buf_size + 2)  );
+	if ( ! b->yy_ch_buf )
+		YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );
+
+	b->yy_is_our_buffer = 1;
+
+	yy_init_buffer( b, file );
+
+	return b;
+}
+
+/** Destroy the buffer.
+ * @param b a buffer created with yy_create_buffer()
+ * 
+ */
+    void yy_delete_buffer (YY_BUFFER_STATE  b )
+{
+    
+	if ( ! b )
+		return;
+
+	if ( b == YY_CURRENT_BUFFER ) /* Not sure if we should pop here. */
+		YY_CURRENT_BUFFER_LVALUE = (YY_BUFFER_STATE) 0;
+
+	if ( b->yy_is_our_buffer )
+		yyfree( (void *) b->yy_ch_buf  );
+
+	yyfree( (void *) b  );
+}
+
+/* Initializes or reinitializes a buffer.
+ * This function is sometimes called more than once on the same buffer,
+ * such as during a yyrestart() or at EOF.
+ */
+    static void yy_init_buffer  (YY_BUFFER_STATE  b, FILE * file )
+
+{
+	int oerrno = errno;
+    
+	yy_flush_buffer( b );
+
+	b->yy_input_file = file;
+	b->yy_fill_buffer = 1;
+
+    /* If b is the current buffer, then yy_init_buffer was _probably_
+     * called from yyrestart() or through yy_get_next_buffer.
+     * In that case, we don't want to reset the lineno or column.
+     */
+    if (b != YY_CURRENT_BUFFER){
+        b->yy_bs_lineno = 1;
+        b->yy_bs_column = 0;
+    }
+
+        b->yy_is_interactive = 0;
+    
+	errno = oerrno;
+}
+
+/** Discard all buffered characters. On the next scan, YY_INPUT will be called.
+ * @param b the buffer state to be flushed, usually @c YY_CURRENT_BUFFER.
+ * 
+ */
+    void yy_flush_buffer (YY_BUFFER_STATE  b )
+{
+    	if ( ! b )
+		return;
+
+	b->yy_n_chars = 0;
+
+	/* We always need two end-of-buffer characters.  The first causes
+	 * a transition to the end-of-buffer state.  The second causes
+	 * a jam in that state.
+	 */
+	b->yy_ch_buf[0] = YY_END_OF_BUFFER_CHAR;
+	b->yy_ch_buf[1] = YY_END_OF_BUFFER_CHAR;
+
+	b->yy_buf_pos = &b->yy_ch_buf[0];
+
+	b->yy_at_bol = 1;
+	b->yy_buffer_status = YY_BUFFER_NEW;
+
+	if ( b == YY_CURRENT_BUFFER )
+		yy_load_buffer_state(  );
+}
+
+/** Pushes the new state onto the stack. The new state becomes
+ *  the current state. This function will allocate the stack
+ *  if necessary.
+ *  @param new_buffer The new state.
+ *  
+ */
+void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
+{
+    	if (new_buffer == NULL)
+		return;
+
+	yyensure_buffer_stack();
+
+	/* This block is copied from yy_switch_to_buffer. */
+	if ( YY_CURRENT_BUFFER )
+		{
+		/* Flush out information for old buffer. */
+		*(yy_c_buf_p) = (yy_hold_char);
+		YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
+		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
+		}
+
+	/* Only push if top exists. Otherwise, replace top. */
+	if (YY_CURRENT_BUFFER)
+		(yy_buffer_stack_top)++;
+	YY_CURRENT_BUFFER_LVALUE = new_buffer;
+
+	/* copied from yy_switch_to_buffer. */
+	yy_load_buffer_state(  );
+	(yy_did_buffer_switch_on_eof) = 1;
+}
+
+/** Removes and deletes the top of the stack, if present.
+ *  The next element becomes the new top.
+ *  
+ */
+void yypop_buffer_state (void)
+{
+    	if (!YY_CURRENT_BUFFER)
+		return;
+
+	yy_delete_buffer(YY_CURRENT_BUFFER );
+	YY_CURRENT_BUFFER_LVALUE = NULL;
+	if ((yy_buffer_stack_top) > 0)
+		--(yy_buffer_stack_top);
+
+	if (YY_CURRENT_BUFFER) {
+		yy_load_buffer_state(  );
+		(yy_did_buffer_switch_on_eof) = 1;
+	}
+}
+
+/* Allocates the stack if it does not exist.
+ *  Guarantees space for at least one push.
+ */
+static void yyensure_buffer_stack (void)
+{
+	yy_size_t num_to_alloc;
+    
+	if (!(yy_buffer_stack)) {
+
+		/* First allocation is just for 2 elements, since we don't know if this
+		 * scanner will even need a stack. We use 2 instead of 1 to avoid an
+		 * immediate realloc on the next call.
+         */
+      num_to_alloc = 1; /* After all that talk, this was set to 1 anyways... */
+		(yy_buffer_stack) = (struct yy_buffer_state**)yyalloc
+								(num_to_alloc * sizeof(struct yy_buffer_state*)
+								);
+		if ( ! (yy_buffer_stack) )
+			YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );
+
+		memset((yy_buffer_stack), 0, num_to_alloc * sizeof(struct yy_buffer_state*));
+
+		(yy_buffer_stack_max) = num_to_alloc;
+		(yy_buffer_stack_top) = 0;
+		return;
+	}
+
+	if ((yy_buffer_stack_top) >= ((yy_buffer_stack_max)) - 1){
+
+		/* Increase the buffer to prepare for a possible push. */
+		yy_size_t grow_size = 8 /* arbitrary grow size */;
+
+		num_to_alloc = (yy_buffer_stack_max) + grow_size;
+		(yy_buffer_stack) = (struct yy_buffer_state**)yyrealloc
+								((yy_buffer_stack),
+								num_to_alloc * sizeof(struct yy_buffer_state*)
+								);
+		if ( ! (yy_buffer_stack) )
+			YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );
+
+		/* zero only the new slots.*/
+		memset((yy_buffer_stack) + (yy_buffer_stack_max), 0, grow_size * sizeof(struct yy_buffer_state*));
+		(yy_buffer_stack_max) = num_to_alloc;
+	}
+}
+
+/** Setup the input buffer state to scan directly from a user-specified character buffer.
+ * @param base the character buffer
+ * @param size the size in bytes of the character buffer
+ * 
+ * @return the newly allocated buffer state object.
+ */
+YY_BUFFER_STATE yy_scan_buffer  (char * base, yy_size_t  size )
+{
+	YY_BUFFER_STATE b;
+    
+	if ( size < 2 ||
+	     base[size-2] != YY_END_OF_BUFFER_CHAR ||
+	     base[size-1] != YY_END_OF_BUFFER_CHAR )
+		/* They forgot to leave room for the EOB's. */
+		return NULL;
+
+	b = (YY_BUFFER_STATE) yyalloc( sizeof( struct yy_buffer_state )  );
+	if ( ! b )
+		YY_FATAL_ERROR( "out of dynamic memory in yy_scan_buffer()" );
+
+	b->yy_buf_size = (int) (size - 2);	/* "- 2" to take care of EOB's */
+	b->yy_buf_pos = b->yy_ch_buf = base;
+	b->yy_is_our_buffer = 0;
+	b->yy_input_file = NULL;
+	b->yy_n_chars = b->yy_buf_size;
+	b->yy_is_interactive = 0;
+	b->yy_at_bol = 1;
+	b->yy_fill_buffer = 0;
+	b->yy_buffer_status = YY_BUFFER_NEW;
+
+	yy_switch_to_buffer( b  );
+
+	return b;
+}
+
+/** Setup the input buffer state to scan a string. The next call to yylex() will
+ * scan from a @e copy of @a str.
+ * @param yystr a NUL-terminated string to scan
+ * 
+ * @return the newly allocated buffer state object.
+ * @note If you want to scan bytes that may contain NUL values, then use
+ *       yy_scan_bytes() instead.
+ */
+YY_BUFFER_STATE yy_scan_string (const char * yystr )
+{
+    
+	return yy_scan_bytes( yystr, (int) strlen(yystr) );
+}
+
+/** Setup the input buffer state to scan the given bytes. The next call to yylex() will
+ * scan from a @e copy of @a bytes.
+ * @param yybytes the byte buffer to scan
+ * @param _yybytes_len the number of bytes in the buffer pointed to by @a bytes.
+ * 
+ * @return the newly allocated buffer state object.
+ */
+YY_BUFFER_STATE yy_scan_bytes  (const char * yybytes, int  _yybytes_len )
+{
+	YY_BUFFER_STATE b;
+	char *buf;
+	yy_size_t n;
+	int i;
+    
+	/* Get memory for full buffer, including space for trailing EOB's. */
+	n = (yy_size_t) (_yybytes_len + 2);
+	buf = (char *) yyalloc( n  );
+	if ( ! buf )
+		YY_FATAL_ERROR( "out of dynamic memory in yy_scan_bytes()" );
+
+	for ( i = 0; i < _yybytes_len; ++i )
+		buf[i] = yybytes[i];
+
+	buf[_yybytes_len] = buf[_yybytes_len+1] = YY_END_OF_BUFFER_CHAR;
+
+	b = yy_scan_buffer( buf, n );
+	if ( ! b )
+		YY_FATAL_ERROR( "bad buffer in yy_scan_bytes()" );
+
+	/* It's okay to grow etc. this buffer, and we should throw it
+	 * away when we're done.
+	 */
+	b->yy_is_our_buffer = 1;
+
+	return b;
+}
+
+#ifndef YY_EXIT_FAILURE
+#define YY_EXIT_FAILURE 2
+#endif
+
+static void yynoreturn yy_fatal_error (const char* msg )
+{
+			fprintf( stderr, "%s\n", msg );
+	exit( YY_EXIT_FAILURE );
+}
+
+/* Redefine yyless() so it works in section 3 code. */
+
+#undef yyless
+#define yyless(n) \
+	do \
+		{ \
+		/* Undo effects of setting up yytext. */ \
+        int yyless_macro_arg = (n); \
+        YY_LESS_LINENO(yyless_macro_arg);\
+		yytext[yyleng] = (yy_hold_char); \
+		(yy_c_buf_p) = yytext + yyless_macro_arg; \
+		(yy_hold_char) = *(yy_c_buf_p); \
+		*(yy_c_buf_p) = '\0'; \
+		yyleng = yyless_macro_arg; \
+		} \
+	while ( 0 )
+
+/* Accessor  methods (get/set functions) to struct members. */
+
+/** Get the current line number.
+ * 
+ */
+int yyget_lineno  (void)
+{
+    
+    return yylineno;
+}
+
+/** Get the input stream.
+ * 
+ */
+FILE *yyget_in  (void)
+{
+        return yyin;
+}
+
+/** Get the output stream.
+ * 
+ */
+FILE *yyget_out  (void)
+{
+        return yyout;
+}
+
+/** Get the length of the current token.
+ * 
+ */
+int yyget_leng  (void)
+{
+        return yyleng;
+}
+
+/** Get the current token.
+ * 
+ */
+
+char *yyget_text  (void)
+{
+        return yytext;
+}
+
+/** Set the current line number.
+ * @param _line_number line number
+ * 
+ */
+void yyset_lineno (int  _line_number )
+{
+    
+    yylineno = _line_number;
+}
+
+/** Set the input stream. This does not discard the current
+ * input buffer.
+ * @param _in_str A readable stream.
+ * 
+ * @see yy_switch_to_buffer
+ */
+void yyset_in (FILE *  _in_str )
+{
+        yyin = _in_str ;
+}
+
+void yyset_out (FILE *  _out_str )
+{
+        yyout = _out_str ;
+}
+
+int yyget_debug  (void)
+{
+        return yy_flex_debug;
+}
+
+void yyset_debug (int  _bdebug )
+{
+        yy_flex_debug = _bdebug ;
+}
+
+static int yy_init_globals (void)
+{
+        /* Initialization is the same as for the non-reentrant scanner.
+     * This function is called from yylex_destroy(), so don't allocate here.
+     */
+
+    /* We do not touch yylineno unless the option is enabled. */
+    yylineno =  1;
+    
+    (yy_buffer_stack) = NULL;
+    (yy_buffer_stack_top) = 0;
+    (yy_buffer_stack_max) = 0;
+    (yy_c_buf_p) = NULL;
+    (yy_init) = 0;
+    (yy_start) = 0;
+
+/* Defined in main.c */
+#ifdef YY_STDINIT
+    yyin = stdin;
+    yyout = stdout;
+#else
+    yyin = NULL;
+    yyout = NULL;
+#endif
+
+    /* For future reference: Set errno on error, since we are called by
+     * yylex_init()
+     */
+    return 0;
+}
+
+/* yylex_destroy is for both reentrant and non-reentrant scanners. */
+int yylex_destroy  (void)
+{
+    
+    /* Pop the buffer stack, destroying each element. */
+	while(YY_CURRENT_BUFFER){
+		yy_delete_buffer( YY_CURRENT_BUFFER  );
+		YY_CURRENT_BUFFER_LVALUE = NULL;
+		yypop_buffer_state();
+	}
+
+	/* Destroy the stack itself. */
+	yyfree((yy_buffer_stack) );
+	(yy_buffer_stack) = NULL;
+
+    /* Reset the globals. This is important in a non-reentrant scanner so the next time
+     * yylex() is called, initialization will occur. */
+    yy_init_globals( );
+
+    return 0;
+}
+
+/*
+ * Internal utility routines.
+ */
+
+#ifndef yytext_ptr
+static void yy_flex_strncpy (char* s1, const char * s2, int n )
+{
+		
+	int i;
+	for ( i = 0; i < n; ++i )
+		s1[i] = s2[i];
+}
+#endif
+
+#ifdef YY_NEED_STRLEN
+static int yy_flex_strlen (const char * s )
+{
+	int n;
+	for ( n = 0; s[n]; ++n )
+		;
+
+	return n;
+}
+#endif
+
+void *yyalloc (yy_size_t  size )
+{
+			return malloc(size);
+}
+
+void *yyrealloc  (void * ptr, yy_size_t  size )
+{
+		
+	/* The cast to (char *) in the following accommodates both
+	 * implementations that use char* generic pointers, and those
+	 * that use void* generic pointers.  It works with the latter
+	 * because both ANSI C and C++ allow castless assignment from
+	 * any pointer type to void*, and deal with argument conversions
+	 * as though doing an assignment.
+	 */
+	return realloc(ptr, size);
+}
+
+void yyfree (void * ptr )
+{
+			free( (char *) ptr );	/* see yyrealloc() for (char *) cast */
+}
+
+#define YYTABLES_NAME "yytables"
+
+/* second stage lexer */
+int yylex(void)
+{
+	int token;
+
+repeat:
+	token = yylex1();
+
+	if (prev_token == T_EOL || prev_token == T_HELPTEXT) {
+		if (token == T_EOL) {
+			/* Do not pass unneeded T_EOL to the parser. */
+			goto repeat;
+		} else {
+			/*
+			 * For the parser, update file/lineno at the first token
+			 * of each statement. Generally, \n is a statement
+			 * terminator in Kconfig, but it is not always true
+			 * because \n could be escaped by a backslash.
+			 */
+			current_pos.file = current_file;
+			current_pos.lineno = yylineno;
+		}
+	}
+
+	if (prev_prev_token == T_EOL && prev_token == T_WORD &&
+	    (token == T_EQUAL || token == T_COLON_EQUAL || token == T_PLUS_EQUAL))
+		BEGIN(ASSIGN_VAL);
+
+	prev_prev_token = prev_token;
+	prev_token = token;
+
+	return token;
+}
+
+static char *expand_token(const char *in, size_t n)
+{
+	char *out;
+	int c;
+	char c2;
+	const char *rest, *end;
+
+	new_string();
+	append_string(in, n);
+
+	/* get the whole line because we do not know the end of token. */
+	while ((c = input()) != EOF) {
+		if (c == '\n') {
+			unput(c);
+			break;
+		}
+		c2 = c;
+		append_string(&c2, 1);
+	}
+
+	rest = text;
+	out = expand_one_token(&rest);
+
+	/* push back unused characters to the input stream */
+	end = rest + strlen(rest);
+	while (end > rest)
+		unput(*--end);
+
+	free(text);
+
+	return out;
+}
+
+static void append_expanded_string(const char *str)
+{
+	const char *end;
+	char *res;
+
+	str++;
+
+	res = expand_dollar(&str);
+
+	/* push back unused characters to the input stream */
+	end = str + strlen(str);
+	while (end > str)
+		unput(*--end);
+
+	append_string(res, strlen(res));
+
+	free(res);
+}
+
+void zconf_starthelp(void)
+{
+	new_string();
+	last_ts = first_ts = 0;
+	BEGIN(HELP);
+}
+
+static void zconf_endhelp(void)
+{
+	yylval.string = text;
+	BEGIN(INITIAL);
+}
+
+/*
+ * Try to open specified file with following names:
+ * ./name
+ * $(srctree)/name
+ * The latter is used when srctree is separate from objtree
+ * when compiling the kernel.
+ * Return NULL if file is not found.
+ */
+FILE *zconf_fopen(const char *name)
+{
+	char *env, fullname[PATH_MAX+1];
+	FILE *f;
+
+	f = fopen(name, "r");
+	if (!f && name != NULL && name[0] != '/') {
+		env = getenv(SRCTREE);
+		if (env) {
+			snprintf(fullname, sizeof(fullname),
+				 "%s/%s", env, name);
+			f = fopen(fullname, "r");
+		}
+	}
+	return f;
+}
+
+void zconf_initscan(const char *name)
+{
+	yyin = zconf_fopen(name);
+	if (!yyin) {
+		fprintf(stderr, "can't find file %s\n", name);
+		exit(1);
+	}
+
+	current_buf = xmalloc(sizeof(*current_buf));
+	memset(current_buf, 0, sizeof(*current_buf));
+
+	current_file = file_lookup(name);
+	yylineno = 1;
+}
+
+static void __zconf_nextfile(const char *name)
+{
+	struct file *iter;
+	struct file *file = file_lookup(name);
+	struct buffer *buf = xmalloc(sizeof(*buf));
+	memset(buf, 0, sizeof(*buf));
+
+	current_buf->state = YY_CURRENT_BUFFER;
+	yyin = zconf_fopen(file->name);
+	if (!yyin) {
+		fprintf(stderr, "%s:%d: can't open file \"%s\"\n",
+			zconf_curname(), zconf_lineno(), file->name);
+		exit(1);
+	}
+	yy_switch_to_buffer(yy_create_buffer(yyin, YY_BUF_SIZE));
+	buf->parent = current_buf;
+	current_buf = buf;
+
+	current_file->lineno = yylineno;
+	file->parent = current_file;
+
+	for (iter = current_file; iter; iter = iter->parent) {
+		if (!strcmp(iter->name, file->name)) {
+			fprintf(stderr,
+				"Recursive inclusion detected.\n"
+				"Inclusion path:\n"
+				"  current file : %s\n", file->name);
+			iter = file;
+			do {
+				iter = iter->parent;
+				fprintf(stderr, "  included from: %s:%d\n",
+					iter->name, iter->lineno - 1);
+			} while (strcmp(iter->name, file->name));
+			exit(1);
+		}
+	}
+
+	yylineno = 1;
+	current_file = file;
+}
+
+void zconf_nextfile(const char *name)
+{
+	glob_t gl;
+	int err;
+	int i;
+	char path[PATH_MAX], *p;
+
+	err = glob(name, GLOB_ERR | GLOB_MARK, NULL, &gl);
+
+	/* ignore wildcard patterns that return no result */
+	if (err == GLOB_NOMATCH && strchr(name, '*')) {
+		err = 0;
+		gl.gl_pathc = 0;
+	}
+
+	if (err == GLOB_NOMATCH) {
+		p = strdup(current_file->name);
+		if (p) {
+			snprintf(path, sizeof(path), "%s/%s", dirname(p), name);
+			err = glob(path, GLOB_ERR | GLOB_MARK, NULL, &gl);
+			free(p);
+		}
+	}
+
+	if (err) {
+		const char *reason = "unknown error";
+
+		switch (err) {
+		case GLOB_NOSPACE:
+			reason = "out of memory";
+			break;
+		case GLOB_ABORTED:
+			reason = "read error";
+			break;
+		case GLOB_NOMATCH:
+			reason = "No files found";
+			break;
+		default:
+			break;
+		}
+
+		printf("%s:%d: glob failed: %s \"%s\"\n", zconf_curname(), zconf_lineno(),
+			reason, name);
+
+		exit(1);
+	}
+
+	for (i = 0; i < gl.gl_pathc; i++)
+		__zconf_nextfile(gl.gl_pathv[i]);
+}
+
+static void zconf_endfile(void)
+{
+	struct buffer *parent;
+
+	current_file = current_file->parent;
+	if (current_file)
+		yylineno = current_file->lineno;
+
+	parent = current_buf->parent;
+	if (parent) {
+		fclose(yyin);
+		yy_delete_buffer(YY_CURRENT_BUFFER);
+		yy_switch_to_buffer(parent->state);
+	}
+	free(current_buf);
+	current_buf = parent;
+}
+
+int zconf_lineno(void)
+{
+	return current_pos.lineno;
+}
+
+const char *zconf_curname(void)
+{
+	return current_pos.file ? current_pos.file->name : "<none>";
+}
+
diff --git a/scripts/config/list.h b/scripts/config/list.h
index 2cf23f002d..45cb237ab7 100644
--- a/scripts/config/list.h
+++ b/scripts/config/list.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef LIST_H
 #define LIST_H
 
diff --git a/scripts/config/lkc.h b/scripts/config/lkc.h
index 6d2400bf25..e8def6e6d0 100644
--- a/scripts/config/lkc.h
+++ b/scripts/config/lkc.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #ifndef LKC_H
@@ -8,15 +8,6 @@
 
 #include "expr.h"
 
-#ifndef KBUILD_NO_NLS
-# include <libintl.h>
-#else
-static inline const char *gettext(const char *txt) { return txt; }
-static inline void textdomain(const char *domainname) {}
-static inline void bindtextdomain(const char *name, const char *dir) {}
-static inline char *bind_textdomain_codeset(const char *dn, char *c) { return c; }
-#endif
-
 #ifdef __cplusplus
 extern "C" {
 #endif
@@ -29,11 +20,6 @@ extern "C" {
 #define PACKAGE "linux"
 #endif
 
-#define LOCALEDIR "/usr/share/locale"
-
-#define _(text) gettext(text)
-#define N_(text) (text)
-
 #ifndef CONFIG_
 #define CONFIG_ "CONFIG_"
 #endif
@@ -44,30 +30,17 @@ static inline const char *CONFIG_prefix(void)
 #undef CONFIG_
 #define CONFIG_ CONFIG_prefix()
 
-#define TF_COMMAND	0x0001
-#define TF_PARAM	0x0002
-#define TF_OPTION	0x0004
-
 enum conf_def_mode {
 	def_default,
 	def_yes,
 	def_mod,
+	def_y2m,
+	def_m2y,
 	def_no,
 	def_random
 };
 
-#define T_OPT_MODULES		1
-#define T_OPT_DEFCONFIG_LIST	2
-#define T_OPT_ENV		3
-#define T_OPT_ALLNOCONFIG_Y	4
-
-struct kconf_id {
-	int name;
-	int token;
-	unsigned int flags;
-	enum symbol_type stype;
-};
-
+extern int yylineno;
 void zconfdump(FILE *out);
 void zconf_starthelp(void);
 FILE *zconf_fopen(const char *name);
@@ -78,11 +51,10 @@ const char *zconf_curname(void);
 
 /* confdata.c */
 const char *conf_get_configname(void);
-const char *conf_get_autoconfig_name(void);
-char *conf_get_default_confname(void);
 void sym_set_change_count(int count);
 void sym_add_change_count(int count);
 bool conf_set_all_new_symbols(enum conf_def_mode mode);
+void conf_rewrite_mod_or_yes(enum conf_def_mode mode);
 void set_all_choice_values(struct symbol *csym);
 
 /* confdata.c and expr.c */
@@ -100,22 +72,28 @@ void menu_warn(struct menu *menu, const char *fmt, ...);
 struct menu *menu_add_menu(void);
 void menu_end_menu(void);
 void menu_add_entry(struct symbol *sym);
-void menu_end_entry(void);
 void menu_add_dep(struct expr *dep);
 void menu_add_visibility(struct expr *dep);
-struct property *menu_add_prop(enum prop_type type, char *prompt, struct expr *expr, struct expr *dep);
+struct property *menu_add_prop(enum prop_type type, struct expr *expr, struct expr *dep);
 struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep);
 void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep);
 void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep);
-void menu_add_option(int token, char *arg);
+void menu_add_option_modules(void);
+void menu_add_option_defconfig_list(void);
+void menu_add_option_allnoconfig_y(void);
 void menu_finalize(struct menu *parent);
 void menu_set_type(int type);
 
 /* util.c */
 struct file *file_lookup(const char *name);
-int file_write_dep(const char *name);
 void *xmalloc(size_t size);
 void *xcalloc(size_t nmemb, size_t size);
+void *xrealloc(void *p, size_t size);
+char *xstrdup(const char *s);
+char *xstrndup(const char *s, size_t n);
+
+/* lexer.l */
+int yylex(void);
 
 struct gstr {
 	size_t len;
@@ -133,16 +111,12 @@ void str_printf(struct gstr *gs, const char *fmt, ...);
 const char *str_get(struct gstr *gs);
 
 /* symbol.c */
-extern struct expr *sym_env_list;
-
-void sym_init(void);
 void sym_clear_all_valid(void);
 struct symbol *sym_choice_default(struct symbol *sym);
+struct property *sym_get_range_prop(struct symbol *sym);
 const char *sym_get_string_default(struct symbol *sym);
 struct symbol *sym_check_deps(struct symbol *sym);
-struct property *prop_alloc(enum prop_type type, struct symbol *sym);
 struct symbol *prop_get_symbol(struct property *prop);
-struct property *sym_get_env_prop(struct symbol *sym);
 
 static inline tristate sym_get_tristate_value(struct symbol *sym)
 {
diff --git a/scripts/config/lkc_proto.h b/scripts/config/lkc_proto.h
index e4c2fea2d0..ac777dd56a 100644
--- a/scripts/config/lkc_proto.h
+++ b/scripts/config/lkc_proto.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #include <stdarg.h>
 
 /* confdata.c */
@@ -7,10 +8,10 @@ int conf_read_simple(const char *name, int);
 void conf_reset(int def);
 int conf_write_defconfig(const char *name);
 int conf_write(const char *name);
-int conf_write_autoconf(void);
+int conf_write_autoconf(int overwrite);
 bool conf_get_changed(void);
 void conf_set_changed_callback(void (*fn)(void));
-void conf_set_message_callback(void (*fn)(const char *fmt, va_list ap));
+void conf_set_message_callback(void (*fn)(const char *s));
 
 /* menu.c */
 extern struct menu rootmenu;
@@ -31,7 +32,6 @@ extern struct symbol * symbol_hash[SYMBOL_HASHSIZE];
 
 struct symbol * sym_lookup(const char *name, int flags);
 struct symbol * sym_find(const char *name);
-const char * sym_expand_string_value(const char *in);
 const char * sym_escape_string_value(const char *in);
 struct symbol ** sym_re_search(const char *pattern);
 const char * sym_type_name(enum symbol_type type);
@@ -43,11 +43,24 @@ tristate sym_toggle_tristate_value(struct symbol *sym);
 bool sym_string_valid(struct symbol *sym, const char *newval);
 bool sym_string_within_range(struct symbol *sym, const char *str);
 bool sym_set_string_value(struct symbol *sym, const char *newval);
-bool sym_is_changable(struct symbol *sym);
+bool sym_is_changeable(struct symbol *sym);
 struct property * sym_get_choice_prop(struct symbol *sym);
 const char * sym_get_string_value(struct symbol *sym);
 
 const char * prop_get_type_name(enum prop_type type);
 
+/* preprocess.c */
+enum variable_flavor {
+	VAR_SIMPLE,
+	VAR_RECURSIVE,
+	VAR_APPEND,
+};
+void env_write_dep(FILE *f, const char *auto_conf_name);
+void variable_add(const char *name, const char *value,
+		  enum variable_flavor flavor);
+void variable_all_del(void);
+char *expand_dollar(const char **str);
+char *expand_one_token(const char **str);
+
 /* expr.c */
 void expr_print(struct expr *e, void (*fn)(void *, struct symbol *, const char *), void *data, int prevtoken);
diff --git a/scripts/config/lxdialog/.gitignore b/scripts/config/lxdialog/.gitignore
deleted file mode 100644
index 405824dbd7..0000000000
--- a/scripts/config/lxdialog/.gitignore
+++ /dev/null
@@ -1,2 +0,0 @@
-lxdialog
-*.o
diff --git a/scripts/config/lxdialog/check-lxdialog.sh b/scripts/config/lxdialog/check-lxdialog.sh
deleted file mode 100644
index 5075ebf2d3..0000000000
--- a/scripts/config/lxdialog/check-lxdialog.sh
+++ /dev/null
@@ -1,91 +0,0 @@
-#!/bin/sh
-# Check ncurses compatibility
-
-# What library to link
-ldflags()
-{
-	pkg-config --libs ncursesw 2>/dev/null && exit
-	pkg-config --libs ncurses 2>/dev/null && exit
-	for ext in so a dll.a dylib ; do
-		for lib in ncursesw ncurses curses ; do
-			$cc -print-file-name=lib${lib}.${ext} | grep -q /
-			if [ $? -eq 0 ]; then
-				echo "-l${lib}"
-				exit
-			fi
-		done
-	done
-	exit 1
-}
-
-# Where is ncurses.h?
-ccflags()
-{
-	if pkg-config --cflags ncursesw 2>/dev/null; then
-		echo '-DCURSES_LOC="<ncurses.h>" -DNCURSES_WIDECHAR=1'
-	elif pkg-config --cflags ncurses 2>/dev/null; then
-		echo '-DCURSES_LOC="<ncurses.h>"'
-	elif [ -f /usr/include/ncursesw/curses.h ]; then
-		echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'
-		echo ' -DNCURSES_WIDECHAR=1'
-	elif [ -f /usr/include/ncurses/ncurses.h ]; then
-		echo '-I/usr/include/ncurses -DCURSES_LOC="<ncurses.h>"'
-	elif [ -f /usr/include/ncurses/curses.h ]; then
-		echo '-I/usr/include/ncurses -DCURSES_LOC="<curses.h>"'
-	elif [ -f /usr/include/ncurses.h ]; then
-		echo '-DCURSES_LOC="<ncurses.h>"'
-	else
-		echo '-DCURSES_LOC="<curses.h>"'
-	fi
-}
-
-# Temp file, try to clean up after us
-tmp=.lxdialog.tmp
-trap "rm -f $tmp" 0 1 2 3 15
-
-# Check if we can link to ncurses
-check() {
-        $cc -x c - -o $tmp 2>/dev/null <<'EOF'
-#include CURSES_LOC
-main() {}
-EOF
-	if [ $? != 0 ]; then
-	    echo " *** Unable to find the ncurses libraries or the"       1>&2
-	    echo " *** required header files."                            1>&2
-	    echo " *** 'make menuconfig' requires the ncurses libraries." 1>&2
-	    echo " *** "                                                  1>&2
-	    echo " *** Install ncurses (ncurses-devel) and try again."    1>&2
-	    echo " *** "                                                  1>&2
-	    exit 1
-	fi
-}
-
-usage() {
-	printf "Usage: $0 [-check compiler options|-ccflags|-ldflags compiler options]\n"
-}
-
-if [ $# -eq 0 ]; then
-	usage
-	exit 1
-fi
-
-cc=""
-case "$1" in
-	"-check")
-		shift
-		cc="$@"
-		check
-		;;
-	"-ccflags")
-		ccflags
-		;;
-	"-ldflags")
-		shift
-		cc="$@"
-		ldflags
-		;;
-	"*")
-		usage
-		exit 1
-		;;
-esac
diff --git a/scripts/config/lxdialog/checklist.c b/scripts/config/lxdialog/checklist.c
index 8d016faa28..fd161cfff1 100644
--- a/scripts/config/lxdialog/checklist.c
+++ b/scripts/config/lxdialog/checklist.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  checklist.c -- implements the checklist box
  *
@@ -5,20 +6,6 @@
  *     Stuart Herbert - S.Herbert@sheffield.ac.uk: radiolist extension
  *     Alessandro Rubini - rubini@ipvvis.unipv.it: merged the two
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
@@ -103,8 +90,8 @@ static void print_buttons(WINDOW * dialog, int height, int width, int selected)
 	int x = width / 2 - 11;
 	int y = height - 2;
 
-	print_button(dialog, gettext("Select"), y, x, selected == 0);
-	print_button(dialog, gettext(" Help "), y, x + 14, selected == 1);
+	print_button(dialog, "Select", y, x, selected == 0);
+	print_button(dialog, " Help ", y, x + 14, selected == 1);
 
 	wmove(dialog, y, x + 1 + 14 * selected);
 	wrefresh(dialog);
diff --git a/scripts/config/lxdialog/dialog.h b/scripts/config/lxdialog/dialog.h
index fcffd5b41f..68b565e3c4 100644
--- a/scripts/config/lxdialog/dialog.h
+++ b/scripts/config/lxdialog/dialog.h
@@ -1,21 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  *  dialog.h -- common declarations for all dialog modules
  *
  *  AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <sys/types.h>
@@ -26,16 +13,10 @@
 #include <string.h>
 #include <stdbool.h>
 
-#ifndef KBUILD_NO_NLS
-# include <libintl.h>
-#else
-# define gettext(Msgid) ((const char *) (Msgid))
-#endif
-
 #ifdef __sun__
 #define CURS_MACROS
 #endif
-#include CURSES_LOC
+#include <ncurses.h>
 
 /*
  * Colors in ncurses 1.9.9e do not work properly since foreground and
diff --git a/scripts/config/lxdialog/inputbox.c b/scripts/config/lxdialog/inputbox.c
index d58de1dc53..1dcfb288ee 100644
--- a/scripts/config/lxdialog/inputbox.c
+++ b/scripts/config/lxdialog/inputbox.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  inputbox.c -- implements the input box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
@@ -31,8 +18,8 @@ static void print_buttons(WINDOW * dialog, int height, int width, int selected)
 	int x = width / 2 - 11;
 	int y = height - 2;
 
-	print_button(dialog, gettext("  Ok  "), y, x, selected == 0);
-	print_button(dialog, gettext(" Help "), y, x + 14, selected == 1);
+	print_button(dialog, "  Ok  ", y, x, selected == 0);
+	print_button(dialog, " Help ", y, x + 14, selected == 1);
 
 	wmove(dialog, y, x + 1 + 14 * selected);
 	wrefresh(dialog);
@@ -126,7 +113,8 @@ do_resize:
 			case KEY_DOWN:
 				break;
 			case KEY_BACKSPACE:
-			case 127:
+			case 8:   /* ^H */
+			case 127: /* ^? */
 				if (pos) {
 					wattrset(dialog, dlg.inputbox.atr);
 					if (input_x == 0) {
diff --git a/scripts/config/lxdialog/menubox.c b/scripts/config/lxdialog/menubox.c
index 11ae9ad7ac..58c2f8afe5 100644
--- a/scripts/config/lxdialog/menubox.c
+++ b/scripts/config/lxdialog/menubox.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  menubox.c -- implements the menu box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcapw@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 /*
@@ -157,11 +144,11 @@ static void print_buttons(WINDOW * win, int height, int width, int selected)
 	int x = width / 2 - 28;
 	int y = height - 2;
 
-	print_button(win, gettext("Select"), y, x, selected == 0);
-	print_button(win, gettext(" Exit "), y, x + 12, selected == 1);
-	print_button(win, gettext(" Help "), y, x + 24, selected == 2);
-	print_button(win, gettext(" Save "), y, x + 36, selected == 3);
-	print_button(win, gettext(" Load "), y, x + 48, selected == 4);
+	print_button(win, "Select", y, x, selected == 0);
+	print_button(win, " Exit ", y, x + 12, selected == 1);
+	print_button(win, " Help ", y, x + 24, selected == 2);
+	print_button(win, " Save ", y, x + 36, selected == 3);
+	print_button(win, " Load ", y, x + 48, selected == 4);
 
 	wmove(win, y, x + 1 + 12 * selected);
 	wrefresh(win);
diff --git a/scripts/config/lxdialog/textbox.c b/scripts/config/lxdialog/textbox.c
index 1773319b95..4e339b1266 100644
--- a/scripts/config/lxdialog/textbox.c
+++ b/scripts/config/lxdialog/textbox.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  textbox.c -- implements the text box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
@@ -129,7 +116,7 @@ do_resize:
 
 	print_title(dialog, title, width);
 
-	print_button(dialog, gettext(" Exit "), height - 2, width / 2 - 4, TRUE);
+	print_button(dialog, " Exit ", height - 2, width / 2 - 4, TRUE);
 	wnoutrefresh(dialog);
 	getyx(dialog, cur_y, cur_x);	/* Save cursor position */
 
diff --git a/scripts/config/lxdialog/util.c b/scripts/config/lxdialog/util.c
index f7abdeb92a..1b490d4af0 100644
--- a/scripts/config/lxdialog/util.c
+++ b/scripts/config/lxdialog/util.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  util.c
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include <stdarg.h>
diff --git a/scripts/config/lxdialog/yesno.c b/scripts/config/lxdialog/yesno.c
index 676fb2f824..bcaac9b7ba 100644
--- a/scripts/config/lxdialog/yesno.c
+++ b/scripts/config/lxdialog/yesno.c
@@ -1,22 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  *  yesno.c -- implements the yes/no box
  *
  *  ORIGINAL AUTHOR: Savio Lam (lam836@cs.cuhk.hk)
  *  MODIFIED FOR LINUX KERNEL CONFIG BY: William Roadcap (roadcap@cfw.com)
- *
- *  This program is free software; you can redistribute it and/or
- *  modify it under the terms of the GNU General Public License
- *  as published by the Free Software Foundation; either version 2
- *  of the License, or (at your option) any later version.
- *
- *  This program is distributed in the hope that it will be useful,
- *  but WITHOUT ANY WARRANTY; without even the implied warranty of
- *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- *  GNU General Public License for more details.
- *
- *  You should have received a copy of the GNU General Public License
- *  along with this program; if not, write to the Free Software
- *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
  */
 
 #include "dialog.h"
@@ -29,8 +16,8 @@ static void print_buttons(WINDOW * dialog, int height, int width, int selected)
 	int x = width / 2 - 10;
 	int y = height - 2;
 
-	print_button(dialog, gettext(" Yes "), y, x, selected == 0);
-	print_button(dialog, gettext("  No  "), y, x + 13, selected == 1);
+	print_button(dialog, " Yes ", y, x, selected == 0);
+	print_button(dialog, "  No  ", y, x + 13, selected == 1);
 
 	wmove(dialog, y, x + 1 + 13 * selected);
 	wrefresh(dialog);
diff --git a/scripts/config/mconf-cfg.sh b/scripts/config/mconf-cfg.sh
new file mode 100755
index 0000000000..aa68ec9562
--- /dev/null
+++ b/scripts/config/mconf-cfg.sh
@@ -0,0 +1,50 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+PKG="ncursesw"
+PKG2="ncurses"
+
+if [ -n "$(command -v pkg-config)" ]; then
+	if pkg-config --exists $PKG; then
+		echo cflags=\"$(pkg-config --cflags $PKG)\"
+		echo libs=\"$(pkg-config --libs $PKG)\"
+		exit 0
+	fi
+
+	if pkg-config --exists $PKG2; then
+		echo cflags=\"$(pkg-config --cflags $PKG2)\"
+		echo libs=\"$(pkg-config --libs $PKG2)\"
+		exit 0
+	fi
+fi
+
+# Check the default paths in case pkg-config is not installed.
+# (Even if it is installed, some distributions such as openSUSE cannot
+# find ncurses by pkg-config.)
+if [ -f /usr/include/ncursesw/ncurses.h ]; then
+	echo cflags=\"-D_GNU_SOURCE -I/usr/include/ncursesw\"
+	echo libs=\"-lncursesw\"
+	exit 0
+fi
+
+if [ -f /usr/include/ncurses/ncurses.h ]; then
+	echo cflags=\"-D_GNU_SOURCE -I/usr/include/ncurses\"
+	echo libs=\"-lncurses\"
+	exit 0
+fi
+
+if [ -f /usr/include/ncurses.h ]; then
+	echo cflags=\"-D_GNU_SOURCE\"
+	echo libs=\"-lncurses\"
+	exit 0
+fi
+
+echo >&2 "*"
+echo >&2 "* Unable to find the ncurses package."
+echo >&2 "* Install ncurses (ncurses-devel or libncurses-dev"
+echo >&2 "* depending on your distribution)."
+echo >&2 "*"
+echo >&2 "* You may also need to install pkg-config to find the"
+echo >&2 "* ncurses installed in a non-default location."
+echo >&2 "*"
+exit 1
diff --git a/scripts/config/mconf.c b/scripts/config/mconf.c
index 540fa911e1..a35408d2df 100644
--- a/scripts/config/mconf.c
+++ b/scripts/config/mconf.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  *
  * Introduced single menu mode (show all sub-menus in one large tree).
  * 2002-11-06 Petr Baudis <pasky@ucw.cz>
@@ -15,23 +15,27 @@
 #include <stdarg.h>
 #include <stdlib.h>
 #include <string.h>
+#include <strings.h>
 #include <signal.h>
 #include <unistd.h>
-#include <locale.h>
 
 #include "lkc.h"
 #include "lxdialog/dialog.h"
 
-static const char mconf_readme[] = N_(
+static const char mconf_readme[] =
 "Overview\n"
 "--------\n"
 "Some OpenWrt features may be built directly into the image.\n"
-"Some may be made into installable ipkg packages. Some features\n"
-"may be completely removed altogether.\n"
+"Some may be made into installable ipkg packages (referred here as\n"
+"modules). Some features may be completely removed altogether.\n"
 "\n"
-"Menu items beginning with [*], <M> or [ ] represent features\n"
-"configured to be included, built as package or removed respectively.\n"
-"Pointed brackets <> represent packaging capable features.\n"
+"Menu items beginning with following braces represent features that\n"
+"  [ ] can be built in or removed\n"
+"  < > can be built in, modularized or removed\n"
+"  { } can be built in or modularized (selected by other feature)\n"
+"  - - are selected by other feature,\n"
+"while *, M or whitespace inside braces means to build in, build as\n"
+"a module or to exclude the feature respectively.\n"
 "\n"
 "To change any of these features, highlight it with the cursor\n"
 "keys and press <Y> to build it in, <M> to make it a module or\n"
@@ -167,37 +171,37 @@ static const char mconf_readme[] = N_(
 " blackbg    => selects a color scheme with black background\n"
 " classic    => theme with blue background. The classic look\n"
 " bluetitle  => an LCD friendly version of classic. (default)\n"
-"\n"),
-menu_instructions[] = N_(
+"\n",
+menu_instructions[] =
 	"Arrow keys navigate the menu.  "
 	"<Enter> selects submenus ---> (or empty submenus ----).  "
 	"Highlighted letters are hotkeys.  "
 	"Pressing <Y> includes, <N> excludes, <M> modularizes features.  "
 	"Press <Esc><Esc> to exit, <?> for Help, </> for Search.  "
-	"Legend: [*] built-in  [ ] excluded  <M> module  < > module capable"),
-radiolist_instructions[] = N_(
+	"Legend: [*] built-in  [ ] excluded  <M> module  < > module capable",
+radiolist_instructions[] =
 	"Use the arrow keys to navigate this window or "
 	"press the hotkey of the item you wish to select "
 	"followed by the <SPACE BAR>. "
-	"Press <?> for additional information about this option."),
-inputbox_instructions_int[] = N_(
+	"Press <?> for additional information about this option.",
+inputbox_instructions_int[] =
 	"Please enter a decimal value. "
 	"Fractions will not be accepted.  "
-	"Use the <TAB> key to move from the input field to the buttons below it."),
-inputbox_instructions_hex[] = N_(
+	"Use the <TAB> key to move from the input field to the buttons below it.",
+inputbox_instructions_hex[] =
 	"Please enter a hexadecimal value. "
-	"Use the <TAB> key to move from the input field to the buttons below it."),
-inputbox_instructions_string[] = N_(
+	"Use the <TAB> key to move from the input field to the buttons below it.",
+inputbox_instructions_string[] =
 	"Please enter a string value. "
-	"Use the <TAB> key to move from the input field to the buttons below it."),
-setmod_text[] = N_(
+	"Use the <TAB> key to move from the input field to the buttons below it.",
+setmod_text[] =
 	"This feature depends on another which has been configured as a module.\n"
-	"As a result, this feature will be built as a module."),
-load_config_text[] = N_(
+	"As a result, this feature will be built as a module.",
+load_config_text[] =
 	"Enter the name of the configuration file you wish to load.  "
 	"Accept the name shown to restore the configuration you "
-	"last retrieved.  Leave blank to abort."),
-load_config_help[] = N_(
+	"last retrieved.  Leave blank to abort.",
+load_config_help[] =
 	"\n"
 	"For various reasons, one may wish to keep several different\n"
 	"configurations available on a single machine.\n"
@@ -207,11 +211,11 @@ load_config_help[] = N_(
 	"configuration.\n"
 	"\n"
 	"If you are uncertain, then you have probably never used alternate\n"
-	"configuration files. You should therefore leave this blank to abort.\n"),
-save_config_text[] = N_(
+	"configuration files. You should therefore leave this blank to abort.\n",
+save_config_text[] =
 	"Enter a filename to which this configuration should be saved "
-	"as an alternate.  Leave blank to abort."),
-save_config_help[] = N_(
+	"as an alternate.  Leave blank to abort.",
+save_config_help[] =
 	"\n"
 	"For various reasons, one may wish to keep different configurations\n"
 	"available on a single machine.\n"
@@ -221,8 +225,8 @@ save_config_help[] = N_(
 	"configuration options you have selected at that time.\n"
 	"\n"
 	"If you are uncertain what all this means then you should probably\n"
-	"leave this blank.\n"),
-search_help[] = N_(
+	"leave this blank.\n",
+search_help[] =
 	"\n"
 	"Search for symbols and display their relations.\n"
 	"Regular expressions are allowed.\n"
@@ -242,7 +246,7 @@ search_help[] = N_(
 	"  Selected by: BAR [=n]\n"
 	"-----------------------------------------------------------------\n"
 	"o The line 'Type:' shows the type of the configuration option for\n"
-	"  this symbol (boolean, tristate, string, ...)\n"
+	"  this symbol (bool, tristate, string, ...)\n"
 	"o The line 'Prompt:' shows the text used in the menu structure for\n"
 	"  this symbol\n"
 	"o The 'Defined at' line tells at what file / line number the symbol\n"
@@ -267,7 +271,7 @@ search_help[] = N_(
 	"Examples: USB	=> find all symbols containing USB\n"
 	"          ^USB => find all symbols starting with USB\n"
 	"          USB$ => find all symbols ending with USB\n"
-	"\n");
+	"\n";
 
 static int indent;
 static struct menu *current_menu;
@@ -396,19 +400,19 @@ static void search_conf(void)
 	struct subtitle_part stpart;
 
 	title = str_new();
-	str_printf( &title, _("Enter (sub)string or regexp to search for "
-			      "(with or without \"%s\")"), CONFIG_);
+	str_printf( &title, "Enter (sub)string or regexp to search for "
+			      "(with or without \"%s\")", CONFIG_);
 
 again:
 	dialog_clear();
-	dres = dialog_inputbox(_("Search Configuration Parameter"),
+	dres = dialog_inputbox("Search Configuration Parameter",
 			      str_get(&title),
 			      10, 75, "");
 	switch (dres) {
 	case 0:
 		break;
 	case 1:
-		show_helptext(_("Search Configuration"), search_help);
+		show_helptext("Search Configuration", search_help);
 		goto again;
 	default:
 		str_free(&title);
@@ -439,7 +443,7 @@ again:
 
 		res = get_relations_str(sym_arr, &head);
 		set_subtitle();
-		dres = show_textbox_ext(_("Search Results"), (char *)
+		dres = show_textbox_ext("Search Results", (char *)
 					str_get(&res), 0, 0, keys, &vscroll,
 					&hscroll, &update_text, (void *)
 					&data);
@@ -487,7 +491,6 @@ static void build_conf(struct menu *menu)
 			switch (prop->type) {
 			case P_MENU:
 				child_count++;
-				prompt = _(prompt);
 				if (single_menu_mode) {
 					item_make("%s%*c%s",
 						  menu->data ? "-->" : "++>",
@@ -504,7 +507,7 @@ static void build_conf(struct menu *menu)
 			case P_COMMENT:
 				if (prompt) {
 					child_count++;
-					item_make("   %*c*** %s ***", indent + 1, ' ', _(prompt));
+					item_make("   %*c*** %s ***", indent + 1, ' ', prompt);
 					item_set_tag(':');
 					item_set_data(menu);
 				}
@@ -512,7 +515,7 @@ static void build_conf(struct menu *menu)
 			default:
 				if (prompt) {
 					child_count++;
-					item_make("---%*c%s", indent + 1, ' ', _(prompt));
+					item_make("---%*c%s", indent + 1, ' ', prompt);
 					item_set_tag(':');
 					item_set_data(menu);
 				}
@@ -534,7 +537,7 @@ static void build_conf(struct menu *menu)
 		}
 
 		val = sym_get_tristate_value(sym);
-		if (sym_is_changable(sym)) {
+		if (sym_is_changeable(sym)) {
 			switch (type) {
 			case S_BOOLEAN:
 				item_make("[%c]", val == no ? ' ' : '*');
@@ -556,10 +559,10 @@ static void build_conf(struct menu *menu)
 			item_set_data(menu);
 		}
 
-		item_add_str("%*c%s", indent + 1, ' ', _(menu_get_prompt(menu)));
+		item_add_str("%*c%s", indent + 1, ' ', menu_get_prompt(menu));
 		if (val == yes) {
 			if (def_menu) {
-				item_add_str(" (%s)", _(menu_get_prompt(def_menu)));
+				item_add_str(" (%s)", menu_get_prompt(def_menu));
 				item_add_str("  --->");
 				if (def_menu->list) {
 					indent += 2;
@@ -571,7 +574,7 @@ static void build_conf(struct menu *menu)
 		}
 	} else {
 		if (menu == current_menu) {
-			item_make("---%*c%s", indent + 1, ' ', _(menu_get_prompt(menu)));
+			item_make("---%*c%s", indent + 1, ' ', menu_get_prompt(menu));
 			item_set_tag(':');
 			item_set_data(menu);
 			goto conf_childs;
@@ -585,7 +588,7 @@ static void build_conf(struct menu *menu)
 		} else {
 			switch (type) {
 			case S_BOOLEAN:
-				if (sym_is_changable(sym))
+				if (sym_is_changeable(sym))
 					item_make("[%c]", val == no ? ' ' : '*');
 				else
 					item_make("-%c-", val == no ? ' ' : '*');
@@ -598,7 +601,7 @@ static void build_conf(struct menu *menu)
 				case mod: ch = 'M'; break;
 				default:  ch = ' '; break;
 				}
-				if (sym_is_changable(sym)) {
+				if (sym_is_changeable(sym)) {
 					if (sym->rev_dep.tri == mod)
 						item_make("{%c}", ch);
 					else
@@ -614,17 +617,17 @@ static void build_conf(struct menu *menu)
 				tmp = indent - tmp + 4;
 				if (tmp < 0)
 					tmp = 0;
-				item_add_str("%*c%s%s", tmp, ' ', _(menu_get_prompt(menu)),
-					     (sym_has_value(sym) || !sym_is_changable(sym)) ?
-					     "" : _(" (NEW)"));
+				item_add_str("%*c%s%s", tmp, ' ', menu_get_prompt(menu),
+					     (sym_has_value(sym) || !sym_is_changeable(sym)) ?
+					     "" : " (NEW)");
 				item_set_tag('s');
 				item_set_data(menu);
 				goto conf_childs;
 			}
 		}
-		item_add_str("%*c%s%s", indent + 1, ' ', _(menu_get_prompt(menu)),
-			  (sym_has_value(sym) || !sym_is_changable(sym)) ?
-			  "" : _(" (NEW)"));
+		item_add_str("%*c%s%s", indent + 1, ' ', menu_get_prompt(menu),
+			  (sym_has_value(sym) || !sym_is_changeable(sym)) ?
+			  "" : " (NEW)");
 		if (menu->prompt->type == P_MENU) {
 			item_add_str("  %s", menu_is_empty(menu) ? "----" : "--->");
 			return;
@@ -661,8 +664,8 @@ static void conf(struct menu *menu, struct menu *active_menu)
 			break;
 		set_subtitle();
 		dialog_clear();
-		res = dialog_menu(prompt ? _(prompt) : _("Main Menu"),
-				  _(menu_instructions),
+		res = dialog_menu(prompt ? prompt : "Main Menu",
+				  menu_instructions,
 				  active_menu, &s_scroll);
 		if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
 			break;
@@ -704,7 +707,7 @@ static void conf(struct menu *menu, struct menu *active_menu)
 				show_help(submenu);
 			else {
 				reset_subtitle();
-				show_helptext(_("README"), _(mconf_readme));
+				show_helptext("README", mconf_readme);
 			}
 			break;
 		case 3:
@@ -769,16 +772,13 @@ static void show_helptext(const char *title, const char *text)
 	show_textbox(title, text, 0, 0);
 }
 
-static void conf_message_callback(const char *fmt, va_list ap)
+static void conf_message_callback(const char *s)
 {
-	char buf[PATH_MAX+1];
-
-	vsnprintf(buf, sizeof(buf), fmt, ap);
 	if (save_and_exit) {
 		if (!silent)
-			printf("%s", buf);
+			printf("%s", s);
 	} else {
-		show_textbox(NULL, buf, 6, 60);
+		show_textbox(NULL, s, 6, 60);
 	}
 }
 
@@ -789,13 +789,13 @@ static void show_help(struct menu *menu)
 	help.max_width = getmaxx(stdscr) - 10;
 	menu_get_ext_help(menu, &help);
 
-	show_helptext(_(menu_get_prompt(menu)), str_get(&help));
+	show_helptext(menu_get_prompt(menu), str_get(&help));
 	str_free(&help);
 }
 
 static void conf_choice(struct menu *menu)
 {
-	const char *prompt = _(menu_get_prompt(menu));
+	const char *prompt = menu_get_prompt(menu);
 	struct menu *child;
 	struct symbol *active;
 	struct property *prop;
@@ -811,9 +811,9 @@ static void conf_choice(struct menu *menu)
 			if (!menu_is_visible(child))
 				continue;
 			if (child->sym)
-				item_make("%s", _(menu_get_prompt(child)));
+				item_make("%s", menu_get_prompt(child));
 			else {
-				item_make("*** %s ***", _(menu_get_prompt(child)));
+				item_make("*** %s ***", menu_get_prompt(child));
 				item_set_tag(':');
 			}
 			item_set_data(child);
@@ -823,8 +823,8 @@ static void conf_choice(struct menu *menu)
 				item_set_tag('X');
 		}
 		dialog_clear();
-		res = dialog_checklist(prompt ? _(prompt) : _("Main Menu"),
-					_(radiolist_instructions),
+		res = dialog_checklist(prompt ? prompt : "Main Menu",
+					radiolist_instructions,
 					MENUBOX_HEIGTH_MIN,
 					MENUBOX_WIDTH_MIN,
 					CHECKLIST_HEIGTH_MIN);
@@ -874,26 +874,26 @@ static void conf_string(struct menu *menu)
 
 		switch (sym_get_type(menu->sym)) {
 		case S_INT:
-			heading = _(inputbox_instructions_int);
+			heading = inputbox_instructions_int;
 			break;
 		case S_HEX:
-			heading = _(inputbox_instructions_hex);
+			heading = inputbox_instructions_hex;
 			break;
 		case S_STRING:
-			heading = _(inputbox_instructions_string);
+			heading = inputbox_instructions_string;
 			break;
 		default:
-			heading = _("Internal mconf error!");
+			heading = "Internal mconf error!";
 		}
 		dialog_clear();
-		res = dialog_inputbox(prompt ? _(prompt) : _("Main Menu"),
+		res = dialog_inputbox(prompt ? prompt : "Main Menu",
 				      heading, 10, 75,
 				      sym_get_string_value(menu->sym));
 		switch (res) {
 		case 0:
 			if (sym_set_string_value(menu->sym, dialog_input_result))
 				return;
-			show_textbox(NULL, _("You have made an invalid entry."), 5, 43);
+			show_textbox(NULL, "You have made an invalid entry.", 5, 43);
 			break;
 		case 1:
 			show_help(menu);
@@ -921,10 +921,10 @@ static void conf_load(void)
 				sym_set_change_count(1);
 				return;
 			}
-			show_textbox(NULL, _("File does not exist!"), 5, 38);
+			show_textbox(NULL, "File does not exist!", 5, 38);
 			break;
 		case 1:
-			show_helptext(_("Load Alternate Configuration"), load_config_help);
+			show_helptext("Load Alternate Configuration", load_config_help);
 			break;
 		case KEY_ESC:
 			return;
@@ -947,10 +947,10 @@ static void conf_save(void)
 				set_config_filename(dialog_input_result);
 				return;
 			}
-			show_textbox(NULL, _("Can't create file!  Probably a nonexistent directory."), 5, 60);
+			show_textbox(NULL, "Can't create file!", 5, 60);
 			break;
 		case 1:
-			show_helptext(_("Save Alternate Configuration"), save_config_help);
+			show_helptext("Save Alternate Configuration", save_config_help);
 			break;
 		case KEY_ESC:
 			return;
@@ -967,8 +967,8 @@ static int handle_exit(void)
 	dialog_clear();
 	if (conf_get_changed())
 		res = dialog_yesno(NULL,
-				   _("Do you wish to save your new configuration?\n"
-				     "(Press <ESC><ESC> to continue kernel configuration.)"),
+				   "Do you wish to save your new configuration?\n"
+				     "(Press <ESC><ESC> to continue kernel configuration.)",
 				   6, 60);
 	else
 		res = -1;
@@ -978,26 +978,27 @@ static int handle_exit(void)
 	switch (res) {
 	case 0:
 		if (conf_write(filename)) {
-			fprintf(stderr, _("\n\n"
+			fprintf(stderr, "\n\n"
 					  "Error while writing of the configuration.\n"
 					  "Your configuration changes were NOT saved."
-					  "\n\n"));
+					  "\n\n");
 			return 1;
 		}
+		conf_write_autoconf(0);
 		/* fall through */
 	case -1:
 		if (!silent)
-			printf(_("\n\n"
+			printf("\n\n"
 				 "*** End of the configuration.\n"
 				 "*** Execute 'make' to start the build or try 'make help'."
-				 "\n\n"));
+				 "\n\n");
 		res = 0;
 		break;
 	default:
 		if (!silent)
-			fprintf(stderr, _("\n\n"
+			fprintf(stderr, "\n\n"
 					  "Your configuration changes were NOT saved."
-					  "\n\n"));
+					  "\n\n");
 		if (res != KEY_ESC)
 			res = 0;
 	}
@@ -1015,10 +1016,6 @@ int main(int ac, char **av)
 	char *mode;
 	int res;
 
-	setlocale(LC_ALL, "");
-	bindtextdomain(PACKAGE, LOCALEDIR);
-	textdomain(PACKAGE);
-
 	signal(SIGINT, sig_handler);
 
 	if (ac > 1 && strcmp(av[1], "-s") == 0) {
@@ -1037,8 +1034,8 @@ int main(int ac, char **av)
 	}
 
 	if (init_dialog(NULL)) {
-		fprintf(stderr, N_("Your display is too small to run Menuconfig!\n"));
-		fprintf(stderr, N_("It must be at least 19 lines by 80 columns.\n"));
+		fprintf(stderr, "Your display is too small to run Menuconfig!\n");
+		fprintf(stderr, "It must be at least 19 lines by 80 columns.\n");
 		return 1;
 	}
 
diff --git a/scripts/config/menu.c b/scripts/config/menu.c
index 3d89dc178d..1df87dd3a5 100644
--- a/scripts/config/menu.c
+++ b/scripts/config/menu.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <ctype.h>
@@ -62,13 +62,8 @@ void menu_add_entry(struct symbol *sym)
 		menu_add_symbol(P_SYMBOL, sym, NULL);
 }
 
-void menu_end_entry(void)
-{
-}
-
 struct menu *menu_add_menu(void)
 {
-	menu_end_entry();
 	last_entry_ptr = &current_entry->list;
 	return current_menu = current_entry;
 }
@@ -79,19 +74,23 @@ void menu_end_menu(void)
 	current_menu = current_menu->parent;
 }
 
-static struct expr *menu_check_dep(struct expr *e)
+/*
+ * Rewrites 'm' to 'm' && MODULES, so that it evaluates to 'n' when running
+ * without modules
+ */
+static struct expr *rewrite_m(struct expr *e)
 {
 	if (!e)
 		return e;
 
 	switch (e->type) {
 	case E_NOT:
-		e->left.expr = menu_check_dep(e->left.expr);
+		e->left.expr = rewrite_m(e->left.expr);
 		break;
 	case E_OR:
 	case E_AND:
-		e->left.expr = menu_check_dep(e->left.expr);
-		e->right.expr = menu_check_dep(e->right.expr);
+		e->left.expr = rewrite_m(e->left.expr);
+		e->right.expr = rewrite_m(e->right.expr);
 		break;
 	case E_SYMBOL:
 		/* change 'm' into 'm' && MODULES */
@@ -106,7 +105,7 @@ static struct expr *menu_check_dep(struct expr *e)
 
 void menu_add_dep(struct expr *dep)
 {
-	current_entry->dep = expr_alloc_and(current_entry->dep, menu_check_dep(dep));
+	current_entry->dep = expr_alloc_and(current_entry->dep, dep);
 }
 
 void menu_set_type(int type)
@@ -125,61 +124,76 @@ void menu_set_type(int type)
 		sym_type_name(sym->type), sym_type_name(type));
 }
 
-struct property *menu_add_prop(enum prop_type type, char *prompt, struct expr *expr, struct expr *dep)
+struct property *menu_add_prop(enum prop_type type, struct expr *expr,
+			       struct expr *dep)
 {
-	struct property *prop = prop_alloc(type, current_entry->sym);
+	struct property *prop;
 
+	prop = xmalloc(sizeof(*prop));
+	memset(prop, 0, sizeof(*prop));
+	prop->type = type;
+	prop->file = current_file;
+	prop->lineno = zconf_lineno();
 	prop->menu = current_entry;
 	prop->expr = expr;
-	prop->visible.expr = menu_check_dep(dep);
+	prop->visible.expr = dep;
 
-	if (prompt) {
-		if (isspace(*prompt)) {
-			prop_warn(prop, "leading whitespace ignored");
-			while (isspace(*prompt))
-				prompt++;
-		}
-		if (current_entry->prompt && current_entry != &rootmenu)
-			prop_warn(prop, "prompt redefined");
+	/* append property to the prop list of symbol */
+	if (current_entry->sym) {
+		struct property **propp;
 
-		/* Apply all upper menus' visibilities to actual prompts. */
-		if(type == P_PROMPT) {
-			struct menu *menu = current_entry;
+		for (propp = &current_entry->sym->prop;
+		     *propp;
+		     propp = &(*propp)->next)
+			;
+		*propp = prop;
+	}
 
-			while ((menu = menu->parent) != NULL) {
-				struct expr *dup_expr;
+	return prop;
+}
 
-				if (!menu->visibility)
-					continue;
-				/*
-				 * Do not add a reference to the
-				 * menu's visibility expression but
-				 * use a copy of it.  Otherwise the
-				 * expression reduction functions
-				 * will modify expressions that have
-				 * multiple references which can
-				 * cause unwanted side effects.
-				 */
-				dup_expr = expr_copy(menu->visibility);
+struct property *menu_add_prompt(enum prop_type type, char *prompt,
+				 struct expr *dep)
+{
+	struct property *prop = menu_add_prop(type, NULL, dep);
 
-				prop->visible.expr
-					= expr_alloc_and(prop->visible.expr,
-							 dup_expr);
-			}
-		}
+	if (isspace(*prompt)) {
+		prop_warn(prop, "leading whitespace ignored");
+		while (isspace(*prompt))
+			prompt++;
+	}
+	if (current_entry->prompt)
+		prop_warn(prop, "prompt redefined");
+
+	/* Apply all upper menus' visibilities to actual prompts. */
+	if (type == P_PROMPT) {
+		struct menu *menu = current_entry;
+
+		while ((menu = menu->parent) != NULL) {
+			struct expr *dup_expr;
+
+			if (!menu->visibility)
+				continue;
+			/*
+			 * Do not add a reference to the menu's visibility
+			 * expression but use a copy of it. Otherwise the
+			 * expression reduction functions will modify
+			 * expressions that have multiple references which
+			 * can cause unwanted side effects.
+			 */
+			dup_expr = expr_copy(menu->visibility);
 
-		current_entry->prompt = prop;
+			prop->visible.expr = expr_alloc_and(prop->visible.expr,
+							    dup_expr);
+		}
 	}
+
+	current_entry->prompt = prop;
 	prop->text = prompt;
 
 	return prop;
 }
 
-struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep)
-{
-	return menu_add_prop(type, prompt, NULL, dep);
-}
-
 void menu_add_visibility(struct expr *expr)
 {
 	current_entry->visibility = expr_alloc_and(current_entry->visibility,
@@ -188,39 +202,34 @@ void menu_add_visibility(struct expr *expr)
 
 void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep)
 {
-	menu_add_prop(type, NULL, expr, dep);
+	menu_add_prop(type, expr, dep);
 }
 
 void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep)
 {
-	menu_add_prop(type, NULL, expr_alloc_symbol(sym), dep);
+	menu_add_prop(type, expr_alloc_symbol(sym), dep);
 }
 
-void menu_add_option(int token, char *arg)
+void menu_add_option_modules(void)
 {
-	switch (token) {
-	case T_OPT_MODULES:
-		if (modules_sym)
-			zconf_error("symbol '%s' redefines option 'modules'"
-				    " already defined by symbol '%s'",
-				    current_entry->sym->name,
-				    modules_sym->name
-				    );
-		modules_sym = current_entry->sym;
-		break;
-	case T_OPT_DEFCONFIG_LIST:
-		if (!sym_defconfig_list)
-			sym_defconfig_list = current_entry->sym;
-		else if (sym_defconfig_list != current_entry->sym)
-			zconf_error("trying to redefine defconfig symbol");
-		break;
-	case T_OPT_ENV:
-		prop_add_env(arg);
-		break;
-	case T_OPT_ALLNOCONFIG_Y:
-		current_entry->sym->flags |= SYMBOL_ALLNOCONFIG_Y;
-		break;
-	}
+	if (modules_sym)
+		zconf_error("symbol '%s' redefines option 'modules' already defined by symbol '%s'",
+			    current_entry->sym->name, modules_sym->name);
+	modules_sym = current_entry->sym;
+}
+
+void menu_add_option_defconfig_list(void)
+{
+	if (!sym_defconfig_list)
+		sym_defconfig_list = current_entry->sym;
+	else if (sym_defconfig_list != current_entry->sym)
+		zconf_error("trying to redefine defconfig symbol");
+	sym_defconfig_list->flags |= SYMBOL_NO_WRITE;
+}
+
+void menu_add_option_allnoconfig_y(void)
+{
+	current_entry->sym->flags |= SYMBOL_ALLNOCONFIG_Y;
 }
 
 static int menu_validate_number(struct symbol *sym, struct symbol *sym2)
@@ -233,6 +242,8 @@ static void sym_check_prop(struct symbol *sym)
 {
 	struct property *prop;
 	struct symbol *sym2;
+	char *use;
+
 	for (prop = sym->prop; prop; prop = prop->next) {
 		switch (prop->type) {
 		case P_DEFAULT:
@@ -250,20 +261,32 @@ static void sym_check_prop(struct symbol *sym)
 					    "'%s': number is invalid",
 					    sym->name);
 			}
+			if (sym_is_choice(sym)) {
+				struct property *choice_prop =
+					sym_get_choice_prop(sym2);
+
+				if (!choice_prop ||
+				    prop_get_symbol(choice_prop) != sym)
+					prop_warn(prop,
+						  "choice default symbol '%s' is not contained in the choice",
+						  sym2->name);
+			}
 			break;
 		case P_SELECT:
+		case P_IMPLY:
+			use = prop->type == P_SELECT ? "select" : "imply";
 			sym2 = prop_get_symbol(prop);
 			if (sym->type != S_BOOLEAN && sym->type != S_TRISTATE)
 				prop_warn(prop,
-				    "config symbol '%s' uses select, but is "
-				    "not boolean or tristate", sym->name);
+				    "config symbol '%s' uses %s, but is "
+				    "not bool or tristate", sym->name, use);
 			else if (sym2->type != S_UNKNOWN &&
 				 sym2->type != S_BOOLEAN &&
 				 sym2->type != S_TRISTATE)
 				prop_warn(prop,
-				    "'%s' has wrong type. 'select' only "
-				    "accept arguments of boolean and "
-				    "tristate type", sym2->name);
+				    "'%s' has wrong type. '%s' only "
+				    "accept arguments of bool and "
+				    "tristate type", sym2->name, use);
 			break;
 		case P_RANGE:
 			if (sym->type != S_INT && sym->type != S_HEX)
@@ -288,6 +311,11 @@ void menu_finalize(struct menu *parent)
 
 	sym = parent->sym;
 	if (parent->list) {
+		/*
+		 * This menu node has children. We (recursively) process them
+		 * and propagate parent dependencies before moving on.
+		 */
+
 		if (sym && sym_is_choice(sym)) {
 			if (sym->type == S_UNKNOWN) {
 				/* find the first choice value to find out choice type */
@@ -305,65 +333,167 @@ void menu_finalize(struct menu *parent)
 				if (menu->sym && menu->sym->type == S_UNKNOWN)
 					menu_set_type(sym->type);
 			}
+
+			/*
+			 * Use the choice itself as the parent dependency of
+			 * the contained items. This turns the mode of the
+			 * choice into an upper bound on the visibility of the
+			 * choice value symbols.
+			 */
 			parentdep = expr_alloc_symbol(sym);
-		} else if (parent->prompt)
-			parentdep = parent->prompt->visible.expr;
-		else
+		} else {
+			/* Menu node for 'menu', 'if' */
 			parentdep = parent->dep;
+		}
 
+		/* For each child menu node... */
 		for (menu = parent->list; menu; menu = menu->next) {
-			basedep = expr_transform(menu->dep);
+			/*
+			 * Propagate parent dependencies to the child menu
+			 * node, also rewriting and simplifying expressions
+			 */
+			basedep = rewrite_m(menu->dep);
+			basedep = expr_transform(basedep);
 			basedep = expr_alloc_and(expr_copy(parentdep), basedep);
 			basedep = expr_eliminate_dups(basedep);
 			menu->dep = basedep;
+
 			if (menu->sym)
+				/*
+				 * Note: For symbols, all prompts are included
+				 * too in the symbol's own property list
+				 */
 				prop = menu->sym->prop;
 			else
+				/*
+				 * For non-symbol menu nodes, we just need to
+				 * handle the prompt
+				 */
 				prop = menu->prompt;
+
+			/* For each property... */
 			for (; prop; prop = prop->next) {
 				if (prop->menu != menu)
+					/*
+					 * Two possibilities:
+					 *
+					 * 1. The property lacks dependencies
+					 *    and so isn't location-specific,
+					 *    e.g. an 'option'
+					 *
+					 * 2. The property belongs to a symbol
+					 *    defined in multiple locations and
+					 *    is from some other location. It
+					 *    will be handled there in that
+					 *    case.
+					 *
+					 * Skip the property.
+					 */
 					continue;
-				dep = expr_transform(prop->visible.expr);
+
+				/*
+				 * Propagate parent dependencies to the
+				 * property's condition, rewriting and
+				 * simplifying expressions at the same time
+				 */
+				dep = rewrite_m(prop->visible.expr);
+				dep = expr_transform(dep);
 				dep = expr_alloc_and(expr_copy(basedep), dep);
 				dep = expr_eliminate_dups(dep);
 				if (menu->sym && menu->sym->type != S_TRISTATE)
 					dep = expr_trans_bool(dep);
 				prop->visible.expr = dep;
+
+				/*
+				 * Handle selects and implies, which modify the
+				 * dependencies of the selected/implied symbol
+				 */
 				if (prop->type == P_SELECT) {
 					struct symbol *es = prop_get_symbol(prop);
 					es->rev_dep.expr = expr_alloc_or(es->rev_dep.expr,
 							expr_alloc_and(expr_alloc_symbol(menu->sym), expr_copy(dep)));
+				} else if (prop->type == P_IMPLY) {
+					struct symbol *es = prop_get_symbol(prop);
+					es->implied.expr = expr_alloc_or(es->implied.expr,
+							expr_alloc_and(expr_alloc_symbol(menu->sym), expr_copy(dep)));
 				}
 			}
 		}
+
+		if (sym && sym_is_choice(sym))
+			expr_free(parentdep);
+
+		/*
+		 * Recursively process children in the same fashion before
+		 * moving on
+		 */
 		for (menu = parent->list; menu; menu = menu->next)
 			menu_finalize(menu);
 	} else if (sym) {
+		/*
+		 * Automatic submenu creation. If sym is a symbol and A, B, C,
+		 * ... are consecutive items (symbols, menus, ifs, etc.) that
+		 * all depend on sym, then the following menu structure is
+		 * created:
+		 *
+		 *	sym
+		 *	 +-A
+		 *	 +-B
+		 *	 +-C
+		 *	 ...
+		 *
+		 * This also works recursively, giving the following structure
+		 * if A is a symbol and B depends on A:
+		 *
+		 *	sym
+		 *	 +-A
+		 *	 | +-B
+		 *	 +-C
+		 *	 ...
+		 */
+
 		basedep = parent->prompt ? parent->prompt->visible.expr : NULL;
 		basedep = expr_trans_compare(basedep, E_UNEQUAL, &symbol_no);
 		basedep = expr_eliminate_dups(expr_transform(basedep));
+
+		/* Examine consecutive elements after sym */
 		last_menu = NULL;
 		for (menu = parent->next; menu; menu = menu->next) {
 			dep = menu->prompt ? menu->prompt->visible.expr : menu->dep;
 			if (!expr_contains_symbol(dep, sym))
+				/* No dependency, quit */
 				break;
 			if (expr_depends_symbol(dep, sym))
+				/* Absolute dependency, put in submenu */
 				goto next;
+
+			/*
+			 * Also consider it a dependency on sym if our
+			 * dependencies contain sym and are a "superset" of
+			 * sym's dependencies, e.g. '(sym || Q) && R' when sym
+			 * depends on R.
+			 *
+			 * Note that 'R' might be from an enclosing menu or if,
+			 * making this a more common case than it might seem.
+			 */
 			dep = expr_trans_compare(dep, E_UNEQUAL, &symbol_no);
 			dep = expr_eliminate_dups(expr_transform(dep));
 			dep2 = expr_copy(basedep);
 			expr_eliminate_eq(&dep, &dep2);
 			expr_free(dep);
 			if (!expr_is_yes(dep2)) {
+				/* Not superset, quit */
 				expr_free(dep2);
 				break;
 			}
+			/* Superset, put in submenu */
 			expr_free(dep2);
 		next:
 			menu_finalize(menu);
 			menu->parent = parent;
 			last_menu = menu;
 		}
+		expr_free(basedep);
 		if (last_menu) {
 			parent->list = parent->next;
 			parent->next = last_menu->next;
@@ -412,6 +542,35 @@ void menu_finalize(struct menu *parent)
 			*ep = expr_alloc_one(E_LIST, NULL);
 			(*ep)->right.sym = menu->sym;
 		}
+
+		/*
+		 * This code serves two purposes:
+		 *
+		 * (1) Flattening 'if' blocks, which do not specify a submenu
+		 *     and only add dependencies.
+		 *
+		 *     (Automatic submenu creation might still create a submenu
+		 *     from an 'if' before this code runs.)
+		 *
+		 * (2) "Undoing" any automatic submenus created earlier below
+		 *     promptless symbols.
+		 *
+		 * Before:
+		 *
+		 *	A
+		 *	if ... (or promptless symbol)
+		 *	 +-B
+		 *	 +-C
+		 *	D
+		 *
+		 * After:
+		 *
+		 *	A
+		 *	if ... (or promptless symbol)
+		 *	B
+		 *	C
+		 *	D
+		 */
 		if (menu->list && (!menu->prompt || !menu->prompt->text)) {
 			for (last_menu = menu->list; ; last_menu = last_menu->next) {
 				last_menu->parent = parent;
@@ -436,6 +595,15 @@ void menu_finalize(struct menu *parent)
 		sym->flags |= SYMBOL_WARNED;
 	}
 
+	/*
+	 * For non-optional choices, add a reverse dependency (corresponding to
+	 * a select) of '<visibility> && m'. This prevents the user from
+	 * setting the choice mode to 'n' when the choice is visible.
+	 *
+	 * This would also work for non-choice symbols, but only non-optional
+	 * choices clear SYMBOL_OPTIONAL as of writing. Choices are implemented
+	 * as a type of symbol.
+	 */
 	if (sym && !sym_is_optional(sym) && parent->prompt) {
 		sym->rev_dep.expr = expr_alloc_or(sym->rev_dep.expr,
 				expr_alloc_and(parent->prompt->visible.expr,
@@ -543,6 +711,21 @@ const char *menu_get_help(struct menu *menu)
 		return "";
 }
 
+static void get_def_str(struct gstr *r, struct menu *menu)
+{
+	str_printf(r, "Defined at %s:%d\n",
+		   menu->file->name, menu->lineno);
+}
+
+static void get_dep_str(struct gstr *r, struct expr *expr, const char *prefix)
+{
+	if (!expr_is_yes(expr)) {
+		str_append(r, prefix);
+		expr_gstr_print(expr, r);
+		str_append(r, "\n");
+	}
+}
+
 static void get_prompt_str(struct gstr *r, struct property *prop,
 			   struct list_head *head)
 {
@@ -550,7 +733,20 @@ static void get_prompt_str(struct gstr *r, struct property *prop,
 	struct menu *submenu[8], *menu, *location = NULL;
 	struct jump_key *jump = NULL;
 
-	str_printf(r, _("Prompt: %s\n"), _(prop->text));
+	str_printf(r, "  Prompt: %s\n", prop->text);
+
+	get_dep_str(r, prop->menu->dep, "  Depends on: ");
+	/*
+	 * Most prompts in Linux have visibility that exactly matches their
+	 * dependencies. For these, we print only the dependencies to improve
+	 * readability. However, prompts with inline "if" expressions and
+	 * prompts with a parent that has a "visible if" expression have
+	 * differing dependencies and visibility. In these rare cases, we
+	 * print both.
+	 */
+	if (!expr_eq(prop->menu->dep, prop->visible.expr))
+		get_dep_str(r, prop->visible.expr, "  Visible if: ");
+
 	menu = prop->menu->parent;
 	for (i = 0; menu != &rootmenu && i < 8; menu = menu->parent) {
 		bool accessible = menu_is_visible(menu);
@@ -583,16 +779,16 @@ static void get_prompt_str(struct gstr *r, struct property *prop,
 	}
 
 	if (i > 0) {
-		str_printf(r, _("  Location:\n"));
+		str_printf(r, "  Location:\n");
 		for (j = 4; --i >= 0; j += 2) {
 			menu = submenu[i];
 			if (jump && menu == location)
 				jump->offset = strlen(r->s);
 			str_printf(r, "%*c-> %s", j, ' ',
-				   _(menu_get_prompt(menu)));
+				   menu_get_prompt(menu));
 			if (menu->sym) {
 				str_printf(r, " (%s [=%s])", menu->sym->name ?
-					menu->sym->name : _("<choice>"),
+					menu->sym->name : "<choice>",
 					sym_get_string_value(menu->sym));
 			}
 			str_append(r, "\n");
@@ -600,16 +796,22 @@ static void get_prompt_str(struct gstr *r, struct property *prop,
 	}
 }
 
-/*
- * get property of type P_SYMBOL
- */
-static struct property *get_symbol_prop(struct symbol *sym)
+static void get_symbol_props_str(struct gstr *r, struct symbol *sym,
+				 enum prop_type tok, const char *prefix)
 {
-	struct property *prop = NULL;
+	bool hit = false;
+	struct property *prop;
 
-	for_all_properties(sym, prop, P_SYMBOL)
-		break;
-	return prop;
+	for_all_properties(sym, prop, tok) {
+		if (!hit) {
+			str_append(r, prefix);
+			hit = true;
+		} else
+			str_printf(r, " && ");
+		expr_gstr_print(prop->expr, r);
+	}
+	if (hit)
+		str_append(r, "\n");
 }
 
 /*
@@ -618,7 +820,6 @@ static struct property *get_symbol_prop(struct symbol *sym)
 static void get_symbol_str(struct gstr *r, struct symbol *sym,
 		    struct list_head *head)
 {
-	bool hit;
 	struct property *prop;
 
 	if (sym && sym->name) {
@@ -634,36 +835,36 @@ static void get_symbol_str(struct gstr *r, struct symbol *sym,
 			}
 		}
 	}
-	for_all_prompts(sym, prop)
-		get_prompt_str(r, prop, head);
-
-	prop = get_symbol_prop(sym);
-	if (prop) {
-		str_printf(r, _("  Defined at %s:%d\n"), prop->menu->file->name,
-			prop->menu->lineno);
-		if (!expr_is_yes(prop->visible.expr)) {
-			str_append(r, _("  Depends on: "));
-			expr_gstr_print(prop->visible.expr, r);
-			str_append(r, "\n");
+
+	/* Print the definitions with prompts before the ones without */
+	for_all_properties(sym, prop, P_SYMBOL) {
+		if (prop->menu->prompt) {
+			get_def_str(r, prop->menu);
+			get_prompt_str(r, prop->menu->prompt, head);
 		}
 	}
 
-	hit = false;
-	for_all_properties(sym, prop, P_SELECT) {
-		if (!hit) {
-			str_append(r, "  Selects: ");
-			hit = true;
-		} else
-			str_printf(r, " && ");
-		expr_gstr_print(prop->expr, r);
+	for_all_properties(sym, prop, P_SYMBOL) {
+		if (!prop->menu->prompt) {
+			get_def_str(r, prop->menu);
+			get_dep_str(r, prop->menu->dep, "  Depends on: ");
+		}
 	}
-	if (hit)
-		str_append(r, "\n");
+
+	get_symbol_props_str(r, sym, P_SELECT, "Selects: ");
 	if (sym->rev_dep.expr) {
-		str_append(r, _("  Selected by: "));
-		expr_gstr_print(sym->rev_dep.expr, r);
-		str_append(r, "\n");
+		expr_gstr_print_revdep(sym->rev_dep.expr, r, yes, "Selected by [y]:\n");
+		expr_gstr_print_revdep(sym->rev_dep.expr, r, mod, "Selected by [m]:\n");
+		expr_gstr_print_revdep(sym->rev_dep.expr, r, no, "Selected by [n]:\n");
 	}
+
+	get_symbol_props_str(r, sym, P_IMPLY, "Implies: ");
+	if (sym->implied.expr) {
+		expr_gstr_print_revdep(sym->implied.expr, r, yes, "Implied by [y]:\n");
+		expr_gstr_print_revdep(sym->implied.expr, r, mod, "Implied by [m]:\n");
+		expr_gstr_print_revdep(sym->implied.expr, r, no, "Implied by [n]:\n");
+	}
+
 	str_append(r, "\n\n");
 }
 
@@ -676,7 +877,7 @@ struct gstr get_relations_str(struct symbol **sym_arr, struct list_head *head)
 	for (i = 0; sym_arr && (sym = sym_arr[i]); i++)
 		get_symbol_str(&res, sym, head);
 	if (!i)
-		str_append(&res, _("No matches found.\n"));
+		str_append(&res, "No matches found.\n");
 	return res;
 }
 
@@ -691,7 +892,7 @@ void menu_get_ext_help(struct menu *menu, struct gstr *help)
 			str_printf(help, "%s%s:\n\n", CONFIG_, sym->name);
 		help_text = menu_get_help(menu);
 	}
-	str_printf(help, "%s\n", _(help_text));
+	str_printf(help, "%s\n", help_text);
 	if (sym)
 		get_symbol_str(help, sym, NULL);
 }
diff --git a/scripts/config/zconf.tab.c_shipped b/scripts/config/parser.tab.c
similarity index 73%
rename from scripts/config/zconf.tab.c_shipped
rename to scripts/config/parser.tab.c
index 52c9d40a05..1b291145a1 100644
--- a/scripts/config/zconf.tab.c_shipped
+++ b/scripts/config/parser.tab.c
@@ -1,8 +1,8 @@
-/* A Bison parser, made by GNU Bison 3.0.4.  */
+/* A Bison parser, made by GNU Bison 3.1.  */
 
 /* Bison implementation for Yacc-like parsers in C
 
-   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.
+   Copyright (C) 1984, 1989-1990, 2000-2015, 2018 Free Software Foundation, Inc.
 
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
@@ -44,7 +44,7 @@
 #define YYBISON 1
 
 /* Bison version.  */
-#define YYBISON_VERSION "3.0.4"
+#define YYBISON_VERSION "3.1"
 
 /* Skeleton name.  */
 #define YYSKELETON_NAME "yacc.c"
@@ -59,23 +59,11 @@
 #define YYPULL 1
 
 
-/* Substitute the variable and function names.  */
-#define yyparse         zconfparse
-#define yylex           zconflex
-#define yyerror         zconferror
-#define yydebug         zconfdebug
-#define yynerrs         zconfnerrs
 
-#define yylval          zconflval
-#define yychar          zconfchar
 
 /* Copy the first part of user declarations.  */
 
 
-/*
- * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
- */
 
 #include <ctype.h>
 #include <stdarg.h>
@@ -93,11 +81,11 @@
 
 int cdebug = PRINTD;
 
-extern int zconflex(void);
+static void yyerror(const char *err);
 static void zconfprint(const char *err, ...);
 static void zconf_error(const char *err, ...);
-static void zconferror(const char *err);
-static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken);
+static bool zconf_endtoken(const char *tokenname,
+			   const char *expected_tokenname);
 
 struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
@@ -122,13 +110,16 @@ static struct menu *current_menu, *current_entry;
 # define YYERROR_VERBOSE 0
 #endif
 
-
+/* In a future release of Bison, this section will be replaced
+   by #include "parser.tab.h".  */
+#ifndef YY_YY_PARSER_TAB_H_INCLUDED
+# define YY_YY_PARSER_TAB_H_INCLUDED
 /* Debug traces.  */
 #ifndef YYDEBUG
 # define YYDEBUG 0
 #endif
 #if YYDEBUG
-extern int zconfdebug;
+extern int yydebug;
 #endif
 
 /* Token type.  */
@@ -136,44 +127,57 @@ extern int zconfdebug;
 # define YYTOKENTYPE
   enum yytokentype
   {
-    T_MAINMENU = 258,
-    T_MENU = 259,
-    T_ENDMENU = 260,
-    T_SOURCE = 261,
-    T_CHOICE = 262,
-    T_ENDCHOICE = 263,
-    T_COMMENT = 264,
-    T_CONFIG = 265,
-    T_MENUCONFIG = 266,
-    T_HELP = 267,
-    T_HELPTEXT = 268,
-    T_IF = 269,
-    T_ENDIF = 270,
-    T_DEPENDS = 271,
-    T_OPTIONAL = 272,
-    T_PROMPT = 273,
-    T_TYPE = 274,
-    T_DEFAULT = 275,
-    T_SELECT = 276,
-    T_RANGE = 277,
-    T_VISIBLE = 278,
-    T_OPTION = 279,
-    T_ON = 280,
-    T_RESET = 281,
-    T_WORD = 282,
-    T_WORD_QUOTE = 283,
-    T_UNEQUAL = 284,
-    T_LESS = 285,
-    T_LESS_EQUAL = 286,
-    T_GREATER = 287,
-    T_GREATER_EQUAL = 288,
-    T_CLOSE_PAREN = 289,
-    T_OPEN_PAREN = 290,
-    T_EOL = 291,
-    T_OR = 292,
-    T_AND = 293,
-    T_EQUAL = 294,
-    T_NOT = 295
+    T_HELPTEXT = 258,
+    T_WORD = 259,
+    T_WORD_QUOTE = 260,
+    T_ALLNOCONFIG_Y = 261,
+    T_BOOL = 262,
+    T_CHOICE = 263,
+    T_CLOSE_PAREN = 264,
+    T_COLON_EQUAL = 265,
+    T_COMMENT = 266,
+    T_CONFIG = 267,
+    T_DEFAULT = 268,
+    T_DEFCONFIG_LIST = 269,
+    T_DEF_BOOL = 270,
+    T_DEF_TRISTATE = 271,
+    T_DEPENDS = 272,
+    T_ENDCHOICE = 273,
+    T_ENDIF = 274,
+    T_ENDMENU = 275,
+    T_HELP = 276,
+    T_HEX = 277,
+    T_IF = 278,
+    T_IMPLY = 279,
+    T_INT = 280,
+    T_MAINMENU = 281,
+    T_MENU = 282,
+    T_MENUCONFIG = 283,
+    T_MODULES = 284,
+    T_ON = 285,
+    T_OPEN_PAREN = 286,
+    T_OPTION = 287,
+    T_OPTIONAL = 288,
+    T_PLUS_EQUAL = 289,
+    T_PROMPT = 290,
+    T_RANGE = 291,
+    T_RESET = 292,
+    T_SELECT = 293,
+    T_SOURCE = 294,
+    T_STRING = 295,
+    T_TRISTATE = 296,
+    T_VISIBLE = 297,
+    T_EOL = 298,
+    T_ASSIGN_VAL = 299,
+    T_OR = 300,
+    T_AND = 301,
+    T_EQUAL = 302,
+    T_UNEQUAL = 303,
+    T_LESS = 304,
+    T_LESS_EQUAL = 305,
+    T_GREATER = 306,
+    T_GREATER_EQUAL = 307,
+    T_NOT = 308
   };
 #endif
 
@@ -185,11 +189,11 @@ union YYSTYPE
 
 
 	char *string;
-	struct file *file;
 	struct symbol *symbol;
 	struct expr *expr;
 	struct menu *menu;
-	const struct kconf_id *id;
+	enum symbol_type type;
+	enum variable_flavor flavor;
 
 
 };
@@ -200,19 +204,15 @@ typedef union YYSTYPE YYSTYPE;
 #endif
 
 
-extern YYSTYPE zconflval;
-
-int zconfparse (void);
+extern YYSTYPE yylval;
 
+int yyparse (void);
 
+#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
 
 /* Copy the second part of user declarations.  */
 
 
-/* Include zconf.hash.c here so it can see the token constants. */
-#include "zconf.hash.c"
-
-
 
 #ifdef short
 # undef short
@@ -233,13 +233,13 @@ typedef signed char yytype_int8;
 #ifdef YYTYPE_UINT16
 typedef YYTYPE_UINT16 yytype_uint16;
 #else
-typedef unsigned short int yytype_uint16;
+typedef unsigned short yytype_uint16;
 #endif
 
 #ifdef YYTYPE_INT16
 typedef YYTYPE_INT16 yytype_int16;
 #else
-typedef short int yytype_int16;
+typedef short yytype_int16;
 #endif
 
 #ifndef YYSIZE_T
@@ -251,7 +251,7 @@ typedef short int yytype_int16;
 #  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
 #  define YYSIZE_T size_t
 # else
-#  define YYSIZE_T unsigned int
+#  define YYSIZE_T unsigned
 # endif
 #endif
 
@@ -303,7 +303,7 @@ typedef short int yytype_int16;
 # define YYUSE(E) /* empty */
 #endif
 
-#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
+#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
 /* Suppress an incorrect diagnostic about yylval being uninitialized.  */
 # define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
     _Pragma ("GCC diagnostic push") \
@@ -452,26 +452,26 @@ union yyalloc
 #endif /* !YYCOPY_NEEDED */
 
 /* YYFINAL -- State number of the termination state.  */
-#define YYFINAL  11
+#define YYFINAL  6
 /* YYLAST -- Last index in YYTABLE.  */
-#define YYLAST   313
+#define YYLAST   194
 
 /* YYNTOKENS -- Number of terminals.  */
-#define YYNTOKENS  41
+#define YYNTOKENS  54
 /* YYNNTS -- Number of nonterminals.  */
-#define YYNNTS  50
+#define YYNNTS  47
 /* YYNRULES -- Number of rules.  */
-#define YYNRULES  125
+#define YYNRULES  105
 /* YYNSTATES -- Number of states.  */
-#define YYNSTATES  205
+#define YYNSTATES  187
 
 /* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
    by yylex, with out-of-bounds checking.  */
 #define YYUNDEFTOK  2
-#define YYMAXUTOK   295
+#define YYMAXUTOK   308
 
 #define YYTRANSLATE(YYX)                                                \
-  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)
+  ((unsigned) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)
 
 /* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
    as returned by yylex, without out-of-bounds checking.  */
@@ -506,26 +506,25 @@ static const yytype_uint8 yytranslate[] =
        5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
       15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
       25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
-      35,    36,    37,    38,    39,    40
+      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
+      45,    46,    47,    48,    49,    50,    51,    52,    53
 };
 
 #if YYDEBUG
   /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
 static const yytype_uint16 yyrline[] =
 {
-       0,   109,   109,   109,   111,   111,   113,   115,   116,   117,
-     118,   119,   120,   124,   128,   128,   128,   128,   128,   128,
-     128,   128,   128,   132,   133,   134,   135,   136,   137,   141,
-     142,   148,   156,   162,   170,   180,   182,   183,   184,   185,
-     186,   187,   190,   198,   204,   214,   220,   226,   229,   231,
-     242,   243,   248,   257,   262,   270,   273,   275,   276,   277,
-     278,   279,   282,   288,   299,   305,   310,   320,   322,   327,
-     335,   343,   346,   348,   349,   350,   355,   362,   369,   374,
-     382,   385,   387,   388,   389,   392,   400,   407,   414,   420,
-     427,   429,   430,   431,   434,   438,   446,   448,   449,   452,
-     459,   461,   466,   467,   470,   471,   472,   476,   477,   480,
-     481,   484,   485,   486,   487,   488,   489,   490,   491,   492,
-     493,   494,   497,   498,   501,   502
+       0,   112,   112,   112,   116,   121,   123,   124,   125,   126,
+     127,   131,   132,   133,   134,   135,   136,   141,   148,   153,
+     160,   169,   171,   172,   173,   176,   184,   190,   200,   206,
+     212,   218,   223,   228,   235,   245,   250,   258,   261,   263,
+     264,   265,   268,   274,   281,   287,   292,   300,   301,   302,
+     303,   306,   307,   310,   311,   312,   314,   316,   321,   329,
+     337,   342,   349,   354,   362,   365,   367,   368,   371,   380,
+     387,   390,   392,   397,   403,   415,   422,   429,   431,   436,
+     437,   438,   441,   442,   445,   446,   447,   448,   449,   450,
+     451,   452,   453,   454,   455,   459,   461,   462,   465,   466,
+     470,   473,   474,   475,   479,   480
 };
 #endif
 
@@ -534,24 +533,27 @@ static const yytype_uint16 yyrline[] =
    First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
 static const char *const yytname[] =
 {
-  "$end", "error", "$undefined", "T_MAINMENU", "T_MENU", "T_ENDMENU",
-  "T_SOURCE", "T_CHOICE", "T_ENDCHOICE", "T_COMMENT", "T_CONFIG",
-  "T_MENUCONFIG", "T_HELP", "T_HELPTEXT", "T_IF", "T_ENDIF", "T_DEPENDS",
-  "T_OPTIONAL", "T_PROMPT", "T_TYPE", "T_DEFAULT", "T_SELECT", "T_RANGE",
-  "T_VISIBLE", "T_OPTION", "T_ON", "T_RESET", "T_WORD", "T_WORD_QUOTE",
-  "T_UNEQUAL", "T_LESS", "T_LESS_EQUAL", "T_GREATER", "T_GREATER_EQUAL",
-  "T_CLOSE_PAREN", "T_OPEN_PAREN", "T_EOL", "T_OR", "T_AND", "T_EQUAL",
-  "T_NOT", "$accept", "input", "start", "stmt_list", "option_name",
-  "common_stmt", "option_error", "config_entry_start", "config_stmt",
+  "$end", "error", "$undefined", "T_HELPTEXT", "T_WORD", "T_WORD_QUOTE",
+  "T_ALLNOCONFIG_Y", "T_BOOL", "T_CHOICE", "T_CLOSE_PAREN",
+  "T_COLON_EQUAL", "T_COMMENT", "T_CONFIG", "T_DEFAULT",
+  "T_DEFCONFIG_LIST", "T_DEF_BOOL", "T_DEF_TRISTATE", "T_DEPENDS",
+  "T_ENDCHOICE", "T_ENDIF", "T_ENDMENU", "T_HELP", "T_HEX", "T_IF",
+  "T_IMPLY", "T_INT", "T_MAINMENU", "T_MENU", "T_MENUCONFIG", "T_MODULES",
+  "T_ON", "T_OPEN_PAREN", "T_OPTION", "T_OPTIONAL", "T_PLUS_EQUAL",
+  "T_PROMPT", "T_RANGE", "T_RESET", "T_SELECT", "T_SOURCE", "T_STRING",
+  "T_TRISTATE", "T_VISIBLE", "T_EOL", "T_ASSIGN_VAL", "T_OR", "T_AND",
+  "T_EQUAL", "T_UNEQUAL", "T_LESS", "T_LESS_EQUAL", "T_GREATER",
+  "T_GREATER_EQUAL", "T_NOT", "$accept", "input", "mainmenu_stmt",
+  "stmt_list", "common_stmt", "config_entry_start", "config_stmt",
   "menuconfig_entry_start", "menuconfig_stmt", "config_option_list",
-  "config_option", "symbol_option", "symbol_option_list",
-  "symbol_option_arg", "choice", "choice_entry", "choice_end",
-  "choice_stmt", "choice_option_list", "choice_option", "choice_block",
-  "if_entry", "if_end", "if_stmt", "if_block", "mainmenu_stmt", "menu",
-  "menu_entry", "menu_end", "menu_stmt", "menu_block", "source_stmt",
-  "comment", "comment_stmt", "help_start", "help", "depends_list",
-  "depends", "visibility_list", "visible", "prompt_stmt_opt", "prompt",
-  "end", "nl", "if_expr", "expr", "symbol", "word_opt", YY_NULLPTR
+  "config_option", "choice", "choice_entry", "choice_end", "choice_stmt",
+  "choice_option_list", "choice_option", "type", "logic_type", "default",
+  "choice_block", "if_entry", "if_end", "if_stmt", "menu", "menu_entry",
+  "menu_end", "menu_stmt", "menu_option_list", "source_stmt", "comment",
+  "comment_stmt", "comment_option_list", "help_start", "help", "depends",
+  "visible", "prompt_stmt_opt", "end", "if_expr", "expr",
+  "nonconst_symbol", "symbol", "word_opt", "assignment_stmt", "assign_op",
+  "assign_val", YY_NULLPTR
 };
 #endif
 
@@ -564,16 +566,17 @@ static const yytype_uint16 yytoknum[] =
      265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
      275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
      285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
-     295
+     295,   296,   297,   298,   299,   300,   301,   302,   303,   304,
+     305,   306,   307,   308
 };
 # endif
 
-#define YYPACT_NINF -119
+#define YYPACT_NINF -107
 
 #define yypact_value_is_default(Yystate) \
-  (!!((Yystate) == (-119)))
+  (!!((Yystate) == (-107)))
 
-#define YYTABLE_NINF -88
+#define YYTABLE_NINF -4
 
 #define yytable_value_is_error(Yytable_value) \
   0
@@ -582,27 +585,25 @@ static const yytype_uint16 yytoknum[] =
      STATE-NUM.  */
 static const yytype_int16 yypact[] =
 {
-       6,    44,  -119,    13,  -119,   173,  -119,    19,  -119,  -119,
-      -9,  -119,     5,    44,    21,    44,     9,    29,    44,    41,
-      48,    62,    56,  -119,  -119,  -119,  -119,  -119,  -119,  -119,
-    -119,  -119,    79,  -119,    95,  -119,  -119,  -119,  -119,  -119,
-    -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,
-    -119,  -119,   206,  -119,  -119,    64,  -119,    67,  -119,    69,
-    -119,   105,  -119,   116,   128,   140,  -119,  -119,    62,    62,
-      98,   266,  -119,   149,   150,   106,   139,   253,    73,    24,
-      22,    24,   230,  -119,  -119,  -119,  -119,  -119,  -119,    57,
-    -119,    62,    62,    64,    58,    58,    58,    58,    58,    58,
-    -119,  -119,   161,   165,    34,    44,    44,    62,   104,    58,
-    -119,   201,  -119,  -119,  -119,  -119,   190,  -119,  -119,   168,
-      44,    44,   178,   194,  -119,  -119,  -119,  -119,  -119,  -119,
-    -119,  -119,  -119,  -119,  -119,  -119,  -119,   194,  -119,   277,
-    -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,
-     180,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,
-      62,   131,   194,   183,   194,    12,   194,    58,    16,   207,
-    -119,  -119,   194,   219,   194,    62,   224,  -119,   134,  -119,
-     238,  -119,  -119,   239,   240,   194,   251,  -119,  -119,   241,
-    -119,   258,   100,  -119,  -119,  -119,  -119,  -119,   264,    44,
-    -119,  -119,  -119,  -119,  -119
+      -6,    24,    33,  -107,    65,    -7,  -107,    71,    -4,    12,
+      49,    53,    63,    -1,    69,    63,    76,  -107,  -107,  -107,
+    -107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,
+    -107,  -107,  -107,  -107,  -107,  -107,    25,  -107,  -107,  -107,
+      26,  -107,    46,    47,  -107,    54,  -107,    -1,    -1,   -22,
+    -107,   142,    58,    60,    68,   134,   134,   147,   114,   101,
+       2,   101,    67,  -107,  -107,    72,  -107,  -107,  -107,     5,
+    -107,  -107,    -1,    -1,    44,    44,    44,    44,    44,    44,
+    -107,  -107,  -107,  -107,  -107,  -107,  -107,    66,    73,  -107,
+      63,  -107,    94,   109,    44,    63,  -107,  -107,  -107,   112,
+    -107,    -1,   103,  -107,  -107,    63,    79,   122,   107,  -107,
+     112,  -107,  -107,     8,    88,    92,    93,  -107,  -107,  -107,
+    -107,  -107,   107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,
+      97,  -107,  -107,  -107,  -107,  -107,  -107,  -107,    -1,  -107,
+     107,    95,    96,   102,   107,    44,   107,   107,   105,    41,
+    -107,   107,  -107,   107,    -1,   118,   119,  -107,  -107,  -107,
+     120,    17,   124,  -107,  -107,  -107,   128,   107,   130,  -107,
+    -107,   133,   135,   136,    11,  -107,  -107,  -107,  -107,  -107,
+    -107,   138,  -107,  -107,  -107,  -107,  -107
 };
 
   /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
@@ -610,47 +611,45 @@ static const yytype_int16 yypact[] =
      means the default is an error.  */
 static const yytype_uint8 yydefact[] =
 {
-       6,     0,   107,     0,     3,     0,     6,     6,   102,   103,
-       0,     1,     0,     0,     0,     0,   124,     0,     0,     0,
-       0,     0,     0,    14,    18,    15,    16,    20,    17,    19,
-      21,    22,     0,    23,     0,     7,    35,    26,    35,    27,
-      56,    67,     8,    72,    24,    96,    81,     9,    28,    90,
-      25,    10,     0,   108,     2,    76,    13,     0,   104,     0,
-     125,     0,   105,     0,     0,     0,   122,   123,     0,     0,
-       0,   111,   106,     0,     0,     0,     0,     0,     0,     0,
-      90,     0,     0,    77,    85,    52,    86,    31,    33,     0,
-     119,     0,     0,    69,     0,     0,     0,     0,     0,     0,
-      11,    12,     0,     0,     0,     0,   100,     0,     0,     0,
-      48,     0,    41,    40,    36,    37,     0,    39,    38,     0,
-       0,   100,     0,   109,    60,    61,    57,    59,    58,    68,
-      55,    54,    73,    75,    71,    74,    70,   109,    98,     0,
-      97,    82,    84,    80,    83,    79,    92,    93,    91,   118,
-     120,   121,   117,   112,   113,   114,   115,   116,    30,    88,
-       0,     0,   109,     0,   109,   109,   109,     0,     0,     0,
-      89,    64,   109,     0,   109,     0,     0,    99,     0,    95,
-       0,    42,   101,     0,     0,   109,    50,    47,    29,     0,
-      63,     0,   110,    65,    94,    43,    44,    45,     0,     0,
-      49,    62,    66,    46,    51
+       5,     0,     0,     5,     0,     0,     1,     0,     0,     0,
+      98,     0,     0,     0,     0,     0,     0,     6,    21,    13,
+      21,    14,    38,    56,     7,     5,    11,    65,     5,     8,
+      15,    71,    12,    16,     4,    10,     0,   102,   103,   101,
+     104,    99,     0,     0,    95,     0,    97,     0,     0,     0,
+      96,    84,     0,     0,     0,    18,    20,    35,     0,     0,
+      62,     0,    70,     9,   105,     0,    34,    69,    17,     0,
+      92,    58,     0,     0,     0,     0,     0,     0,     0,     0,
+      61,    19,    68,    51,    53,    54,    55,     0,     0,    49,
+       0,    48,     0,     0,     0,     0,    50,    52,    22,    77,
+      47,     0,     0,    24,    23,     0,     0,     0,    82,    39,
+      77,    41,    40,     0,     0,     0,     0,    57,    37,    36,
+      60,    59,    82,    67,    66,    64,    63,    72,   100,    91,
+      93,    94,    89,    90,    85,    86,    87,    88,     0,    73,
+      82,     0,     0,     0,    82,     0,    82,    82,     0,    82,
+      74,    82,    44,    82,     0,     0,     0,    80,    81,    79,
+       0,     0,     0,    33,    32,    31,     0,    82,     0,    78,
+      25,     0,     0,     0,    83,    45,    43,    76,    75,    29,
+      26,     0,    28,    27,    46,    42,    30
 };
 
   /* YYPGOTO[NTERM-NUM].  */
-static const yytype_int16 yypgoto[] =
+static const yytype_int8 yypgoto[] =
 {
-    -119,  -119,   294,   296,  -119,   -15,   -66,  -119,  -119,  -119,
-    -119,   265,  -119,  -119,  -119,  -119,  -119,  -119,  -119,   -58,
-    -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,  -119,
-    -119,   -28,  -119,  -119,  -119,  -119,  -119,   229,   227,   -62,
-    -119,  -119,   187,    -1,    20,     0,  -118,   -67,   -91,  -119
+    -107,  -107,  -107,     3,    86,  -107,  -107,  -107,  -107,   126,
+    -107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,   100,  -107,
+    -107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,  -107,
+    -107,  -107,  -107,  -107,   108,   -25,  -107,    42,   -44,  -106,
+     -47,   -10,   -67,  -107,  -107,  -107,  -107
 };
 
   /* YYDEFGOTO[NTERM-NUM].  */
 static const yytype_int16 yydefgoto[] =
 {
-      -1,     3,     4,     5,    34,    35,   113,    36,    37,    38,
-      39,    75,   114,   115,   168,   200,    40,    41,   130,    42,
-      77,   126,    78,    43,   134,    44,    79,     6,    45,    46,
-     143,    47,    81,    48,    49,    50,   116,   117,    82,   118,
-      80,   140,   163,   164,    51,     7,   176,    70,    71,    61
+      -1,     2,     3,     4,    17,    18,    19,    20,    21,    55,
+      98,    22,    23,   118,    24,    57,   109,    99,   100,   101,
+      58,    25,   120,    26,    27,    28,   125,    29,    60,    30,
+      31,    32,    62,   102,   103,   104,   124,   148,   119,   155,
+      49,    50,    51,    42,    33,    40,    65
 };
 
   /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
@@ -658,137 +657,107 @@ static const yytype_int16 yydefgoto[] =
      number is the opposite.  If YYTABLE_NINF, syntax error.  */
 static const yytype_int16 yytable[] =
 {
-      10,    89,    90,   152,   153,   154,   155,   156,   157,     1,
-      55,   125,    57,    11,    59,   128,   147,    63,   167,   177,
-     148,   133,     1,   142,   150,   151,   175,     2,    13,    14,
-      15,    16,    17,    18,    19,    20,    60,   161,    21,    22,
-     165,    56,     2,   186,   180,   137,   182,   183,   184,    91,
-      92,   135,   187,   144,   189,    53,   191,    58,   138,   160,
-      33,    66,    67,   129,   132,    62,   141,   198,    64,    68,
-      93,     8,     9,   147,    69,    65,   185,   148,    14,    15,
-      73,    17,    18,    19,    20,    66,    67,    21,    22,    66,
-      67,   149,    72,   178,    91,    92,    74,    68,   131,   136,
-      53,   145,    69,    83,   162,    84,   -32,   102,   192,    33,
-     -32,   -32,   -32,   -32,   -32,   -32,   -32,   -32,   103,   172,
-     -32,   -32,   104,   -32,   105,   106,   107,   108,   109,   -32,
-     110,   166,   -32,   111,     2,    91,    92,    91,    92,   -34,
-     102,    85,   112,   -34,   -34,   -34,   -34,   -34,   -34,   -34,
-     -34,   103,    86,   -34,   -34,   104,   -34,   105,   106,   107,
-     108,   109,   -34,   110,    87,   -34,   111,   179,    91,    92,
-     194,    91,    92,    -5,    12,   112,    88,    13,    14,    15,
-      16,    17,    18,    19,    20,   100,   101,    21,    22,    23,
-      24,    25,    26,    27,    28,    29,    30,   158,   204,    31,
-      32,   159,   169,   170,   171,   174,    -4,    12,   175,    33,
-      13,    14,    15,    16,    17,    18,    19,    20,    92,   181,
-      21,    22,    23,    24,    25,    26,    27,    28,    29,    30,
-     -87,   102,    31,    32,   -87,   -87,   -87,   -87,   -87,   -87,
-     -87,   -87,    33,   188,   -87,   -87,   104,   -87,   -87,   -87,
-     -87,   -87,   -87,   -87,   102,   190,   -87,   111,   -53,   -53,
-     193,   -53,   -53,   -53,   -53,   103,   146,   -53,   -53,   104,
-     119,   120,   121,   122,   195,   196,   197,   201,   102,   123,
-     111,   -78,   -78,   -78,   -78,   -78,   -78,   -78,   -78,   124,
-     199,   -78,   -78,   104,   202,    94,    95,    96,    97,    98,
-     203,    54,    52,    76,   111,    99,   127,   139,   173,     0,
-       0,     0,     0,   146
+      69,    70,    45,    44,    46,    53,     7,   132,   133,   134,
+     135,   136,   137,    36,   129,   121,   160,   126,    37,    87,
+       1,    71,    37,    72,    73,   130,   131,   145,    59,     5,
+      47,    61,   112,     6,   162,   123,    34,   127,   166,    35,
+     168,   169,    38,   171,   122,   172,    38,   173,    44,    46,
+      72,    73,    48,    41,   149,    39,    72,    73,    43,    39,
+     178,   181,    72,    73,   154,    -3,     8,    44,    63,     9,
+      64,    -2,     8,    10,    52,     9,    11,    12,   167,    10,
+     140,    54,    11,    12,    87,   146,    72,    73,    13,    66,
+      67,   161,    14,    15,    13,   151,   138,    68,    14,    15,
+     141,    80,     8,    81,    16,     9,   150,   174,   142,    10,
+      16,    82,    11,    12,   144,   128,   139,   147,   113,   114,
+     115,   116,   152,   143,    13,    11,    12,   153,    14,    15,
+     154,   157,   114,   115,   116,   158,   159,    13,   163,   164,
+      16,    83,    15,    73,   117,   165,    56,    84,   170,    85,
+      86,    87,   156,    16,    83,    88,    89,   110,    90,    91,
+     105,   175,   176,   177,    87,   111,    92,   179,    88,    93,
+      94,   180,    95,   182,    96,    97,   183,     0,   184,   185,
+     106,   186,   107,     0,   108,     0,     0,     0,    97,    74,
+      75,    76,    77,    78,    79
 };
 
 static const yytype_int16 yycheck[] =
 {
-       1,    68,    69,    94,    95,    96,    97,    98,    99,     3,
-      10,    77,    13,     0,    15,    77,    82,    18,   109,   137,
-      82,    79,     3,    81,    91,    92,    14,    36,     4,     5,
-       6,     7,     8,     9,    10,    11,    27,   104,    14,    15,
-     107,    36,    36,    27,   162,    23,   164,   165,   166,    37,
-      38,    79,    36,    81,   172,    36,   174,    36,    36,    25,
-      36,    27,    28,    78,    79,    36,    81,   185,    27,    35,
-      70,    27,    28,   139,    40,    27,   167,   139,     5,     6,
-       1,     8,     9,    10,    11,    27,    28,    14,    15,    27,
-      28,    34,    36,   160,    37,    38,     1,    35,    78,    79,
-      36,    81,    40,    36,   105,    36,     0,     1,   175,    36,
-       4,     5,     6,     7,     8,     9,    10,    11,    12,   120,
-      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
-      24,    27,    26,    27,    36,    37,    38,    37,    38,     0,
-       1,    36,    36,     4,     5,     6,     7,     8,     9,    10,
-      11,    12,    36,    14,    15,    16,    17,    18,    19,    20,
-      21,    22,    23,    24,    36,    26,    27,    36,    37,    38,
-      36,    37,    38,     0,     1,    36,    36,     4,     5,     6,
-       7,     8,     9,    10,    11,    36,    36,    14,    15,    16,
-      17,    18,    19,    20,    21,    22,    23,    36,   199,    26,
-      27,    36,     1,    13,    36,    27,     0,     1,    14,    36,
-       4,     5,     6,     7,     8,     9,    10,    11,    38,    36,
-      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
-       0,     1,    26,    27,     4,     5,     6,     7,     8,     9,
-      10,    11,    36,    36,    14,    15,    16,    17,    18,    19,
-      20,    21,    22,    23,     1,    36,    26,    27,     5,     6,
-      36,     8,     9,    10,    11,    12,    36,    14,    15,    16,
-      17,    18,    19,    20,    36,    36,    36,    36,     1,    26,
-      27,     4,     5,     6,     7,     8,     9,    10,    11,    36,
-      39,    14,    15,    16,    36,    29,    30,    31,    32,    33,
-      36,     7,     6,    38,    27,    39,    77,    80,   121,    -1,
-      -1,    -1,    -1,    36
+      47,    48,    12,     4,     5,    15,     3,    74,    75,    76,
+      77,    78,    79,     1,     9,    59,   122,    61,    10,    17,
+      26,    43,    10,    45,    46,    72,    73,    94,    25,     5,
+      31,    28,    57,     0,   140,    60,    43,    62,   144,    43,
+     146,   147,    34,   149,    42,   151,    34,   153,     4,     5,
+      45,    46,    53,     4,   101,    47,    45,    46,     5,    47,
+      43,   167,    45,    46,    23,     0,     1,     4,    43,     4,
+      44,     0,     1,     8,     5,     4,    11,    12,   145,     8,
+      90,     5,    11,    12,    17,    95,    45,    46,    23,    43,
+      43,   138,    27,    28,    23,   105,    30,    43,    27,    28,
+       6,    43,     1,    43,    39,     4,     3,   154,    14,     8,
+      39,    43,    11,    12,     5,    43,    43,     5,     4,    18,
+      19,    20,    43,    29,    23,    11,    12,     5,    27,    28,
+      23,    43,    18,    19,    20,    43,    43,    23,    43,    43,
+      39,     7,    28,    46,    58,    43,    20,    13,    43,    15,
+      16,    17,   110,    39,     7,    21,    22,    57,    24,    25,
+      13,    43,    43,    43,    17,    57,    32,    43,    21,    35,
+      36,    43,    38,    43,    40,    41,    43,    -1,    43,    43,
+      33,    43,    35,    -1,    37,    -1,    -1,    -1,    41,    47,
+      48,    49,    50,    51,    52
 };
 
   /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
      symbol of state STATE-NUM.  */
 static const yytype_uint8 yystos[] =
 {
-       0,     3,    36,    42,    43,    44,    68,    86,    27,    28,
-      84,     0,     1,     4,     5,     6,     7,     8,     9,    10,
-      11,    14,    15,    16,    17,    18,    19,    20,    21,    22,
-      23,    26,    27,    36,    45,    46,    48,    49,    50,    51,
-      57,    58,    60,    64,    66,    69,    70,    72,    74,    75,
-      76,    85,    44,    36,    43,    86,    36,    84,    36,    84,
-      27,    90,    36,    84,    27,    27,    27,    28,    35,    40,
-      88,    89,    36,     1,     1,    52,    52,    61,    63,    67,
-      81,    73,    79,    36,    36,    36,    36,    36,    36,    88,
-      88,    37,    38,    86,    29,    30,    31,    32,    33,    39,
-      36,    36,     1,    12,    16,    18,    19,    20,    21,    22,
-      24,    27,    36,    47,    53,    54,    77,    78,    80,    17,
-      18,    19,    20,    26,    36,    47,    62,    78,    80,    46,
-      59,    85,    46,    60,    65,    72,    85,    23,    36,    79,
-      82,    46,    60,    71,    72,    85,    36,    47,    80,    34,
-      88,    88,    89,    89,    89,    89,    89,    89,    36,    36,
-      25,    88,    84,    83,    84,    88,    27,    89,    55,     1,
-      13,    36,    84,    83,    27,    14,    87,    87,    88,    36,
-      87,    36,    87,    87,    87,    89,    27,    36,    36,    87,
-      36,    87,    88,    36,    36,    36,    36,    36,    87,    39,
-      56,    36,    36,    36,    84
+       0,    26,    55,    56,    57,     5,     0,    57,     1,     4,
+       8,    11,    12,    23,    27,    28,    39,    58,    59,    60,
+      61,    62,    65,    66,    68,    75,    77,    78,    79,    81,
+      83,    84,    85,    98,    43,    43,     1,    10,    34,    47,
+      99,     4,    97,     5,     4,    95,     5,    31,    53,    94,
+      95,    96,     5,    95,     5,    63,    63,    69,    74,    57,
+      82,    57,    86,    43,    44,   100,    43,    43,    43,    94,
+      94,    43,    45,    46,    47,    48,    49,    50,    51,    52,
+      43,    43,    43,     7,    13,    15,    16,    17,    21,    22,
+      24,    25,    32,    35,    36,    38,    40,    41,    64,    71,
+      72,    73,    87,    88,    89,    13,    33,    35,    37,    70,
+      72,    88,    89,     4,    18,    19,    20,    58,    67,    92,
+      76,    92,    42,    89,    90,    80,    92,    89,    43,     9,
+      94,    94,    96,    96,    96,    96,    96,    96,    30,    43,
+      95,     6,    14,    29,     5,    96,    95,     5,    91,    94,
+       3,    95,    43,     5,    23,    93,    91,    43,    43,    43,
+      93,    94,    93,    43,    43,    43,    93,    96,    93,    93,
+      43,    93,    93,    93,    94,    43,    43,    43,    43,    43,
+      43,    93,    43,    43,    43,    43,    43
 };
 
   /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
 static const yytype_uint8 yyr1[] =
 {
-       0,    41,    42,    42,    43,    43,    44,    44,    44,    44,
-      44,    44,    44,    44,    45,    45,    45,    45,    45,    45,
-      45,    45,    45,    46,    46,    46,    46,    46,    46,    47,
-      47,    48,    49,    50,    51,    52,    52,    52,    52,    52,
-      52,    52,    53,    53,    53,    53,    53,    54,    55,    55,
-      56,    56,    57,    58,    59,    60,    61,    61,    61,    61,
-      61,    61,    62,    62,    62,    62,    62,    63,    63,    64,
-      65,    66,    67,    67,    67,    67,    68,    69,    70,    71,
-      72,    73,    73,    73,    73,    74,    75,    76,    77,    78,
-      79,    79,    79,    79,    80,    80,    81,    81,    81,    82,
-      83,    83,    84,    84,    85,    85,    85,    86,    86,    87,
-      87,    88,    88,    88,    88,    88,    88,    88,    88,    88,
-      88,    88,    89,    89,    90,    90
+       0,    54,    55,    55,    56,    57,    57,    57,    57,    57,
+      57,    58,    58,    58,    58,    58,    58,    59,    60,    61,
+      62,    63,    63,    63,    63,    64,    64,    64,    64,    64,
+      64,    64,    64,    64,    65,    66,    67,    68,    69,    69,
+      69,    69,    70,    70,    70,    70,    70,    71,    71,    71,
+      71,    72,    72,    73,    73,    73,    74,    74,    75,    76,
+      77,    78,    79,    80,    81,    82,    82,    82,    83,    84,
+      85,    86,    86,    87,    88,    89,    90,    91,    91,    92,
+      92,    92,    93,    93,    94,    94,    94,    94,    94,    94,
+      94,    94,    94,    94,    94,    95,    96,    96,    97,    97,
+      98,    99,    99,    99,   100,   100
 };
 
   /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
 static const yytype_uint8 yyr2[] =
 {
-       0,     2,     2,     1,     2,     1,     0,     2,     2,     2,
-       2,     4,     4,     3,     1,     1,     1,     1,     1,     1,
-       1,     1,     1,     1,     1,     1,     1,     1,     1,     3,
-       2,     3,     2,     3,     2,     0,     2,     2,     2,     2,
-       2,     2,     3,     4,     4,     4,     5,     3,     0,     3,
-       0,     2,     3,     2,     1,     3,     0,     2,     2,     2,
-       2,     2,     4,     3,     2,     3,     4,     0,     2,     3,
-       1,     3,     0,     2,     2,     2,     3,     3,     3,     1,
-       3,     0,     2,     2,     2,     3,     3,     2,     2,     2,
-       0,     2,     2,     2,     4,     3,     0,     2,     2,     2,
-       0,     2,     1,     1,     2,     2,     2,     1,     2,     0,
-       2,     1,     3,     3,     3,     3,     3,     3,     3,     2,
-       3,     3,     1,     1,     0,     1
+       0,     2,     2,     1,     3,     0,     2,     2,     2,     4,
+       3,     1,     1,     1,     1,     1,     1,     3,     2,     3,
+       2,     0,     2,     2,     2,     3,     4,     4,     4,     4,
+       5,     3,     3,     3,     3,     2,     1,     3,     0,     2,
+       2,     2,     4,     3,     2,     3,     4,     1,     1,     1,
+       1,     1,     1,     1,     1,     1,     0,     2,     3,     1,
+       3,     3,     2,     1,     3,     0,     2,     2,     3,     3,
+       2,     0,     2,     2,     2,     4,     3,     0,     2,     2,
+       2,     2,     0,     2,     1,     3,     3,     3,     3,     3,
+       3,     3,     2,     3,     3,     1,     1,     1,     0,     1,
+       4,     1,     1,     1,     0,     1
 };
 
 
@@ -923,7 +892,7 @@ do {                                                            \
 static void
 yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
 {
-  unsigned long int yylno = yyrline[yyrule];
+  unsigned long yylno = yyrline[yyrule];
   int yynrhs = yyr2[yyrule];
   int yyi;
   YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
@@ -1149,6 +1118,7 @@ yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
       case N:                               \
         yyformat = S;                       \
       break
+    default: /* Avoid compiler warnings. */
       YYCASE_(0, YY_("syntax error"));
       YYCASE_(1, YY_("syntax error, unexpected %s"));
       YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
@@ -1211,7 +1181,7 @@ yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
   YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
   switch (yytype)
     {
-          case 58: /* choice_entry  */
+          case 66: /* choice_entry  */
 
       {
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
@@ -1222,7 +1192,7 @@ yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
 
         break;
 
-    case 64: /* if_entry  */
+    case 75: /* if_entry  */
 
       {
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
@@ -1233,7 +1203,7 @@ yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
 
         break;
 
-    case 70: /* menu_entry  */
+    case 79: /* menu_entry  */
 
       {
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
@@ -1392,7 +1362,7 @@ yyparse (void)
       yyvsp = yyvs + yysize - 1;
 
       YYDPRINTF ((stderr, "Stack size increased to %lu\n",
-                  (unsigned long int) yystacksize));
+                  (unsigned long) yystacksize));
 
       if (yyss + yystacksize - 1 <= yyssp)
         YYABORT;
@@ -1502,100 +1472,78 @@ yyreduce:
   YY_REDUCE_PRINT (yyn);
   switch (yyn)
     {
-        case 10:
-
-    { zconf_error("unexpected end statement"); }
-
-    break;
-
-  case 11:
-
-    { zconf_error("unknown statement \"%s\"", (yyvsp[-2].string)); }
-
-    break;
-
-  case 12:
+        case 4:
 
     {
-	zconf_error("unexpected option \"%s\"", kconf_id_strings + (yyvsp[-2].id)->name);
+	menu_add_prompt(P_MENU, (yyvsp[-1].string), NULL);
 }
 
     break;
 
-  case 13:
-
-    { zconf_error("invalid statement"); }
-
-    break;
-
-  case 29:
+  case 9:
 
-    { zconf_error("unknown option \"%s\"", (yyvsp[-2].string)); }
+    { zconf_error("unknown statement \"%s\"", (yyvsp[-2].string)); }
 
     break;
 
-  case 30:
+  case 10:
 
-    { zconf_error("invalid option"); }
+    { zconf_error("invalid statement"); }
 
     break;
 
-  case 31:
+  case 17:
 
     {
-	struct symbol *sym = sym_lookup((yyvsp[-1].string), 0);
-	sym->flags |= SYMBOL_OPTIONAL;
-	menu_add_entry(sym);
-	printd(DEBUG_PARSE, "%s:%d:config %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].string));
+	(yyvsp[-1].symbol)->flags |= SYMBOL_OPTIONAL;
+	menu_add_entry((yyvsp[-1].symbol));
+	printd(DEBUG_PARSE, "%s:%d:config %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].symbol)->name);
 }
 
     break;
 
-  case 32:
+  case 18:
 
     {
-	menu_end_entry();
 	printd(DEBUG_PARSE, "%s:%d:endconfig\n", zconf_curname(), zconf_lineno());
 }
 
     break;
 
-  case 33:
+  case 19:
 
     {
-	struct symbol *sym = sym_lookup((yyvsp[-1].string), 0);
-	sym->flags |= SYMBOL_OPTIONAL;
-	menu_add_entry(sym);
-	printd(DEBUG_PARSE, "%s:%d:menuconfig %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].string));
+	(yyvsp[-1].symbol)->flags |= SYMBOL_OPTIONAL;
+	menu_add_entry((yyvsp[-1].symbol));
+	printd(DEBUG_PARSE, "%s:%d:menuconfig %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].symbol)->name);
 }
 
     break;
 
-  case 34:
+  case 20:
 
     {
 	if (current_entry->prompt)
 		current_entry->prompt->type = P_MENU;
 	else
 		zconfprint("warning: menuconfig statement without prompt");
-	menu_end_entry();
 	printd(DEBUG_PARSE, "%s:%d:endconfig\n", zconf_curname(), zconf_lineno());
 }
 
     break;
 
-  case 42:
+  case 25:
 
     {
-	menu_set_type((yyvsp[-2].id)->stype);
+	menu_set_type((yyvsp[-2].type));
 	printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		(yyvsp[-2].id)->stype);
+		(yyvsp[-2].type));
 }
 
     break;
 
-  case 43:
+  case 26:
 
     {
 	menu_add_prompt(P_PROMPT, (yyvsp[-2].string), (yyvsp[-1].expr));
@@ -1604,29 +1552,38 @@ yyreduce:
 
     break;
 
-  case 44:
+  case 27:
 
     {
 	menu_add_expr(P_DEFAULT, (yyvsp[-2].expr), (yyvsp[-1].expr));
-	if ((yyvsp[-3].id)->stype != S_UNKNOWN)
-		menu_set_type((yyvsp[-3].id)->stype);
+	if ((yyvsp[-3].type) != S_UNKNOWN)
+		menu_set_type((yyvsp[-3].type));
 	printd(DEBUG_PARSE, "%s:%d:default(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		(yyvsp[-3].id)->stype);
+		(yyvsp[-3].type));
 }
 
     break;
 
-  case 45:
+  case 28:
 
     {
-	menu_add_symbol(P_SELECT, sym_lookup((yyvsp[-2].string), 0), (yyvsp[-1].expr));
+	menu_add_symbol(P_SELECT, (yyvsp[-2].symbol), (yyvsp[-1].expr));
 	printd(DEBUG_PARSE, "%s:%d:select\n", zconf_curname(), zconf_lineno());
 }
 
     break;
 
-  case 46:
+  case 29:
+
+    {
+	menu_add_symbol(P_IMPLY, (yyvsp[-2].symbol), (yyvsp[-1].expr));
+	printd(DEBUG_PARSE, "%s:%d:imply\n", zconf_curname(), zconf_lineno());
+}
+
+    break;
+
+  case 30:
 
     {
 	menu_add_expr(P_RANGE, expr_alloc_comp(E_RANGE,(yyvsp[-3].symbol), (yyvsp[-2].symbol)), (yyvsp[-1].expr));
@@ -1635,44 +1592,44 @@ yyreduce:
 
     break;
 
-  case 49:
+  case 31:
 
     {
-	const struct kconf_id *id = kconf_id_lookup((yyvsp[-1].string), strlen((yyvsp[-1].string)));
-	if (id && id->flags & TF_OPTION)
-		menu_add_option(id->token, (yyvsp[0].string));
-	else
-		zconfprint("warning: ignoring unknown option %s", (yyvsp[-1].string));
-	free((yyvsp[-1].string));
+	menu_add_option_modules();
 }
 
     break;
 
-  case 50:
+  case 32:
 
-    { (yyval.string) = NULL; }
+    {
+	menu_add_option_defconfig_list();
+}
 
     break;
 
-  case 51:
+  case 33:
 
-    { (yyval.string) = (yyvsp[0].string); }
+    {
+	menu_add_option_allnoconfig_y();
+}
 
     break;
 
-  case 52:
+  case 34:
 
     {
 	struct symbol *sym = sym_lookup((yyvsp[-1].string), SYMBOL_CHOICE);
-	sym->flags |= SYMBOL_AUTO;
+	sym->flags |= SYMBOL_NO_WRITE;
 	menu_add_entry(sym);
 	menu_add_expr(P_CHOICE, NULL, NULL);
+	free((yyvsp[-1].string));
 	printd(DEBUG_PARSE, "%s:%d:choice\n", zconf_curname(), zconf_lineno());
 }
 
     break;
 
-  case 53:
+  case 35:
 
     {
 	(yyval.menu) = menu_add_menu();
@@ -1680,10 +1637,10 @@ yyreduce:
 
     break;
 
-  case 54:
+  case 36:
 
     {
-	if (zconf_endtoken((yyvsp[0].id), T_CHOICE, T_ENDCHOICE)) {
+	if (zconf_endtoken((yyvsp[0].string), "choice")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endchoice\n", zconf_curname(), zconf_lineno());
 	}
@@ -1691,7 +1648,7 @@ yyreduce:
 
     break;
 
-  case 62:
+  case 42:
 
     {
 	menu_add_prompt(P_PROMPT, (yyvsp[-2].string), (yyvsp[-1].expr));
@@ -1700,21 +1657,17 @@ yyreduce:
 
     break;
 
-  case 63:
+  case 43:
 
     {
-	if ((yyvsp[-2].id)->stype == S_BOOLEAN || (yyvsp[-2].id)->stype == S_TRISTATE) {
-		menu_set_type((yyvsp[-2].id)->stype);
-		printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
-			zconf_curname(), zconf_lineno(),
-			(yyvsp[-2].id)->stype);
-	} else
-		YYERROR;
+	menu_set_type((yyvsp[-2].type));
+	printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
+	       zconf_curname(), zconf_lineno(), (yyvsp[-2].type));
 }
 
     break;
 
-  case 64:
+  case 44:
 
     {
 	current_entry->sym->flags |= SYMBOL_OPTIONAL;
@@ -1723,28 +1676,73 @@ yyreduce:
 
     break;
 
-  case 65:
+  case 45:
 
     {
-	menu_add_prop(P_RESET, NULL, NULL, (yyvsp[-1].expr));
+	menu_add_prop(P_RESET, NULL, (yyvsp[-1].expr));
 }
 
     break;
 
-  case 66:
+  case 46:
 
     {
-	if ((yyvsp[-3].id)->stype == S_UNKNOWN) {
-		menu_add_symbol(P_DEFAULT, sym_lookup((yyvsp[-2].string), 0), (yyvsp[-1].expr));
-		printd(DEBUG_PARSE, "%s:%d:default\n",
-			zconf_curname(), zconf_lineno());
-	} else
-		YYERROR;
+	menu_add_symbol(P_DEFAULT, (yyvsp[-2].symbol), (yyvsp[-1].expr));
+	printd(DEBUG_PARSE, "%s:%d:default\n",
+	       zconf_curname(), zconf_lineno());
 }
 
     break;
 
-  case 69:
+  case 48:
+
+    { (yyval.type) = S_INT; }
+
+    break;
+
+  case 49:
+
+    { (yyval.type) = S_HEX; }
+
+    break;
+
+  case 50:
+
+    { (yyval.type) = S_STRING; }
+
+    break;
+
+  case 51:
+
+    { (yyval.type) = S_BOOLEAN; }
+
+    break;
+
+  case 52:
+
+    { (yyval.type) = S_TRISTATE; }
+
+    break;
+
+  case 53:
+
+    { (yyval.type) = S_UNKNOWN; }
+
+    break;
+
+  case 54:
+
+    { (yyval.type) = S_BOOLEAN; }
+
+    break;
+
+  case 55:
+
+    { (yyval.type) = S_TRISTATE; }
+
+    break;
+
+  case 58:
 
     {
 	printd(DEBUG_PARSE, "%s:%d:if\n", zconf_curname(), zconf_lineno());
@@ -1755,10 +1753,10 @@ yyreduce:
 
     break;
 
-  case 70:
+  case 59:
 
     {
-	if (zconf_endtoken((yyvsp[0].id), T_IF, T_ENDIF)) {
+	if (zconf_endtoken((yyvsp[0].string), "if")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endif\n", zconf_curname(), zconf_lineno());
 	}
@@ -1766,15 +1764,7 @@ yyreduce:
 
     break;
 
-  case 76:
-
-    {
-	menu_add_prompt(P_MENU, (yyvsp[-1].string), NULL);
-}
-
-    break;
-
-  case 77:
+  case 61:
 
     {
 	menu_add_entry(NULL);
@@ -1784,7 +1774,7 @@ yyreduce:
 
     break;
 
-  case 78:
+  case 62:
 
     {
 	(yyval.menu) = menu_add_menu();
@@ -1792,10 +1782,10 @@ yyreduce:
 
     break;
 
-  case 79:
+  case 63:
 
     {
-	if (zconf_endtoken((yyvsp[0].id), T_MENU, T_ENDMENU)) {
+	if (zconf_endtoken((yyvsp[0].string), "menu")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endmenu\n", zconf_curname(), zconf_lineno());
 	}
@@ -1803,16 +1793,17 @@ yyreduce:
 
     break;
 
-  case 85:
+  case 68:
 
     {
 	printd(DEBUG_PARSE, "%s:%d:source %s\n", zconf_curname(), zconf_lineno(), (yyvsp[-1].string));
 	zconf_nextfile((yyvsp[-1].string));
+	free((yyvsp[-1].string));
 }
 
     break;
 
-  case 86:
+  case 69:
 
     {
 	menu_add_entry(NULL);
@@ -1822,15 +1813,7 @@ yyreduce:
 
     break;
 
-  case 87:
-
-    {
-	menu_end_entry();
-}
-
-    break;
-
-  case 88:
+  case 73:
 
     {
 	printd(DEBUG_PARSE, "%s:%d:help\n", zconf_curname(), zconf_lineno());
@@ -1839,15 +1822,20 @@ yyreduce:
 
     break;
 
-  case 89:
+  case 74:
 
     {
+	/* Is the help text empty or all whitespace? */
+	if ((yyvsp[0].string)[strspn((yyvsp[0].string), " \f\n\r\t\v")] == '\0')
+		zconfprint("warning: '%s' defined with blank help text",
+			   current_entry->sym->name ?: "<choice>");
+
 	current_entry->help = (yyvsp[0].string);
 }
 
     break;
 
-  case 94:
+  case 75:
 
     {
 	menu_add_dep((yyvsp[-1].expr));
@@ -1856,24 +1844,15 @@ yyreduce:
 
     break;
 
-  case 95:
-
-    {
-	menu_add_dep((yyvsp[-1].expr));
-	zconfprint("warning: deprecated 'depends' syntax, use 'depends on' instead.");
-}
-
-    break;
-
-  case 99:
+  case 76:
 
     {
-	menu_add_visibility((yyvsp[0].expr));
+	menu_add_visibility((yyvsp[-1].expr));
 }
 
     break;
 
-  case 101:
+  case 78:
 
     {
 	menu_add_prompt(P_PROMPT, (yyvsp[-1].string), (yyvsp[0].expr));
@@ -1881,120 +1860,150 @@ yyreduce:
 
     break;
 
-  case 104:
+  case 79:
 
-    { (yyval.id) = (yyvsp[-1].id); }
+    { (yyval.string) = "menu"; }
 
     break;
 
-  case 105:
+  case 80:
 
-    { (yyval.id) = (yyvsp[-1].id); }
+    { (yyval.string) = "choice"; }
 
     break;
 
-  case 106:
+  case 81:
 
-    { (yyval.id) = (yyvsp[-1].id); }
+    { (yyval.string) = "if"; }
 
     break;
 
-  case 109:
+  case 82:
 
     { (yyval.expr) = NULL; }
 
     break;
 
-  case 110:
+  case 83:
 
     { (yyval.expr) = (yyvsp[0].expr); }
 
     break;
 
-  case 111:
+  case 84:
 
     { (yyval.expr) = expr_alloc_symbol((yyvsp[0].symbol)); }
 
     break;
 
-  case 112:
+  case 85:
 
     { (yyval.expr) = expr_alloc_comp(E_LTH, (yyvsp[-2].symbol), (yyvsp[0].symbol)); }
 
     break;
 
-  case 113:
+  case 86:
 
     { (yyval.expr) = expr_alloc_comp(E_LEQ, (yyvsp[-2].symbol), (yyvsp[0].symbol)); }
 
     break;
 
-  case 114:
+  case 87:
 
     { (yyval.expr) = expr_alloc_comp(E_GTH, (yyvsp[-2].symbol), (yyvsp[0].symbol)); }
 
     break;
 
-  case 115:
+  case 88:
 
     { (yyval.expr) = expr_alloc_comp(E_GEQ, (yyvsp[-2].symbol), (yyvsp[0].symbol)); }
 
     break;
 
-  case 116:
+  case 89:
 
     { (yyval.expr) = expr_alloc_comp(E_EQUAL, (yyvsp[-2].symbol), (yyvsp[0].symbol)); }
 
     break;
 
-  case 117:
+  case 90:
 
     { (yyval.expr) = expr_alloc_comp(E_UNEQUAL, (yyvsp[-2].symbol), (yyvsp[0].symbol)); }
 
     break;
 
-  case 118:
+  case 91:
 
     { (yyval.expr) = (yyvsp[-1].expr); }
 
     break;
 
-  case 119:
+  case 92:
 
     { (yyval.expr) = expr_alloc_one(E_NOT, (yyvsp[0].expr)); }
 
     break;
 
-  case 120:
+  case 93:
 
     { (yyval.expr) = expr_alloc_two(E_OR, (yyvsp[-2].expr), (yyvsp[0].expr)); }
 
     break;
 
-  case 121:
+  case 94:
 
     { (yyval.expr) = expr_alloc_two(E_AND, (yyvsp[-2].expr), (yyvsp[0].expr)); }
 
     break;
 
-  case 122:
+  case 95:
 
     { (yyval.symbol) = sym_lookup((yyvsp[0].string), 0); free((yyvsp[0].string)); }
 
     break;
 
-  case 123:
+  case 97:
 
     { (yyval.symbol) = sym_lookup((yyvsp[0].string), SYMBOL_CONST); free((yyvsp[0].string)); }
 
     break;
 
-  case 124:
+  case 98:
 
     { (yyval.string) = NULL; }
 
     break;
 
+  case 100:
+
+    { variable_add((yyvsp[-3].string), (yyvsp[-1].string), (yyvsp[-2].flavor)); free((yyvsp[-3].string)); free((yyvsp[-1].string)); }
+
+    break;
+
+  case 101:
+
+    { (yyval.flavor) = VAR_RECURSIVE; }
+
+    break;
+
+  case 102:
+
+    { (yyval.flavor) = VAR_SIMPLE; }
+
+    break;
+
+  case 103:
+
+    { (yyval.flavor) = VAR_APPEND; }
+
+    break;
+
+  case 104:
+
+    { (yyval.string) = xstrdup(""); }
+
+    break;
+
 
 
       default: break;
@@ -2234,63 +2243,53 @@ void conf_parse(const char *name)
 
 	zconf_initscan(name);
 
-	sym_init();
 	_menu_init();
-	rootmenu.prompt = menu_add_prompt(P_MENU, "Linux Kernel Configuration", NULL);
 
 #if YYDEBUG
 	if (getenv("ZCONF_DEBUG"))
-		zconfdebug = 1;
+		yydebug = 1;
 #endif
-	zconfparse();
-	if (zconfnerrs)
+	yyparse();
+
+	/* Variables are expanded in the parse phase. We can free them here. */
+	variable_all_del();
+
+	if (yynerrs)
 		exit(1);
 	if (!modules_sym)
 		modules_sym = sym_find( "n" );
 
-	rootmenu.prompt->text = _(rootmenu.prompt->text);
-	rootmenu.prompt->text = sym_expand_string_value(rootmenu.prompt->text);
+	if (!menu_has_prompt(&rootmenu)) {
+		current_entry = &rootmenu;
+		menu_add_prompt(P_MENU, "Main menu", NULL);
+	}
 
 	menu_finalize(&rootmenu);
 	for_all_symbols(i, sym) {
 		if (sym_check_deps(sym))
-			zconfnerrs++;
+			yynerrs++;
 	}
-	if (zconfnerrs)
+	if (yynerrs)
 		exit(1);
 	sym_set_change_count(1);
 }
 
-static const char *zconf_tokenname(int token)
+static bool zconf_endtoken(const char *tokenname,
+			   const char *expected_tokenname)
 {
-	switch (token) {
-	case T_MENU:		return "menu";
-	case T_ENDMENU:		return "endmenu";
-	case T_CHOICE:		return "choice";
-	case T_ENDCHOICE:	return "endchoice";
-	case T_IF:		return "if";
-	case T_ENDIF:		return "endif";
-	case T_DEPENDS:		return "depends";
-	case T_VISIBLE:		return "visible";
-	}
-	return "<token>";
-}
-
-static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken)
-{
-	if (id->token != endtoken) {
+	if (strcmp(tokenname, expected_tokenname)) {
 		zconf_error("unexpected '%s' within %s block",
-			kconf_id_strings + id->name, zconf_tokenname(starttoken));
-		zconfnerrs++;
+			    tokenname, expected_tokenname);
+		yynerrs++;
 		return false;
 	}
 	if (current_menu->file != current_file) {
 		zconf_error("'%s' in different file than '%s'",
-			kconf_id_strings + id->name, zconf_tokenname(starttoken));
+			    tokenname, expected_tokenname);
 		fprintf(stderr, "%s:%d: location of the '%s'\n",
 			current_menu->file->name, current_menu->lineno,
-			zconf_tokenname(starttoken));
-		zconfnerrs++;
+			expected_tokenname);
+		yynerrs++;
 		return false;
 	}
 	return true;
@@ -2311,7 +2310,7 @@ static void zconf_error(const char *err, ...)
 {
 	va_list ap;
 
-	zconfnerrs++;
+	yynerrs++;
 	fprintf(stderr, "%s:%d: ", zconf_curname(), zconf_lineno());
 	va_start(ap, err);
 	vfprintf(stderr, err, ap);
@@ -2319,7 +2318,7 @@ static void zconf_error(const char *err, ...)
 	fprintf(stderr, "\n");
 }
 
-static void zconferror(const char *err)
+static void yyerror(const char *err)
 {
 	fprintf(stderr, "%s:%d: %s\n", zconf_curname(), zconf_lineno() + 1, err);
 }
@@ -2352,7 +2351,7 @@ static void print_symbol(FILE *out, struct menu *menu)
 		fprintf(out, "\nconfig %s\n", sym->name);
 	switch (sym->type) {
 	case S_BOOLEAN:
-		fputs("  boolean\n", out);
+		fputs("  bool\n", out);
 		break;
 	case S_TRISTATE:
 		fputs("  tristate\n", out);
@@ -2400,6 +2399,11 @@ static void print_symbol(FILE *out, struct menu *menu)
 			expr_fprint(prop->expr, out);
 			fputc('\n', out);
 			break;
+		case P_IMPLY:
+			fputs( "  imply ", out);
+			expr_fprint(prop->expr, out);
+			fputc('\n', out);
+			break;
 		case P_RANGE:
 			fputs( "  range ", out);
 			expr_fprint(prop->expr, out);
@@ -2410,6 +2414,10 @@ static void print_symbol(FILE *out, struct menu *menu)
 			print_quoted_string(out, prop->text);
 			fputc('\n', out);
 			break;
+		case P_SYMBOL:
+			fputs( "  symbol ", out);
+			fprintf(out, "%s\n", prop->menu->sym->name);
+			break;
 		default:
 			fprintf(out, "  unknown prop %d!\n", prop->type);
 			break;
@@ -2470,9 +2478,4 @@ void zconfdump(FILE *out)
 	}
 }
 
-#include "zconf.lex.c"
-#include "util.c"
-#include "confdata.c"
-#include "expr.c"
-#include "symbol.c"
 #include "menu.c"
diff --git a/scripts/config/parser.tab.h b/scripts/config/parser.tab.h
new file mode 100644
index 0000000000..d26b8bdccb
--- /dev/null
+++ b/scripts/config/parser.tab.h
@@ -0,0 +1,129 @@
+/* A Bison parser, made by GNU Bison 3.1.  */
+
+/* Bison interface for Yacc-like parsers in C
+
+   Copyright (C) 1984, 1989-1990, 2000-2015, 2018 Free Software Foundation, Inc.
+
+   This program is free software: you can redistribute it and/or modify
+   it under the terms of the GNU General Public License as published by
+   the Free Software Foundation, either version 3 of the License, or
+   (at your option) any later version.
+
+   This program is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+   GNU General Public License for more details.
+
+   You should have received a copy of the GNU General Public License
+   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
+
+/* As a special exception, you may create a larger work that contains
+   part or all of the Bison parser skeleton and distribute that work
+   under terms of your choice, so long as that work isn't itself a
+   parser generator using the skeleton or a modified version thereof
+   as a parser skeleton.  Alternatively, if you modify or redistribute
+   the parser skeleton itself, you may (at your option) remove this
+   special exception, which will cause the skeleton and the resulting
+   Bison output files to be licensed under the GNU General Public
+   License without this special exception.
+
+   This special exception was added by the Free Software Foundation in
+   version 2.2 of Bison.  */
+
+#ifndef YY_YY_PARSER_TAB_H_INCLUDED
+# define YY_YY_PARSER_TAB_H_INCLUDED
+/* Debug traces.  */
+#ifndef YYDEBUG
+# define YYDEBUG 0
+#endif
+#if YYDEBUG
+extern int yydebug;
+#endif
+
+/* Token type.  */
+#ifndef YYTOKENTYPE
+# define YYTOKENTYPE
+  enum yytokentype
+  {
+    T_HELPTEXT = 258,
+    T_WORD = 259,
+    T_WORD_QUOTE = 260,
+    T_ALLNOCONFIG_Y = 261,
+    T_BOOL = 262,
+    T_CHOICE = 263,
+    T_CLOSE_PAREN = 264,
+    T_COLON_EQUAL = 265,
+    T_COMMENT = 266,
+    T_CONFIG = 267,
+    T_DEFAULT = 268,
+    T_DEFCONFIG_LIST = 269,
+    T_DEF_BOOL = 270,
+    T_DEF_TRISTATE = 271,
+    T_DEPENDS = 272,
+    T_ENDCHOICE = 273,
+    T_ENDIF = 274,
+    T_ENDMENU = 275,
+    T_HELP = 276,
+    T_HEX = 277,
+    T_IF = 278,
+    T_IMPLY = 279,
+    T_INT = 280,
+    T_MAINMENU = 281,
+    T_MENU = 282,
+    T_MENUCONFIG = 283,
+    T_MODULES = 284,
+    T_ON = 285,
+    T_OPEN_PAREN = 286,
+    T_OPTION = 287,
+    T_OPTIONAL = 288,
+    T_PLUS_EQUAL = 289,
+    T_PROMPT = 290,
+    T_RANGE = 291,
+    T_RESET = 292,
+    T_SELECT = 293,
+    T_SOURCE = 294,
+    T_STRING = 295,
+    T_TRISTATE = 296,
+    T_VISIBLE = 297,
+    T_EOL = 298,
+    T_ASSIGN_VAL = 299,
+    T_OR = 300,
+    T_AND = 301,
+    T_EQUAL = 302,
+    T_UNEQUAL = 303,
+    T_LESS = 304,
+    T_LESS_EQUAL = 305,
+    T_GREATER = 306,
+    T_GREATER_EQUAL = 307,
+    T_NOT = 308
+  };
+#endif
+
+/* Value type.  */
+#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
+
+union YYSTYPE
+{
+
+
+	char *string;
+	struct symbol *symbol;
+	struct expr *expr;
+	struct menu *menu;
+	enum symbol_type type;
+	enum variable_flavor flavor;
+
+
+};
+
+typedef union YYSTYPE YYSTYPE;
+# define YYSTYPE_IS_TRIVIAL 1
+# define YYSTYPE_IS_DECLARED 1
+#endif
+
+
+extern YYSTYPE yylval;
+
+int yyparse (void);
+
+#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
diff --git a/scripts/config/zconf.y b/scripts/config/parser.y
similarity index 64%
rename from scripts/config/zconf.y
rename to scripts/config/parser.y
index 81645a75b0..e26dbc3095 100644
--- a/scripts/config/zconf.y
+++ b/scripts/config/parser.y
@@ -1,8 +1,8 @@
-%{
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
+%{
 
 #include <ctype.h>
 #include <stdarg.h>
@@ -20,63 +20,70 @@
 
 int cdebug = PRINTD;
 
-extern int zconflex(void);
+static void yyerror(const char *err);
 static void zconfprint(const char *err, ...);
 static void zconf_error(const char *err, ...);
-static void zconferror(const char *err);
-static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken);
+static bool zconf_endtoken(const char *tokenname,
+			   const char *expected_tokenname);
 
 struct symbol *symbol_hash[SYMBOL_HASHSIZE];
 
 static struct menu *current_menu, *current_entry;
 
 %}
-%expect 30
 
 %union
 {
 	char *string;
-	struct file *file;
 	struct symbol *symbol;
 	struct expr *expr;
 	struct menu *menu;
-	const struct kconf_id *id;
+	enum symbol_type type;
+	enum variable_flavor flavor;
 }
 
-%token <id>T_MAINMENU
-%token <id>T_MENU
-%token <id>T_ENDMENU
-%token <id>T_SOURCE
-%token <id>T_CHOICE
-%token <id>T_ENDCHOICE
-%token <id>T_COMMENT
-%token <id>T_CONFIG
-%token <id>T_MENUCONFIG
-%token <id>T_HELP
 %token <string> T_HELPTEXT
-%token <id>T_IF
-%token <id>T_ENDIF
-%token <id>T_DEPENDS
-%token <id>T_OPTIONAL
-%token <id>T_PROMPT
-%token <id>T_TYPE
-%token <id>T_DEFAULT
-%token <id>T_SELECT
-%token <id>T_RANGE
-%token <id>T_VISIBLE
-%token <id>T_OPTION
-%token <id>T_ON
-%token <id>T_RESET
 %token <string> T_WORD
 %token <string> T_WORD_QUOTE
-%token T_UNEQUAL
-%token T_LESS
-%token T_LESS_EQUAL
-%token T_GREATER
-%token T_GREATER_EQUAL
+%token T_ALLNOCONFIG_Y
+%token T_BOOL
+%token T_CHOICE
 %token T_CLOSE_PAREN
+%token T_COLON_EQUAL
+%token T_COMMENT
+%token T_CONFIG
+%token T_DEFAULT
+%token T_DEFCONFIG_LIST
+%token T_DEF_BOOL
+%token T_DEF_TRISTATE
+%token T_DEPENDS
+%token T_ENDCHOICE
+%token T_ENDIF
+%token T_ENDMENU
+%token T_HELP
+%token T_HEX
+%token T_IF
+%token T_IMPLY
+%token T_INT
+%token T_MAINMENU
+%token T_MENU
+%token T_MENUCONFIG
+%token T_MODULES
+%token T_ON
 %token T_OPEN_PAREN
+%token T_OPTION
+%token T_OPTIONAL
+%token T_PLUS_EQUAL
+%token T_PROMPT
+%token T_RANGE
+%token T_RESET
+%token T_SELECT
+%token T_SOURCE
+%token T_STRING
+%token T_TRISTATE
+%token T_VISIBLE
 %token T_EOL
+%token <string> T_ASSIGN_VAL
 
 %left T_OR
 %left T_AND
@@ -84,14 +91,15 @@ static struct menu *current_menu, *current_entry;
 %left T_LESS T_LESS_EQUAL T_GREATER T_GREATER_EQUAL
 %nonassoc T_NOT
 
-%type <string> prompt
+%type <symbol> nonconst_symbol
 %type <symbol> symbol
+%type <type> type logic_type default
 %type <expr> expr
 %type <expr> if_expr
-%type <id> end
-%type <id> option_name
+%type <string> end
 %type <menu> if_entry menu_entry choice_entry
-%type <string> symbol_option_arg word_opt
+%type <string> word_opt assign_val
+%type <flavor> assign_op
 
 %destructor {
 	fprintf(stderr, "%s:%d: missing end statement for this entry\n",
@@ -100,71 +108,53 @@ static struct menu *current_menu, *current_entry;
 		menu_end_menu();
 } if_entry menu_entry choice_entry
 
-%{
-/* Include zconf.hash.c here so it can see the token constants. */
-#include "zconf.hash.c"
-%}
-
 %%
-input: nl start | start;
+input: mainmenu_stmt stmt_list | stmt_list;
 
-start: mainmenu_stmt stmt_list | stmt_list;
+/* mainmenu entry */
+
+mainmenu_stmt: T_MAINMENU T_WORD_QUOTE T_EOL
+{
+	menu_add_prompt(P_MENU, $2, NULL);
+};
 
 stmt_list:
 	  /* empty */
 	| stmt_list common_stmt
 	| stmt_list choice_stmt
 	| stmt_list menu_stmt
-	| stmt_list end			{ zconf_error("unexpected end statement"); }
 	| stmt_list T_WORD error T_EOL	{ zconf_error("unknown statement \"%s\"", $2); }
-	| stmt_list option_name error T_EOL
-{
-	zconf_error("unexpected option \"%s\"", kconf_id_strings + $2->name);
-}
 	| stmt_list error T_EOL		{ zconf_error("invalid statement"); }
 ;
 
-option_name:
-	T_DEPENDS | T_PROMPT | T_TYPE | T_SELECT | T_OPTIONAL | T_RANGE | T_DEFAULT | T_VISIBLE | T_RESET
-;
-
 common_stmt:
-	  T_EOL
-	| if_stmt
+	  if_stmt
 	| comment_stmt
 	| config_stmt
 	| menuconfig_stmt
 	| source_stmt
+	| assignment_stmt
 ;
 
-option_error:
-	  T_WORD error T_EOL		{ zconf_error("unknown option \"%s\"", $1); }
-	| error T_EOL			{ zconf_error("invalid option"); }
-;
-
-
 /* config/menuconfig entry */
 
-config_entry_start: T_CONFIG T_WORD T_EOL
+config_entry_start: T_CONFIG nonconst_symbol T_EOL
 {
-	struct symbol *sym = sym_lookup($2, 0);
-	sym->flags |= SYMBOL_OPTIONAL;
-	menu_add_entry(sym);
-	printd(DEBUG_PARSE, "%s:%d:config %s\n", zconf_curname(), zconf_lineno(), $2);
+	$2->flags |= SYMBOL_OPTIONAL;
+	menu_add_entry($2);
+	printd(DEBUG_PARSE, "%s:%d:config %s\n", zconf_curname(), zconf_lineno(), $2->name);
 };
 
 config_stmt: config_entry_start config_option_list
 {
-	menu_end_entry();
 	printd(DEBUG_PARSE, "%s:%d:endconfig\n", zconf_curname(), zconf_lineno());
 };
 
-menuconfig_entry_start: T_MENUCONFIG T_WORD T_EOL
+menuconfig_entry_start: T_MENUCONFIG nonconst_symbol T_EOL
 {
-	struct symbol *sym = sym_lookup($2, 0);
-	sym->flags |= SYMBOL_OPTIONAL;
-	menu_add_entry(sym);
-	printd(DEBUG_PARSE, "%s:%d:menuconfig %s\n", zconf_curname(), zconf_lineno(), $2);
+	$2->flags |= SYMBOL_OPTIONAL;
+	menu_add_entry($2);
+	printd(DEBUG_PARSE, "%s:%d:menuconfig %s\n", zconf_curname(), zconf_lineno(), $2->name);
 };
 
 menuconfig_stmt: menuconfig_entry_start config_option_list
@@ -173,84 +163,82 @@ menuconfig_stmt: menuconfig_entry_start config_option_list
 		current_entry->prompt->type = P_MENU;
 	else
 		zconfprint("warning: menuconfig statement without prompt");
-	menu_end_entry();
 	printd(DEBUG_PARSE, "%s:%d:endconfig\n", zconf_curname(), zconf_lineno());
 };
 
 config_option_list:
 	  /* empty */
 	| config_option_list config_option
-	| config_option_list symbol_option
 	| config_option_list depends
 	| config_option_list help
-	| config_option_list option_error
-	| config_option_list T_EOL
 ;
 
-config_option: T_TYPE prompt_stmt_opt T_EOL
+config_option: type prompt_stmt_opt T_EOL
 {
-	menu_set_type($1->stype);
+	menu_set_type($1);
 	printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		$1->stype);
+		$1);
 };
 
-config_option: T_PROMPT prompt if_expr T_EOL
+config_option: T_PROMPT T_WORD_QUOTE if_expr T_EOL
 {
 	menu_add_prompt(P_PROMPT, $2, $3);
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
 };
 
-config_option: T_DEFAULT expr if_expr T_EOL
+config_option: default expr if_expr T_EOL
 {
 	menu_add_expr(P_DEFAULT, $2, $3);
-	if ($1->stype != S_UNKNOWN)
-		menu_set_type($1->stype);
+	if ($1 != S_UNKNOWN)
+		menu_set_type($1);
 	printd(DEBUG_PARSE, "%s:%d:default(%u)\n",
 		zconf_curname(), zconf_lineno(),
-		$1->stype);
+		$1);
 };
 
-config_option: T_SELECT T_WORD if_expr T_EOL
+config_option: T_SELECT nonconst_symbol if_expr T_EOL
 {
-	menu_add_symbol(P_SELECT, sym_lookup($2, 0), $3);
+	menu_add_symbol(P_SELECT, $2, $3);
 	printd(DEBUG_PARSE, "%s:%d:select\n", zconf_curname(), zconf_lineno());
 };
 
+config_option: T_IMPLY nonconst_symbol if_expr T_EOL
+{
+	menu_add_symbol(P_IMPLY, $2, $3);
+	printd(DEBUG_PARSE, "%s:%d:imply\n", zconf_curname(), zconf_lineno());
+};
+
 config_option: T_RANGE symbol symbol if_expr T_EOL
 {
 	menu_add_expr(P_RANGE, expr_alloc_comp(E_RANGE,$2, $3), $4);
 	printd(DEBUG_PARSE, "%s:%d:range\n", zconf_curname(), zconf_lineno());
 };
 
-symbol_option: T_OPTION symbol_option_list T_EOL
-;
+config_option: T_OPTION T_MODULES T_EOL
+{
+	menu_add_option_modules();
+};
 
-symbol_option_list:
-	  /* empty */
-	| symbol_option_list T_WORD symbol_option_arg
+config_option: T_OPTION T_DEFCONFIG_LIST T_EOL
 {
-	const struct kconf_id *id = kconf_id_lookup($2, strlen($2));
-	if (id && id->flags & TF_OPTION)
-		menu_add_option(id->token, $3);
-	else
-		zconfprint("warning: ignoring unknown option %s", $2);
-	free($2);
+	menu_add_option_defconfig_list();
 };
 
-symbol_option_arg:
-	  /* empty */		{ $$ = NULL; }
-	| T_EQUAL prompt	{ $$ = $2; }
-;
+config_option: T_OPTION T_ALLNOCONFIG_Y T_EOL
+{
+	menu_add_option_allnoconfig_y();
+};
 
 /* choice entry */
 
 choice: T_CHOICE word_opt T_EOL
 {
 	struct symbol *sym = sym_lookup($2, SYMBOL_CHOICE);
-	sym->flags |= SYMBOL_AUTO;
+	sym->flags |= SYMBOL_NO_WRITE;
 	menu_add_entry(sym);
 	menu_add_expr(P_CHOICE, NULL, NULL);
+	free($2);
 	printd(DEBUG_PARSE, "%s:%d:choice\n", zconf_curname(), zconf_lineno());
 };
 
@@ -261,7 +249,7 @@ choice_entry: choice choice_option_list
 
 choice_end: end
 {
-	if (zconf_endtoken($1, T_CHOICE, T_ENDCHOICE)) {
+	if (zconf_endtoken($1, "choice")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endchoice\n", zconf_curname(), zconf_lineno());
 	}
@@ -275,25 +263,19 @@ choice_option_list:
 	| choice_option_list choice_option
 	| choice_option_list depends
 	| choice_option_list help
-	| choice_option_list T_EOL
-	| choice_option_list option_error
 ;
 
-choice_option: T_PROMPT prompt if_expr T_EOL
+choice_option: T_PROMPT T_WORD_QUOTE if_expr T_EOL
 {
 	menu_add_prompt(P_PROMPT, $2, $3);
 	printd(DEBUG_PARSE, "%s:%d:prompt\n", zconf_curname(), zconf_lineno());
 };
 
-choice_option: T_TYPE prompt_stmt_opt T_EOL
+choice_option: logic_type prompt_stmt_opt T_EOL
 {
-	if ($1->stype == S_BOOLEAN || $1->stype == S_TRISTATE) {
-		menu_set_type($1->stype);
-		printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
-			zconf_curname(), zconf_lineno(),
-			$1->stype);
-	} else
-		YYERROR;
+	menu_set_type($1);
+	printd(DEBUG_PARSE, "%s:%d:type(%u)\n",
+	       zconf_curname(), zconf_lineno(), $1);
 };
 
 choice_option: T_OPTIONAL T_EOL
@@ -304,19 +286,31 @@ choice_option: T_OPTIONAL T_EOL
 
 choice_option: T_RESET if_expr T_EOL
 {
-	menu_add_prop(P_RESET, NULL, NULL, $2);
+	menu_add_prop(P_RESET, NULL, $2);
 };
 
-choice_option: T_DEFAULT T_WORD if_expr T_EOL
+choice_option: T_DEFAULT nonconst_symbol if_expr T_EOL
 {
-	if ($1->stype == S_UNKNOWN) {
-		menu_add_symbol(P_DEFAULT, sym_lookup($2, 0), $3);
-		printd(DEBUG_PARSE, "%s:%d:default\n",
-			zconf_curname(), zconf_lineno());
-	} else
-		YYERROR;
+	menu_add_symbol(P_DEFAULT, $2, $3);
+	printd(DEBUG_PARSE, "%s:%d:default\n",
+	       zconf_curname(), zconf_lineno());
 };
 
+type:
+	  logic_type
+	| T_INT			{ $$ = S_INT; }
+	| T_HEX			{ $$ = S_HEX; }
+	| T_STRING		{ $$ = S_STRING; }
+
+logic_type:
+	  T_BOOL		{ $$ = S_BOOLEAN; }
+	| T_TRISTATE		{ $$ = S_TRISTATE; }
+
+default:
+	  T_DEFAULT		{ $$ = S_UNKNOWN; }
+	| T_DEF_BOOL		{ $$ = S_BOOLEAN; }
+	| T_DEF_TRISTATE	{ $$ = S_TRISTATE; }
+
 choice_block:
 	  /* empty */
 	| choice_block common_stmt
@@ -324,7 +318,7 @@ choice_block:
 
 /* if entry */
 
-if_entry: T_IF expr nl
+if_entry: T_IF expr T_EOL
 {
 	printd(DEBUG_PARSE, "%s:%d:if\n", zconf_curname(), zconf_lineno());
 	menu_add_entry(NULL);
@@ -334,80 +328,69 @@ if_entry: T_IF expr nl
 
 if_end: end
 {
-	if (zconf_endtoken($1, T_IF, T_ENDIF)) {
+	if (zconf_endtoken($1, "if")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endif\n", zconf_curname(), zconf_lineno());
 	}
 };
 
-if_stmt: if_entry if_block if_end
-;
-
-if_block:
-	  /* empty */
-	| if_block common_stmt
-	| if_block menu_stmt
-	| if_block choice_stmt
+if_stmt: if_entry stmt_list if_end
 ;
 
-/* mainmenu entry */
-
-mainmenu_stmt: T_MAINMENU prompt nl
-{
-	menu_add_prompt(P_MENU, $2, NULL);
-};
-
 /* menu entry */
 
-menu: T_MENU prompt T_EOL
+menu: T_MENU T_WORD_QUOTE T_EOL
 {
 	menu_add_entry(NULL);
 	menu_add_prompt(P_MENU, $2, NULL);
 	printd(DEBUG_PARSE, "%s:%d:menu\n", zconf_curname(), zconf_lineno());
 };
 
-menu_entry: menu visibility_list depends_list
+menu_entry: menu menu_option_list
 {
 	$$ = menu_add_menu();
 };
 
 menu_end: end
 {
-	if (zconf_endtoken($1, T_MENU, T_ENDMENU)) {
+	if (zconf_endtoken($1, "menu")) {
 		menu_end_menu();
 		printd(DEBUG_PARSE, "%s:%d:endmenu\n", zconf_curname(), zconf_lineno());
 	}
 };
 
-menu_stmt: menu_entry menu_block menu_end
+menu_stmt: menu_entry stmt_list menu_end
 ;
 
-menu_block:
+menu_option_list:
 	  /* empty */
-	| menu_block common_stmt
-	| menu_block menu_stmt
-	| menu_block choice_stmt
+	| menu_option_list visible
+	| menu_option_list depends
 ;
 
-source_stmt: T_SOURCE prompt T_EOL
+source_stmt: T_SOURCE T_WORD_QUOTE T_EOL
 {
 	printd(DEBUG_PARSE, "%s:%d:source %s\n", zconf_curname(), zconf_lineno(), $2);
 	zconf_nextfile($2);
+	free($2);
 };
 
 /* comment entry */
 
-comment: T_COMMENT prompt T_EOL
+comment: T_COMMENT T_WORD_QUOTE T_EOL
 {
 	menu_add_entry(NULL);
 	menu_add_prompt(P_COMMENT, $2, NULL);
 	printd(DEBUG_PARSE, "%s:%d:comment\n", zconf_curname(), zconf_lineno());
 };
 
-comment_stmt: comment depends_list
-{
-	menu_end_entry();
-};
+comment_stmt: comment comment_option_list
+;
+
+comment_option_list:
+	  /* empty */
+	| comment_option_list depends
+;
 
 /* help option */
 
@@ -419,37 +402,24 @@ help_start: T_HELP T_EOL
 
 help: help_start T_HELPTEXT
 {
+	/* Is the help text empty or all whitespace? */
+	if ($2[strspn($2, " \f\n\r\t\v")] == '\0')
+		zconfprint("warning: '%s' defined with blank help text",
+			   current_entry->sym->name ?: "<choice>");
+
 	current_entry->help = $2;
 };
 
 /* depends option */
 
-depends_list:
-	  /* empty */
-	| depends_list depends
-	| depends_list T_EOL
-	| depends_list option_error
-;
-
 depends: T_DEPENDS T_ON expr T_EOL
 {
 	menu_add_dep($3);
 	printd(DEBUG_PARSE, "%s:%d:depends on\n", zconf_curname(), zconf_lineno());
-} | T_DEPENDS expr T_EOL
-{
-	menu_add_dep($2);
-	zconfprint("warning: deprecated 'depends' syntax, use 'depends on' instead.");
 };
 
 /* visibility option */
-
-visibility_list:
-	  /* empty */
-	| visibility_list visible
-	| visibility_list T_EOL
-;
-
-visible: T_VISIBLE if_expr
+visible: T_VISIBLE if_expr T_EOL
 {
 	menu_add_visibility($2);
 };
@@ -458,23 +428,14 @@ visible: T_VISIBLE if_expr
 
 prompt_stmt_opt:
 	  /* empty */
-	| prompt if_expr
+	| T_WORD_QUOTE if_expr
 {
 	menu_add_prompt(P_PROMPT, $1, $2);
 };
 
-prompt:	  T_WORD
-	| T_WORD_QUOTE
-;
-
-end:	  T_ENDMENU T_EOL	{ $$ = $1; }
-	| T_ENDCHOICE T_EOL	{ $$ = $1; }
-	| T_ENDIF T_EOL		{ $$ = $1; }
-;
-
-nl:
-	  T_EOL
-	| nl T_EOL
+end:	  T_ENDMENU T_EOL	{ $$ = "menu"; }
+	| T_ENDCHOICE T_EOL	{ $$ = "choice"; }
+	| T_ENDIF T_EOL		{ $$ = "if"; }
 ;
 
 if_expr:  /* empty */			{ $$ = NULL; }
@@ -494,13 +455,31 @@ expr:	  symbol				{ $$ = expr_alloc_symbol($1); }
 	| expr T_AND expr			{ $$ = expr_alloc_two(E_AND, $1, $3); }
 ;
 
-symbol:	  T_WORD	{ $$ = sym_lookup($1, 0); free($1); }
+/* For symbol definitions, selects, etc., where quotes are not accepted */
+nonconst_symbol: T_WORD { $$ = sym_lookup($1, 0); free($1); };
+
+symbol:	  nonconst_symbol
 	| T_WORD_QUOTE	{ $$ = sym_lookup($1, SYMBOL_CONST); free($1); }
 ;
 
 word_opt: /* empty */			{ $$ = NULL; }
 	| T_WORD
 
+/* assignment statement */
+
+assignment_stmt:  T_WORD assign_op assign_val T_EOL	{ variable_add($1, $3, $2); free($1); free($3); }
+
+assign_op:
+	  T_EQUAL	{ $$ = VAR_RECURSIVE; }
+	| T_COLON_EQUAL	{ $$ = VAR_SIMPLE; }
+	| T_PLUS_EQUAL	{ $$ = VAR_APPEND; }
+;
+
+assign_val:
+	/* empty */		{ $$ = xstrdup(""); };
+	| T_ASSIGN_VAL
+;
+
 %%
 
 void conf_parse(const char *name)
@@ -510,63 +489,53 @@ void conf_parse(const char *name)
 
 	zconf_initscan(name);
 
-	sym_init();
 	_menu_init();
-	rootmenu.prompt = menu_add_prompt(P_MENU, "Linux Kernel Configuration", NULL);
 
 #if YYDEBUG
 	if (getenv("ZCONF_DEBUG"))
-		zconfdebug = 1;
+		yydebug = 1;
 #endif
-	zconfparse();
-	if (zconfnerrs)
+	yyparse();
+
+	/* Variables are expanded in the parse phase. We can free them here. */
+	variable_all_del();
+
+	if (yynerrs)
 		exit(1);
 	if (!modules_sym)
 		modules_sym = sym_find( "n" );
 
-	rootmenu.prompt->text = _(rootmenu.prompt->text);
-	rootmenu.prompt->text = sym_expand_string_value(rootmenu.prompt->text);
+	if (!menu_has_prompt(&rootmenu)) {
+		current_entry = &rootmenu;
+		menu_add_prompt(P_MENU, "Main menu", NULL);
+	}
 
 	menu_finalize(&rootmenu);
 	for_all_symbols(i, sym) {
 		if (sym_check_deps(sym))
-			zconfnerrs++;
+			yynerrs++;
 	}
-	if (zconfnerrs)
+	if (yynerrs)
 		exit(1);
 	sym_set_change_count(1);
 }
 
-static const char *zconf_tokenname(int token)
-{
-	switch (token) {
-	case T_MENU:		return "menu";
-	case T_ENDMENU:		return "endmenu";
-	case T_CHOICE:		return "choice";
-	case T_ENDCHOICE:	return "endchoice";
-	case T_IF:		return "if";
-	case T_ENDIF:		return "endif";
-	case T_DEPENDS:		return "depends";
-	case T_VISIBLE:		return "visible";
-	}
-	return "<token>";
-}
-
-static bool zconf_endtoken(const struct kconf_id *id, int starttoken, int endtoken)
+static bool zconf_endtoken(const char *tokenname,
+			   const char *expected_tokenname)
 {
-	if (id->token != endtoken) {
+	if (strcmp(tokenname, expected_tokenname)) {
 		zconf_error("unexpected '%s' within %s block",
-			kconf_id_strings + id->name, zconf_tokenname(starttoken));
-		zconfnerrs++;
+			    tokenname, expected_tokenname);
+		yynerrs++;
 		return false;
 	}
 	if (current_menu->file != current_file) {
 		zconf_error("'%s' in different file than '%s'",
-			kconf_id_strings + id->name, zconf_tokenname(starttoken));
+			    tokenname, expected_tokenname);
 		fprintf(stderr, "%s:%d: location of the '%s'\n",
 			current_menu->file->name, current_menu->lineno,
-			zconf_tokenname(starttoken));
-		zconfnerrs++;
+			expected_tokenname);
+		yynerrs++;
 		return false;
 	}
 	return true;
@@ -587,7 +556,7 @@ static void zconf_error(const char *err, ...)
 {
 	va_list ap;
 
-	zconfnerrs++;
+	yynerrs++;
 	fprintf(stderr, "%s:%d: ", zconf_curname(), zconf_lineno());
 	va_start(ap, err);
 	vfprintf(stderr, err, ap);
@@ -595,7 +564,7 @@ static void zconf_error(const char *err, ...)
 	fprintf(stderr, "\n");
 }
 
-static void zconferror(const char *err)
+static void yyerror(const char *err)
 {
 	fprintf(stderr, "%s:%d: %s\n", zconf_curname(), zconf_lineno() + 1, err);
 }
@@ -628,7 +597,7 @@ static void print_symbol(FILE *out, struct menu *menu)
 		fprintf(out, "\nconfig %s\n", sym->name);
 	switch (sym->type) {
 	case S_BOOLEAN:
-		fputs("  boolean\n", out);
+		fputs("  bool\n", out);
 		break;
 	case S_TRISTATE:
 		fputs("  tristate\n", out);
@@ -676,6 +645,11 @@ static void print_symbol(FILE *out, struct menu *menu)
 			expr_fprint(prop->expr, out);
 			fputc('\n', out);
 			break;
+		case P_IMPLY:
+			fputs( "  imply ", out);
+			expr_fprint(prop->expr, out);
+			fputc('\n', out);
+			break;
 		case P_RANGE:
 			fputs( "  range ", out);
 			expr_fprint(prop->expr, out);
@@ -686,6 +660,10 @@ static void print_symbol(FILE *out, struct menu *menu)
 			print_quoted_string(out, prop->text);
 			fputc('\n', out);
 			break;
+		case P_SYMBOL:
+			fputs( "  symbol ", out);
+			fprintf(out, "%s\n", prop->menu->sym->name);
+			break;
 		default:
 			fprintf(out, "  unknown prop %d!\n", prop->type);
 			break;
@@ -746,9 +724,4 @@ void zconfdump(FILE *out)
 	}
 }
 
-#include "zconf.lex.c"
-#include "util.c"
-#include "confdata.c"
-#include "expr.c"
-#include "symbol.c"
 #include "menu.c"
diff --git a/scripts/config/preprocess.c b/scripts/config/preprocess.c
new file mode 100644
index 0000000000..dcc07c45eb
--- /dev/null
+++ b/scripts/config/preprocess.c
@@ -0,0 +1,575 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (C) 2018 Masahiro Yamada <yamada.masahiro@socionext.com>
+
+#include <ctype.h>
+#include <stdarg.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+
+#include "list.h"
+#include "lkc.h"
+
+#define ARRAY_SIZE(arr)		(sizeof(arr) / sizeof((arr)[0]))
+
+static char *expand_string_with_args(const char *in, int argc, char *argv[]);
+static char *expand_string(const char *in);
+
+static void __attribute__((noreturn)) pperror(const char *format, ...)
+{
+	va_list ap;
+
+	fprintf(stderr, "%s:%d: ", current_file->name, yylineno);
+	va_start(ap, format);
+	vfprintf(stderr, format, ap);
+	va_end(ap);
+	fprintf(stderr, "\n");
+
+	exit(1);
+}
+
+/*
+ * Environment variables
+ */
+static LIST_HEAD(env_list);
+
+struct env {
+	char *name;
+	char *value;
+	struct list_head node;
+};
+
+static void env_add(const char *name, const char *value)
+{
+	struct env *e;
+
+	e = xmalloc(sizeof(*e));
+	e->name = xstrdup(name);
+	e->value = xstrdup(value);
+
+	list_add_tail(&e->node, &env_list);
+}
+
+static void env_del(struct env *e)
+{
+	list_del(&e->node);
+	free(e->name);
+	free(e->value);
+	free(e);
+}
+
+/* The returned pointer must be freed when done */
+static char *env_expand(const char *name)
+{
+	struct env *e;
+	const char *value;
+
+	if (!*name)
+		return NULL;
+
+	list_for_each_entry(e, &env_list, node) {
+		if (!strcmp(name, e->name))
+			return xstrdup(e->value);
+	}
+
+	value = getenv(name);
+	if (!value)
+		return NULL;
+
+	/*
+	 * We need to remember all referenced environment variables.
+	 * They will be written out to include/config/auto.conf.cmd
+	 */
+	env_add(name, value);
+
+	return xstrdup(value);
+}
+
+void env_write_dep(FILE *f, const char *autoconfig_name)
+{
+	struct env *e, *tmp;
+
+	list_for_each_entry_safe(e, tmp, &env_list, node) {
+		fprintf(f, "ifneq \"$(%s)\" \"%s\"\n", e->name, e->value);
+		fprintf(f, "%s: FORCE\n", autoconfig_name);
+		fprintf(f, "endif\n");
+		env_del(e);
+	}
+}
+
+/*
+ * Built-in functions
+ */
+struct function {
+	const char *name;
+	unsigned int min_args;
+	unsigned int max_args;
+	char *(*func)(int argc, char *argv[]);
+};
+
+static char *do_error_if(int argc, char *argv[])
+{
+	if (!strcmp(argv[0], "y"))
+		pperror("%s", argv[1]);
+
+	return NULL;
+}
+
+static char *do_filename(int argc, char *argv[])
+{
+	return xstrdup(current_file->name);
+}
+
+static char *do_info(int argc, char *argv[])
+{
+	printf("%s\n", argv[0]);
+
+	return xstrdup("");
+}
+
+static char *do_lineno(int argc, char *argv[])
+{
+	char buf[16];
+
+	sprintf(buf, "%d", yylineno);
+
+	return xstrdup(buf);
+}
+
+static char *do_shell(int argc, char *argv[])
+{
+	FILE *p;
+	char buf[256];
+	char *cmd;
+	size_t nread;
+	int i;
+
+	cmd = argv[0];
+
+	p = popen(cmd, "r");
+	if (!p) {
+		perror(cmd);
+		exit(1);
+	}
+
+	nread = fread(buf, 1, sizeof(buf), p);
+	if (nread == sizeof(buf))
+		nread--;
+
+	/* remove trailing new lines */
+	while (nread > 0 && buf[nread - 1] == '\n')
+		nread--;
+
+	buf[nread] = 0;
+
+	/* replace a new line with a space */
+	for (i = 0; i < nread; i++) {
+		if (buf[i] == '\n')
+			buf[i] = ' ';
+	}
+
+	if (pclose(p) == -1) {
+		perror(cmd);
+		exit(1);
+	}
+
+	return xstrdup(buf);
+}
+
+static char *do_warning_if(int argc, char *argv[])
+{
+	if (!strcmp(argv[0], "y"))
+		fprintf(stderr, "%s:%d: %s\n",
+			current_file->name, yylineno, argv[1]);
+
+	return xstrdup("");
+}
+
+static const struct function function_table[] = {
+	/* Name		MIN	MAX	Function */
+	{ "error-if",	2,	2,	do_error_if },
+	{ "filename",	0,	0,	do_filename },
+	{ "info",	1,	1,	do_info },
+	{ "lineno",	0,	0,	do_lineno },
+	{ "shell",	1,	1,	do_shell },
+	{ "warning-if",	2,	2,	do_warning_if },
+};
+
+#define FUNCTION_MAX_ARGS		16
+
+static char *function_expand(const char *name, int argc, char *argv[])
+{
+	const struct function *f;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(function_table); i++) {
+		f = &function_table[i];
+		if (strcmp(f->name, name))
+			continue;
+
+		if (argc < f->min_args)
+			pperror("too few function arguments passed to '%s'",
+				name);
+
+		if (argc > f->max_args)
+			pperror("too many function arguments passed to '%s'",
+				name);
+
+		return f->func(argc, argv);
+	}
+
+	return NULL;
+}
+
+/*
+ * Variables (and user-defined functions)
+ */
+static LIST_HEAD(variable_list);
+
+struct variable {
+	char *name;
+	char *value;
+	enum variable_flavor flavor;
+	int exp_count;
+	struct list_head node;
+};
+
+static struct variable *variable_lookup(const char *name)
+{
+	struct variable *v;
+
+	list_for_each_entry(v, &variable_list, node) {
+		if (!strcmp(name, v->name))
+			return v;
+	}
+
+	return NULL;
+}
+
+static char *variable_expand(const char *name, int argc, char *argv[])
+{
+	struct variable *v;
+	char *res;
+
+	v = variable_lookup(name);
+	if (!v)
+		return NULL;
+
+	if (argc == 0 && v->exp_count)
+		pperror("Recursive variable '%s' references itself (eventually)",
+			name);
+
+	if (v->exp_count > 1000)
+		pperror("Too deep recursive expansion");
+
+	v->exp_count++;
+
+	if (v->flavor == VAR_RECURSIVE)
+		res = expand_string_with_args(v->value, argc, argv);
+	else
+		res = xstrdup(v->value);
+
+	v->exp_count--;
+
+	return res;
+}
+
+void variable_add(const char *name, const char *value,
+		  enum variable_flavor flavor)
+{
+	struct variable *v;
+	char *new_value;
+	bool append = false;
+
+	v = variable_lookup(name);
+	if (v) {
+		/* For defined variables, += inherits the existing flavor */
+		if (flavor == VAR_APPEND) {
+			flavor = v->flavor;
+			append = true;
+		} else {
+			free(v->value);
+		}
+	} else {
+		/* For undefined variables, += assumes the recursive flavor */
+		if (flavor == VAR_APPEND)
+			flavor = VAR_RECURSIVE;
+
+		v = xmalloc(sizeof(*v));
+		v->name = xstrdup(name);
+		v->exp_count = 0;
+		list_add_tail(&v->node, &variable_list);
+	}
+
+	v->flavor = flavor;
+
+	if (flavor == VAR_SIMPLE)
+		new_value = expand_string(value);
+	else
+		new_value = xstrdup(value);
+
+	if (append) {
+		v->value = xrealloc(v->value,
+				    strlen(v->value) + strlen(new_value) + 2);
+		strcat(v->value, " ");
+		strcat(v->value, new_value);
+		free(new_value);
+	} else {
+		v->value = new_value;
+	}
+}
+
+static void variable_del(struct variable *v)
+{
+	list_del(&v->node);
+	free(v->name);
+	free(v->value);
+	free(v);
+}
+
+void variable_all_del(void)
+{
+	struct variable *v, *tmp;
+
+	list_for_each_entry_safe(v, tmp, &variable_list, node)
+		variable_del(v);
+}
+
+/*
+ * Evaluate a clause with arguments.  argc/argv are arguments from the upper
+ * function call.
+ *
+ * Returned string must be freed when done
+ */
+static char *eval_clause(const char *str, size_t len, int argc, char *argv[])
+{
+	char *tmp, *name, *res, *endptr, *prev, *p;
+	int new_argc = 0;
+	char *new_argv[FUNCTION_MAX_ARGS];
+	int nest = 0;
+	int i;
+	unsigned long n;
+
+	tmp = xstrndup(str, len);
+
+	/*
+	 * If variable name is '1', '2', etc.  It is generally an argument
+	 * from a user-function call (i.e. local-scope variable).  If not
+	 * available, then look-up global-scope variables.
+	 */
+	n = strtoul(tmp, &endptr, 10);
+	if (!*endptr && n > 0 && n <= argc) {
+		res = xstrdup(argv[n - 1]);
+		goto free_tmp;
+	}
+
+	prev = p = tmp;
+
+	/*
+	 * Split into tokens
+	 * The function name and arguments are separated by a comma.
+	 * For example, if the function call is like this:
+	 *   $(foo,$(x),$(y))
+	 *
+	 * The input string for this helper should be:
+	 *   foo,$(x),$(y)
+	 *
+	 * and split into:
+	 *   new_argv[0] = 'foo'
+	 *   new_argv[1] = '$(x)'
+	 *   new_argv[2] = '$(y)'
+	 */
+	while (*p) {
+		if (nest == 0 && *p == ',') {
+			*p = 0;
+			if (new_argc >= FUNCTION_MAX_ARGS)
+				pperror("too many function arguments");
+			new_argv[new_argc++] = prev;
+			prev = p + 1;
+		} else if (*p == '(') {
+			nest++;
+		} else if (*p == ')') {
+			nest--;
+		}
+
+		p++;
+	}
+	new_argv[new_argc++] = prev;
+
+	/*
+	 * Shift arguments
+	 * new_argv[0] represents a function name or a variable name.  Put it
+	 * into 'name', then shift the rest of the arguments.  This simplifies
+	 * 'const' handling.
+	 */
+	name = expand_string_with_args(new_argv[0], argc, argv);
+	new_argc--;
+	for (i = 0; i < new_argc; i++)
+		new_argv[i] = expand_string_with_args(new_argv[i + 1],
+						      argc, argv);
+
+	/* Search for variables */
+	res = variable_expand(name, new_argc, new_argv);
+	if (res)
+		goto free;
+
+	/* Look for built-in functions */
+	res = function_expand(name, new_argc, new_argv);
+	if (res)
+		goto free;
+
+	/* Last, try environment variable */
+	if (new_argc == 0) {
+		res = env_expand(name);
+		if (res)
+			goto free;
+	}
+
+	res = xstrdup("");
+free:
+	for (i = 0; i < new_argc; i++)
+		free(new_argv[i]);
+	free(name);
+free_tmp:
+	free(tmp);
+
+	return res;
+}
+
+/*
+ * Expand a string that follows '$'
+ *
+ * For example, if the input string is
+ *     ($(FOO)$($(BAR)))$(BAZ)
+ * this helper evaluates
+ *     $($(FOO)$($(BAR)))
+ * and returns a new string containing the expansion (note that the string is
+ * recursively expanded), also advancing 'str' to point to the next character
+ * after the corresponding closing parenthesis, in this case, *str will be
+ *     $(BAR)
+ */
+static char *expand_dollar_with_args(const char **str, int argc, char *argv[])
+{
+	const char *p = *str;
+	const char *q;
+	int nest = 0;
+
+	/*
+	 * In Kconfig, variable/function references always start with "$(".
+	 * Neither single-letter variables as in $A nor curly braces as in ${CC}
+	 * are supported.  '$' not followed by '(' loses its special meaning.
+	 */
+	if (*p != '(') {
+		*str = p;
+		return xstrdup("$");
+	}
+
+	p++;
+	q = p;
+	while (*q) {
+		if (*q == '(') {
+			nest++;
+		} else if (*q == ')') {
+			if (nest-- == 0)
+				break;
+		}
+		q++;
+	}
+
+	if (!*q)
+		pperror("unterminated reference to '%s': missing ')'", p);
+
+	/* Advance 'str' to after the expanded initial portion of the string */
+	*str = q + 1;
+
+	return eval_clause(p, q - p, argc, argv);
+}
+
+char *expand_dollar(const char **str)
+{
+	return expand_dollar_with_args(str, 0, NULL);
+}
+
+static char *__expand_string(const char **str, bool (*is_end)(char c),
+			     int argc, char *argv[])
+{
+	const char *in, *p;
+	char *expansion, *out;
+	size_t in_len, out_len;
+
+	out = xmalloc(1);
+	*out = 0;
+	out_len = 1;
+
+	p = in = *str;
+
+	while (1) {
+		if (*p == '$') {
+			in_len = p - in;
+			p++;
+			expansion = expand_dollar_with_args(&p, argc, argv);
+			out_len += in_len + strlen(expansion);
+			out = xrealloc(out, out_len);
+			strncat(out, in, in_len);
+			strcat(out, expansion);
+			free(expansion);
+			in = p;
+			continue;
+		}
+
+		if (is_end(*p))
+			break;
+
+		p++;
+	}
+
+	in_len = p - in;
+	out_len += in_len;
+	out = xrealloc(out, out_len);
+	strncat(out, in, in_len);
+
+	/* Advance 'str' to the end character */
+	*str = p;
+
+	return out;
+}
+
+static bool is_end_of_str(char c)
+{
+	return !c;
+}
+
+/*
+ * Expand variables and functions in the given string.  Undefined variables
+ * expand to an empty string.
+ * The returned string must be freed when done.
+ */
+static char *expand_string_with_args(const char *in, int argc, char *argv[])
+{
+	return __expand_string(&in, is_end_of_str, argc, argv);
+}
+
+static char *expand_string(const char *in)
+{
+	return expand_string_with_args(in, 0, NULL);
+}
+
+static bool is_end_of_token(char c)
+{
+	/* Why are '.' and '/' valid characters for symbols? */
+	return !(isalnum(c) || c == '_' || c == '-' || c == '.' || c == '/');
+}
+
+/*
+ * Expand variables in a token.  The parsing stops when a token separater
+ * (in most cases, it is a whitespace) is encountered.  'str' is updated to
+ * point to the next character.
+ *
+ * The returned string must be freed when done.
+ */
+char *expand_one_token(const char **str)
+{
+	return __expand_string(str, is_end_of_token, 0, NULL);
+}
diff --git a/scripts/config/qconf-cfg.sh b/scripts/config/qconf-cfg.sh
new file mode 100755
index 0000000000..02ccc0ae10
--- /dev/null
+++ b/scripts/config/qconf-cfg.sh
@@ -0,0 +1,32 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+
+PKG="Qt5Core Qt5Gui Qt5Widgets"
+PKG2="QtCore QtGui"
+
+if [ -z "$(command -v pkg-config)" ]; then
+	echo >&2 "*"
+	echo >&2 "* 'make xconfig' requires 'pkg-config'. Please install it."
+	echo >&2 "*"
+	exit 1
+fi
+
+if pkg-config --exists $PKG; then
+	echo cflags=\"-std=c++11 -fPIC $(pkg-config --cflags Qt5Core Qt5Gui Qt5Widgets)\"
+	echo libs=\"$(pkg-config --libs $PKG)\"
+	echo moc=\"$(pkg-config --variable=host_bins Qt5Core)/moc\"
+	exit 0
+fi
+
+if pkg-config --exists $PKG2; then
+	echo cflags=\"$(pkg-config --cflags $PKG2)\"
+	echo libs=\"$(pkg-config --libs $PKG2)\"
+	echo moc=\"$(pkg-config --variable=moc_location QtCore)\"
+	exit 0
+fi
+
+echo >&2 "*"
+echo >&2 "* Could not find Qt via pkg-config."
+echo >&2 "* Please install either Qt 4.8 or 5.x. and make sure it's in PKG_CONFIG_PATH"
+echo >&2 "*"
+exit 1
diff --git a/scripts/config/qconf.cc b/scripts/config/qconf.cc
index fc55559922..82773cc35d 100644
--- a/scripts/config/qconf.cc
+++ b/scripts/config/qconf.cc
@@ -1,7 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
  * Copyright (C) 2015 Boris Barbulovski <bbarbulovski@gmail.com>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <qglobal.h>
@@ -32,12 +32,8 @@
 #include "qconf.h"
 
 #include "qconf.moc"
-#include "images.c"
+#include "images.h"
 
-#ifdef _
-# undef _
-# define _ qgettext
-#endif
 
 static QApplication *configApp;
 static ConfigSettings *configSettings;
@@ -46,12 +42,7 @@ QAction *ConfigMainWindow::saveAction;
 
 static inline QString qgettext(const char* str)
 {
-	return QString::fromLocal8Bit(gettext(str));
-}
-
-static inline QString qgettext(const QString& str)
-{
-	return QString::fromLocal8Bit(gettext(str.toLatin1()));
+	return QString::fromLocal8Bit(str);
 }
 
 ConfigSettings::ConfigSettings()
@@ -65,11 +56,19 @@ ConfigSettings::ConfigSettings()
 QList<int> ConfigSettings::readSizes(const QString& key, bool *ok)
 {
 	QList<int> result;
-	QStringList entryList = value(key).toStringList();
-	QStringList::Iterator it;
 
-	for (it = entryList.begin(); it != entryList.end(); ++it)
-		result.push_back((*it).toInt());
+	if (contains(key))
+	{
+		QStringList entryList = value(key).toStringList();
+		QStringList::Iterator it;
+
+		for (it = entryList.begin(); it != entryList.end(); ++it)
+			result.push_back((*it).toInt());
+
+		*ok = true;
+	}
+	else
+		*ok = false;
 
 	return result;
 }
@@ -119,7 +118,7 @@ void ConfigItem::updateMenu(void)
 
 	sym = menu->sym;
 	prop = menu->prompt;
-	prompt = _(menu_get_prompt(menu));
+	prompt = qgettext(menu_get_prompt(menu));
 
 	if (prop) switch (prop->type) {
 	case P_MENU:
@@ -153,7 +152,7 @@ void ConfigItem::updateMenu(void)
 	case S_TRISTATE:
 		char ch;
 
-		if (!sym_is_changable(sym) && list->optMode == normalOpt) {
+		if (!sym_is_changeable(sym) && list->optMode == normalOpt) {
 			setPixmap(promptColIdx, QIcon());
 			setText(noColIdx, QString::null);
 			setText(modColIdx, QString::null);
@@ -208,7 +207,7 @@ void ConfigItem::updateMenu(void)
 		break;
 	}
 	if (!sym_has_value(sym) && visible)
-		prompt += _(" (NEW)");
+		prompt += " (NEW)";
 set_prompt:
 	setText(promptColIdx, prompt);
 }
@@ -319,7 +318,7 @@ ConfigList::ConfigList(ConfigView* p, const char *name)
 	setVerticalScrollMode(ScrollPerPixel);
 	setHorizontalScrollMode(ScrollPerPixel);
 
-	setHeaderLabels(QStringList() << _("Option") << _("Name") << "N" << "M" << "Y" << _("Value"));
+	setHeaderLabels(QStringList() << "Option" << "Name" << "N" << "M" << "Y" << "Value");
 
 	connect(this, SIGNAL(itemSelectionChanged(void)),
 		SLOT(updateSelection(void)));
@@ -875,7 +874,7 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 			QAction *action;
 
 			headerPopup = new QMenu(this);
-			action = new QAction(_("Show Name"), this);
+			action = new QAction("Show Name", this);
 			  action->setCheckable(true);
 			  connect(action, SIGNAL(toggled(bool)),
 				  parent(), SLOT(setShowName(bool)));
@@ -883,7 +882,7 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 				  action, SLOT(setOn(bool)));
 			  action->setChecked(showName);
 			  headerPopup->addAction(action);
-			action = new QAction(_("Show Range"), this);
+			action = new QAction("Show Range", this);
 			  action->setCheckable(true);
 			  connect(action, SIGNAL(toggled(bool)),
 				  parent(), SLOT(setShowRange(bool)));
@@ -891,7 +890,7 @@ void ConfigList::contextMenuEvent(QContextMenuEvent *e)
 				  action, SLOT(setOn(bool)));
 			  action->setChecked(showRange);
 			  headerPopup->addAction(action);
-			action = new QAction(_("Show Data"), this);
+			action = new QAction("Show Data", this);
 			  action->setCheckable(true);
 			  connect(action, SIGNAL(toggled(bool)),
 				  parent(), SLOT(setShowData(bool)));
@@ -1014,7 +1013,7 @@ ConfigInfoView::ConfigInfoView(QWidget* parent, const char *name)
 
 	if (!objectName().isEmpty()) {
 		configSettings->beginGroup(objectName());
-		_showDebug = configSettings->value("/showDebug", false).toBool();
+		setShowDebug(configSettings->value("/showDebug", false).toBool());
 		configSettings->endGroup();
 		connect(configApp, SIGNAL(aboutToQuit()), SLOT(saveSettings()));
 	}
@@ -1078,7 +1077,7 @@ void ConfigInfoView::menuInfo(void)
 	if (sym) {
 		if (_menu->prompt) {
 			head += "<big><b>";
-			head += print_filter(_(_menu->prompt->text));
+			head += print_filter(_menu->prompt->text);
 			head += "</b></big>";
 			if (sym->name) {
 				head += " (";
@@ -1109,7 +1108,7 @@ void ConfigInfoView::menuInfo(void)
 		str_free(&help_gstr);
 	} else if (_menu->prompt) {
 		head += "<big><b>";
-		head += print_filter(_(_menu->prompt->text));
+		head += print_filter(_menu->prompt->text);
 		head += "</b></big><br><br>";
 		if (showDebug()) {
 			if (_menu->prompt->visible.expr) {
@@ -1144,13 +1143,12 @@ QString ConfigInfoView::debug_info(struct symbol *sym)
 		case P_PROMPT:
 		case P_MENU:
 			debug += QString().sprintf("prompt: <a href=\"m%p\">", prop->menu);
-			debug += print_filter(_(prop->text));
+			debug += print_filter(prop->text);
 			debug += "</a><br>";
 			break;
 		case P_DEFAULT:
 		case P_SELECT:
 		case P_RANGE:
-		case P_ENV:
 			debug += prop_get_type_name(prop->type);
 			debug += ": ";
 			expr_print(prop->expr, expr_print_help, &debug, E_NONE);
@@ -1226,7 +1224,7 @@ void ConfigInfoView::expr_print_help(void *data, struct symbol *sym, const char
 QMenu* ConfigInfoView::createStandardContextMenu(const QPoint & pos)
 {
 	QMenu* popup = Parent::createStandardContextMenu(pos);
-	QAction* action = new QAction(_("Show Debug Info"), popup);
+	QAction* action = new QAction("Show Debug Info", popup);
 	  action->setCheckable(true);
 	  connect(action, SIGNAL(toggled(bool)), SLOT(setShowDebug(bool)));
 	  connect(this, SIGNAL(showDebugChanged(bool)), action, SLOT(setOn(bool)));
@@ -1253,11 +1251,11 @@ ConfigSearchWindow::ConfigSearchWindow(ConfigMainWindow* parent, const char *nam
 	QHBoxLayout* layout2 = new QHBoxLayout(0);
 	layout2->setContentsMargins(0, 0, 0, 0);
 	layout2->setSpacing(6);
-	layout2->addWidget(new QLabel(_("Find:"), this));
+	layout2->addWidget(new QLabel("Find:", this));
 	editField = new QLineEdit(this);
 	connect(editField, SIGNAL(returnPressed()), SLOT(search()));
 	layout2->addWidget(editField);
-	searchButton = new QPushButton(_("Search"), this);
+	searchButton = new QPushButton("Search", this);
 	searchButton->setAutoDefault(false);
 	connect(searchButton, SIGNAL(clicked()), SLOT(search()));
 	layout2->addWidget(searchButton);
@@ -1379,44 +1377,46 @@ ConfigMainWindow::ConfigMainWindow(void)
 	toolBar = new QToolBar("Tools", this);
 	addToolBar(toolBar);
 
-	backAction = new QAction(QPixmap(xpm_back), _("Back"), this);
+	backAction = new QAction(QPixmap(xpm_back), "Back", this);
 	  connect(backAction, SIGNAL(triggered(bool)), SLOT(goBack()));
 	  backAction->setEnabled(false);
-	QAction *quitAction = new QAction(_("&Quit"), this);
+	QAction *quitAction = new QAction("&Quit", this);
 	quitAction->setShortcut(Qt::CTRL + Qt::Key_Q);
 	  connect(quitAction, SIGNAL(triggered(bool)), SLOT(close()));
-	QAction *loadAction = new QAction(QPixmap(xpm_load), _("&Load"), this);
+	QAction *loadAction = new QAction(QPixmap(xpm_load), "&Load", this);
 	loadAction->setShortcut(Qt::CTRL + Qt::Key_L);
 	  connect(loadAction, SIGNAL(triggered(bool)), SLOT(loadConfig()));
-	saveAction = new QAction(QPixmap(xpm_save), _("&Save"), this);
+	saveAction = new QAction(QPixmap(xpm_save), "&Save", this);
 	saveAction->setShortcut(Qt::CTRL + Qt::Key_S);
 	  connect(saveAction, SIGNAL(triggered(bool)), SLOT(saveConfig()));
 	conf_set_changed_callback(conf_changed);
 	// Set saveAction's initial state
 	conf_changed();
-	QAction *saveAsAction = new QAction(_("Save &As..."), this);
+	configname = xstrdup(conf_get_configname());
+
+	QAction *saveAsAction = new QAction("Save &As...", this);
 	  connect(saveAsAction, SIGNAL(triggered(bool)), SLOT(saveConfigAs()));
-	QAction *searchAction = new QAction(_("&Find"), this);
+	QAction *searchAction = new QAction("&Find", this);
 	searchAction->setShortcut(Qt::CTRL + Qt::Key_F);
 	  connect(searchAction, SIGNAL(triggered(bool)), SLOT(searchConfig()));
-	singleViewAction = new QAction(QPixmap(xpm_single_view), _("Single View"), this);
+	singleViewAction = new QAction(QPixmap(xpm_single_view), "Single View", this);
 	singleViewAction->setCheckable(true);
 	  connect(singleViewAction, SIGNAL(triggered(bool)), SLOT(showSingleView()));
-	splitViewAction = new QAction(QPixmap(xpm_split_view), _("Split View"), this);
+	splitViewAction = new QAction(QPixmap(xpm_split_view), "Split View", this);
 	splitViewAction->setCheckable(true);
 	  connect(splitViewAction, SIGNAL(triggered(bool)), SLOT(showSplitView()));
-	fullViewAction = new QAction(QPixmap(xpm_tree_view), _("Full View"), this);
+	fullViewAction = new QAction(QPixmap(xpm_tree_view), "Full View", this);
 	fullViewAction->setCheckable(true);
 	  connect(fullViewAction, SIGNAL(triggered(bool)), SLOT(showFullView()));
 
-	QAction *showNameAction = new QAction(_("Show Name"), this);
+	QAction *showNameAction = new QAction("Show Name", this);
 	  showNameAction->setCheckable(true);
 	  connect(showNameAction, SIGNAL(toggled(bool)), configView, SLOT(setShowName(bool)));
 	  showNameAction->setChecked(configView->showName());
-	QAction *showRangeAction = new QAction(_("Show Range"), this);
+	QAction *showRangeAction = new QAction("Show Range", this);
 	  showRangeAction->setCheckable(true);
 	  connect(showRangeAction, SIGNAL(toggled(bool)), configView, SLOT(setShowRange(bool)));
-	QAction *showDataAction = new QAction(_("Show Data"), this);
+	QAction *showDataAction = new QAction("Show Data", this);
 	  showDataAction->setCheckable(true);
 	  connect(showDataAction, SIGNAL(toggled(bool)), configView, SLOT(setShowData(bool)));
 
@@ -1427,21 +1427,21 @@ ConfigMainWindow::ConfigMainWindow(void)
 	connect(optGroup, SIGNAL(triggered(QAction *)), menuView,
 		SLOT(setOptionMode(QAction *)));
 
-	configView->showNormalAction = new QAction(_("Show Normal Options"), optGroup);
-	configView->showAllAction = new QAction(_("Show All Options"), optGroup);
-	configView->showPromptAction = new QAction(_("Show Prompt Options"), optGroup);
+	configView->showNormalAction = new QAction("Show Normal Options", optGroup);
+	configView->showAllAction = new QAction("Show All Options", optGroup);
+	configView->showPromptAction = new QAction("Show Prompt Options", optGroup);
 	configView->showNormalAction->setCheckable(true);
 	configView->showAllAction->setCheckable(true);
 	configView->showPromptAction->setCheckable(true);
 
-	QAction *showDebugAction = new QAction( _("Show Debug Info"), this);
+	QAction *showDebugAction = new QAction("Show Debug Info", this);
 	  showDebugAction->setCheckable(true);
 	  connect(showDebugAction, SIGNAL(toggled(bool)), helpText, SLOT(setShowDebug(bool)));
 	  showDebugAction->setChecked(helpText->showDebug());
 
-	QAction *showIntroAction = new QAction( _("Introduction"), this);
+	QAction *showIntroAction = new QAction("Introduction", this);
 	  connect(showIntroAction, SIGNAL(triggered(bool)), SLOT(showIntro()));
-	QAction *showAboutAction = new QAction( _("About"), this);
+	QAction *showAboutAction = new QAction("About", this);
 	  connect(showAboutAction, SIGNAL(triggered(bool)), SLOT(showAbout()));
 
 	// init tool bar
@@ -1455,7 +1455,7 @@ ConfigMainWindow::ConfigMainWindow(void)
 	toolBar->addAction(fullViewAction);
 
 	// create config menu
-	QMenu* config = menu->addMenu(_("&File"));
+	QMenu* config = menu->addMenu("&File");
 	config->addAction(loadAction);
 	config->addAction(saveAction);
 	config->addAction(saveAsAction);
@@ -1463,21 +1463,22 @@ ConfigMainWindow::ConfigMainWindow(void)
 	config->addAction(quitAction);
 
 	// create edit menu
-	QMenu* editMenu = menu->addMenu(_("&Edit"));
+	QMenu* editMenu = menu->addMenu("&Edit");
 	editMenu->addAction(searchAction);
 
 	// create options menu
-	QMenu* optionMenu = menu->addMenu(_("&Option"));
+	QMenu* optionMenu = menu->addMenu("&Option");
 	optionMenu->addAction(showNameAction);
 	optionMenu->addAction(showRangeAction);
 	optionMenu->addAction(showDataAction);
 	optionMenu->addSeparator();
 	optionMenu->addActions(optGroup->actions());
 	optionMenu->addSeparator();
+	optionMenu->addAction(showDebugAction);
 
 	// create help menu
 	menu->addSeparator();
-	QMenu* helpMenu = menu->addMenu(_("&Help"));
+	QMenu* helpMenu = menu->addMenu("&Help");
 	helpMenu->addAction(showIntroAction);
 	helpMenu->addAction(showAboutAction);
 
@@ -1521,29 +1522,57 @@ ConfigMainWindow::ConfigMainWindow(void)
 
 void ConfigMainWindow::loadConfig(void)
 {
-	QString s = QFileDialog::getOpenFileName(this, "", conf_get_configname());
-	if (s.isNull())
+	QString str;
+	QByteArray ba;
+	const char *name;
+
+	str = QFileDialog::getOpenFileName(this, "", configname);
+	if (str.isNull())
 		return;
-	if (conf_read(QFile::encodeName(s)))
-		QMessageBox::information(this, "qconf", _("Unable to load configuration!"));
+
+	ba = str.toLocal8Bit();
+	name = ba.data();
+
+	if (conf_read(name))
+		QMessageBox::information(this, "qconf", "Unable to load configuration!");
+
+	free(configname);
+	configname = xstrdup(name);
+
 	ConfigView::updateListAll();
 }
 
 bool ConfigMainWindow::saveConfig(void)
 {
-	if (conf_write(NULL)) {
-		QMessageBox::information(this, "qconf", _("Unable to save configuration!"));
+	if (conf_write(configname)) {
+		QMessageBox::information(this, "qconf", "Unable to save configuration!");
 		return false;
 	}
+	conf_write_autoconf(0);
+
 	return true;
 }
 
 void ConfigMainWindow::saveConfigAs(void)
 {
-	QString s = QFileDialog::getSaveFileName(this, "", conf_get_configname());
-	if (s.isNull())
+	QString str;
+	QByteArray ba;
+	const char *name;
+
+	str = QFileDialog::getSaveFileName(this, "", configname);
+	if (str.isNull())
 		return;
-	saveConfig();
+
+	ba = str.toLocal8Bit();
+	name = ba.data();
+
+	if (conf_write(name)) {
+		QMessageBox::information(this, "qconf", "Unable to save configuration!");
+	}
+	conf_write_autoconf(0);
+
+	free(configname);
+	configname = xstrdup(name);
 }
 
 void ConfigMainWindow::searchConfig(void)
@@ -1714,11 +1743,11 @@ void ConfigMainWindow::closeEvent(QCloseEvent* e)
 		e->accept();
 		return;
 	}
-	QMessageBox mb("qconf", _("Save configuration?"), QMessageBox::Warning,
+	QMessageBox mb("qconf", "Save configuration?", QMessageBox::Warning,
 			QMessageBox::Yes | QMessageBox::Default, QMessageBox::No, QMessageBox::Cancel | QMessageBox::Escape);
-	mb.setButtonText(QMessageBox::Yes, _("&Save Changes"));
-	mb.setButtonText(QMessageBox::No, _("&Discard Changes"));
-	mb.setButtonText(QMessageBox::Cancel, _("Cancel Exit"));
+	mb.setButtonText(QMessageBox::Yes, "&Save Changes");
+	mb.setButtonText(QMessageBox::No, "&Discard Changes");
+	mb.setButtonText(QMessageBox::Cancel, "Cancel Exit");
 	switch (mb.exec()) {
 	case QMessageBox::Yes:
 		if (saveConfig())
@@ -1737,7 +1766,7 @@ void ConfigMainWindow::closeEvent(QCloseEvent* e)
 
 void ConfigMainWindow::showIntro(void)
 {
-	static const QString str = _("Welcome to the qconf graphical configuration tool.\n\n"
+	static const QString str = "Welcome to the qconf graphical configuration tool.\n\n"
 		"For each option, a blank box indicates the feature is disabled, a check\n"
 		"indicates it is enabled, and a dot indicates that it is to be compiled\n"
 		"as a module.  Clicking on the box will cycle through the three states.\n\n"
@@ -1747,16 +1776,16 @@ void ConfigMainWindow::showIntro(void)
 		"options must be enabled to support the option you are interested in, you can\n"
 		"still view the help of a grayed-out option.\n\n"
 		"Toggling Show Debug Info under the Options menu will show the dependencies,\n"
-		"which you can then match by examining other options.\n\n");
+		"which you can then match by examining other options.\n\n";
 
 	QMessageBox::information(this, "qconf", str);
 }
 
 void ConfigMainWindow::showAbout(void)
 {
-	static const QString str = _("qconf is Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>.\n"
+	static const QString str = "qconf is Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>.\n"
 		"Copyright (C) 2015 Boris Barbulovski <bbarbulovski@gmail.com>.\n\n"
-		"Bug reports and feature request can also be entered at http://bugzilla.kernel.org/\n");
+		"Bug reports and feature request can also be entered at http://bugzilla.kernel.org/\n";
 
 	QMessageBox::information(this, "qconf", str);
 }
@@ -1817,7 +1846,7 @@ static const char *progname;
 
 static void usage(void)
 {
-	printf(_("%s [-s] <config>\n").toLatin1().constData(), progname);
+	printf("%s [-s] <config>\n", progname);
 	exit(0);
 }
 
@@ -1826,9 +1855,6 @@ int main(int ac, char** av)
 	ConfigMainWindow* v;
 	const char *name;
 
-	bindtextdomain(PACKAGE, LOCALEDIR);
-	textdomain(PACKAGE);
-
 	progname = av[0];
 	configApp = new QApplication(ac, av);
 	if (ac > 1 && av[1][0] == '-') {
diff --git a/scripts/config/qconf.h b/scripts/config/qconf.h
index a40036d1b0..45bfe9b2b9 100644
--- a/scripts/config/qconf.h
+++ b/scripts/config/qconf.h
@@ -1,6 +1,6 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <QTextBrowser>
@@ -291,6 +291,7 @@ protected:
 class ConfigMainWindow : public QMainWindow {
 	Q_OBJECT
 
+	char *configname;
 	static QAction *saveAction;
 	static void conf_changed(void);
 public:
diff --git a/scripts/config/symbol.c b/scripts/config/symbol.c
index 31f268a4ee..b1dd9be29d 100644
--- a/scripts/config/symbol.c
+++ b/scripts/config/symbol.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <ctype.h>
@@ -33,33 +33,6 @@ struct symbol *sym_defconfig_list;
 struct symbol *modules_sym;
 tristate modules_val;
 
-struct expr *sym_env_list;
-
-static void sym_add_default(struct symbol *sym, const char *def)
-{
-	struct property *prop = prop_alloc(P_DEFAULT, sym);
-
-	prop->expr = expr_alloc_symbol(sym_lookup(def, SYMBOL_CONST));
-}
-
-void sym_init(void)
-{
-	struct symbol *sym;
-	struct utsname uts;
-	static bool inited = false;
-
-	if (inited)
-		return;
-	inited = true;
-
-	uname(&uts);
-
-	sym = sym_lookup("UNAME_RELEASE", 0);
-	sym->type = S_STRING;
-	sym->flags |= SYMBOL_AUTO;
-	sym_add_default(sym, uts.release);
-}
-
 enum symbol_type sym_get_type(struct symbol *sym)
 {
 	enum symbol_type type = sym->type;
@@ -77,7 +50,7 @@ const char *sym_type_name(enum symbol_type type)
 {
 	switch (type) {
 	case S_BOOLEAN:
-		return "boolean";
+		return "bool";
 	case S_TRISTATE:
 		return "tristate";
 	case S_INT:
@@ -88,8 +61,6 @@ const char *sym_type_name(enum symbol_type type)
 		return "string";
 	case S_UNKNOWN:
 		return "unknown";
-	case S_OTHER:
-		break;
 	}
 	return "???";
 }
@@ -103,15 +74,6 @@ struct property *sym_get_choice_prop(struct symbol *sym)
 	return NULL;
 }
 
-struct property *sym_get_env_prop(struct symbol *sym)
-{
-	struct property *prop;
-
-	for_all_properties(sym, prop, P_ENV)
-		return prop;
-	return NULL;
-}
-
 static struct property *sym_get_default_prop(struct symbol *sym)
 {
 	struct property *prop;
@@ -124,7 +86,7 @@ static struct property *sym_get_default_prop(struct symbol *sym)
 	return NULL;
 }
 
-static struct property *sym_get_range_prop(struct symbol *sym)
+struct property *sym_get_range_prop(struct symbol *sym)
 {
 	struct property *prop;
 
@@ -183,7 +145,7 @@ static void sym_validate_range(struct symbol *sym)
 		sprintf(str, "%lld", val2);
 	else
 		sprintf(str, "0x%llx", val2);
-	sym->curr.val = strdup(str);
+	sym->curr.val = xstrdup(str);
 }
 
 static void sym_set_changed(struct symbol *sym)
@@ -243,7 +205,7 @@ static void sym_calc_visibility(struct symbol *sym)
 	tri = yes;
 	if (sym->dir_dep.expr)
 		tri = expr_calc_value(sym->dir_dep.expr);
-	if (tri == mod)
+	if (tri == mod && sym_get_type(sym) == S_BOOLEAN)
 		tri = yes;
 	if (sym->dir_dep.tri != tri) {
 		sym->dir_dep.tri = tri;
@@ -258,6 +220,15 @@ static void sym_calc_visibility(struct symbol *sym)
 		sym->rev_dep.tri = tri;
 		sym_set_changed(sym);
 	}
+	tri = no;
+	if (sym->implied.expr && sym->dir_dep.tri != no)
+		tri = expr_calc_value(sym->implied.expr);
+	if (tri == mod && sym_get_type(sym) == S_BOOLEAN)
+		tri = yes;
+	if (sym->implied.tri != tri) {
+		sym->implied.tri = tri;
+		sym_set_changed(sym);
+	}
 }
 
 /*
@@ -362,11 +333,13 @@ void sym_calc_value(struct symbol *sym)
 		sym->curr.tri = no;
 		return;
 	}
-	if (!sym_is_choice_value(sym))
-		sym->flags &= ~SYMBOL_WRITE;
+	sym->flags &= ~SYMBOL_WRITE;
 
 	sym_calc_visibility(sym);
 
+	if (sym->visible != no)
+		sym->flags |= SYMBOL_WRITE;
+
 	/* set default if recursively called */
 	sym->curr = newval;
 
@@ -381,7 +354,6 @@ void sym_calc_value(struct symbol *sym)
 				/* if the symbol is visible use the user value
 				 * if available, otherwise try the default value
 				 */
-				sym->flags |= SYMBOL_WRITE;
 				if (sym_has_value(sym)) {
 					newval.tri = EXPR_AND(sym->def[S_DEF_USER].tri,
 							      sym->visible);
@@ -397,26 +369,28 @@ void sym_calc_value(struct symbol *sym)
 					newval.tri = EXPR_AND(expr_calc_value(prop->expr),
 							      prop->visible.tri);
 				}
+				if (sym->implied.tri != no) {
+					sym->flags |= SYMBOL_WRITE;
+					newval.tri = EXPR_OR(newval.tri, sym->implied.tri);
+				}
 			}
 		calc_newval:
-			if (sym->dir_dep.tri == no && sym->rev_dep.tri != no) {
+			if (sym->dir_dep.tri < sym->rev_dep.tri) {
 				newval.tri = no;
 			} else {
 				newval.tri = EXPR_OR(newval.tri, sym->rev_dep.tri);
 			}
 		}
-		if (newval.tri == mod && sym_get_type(sym) == S_BOOLEAN)
+		if (newval.tri == mod &&
+		    (sym_get_type(sym) == S_BOOLEAN || sym->implied.tri == yes))
 			newval.tri = yes;
 		break;
 	case S_STRING:
 	case S_HEX:
 	case S_INT:
-		if (sym->visible != no) {
-			sym->flags |= SYMBOL_WRITE;
-			if (sym_has_value(sym)) {
-				newval.val = sym->def[S_DEF_USER].val;
-				break;
-			}
+		if (sym->visible != no && sym_has_value(sym)) {
+			newval.val = sym->def[S_DEF_USER].val;
+			break;
 		}
 		prop = sym_get_default_prop(sym);
 		if (prop) {
@@ -458,7 +432,7 @@ void sym_calc_value(struct symbol *sym)
 		}
 	}
 
-	if (sym->flags & SYMBOL_AUTO)
+	if (sym->flags & SYMBOL_NO_WRITE)
 		sym->flags &= ~SYMBOL_WRITE;
 
 	if (sym->flags & SYMBOL_NEED_SET_CHOICE_VALUES)
@@ -490,6 +464,8 @@ bool sym_tristate_within_range(struct symbol *sym, tristate val)
 		return false;
 	if (sym->visible <= sym->rev_dep.tri)
 		return false;
+	if (sym->implied.tri == yes && val == mod)
+		return false;
 	if (sym_is_choice_value(sym) && sym->visible == yes)
 		return val == yes;
 	return val >= sym->rev_dep.tri && val <= sym->visible;
@@ -742,6 +718,10 @@ const char *sym_get_string_default(struct symbol *sym)
 	if (sym->type == S_BOOLEAN && val == mod)
 		val = yes;
 
+	/* adjust the default value if this symbol is implied by another */
+	if (val < sym->implied.tri)
+		val = sym->implied.tri;
+
 	switch (sym->type) {
 	case S_BOOLEAN:
 	case S_TRISTATE:
@@ -755,7 +735,6 @@ const char *sym_get_string_default(struct symbol *sym)
 		return str;
 	case S_STRING:
 		return str;
-	case S_OTHER:
 	case S_UNKNOWN:
 		break;
 	}
@@ -786,7 +765,7 @@ const char *sym_get_string_value(struct symbol *sym)
 	return (const char *)sym->curr.val;
 }
 
-bool sym_is_changable(struct symbol *sym)
+bool sym_is_changeable(struct symbol *sym)
 {
 	return sym->visible > sym->rev_dep.tri;
 }
@@ -823,7 +802,7 @@ struct symbol *sym_lookup(const char *name, int flags)
 				   : !(symbol->flags & (SYMBOL_CONST|SYMBOL_CHOICE))))
 				return symbol;
 		}
-		new_name = strdup(name);
+		new_name = xstrdup(name);
 	} else {
 		new_name = NULL;
 		hash = 0;
@@ -868,55 +847,6 @@ struct symbol *sym_find(const char *name)
 	return symbol;
 }
 
-/*
- * Expand symbol's names embedded in the string given in argument. Symbols'
- * name to be expanded shall be prefixed by a '$'. Unknown symbol expands to
- * the empty string.
- */
-const char *sym_expand_string_value(const char *in)
-{
-	const char *src;
-	char *res;
-	size_t reslen;
-
-	reslen = strlen(in) + 1;
-	res = xmalloc(reslen);
-	res[0] = '\0';
-
-	while ((src = strchr(in, '$'))) {
-		char *p, name[SYMBOL_MAXLENGTH];
-		const char *symval = "";
-		struct symbol *sym;
-		size_t newlen;
-
-		strncat(res, in, src - in);
-		src++;
-
-		p = name;
-		while (isalnum(*src) || *src == '_')
-			*p++ = *src++;
-		*p = '\0';
-
-		sym = sym_find(name);
-		if (sym != NULL) {
-			sym_calc_value(sym);
-			symval = sym_get_string_value(sym);
-		}
-
-		newlen = strlen(res) + strlen(symval) + strlen(src) + 1;
-		if (newlen > reslen) {
-			reslen = newlen;
-			res = realloc(res, reslen);
-		}
-
-		strcat(res, symval);
-		in = src;
-	}
-	strcat(res, in);
-
-	return res;
-}
-
 const char *sym_escape_string_value(const char *in)
 {
 	const char *p;
@@ -1033,7 +963,7 @@ struct symbol **sym_re_search(const char *pattern)
 	}
 	if (sym_match_arr) {
 		qsort(sym_match_arr, cnt, sizeof(struct sym_match), sym_rel_comp);
-		sym_arr = malloc((cnt+1) * sizeof(struct symbol));
+		sym_arr = malloc((cnt+1) * sizeof(struct symbol *));
 		if (!sym_arr)
 			goto sym_re_search_free;
 		for (i = 0; i < cnt; i++)
@@ -1058,7 +988,7 @@ static struct dep_stack {
 	struct dep_stack *prev, *next;
 	struct symbol *sym;
 	struct property *prop;
-	struct expr *expr;
+	struct expr **expr;
 } *check_top;
 
 static void dep_stack_insert(struct dep_stack *stack, struct symbol *sym)
@@ -1122,37 +1052,52 @@ static void sym_check_print_recursive(struct symbol *last_sym)
 		if (stack->sym == last_sym)
 			fprintf(stderr, "%s:%d:error: recursive dependency detected!\n",
 				prop->file->name, prop->lineno);
-			fprintf(stderr, "For a resolution refer to Documentation/kbuild/kconfig-language.txt\n");
-			fprintf(stderr, "subsection \"Kconfig recursive dependency limitations\"\n");
-		if (stack->expr) {
-			fprintf(stderr, "%s:%d:\tsymbol %s %s value contains %s\n",
-				prop->file->name, prop->lineno,
+
+		if (sym_is_choice(sym)) {
+			fprintf(stderr, "%s:%d:\tchoice %s contains symbol %s\n",
+				menu->file->name, menu->lineno,
+				sym->name ? sym->name : "<choice>",
+				next_sym->name ? next_sym->name : "<choice>");
+		} else if (sym_is_choice_value(sym)) {
+			fprintf(stderr, "%s:%d:\tsymbol %s is part of choice %s\n",
+				menu->file->name, menu->lineno,
 				sym->name ? sym->name : "<choice>",
-				prop_get_type_name(prop->type),
 				next_sym->name ? next_sym->name : "<choice>");
-		} else if (stack->prop) {
+		} else if (stack->expr == &sym->dir_dep.expr) {
 			fprintf(stderr, "%s:%d:\tsymbol %s depends on %s\n",
 				prop->file->name, prop->lineno,
 				sym->name ? sym->name : "<choice>",
 				next_sym->name ? next_sym->name : "<choice>");
-		} else if (sym_is_choice(sym)) {
-			fprintf(stderr, "%s:%d:\tchoice %s contains symbol %s\n",
-				menu->file->name, menu->lineno,
+		} else if (stack->expr == &sym->rev_dep.expr) {
+			fprintf(stderr, "%s:%d:\tsymbol %s is selected by %s\n",
+				prop->file->name, prop->lineno,
 				sym->name ? sym->name : "<choice>",
 				next_sym->name ? next_sym->name : "<choice>");
-		} else if (sym_is_choice_value(sym)) {
-			fprintf(stderr, "%s:%d:\tsymbol %s is part of choice %s\n",
-				menu->file->name, menu->lineno,
+		} else if (stack->expr == &sym->implied.expr) {
+			fprintf(stderr, "%s:%d:\tsymbol %s is implied by %s\n",
+				prop->file->name, prop->lineno,
 				sym->name ? sym->name : "<choice>",
 				next_sym->name ? next_sym->name : "<choice>");
+		} else if (stack->expr) {
+			fprintf(stderr, "%s:%d:\tsymbol %s %s value contains %s\n",
+				prop->file->name, prop->lineno,
+				sym->name ? sym->name : "<choice>",
+				prop_get_type_name(prop->type),
+				next_sym->name ? next_sym->name : "<choice>");
 		} else {
-			fprintf(stderr, "%s:%d:\tsymbol %s is selected by %s\n",
+			fprintf(stderr, "%s:%d:\tsymbol %s %s is visible depending on %s\n",
 				prop->file->name, prop->lineno,
 				sym->name ? sym->name : "<choice>",
+				prop_get_type_name(prop->type),
 				next_sym->name ? next_sym->name : "<choice>");
 		}
 	}
 
+	fprintf(stderr,
+		"For a resolution refer to Documentation/kbuild/kconfig-language.rst\n"
+		"subsection \"Kconfig recursive dependency limitations\"\n"
+		"\n");
+
 	if (check_top == &cv_stack)
 		dep_stack_remove();
 }
@@ -1187,7 +1132,7 @@ static struct symbol *sym_check_expr_deps(struct expr *e)
 	default:
 		break;
 	}
-	printf("Oops! How to check %d?\n", e->type);
+	fprintf(stderr, "Oops! How to check %d?\n", e->type);
 	return NULL;
 }
 
@@ -1200,12 +1145,26 @@ static struct symbol *sym_check_sym_deps(struct symbol *sym)
 
 	dep_stack_insert(&stack, sym);
 
+	stack.expr = &sym->dir_dep.expr;
+	sym2 = sym_check_expr_deps(sym->dir_dep.expr);
+	if (sym2)
+		goto out;
+
+	stack.expr = &sym->rev_dep.expr;
 	sym2 = sym_check_expr_deps(sym->rev_dep.expr);
 	if (sym2)
 		goto out;
 
+	stack.expr = &sym->implied.expr;
+	sym2 = sym_check_expr_deps(sym->implied.expr);
+	if (sym2)
+		goto out;
+
+	stack.expr = NULL;
+
 	for (prop = sym->prop; prop; prop = prop->next) {
-		if (prop->type == P_CHOICE || prop->type == P_SELECT)
+		if (prop->type == P_CHOICE || prop->type == P_SELECT ||
+		    prop->type == P_IMPLY)
 			continue;
 		stack.prop = prop;
 		sym2 = sym_check_expr_deps(prop->visible.expr);
@@ -1213,7 +1172,7 @@ static struct symbol *sym_check_sym_deps(struct symbol *sym)
 			break;
 		if (prop->type != P_DEFAULT || sym_is_choice(sym))
 			continue;
-		stack.expr = prop->expr;
+		stack.expr = &prop->expr;
 		sym2 = sym_check_expr_deps(prop->expr);
 		if (sym2)
 			break;
@@ -1291,34 +1250,9 @@ struct symbol *sym_check_deps(struct symbol *sym)
 		sym->flags &= ~SYMBOL_CHECK;
 	}
 
-	if (sym2 && sym2 == sym)
-		sym2 = NULL;
-
 	return sym2;
 }
 
-struct property *prop_alloc(enum prop_type type, struct symbol *sym)
-{
-	struct property *prop;
-	struct property **propp;
-
-	prop = xmalloc(sizeof(*prop));
-	memset(prop, 0, sizeof(*prop));
-	prop->type = type;
-	prop->sym = sym;
-	prop->file = current_file;
-	prop->lineno = zconf_lineno();
-
-	/* append property to the prop list of symbol */
-	if (sym) {
-		for (propp = &sym->prop; *propp; propp = &(*propp)->next)
-			;
-		*propp = prop;
-	}
-
-	return prop;
-}
-
 struct symbol *prop_get_symbol(struct property *prop)
 {
 	if (prop->expr && (prop->expr->type == E_SYMBOL ||
@@ -1332,8 +1266,6 @@ const char *prop_get_type_name(enum prop_type type)
 	switch (type) {
 	case P_PROMPT:
 		return "prompt";
-	case P_ENV:
-		return "env";
 	case P_COMMENT:
 		return "comment";
 	case P_MENU:
@@ -1344,6 +1276,8 @@ const char *prop_get_type_name(enum prop_type type)
 		return "choice";
 	case P_SELECT:
 		return "select";
+	case P_IMPLY:
+		return "imply";
 	case P_RANGE:
 		return "range";
 	case P_SYMBOL:
@@ -1355,32 +1289,3 @@ const char *prop_get_type_name(enum prop_type type)
 	}
 	return "unknown";
 }
-
-static void prop_add_env(const char *env)
-{
-	struct symbol *sym, *sym2;
-	struct property *prop;
-	char *p;
-
-	sym = current_entry->sym;
-	sym->flags |= SYMBOL_AUTO;
-	for_all_properties(sym, prop, P_ENV) {
-		sym2 = prop_get_symbol(prop);
-		if (strcmp(sym2->name, env))
-			menu_warn(current_entry, "redefining environment symbol from %s",
-				  sym2->name);
-		return;
-	}
-
-	prop = prop_alloc(P_ENV, sym);
-	prop->expr = expr_alloc_symbol(sym_lookup(env, SYMBOL_CONST));
-
-	sym_env_list = expr_alloc_one(E_LIST, sym_env_list);
-	sym_env_list->right.sym = sym;
-
-	p = getenv(env);
-	if (p)
-		sym_add_default(sym, p);
-	else
-		menu_warn(current_entry, "environment variable %s undefined", env);
-}
diff --git a/scripts/config/util.c b/scripts/config/util.c
index 0e76042473..29585394df 100644
--- a/scripts/config/util.c
+++ b/scripts/config/util.c
@@ -1,8 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (C) 2002-2005 Roman Zippel <zippel@linux-m68k.org>
  * Copyright (C) 2002-2005 Sam Ravnborg <sam@ravnborg.org>
- *
- * Released under the terms of the GNU GPL v2.0.
  */
 
 #include <stdarg.h>
@@ -14,69 +13,21 @@
 struct file *file_lookup(const char *name)
 {
 	struct file *file;
-	const char *file_name = sym_expand_string_value(name);
 
 	for (file = file_list; file; file = file->next) {
 		if (!strcmp(name, file->name)) {
-			free((void *)file_name);
 			return file;
 		}
 	}
 
 	file = xmalloc(sizeof(*file));
 	memset(file, 0, sizeof(*file));
-	file->name = file_name;
+	file->name = xstrdup(name);
 	file->next = file_list;
 	file_list = file;
 	return file;
 }
 
-/* write a dependency file as used by kbuild to track dependencies */
-int file_write_dep(const char *name)
-{
-	struct symbol *sym, *env_sym;
-	struct expr *e;
-	struct file *file;
-	FILE *out;
-
-	if (!name)
-		name = ".kconfig.d";
-	out = fopen("..config.tmp", "w");
-	if (!out)
-		return 1;
-	fprintf(out, "deps_config := \\\n");
-	for (file = file_list; file; file = file->next) {
-		if (file->next)
-			fprintf(out, "\t%s \\\n", file->name);
-		else
-			fprintf(out, "\t%s\n", file->name);
-	}
-	fprintf(out, "\n%s: \\\n"
-		     "\t$(deps_config)\n\n", conf_get_autoconfig_name());
-
-	expr_list_for_each_sym(sym_env_list, e, sym) {
-		struct property *prop;
-		const char *value;
-
-		prop = sym_get_env_prop(sym);
-		env_sym = prop_get_symbol(prop);
-		if (!env_sym)
-			continue;
-		value = getenv(env_sym->name);
-		if (!value)
-			value = "";
-		fprintf(out, "ifneq \"$(%s)\" \"%s\"\n", env_sym->name, value);
-		fprintf(out, "%s: FORCE\n", conf_get_autoconfig_name());
-		fprintf(out, "endif\n");
-	}
-
-	fprintf(out, "\n$(deps_config): ;\n");
-	fclose(out);
-	rename("..config.tmp", name);
-	return 0;
-}
-
-
 /* Allocate initial growable string */
 struct gstr str_new(void)
 {
@@ -104,7 +55,7 @@ void str_append(struct gstr *gs, const char *s)
 	if (s) {
 		l = strlen(gs->s) + strlen(s) + 1;
 		if (l > gs->len) {
-			gs->s   = realloc(gs->s, l);
+			gs->s = xrealloc(gs->s, l);
 			gs->len = l;
 		}
 		strcat(gs->s, s);
@@ -145,3 +96,34 @@ void *xcalloc(size_t nmemb, size_t size)
 	fprintf(stderr, "Out of memory.\n");
 	exit(1);
 }
+
+void *xrealloc(void *p, size_t size)
+{
+	p = realloc(p, size);
+	if (p)
+		return p;
+	fprintf(stderr, "Out of memory.\n");
+	exit(1);
+}
+
+char *xstrdup(const char *s)
+{
+	char *p;
+
+	p = strdup(s);
+	if (p)
+		return p;
+	fprintf(stderr, "Out of memory.\n");
+	exit(1);
+}
+
+char *xstrndup(const char *s, size_t n)
+{
+	char *p;
+
+	p = strndup(s, n);
+	if (p)
+		return p;
+	fprintf(stderr, "Out of memory.\n");
+	exit(1);
+}
diff --git a/scripts/config/zconf.gperf b/scripts/config/zconf.gperf
deleted file mode 100644
index 1a5c6728ed..0000000000
--- a/scripts/config/zconf.gperf
+++ /dev/null
@@ -1,49 +0,0 @@
-%language=ANSI-C
-%define hash-function-name kconf_id_hash
-%define lookup-function-name kconf_id_lookup
-%define string-pool-name kconf_id_strings
-%compare-strncmp
-%enum
-%pic
-%struct-type
-
-struct kconf_id;
-
-
-%%
-mainmenu,	T_MAINMENU,	TF_COMMAND
-menu,		T_MENU,		TF_COMMAND
-endmenu,	T_ENDMENU,	TF_COMMAND
-source,		T_SOURCE,	TF_COMMAND
-choice,		T_CHOICE,	TF_COMMAND
-endchoice,	T_ENDCHOICE,	TF_COMMAND
-comment,	T_COMMENT,	TF_COMMAND
-config,		T_CONFIG,	TF_COMMAND
-menuconfig,	T_MENUCONFIG,	TF_COMMAND
-help,		T_HELP,		TF_COMMAND
----help---,	T_HELP,		TF_COMMAND
-if,		T_IF,		TF_COMMAND|TF_PARAM
-endif,		T_ENDIF,	TF_COMMAND
-depends,	T_DEPENDS,	TF_COMMAND
-optional,	T_OPTIONAL,	TF_COMMAND
-default,	T_DEFAULT,	TF_COMMAND, S_UNKNOWN
-prompt,		T_PROMPT,	TF_COMMAND
-tristate,	T_TYPE,		TF_COMMAND, S_TRISTATE
-def_tristate,	T_DEFAULT,	TF_COMMAND, S_TRISTATE
-bool,		T_TYPE,		TF_COMMAND, S_BOOLEAN
-boolean,	T_TYPE,		TF_COMMAND, S_BOOLEAN
-def_bool,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN
-int,		T_TYPE,		TF_COMMAND, S_INT
-hex,		T_TYPE,		TF_COMMAND, S_HEX
-string,		T_TYPE,		TF_COMMAND, S_STRING
-select,		T_SELECT,	TF_COMMAND
-range,		T_RANGE,	TF_COMMAND
-visible,	T_VISIBLE,	TF_COMMAND
-option,		T_OPTION,	TF_COMMAND
-on,		T_ON,		TF_PARAM
-modules,	T_OPT_MODULES,	TF_OPTION
-defconfig_list,	T_OPT_DEFCONFIG_LIST,TF_OPTION
-env,		T_OPT_ENV,	TF_OPTION
-allnoconfig_y,	T_OPT_ALLNOCONFIG_Y,TF_OPTION
-reset,		T_RESET,	TF_COMMAND
-%%
diff --git a/scripts/config/zconf.hash.c_shipped b/scripts/config/zconf.hash.c_shipped
deleted file mode 100644
index f9680d6eb2..0000000000
--- a/scripts/config/zconf.hash.c_shipped
+++ /dev/null
@@ -1,250 +0,0 @@
-/* ANSI-C code produced by gperf version 3.0.4 */
-/* Command-line: gperf  */
-/* Computed positions: -k'1,3' */
-
-#if !((' ' == 32) && ('!' == 33) && ('"' == 34) && ('#' == 35) \
-      && ('%' == 37) && ('&' == 38) && ('\'' == 39) && ('(' == 40) \
-      && (')' == 41) && ('*' == 42) && ('+' == 43) && (',' == 44) \
-      && ('-' == 45) && ('.' == 46) && ('/' == 47) && ('0' == 48) \
-      && ('1' == 49) && ('2' == 50) && ('3' == 51) && ('4' == 52) \
-      && ('5' == 53) && ('6' == 54) && ('7' == 55) && ('8' == 56) \
-      && ('9' == 57) && (':' == 58) && (';' == 59) && ('<' == 60) \
-      && ('=' == 61) && ('>' == 62) && ('?' == 63) && ('A' == 65) \
-      && ('B' == 66) && ('C' == 67) && ('D' == 68) && ('E' == 69) \
-      && ('F' == 70) && ('G' == 71) && ('H' == 72) && ('I' == 73) \
-      && ('J' == 74) && ('K' == 75) && ('L' == 76) && ('M' == 77) \
-      && ('N' == 78) && ('O' == 79) && ('P' == 80) && ('Q' == 81) \
-      && ('R' == 82) && ('S' == 83) && ('T' == 84) && ('U' == 85) \
-      && ('V' == 86) && ('W' == 87) && ('X' == 88) && ('Y' == 89) \
-      && ('Z' == 90) && ('[' == 91) && ('\\' == 92) && (']' == 93) \
-      && ('^' == 94) && ('_' == 95) && ('a' == 97) && ('b' == 98) \
-      && ('c' == 99) && ('d' == 100) && ('e' == 101) && ('f' == 102) \
-      && ('g' == 103) && ('h' == 104) && ('i' == 105) && ('j' == 106) \
-      && ('k' == 107) && ('l' == 108) && ('m' == 109) && ('n' == 110) \
-      && ('o' == 111) && ('p' == 112) && ('q' == 113) && ('r' == 114) \
-      && ('s' == 115) && ('t' == 116) && ('u' == 117) && ('v' == 118) \
-      && ('w' == 119) && ('x' == 120) && ('y' == 121) && ('z' == 122) \
-      && ('{' == 123) && ('|' == 124) && ('}' == 125) && ('~' == 126))
-/* The character set is not based on ISO-646.  */
-#error "gperf generated tables don't work with this execution character set. Please report a bug to <bug-gnu-gperf@gnu.org>."
-#endif
-
-struct kconf_id;
-/* maximum key range = 47, duplicates = 0 */
-
-#ifdef __GNUC__
-__inline
-#else
-#ifdef __cplusplus
-inline
-#endif
-#endif
-static unsigned int
-kconf_id_hash (register const char *str, register unsigned int len)
-{
-  static unsigned char asso_values[] =
-    {
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 10, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 20, 40,  5,
-       0,  0,  5, 49,  5, 20, 49, 49,  5, 20,
-       5,  0, 35, 49,  0, 15,  0, 10, 15, 49,
-      25, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
-      49, 49, 49, 49, 49, 49
-    };
-  register int hval = len;
-
-  switch (hval)
-    {
-      default:
-        hval += asso_values[(unsigned char)str[2]];
-      /*FALLTHROUGH*/
-      case 2:
-      case 1:
-        hval += asso_values[(unsigned char)str[0]];
-        break;
-    }
-  return hval;
-}
-
-struct kconf_id_strings_t
-  {
-    char kconf_id_strings_str2[sizeof("on")];
-    char kconf_id_strings_str5[sizeof("endif")];
-    char kconf_id_strings_str6[sizeof("option")];
-    char kconf_id_strings_str7[sizeof("endmenu")];
-    char kconf_id_strings_str8[sizeof("optional")];
-    char kconf_id_strings_str9[sizeof("endchoice")];
-    char kconf_id_strings_str10[sizeof("range")];
-    char kconf_id_strings_str11[sizeof("choice")];
-    char kconf_id_strings_str12[sizeof("default")];
-    char kconf_id_strings_str13[sizeof("def_bool")];
-    char kconf_id_strings_str14[sizeof("help")];
-    char kconf_id_strings_str16[sizeof("config")];
-    char kconf_id_strings_str17[sizeof("def_tristate")];
-    char kconf_id_strings_str18[sizeof("env")];
-    char kconf_id_strings_str19[sizeof("defconfig_list")];
-    char kconf_id_strings_str20[sizeof("reset")];
-    char kconf_id_strings_str21[sizeof("string")];
-    char kconf_id_strings_str22[sizeof("if")];
-    char kconf_id_strings_str23[sizeof("int")];
-    char kconf_id_strings_str26[sizeof("select")];
-    char kconf_id_strings_str27[sizeof("modules")];
-    char kconf_id_strings_str28[sizeof("tristate")];
-    char kconf_id_strings_str29[sizeof("menu")];
-    char kconf_id_strings_str30[sizeof("---help---")];
-    char kconf_id_strings_str31[sizeof("source")];
-    char kconf_id_strings_str32[sizeof("comment")];
-    char kconf_id_strings_str33[sizeof("hex")];
-    char kconf_id_strings_str35[sizeof("menuconfig")];
-    char kconf_id_strings_str37[sizeof("visible")];
-    char kconf_id_strings_str38[sizeof("allnoconfig_y")];
-    char kconf_id_strings_str41[sizeof("prompt")];
-    char kconf_id_strings_str42[sizeof("depends")];
-    char kconf_id_strings_str44[sizeof("bool")];
-    char kconf_id_strings_str47[sizeof("boolean")];
-    char kconf_id_strings_str48[sizeof("mainmenu")];
-  };
-static struct kconf_id_strings_t kconf_id_strings_contents =
-  {
-    "on",
-    "endif",
-    "option",
-    "endmenu",
-    "optional",
-    "endchoice",
-    "range",
-    "choice",
-    "default",
-    "def_bool",
-    "help",
-    "config",
-    "def_tristate",
-    "env",
-    "defconfig_list",
-    "reset",
-    "string",
-    "if",
-    "int",
-    "select",
-    "modules",
-    "tristate",
-    "menu",
-    "---help---",
-    "source",
-    "comment",
-    "hex",
-    "menuconfig",
-    "visible",
-    "allnoconfig_y",
-    "prompt",
-    "depends",
-    "bool",
-    "boolean",
-    "mainmenu"
-  };
-#define kconf_id_strings ((const char *) &kconf_id_strings_contents)
-#ifdef __GNUC__
-__inline
-#if defined __GNUC_STDC_INLINE__ || defined __GNUC_GNU_INLINE__
-__attribute__ ((__gnu_inline__))
-#endif
-#endif
-struct kconf_id *
-kconf_id_lookup (register const char *str, register unsigned int len)
-{
-  enum
-    {
-      TOTAL_KEYWORDS = 35,
-      MIN_WORD_LENGTH = 2,
-      MAX_WORD_LENGTH = 14,
-      MIN_HASH_VALUE = 2,
-      MAX_HASH_VALUE = 48
-    };
-
-  static struct kconf_id wordlist[] =
-    {
-      {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str2,		T_ON,		TF_PARAM},
-      {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str5,		T_ENDIF,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str6,		T_OPTION,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str7,	T_ENDMENU,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str8,	T_OPTIONAL,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str9,	T_ENDCHOICE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str10,		T_RANGE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str11,		T_CHOICE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str12,	T_DEFAULT,	TF_COMMAND, S_UNKNOWN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str13,	T_DEFAULT,	TF_COMMAND, S_BOOLEAN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str14,		T_HELP,		TF_COMMAND},
-      {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str16,		T_CONFIG,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str17,	T_DEFAULT,	TF_COMMAND, S_TRISTATE},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str18,		T_OPT_ENV,	TF_OPTION},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str19,	T_OPT_DEFCONFIG_LIST,TF_OPTION},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str20,		T_RESET,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str21,		T_TYPE,		TF_COMMAND, S_STRING},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str22,		T_IF,		TF_COMMAND|TF_PARAM},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str23,		T_TYPE,		TF_COMMAND, S_INT},
-      {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str26,		T_SELECT,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str27,	T_OPT_MODULES,	TF_OPTION},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str28,	T_TYPE,		TF_COMMAND, S_TRISTATE},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str29,		T_MENU,		TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str30,	T_HELP,		TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str31,		T_SOURCE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str32,	T_COMMENT,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str33,		T_TYPE,		TF_COMMAND, S_HEX},
-      {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str35,	T_MENUCONFIG,	TF_COMMAND},
-      {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str37,	T_VISIBLE,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str38,	T_OPT_ALLNOCONFIG_Y,TF_OPTION},
-      {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str41,		T_PROMPT,	TF_COMMAND},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str42,	T_DEPENDS,	TF_COMMAND},
-      {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str44,		T_TYPE,		TF_COMMAND, S_BOOLEAN},
-      {-1}, {-1},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str47,	T_TYPE,		TF_COMMAND, S_BOOLEAN},
-      {(int)(long)&((struct kconf_id_strings_t *)0)->kconf_id_strings_str48,	T_MAINMENU,	TF_COMMAND}
-    };
-
-  if (len <= MAX_WORD_LENGTH && len >= MIN_WORD_LENGTH)
-    {
-      register int key = kconf_id_hash (str, len);
-
-      if (key <= MAX_HASH_VALUE && key >= 0)
-        {
-          register int o = wordlist[key].name;
-          if (o >= 0)
-            {
-              register const char *s = o + kconf_id_strings;
-
-              if (*str == *s && !strncmp (str + 1, s + 1, len - 1) && s[len] == '\0')
-                return &wordlist[key];
-            }
-        }
-    }
-  return 0;
-}
-
diff --git a/scripts/config/zconf.lex.c_shipped b/scripts/config/zconf.lex.c_shipped
deleted file mode 100644
index 1ca209f511..0000000000
--- a/scripts/config/zconf.lex.c_shipped
+++ /dev/null
@@ -1,2533 +0,0 @@
-
-#define  YY_INT_ALIGNED short int
-
-/* A lexical scanner generated by flex */
-
-#define yy_create_buffer zconf_create_buffer
-#define yy_delete_buffer zconf_delete_buffer
-#define yy_flex_debug zconf_flex_debug
-#define yy_init_buffer zconf_init_buffer
-#define yy_flush_buffer zconf_flush_buffer
-#define yy_load_buffer_state zconf_load_buffer_state
-#define yy_switch_to_buffer zconf_switch_to_buffer
-#define yyin zconfin
-#define yyleng zconfleng
-#define yylex zconflex
-#define yylineno zconflineno
-#define yyout zconfout
-#define yyrestart zconfrestart
-#define yytext zconftext
-#define yywrap zconfwrap
-#define yyalloc zconfalloc
-#define yyrealloc zconfrealloc
-#define yyfree zconffree
-
-#define FLEX_SCANNER
-#define YY_FLEX_MAJOR_VERSION 2
-#define YY_FLEX_MINOR_VERSION 6
-#define YY_FLEX_SUBMINOR_VERSION 1
-#if YY_FLEX_SUBMINOR_VERSION > 0
-#define FLEX_BETA
-#endif
-
-/* First, we deal with  platform-specific or compiler-specific issues. */
-
-/* begin standard C headers. */
-#include <stdio.h>
-#include <string.h>
-#include <errno.h>
-#include <stdlib.h>
-
-/* end standard C headers. */
-
-/* flex integer type definitions */
-
-#ifndef FLEXINT_H
-#define FLEXINT_H
-
-/* C99 systems have <inttypes.h>. Non-C99 systems may or may not. */
-
-#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
-
-/* C99 says to define __STDC_LIMIT_MACROS before including stdint.h,
- * if you want the limit (max/min) macros for int types. 
- */
-#ifndef __STDC_LIMIT_MACROS
-#define __STDC_LIMIT_MACROS 1
-#endif
-
-#include <inttypes.h>
-typedef int8_t flex_int8_t;
-typedef uint8_t flex_uint8_t;
-typedef int16_t flex_int16_t;
-typedef uint16_t flex_uint16_t;
-typedef int32_t flex_int32_t;
-typedef uint32_t flex_uint32_t;
-#else
-typedef signed char flex_int8_t;
-typedef short int flex_int16_t;
-typedef int flex_int32_t;
-typedef unsigned char flex_uint8_t; 
-typedef unsigned short int flex_uint16_t;
-typedef unsigned int flex_uint32_t;
-
-/* Limits of integral types. */
-#ifndef INT8_MIN
-#define INT8_MIN               (-128)
-#endif
-#ifndef INT16_MIN
-#define INT16_MIN              (-32767-1)
-#endif
-#ifndef INT32_MIN
-#define INT32_MIN              (-2147483647-1)
-#endif
-#ifndef INT8_MAX
-#define INT8_MAX               (127)
-#endif
-#ifndef INT16_MAX
-#define INT16_MAX              (32767)
-#endif
-#ifndef INT32_MAX
-#define INT32_MAX              (2147483647)
-#endif
-#ifndef UINT8_MAX
-#define UINT8_MAX              (255U)
-#endif
-#ifndef UINT16_MAX
-#define UINT16_MAX             (65535U)
-#endif
-#ifndef UINT32_MAX
-#define UINT32_MAX             (4294967295U)
-#endif
-
-#endif /* ! C99 */
-
-#endif /* ! FLEXINT_H */
-
-/* TODO: this is always defined, so inline it */
-#define yyconst const
-
-#if defined(__GNUC__) && __GNUC__ >= 3
-#define yynoreturn __attribute__((__noreturn__))
-#else
-#define yynoreturn
-#endif
-
-/* Returned upon end-of-file. */
-#define YY_NULL 0
-
-/* Promotes a possibly negative, possibly signed char to an unsigned
- * integer for use as an array index.  If the signed char is negative,
- * we want to instead treat it as an 8-bit unsigned char, hence the
- * double cast.
- */
-#define YY_SC_TO_UI(c) ((unsigned int) (unsigned char) c)
-
-/* Enter a start condition.  This macro really ought to take a parameter,
- * but we do it the disgusting crufty way forced on us by the ()-less
- * definition of BEGIN.
- */
-#define BEGIN (yy_start) = 1 + 2 *
-
-/* Translate the current start state into a value that can be later handed
- * to BEGIN to return to the state.  The YYSTATE alias is for lex
- * compatibility.
- */
-#define YY_START (((yy_start) - 1) / 2)
-#define YYSTATE YY_START
-
-/* Action number for EOF rule of a given start state. */
-#define YY_STATE_EOF(state) (YY_END_OF_BUFFER + state + 1)
-
-/* Special action meaning "start processing a new file". */
-#define YY_NEW_FILE zconfrestart(zconfin  )
-
-#define YY_END_OF_BUFFER_CHAR 0
-
-/* Size of default input buffer. */
-#ifndef YY_BUF_SIZE
-#ifdef __ia64__
-/* On IA-64, the buffer size is 16k, not 8k.
- * Moreover, YY_BUF_SIZE is 2*YY_READ_BUF_SIZE in the general case.
- * Ditto for the __ia64__ case accordingly.
- */
-#define YY_BUF_SIZE 32768
-#else
-#define YY_BUF_SIZE 16384
-#endif /* __ia64__ */
-#endif
-
-/* The state buf must be large enough to hold one state per character in the main buffer.
- */
-#define YY_STATE_BUF_SIZE   ((YY_BUF_SIZE + 2) * sizeof(yy_state_type))
-
-#ifndef YY_TYPEDEF_YY_BUFFER_STATE
-#define YY_TYPEDEF_YY_BUFFER_STATE
-typedef struct yy_buffer_state *YY_BUFFER_STATE;
-#endif
-
-#ifndef YY_TYPEDEF_YY_SIZE_T
-#define YY_TYPEDEF_YY_SIZE_T
-typedef size_t yy_size_t;
-#endif
-
-extern int zconfleng;
-
-extern FILE *zconfin, *zconfout;
-
-#define EOB_ACT_CONTINUE_SCAN 0
-#define EOB_ACT_END_OF_FILE 1
-#define EOB_ACT_LAST_MATCH 2
-
-    #define YY_LESS_LINENO(n)
-    #define YY_LINENO_REWIND_TO(ptr)
-    
-/* Return all but the first "n" matched characters back to the input stream. */
-#define yyless(n) \
-	do \
-		{ \
-		/* Undo effects of setting up zconftext. */ \
-        int yyless_macro_arg = (n); \
-        YY_LESS_LINENO(yyless_macro_arg);\
-		*yy_cp = (yy_hold_char); \
-		YY_RESTORE_YY_MORE_OFFSET \
-		(yy_c_buf_p) = yy_cp = yy_bp + yyless_macro_arg - YY_MORE_ADJ; \
-		YY_DO_BEFORE_ACTION; /* set up zconftext again */ \
-		} \
-	while ( 0 )
-
-#define unput(c) yyunput( c, (yytext_ptr)  )
-
-#ifndef YY_STRUCT_YY_BUFFER_STATE
-#define YY_STRUCT_YY_BUFFER_STATE
-struct yy_buffer_state
-	{
-	FILE *yy_input_file;
-
-	char *yy_ch_buf;		/* input buffer */
-	char *yy_buf_pos;		/* current position in input buffer */
-
-	/* Size of input buffer in bytes, not including room for EOB
-	 * characters.
-	 */
-	int yy_buf_size;
-
-	/* Number of characters read into yy_ch_buf, not including EOB
-	 * characters.
-	 */
-	int yy_n_chars;
-
-	/* Whether we "own" the buffer - i.e., we know we created it,
-	 * and can realloc() it to grow it, and should free() it to
-	 * delete it.
-	 */
-	int yy_is_our_buffer;
-
-	/* Whether this is an "interactive" input source; if so, and
-	 * if we're using stdio for input, then we want to use getc()
-	 * instead of fread(), to make sure we stop fetching input after
-	 * each newline.
-	 */
-	int yy_is_interactive;
-
-	/* Whether we're considered to be at the beginning of a line.
-	 * If so, '^' rules will be active on the next match, otherwise
-	 * not.
-	 */
-	int yy_at_bol;
-
-    int yy_bs_lineno; /**< The line count. */
-    int yy_bs_column; /**< The column count. */
-
-	/* Whether to try to fill the input buffer when we reach the
-	 * end of it.
-	 */
-	int yy_fill_buffer;
-
-	int yy_buffer_status;
-
-#define YY_BUFFER_NEW 0
-#define YY_BUFFER_NORMAL 1
-	/* When an EOF's been seen but there's still some text to process
-	 * then we mark the buffer as YY_EOF_PENDING, to indicate that we
-	 * shouldn't try reading from the input source any more.  We might
-	 * still have a bunch of tokens to match, though, because of
-	 * possible backing-up.
-	 *
-	 * When we actually see the EOF, we change the status to "new"
-	 * (via zconfrestart()), so that the user can continue scanning by
-	 * just pointing zconfin at a new input file.
-	 */
-#define YY_BUFFER_EOF_PENDING 2
-
-	};
-#endif /* !YY_STRUCT_YY_BUFFER_STATE */
-
-/* Stack of input buffers. */
-static size_t yy_buffer_stack_top = 0; /**< index of top of stack. */
-static size_t yy_buffer_stack_max = 0; /**< capacity of stack. */
-static YY_BUFFER_STATE * yy_buffer_stack = NULL; /**< Stack as an array. */
-
-/* We provide macros for accessing buffer states in case in the
- * future we want to put the buffer states in a more general
- * "scanner state".
- *
- * Returns the top of the stack, or NULL.
- */
-#define YY_CURRENT_BUFFER ( (yy_buffer_stack) \
-                          ? (yy_buffer_stack)[(yy_buffer_stack_top)] \
-                          : NULL)
-
-/* Same as previous macro, but useful when we know that the buffer stack is not
- * NULL or when we need an lvalue. For internal use only.
- */
-#define YY_CURRENT_BUFFER_LVALUE (yy_buffer_stack)[(yy_buffer_stack_top)]
-
-/* yy_hold_char holds the character lost when zconftext is formed. */
-static char yy_hold_char;
-static int yy_n_chars;		/* number of characters read into yy_ch_buf */
-int zconfleng;
-
-/* Points to current character in buffer. */
-static char *yy_c_buf_p = NULL;
-static int yy_init = 0;		/* whether we need to initialize */
-static int yy_start = 0;	/* start state number */
-
-/* Flag which is used to allow zconfwrap()'s to do buffer switches
- * instead of setting up a fresh zconfin.  A bit of a hack ...
- */
-static int yy_did_buffer_switch_on_eof;
-
-void zconfrestart (FILE *input_file  );
-void zconf_switch_to_buffer (YY_BUFFER_STATE new_buffer  );
-YY_BUFFER_STATE zconf_create_buffer (FILE *file,int size  );
-void zconf_delete_buffer (YY_BUFFER_STATE b  );
-void zconf_flush_buffer (YY_BUFFER_STATE b  );
-void zconfpush_buffer_state (YY_BUFFER_STATE new_buffer  );
-void zconfpop_buffer_state (void );
-
-static void zconfensure_buffer_stack (void );
-static void zconf_load_buffer_state (void );
-static void zconf_init_buffer (YY_BUFFER_STATE b,FILE *file  );
-
-#define YY_FLUSH_BUFFER zconf_flush_buffer(YY_CURRENT_BUFFER )
-
-YY_BUFFER_STATE zconf_scan_buffer (char *base,yy_size_t size  );
-YY_BUFFER_STATE zconf_scan_string (yyconst char *yy_str  );
-YY_BUFFER_STATE zconf_scan_bytes (yyconst char *bytes,int len  );
-
-void *zconfalloc (yy_size_t  );
-void *zconfrealloc (void *,yy_size_t  );
-void zconffree (void *  );
-
-#define yy_new_buffer zconf_create_buffer
-
-#define yy_set_interactive(is_interactive) \
-	{ \
-	if ( ! YY_CURRENT_BUFFER ){ \
-        zconfensure_buffer_stack (); \
-		YY_CURRENT_BUFFER_LVALUE =    \
-            zconf_create_buffer(zconfin,YY_BUF_SIZE ); \
-	} \
-	YY_CURRENT_BUFFER_LVALUE->yy_is_interactive = is_interactive; \
-	}
-
-#define yy_set_bol(at_bol) \
-	{ \
-	if ( ! YY_CURRENT_BUFFER ){\
-        zconfensure_buffer_stack (); \
-		YY_CURRENT_BUFFER_LVALUE =    \
-            zconf_create_buffer(zconfin,YY_BUF_SIZE ); \
-	} \
-	YY_CURRENT_BUFFER_LVALUE->yy_at_bol = at_bol; \
-	}
-
-#define YY_AT_BOL() (YY_CURRENT_BUFFER_LVALUE->yy_at_bol)
-
-/* Begin user sect3 */
-
-#define zconfwrap() (/*CONSTCOND*/1)
-#define YY_SKIP_YYWRAP
-
-typedef unsigned char YY_CHAR;
-
-FILE *zconfin = NULL, *zconfout = NULL;
-
-typedef int yy_state_type;
-
-extern int zconflineno;
-
-int zconflineno = 1;
-
-extern char *zconftext;
-#ifdef yytext_ptr
-#undef yytext_ptr
-#endif
-#define yytext_ptr zconftext
-
-static yyconst flex_int16_t yy_nxt[][18] =
-    {
-    {
-        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
-        0,    0,    0,    0,    0,    0,    0,    0
-    },
-
-    {
-       11,   12,   13,   14,   12,   12,   15,   12,   12,   12,
-       12,   12,   12,   12,   12,   12,   12,   12
-    },
-
-    {
-       11,   12,   13,   14,   12,   12,   15,   12,   12,   12,
-       12,   12,   12,   12,   12,   12,   12,   12
-    },
-
-    {
-       11,   16,   16,   17,   16,   16,   16,   16,   16,   16,
-       16,   18,   16,   16,   16,   16,   16,   16
-    },
-
-    {
-       11,   16,   16,   17,   16,   16,   16,   16,   16,   16,
-       16,   18,   16,   16,   16,   16,   16,   16
-
-    },
-
-    {
-       11,   19,   20,   21,   19,   19,   19,   19,   19,   19,
-       19,   19,   19,   19,   19,   19,   19,   19
-    },
-
-    {
-       11,   19,   20,   21,   19,   19,   19,   19,   19,   19,
-       19,   19,   19,   19,   19,   19,   19,   19
-    },
-
-    {
-       11,   22,   22,   23,   22,   24,   22,   22,   24,   22,
-       22,   22,   22,   22,   22,   22,   25,   22
-    },
-
-    {
-       11,   22,   22,   23,   22,   24,   22,   22,   24,   22,
-       22,   22,   22,   22,   22,   22,   25,   22
-    },
-
-    {
-       11,   26,   27,   28,   29,   30,   31,   32,   30,   33,
-       34,   35,   35,   36,   37,   38,   39,   40
-
-    },
-
-    {
-       11,   26,   27,   28,   29,   30,   31,   32,   30,   33,
-       34,   35,   35,   36,   37,   38,   39,   40
-    },
-
-    {
-      -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11,
-      -11,  -11,  -11,  -11,  -11,  -11,  -11,  -11
-    },
-
-    {
-       11,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12,
-      -12,  -12,  -12,  -12,  -12,  -12,  -12,  -12
-    },
-
-    {
-       11,  -13,   41,   42,  -13,  -13,   43,  -13,  -13,  -13,
-      -13,  -13,  -13,  -13,  -13,  -13,  -13,  -13
-    },
-
-    {
-       11,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14,
-      -14,  -14,  -14,  -14,  -14,  -14,  -14,  -14
-
-    },
-
-    {
-       11,   44,   44,   45,   44,   44,   44,   44,   44,   44,
-       44,   44,   44,   44,   44,   44,   44,   44
-    },
-
-    {
-       11,  -16,  -16,  -16,  -16,  -16,  -16,  -16,  -16,  -16,
-      -16,  -16,  -16,  -16,  -16,  -16,  -16,  -16
-    },
-
-    {
-       11,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17,
-      -17,  -17,  -17,  -17,  -17,  -17,  -17,  -17
-    },
-
-    {
-       11,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,  -18,
-      -18,   46,  -18,  -18,  -18,  -18,  -18,  -18
-    },
-
-    {
-       11,   47,   47,  -19,   47,   47,   47,   47,   47,   47,
-       47,   47,   47,   47,   47,   47,   47,   47
-
-    },
-
-    {
-       11,  -20,   48,   49,  -20,  -20,  -20,  -20,  -20,  -20,
-      -20,  -20,  -20,  -20,  -20,  -20,  -20,  -20
-    },
-
-    {
-       11,   50,  -21,  -21,   50,   50,   50,   50,   50,   50,
-       50,   50,   50,   50,   50,   50,   50,   50
-    },
-
-    {
-       11,   51,   51,   52,   51,  -22,   51,   51,  -22,   51,
-       51,   51,   51,   51,   51,   51,  -22,   51
-    },
-
-    {
-       11,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23,
-      -23,  -23,  -23,  -23,  -23,  -23,  -23,  -23
-    },
-
-    {
-       11,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24,
-      -24,  -24,  -24,  -24,  -24,  -24,  -24,  -24
-
-    },
-
-    {
-       11,   53,   53,   54,   53,   53,   53,   53,   53,   53,
-       53,   53,   53,   53,   53,   53,   53,   53
-    },
-
-    {
-       11,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26,
-      -26,  -26,  -26,  -26,  -26,  -26,  -26,  -26
-    },
-
-    {
-       11,  -27,   55,  -27,  -27,  -27,  -27,  -27,  -27,  -27,
-      -27,  -27,  -27,  -27,  -27,  -27,  -27,  -27
-    },
-
-    {
-       11,  -28,  -28,  -28,  -28,  -28,  -28,  -28,  -28,  -28,
-      -28,  -28,  -28,  -28,  -28,  -28,  -28,  -28
-    },
-
-    {
-       11,  -29,  -29,  -29,  -29,  -29,  -29,  -29,  -29,  -29,
-      -29,  -29,  -29,  -29,   56,  -29,  -29,  -29
-
-    },
-
-    {
-       11,  -30,  -30,  -30,  -30,  -30,  -30,  -30,  -30,  -30,
-      -30,  -30,  -30,  -30,  -30,  -30,  -30,  -30
-    },
-
-    {
-       11,   57,   57,  -31,   57,   57,   57,   57,   57,   57,
-       57,   57,   57,   57,   57,   57,   57,   57
-    },
-
-    {
-       11,  -32,  -32,  -32,  -32,  -32,  -32,   58,  -32,  -32,
-      -32,  -32,  -32,  -32,  -32,  -32,  -32,  -32
-    },
-
-    {
-       11,  -33,  -33,  -33,  -33,  -33,  -33,  -33,  -33,  -33,
-      -33,  -33,  -33,  -33,  -33,  -33,  -33,  -33
-    },
-
-    {
-       11,  -34,  -34,  -34,  -34,  -34,  -34,  -34,  -34,  -34,
-      -34,  -34,  -34,  -34,  -34,  -34,  -34,  -34
-
-    },
-
-    {
-       11,  -35,  -35,  -35,  -35,  -35,  -35,  -35,  -35,  -35,
-      -35,   59,   59,  -35,  -35,  -35,  -35,  -35
-    },
-
-    {
-       11,  -36,  -36,  -36,  -36,  -36,  -36,  -36,  -36,  -36,
-      -36,  -36,  -36,  -36,   60,  -36,  -36,  -36
-    },
-
-    {
-       11,  -37,  -37,  -37,  -37,  -37,  -37,  -37,  -37,  -37,
-      -37,  -37,  -37,  -37,  -37,  -37,  -37,  -37
-    },
-
-    {
-       11,  -38,  -38,  -38,  -38,  -38,  -38,  -38,  -38,  -38,
-      -38,  -38,  -38,  -38,   61,  -38,  -38,  -38
-    },
-
-    {
-       11,  -39,  -39,   62,  -39,  -39,  -39,  -39,  -39,  -39,
-      -39,  -39,  -39,  -39,  -39,  -39,  -39,  -39
-
-    },
-
-    {
-       11,  -40,  -40,  -40,  -40,  -40,  -40,  -40,  -40,  -40,
-      -40,  -40,  -40,  -40,  -40,  -40,  -40,   63
-    },
-
-    {
-       11,  -41,   41,   42,  -41,  -41,   43,  -41,  -41,  -41,
-      -41,  -41,  -41,  -41,  -41,  -41,  -41,  -41
-    },
-
-    {
-       11,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42,
-      -42,  -42,  -42,  -42,  -42,  -42,  -42,  -42
-    },
-
-    {
-       11,   44,   44,   45,   44,   44,   44,   44,   44,   44,
-       44,   44,   44,   44,   44,   44,   44,   44
-    },
-
-    {
-       11,   44,   44,   45,   44,   44,   44,   44,   44,   44,
-       44,   44,   44,   44,   44,   44,   44,   44
-
-    },
-
-    {
-       11,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45,
-      -45,  -45,  -45,  -45,  -45,  -45,  -45,  -45
-    },
-
-    {
-       11,  -46,  -46,  -46,  -46,  -46,  -46,  -46,  -46,  -46,
-      -46,   46,  -46,  -46,  -46,  -46,  -46,  -46
-    },
-
-    {
-       11,   47,   47,  -47,   47,   47,   47,   47,   47,   47,
-       47,   47,   47,   47,   47,   47,   47,   47
-    },
-
-    {
-       11,  -48,   48,   49,  -48,  -48,  -48,  -48,  -48,  -48,
-      -48,  -48,  -48,  -48,  -48,  -48,  -48,  -48
-    },
-
-    {
-       11,   50,  -49,  -49,   50,   50,   50,   50,   50,   50,
-       50,   50,   50,   50,   50,   50,   50,   50
-
-    },
-
-    {
-       11,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50,
-      -50,  -50,  -50,  -50,  -50,  -50,  -50,  -50
-    },
-
-    {
-       11,   51,   51,   52,   51,  -51,   51,   51,  -51,   51,
-       51,   51,   51,   51,   51,   51,  -51,   51
-    },
-
-    {
-       11,  -52,  -52,  -52,  -52,  -52,  -52,  -52,  -52,  -52,
-      -52,  -52,  -52,  -52,  -52,  -52,  -52,  -52
-    },
-
-    {
-       11,  -53,  -53,   54,  -53,  -53,  -53,  -53,  -53,  -53,
-      -53,  -53,  -53,  -53,  -53,  -53,  -53,  -53
-    },
-
-    {
-       11,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54,
-      -54,  -54,  -54,  -54,  -54,  -54,  -54,  -54
-
-    },
-
-    {
-       11,  -55,   55,  -55,  -55,  -55,  -55,  -55,  -55,  -55,
-      -55,  -55,  -55,  -55,  -55,  -55,  -55,  -55
-    },
-
-    {
-       11,  -56,  -56,  -56,  -56,  -56,  -56,  -56,  -56,  -56,
-      -56,  -56,  -56,  -56,  -56,  -56,  -56,  -56
-    },
-
-    {
-       11,   57,   57,  -57,   57,   57,   57,   57,   57,   57,
-       57,   57,   57,   57,   57,   57,   57,   57
-    },
-
-    {
-       11,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58,
-      -58,  -58,  -58,  -58,  -58,  -58,  -58,  -58
-    },
-
-    {
-       11,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,  -59,
-      -59,   59,   59,  -59,  -59,  -59,  -59,  -59
-
-    },
-
-    {
-       11,  -60,  -60,  -60,  -60,  -60,  -60,  -60,  -60,  -60,
-      -60,  -60,  -60,  -60,  -60,  -60,  -60,  -60
-    },
-
-    {
-       11,  -61,  -61,  -61,  -61,  -61,  -61,  -61,  -61,  -61,
-      -61,  -61,  -61,  -61,  -61,  -61,  -61,  -61
-    },
-
-    {
-       11,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62,
-      -62,  -62,  -62,  -62,  -62,  -62,  -62,  -62
-    },
-
-    {
-       11,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63,
-      -63,  -63,  -63,  -63,  -63,  -63,  -63,  -63
-    },
-
-    } ;
-
-static yy_state_type yy_get_previous_state (void );
-static yy_state_type yy_try_NUL_trans (yy_state_type current_state  );
-static int yy_get_next_buffer (void );
-static void yynoreturn yy_fatal_error (yyconst char* msg  );
-
-/* Done after the current pattern has been matched and before the
- * corresponding action - sets up zconftext.
- */
-#define YY_DO_BEFORE_ACTION \
-	(yytext_ptr) = yy_bp; \
-	zconfleng = (int) (yy_cp - yy_bp); \
-	(yy_hold_char) = *yy_cp; \
-	*yy_cp = '\0'; \
-	(yy_c_buf_p) = yy_cp;
-
-#define YY_NUM_RULES 37
-#define YY_END_OF_BUFFER 38
-/* This struct is not used in this scanner,
-   but its presence is necessary. */
-struct yy_trans_info
-	{
-	flex_int32_t yy_verify;
-	flex_int32_t yy_nxt;
-	};
-static yyconst flex_int16_t yy_accept[64] =
-    {   0,
-        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
-       38,    5,    4,    2,    3,    7,    8,    6,   36,   33,
-       35,   28,   32,   31,   30,   26,   25,   21,   13,   20,
-       23,   26,   11,   12,   22,   18,   14,   19,   26,   26,
-        4,    2,    3,    3,    1,    6,   36,   33,   35,   34,
-       28,   27,   30,   29,   25,   15,   23,    9,   22,   16,
-       17,   24,   10
-    } ;
-
-static yyconst YY_CHAR yy_ec[256] =
-    {   0,
-        1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    2,    4,    5,    6,    1,    1,    7,    8,    9,
-       10,    1,    1,    1,   11,   12,   12,   11,   11,   11,
-       11,   11,   11,   11,   11,   11,   11,    1,    1,   13,
-       14,   15,    1,    1,   11,   11,   11,   11,   11,   11,
-       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
-       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
-        1,   16,    1,    1,   11,    1,   11,   11,   11,   11,
-
-       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
-       11,   11,   11,   11,   11,   11,   11,   11,   11,   11,
-       11,   11,    1,   17,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1
-    } ;
-
-extern int zconf_flex_debug;
-int zconf_flex_debug = 0;
-
-/* The intent behind this definition is that it'll catch
- * any uses of REJECT which flex missed.
- */
-#define REJECT reject_used_but_not_detected
-#define yymore() yymore_used_but_not_detected
-#define YY_MORE_ADJ 0
-#define YY_RESTORE_YY_MORE_OFFSET
-char *zconftext;
-#define YY_NO_INPUT 1
-
-/*
- * Copyright (C) 2002 Roman Zippel <zippel@linux-m68k.org>
- * Released under the terms of the GNU GPL v2.0.
- */
-
-#include <limits.h>
-#include <stdio.h>
-#include <stdlib.h>
-#include <string.h>
-#include <unistd.h>
-#include <glob.h>
-#include <libgen.h>
-
-#include "lkc.h"
-
-#define START_STRSIZE	16
-
-static struct {
-	struct file *file;
-	int lineno;
-} current_pos;
-
-static char *text;
-static int text_size, text_asize;
-
-struct buffer {
-	struct buffer *parent;
-	YY_BUFFER_STATE state;
-};
-
-struct buffer *current_buf;
-
-static int last_ts, first_ts;
-
-static void zconf_endhelp(void);
-static void zconf_endfile(void);
-
-static void new_string(void)
-{
-	text = xmalloc(START_STRSIZE);
-	text_asize = START_STRSIZE;
-	text_size = 0;
-	*text = 0;
-}
-
-static void append_string(const char *str, int size)
-{
-	int new_size = text_size + size + 1;
-	if (new_size > text_asize) {
-		new_size += START_STRSIZE - 1;
-		new_size &= -START_STRSIZE;
-		text = realloc(text, new_size);
-		text_asize = new_size;
-	}
-	memcpy(text + text_size, str, size);
-	text_size += size;
-	text[text_size] = 0;
-}
-
-static void alloc_string(const char *str, int size)
-{
-	text = xmalloc(size + 1);
-	memcpy(text, str, size);
-	text[size] = 0;
-}
-
-static void warn_ignored_character(char chr)
-{
-	fprintf(stderr,
-	        "%s:%d:warning: ignoring unsupported character '%c'\n",
-	        zconf_curname(), zconf_lineno(), chr);
-}
-
-#define INITIAL 0
-#define COMMAND 1
-#define HELP 2
-#define STRING 3
-#define PARAM 4
-
-#ifndef YY_NO_UNISTD_H
-/* Special case for "unistd.h", since it is non-ANSI. We include it way
- * down here because we want the user's section 1 to have been scanned first.
- * The user has a chance to override it with an option.
- */
-#include <unistd.h>
-#endif
-
-#ifndef YY_EXTRA_TYPE
-#define YY_EXTRA_TYPE void *
-#endif
-
-static int yy_init_globals (void );
-
-/* Accessor methods to globals.
-   These are made visible to non-reentrant scanners for convenience. */
-
-int zconflex_destroy (void );
-
-int zconfget_debug (void );
-
-void zconfset_debug (int debug_flag  );
-
-YY_EXTRA_TYPE zconfget_extra (void );
-
-void zconfset_extra (YY_EXTRA_TYPE user_defined  );
-
-FILE *zconfget_in (void );
-
-void zconfset_in  (FILE * _in_str  );
-
-FILE *zconfget_out (void );
-
-void zconfset_out  (FILE * _out_str  );
-
-			int zconfget_leng (void );
-
-char *zconfget_text (void );
-
-int zconfget_lineno (void );
-
-void zconfset_lineno (int _line_number  );
-
-/* Macros after this point can all be overridden by user definitions in
- * section 1.
- */
-
-#ifndef YY_SKIP_YYWRAP
-#ifdef __cplusplus
-extern "C" int zconfwrap (void );
-#else
-extern int zconfwrap (void );
-#endif
-#endif
-
-#ifndef YY_NO_UNPUT
-    
-    static void yyunput (int c,char *buf_ptr  );
-    
-#endif
-
-#ifndef yytext_ptr
-static void yy_flex_strncpy (char *,yyconst char *,int );
-#endif
-
-#ifdef YY_NEED_STRLEN
-static int yy_flex_strlen (yyconst char * );
-#endif
-
-#ifndef YY_NO_INPUT
-
-#ifdef __cplusplus
-static int yyinput (void );
-#else
-static int input (void );
-#endif
-
-#endif
-
-/* Amount of stuff to slurp up with each read. */
-#ifndef YY_READ_BUF_SIZE
-#ifdef __ia64__
-/* On IA-64, the buffer size is 16k, not 8k */
-#define YY_READ_BUF_SIZE 16384
-#else
-#define YY_READ_BUF_SIZE 8192
-#endif /* __ia64__ */
-#endif
-
-/* Copy whatever the last rule matched to the standard output. */
-#ifndef ECHO
-/* This used to be an fputs(), but since the string might contain NUL's,
- * we now use fwrite().
- */
-#define ECHO do { if (fwrite( zconftext, (size_t) zconfleng, 1, zconfout )) {} } while (0)
-#endif
-
-/* Gets input and stuffs it into "buf".  number of characters read, or YY_NULL,
- * is returned in "result".
- */
-#ifndef YY_INPUT
-#define YY_INPUT(buf,result,max_size) \
-	errno=0; \
-	while ( (result = (int) read( fileno(zconfin), buf, max_size )) < 0 ) \
-	{ \
-		if( errno != EINTR) \
-		{ \
-			YY_FATAL_ERROR( "input in flex scanner failed" ); \
-			break; \
-		} \
-		errno=0; \
-		clearerr(zconfin); \
-	}\
-\
-
-#endif
-
-/* No semi-colon after return; correct usage is to write "yyterminate();" -
- * we don't want an extra ';' after the "return" because that will cause
- * some compilers to complain about unreachable statements.
- */
-#ifndef yyterminate
-#define yyterminate() return YY_NULL
-#endif
-
-/* Number of entries by which start-condition stack grows. */
-#ifndef YY_START_STACK_INCR
-#define YY_START_STACK_INCR 25
-#endif
-
-/* Report a fatal error. */
-#ifndef YY_FATAL_ERROR
-#define YY_FATAL_ERROR(msg) yy_fatal_error( msg )
-#endif
-
-/* end tables serialization structures and prototypes */
-
-/* Default declaration of generated scanner - a define so the user can
- * easily add parameters.
- */
-#ifndef YY_DECL
-#define YY_DECL_IS_OURS 1
-
-extern int zconflex (void);
-
-#define YY_DECL int zconflex (void)
-#endif /* !YY_DECL */
-
-/* Code executed at the beginning of each rule, after zconftext and zconfleng
- * have been set up.
- */
-#ifndef YY_USER_ACTION
-#define YY_USER_ACTION
-#endif
-
-/* Code executed at the end of each rule. */
-#ifndef YY_BREAK
-#define YY_BREAK /*LINTED*/break;
-#endif
-
-#define YY_RULE_SETUP \
-	YY_USER_ACTION
-
-/** The main scanner function which does all the work.
- */
-YY_DECL
-{
-	yy_state_type yy_current_state;
-	char *yy_cp, *yy_bp;
-	int yy_act;
-    
-	if ( !(yy_init) )
-		{
-		(yy_init) = 1;
-
-#ifdef YY_USER_INIT
-		YY_USER_INIT;
-#endif
-
-		if ( ! (yy_start) )
-			(yy_start) = 1;	/* first start state */
-
-		if ( ! zconfin )
-			zconfin = stdin;
-
-		if ( ! zconfout )
-			zconfout = stdout;
-
-		if ( ! YY_CURRENT_BUFFER ) {
-			zconfensure_buffer_stack ();
-			YY_CURRENT_BUFFER_LVALUE =
-				zconf_create_buffer(zconfin,YY_BUF_SIZE );
-		}
-
-		zconf_load_buffer_state( );
-		}
-
-	{
-
-	int str = 0;
-	int ts, i;
-
-	while ( /*CONSTCOND*/1 )		/* loops until end-of-file is reached */
-		{
-		yy_cp = (yy_c_buf_p);
-
-		/* Support of zconftext. */
-		*yy_cp = (yy_hold_char);
-
-		/* yy_bp points to the position in yy_ch_buf of the start of
-		 * the current run.
-		 */
-		yy_bp = yy_cp;
-
-		yy_current_state = (yy_start);
-yy_match:
-		while ( (yy_current_state = yy_nxt[yy_current_state][ yy_ec[YY_SC_TO_UI(*yy_cp)]  ]) > 0 )
-			++yy_cp;
-
-		yy_current_state = -yy_current_state;
-
-yy_find_action:
-		yy_act = yy_accept[yy_current_state];
-
-		YY_DO_BEFORE_ACTION;
-
-do_action:	/* This label is used only to access EOF actions. */
-
-		switch ( yy_act )
-	{ /* beginning of action switch */
-case 1:
-/* rule 1 can match eol */
-case 2:
-/* rule 2 can match eol */
-YY_RULE_SETUP
-{
-	current_file->lineno++;
-	return T_EOL;
-}
-	YY_BREAK
-case 3:
-YY_RULE_SETUP
-
-	YY_BREAK
-case 4:
-YY_RULE_SETUP
-{
-	BEGIN(COMMAND);
-}
-	YY_BREAK
-case 5:
-YY_RULE_SETUP
-{
-	unput(zconftext[0]);
-	BEGIN(COMMAND);
-}
-	YY_BREAK
-
-case 6:
-YY_RULE_SETUP
-{
-		const struct kconf_id *id = kconf_id_lookup(zconftext, zconfleng);
-		BEGIN(PARAM);
-		current_pos.file = current_file;
-		current_pos.lineno = current_file->lineno;
-		if (id && id->flags & TF_COMMAND) {
-			zconflval.id = id;
-			return id->token;
-		}
-		alloc_string(zconftext, zconfleng);
-		zconflval.string = text;
-		return T_WORD;
-	}
-	YY_BREAK
-case 7:
-YY_RULE_SETUP
-warn_ignored_character(*zconftext);
-	YY_BREAK
-case 8:
-/* rule 8 can match eol */
-YY_RULE_SETUP
-{
-		BEGIN(INITIAL);
-		current_file->lineno++;
-		return T_EOL;
-	}
-	YY_BREAK
-
-case 9:
-YY_RULE_SETUP
-return T_AND;
-	YY_BREAK
-case 10:
-YY_RULE_SETUP
-return T_OR;
-	YY_BREAK
-case 11:
-YY_RULE_SETUP
-return T_OPEN_PAREN;
-	YY_BREAK
-case 12:
-YY_RULE_SETUP
-return T_CLOSE_PAREN;
-	YY_BREAK
-case 13:
-YY_RULE_SETUP
-return T_NOT;
-	YY_BREAK
-case 14:
-YY_RULE_SETUP
-return T_EQUAL;
-	YY_BREAK
-case 15:
-YY_RULE_SETUP
-return T_UNEQUAL;
-	YY_BREAK
-case 16:
-YY_RULE_SETUP
-return T_LESS_EQUAL;
-	YY_BREAK
-case 17:
-YY_RULE_SETUP
-return T_GREATER_EQUAL;
-	YY_BREAK
-case 18:
-YY_RULE_SETUP
-return T_LESS;
-	YY_BREAK
-case 19:
-YY_RULE_SETUP
-return T_GREATER;
-	YY_BREAK
-case 20:
-YY_RULE_SETUP
-{
-		str = zconftext[0];
-		new_string();
-		BEGIN(STRING);
-	}
-	YY_BREAK
-case 21:
-/* rule 21 can match eol */
-YY_RULE_SETUP
-BEGIN(INITIAL); current_file->lineno++; return T_EOL;
-	YY_BREAK
-case 22:
-YY_RULE_SETUP
-{
-		const struct kconf_id *id = kconf_id_lookup(zconftext, zconfleng);
-		if (id && id->flags & TF_PARAM) {
-			zconflval.id = id;
-			return id->token;
-		}
-		alloc_string(zconftext, zconfleng);
-		zconflval.string = text;
-		return T_WORD;
-	}
-	YY_BREAK
-case 23:
-YY_RULE_SETUP
-/* comment */
-	YY_BREAK
-case 24:
-/* rule 24 can match eol */
-YY_RULE_SETUP
-current_file->lineno++;
-	YY_BREAK
-case 25:
-YY_RULE_SETUP
-
-	YY_BREAK
-case 26:
-YY_RULE_SETUP
-warn_ignored_character(*zconftext);
-	YY_BREAK
-case YY_STATE_EOF(PARAM):
-{
-		BEGIN(INITIAL);
-	}
-	YY_BREAK
-
-case 27:
-/* rule 27 can match eol */
-*yy_cp = (yy_hold_char); /* undo effects of setting up zconftext */
-YY_LINENO_REWIND_TO(yy_cp - 1);
-(yy_c_buf_p) = yy_cp -= 1;
-YY_DO_BEFORE_ACTION; /* set up zconftext again */
-YY_RULE_SETUP
-{
-		append_string(zconftext, zconfleng);
-		zconflval.string = text;
-		return T_WORD_QUOTE;
-	}
-	YY_BREAK
-case 28:
-YY_RULE_SETUP
-{
-		append_string(zconftext, zconfleng);
-	}
-	YY_BREAK
-case 29:
-/* rule 29 can match eol */
-*yy_cp = (yy_hold_char); /* undo effects of setting up zconftext */
-YY_LINENO_REWIND_TO(yy_cp - 1);
-(yy_c_buf_p) = yy_cp -= 1;
-YY_DO_BEFORE_ACTION; /* set up zconftext again */
-YY_RULE_SETUP
-{
-		append_string(zconftext + 1, zconfleng - 1);
-		zconflval.string = text;
-		return T_WORD_QUOTE;
-	}
-	YY_BREAK
-case 30:
-YY_RULE_SETUP
-{
-		append_string(zconftext + 1, zconfleng - 1);
-	}
-	YY_BREAK
-case 31:
-YY_RULE_SETUP
-{
-		if (str == zconftext[0]) {
-			BEGIN(PARAM);
-			zconflval.string = text;
-			return T_WORD_QUOTE;
-		} else
-			append_string(zconftext, 1);
-	}
-	YY_BREAK
-case 32:
-/* rule 32 can match eol */
-YY_RULE_SETUP
-{
-		printf("%s:%d:warning: multi-line strings not supported\n", zconf_curname(), zconf_lineno());
-		current_file->lineno++;
-		BEGIN(INITIAL);
-		return T_EOL;
-	}
-	YY_BREAK
-case YY_STATE_EOF(STRING):
-{
-		BEGIN(INITIAL);
-	}
-	YY_BREAK
-
-case 33:
-YY_RULE_SETUP
-{
-		ts = 0;
-		for (i = 0; i < zconfleng; i++) {
-			if (zconftext[i] == '\t')
-				ts = (ts & ~7) + 8;
-			else
-				ts++;
-		}
-		last_ts = ts;
-		if (first_ts) {
-			if (ts < first_ts) {
-				zconf_endhelp();
-				return T_HELPTEXT;
-			}
-			ts -= first_ts;
-			while (ts > 8) {
-				append_string("        ", 8);
-				ts -= 8;
-			}
-			append_string("        ", ts);
-		}
-	}
-	YY_BREAK
-case 34:
-/* rule 34 can match eol */
-*yy_cp = (yy_hold_char); /* undo effects of setting up zconftext */
-YY_LINENO_REWIND_TO(yy_cp - 1);
-(yy_c_buf_p) = yy_cp -= 1;
-YY_DO_BEFORE_ACTION; /* set up zconftext again */
-YY_RULE_SETUP
-{
-		current_file->lineno++;
-		zconf_endhelp();
-		return T_HELPTEXT;
-	}
-	YY_BREAK
-case 35:
-/* rule 35 can match eol */
-YY_RULE_SETUP
-{
-		current_file->lineno++;
-		append_string("\n", 1);
-	}
-	YY_BREAK
-case 36:
-YY_RULE_SETUP
-{
-		while (zconfleng) {
-			if ((zconftext[zconfleng-1] != ' ') && (zconftext[zconfleng-1] != '\t'))
-				break;
-			zconfleng--;
-		}
-		append_string(zconftext, zconfleng);
-		if (!first_ts)
-			first_ts = last_ts;
-	}
-	YY_BREAK
-case YY_STATE_EOF(HELP):
-{
-		zconf_endhelp();
-		return T_HELPTEXT;
-	}
-	YY_BREAK
-
-case YY_STATE_EOF(INITIAL):
-case YY_STATE_EOF(COMMAND):
-{
-	if (current_file) {
-		zconf_endfile();
-		return T_EOL;
-	}
-	fclose(zconfin);
-	yyterminate();
-}
-	YY_BREAK
-case 37:
-YY_RULE_SETUP
-YY_FATAL_ERROR( "flex scanner jammed" );
-	YY_BREAK
-
-	case YY_END_OF_BUFFER:
-		{
-		/* Amount of text matched not including the EOB char. */
-		int yy_amount_of_matched_text = (int) (yy_cp - (yytext_ptr)) - 1;
-
-		/* Undo the effects of YY_DO_BEFORE_ACTION. */
-		*yy_cp = (yy_hold_char);
-		YY_RESTORE_YY_MORE_OFFSET
-
-		if ( YY_CURRENT_BUFFER_LVALUE->yy_buffer_status == YY_BUFFER_NEW )
-			{
-			/* We're scanning a new file or input source.  It's
-			 * possible that this happened because the user
-			 * just pointed zconfin at a new source and called
-			 * zconflex().  If so, then we have to assure
-			 * consistency between YY_CURRENT_BUFFER and our
-			 * globals.  Here is the right place to do so, because
-			 * this is the first action (other than possibly a
-			 * back-up) that will match for the new input source.
-			 */
-			(yy_n_chars) = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
-			YY_CURRENT_BUFFER_LVALUE->yy_input_file = zconfin;
-			YY_CURRENT_BUFFER_LVALUE->yy_buffer_status = YY_BUFFER_NORMAL;
-			}
-
-		/* Note that here we test for yy_c_buf_p "<=" to the position
-		 * of the first EOB in the buffer, since yy_c_buf_p will
-		 * already have been incremented past the NUL character
-		 * (since all states make transitions on EOB to the
-		 * end-of-buffer state).  Contrast this with the test
-		 * in input().
-		 */
-		if ( (yy_c_buf_p) <= &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] )
-			{ /* This was really a NUL. */
-			yy_state_type yy_next_state;
-
-			(yy_c_buf_p) = (yytext_ptr) + yy_amount_of_matched_text;
-
-			yy_current_state = yy_get_previous_state(  );
-
-			/* Okay, we're now positioned to make the NUL
-			 * transition.  We couldn't have
-			 * yy_get_previous_state() go ahead and do it
-			 * for us because it doesn't know how to deal
-			 * with the possibility of jamming (and we don't
-			 * want to build jamming into it because then it
-			 * will run more slowly).
-			 */
-
-			yy_next_state = yy_try_NUL_trans( yy_current_state );
-
-			yy_bp = (yytext_ptr) + YY_MORE_ADJ;
-
-			if ( yy_next_state )
-				{
-				/* Consume the NUL. */
-				yy_cp = ++(yy_c_buf_p);
-				yy_current_state = yy_next_state;
-				goto yy_match;
-				}
-
-			else
-				{
-				yy_cp = (yy_c_buf_p);
-				goto yy_find_action;
-				}
-			}
-
-		else switch ( yy_get_next_buffer(  ) )
-			{
-			case EOB_ACT_END_OF_FILE:
-				{
-				(yy_did_buffer_switch_on_eof) = 0;
-
-				if ( zconfwrap( ) )
-					{
-					/* Note: because we've taken care in
-					 * yy_get_next_buffer() to have set up
-					 * zconftext, we can now set up
-					 * yy_c_buf_p so that if some total
-					 * hoser (like flex itself) wants to
-					 * call the scanner after we return the
-					 * YY_NULL, it'll still work - another
-					 * YY_NULL will get returned.
-					 */
-					(yy_c_buf_p) = (yytext_ptr) + YY_MORE_ADJ;
-
-					yy_act = YY_STATE_EOF(YY_START);
-					goto do_action;
-					}
-
-				else
-					{
-					if ( ! (yy_did_buffer_switch_on_eof) )
-						YY_NEW_FILE;
-					}
-				break;
-				}
-
-			case EOB_ACT_CONTINUE_SCAN:
-				(yy_c_buf_p) =
-					(yytext_ptr) + yy_amount_of_matched_text;
-
-				yy_current_state = yy_get_previous_state(  );
-
-				yy_cp = (yy_c_buf_p);
-				yy_bp = (yytext_ptr) + YY_MORE_ADJ;
-				goto yy_match;
-
-			case EOB_ACT_LAST_MATCH:
-				(yy_c_buf_p) =
-				&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)];
-
-				yy_current_state = yy_get_previous_state(  );
-
-				yy_cp = (yy_c_buf_p);
-				yy_bp = (yytext_ptr) + YY_MORE_ADJ;
-				goto yy_find_action;
-			}
-		break;
-		}
-
-	default:
-		YY_FATAL_ERROR(
-			"fatal flex scanner internal error--no action found" );
-	} /* end of action switch */
-		} /* end of scanning one token */
-	} /* end of user's declarations */
-} /* end of zconflex */
-
-/* yy_get_next_buffer - try to read in a new buffer
- *
- * Returns a code representing an action:
- *	EOB_ACT_LAST_MATCH -
- *	EOB_ACT_CONTINUE_SCAN - continue scanning from current position
- *	EOB_ACT_END_OF_FILE - end of file
- */
-static int yy_get_next_buffer (void)
-{
-    	char *dest = YY_CURRENT_BUFFER_LVALUE->yy_ch_buf;
-	char *source = (yytext_ptr);
-	int number_to_move, i;
-	int ret_val;
-
-	if ( (yy_c_buf_p) > &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars) + 1] )
-		YY_FATAL_ERROR(
-		"fatal flex scanner internal error--end of buffer missed" );
-
-	if ( YY_CURRENT_BUFFER_LVALUE->yy_fill_buffer == 0 )
-		{ /* Don't try to fill the buffer, so this is an EOF. */
-		if ( (yy_c_buf_p) - (yytext_ptr) - YY_MORE_ADJ == 1 )
-			{
-			/* We matched a single character, the EOB, so
-			 * treat this as a final EOF.
-			 */
-			return EOB_ACT_END_OF_FILE;
-			}
-
-		else
-			{
-			/* We matched some text prior to the EOB, first
-			 * process it.
-			 */
-			return EOB_ACT_LAST_MATCH;
-			}
-		}
-
-	/* Try to read more data. */
-
-	/* First move last chars to start of buffer. */
-	number_to_move = (int) ((yy_c_buf_p) - (yytext_ptr) - 1);
-
-	for ( i = 0; i < number_to_move; ++i )
-		*(dest++) = *(source++);
-
-	if ( YY_CURRENT_BUFFER_LVALUE->yy_buffer_status == YY_BUFFER_EOF_PENDING )
-		/* don't do the read, it's not guaranteed to return an EOF,
-		 * just force an EOF
-		 */
-		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars) = 0;
-
-	else
-		{
-			int num_to_read =
-			YY_CURRENT_BUFFER_LVALUE->yy_buf_size - number_to_move - 1;
-
-		while ( num_to_read <= 0 )
-			{ /* Not enough room in the buffer - grow it. */
-
-			/* just a shorter name for the current buffer */
-			YY_BUFFER_STATE b = YY_CURRENT_BUFFER_LVALUE;
-
-			int yy_c_buf_p_offset =
-				(int) ((yy_c_buf_p) - b->yy_ch_buf);
-
-			if ( b->yy_is_our_buffer )
-				{
-				int new_size = b->yy_buf_size * 2;
-
-				if ( new_size <= 0 )
-					b->yy_buf_size += b->yy_buf_size / 8;
-				else
-					b->yy_buf_size *= 2;
-
-				b->yy_ch_buf = (char *)
-					/* Include room in for 2 EOB chars. */
-					zconfrealloc((void *) b->yy_ch_buf,b->yy_buf_size + 2  );
-				}
-			else
-				/* Can't grow it, we don't own it. */
-				b->yy_ch_buf = NULL;
-
-			if ( ! b->yy_ch_buf )
-				YY_FATAL_ERROR(
-				"fatal error - scanner input buffer overflow" );
-
-			(yy_c_buf_p) = &b->yy_ch_buf[yy_c_buf_p_offset];
-
-			num_to_read = YY_CURRENT_BUFFER_LVALUE->yy_buf_size -
-						number_to_move - 1;
-
-			}
-
-		if ( num_to_read > YY_READ_BUF_SIZE )
-			num_to_read = YY_READ_BUF_SIZE;
-
-		/* Read in more data. */
-		YY_INPUT( (&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move]),
-			(yy_n_chars), num_to_read );
-
-		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
-		}
-
-	if ( (yy_n_chars) == 0 )
-		{
-		if ( number_to_move == YY_MORE_ADJ )
-			{
-			ret_val = EOB_ACT_END_OF_FILE;
-			zconfrestart(zconfin  );
-			}
-
-		else
-			{
-			ret_val = EOB_ACT_LAST_MATCH;
-			YY_CURRENT_BUFFER_LVALUE->yy_buffer_status =
-				YY_BUFFER_EOF_PENDING;
-			}
-		}
-
-	else
-		ret_val = EOB_ACT_CONTINUE_SCAN;
-
-	if (((yy_n_chars) + number_to_move) > YY_CURRENT_BUFFER_LVALUE->yy_buf_size) {
-		/* Extend the array by 50%, plus the number we really need. */
-		int new_size = (yy_n_chars) + number_to_move + ((yy_n_chars) >> 1);
-		YY_CURRENT_BUFFER_LVALUE->yy_ch_buf = (char *) zconfrealloc((void *) YY_CURRENT_BUFFER_LVALUE->yy_ch_buf,new_size  );
-		if ( ! YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
-			YY_FATAL_ERROR( "out of dynamic memory in yy_get_next_buffer()" );
-	}
-
-	(yy_n_chars) += number_to_move;
-	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] = YY_END_OF_BUFFER_CHAR;
-	YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars) + 1] = YY_END_OF_BUFFER_CHAR;
-
-	(yytext_ptr) = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[0];
-
-	return ret_val;
-}
-
-/* yy_get_previous_state - get the state just before the EOB char was reached */
-
-    static yy_state_type yy_get_previous_state (void)
-{
-	yy_state_type yy_current_state;
-	char *yy_cp;
-    
-	yy_current_state = (yy_start);
-
-	for ( yy_cp = (yytext_ptr) + YY_MORE_ADJ; yy_cp < (yy_c_buf_p); ++yy_cp )
-		{
-		yy_current_state = yy_nxt[yy_current_state][(*yy_cp ? yy_ec[YY_SC_TO_UI(*yy_cp)] : 1)];
-		}
-
-	return yy_current_state;
-}
-
-/* yy_try_NUL_trans - try to make a transition on the NUL character
- *
- * synopsis
- *	next_state = yy_try_NUL_trans( current_state );
- */
-    static yy_state_type yy_try_NUL_trans  (yy_state_type yy_current_state )
-{
-	int yy_is_jam;
-    
-	yy_current_state = yy_nxt[yy_current_state][1];
-	yy_is_jam = (yy_current_state <= 0);
-
-		return yy_is_jam ? 0 : yy_current_state;
-}
-
-#ifndef YY_NO_UNPUT
-
-    static void yyunput (int c, char * yy_bp )
-{
-	char *yy_cp;
-    
-    yy_cp = (yy_c_buf_p);
-
-	/* undo effects of setting up zconftext */
-	*yy_cp = (yy_hold_char);
-
-	if ( yy_cp < YY_CURRENT_BUFFER_LVALUE->yy_ch_buf + 2 )
-		{ /* need to shift things up to make room */
-		/* +2 for EOB chars. */
-		int number_to_move = (yy_n_chars) + 2;
-		char *dest = &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[
-					YY_CURRENT_BUFFER_LVALUE->yy_buf_size + 2];
-		char *source =
-				&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move];
-
-		while ( source > YY_CURRENT_BUFFER_LVALUE->yy_ch_buf )
-			*--dest = *--source;
-
-		yy_cp += (int) (dest - source);
-		yy_bp += (int) (dest - source);
-		YY_CURRENT_BUFFER_LVALUE->yy_n_chars =
-			(yy_n_chars) = (int) YY_CURRENT_BUFFER_LVALUE->yy_buf_size;
-
-		if ( yy_cp < YY_CURRENT_BUFFER_LVALUE->yy_ch_buf + 2 )
-			YY_FATAL_ERROR( "flex scanner push-back overflow" );
-		}
-
-	*--yy_cp = (char) c;
-
-	(yytext_ptr) = yy_bp;
-	(yy_hold_char) = *yy_cp;
-	(yy_c_buf_p) = yy_cp;
-}
-
-#endif
-
-#ifndef YY_NO_INPUT
-#ifdef __cplusplus
-    static int yyinput (void)
-#else
-    static int input  (void)
-#endif
-
-{
-	int c;
-    
-	*(yy_c_buf_p) = (yy_hold_char);
-
-	if ( *(yy_c_buf_p) == YY_END_OF_BUFFER_CHAR )
-		{
-		/* yy_c_buf_p now points to the character we want to return.
-		 * If this occurs *before* the EOB characters, then it's a
-		 * valid NUL; if not, then we've hit the end of the buffer.
-		 */
-		if ( (yy_c_buf_p) < &YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[(yy_n_chars)] )
-			/* This was really a NUL. */
-			*(yy_c_buf_p) = '\0';
-
-		else
-			{ /* need more input */
-			int offset = (yy_c_buf_p) - (yytext_ptr);
-			++(yy_c_buf_p);
-
-			switch ( yy_get_next_buffer(  ) )
-				{
-				case EOB_ACT_LAST_MATCH:
-					/* This happens because yy_g_n_b()
-					 * sees that we've accumulated a
-					 * token and flags that we need to
-					 * try matching the token before
-					 * proceeding.  But for input(),
-					 * there's no matching to consider.
-					 * So convert the EOB_ACT_LAST_MATCH
-					 * to EOB_ACT_END_OF_FILE.
-					 */
-
-					/* Reset buffer status. */
-					zconfrestart(zconfin );
-
-					/*FALLTHROUGH*/
-
-				case EOB_ACT_END_OF_FILE:
-					{
-					if ( zconfwrap( ) )
-						return 0;
-
-					if ( ! (yy_did_buffer_switch_on_eof) )
-						YY_NEW_FILE;
-#ifdef __cplusplus
-					return yyinput();
-#else
-					return input();
-#endif
-					}
-
-				case EOB_ACT_CONTINUE_SCAN:
-					(yy_c_buf_p) = (yytext_ptr) + offset;
-					break;
-				}
-			}
-		}
-
-	c = *(unsigned char *) (yy_c_buf_p);	/* cast for 8-bit char's */
-	*(yy_c_buf_p) = '\0';	/* preserve zconftext */
-	(yy_hold_char) = *++(yy_c_buf_p);
-
-	return c;
-}
-#endif	/* ifndef YY_NO_INPUT */
-
-/** Immediately switch to a different input stream.
- * @param input_file A readable stream.
- * 
- * @note This function does not reset the start condition to @c INITIAL .
- */
-    void zconfrestart  (FILE * input_file )
-{
-    
-	if ( ! YY_CURRENT_BUFFER ){
-        zconfensure_buffer_stack ();
-		YY_CURRENT_BUFFER_LVALUE =
-            zconf_create_buffer(zconfin,YY_BUF_SIZE );
-	}
-
-	zconf_init_buffer(YY_CURRENT_BUFFER,input_file );
-	zconf_load_buffer_state( );
-}
-
-/** Switch to a different input buffer.
- * @param new_buffer The new input buffer.
- * 
- */
-    void zconf_switch_to_buffer  (YY_BUFFER_STATE  new_buffer )
-{
-    
-	/* TODO. We should be able to replace this entire function body
-	 * with
-	 *		zconfpop_buffer_state();
-	 *		zconfpush_buffer_state(new_buffer);
-     */
-	zconfensure_buffer_stack ();
-	if ( YY_CURRENT_BUFFER == new_buffer )
-		return;
-
-	if ( YY_CURRENT_BUFFER )
-		{
-		/* Flush out information for old buffer. */
-		*(yy_c_buf_p) = (yy_hold_char);
-		YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
-		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
-		}
-
-	YY_CURRENT_BUFFER_LVALUE = new_buffer;
-	zconf_load_buffer_state( );
-
-	/* We don't actually know whether we did this switch during
-	 * EOF (zconfwrap()) processing, but the only time this flag
-	 * is looked at is after zconfwrap() is called, so it's safe
-	 * to go ahead and always set it.
-	 */
-	(yy_did_buffer_switch_on_eof) = 1;
-}
-
-static void zconf_load_buffer_state  (void)
-{
-    	(yy_n_chars) = YY_CURRENT_BUFFER_LVALUE->yy_n_chars;
-	(yytext_ptr) = (yy_c_buf_p) = YY_CURRENT_BUFFER_LVALUE->yy_buf_pos;
-	zconfin = YY_CURRENT_BUFFER_LVALUE->yy_input_file;
-	(yy_hold_char) = *(yy_c_buf_p);
-}
-
-/** Allocate and initialize an input buffer state.
- * @param file A readable stream.
- * @param size The character buffer size in bytes. When in doubt, use @c YY_BUF_SIZE.
- * 
- * @return the allocated buffer state.
- */
-    YY_BUFFER_STATE zconf_create_buffer  (FILE * file, int  size )
-{
-	YY_BUFFER_STATE b;
-    
-	b = (YY_BUFFER_STATE) zconfalloc(sizeof( struct yy_buffer_state )  );
-	if ( ! b )
-		YY_FATAL_ERROR( "out of dynamic memory in zconf_create_buffer()" );
-
-	b->yy_buf_size = (yy_size_t)size;
-
-	/* yy_ch_buf has to be 2 characters longer than the size given because
-	 * we need to put in 2 end-of-buffer characters.
-	 */
-	b->yy_ch_buf = (char *) zconfalloc(b->yy_buf_size + 2  );
-	if ( ! b->yy_ch_buf )
-		YY_FATAL_ERROR( "out of dynamic memory in zconf_create_buffer()" );
-
-	b->yy_is_our_buffer = 1;
-
-	zconf_init_buffer(b,file );
-
-	return b;
-}
-
-/** Destroy the buffer.
- * @param b a buffer created with zconf_create_buffer()
- * 
- */
-    void zconf_delete_buffer (YY_BUFFER_STATE  b )
-{
-    
-	if ( ! b )
-		return;
-
-	if ( b == YY_CURRENT_BUFFER ) /* Not sure if we should pop here. */
-		YY_CURRENT_BUFFER_LVALUE = (YY_BUFFER_STATE) 0;
-
-	if ( b->yy_is_our_buffer )
-		zconffree((void *) b->yy_ch_buf  );
-
-	zconffree((void *) b  );
-}
-
-/* Initializes or reinitializes a buffer.
- * This function is sometimes called more than once on the same buffer,
- * such as during a zconfrestart() or at EOF.
- */
-    static void zconf_init_buffer  (YY_BUFFER_STATE  b, FILE * file )
-
-{
-	int oerrno = errno;
-    
-	zconf_flush_buffer(b );
-
-	b->yy_input_file = file;
-	b->yy_fill_buffer = 1;
-
-    /* If b is the current buffer, then zconf_init_buffer was _probably_
-     * called from zconfrestart() or through yy_get_next_buffer.
-     * In that case, we don't want to reset the lineno or column.
-     */
-    if (b != YY_CURRENT_BUFFER){
-        b->yy_bs_lineno = 1;
-        b->yy_bs_column = 0;
-    }
-
-        b->yy_is_interactive = 0;
-    
-	errno = oerrno;
-}
-
-/** Discard all buffered characters. On the next scan, YY_INPUT will be called.
- * @param b the buffer state to be flushed, usually @c YY_CURRENT_BUFFER.
- * 
- */
-    void zconf_flush_buffer (YY_BUFFER_STATE  b )
-{
-    	if ( ! b )
-		return;
-
-	b->yy_n_chars = 0;
-
-	/* We always need two end-of-buffer characters.  The first causes
-	 * a transition to the end-of-buffer state.  The second causes
-	 * a jam in that state.
-	 */
-	b->yy_ch_buf[0] = YY_END_OF_BUFFER_CHAR;
-	b->yy_ch_buf[1] = YY_END_OF_BUFFER_CHAR;
-
-	b->yy_buf_pos = &b->yy_ch_buf[0];
-
-	b->yy_at_bol = 1;
-	b->yy_buffer_status = YY_BUFFER_NEW;
-
-	if ( b == YY_CURRENT_BUFFER )
-		zconf_load_buffer_state( );
-}
-
-/** Pushes the new state onto the stack. The new state becomes
- *  the current state. This function will allocate the stack
- *  if necessary.
- *  @param new_buffer The new state.
- *  
- */
-void zconfpush_buffer_state (YY_BUFFER_STATE new_buffer )
-{
-    	if (new_buffer == NULL)
-		return;
-
-	zconfensure_buffer_stack();
-
-	/* This block is copied from zconf_switch_to_buffer. */
-	if ( YY_CURRENT_BUFFER )
-		{
-		/* Flush out information for old buffer. */
-		*(yy_c_buf_p) = (yy_hold_char);
-		YY_CURRENT_BUFFER_LVALUE->yy_buf_pos = (yy_c_buf_p);
-		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
-		}
-
-	/* Only push if top exists. Otherwise, replace top. */
-	if (YY_CURRENT_BUFFER)
-		(yy_buffer_stack_top)++;
-	YY_CURRENT_BUFFER_LVALUE = new_buffer;
-
-	/* copied from zconf_switch_to_buffer. */
-	zconf_load_buffer_state( );
-	(yy_did_buffer_switch_on_eof) = 1;
-}
-
-/** Removes and deletes the top of the stack, if present.
- *  The next element becomes the new top.
- *  
- */
-void zconfpop_buffer_state (void)
-{
-    	if (!YY_CURRENT_BUFFER)
-		return;
-
-	zconf_delete_buffer(YY_CURRENT_BUFFER );
-	YY_CURRENT_BUFFER_LVALUE = NULL;
-	if ((yy_buffer_stack_top) > 0)
-		--(yy_buffer_stack_top);
-
-	if (YY_CURRENT_BUFFER) {
-		zconf_load_buffer_state( );
-		(yy_did_buffer_switch_on_eof) = 1;
-	}
-}
-
-/* Allocates the stack if it does not exist.
- *  Guarantees space for at least one push.
- */
-static void zconfensure_buffer_stack (void)
-{
-	int num_to_alloc;
-    
-	if (!(yy_buffer_stack)) {
-
-		/* First allocation is just for 2 elements, since we don't know if this
-		 * scanner will even need a stack. We use 2 instead of 1 to avoid an
-		 * immediate realloc on the next call.
-         */
-      num_to_alloc = 1; /* After all that talk, this was set to 1 anyways... */
-		(yy_buffer_stack) = (struct yy_buffer_state**)zconfalloc
-								(num_to_alloc * sizeof(struct yy_buffer_state*)
-								);
-		if ( ! (yy_buffer_stack) )
-			YY_FATAL_ERROR( "out of dynamic memory in zconfensure_buffer_stack()" );
-
-		memset((yy_buffer_stack), 0, num_to_alloc * sizeof(struct yy_buffer_state*));
-
-		(yy_buffer_stack_max) = num_to_alloc;
-		(yy_buffer_stack_top) = 0;
-		return;
-	}
-
-	if ((yy_buffer_stack_top) >= ((yy_buffer_stack_max)) - 1){
-
-		/* Increase the buffer to prepare for a possible push. */
-		yy_size_t grow_size = 8 /* arbitrary grow size */;
-
-		num_to_alloc = (yy_buffer_stack_max) + grow_size;
-		(yy_buffer_stack) = (struct yy_buffer_state**)zconfrealloc
-								((yy_buffer_stack),
-								num_to_alloc * sizeof(struct yy_buffer_state*)
-								);
-		if ( ! (yy_buffer_stack) )
-			YY_FATAL_ERROR( "out of dynamic memory in zconfensure_buffer_stack()" );
-
-		/* zero only the new slots.*/
-		memset((yy_buffer_stack) + (yy_buffer_stack_max), 0, grow_size * sizeof(struct yy_buffer_state*));
-		(yy_buffer_stack_max) = num_to_alloc;
-	}
-}
-
-/** Setup the input buffer state to scan directly from a user-specified character buffer.
- * @param base the character buffer
- * @param size the size in bytes of the character buffer
- * 
- * @return the newly allocated buffer state object.
- */
-YY_BUFFER_STATE zconf_scan_buffer  (char * base, yy_size_t  size )
-{
-	YY_BUFFER_STATE b;
-    
-	if ( size < 2 ||
-	     base[size-2] != YY_END_OF_BUFFER_CHAR ||
-	     base[size-1] != YY_END_OF_BUFFER_CHAR )
-		/* They forgot to leave room for the EOB's. */
-		return NULL;
-
-	b = (YY_BUFFER_STATE) zconfalloc(sizeof( struct yy_buffer_state )  );
-	if ( ! b )
-		YY_FATAL_ERROR( "out of dynamic memory in zconf_scan_buffer()" );
-
-	b->yy_buf_size = size - 2;	/* "- 2" to take care of EOB's */
-	b->yy_buf_pos = b->yy_ch_buf = base;
-	b->yy_is_our_buffer = 0;
-	b->yy_input_file = NULL;
-	b->yy_n_chars = b->yy_buf_size;
-	b->yy_is_interactive = 0;
-	b->yy_at_bol = 1;
-	b->yy_fill_buffer = 0;
-	b->yy_buffer_status = YY_BUFFER_NEW;
-
-	zconf_switch_to_buffer(b  );
-
-	return b;
-}
-
-/** Setup the input buffer state to scan a string. The next call to zconflex() will
- * scan from a @e copy of @a str.
- * @param yystr a NUL-terminated string to scan
- * 
- * @return the newly allocated buffer state object.
- * @note If you want to scan bytes that may contain NUL values, then use
- *       zconf_scan_bytes() instead.
- */
-YY_BUFFER_STATE zconf_scan_string (yyconst char * yystr )
-{
-    
-	return zconf_scan_bytes(yystr,(int) strlen(yystr) );
-}
-
-/** Setup the input buffer state to scan the given bytes. The next call to zconflex() will
- * scan from a @e copy of @a bytes.
- * @param yybytes the byte buffer to scan
- * @param _yybytes_len the number of bytes in the buffer pointed to by @a bytes.
- * 
- * @return the newly allocated buffer state object.
- */
-YY_BUFFER_STATE zconf_scan_bytes  (yyconst char * yybytes, int  _yybytes_len )
-{
-	YY_BUFFER_STATE b;
-	char *buf;
-	yy_size_t n;
-	int i;
-    
-	/* Get memory for full buffer, including space for trailing EOB's. */
-	n = (yy_size_t) (_yybytes_len + 2);
-	buf = (char *) zconfalloc(n  );
-	if ( ! buf )
-		YY_FATAL_ERROR( "out of dynamic memory in zconf_scan_bytes()" );
-
-	for ( i = 0; i < _yybytes_len; ++i )
-		buf[i] = yybytes[i];
-
-	buf[_yybytes_len] = buf[_yybytes_len+1] = YY_END_OF_BUFFER_CHAR;
-
-	b = zconf_scan_buffer(buf,n );
-	if ( ! b )
-		YY_FATAL_ERROR( "bad buffer in zconf_scan_bytes()" );
-
-	/* It's okay to grow etc. this buffer, and we should throw it
-	 * away when we're done.
-	 */
-	b->yy_is_our_buffer = 1;
-
-	return b;
-}
-
-#ifndef YY_EXIT_FAILURE
-#define YY_EXIT_FAILURE 2
-#endif
-
-static void yynoreturn yy_fatal_error (yyconst char* msg )
-{
-			(void) fprintf( stderr, "%s\n", msg );
-	exit( YY_EXIT_FAILURE );
-}
-
-/* Redefine yyless() so it works in section 3 code. */
-
-#undef yyless
-#define yyless(n) \
-	do \
-		{ \
-		/* Undo effects of setting up zconftext. */ \
-        int yyless_macro_arg = (n); \
-        YY_LESS_LINENO(yyless_macro_arg);\
-		zconftext[zconfleng] = (yy_hold_char); \
-		(yy_c_buf_p) = zconftext + yyless_macro_arg; \
-		(yy_hold_char) = *(yy_c_buf_p); \
-		*(yy_c_buf_p) = '\0'; \
-		zconfleng = yyless_macro_arg; \
-		} \
-	while ( 0 )
-
-/* Accessor  methods (get/set functions) to struct members. */
-
-/** Get the current line number.
- * 
- */
-int zconfget_lineno  (void)
-{
-    
-    return zconflineno;
-}
-
-/** Get the input stream.
- * 
- */
-FILE *zconfget_in  (void)
-{
-        return zconfin;
-}
-
-/** Get the output stream.
- * 
- */
-FILE *zconfget_out  (void)
-{
-        return zconfout;
-}
-
-/** Get the length of the current token.
- * 
- */
-int zconfget_leng  (void)
-{
-        return zconfleng;
-}
-
-/** Get the current token.
- * 
- */
-
-char *zconfget_text  (void)
-{
-        return zconftext;
-}
-
-/** Set the current line number.
- * @param _line_number line number
- * 
- */
-void zconfset_lineno (int  _line_number )
-{
-    
-    zconflineno = _line_number;
-}
-
-/** Set the input stream. This does not discard the current
- * input buffer.
- * @param _in_str A readable stream.
- * 
- * @see zconf_switch_to_buffer
- */
-void zconfset_in (FILE *  _in_str )
-{
-        zconfin = _in_str ;
-}
-
-void zconfset_out (FILE *  _out_str )
-{
-        zconfout = _out_str ;
-}
-
-int zconfget_debug  (void)
-{
-        return zconf_flex_debug;
-}
-
-void zconfset_debug (int  _bdebug )
-{
-        zconf_flex_debug = _bdebug ;
-}
-
-static int yy_init_globals (void)
-{
-        /* Initialization is the same as for the non-reentrant scanner.
-     * This function is called from zconflex_destroy(), so don't allocate here.
-     */
-
-    (yy_buffer_stack) = NULL;
-    (yy_buffer_stack_top) = 0;
-    (yy_buffer_stack_max) = 0;
-    (yy_c_buf_p) = NULL;
-    (yy_init) = 0;
-    (yy_start) = 0;
-
-/* Defined in main.c */
-#ifdef YY_STDINIT
-    zconfin = stdin;
-    zconfout = stdout;
-#else
-    zconfin = NULL;
-    zconfout = NULL;
-#endif
-
-    /* For future reference: Set errno on error, since we are called by
-     * zconflex_init()
-     */
-    return 0;
-}
-
-/* zconflex_destroy is for both reentrant and non-reentrant scanners. */
-int zconflex_destroy  (void)
-{
-    
-    /* Pop the buffer stack, destroying each element. */
-	while(YY_CURRENT_BUFFER){
-		zconf_delete_buffer(YY_CURRENT_BUFFER  );
-		YY_CURRENT_BUFFER_LVALUE = NULL;
-		zconfpop_buffer_state();
-	}
-
-	/* Destroy the stack itself. */
-	zconffree((yy_buffer_stack) );
-	(yy_buffer_stack) = NULL;
-
-    /* Reset the globals. This is important in a non-reentrant scanner so the next time
-     * zconflex() is called, initialization will occur. */
-    yy_init_globals( );
-
-    return 0;
-}
-
-/*
- * Internal utility routines.
- */
-
-#ifndef yytext_ptr
-static void yy_flex_strncpy (char* s1, yyconst char * s2, int n )
-{
-		
-	int i;
-	for ( i = 0; i < n; ++i )
-		s1[i] = s2[i];
-}
-#endif
-
-#ifdef YY_NEED_STRLEN
-static int yy_flex_strlen (yyconst char * s )
-{
-	int n;
-	for ( n = 0; s[n]; ++n )
-		;
-
-	return n;
-}
-#endif
-
-void *zconfalloc (yy_size_t  size )
-{
-			return malloc(size);
-}
-
-void *zconfrealloc  (void * ptr, yy_size_t  size )
-{
-		
-	/* The cast to (char *) in the following accommodates both
-	 * implementations that use char* generic pointers, and those
-	 * that use void* generic pointers.  It works with the latter
-	 * because both ANSI C and C++ allow castless assignment from
-	 * any pointer type to void*, and deal with argument conversions
-	 * as though doing an assignment.
-	 */
-	return realloc(ptr, size);
-}
-
-void zconffree (void * ptr )
-{
-			free( (char *) ptr );	/* see zconfrealloc() for (char *) cast */
-}
-
-#define YYTABLES_NAME "yytables"
-
-void zconf_starthelp(void)
-{
-	new_string();
-	last_ts = first_ts = 0;
-	BEGIN(HELP);
-}
-
-static void zconf_endhelp(void)
-{
-	zconflval.string = text;
-	BEGIN(INITIAL);
-}
-
-/*
- * Try to open specified file with following names:
- * ./name
- * $(srctree)/name
- * The latter is used when srctree is separate from objtree
- * when compiling the kernel.
- * Return NULL if file is not found.
- */
-FILE *zconf_fopen(const char *name)
-{
-	char *env, fullname[PATH_MAX+1];
-	FILE *f;
-
-	f = fopen(name, "r");
-	if (!f && name != NULL && name[0] != '/') {
-		env = getenv(SRCTREE);
-		if (env) {
-			sprintf(fullname, "%s/%s", env, name);
-			f = fopen(fullname, "r");
-		}
-	}
-	return f;
-}
-
-void zconf_initscan(const char *name)
-{
-	zconfin = zconf_fopen(name);
-	if (!zconfin) {
-		printf("can't find file %s\n", name);
-		exit(1);
-	}
-
-	current_buf = xmalloc(sizeof(*current_buf));
-	memset(current_buf, 0, sizeof(*current_buf));
-
-	current_file = file_lookup(name);
-	current_file->lineno = 1;
-}
-
-static void __zconf_nextfile(const char *name)
-{
-	struct file *iter;
-	struct file *file = file_lookup(name);
-	struct buffer *buf = xmalloc(sizeof(*buf));
-	memset(buf, 0, sizeof(*buf));
-
-	current_buf->state = YY_CURRENT_BUFFER;
-	zconfin = zconf_fopen(file->name);
-	if (!zconfin) {
-		printf("%s:%d: can't open file \"%s\"\n",
-		    zconf_curname(), zconf_lineno(), file->name);
-		exit(1);
-	}
-	zconf_switch_to_buffer(zconf_create_buffer(zconfin,YY_BUF_SIZE));
-	buf->parent = current_buf;
-	current_buf = buf;
-
-	for (iter = current_file->parent; iter; iter = iter->parent ) {
-		if (!strcmp(current_file->name,iter->name) ) {
-			printf("%s:%d: recursive inclusion detected. "
-			       "Inclusion path:\n  current file : '%s'\n",
-			       zconf_curname(), zconf_lineno(),
-			       zconf_curname());
-			iter = current_file->parent;
-			while (iter && \
-			       strcmp(iter->name,current_file->name)) {
-				printf("  included from: '%s:%d'\n",
-				       iter->name, iter->lineno-1);
-				iter = iter->parent;
-			}
-			if (iter)
-				printf("  included from: '%s:%d'\n",
-				       iter->name, iter->lineno+1);
-			exit(1);
-		}
-	}
-	file->lineno = 1;
-	file->parent = current_file;
-	current_file = file;
-}
-
-void zconf_nextfile(const char *name)
-{
-	glob_t gl;
-	int err;
-	int i;
-	char path[PATH_MAX], *p;
-
-	err = glob(name, GLOB_ERR | GLOB_MARK, NULL, &gl);
-
-	/* ignore wildcard patterns that return no result */
-	if (err == GLOB_NOMATCH && strchr(name, '*')) {
-		err = 0;
-		gl.gl_pathc = 0;
-	}
-
-	if (err == GLOB_NOMATCH) {
-		p = strdup(current_file->name);
-		if (p) {
-			snprintf(path, sizeof(path), "%s/%s", dirname(p), name);
-			err = glob(path, GLOB_ERR | GLOB_MARK, NULL, &gl);
-			free(p);
-		}
-	}
-
-	if (err) {
-		const char *reason = "unknown error";
-
-		switch (err) {
-		case GLOB_NOSPACE:
-			reason = "out of memory";
-			break;
-		case GLOB_ABORTED:
-			reason = "read error";
-			break;
-		case GLOB_NOMATCH:
-			reason = "No files found";
-			break;
-		default:
-			break;
-		}
-
-		printf("%s:%d: glob failed: %s \"%s\"\n", zconf_curname(), zconf_lineno(),
-			reason, name);
-
-		exit(1);
-	}
-
-	for (i = 0; i < gl.gl_pathc; i++)
-		__zconf_nextfile(gl.gl_pathv[i]);
-}
-
-static void zconf_endfile(void)
-{
-	struct buffer *parent;
-
-	current_file = current_file->parent;
-
-	parent = current_buf->parent;
-	if (parent) {
-		fclose(zconfin);
-		zconf_delete_buffer(YY_CURRENT_BUFFER);
-		zconf_switch_to_buffer(parent->state);
-	}
-	free(current_buf);
-	current_buf = parent;
-}
-
-int zconf_lineno(void)
-{
-	return current_pos.lineno;
-}
-
-const char *zconf_curname(void)
-{
-	return current_pos.file ? current_pos.file->name : "<none>";
-}
-

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
