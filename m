Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB7411F03B
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 06:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PTSLJksI9KfMVL1AZQ+dkrE+I0u/ejE6F5NIBl0TONE=; b=hpKIxoGly/YltY
	qP3JjNNQ8pWukLvO5WEiAN521NdIffEPP+DyQlPGiZgDg5MjHA8u0YUGlAXVx9kc+53rO6hQRiMqC
	pZm67v43IywH0dSE6PIqLFNlaZCHjtB1lHhouPlmklA6G0LjSIgEw/5Qg32scelQJ9f4W0DbtPlhL
	8X47AyAIg2Pa42IC6mvLpVETeciz5xztHoIfU6P8345dtX4yCXOwBEzNEbsQ70sZ69266twIlLbbr
	Gc9nnqHbSw/9a6xD58SDX40JQe0O9HSQbWWtyIzSvi2PZESroPALbsD6qo801GKnbJX8yamaBuHou
	KqH++xolpMaXirIf7Xrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifzeA-0000O5-Du; Sat, 14 Dec 2019 05:07:18 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifze3-0000Nd-GH
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 05:07:13 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l4so606520pjt.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 21:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5lCKwqFuq/crQSASZOPtRE1MvuQyed+VVpyWmxT67xs=;
 b=Eps+mbwhdtjPUNfqwX050gTShjLVu64FLEG9deDYBoCyilLl9eGApjVRIxptQ2DwRI
 nbpzW3+j9CsWwd967yB7DyIDGC5ljHbPghJFZvT/OXe+7tUZKJWMu0SEUjsfcHqCDd1V
 QVBVD3+GHNcA70BuWPWuXSEJt8kg321FEB6eDr5ZwuS5y1Dp7BLD3k6fRNBBSBs5wx1j
 A0wMg+eEiZWOUQrHVXaEONkP3VNm4BkokLfqQHa7ebTImFoQ4Llj01v7FxlRwRaLdFC1
 dZaupcIpeNkNWoBYMHXUshMSHnKSYI6vDghqbq7aOosde/N5ZtCXQye0Emr7DaeHSJpY
 OUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5lCKwqFuq/crQSASZOPtRE1MvuQyed+VVpyWmxT67xs=;
 b=tGUPEosg3Usq6bc6UN+Ra70ARm8nkkTW+I4VhkXQxqzqZ5dJEbJI20jMD59mi2MhoU
 ivFELeDZ2L4y8zZZK5CjvQzSq/PRgc9y4igWzCdg1QN8cGGCPOCTxOo4P13VSeduVk8M
 FiQftUlDvcW3QyRUxg2ql3ruxxn9Qc/R5bNhEL7Q374YKu0eMCxu5l/rLYHgrSiISvuz
 CNTltW8/RQKT4hNb/b7taAQNaosxQ5+rHdpdME+ezR0PCWs6FDaJ81V6JRmCIhNQAyzv
 4O4l0rVvBmg7MpoAWWJtHNw4aYIkU8/bYazO3RpkMOy5Dmv2fa/cEGPfxe3VsAunCwyZ
 Bglg==
X-Gm-Message-State: APjAAAVTEgDRf4WlSY1dWTxHfoiQQkSn3AJcR1HCaPMjvZ+koRGmttc/
 +hiB0uVhwQe3nBx8k6vBMQW1nVHZYGg=
X-Google-Smtp-Source: APXvYqylWPfrI4Qncw7P3PJvLH1J4z8RV03YnCtJpCekT/iVCUqxIKLOklQH44Sncb9L6Pg69rx1ug==
X-Received: by 2002:a17:902:7d96:: with SMTP id
 a22mr3388689plm.90.1576300028682; 
 Fri, 13 Dec 2019 21:07:08 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id g18sm13560518pfo.123.2019.12.13.21.07.06
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 21:07:07 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Dec 2019 21:07:04 -0800
Message-Id: <20191214050704.995870-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_210711_593880_2DEFA6CB 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] libcxx: Add package
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

Currently in OpenWrt, there are two libc++: libstdcpp and uClibc++. The
former is huge and the latter supports only C++98 with some basic support
for C++11. Those C++ versions seem to be specific to the compiler version

libcxx supports C++11 and above while being much smaller than libstdcpp.
On mt7621, these are the sizes of the ipks that I get:

libstdcpp: 460786
libcxx: 182881
uClibc++:67720

libcxx is faster than uClibc++ and is under active development as part of
the LLVM project while uClibc++ is effectively dead.

This PR modifies uclibc++.mk to expose the make menuconfig option. Further
cleanup is beyond the scope of this PR. What that means is, this is not
used by default.

A g++-libcxx wrapper based on the uClibc++ one was added. Works the same
way.

Compile tested with all packages that use uclibc++.mk in their Makefiles
under mipsel_24kc. kismet fails compilation but that package needs to be
cleaned up and updated.

Runtime tested with gddrescue, gdisk, dcwapd, bonnie++, and aircrack-ng
on a TP-Link Archer C7v2.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 config/Config-build.in               |  3 ++
 include/uclibc++.mk                  | 12 +++++-
 package/libs/libcxx/Makefile         | 62 ++++++++++++++++++++++++++++
 package/libs/libcxx/files/g++-libcxx | 19 +++++++++
 4 files changed, 94 insertions(+), 2 deletions(-)
 create mode 100644 package/libs/libcxx/Makefile
 create mode 100755 package/libs/libcxx/files/g++-libcxx

