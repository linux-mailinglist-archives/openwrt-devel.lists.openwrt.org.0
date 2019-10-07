Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3687CCEF52
	for <lists+openwrt-devel@lfdr.de>; Tue,  8 Oct 2019 01:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CZAf6vQmEvdDhdinK0S40BGF8uHck9AfrDSx8EqxQe0=; b=kzlnpXFFec63Y2
	ewnZYzX9iIeDWYStaLOTbaPkiAqn6P/SE0z66LMMGxb8EmgAbhNXvM8pnep22ZP4gfvBy4IZTcuiS
	VbZaJGeRlvLSC4dpEPo4g6YHwzbiZujfIwwM2UErfjunzBWymD/B/ZmQ/aWzU6kTmgBjw7Z8YHqjj
	c0dTARaSBfQPzqFpGu/0CVFDl+VDg9EHrZpqVa+WfRV/wwpqTr0fkQtp2wgwYfV2UOI688INC/qiK
	C1cLQJt2RyqyQ+5BRscrBN9+4/DQBn8+K76ljlI0VmIp6zXYDFzxrxvZAodDHfSGsvKDpPDOEjm0G
	RjuqkH5qJwC0k3pdchEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHbz7-0006ne-VE; Mon, 07 Oct 2019 23:00:10 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHbyt-0006nJ-ES
 for openwrt-devel@lists.openwrt.org; Mon, 07 Oct 2019 22:59:57 +0000
Received: by mail-pg1-x52b.google.com with SMTP id x10so9112823pgi.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 07 Oct 2019 15:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=cXxEOZnmc5WSrGnq1XFDW3i4jz75iZLlpPtFbEwa1OI=;
 b=XwFxyML7VOf/+Y9Q63729iLEHoYkYjkw7u0hqev90yQ7R5sz/gmo94dpXXEO7aMBgH
 0JT16krqXdP3a2wRf6VoAvZuFqHMeH742vaJ0szLk9xFdcqDqknirkrTlLCDBJWYCV5R
 RjtLaCvIZKw2Y3ItsOwK7UsG1dEPnY2+STsF5egFK3Hyzyb3bGPaTgRu/Et23ZnjlnTA
 snGNklENQnbUuJ00bWw9tx25q2tS7cFFM+f1YyTyU8whOCWBwa+JXigPCPGxGILu/JZv
 pX3ntJlJ7zAqOZCBW1eBAsmdY1NqodfNhyZ9yZ69MVbvtUqlgTZBfnOhdW+EKcNFOMCx
 s+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=cXxEOZnmc5WSrGnq1XFDW3i4jz75iZLlpPtFbEwa1OI=;
 b=t1i/PZfFImK+t4rDSOH7QvTUmGcOB3b8nLyRGlWosrIUUvPwcECdZgjH50IAGTCzYP
 7iTNTADr3y0QTsOa05lSGIFhoL0N8zFP8g1IYJoxA2epsQ9ylMUqVVThfhsLyKRdMBGd
 ZN6YohWnX/4VUrBbA437vWQCQqfqFlV6NAedmy+XWwabG48fXwHUWUG2KOFHFsnAM3QD
 D9TaZnEVUf65c9oPmfiQ6XaW9FIBjXG38u9KPhu6Qnh5Launbk6W1zN19YOO97yZvHDR
 9aHtF0jJmmFEODU4wLeKYtBykHB07/NfWKAI8JeobOtfa9gMGzwxiUlPU+lh5elBKcDI
 4Zhw==
X-Gm-Message-State: APjAAAXfWNsZ4dW8FiF32acWotrbQVfKapvzEfjZchAXrRuSXaxonYzj
 S4ajrWSvjNj4F/4eyioXjszMflBp
X-Google-Smtp-Source: APXvYqwR/wAHzNUPeO5s/mwj6uERGdwEUkNRhs7iW0cHtFXUR5YlW4GesUZ4TlvO0j0qKLixI4riCQ==
X-Received: by 2002:a62:754a:: with SMTP id q71mr35438127pfc.70.1570489193839; 
 Mon, 07 Oct 2019 15:59:53 -0700 (PDT)
Received: from localhost.localdomain ([69.42.0.147])
 by smtp.gmail.com with ESMTPSA id v19sm17273097pff.46.2019.10.07.15.59.53
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 15:59:53 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  7 Oct 2019 15:59:52 -0700
Message-Id: <20191007225952.12818-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_155955_515366_5943D376 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCHv2] uClibc++: Fix three bugs
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
 v2: Added an extra patch that fixes two minor bugs.
 Updated commit message as the first two patches were upstreamed.
 package/libs/uclibc++/Makefile                |  11 +-
 .../patches/002-undef-functions.patch         |  40 +++++
 .../uclibc++/patches/004-no-pedantic.patch    |  13 --
 ...ibc-Make-long-long-available-to-C-11.patch | 156 ++++++++++++++++++
 .../005-istream_helpers-Fix-sscanf-typo.patch |  42 +++++
 5 files changed, 243 insertions(+), 19 deletions(-)
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
index 0000000000..008a8232db
--- /dev/null
+++ b/package/libs/uclibc++/patches/002-undef-functions.patch
@@ -0,0 +1,40 @@
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
+diff --git a/include/cstdio b/include/cstdio
+index f959ff5..0a42458 100644
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
+-- 
+2.17.1
+
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
index 0000000000..ba99689e40
--- /dev/null
+++ b/package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch
@@ -0,0 +1,156 @@
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
+diff --git a/include/istream b/include/istream
+index 72a8834..2d58abd 100644
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
+diff --git a/include/istream_helpers b/include/istream_helpers
+index d87e0c7..f2c793f 100644
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
+diff --git a/include/ostream b/include/ostream
+index 289514c..3072589 100644
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
+@@ -509,7 +509,7 @@ template<class Ch, class Tr> _UCXXEXPORT basic_ostream<Ch, Tr>&
+ }
+ 
+ 
+-#endif	//__STRICT_ANSI__
++#endif // !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
+ 
+ 
+ 
+diff --git a/include/ostream_helpers b/include/ostream_helpers
+index fa50407..f4d33f9 100644
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
+diff --git a/tests/sstreamtest.cpp b/tests/sstreamtest.cpp
+index 36b3470..ea946a9 100644
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
+-- 
+2.17.1
+
diff --git a/package/libs/uclibc++/patches/005-istream_helpers-Fix-sscanf-typo.patch b/package/libs/uclibc++/patches/005-istream_helpers-Fix-sscanf-typo.patch
new file mode 100644
index 0000000000..1de8711b7e
--- /dev/null
+++ b/package/libs/uclibc++/patches/005-istream_helpers-Fix-sscanf-typo.patch
@@ -0,0 +1,42 @@
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
+diff --git a/include/istream_helpers b/include/istream_helpers
+index f2c793f..f8db903 100644
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
+-- 
+2.17.1
+
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
