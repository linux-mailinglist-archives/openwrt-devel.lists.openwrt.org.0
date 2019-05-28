Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9D82CD8B
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:23:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHnYtOsG0Vgbv/EkZmJicXFZl3aizrBImxivVBB546E=; b=QLSi57rAyXrPpy
	r6j6BD9AtW9wSjd8tFhHAqnh0KuOfk/pbHJ0gxlYHyD6pAiVkCf9ESDz+w+2jOfJ0HBJDxnAWH1oo
	W5PXpx6FHCICW/1ny59CA7Hj0g2bPis+5kcwm3AqBG7M10pVFMRLdGEyEYuDBPmcoPHGnE6HLZdY3
	rAzXjdd6JFwc1iioeSGNxPpzRZF0niUWqUBo2WpYgOmpJdfzfaDqOSu9fci5Qi0sZuev26mlYI2CE
	Q6zRCoAh+mRn9omnXEP309xRFbsQven7+yIZT4xK+1EkcDG2wOeRkU6+1y/9NKlNfULJnOG+y38zw
	0E9tp9GBTQm4z4PDALrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfpG-0001fR-UT; Tue, 28 May 2019 17:23:50 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoL-0000RQ-Ip
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:22:57 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110502"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:27 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:25 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:13 -0700
Message-ID: <15eeaa33f9e573d2078fcdce24d3dd6514d2bb3d.1559063196.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102253_917289_1EE02EF9 
X-CRM114-Status: UNSURE (   5.59  )
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
Subject: [OpenWrt-Devel] [OpenWrt-Devel,
 3/7] at91: Generate sdcard images for at91sam9x5ek boards.
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

Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/Makefile | 8 +++++++-
 target/linux/at91/image/sam9x.mk | 5 +++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index e4c17e3..5b1433c 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -51,13 +51,19 @@ define Build/at91-sdcard
      mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb \
         ::$(dts).dtb)
 
+  $(if $(findstring sama5,$(DEVICE_NAME)) , \
   mcopy -i $@.boot \
     $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc/u-boot.bin \
     ::u-boot.bin
 
   mcopy -i $@.boot \
     $(BIN_DIR)/at91bootstrap-$(DEVICE_NAME:at91-%=%)sd*/at91bootstrap.bin \
-    ::BOOT.bin
+    ::BOOT.bin ,
+
+  mcopy -i $@.boot $(BIN_DIR)/u-boot-*_mmc/u-boot.bin ::u-boot.bin
+
+  mcopy -i $@.boot \
+    $(BIN_DIR)/at91bootstrap-*sd*/at91bootstrap.bin ::BOOT.bin)
 
   ./gen_at91_sdcard_img.sh \
       $@.img \
diff --git a/target/linux/at91/image/sam9x.mk b/target/linux/at91/image/sam9x.mk
index 3aada4c..561a8bf 100644
--- a/target/linux/at91/image/sam9x.mk
+++ b/target/linux/at91/image/sam9x.mk
@@ -14,6 +14,7 @@ TARGET_DEVICES += at91sam9263ek
 define Device/at91sam9g15ek
   $(Device/evaluation)
   DEVICE_TITLE := Atmel AT91SAM9G15-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9g15ek
 
@@ -32,12 +33,14 @@ TARGET_DEVICES += at91sam9g20ek_2mmc
 define Device/at91sam9g25ek
   $(Device/evaluation)
   DEVICE_TITLE := Atmel AT91SAM9G25-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9g25ek
 
 define Device/at91sam9g35ek
   $(Device/evaluation)
   DEVICE_TITLE := Atmel AT91SAM9G35-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9g35ek
 
@@ -50,12 +53,14 @@ TARGET_DEVICES += at91sam9m10g45ek
 define Device/at91sam9x25ek
   $(Device/evaluation)
   DEVICE_TITLE := Atmel AT91SAM9X25-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9x25ek
 
 define Device/at91sam9x35ek
   $(Device/evaluation)
   DEVICE_TITLE := Atmel AT91SAM9X35-EK
+  $(Device/evaluation-sdimage)
 endef
 TARGET_DEVICES += at91sam9x35ek
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
