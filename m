Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07522CD90
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ajSFIHK62McxmMXSoitdFASdo+ZuwgjA5psYeSi2qE=; b=My0foNgJF4/+Hu
	zGVO7f1VXkxeoXD6CImS5naRJEs/mpWOoV/yRUi3NFGPHTSYRiNlnxZ8ueCHBY6oSjIySQi3/fzvg
	mjmalKePkKiGTe892pOin4/JeJiwmF3V6nTvM4BG4hjPIsHxH6t1rLq2FLlTbQ3PSY1xBxfQwjLZw
	dmIBQI+AuNGAA67ZCPBv9HcOf8uTBV3lBFN7o3zGL3YLoLs8nVhSiMSeYsBxdyHBjbJgSPm9zPpQr
	tKnguw/+QzBgV5sqlOtEf6mNo3nnlzYf6Xkct5YhotI05uFg2LjW+G2JdFzOqwh1bI5e9MIENPCjw
	2CdkxIT6gVQOW5MtSrrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfpx-0002iS-D8; Tue, 28 May 2019 17:24:33 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoU-0000RW-Fb
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:23:09 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110539"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:28 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:26 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:18 -0700
Message-ID: <8c7ee1f19568ae661a704dcbeb164cc63f279485.1559063196.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102303_910450_A8D7089D 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [OpenWrt-Devel, 6/7] at91: Add uboot environment's
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
Cc: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>

Add uboot environment's to sdcard image.

Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/Makefile      | 21 ++++++++++++++++++---
 target/linux/at91/image/uboot-env.txt | 14 ++++++++++++++
 2 files changed, 32 insertions(+), 3 deletions(-)
 create mode 100644 target/linux/at91/image/uboot-env.txt

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index 3d2462a..052a8d2 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -40,6 +40,7 @@ define Device/dtb
   KERNEL := kernel-bin | lzma | uImage lzma
 endef
 
+
 define Build/at91-sdcard
   $(if $(findstring ext4,$@), \
   rm -f $@.boot
@@ -56,7 +57,12 @@ define Build/at91-sdcard
 
   mcopy -i $@.boot \
 	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb \
-	::$(DEVICE_NAME:at91-%=%)-fit.itb ,
+	::$(DEVICE_NAME:at91-%=%)-fit.itb
+
+  $(CP) uboot-env.txt $@-uboot-env.txt
+  sed -i '2d;3d' $@-uboot-env.txt
+  sed -i '2i board='"$(DEVICE_NAME:at91-%=%)"'' $@-uboot-env.txt
+  sed -i '3i board_name='"$(DEVICE_NAME:at91-%=%)"'' $@-uboot-env.txt ,
 
   mcopy -i $@.boot $(BIN_DIR)/u-boot-*_mmc/u-boot.bin ::u-boot.bin
 
@@ -64,7 +70,16 @@ define Build/at91-sdcard
     $(BIN_DIR)/at91bootstrap-*sd*/at91bootstrap.bin ::BOOT.bin
 
   mcopy -i $@.boot \
-	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb ::$(DEVICE_NAME)-fit.itb)
+	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb ::$(DEVICE_NAME)-fit.itb
+
+  $(CP) uboot-env.txt $@-uboot-env.txt
+  sed -i '2d;3d' $@-uboot-env.txt
+  sed -i '2i board='"$(DEVICE_NAME)"'' $@-uboot-env.txt
+  sed -i '3i board_name='"$(DEVICE_NAME)"'' $@-uboot-env.txt)
+
+  mkenvimage -s 0x4000 -o $@-uboot.env $@-uboot-env.txt
+
+  mcopy -i $@.boot $@-uboot.env ::uboot.env
 
   ./gen_at91_sdcard_img.sh \
       $@.img \
@@ -75,7 +90,7 @@ define Build/at91-sdcard
 
   gzip -nc9 $@.img > $@
 
-  rm -f $@.img $@.boot )
+  rm -f $@.img $@.boot $@-uboot.env $@-uboot-env.txt)
 endef
 
 define Device/evaluation-sdimage
diff --git a/target/linux/at91/image/uboot-env.txt b/target/linux/at91/image/uboot-env.txt
new file mode 100644
index 0000000..80d051b
--- /dev/null
+++ b/target/linux/at91/image/uboot-env.txt
@@ -0,0 +1,14 @@
+/* Do Not remove First 2 lines, Makefile will modify these lines with proper board names */
+board=at91sam9x25ek
+board_name=at91sam9x25ek
+bootargs=console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4
+bootargsd2=console=ttyS0,115200 earlyprintk root=/dev/mmcblk1p2 rw rootwait rootfstype=ext4
+bootargsxx=console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4
+bootcmd=run setbootargs; run fatload_mmc; bootm 0x21000000
+bootdelay=1
+fatload_mmc=if test ${board_name} = sama5d2_xplained || test ${board_name} = sama5d27_som1_ek; then fatload mmc 1:1 0x21000000 ${board_name}-fit.itb; else fatload mmc 0:1 0x21000000 ${board_name}-fit.itb; fi
+setbootargs=if test ${board_name} = sama5d2_xplained || test ${board_name} = sama5d27_som1_ek; then setenv bootargs ${bootargsd2}; else setenv bootargs ${bootargsxx}; fi
+ethact=gmac0
+stderr=serial
+stdin=serial
+stdout=serial
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
