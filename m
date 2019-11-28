Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882C610CED3
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 20:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g0AqYJIOCOlQ1NWh5poLa6MnahJ/keutGk7LlM57p88=; b=LfXYAw5GhfshWa
	p8vAQpycY/09aSHcDhtCu0qukhVgNzN+wEOY+o/AE1RYYAl7KEhScEg6KlUAzLDB+5rVjxUCYaHbQ
	YkOZGmLyKNvyOSHR8rGRU/+dszRVyFwTf7jSIMldivYHhh9iLrxkaCms7cSTJtMIzVwge+q9OpGmZ
	xlPGZIXctcP9SHeZO5WSi5A3Jl2fDCgcTzGBam8npg5yLTTA1unayVLEPTFV3M1wI8w9lTal17oQw
	1J7CB681IQqS4BPOEcJMBwutKI8q4NezpIK9uWfaaFP8LYKyBU3hqZpDKOGza4Vl2ZnoykoLJTpl9
	DURYXCBhYLeBfi/RGNFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaPKW-0008F6-LY; Thu, 28 Nov 2019 19:19:56 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaPKE-00085O-B1
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 19:19:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id j12so11917736plt.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 11:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zriMfPfmw8bsE7ETRco9PIoNSRcY1mQu1/kW9HKLIS8=;
 b=df7qjUoYwLAzKrV+oJIPsUbatvEOpmfuu60tM0xHHY9PLevskYLmjsUUuhYOeY75bL
 kvP5XOoWWsq25HnoCdku66OAROlumdMz1girJLpTUL77TKMUtSUsLD9pPv09aHVt9YLc
 zlFy6B40LETEms+VFHnXQbq67vY2/rXusRO0pPZMYoNtw20wkKSiZ3dw/Rf4Z3A1ZXBU
 kmGC6QzDy5ExXhk6051h6M2pU8MdryZUu7sQ1PFdn5h9IgxbgZ3k+bUqNPTfLFOiir8b
 94ZESwDYDsafL1QjVEd1ymLQNk1gBaoBefDw0mijpTRRL3+pzPdnwR1GH0uXC1Nj0P4B
 ZGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zriMfPfmw8bsE7ETRco9PIoNSRcY1mQu1/kW9HKLIS8=;
 b=j2n1gr/VT1bl9s4OzNaNiFSAFl/X+d0/CrvfNJNDgyYwuFE6vNO0XRz+GPb7chn0K4
 pf+e/fo8DpEFximbQRmeN/K0D7KZMxh+piNkenljDjx8dMy3O8+CLSWBvu8YKIIUfYdQ
 B9GhEFFp6PO6/8g9CQ/BhlgwsbvgnS8Pij5xqfuusbYsl+03v1ach9QxEPElIRGr/auP
 Q7oZEk9Y9HHsB17MkP+8E8JzsquC+xOs7QV2rGAGsXzkwYoGyS80tQw7Fp4046Gob8Cs
 dA3FWQb5Es/cqCQ16jsCtSLKda7Hx/YmsRU/a9P1IAn0a1ZQj5YczZvdboOkFR1LFQXG
 22fw==
X-Gm-Message-State: APjAAAVOMq8F/LGywoeYRwcx5yrnTetH4F2INTETqNfuZDD3EF0rb0AK
 4otLKdx/GRsEHmRem87Jinrewsnvqdo=
X-Google-Smtp-Source: APXvYqzfmzSps5oP2saGVBtoiBBgGx3GHFLkqIHK7+JDgHCYeCniG8GPqZCidesnw11vjPHeh2VDNA==
X-Received: by 2002:a17:902:b218:: with SMTP id
 t24mr11175156plr.267.1574968774335; 
 Thu, 28 Nov 2019 11:19:34 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id x197sm238594pfc.1.2019.11.28.11.19.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 11:19:33 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 Nov 2019 11:19:31 -0800
Message-Id: <20191128191933.5421-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_111938_382539_587F3303 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCHv2 1/3] tools/pkg-config: Replace with pkgconf
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

pkgconf is a newer, actively maintained implementation of pkg-config that
supports more aspects of the pkg-config file specification and provides a
library interface that applications can use to incorporate intelligent
handling of pkg-config files into themselves (such as build file
generators, IDEs, and compilers). Through its pkg-config compatibility
interface (activated when it is run as "pkg-config"), it also can
completely replace the original implementation.

It is also lighterweight and does not require glib2, as pkg-config does.

On other distros, pkgconf is symlinked to pkg-config. For simplicity here,
it is renamed to pkg-config.real, as in the original package.

Initial results have been positive. As before, pkgconf works as long as
the pkg-config files point to the proper paths.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/Makefile                                |  6 +++---
 tools/{pkg-config => pkgconf}/Makefile        | 20 +++++++------------
 .../{pkg-config => pkgconf}/files/pkg-config  |  0
 3 files changed, 10 insertions(+), 16 deletions(-)
 rename tools/{pkg-config => pkgconf}/Makefile (54%)
 rename tools/{pkg-config => pkgconf}/files/pkg-config (100%)

