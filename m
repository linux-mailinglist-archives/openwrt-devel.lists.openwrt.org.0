Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D28467A7
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 20:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4J9rhpxzy8UaURhyanMJhrBXqq3eeoIpZMBFJSjeXvA=; b=BcinZg10HkEe61
	RRozPy0ouixPv5xBZVOwmt8w297RVPsl6vW4JuAk8FKU704ZjHaO6aMHScco8zOV75UNbnCitzlzN
	rv6ClbVhoBaDH4iLWoI8b+UvhLLqLeZx0qQs9SzkmNT60xD44vY0P8Rl2K3BWveZ+7JNZxmlWLN9H
	Gh6P00I/U72Vv/dnHJzOiF8bvW+TmyBBDShtEHvHrOwXl3jnTsuZeB5VJ1SrCI1/0qIylJ1FL7EN5
	PnZgzls38QglxcVNbj2CwaUxmJdIyZCV/W8h3DMFTWDjqD5P5hd0gUOOuQMD4zYOx2lfypkeZDHjk
	tucnkReyxF72J5k9e4Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbr4N-0003Nf-Lm; Fri, 14 Jun 2019 18:36:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbr3J-0002EJ-TK
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 18:35:55 +0000
Received: by mail-pg1-x543.google.com with SMTP id f21so2020630pgi.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 11:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q4E8Rueei9HfLqhlZtqpsec3COWGCaCA0huIJHWBnW0=;
 b=DSmvXicpQgUcsA9nea9kXai5+J5qJBXwWwLWz9BbWM6mjwC85QJt097nNsrrnK8X2d
 FIwXLLa8TvCAbZ4D6FvW1en+9TMPstnJmfjsoW5GRs17g32AMriUu3rJktXOkPpYGT0H
 0EKmRNTmjSq7ZBZz7g22BcGXVLosRiHolOe8Z/4tVhAXnerdQJzajIsHw6jisJFEl2Vx
 6TIt0QNIdMf8VOL5W+W+eNic6IpfPoSgNnAqAapgNPt8KloHakKZb6A26XiERYw2a1vD
 gKlvTL7xCyJgnOQlubTyfgfqrgIEwWV7t+wvk02gJGnfDOyBTlpsNkuOceFbdpfvsluy
 Pl8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q4E8Rueei9HfLqhlZtqpsec3COWGCaCA0huIJHWBnW0=;
 b=eGNfYDVk3L3XgQbPOG4JLHbhTnbtZPb8GJ80AxMzJ1ekNmoXLmvKSJnd65zwAYdn7+
 wUgb3F2xx8mtbC2fjih7dvrGCJKgDLcY9rQWWeA1eBkY2abq7PCioGpeeNzpbpPU/Fis
 nQqrDCc7RU3HSJnjwNPP8tewXGEWsMxwf5kKDY7++wpwxIwq9tIU/qJRHJJWNikfu653
 3dP2A1gliITimC70xc7UALudIJjcxfr2dO7uXSncgrM1Z7+PSAF/oDHM1L5fKmX3gl+H
 hi0uZlmoyXz4q/lKVwK5hSiwq79pQLENcbTKpwhoRHqCFWtTMHzLypo68r12Lz30kuQ/
 onHQ==
X-Gm-Message-State: APjAAAW3jnbo+Kkq3KTblQJEWt+E0784SuDVvMQddOx/O3Jc8xCQdnXC
 VNmQQbgDlvSjI1t6VPma1ptCYNg9WQM=
X-Google-Smtp-Source: APXvYqxLZrb0rdo/Cnv8vP/F7k3aO5DhxcfQQhpv42vGFeA2tniLWb6XECTa0Ie/qcjTAVD/JchxOA==
X-Received: by 2002:aa7:9834:: with SMTP id q20mr58487191pfl.196.1560537351782; 
 Fri, 14 Jun 2019 11:35:51 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id a24sm3388775pgb.85.2019.06.14.11.35.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:35:51 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 02:35:34 +0800
Message-Id: <20190614183534.14768-6-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614183534.14768-1-jeffery.to@gmail.com>
References: <20190614183534.14768-1-jeffery.to@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_113554_302935_AE957B2D 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 6/6] packages: Install files into staging
 directory in Host/Install
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

