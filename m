Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A057106966
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:59:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPkwazyMIBrFf2KotAy9AI3RlZ11g/G09HwkDPNEFhE=; b=WYIhhbVw+iSmfc
	UC2C/9fO0BNd0xWt7fs8TQ3LJvX87L5L79WY/8fDVU+XizPcWtS6NUDh62nJZCBpMA2MOmbI1/LRV
	7v6EUJrXSt1BugM6KYq33FY8jp6JA2bCx+ySgBhPUA6NM+A5JTwGvIhY45u1XzQKpqCs/ykDQ+7ln
	vaDQIvS3Zm6wr4hRzA0qkDcP+8fNC1ce82e0HVDExFMA6xgwzToEDsOjjcjIAPG43tSoh9Z1cj9zz
	uP3VNpcJaHOA6UCAeL5ZR/FUYLKHGgKHjHgg6XnRh/B94PqLoviP7YHsI9OkrAAR18E1KTSFLoiDV
	LxudH/WpMrkLYUOZM/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5iZ-0001w6-Tk; Fri, 22 Nov 2019 09:59:11 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5ff-0006sl-MC
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:15 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 0E0A61C0007;
 Fri, 22 Nov 2019 09:56:00 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:51 +0100
Message-Id: <20191122095556.688191-7-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015611_914545_1EC68B96 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH packages 06/11] libs/libsemanage: new package
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
 libs/libsemanage/Makefile | 70 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 libs/libsemanage/Makefile

diff --git a/libs/libsemanage/Makefile b/libs/libsemanage/Makefile
new file mode 100644
index 000000000..75aea0305
--- /dev/null
+++ b/libs/libsemanage/Makefile
@@ -0,0 +1,70 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=libsemanage
+PKG_VERSION:=2.9
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://github.com/SELinuxProject/selinux/releases/download/20190315
+PKG_HASH:=2576349d344492e73b468059767268dec1dabd8c35f3c7222c3ec2448737bc1c
+HOST_BUILD_DEPENDS:=audit/host libselinux/host bzip2/host
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/libsemanage
+  SECTION:=libs
+  DEPENDS:=+libaudit +libselinux +libbz2
+  CATEGORY:=Libraries
+  TITLE:=SELinux policy management library
+  URL:=http://selinuxproject.org/page/Main_Page
+endef
+
+define Package/libsemanage/description
+	libsemanage is the policy management library. It uses
+	libsepol for binary policy manipulation and libselinux for
+	interacting with the SELinux system. It also exec's helper
+	programs for loading policy and for checking whether the
+	file_contexts configuration is valid (load_policy and
+	setfiles from policycoreutils) presently, although this may
+	change at least for the bootstrapping case (for rpm).
+endef #'
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_MAKE_FLAGS += \
+	PREFIX=$(STAGING_DIR_HOSTPKG)
+
+define Build/Configure
+endef
+
+define Build/Compile
+	$(call Build/Compile/Default,all)
+endef
+
+define Build/Install
+	$(call Build/Install/Default,install)
+endef
+
+define Build/InstallDev
+	$(INSTALL_DIR) $(1)/usr/include
+	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
+	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
+	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libsemanage.pc $(1)/usr/lib/pkgconfig/
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
+endef
+
+define Package/libsemanage/install
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsemanage.so.* $(1)/usr/lib/
+endef
+
+$(eval $(call HostBuild))
+$(eval $(call BuildPackage,libsemanage))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
