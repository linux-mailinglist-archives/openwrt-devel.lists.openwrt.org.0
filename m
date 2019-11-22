Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 712A810696A
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 11:00:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=soWzrv8M+Yyfsa46ontkceuNFIM3wEMjDPfppVQbYds=; b=U8V0Oj0J/k1aWe
	efpEpuwx5vhAzDMPf4FDG8qpU6YIr1ckslxmG5YB6eSiaWwoJUFUyQ1EK112PYJnmMYR0d3ajpstH
	ig6+uYuRXTnKn1W2MWuWQkfl20bO/RZ21gT+SaOkjWBX5IdA9K5ajYr2mZjUH3lsltdc3ZqwRcE6e
	jYBTdtzbGnP7AwncJ00JFcjGincfH4EyQTlb8q50EAY0fiemPpOx+ub2eC5n+w5pmvvduEQuCK6fL
	nV+/AheTn/a8Gz1nYybRl08bDS5w7TFqJ18dBqV6C9JKjx74zC2chtJtoltHVSZ/Glyq9P7krd9cy
	ZCpHzoaBVG7QvbnD4Dgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5jL-0002i8-T9; Fri, 22 Nov 2019 09:59:59 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5ff-0006t6-Lq
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:15 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 111151C000B;
 Fri, 22 Nov 2019 09:56:02 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:55 +0100
Message-Id: <20191122095556.688191-11-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015611_901935_4FDE0535 
X-CRM114-Status: UNSURE (   7.73  )
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
Subject: [OpenWrt-Devel] [PATCH packages 10/11] libs/libselinux: add support
 for building the Python bindings
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
 libs/libselinux/Makefile | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/libs/libselinux/Makefile b/libs/libselinux/Makefile
index 30e50a9ba..08b43f0f7 100644
--- a/libs/libselinux/Makefile
+++ b/libs/libselinux/Makefile
@@ -12,11 +12,13 @@ PKG_RELEASE:=1
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
 PKG_SOURCE_URL:=https://github.com/SELinuxProject/selinux/releases/download/20190315
 PKG_HASH:=1bccc8873e449587d9a2b2cf253de9b89a8291b9fbc7c59393ca9e5f5f4d2693
+PKG_BUILD_DEPENDS:=PACKAGE_python-libselinux:python PACKAGE_python-libselinux:swig/host
 HOST_BUILD_DEPENDS:=libsepol/host pcre/host
 
 PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
 
 include $(INCLUDE_DIR)/package.mk
+include ../../lang/python/python-package.mk
 
 define Package/libselinux
   SECTION:=libs
@@ -26,6 +28,14 @@ define Package/libselinux
   URL:=http://selinuxproject.org/page/Main_Page
 endef
 
+define Package/python-libselinux
+  TITLE:=Python bindings sur the runtime SELinux library
+  SUBMENU:=Python
+  SECTION:=lang
+  CATEGORY:=Languages
+  DEPENDS:=+python +libselinux
+endef
+
 define Package/libselinux/description
 	libselinux is the runtime SELinux library that provides
 	interfaces (e.g. library functions for the SELinux kernel
@@ -51,14 +61,28 @@ $(eval $(call HostBuild))
 
 MAKE_FLAGS += \
 	FTS_LDLIBS=-lfts \
-	SHLIBDIR=/usr/lib
+	SHLIBDIR=/usr/lib \
+	PYTHON=$(PYTHON) \
+	PYINC="-I $(PYTHON_INC_DIR)"
+
+ifdef CONFIG_PACKAGE_python-libselinux
+  define Build/Compile/python-libselinux
+	$(call Build/Compile/Default,swigify pywrap)
+  endef
+
+  define Build/Install/python-libselinux
+	$(call Build/Install/Default,install-pywrap)
+  endef
+endif
 
 define Build/Compile
 	$(call Build/Compile/Default,all)
+	$(Build/Compile/python-libselinux)
 endef
 
 define Build/Install
 	$(call Build/Install/Default,install)
+	$(Build/Install/python-libselinux)
 endef
 
 define Build/InstallDev
@@ -76,3 +100,5 @@ define Package/libselinux/install
 endef
 
 $(eval $(call BuildPackage,libselinux))
+$(eval $(call PyPackage,python-libselinux))
+$(eval $(call BuildPackage,python-libselinux))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
