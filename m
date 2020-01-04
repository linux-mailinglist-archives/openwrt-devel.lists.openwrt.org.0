Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F544130020
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 03:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kDbVsyr00mOUlOP2ERmOcdae5G1gurKp12mfDczqZZM=; b=O6/i3akTNfUGX6
	L3W/ibzV88//bc016p+uN6U1e44k1Y7ZPDH3jjsHKaNtYKg7UMn6TJ7Qo3vlW7ljf2s45f2QX3c+H
	H7u9ZfSGPQIj/1eaUXZZdBphfH4OKGrE6M9kLlc6okjKyJIvxWhHgLLl3MZezX/SaLl8geKE/FDTr
	UwmFDEwlfcoo4DIQa1jmhq7Stk7FxWzwY29sa/a4kNvhHkn3CUdVLW1jLlijCp3Yv3EvYx0hfb5xD
	g5uvN+Lhl9AweUVbxuWRwE/0FCSdMZa6MZwGy6rSPDGANS5DpYubQ3FKkqjiklSrumkrUdEJb43Uh
	ZSfRtY1KwmaicLBRCsRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inZDh-0000ts-Mt; Sat, 04 Jan 2020 02:31:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inZDY-0000tF-7E
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 02:31:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so24284037pfz.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 Jan 2020 18:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VJV2/O+x5KuQny/CnE+BBTjFXvGd89P57ZLMQmbx9+Q=;
 b=t1X0IzeSs+1tvxHSx2qWEy0Jiv22ebwtxPIrjho3hweQ4W/Cqs8iDcHYq82QvF8WmM
 SEvWEcuixOe/ajdybsq7GkhP9QFHa2jj4pcc+FN8ijv4pHByiNdtCUSnNknntm+aAj8Q
 4f1Z3sEZwJpfat4g36Y0mtaGXAUrJGzOBAHRbeVopqLb/Ki4txt8UZsnD7xt7WYcCE/m
 mBFQBIZfF9JOALEuh4rT836z+bQj6xw0BSZrVz21eVCB+NUInZKjS1c/YqQ2MlWyoy0F
 wl6X83jLZfJpCnaIOE6mIp95pYTJnI4EodunewdCUmMgkC/79cvDO4aopDU/QRylHBem
 PmXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VJV2/O+x5KuQny/CnE+BBTjFXvGd89P57ZLMQmbx9+Q=;
 b=sI4OjRgTMORw2bh34FyiYvJEInCD6QXQCZ/HHqTIiibg0gX3qhXbdsMqzUfGIDoDG4
 THahXYl2BjnOk5x0Eie8h8NunQR5Rt8X/dOlpPf5bRfAOmR4R4uvWllUUyc2v49z0inv
 hpyYpjU3aZeT6XT9tobFV+0tY7YIGPenHzeTksda0B4eieSxqUoMfXZiwGIXoJ/mWcEV
 4pHQThwd9ADwRn4gmOcOFjofY/sz3PcEG1AujHP2P2QLzUJT3N4GFzYPE+w5ps1pZ8Oz
 wQ7zmOUbTjRE0kgjwP4PJp0ZBSLQLyausgN18iKEIFUwEQ2FP5tW5OirwRk/yc0vd0lB
 yNKQ==
X-Gm-Message-State: APjAAAUi+TqT+al2Vp+jlcjoVPaNssJxUPMjjRvWQH2aVNYiDlhXpNaa
 mPv7wOrPvwJrb1W4sVAMLRcm8HOpLNE=
X-Google-Smtp-Source: APXvYqxOEG7JTD63ID0hrEfzNVZx03vaF5wHvLlWE24OzawjpARvFIVL1ko74bWdl+22nYCAiK+4fQ==
X-Received: by 2002:a63:8c48:: with SMTP id q8mr102563459pgn.213.1578105064860; 
 Fri, 03 Jan 2020 18:31:04 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id u23sm68842449pfm.29.2020.01.03.18.31.03
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 18:31:04 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Jan 2020 18:31:01 -0800
Message-Id: <20200104023101.65075-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_183108_290068_C0B4D742 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] libcxx: Remove -flto from LDFLAGS
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

It seems the buildbots can't handle it.

Added a cmake option to find the cxxabi files as they are part of the
toolchain and not in the normal path. It doesn't seem to make a
difference, just gets rid of cmake warnings.

Added another small GCC warning fix. It's fairly minor.

This has no change in compiled size, and most likely no change in
behavior. Bumped the PKG_RELEASE anyway.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libcxx/Makefile                |  6 ++++--
 package/libs/libcxx/patches/020-fixes.patch | 11 +++++++++++
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/package/libs/libcxx/Makefile b/package/libs/libcxx/Makefile
index 1d8e502221..53b7f1eaab 100644
--- a/package/libs/libcxx/Makefile
+++ b/package/libs/libcxx/Makefile
@@ -1,3 +1,4 @@
+
 #
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
@@ -7,7 +8,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=libcxx
 PKG_VERSION:=9.0.1
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://git.llvm.org/git/libcxx
@@ -38,6 +39,7 @@ endef
 
 CMAKE_OPTIONS += \
 	-DLIBCXX_CXX_ABI="libsupc++" \
+	-DLIBCXX_CXX_ABI_INCLUDE_PATHS="$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION);$(TOOLCHAIN_DIR)/$(REAL_GNU_TARGET_NAME)/include/c++/$(CONFIG_GCC_VERSION)/$(REAL_GNU_TARGET_NAME)" \
 	-DLIBCXX_ENABLE_ASSERTIONS=OFF \
 	-DLIBCXX_ENABLE_EXPERIMENTAL_LIBRARY=OFF \
 	-DLIBCXX_INCLUDE_BENCHMARKS=OFF \
@@ -47,7 +49,7 @@ CMAKE_OPTIONS += \
 	-DLIBCXX_HAS_MUSL_LIBC=$(if $(CONFIG_USE_MUSL),ON,OFF)
 
 TARGET_CXXFLAGS += -D_LIBCPP_DISABLE_DEPRECATION_WARNINGS -Wno-attributes -flto
-TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed -flto=jobserver
+TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
 
 define Build/InstallDev
 	$(call Build/InstallDev/cmake,$(1))
diff --git a/package/libs/libcxx/patches/020-fixes.patch b/package/libs/libcxx/patches/020-fixes.patch
index abc630d42f..96624776af 100644
--- a/package/libs/libcxx/patches/020-fixes.patch
+++ b/package/libs/libcxx/patches/020-fixes.patch
@@ -1,3 +1,14 @@
+--- a/include/cmath
++++ b/include/cmath
+@@ -615,7 +615,7 @@ _Fp __lerp(_Fp __a, _Fp __b, _Fp __t) noexcept {
+ 
+     if (__t == 1) return __b;
+     const _Fp __x = __a + __t * (__b - __a);
+-    if (__t > 1 == __b > __a)
++    if ((__t > 1) == (__b > __a))
+     	return __b < __x ? __x : __b;
+     else
+     	return __x < __b ? __x : __b;
 --- a/include/memory
 +++ b/include/memory
 @@ -1696,7 +1696,7 @@ struct _LIBCPP_TEMPLATE_VIS allocator_traits
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
