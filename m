Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0671F0C75
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jun 2020 17:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E0K1QRNNfIJ4CQRuFb5NddGBbFkEdp+SW31VuuX0J4I=; b=Agfor8dWY5lQdoVJoUQ1uh/Oov
	hPSpVx4C349DAp233bjGX9vY/B1Z9yn4S7PtvfDSNse1qyhE/9mNG+NVSaYF5Dt2EXVL5XLZyWJqc
	JePJUKERMx+txDikdsBxEmTUgVzr7iZR+ski4LlmpC8KP5otTP3rCjepbuSBDHstdncrEK86/G378
	Gkh4EJc1J5EiKlgdaxYxL3Ebui6zuJV2ubTvVU9ygNMB0z/oa+NR/9Qra4F6xQKuaQOI7p5rrXq6C
	Xu4s6oerJpABpqdWEM7IXsu7AZvUC02zu2nOYo+SEJ6bvSsGQTvelR3bnJDowAbxT4BKxukRNneiW
	otpBH2bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhxMS-0004pI-G8; Sun, 07 Jun 2020 15:37:24 +0000
Received: from mail-oln040092253019.outbound.protection.outlook.com
 ([40.92.253.19] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhxMJ-0004o3-GJ
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jun 2020 15:37:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JTk7g5Q49S1Q7bWSEZqDuSAEqGNgSh9zD8WIxo8IhqWMeAJCSEvU8JswX25Rbtwjf5EqQOHxdOqRhfQ2+wynGKuLgGtv/booND/PBJPerbFGGJnFmlor8UfgsT0OMUhBF34a90qWudmJ8Brl73ULAVjiW3ojpzoMYAmTyfuedxPZyLqvM37jNwHohvNgYlmDs61YDpcKX9z54XII50uSVFJNCQyNDTtNGj+z3E0FDtrOdhiJ2hGDwNePdaVZzpuF+NFxE62CVg16OxmFO+yWHeWV79MkHvmGcm5qMc2U9jwasKmybJ4Sp3AXPNzCxTJmLHVopc/I43McYduYC2/w0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aEXpBtJMI+o8tbzKFccE+YfIpO9G0II1dpk906KHfm4=;
 b=SqmraN42ZKBKOHjsMU5RwKVBCFBSy9cUPho1CXSG1UaCgK75P6O758zfVapm0fQvErJHr3EAl29nvXZi0OGYCOEPv8nSpxHUCtVz+wzds0wyIFHjx+SzMCK8VMKlt4Rh541v8mUZOu2c36//q+IaTyZP1h0K9hZEvDReM7ns9yCHw3s41GAOS0rzNXzz+m7G0y/RKUqFDWBTok02Xy4DFvDq48lBpmEskmZtnenM0pIcGlWCkZHu5kdLtekpzGmykzo8a2LL+wLY2bw/Zc5C4XQ2negaodDWrIRipNkJ771VtDc5lyuDDovkDsAYbHF0PBy0eNQBIEixwd60MW8maQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aEXpBtJMI+o8tbzKFccE+YfIpO9G0II1dpk906KHfm4=;
 b=GI6nXfRFrryCVhYwuxMjPEs5tF+yYsbUlzo0ovVGQhHKuFVPdPujSeUwH1pqhfvOzQZoICia6d35C7GMDewU9HVdAm7CW0PGZpvuKcYu5CtPWRpDPlqfPMipeTwHyvm0VNyrpK4bSzNgElSExAxyjZ3XarznRSwiuL75ickZ5Wad5GvX774qwRqUthZ6EJKW9NfcFhgWR6eYKcb3oaO8AWADrzpeap47bLDxrChewzlsdOt1NzoBr+mTzueggfqtz2W/VGPUK0s+S+vbEVWK7KI0v29idbHOXLg0AaZEkY8v6OHtxpCN1z12SCC//ZOkqjGWun1bVbAizYzjNwkkcQ==
Received: from SG2APC01FT047.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebd::47) by
 SG2APC01HT078.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebd::292)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Sun, 7 Jun
 2020 15:37:11 +0000
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2a01:111:e400:7ebd::43) by SG2APC01FT047.mail.protection.outlook.com
 (2a01:111:e400:7ebd::428) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Sun, 7 Jun 2020 15:37:11 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:F42DCCF883A8AEE0C0CE8CD6473CA883939BD58BCDAFF378246436A90DBF9AC0;
 UpperCasedChecksum:83DD3D80F05A0375D76E0D14151ED24F9BC6300E4347A30385609E891E25ABFF;
 SizeAsReceived:7588; Count:49
