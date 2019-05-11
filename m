Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6F81A7C2
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 13:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aZ15pRxA9M0IDvzAk4Hgzlqnp+5iU83mUU9XGEUSbgA=; b=lL8SzHp7U8LnGx
	mQt1kEbO82EGodhSt9fO5v0x1uOKazSD0ZzHwZhuRv0H2ck5sT9Xb0euxawpDOQ9GAVOwrND5Da8U
	gzpmConI3nq3LcfQ1NR1BU7IbdBaTkryQa8U4XRaEZ38K1jqZRrOQfMglodw1wjiDeoW/TrjwdZ+R
	24AyKcEqTTRbA7zu+XBYdKw82yOfK78Dwcl3QUsDmlQVUfvbQ2wVNOnSg7h/Oh/1D4qoC538gyWHc
	yPcZUQ4Xo6pXvyO4y25/gry9AssY2TmpIPzx2SUa/BJFq/fkO9V+O0s2xAuqNzqkt7FOn9T6R75HT
	WYX+Qfur2zYEc0yLMzqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPQbQ-0004Tb-Dj; Sat, 11 May 2019 11:55:44 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPQbJ-0004T5-MR
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 11:55:39 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 62C3BA114A;
 Sat, 11 May 2019 13:55:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id dFpe7qUnbOWb; Sat, 11 May 2019 13:55:30 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 13:55:20 +0200
Message-Id: <20190511115520.12422-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_045538_037651_C875EF6F 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: [OpenWrt-Devel] [PATCH] kernel: Reorder generic configuration
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 target/linux/generic/config-4.14 | 10 +++++-----
 target/linux/generic/config-4.19 | 10 +++++-----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/target/linux/generic/config-4.14 b/target/linux/generic/config-4.14
index 396139cb39..888401376c 100644
--- a/target/linux/generic/config-4.14
+++ b/target/linux/generic/config-4.14
@@ -1151,7 +1151,6 @@ CONFIG_DOUBLEFAULT=y
 CONFIG_DQL=y
 # CONFIG_DRAGONRISE_FF is not set
 # CONFIG_DRM is not set
-# CONFIG_DRM_I915 is not set
 # CONFIG_DRM_AMDGPU is not set
 # CONFIG_DRM_AMDGPU_CIK is not set
 # CONFIG_DRM_AMDGPU_GART_DEBUGFS is not set
@@ -1181,6 +1180,7 @@ CONFIG_DQL=y
 # CONFIG_DRM_I2C_CH7006 is not set
 # CONFIG_DRM_I2C_NXP_TDA998X is not set
 # CONFIG_DRM_I2C_SIL164 is not set
+# CONFIG_DRM_I915 is not set
 # CONFIG_DRM_LEGACY is not set
 # CONFIG_DRM_LIB_RANDOM is not set
 # CONFIG_DRM_LOAD_EDID_FIRMWARE is not set
@@ -1354,8 +1354,8 @@ CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"
 # CONFIG_FB_CYBER2000 is not set
 # CONFIG_FB_DA8XX is not set
 # CONFIG_FB_DDC is not set
-# CONFIG_FB_FOREIGN_ENDIAN is not set
 # CONFIG_FB_FLEX is not set
+# CONFIG_FB_FOREIGN_ENDIAN is not set
 # CONFIG_FB_GEODE is not set
 # CONFIG_FB_GOLDFISH is not set
 # CONFIG_FB_HGA is not set
@@ -4989,8 +4989,8 @@ CONFIG_TMPFS_XATTR=y
 # CONFIG_TOSHIBA_HAPS is not set
 # CONFIG_TOUCHSCREEN_88PM860X is not set
 # CONFIG_TOUCHSCREEN_AD7877 is not set
-# CONFIG_TOUCHSCREEN_AD7879_I2C is not set
 # CONFIG_TOUCHSCREEN_AD7879 is not set
+# CONFIG_TOUCHSCREEN_AD7879_I2C is not set
 # CONFIG_TOUCHSCREEN_AD7879_SPI is not set
 # CONFIG_TOUCHSCREEN_ADS7846 is not set
 # CONFIG_TOUCHSCREEN_AR1021_I2C is not set
@@ -5064,8 +5064,8 @@ CONFIG_TMPFS_XATTR=y
 # CONFIG_TOUCHSCREEN_TS4800 is not set
 # CONFIG_TOUCHSCREEN_TSC2004 is not set
 # CONFIG_TOUCHSCREEN_TSC2005 is not set
-# CONFIG_TOUCHSCREEN_TSC2007_IIO is not set
 # CONFIG_TOUCHSCREEN_TSC2007 is not set
+# CONFIG_TOUCHSCREEN_TSC2007_IIO is not set
 # CONFIG_TOUCHSCREEN_TSC200X_CORE is not set
 # CONFIG_TOUCHSCREEN_TSC_SERIO is not set
 # CONFIG_TOUCHSCREEN_UCB1400 is not set
