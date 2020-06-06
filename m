Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F8E1F08E3
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 23:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+imlpmCZutDEKH/8dYPnbmalu4EEHkSaNin9IGPbGG4=; b=XQM2KYj3Pt465FCMIqJ9EFjHQl
	wHI5EPLQ46PWzQFgdntU9lJxvBkz6FMQxH1p5lpKO6ECS2XhpN1TZpcqt7EC72JHmahXDcnjClf7s
	IvKSgLhUfsIwFTN6XwO04yBfg6yuqgvzsKpkAaWsSnkW6i/UF1TLcNK2xSZW8KsNmUqiwivHqKK1M
	XIpD+LFG/xvAXgy/IqCslZgUjHKBkPNpJMXGtTcz9t3hiujpvwaeQlOMZlfoigqGhHinkvBmNEp2x
	QkAvHTEqHS4G0AxDc9HgQ1x+GCaAYiDLuHA+cESjLE5DfrSxIHym/IEujwwPSZPZYpvv6dvgK9iKm
	HeEkxgFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhgdq-0004hW-Sj; Sat, 06 Jun 2020 21:46:14 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhgdj-0004h2-Ck
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 21:46:09 +0000
Received: by mail-ot1-x341.google.com with SMTP id e5so10565842ote.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 14:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=gmtHDuMLqPbTwO6njipgJwzl4l1+Wz7O2tp2b5FP+qo=;
 b=ZvQC8+iGJkz3nIPH/kN1jlcTvJNc6jj0qPLVzu6Kt+/+COeRIJ05N7Y4ACuN7Rfpvo
 4b+414SRg1AAmgIC8vu8qWJEH5MUM7wPBLy1OtUaHrLARMNCT6QZMoFrz12Vk/F4fiqS
 yjBZi7KHk6p+ZUeDeWIqZV0+6M6kyYiPCkYZBnNg67HfEqwmXqLzH+/tAEHlR0rCYK9i
 W9xHJM9FRP9k88llDrTcnRkzbG1aTlPOX8GIFX9Dk+AaKwjTQXjSk45rVgJ+JtSyDSlJ
 VaX08B1pUMjjW5XuJI9dziNfSC6tw6dKQIoUvZkLxnL6fpSwO7fJ0mwkptwXmbkHtDn+
 qerw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=gmtHDuMLqPbTwO6njipgJwzl4l1+Wz7O2tp2b5FP+qo=;
 b=ozsGRXOhAIOJGdsJkAi4W/1Z4R5n4YtJoeXzlC+5IdTuyGbFTGO+FenLswIetqoJjL
 zHWs2RyFeAtSCEcNCKD6NYkuXn/Dtqj2i/Q/LCWInHZ/60CuDtT6Fint/32pp8quJESk
 yBfNn58hcWq+yNdlOA1UttB2EPWKU7l2z4LoiS90rOP2H+ZQGsNd6iSGOgwJb6mhWHME
 k+ShWjkPiT4rcz+TPSF8jitmfhKny0pnkBHM2CRvWmT8PmdGptZ7wtB/3ZwVeQzPb3eB
 onpr9LfzD9xJchcTYK3EyxpUu8Gr/BBkzRzVN0kA9mNs1IqlqPD2tptGUC7FHLOs8aSB
 M8ew==
X-Gm-Message-State: AOAM530o6vPN0uAZvg4d1uM5WPEqJfr2qiED+OgFGX5pXeEw4NBTys5Q
 9nPNFkqizU/NephpSmbM9ndiW8WJw1WNEoZhPuw=
X-Google-Smtp-Source: ABdhPJzBKhBSuwwo7tffPtSGCZclmpevIti6+d9+yCiKS7GptDnOnw4WyZPHnAisn5oEW+e8OhWzBcrc3Fgc5QM526Y=
X-Received: by 2002:a9d:2d87:: with SMTP id g7mr12703472otb.186.1591479964504; 
 Sat, 06 Jun 2020 14:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200606185223.9749-1-rosenp@gmail.com>
 <20200606185223.9749-2-rosenp@gmail.com>
 <KU1PR01MB202230971B2AD52145CD7CD7AD870@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <KU1PR01MB202230971B2AD52145CD7CD7AD870@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 6 Jun 2020 14:45:53 -0700
Message-ID: <CAKxU2N_djWh3baPDAwuTDBavg+VMtBimKRoC4Of2ULretr7wyg@mail.gmail.com>
To: Ian Cooper <iancooper@hotmail.com>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_144607_451607_C84F12A5 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] libcxx: update to 10.0.0
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

