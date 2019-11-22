Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F763106967
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:59:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA3wcSDO7e0bOVDOhAlfelhY7YFzRbNhdnWAJ1qAc+4=; b=jorWCRBu4PvBmH
	C9a9RYjMUZIcWEw63zf3WmUcrvna0hBtSbxLTitEIJORqtYWfPHAsIeJBCpN9YanuVH+vHMg4rLMP
	clIBXcppqsOfMXFXt0jbUeiaKRh3TchfwP1lW5+QYnWJ3y/B2VNoqcWF9xVBkBJBr8GuiU4OZrL+u
	63K/puPJP11kiyWbebawsauExRcRng9QAoP7qJ0R/37DpHHe9laH1hbmAznofjCc6eoqBCpBLkFXh
	qwqXBtaZATZa5lqwmYz65u0bc867Xig/GhMrttGl4QFK9DJyPXtFmESjNFindn94tJjmCadQWGLdg
	ieXdU64B13m8uEfo1ZJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5iq-0002C5-Dc; Fri, 22 Nov 2019 09:59:28 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fd-0006rg-N5
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:15 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 7289760011;
 Fri, 22 Nov 2019 09:56:01 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:52 +0100
Message-Id: <20191122095556.688191-8-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015609_935266_B6337B2E 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH packages 07/11] utils/policycoreutils: new
 package
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 utils/policycoreutils/Makefile | 60 ++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 utils/policycoreutils/Makefile

diff --git a/utils/policycoreutils/Makefile b/utils/policycoreutils/Makefile
new file mode 100644
index 000000000..ce3f68692
--- /dev/null
+++ b/utils/policycoreutils/Makefile
@@ -0,0 +1,60 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=policycoreutils
+PKG_VERSION:=2.9
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://github.com/SELinuxProject/selinux/releases/download/20190315
+PKG_HASH:=c53c344f28007b3c0742bd958751e9b5d2385898adeb8aec6281ae57342f0f7b
+PKG_INSTALL:=1
+HOST_BUILD_DEPENDS:=libsemanage/host
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/policycoreutils
+  SECTION:=utils
+  CATEGORY:=Utilities
+  DEPENDS:= +libsemanage +libcap-ng
+  TITLE:=SELinux policy utilities
+  URL:=http://selinuxproject.org/page/Main_Page
+endef
+
+define Package/policycoreutils/description
+	Policycoreutils is a collection of policy utilities
+	(originally the "core" set of utilities needed to use
+	SELinux, although it has grown a bit over time), which have
+	different dependencies.  sestatus, secon, run_init, and
+	newrole only use libselinux. load_policy and setfiles only
+	use libselinux and libsepol. semodule and semanage use
+	libsemanage (and thus bring in dependencies on libsepol and
+	libselinux as well). setsebool uses libselinux to make
+	non-persistent boolean changes (via the kernel interface)
+	and uses libsemanage to make persistent boolean changes.
+endef
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_MAKE_FLAGS += \
+	PREFIX=$(STAGING_DIR_HOSTPKG) \
+	SBINDIR=$(STAGING_DIR_HOSTPKG)/sbin \
+	ETCDIR=$(STAGING_DIR_HOSTPKG)/etc
+
+define Package/policycoreutils/install
+	$(INSTALL_DIR) $(1)/usr/bin
+	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
+	$(INSTALL_DIR) $(1)/usr/sbin
+	$(CP) $(PKG_INSTALL_DIR)/usr/sbin/* $(1)/usr/sbin/
+	$(INSTALL_DIR) $(1)/sbin
+	$(CP) $(PKG_INSTALL_DIR)/sbin/* $(1)/sbin/
+endef
+
+$(eval $(call HostBuild))
+$(eval $(call BuildPackage,policycoreutils))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