@@ -5096,8 +5096,8 @@ CONFIG_TMPFS_XATTR=y
 # CONFIG_TOUCHSCREEN_WM9705 is not set
 # CONFIG_TOUCHSCREEN_WM9712 is not set
 # CONFIG_TOUCHSCREEN_WM9713 is not set
-# CONFIG_TOUCHSCREEN_WM97XX_ATMEL is not set
 # CONFIG_TOUCHSCREEN_WM97XX is not set
+# CONFIG_TOUCHSCREEN_WM97XX_ATMEL is not set
 # CONFIG_TOUCHSCREEN_WM97XX_MAINSTONE is not set
 # CONFIG_TOUCHSCREEN_WM97XX_ZYLONITE is not set
 # CONFIG_TOUCHSCREEN_ZET6223 is not set
diff --git a/target/linux/generic/config-4.19 b/target/linux/generic/config-4.19
index a4b5a7d072..de8eb9d53a 100644
--- a/target/linux/generic/config-4.19
+++ b/target/linux/generic/config-4.19
@@ -778,8 +778,8 @@ CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
 # CONFIG_CHARGER_SBS is not set
 # CONFIG_CHARGER_SMB347 is not set
 # CONFIG_CHARGER_TWL4030 is not set
-# CONFIG_CHASH_STATS is not set
 # CONFIG_CHASH_SELFTEST is not set
+# CONFIG_CHASH_STATS is not set
 # CONFIG_CHECKPOINT_RESTORE is not set
 # CONFIG_CHELSIO_T1 is not set
 # CONFIG_CHELSIO_T3 is not set
@@ -1214,7 +1214,6 @@ CONFIG_DOUBLEFAULT=y
 CONFIG_DQL=y
 # CONFIG_DRAGONRISE_FF is not set
 # CONFIG_DRM is not set
-# CONFIG_DRM_I915 is not set
 # CONFIG_DRM_AMDGPU is not set
 # CONFIG_DRM_AMDGPU_CIK is not set
 # CONFIG_DRM_AMDGPU_GART_DEBUGFS is not set
@@ -1248,6 +1247,7 @@ CONFIG_DQL=y
 # CONFIG_DRM_I2C_NXP_TDA9950 is not set
 # CONFIG_DRM_I2C_NXP_TDA998X is not set
 # CONFIG_DRM_I2C_SIL164 is not set
+# CONFIG_DRM_I915 is not set
 # CONFIG_DRM_LEGACY is not set
 # CONFIG_DRM_LIB_RANDOM is not set
 # CONFIG_DRM_LOAD_EDID_FIRMWARE is not set
@@ -1432,8 +1432,8 @@ CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"
 # CONFIG_FB_CYBER2000 is not set
 # CONFIG_FB_DA8XX is not set
 # CONFIG_FB_DDC is not set
-# CONFIG_FB_FOREIGN_ENDIAN is not set
 # CONFIG_FB_FLEX is not set
+# CONFIG_FB_FOREIGN_ENDIAN is not set
 # CONFIG_FB_GEODE is not set
 # CONFIG_FB_GOLDFISH is not set
 # CONFIG_FB_HGA is not set
@@ -5238,8 +5238,8 @@ CONFIG_TMPFS_XATTR=y
 # CONFIG_TOSHIBA_HAPS is not set
 # CONFIG_TOUCHSCREEN_88PM860X is not set
 # CONFIG_TOUCHSCREEN_AD7877 is not set
-# CONFIG_TOUCHSCREEN_AD7879_I2C is not set
 # CONFIG_TOUCHSCREEN_AD7879 is not set
+# CONFIG_TOUCHSCREEN_AD7879_I2C is not set
 # CONFIG_TOUCHSCREEN_AD7879_SPI is not set
 # CONFIG_TOUCHSCREEN_ADC is not set
 # CONFIG_TOUCHSCREEN_ADS7846 is not set
@@ -5319,8 +5319,8 @@ CONFIG_TMPFS_XATTR=y
 # CONFIG_TOUCHSCREEN_TS4800 is not set
 # CONFIG_TOUCHSCREEN_TSC2004 is not set
 # CONFIG_TOUCHSCREEN_TSC2005 is not set
-# CONFIG_TOUCHSCREEN_TSC2007_IIO is not set
 # CONFIG_TOUCHSCREEN_TSC2007 is not set
+# CONFIG_TOUCHSCREEN_TSC2007_IIO is not set
 # CONFIG_TOUCHSCREEN_TSC200X_CORE is not set
 # CONFIG_TOUCHSCREEN_TSC_SERIO is not set
 # CONFIG_TOUCHSCREEN_UCB1400 is not set
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
