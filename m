Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AB71EC550
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 00:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KataWeKFWsnUuhitMQTb0GpZUE4LOOXGyNA/MnEFHL8=; b=DC3s3SQGOTkhgDVd6otksFcaTD
	SEm6bzW63InAaxkr5YLYBMiS9K6AHJYffAxD+6rJuqAjbZWWV0+2hii2TC9nnS4ya6WCincZykYil
	W6KpWven+csDo2tubvFNGD8dzTeaSNXAf7jvZNb/GAEw2m+OXo+NdGV4mJGMBbgvnnrWefVNGADLj
	JQ00k+7POgeqfWkr5Y0nEXLg4634ohL+nBzZdrHGjeAqDgJholksrXM8Lq80M5JXet5qJdvrGo0ap
	rTSJVUi7EMhvR3wgxFwd7nyyZDdLyrm1T32yMCIiFFwdh9QSvwnEDXfvWgd94pKDkBQBqkr9FhN3H
	+vmYwjqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgFnK-0001hw-9H; Tue, 02 Jun 2020 22:54:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgFmw-0001Xf-Al
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 22:53:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id y11so60376plt.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 02 Jun 2020 15:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=y6NMwVB4U83yo4HbxTc5O965GzaOorr+Nu7sUVyuYog=;
 b=XnKwAkbyk4ROxKwjXzexKwzlKAhuvPnqYkQAV2+1HsPGkh0XoEbeINhDZUqIJaHkR9
 8ZmQn0nAfwRwhNA6WWA5fvoKpG8qeBi9nVNWXQXqFMiPhz/REey7sGmkpubJKV6WCM0N
 U+RCdJ5uKVaNcVcq+T1meWbHqpHP4R0dBJeUz9ptlpq4b5wQ4iCH+ceLnDTcNmi5Szc2
 O9m6+8lHBCtg4633uZghKTYgHa2whhafez+TY3gfKrbLhYGDBLd6c1B0WcMjjwofxPOg
 nKSrIzy1joh8rI8oKttKY4592rW03EFo3r5YOU7wxi4iX/L/dMku3QgNniC/f56FOcEp
 SJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=y6NMwVB4U83yo4HbxTc5O965GzaOorr+Nu7sUVyuYog=;
 b=BKDX/NeD3ir/tw7bg6afy+Po7ljqFk5NnxWlHS1+yXKWcFhu0iwJyitBc51h1q1tHd
 LXbY/eqicOeVKkV0FjVJhhA7CeT7G5/1bdRJdX5mrEqc2dwf/wSe4DUrbB+8edwvHCFX
 lAJxcdbW4J2I8OzNeEm9/vlZYbztLO6Axp6n6aHfOHpMM57R21y9mcBXMg/4hjSCNevv
 nU4hxnrgL30gsIleeJTEO06Y8gVNFhYTcfEucBoE0IMVQ+HZuCBcft2FPrqYaAYYQsQS
 7cDvppP6KfqM2K/BhW1R8T1QmCyRVucg1pbvs0u9nNFOUcbl+HVTGaFOP2IiZl/TrxPV
 hs7Q==
X-Gm-Message-State: AOAM532Od568wF4ciewC3m+fdEe89gz3bs5pd0t7SsET/SEg+i7vTY8D
 +vEN52JzMz9qp58PBot4NfUoxTXiJ2w=
X-Google-Smtp-Source: ABdhPJyHBQQ9zUoqmGXdYXBWmj/aZLw7qWtEv2UKvR35eh+XjR3avAG4l7wiULkvV14rfBjV3x585g==
X-Received: by 2002:a17:902:558f:: with SMTP id
 g15mr13314674pli.174.1591138421352; 
 Tue, 02 Jun 2020 15:53:41 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id r8sm167799pfq.16.2020.06.02.15.53.40
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 15:53:40 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  2 Jun 2020 15:53:38 -0700
Message-Id: <20200602225338.2234702-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602225338.2234702-1-rosenp@gmail.com>
References: <20200602225338.2234702-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_155342_368319_659501D4 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Added ssp patch. This one is needed for some platforms.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libcxx/Makefile                | 18 +++++------
 package/libs/libcxx/files/g++-libcxx        |  2 +-
 package/libs/libcxx/patches/010-cxx17.patch | 14 ---------
 package/libs/libcxx/patches/010-ssp.patch   | 11 +++++++
 package/libs/libcxx/patches/020-fixes.patch | 35 ---------------------
 5 files changed, 21 insertions(+), 59 deletions(-)
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
index 0000000000..f1618e57e8
--- /dev/null
+++ b/package/libs/libcxx/patches/010-ssp.patch
@@ -0,0 +1,11 @@
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -760,6 +760,8 @@ function(cxx_link_system_libraries target)
+     target_link_libraries(${target} PRIVATE atomic)
+   endif()
+ 
++  target_link_libraries(${target} PRIVATE ssp_nonshared)
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
