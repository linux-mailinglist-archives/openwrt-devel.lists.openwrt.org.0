Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9004F0FC
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 01:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e+aHTIh7LiQHV4NsiscRrhJyfj3rlIEhIMiIQbgvs0U=; b=lm/8sn+NUwYi8W
	lsNGh3Q4t5SsNrlbQfv4CYoQYnbCgZJnWq4HjTsO11hDciVhgqCCHiQ6jDGU7heO53PWA5YvT98mj
	4sO2Wx/Wj4SJniJDnSLGj3+WrbzTeQaA0NgNUEtvjhYO0MG2A73XnFU+Bx9ONIO3fo/v748XQU4br
	OuB7uVlgDI18JUAxvC6VtNcoQrmL5mVltcbk+dD09oTI1K0Fp7XSB2m5eX7H4bHk7zutwdB8gO9Tw
	cPb4v3sIFQW2j42i1S+ZcdJ9VoNukpyE8pt6lsVm3dr601RpfeK84K8u7ZGu9qrNpvMAVxozEVRBC
	XVyC+UFIAXKu50d6QBmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heSbr-0004rB-Hm; Fri, 21 Jun 2019 23:06:19 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heSZM-00012u-OY
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 23:03:46 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,402,1557212400"; d="scan'208";a="37936978"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 21 Jun 2019 16:03:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 21 Jun 2019 16:03:37 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 21 Jun 2019 16:03:34 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 21 Jun 2019 16:02:16 -0700
Message-ID: <1561158139-13473-9-git-send-email-sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561158139-13473-1-git-send-email-sandeep.sheriker@microchip.com>
References: <1561158139-13473-1-git-send-email-sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_160344_892181_664157B8 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [at91][patch v2 08/11] at91: move at91-sdcard
 command to sama5.mk
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
Cc: sandeep.sheriker@microchip.com
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
index f9a190c..ea6f04c 100644
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
+  $(if $(findstring at91-sama5d27_som1_ek,$@), \
+      mcopy -i $@.boot \
+          $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc1/u-boot.bin \
+          ::u-boot.bin ,
+      mcopy -i $@.boot \
+          $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
+          ::u-boot.bin)
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
