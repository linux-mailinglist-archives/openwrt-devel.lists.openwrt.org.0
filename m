Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D470519F041
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 08:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gGuuznoYh1zhSkt1ljWrtXlsdz9ta6iWSLtbPbJP124=; b=Cus9cnSwNdIog7XW37l5uJtdd
	hbGiZtjkI3KHtJIZSeDs3mycnbrF04a1lgV+L8bXafL+LqYEYJEMA2iEAuyT3MuSlpRoUx6k7pdbC
	3HPhukZ0mvYuxiLbCdsaAqVjM2QMlWq7zBkszt/yjIqVkMmta+EnFU5H1AT5opFWLdIHdBkL17BOp
	OGxpaFSWM6zYr9Dxs0ysuv1Auwzlb4xuR+h0yVCRa4Df936sD9q06W/Ejb8LWKZAZ7ZMav3nBbUtr
	gG+iMUMI89S5b3JC1dWJGj6XynailDT5SLBDUxAX/i/IMcWOcxPPHYI7iXYox2dgnu61rmiN/08Ae
	gRjRb5SZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLKug-0001Wb-Te; Mon, 06 Apr 2020 06:07:14 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLKuH-0001LF-KE
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 06:06:52 +0000
Received: by mail-qv1-xf44.google.com with SMTP id ef12so6952836qvb.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 23:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uuuPlYIqf+pdTCjBkutjI9s5wjSDods8TPcSRJHeq4A=;
 b=hTD8SofZt9y7YIsCY7AyNels0fH/6486WT6EuSiSIXpzenVHvquuzkv1E8+RFe/Ufn
 x4ClAy3Sxwmjytzh75e4xA/cGCpbsrJc2Avh9hZi6czGflUAEYZXbA+KDQyo24zZJOFO
 21/+vp9eTfEOzgkYiaHmvrETIeA3pd2v2IVewWL8lz2WlPi8hnEJ98xoz1M9zdlfc7fg
 T724AWwrMa+aQBzYWGxywJpPyryE5RGZi23K4rDTd/i28hoFk8twxbkeKNmFmCyWXbSf
 TwpNbBoglgjKI+mkTVl7h432bQgmsecpA+LeyCZOkdUz+ZwM3XtUr13+Jt8ABQkW7Tiy
 M0qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uuuPlYIqf+pdTCjBkutjI9s5wjSDods8TPcSRJHeq4A=;
 b=uQOO1PsT2QtENxMHZS6u/q38UUxkXyFqH3a2dpZe6vgQTL0WSsXfyaCMLIyR9bbxmi
 j2Y2mjZGQuaqYHazgiiV/BQ4hY/qndAVcQ7UI8AiEtOaP/87dyXYFGk0BVa9fiiNElon
 se5nOZW9Ppc95Ib+OZtT6xibkHETviaw2GFlEn6mqLRE695dm9LvhljJakBqYRBBckK6
 Tkv9nICTXQR9QAs4vdJIeGTofbBLx9L/+qbF37f4D9oY+soOWjuovvYgKGdtHRI4YzNk
 aohPjwL0dLIyJMdRJdaaIn9ZD1iLc5WR08QHu+rTN25yxHEu0eQlXT+HVl3xil65MMY/
 4bUg==
X-Gm-Message-State: AGi0Pubg/d7zd8OF0tVQBbAkODcLLj9wBodRqrgOdIELc3xPClH76Gzm
 egReEJNoG71QWRwD5jetEG/mQk4pOSDSD6JMQ/I=
X-Google-Smtp-Source: APiQypKdoN/oVJnHqLkQiCJhoWFscb2+zh6yomo1qNNLDtkXCgmLEXkA2jPMU8yYoteqz6fPl8dU/q0EAD9zVPz9dy0=
X-Received: by 2002:a05:6214:364:: with SMTP id
 t4mr19840852qvu.124.1586153207819; 
 Sun, 05 Apr 2020 23:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200405223832.123797-1-rosenp@gmail.com>
