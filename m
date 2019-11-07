Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249D3F391D
	for <lists+openwrt-devel@lfdr.de>; Thu,  7 Nov 2019 21:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FIDDkYhK6divRk1XvgaNfeCrwG0qKiTi2Wm9Ch7W8AA=; b=AJ5oPYSdfMkoz5
	J1tdSwOd8vm04Moz1BVkuv0QH0L2Jbu/qJUi2pzVX6kJBoGpb/PDyzQ7mHZlieIXTQS3n1rp8LEwK
	ElJez+ktLfkm3/GtguyXl7F2fObISAcDdnoHNW09NDJ2yXAoG9tUJL0vo/PZHTrQ+exxvkr2WPRdX
	gYcSFXJwzLufO/TAPKlEtdqebUw6LDcT4GmaFFoREeWavWFUzfA6ZisZRrYJADoqpKMbZ1ACl48X5
	JeIsBHGvrcS6Aw6D+JSmxFycjbPApC20rc82yiBsC9bAnKjqE2H+OYXPSxqX0zrbYqTt64yqnucwY
	YH4N5iztOymNR56IAV4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSnyj-0007bq-8C; Thu, 07 Nov 2019 20:02:01 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSnyd-0007bJ-CM
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 20:01:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 12:01:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="201489708"
Received: from pon-swdevtest.imu.intel.com ([10.91.169.4])
 by fmsmga007.fm.intel.com with ESMTP; 07 Nov 2019 12:01:53 -0800
From: Hauke Mehrtens <hauke.mehrtens@intel.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  7 Nov 2019 21:01:40 +0100
Message-Id: <20191107200140.24383-1-hauke.mehrtens@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_120155_468904_A2662052 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] uboot-envtools: Add TARGET_LDFLAGS to fix
 PIE and RELRO
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
Cc: hauke@hauke-m.de, Hauke Mehrtens <hauke.mehrtens@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Forward the OpenWrt TARGET_LDFLAGS to the linker of the fw_printenv tool.
In addition also use the more standard make invocation script.
With this change the fw_printenv tool is built with PIE and Full RELRO
support when activated globally in OpenWrt.

Signed-off-by: Hauke Mehrtens <hauke.mehrtens@intel.com>
---
 package/boot/uboot-envtools/Makefile              | 15 +++++----------
 .../boot/uboot-envtools/patches/001-compile.patch |  5 ++++-
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/package/boot/uboot-envtools/Makefile b/package/boot/uboot-envtools/Makefile
index 4be043dcab..f880698e9c 100644
--- a/package/boot/uboot-envtools/Makefile
+++ b/package/boot/uboot-envtools/Makefile
@@ -51,16 +51,11 @@ define Build/Configure
 	touch $(PKG_BUILD_DIR)/include/generated/autoconf.h
 endef
 
-TARGET_CFLAGS += -I$(STAGING_DIR)/usr/include
-
-define Build/Compile
-	$(MAKE) -C $(PKG_BUILD_DIR) \
-		CROSS_COMPILE="$(TARGET_CROSS)" \
-		TARGET_CFLAGS="$(TARGET_CFLAGS)" \
-		HOSTLDFLAGS= \
-		no-dot-config-targets=envtools \
-		envtools
-endef
+MAKE_FLAGS += \
+	TARGET_CFLAGS="$(TARGET_CFLAGS)" \
+	TARGET_LDFLAGS="$(TARGET_LDFLAGS)" \
+	no-dot-config-targets=envtools \
+	envtools
 
 define Package/uboot-envtools/conffiles
 /etc/config/ubootenv
diff --git a/package/boot/uboot-envtools/patches/001-compile.patch b/package/boot/uboot-envtools/patches/001-compile.patch
index 34072f309d..5413aa4a41 100644
--- a/package/boot/uboot-envtools/patches/001-compile.patch
+++ b/package/boot/uboot-envtools/patches/001-compile.patch
@@ -1,12 +1,15 @@
 --- a/tools/env/Makefile
 +++ b/tools/env/Makefile
-@@ -8,6 +8,10 @@
+@@ -8,6 +8,13 @@
  # with "CC" here for the maximum code reuse of scripts/Makefile.host.
  override HOSTCC = $(CC)
  
 +ifneq ($(TARGET_CFLAGS),)
 +HOSTCFLAGS = $(TARGET_CFLAGS)
 +endif
++ifneq ($(TARGET_LDFLAGS),)
++HOSTLDFLAGS = $(TARGET_LDFLAGS)
++endif
 +
  # Compile for a hosted environment on the target
  HOST_EXTRACFLAGS  = -I$(srctree)/tools \
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
