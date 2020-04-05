Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F091B19EE6A
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 00:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UuD1MXd7Q7z7tdYlNCAwMRRTJjYAq7dgh96fu1qvcJs=; b=AgkTdOFxnqSS4T
	tOw/i9o1BZgvPerIGodj8eqC+r6QJKzcDVA6QpCwkOcO0gaeRj3aKZQOOvrgKcTotpPZ6+fvXxSiy
	KJ+ueZrNp+1c7Snfl75Zap0aLieOBvJBRw77X9B18weFBAlanpKtvZkQp+Iu7j+4bPlcuGTKf+/Zf
	kRR6vXkKzzyathGqGF9n+X6LWCD94/dl0aL+x4rbofz9t9nA90TthKg/jIksn33sFyv3q8Ct4VYB8
	2+20N0eT31LlsLjb0oHjtcCot0oMX5jOBODVZvpvtu2l2r7GyL6NCBAQKkoQHYyKdftg/Tvq7LBps
	s1Rxb1B4fhn3zGh27aQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLDuh-0004N1-61; Sun, 05 Apr 2020 22:38:47 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLDuZ-0004M6-He
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 22:38:41 +0000
Received: by mail-pj1-x1041.google.com with SMTP id fh8so5655962pjb.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 15:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z9X8oisbazu0UCKzi/QQstHcDWoPrrwBveQS/V3z2u0=;
 b=bTMXH6IN217+jZXK4ASH5/8hrT4GwXl/uvUBL9Rbgw0k4qnNUj5sLgeQIqXdcjDNf8
 wwZr2ZAsaS3WUuioR6LtkcNOjBp6+lipkS2mlkDa1DX2vS1NZO7NW63Xs6RoH7eMozjX
 vbWHpNALdP860r3htRkUzWEHdh0Sgm2vwve6i+STXgQuNgzNXIS++IRKmfO6c0SW9+aO
 6vXC8nGPi2yCW8IrNLNNWnNcSm+B8xBVxSHmp0fk8l27wmNZVC19m8W/eJ5mVPt5OSXl
 XWzy/3KXK+EBsQPftuSNJGZNuazQbjoDF6M0pE0JhoIr/elgjrRvLWTMH5HGkVjdt6nc
 q3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Z9X8oisbazu0UCKzi/QQstHcDWoPrrwBveQS/V3z2u0=;
 b=dHIMrhPz9EJc4JzVU9ZvLHO/hOmsoe+XOtruLIzMKUGjuAPBjpC8CqPFZbNvuW7MPK
 2mQwCk45ww+Me7IqESdnVG3E53lxI3NjZJJE+eRbwl2SQV6FfR4hoKsYKNnod2yUbNus
 EAdxd8PNtwxdA2dLabUhy+1TySgl4d6b0Nh/j2AC5pt0vx4qiffeL89sBBtyG49LUwe9
 OfZOUZw1jSSc9HPwi9JZoEpXJ9Id/lPSHWbj3c49KAJr2oTSHZ4KNGOvNraTwjvjJMhx
 aoYMoXS4pSAxlOFvdaFoyUGH5DorydtvvYLMPSEAlVkuJZttdYCMFCR6p1FG5L9rVcgA
 qx0g==
X-Gm-Message-State: AGi0PuY2nHvXtHHnYttXwKMG/5WoSuk8xmGy9fjjdqNHrmPRjqoQu59W
 Czih71MtP1XV4OwvUWnPb2uVYN4FnLU=
X-Google-Smtp-Source: APiQypJkEJ1sypBhIUMoQcGSjx4+ZNWmU59KMqKaBbKQZWEuc57SJjxAsePdHChGY6YGg+XzOF7jjw==
X-Received: by 2002:a17:90a:be11:: with SMTP id
 a17mr23673787pjs.150.1586126314568; 
 Sun, 05 Apr 2020 15:38:34 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id i7sm10283752pfq.217.2020.04.05.15.38.33
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 15:38:33 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 15:38:32 -0700
Message-Id: <20200405223832.123797-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_153839_609505_3E81BFEE 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] tools/cmake: update to 3.17.0
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

Remove libressl patches. They are no longer needed.

Replace qt tests patch with one that disables all of them.

