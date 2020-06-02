Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A11EC54E
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 00:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=azTvL/e8kibgLyzhB71ZjcmoOteI8DII48EZ1IvQLno=; b=pMepNHysvKOotL
	0wmtsEusxJn8wOuudKWeXcq0S7kv918XTkqPnyuOvYPwaJA78hNJng5Sf40TRqhJJKZxesOlZBIiK
	FzLEVkNaAxnIh34thgCmH7yeu0JxEyIoJR6Vths4YP4AYIXUfFougpCIke/M0iiq+QCFDuJbfv+x3
	2Sd8S5gOEpNWBLE7Kd2f0fSmLKiU/CFTqT1DshUj1utXGTArGkMaLQe7260OlqbdYOCkpCSv3C+Jr
	9Es59B++pbYIBrxnqPCW/1CXvcW4kVnnkOchNRfXT0+TyaQmAhiXur0/HyFI2kivKk/eDO81Ufv1H
	VR696mx7zfRnFATsVHCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgFn3-0001YN-DH; Tue, 02 Jun 2020 22:53:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgFmv-0001XN-Sp
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jun 2020 22:53:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id g5so173619pfm.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 02 Jun 2020 15:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f9Idyxu7t3ZF3TTAT3VKQFtaEARXRZHbH/TicUfhPKk=;
 b=YB4SMaXFyetp+44FkaloY+9nqsIuVWEN18SQTAHt7v0NOtd4VH3OXnIpFRQ5vnuchd
 0U0D6RUfr90EGhQSHLM6MbmpPjgNvXXIC4svvNVMlYbxxSy1fxZu/bkpq1SphCIZuKxm
 wPk0ZpohYcb30DzjwuiQkKRHMTcfnKHDcvzbHY+PJk4Ert9wzu5zJV+v2OtnBpH27P0R
 n5f/0vgfEvGM048l0w69P3+yGBie4ak4iz40dDUNMa6o4JXTZLA75GNEZSWt7OOhX+/B
 OlPiUO2hjWmav4NOwpRPCAi0AOw8xG5hbTbjM0r9gVumiKs426OMaphoJUlgMw21gr+S
 fdZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f9Idyxu7t3ZF3TTAT3VKQFtaEARXRZHbH/TicUfhPKk=;
 b=nlIMXteXe4uR+NRywmehQ0r7p9HBPH5JimpMnZQAbT06n4d3R9+5yQ7jghGbjzWMwD
 Akyg7Rzve7HhpSVPtj7yyHHxIX9zK7HrIuuxDhRNBYDKbu6jaCcOvAKvCPjxoOoGVkgZ
 F9NGggPQzJ58m6e4hJ+vBOxjhWD0/R95/0nCb7EpGg2oWT2Z+i9Cd362hY2wXxHiOyy6
 Cc4aCiRz6arGeuASM2GNrrbKQmQDPKZ9LLxL3OpNEzo9dF8YCT+7nKTAizwX+s/Xk2M3
 WaADPLjHjk4nTFfqXwkY5Pebd9A04dFKSbwIRQt1Z4dbbxIdKD5a6swpQoqvrwyJcU1r
 O3GA==
X-Gm-Message-State: AOAM530wP3iOseVpje1jdkjYEUFNGfsevoissZidi1qPSW0eHN+GrcSz
 bNBphao+TkZExeBWofGZvUohjdl5ZBw=
X-Google-Smtp-Source: ABdhPJysmLU19p+SgveuJVW3kbmOYqQn2dIAnIB5oDDsyAlvOiww3tB3kQjgqRSOY+cEB1p0edzZrw==
X-Received: by 2002:a17:90a:9f8a:: with SMTP id
 o10mr1650348pjp.156.1591138420426; 
 Tue, 02 Jun 2020 15:53:40 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id r8sm167799pfq.16.2020.06.02.15.53.39
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 15:53:39 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  2 Jun 2020 15:53:37 -0700
Message-Id: <20200602225338.2234702-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_155341_931653_309F0E66 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] libcxxabi: add
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

This will be used for libcxx.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/libs/libcxxabi/Makefile | 64 +++++++++++++++++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 package/libs/libcxxabi/Makefile

diff --git a/package/libs/libcxxabi/Makefile b/package/libs/libcxxabi/Makefile
new file mode 100644
index 0000000000..bde77c250a
--- /dev/null
+++ b/package/libs/libcxxabi/Makefile
@@ -0,0 +1,64 @@
+
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=libcxxabi
+PKG_VERSION:=10.0.0
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).src.tar.xz
+PKG_SOURCE_URL:=https://github.com/llvm/llvm-project/releases/download/llvmorg-$(PKG_VERSION)
+PKG_HASH:=e71bac75a88c9dde455ad3f2a2b449bf745eafd41d2d8432253b2964e0ca14e1
+PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).src
+
+PKG_MAINTAINER:=Rosen Penev <rosenp@gmail.com>
+PKG_LICENSE:=MIT
+PKG_LICENSE_FILES:=LICENSE.txt
+
+PKG_BUILD_PARALLEL:=1
+CMAKE_BINARY_SUBDIR:=build
+
+include $(INCLUDE_DIR)/package.mk
+include $(INCLUDE_DIR)/cmake.mk
+
+define Package/libcxxabi
+  SECTION:=libs
+  CATEGORY:=Libraries
+  TITLE:=LLVM lib++abi
+  URL:=https://libcxxabi.llvm.org/
+  DEPENDS:=+libpthread
+  BUILDONLY:=1
+endef
+
+define Package/libcxxabi/description
+  libc++abi is a new implementation of low level support for a standard C++ library.
+endef
+
+CMAKE_OPTIONS += \
+	-DLIBCXXABI_ENABLE_EXCEPTIONS=ON \
+	-DLIBCXXABI_ENABLE_PEDANTIC=OFF \
+	-DLIBCXXABI_ENABLE_PIC=ON \
+	-DLIBCXXABI_ENABLE_WERROR=OFF \
+	-DLIBCXXABI_USE_LLVM_UNWINDER=OFF \
+	-DLIBCXXABI_USE_COMPILER_RT=OFF \
+	-DLIBCXXABI_ENABLE_THREADS=ON \
+	-DLIBCXXABI_HAS_PTHREAD_API=ON \
+	-DLIBCXXABI_INCLUDE_TESTS=OFF \
+	-DLIBCXXABI_LIBDIR_SUFFIX="" \
+	-DLIBCXXABI_INSTALL_LIBRARY=ON \
+	-DLIBCXXABI_ENABLE_SHARED=OFF
+
+TARGET_CXXFLAGS += -flto
+TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
+
+define Build/InstallDev
+	$(call Build/InstallDev/cmake,$(1))
+	$(INSTALL_DIR) $(1)/usr/include/
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/include/*.h $(1)/usr/include/
+endef
+
+$(eval $(call BuildPackage,libcxxabi))
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
