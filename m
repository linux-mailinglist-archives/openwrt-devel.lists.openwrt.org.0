Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA56F31F8E
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Jun 2019 16:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TVGtRkSEh9Cc0rNbU5oWLGj48z9lbSWPkTRDyntNOgk=; b=Yyev2V8ueiJDTMNARv7VyP42j2
	XU3Hd6EFXRl23GpHnkMJOQGcpdyOsakM2RyHLT+JM161drM5G2GXjEdZsXJBLMpsM4TIu5pgLRHP6
	NZ2Qo3nuugxzPUS2SEMzr4CjL9pzvGs2bfEtEZaNjQ62wO3CTodos3aUehYnB5TDsJeh8ffiFPJkV
	ekXTLHXPDR3beRndNSk/lyTRlmxpkf+fW4CtaFntf2DoMeeWghnkDeaxS5dnEvvUD9p+5JArFRXZh
	I9rEho2up0HNuT4DHu3CwSl+SbNEfLEMpcBANbfxbBzELRGzD1/zre18k7fqcdr/H3nW60IjZWo9F
	LNrF5RyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX4Zz-00023y-FW; Sat, 01 Jun 2019 14:01:51 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX4Yu-0000ay-Fo
 for openwrt-devel@lists.openwrt.org; Sat, 01 Jun 2019 14:00:46 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,538,1549954800"; d="scan'208";a="35191648"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jun 2019 07:00:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with ShadowRedundancy id 15.1.1713.5; 
 Sat, 1 Jun 2019 14:00:17 +0000
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 May 2019 17:08:01 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 30 May 2019 17:06:51 -0700
Message-ID: <fb248f9bd56e3875ac60a36c29d1490a2e90c5dd.1559260744.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559260743.git.sandeep.sheriker@microchip.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_070044_754032_8AF10A05 
X-CRM114-Status: UNSURE (   5.37  )
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
Subject: [OpenWrt-Devel] [patch v1 06/11] at91bootstrap: add support for
 at91sam9x5ek
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
 package/boot/at91bootstrap/Makefile | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/package/boot/at91bootstrap/Makefile b/package/boot/at91bootstrap/Makefile
index 642d094..6496b5a 100644
--- a/package/boot/at91bootstrap/Makefile
+++ b/package/boot/at91bootstrap/Makefile
@@ -27,6 +27,18 @@ define AT91Bootstrap/Default
   AT91BOOTSTRAP_IMAGE:=at91bootstrap.bin
 endef
 
+define AT91Bootstrap/at91sam9x5eknf_uboot
+  NAME:=AT91Bootstrap for AT91SAM9X5-EK board (NandFlash)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9x25ek at91sam9x35ek
+endef
+
+define AT91Bootstrap/at91sam9x5eksd_uboot
+  NAME:=AT91Bootstrap for AT91SAM9X5-EK board (SDcard)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9x25ek at91sam9x35ek
+endef
+
 define AT91Bootstrap/sama5d2_xplaineddf_uboot
   TITLE:=AT91Bootstrap for SAMA5D2 Xplained board (SPI Flash)
   BUILD_SUBTARGET:=sama5
@@ -106,6 +118,8 @@ define AT91Bootstrap/sama5d2_ptc_eksd_uboot
 endef
 
 AT91BOOTSTRAP_TARGETS := \
+    at91sam9x5eknf_uboot \
+    at91sam9x5eksd_uboot \
     sama5d2_xplaineddf_uboot \
     sama5d2_xplaineddf_qspi_uboot \
     sama5d2_xplainedsd_uboot \
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
