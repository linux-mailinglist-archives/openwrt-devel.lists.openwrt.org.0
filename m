Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F501F082F
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 20:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ol0t1BgXl44YDeT9rU9cHfz6XWUeF8HBWCaJ15IWN5o=; b=oHim9cZncOBNWhHdJvP2bTDs0B
	KAqY1MySqid82/bp+8Z0DcGLoPq7PXNxSX2jAhZrRzc4uVkYqAqwYs8NYMKEW8ITnMV5VItVBAx8K
	eaQrHnQEONNe+PGW/9w0v05mGurlldfTnfdUQXvOHzshgADJrR+5RV6JrkNTKqNla+QQ1M5E0xHqe
	x++33+7fRAbaRTSqpC0XyEMuKNr2EPxonzZ/5KLDihJO/pt328sDW3Lv3LbzB1zgSbx+Qysu+x6/7
	a+v9w6aPPxGqtbNqKk2YNVDEsDiNKXTDCbrZGZ3prZa0hsGC8/Y00pZnPCy9TBGwREC2/wFm3jzV0
	TOnrPZkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhdw7-00040f-TR; Sat, 06 Jun 2020 18:52:55 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhdvg-0003tF-Cp
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 18:52:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id p21so6739722pgm.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 11:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ha8x7pBIECZ0/1xCeoM+PkP9J/EdwQ1+knMI562s25c=;
 b=N8FWyTL6dswxBCHsLaJD9WEvFpy8YuQzJJGGQ7jkRwAZQ4g5S+yoTQIANDn4p7uARp
 M4suGXix+2+lBSyPcPPjcpV/K7CgcEB/aEOdjI55GR3TC8s89JXhODCl9e1iGlZj6npM
 pylzZwxQdXs6NAH3LXYIpujvzX/VNO2i+3Wig8LK892NCrulPRuMLfujOqGMi9oaWJje
 tk+wpvGyWsHI0KSTmsprxNQMTxUXV9ClamIo0FODcOKXAeYsQaIKsO078HB5edt9Z7Oo
 svedKhYugJjWkE5jIp1LW3LaFQIH8ej+qAhpIHyltEK+RUiHBalLdyZMWZvN2m6XgMSY
 /9FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ha8x7pBIECZ0/1xCeoM+PkP9J/EdwQ1+knMI562s25c=;
 b=EWEVH89MInwv6n08Aqq224pWGgtpNlLhy1i3QJWsUOSfLCBol+V//6OXdy8i2RtzPt
 60zpOl0MDgS2w+Tf5j1AA2pflibEsaFbLVgfI5MFGgncrblaZNU/zssS5a7H7JXMpTsd
 BdPt28fkHt+SWxunbU0eSxuTRq+/YzQHB0q3gY8X2cR6MJaC9ZglkuCOWQsGEKGDla3V
 EwPhkk8ntIbR6rJ8SpMbiZ+/UTSWbc37ISjoF4ORqIUWYDHlq03XQkR+phYx3/5b9NJy
 3rkOIU+/snt0b1zhhLZdmsPr86g4cju+paTNQSWz4aFUTYg51VBiJ0KllHXZT79sCgv+
 0s4A==
X-Gm-Message-State: AOAM530EWVh3VuFow77UOkrCifAXXU0pISqO2FPnCQ9OlROU/5Qa3fKO
 fzoZZycq+t8X2mMb4jeO2nkXatA6aAo=
X-Google-Smtp-Source: ABdhPJzUhEzORROCSj5IS5RwUAe0pZpUCp8ACuSdFVkHj4d0WKkKcksAdfhKSBWmHUVBDKZGSNSL1A==
X-Received: by 2002:a63:3114:: with SMTP id x20mr14860321pgx.52.1591469546476; 
 Sat, 06 Jun 2020 11:52:26 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id s1sm11361882pjp.27.2020.06.06.11.52.25
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 11:52:26 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  6 Jun 2020 11:52:23 -0700
Message-Id: <20200606185223.9749-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200606185223.9749-1-rosenp@gmail.com>
References: <20200606185223.9749-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_115228_443182_1A33E152 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] libcxx: update to 10.0.0
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

Switched to upstream tarballs.

Switched to libcxxabi as using libsupc++ is quite wonky.

Fixed description.

Removed patches. The fixes are cosmetic.

Added ssp patch. This one is needed for i386 and powerpc under musl.

Compile tested every C++ package in the tree with the exception of
several boost packages. There's something broken with boost.

