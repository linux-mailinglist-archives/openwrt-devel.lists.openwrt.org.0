Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7BA467A0
	for <lists+openwrt-devel@lfdr.de>; Fri, 14 Jun 2019 20:36:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oc9FeOfM6UxRslkQLLT7KZ0qcyjDvzpZPlFIfyjb5Fw=; b=fnsPMlpJqseHgx
	8IaGSR5eSl173B7D2ae6iCqIIgNKcBaQHKNSZe8IlRUnNulgUiVzKLMvmJJ76O2eJNp1njeOaqH1c
	q92a8V7xiPGo2uP9FVrTxh/2NR2cimiftOfLdz9E+I3CYRuWZ1ic2V6c6MW7ijykpdPldYIsooibY
	y9MRR67fxwwmgD1qJUCuAJOTMUQaolGe6BtHgqSmZJq70gHnyXTIqqOYv+4Mu6KBUSr27PJw/0J+e
	J1kxUn0XhV82yhKI6/WDB1/pUMq8r4trzD45sqTTFMeAr6n6gBA4OVjPYjcSwMlXgf7jYSx+MZW5/
	Q9zlZh5v3U4FGir6VcSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbr3L-00026p-CO; Fri, 14 Jun 2019 18:35:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbr39-00026Y-6d
 for openwrt-devel@lists.openwrt.org; Fri, 14 Jun 2019 18:35:44 +0000
Received: by mail-pg1-x543.google.com with SMTP id f21so2020351pgi.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 14 Jun 2019 11:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G6E0Jg+YUh91ac9d6+KJr8rECudnAIfb+StWl91gmc0=;
 b=jXz33mpvjsmvgls4O1s9gbSJGzB5ilXtCiWKSdFqntXJ0eUtlbtXnI6kiZ8ONU5CaC
 wNtqlLH0upfsaCXQeV8H2hZEopASPRgn9nOLaepBWHIw9eywvBsq5UbxSisqMiu/AJyR
 R9mX92HMTR6qV5F1N7UEPHWRVlJJyeHsut5hEk3tx7se8zyhld4f/+WfYpXGADaTR+0G
 r5o6IiTzGzwJzbfpNW6yuw0HJlhEQ2hge9s63ew+VtUyLzd5Y3QSeoIutIfPXDPZ6GKc
 3BD/3H5gSJ3sMrygHpQYtd3kgKdP2tmx/Hawn7sZTVDOcDeYpMUoayriB0E0h8Qvzxpx
 qwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=G6E0Jg+YUh91ac9d6+KJr8rECudnAIfb+StWl91gmc0=;
 b=j1eKgu/IsqmHZbTop9qI/avKdvf8lUMPYHEHVqUZhuJQeX7s6JioSg6XuM6XD81B5y
 FVFGe+kwPZLZFCkbmgaxiUdwk6YKCdIxL4aH1EHCJWtbFDZlGlcQM4Cug9alqIPVqsY3
 MxQsKCxSsN454qrh2N1mGglz2rhkiv6t7ev8j1CLzXS/2Rvq2YG2GxVTyiiC6jc/Dn4G
 7GeMDofDfruLym60EHlYmm9cduny8yUVIBWBHdLNhY2MCHBWWUag2gprt/8wUYXxmEPf
 IUqUMU5/n+2QL7VEJFmb6nUCgrcCl4dfOkKVe/fNWK73R5QDyjvxRSvH4JMEb1NSezoU
 p/zw==
X-Gm-Message-State: APjAAAUlWCfUwklU8YCZPAuL0iqcLvT+dQvzMS4aOjcEmjCOOMUZdpdj
 Vjc8Oe9/IAFA7WQ310WFMLyFcMNSAcE=
X-Google-Smtp-Source: APXvYqxrd4iTyAlWgx8mPMK2w8at3Zg7kI27No5Q7RVY2pQskdO924a22kR+KSjbBWtWezbWNc+YLw==
X-Received: by 2002:a63:7009:: with SMTP id l9mr2825215pgc.162.1560537340826; 
 Fri, 14 Jun 2019 11:35:40 -0700 (PDT)
Received: from computer.lan (138019059130.ctinets.com. [138.19.59.130])
 by smtp.gmail.com with ESMTPSA id a24sm3388775pgb.85.2019.06.14.11.35.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:35:40 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 15 Jun 2019 02:35:29 +0800
Message-Id: <20190614183534.14768-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_113543_273044_B3BB287F 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/6] build: Add auto file tracking /
 uninstall for Host/Install
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds automatic file tracking and uninstallation (similar to that
for Build/InstallDev) for files installed by Host/Install.

A path to a staging directory will be passed to Host/Install. If files
are placed in that staging directory, they will be tracked and installed
into $(HOST_BUILD_PREFIX) (either $(STAGING_DIR_HOST) or
$(STAGING_DIR_HOSTPKG), depend on the package/tool).

If Host/Install doesn't use the staging directory and install to
$(STAGING_DIR_HOST) / $(STAGING_DIR_HOSTPKG) directly, no error is
raised.

This also updates Host/Install/Default to handle the staging directory,
combined with setting DESTDIR in a new HOST_MAKE_INSTALL_FLAGS variable.

Host/Install/Default now also handles a second parameter, allowing a
different install target to be specified (similar to
Build/Install/Default).

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 include/host-build.mk | 52 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 47 insertions(+), 5 deletions(-)

