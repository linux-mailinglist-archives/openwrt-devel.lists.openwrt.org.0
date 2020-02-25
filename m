Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E1616B680
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 01:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h1iYJv4Hv8wBCo9KI7hXnICHZj05ETqf5Fu4pgKwPJc=; b=CQyL+IQeDSmJKw
	KG8D06Bk6qJYBhzV1tw58rqNJa2hZJtfyxbtm4xqC/zYuwpJ10AXJUg6QL21EJA6K5Q6z6iAhz9pB
	uE/qB7tB1hkbbrTXkkTVhX26PHVkEsDjQhaBN0UFRnFB0FNRuwRGKg5tCRdxE8YqUB+R+2iGxZ9/z
	ILx3o/tITDb03jpkoFlj6a+cgIXKe5+eBSC0f/nYGQT9uBs09/HRSoQN87tnevJEKEfls+Iz1kbCV
	L8Q3UOHDGZoJazVN3FBDlIxAbAqcA55YF72q9SFNaStF4OANOu5f59Uug1BTdMiOHpe6lsaf3rRvT
	CcihSwqpbhB0KShUEyKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Nrc-0008Id-Rp; Tue, 25 Feb 2020 00:14:16 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6NrV-0008I7-2E
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 00:14:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id r77so2585344pgr.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Feb 2020 16:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3b26pcRDzh/2n5Eyugd9cmIbrdK1gEU2QDOcvhfoTwg=;
 b=OMgci1qLiRihVEvqYWM9YjR26bZ3k76KGvdsxfXDaxOA3R7Kwp6yJhT/McbveRRTCh
 yBKohy2kTPCobwUNHU9uSVq9pRUjLOclaBzEkCQ4BkavbhNLv+iqp2ZFN2Mroh7QLoZS
 gQFb2+a5/lL1FFiWfCqzWvDa31X4JSh7K1oMB3HLWiR/U/iwuStt+zSis5x2ecVEhLQQ
 yE5WmmsLRpeg/sUAeoWJI1r3tkvw6W1KFhFgesBIim8At2UhfZHb/LjGSzBLGUzZV13p
 67UcyG5I7OvzoGBIV1GXpf0777TzVXuYoWILgLoFYQL/MVB5OTkQI5IRgEZgp9FA14EY
 rLTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3b26pcRDzh/2n5Eyugd9cmIbrdK1gEU2QDOcvhfoTwg=;
 b=Nmm8EfkjX13ooDla9sy8NoyEwmFvjAq9RBYuRePJLg6iKKKQanGnS0KTWi9vwgWXS7
 erogy8ZGwjHeh9JaBwcaihmMSmmQy71GVDEsMn/ybY4IYp1YhxzjDwN/7/8XWAhjhtwK
 a5WCv0ZD8CRECvBpshUJSQ5ZyTVxJ2RRTjz71zZHGH2Uz1d+c3buNJYDQd2s3EClpEhP
 3HJAnlFwekZiKmyRF10o47lCvbDBLqmrgv+7RFxB+LSFmtohUS5q6+WFYwpaoCdZFQUQ
 njyFBX/9IXDM6RZoADMk/CDyrAM8fdRYM5mr5XlUqpz0+jPZNzRDz3Zlu3ll0iBeoNU6
 SjgQ==
X-Gm-Message-State: APjAAAUHTyruLXG+ddRrORKtBm9sXeIcnlH3m/Z/saW+/gZbUUpsI44f
 LdRKnbqr25v5CaBd7A/1WuwSaD4GBNU=
X-Google-Smtp-Source: APXvYqzCkJBHajf/3YF59zVQgkgNF+omjK2V5pf4GlIlmrSrpSl0GLmy8hh1O20yQ9kAbE8YPx5EfA==
X-Received: by 2002:aa7:961b:: with SMTP id q27mr54725273pfg.23.1582589647026; 
 Mon, 24 Feb 2020 16:14:07 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id j4sm14398387pfh.152.2020.02.24.16.14.06
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 16:14:06 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Feb 2020 16:14:04 -0800
Message-Id: <20200225001404.7532-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_161409_107398_8ECE1F34 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] libcxx: fix compilation with platforms
 needing lssp
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

Currently this is an issue with powerpc and i386 platforms.

Added extra cxxabi header

It's used by cxxabi.h. Issue discovered when trying to build i2pd.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libcxx/Makefile                 |  2 +-
 package/libs/libcxx/patches/030-cxxabi.patch | 11 +++++++++++
 package/libs/libcxx/patches/040-ssp.patch    | 11 +++++++++++
 3 files changed, 23 insertions(+), 1 deletion(-)
 create mode 100644 package/libs/libcxx/patches/030-cxxabi.patch
 create mode 100644 package/libs/libcxx/patches/040-ssp.patch

diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
index 8343cbb427..51a49e4e9d 100644
--- a/package/libs/libcxx/Makefile
+++ b/package/libs/libcxx/Makefile
@@ -8,7 +8,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libcxx
 PKG_VERSION:=9.0.1
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
diff --git a/package/libs/libcxx/patches/030-cxxabi.patch b/package/libs/libcxx/patches/030-cxxabi.patch
new file mode 100644
index 0000000000..c70400f0c0
--- /dev/null
+++ b/package/libs/libcxx/patches/030-cxxabi.patch
@@ -0,0 +1,11 @@
+--- a/cmake/Modules/HandleLibCXXABI.cmake
++++ b/cmake/Modules/HandleLibCXXABI.cmake
+@@ -84,7 +84,7 @@ if ("${LIBCXX_CXX_ABI_LIBNAME}" STREQUAL "libstdc++" OR
+     "${LIBCXX_CXX_ABI_LIBNAME}" STREQUAL "libsupc++")
+   set(_LIBSUPCXX_INCLUDE_FILES
+     cxxabi.h bits/c++config.h bits/os_defines.h bits/cpu_defines.h
+-    bits/cxxabi_tweaks.h bits/cxxabi_forced.h
++    bits/cxxabi_tweaks.h bits/cxxabi_forced.h bits/cxxabi_init_exception.h
+     )
+   if ("${LIBCXX_CXX_ABI_LIBNAME}" STREQUAL "libstdc++")
+     set(_LIBSUPCXX_DEFINES "-DLIBSTDCXX")
diff --git a/package/libs/libcxx/patches/040-ssp.patch b/package/libs/libcxx/patches/040-ssp.patch
new file mode 100644
index 0000000000..f4f780d33a
--- /dev/null
+++ b/package/libs/libcxx/patches/040-ssp.patch
@@ -0,0 +1,11 @@
+--- a/src/CMakeLists.txt
++++ b/src/CMakeLists.txt
+@@ -175,6 +175,8 @@ function(cxx_link_system_libraries target)
+     target_link_libraries(${target} PUBLIC atomic)
+   endif()
+ 
++  target_link_libraries(${target} PUBLIC ssp_nonshared)
++
+   if (MINGW)
+     target_link_libraries(${target} PUBLIC "${MINGW_LIBRARIES}")
+   endif()
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
