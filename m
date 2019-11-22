Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715CB10695D
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 Nov 2019 10:57:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+/nHvMNkWeFcdd20ia6coec/+Oif398ql5ZnF57uq8=; b=qoyYt8mDTPD+ng
	tIQSyl/agRFjOAgyneEX2/1IgwuuwCHoMnJ8ksLRYbcO+cBcMKgSn+AQV+k6PFvpde8FIUa8wNQ0K
	sHUpyMaXuEwMxfHDuuAs93LQy+qP8hzNPYxbRWnadotlUCjV0Aw9QlpLu/hY+0wJ6hClR3KuK/+7X
	WWv/U48IJXqcC9oF4DDjVE3+SNa5m3f2a6oqCvKgL297KnEBjYpbpHc+EF3+yeQljVb4NE6D/Xz1i
	J+8Oe23Yxug4/jJjII4fgEsTZlsxBr4FMhAcIu3FR4KrurNoBRXrRqa+j5cvoB4ktyVbcO+xCmH9/
	Jx1/E6d+nNBgMeJmrk+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5h8-0008Sm-RB; Fri, 22 Nov 2019 09:57:42 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5fR-0006fs-Am
 for openwrt-devel@lists.openwrt.org; Fri, 22 Nov 2019 09:56:02 +0000
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5C68F10000C;
 Fri, 22 Nov 2019 09:55:47 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 22 Nov 2019 10:55:37 +0100
Message-Id: <20191122095541.688125-4-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
References: <20191122095541.688125-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015557_525168_94739112 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 3/7] tools/fakeroot: new tool
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

SELinux support requires setting the appropriate SELinux security
context to files and directories, which needs to happen at build time
in order to support read-only root filesystem scenarios. In order to
create these security contexts, we will have to run some
SELinux-specific tool on the host machine, but that requires root
access. So this tool adds support for fakeroot, which will be used to
run the SELinux security context creation and the image creation.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 tools/Makefile          |  2 +-
 tools/fakeroot/Makefile | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)
 create mode 100644 tools/fakeroot/Makefile

diff --git a/tools/Makefile b/tools/Makefile
index 2f57d25525..fd67a880de 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -26,7 +26,7 @@ tools-y += m4 libtool autoconf automake flex bison pkg-config mklibs zlib
 tools-y += sstrip make-ext4fs e2fsprogs mtd-utils mkimage
 tools-y += firmware-utils patch-image quilt padjffs2
 tools-y += mm-macros missing-macros cmake bc findutils gengetopt patchelf
-tools-y += mtools dosfstools libressl
+tools-y += mtools dosfstools libressl fakeroot
 tools-$(CONFIG_TARGET_orion_generic) += wrt350nv2-builder upslug2
 tools-$(CONFIG_TARGET_x86) += qemu
 tools-$(CONFIG_TARGET_mxs) += elftosb sdimage
diff --git a/tools/fakeroot/Makefile b/tools/fakeroot/Makefile
new file mode 100644
index 0000000000..04d9a0dd60
--- /dev/null
+++ b/tools/fakeroot/Makefile
@@ -0,0 +1,20 @@
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=fakeroot
+PKG_VERSION:=1.20.2
+
+PKG_SOURCE:=$(PKG_NAME)_$(PKG_VERSION).orig.tar.bz2
+PKG_SOURCE_URL:=http://snapshot.debian.org/archive/debian/20141005T221953Z/pool/main/f/fakeroot
+PKG_HASH:=7c0a164d19db3efa9e802e0fc7cdfeff70ec6d26cdbdc4338c9c2823c5ea230c
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_CONFIGURE_VARS += \
+	ac_cv_header_sys_capability_h=no \
+	ac_cv_func_capset=no
+
+$(eval $(call HostBuild))
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
