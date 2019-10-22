Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204CBDFC22
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 05:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+DN5J7FRCU70a5MI/TeTrF0GeMu1Jkk22lfk57OqGys=; b=At6VwWNt6xJ7dg
	J9NVWOzO+aL9zx4kl9jagk45zImtH16ds3QAr2c9/qXrpzKplHzMURtOoe++7zqjYSnNaYjWa9xc+
	ShyV5SO8B2+Pids3qDUbO22WwnVg8vGcrhetfL/jevkvJEDiGc/MSNiNISTsC+q+gqnD2jIbmNZHG
	AjtmuozA29Zu99o0PziRXFFZVVd/hfxz5AYmGir9/n+sgj4gFnH/ivIVUKjAagJTxArZoGGxceJ8s
	/mgI3CFydd8BqCzNVw97BU+LZv9YZ6VuCb/LWupH2PKL3QzfIhFzfhZ7imy3trkj5v207ZV6jXXaA
	AaZ4v+M+r4WpZmPreTgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMkcn-0000E7-HE; Tue, 22 Oct 2019 03:14:21 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMkcf-0000Dk-DM
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 03:14:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id 15so3696484pgt.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 20:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rETNlzb7PtSvGBtiNDjQgfb6PIP87oSgPMmf1xNTAGU=;
 b=SWkSh08oeOrsv0MxcOoh8KWx25XVaTgemjQWry4CiLxVRnLf2SOPFOQGpuzOgnuNkU
 ptwJUmqiG1Cp2gq9HvJS9lP+WbBO6H7NP8iHhXynRVIUbbTdJ0YZc0oqWIcr89PxDYXK
 TOvCpb0pmU61Y4x9808jMnKO8ZtH4lX/P08Hfkb1zj9JEGmC6PzWta5LNvg7dPVvPzmO
 628peDLkRysajp9oqvrSFW5+Q2ZlJkXE46NuRb26wmh4OFT2EkDtravdbfQWUgkA9e0p
 ysymKSHHx5+wf1lYJXLaKMUpa/O+XT9Jdj2cY4Ut/omvyeIphe/M9IOl9VTjrXbyUttY
 r46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rETNlzb7PtSvGBtiNDjQgfb6PIP87oSgPMmf1xNTAGU=;
 b=MoXzGhMnzC8Zssv6/3rbuQD5X4cMG3xDJ2WVcm5bGExpOSEd/4uOhvWW0SUyeOXVaW
 g449jJXrJQREbb4ns14tuYZZBUravAxwVBZF6saW6eJc84oer1NmDrirNt+pHGwiHlll
 Be0BYW/ijZMrYf6YZBqwGVq3DgoiRXD/m7AH+carrp/4at5xWgoClTa1OcwFPU6DM2CY
 mPTK6EVF/jwjxcTfrup+tYL1tin9ilhUYU995MCBwyTemqrdKzAns/AU9awDOENeGqTY
 GwoXZR+PdIh/KbDDmyBSy9ib067jvujCGhESkmuoGVJAGz/40a7MtJ08OQqq3en3+WBW
 8OCQ==
X-Gm-Message-State: APjAAAWPlwrAjEpgCAAQSAJQCbo46j5jw6jSxkek/uB16BcB7quvBfUL
 Ei48Ao4LiA96ShKF5W0u+RA=
X-Google-Smtp-Source: APXvYqyJkJ7F1ErECh+I0JdIkNaMGwrDrHcsz9xqB6or59dU/9w29jNYM1PjCwO9o26gmddW+2Iq6w==
X-Received: by 2002:aa7:8583:: with SMTP id w3mr1624496pfn.182.1571714051608; 
 Mon, 21 Oct 2019 20:14:11 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id q71sm16241606pjb.26.2019.10.21.20.14.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 20:14:10 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: nbd@nbd.name
Date: Tue, 22 Oct 2019 03:13:56 +0000
Message-Id: <20191022031356.73973-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_201413_453421_E1823067 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] toolchain: gcc: allow sanitizers when
 USE_GLIBC
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 package/libs/toolchain/Makefile | 172 ++++++++++++++++++++++++++++++++
 toolchain/gcc/final/Makefile    |   5 +-
 2 files changed, 176 insertions(+), 1 deletion(-)

