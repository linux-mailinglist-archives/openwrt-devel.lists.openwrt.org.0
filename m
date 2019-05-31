Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913A2305A5
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 02:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HxmIxy2XZ7Ot117iWutfHt8stnXIz8z15dsuIfStzMM=; b=IOIKHtdRM2yn6FDlHSUaD4A5ng
	ijrXKY/BtIzqz7lsAO3Z2LuC2kJ+kmwW/e0gEK3ZbY/xwShAlfy6l/dsOPfiL3grRq/vY8VGUSY4O
	bSvWP1Zp7CHxHPbyqpyBsHdE1cZa0HrgUqwfCpt2EWHipCnT9NhuFJKY72IdZ8qm0UFc8dZUEP2Gs
	lwoILfFpR33Mb/6Q6lAcodLbQmIvysiL4J2cqUpEahoK8XpOckxqqMRv8VckZRMEbJBdNe/TMd9n1
	fpxinfaJFAJ6fVeIt+FbdWYy2YL/AGaz7ENxm/hdn6NY1RYGAZJrB04uF4hxkFmuUbq6oubjMUENh
	K5GKw7ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWV5h-0007Hz-4A; Fri, 31 May 2019 00:08:13 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWV5X-0007GH-A5
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 00:08:05 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,533,1549954800"; d="scan'208";a="33803550"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2019 17:08:01 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5;
 Thu, 30 May 2019 17:08:00 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 30 May 2019 17:06:47 -0700
Message-ID: <40ac96e8806b3f40e0bdac630b247612c8eef083.1559260744.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559260743.git.sandeep.sheriker@microchip.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_170803_458064_4C65121A 
X-CRM114-Status: UNSURE (   5.18  )
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
Subject: [OpenWrt-Devel] [patch v1 02/11] uboot-at91:add at91sam9x5ek soc
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

add support to build u-boot binaries for at91sam9x5ek socs.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index 15a26be..90f1a3b 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -38,6 +38,14 @@ define U-Boot/at91sam9x5ek_nandflash
 				 at91sam9x35ek
 endef
 
+define U-Boot/at91sam9x5ek_mmc
+  NAME:=AT91SAM9X5-EK board (SDcard)
+  BUILD_SUBTARGET:=sam9x
+  BUILD_DEVICES:=at91sam9g15ek at91sam9g25ek \
+                 at91sam9g35ek at91sam9x25ek \
+				 at91sam9x35ek
+endef
+
 define U-Boot/sama5d3_xplained_nandflash
   NAME:=SAMA5D3 Xplained board (NandFlash)
   BUILD_SUBTARGET:=sama5
@@ -107,6 +115,7 @@ endef
 UBOOT_TARGETS := \
 	at91sam9m10g45ek_nandflash \
 	at91sam9x5ek_nandflash \
+	at91sam9x5ek_mmc \
 	sama5d3_xplained_nandflash \
 	sama5d3_xplained_mmc \
 	sama5d2_xplained_mmc \
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