In-Reply-To: <20200405223832.123797-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Mon, 6 Apr 2020 08:06:36 +0200
Message-ID: <CAJLcKsFOiJW2OyO6Ymq7SPwFsENQV0BfNDAeMDhBA-05p9FQZA@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_230649_716628_4B3A3D2C 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] tools/cmake: update to 3.17.0
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1861853342389452249=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1861853342389452249==
Content-Type: multipart/alternative; boundary="00000000000082f32d05a2991201"

--00000000000082f32d05a2991201
Content-Type: text/plain; charset="UTF-8"

Hi,

On Mon, Apr 6, 2020 at 12:38 AM Rosen Penev <rosenp@gmail.com> wrote:

> Remove libressl patches. They are no longer needed.
>
Can you add why they're not needed anymore ?

Thx
Hans

>
> Replace qt tests patch with one that disables all of them.
>
> Refresh remaining one.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  tools/cmake/Makefile                          |  6 ++--
>  .../cmake/patches/100-disable_qt_tests.patch  | 34 -------------------
>  tools/cmake/patches/100-no-testing.patch      | 33 ++++++++++++++++++
>  .../110-libarchive-fix-libressl-compat.patch  | 11 ------
>  .../130-bootstrap_parallel_make_flag.patch    |  2 +-
>  .../patches/140-libarchive-fix-libressl.patch | 25 --------------
>  6 files changed, 37 insertions(+), 74 deletions(-)
>  delete mode 100644 tools/cmake/patches/100-disable_qt_tests.patch
>  create mode 100644 tools/cmake/patches/100-no-testing.patch
>  delete mode 100644
> tools/cmake/patches/110-libarchive-fix-libressl-compat.patch
>  delete mode 100644 tools/cmake/patches/140-libarchive-fix-libressl.patch
>
> diff --git a/tools/cmake/Makefile b/tools/cmake/Makefile
> index 336db5dd1f..ab3d225aa6 100644
> --- a/tools/cmake/Makefile
> +++ b/tools/cmake/Makefile
> @@ -7,13 +7,13 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=cmake
> -PKG_VERSION:=3.16.5
> +PKG_VERSION:=3.17.0
>  PKG_CPE_ID:=cpe:/a:kitware:cmake
>
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
>  PKG_SOURCE_URL:=
> https://github.com/Kitware/CMake/releases/download/v$(PKG_VERSION)/ \
> -               https://cmake.org/files/v3.16/
> -PKG_HASH:=5f760b50b8ecc9c0c37135fae5fbf00a2fef617059aa9d61c1bb91653e5a8bfc
> +               https://cmake.org/files/v3.17/
> +PKG_HASH:=b74c05b55115eacc4fa2b77a814981dbda05cdc95a53e279fe16b7b272f00847
>
>  HOST_BUILD_PARALLEL:=1
>  HOST_CONFIGURE_PARALLEL:=1
> diff --git a/tools/cmake/patches/100-disable_qt_tests.patch
> b/tools/cmake/patches/100-disable_qt_tests.patch
> deleted file mode 100644
> index 9c0957a390..0000000000
> --- a/tools/cmake/patches/100-disable_qt_tests.patch
> +++ /dev/null
> @@ -1,34 +0,0 @@
> ---- a/Tests/RunCMake/CMakeLists.txt
> -+++ b/Tests/RunCMake/CMakeLists.txt
> -@@ -375,15 +375,6 @@ else()
> -   message(WARNING "Could not find or build ctresalloc")
> - endif()
> -
> --find_package(Qt4 QUIET)
> --find_package(Qt5Core QUIET)
> --if (QT4_FOUND AND Qt5Core_FOUND AND NOT Qt5Core_VERSION VERSION_LESS
> 5.1.0)
> --  add_RunCMake_test(IncompatibleQt)
> --endif()
> --if (QT4_FOUND)
> --  add_RunCMake_test(ObsoleteQtMacros
> -DQT_QMAKE_EXECUTABLE:FILEPATH=${QT_QMAKE_EXECUTABLE})
> --endif()
> --
> - find_package(PkgConfig QUIET)
> - if(PKG_CONFIG_FOUND)
> -   add_RunCMake_test(FindPkgConfig)
> ---- a/Tests/CMakeLists.txt
> -+++ b/Tests/CMakeLists.txt
> -@@ -489,13 +489,6 @@ if(BUILD_TESTING)
> -
> -   list(APPEND TEST_BUILD_DIRS ${CMake_TEST_INSTALL_PREFIX})
> -
> --  if(NOT DEFINED CMake_TEST_Qt4)
> --    set(CMake_TEST_Qt4 1)
> --  endif()
> --  if(CMake_TEST_Qt4 AND NOT QT4_FOUND)
> --    find_package(Qt4 QUIET)
> --  endif()
> --
> -   if(CMake_TEST_Qt4 AND QT4_FOUND)
> -     # test whether the Qt4 which has been found works, on some machines
> -     # which run nightly builds there were errors like "wrong file format"
> diff --git a/tools/cmake/patches/100-no-testing.patch
> b/tools/cmake/patches/100-no-testing.patch
> new file mode 100644
> index 0000000000..501302b835
> --- /dev/null
> +++ b/tools/cmake/patches/100-no-testing.patch
> @@ -0,0 +1,33 @@
> +--- a/Modules/CTest.cmake
> ++++ b/Modules/CTest.cmake
> +@@ -47,7 +47,7 @@ the :variable:`CTEST_USE_LAUNCHERS` variable::
> + in the ``CTestConfig.cmake`` file.
> +
> #]=======================================================================]
> +
> +-option(BUILD_TESTING "Build the testing tree." ON)
> ++option(BUILD_TESTING "Build the testing tree." OFF)
> +
> + # function to turn generator name into a version string
> + # like vs9 or vs10
> +--- a/Modules/Dart.cmake
> ++++ b/Modules/Dart.cmake
> +@@ -33,7 +33,7 @@ whether testing support should be enabled.  The default
> is ON.
> + #
> + #
> +
> +-option(BUILD_TESTING "Build the testing tree." ON)
> ++option(BUILD_TESTING "Build the testing tree." OFF)
> +
> + if(BUILD_TESTING)
> +   find_package(Dart QUIET)
> +--- a/Tests/Contracts/VTK/Dashboard.cmake.in
> ++++ b/Tests/Contracts/VTK/Dashboard.cmake.in
> +@@ -25,7 +25,7 @@ ctest_empty_binary_directory(${CTEST_BINARY_DIRECTORY})
> +
> + file(WRITE "${CTEST_BINARY_DIRECTORY}/CMakeCache.txt" "
> +   BUILD_EXAMPLES:BOOL=ON
> +-  BUILD_TESTING:BOOL=ON
> ++  BUILD_TESTING:BOOL=OFF
> +   VTK_WRAP_PYTHON:BOOL=ON
> +   ExternalData_OBJECT_STORES:FILEPATH=@base_dir@/ExternalData
> + ")
> diff --git a/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch
> b/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch
> deleted file mode 100644
> index ba6565b6af..0000000000
> --- a/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch
> +++ /dev/null
> @@ -1,11 +0,0 @@
> ---- a/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
> -+++ b/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
> -@@ -28,7 +28,7 @@
> - #include <openssl/evp.h>
> - #include <openssl/opensslv.h>
> -
> --#if OPENSSL_VERSION_NUMBER < 0x10100000L
> -+#if OPENSSL_VERSION_NUMBER < 0x10100000L ||
> defined(LIBRESSL_VERSION_NUMBER)
> - #include <stdlib.h> /* malloc, free */
> - #include <string.h> /* memset */
> - static inline EVP_MD_CTX *EVP_MD_CTX_new(void)
> diff --git a/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch
> b/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch
> index 9fcbf63f98..7b6198b14b 100644
> --- a/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch
> +++ b/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch
> @@ -1,6 +1,6 @@
>  --- a/bootstrap
>  +++ b/bootstrap
> -@@ -1248,7 +1248,10 @@ int main(){ printf("1%c", (char)0x0a); r
> +@@ -1283,7 +1283,10 @@ int main(){ printf("1%c", (char)0x0a); r
>   ' > "test.c"
>   cmake_original_make_flags="${cmake_make_flags}"
>   if [ "x${cmake_parallel_make}" != "x" ]; then
> diff --git a/tools/cmake/patches/140-libarchive-fix-libressl.patch
> b/tools/cmake/patches/140-libarchive-fix-libressl.patch
> deleted file mode 100644
> index ddddc5e836..0000000000
> --- a/tools/cmake/patches/140-libarchive-fix-libressl.patch
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -From 5da00ad75b09e262774ec3675bbe4d5a4502a852 Mon Sep 17 00:00:00 2001
> -From: Bernard Spil <brnrd@FreeBSD.org>
> -Date: Sun, 1 Apr 2018 23:01:44 +0200
> -Subject: [PATCH] fix build with LibreSSL 2.7
> -
> -LibreSSL 2.7 adds OpenSSL 1.1 API leading to conflicts on method names
> -
> -See also: https://bugs.freebsd.org/226853
> -Signed-off-by: Bernard Spil <brnrd@FreeBSD.org>
> ----
> - libarchive/archive_openssl_hmac_private.h | 3 ++-
> - 1 file changed, 2 insertions(+), 1 deletion(-)
> -
> ---- a/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
> -+++ b/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h
> -@@ -28,7 +28,8 @@
> - #include <openssl/evp.h>
> - #include <openssl/opensslv.h>
> -
> --#if OPENSSL_VERSION_NUMBER < 0x10100000L ||
> defined(LIBRESSL_VERSION_NUMBER)
> -+#if OPENSSL_VERSION_NUMBER < 0x10100000L || \
> -+      (defined(LIBRESSL_VERSION_NUMBER) && LIBRESSL_VERSION_NUMBER <
> 0x20700000L)
> - #include <stdlib.h> /* malloc, free */
> - #include <string.h> /* memset */
> - static inline EVP_MD_CTX *EVP_MD_CTX_new(void)
> --
> 2.25.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000082f32d05a2991201
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Apr 6, 2020 at 12:38 AM Rosen Penev &=
lt;<a href=3D"mailto:rosenp@gmail.com">rosenp@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Remove libressl patc=
hes. They are no longer needed.<br></blockquote><div>Can you add why they&#=
39;re not needed anymore ?</div><div><br></div><div>Thx</div><div>Hans<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Replace qt tests patch with one that disables all of them.<br>
<br>
Refresh remaining one.<br>
<br>
Signed-off-by: Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com" target=
=3D"_blank">rosenp@gmail.com</a>&gt;<br>
---<br>
=C2=A0tools/cmake/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 6 ++--<br>
=C2=A0.../cmake/patches/100-disable_qt_tests.patch=C2=A0 | 34 -------------=
------<br>
=C2=A0tools/cmake/patches/100-no-testing.patch=C2=A0 =C2=A0 =C2=A0 | 33 +++=
+++++++++++++++<br>
=C2=A0.../110-libarchive-fix-libressl-compat.patch=C2=A0 | 11 ------<br>
=C2=A0.../130-bootstrap_parallel_make_flag.patch=C2=A0 =C2=A0 |=C2=A0 2 +-<=
br>
=C2=A0.../patches/140-libarchive-fix-libressl.patch | 25 --------------<br>
=C2=A06 files changed, 37 insertions(+), 74 deletions(-)<br>
=C2=A0delete mode 100644 tools/cmake/patches/100-disable_qt_tests.patch<br>
=C2=A0create mode 100644 tools/cmake/patches/100-no-testing.patch<br>
=C2=A0delete mode 100644 tools/cmake/patches/110-libarchive-fix-libressl-co=
mpat.patch<br>
=C2=A0delete mode 100644 tools/cmake/patches/140-libarchive-fix-libressl.pa=
tch<br>
<br>
diff --git a/tools/cmake/Makefile b/tools/cmake/Makefile<br>
index 336db5dd1f..ab3d225aa6 100644<br>
--- a/tools/cmake/Makefile<br>
+++ b/tools/cmake/Makefile<br>
@@ -7,13 +7,13 @@<br>
=C2=A0include $(TOPDIR)/<a href=3D"http://rules.mk" rel=3D"noreferrer" targ=
et=3D"_blank">rules.mk</a><br>
<br>
=C2=A0PKG_NAME:=3Dcmake<br>
-PKG_VERSION:=3D3.16.5<br>
+PKG_VERSION:=3D3.17.0<br>
=C2=A0PKG_CPE_ID:=3Dcpe:/a:kitware:cmake<br>
<br>
=C2=A0PKG_SOURCE:=3D$(PKG_NAME)-$(PKG_VERSION).tar.gz<br>
=C2=A0PKG_SOURCE_URL:=3D<a href=3D"https://github.com/Kitware/CMake/release=
s/download/v$(PKG_VERSION)/" rel=3D"noreferrer" target=3D"_blank">https://g=
ithub.com/Kitware/CMake/releases/download/v$(PKG_VERSION)/</a> \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://=
cmake.org/files/v3.16/" rel=3D"noreferrer" target=3D"_blank">https://cmake.=
org/files/v3.16/</a><br>
-PKG_HASH:=3D5f760b50b8ecc9c0c37135fae5fbf00a2fef617059aa9d61c1bb91653e5a8b=
fc<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://=
cmake.org/files/v3.17/" rel=3D"noreferrer" target=3D"_blank">https://cmake.=
org/files/v3.17/</a><br>
+PKG_HASH:=3Db74c05b55115eacc4fa2b77a814981dbda05cdc95a53e279fe16b7b272f008=
47<br>
<br>
=C2=A0HOST_BUILD_PARALLEL:=3D1<br>
=C2=A0HOST_CONFIGURE_PARALLEL:=3D1<br>
diff --git a/tools/cmake/patches/100-disable_qt_tests.patch b/tools/cmake/p=
atches/100-disable_qt_tests.patch<br>
deleted file mode 100644<br>
index 9c0957a390..0000000000<br>
--- a/tools/cmake/patches/100-disable_qt_tests.patch<br>
+++ /dev/null<br>
@@ -1,34 +0,0 @@<br>
---- a/Tests/RunCMake/CMakeLists.txt<br>
-+++ b/Tests/RunCMake/CMakeLists.txt<br>
-@@ -375,15 +375,6 @@ else()<br>
-=C2=A0 =C2=A0message(WARNING &quot;Could not find or build ctresalloc&quot=
;)<br>
- endif()<br>
- <br>
--find_package(Qt4 QUIET)<br>
--find_package(Qt5Core QUIET)<br>
--if (QT4_FOUND AND Qt5Core_FOUND AND NOT Qt5Core_VERSION VERSION_LESS 5.1.=
0)<br>
--=C2=A0 add_RunCMake_test(IncompatibleQt)<br>
--endif()<br>
--if (QT4_FOUND)<br>
--=C2=A0 add_RunCMake_test(ObsoleteQtMacros -DQT_QMAKE_EXECUTABLE:FILEPATH=
=3D${QT_QMAKE_EXECUTABLE})<br>
--endif()<br>
--<br>
- find_package(PkgConfig QUIET)<br>
- if(PKG_CONFIG_FOUND)<br>
-=C2=A0 =C2=A0add_RunCMake_test(FindPkgConfig)<br>
---- a/Tests/CMakeLists.txt<br>
-+++ b/Tests/CMakeLists.txt<br>
-@@ -489,13 +489,6 @@ if(BUILD_TESTING)<br>
- <br>
-=C2=A0 =C2=A0list(APPEND TEST_BUILD_DIRS ${CMake_TEST_INSTALL_PREFIX})<br>
- <br>
--=C2=A0 if(NOT DEFINED CMake_TEST_Qt4)<br>
--=C2=A0 =C2=A0 set(CMake_TEST_Qt4 1)<br>
--=C2=A0 endif()<br>
--=C2=A0 if(CMake_TEST_Qt4 AND NOT QT4_FOUND)<br>
--=C2=A0 =C2=A0 find_package(Qt4 QUIET)<br>
--=C2=A0 endif()<br>
--<br>
-=C2=A0 =C2=A0if(CMake_TEST_Qt4 AND QT4_FOUND)<br>
-=C2=A0 =C2=A0 =C2=A0# test whether the Qt4 which has been found works, on =
some machines<br>
-=C2=A0 =C2=A0 =C2=A0# which run nightly builds there were errors like &quo=
t;wrong file format&quot;<br>
diff --git a/tools/cmake/patches/100-no-testing.patch b/tools/cmake/patches=
/100-no-testing.patch<br>
new file mode 100644<br>
index 0000000000..501302b835<br>
--- /dev/null<br>
+++ b/tools/cmake/patches/100-no-testing.patch<br>
@@ -0,0 +1,33 @@<br>
+--- a/Modules/CTest.cmake<br>
++++ b/Modules/CTest.cmake<br>
+@@ -47,7 +47,7 @@ the :variable:`CTEST_USE_LAUNCHERS` variable::<br>
+ in the ``CTestConfig.cmake`` file.<br>
+ #]=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D]<br>
+ <br>
+-option(BUILD_TESTING &quot;Build the testing tree.&quot; ON)<br>
++option(BUILD_TESTING &quot;Build the testing tree.&quot; OFF)<br>
+ <br>
+ # function to turn generator name into a version string<br>
+ # like vs9 or vs10<br>
+--- a/Modules/Dart.cmake<br>
++++ b/Modules/Dart.cmake<br>
+@@ -33,7 +33,7 @@ whether testing support should be enabled.=C2=A0 The def=
ault is ON.<br>
+ #<br>
+ #<br>
+ <br>
+-option(BUILD_TESTING &quot;Build the testing tree.&quot; ON)<br>
++option(BUILD_TESTING &quot;Build the testing tree.&quot; OFF)<br>
+ <br>
+ if(BUILD_TESTING)<br>
+=C2=A0 =C2=A0find_package(Dart QUIET)<br>
+--- a/Tests/Contracts/VTK/<a href=3D"http://Dashboard.cmake.in" rel=3D"nor=
eferrer" target=3D"_blank">Dashboard.cmake.in</a><br>
++++ b/Tests/Contracts/VTK/<a href=3D"http://Dashboard.cmake.in" rel=3D"nor=
eferrer" target=3D"_blank">Dashboard.cmake.in</a><br>
+@@ -25,7 +25,7 @@ ctest_empty_binary_directory(${CTEST_BINARY_DIRECTORY})<=
br>
+ <br>
+ file(WRITE &quot;${CTEST_BINARY_DIRECTORY}/CMakeCache.txt&quot; &quot;<br=
>
+=C2=A0 =C2=A0BUILD_EXAMPLES:BOOL=3DON<br>
+-=C2=A0 BUILD_TESTING:BOOL=3DON<br>
++=C2=A0 BUILD_TESTING:BOOL=3DOFF<br>
+=C2=A0 =C2=A0VTK_WRAP_PYTHON:BOOL=3DON<br>
+=C2=A0 =C2=A0ExternalData_OBJECT_STORES:FILEPATH=3D@base_dir@/ExternalData=
<br>
+ &quot;)<br>
diff --git a/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch b=
/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch<br>
deleted file mode 100644<br>
index ba6565b6af..0000000000<br>
--- a/tools/cmake/patches/110-libarchive-fix-libressl-compat.patch<br>
+++ /dev/null<br>
@@ -1,11 +0,0 @@<br>
---- a/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h<br>
-+++ b/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h<br>
-@@ -28,7 +28,7 @@<br>
- #include &lt;openssl/evp.h&gt;<br>
- #include &lt;openssl/opensslv.h&gt;<br>
- <br>
--#if OPENSSL_VERSION_NUMBER &lt; 0x10100000L<br>
-+#if OPENSSL_VERSION_NUMBER &lt; 0x10100000L || defined(LIBRESSL_VERSION_N=
UMBER)<br>
- #include &lt;stdlib.h&gt; /* malloc, free */<br>
- #include &lt;string.h&gt; /* memset */<br>
- static inline EVP_MD_CTX *EVP_MD_CTX_new(void)<br>
diff --git a/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch b/t=
ools/cmake/patches/130-bootstrap_parallel_make_flag.patch<br>
index 9fcbf63f98..7b6198b14b 100644<br>
--- a/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch<br>
+++ b/tools/cmake/patches/130-bootstrap_parallel_make_flag.patch<br>
@@ -1,6 +1,6 @@<br>
=C2=A0--- a/bootstrap<br>
=C2=A0+++ b/bootstrap<br>
-@@ -1248,7 +1248,10 @@ int main(){ printf(&quot;1%c&quot;, (char)0x0a); r<=
br>
+@@ -1283,7 +1283,10 @@ int main(){ printf(&quot;1%c&quot;, (char)0x0a); r<=
br>
=C2=A0 &#39; &gt; &quot;test.c&quot;<br>
=C2=A0 cmake_original_make_flags=3D&quot;${cmake_make_flags}&quot;<br>
=C2=A0 if [ &quot;x${cmake_parallel_make}&quot; !=3D &quot;x&quot; ]; then<=
br>
diff --git a/tools/cmake/patches/140-libarchive-fix-libressl.patch b/tools/=
cmake/patches/140-libarchive-fix-libressl.patch<br>
deleted file mode 100644<br>
index ddddc5e836..0000000000<br>
--- a/tools/cmake/patches/140-libarchive-fix-libressl.patch<br>
+++ /dev/null<br>
@@ -1,25 +0,0 @@<br>
-From 5da00ad75b09e262774ec3675bbe4d5a4502a852 Mon Sep 17 00:00:00 2001<br>
-From: Bernard Spil &lt;brnrd@FreeBSD.org&gt;<br>
-Date: Sun, 1 Apr 2018 23:01:44 +0200<br>
-Subject: [PATCH] fix build with LibreSSL 2.7<br>
-<br>
-LibreSSL 2.7 adds OpenSSL 1.1 API leading to conflicts on method names<br>
-<br>
-See also: <a href=3D"https://bugs.freebsd.org/226853" rel=3D"noreferrer" t=
arget=3D"_blank">https://bugs.freebsd.org/226853</a><br>
-Signed-off-by: Bernard Spil &lt;brnrd@FreeBSD.org&gt;<br>
----<br>
- libarchive/archive_openssl_hmac_private.h | 3 ++-<br>
- 1 file changed, 2 insertions(+), 1 deletion(-)<br>
-<br>
---- a/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h<br>
-+++ b/Utilities/cmlibarchive/libarchive/archive_openssl_evp_private.h<br>
-@@ -28,7 +28,8 @@<br>
- #include &lt;openssl/evp.h&gt;<br>
- #include &lt;openssl/opensslv.h&gt;<br>
- <br>
--#if OPENSSL_VERSION_NUMBER &lt; 0x10100000L || defined(LIBRESSL_VERSION_N=
UMBER)<br>
-+#if OPENSSL_VERSION_NUMBER &lt; 0x10100000L || \<br>
-+=C2=A0 =C2=A0 =C2=A0 (defined(LIBRESSL_VERSION_NUMBER) &amp;&amp; LIBRESS=
L_VERSION_NUMBER &lt; 0x20700000L)<br>
- #include &lt;stdlib.h&gt; /* malloc, free */<br>
- #include &lt;string.h&gt; /* memset */<br>
- static inline EVP_MD_CTX *EVP_MD_CTX_new(void)<br>
-- <br>
2.25.1<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--00000000000082f32d05a2991201--


--===============1861853342389452249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1861853342389452249==--

