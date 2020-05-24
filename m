Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AE31DFCAB
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 05:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pJMxZAgRpdiM3Jx3i8vcQL3IyHE5BP4/1Kv0iF2RLaI=; b=R9hmoUeTYRCUYt
	lnNPBu4yknQ6/4gl29b++uSVWW3GoL4Gxa/c1xuCQRzE0tbm+y/urMXbNvZd/f2fbJSsPsB1nKeRl
	eva7HL29o2xjzZB+9A+vevOBPe9wYV1rz0dSIwjKKUawleh6FE5a3eh9/bEX2UjSF8aaRJokVEepw
	UjlTbuI49l+/riEI88PrcDmB5126yq5+rOpZVCYCvFsKzzK/Uhz+XXGuD9RwWLRNvEAX3FkcHDjIS
	3c7+cyp3d7bW2C1gPbl7ldjA0PEYqCPh+lPeHtAsqXUUZIqZeTsLPcXJwSqIcLHczf7tEuVSD8MA3
	TlQv9i4rf+9CVsOTKPjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jchHx-0001Lv-Gq; Sun, 24 May 2020 03:27:01 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jchHp-0001KF-Sq
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 03:26:55 +0000
Received: by mail-pj1-x1042.google.com with SMTP id k7so6840639pjs.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 23 May 2020 20:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dSQn7jX2TgWmTT7LTBPHGW5JF8PzcaIxigmmvKk9+jg=;
 b=eBdjSnssjcDY4uCtw3ALCMYmzZ/WLZAyI3dvmXuCNopzOgIDZIBn/ZXfh2TIIHNEhd
 Fb0PTGBnls4D/SxP+lMCzsJtapVtbWOvpvWc1K0KkkH/Hur4dTkWCjwGQSh4QRy5cHUd
 hNV33uGfRIzX5Mq1T+Z/tOqT/JseeCMV5mQy3jyg8ugKe21wTc+Pm8Sed6ViaJNNVcje
 jr4THu6sFqFybWiWiOkniU2Bjj6lWJYhucDMHg1v8xqPG48FwIETs/M+zOxj12/mH7Pd
 iwBRX7AwhMx5ljxb24smQbZRFXBh2qQNjJSu8o0OovpoMp/qrm1bUQjCDJ+rQbQTYSIB
 gPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dSQn7jX2TgWmTT7LTBPHGW5JF8PzcaIxigmmvKk9+jg=;
 b=sFKqyI2m+ei+Bd0lveeJnferfmppsbb0BRDsKVwJgnnHzPXuahIdjd5PHYX7Jgyupy
 wZus2+ayjeogBpDvzpp7peRvSGr7Rt9lWVz8Ij+Ky4Qb7wyhn6Vc+J/bye02un8rDRiI
 go/cf220Tde94mGuJYt4okDrSahmaU2N/YHO2N+xaV5Krz7OqZfCgkAQ9Rpu7f8TZ8oJ
 AVlMZvd8x8zOg71b0p9MVvDXIgsV7dAsccCuTB7Z4L7P3/5Hd9WUesnbhbtdJ4MIzYht
 wC32CvRzaaeGUtRr7M6yhsARG6Djb7JZ9XUiAUyGgndM4aZI++oWNmsyUAo5ALEqNOLK
 vfvQ==
X-Gm-Message-State: AOAM531h6xOHAHXorCFhsxWiIX/IDUiV9DaVQ4+2NaS+gmQxn3YLWMSb
 Z5+s7DA1JPhnvqMyIErs5FI9X7KGS2o=
X-Google-Smtp-Source: ABdhPJwT1vLdcMTa6BgW7MptIB0ss0rk31/Wc5EsZIfJsnEj4wP6pyEJS0FZICzNRUlVbXPwlr46ow==
X-Received: by 2002:a17:902:dc86:: with SMTP id
 n6mr22140760pld.17.1590290809290; 
 Sat, 23 May 2020 20:26:49 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id m22sm9813917pjv.30.2020.05.23.20.26.48
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 20:26:48 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 May 2020 20:26:47 -0700
Message-Id: <20200524032647.27599-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_202653_950958_FE6DF0C4 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] libcxx: remove
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

This package was intended to replace uClibc++ which is totally dead
upstream in addition to being quite buggy.

