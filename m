Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB9819DBD
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 15:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G4SUu0B1NbfIHrpoaws26s2pRu/j2s59vtTUnD3rdpg=; b=mLVlOhBEoCP7HfaxJiPfCoPPIz
	QTTFUMGtscZQqXHEKtncL/bPkv3VJ1wJEgPpdV0gyIb2TYxCXUtFszujTGxIqHgn47KHXLjRPrruh
	buR9+P1/pQZiY9yUlFHwoQlgxoYw4X05APduoh7th1Ro6xwpu8CC2Vg+FJHYvsStLXAodTz9tRMD7
	mLeax0decocHTzGnYwqKsMdWLM9gxHFKl2AWBVyCaDeNaPHXu0jy1A0kGKzNDWpA2Lppj5KFQJsRX
	+k8S8CIo61ANG3cMp9pbH+O1mvPQ9p3GgrYjv9pOAKDO61tY8M6Y1KzrqtXSsc+sL9IYTYuU48Ui+
	kfA4xnBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5AV-0008Fk-Ey; Fri, 10 May 2019 13:02:31 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5AM-0008Dp-6w
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 13:02:24 +0000
Received: from localhost.localdomain (184-23-191-103.vpn.dynamic.sonic.net
 [184.23.191.103])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 92D3240BC3;
 Fri, 10 May 2019 06:02:16 -0700 (PDT)
From: lede@allycomm.com
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 06:01:47 -0700
Message-Id: <20190510130147.30341-2-lede@allycomm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190510130147.30341-1-lede@allycomm.com>
References: <20190510130147.30341-1-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060222_334116_FFB8F937 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] generic-4.19: Backport spi-nand support for
 GigaDevice A/E
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

This patch backports verbatim the commits from Linux 5.0 and 5.1
that implemented support for GigaDevice SPI NAND A and E variants.

Supported only in Linux 4.19 and later as based on the upstream
drivers/mtd/nand/spi/ framework.

mtd-spinand-add-support-for-GigaDevice-GD5FxGQ4xA.patch
commit c93c613214ac (5.0)

mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch
commit c40c7a990a46 (5.1)

Run-tested-on: GL.iNet AR750S

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 ...and-add-support-for-GigaDevice-GD5FxGQ4xA.patch | 196 +++++++++++++++++++++
 ...-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch | 134 ++++++++++++++
 2 files changed, 330 insertions(+)
 create mode 100644 target/linux/generic/backport-4.19/450-v5.0-mtd-spinand-add-support-for-GigaDevice-GD5FxGQ4xA.patch
 create mode 100644 target/linux/generic/backport-4.19/451-v5.1-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch

