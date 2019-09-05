Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7795AAE7D
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Sep 2019 00:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wLmpUvWWzWCww22/oHJxpYpSGQcuz0LWhV71KUnvcHk=; b=stRIeEpbgt2du8
	n1m3qhs/TgakY0T6S0Mb9zVaKq5IXqnqJ1yrhlDzCSj0UCK6OH8luU4YQDW8t0N912P9nDVSrirM6
	u5bJdnJfIazoeLTSZTanhtIBgCGNRLyX0zXipx8vLXpWh3WnIVKqMrXfVArGW3HuybXch3ZunHjbX
	6LuiHTRIK+zhsircxkjsBIzDf1s2y56cmaGHQYQ+lAIF/DH7Sd5y+nAZ6QDttpOaIGj5Ou8LgLBWK
	zpJDpNe/m/aifAZ03kNXyzytUgm+6FUQL/U5ZpPQrbIEqEbj3NGuGw5RiYX72XMH6oRifbus3yT8t
	zBnlcCfbRCbShITEc/WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i60H1-00026O-M5; Thu, 05 Sep 2019 22:30:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i60Gu-000264-NA
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 22:30:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id s12so2849739pfe.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 15:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=dn8b+eDuMSFGdNkmlI1BAQ+M5W6dxUM7vFPnszK/d9Q=;
 b=Hw5rnPFpa0+5l6+m4gSzrgt7odgUaWnHN7rPVsPKPVvWMMQLZlT/rjsKamFVlSFzxe
 D0PYu8FYwOdi+RfTWaBE/5QizcWhPDKKLvx0iBRw8kgfG8UJ/Kz7emUaG5bStiZRsAyD
 bsbBIW9mRQ22LXOGsx9rTsf3C+fP2IqL91s9TdxlMBDVnztxHO2zdroam5nP3SmSQu+l
 jn4wFYoc63fNUJi2PmBR6SOlTOpgfKotijVTHnWMOJXxTqTsbvJX/HFMys6Vmg+BiQ+Q
 SFk5vT5TfyvqZzpqxxyvAfyhtvMN+JQsSvW9XpLRoyzNH+zkou9HOp+nUyIEN/m0b6Ul
 BBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=dn8b+eDuMSFGdNkmlI1BAQ+M5W6dxUM7vFPnszK/d9Q=;
 b=qDDfDIRZwbw5Ki8aGxbKHkiByHyfEF5Qj6InMMxRYh4iOioaHSn6ufLMRSE8WbFPxR
 CzCDU1IV9N/QnnLnZFaTba+e3mNLD89p4xdccEdtUinGOc+qpOpS8fgjgOABpr3GTIvQ
 ENeNAfFB2Cr9mytvUz0SuhmtQ3diujbQBiGSSmx7gmoNf2/7xNOgIxBNvbzIim/nGu+N
 vjlzGIqfaTNZB3e7/+lPD0E5X7EzUNvvvdhVKotbvB/TzJrq9p7uJTXiooXp+Crcd6Y1
 mGADUQrn6VgQw3GB6MGia4vH6ttFBERZj/XoLW9AYc0+iVjbO9tfowPrJZlGcVe/T34S
 EsEg==
X-Gm-Message-State: APjAAAW9N8UgVOgw7bTtxWuhrBy2fne9Duwn0ROyuI7tQP+OiM6/Fpo2
 CmZq5s6JarUljwP7Ywlz0l/nYh1nFGY=
X-Google-Smtp-Source: APXvYqwZntHO0PLgc8TiNryT81N6pwyHGK/Rr7qxXPj7eMirJc3+SXW3JIeAebxrAWtOB7azAfJLcQ==
X-Received: by 2002:a17:90a:19c4:: with SMTP id 4mr6528157pjj.20.1567722630735; 
 Thu, 05 Sep 2019 15:30:30 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id x5sm3626099pfn.149.2019.09.05.15.30.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 15:30:30 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 15:30:28 -0700
Message-Id: <20190905223028.15575-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_153032_784780_38B85881 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] elfutils: Add host build
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

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/elfutils/Makefile | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

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
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
