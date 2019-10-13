Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4070FD539D
	for <lists+openwrt-devel@lfdr.de>; Sun, 13 Oct 2019 02:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mqVH1GihkZtu7RzbYdQsnyBoiVs9KC9n51BdVmVjcfw=; b=EVYV2ckrze2kiV
	ySYmjIYT582RG5DFPyA8hp9f/Magn75Is0Cv601D+NVo9eMbkb8i7MPKP4WYcUqNWPrS875SBhSqD
	TaCW6B1lQS05Fkzeb+zV+fc4MLve6O4pYNmLAmctilBkhO2gf1nIexzhoJrbTvlcdl6vK2KUEWzOU
	BJkagOBZjKdIMu+HySztCceebci7EOQvu2aiYBF67StkqiBex3bCNpKQPwMtAJH//FPNMEDaIFZcQ
	0Rwlt0OwrfKkPGJEy0oKqIvWzOpI+FKHqzANUVZmWZw1+H4w7HyUmTKoYEZrXyPgjHowzjnRX6A2S
	2SXH54Nl8Cvda3duiVQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJS3h-0002BG-7H; Sun, 13 Oct 2019 00:48:29 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJS3U-0002Ai-AI
 for openwrt-devel@lists.openwrt.org; Sun, 13 Oct 2019 00:48:18 +0000
Received: by mail-pf1-x429.google.com with SMTP id x127so8284883pfb.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 12 Oct 2019 17:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=OKVKXOR2yDe4PSNmkLviySLUjONHB730brtHu6bKMuU=;
 b=CrXXqubH87RQchgj0RagAux0uO3koXpzM5lyBOmekkF9NqhO/nTLKLBoR9nxt8w+Ey
 eDPwEpB7pjeikEffAjRofw0N/sYn9iU0wxrska8pBElppmFOQZKn0x7+eA2BAhkq5QGG
 uDGYbi+Vm82GiAV9WuT3h1uyizwTojRaF1KgMyy8aQDlu4BkrbTzlzsOCS7+ISMeCCA3
 IDrkcy8ZB9inEiQrGpMhojA9WS7WT5GKbST0GfPv88SyI0qDJT+4BmPFnfiIItRWQ2ZG
 4AlWL6AenzQbLwfkHycztYSHzTwhIOboDok+lNnsex4LWBj1rTz9+4WhDxDnVTTDvW/N
 5LUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=OKVKXOR2yDe4PSNmkLviySLUjONHB730brtHu6bKMuU=;
 b=pzSA8Dfyn4tL4511D9UMzfOBwCshbdGI7/7F5I2OPjcFXKedD00S8dAnOAv2/KSN0w
 BKvqXLaisCFyYWS4Fvr+q2W3T7oZosFiz4XPMhnZsVQeJYZ5r1FFGZlKOt6j7PxEgD0r
 TOUvhPOtCjpd91aDkjDAzrC1LBdmeq8cpTEwzSxdVbrXLOQ6wQ5fjyU1LXkzepnC4NcK
 J5i8qHaZ4xRpIwYxvdFIe5Nqye2cCD91IBwJfYhwrvI0AGGgj2ncchCObLw4xE9bPV6/
 uezuKPB8Y95b/0ieX1y+cFTx8ZroBZhBBGl/VHYw3ZWFtFXt91ohn2sdflOB7HHKizKT
 r7Dw==
X-Gm-Message-State: APjAAAXfegyj7Vat54Wjz/o7mPrCrQTo1v90yeedb5NpCSVCSFD9ACJi
 OrqOTkAsDNkGrdm9aXKcPtSpAPlv
X-Google-Smtp-Source: APXvYqwYWAsr3tcRPKkMknmddFHpnj5cgX01RmhRsRNCmoOWg0NYdIc7Ibgr8FwTJTz39wHHtqWrbQ==
X-Received: by 2002:a63:1e04:: with SMTP id e4mr4448468pge.4.1570927692866;
 Sat, 12 Oct 2019 17:48:12 -0700 (PDT)
Received: from DESKTOP-VIRSTQA.lan ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id i190sm15543556pgc.93.2019.10.12.17.48.11
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 17:48:11 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 12 Oct 2019 17:48:10 -0700
Message-Id: <20191013004810.667-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_174816_385679_13A362FE 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH-19.07] uClibc++: Fix three bugs
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

The first allows usage of several functions in the std namespace, which
broke compilation of gddrescue specifically with uClibc-ng and uClibc++.

