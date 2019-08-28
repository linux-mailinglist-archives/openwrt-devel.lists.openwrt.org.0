Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CE0A0BB8
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 22:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qTgkekR+6Xup1fbON68cgq7tgZ55BtWX6Cij9GnWDOA=; b=sFXBieu15RozWE
	CaBdkz+fzcRjkJ2vY7l/kBACBDRzK9/NJHPhB2AYQ2X2oVrW3dcRwiQ4EYLFVFgkvZLsUxWc69DiK
	dw9IKc5K6xSycUNL+8JB6mEFw1l8P2H57pIi27NK/cSoJ9zQezIVlKEvl8abyj6Ov4A7n5m0qNZ+T
	R91rq3UkzDDyituofomuAScDcqL9KKGkWFcw/NfSZcDQ066zVqCUV/n7CRMQPiAx6G1WhtSEKTH++
	bBQghJR2yhNqEsB9Rs+jCbCtI2i7K74UIH07aTqWMzcQEiawLc3/k5Cr5M2K/OzetTK/b0AY8HAam
	hKGMhMyTK92RUCprN1eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34mH-00064m-6R; Wed, 28 Aug 2019 20:42:49 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34m8-00064C-Uf
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 20:42:42 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F063C009C506B835A5482A1.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f06:3c00:9c50:6b83:5a54:82a1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 400591FAF8;
 Wed, 28 Aug 2019 22:42:34 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 28 Aug 2019 22:42:24 +0200
Message-Id: <20190828204224.6786-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_134241_134612_F102DE10 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] lua: create lua symlink for host
 installation
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
Cc: rafal@milecki.pl
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since the binaries for both lua as well as lua5.3 contain the version
number, invocations of the "lua" binary are failing, as it's not created
anymore for the host package.

Fixes: fe59b46 ("lua: include version number in installed files")
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 package/utils/lua/Makefile    | 4 +++-
 package/utils/lua5.3/Makefile | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/package/utils/lua/Makefile b/package/utils/lua/Makefile
index a2870448bd..e376e8c472 100644
--- a/package/utils/lua/Makefile
+++ b/package/utils/lua/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=lua
 PKG_VERSION:=5.1.5
-PKG_RELEASE:=5
+PKG_RELEASE:=6
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=http://www.lua.org/ftp/ \
@@ -133,6 +133,8 @@ define Host/Install
 	$(MAKE) -C $(HOST_BUILD_DIR) \
 		INSTALL_TOP="$(STAGING_DIR_HOSTPKG)" \
 		install
+
+	$(LN) $(STAGING_DIR_HOSTPKG)/bin/lua5.1 $(STAGING_DIR_HOSTPKG)/bin/lua
 endef
 
 define Build/InstallDev
diff --git a/package/utils/lua5.3/Makefile b/package/utils/lua5.3/Makefile
index c9e9bebb1a..7f835dd41f 100644
--- a/package/utils/lua5.3/Makefile
+++ b/package/utils/lua5.3/Makefile
@@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
 
 PKG_NAME:=lua
 PKG_VERSION:=5.3.5
-PKG_RELEASE:=4
+PKG_RELEASE:=5
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=http://www.lua.org/ftp/ \
@@ -118,6 +118,8 @@ define Host/Install
 	$(MAKE) -C $(HOST_BUILD_DIR) \
 		INSTALL_TOP="$(STAGING_DIR_HOSTPKG)" \
 		install
+
+	$(LN) $(STAGING_DIR_HOSTPKG)/bin/lua5.3 $(STAGING_DIR_HOSTPKG)/bin/lua
 endef
 
 define Build/InstallDev
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
