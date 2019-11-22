Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DBE10695E
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZT8GOeh5xbuupn/jwz2wi1KgfhGfN3hCLWY1U5SU3I=; b=OcZbW4fxeeeaPN
	ATaM+91Urb1fIlI8NFBE+rDACRUTbMBxq8a+IDPzHi1NkpgvuAS/ioxhlsPveE9I1ex6MQOqdGk+A
	8jcNcnKBz6RVxVATLNiLtc6UgFGrwdm9xwGk+QkivMwmX656h5rjyBdpTdDqYnbr4yIKIq2mp8MvP
	PM5cthYo5MOJl1paUtgnUAN5La2P2ukUD+5dFaQFXs0TjhbVbgdeEBOM+lbp8grcinBsmrE18NUMC
	+/K6azFDuxNqPrE7H04XsCpTrWzfw0M0P/ZF5X3bgvKR1/Lj+Y2IAc2Tb/OUQjFVSeQcbCy25jnrV
	jLnGhoqXtp5a9Xgv/Wdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5hN-0000Hg-OR; Fri, 22 Nov 2019 09:57:57 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fV-0006k6-3g
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:03 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5A736FF80A;
 Fri, 22 Nov 2019 09:55:59 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:47 +0100
Message-Id: <20191122095556.688191-3-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015601_321460_8FDBD696 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH packages 02/11] libs/libsepol: new package
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
 libs/libsepol/Makefile | 65 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 libs/libsepol/Makefile

diff --git a/libs/libsepol/Makefile b/libs/libsepol/Makefile
new file mode 100644
index 000000000..225f74996
--- /dev/null
+++ b/libs/libsepol/Makefile
@@ -0,0 +1,65 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=libsepol
+PKG_VERSION:=2.9
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://github.com/SELinuxProject/selinux/releases/download/20190315
+PKG_HASH:=a34b12b038d121e3e459b1cbaca3c9202e983137819c16baf63658390e3f1d5d
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/libsepol
+  SECTION:=libs
+  CATEGORY:=Libraries
+  TITLE:=SELinux binary policy manipulation library
+  URL:=http://selinuxproject.org/page/Main_Page
+endef
+
+define Package/libsepol/description
+	Libsepol is the binary policy manipulation library. It doesn't
+	depend upon or use any of the other SELinux components.
+endef #'
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_MAKE_FLAGS += \
+	PREFIX=$(STAGING_DIR_HOSTPKG) \
+	SHLIBDIR=$(STAGING_DIR_HOSTPKG)/lib
+
+$(eval $(call HostBuild))
+
+MAKE_FLAGS += \
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
+	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libsepol.pc $(1)/usr/lib/pkgconfig/
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
+endef
+
+define Package/libsepol/install
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsepol.so.* $(1)/usr/lib/
+endef
+
+$(eval $(call BuildPackage,libsepol))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