diff --git a/target/linux/generic/backport-4.19/450-v5.0-mtd-spinand-add-support-for-GigaDevice-GD5FxGQ4xA.patch b/target/linux/generic/backport-4.19/450-v5.0-mtd-spinand-add-support-for-GigaDevice-GD5FxGQ4xA.patch
new file mode 100644
index 0000000000..15f761ab9d
--- /dev/null
+++ b/target/linux/generic/backport-4.19/450-v5.0-mtd-spinand-add-support-for-GigaDevice-GD5FxGQ4xA.patch
@@ -0,0 +1,196 @@
+From c93c613214ac70c87beab5422a60077bf126b855 Mon Sep 17 00:00:00 2001
+From: Chuanhong Guo <gch981213@gmail.com>
+Date: Wed, 28 Nov 2018 21:07:25 +0800
+Subject: [PATCH] mtd: spinand: add support for GigaDevice GD5FxGQ4xA
+
+Add support for GigaDevice GD5F1G/2G/4GQ4xA SPI NAND.
+
+Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
+Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
+Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
+---
+ drivers/mtd/nand/spi/Makefile     |   2 +-
+ drivers/mtd/nand/spi/core.c       |   1 +
+ drivers/mtd/nand/spi/gigadevice.c | 148 ++++++++++++++++++++++++++++++++++++++
+ include/linux/mtd/spinand.h       |   1 +
+ 4 files changed, 151 insertions(+), 1 deletion(-)
+ create mode 100644 drivers/mtd/nand/spi/gigadevice.c
+
+--- a/drivers/mtd/nand/spi/Makefile
++++ b/drivers/mtd/nand/spi/Makefile
+@@ -1,3 +1,3 @@
+ # SPDX-License-Identifier: GPL-2.0
+-spinand-objs := core.o macronix.o micron.o winbond.o
++spinand-objs := core.o gigadevice.o macronix.o micron.o winbond.o
+ obj-$(CONFIG_MTD_SPI_NAND) += spinand.o
+--- a/drivers/mtd/nand/spi/core.c
++++ b/drivers/mtd/nand/spi/core.c
+@@ -762,6 +762,7 @@ static const struct nand_ops spinand_ops
+ };
+ 
+ static const struct spinand_manufacturer *spinand_manufacturers[] = {
++	&gigadevice_spinand_manufacturer,
+ 	&macronix_spinand_manufacturer,
+ 	&micron_spinand_manufacturer,
+ 	&winbond_spinand_manufacturer,
+--- /dev/null
++++ b/drivers/mtd/nand/spi/gigadevice.c
+@@ -0,0 +1,148 @@
++// SPDX-License-Identifier: GPL-2.0
++/*
++ * Author:
++ *	Chuanhong Guo <gch981213@gmail.com>
++ */
++
++#include <linux/device.h>
++#include <linux/kernel.h>
++#include <linux/mtd/spinand.h>
++
++#define SPINAND_MFR_GIGADEVICE			0xC8
++#define GD5FXGQ4XA_STATUS_ECC_1_7_BITFLIPS	(1 << 4)
++#define GD5FXGQ4XA_STATUS_ECC_8_BITFLIPS	(3 << 4)
++
++static SPINAND_OP_VARIANTS(read_cache_variants,
++		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP(0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_X2_OP(0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_OP(true, 0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_OP(false, 0, 1, NULL, 0));
++
++static SPINAND_OP_VARIANTS(write_cache_variants,
++		SPINAND_PROG_LOAD_X4(true, 0, NULL, 0),
++		SPINAND_PROG_LOAD(true, 0, NULL, 0));
++
++static SPINAND_OP_VARIANTS(update_cache_variants,
++		SPINAND_PROG_LOAD_X4(false, 0, NULL, 0),
++		SPINAND_PROG_LOAD(false, 0, NULL, 0));
++
++static int gd5fxgq4xa_ooblayout_ecc(struct mtd_info *mtd, int section,
++				  struct mtd_oob_region *region)
++{
++	if (section > 3)
++		return -ERANGE;
++
++	region->offset = (16 * section) + 8;
++	region->length = 8;
++
++	return 0;
++}
++
++static int gd5fxgq4xa_ooblayout_free(struct mtd_info *mtd, int section,
++				   struct mtd_oob_region *region)
++{
++	if (section > 3)
++		return -ERANGE;
++
++	if (section) {
++		region->offset = 16 * section;
++		region->length = 8;
++	} else {
++		/* section 0 has one byte reserved for bad block mark */
++		region->offset = 1;
++		region->length = 7;
++	}
++	return 0;
++}
++
++static int gd5fxgq4xa_ecc_get_status(struct spinand_device *spinand,
++					 u8 status)
++{
++	switch (status & STATUS_ECC_MASK) {
++	case STATUS_ECC_NO_BITFLIPS:
++		return 0;
++
++	case GD5FXGQ4XA_STATUS_ECC_1_7_BITFLIPS:
++		/* 1-7 bits are flipped. return the maximum. */
++		return 7;
++
++	case GD5FXGQ4XA_STATUS_ECC_8_BITFLIPS:
++		return 8;
++
++	case STATUS_ECC_UNCOR_ERROR:
++		return -EBADMSG;
++
++	default:
++		break;
++	}
++
++	return -EINVAL;
++}
++
++static const struct mtd_ooblayout_ops gd5fxgq4xa_ooblayout = {
++	.ecc = gd5fxgq4xa_ooblayout_ecc,
++	.free = gd5fxgq4xa_ooblayout_free,
++};
++
++static const struct spinand_info gigadevice_spinand_table[] = {
++	SPINAND_INFO("GD5F1GQ4xA", 0xF1,
++		     NAND_MEMORG(1, 2048, 64, 64, 1024, 1, 1, 1),
++		     NAND_ECCREQ(8, 512),
++		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
++					      &write_cache_variants,
++					      &update_cache_variants),
++		     0,
++		     SPINAND_ECCINFO(&gd5fxgq4xa_ooblayout,
++				     gd5fxgq4xa_ecc_get_status)),
++	SPINAND_INFO("GD5F2GQ4xA", 0xF2,
++		     NAND_MEMORG(1, 2048, 64, 64, 2048, 1, 1, 1),
++		     NAND_ECCREQ(8, 512),
++		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
++					      &write_cache_variants,
++					      &update_cache_variants),
++		     0,
++		     SPINAND_ECCINFO(&gd5fxgq4xa_ooblayout,
++				     gd5fxgq4xa_ecc_get_status)),
++	SPINAND_INFO("GD5F4GQ4xA", 0xF4,
++		     NAND_MEMORG(1, 2048, 64, 64, 4096, 1, 1, 1),
++		     NAND_ECCREQ(8, 512),
++		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
++					      &write_cache_variants,
++					      &update_cache_variants),
++		     0,
++		     SPINAND_ECCINFO(&gd5fxgq4xa_ooblayout,
++				     gd5fxgq4xa_ecc_get_status)),
++};
++
++static int gigadevice_spinand_detect(struct spinand_device *spinand)
++{
++	u8 *id = spinand->id.data;
++	int ret;
++
++	/*
++	 * For GD NANDs, There is an address byte needed to shift in before IDs
++	 * are read out, so the first byte in raw_id is dummy.
++	 */
++	if (id[1] != SPINAND_MFR_GIGADEVICE)
++		return 0;
++
++	ret = spinand_match_and_init(spinand, gigadevice_spinand_table,
++				     ARRAY_SIZE(gigadevice_spinand_table),
++				     id[2]);
++	if (ret)
++		return ret;
++
++	return 1;
++}
++
++static const struct spinand_manufacturer_ops gigadevice_spinand_manuf_ops = {
++	.detect = gigadevice_spinand_detect,
++};
++
++const struct spinand_manufacturer gigadevice_spinand_manufacturer = {
++	.id = SPINAND_MFR_GIGADEVICE,
++	.name = "GigaDevice",
++	.ops = &gigadevice_spinand_manuf_ops,
++};
+--- a/include/linux/mtd/spinand.h
++++ b/include/linux/mtd/spinand.h
+@@ -194,6 +194,7 @@ struct spinand_manufacturer {
+ };
+ 
+ /* SPI NAND manufacturers */
++extern const struct spinand_manufacturer gigadevice_spinand_manufacturer;
+ extern const struct spinand_manufacturer macronix_spinand_manufacturer;
+ extern const struct spinand_manufacturer micron_spinand_manufacturer;
+ extern const struct spinand_manufacturer winbond_spinand_manufacturer;
diff --git a/target/linux/generic/backport-4.19/451-v5.1-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch b/target/linux/generic/backport-4.19/451-v5.1-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch
new file mode 100644
index 0000000000..44187adf62
--- /dev/null
+++ b/target/linux/generic/backport-4.19/451-v5.1-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UExxG.patch
@@ -0,0 +1,134 @@
+From c40c7a990a46e5102a1cc4190557bf315d32d80d Mon Sep 17 00:00:00 2001
+From: Stefan Roese <sr@denx.de>
+Date: Thu, 24 Jan 2019 13:48:06 +0100
+Subject: [PATCH] mtd: spinand: Add support for GigaDevice GD5F1GQ4UExxG
+
+Add support for GigaDevice GD5F1GQ4UExxG SPI NAND chip.
+
+Signed-off-by: Stefan Roese <sr@denx.de>
+Cc: Chuanhong Guo <gch981213@gmail.com>
+Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
+Cc: Miquel Raynal <miquel.raynal@bootlin.com>
+Cc: Boris Brezillon <bbrezillon@kernel.org>
+Reviewed-by: Boris Brezillon <bbrezillon@kernel.org>
+Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
+---
+ drivers/mtd/nand/spi/gigadevice.c | 83 +++++++++++++++++++++++++++++++++++++++
+ 1 file changed, 83 insertions(+)
+
+diff --git a/drivers/mtd/nand/spi/gigadevice.c b/drivers/mtd/nand/spi/gigadevice.c
+index e4141c20947a..0b49d8264bef 100644
+--- a/drivers/mtd/nand/spi/gigadevice.c
++++ b/drivers/mtd/nand/spi/gigadevice.c
+@@ -12,6 +12,8 @@
+ #define GD5FXGQ4XA_STATUS_ECC_1_7_BITFLIPS	(1 << 4)
+ #define GD5FXGQ4XA_STATUS_ECC_8_BITFLIPS	(3 << 4)
+ 
++#define GD5FXGQ4UEXXG_REG_STATUS2		0xf0
++
+ static SPINAND_OP_VARIANTS(read_cache_variants,
+ 		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
+ 		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
+@@ -81,11 +83,83 @@ static int gd5fxgq4xa_ecc_get_status(struct spinand_device *spinand,
+ 	return -EINVAL;
+ }
+ 
++static int gd5fxgq4uexxg_ooblayout_ecc(struct mtd_info *mtd, int section,
++				       struct mtd_oob_region *region)
++{
++	if (section)
++		return -ERANGE;
++
++	region->offset = 64;
++	region->length = 64;
++
++	return 0;
++}
++
++static int gd5fxgq4uexxg_ooblayout_free(struct mtd_info *mtd, int section,
++					struct mtd_oob_region *region)
++{
++	if (section)
++		return -ERANGE;
++
++	/* Reserve 1 bytes for the BBM. */
++	region->offset = 1;
++	region->length = 63;
++
++	return 0;
++}
++
++static int gd5fxgq4uexxg_ecc_get_status(struct spinand_device *spinand,
++					u8 status)
++{
++	u8 status2;
++	struct spi_mem_op op = SPINAND_GET_FEATURE_OP(GD5FXGQ4UEXXG_REG_STATUS2,
++						      &status2);
++	int ret;
++
++	switch (status & STATUS_ECC_MASK) {
++	case STATUS_ECC_NO_BITFLIPS:
++		return 0;
++
++	case GD5FXGQ4XA_STATUS_ECC_1_7_BITFLIPS:
++		/*
++		 * Read status2 register to determine a more fine grained
++		 * bit error status
++		 */
++		ret = spi_mem_exec_op(spinand->spimem, &op);
++		if (ret)
++			return ret;
++
++		/*
++		 * 4 ... 7 bits are flipped (1..4 can't be detected, so
++		 * report the maximum of 4 in this case
++		 */
++		/* bits sorted this way (3...0): ECCS1,ECCS0,ECCSE1,ECCSE0 */
++		return ((status & STATUS_ECC_MASK) >> 2) |
++			((status2 & STATUS_ECC_MASK) >> 4);
++
++	case GD5FXGQ4XA_STATUS_ECC_8_BITFLIPS:
++		return 8;
++
++	case STATUS_ECC_UNCOR_ERROR:
++		return -EBADMSG;
++
++	default:
++		break;
++	}
++
++	return -EINVAL;
++}
++
+ static const struct mtd_ooblayout_ops gd5fxgq4xa_ooblayout = {
+ 	.ecc = gd5fxgq4xa_ooblayout_ecc,
+ 	.free = gd5fxgq4xa_ooblayout_free,
+ };
+ 
++static const struct mtd_ooblayout_ops gd5fxgq4uexxg_ooblayout = {
++	.ecc = gd5fxgq4uexxg_ooblayout_ecc,
++	.free = gd5fxgq4uexxg_ooblayout_free,
++};
++
+ static const struct spinand_info gigadevice_spinand_table[] = {
+ 	SPINAND_INFO("GD5F1GQ4xA", 0xF1,
+ 		     NAND_MEMORG(1, 2048, 64, 64, 1024, 1, 1, 1),
+@@ -114,6 +188,15 @@ static const struct spinand_info gigadevice_spinand_table[] = {
+ 		     0,
+ 		     SPINAND_ECCINFO(&gd5fxgq4xa_ooblayout,
+ 				     gd5fxgq4xa_ecc_get_status)),
++	SPINAND_INFO("GD5F1GQ4UExxG", 0xd1,
++		     NAND_MEMORG(1, 2048, 128, 64, 1024, 1, 1, 1),
++		     NAND_ECCREQ(8, 512),
++		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants,
++					      &write_cache_variants,
++					      &update_cache_variants),
++		     0,
++		     SPINAND_ECCINFO(&gd5fxgq4uexxg_ooblayout,
++				     gd5fxgq4uexxg_ecc_get_status)),
+ };
+ 
+ static int gigadevice_spinand_detect(struct spinand_device *spinand)
+-- 
+2.11.0
+
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
