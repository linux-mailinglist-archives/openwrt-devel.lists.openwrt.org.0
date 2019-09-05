Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17B5AAF69
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 01:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6UCgovbBhjqnTw19NfX/BJDr9oQtnbTEhUKcc0uaMW8=; b=OnmhUkzl9zkvQc
	x7vq6tiAL97ntd48d30wWeB2jKq8ncYadAV+9nTVLVftz6Wf/RJ9FHBogeb/3HbaCJo8B4FIguTho
	u2JGLk7UDySKPjAg6iXr3FCSjycubVbkLx5uUB3gx8fwQxG8RhhS59yvTieh1lRfMI0ESbUmRVx2Z
	8RId4d9TZM0eel8nzVrk3I9hNbev6S1wXX35x2Q5dkNOSEboRHDOYOcGy1t48B5z0EafkR1I1sF2I
	C9geyL5SuZNBaSZeBr8OiLTxhpLAL6L0oeW57py5H9wnhQYVMICCbzlgwuCsqNmnIF2SBJUBaKv+Y
	Eye5wrd/38GUzUS0c79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i61dM-0002yT-Ag; Thu, 05 Sep 2019 23:57:48 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i61dG-0002yC-Jk
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 23:57:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so2993755pfb.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 16:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=57Q42TM3RvgImZYxWqB38F3YGESu5WzvRau3Or24nes=;
 b=nGk9VZB8G1VOhl/9yVeIaEdz+HzlI/Wb3eAHZA0Y1pzt1PG2XkK1zSYHZb2C+Ni92l
 bFekTOT5dM3IUgXXd+ySND6iLq+CRCA5siOQo2+ncp2SeXpV2QucYQ1aaSTgFkguFx8K
 iSmHW/QbXrDWUptdniKgMuu7yJtg8iioP4pU4Klo0Vmk2z/FYmi11IZwYqOTOK3+B4Uf
 TwDHDIGY6w7LXsK/tFqtE290xbJxxGfx6ooeWGjHcAajs5+rgMggE7QpxAKaDtDyjrrc
 sKvWBqPcRVXY+ze55bWDk2OxiFWgiIvfiGFQxHuEwW1evxPliJOm5m/vzBtzDwj0mOCu
 CILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=57Q42TM3RvgImZYxWqB38F3YGESu5WzvRau3Or24nes=;
 b=OjhfzwcQOSFs1CdRAZw7t/OWv0Ww8inAndessSTgnDjEJdYPXcUNDH6XQuyClCosXb
 PuXtQLU9Z+6ES4kJj3C9NJxZGDmBtKjeS6BZb9IieMWwmJWRs9iwQG52sqfTeMO9lT0y
 IstakA4Fr4VEaWnBw4OZ4IOtF/DMNSXviCB49I4OrWNBWYxiRIeiYD+KaY7vOOgnH5mX
 ClVnpvm6icisE9ieicrMYMRS4ofOOlKGOGPZDRbEar+EY5jqpWSUWd5lnqdOvfYyCZv2
 uuOlVAJwXppsy20plMk25oerB+YHp3jOch/6mm6HMLBbo9TEvk8fL7i6Ha1507ntBCYc
 VLtA==
X-Gm-Message-State: APjAAAXj17vsJRbrwd2c7lJyC+0/lke4YxiKAPGsWy1qL/QVKUtawX5j
 fnfdRnrluX9Sn5VEzK+r6nO7zqWatqI=
X-Google-Smtp-Source: APXvYqx7o+ZNHi8aI3vYhXlnXWmYWFQlCKtxl9Xei9g5GJnGDiz4XQYGOtIwVwp7NntsdukkoOYsHQ==
X-Received: by 2002:a63:7e17:: with SMTP id z23mr5594478pgc.14.1567727861281; 
 Thu, 05 Sep 2019 16:57:41 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id r28sm6355786pfg.62.2019.09.05.16.57.40
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 16:57:40 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 16:57:39 -0700
Message-Id: <20190905235739.6350-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_165742_678190_899D71F1 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv2] elfutils: Add host build
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

Needed for glib2 host build:

gresource-tool.c:32:20: fatal error: libelf.h: No such file or directory
 #include <libelf.h>

