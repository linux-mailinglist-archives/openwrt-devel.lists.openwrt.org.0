Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1CAED0AF
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 22:54:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I+2HEf5CBeO3hglHxjvp87h0zU1xTvBLqwVHgmZ0Ucw=; b=Fp8cZQNq9WP6sb
	2qbwbUnXW7L3byad6u7iKahwCxvOFHh093SXV6rOyCtmwO9HHxvq+SmqpNSIGDWwgsEhYpm5Ca6H7
	bzQQjMIR7crjlKp/B7lqegUeCET/DPNZreEpTeELm1J7d37zLBLaDayliG9FATXpAbXD8WNfTKvbM
	oBgKPo/SIu9A+fSE6JISIhkC/l02nwcxMXbUm5H4llPn0KulywGUzkcOhcjMrygTM5TTPUQPvM7Kr
	uC3v5gkjji7S9o7zAptpxh1sF6fjSm6+IEAPdIj5EfgMiohfO96pyGldlMw3wIjqNnv14R5yanuXg
	jZQF4wAN+AJrBHbiu49g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR1Lj-0002eL-9a; Sat, 02 Nov 2019 21:54:23 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR1Lb-0002dn-HM
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 21:54:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id c184so9458945pfb.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 02 Nov 2019 14:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=gSc01kJ/J4Iy9wMNmcHNYpOC+IyYqHBF3XG0kOBy2D4=;
 b=RtOTi4j6i5VHM/FCF8p8euph5FtXoOQ1js90I7mtNXuYp66wH5RP/XAxEReP1STkea
 +zBqMM1Bh10B7BKmWgANu90BHz5IkZwBsVgPMNkrR3ZUDNoqex5bhHiz58s4CTG3S9eK
 VNawYd2elu6Z2vjql2G+0DuXEhcwSdLZjDpVBuhOJ2ST7GQrsczd4boNhIqhhpqmpyzg
 NALwS8swBwbJyTf4iGjcKZb0PlSo1PJbbPj/Z4B7+y/ugBaQL6bfajnVBTXtD0gT9mfq
 rBx0UtTuXeHWiIbhhR/+6yFru80un42oTGP1U+C9lTFBA24I40wBqFhcIC2LVTbznEF1
 p7Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=gSc01kJ/J4Iy9wMNmcHNYpOC+IyYqHBF3XG0kOBy2D4=;
 b=VdWB2hgvqgFl4hDuuO+ZZ5iX3PCjLwG2Lw1I3hqUamzlKnydtjJUxLKpfzT4hgxt0q
 hGmwMTOm6djncjByOEbmZeNfqNRRNK7hSBYfU79qzruotzT6tPY0SIi5vLKEbCZ6ARbY
 GJCUY6paXTnabwhmKigfVNUe1RHYiK/NjXn4LVOMU2qg2FTedp8GVld4mpGTEyORVp/P
 GzbS1GkGjRAMp5vTA6IOfY2ecGM1gIzt57U2Rf0MrLWvRZJhtSQOMLCzIdKFp+Cn2ez1
 F/V5rJKnbf6tNvDVivJV2/NPJByAiKVFisoNKKUT5SFjp6bVIqKCPXMdam8oZVeWoRX0
 BjPQ==
X-Gm-Message-State: APjAAAWPiTAz+Z+qNsr1tkvCEe25WRDPsIq1OLcBYVa8U+y45CwcGWuv
 oWGH8wqm1gZ99zI/QODeJLvnKTPsf80=
X-Google-Smtp-Source: APXvYqz1A89AOxWksMS4JrHyBEwH7l7d8pYvShuhoAS4+SI/tkYXKTKeb54teVa3Qey6DfeTWZsk8Q==
X-Received: by 2002:a62:31c2:: with SMTP id
 x185mr22795296pfx.112.1572731650876; 
 Sat, 02 Nov 2019 14:54:10 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-2-23.ca.astound.net.
 [69.42.2.23])
 by smtp.gmail.com with ESMTPSA id y11sm14125678pfq.1.2019.11.02.14.54.09
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 14:54:10 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  2 Nov 2019 14:54:08 -0700
Message-Id: <20191102215408.1973-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_145415_599448_C45FB4E5 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] tools/pkg-config: Replace with pkgconf
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
index 401d230058..3c90ab129d 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -22,7 +22,7 @@ ifneq ($(CONFIG_SDK)$(CONFIG_PACKAGE_kmod-b43)$(CONFIG_PACKAGE_b43legacy-firmwar
 endif
 
 tools-$(BUILD_TOOLCHAIN) += gmp mpfr mpc expat
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
@@ -68,7 +68,7 @@ $(curdir)/findutils/compile := $(curdir)/bison/compile
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
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
