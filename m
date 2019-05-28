Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E312CD8D
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICgxwF6IuBz2h3f/sVjvAzA2WIfNLax1Ks5u3vukjjI=; b=ovuue+nlDjQ8tu
	nP5MTcu5E/Qxh+wVtOQRrsde/dltfifyfZVJGeyCdH0LFp+b1x5d+GYcyqc0OwiPFRDepLurhXifX
	ZSV3fOJWUvgNLj4s6ybiiyboR5m4wFqNBH+pQphyo6g4vOYD/0tSuiL/uPeJX4HkizW0j/HG/j9SV
	kUwdCMEBrEoLNFB3NFrURwznKHSmemTof8YeHIYLrEDKzwNKCYlPceUaAFLoUSMpqQf/u+f2rnrGU
	xIlirq5WBo80YfQ8WNol1AqD5OOgkP+ArcwTQKDxwJsBBayZnk+KRgDwNRwHIYgH6cXJySHfi8dg7
	0FYFi78VG7P8WfjDoNwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfpc-0002Bq-Py; Tue, 28 May 2019 17:24:12 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoO-0000RW-Tf
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:23:02 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110506"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:27 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:26 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:15 -0700
Message-ID: <67583538182cd6662fac0d5f52eb119bfe86643f.1559063196.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102257_749265_E04D082E 
X-CRM114-Status: UNSURE (   5.92  )
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
Subject: [OpenWrt-Devel] [OpenWrt-Devel, 4/7] at91: generate fit image
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

generate & add fit image to sdcard image.

Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/Makefile | 21 ++++++++++++---------
 target/linux/at91/image/sam9x.mk | 10 +++++-----
 2 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index 5b1433c..434fdbe 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -45,25 +45,26 @@ define Build/at91-sdcard
   rm -f $@.boot
   mkfs.fat -C $@.boot $(FAT32_BLOCKS)
 
-  mcopy -i $@.boot $(KDIR)/zImage ::zImage
-
-  $(foreach dts,$(DEVICE_DTS), \
-     mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb \
-        ::$(dts).dtb)
-
   $(if $(findstring sama5,$(DEVICE_NAME)) , \
   mcopy -i $@.boot \
     $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
-    ::u-boot.bin
+	::u-boot.bin
 
   mcopy -i $@.boot \
     $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd*/at91bootstrap.bin \
-    ::BOOT.bin ,
+    ::BOOT.bin
+
+  mcopy -i $@.boot \
+	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb \
+	::$(DEVICE_NAME:at91-%=%)-fit.itb ,
 
   mcopy -i $@.boot $(BIN_DIR)/u-boot-*_mmc/u-boot.bin ::u-boot.bin
 
   mcopy -i $@.boot \
-    $(BIN_DIR)/at91bootstrap-*sd*/at91bootstrap.bin ::BOOT.bin)
+    $(BIN_DIR)/at91bootstrap-*sd*/at91bootstrap.bin ::BOOT.bin
+
+  mcopy -i $@.boot \
+	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb ::$(DEVICE_NAME)-fit.itb)
 
   ./gen_at91_sdcard_img.sh \
       $@.img \
@@ -100,6 +101,8 @@ define Device/evaluation-dtb
   $(Device/evaluation-zImage)
   IMAGES += dtb
   IMAGE/dtb := install-dtb
+  KERNEL_SUFFIX := -fit-zImage.itb
+  KERNEL := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
 endef
 
 define Device/evaluation-fit
diff --git a/target/linux/at91/image/sam9x.mk b/target/linux/at91/image/sam9x.mk
index 561a8bf..a908712 100644
--- a/target/linux/at91/image/sam9x.mk
+++ b/target/linux/at91/image/sam9x.mk
@@ -12,7 +12,7 @@ endef
 TARGET_DEVICES += at91sam9263ek
 
 define Device/at91sam9g15ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9G15-EK
   $(Device/evaluation-sdimage)
 endef
@@ -31,14 +31,14 @@ endef
 TARGET_DEVICES += at91sam9g20ek_2mmc
 
 define Device/at91sam9g25ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9G25-EK
   $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9g25ek
 
 define Device/at91sam9g35ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9G35-EK
   $(Device/evaluation-sdimage)
 endef
@@ -51,14 +51,14 @@ endef
 TARGET_DEVICES += at91sam9m10g45ek
 
 define Device/at91sam9x25ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9X25-EK
   $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9x25ek
 
 define Device/at91sam9x35ek
-  $(Device/evaluation)
+  $(Device/evaluation-dtb)
   DEVICE_TITLE := Atmel AT91SAM9X35-EK
   $(Device/evaluation-sdimage)
 endef
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
