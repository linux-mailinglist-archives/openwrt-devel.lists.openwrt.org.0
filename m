Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E075712DD88
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 04:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d34hLyReZKt65SCpoYqyaH3dtq1zu2cr2DplPkbEqNQ=; b=mVp2ggYPbddhJG9CddEmGVVEOW
	c5l9g7M2Y+6HTy3+MuyihblcvtVZVjdBOIIDmdtZxlvgBZBXQQ8T5sWvDah4k+ykvsRDG2vDhxAmH
	O2ympoe+kIqdhHA4Pf9mT7Jd8+fnTNCgSQw1ShCMXdSjAyjbFid3rB8zIak9MrPz8MGRJutDIjdZy
	uDq3ngqd+n/ZcItiXKuvLeQkfHhHFYIi+cbUPwZUitrWiUvhWzaqbupEGowyu/Mp/cHKDfxbJmU9p
	iLf0cIH5YXjunqRAw9W1yfpoIPuWS/pgbIg9aUTuKMVLwH+279T0SFMtT6yDu5ofUNVpjKi8y1sPa
	syYf/+Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imUpZ-00085s-Ki; Wed, 01 Jan 2020 03:37:57 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imUpI-0007y1-Er
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 03:37:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id 2so20377362pfg.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 19:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XPcdHKURiq/oGkhl5KB6wB9OQKKOo+FEaY4VTpB185U=;
 b=Sh0f7I0r+icXT628U6cGL9kRTTPf1N7rBtQ4kQHdtREGMAEMhbgZR36la0fWQvOCJk
 HsVqDWhf8D0gRFaiB6nzpUsB64xKjyNAn00Zn5ctJKMZK1Tj20UG1BD0zZUh0NmKNtxm
 mGVlF6bGiYrcwcQ6RI4vgrF6yUiCDnZ3rs+2DDCzv6dDtQzZ6f10yjcgR4oogr2LTRRe
 69cO8uMsBu9oIPEA5VuTxRKhPnLloZEBTpQRhHVoaEdvh35s1Uuf/bvz1rG31SBfYppX
 2hRXAp0fmPileuvElu9eg3qlDF/RcDMJsnr6xkGdickH7aHHh8ClpsjFLdAy+0odochN
 6eHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XPcdHKURiq/oGkhl5KB6wB9OQKKOo+FEaY4VTpB185U=;
 b=Aoy1Ijyxo+phZkckLJ1no9l55pPxxOyKDThUF1Bg6iv1wlUoy56S+E940KcqDar35U
 eJ2Bw8rwqgnf12UEeqLlWSqfVYQsdDyIkmwVwtaojZDFTs0n8EXmQ0+mZqkkUVK1yS6/
 Mx8u76Dexv8OuPM5S984wXa/HIsrYnz5z5nL9+v3ZmWErJiHy7Gb9Pau+ttwNoDlpLdd
 xm+Zy0t9T2qVL5cKnkIlyNjkThfqKmfG3LsN2rJuFztW7UBzh7q35fLGnrR1zlTNjcEE
 4myjLTh21Hych3VBvvV5ekFIqpptqa28pN/39U2HKgQmabKlRUzgzTPWd5yEAzBTiRb4
 sN3w==
X-Gm-Message-State: APjAAAXxZQVBMKpWcxHpQgdkh6N0Btl/EUFLq9YIgh44Tf3mRHKvsClT
 vCmltpqDn5+3bVxsY6mY8WEih/bJM14=
X-Google-Smtp-Source: APXvYqwXNRu/KEvR04DtCLr8qDeywqga0PzpWmDLYedp3tQW95+JyHY53Y76M7krWbIma/cWGs4sSA==
X-Received: by 2002:a63:b4d:: with SMTP id a13mr79634310pgl.388.1577849859508; 
 Tue, 31 Dec 2019 19:37:39 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id s131sm40885816pfs.135.2019.12.31.19.37.38
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 19:37:39 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 31 Dec 2019 19:37:35 -0800
Message-Id: <20200101033735.853371-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200101033735.853371-1-rosenp@gmail.com>
References: <20200101033735.853371-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_193740_495025_0F8CC4F9 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] libcxx: Add size optimizations
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