diff --git a/package/libs/toolchain/Makefile b/package/libs/toolchain/Makefile
index a63746c448..c13e9e4928 100644
--- a/package/libs/toolchain/Makefile
+++ b/package/libs/toolchain/Makefile
@@ -138,6 +138,122 @@ define Package/libstdcpp/config
 endef
 
 
+define Package/libasan
+$(call Package/gcc/Default)
+  NAME:=libasan
+  TITLE:=Runtime library for AddressSanitizer in GCC
+  DEPENDS:=@USE_GLIBC +librt +libstdcpp
+  ABI_VERSION:=5
+endef
+
+define Package/libasan/config
+	menu "Configuration"
+	depends on EXTERNAL_TOOLCHAIN && PACKAGE_libasan
+
+	config LIBASAN_ROOT_DIR
+		string
+		prompt "libasan shared library base directory"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libasan
+		default TOOLCHAIN_ROOT  if !NATIVE_TOOLCHAIN
+		default "/"  if NATIVE_TOOLCHAIN
+
+	config LIBASAN_FILE_SPEC
+		string
+		prompt "libasan shared library files (use wildcards)"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libasan
+		default "./lib/libasan.so.*"
+
+	endmenu
+endef
+
+
+define Package/libtsan
+$(call Package/gcc/Default)
+  NAME:=libtsan
+  TITLE:=Runtime library for ThreadSanitizer in GCC
+  DEPENDS:=@USE_GLIBC +librt +libstdcpp
+  ABI_VERSION:=0
+endef
+
+define Package/libtsan/config
+	menu "Configuration"
+	depends on EXTERNAL_TOOLCHAIN && PACKAGE_libtsan
+
+	config LIBTSAN_ROOT_DIR
+		string
+		prompt "libtsan shared library base directory"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libtsan
+		default TOOLCHAIN_ROOT  if !NATIVE_TOOLCHAIN
+		default "/"  if NATIVE_TOOLCHAIN
+
+	config LIBTSAN_FILE_SPEC
+		string
+		prompt "libtsan shared library files (use wildcards)"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libtsan
+		default "./lib/libtsan.so.*"
+
+	endmenu
+endef
+
+
+define Package/liblsan
+$(call Package/gcc/Default)
+  NAME:=liblsan
+  TITLE:=Runtime library for LeakSanitizer in GCC
+  DEPENDS:=@USE_GLIBC +librt +libstdcpp
+  ABI_VERSION:=0
+endef
+
+define Package/liblsan/config
+	menu "Configuration"
+	depends on EXTERNAL_TOOLCHAIN && PACKAGE_liblsan
+
+	config LIBLSAN_ROOT_DIR
+		string
+		prompt "liblsan shared library base directory"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_liblsan
+		default TOOLCHAIN_ROOT  if !NATIVE_TOOLCHAIN
+		default "/"  if NATIVE_TOOLCHAIN
+
+	config LIBLSAN_FILE_SPEC
+		string
+		prompt "liblsan shared library files (use wildcards)"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_liblsan
+		default "./lib/liblsan.so.*"
+
+	endmenu
+endef
+
+
+define Package/libubsan
+$(call Package/gcc/Default)
+  NAME:=libubsan
+  TITLE:=Runtime library for UndefinedBehaviorSanitizer in GCC
+  DEPENDS:=@USE_GLIBC +librt +libstdcpp
+  ABI_VERSION:=1
+endef
+
+define Package/libubsan/config
+	menu "Configuration"
+	depends on EXTERNAL_TOOLCHAIN && PACKAGE_libubsan
+
+	config LIBUBSAN_ROOT_DIR
+		string
+		prompt "libubsan shared library base directory"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libubsan
+		default TOOLCHAIN_ROOT  if !NATIVE_TOOLCHAIN
+		default "/"  if NATIVE_TOOLCHAIN
+
+	config LIBUBSAN_FILE_SPEC
+		string
+		prompt "libubsan shared library files (use wildcards)"
+		depends on EXTERNAL_TOOLCHAIN && PACKAGE_libubsan
+		default "./lib/libubsan.so.*"
+
+	endmenu
+endef
+
+
 define Package/libc/Default
   SECTION:=libs
   CATEGORY:=Base system
@@ -413,6 +529,26 @@ ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
 	$(CP) $(TOOLCHAIN_DIR)/lib/libstdc++.so.* $(1)/usr/lib/
   endef
 