Changed PKG_LICENSE to the SPDX version.

Switched build dependency for argp-standalone to !USE_GLIBC. argp is a
glibc extension. Treat it as such.

Adjusted patch to use strerror_l, which works properly with both glibc
and musl. The patch errors under glibc with:

dwfl_error.c:158:7: error: ignoring return value of 'strerror_r', declared
with attribute warn_unused_result [-Werror=unused-result]
       strerror_r (error & 0xffff, s, sizeof(s));

void casting does not fix the error.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v2: Fixed compilation of host build with newer GCC.
 package/libs/elfutils/Makefile                      | 12 +++++++-----
 package/libs/elfutils/patches/100-musl-compat.patch | 13 ++-----------
 2 files changed, 9 insertions(+), 16 deletions(-)

diff --git a/package/libs/elfutils/Makefile b/package/libs/elfutils/Makefile
index c00a6b2f34..630c48820a 100644
--- a/package/libs/elfutils/Makefile
+++ b/package/libs/elfutils/Makefile
@@ -8,23 +8,24 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=elfutils
 PKG_VERSION:=0.177
-PKG_RELEASE:=1
+PKG_RELEASE:=2
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
 PKG_SOURCE_URL:=https://sourceware.org/$(PKG_NAME)/ftp/$(PKG_VERSION)
 PKG_HASH:=fa489deccbcae7d8c920f60d85906124c1989c591196d90e0fd668e3dc05042e
+
 PKG_MAINTAINER:=Luiz Angelo Daros de Luca <luizluca@gmail.com>
-PKG_LICENSE:=GPL-3.0+
+PKG_LICENSE:=GPL-3.0-or-later
 PKG_LICENSE_FILES:=COPYING COPYING-GPLV2 COPYING-LGPLV3
 PKG_CPE_ID:=cpe:/a:elfutils_project:elfutils
-PKG_FIXUP:=autoreconf
 
+PKG_FIXUP:=autoreconf
 PKG_INSTALL:=1
 PKG_USE_MIPS16:=0
-
-PKG_BUILD_DEPENDS:=USE_UCLIBC:argp-standalone USE_MUSL:argp-standalone
+PKG_BUILD_DEPENDS:=!USE_GLIBC:argp-standalone
 
 include $(INCLUDE_DIR)/package.mk
+include $(INCLUDE_DIR)/host-build.mk
 include $(INCLUDE_DIR)/nls.mk
 
 define Package/elfutils/Default
@@ -96,3 +97,4 @@ endef
 $(eval $(call BuildPackage,libasm))
 $(eval $(call BuildPackage,libdw))
 $(eval $(call BuildPackage,libelf))
+$(eval $(call HostBuild))
diff --git a/package/libs/elfutils/patches/100-musl-compat.patch b/package/libs/elfutils/patches/100-musl-compat.patch
index 9631ce05d6..109b7ece08 100644
--- a/package/libs/elfutils/patches/100-musl-compat.patch
+++ b/package/libs/elfutils/patches/100-musl-compat.patch
@@ -44,21 +44,12 @@ https://sourceware.org/bugzilla/show_bug.cgi?id=21002
  }
 --- a/libdwfl/dwfl_error.c
 +++ b/libdwfl/dwfl_error.c
-@@ -140,6 +140,7 @@ __libdwfl_seterrno (Dwfl_Error error)
- const char *
- dwfl_errmsg (int error)
- {
-+  static __thread char s[64] = "";
-   if (error == 0 || error == -1)
-     {
-       int last_error = global_error;
-@@ -154,7 +155,8 @@ dwfl_errmsg (int error)
+@@ -154,7 +154,7 @@ dwfl_errmsg (int error)
    switch (error &~ 0xffff)
      {
      case OTHER_ERROR (ERRNO):
 -      return strerror_r (error & 0xffff, "bad", 0);
-+      strerror_r (error & 0xffff, s, sizeof(s));
-+      return s;
++      return strerror_l (error & 0xffff, LC_GLOBAL_LOCALE);
      case OTHER_ERROR (LIBELF):
        return elf_errmsg (error & 0xffff);
      case OTHER_ERROR (LIBDW):
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
