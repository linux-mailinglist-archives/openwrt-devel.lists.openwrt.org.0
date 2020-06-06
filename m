Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3EE1F082D
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 20:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LcBpnItWZeMqACo/sAeQwFDCXTAxYydAN0ZZ+j083ZI=; b=ZAc3bo1IEYhE9E
	DOMDIErnHsFM4diSMtM+er1GL+eWhcDFZfP5+Z/aAm2oUIUt5PPkcCW7ICl1Nr9qG5xYgxzryCCfF
	vFid1984gK7JGx3E7LQWxL/U6F6k1QPowVVMFy3WFNPjkTu5FZ7C6UH/XzJosQg3ztr2oA/T9wegv
	8eoar5ladNRpL27Sau7UgWRLElBSIF7AqJ4QJwbzxp2P2Hk11cCsLnJ7gy/TRd1fYcRpUqHAoiJlK
	5teZVF0a8F7zm9WCHQ23/oW72ii9ySOuuVFSd2MhXLTtkiKEeBJP6j/ZEl7xQWFTBwX07ssYYpere
	XZMDn5ASbMQmVPpjTpMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhdvm-0003uD-Af; Sat, 06 Jun 2020 18:52:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhdvg-0003tB-7Q
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 18:52:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id 23so5682432pfw.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jun 2020 11:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+uXYxFOnp4x1eWsGLmkwgt8XCUZTEcFwhiQkyUMj7RU=;
 b=gqMSO8uLfRj1MNNPruiLIr/B0RliZD+JaIj858lEZzwdpfmzljzFja5/QGO65Bqxr4
 b+H6U4Kc3QDVh4O1RDlTJFhC6yidKs+8iIw2ZF/I2EWV5FkDqxPJyK+qfyMXntH7h2ZM
 FEhQQG7Vd3Ae2cmMdKtU7DDZwIFa6M/t8ntD0X60PbbbaGECvxPp0gyS6nuCpdqTfygr
 ZGF6qwZ+OoT/MUBSLMveZxraAGMVJdBX6E0eK+BH+HazIAHoimaxz7PMdQtXq5CeHTd1
 nDkvoNBkChnGvfkg/YY06IOm1IU24EOi9QzWiyWx18sA41EzA7qB8YNda4cpLETB8TVs
 T8UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+uXYxFOnp4x1eWsGLmkwgt8XCUZTEcFwhiQkyUMj7RU=;
 b=n2/klw1aw740HmGyRQh+JaR4XGoS1pCT6RI5UHuv9wzjPsAnHi89peJPuf6a/c0CQq
 baEtcA3e+Ybmn8bKYjNPki4DKBy0PKtRJIs2f8K3WCyG0U0kckuFNoD2qCEn9Rv7uiIl
 0mItORDpdlctUphpuOtXmZ9pW6zzHx9/V87372+T0spZ0z2RYHvbh/YB0g11Dn2qqmmB
 2nAs0uv/rBOMKjfe4WJC/aF0BG9by5F3UE3YQyFmqlnrtvAw0t0BZHhjdaalEIhAjdsh
 ORn+j4prRN0rojpKYrVmzrGZr6x4Vs2MBHAUhNzQReFiqCFdnObtKx2Lw57dJcJCcUGr
 WDnQ==
X-Gm-Message-State: AOAM531FpfOE6Ukb50xJvUjlWm37/DVn3yj5B3LR0O5Nl3573Ef2RwgS
 AKBzaEumZHMhm45vl01SYeQmD8rNk6U=
X-Google-Smtp-Source: ABdhPJz7Lb5CbK9XHzouO5xH40GYYLoZleM7CoU+AbPbXFXdcBY4a8LtGfPex0qT8QgylEOC+TsZJw==
X-Received: by 2002:a63:2248:: with SMTP id t8mr14444860pgm.113.1591469545756; 
 Sat, 06 Jun 2020 11:52:25 -0700 (PDT)
Received: from mangix-trapnet.lan (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id s1sm11361882pjp.27.2020.06.06.11.52.24
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Jun 2020 11:52:25 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  6 Jun 2020 11:52:22 -0700
Message-Id: <20200606185223.9749-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_115228_285476_69EB234E 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 package/libs/libcxxabi/Makefile | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 package/libs/libcxxabi/Makefile

diff --git a/package/libs/libcxxabi/Makefile b/package/libs/libcxxabi/Makefile
new file mode 100644
index 0000000000..90547561b2
--- /dev/null
+++ b/package/libs/libcxxabi/Makefile
@@ -0,0 +1,71 @@
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
+	-DLIBCXXABI_ENABLE_SHARED=OFF \
+	-DLIBCXXABI_LIBCXX_SRC_DIR=$(BUILD_DIR)/libcxx-$(PKG_VERSION).src \
+	-DLIBCXXABI_LIBCXX_INCLUDES=$(BUILD_DIR)/libcxx-$(PKG_VERSION).src/include
+
+TARGET_CXXFLAGS += -flto
+TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed
+
+define Build/Prepare
+	$(MAKE) -C $(TOPDIR)/package/libs/libcxx prepare
+	$(call Build/Prepare/Default)
+endef
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
