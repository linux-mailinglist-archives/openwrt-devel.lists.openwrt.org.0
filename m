Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF08CE8FE4
	for <lists+openwrt-devel@lfdr.de>; Tue, 29 Oct 2019 20:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9oycwcrlM9MSK8HNLY4ANAjUwNamUTUI4Ff0wsGx4k=; b=NaPVj8QcTRpILD
	YruVFdCEwwJq3icwJRfE3wjUksq98ySxEGO3QdMNi9lV3lU63BdHwEOi/54nhceYq6FP+jzd6Z2Dj
	FAdjMeibmFElwNAsFNhssWJP3wZmPJ3K2Xxv0yB4SdMJymakzqplmRjusl6b78LZ/U1T1xqfVypoq
	UB85ZRGaCNieL+kSxi2BRADAmTqgeh89/su0JdrJ7l5wAIQ2+XAS19tgdY5r+86DbcwgUugzWjzbN
	iIsfnhHSyi03PukZ7PBAmH2ABoe/ZC6TR1geai/79Osrgu/5nYeMBU9LBTUE/6Bcw4Ag37QgJCwOs
	+MYwuLT+iR4QdnykUjmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPX7b-0005pS-D4; Tue, 29 Oct 2019 19:25:39 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPX7T-0005of-Ah
 for openwrt-devel@lists.openwrt.org; Tue, 29 Oct 2019 19:25:32 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 4F4DB39D6E;
 Tue, 29 Oct 2019 12:25:30 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 29 Oct 2019 12:25:22 -0700
Message-Id: <20191029192522.27268-2-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029192522.27268-1-lede@allycomm.com>
References: <20191029192522.27268-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_122531_375078_47496024 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/1] ath79: Prepare NAND subtarget for
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

Contents adjusted to remove declarations provided at the target level
by commit 08a134820f5 (Oct 23, 2019) ath79: enable PCI for whole target

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
Tested-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/nand/config-default | 15 +++++++--------
 target/linux/ath79/nand/target.mk      |  7 ++++---
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
index 84e6748a20..4742ad52d0 100644
--- a/target/linux/ath79/nand/config-default
+++ b/target/linux/ath79/nand/config-default
@@ -1,18 +1,17 @@
-CONFIG_AT803X_PHY=y
-CONFIG_BCH=y
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
-CONFIG_MTD_UBI_BEB_LIMIT=20
 CONFIG_MTD_UBI_BLOCK=y
+CONFIG_MTD_UBI_WL_THRESHOLD=4096
+CONFIG_MTD_UBI_BEB_LIMIT=20
 # CONFIG_MTD_UBI_FASTMAP is not set
 # CONFIG_MTD_UBI_GLUEBI is not set
-CONFIG_MTD_UBI_WL_THRESHOLD=4096
+# CONFIG_PCI_AR71XX is not set
+# CONFIG_PHY_AR7100_USB is not set
+CONFIG_PHY_AR7200_USB=y
 CONFIG_UBIFS_FS=y
 CONFIG_UBIFS_FS_ADVANCED_COMPR=y
 CONFIG_UBIFS_FS_LZO=y
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
