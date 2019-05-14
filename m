Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F471E53A
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 00:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hNfEBlNNXPJPZwsdHriXTAXYwVDmpfEhfmJB9YtC8So=; b=cmMr4EqeElpmkzlTSSq+jj18w4
	2MT8GCtu0key9+3LeNAiBRpPaZRhqsM+QBEBh7Y+2mYEV5oc0a2fZPfycgQuTmMXfPCNcKzxxjKlv
	dX9pj9T5AmX6eEJKdpxTkbJ8OFsXQKyXk4pkju8n128u1E6S1PseYOgHKgKOmAx1NTwXI2/Iao+3E
	fft/kRp1jhYBhPNDO8xJ6QKnYWOgcybncVKvft5DyU9ERjCuyYA48TR2xZB3GmsJ2BV1gXm1WXrqV
	GzeGs/kld8uLd1PRt3OMomyYgoen94oATEwuxe2FfdF2YkFqZ3gDSw7/p6V+AugswTwOMPsijg8DV
	xBXoylCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQg6W-0001kg-3a; Tue, 14 May 2019 22:41:00 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQg6O-0001kH-JN
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 22:40:53 +0000
Received: from allycomm.com (inet.guidewire.com [199.91.42.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 768EB3BB6D;
 Tue, 14 May 2019 15:40:17 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 15:39:55 -0700
Message-Id: <20190514223956.19663-3-lede@allycomm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190514223956.19663-1-lede@allycomm.com>
References: <20190514223956.19663-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_154052_638482_E143E755 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 2/3] ath79: Prepare nand subtarget for
 SPI-NAND boards under Linux 4.19
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

From: Jeff Kletsky <git-commits@allycomm.com>

Linux 4.19 supplies the upstream spi-nand framework,
permitting porting and support of boards with SPI NAND.

  * Adjusted nand/target.mk to set KERNEL_PATCHVER:=4.19
    and provide FEATURES += squashfs nand

  * Updated config-default to provide current MTD and UBI support

  * Removed non-functional GL.iNet AR300M NAND target

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/image/nand.mk       | 13 -----------
 target/linux/ath79/nand/config-default | 32 +++++++++++++++-----------
 target/linux/ath79/nand/target.mk      | 10 +++++---
 3 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index eee419194b..e69de29bb2 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,13 +0,0 @@
-define Device/glinet_gl-ar300m-nand
-  ATH_SOC := qca9531
-  DEVICE_TITLE := GL-AR300M (NAND)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
-  KERNEL_SIZE := 2048k
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  VID_HDR_OFFSET := 512
-  IMAGES += factory.ubi
-  IMAGE/sysupgrade.bin := sysupgrade-tar
-  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-endef
-TARGET_DEVICES += glinet_gl-ar300m-nand
diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
index 738c29c9b1..05a5a8dbd0 100644
--- a/target/linux/ath79/nand/config-default
+++ b/target/linux/ath79/nand/config-default
@@ -1,14 +1,20 @@
-CONFIG_BCH=y
-CONFIG_MTD_NAND=y
-CONFIG_MTD_NAND_BCH=y
-CONFIG_MTD_NAND_ECC=y
-CONFIG_MTD_NAND_ECC_BCH=y
-CONFIG_MTD_SPINAND_MT29F=y
-CONFIG_MTD_SPINAND_ONDIEECC=y
+CONFIG_BLK_MQ_PCI=y
+CONFIG_LEDS_RESET=y
+CONFIG_MTD_NAND_CORE=y
+CONFIG_MTD_SPI_NAND=y
 CONFIG_MTD_UBI=y
-CONFIG_MTD_UBI_BEB_LIMIT=20
-# CONFIG_MTD_UBI_BLOCK is not set
-# CONFIG_MTD_UBI_FASTMAP is not set
-# CONFIG_MTD_UBI_GLUEBI is not set
-CONFIG_MTD_UBI_WL_THRESHOLD=4096
-# CONFIG_UBIFS_FS is not set
+CONFIG_MTD_UBI_BLOCK=y
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
index 91afe675c5..6ab9748ca4 100644
--- a/target/linux/ath79/nand/target.mk
+++ b/target/linux/ath79/nand/target.mk
@@ -1,9 +1,13 @@
 BOARDNAME := Generic devices with NAND flash
-FEATURES += squashfs nand rtc
+
+# SPI NAND support requires at least Linux 4.19
+KERNEL_PATCHVER:=4.19
+
+FEATURES += squashfs nand
 
 DEFAULT_PACKAGES += wpad-basic
 
 define Target/Description
-	Build firmware for Atheros AR71xx/AR913x based boards with
-	NAND flash, e.g. Netgear WNDR4300.
+	Firmware for boards based on MIPS 24kc Atheros/Qualcomm SoCs
+	in the ar72xx and subsequent generations with support for NAND flash
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