On Sat, Jun 6, 2020 at 12:14 PM Ian Cooper <iancooper@hotmail.com> wrote:
>
> Since I gave this patch more than just a casual glance and tested it on multiple build configurations, it might make sense that I indicate so. What's more appropriate in this case? A "Tested-by" or a "Reviewed-by"?
The latter.
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Rosen Penev
> > Sent: 06 June 2020 19:52
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCH 2/2] libcxx: update to 10.0.0
> >
> > Switched to upstream tarballs.
> >
> > Switched to libcxxabi as using libsupc++ is quite wonky.
> >
> > Fixed description.
> >
> > Removed patches. The fixes are cosmetic.
> >
> > Added ssp patch. This one is needed for i386 and powerpc under musl.
> >
> > Compile tested every C++ package in the tree with the exception of
> > several boost packages. There's something broken with boost.
> >
> > Ran tested with gerbera.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  package/libs/libcxx/Makefile                | 18 +++++------
> >  package/libs/libcxx/files/g++-libcxx        |  2 +-
> >  package/libs/libcxx/patches/010-cxx17.patch | 14 ---------
> >  package/libs/libcxx/patches/010-ssp.patch   | 13 ++++++++
> >  package/libs/libcxx/patches/020-fixes.patch | 35 ---------------------
> >  5 files changed, 23 insertions(+), 59 deletions(-)
> >  delete mode 100644 package/libs/libcxx/patches/010-cxx17.patch
> >  create mode 100644 package/libs/libcxx/patches/010-ssp.patch
> >  delete mode 100644 package/libs/libcxx/patches/020-fixes.patch
> >
> > diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
> > index 8343cbb427..3809bea651 100644
> > --- a/package/libs/libcxx/Makefile
> > +++ b/package/libs/libcxx/Makefile
> > @@ -7,19 +7,20 @@
> >  include $(TOPDIR)/rules.mk
> >
> >  PKG_NAME:=libcxx
> > -PKG_VERSION:=9.0.1
> > -PKG_RELEASE:=4
> > +PKG_VERSION:=10.0.0
> > +PKG_RELEASE:=1
> >
> > -PKG_SOURCE_PROTO:=git
> > -PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
> > -PKG_SOURCE_VERSION:=2076f539f410805ef88692b9c0ce0a0b882a7680
> > -
> > PKG_MIRROR_HASH:=d527880a18dec9109575c76717cf5288fb91c11381b9d26
> > 1cae2e5bebcbdab2e
> > +PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).src.tar.xz
> > +PKG_SOURCE_URL:=https://github.com/llvm/llvm-
> > project/releases/download/llvmorg-$(PKG_VERSION)
> > +PKG_HASH:=270f8a3f176f1981b0f6ab8aa556720988872ec2b48ed3b605d0ce
> > d8d09156c7
> > +PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).src
> >
> >  PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
> >  PKG_LICENSE:=MIT
> >  PKG_LICENSE_FILES:=LICENSE.txt
> >
> >  PKG_BUILD_PARALLEL:=1
> > +PKG_BUILD_DEPENDS:=libcxxabi
> >  CMAKE_BINARY_SUBDIR:=build
> >
> >  include $(INCLUDE_DIR)/package.mk
> > @@ -34,12 +35,11 @@ define Package/libcxx
> >  endef
> >
> >  define Package/libcxx/description
> > -  LLVM C++ library targeting C++11 and above
> > +  libc++ is an implementation of the C++ standard library, targeting C++11,
> > C++14 and above.
> >  endef
> >
> >  CMAKE_OPTIONS += \
> > -     -DLIBCXX_CXX_ABI="libsupc++" \
> > -     -
> > DLIBCXX_CXX_ABI_INCLUDE_PATHS="$(TOOLCHAIN_DIR)/$(REAL_GNU_TA
> > RGET_NAME)/include/c++/$(CONFIG_GCC_VERSION);$(TOOLCHAIN_DIR)/$
> > (REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION)/$(REA
> > L_GNU_TARGET_NAME)" \
> > +     -DLIBCXX_CXX_ABI="libcxxabi" \
> >       -DLIBCXX_ENABLE_ASSERTIONS=OFF \
> >       -DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
> >       -DLIBCXX_INCLUDE_BENCHMARKS=OFF \
> > diff --git a/package/libs/libcxx/files/g++-libcxx
> > b/package/libs/libcxx/files/g++-libcxx
> > index 81ca46eb0e..f37afb2fd5 100755
> > --- a/package/libs/libcxx/files/g++-libcxx
> > +++ b/package/libs/libcxx/files/g++-libcxx
> > @@ -13,7 +13,7 @@ do
> >       -static) [ "$WRAPPER_LIBS" != "-lc -lgcc_s -lssp_nonshared -lgcc_eh" ]
> > && WRAPPER_LIBS="-lc -lgcc_s -lssp_nonshared -lgcc_eh" ;;
> >       esac
> >  done
> > -[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs
> > $WRAPPER_LIBDIR -lc++ -lsupc++ $WRAPPER_LIBS"
> > +[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs
> > $WRAPPER_LIBDIR -lc++ -lc++abi $WRAPPER_LIBS"
> >
> >  exec CXX -fno-builtin -nostdinc++ -DGCC_HASCLASSVISIBILITY
> > "$WRAPPER_INCLUDEDIR" "$@" $WRAPPER_OPTIONS
> >
> > diff --git a/package/libs/libcxx/patches/010-cxx17.patch
> > b/package/libs/libcxx/patches/010-cxx17.patch
> > deleted file mode 100644
> > index dceec9d4f3..0000000000
> > --- a/package/libs/libcxx/patches/010-cxx17.patch
> > +++ /dev/null
> > @@ -1,14 +0,0 @@
> > ---- a/CMakeLists.txt
> > -+++ b/CMakeLists.txt
> > -@@ -524,9 +524,9 @@ remove_flags(-Wno-pedantic -pedantic-err
> > - if (LIBCXX_HAS_MUSL_LIBC OR LIBCXX_TARGETING_CLANG_CL)
> > -   # musl's pthread implementations uses volatile types in their structs which
> > is
> > -   # not a constexpr in C++11 but is in C++14, so we use C++14 with musl.
> > --  set(LIBCXX_STANDARD_VER c++14 CACHE STRING "internal option to
> > change build dialect")
> > -+  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to
> > change build dialect")
> > - else()
> > --  set(LIBCXX_STANDARD_VER c++11 CACHE STRING "internal option to
> > change build dialect")
> > -+  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to
> > change build dialect")
> > - endif()
> > - add_compile_flags_if_supported(-std=${LIBCXX_STANDARD_VER})
> > - add_compile_flags_if_supported("/std:${LIBCXX_STANDARD_VER}")
> > diff --git a/package/libs/libcxx/patches/010-ssp.patch
> > b/package/libs/libcxx/patches/010-ssp.patch
> > new file mode 100644
> > index 0000000000..c9dc90c7f2
> > --- /dev/null
> > +++ b/package/libs/libcxx/patches/010-ssp.patch
> > @@ -0,0 +1,13 @@
> > +--- a/CMakeLists.txt
> > ++++ b/CMakeLists.txt
> > +@@ -760,6 +760,10 @@ function(cxx_link_system_libraries target)
> > +     target_link_libraries(${target} PRIVATE atomic)
> > +   endif()
> > +
> > ++  if (LIBCXX_HAS_MUSL_LIBC)
> > ++    target_link_libraries(${target} PRIVATE ssp_nonshared)
> > ++  endif()
> > ++
> > +   if (MINGW)
> > +     target_link_libraries(${target} PRIVATE "${MINGW_LIBRARIES}")
> > +   endif()
> > diff --git a/package/libs/libcxx/patches/020-fixes.patch
> > b/package/libs/libcxx/patches/020-fixes.patch
> > deleted file mode 100644
> > index 22ac494c04..0000000000
> > --- a/package/libs/libcxx/patches/020-fixes.patch
> > +++ /dev/null
> > @@ -1,35 +0,0 @@
> > ---- a/include/cmath
> > -+++ b/include/cmath
> > -@@ -615,7 +615,7 @@ _Fp __lerp(_Fp __a, _Fp __b, _Fp __t) no
> > -
> > -     if (__t == 1) return __b;
> > -     const _Fp __x = __a + __t * (__b - __a);
> > --    if (__t > 1 == __b > __a)
> > -+    if ((__t > 1) == (__b > __a))
> > -             return __b < __x ? __x : __b;
> > -     else
> > -             return __x < __b ? __x : __b;
> > ---- a/include/memory
> > -+++ b/include/memory
> > -@@ -1696,7 +1696,7 @@ struct _LIBCPP_TEMPLATE_VIS allocator_tr
> > -             ptrdiff_t _Np = __end1 - __begin1;
> > -             __end2 -= _Np;
> > -             if (_Np > 0)
> > --                _VSTD::memcpy(__end2, __begin1, _Np * sizeof(_Tp));
> > -+                __end2 = __begin1;
> > -         }
> > -
> > - private:
> > ---- a/src/filesystem/filesystem_common.h
> > -+++ b/src/filesystem/filesystem_common.h
> > -@@ -197,8 +197,8 @@ private:
> > - using chrono::duration;
> > - using chrono::duration_cast;
> > -
> > --using TimeSpec = struct ::timespec;
> > --using StatT = struct ::stat;
> > -+using TimeSpec = struct timespec;
> > -+using StatT = struct stat;
> > -
> > - template <class FileTimeT, class TimeT,
> > -           bool IsFloat = is_floating_point<typename FileTimeT::rep>::value>
> > --
> > 2.26.2
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
