Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76508305AD
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 02:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GU3//KdHrGC3sSPZfgZkK4Q9vQPBK4uio//wbJr3Llw=; b=AvB2XZkeahlfAQkWqA5X5wCRjw
	rIRfb8P6z/Ui1rzIlB01dSRcVuXIwgLkKu6wqr47zjJxKahC71FIUCKF3b62VKcULLa6g1WghhCtu
	6iUI8TL3+jBAzqhJjCA+UVNkey1q7mFba6NiqRddiS6cRWjrBsauigKsWa+N5i9ukMuU3vlI6709k
	7yrF+ZFiCSHoTuUp+duzRwalGHNFP6UUhegzEq8fQOe5VQ1pZPGfMbQXUlD6NXaP7F5OekwiFMnB+
	am1dxtY1fKKgc5aU7T3ps3F6fO+ndL6RXwCOlbMuGL5nIcyXDf1wKueRfCyMputfwvpeChKGETgsC
	k5ZtZweA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWV70-0000l1-DR; Fri, 31 May 2019 00:09:34 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWV5c-0007GG-UQ
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 00:08:10 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,533,1549954800"; d="scan'208";a="33803556"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2019 17:08:02 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5;
 Thu, 30 May 2019 17:08:01 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 30 May 2019 17:06:53 -0700
Message-ID: <aa036f839823d4b1773785e0b0e48bcbfa4c9a1c.1559260744.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559260743.git.sandeep.sheriker@microchip.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_170809_087762_B7D11EBB 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [patch v1 08/11] at91: move at91-sdcard command to
 sama5.mk
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/Makefile | 31 -------------------------------
 target/linux/at91/image/sama5.mk | 31 +++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+), 31 deletions(-)

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index e4c17e3..3b01d42 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -40,37 +40,6 @@ define Device/dtb
   KERNEL := kernel-bin | lzma | uImage lzma
 endef
 
-define Build/at91-sdcard
-  $(if $(findstring ext4,$@), \
-  rm -f $@.boot
-  mkfs.fat -C $@.boot $(FAT32_BLOCKS)
-
-  mcopy -i $@.boot $(KDIR)/zImage ::zImage
-
-  $(foreach dts,$(DEVICE_DTS), \
-     mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb \
-        ::$(dts).dtb)
-
-  mcopy -i $@.boot \
-    $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
-    ::u-boot.bin
-
-  mcopy -i $@.boot \
-    $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd*/at91bootstrap.bin \
-    ::BOOT.bin
-
-  ./gen_at91_sdcard_img.sh \
-      $@.img \
-      $@.boot \
-      $(KDIR)/root.ext4 \
-      $(AT91_SD_BOOT_PARTSIZE) \
-      $(CONFIG_TARGET_ROOTFS_PARTSIZE)
-
-  gzip -nc9 $@.img > $@
-
-  rm -f $@.img $@.boot )
-endef
-
 define Device/evaluation-sdimage
   IMAGES += sdcard.img.gz
   IMAGE/sdcard.img.gz := at91-sdcard
diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
index f9a190c..f4548fb 100644
--- a/target/linux/at91/image/sama5.mk
+++ b/target/linux/at91/image/sama5.mk
@@ -6,6 +6,37 @@ define Device/default-nand
   MKUBIFS_OPTS := -m $$(PAGESIZE) -e 124KiB -c 2048
 endef
 
+define Build/at91-sdcard
+  $(if $(findstring ext4,$@), \
+  rm -f $@.boot
+  mkfs.fat -C $@.boot $(FAT32_BLOCKS)
+
+  mcopy -i $@.boot $(KDIR)/zImage ::zImage
+
+  $(foreach dts,$(DEVICE_DTS), \
+     mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb \
+        ::$(dts).dtb)
+
+  mcopy -i $@.boot \
+    $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc*/u-boot.bin \
+    ::u-boot.bin
+
+  mcopy -i $@.boot \
+    $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd*/at91bootstrap.bin \
+    ::BOOT.bin
+
+  ./gen_at91_sdcard_img.sh \
+      $@.img \
+      $@.boot \
+      $(KDIR)/root.ext4 \
+      $(AT91_SD_BOOT_PARTSIZE) \
+      $(CONFIG_TARGET_ROOTFS_PARTSIZE)
+
+  gzip -nc9 $@.img > $@
+
+  rm -f $@.img $@.boot )
+endef
+
 define Device/at91-sama5d2_xplained
   $(Device/evaluation-dtb)
   DEVICE_TITLE := Microchip(Atmel AT91) SAMA5D2 Xplained
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
