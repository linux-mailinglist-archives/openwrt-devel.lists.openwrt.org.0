Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B46E5CC770
	for <lists+openwrt-devel@lfdr.de>; Sat,  5 Oct 2019 04:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Zw8/n35KAWhJ7a6751JtSkl3Gn6/LUwfrSMstKIDG+0=; b=sEP8B93K0KLi+Np3WOCOBQP6zx
	IEfvNVKQLMcXPnv4Yg2uV6AiI7ErQBPd+Qh7n3bNLPMmA285DrEy1D21P4POXERnhNTx2kk+difFW
	4EEBUj4z9ed97EsWPGRxCnjE2w4DkQp2Ihtt3m3Ui5RiyFSUfA6RxA4j+jUVczQS6m78Uhef8GYYU
	g0epsw6vr1r4GBhGFT3/VwZvVE4V6WupwXUFpUEUasy8akyMzW/bnFWSCyk8933lQsM4PDQdY0/2Z
	n2l/RMsdipu2XQyN1VwVc0UzoLBg5JOC6yACqlwNqCiBxXq6ODWmQr/Z5OCrPCHsy0fdfQdwWMC6b
	sPCRdhxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGa6s-0003cm-7C; Sat, 05 Oct 2019 02:47:54 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGa6g-0003cP-M7
 for openwrt-devel@lists.openwrt.org; Sat, 05 Oct 2019 02:47:44 +0000
Received: by mail-ot1-x341.google.com with SMTP id 41so6858939oti.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 04 Oct 2019 19:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=8L4XSy1ywNIF+aU+WuBdSEb9hmziHLyiUKjVWB141rs=;
 b=FX3mmrmk582DKqv5O14mc8gMYKBDdsV9NerLHAyqTNfmI+KdY1t6HsxxTbkfvmzohY
 3Fy+9imX888Ps/FxyWvLGVUGqSN3oPmW6ENt+AGIOW9+wGerJr4le9Ru33XxCmG4yXDx
 M1ox8+m4EaVujoION82qM2AouG6nrtFdumpygSjSrLMNvculZZUxztAdRvmO/SvlfSDQ
 e3mIGDwkDrjrKqKBegZDF1yoUk4MnLtat6SEwTTbD1JIGMONI7yLqimFWzFYGfy2jhY3
 t2c0ECWV+mROMggbSnuQr8Rc9IuodeBCZcWR9pzZWvxPpw+/RIOTKWPjtV45+FAA2oPG
 WqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=8L4XSy1ywNIF+aU+WuBdSEb9hmziHLyiUKjVWB141rs=;
 b=G4i0iac4QkM76rao2xd9ddQwrocXkSnKYAjVungCeNiSNdfBREQbgeA95i7YvhblzY
 8kTr1cdRzDWSNW8W1KPzlY+ohF8027i2pNWVFXjMSMicgwrCFDOdh3wBxPTRypRTcSnW
 guaF3WUsgPluggxl5jXnA7EDEiy/8C23pOMrlWIPET/tt/+d0GJkBAyoAy/MBKHqcBqI
 /PtrLWr7leM4CNUqz3JZTT+Tt5snE1F0RETAqoVCnhF4DLwmFnKYbErRKKVSS04mf3hw
 Y2jA5gIL2qtDP41Th5LSENW9wCamOj2TuQ1bxNimvZdFp5/FGKCvq5YYOl7R+sYQPhBO
 E6Hg==
X-Gm-Message-State: APjAAAXkGgbEtFIM9tck6mt20oBcxanZ5MUo4Xux/7I+oxf3A5YvT/V6
 dMxPoNq4r7pwcyWcD9SY/dNMqNkyL5K7vDdsuzlQSQ==
X-Google-Smtp-Source: APXvYqyjDkY71/hlVpf5sTLF25z+LRq5uhMdTRV/cNmBR5fy8w4pS79aUhAfUzxxJiMp3rykQtTGR5Ioe7YGwTL9wUo=
X-Received: by 2002:a9d:614d:: with SMTP id c13mr13507025otk.281.1570243660909; 
 Fri, 04 Oct 2019 19:47:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191004034709.14177-1-rosenp@gmail.com>