Refresh remaining one.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 tools/cmake/Makefile                          |  6 ++--
 .../cmake/patches/100-disable_qt_tests.patch  | 34 -------------------
 tools/cmake/patches/100-no-testing.patch      | 33 ++++++++++++++++++
 .../110-libarchive-fix-libressl-compat.patch  | 11 ------
 .../130-bootstrap_parallel_make_flag.patch    |  2 +-
 .../patches/140-libarchive-fix-libressl.patch | 25 --------------
 6 files changed, 37 insertions(+), 74 deletions(-)
 delete mode 100644 tools/cmake/patches/100-disable_qt_tests.patch
 create mode 100644 tools/cmake/patches/100-no-testing.patch
 delete mode 100644 tools/cmake/patches/110-libarchive-fix-libressl-compat.patch
 delete mode 100644 tools/cmake/patches/140-libarchive-fix-libressl.patch

diff --git a/tools/cmake/Makefile b/tools/cmake/Makefile
index 336db5dd1f..ab3d225aa6 100644
--- a/tools/cmake/Makefile
+++ b/tools/cmake/Makefile
@@ -7,13 +7,13 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=cmake
-PKG_VERSION:=3.16.5
+PKG_VERSION:=3.17.0
 PKG_CPE_ID:=cpe:/a:kitware:cmake
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/Kitware/CMake/releases/download/v$(PKG_VERSION)/ \
-		https://cmake.org/files/v3.16/
-PKG_HASH:=5f760b50b8ecc9c0c37135fae5fbf00a2fef617059aa9d61c1bb91653e5a8bfc
+		https://cmake.org/files/v3.17/
+PKG_HASH:=b74c05b55115eacc4fa2b77a814981dbda05cdc95a53e279fe16b7b272f00847
 
 HOST_BUILD_PARALLEL:=1
 HOST_CONFIGURE_PARALLEL:=1
