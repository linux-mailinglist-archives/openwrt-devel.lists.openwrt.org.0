Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38412E423A
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 05:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZ2nRr+6jz+dsJ9OaByYm1d/q61j5HQftvVch8UQ2JE=; b=Dz9q2AlzyHWQst
	ukW+Wi3zwc5uLw35DnG/37OnlqsKO5qkneeqGuonCZwQbnquAXAuU8NpAiWxn/7Sw1B+1gcfLSdOK
	XpBHH2udsCut4aGKuhQUKiOAcOLYMwzfR59csS8ucRKGd4OIMtEwaZml0RX4aX7F/Uzq67IEt0eKx
	ZCoprl2zL27LU4FUo/ZYx754mybYCAS5lUu/De320IGYXBXEIS/zFE/fiPBu3x6WhnFfbTRLe4Mo+
	lWFrSRUbR9B5UF9Kpi8VKNUF5F26yVghFU0D/nURc4pQDVAscpTy4tPejVfpVqQDyst1/4UUqTHFi
	g1ZxnTh1Psmc92BchZoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqhL-0007Sc-Fb; Fri, 25 Oct 2019 03:55:35 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqhA-0007Pk-5b
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 03:55:25 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 02F7C59C41;
 Thu, 24 Oct 2019 20:55:12 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 24 Oct 2019 20:55:01 -0700
Message-Id: <20191025035501.3063-3-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025035501.3063-1-lede@allycomm.com>
References: <20191025035501.3063-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_205524_240508_81955CFD 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: Prepare NAND subtarget for
 upstream support of SPI NAND
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
Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>,
 Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Linux 4.19 supplies the upstream spi-nand framework,
permitting porting and support of boards with SPI NAND.

  * Adjusted nand/target.mk to provide FEATURES += squashfs nand

  * Updated config-default to provide current MTD and UBI support

Defaults selected for:

  CONFIG_MTD_UBI_WL_THRESHOLD=4096
  CONFIG_MTD_UBI_BEB_LIMIT=20
  # CONFIG_MTD_UBI_FASTMAP is not set
  # CONFIG_MTD_UBI_GLUEBI is not set

The bad-block reservation limit technically should be 21 for Paragon
SPI NAND but most other devices in the class are 20 blocks per Gbit.
In Linux 5.2 this is specified on a per-chip basis through NAND_MEMORG

Includes config required for CONFIG_MTD_NAND_AR934X=y
as introduced to the ath79 platform with commit 758a4d1766

Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>

---
 target/linux/ath79/nand/config-default | 27 ++++++++++++++++++--------
 target/linux/ath79/nand/target.mk      |  7 ++++---
 2 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
index c8114a4985..695afdce88 100644
--- a/target/linux/ath79/nand/config-default
+++ b/target/linux/ath79/nand/config-default
@@ -1,15 +1,26 @@
-CONFIG_BCH=y
+CONFIG_BLK_MQ_PCI=y
 CONFIG_MTD_NAND=y
 CONFIG_MTD_NAND_AR934X=y
-CONFIG_MTD_NAND_BCH=y
+CONFIG_MTD_NAND_CORE=y
 CONFIG_MTD_NAND_ECC=y
-CONFIG_MTD_NAND_ECC_BCH=y
-CONFIG_MTD_SPINAND_MT29F=y
-CONFIG_MTD_SPINAND_ONDIEECC=y
+CONFIG_MTD_SPI_NAND=y
 CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_BLOCK=y
+CONFIG_MTD_UBI_WL_THRESHOLD=4096
 CONFIG_MTD_UBI_BEB_LIMIT=20
-# CONFIG_MTD_UBI_BLOCK is not set
 # CONFIG_MTD_UBI_FASTMAP is not set
 # CONFIG_MTD_UBI_GLUEBI is not set
-CONFIG_MTD_UBI_WL_THRESHOLD=4096
-# CONFIG_UBIFS_FS is not set
+CONFIG_OF_ADDRESS_PCI=y
+CONFIG_OF_PCI=y
+CONFIG_OF_PCI_IRQ=y
+CONFIG_PCI=y
+# CONFIG_PCI_AR71XX is not set
+CONFIG_PCI_AR724X=y
+CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
+CONFIG_PCI_DOMAINS=y
+# CONFIG_PHY_AR7100_USB is not set
+CONFIG_PHY_AR7200_USB=y
+CONFIG_UBIFS_FS=y
+CONFIG_UBIFS_FS_ADVANCED_COMPR=y
+CONFIG_UBIFS_FS_LZO=y
+CONFIG_UBIFS_FS_ZLIB=y
diff --git a/target/linux/ath79/nand/target.mk b/target/linux/ath79/nand/target.mk
index 91afe675c5..c565c9b2b8 100644
--- a/target/linux/ath79/nand/target.mk
+++ b/target/linux/ath79/nand/target.mk
@@ -1,9 +1,10 @@
 BOARDNAME := Generic devices with NAND flash
-FEATURES += squashfs nand rtc
+
+FEATURES += squashfs nand
 
 DEFAULT_PACKAGES += wpad-basic
 
 define Target/Description
-	Build firmware for Atheros AR71xx/AR913x based boards with
-	NAND flash, e.g. Netgear WNDR4300.
+	Firmware for boards using Qualcomm Atheros, MIPS-based SoCs
+	in the ar72xx and subsequent series, with support for NAND flash
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
