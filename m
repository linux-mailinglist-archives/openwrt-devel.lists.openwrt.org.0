Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F387610C036
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 23:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g0AqYJIOCOlQ1NWh5poLa6MnahJ/keutGk7LlM57p88=; b=HAcZ4Psy94vfvH
	dCKZBi4oqIkPGnqe3a03ipRZaPdZIlYNvJMmLGw9VjUfdxdXsDtfbaSK08y83RdhxtCDIZGLhqR3K
	kG46x5S7DOYTo16nhggsnyWwpm+WXCEQ3ITdT6BCPwWKBXJpmzrqCNDIdFuWOVqXZk3vt70PH1aSo
	R4b0IVZOv/KsQ0Ejueq2jWO/J0X9XzeMHHcPUN6bTzZ00vdQB84ePVFOx8w4IvdXZHWGXaUOBFpAO
	ZSa4s77G0B3g0vyvg/rWpOmIC5mv0wJHDm6yfByywMNuP4CECIeCGeTXr2ifKksrI6xc5uqMvZOrs
	81aUDIG1wenS9KKHRH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia5pe-00012E-EN; Wed, 27 Nov 2019 22:30:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia5p4-0000Jm-Ih
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 22:30:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id s5so11881248pfh.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 14:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zriMfPfmw8bsE7ETRco9PIoNSRcY1mQu1/kW9HKLIS8=;
 b=huqHWWVGXopGXUhJ3nGnDC6/b4+yJ5E/pe3L8z0dSaFbyK4GMUdqF9c1zbJ1yp6/Fp
 73tVzHKoViqVMQDp8Znl0K4bye2e9qpPgfvEsHf1iNvjnloKu8nC8Rj3+4+o9NRrPhd4
 G1uqbF4zDzNngsFCv6iTBGpxk0A/Brsw93TyewVWY/kI32sRCpIudSKlwRtDcycn8iIJ
 /RC/OUuKtILsLmm90A22NpKxD2cjdTVMpcjTwQQ0kxnIUCTZFSEPvnWkv1atHHa52wzH
 q/zXkMt4Z2m4C6II9VtxwZregMo2NbOrNuS7LlZ536vX7DveCLVuEOQZM5Y7F+rIwK7B
 QkDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zriMfPfmw8bsE7ETRco9PIoNSRcY1mQu1/kW9HKLIS8=;
 b=h0eyw30beCD8UHDwtbyyny7E44b+gEY3mHdA0z6maPJGkfvwWeaUee+xya9nxOeSAT
 Xa8oGH/HE6vhczCanWUzAgemOIf4GBJJVslkCrhtQAHP9eZQxOyYQapQ2wbViDy6g/Ej
 9Z/kPFLj4kjrOn6CP45bdwrElRImSGxtT1xo8zTpC5brElsMas301yX0dDpUU5vzKmZv
 B9BaAHqPbGCKOJPKYFbHmIZDU6P2LabJyBwsq5dxsnCQwbxXR7VCzDmyBwl0jbe+JSRx
 jQ8xUv2o/9UW+iQnVWJEg89ACMoCy1DVNk5Gh3KuK/7dqyJ5++4i5J8DD2yWKYkxP+Qb
 g6uQ==
X-Gm-Message-State: APjAAAVYfhszaPN/fGrzP7MV+XizNyCuuAbcHHFNsBAMzkG6k4WnvHCX
 UDoGsT6OqU3/P/PIQFuOCXROcI31k4g=
X-Google-Smtp-Source: APXvYqxtxYO3vIGCF28WKUwsMurFsUw0S4uyJiEZdbTAM1vvGL1SPWnpmxnqWu4gMaBtP2xHWRphKg==
X-Received: by 2002:a63:5962:: with SMTP id j34mr6993579pgm.421.1574893807266; 
 Wed, 27 Nov 2019 14:30:07 -0800 (PST)
Received: from mangix-trapnet.lan ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id g191sm7411397pfb.19.2019.11.27.14.30.06
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 14:30:06 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 27 Nov 2019 14:30:03 -0800
Message-Id: <20191127223005.9632-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_143010_613753_257854DC 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/3] tools/pkg-config: Replace with pkgconf
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