diff --git a/include/host-build.mk b/include/host-build.mk
index 827ea6bbfb..ce2fcc26eb 100644
--- a/include/host-build.mk
+++ b/include/host-build.mk
@@ -30,6 +30,20 @@ HOST_STAMP_BUILT:=$(HOST_BUILD_DIR)/.built
 HOST_BUILD_PREFIX?=$(if $(IS_PACKAGE_BUILD),$(STAGING_DIR_HOSTPKG),$(STAGING_DIR_HOST))
 HOST_STAMP_INSTALLED:=$(HOST_BUILD_PREFIX)/stamp/.$(PKG_NAME)_installed
 
+HOST_STAGING_FILES_LIST:=$(PKG_NAME).list
+HOST_STAGING_DIR:=$(TMP_DIR)/$(if $(IS_PACKAGE_BUILD),hostpkg,host)-stage-$(PKG_NAME)
+
+define HostCleanStaging
+	rm -f $(HOST_STAMP_INSTALLED)
+	@-(\
+		if [ -f $(HOST_BUILD_PREFIX)/packages/$(HOST_STAGING_FILES_LIST) ]; then \
+			$(SCRIPT_DIR)/clean-package.sh \
+				"$(HOST_BUILD_PREFIX)/packages/$(HOST_STAGING_FILES_LIST)" \
+				"$(HOST_BUILD_PREFIX)"; \
+		fi; \
+	)
+endef
+
 override MAKEFLAGS=
 
 include $(INCLUDE_DIR)/autotools.mk
@@ -77,6 +91,10 @@ HOST_MAKE_VARS = \
 
 HOST_MAKE_FLAGS =
 
+HOST_MAKE_INSTALL_FLAGS = \
+	$(HOST_MAKE_FLAGS) \
+	DESTDIR="$(HOST_INSTALL_DIR)"
+
 HOST_CONFIGURE_CMD = $(BASH) ./configure
 
 ifeq ($(HOST_OS),Darwin)
@@ -112,11 +130,17 @@ define Host/Compile
 endef
 
 define Host/Install/Default
-	$(call Host/Compile/Default,install)
+	+$(HOST_MAKE_VARS) \
+	$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR) \
+		$(HOST_MAKE_INSTALL_FLAGS) \
+		$(if $(2),$(2),install)
+	$(if $(1),
+		$(CP) $(HOST_INSTALL_DIR)/$(HOST_BUILD_PREFIX)/* $(1)/
+	)
 endef
 
 define Host/Install
-  $(call Host/Install/Default,$(HOST_BUILD_PREFIX))
+  $(call Host/Install/Default,$(1),)
 endef
 
 
@@ -169,8 +193,25 @@ ifndef DUMP
 
   $(call Host/Exports,$(HOST_STAMP_INSTALLED))
   $(HOST_STAMP_INSTALLED): $(HOST_STAMP_BUILT) $(if $(FORCE_HOST_INSTALL),FORCE)
-		$(call Host/Install,$(HOST_BUILD_PREFIX))
-		$(foreach hook,$(Hooks/HostInstall/Post),$(call $(hook))$(sep))
+		rm -rf $(HOST_STAGING_DIR)
+		mkdir -p $(HOST_STAGING_DIR) $(HOST_BUILD_PREFIX)/packages
+		$(call Host/Install,$(HOST_STAGING_DIR))
+		$(foreach hook,$(Hooks/HostInstall/Post),\
+			$(call $(hook),$(HOST_STAGING_DIR))$(sep)\
+		)
+		if [ -f $(HOST_BUILD_PREFIX)/packages/$(HOST_STAGING_FILES_LIST) ]; then \
+			$(SCRIPT_DIR)/clean-package.sh \
+				"$(HOST_BUILD_PREFIX)/packages/$(HOST_STAGING_FILES_LIST)" \
+				"$(HOST_BUILD_PREFIX)"; \
+		fi
+		if [ -z "$$$$(find $(HOST_STAGING_DIR) -maxdepth 0 -type d -empty)" ]; then \
+			(cd $(HOST_STAGING_DIR); find ./ > $(HOST_STAGING_DIR).files); \
+			$(call locked, \
+				mv $(HOST_STAGING_DIR).files $(HOST_BUILD_PREFIX)/packages/$(HOST_STAGING_FILES_LIST) && \
+				$(CP) $(HOST_STAGING_DIR)/* $(HOST_BUILD_PREFIX)/ \
+			,host-staging-dir); \
+		fi
+		rm -rf $(HOST_STAGING_DIR)
 		mkdir -p $$(shell dirname $$@)
 		touch $(HOST_STAMP_BUILT)
 		touch $$@
@@ -193,9 +234,10 @@ ifndef DUMP
 	rm -rf $(HOST_BUILD_DIR) $(HOST_STAMP_BUILT)
 
   host-clean: host-clean-build
+	$(HostCleanStaging)
 	$(call Host/Clean)
 	$(call Host/Uninstall)
-	rm -rf $(HOST_STAMP_INSTALLED)
+	rm -f $(HOST_BUILD_PREFIX)/packages/$(HOST_STAGING_FILES_LIST)
 
     ifneq ($(CONFIG_AUTOREMOVE),)
       host-compile:
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