+  define Package/libasan/install
+	$(INSTALL_DIR) $(1)/lib
+	$(CP) $(TOOLCHAIN_DIR)/lib/libasan.so.* $(1)/lib/
+  endef
+
+  define Package/libtsan/install
+	$(INSTALL_DIR) $(1)/lib
+	$(CP) $(TOOLCHAIN_DIR)/lib/libtsan.so.* $(1)/lib/
+  endef
+
+  define Package/liblsan/install
+	$(INSTALL_DIR) $(1)/lib
+	$(CP) $(TOOLCHAIN_DIR)/lib/liblsan.so.* $(1)/lib/
+  endef
+
+  define Package/libubsan/install
+	$(INSTALL_DIR) $(1)/lib
+	$(CP) $(TOOLCHAIN_DIR)/lib/libubsan.so.* $(1)/lib/
+  endef
+
   define Package/glibc/install
 	$(CP) ./glibc-files/* $(1)/
 	rm -f $(1)/etc/localtime
@@ -550,6 +686,38 @@ else
 	exit 0
   endef
 
+  define Package/libasan/install
+	for file in $(call qstrip,$(CONFIG_LIBASAN_FILE_SPEC)); do \
+		$(INSTALL_DIR) $(1)/lib ; \
+		$(CP) $(call qstrip,$(CONFIG_LIBASAN_ROOT_DIR))/$$$$file $(1)/lib/ ; \
+	done ; \
+	exit 0
+  endef
+
+  define Package/libtsan/install
+	for file in $(call qstrip,$(CONFIG_LIBTSAN_FILE_SPEC)); do \
+		$(INSTALL_DIR) $(1)/lib ; \
+		$(CP) $(call qstrip,$(CONFIG_LIBTSAN_ROOT_DIR))/$$$$file $(1)/lib/ ; \
+	done ; \
+	exit 0
+  endef
+
+  define Package/liblsan/install
+	for file in $(call qstrip,$(CONFIG_LIBLSAN_FILE_SPEC)); do \
+		$(INSTALL_DIR) $(1)/lib ; \
+		$(CP) $(call qstrip,$(CONFIG_LIBLSAN_ROOT_DIR))/$$$$file $(1)/lib/ ; \
+	done ; \
+	exit 0
+  endef
+
+  define Package/libubsan/install
+	for file in $(call qstrip,$(CONFIG_LIBUBSAN_FILE_SPEC)); do \
+		$(INSTALL_DIR) $(1)/lib ; \
+		$(CP) $(call qstrip,$(CONFIG_LIBUBSAN_ROOT_DIR))/$$$$file $(1)/lib/ ; \
+	done ; \
+	exit 0
+  endef
+
   define Package/libc/install
 	for file in $(call qstrip,$(CONFIG_LIBC_FILE_SPEC)); do \
 		$(INSTALL_DIR) $(1)/lib ; \
@@ -623,6 +791,10 @@ $(eval $(call BuildPackage,libgcc))
 $(eval $(call BuildPackage,libatomic))
 $(eval $(call BuildPackage,libssp))
 $(eval $(call BuildPackage,libstdcpp))
+$(eval $(call BuildPackage,libasan))
+$(eval $(call BuildPackage,libtsan))
+$(eval $(call BuildPackage,liblsan))
+$(eval $(call BuildPackage,libubsan))
 $(eval $(call BuildPackage,libpthread))
 $(eval $(call BuildPackage,libthread-db))
 $(eval $(call BuildPackage,librt))
diff --git a/toolchain/gcc/final/Makefile b/toolchain/gcc/final/Makefile
index b815f677d6..0315b9d1f1 100644
--- a/toolchain/gcc/final/Makefile
+++ b/toolchain/gcc/final/Makefile
@@ -4,7 +4,6 @@ include ../common.mk
 
 GCC_CONFIGURE += \
 	--with-headers=$(TOOLCHAIN_DIR)/include \
-	--disable-libsanitizer \
 	--enable-languages=$(TARGET_LANGUAGES) \
 	--enable-shared \
 	--enable-threads \
@@ -12,6 +11,10 @@ GCC_CONFIGURE += \
 	--enable-lto \
 	--with-libelf=$(TOPDIR)/staging_dir/host
 
+ifndef CONFIG_USE_GLIBC
+  GCC_CONFIGURE += --disable-libsanitizer
+endif
+
 ifdef CONFIG_USE_MUSL
   GCC_MAKE += gcc_cv_libc_provides_ssp=yes
 endif

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