Unfortunately, it had several problems such as not including its own
C++ ABI. I tried to piggyback off of the GCC one, but that did not work
as several packages failed to compile when including cxxabi.h. There
were also runtime issues that popped up, most notably with gerbera in
my case.

The major reason for getting rid of it though, is that upstream stopped
making separate tarballs for its projects. Now there is just the LLVM
monorepo.

If this package is to come back, it would have to be within the context
of LLVM. Actually, building the monorepo would make it easier to build
each project needed such as libcxx and libcxxabi. Maybe even libunwind.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 config/Config-build.in                       |  4 --
 include/uclibc++.mk                          | 12 +---
 package/libs/libcxx/Makefile                 | 66 --------------------
 package/libs/libcxx/files/g++-libcxx         | 19 ------
 package/libs/libcxx/patches/010-cxx17.patch  | 14 -----
 package/libs/libcxx/patches/020-fixes.patch  | 35 -----------
 package/libs/libcxx/patches/030-cxxabi.patch | 11 ----
 package/libs/libcxx/patches/040-ssp.patch    | 11 ----
 8 files changed, 2 insertions(+), 170 deletions(-)
 delete mode 100644 package/libs/libcxx/Makefile
 delete mode 100755 package/libs/libcxx/files/g++-libcxx
 delete mode 100644 package/libs/libcxx/patches/010-cxx17.patch
 delete mode 100644 package/libs/libcxx/patches/020-fixes.patch
 delete mode 100644 package/libs/libcxx/patches/030-cxxabi.patch
 delete mode 100644 package/libs/libcxx/patches/040-ssp.patch

diff --git a/config/Config-build.in b/config/Config-build.in
index 61a9265ad7..6e19e69fb9 100644
--- a/config/Config-build.in
+++ b/config/Config-build.in
@@ -198,10 +198,6 @@ menu "Global build settings"
 		config USE_UCLIBCXX
 			bool "uClibc++"
 
-		config USE_LIBCXX
-			bool "libc++"
-			depends on !USE_UCLIBC
-
 		config USE_LIBSTDCXX
 			bool "libstdc++"
 	endchoice
diff --git a/include/uclibc++.mk b/include/uclibc++.mk
index 27533279c9..a1a61f26d4 100644
--- a/include/uclibc++.mk
+++ b/include/uclibc++.mk
@@ -4,8 +4,8 @@ ifndef DUMP
   endif
 endif
 
-PKG_PREPARED_DEPENDS += CONFIG_USE_UCLIBCXX CONFIG_USE_LIBCXX
-CXX_DEPENDS = +USE_UCLIBCXX:uclibcxx +USE_LIBCXX:libcxx +USE_LIBSTDCXX:libstdcpp
+PKG_PREPARED_DEPENDS += CONFIG_USE_UCLIBCXX
+CXX_DEPENDS = +USE_UCLIBCXX:uclibcxx +USE_LIBSTDCXX:libstdcpp
 
 ifneq ($(CONFIG_USE_UCLIBCXX),)
  ifneq ($(CONFIG_CCACHE),)
@@ -14,11 +14,3 @@ ifneq ($(CONFIG_USE_UCLIBCXX),)
   TARGET_CXX=g++-uc
  endif
 endif