The second allows usage of long long with normal C++11, which is part of
the standard. Before, std=gnu++11 needed to be passsed to work around it.

As a result of the second patch, the pedantic patch can safely be removed.

Both patches are upstream backports.

Added -std=c++11 to CFLAGS to guarentee proper inclusion of long long.

Added another patch that fixes a typo with the long long support. Sent to
upstream.

Fixed up license information according to SPDX.

Small cleanups for consistency.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 This is a backport of 6ab386c9bc23420816fbcefc84b62cf5438b2c66
 designed for 19.07. Saves ~200 bytes.
 package/libs/uclibc++/Makefile                |  11 +-
 .../patches/002-undef-functions.patch         |  35 +++++
 .../libs/uclibc++/patches/003-no-fPIC.patch   |   2 +-
 .../uclibc++/patches/004-no-pedantic.patch    |  13 --
 ...ibc-Make-long-long-available-to-C-11.patch | 143 ++++++++++++++++++
 .../005-istream_helpers-Fix-sscanf-typo.patch |  37 +++++
 6 files changed, 221 insertions(+), 20 deletions(-)
 create mode 100644 package/libs/uclibc++/patches/002-undef-functions.patch
 delete mode 100644 package/libs/uclibc++/patches/004-no-pedantic.patch
 create mode 100644 package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch
 create mode 100644 package/libs/uclibc++/patches/005-istream_helpers-Fix-sscanf-typo.patch

diff --git a/package/libs/uclibc++/Makefile b/package/libs/uclibc++/Makefile
index 3adf70b360..7a0d9094ff 100644
--- a/package/libs/uclibc++/Makefile
+++ b/package/libs/uclibc++/Makefile
@@ -10,18 +10,17 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=uclibc++
 PKG_VERSION:=0.2.5
-PKG_RELEASE:=2
+PKG_RELEASE:=3
 
 PKG_SOURCE:=uClibc++-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://cxx.uclibc.org/src/
 PKG_HASH:=596fb9ed7295564ce4c70ae6076a18f92e72f70310d70c98520bbca85c77895a
-
 PKG_BUILD_DIR:=$(BUILD_DIR)/uClibc++-$(PKG_VERSION)
-PKG_BUILD_PARALLEL:=1
-PKG_USE_MIPS16:=0
-PKG_LICENSE:=LGPL-2.1+
 
+PKG_LICENSE:=LGPL-2.1-or-later
 PKG_INSTALL:=1
+PKG_BUILD_PARALLEL:=1
+PKG_USE_MIPS16:=0
 
 include $(INCLUDE_DIR)/package.mk
 
@@ -45,7 +44,7 @@ UCLIBC_TARGET_ARCH:=$(shell echo $(ARCH) | sed -e s'/-.*//' \
 	-e 's/mipsel.*/mips/' \
 )
 
-TARGET_CFLAGS += $(FPIC) -nostdinc++
+TARGET_CFLAGS += $(FPIC) -nostdinc++ -std=c++11
 TARGET_LDFLAGS += -Wl,--gc-sections
 
 ifneq ($(CONFIG_CCACHE),)
