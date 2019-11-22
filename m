Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87AD10696C
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 11:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3EDjhREY6rnj4TQ0EoiQAH8BO+7PACNsdKnsLA2rpw=; b=YL5MFhF8Orv8QD
	y4YOWuP1v+OeGbrb9SCaRaFH7KKGcZHJABZ6g7ps7KUa++mIppUAwv2CR1pjpF9YlJLhLzynXO1IW
	/A7Dtvfb3mqHWe8Ot5Wp1UR1lz4YO9z7XDb8f+AJrgk5lb+JcXKvuZ+tG/ZNkiiuU2jYkrrS072UM
	SpKA2E/JFEcpZNg2L5mdqHymiWpeCpZJEsZyGAESlZ7XvAspTgaaPscErU9LfafxdbMlM0HKSrAsX
	egUqmEeh13RpwrSkbyqYDjeC3JBoCT8njrjWS+5UYRUxy9L/xvrx267LLtErpC87Dv/SbSZhYqzLY
	lQstNQaofaNWt29xtK2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5jg-0002zN-IZ; Fri, 22 Nov 2019 10:00:20 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5ff-0006sk-Lq
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:15 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E06291C000E;
 Fri, 22 Nov 2019 09:56:01 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:53 +0100
Message-Id: <20191122095556.688191-9-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
References: <20191122095556.688191-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015611_851316_FB272D1F 
X-CRM114-Status: UNSURE (   7.78  )
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
Subject: [OpenWrt-Devel] [PATCH packages 08/11] utils/checkpolicy: new
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
 utils/checkpolicy/Makefile | 42 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 utils/checkpolicy/Makefile

diff --git a/utils/checkpolicy/Makefile b/utils/checkpolicy/Makefile
new file mode 100644
index 000000000..305e3b507
--- /dev/null
+++ b/utils/checkpolicy/Makefile
@@ -0,0 +1,42 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=checkpolicy
+PKG_VERSION:=2.9
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://github.com/SELinuxProject/selinux/releases/download/20190315
+PKG_HASH:=a946c32b284532447857e4c48830f8816867c61220c8c08bdd32e6f691335f8e
+HOST_BUILD_DEPENDS:=libselinux/host
+
+PKG_MAINTAINER:=Thomas Petazzoni <thomas.petazzoni@bootlin.com>
+
+include $(INCLUDE_DIR)/package.mk
+
+define Package/checkpolicy
+  SECTION:=utils
+  CATEGORY:=Utilities
+  TITLE:=SELinux policy compiler
+  URL:=http://selinuxproject.org/page/Main_Page
+endef
+
+define Package/checkpolicy/description
+	checkpolicy is the SELinux policy compiler. It uses libsepol
+	to generate the binary policy. checkpolicy uses the static
+	libsepol since it deals with low level details of the policy
+	that have not been encapsulated/abstracted by a proper
+	shared library interface.
+endef
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_MAKE_FLAGS += \
+	PREFIX=$(STAGING_DIR_HOSTPKG)
+
+$(eval $(call HostBuild))
+$(eval $(call BuildPackage,checkpolicy))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
