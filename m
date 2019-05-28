Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0D82CD86
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 May 2019 19:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeQtq+wpLEzMpsjq2ncCxWysv8NE2MW8G6Uusfj2lqQ=; b=PeoT5EJnKXVnfZ
	BKyID8mR+1l79F7NX5A4uQNlifiwWd5r5K3+0RvxLKToewf2dqjGlwoodsBog0Yh9xSlcJiynpguQ
	7lFq/PCMRFc9WT0AWwu3e7BHxUjZQRoX3M8nARjKG8SZGKYlzUTomWCkT8FX8rtvblFc3OYDydGo0
	vD9roxTRj29PrXzUEEWOHkvdZ186FmHHFeFq7254E5/lFn8KYcLDIDegrTCB9z/nrdPBACQmW5FQX
	pZHSO8UeizY5mG6+VpT9bAkVGsHQl1WMR/Ow4ahh/nqxfLSBjDNSRgAuIbo1k6qk58mDofdmfLHmd
	KM6zOIfQ0JJ6J3H7z7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfol-0000tV-2g; Tue, 28 May 2019 17:23:19 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfoJ-0000RW-Ls
 for openwrt-devel@lists.openwrt.org; Tue, 28 May 2019 17:22:53 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,523,1549954800"; d="scan'208";a="32110487"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 May 2019 10:22:27 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5;
 Tue, 28 May 2019 10:22:25 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 May 2019 10:21:11 -0700
Message-ID: <7488317a92aa8a0e6acb3f53e6743a71252be6d1.1559063196.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559063195.git.sandeep.sheriker@microchip.com>
References: <cover.1559063195.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_102251_780036_2EB2B177 
X-CRM114-Status: UNSURE (   6.54  )
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
 2/7] at91bootstrap: bump v3.8.10 to v3.8.12
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

1. bump to v3.8.12
2. add support for at91sam9x5ek
3. add sama5d27_som1_eksd1_uboot as default defconfig

Signed-off-by: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/at91bootstrap/Makefile | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstrap/Makefile
index 8a08a7a..c06ea81 100644
--- a/package/boot/at91bootstrap/Makefile
+++ b/package/boot/at91bootstrap/Makefile
@@ -9,12 +9,12 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=at91bootstrap
-PKG_VERSION:=v3.8.10
+PKG_VERSION:=v3.8.12
 PKG_RELEASE:=
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL:=https://github.com/linux4sam/at91bootstrap.git
-PKG_SOURCE_VERSION:=04efa5500d60a0211d14b6ee60df7ce0a828704d
+PKG_SOURCE_VERSION:= 28e15d07e9f24efb04b87bb0baa211a0c5640ef1
 
 PKG_BUILD_DIR = \
     $(BUILD_DIR)/$(PKG_NAME)-$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
@@ -28,6 +28,22 @@ define AT91Bootstrap/Default
   AT91BOOTSTRAP_IMAGE:=at91bootstrap.bin
 endef
 
+define AT91Bootstrap/at91sam9x5eknf_uboot
+  NAME:=AT91Bootstrap for AT91SAM9X5-EK board (NandFlash)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9g15ek at91sam9g25ek \
+                 at91sam9g35ek at91sam9x25ek \
+		 at91sam9x35ek
+endef
+
+define AT91Bootstrap/at91sam9x5eksd_uboot
+  NAME:=AT91Bootstrap for AT91SAM9X5-EK board (SDcard)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9g15ek at91sam9g25ek \
+                 at91sam9g35ek at91sam9x25ek \
+		 at91sam9x35ek
+endef
+
 define AT91Bootstrap/sama5d2_xplaineddf_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 Xplained board (SPI Flash)
   BUILD_SUBTARGET:=sama5
@@ -107,6 +123,8 @@ define AT91Bootstrap/sama5d2_ptc_eksd_uboot
 endef
 
 AT91BOOTSTRAP_TARGETS := \
+    at91sam9x5eknf_uboot \
+    at91sam9x5eksd_uboot \
     sama5d2_xplaineddf_uboot \
     sama5d2_xplaineddf_qspi_uboot \
     sama5d2_xplainedsd_uboot \
@@ -115,7 +133,7 @@ AT91BOOTSTRAP_TARGETS := \
     sama5d4_xplainednf_uboot_secure \
     sama5d4_xplaineddf_uboot_secure \
     sama5d4_xplainedsd_uboot_secure \
-	sama5d27_som1_eksd_uboot \
+	sama5d27_som1_eksd1_uboot \
 	sama5d27_som1_ekqspi_uboot \
 	sama5d2_ptc_eknf_uboot \
     sama5d2_ptc_eksd_uboot
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