This updates Host/Install for packages to install files into the given
staging directory, instead of into $(STAGING_DIR_HOSTPKG) (or
$(STAGING_DIR_HOST)) directly, so that files can be automatically
tracked and uninstalled.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 package/libs/gettext/Makefile       |  8 ++++----
 package/libs/libiconv/Makefile      | 12 ++++++------
 package/system/fwtool/Makefile      |  1 +
 package/system/iucode-tool/Makefile |  5 ++++-
 package/system/opkg/Makefile        |  4 +++-
 package/utils/bsdiff/Makefile       |  8 ++------
 package/utils/bzip2/Makefile        |  8 +++-----
 package/utils/lua/Makefile          |  9 +++------
 8 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/package/libs/gettext/Makefile b/package/libs/gettext/Makefile
index f37c4e4e74..2eff4410db 100644
--- a/package/libs/gettext/Makefile
+++ b/package/libs/gettext/Makefile
@@ -47,11 +47,11 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/include
-	$(INSTALL_DATA) ./src/include/libintl.h $(STAGING_DIR_HOSTPKG)/include/
+	$(INSTALL_DIR) $(1)/include
+	$(INSTALL_DATA) ./src/include/libintl.h $(1)/include/
 
-	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/share/aclocal
-	$(INSTALL_DATA) ./src/m4/* $(STAGING_DIR_HOSTPKG)/share/aclocal/
+	$(INSTALL_DIR) $(1)/share/aclocal
+	$(INSTALL_DATA) ./src/m4/* $(1)/share/aclocal/
 endef
 
 define Package/libintl/install
diff --git a/package/libs/libiconv/Makefile b/package/libs/libiconv/Makefile
index 4d7dcd3498..7e9baa4129 100644
--- a/package/libs/libiconv/Makefile
+++ b/package/libs/libiconv/Makefile
@@ -65,14 +65,14 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/lib
-	$(INSTALL_DATA) $(HOST_BUILD_DIR)/libiconv.a $(STAGING_DIR_HOSTPKG)/lib/
+	$(INSTALL_DIR) $(1)/lib
+	$(INSTALL_DATA) $(HOST_BUILD_DIR)/libiconv.a $(1)/lib/
 
-	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/include
-	$(INSTALL_DATA) ./src/include/iconv.h $(STAGING_DIR_HOSTPKG)/include/
+	$(INSTALL_DIR) $(1)/include
+	$(INSTALL_DATA) ./src/include/iconv.h $(1)/include/
 
-	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/share/aclocal
-	$(INSTALL_DATA) ./src/m4/* $(STAGING_DIR_HOSTPKG)/share/aclocal/
+	$(INSTALL_DIR) $(1)/share/aclocal
+	$(INSTALL_DATA) ./src/m4/* $(1)/share/aclocal/
 endef
 
 $(eval $(call HostBuild))
diff --git a/package/system/fwtool/Makefile b/package/system/fwtool/Makefile
index 901081c1f4..86ec807281 100644
--- a/package/system/fwtool/Makefile
+++ b/package/system/fwtool/Makefile
@@ -31,6 +31,7 @@ define Host/Compile
 endef
 
 define Host/Install
+	$(INSTALL_DIR) $(1)/bin
 	$(INSTALL_BIN) $(HOST_BUILD_DIR)/fwtool $(1)/bin/
 endef
 
diff --git a/package/system/iucode-tool/Makefile b/package/system/iucode-tool/Makefile
index 5f4cfb6238..afa75f61c6 100644
--- a/package/system/iucode-tool/Makefile
+++ b/package/system/iucode-tool/Makefile
@@ -22,6 +22,8 @@ PKG_LICENSE:=GPL-2.0
 
 PKG_INSTALL:=1
 
+HOST_BUILD_PREFIX:=$(STAGING_DIR_HOST)
+
 include $(INCLUDE_DIR)/package.mk
 include $(INCLUDE_DIR)/host-build.mk
 
@@ -40,7 +42,8 @@ define Package/iucode-tool/install
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/iucode_tool $(STAGING_DIR_HOST)/bin/iucode_tool
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/iucode_tool $(1)/bin/iucode_tool
 endef
 
 $(eval $(call HostBuild))
diff --git a/package/system/opkg/Makefile b/package/system/opkg/Makefile
index 313a058933..2f6735895a 100644
--- a/package/system/opkg/Makefile
+++ b/package/system/opkg/Makefile
@@ -33,6 +33,7 @@ HOST_BUILD_PARALLEL:=1
 PKG_INSTALL:=1
 
 HOST_BUILD_DEPENDS:=libubox/host
+HOST_BUILD_PREFIX:=$(STAGING_DIR_HOST)
 
 include $(INCLUDE_DIR)/package.mk
 include $(INCLUDE_DIR)/host-build.mk
@@ -96,7 +97,8 @@ define Package/opkg/install
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/src/opkg-cl $(STAGING_DIR_HOST)/bin/opkg
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/src/opkg-cl $(1)/bin/opkg
 endef
 
 $(eval $(call BuildPackage,opkg))
diff --git a/package/utils/bsdiff/Makefile b/package/utils/bsdiff/Makefile
index db1f320872..b9e662b3ed 100644
--- a/package/utils/bsdiff/Makefile
+++ b/package/utils/bsdiff/Makefile
@@ -58,11 +58,6 @@ define Package/bspatch/install
 	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bspatch $(1)/usr/bin/bspatch
 endef
 
-define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/bin/
-	$(MAKE) -C $(HOST_BUILD_DIR) PREFIX=$(STAGING_DIR_HOSTPKG)/ install
-endef
-
 define Host/Compile
 	$(HOSTCC) $(HOST_CFLAGS) $(HOST_LDFLAGS) \
 		-o $(HOST_BUILD_DIR)/bsdiff \
@@ -70,7 +65,8 @@ define Host/Compile
 endef
 
 define Host/Install
-	$(INSTALL_BIN) $(HOST_BUILD_DIR)/bsdiff $(STAGING_DIR_HOSTPKG)/bin/
+	$(INSTALL_DIR) $(1)/bin
+	$(INSTALL_BIN) $(HOST_BUILD_DIR)/bsdiff $(1)/bin/
 endef
 
 $(eval $(call HostBuild))
diff --git a/package/utils/bzip2/Makefile b/package/utils/bzip2/Makefile
index 9c64d2264a..6222bc9ed7 100644
--- a/package/utils/bzip2/Makefile
+++ b/package/utils/bzip2/Makefile
@@ -97,14 +97,12 @@ HOST_MAKE_FLAGS+= \
 	LDFLAGS="$(HOST_LDFLAGS)" \
 	all
 
+HOST_MAKE_INSTALL_FLAGS += \
+	PREFIX="$(HOST_INSTALL_DIR)/$(HOST_BUILD_PREFIX)"
+
 HOST_CONFIGURE_ARGS+= \
 	--prefix=$(STAGING_DIR_HOSTPKG)
 
-define Host/Install
-	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/bin/
-	$(MAKE) -C $(HOST_BUILD_DIR) PREFIX=$(STAGING_DIR_HOSTPKG)/ install
-endef
-
 $(eval $(call HostBuild))
 
 $(eval $(call BuildPackage,libbz2))
diff --git a/package/utils/lua/Makefile b/package/utils/lua/Makefile
index 077a60fbf3..a8a99d2219 100644
--- a/package/utils/lua/Makefile
+++ b/package/utils/lua/Makefile
@@ -123,18 +123,15 @@ else
 	endif
 endif
 
+HOST_MAKE_INSTALL_FLAGS += \
+	INSTALL_TOP="$(HOST_INSTALL_DIR)/$(HOST_BUILD_PREFIX)"
+
 define Host/Compile
 	$(MAKE) -C $(HOST_BUILD_DIR) \
 		CC="$(HOSTCC) -std=gnu99" \
 		$(LUA_OS)
 endef
 
-define Host/Install
-	$(MAKE) -C $(HOST_BUILD_DIR) \
-		INSTALL_TOP="$(STAGING_DIR_HOSTPKG)" \
-		install
-endef
-
 define Build/InstallDev
 	$(INSTALL_DIR) $(1)/usr/include
 	$(CP) $(PKG_INSTALL_DIR)/usr/include/lua{,lib,conf}.h $(1)/usr/include/
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
