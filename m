Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCBA1056F1
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMWo/gYlMU42aZngaq8kENS699Nwth0kGrj6Q1bLflM=; b=GHtNVmt26V2vn4
	abJNnGUf6gxmnqfF62MPCZUJ/HyTnvY2zBOI2f/YVCX1xlvz9K82t6iyvg/PNHO1yeWQYYSX+v8Y7
	NceDY5MB3ox1R4HOm9AEolZZIpOVVFaJflL0aoG6+ioK3IKpUo2DWEk++kJ8yQFJv8fiQEiRsEiy3
	V0H8CppzP7269DrtolWVASNDNLsxuNVYmBDiQ2Qr8kdS3oLQkTW8qsRUc+NmSlG/3ajb9J1jNde5T
	CD41Baz/gfA08G016xxLTBNDI+C8ituFUTVwLDQRTx7tgLfsd9uElzBSZvGgp9g3TmsGRSQ1G7mIX
	j4XJrnKRIsiOyiFBgcqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpFV-00030I-M5; Thu, 21 Nov 2019 16:24:05 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF0-0002mm-6S
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:36 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 420281C0008;
 Thu, 21 Nov 2019 16:23:28 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:15 +0100
Message-Id: <20191121162322.671035-6-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082334_369147_27C775D7 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 05/12] tools/cryptsetup: new package
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

cryptsetup for the host will be needed to create the hash tree of a
dm-verity volume.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 tools/Makefile                                |  1 +
 tools/cryptsetup/Makefile                     | 28 +++++++++++++++++++
 .../patches/0001-dont-use-c89.patch           | 11 ++++++++
 3 files changed, 40 insertions(+)
 create mode 100644 tools/cryptsetup/Makefile
 create mode 100644 tools/cryptsetup/patches/0001-dont-use-c89.patch

diff --git a/tools/Makefile b/tools/Makefile
index 26e2d19fee..cf91f04100 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -79,6 +79,7 @@ $(curdir)/lzma-old/compile := $(curdir)/zlib/compile
 $(curdir)/make-ext4fs/compile := $(curdir)/zlib/compile
 $(curdir)/cbootimage/compile += $(curdir)/automake/compile
 $(curdir)/lvm2/compile := $(curdir)/pkg-config/compile $(curdir)/libaio/compile
+$(curdir)/cryptsetup/compile := $(curdir)/pkg-config/compile $(curdir)/libressl/compile $(curdir)/lvm2/compile $(curdir)/popt/compile $(curdir)/libjson-c/compile
 
 ifneq ($(HOST_OS),Linux)
   $(curdir)/squashfskit4/compile += $(curdir)/coreutils/compile
diff --git a/tools/cryptsetup/Makefile b/tools/cryptsetup/Makefile
new file mode 100644
index 0000000000..3e500b81ea
--- /dev/null
+++ b/tools/cryptsetup/Makefile
@@ -0,0 +1,28 @@
+#
+# Copyright (C) 2010-2015 OpenWrt.org
+#
+# This is free software, licensed under the GNU General Public License v2.
+# See /LICENSE for more information.
+#
+
+include $(TOPDIR)/rules.mk
+
+PKG_NAME:=cryptsetup
+PKG_VERSION_MAJOR:=2.0
+PKG_VERSION:=$(PKG_VERSION_MAJOR).6
+PKG_HASH:=7c51fae0f0e7ea9af0f515b2ac77009fb2969a6619ebab47d097dca38b083d30
+PKG_RELEASE:=1
+
+PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
+PKG_SOURCE_URL:=@KERNEL/linux/utils/cryptsetup/v$(PKG_VERSION_MAJOR)/
+
+HOST_BUILD_PARALLEL:=1
+
+include $(INCLUDE_DIR)/host-build.mk
+
+HOST_CONFIGURE_ARGS += \
+	--with-crypto-backend=openssl \
+	--disable-kernel_crypto \
+	--disable-blkid
+
+$(eval $(call HostBuild))
diff --git a/tools/cryptsetup/patches/0001-dont-use-c89.patch b/tools/cryptsetup/patches/0001-dont-use-c89.patch
new file mode 100644
index 0000000000..84ee9c0ec2
--- /dev/null
+++ b/tools/cryptsetup/patches/0001-dont-use-c89.patch
@@ -0,0 +1,11 @@
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -901,7 +901,7 @@ tmpfilesd_DATA = $(am__append_5)
+ @PYTHON_CRYPTSETUP_TRUE@pycryptsetup_la_CPPFLAGS = $(AM_CPPFLAGS) $(PYTHON_CPPFLAGS) $(PYTHON_INCLUDES) -fno-strict-aliasing
+ @PYTHON_CRYPTSETUP_TRUE@pycryptsetup_la_LDFLAGS = -avoid-version -module -shared -export-dynamic
+ @PYTHON_CRYPTSETUP_TRUE@pycryptsetup_la_LIBADD = libcryptsetup.la $(PYTHON_LIBS)
+-@CRYPTO_INTERNAL_ARGON2_TRUE@libargon2_la_CFLAGS = $(AM_CFLAGS) -std=c89 -pthread -O3
++@CRYPTO_INTERNAL_ARGON2_TRUE@libargon2_la_CFLAGS = $(AM_CFLAGS) -pthread -O3
+ @CRYPTO_INTERNAL_ARGON2_TRUE@libargon2_la_CPPFLAGS = $(AM_CPPFLAGS) \
+ @CRYPTO_INTERNAL_ARGON2_TRUE@	-I lib/crypto_backend/argon2 \
+ @CRYPTO_INTERNAL_ARGON2_TRUE@	-I lib/crypto_backend/argon2/blake2
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