Ran tested with gerbera.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libcxx/Makefile                | 18 +++++------
 package/libs/libcxx/files/g++-libcxx        |  2 +-
 package/libs/libcxx/patches/010-cxx17.patch | 14 ---------
 package/libs/libcxx/patches/010-ssp.patch   | 13 ++++++++
 package/libs/libcxx/patches/020-fixes.patch | 35 ---------------------
 5 files changed, 23 insertions(+), 59 deletions(-)
 delete mode 100644 package/libs/libcxx/patches/010-cxx17.patch
 create mode 100644 package/libs/libcxx/patches/010-ssp.patch
 delete mode 100644 package/libs/libcxx/patches/020-fixes.patch

diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
index 8343cbb427..3809bea651 100644
--- a/package/libs/libcxx/Makefile
+++ b/package/libs/libcxx/Makefile
@@ -7,19 +7,20 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libcxx
-PKG_VERSION:=9.0.1
-PKG_RELEASE:=4
+PKG_VERSION:=10.0.0
+PKG_RELEASE:=1
 
-PKG_SOURCE_PROTO:=git
-PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
-PKG_SOURCE_VERSION:=2076f539f410805ef88692b9c0ce0a0b882a7680
-PKG_MIRROR_HASH:=d527880a18dec9109575c76717cf5288fb91c11381b9d261cae2e5bebcbdab2e
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).src.tar.xz
+PKG_SOURCE_URL:=https://github.com/llvm/llvm-project/releases/download/llvmorg-$(PKG_VERSION)
+PKG_HASH:=270f8a3f176f1981b0f6ab8aa556720988872ec2b48ed3b605d0ced8d09156c7
+PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).src
 
 PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
 PKG_LICENSE:=MIT
 PKG_LICENSE_FILES:=LICENSE.txt
 
 PKG_BUILD_PARALLEL:=1
+PKG_BUILD_DEPENDS:=libcxxabi
 CMAKE_BINARY_SUBDIR:=build
 
 include $(INCLUDE_DIR)/package.mk
@@ -34,12 +35,11 @@ define Package/libcxx
 endef
 
 define Package/libcxx/description
-  LLVM C++ library targeting C++11 and above
+  libc++ is an implementation of the C++ standard library, targeting C++11, C++14 and above.
 endef
 
 CMAKE_OPTIONS += \
-	-DLIBCXX_CXX_ABI="libsupc++" \
-	-DLIBCXX_CXX_ABI_INCLUDE_PATHS="$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION);$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION)/$(REAL_GNU_TARGET_NAME)" \
+	-DLIBCXX_CXX_ABI="libcxxabi" \
 	-DLIBCXX_ENABLE_ASSERTIONS=OFF \
 	-DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
 	-DLIBCXX_INCLUDE_BENCHMARKS=OFF \
diff --git a/package/libs/libcxx/files/g++-libcxx b/package/libs/libcxx/files/g++-libcxx
index 81ca46eb0e..f37afb2fd5 100755
--- a/package/libs/libcxx/files/g++-libcxx
+++ b/package/libs/libcxx/files/g++-libcxx
@@ -13,7 +13,7 @@ do
 	-static) [ "$WRAPPER_LIBS" != "-lc -lgcc_s -lssp_nonshared -lgcc_eh" ] && WRAPPER_LIBS="-lc -lgcc_s -lssp_nonshared -lgcc_eh" ;;
 	esac
 done
-[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs $WRAPPER_LIBDIR -lc++ -lsupc++ $WRAPPER_LIBS"
+[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs $WRAPPER_LIBDIR -lc++ -lc++abi $WRAPPER_LIBS"
 
 exec CXX -fno-builtin -nostdinc++ -DGCC_HASCLASSVISIBILITY "$WRAPPER_INCLUDEDIR" "$@" $WRAPPER_OPTIONS
 
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
diff --git a/package/libs/libcxx/patches/010-ssp.patch b/package/libs/libcxx/patches/010-ssp.patch
new file mode 100644
index 0000000000..c9dc90c7f2
--- /dev/null
+++ b/package/libs/libcxx/patches/010-ssp.patch
@@ -0,0 +1,13 @@
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -760,6 +760,10 @@ function(cxx_link_system_libraries target)
+     target_link_libraries(${target} PRIVATE atomic)
+   endif()
+ 
++  if (LIBCXX_HAS_MUSL_LIBC)
++    target_link_libraries(${target} PRIVATE ssp_nonshared)
++  endif()
++
+   if (MINGW)
+     target_link_libraries(${target} PRIVATE "${MINGW_LIBRARIES}")
+   endif()
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
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
