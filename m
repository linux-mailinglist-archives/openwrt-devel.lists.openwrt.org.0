Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F7A305A7
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 02:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A9tOnRGTVWe3TfX1ACLmTdzN9AdBqP70R0xHl4TpKS4=; b=PFmWQTdGcEWvcIAVlWGjg4FdFh
	d4zuKo8622XMSgG6F34HbDB63sc6OYlE8CMvu1aT9+/+hi+UNlLLgqrMpV66errbs7SqtWqzuv9e9
	Sx21eXJ9J4uHko9th9YuNw1quT0qrRiXrCoE2LraSRZbpERwcjyJBA5N89E9Ony6DFWmxa4v2poKa
	dMsAj52dACpsWoHpJDxYV/+Lg2hEJLbLaYs7rkkHQyYy3TerDbz1av0wDrdsKpV5sueExuDfFf0EX
	xOSWDE9hijYgZAXXI8RejATU+pUQTgk3dcij8DJPovZIvbW7WHeZFdMcfOCIfSpzgSpTLHoImVXd9
	H4Y8RmOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWV61-0007g2-C4; Fri, 31 May 2019 00:08:33 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWV5a-0007GG-0G
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 00:08:07 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,533,1549954800"; d="scan'208";a="33803551"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 May 2019 17:08:01 -0700
Received: from sandeep-office.microchip.com (10.10.85.251) by mx.microchip.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5;
 Thu, 30 May 2019 17:08:00 -0700
From: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 30 May 2019 17:06:48 -0700
Message-ID: <01c2c60705433de6ccd6ee53a1cdecea5fd1dc57.1559260744.git.sandeep.sheriker@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1559260743.git.sandeep.sheriker@microchip.com>
References: <cover.1559260743.git.sandeep.sheriker@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_170806_149302_89790A02 
X-CRM114-Status: UNSURE (   6.91  )
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
Subject: [OpenWrt-Devel] [patch v1 03/11] uboot-at91: changed som1 ek
 default defconfigs
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

replaced som1 ek spi flash with qspi defconfig and mmc with mmc1
defconfig.

Signed-off-by: Sandeep Sheriker M <sandeep.sheriker@microchip.com>
---
 package/boot/uboot-at91/Makefile | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/package/boot/uboot-at91/Makefile b/package/boot/uboot-at91/Makefile
index 90f1a3b..c17f1e0 100644
--- a/package/boot/uboot-at91/Makefile
+++ b/package/boot/uboot-at91/Makefile
@@ -88,13 +88,13 @@ define U-Boot/sama5d4_xplained_nandflash
   BUILD_DEVICES:=at91-sama5d4_xplained
 endef
 
-define U-Boot/sama5d27_som1_ek_mmc
-  NAME:=SAMA5D27 SOM1 Ek (SDCard)
+define U-Boot/sama5d27_som1_ek_mmc1
+  NAME:=SAMA5D27 SOM1 Ek (SDCard1)
   BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
 endef
 
-define U-Boot/sama5d27_som1_ek_spiflash
+define U-Boot/sama5d27_som1_ek_qspiflash
   NAME:=SAMA5D27 SOM1 Ek (QSPI Flash)
   BUILD_SUBTARGET:=sama5
   BUILD_DEVICES:=at91-sama5d27_som1_ek
@@ -123,8 +123,8 @@ UBOOT_TARGETS := \
 	sama5d4_xplained_mmc \
 	sama5d4_xplained_spiflash \
 	sama5d4_xplained_nandflash\
-    sama5d27_som1_ek_mmc \
-    sama5d27_som1_ek_spiflash \
+	sama5d27_som1_ek_mmc1 \
+	sama5d27_som1_ek_qspiflash \
 	sama5d2_ptc_ek_nandflash \
 	sama5d2_ptc_ek_mmc
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
