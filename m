Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AB3106963
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:58:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gjoyUkzFsGQPnla9REdkU1qCVg8zcS7GZ+KrW33KO0=; b=oGYX5hkv+ewrE2
	7nmfop+eMZPuS7sOwVb0fbgmNeY0riqaVXPBSnWUWkjXYZu0KWfFf2LAQWbtCRQfT/Cam3Pgh0HL4
	/bir0R7kr47/uu0mP9sIR9cSFXtdUw4quBrjoI4AXUYZJu/CMv3f26lOtq9VJRK1yexLtCqC9yPLr
	oWLUmLOPBeYHPB4qcLotPgxl5PtD/165A1Nuu/NruBKvrF7TW6qVDhKbSuKWFRJeuTtRIoNVz75D8
	eTPKZTwBYHLvAHoiVcu+RDGN72R53RZEVYUsedRB52LIiCDoakMgEMpxNYt3aHeH1hCUI0nIhlzMO
	kcHfNHkstvnPVKC0MlHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5hy-00018m-Ox; Fri, 22 Nov 2019 09:58:34 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fd-0006rU-Me
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:11 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id BF32B6000C;
 Fri, 22 Nov 2019 09:55:59 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:48 +0100
Message-Id: <20191122095556.688191-4-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015609_927025_7D20B9D6 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH packages 03/11] libs/libselinux: new package
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
 libs/libselinux/Makefile | 78 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 libs/libselinux/Makefile

diff --git a/libs/libselinux/Makefile b/libs/libselinux/Makefile
new file mode 100644
index 000000000..30e50a9ba
--- /dev/null
+++ b/libs/libselinux/Makefile
@@ -0,0 +1,78 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=libselinux
+PKG_VERSION:=2.9
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://github.com/SELinuxProject/selinux/releases/download/20190315
+PKG_HASH:=1bccc8873e449587d9a2b2cf253de9b89a8291b9fbc7c59393ca9e5f5f4d2693
+HOST_BUILD_DEPENDS:=libsepol/host pcre/host
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/libselinux
+  SECTION:=libs
+  DEPENDS:=+libsepol +libpcre +musl-fts +@KERNEL_SECURITY +@KERNEL_SECURITY_NETWORK +@KERNEL_SECURITY_SELINUX
+  CATEGORY:=Libraries
+  TITLE:=Runtime SELinux library
+  URL:=http://selinuxproject.org/page/Main_Page
+endef
+
+define Package/libselinux/description
+	libselinux is the runtime SELinux library that provides
+	interfaces (e.g. library functions for the SELinux kernel
+	APIs like getcon(), other support functions like
+	getseuserbyname()) to SELinux-aware applications. libselinux
+	may use the shared libsepol to manipulate the binary policy
+	if necessary (e.g. to downgrade the policy format to an
+	older version supported by the kernel) when loading policy.
+endef
+
+include $(INCLUDE_DIR)/host-build.mk
+
+# Needed to link libselinux utilities, which link against
+# libselinux.so, which indirectly depends on libpcre.so, installed in
+# $(STAGING_DIR_HOSTPKG).
+HOST_LDFLAGS += -Wl,-rpath="$(STAGING_DIR_HOSTPKG)/lib"
+
+HOST_MAKE_FLAGS += \
+	PREFIX=$(STAGING_DIR_HOSTPKG) \
+	SHLIBDIR=$(STAGING_DIR_HOSTPKG)/lib
+
+$(eval $(call HostBuild))
+
+MAKE_FLAGS += \
+	FTS_LDLIBS=-lfts \
+	SHLIBDIR=/usr/lib
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
+	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libselinux.pc $(1)/usr/lib/pkgconfig/
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
+endef
+
+define Package/libselinux/install
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libselinux.so.* $(1)/usr/lib/
+endef
+
+$(eval $(call BuildPackage,libselinux))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