diff --git a/tools/Makefile b/tools/Makefile
index 2f57d25525..a7d48a40a4 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -22,7 +22,7 @@ ifneq ($(CONFIG_SDK)$(CONFIG_PACKAGE_kmod-b43)$(CONFIG_PACKAGE_b43legacy-firmwar
 endif
 
 tools-$(BUILD_TOOLCHAIN) += gmp mpfr mpc libelf expat
-tools-y += m4 libtool autoconf automake flex bison pkg-config mklibs zlib
+tools-y += m4 libtool autoconf automake flex bison pkgconf mklibs zlib
 tools-y += sstrip make-ext4fs e2fsprogs mtd-utils mkimage
 tools-y += firmware-utils patch-image quilt padjffs2
 tools-y += mm-macros missing-macros cmake bc findutils gengetopt patchelf
@@ -48,7 +48,7 @@ $(curdir)/squashfs/compile := $(curdir)/lzma-old/compile
 $(curdir)/squashfskit4/compile := $(curdir)/xz/compile $(curdir)/zlib/compile
 $(curdir)/quilt/compile := $(curdir)/autoconf/compile $(curdir)/findutils/compile
 $(curdir)/autoconf/compile := $(curdir)/m4/compile
-$(curdir)/automake/compile := $(curdir)/m4/compile $(curdir)/autoconf/compile $(curdir)/pkg-config/compile $(curdir)/xz/compile
+$(curdir)/automake/compile := $(curdir)/m4/compile $(curdir)/autoconf/compile $(curdir)/pkgconf/compile $(curdir)/xz/compile
 $(curdir)/gmp/compile := $(curdir)/libtool/compile
 $(curdir)/mpc/compile := $(curdir)/mpfr/compile $(curdir)/gmp/compile
 $(curdir)/mpfr/compile := $(curdir)/gmp/compile
@@ -69,7 +69,7 @@ $(curdir)/findutils/compile := $(curdir)/bison/compile
 $(curdir)/gengetopt/compile := $(curdir)/libtool/compile
 $(curdir)/patchelf/compile := $(curdir)/libtool/compile
 $(curdir)/dosfstools/compile := $(curdir)/autoconf/compile $(curdir)/automake/compile
-$(curdir)/libressl/compile := $(curdir)/pkg-config/compile
+$(curdir)/libressl/compile := $(curdir)/pkgconf/compile
 $(curdir)/mkimage/compile += $(curdir)/libressl/compile
 $(curdir)/firmware-utils/compile += $(curdir)/libressl/compile $(curdir)/zlib/compile
 $(curdir)/cmake/compile += $(curdir)/libressl/compile
diff --git a/tools/pkg-config/Makefile b/tools/pkgconf/Makefile
similarity index 54%
rename from tools/pkg-config/Makefile
rename to tools/pkgconf/Makefile
index 17a8737be1..cefee1edf0 100644
--- a/tools/pkg-config/Makefile
+++ b/tools/pkgconf/Makefile
@@ -1,4 +1,4 @@
-# 
+#
 # Copyright (C) 2006-2016 OpenWrt.org
 #
 # This is free software, licensed under the GNU General Public License v2.
@@ -6,12 +6,12 @@
 #
 include $(TOPDIR)/rules.mk
 
-PKG_NAME:=pkg-config
-PKG_VERSION:=0.29.2
+PKG_NAME:=pkgconf
+PKG_VERSION:=1.6.3
 
-PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_SOURCE_URL:=https://pkgconfig.freedesktop.org/releases/
-PKG_HASH:=6fc69c01688c9458a57eb9a1664c9aba372ccda420a02bf4429fe610e7e7d591
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
+PKG_SOURCE_URL:=https://distfiles.dereferenced.org/pkgconf
+PKG_HASH:=61f0b31b0d5ea0e862b454a80c170f57bad47879c0c42bd8de89200ff62ea210
 
 HOST_BUILD_PARALLEL:=1
 
@@ -19,15 +19,9 @@ include $(INCLUDE_DIR)/host-build.mk
 
 unexport PKG_CONFIG
 
-HOST_CONFIGURE_ARGS += --with-internal-glib
-
-ifeq ($(HOST_OS),Darwin)
-HOST_LDFLAGS += -framework CoreFoundation -framework Carbon
-endif
-
 define Host/Install
 	$(MAKE) -C $(HOST_BUILD_DIR) install
-	mv $(STAGING_DIR_HOST)/bin/pkg-config $(STAGING_DIR_HOST)/bin/pkg-config.real
+	mv $(STAGING_DIR_HOST)/bin/pkgconf $(STAGING_DIR_HOST)/bin/pkg-config.real
 	$(INSTALL_BIN) ./files/pkg-config $(STAGING_DIR_HOST)/bin/pkg-config
 endef
 
diff --git a/tools/pkg-config/files/pkg-config b/tools/pkgconf/files/pkg-config
similarity index 100%
rename from tools/pkg-config/files/pkg-config
rename to tools/pkgconf/files/pkg-config
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
