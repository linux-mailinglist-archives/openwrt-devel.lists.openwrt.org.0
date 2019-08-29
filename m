Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A32A283D
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 22:43:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rtFJnaz4KGAdUXl5/uQzW4BA0AX0p0FhznDSqATDHkg=; b=Rn5l1z0HOLUDv3
	L5h6nsn4hf3Fx0dyd9dVq2TIMmWRnKwMOPisTJ00Dir6b6QE6Lac9PV3TOfKG5FxflrMKVVyms2yF
	VQYmPsTCmU29XIV9hHOE2mJOPIxPdU6CrMeMtdjVkfYUkcXkTFq43Hjn7ebYEIVDUB1Gr5z0gpbX4
	Hmr7ChfmsnvfsQFDP7yMwKdEbIn3UgXKCizCobLt4ti2mfKhYuX4ScXXXMeD6POl0WbG05KUPXJgf
	BUGSo0Yp5F5CNoNCBKC1k8iekSTwkX3mYPGRYf8q3TNXVDlN80GHGfbNRYu3CwbXBYlOvmlSxcGgN
	wbbPw2omrjHzQaFlgZ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3RG3-0004TL-9M; Thu, 29 Aug 2019 20:43:03 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3RFu-0004Sl-Pm
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 20:42:56 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F158400CB70285F6C67B4FA.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f15:8400:cb70:285f:6c67:b4fa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id E5A771FAF8;
 Thu, 29 Aug 2019 22:42:48 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 29 Aug 2019 22:42:42 +0200
Message-Id: <20190829204242.21349-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_134254_988240_112F9DE6 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 1/3] lua: create lua symlink for host
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
v2:
 - drop symlink creation for lua5.3

 package/utils/lua/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

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
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