diff --git a/package/libs/uclibc++/patches/002-undef-functions.patch b/package/libs/uclibc++/patches/002-undef-functions.patch
new file mode 100644
index 0000000000..47fa1580f2
--- /dev/null
+++ b/package/libs/uclibc++/patches/002-undef-functions.patch
@@ -0,0 +1,35 @@
+From 8245f62c1e7aba150f666b3c3a1dda646dee6d4b Mon Sep 17 00:00:00 2001
+From: Rosen Penev <rosenp@gmail.com>
+Date: Fri, 27 Sep 2019 13:12:44 -0700
+Subject: [PATCH] cstdio: Add undef for four functions
+
+When compiling with uClibc-ng, these functions get defined as macros and
+become unavailable for std.
+
+Fixes programs that use the std versions of these functions.
+
+This matches libstdcpp behavior.
+
+Signed-off-by: Rosen Penev <rosenp@gmail.com>
+---
+ include/cstdio | 9 +++++++++
+ 1 file changed, 9 insertions(+)
+
+--- a/include/cstdio
++++ b/include/cstdio
+@@ -21,6 +21,15 @@
+ #ifndef __HEADER_CSTDIO
+ #define __HEADER_CSTDIO 1
+ 
++#undef clearerr
++#undef feof
++#undef ferror
++#undef fgetc
++#undef fputc
++#undef getc
++#undef getchar
++#undef putc
++#undef putchar
+ 
+ namespace std{
+ 	using ::FILE;
diff --git a/package/libs/uclibc++/patches/003-no-fPIC.patch b/package/libs/uclibc++/patches/003-no-fPIC.patch
index 206a00de32..dfd8833ae4 100644
--- a/package/libs/uclibc++/patches/003-no-fPIC.patch
+++ b/package/libs/uclibc++/patches/003-no-fPIC.patch
@@ -1,6 +1,6 @@
 --- a/Rules.mak
 +++ b/Rules.mak
-@@ -185,7 +185,6 @@ export UCLIBCXX_RUNTIME_PREFIX UCLIBCXX_RUNTIME_LIBDIR UCLIBCXX_RUNTIME_BINDIR U
+@@ -185,7 +185,6 @@ export UCLIBCXX_RUNTIME_PREFIX UCLIBCXX_
  
  WRAPPER = $(top_builddir)bin/g++-uc
  OPTIMIZATION:=
diff --git a/package/libs/uclibc++/patches/004-no-pedantic.patch b/package/libs/uclibc++/patches/004-no-pedantic.patch
deleted file mode 100644
index 5128ca3f83..0000000000
--- a/package/libs/uclibc++/patches/004-no-pedantic.patch
+++ /dev/null
@@ -1,13 +0,0 @@
---- a/Rules.mak
-+++ b/Rules.mak
-@@ -200,10 +200,6 @@ $(eval $(call check-gxx-var,-std=gnu++14))
- $(eval $(call check-gxx-var,-Wno-sized-deallocation))
- $(eval $(call check-gxx-var,-Wno-tautological-compare))
- 
--# Add a bunch of extra pedantic annoyingly strict checks
--XWARNINGS=$(call qstrip,$(UCLIBCXX_WARNINGS)) -Wno-trigraphs -pedantic
--CPU_CFLAGS=$(call qstrip,$(CPU_CFLAGS-y))
--
- # Some nice CFLAGS to work with
- GEN_CFLAGS:=-fno-builtin
- CFLAGS:=$(XWARNINGS) $(CPU_CFLAGS)
diff --git a/package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch b/package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch
new file mode 100644
index 0000000000..6e13f22c8a
--- /dev/null
+++ b/package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch
@@ -0,0 +1,143 @@
+From 8151579eb36d9366632242415ff3f5177fa5e1e2 Mon Sep 17 00:00:00 2001
+From: Rosen Penev <rosenp@gmail.com>
+Date: Thu, 3 Oct 2019 18:58:43 -0700
+Subject: [PATCH] uClibc++: Make long long available to C++11
+
+C++11 makes long long available. It is no longer a GNU extension.
+
+Signed-off-by: Rosen Penev <rosenp@gmail.com>
+---
+ include/istream         | 4 ++--
+ include/istream_helpers | 2 +-
+ include/ostream         | 8 ++++----
+ include/ostream_helpers | 8 ++++----
+ tests/sstreamtest.cpp   | 4 ++--
+ 5 files changed, 13 insertions(+), 13 deletions(-)
+
+--- a/include/istream
++++ b/include/istream
+@@ -72,7 +72,7 @@ namespace std{
+ 		basic_istream<charT,traits>& operator>>(void*& p);
+ 		basic_istream<charT,traits>& operator>>(basic_streambuf<char_type,traits>* sb);
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 		basic_istream<charT,traits>& operator>>(long long& n);
+ 		basic_istream<charT,traits>& operator>>(unsigned long long& n);
+ #endif
+@@ -455,7 +455,7 @@ namespace std{
+ 		return *this;
+ 	}
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 	template <class charT, class traits> _UCXXEXPORT basic_istream<charT,traits>&
+ 		basic_istream<charT,traits>::operator>>(long long& n)
+ 	{
+--- a/include/istream_helpers
++++ b/include/istream_helpers
+@@ -301,7 +301,7 @@ namespace std{
+ 	};
+ 
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 	template <class traits> class _UCXXEXPORT __istream_readin<traits, char, long long>{
+ 	public:
+ 		inline static void readin(basic_istream<char, traits >& stream, long long & var)
+--- a/include/ostream
++++ b/include/ostream
+@@ -85,7 +85,7 @@ namespace std {
+ 		basic_ostream<charT,traits>& operator<<(long double f);
+ 		basic_ostream<charT,traits>& operator<<(void* p);
+ 		basic_ostream<charT,traits>& operator<<(basic_streambuf<char_type,traits>* sb);
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 		basic_ostream<charT,traits>& operator<<(long long n);
+ 		basic_ostream<charT,traits>& operator<<(unsigned long long n);
+ #endif
+@@ -221,7 +221,7 @@ namespace std {
+ 		return *this;
+ 	}
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 	template <class charT, class traits> _UCXXEXPORT basic_ostream<charT,traits>& basic_ostream<charT, traits>::operator<<(long long n)
+ 	{
+ 		sentry s(*this);
+@@ -487,7 +487,7 @@ namespace std {
+ #endif
+ 
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 
+ //Support for output of long long data types
+ 
+@@ -509,7 +509,7 @@ template<class Ch, class Tr> _UCXXEXPORT
+ }
+ 
+ 
+-#endif	//__STRICT_ANSI__
++#endif // !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 
+ 
+ 
+--- a/include/ostream_helpers
++++ b/include/ostream_helpers
+@@ -142,7 +142,7 @@ namespace std{
+ 		}
+ 	};
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 
+ 	template <class traits> class _UCXXEXPORT __ostream_printout<traits, char, signed long long int>{
+ 	public:
+@@ -237,7 +237,7 @@ namespace std{
+ 	};
+ 
+ 
+-#endif	//__STRICT_ANSI__
++#endif // !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 
+ 	template <class traits> class _UCXXEXPORT __ostream_printout<traits, char, double>{
+ 	public:
+@@ -357,7 +357,7 @@ namespace std{
+ 		}
+ 	};
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 
+ 	template <class traits> class _UCXXEXPORT __ostream_printout<traits, wchar_t, signed long long int>{
+ 	public:
+@@ -428,7 +428,7 @@ namespace std{
+ 	};
+ 
+ 
+-#endif	//__STRICT_ANSI__
++#endif // !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 
+ 	template <class traits> class _UCXXEXPORT __ostream_printout<traits, wchar_t, double>{
+ 	public:
+--- a/tests/sstreamtest.cpp
++++ b/tests/sstreamtest.cpp
+@@ -9,7 +9,7 @@ int main(){
+ 	int i;
+ 	std::string s;
+ 	char c;
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 	long long ll;
+ 	unsigned long long ull;
+ #endif
+@@ -32,7 +32,7 @@ int main(){
+ 
+ 
+ 
+-#ifndef __STRICT_ANSI__
++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 	a.str("678 76 54");
+ 	a >> ll >> ull >> s;
+ 	std::cout << "ll (should be 678): " << ll << std::endl;
diff --git a/package/libs/uclibc++/patches/005-istream_helpers-Fix-sscanf-typo.patch b/package/libs/uclibc++/patches/005-istream_helpers-Fix-sscanf-typo.patch
new file mode 100644
index 0000000000..66b62c197c
--- /dev/null
+++ b/package/libs/uclibc++/patches/005-istream_helpers-Fix-sscanf-typo.patch
@@ -0,0 +1,37 @@
+From 7f6dd860818512c0eb313320308b22ba7e2c7205 Mon Sep 17 00:00:00 2001
+From: Rosen Penev <rosenp@gmail.com>
+Date: Fri, 4 Oct 2019 20:06:53 -0700
+Subject: [PATCH] istream_helpers: Fix sscanf typo
+
+This caused readin not to work properly with long long types.
+
+Found accidentally through a glibc warning
+(declared with warn_unused_result).
+
+Tested with gptfdisk on OpenWrt.
+
+Signed-off-by: Rosen Penev <rosenp@gmail.com>
+---
+ include/istream_helpers | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+--- a/include/istream_helpers
++++ b/include/istream_helpers
+@@ -317,7 +317,7 @@ namespace std{
+ 					sscanf(temp.c_str(), "%llo", (unsigned long long *)&var );
+ 				}else if(stream.flags() & ios_base::hex){
+ 					if(stream.flags() & ios_base::uppercase){
+-						scanf(temp.c_str(), "%llX", (unsigned long long *)&var );
++						sscanf(temp.c_str(), "%llX", (unsigned long long *)&var );
+ 					}else{
+ 						sscanf(temp.c_str(), "%llx", (unsigned long long *)&var);
+ 					}
+@@ -344,7 +344,7 @@ namespace std{
+ 					sscanf(temp.c_str(), "%llo", &var );
+ 				}else if(stream.flags() & ios_base::hex){
+ 					if(stream.flags() & ios_base::uppercase){
+-						scanf(temp.c_str(), "%llX", &var );
++						sscanf(temp.c_str(), "%llX", &var );
+ 					}else{
+ 						sscanf(temp.c_str(), "%llx", &var);
+ 					}
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
