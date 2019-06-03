Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16D5333F7
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Jun 2019 17:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jH+OMkti7GIdhjz+h0bwntk6LhPL1++vR/mVmaDWD04=; b=THG3I6cy3D4lh608tfsPQFxghN
	w0Ued0QDZmOPhQuABKh9IJ1UQ/039eOuQNqiyQVbGHQ6oZcVXrSMcMWE1M1YaMtxjnb1JiuCUmebi
	LQPAJsAVA6hZBXkpKvXYSG1x+347v0FY0ASb2xvUecrv8jfv4YEpCg0LeaTpdveoESNPf19pecpKl
	s3O4wlYnsq4vWi4U/Z2Das8VF4sSBp1JdEIfTTwYVCE4NOsSBzj3/dZkJw7FeGOW/6qF1RQzqBW2X
	fcve76q7F0qKrnYKHQQLprMSbfP568WHK+Ozvyyu9w4M5krH+UfcO2YwgyuDwGt58Y1EAYPOoeyhH
	/D98xPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpFz-0006ul-Vt; Mon, 03 Jun 2019 15:52:19 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpFo-0006jC-H6
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 15:52:11 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Sandeep.Sheriker@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="Sandeep.Sheriker@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Sandeep.Sheriker@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Sandeep.Sheriker@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,547,1549954800"; d="scan'208";a="37375307"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Jun 2019 08:52:07 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Jun 2019 08:52:07 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Mon, 3 Jun 2019 08:52:08 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 3 Jun 2019 08:51:01 -0700
Message-ID: <6ba0f9c5a06ff28385d09cac8beb4ec3a8c17403.1559260744.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559260743.git.sandeep.sheriker@microchip.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_085208_971523_12986425 
X-CRM114-Status: UNSURE (   5.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [patch v1 10/11] at91: create fit image
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

create fit image & add fit image to sdcard image.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 target/linux/at91/image/Makefile | 2 ++
 target/linux/at91/image/sama5.mk | 8 +++-----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/target/linux/at91/image/Makefile b/target/linux/at91/image/Makefile
index 3b01d42..adb7c6d 100644
--- a/target/linux/at91/image/Makefile
+++ b/target/linux/at91/image/Makefile
@@ -63,6 +63,8 @@ define Device/evaluation-dtb
   $(Device/evaluation-zImage)
   IMAGES += dtb
   IMAGE/dtb := install-dtb
+  KERNEL_SUFFIX := -fit-zImage.itb
+  KERNEL := kernel-bin | gzip | fit gzip $$(DTS_DIR)/$$(DEVICE_DTS).dtb
 endef
 
 define Device/evaluation-fit
diff --git a/target/linux/at91/image/sama5.mk b/target/linux/at91/image/sama5.mk
index bce89a0..ed01787 100644
--- a/target/linux/at91/image/sama5.mk
+++ b/target/linux/at91/image/sama5.mk
@@ -11,11 +11,9 @@ define Build/at91-sdcard
   rm -f $@.boot
   mkfs.fat -C $@.boot $(FAT32_BLOCKS)
 
-  mcopy -i $@.boot $(KDIR)/zImage ::zImage
-
-  $(foreach dts,$(DEVICE_DTS), \
-     mcopy -i $@.boot $(DTS_DIR)/$(dts).dtb \
-        ::$(dts).dtb)
+  mcopy -i $@.boot \
+	$(KDIR)/$(DEVICE_NAME)-fit-zImage.itb \
+	::$(DEVICE_NAME:at91-%=%)-fit.itb
 
   mcopy -i $@.boot \
     $(BIN_DIR)/u-boot-$(DEVICE_NAME:at91-%=%)_mmc*/u-boot.bin \
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