In-Reply-To: <20191004034709.14177-1-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 4 Oct 2019 19:47:29 -0700
Message-ID: <CAKxU2N_D=DLr0Dg9G1Ee5fbhm9FSof3N0+nrN9j5yVE_fYxPwA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_194742_751145_6E179FB8 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] uClibc++: Fix two bugs
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

On Thu, Oct 3, 2019 at 8:47 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> The first allows usage of several functions in the std namespace, which
> broke compilation of gddrescue specifically with uClibc-ng and uClibc++.
>
> The second allows usage of long long with normal C++11, which is part of
> the standard. Before, std=gnu++11 needed to be passsed to work around it.
>
> As a result of the second patch, the pedantic patch can safely be removed.
>
> Both patches have been sent upstream.
I will note that both patches have been accepted upstream.

I will also note that I just discovered a totally boneheaded mistake I
made earlier when adding long long support. I will post a new version
with that patch included.
>
> Added -std=c++11 to CFLAGS to guarentee proper inclusion of long long.
>
> Fixed up license information according to SPDX.
>
> Small cleanups for consistency.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/libs/uclibc++/Makefile                |  11 +-
>  .../patches/002-undef-functions.patch         |  40 +++++
>  .../uclibc++/patches/004-no-pedantic.patch    |  13 --
>  ...ibc-Make-long-long-available-to-C-11.patch | 156 ++++++++++++++++++
>  4 files changed, 201 insertions(+), 19 deletions(-)
>  create mode 100644 package/libs/uclibc++/patches/002-undef-functions.patch
>  delete mode 100644 package/libs/uclibc++/patches/004-no-pedantic.patch
>  create mode 100644 package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch
>
> diff --git a/package/libs/uclibc++/Makefile b/package/libs/uclibc++/Makefile
> index 3adf70b360..7a0d9094ff 100644
> --- a/package/libs/uclibc++/Makefile
> +++ b/package/libs/uclibc++/Makefile
> @@ -10,18 +10,17 @@ include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=uclibc++
>  PKG_VERSION:=0.2.5
> -PKG_RELEASE:=2
> +PKG_RELEASE:=3
>
>  PKG_SOURCE:=uClibc++-$(PKG_VERSION).tar.xz
>  PKG_SOURCE_URL:=https://cxx.uclibc.org/src/
>  PKG_HASH:=596fb9ed7295564ce4c70ae6076a18f92e72f70310d70c98520bbca85c77895a
> -
>  PKG_BUILD_DIR:=$(BUILD_DIR)/uClibc++-$(PKG_VERSION)
> -PKG_BUILD_PARALLEL:=1
> -PKG_USE_MIPS16:=0
> -PKG_LICENSE:=LGPL-2.1+
>
> +PKG_LICENSE:=LGPL-2.1-or-later
>  PKG_INSTALL:=1
> +PKG_BUILD_PARALLEL:=1
> +PKG_USE_MIPS16:=0
>
>  include $(INCLUDE_DIR)/package.mk
>
> @@ -45,7 +44,7 @@ UCLIBC_TARGET_ARCH:=$(shell echo $(ARCH) | sed -e s'/-.*//' \
>         -e 's/mipsel.*/mips/' \
>  )
>
> -TARGET_CFLAGS += $(FPIC) -nostdinc++
> +TARGET_CFLAGS += $(FPIC) -nostdinc++ -std=c++11
>  TARGET_LDFLAGS += -Wl,--gc-sections
>
>  ifneq ($(CONFIG_CCACHE),)
> diff --git a/package/libs/uclibc++/patches/002-undef-functions.patch b/package/libs/uclibc++/patches/002-undef-functions.patch
> new file mode 100644
> index 0000000000..008a8232db
> --- /dev/null
> +++ b/package/libs/uclibc++/patches/002-undef-functions.patch
> @@ -0,0 +1,40 @@
> +From 8245f62c1e7aba150f666b3c3a1dda646dee6d4b Mon Sep 17 00:00:00 2001
> +From: Rosen Penev <rosenp@gmail.com>
> +Date: Fri, 27 Sep 2019 13:12:44 -0700
> +Subject: [PATCH] cstdio: Add undef for four functions
> +
> +When compiling with uClibc-ng, these functions get defined as macros and
> +become unavailable for std.
> +
> +Fixes programs that use the std versions of these functions.
> +
> +This matches libstdcpp behavior.
> +
> +Signed-off-by: Rosen Penev <rosenp@gmail.com>
> +---
> + include/cstdio | 9 +++++++++
> + 1 file changed, 9 insertions(+)
> +
> +diff --git a/include/cstdio b/include/cstdio
> +index f959ff5..0a42458 100644
> +--- a/include/cstdio
> ++++ b/include/cstdio
> +@@ -21,6 +21,15 @@
> + #ifndef __HEADER_CSTDIO
> + #define __HEADER_CSTDIO 1
> +
> ++#undef clearerr
> ++#undef feof
> ++#undef ferror
> ++#undef fgetc
> ++#undef fputc
> ++#undef getc
> ++#undef getchar
> ++#undef putc
> ++#undef putchar
> +
> + namespace std{
> +       using ::FILE;
> +--
> +2.17.1
> +
> diff --git a/package/libs/uclibc++/patches/004-no-pedantic.patch b/package/libs/uclibc++/patches/004-no-pedantic.patch
> deleted file mode 100644
> index 5128ca3f83..0000000000
> --- a/package/libs/uclibc++/patches/004-no-pedantic.patch
> +++ /dev/null
> @@ -1,13 +0,0 @@
> ---- a/Rules.mak
> -+++ b/Rules.mak
> -@@ -200,10 +200,6 @@ $(eval $(call check-gxx-var,-std=gnu++14))
> - $(eval $(call check-gxx-var,-Wno-sized-deallocation))
> - $(eval $(call check-gxx-var,-Wno-tautological-compare))
> -
> --# Add a bunch of extra pedantic annoyingly strict checks
> --XWARNINGS=$(call qstrip,$(UCLIBCXX_WARNINGS)) -Wno-trigraphs -pedantic
> --CPU_CFLAGS=$(call qstrip,$(CPU_CFLAGS-y))
> --
> - # Some nice CFLAGS to work with
> - GEN_CFLAGS:=-fno-builtin
> - CFLAGS:=$(XWARNINGS) $(CPU_CFLAGS)
> diff --git a/package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch b/package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch
> new file mode 100644
> index 0000000000..ba99689e40
> --- /dev/null
> +++ b/package/libs/uclibc++/patches/004-uClibc-Make-long-long-available-to-C-11.patch
> @@ -0,0 +1,156 @@
> +From 8151579eb36d9366632242415ff3f5177fa5e1e2 Mon Sep 17 00:00:00 2001
> +From: Rosen Penev <rosenp@gmail.com>
> +Date: Thu, 3 Oct 2019 18:58:43 -0700
> +Subject: [PATCH] uClibc++: Make long long available to C++11
> +
> +C++11 makes long long available. It is no longer a GNU extension.
> +
> +Signed-off-by: Rosen Penev <rosenp@gmail.com>
> +---
> + include/istream         | 4 ++--
> + include/istream_helpers | 2 +-
> + include/ostream         | 8 ++++----
> + include/ostream_helpers | 8 ++++----
> + tests/sstreamtest.cpp   | 4 ++--
> + 5 files changed, 13 insertions(+), 13 deletions(-)
> +
> +diff --git a/include/istream b/include/istream
> +index 72a8834..2d58abd 100644
> +--- a/include/istream
> ++++ b/include/istream
> +@@ -72,7 +72,7 @@ namespace std{
> +               basic_istream<charT,traits>& operator>>(void*& p);
> +               basic_istream<charT,traits>& operator>>(basic_streambuf<char_type,traits>* sb);
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +               basic_istream<charT,traits>& operator>>(long long& n);
> +               basic_istream<charT,traits>& operator>>(unsigned long long& n);
> + #endif
> +@@ -455,7 +455,7 @@ namespace std{
> +               return *this;
> +       }
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +       template <class charT, class traits> _UCXXEXPORT basic_istream<charT,traits>&
> +               basic_istream<charT,traits>::operator>>(long long& n)
> +       {
> +diff --git a/include/istream_helpers b/include/istream_helpers
> +index d87e0c7..f2c793f 100644
> +--- a/include/istream_helpers
> ++++ b/include/istream_helpers
> +@@ -301,7 +301,7 @@ namespace std{
> +       };
> +
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +       template <class traits> class _UCXXEXPORT __istream_readin<traits, char, long long>{
> +       public:
> +               inline static void readin(basic_istream<char, traits >& stream, long long & var)
> +diff --git a/include/ostream b/include/ostream
> +index 289514c..3072589 100644
> +--- a/include/ostream
> ++++ b/include/ostream
> +@@ -85,7 +85,7 @@ namespace std {
> +               basic_ostream<charT,traits>& operator<<(long double f);
> +               basic_ostream<charT,traits>& operator<<(void* p);
> +               basic_ostream<charT,traits>& operator<<(basic_streambuf<char_type,traits>* sb);
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +               basic_ostream<charT,traits>& operator<<(long long n);
> +               basic_ostream<charT,traits>& operator<<(unsigned long long n);
> + #endif
> +@@ -221,7 +221,7 @@ namespace std {
> +               return *this;
> +       }
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +       template <class charT, class traits> _UCXXEXPORT basic_ostream<charT,traits>& basic_ostream<charT, traits>::operator<<(long long n)
> +       {
> +               sentry s(*this);
> +@@ -487,7 +487,7 @@ namespace std {
> + #endif
> +
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +
> + //Support for output of long long data types
> +
> +@@ -509,7 +509,7 @@ template<class Ch, class Tr> _UCXXEXPORT basic_ostream<Ch, Tr>&
> + }
> +
> +
> +-#endif        //__STRICT_ANSI__
> ++#endif // !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +
> +
> +
> +diff --git a/include/ostream_helpers b/include/ostream_helpers
> +index fa50407..f4d33f9 100644
> +--- a/include/ostream_helpers
> ++++ b/include/ostream_helpers
> +@@ -142,7 +142,7 @@ namespace std{
> +               }
> +       };
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +
> +       template <class traits> class _UCXXEXPORT __ostream_printout<traits, char, signed long long int>{
> +       public:
> +@@ -237,7 +237,7 @@ namespace std{
> +       };
> +
> +
> +-#endif        //__STRICT_ANSI__
> ++#endif // !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +
> +       template <class traits> class _UCXXEXPORT __ostream_printout<traits, char, double>{
> +       public:
> +@@ -357,7 +357,7 @@ namespace std{
> +               }
> +       };
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +
> +       template <class traits> class _UCXXEXPORT __ostream_printout<traits, wchar_t, signed long long int>{
> +       public:
> +@@ -428,7 +428,7 @@ namespace std{
> +       };
> +
> +
> +-#endif        //__STRICT_ANSI__
> ++#endif // !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +
> +       template <class traits> class _UCXXEXPORT __ostream_printout<traits, wchar_t, double>{
> +       public:
> +diff --git a/tests/sstreamtest.cpp b/tests/sstreamtest.cpp
> +index 36b3470..ea946a9 100644
> +--- a/tests/sstreamtest.cpp
> ++++ b/tests/sstreamtest.cpp
> +@@ -9,7 +9,7 @@ int main(){
> +       int i;
> +       std::string s;
> +       char c;
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +       long long ll;
> +       unsigned long long ull;
> + #endif
> +@@ -32,7 +32,7 @@ int main(){
> +
> +
> +
> +-#ifndef __STRICT_ANSI__
> ++#if !defined(__STRICT_ANSI__) || (__cplusplus >= 201103L)
> +       a.str("678 76 54");
> +       a >> ll >> ull >> s;
> +       std::cout << "ll (should be 678): " << ll << std::endl;
> +--
> +2.17.1
> +
> --
> 2.17.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