diff --git a/config/Config-build.in b/config/Config-build.in
index 872e5c12ab..bde5730e76 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -197,6 +197,9 @@ menu "Global build settings"
 		config USE_UCLIBCXX
 			bool "uClibc++"
 
+		config USE_LIBCXX
+			bool "libc++"
+
 		config USE_LIBSTDCXX
 			bool "libstdc++"
 	endchoice
diff --git a/include/uclibc++.mk b/include/uclibc++.mk
index a1a61f26d4..27533279c9 100644
--- a/include/uclibc++.mk
+++ b/include/uclibc++.mk
@@ -4,8 +4,8 @@ ifndef DUMP
   endif
 endif
 
-PKG_PREPARED_DEPENDS += CONFIG_USE_UCLIBCXX
-CXX_DEPENDS = +USE_UCLIBCXX:uclibcxx +USE_LIBSTDCXX:libstdcpp
+PKG_PREPARED_DEPENDS += CONFIG_USE_UCLIBCXX CONFIG_USE_LIBCXX
+CXX_DEPENDS = +USE_UCLIBCXX:uclibcxx +USE_LIBCXX:libcxx +USE_LIBSTDCXX:libstdcpp
 
 ifneq ($(CONFIG_USE_UCLIBCXX),)
  ifneq ($(CONFIG_CCACHE),)
@@ -14,3 +14,11 @@ ifneq ($(CONFIG_USE_UCLIBCXX),)
   TARGET_CXX=g++-uc
  endif
 endif
+
+ifneq ($(CONFIG_USE_LIBCXX),)
+ ifneq ($(CONFIG_CCACHE),)
+  TARGET_CXX_NOCACHE=g++-libcxx
+ else
+  TARGET_CXX=g++-libcxx
+ endif
+endif
diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
new file mode 100644
index 0000000000..c1fa1d6b07
--- /dev/null
+++ b/package/libs/libcxx/Makefile
@@ -0,0 +1,62 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=libcxx
+PKG_VERSION:=9.0.1
+PKG_RELEASE:=1
+
+PKG_SOURCE_PROTO:=git
+PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
+PKG_SOURCE_VERSION:=2076f539f410805ef88692b9c0ce0a0b882a7680
+PKG_MIRROR_HASH:=6dff036660d478bfaa14e407fc5de26d22da1087118c897b1a3ad2e90cb7bf39
+
+PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
+PKG_LICENSE:=MIT
+PKG_LICENSE_FILES:=LICENSE.txt
+
+PKG_BUILD_PARALLEL:=1
+CMAKE_BINARY_SUBDIR:=build
+
+include $(INCLUDE_DIR)/package.mk
+include $(INCLUDE_DIR)/cmake.mk
+
+define Package/libcxx
+  SECTION:=libs
+  CATEGORY:=Libraries
+  TITLE:=LLVM libstdc++
+  URL:=https://libcxx.llvm.org/
+  DEPENDS:=+libatomic +libpthread
+endef
+
+define Package/libcxx/description
+  LLVM C++ library targeting C++11 and above
+endef
+
+CMAKE_OPTIONS += \
+	-DLIBCXX_ENABLE_ASSERTIONS=OFF \
+	-DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
+	-DLIBCXX_INCLUDE_BENCHMARKS=OFF \
+	-DLIBCXX_INCLUDE_DOCS=OFF \
+	-DLIBCXX_INCLUDE_TESTS=OFF \
+	-DLIBCXX_HAS_MUSL_LIBC=ON \
+	-DLIBCXX_STANDALONE_BUILD=ON
+
+TARGET_CXXFLAGS += -D_LIBCPP_DISABLE_DEPRECATION_WARNINGS -Wno-attributes -flto
+TARGET_LDFLAGS += -Wl,--as-needed
+
+define Build/InstallDev
+	$(call Build/InstallDev/cmake,$(1))
+	$(CP) files/g++-libcxx	$(TOOLCHAIN_DIR)/bin/
+	$(SED) 's,CXX,$(TARGET_CXX),g' $(TOOLCHAIN_DIR)/bin/g++-libcxx
+endef
+
+define Package/libcxx/install
+	$(INSTALL_DIR)					$(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libc++.so.*	$(1)/usr/lib/
+endef
+
+$(eval $(call BuildPackage,libcxx))
diff --git a/package/libs/libcxx/files/g++-libcxx b/package/libs/libcxx/files/g++-libcxx
new file mode 100755
index 0000000000..81ca46eb0e
--- /dev/null
+++ b/package/libs/libcxx/files/g++-libcxx
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+WRAPPER_INCLUDEDIR="-I$STAGING_DIR/usr/include/c++/v1"
+WRAPPER_LIBDIR="-L$STAGING_DIR/usr/lib"
+WRAPPER_LIBS="-lc -lgcc_s -lssp_nonshared"
+
+WRAPPER_OPTIONS=""
+WRAPPER_INCLIB="Y"
+for arg
+do
+	case "$arg" in
+	-c|-E|-S) WRAPPER_INCLIB="N" ;;
+	-static) [ "$WRAPPER_LIBS" != "-lc -lgcc_s -lssp_nonshared -lgcc_eh" ] && WRAPPER_LIBS="-lc -lgcc_s -lssp_nonshared -lgcc_eh" ;;
+	esac
+done
+[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs $WRAPPER_LIBDIR -lc++ -lsupc++ $WRAPPER_LIBS"
+
+exec CXX -fno-builtin -nostdinc++ -DGCC_HASCLASSVISIBILITY "$WRAPPER_INCLUDEDIR" "$@" $WRAPPER_OPTIONS
+
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