Changed standard to 2a. 2a (as well as 17) contain more constexpr
functions, which are evaluated at compile time. This saves space.

Added --gc-sections. With the CXXABI change, this now makes the package
smaller.

With these, size went down to 210845 on mipsel_24kc.

Also fixed two small compiler warnings. No real change in behavior.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libcxx/Makefile                |  2 +-
 package/libs/libcxx/patches/010-cxx17.patch | 14 ++++++++++++
 package/libs/libcxx/patches/020-fixes.patch | 24 +++++++++++++++++++++
 3 files changed, 39 insertions(+), 1 deletion(-)
 create mode 100644 package/libs/libcxx/patches/010-cxx17.patch
 create mode 100644 package/libs/libcxx/patches/020-fixes.patch

diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
index 60978bdc31..1d8e502221 100644
--- a/package/libs/libcxx/Makefile
+++ b/package/libs/libcxx/Makefile
@@ -47,7 +47,7 @@ CMAKE_OPTIONS += \
 	-DLIBCXX_HAS_MUSL_LIBC=$(if $(CONFIG_USE_MUSL),ON,OFF)
 
 TARGET_CXXFLAGS += -D_LIBCPP_DISABLE_DEPRECATION_WARNINGS -Wno-attributes -flto
-TARGET_LDFLAGS += -Wl,--as-needed
+TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed -flto=jobserver
 
 define Build/InstallDev
 	$(call Build/InstallDev/cmake,$(1))
diff --git a/package/libs/libcxx/patches/010-cxx17.patch b/package/libs/libcxx/patches/010-cxx17.patch
new file mode 100644
index 0000000000..c313c47611
--- /dev/null
+++ b/package/libs/libcxx/patches/010-cxx17.patch
@@ -0,0 +1,14 @@
+--- a/CMakeLists.txt
++++ b/CMakeLists.txt
+@@ -524,9 +524,9 @@ remove_flags(-Wno-pedantic -pedantic-errors -pedantic)
+ if (LIBCXX_HAS_MUSL_LIBC OR LIBCXX_TARGETING_CLANG_CL)
+   # musl's pthread implementations uses volatile types in their structs which is
+   # not a constexpr in C++11 but is in C++14, so we use C++14 with musl.
+-  set(LIBCXX_STANDARD_VER c++14 CACHE STRING "internal option to change build dialect")
++  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to change build dialect")
+ else()
+-  set(LIBCXX_STANDARD_VER c++11 CACHE STRING "internal option to change build dialect")
++  set(LIBCXX_STANDARD_VER c++2a CACHE STRING "internal option to change build dialect")
+ endif()
+ add_compile_flags_if_supported(-std=${LIBCXX_STANDARD_VER})
+ add_compile_flags_if_supported("/std:${LIBCXX_STANDARD_VER}")
diff --git a/package/libs/libcxx/patches/020-fixes.patch b/package/libs/libcxx/patches/020-fixes.patch
new file mode 100644
index 0000000000..abc630d42f
--- /dev/null
+++ b/package/libs/libcxx/patches/020-fixes.patch
@@ -0,0 +1,24 @@
+--- a/include/memory
++++ b/include/memory
+@@ -1696,7 +1696,7 @@ struct _LIBCPP_TEMPLATE_VIS allocator_traits
+             ptrdiff_t _Np = __end1 - __begin1;
+             __end2 -= _Np;
+             if (_Np > 0)
+-                _VSTD::memcpy(__end2, __begin1, _Np * sizeof(_Tp));
++                __end2 = __begin1;
+         }
+ 
+ private:
+--- a/src/filesystem/filesystem_common.h
++++ b/src/filesystem/filesystem_common.h
+@@ -197,8 +197,8 @@ private:
+ using chrono::duration;
+ using chrono::duration_cast;
+ 
+-using TimeSpec = struct ::timespec;
+-using StatT = struct ::stat;
++using TimeSpec = struct timespec;
++using StatT = struct stat;
+ 
+ template <class FileTimeT, class TimeT,
+           bool IsFloat = is_floating_point<typename FileTimeT::rep>::value>
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
