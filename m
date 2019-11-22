Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC75106965
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:59:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ss4AbpT/E7A+vWv+0bdLO0QaChPCP4O0sCVH4Lk0qU=; b=V6NejhYpISggAc
	kjtTlQA86WLfDQ5EgOjmCS5hUQz3ghGizkzFHHiAPKmG2BWliwOACU4Ip1Aed+V2znxDtIUvOPXK3
	d6nysbsYAWjY3BpnPd+Pxhy9SMsDhcheg8Wddqaeljsz92bRkmpy1KFx9Z0EibOuOU54CD6xyKsDh
	cv9YKWu7uHGt7gW2jZ58WVyXuTTsJ0M2h4JESK9DrKIQaJIECYUQ3vRREUW8zwAqiRZqCgXyrEusJ
	dvWZm6VkpJBbbEUVcwaSwk0/M8vrdS2rtlAdQLDgCkym9R8kgf21aW934pk2CAoUOoPALHT8EvRlN
	MlXS9fynj8fhuRIC71Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5iN-0001cX-4N; Fri, 22 Nov 2019 09:58:59 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fd-0006rT-Ms
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:12 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 9A37260013;
 Fri, 22 Nov 2019 09:56:00 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:50 +0100
Message-Id: <20191122095556.688191-6-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015609_906363_A16989FA 
X-CRM114-Status: UNSURE (   8.48  )
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
Subject: [OpenWrt-Devel] [PATCH packages 05/11] libs/libcap-ng: new package
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
 libs/libcap-ng/Makefile | 53 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 libs/libcap-ng/Makefile

diff --git a/libs/libcap-ng/Makefile b/libs/libcap-ng/Makefile
new file mode 100644
index 000000000..5cf1f2499
--- /dev/null
+++ b/libs/libcap-ng/Makefile
@@ -0,0 +1,53 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=libcap-ng
+PKG_VERSION:=0.7.9
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=http://people.redhat.com/sgrubb/libcap-ng
+PKG_HASH:=4a1532bcf3731aade40936f6d6a586ed5a66ca4c7455e1338d1f6c3e09221328
+PKG_INSTALL:=1
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/libcap-ng
+  SECTION:=libs
+  CATEGORY:=Libraries
+  TITLE:=POSIX capabilities programming library
+  URL:=http://people.redhat.com/sgrubb/libcap-ng/
+endef
+
+define Package/libcap-ng/description
+	The libcap-ng library is intended to make programming with
+	posix capabilities much easier than the traditional libcap
+	library. It includes utilities that can analyse all currently
+	running applications and print out any capabilities and
+	whether or not it has an open ended bounding set.
+endef #'
+
+CONFIGURE_ARGS += --without-python
+CONFIGURE_VARS += ac_cv_prog_swig_found=no
+
+define Build/InstallDev
+	$(INSTALL_DIR) $(1)/usr/include
+	$(CP) $(PKG_INSTALL_DIR)/usr/include/* $(1)/usr/include/
+	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
+	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libcap-ng.pc $(1)/usr/lib/pkgconfig/
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/* $(1)/usr/lib/
+endef
+
+define Package/libcap-ng/install
+	$(INSTALL_DIR) $(1)/usr/lib
+	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libcap-ng.so.* $(1)/usr/lib/
+endef
+
+$(eval $(call BuildPackage,libcap-ng))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
