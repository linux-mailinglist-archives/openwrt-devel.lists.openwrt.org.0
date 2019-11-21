Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7631056FD
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTT204mSpF5rMhYwtZdLQ2FyQvMEoioIukHMVkUH/0s=; b=lpnyiMVBqexm9P
	ePeAkDCUg3uVfctIOJsBtfHdC6EiJShWKWcrLp5zTsPUKEK+9CRGcBUCesZ4OJGTv6pTS3lJNVMNf
	YPYfwHPX75G5dLYhigkBh+ye5YE3fa8frqJJiKjzQTN6DchtBKmp7PZ/rjr0q227k+2By9c1QX+8Z
	tSgSbnDbooU5TDlk1WaGU0NrxbrBrchnIpqwyHXzVJApP+NVgwGv+yh05tuDCWnsdH6yk3hiV5VRo
	mFWJXMAjgyMnqRyce7pqHgqmApG9TzVq14T3K8nL5U69rMPrElWOP8CFf8t2I31tDyoCYsPem1/el
	4ZTOoHU3WlqdtN/nR6/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpGe-0004NK-GH; Thu, 21 Nov 2019 16:25:16 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF3-0002nN-Qg
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:41 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id BB6AC60009;
 Thu, 21 Nov 2019 16:23:27 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:14 +0100
Message-Id: <20191121162322.671035-5-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082338_000226_AAF62C6D 
X-CRM114-Status: UNSURE (   9.30  )
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
Subject: [OpenWrt-Devel] [PATCH v2 04/12] tools/libjson-c: new package
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

libjson-c is needed to build cryptsetup. While the host variant of
libjson-c is already packaged in package/libs/libjson-c, we apparently
can't express a dependency of something packaged in "tools/" against a
library in package/libs/, so we have to duplicate libjson-c's
Makefile in tools/libjson-c/.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 tools/libjson-c/Makefile | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 tools/libjson-c/Makefile

diff --git a/tools/libjson-c/Makefile b/tools/libjson-c/Makefile
new file mode 100644
index 0000000000..244594debc
--- /dev/null
+++ b/tools/libjson-c/Makefile
@@ -0,0 +1,25 @@
+#
+# Copyright (C) 2006-2014 OpenWrt.org
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=json-c
+PKG_VERSION:=0.13.1
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
+PKG_SOURCE_URL:=https://s3.amazonaws.com/json-c_releases/releases/
+PKG_HASH:=b87e608d4d3f7bfdd36ef78d56d53c74e66ab278d318b71e6002a369d36f4873
+
+PKG_LICENSE:=MIT
+PKG_LICENSE_FILES:=COPYING
+
+HOST_FIXUP:=autoreconf
+
+include $(INCLUDE_DIR)/host-build.mk
+
+$(eval $(call HostBuild))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