-
-ifneq ($(CONFIG_USE_LIBCXX),)
- ifneq ($(CONFIG_CCACHE),)
-  TARGET_CXX_NOCACHE=g++-libcxx
- else
-  TARGET_CXX=g++-libcxx
- endif
-endif
diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
deleted file mode 100644
index 51a49e4e9d..0000000000
--- a/package/libs/libcxx/Makefile
+++ /dev/null
@@ -1,66 +0,0 @@
-
-#
-# This is free software, licensed under the GNU General Public License v2.
-# See /LICENSE for more information.
-#
-
-include $(TOPDIR)/rules.mk
-
-PKG_NAME:=libcxx
-PKG_VERSION:=9.0.1
-PKG_RELEASE:=5
-
-PKG_SOURCE_PROTO:=git
-PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
-PKG_SOURCE_VERSION:=2076f539f410805ef88692b9c0ce0a0b882a7680
-PKG_MIRROR_HASH:=d527880a18dec9109575c76717cf5288fb91c11381b9d261cae2e5bebcbdab2e
-
-PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
-PKG_LICENSE:=MIT
-PKG_LICENSE_FILES:=LICENSE.txt
-
-PKG_BUILD_PARALLEL:=1
-CMAKE_BINARY_SUBDIR:=build
-
-include $(INCLUDE_DIR)/package.mk
-include $(INCLUDE_DIR)/cmake.mk
-
-define Package/libcxx
-  SECTION:=libs
-  CATEGORY:=Libraries
-  TITLE:=LLVM libstdc++
-  URL:=https://libcxx.llvm.org/
-  DEPENDS:=+libatomic +libpthread
-endef
-
-define Package/libcxx/description
-  LLVM C++ library targeting C++11 and above
-endef
-
-CMAKE_OPTIONS += \
-	-DLIBCXX_CXX_ABI="libsupc++" \
-	-DLIBCXX_CXX_ABI_INCLUDE_PATHS="$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION);$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION)/$(REAL_GNU_TARGET_NAME)" \
-	-DLIBCXX_ENABLE_ASSERTIONS=OFF \
-	-DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
-	-DLIBCXX_INCLUDE_BENCHMARKS=OFF \
-	-DLIBCXX_INCLUDE_DOCS=OFF \
-	-DLIBCXX_INCLUDE_TESTS=OFF \
-	-DLIBCXX_LIBDIR_SUFFIX="" \
-	-DLIBCXX_STANDALONE_BUILD=ON \
-	-DLIBCXX_HAS_MUSL_LIBC=$(if $(CONFIG_USE_MUSL),ON,OFF)
-
-TARGET_CXXFLAGS += -D_LIBCPP_DISABLE_DEPRECATION_WARNINGS -Wno-attributes -flto
-TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
-
-define Build/InstallDev
-	$(call Build/InstallDev/cmake,$(1))
-	$(CP) files/g++-libcxx	$(TOOLCHAIN_DIR)/bin/
-	$(SED) 's,CXX,$(TARGET_CXX),g' $(TOOLCHAIN_DIR)/bin/g++-libcxx
-endef
-
-define Package/libcxx/install
-	$(INSTALL_DIR)					$(1)/usr/lib
-	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libc++.so.*	$(1)/usr/lib/
-endef
-
-$(eval $(call BuildPackage,libcxx))
diff --git a/package/libs/libcxx/files/g++-libcxx b/package/libs/libcxx/files/g++-libcxx
deleted file mode 100755
index 81ca46eb0e..0000000000
--- a/package/libs/libcxx/files/g++-libcxx
+++ /dev/null
@@ -1,19 +0,0 @@
-#!/bin/sh
-
-WRAPPER_INCLUDEDIR="-I$STAGING_DIR/usr/include/c++/v1"
-WRAPPER_LIBDIR="-L$STAGING_DIR/usr/lib"
-WRAPPER_LIBS="-lc -lgcc_s -lssp_nonshared"
-
-WRAPPER_OPTIONS=""
-WRAPPER_INCLIB="Y"
-for arg
-do
-	case "$arg" in
-	-c|-E|-S) WRAPPER_INCLIB="N" ;;
-	-static) [ "$WRAPPER_LIBS" != "-lc -lgcc_s -lssp_nonshared -lgcc_eh" ] && WRAPPER_LIBS="-lc -lgcc_s -lssp_nonshared -lgcc_eh" ;;
-	esac
-done
-[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs $WRAPPER_LIBDIR -lc++ -lsupc++ $WRAPPER_LIBS"
-
-exec CXX -fno-builtin -nostdinc++ -DGCC_HASCLASSVISIBILITY "$WRAPPER_INCLUDEDIR" "$@" $WRAPPER_OPTIONS
-
diff --git a/package/libs/libcxx/patches/010-cxx17.patch b/package/libs/libcxx/patches/010-cxx17.patch
deleted file mode 100644
index dceec9d4f3..0000000000
--- a/package/libs/libcxx/patches/010-cxx17.patch
+++ /dev/null
@@ -1,14 +0,0 @@
---- a/CMakeLists.txt
-+++ b/CMakeLists.txt
-@@ -524,9 +524,9 @@ remove_flags(-Wno-pedantic -pedantic-err
- if (LIBCXX_HAS_MUSL_LIBC OR LIBCXX_TARGETING_CLANG_CL)
-   # musl's pthread implementations uses volatile types in their structs which is
-   # not a constexpr in C++11 but is in C++14, so we use C++14 with musl.
--  set(LIBCXX_STANDARD_VER c++14 CACHE STRING "internal option to change build dialect")
-+  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to change build dialect")
- else()
--  set(LIBCXX_STANDARD_VER c++11 CACHE STRING "internal option to change build dialect")
-+  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to change build dialect")
- endif()
- add_compile_flags_if_supported(-std=${LIBCXX_STANDARD_VER})
- add_compile_flags_if_supported("/std:${LIBCXX_STANDARD_VER}")
diff --git a/package/libs/libcxx/patches/020-fixes.patch b/package/libs/libcxx/patches/020-fixes.patch
deleted file mode 100644
index 22ac494c04..0000000000
--- a/package/libs/libcxx/patches/020-fixes.patch
+++ /dev/null
@@ -1,35 +0,0 @@
---- a/include/cmath
-+++ b/include/cmath
-@@ -615,7 +615,7 @@ _Fp __lerp(_Fp __a, _Fp __b, _Fp __t) no
- 
-     if (__t == 1) return __b;
-     const _Fp __x = __a + __t * (__b - __a);
--    if (__t > 1 == __b > __a)
-+    if ((__t > 1) == (__b > __a))
-     	return __b < __x ? __x : __b;
-     else
-     	return __x < __b ? __x : __b;
---- a/include/memory
-+++ b/include/memory
-@@ -1696,7 +1696,7 @@ struct _LIBCPP_TEMPLATE_VIS allocator_tr
-             ptrdiff_t _Np = __end1 - __begin1;
-             __end2 -= _Np;
-             if (_Np > 0)
--                _VSTD::memcpy(__end2, __begin1, _Np * sizeof(_Tp));
-+                __end2 = __begin1;
-         }
- 
- private:
---- a/src/filesystem/filesystem_common.h
-+++ b/src/filesystem/filesystem_common.h
-@@ -197,8 +197,8 @@ private:
- using chrono::duration;
- using chrono::duration_cast;
- 
--using TimeSpec = struct ::timespec;
--using StatT = struct ::stat;
-+using TimeSpec = struct timespec;
-+using StatT = struct stat;
- 
- template <class FileTimeT, class TimeT,
-           bool IsFloat = is_floating_point<typename FileTimeT::rep>::value>
diff --git a/package/libs/libcxx/patches/030-cxxabi.patch b/package/libs/libcxx/patches/030-cxxabi.patch
deleted file mode 100644
index c70400f0c0..0000000000
--- a/package/libs/libcxx/patches/030-cxxabi.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/cmake/Modules/HandleLibCXXABI.cmake
-+++ b/cmake/Modules/HandleLibCXXABI.cmake
-@@ -84,7 +84,7 @@ if ("${LIBCXX_CXX_ABI_LIBNAME}" STREQUAL "libstdc++" OR
-     "${LIBCXX_CXX_ABI_LIBNAME}" STREQUAL "libsupc++")
-   set(_LIBSUPCXX_INCLUDE_FILES
-     cxxabi.h bits/c++config.h bits/os_defines.h bits/cpu_defines.h
--    bits/cxxabi_tweaks.h bits/cxxabi_forced.h
-+    bits/cxxabi_tweaks.h bits/cxxabi_forced.h bits/cxxabi_init_exception.h
-     )
-   if ("${LIBCXX_CXX_ABI_LIBNAME}" STREQUAL "libstdc++")
-     set(_LIBSUPCXX_DEFINES "-DLIBSTDCXX")
diff --git a/package/libs/libcxx/patches/040-ssp.patch b/package/libs/libcxx/patches/040-ssp.patch
deleted file mode 100644
index f4f780d33a..0000000000
--- a/package/libs/libcxx/patches/040-ssp.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/src/CMakeLists.txt
-+++ b/src/CMakeLists.txt
-@@ -175,6 +175,8 @@ function(cxx_link_system_libraries target)
-     target_link_libraries(${target} PUBLIC atomic)
-   endif()
- 
-+  target_link_libraries(${target} PUBLIC ssp_nonshared)
-+
-   if (MINGW)
-     target_link_libraries(${target} PUBLIC "${MINGW_LIBRARIES}")
-   endif()
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
