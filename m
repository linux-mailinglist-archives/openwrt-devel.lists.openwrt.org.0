Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E052105709
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hsI96j5Hc+Xz3k87yvrYcCMq9y3xX0/6ruPoZ7Pjc0=; b=EH2iYXTu4qKh/6
	4S/T6OFZ6P2iW/uAfOBmPyG6QvUQMDZef7LMRlgAyyUYVVvaHIFBYAGbeDE/xwPxpIRcdc26Vy1Q9
	8W0OfmL5UUJJNWihwj0sQcLxwIxiOT+PX7YRVy6d5eqSwks9biCTpHPcEyhdZcnZQlWklB5ZC85aK
	w+BdplyFpBlB9DzJy/DIuZaNGtv63PZ/foAq/NPSWRBkTMFWwSy9z47d02P7hfj7BMuAMWp8dEZ+C
	9l3orPG7UDG7AJ7Lw1kjXCJMXvJi7fMEFerJFwgOVg+s/9t1CA1ufFyVBUdxbKsh1Jw56ZsBu5B9/
	2sFSWzjLYsFVSRBmPGtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpHO-0006i4-I4; Thu, 21 Nov 2019 16:26:02 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF3-0002nO-Qj
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:43 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id A027260017;
 Thu, 21 Nov 2019 16:23:26 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:12 +0100
Message-Id: <20191121162322.671035-3-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082338_003812_A153A1BC 
X-CRM114-Status: GOOD (  10.49  )
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
Subject: [OpenWrt-Devel] [PATCH v2 02/12] tools/lvm2: new package
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

lvm2 for the host will be needed as a dependency to build cryptsetup
for the host.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 tools/Makefile      |  1 +
 tools/lvm2/Makefile | 47 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 tools/lvm2/Makefile

diff --git a/tools/Makefile b/tools/Makefile
index 2f57d25525..26e2d19fee 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -78,6 +78,7 @@ $(curdir)/wrt350nv2-builder/compile := $(curdir)/zlib/compile
 $(curdir)/lzma-old/compile := $(curdir)/zlib/compile
 $(curdir)/make-ext4fs/compile := $(curdir)/zlib/compile
 $(curdir)/cbootimage/compile += $(curdir)/automake/compile
+$(curdir)/lvm2/compile := $(curdir)/pkg-config/compile $(curdir)/libaio/compile
 
 ifneq ($(HOST_OS),Linux)
   $(curdir)/squashfskit4/compile += $(curdir)/coreutils/compile
diff --git a/tools/lvm2/Makefile b/tools/lvm2/Makefile
new file mode 100644
index 0000000000..8b37cbaa6c
--- /dev/null
+++ b/tools/lvm2/Makefile
@@ -0,0 +1,47 @@
+#
+# Copyright (C) 2010-2015 OpenWrt.org
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=lvm2
+PKG_VERSION:=2.02.180
+PKG_HASH:=24997e26dfc916151707c9da504d38d0473bec3481a8230b676bc079041bead6
+PKG_RELEASE:=1
+
+PKG_SOURCE:=LVM2.$(PKG_VERSION).tgz
+PKG_SOURCE_URL:=ftp://sources.redhat.com/pub/lvm2/old
+
+HOST_BUILD_PARALLEL:=1
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_CONFIGURE_ARGS += \
+        --enable-write_install \
+        --enable-pkgconfig \
+        --disable-cmdlib \
+        --disable-dmeventd \
+        --disable-applib \
+        --disable-fsadm \
+        --disable-readline \
+        --disable-selinux
+
+# lvm2 unpacks in the wrong folder
+define Host/Prepare
+	$(call Host/Prepare/Default)
+	mv $(HOST_BUILD_DIR)/../LVM2.$(PKG_VERSION)/* $(HOST_BUILD_DIR)/
+	rmdir $(HOST_BUILD_DIR)/../LVM2.$(PKG_VERSION)
+endef
+
+define Host/Compile
+	$(call Host/Compile/Default,device-mapper)
+endef
+
+define Host/Install
+	$(call Host/Compile/Default,install_device-mapper)
+endef
+
+$(eval $(call HostBuild))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