diff --git a/tools/cmake/patches/100-disable_qt_tests.patch b/tools/cmake/patches/100-disable_qt_tests.patch
deleted file mode 100644
index 9c0957a390..0000000000
--- a/tools/cmake/patches/100-disable_qt_tests.patch
+++ /dev/null
@@ -1,34 +0,0 @@
---- a/Tests/RunCMake/CMakeLists.txt
-+++ b/Tests/RunCMake/CMakeLists.txt
-@@ -375,15 +375,6 @@ else()
-   message(WARNING "Could not find or build ctresalloc")
- endif()
- 
--find_package(Qt4 QUIET)
--find_package(Qt5Core QUIET)
--if (QT4_FOUND AND Qt5Core_FOUND AND NOT Qt5Core_VERSION VERSION_LESS 5.1.0)
--  add_RunCMake_test(IncompatibleQt)
--endif()
--if (QT4_FOUND)
--  add_RunCMake_test(ObsoleteQtMacros -DQT_QMAKE_EXECUTABLE:FILEPATH=${QT_QMAKE_EXECUTABLE})
--endif()
--
- find_package(PkgConfig QUIET)
- if(PKG_CONFIG_FOUND)
-   add_RunCMake_test(FindPkgConfig)
---- a/Tests/CMakeLists.txt
-+++ b/Tests/CMakeLists.txt
-@@ -489,13 +489,6 @@ if(BUILD_TESTING)
- 
-   list(APPEND TEST_BUILD_DIRS ${CMake_TEST_INSTALL_PREFIX})
- 
--  if(NOT DEFINED CMake_TEST_Qt4)
--    set(CMake_TEST_Qt4 1)
--  endif()
--  if(CMake_TEST_Qt4 AND NOT QT4_FOUND)
--    find_package(Qt4 QUIET)
--  endif()
--
-   if(CMake_TEST_Qt4 AND QT4_FOUND)
-     # test whether the Qt4 which has been found works, on some machines
-     # which run nightly builds there were errors like "wrong file format"
diff --git a/tools/cmake/patches/100-no-testing.patch b/tools/cmake/patches/100-no-testing.patch
new file mode 100644
index 0000000000..501302b835
--- /dev/null
+++ b/tools/cmake/patches/100-no-testing.patch
@@ -0,0 +1,33 @@
+--- a/Modules/CTest.cmake
++++ b/Modules/CTest.cmake
+@@ -47,7 +47,7 @@ the :variable:`CTEST_USE_LAUNCHERS` variable::
+ in the ``CTestConfig.cmake`` file.
+ #]=======================================================================]
+ 
+-option(BUILD_TESTING "Build the testing tree." ON)
++option(BUILD_TESTING "Build the testing tree." OFF)
+ 
+ # function to turn generator name into a version string
+ # like vs9 or vs10
+--- a/Modules/Dart.cmake
++++ b/Modules/Dart.cmake
+@@ -33,7 +33,7 @@ whether testing support should be enabled.  The default is ON.
+ #
+ #
+ 
+-option(BUILD_TESTING "Build the testing tree." ON)
++option(BUILD_TESTING "Build the testing tree." OFF)
+ 
+ if(BUILD_TESTING)
+   find_package(Dart QUIET)
+--- a/Tests/Contracts/VTK/Dashboard.cmake.in
++++ b/Tests/Contracts/VTK/Dashboard.cmake.in
+@@ -25,7 +25,7 @@ ctest_empty_binary_directory(${CTEST_BINARY_DIRECTORY})
+ 
+ file(WRITE "${CTEST_BINARY_DIRECTORY}/CMakeCache.txt" "
+   BUILD_EXAMPLES:BOOL=ON
+-  BUILD_TESTING:BOOL=ON
++  BUILD_TESTING:BOOL=OFF
+   VTK_WRAP_PYTHON:BOOL=ON
+   ExternalData_OBJECT_STORES:FILEPATH=@base_dir@/ExternalData
+ ")
diff --git a/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch b/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch
deleted file mode 100644
index ba6565b6af..0000000000
--- a/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch
+++ /dev/null
@@ -1,11 +0,0 @@
---- a/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
-+++ b/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
-@@ -28,7 +28,7 @@
- #include <openssl/evp.h>
- #include <openssl/opensslv.h>
- 
--#if OPENSSL_VERSION_NUMBER < 0x10100000L
-+#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
- #include <stdlib.h> /* malloc, free */
- #include <string.h> /* memset */
- static inline EVP_MD_CTX *EVP_MD_CTX_new(void)
diff --git a/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch b/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch
index 9fcbf63f98..7b6198b14b 100644
--- a/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch
+++ b/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch
@@ -1,6 +1,6 @@
 --- a/bootstrap
 +++ b/bootstrap
-@@ -1248,7 +1248,10 @@ int main(){ printf("1%c", (char)0x0a); r
+@@ -1283,7 +1283,10 @@ int main(){ printf("1%c", (char)0x0a); r
  ' > "test.c"
  cmake_original_make_flags="${cmake_make_flags}"
  if [ "x${cmake_parallel_make}" != "x" ]; then
diff --git a/tools/cmake/patches/140-libarchive-fix-libressl.patch b/tools/cmake/patches/140-libarchive-fix-libressl.patch
deleted file mode 100644
index ddddc5e836..0000000000
--- a/tools/cmake/patches/140-libarchive-fix-libressl.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From 5da00ad75b09e262774ec3675bbe4d5a4502a852 Mon Sep 17 00:00:00 2001
-From: Bernard Spil <brnrd@FreeBSD.org>
-Date: Sun, 1 Apr 2018 23:01:44 +0200
-Subject: [PATCH] fix build with LibreSSL 2.7
-
-LibreSSL 2.7 adds OpenSSL 1.1 API leading to conflicts on method names
-
-See also: https://bugs.freebsd.org/226853
-Signed-off-by: Bernard Spil <brnrd@FreeBSD.org>
----
- libarchive/archive_openssl_hmac_private.h | 3 ++-
- 1 file changed, 2 insertions(+), 1 deletion(-)
-
---- a/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
-+++ b/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
-@@ -28,7 +28,8 @@
- #include <openssl/evp.h>
- #include <openssl/opensslv.h>
- 
--#if OPENSSL_VERSION_NUMBER < 0x10100000L || defined(LIBRESSL_VERSION_NUMBER)
-+#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
-+	(defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER < 0x20700000L)
- #include <stdlib.h> /* malloc, free */
- #include <string.h> /* memset */
- static inline EVP_MD_CTX *EVP_MD_CTX_new(void)
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