Received: from KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3]) by KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 ([fe80::3092:2054:43cd:45d3%7]) with mapi id 15.20.3066.023; Sun, 7 Jun 2020
 15:37:11 +0000
Date: Sun, 7 Jun 2020 16:37:04 +0100
From: Ian Cooper <iancooper@hotmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <KU1PR01MB2022D6866A07F9F0B01F45BAAD840@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <20200606185223.9749-2-rosenp@gmail.com>
References: <20200606185223.9749-1-rosenp@gmail.com>
 <20200606185223.9749-2-rosenp@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-ClientProxiedBy: LO2P265CA0178.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::22) To KU1PR01MB2022.apcprd01.prod.exchangelabs.com
 (2603:1096:802:23::18)
X-Microsoft-Original-Message-ID: <20200607163643.1ba17249@azeroth>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from azeroth (80.3.14.56) by LO2P265CA0178.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18 via Frontend
 Transport; Sun, 7 Jun 2020 15:37:10 +0000
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Microsoft-Original-Message-ID: <20200607163643.1ba17249@azeroth>
X-TMN: [KiukeiBk1U6zj2lHm+69G6lKL5Sjv3WQ]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 481f667c-4f57-4604-288f-08d80af8a509
X-MS-TrafficTypeDiagnostic: SG2APC01HT078:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jui1ETx+jb+G+0CZ0EBRot5zm8VjEo1cc/lV8ByPQekmUpn9pq8hZ9s4dbP6FPI8pytVa2Dwc+vLX3Xja7dG42E7OwQkznEaMHb1Ixs6uRnA2ZUt/AgPgE95Y45fteOJ98JML6G+0IT99G41K5V/uIXnep8vpsZgTX7SFkfB0pVdlt5zJoSbheoerX9FwEiCHQyzTtQYpBnbyTHm54yYzVVeLBC2pZCqIpw5tcoFZvFQljkIdTC/h5HJPEDjBhr6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:0; SRV:;
 IPV:NLI; SFV:NSPM; H:KU1PR01MB2022.apcprd01.prod.exchangelabs.com; PTR:;
 CAT:NONE; SFTY:; SFS:; DIR:OUT; SFP:1901; 
X-MS-Exchange-AntiSpam-MessageData: vUazm5d2j5BylMYQynKA/jYp2u7FTsVOWkTauYQ731naztHnk+Elt/0dTKJl4Bv4Ub0R2EtMFGaJF3MaNEsbCX7qiaF4+HnCgEUFEXFhLfGrLr9DbC/CcOapdmJ7Z0/XGFpAmYtvXmUix2Y18PQANQ==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 481f667c-4f57-4604-288f-08d80af8a509
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2020 15:37:11.2231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_083715_546430_CA6D9A24 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.92.253.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [iancooper[at]hotmail.com]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.253.19 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sat,  6 Jun 2020 11:52:23 -0700 Rosen Penev <rosenp@gmail.com> wrote:

> Switched to upstream tarballs.
> 
> Switched to libcxxabi as using libsupc++ is quite wonky.
> 
> Fixed description.
> 
> Removed patches. The fixes are cosmetic.
> 
> Added ssp patch. This one is needed for i386 and powerpc under musl.
> 
> Compile tested every C++ package in the tree with the exception of
> several boost packages. There's something broken with boost.
> 
> Ran tested with gerbera.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/libs/libcxx/Makefile                | 18 +++++------
>  package/libs/libcxx/files/g++-libcxx        |  2 +-
>  package/libs/libcxx/patches/010-cxx17.patch | 14 ---------
>  package/libs/libcxx/patches/010-ssp.patch   | 13 ++++++++
>  package/libs/libcxx/patches/020-fixes.patch | 35 ---------------------
>  5 files changed, 23 insertions(+), 59 deletions(-)
>  delete mode 100644 package/libs/libcxx/patches/010-cxx17.patch
>  create mode 100644 package/libs/libcxx/patches/010-ssp.patch
>  delete mode 100644 package/libs/libcxx/patches/020-fixes.patch
> 
> diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
> index 8343cbb427..3809bea651 100644
> --- a/package/libs/libcxx/Makefile
> +++ b/package/libs/libcxx/Makefile
> @@ -7,19 +7,20 @@
>  include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=libcxx
> -PKG_VERSION:=9.0.1
> -PKG_RELEASE:=4
> +PKG_VERSION:=10.0.0
> +PKG_RELEASE:=1
>  
> -PKG_SOURCE_PROTO:=git
> -PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
> -PKG_SOURCE_VERSION:=2076f539f410805ef88692b9c0ce0a0b882a7680
> -PKG_MIRROR_HASH:=d527880a18dec9109575c76717cf5288fb91c11381b9d261cae2e5bebcbdab2e
> +PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).src.tar.xz
> +PKG_SOURCE_URL:=https://github.com/llvm/llvm-project/releases/download/llvmorg-$(PKG_VERSION)
> +PKG_HASH:=270f8a3f176f1981b0f6ab8aa556720988872ec2b48ed3b605d0ced8d09156c7
> +PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).src
>  
>  PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
>  PKG_LICENSE:=MIT
>  PKG_LICENSE_FILES:=LICENSE.txt
>  
>  PKG_BUILD_PARALLEL:=1
> +PKG_BUILD_DEPENDS:=libcxxabi
>  CMAKE_BINARY_SUBDIR:=build
>  
>  include $(INCLUDE_DIR)/package.mk
> @@ -34,12 +35,11 @@ define Package/libcxx
>  endef
>  
>  define Package/libcxx/description
> -  LLVM C++ library targeting C++11 and above
> +  libc++ is an implementation of the C++ standard library, targeting C++11, C++14 and above.
>  endef
>  
>  CMAKE_OPTIONS += \
> -	-DLIBCXX_CXX_ABI="libsupc++" \
> -	-DLIBCXX_CXX_ABI_INCLUDE_PATHS="$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION);$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION)/$(REAL_GNU_TARGET_NAME)" \
> +	-DLIBCXX_CXX_ABI="libcxxabi" \
>  	-DLIBCXX_ENABLE_ASSERTIONS=OFF \
>  	-DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
>  	-DLIBCXX_INCLUDE_BENCHMARKS=OFF \
> diff --git a/package/libs/libcxx/files/g++-libcxx b/package/libs/libcxx/files/g++-libcxx
> index 81ca46eb0e..f37afb2fd5 100755
> --- a/package/libs/libcxx/files/g++-libcxx
> +++ b/package/libs/libcxx/files/g++-libcxx
> @@ -13,7 +13,7 @@ do
>  	-static) [ "$WRAPPER_LIBS" != "-lc -lgcc_s -lssp_nonshared -lgcc_eh" ] && WRAPPER_LIBS="-lc -lgcc_s -lssp_nonshared -lgcc_eh" ;;
>  	esac
>  done
> -[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs $WRAPPER_LIBDIR -lc++ -lsupc++ $WRAPPER_LIBS"
> +[ "$WRAPPER_INCLIB" = "Y" ] && WRAPPER_OPTIONS="-nodefaultlibs $WRAPPER_LIBDIR -lc++ -lc++abi $WRAPPER_LIBS"
>  
>  exec CXX -fno-builtin -nostdinc++ -DGCC_HASCLASSVISIBILITY "$WRAPPER_INCLUDEDIR" "$@" $WRAPPER_OPTIONS
>  
> diff --git a/package/libs/libcxx/patches/010-cxx17.patch b/package/libs/libcxx/patches/010-cxx17.patch
> deleted file mode 100644
> index dceec9d4f3..0000000000
> --- a/package/libs/libcxx/patches/010-cxx17.patch
> +++ /dev/null
> @@ -1,14 +0,0 @@
> ---- a/CMakeLists.txt
> -+++ b/CMakeLists.txt
> -@@ -524,9 +524,9 @@ remove_flags(-Wno-pedantic -pedantic-err
> - if (LIBCXX_HAS_MUSL_LIBC OR LIBCXX_TARGETING_CLANG_CL)
> -   # musl's pthread implementations uses volatile types in their structs which is
> -   # not a constexpr in C++11 but is in C++14, so we use C++14 with musl.
> --  set(LIBCXX_STANDARD_VER c++14 CACHE STRING "internal option to change build dialect")
> -+  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to change build dialect")
> - else()
> --  set(LIBCXX_STANDARD_VER c++11 CACHE STRING "internal option to change build dialect")
> -+  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to change build dialect")
> - endif()
> - add_compile_flags_if_supported(-std=${LIBCXX_STANDARD_VER})
> - add_compile_flags_if_supported("/std:${LIBCXX_STANDARD_VER}")
> diff --git a/package/libs/libcxx/patches/010-ssp.patch b/package/libs/libcxx/patches/010-ssp.patch
> new file mode 100644
> index 0000000000..c9dc90c7f2
> --- /dev/null
> +++ b/package/libs/libcxx/patches/010-ssp.patch
> @@ -0,0 +1,13 @@
> +--- a/CMakeLists.txt
> ++++ b/CMakeLists.txt
> +@@ -760,6 +760,10 @@ function(cxx_link_system_libraries target)
> +     target_link_libraries(${target} PRIVATE atomic)
> +   endif()
> + 
> ++  if (LIBCXX_HAS_MUSL_LIBC)
> ++    target_link_libraries(${target} PRIVATE ssp_nonshared)
> ++  endif()
> ++
> +   if (MINGW)
> +     target_link_libraries(${target} PRIVATE "${MINGW_LIBRARIES}")
> +   endif()
> diff --git a/package/libs/libcxx/patches/020-fixes.patch b/package/libs/libcxx/patches/020-fixes.patch
> deleted file mode 100644
> index 22ac494c04..0000000000
> --- a/package/libs/libcxx/patches/020-fixes.patch
> +++ /dev/null
> @@ -1,35 +0,0 @@
> ---- a/include/cmath
> -+++ b/include/cmath
> -@@ -615,7 +615,7 @@ _Fp __lerp(_Fp __a, _Fp __b, _Fp __t) no
> - 
> -     if (__t == 1) return __b;
> -     const _Fp __x = __a + __t * (__b - __a);
> --    if (__t > 1 == __b > __a)
> -+    if ((__t > 1) == (__b > __a))
> -     	return __b < __x ? __x : __b;
> -     else
> -     	return __x < __b ? __x : __b;
> ---- a/include/memory
> -+++ b/include/memory
> -@@ -1696,7 +1696,7 @@ struct _LIBCPP_TEMPLATE_VIS allocator_tr
> -             ptrdiff_t _Np = __end1 - __begin1;
> -             __end2 -= _Np;
> -             if (_Np > 0)
> --                _VSTD::memcpy(__end2, __begin1, _Np * sizeof(_Tp));
> -+                __end2 = __begin1;
> -         }
> - 
> - private:
> ---- a/src/filesystem/filesystem_common.h
> -+++ b/src/filesystem/filesystem_common.h
> -@@ -197,8 +197,8 @@ private:
> - using chrono::duration;
> - using chrono::duration_cast;
> - 
> --using TimeSpec = struct ::timespec;
> --using StatT = struct ::stat;
> -+using TimeSpec = struct timespec;
> -+using StatT = struct stat;
> - 
> - template <class FileTimeT, class TimeT,
> -           bool IsFloat = is_floating_point<typename FileTimeT::rep>::value>

Reviewed-by: Ian Cooper <iancooper@hotmail.com>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
