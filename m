Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3F5106969
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmukPDYm7z+RzfuFgOV0mZXCX7jAlB9/ftJ4cHw3NxI=; b=uSrWLjKCojwiK6
	skHujUxZpojgCsKFgar0S0wA+jtluIifK6ZgNz6Bv9gG6M5o5xt/+tb/BMtEDGhOaZrgBL4Lb8KRC
	QfJldRIQj7W6/ssSalIzT6yG4tGOiBLPA4qujvMlxmOj/ZnBtHkwfD4dGGRc13Dg7wzjICEZvwrDI
	TDeNYtF8N7dRvMjK0dyn29Z6ZA3CibhBV0R9Rg3JelcKH9gqJVVx1BaGxBg/y0YWA8aY0pKUEvxgw
	eNFVu+6LW1yXVnTzObfna20WkhXDtrz9LVDHQNfI7XOtgDPpOWseEuw3YJ5JKb89JkJyULhtVVLkL
	j1liK4/9e8YQzhrFjwSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5j7-0002RV-0b; Fri, 22 Nov 2019 09:59:45 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fe-0006se-6u
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:14 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 7FA046001C;
 Fri, 22 Nov 2019 09:56:02 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:54 +0100
Message-Id: <20191122095556.688191-10-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015610_557469_524D7129 
X-CRM114-Status: GOOD (  12.96  )
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
Subject: [OpenWrt-Devel] [PATCH packages 09/11] admin/refpolicy: new package
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
 admin/refpolicy/Makefile             | 78 ++++++++++++++++++++++++++++
 admin/refpolicy/files/selinux-config |  7 +++
 2 files changed, 85 insertions(+)
 create mode 100644 admin/refpolicy/Makefile
 create mode 100644 admin/refpolicy/files/selinux-config

diff --git a/admin/refpolicy/Makefile b/admin/refpolicy/Makefile
new file mode 100644
index 000000000..fcf13cedf
--- /dev/null
+++ b/admin/refpolicy/Makefile
@@ -0,0 +1,78 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=refpolicy
+PKG_VERSION:=2.20190201
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
+PKG_SOURCE_URL:=https://github.com/SELinuxProject/refpolicy/releases/download/RELEASE_2_20190201
+PKG_HASH:=ed620dc91c4e09eee6271b373f7c61a364a82ea57bd2dc86ca1f7075304e2843
+PKG_INSTALL:=1
+PKG_BUILD_DEPENDS:=checkpolicy/host policycoreutils/host
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+TAR_OPTIONS:=--transform='s%^refpolicy%$(PKG_NAME)-$(PKG_VERSION)%' -xf -
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/refpolicy
+  SECTION:=admin
+  CATEGORY:=Administration
+  TITLE:=SELinux reference policy
+  URL:=http://selinuxproject.org/page/Main_Page
+  DEPENDS:=+@TARGET_ROOTFS_NEEDS_XATTR
+endef
+
+define Package/refpolicy/description
+	The SELinux Reference Policy project (refpolicy) is a
+	complete SELinux policy that can be used as the system
+	policy for a variety of systems and used as the basis for
+	creating other policies. Reference Policy was originally
+	based on the NSA example policy, but aims to accomplish many
+	additional goals.
+
+	The current refpolicy does not fully support OpenWRT and
+	needs modifications to work with the default system file
+	layout. These changes should be added as patches to the
+	refpolicy that modify a single SELinux policy.
+
+	The refpolicy works for the most part in permissive
+	mode. Only the basic set of utilities are enabled in the
+	example policy config and some of the pathing in the
+	policies is not correct.  Individual policies would need to
+	be tweaked to get everything functioning properly.
+endef
+
+# Yes, we want CC=$(HOSTCC) because the only code that checkpolicy
+# builds is a small host tool that gets run as part of the build
+# process.
+MAKE_FLAGS += \
+	TEST_TOOLCHAIN=$(STAGING_DIR_HOSTPKG) \
+	BINDIR=/bin \
+	SBINDIR=/sbin \
+	CC=$(HOSTCC) \
+	CFLAGS=$(HOST_CFLAGS)
+
+define Build/Configure
+	$(SED) "/MONOLITHIC/c\MONOLITHIC = y" $(PKG_BUILD_DIR)/build.conf
+	$(SED) "/NAME/c\NAME = targeted" $(PKG_BUILD_DIR)/build.conf
+	$(call Build/Compile/Default,conf)
+endef
+
+define Package/refpolicy/conffiles
+/etc/selinux/config
+endef
+
+define Package/refpolicy/install
+	$(INSTALL_DIR) $(1)/etc/selinux
+	$(CP) $(PKG_INSTALL_DIR)/etc/selinux/* $(1)/etc/selinux/
+	$(CP) ./files/selinux-config $(1)/etc/selinux/config
+endef
+
+$(eval $(call BuildPackage,refpolicy))
diff --git a/admin/refpolicy/files/selinux-config b/admin/refpolicy/files/selinux-config
new file mode 100644
index 000000000..2ae174d29
--- /dev/null
+++ b/admin/refpolicy/files/selinux-config
@@ -0,0 +1,7 @@
+# This file controls the state of SELinux on the system.
+# SELINUX= can take one of these three values:
+#     enforcing - SELinux security policy is enforced.
+#     permissive - SELinux prints warnings instead of enforcing.
+#     disabled - No SELinux policy is loaded.
+SELINUX=permissive
+SELINUXTYPE=targeted
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
