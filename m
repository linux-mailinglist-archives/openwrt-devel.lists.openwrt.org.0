Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5611D3D552
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 20:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NWir3lodE3hm7OlPMO6j8Lna32t9VvaOjz4BiMTgnA=; b=RHwsutATnCdhPm
	MHtbW6j4m9klslhjlcQ56UZ5xNO6nlDE5ojn9C6ArjZNRwsCwJkZbPMIiFzUeLLZTvFkytO7uqTlx
	Vyag2jh7MUtHAACBYqXDKEZy2JqQXpeqJ7OlnS5kr1QRvoWj+yJPdHixgfzcQgMD06nd/bqGWSooA
	yauadqLQivcvByklI+TzW3xpPzKlIQwQP3OKMcD50t0TriXljQNUVwc2vg+L9qLap+gg5D+xtjzlg
	UrtU8eud1YuEWQMdbrgBJwsj0y54XEMcCqN/gveM0h6XZGR4rUsyhgyr9n6KgdG1l6Rvu9KokRWgo
	cXhIMiZPPBH1VFhz9Pvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halJQ-0002Ue-GU; Tue, 11 Jun 2019 18:16:00 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halIs-00025u-5Y
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 18:15:29 +0000
Received: from allycomm.com (unknown [IPv6:2601:647:5401:2210::49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 0CF2424301;
 Tue, 11 Jun 2019 11:15:25 -0700 (PDT)
From: Jeff Kletsky <lede@allycomm.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 11 Jun 2019 11:14:38 -0700
Message-Id: <20190611181438.8620-3-lede@allycomm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611181438.8620-1-lede@allycomm.com>
References: <20190611181438.8620-1-lede@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_111526_602821_F20FE2F1 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] kernel: mtd: spinand: Backport
 GigaDevice "F" from linux/next
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
Cc: Jeff Kletsky <git-commits@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Backport upstream support for GigaDevice GD5F1GQ4UFxxG SPI NAND

 * Add support for GigaDevice GD5F1GQ4UFxxG
 * Add support for two-byte device IDs
 * Define macros for page-read ops with three-byte addresses

Upstream patches refreshed against 4.19.48

Run-tested-on: ath79/nand (4.19.48, WIP)

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 ...ne-macros-for-page-read-ops-with-thr.patch |  86 ++++++++
 ...-Add-support-for-two-byte-device-IDs.patch |  48 +++++
 ...support-for-GigaDevice-GD5F1GQ4UFxxG.patch | 197 ++++++++++++++++++
 3 files changed, 331 insertions(+)
 create mode 100644 target/linux/generic/backport-4.19/431-v5.3-mtd-spinand-Define-macros-for-page-read-ops-with-thr.patch
 create mode 100644 target/linux/generic/backport-4.19/432-v5.3-mtd-spinand-Add-support-for-two-byte-device-IDs.patch
 create mode 100644 target/linux/generic/backport-4.19/433-v5.3-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UFxxG.patch

diff --git a/target/linux/generic/backport-4.19/431-v5.3-mtd-spinand-Define-macros-for-page-read-ops-with-thr.patch b/target/linux/generic/backport-4.19/431-v5.3-mtd-spinand-Define-macros-for-page-read-ops-with-thr.patch
new file mode 100644
index 0000000000..87bb35275e
--- /dev/null
+++ b/target/linux/generic/backport-4.19/431-v5.3-mtd-spinand-Define-macros-for-page-read-ops-with-thr.patch
@@ -0,0 +1,86 @@
+From d014717d50b1efd011a3a028ce92563a4dc9bae5 Mon Sep 17 00:00:00 2001
+From: Jeff Kletsky <git-commits@allycomm.com>
+Date: Wed, 22 May 2019 15:05:53 -0700
+Subject: [PATCH 1/3] mtd: spinand: Define macros for page-read ops with
+ three-byte addresses
+
+The GigaDevice GD5F1GQ4UFxxG SPI NAND utilizes three-byte addresses
+for its page-read ops.
+
+http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/
+
+Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
+Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
+Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
+---
+ include/linux/mtd/spinand.h | 30 ++++++++++++++++++++++++++++++
+ 1 file changed, 30 insertions(+)
+
+diff --git a/include/linux/mtd/spinand.h b/include/linux/mtd/spinand.h
+index 507f7e289bd1..8aa39ac41e8e 100644
+--- a/include/linux/mtd/spinand.h
++++ b/include/linux/mtd/spinand.h
+@@ -68,30 +68,60 @@
+ 		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
+ 		   SPI_MEM_OP_DATA_IN(len, buf, 1))
+ 
++#define SPINAND_PAGE_READ_FROM_CACHE_OP_3A(fast, addr, ndummy, buf, len) \
++	SPI_MEM_OP(SPI_MEM_OP_CMD(fast ? 0x0b : 0x03, 1),		\
++		   SPI_MEM_OP_ADDR(3, addr, 1),				\
++		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
++		   SPI_MEM_OP_DATA_IN(len, buf, 1))
++
+ #define SPINAND_PAGE_READ_FROM_CACHE_X2_OP(addr, ndummy, buf, len)	\
+ 	SPI_MEM_OP(SPI_MEM_OP_CMD(0x3b, 1),				\
+ 		   SPI_MEM_OP_ADDR(2, addr, 1),				\
+ 		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
+ 		   SPI_MEM_OP_DATA_IN(len, buf, 2))
+ 
++#define SPINAND_PAGE_READ_FROM_CACHE_X2_OP_3A(addr, ndummy, buf, len)	\
++	SPI_MEM_OP(SPI_MEM_OP_CMD(0x3b, 1),				\
++		   SPI_MEM_OP_ADDR(3, addr, 1),				\
++		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
++		   SPI_MEM_OP_DATA_IN(len, buf, 2))
++
+ #define SPINAND_PAGE_READ_FROM_CACHE_X4_OP(addr, ndummy, buf, len)	\
+ 	SPI_MEM_OP(SPI_MEM_OP_CMD(0x6b, 1),				\
+ 		   SPI_MEM_OP_ADDR(2, addr, 1),				\
+ 		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
+ 		   SPI_MEM_OP_DATA_IN(len, buf, 4))
+ 
++#define SPINAND_PAGE_READ_FROM_CACHE_X4_OP_3A(addr, ndummy, buf, len)	\
++	SPI_MEM_OP(SPI_MEM_OP_CMD(0x6b, 1),				\
++		   SPI_MEM_OP_ADDR(3, addr, 1),				\
++		   SPI_MEM_OP_DUMMY(ndummy, 1),				\
++		   SPI_MEM_OP_DATA_IN(len, buf, 4))
++
+ #define SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP(addr, ndummy, buf, len)	\
+ 	SPI_MEM_OP(SPI_MEM_OP_CMD(0xbb, 1),				\
+ 		   SPI_MEM_OP_ADDR(2, addr, 2),				\
+ 		   SPI_MEM_OP_DUMMY(ndummy, 2),				\
+ 		   SPI_MEM_OP_DATA_IN(len, buf, 2))
+ 
++#define SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP_3A(addr, ndummy, buf, len) \
++	SPI_MEM_OP(SPI_MEM_OP_CMD(0xbb, 1),				\
++		   SPI_MEM_OP_ADDR(3, addr, 2),				\
++		   SPI_MEM_OP_DUMMY(ndummy, 2),				\
++		   SPI_MEM_OP_DATA_IN(len, buf, 2))
++
+ #define SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(addr, ndummy, buf, len)	\
+ 	SPI_MEM_OP(SPI_MEM_OP_CMD(0xeb, 1),				\
+ 		   SPI_MEM_OP_ADDR(2, addr, 4),				\
+ 		   SPI_MEM_OP_DUMMY(ndummy, 4),				\
+ 		   SPI_MEM_OP_DATA_IN(len, buf, 4))
+ 
++#define SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP_3A(addr, ndummy, buf, len) \
++	SPI_MEM_OP(SPI_MEM_OP_CMD(0xeb, 1),				\
++		   SPI_MEM_OP_ADDR(3, addr, 4),				\
++		   SPI_MEM_OP_DUMMY(ndummy, 4),				\
++		   SPI_MEM_OP_DATA_IN(len, buf, 4))
++
+ #define SPINAND_PROG_EXEC_OP(addr)					\
+ 	SPI_MEM_OP(SPI_MEM_OP_CMD(0x10, 1),				\
+ 		   SPI_MEM_OP_ADDR(3, addr, 1),				\
+-- 
+2.20.1
+
diff --git a/target/linux/generic/backport-4.19/432-v5.3-mtd-spinand-Add-support-for-two-byte-device-IDs.patch b/target/linux/generic/backport-4.19/432-v5.3-mtd-spinand-Add-support-for-two-byte-device-IDs.patch
new file mode 100644
index 0000000000..fcbecbb762
--- /dev/null
+++ b/target/linux/generic/backport-4.19/432-v5.3-mtd-spinand-Add-support-for-two-byte-device-IDs.patch
@@ -0,0 +1,48 @@
+From 53dd94a79d3bfdaae30e5a4ebf474ea1af1d572e Mon Sep 17 00:00:00 2001
+From: Jeff Kletsky <git-commits@allycomm.com>
+Date: Wed, 22 May 2019 15:05:54 -0700
+Subject: [PATCH 2/3] mtd: spinand: Add support for two-byte device IDs
+
+The GigaDevice GD5F1GQ4UFxxG SPI NAND utilizes two-byte device IDs.
+
+http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/
+
+Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
+Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
+Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
+---
+ drivers/mtd/nand/spi/core.c | 2 +-
+ include/linux/mtd/spinand.h | 4 ++--
+ 2 files changed, 3 insertions(+), 3 deletions(-)
+
+--- a/drivers/mtd/nand/spi/core.c
++++ b/drivers/mtd/nand/spi/core.c
+@@ -853,7 +853,7 @@ spinand_select_op_variant(struct spinand
+  */
+ int spinand_match_and_init(struct spinand_device *spinand,
+ 			   const struct spinand_info *table,
+-			   unsigned int table_size, u8 devid)
++			   unsigned int table_size, u16 devid)
+ {
+ 	struct nand_device *nand = spinand_to_nand(spinand);
+ 	unsigned int i;
+--- a/include/linux/mtd/spinand.h
++++ b/include/linux/mtd/spinand.h
+@@ -290,7 +290,7 @@ struct spinand_ecc_info {
+  */
+ struct spinand_info {
+ 	const char *model;
+-	u8 devid;
++	u16 devid;
+ 	u32 flags;
+ 	struct nand_memory_organization memorg;
+ 	struct nand_ecc_req eccreq;
+@@ -445,7 +445,7 @@ static inline void spinand_set_of_node(s
+ 
+ int spinand_match_and_init(struct spinand_device *dev,
+ 			   const struct spinand_info *table,
+-			   unsigned int table_size, u8 devid);
++			   unsigned int table_size, u16 devid);
+ 
+ int spinand_upd_cfg(struct spinand_device *spinand, u8 mask, u8 val);
+ int spinand_select_target(struct spinand_device *spinand, unsigned int target);
diff --git a/target/linux/generic/backport-4.19/433-v5.3-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UFxxG.patch b/target/linux/generic/backport-4.19/433-v5.3-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UFxxG.patch
new file mode 100644
index 0000000000..06d87ba5e0
--- /dev/null
+++ b/target/linux/generic/backport-4.19/433-v5.3-mtd-spinand-Add-support-for-GigaDevice-GD5F1GQ4UFxxG.patch
@@ -0,0 +1,197 @@
+
+IMPORTANT NOTE
+==============
+
+The content of this patch has been adapted for Linux 4.19
+
+Changes were made in Linux 5.x to add the bad-block limit
+to the metadata available to the driver, adding a parameter
+
+NAND_MEMORG(1, 2048, 128, 64, 1024, 20, 1, 1, 1),
+                                     ^- New bad-block limit
+
+This patch omits that parameter from the upstream patch
+for compatibility with the Linux 4.19 driver.
+
+=====
+
+From 049df13c4e63884fe6634db5568e08f65922256e Mon Sep 17 00:00:00 2001
+From: Jeff Kletsky <git-commits@allycomm.com>
+Date: Wed, 22 May 2019 15:05:55 -0700
+Subject: [PATCH 3/3] mtd: spinand: Add support for GigaDevice GD5F1GQ4UFxxG
+
+The GigaDevice GD5F1GQ4UFxxG SPI NAND is in current production devices
+and, while it has the same logical layout as the E-series devices,
+it differs in the SPI interfacing in significant ways.
+
+This support is contingent on previous commits to:
+
+  * Add support for two-byte device IDs
+  * Define macros for page-read ops with three-byte addresses
+
+http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/
+
+Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
+Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
+Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
+---
+ drivers/mtd/nand/spi/gigadevice.c | 79 +++++++++++++++++++++++++------
+ 1 file changed, 64 insertions(+), 15 deletions(-)
+
+--- a/drivers/mtd/nand/spi/gigadevice.c
++++ b/drivers/mtd/nand/spi/gigadevice.c
+@@ -9,11 +9,17 @@
+ #include <linux/mtd/spinand.h>
+ 
+ #define SPINAND_MFR_GIGADEVICE			0xC8
++
+ #define GD5FXGQ4XA_STATUS_ECC_1_7_BITFLIPS	(1 << 4)
+ #define GD5FXGQ4XA_STATUS_ECC_8_BITFLIPS	(3 << 4)
+ 
+ #define GD5FXGQ4UEXXG_REG_STATUS2		0xf0
+ 
++#define GD5FXGQ4UXFXXG_STATUS_ECC_MASK		(7 << 4)
++#define GD5FXGQ4UXFXXG_STATUS_ECC_NO_BITFLIPS	(0 << 4)
++#define GD5FXGQ4UXFXXG_STATUS_ECC_1_3_BITFLIPS	(1 << 4)
++#define GD5FXGQ4UXFXXG_STATUS_ECC_UNCOR_ERROR	(7 << 4)
++
+ static SPINAND_OP_VARIANTS(read_cache_variants,
+ 		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
+ 		SPINAND_PAGE_READ_FROM_CACHE_X4_OP(0, 1, NULL, 0),
+@@ -22,6 +28,14 @@ static SPINAND_OP_VARIANTS(read_cache_va
+ 		SPINAND_PAGE_READ_FROM_CACHE_OP(true, 0, 1, NULL, 0),
+ 		SPINAND_PAGE_READ_FROM_CACHE_OP(false, 0, 1, NULL, 0));
+ 
++static SPINAND_OP_VARIANTS(read_cache_variants_f,
++		SPINAND_PAGE_READ_FROM_CACHE_QUADIO_OP(0, 2, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_X4_OP_3A(0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_DUALIO_OP(0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_X2_OP_3A(0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_OP_3A(true, 0, 1, NULL, 0),
++		SPINAND_PAGE_READ_FROM_CACHE_OP_3A(false, 0, 0, NULL, 0));
++
+ static SPINAND_OP_VARIANTS(write_cache_variants,
+ 		SPINAND_PROG_LOAD_X4(true, 0, NULL, 0),
+ 		SPINAND_PROG_LOAD(true, 0, NULL, 0));
+@@ -59,6 +73,11 @@ static int gd5fxgq4xa_ooblayout_free(str
+ 	return 0;
+ }
+ 
++static const struct mtd_ooblayout_ops gd5fxgq4xa_ooblayout = {
++	.ecc = gd5fxgq4xa_ooblayout_ecc,
++	.free = gd5fxgq4xa_ooblayout_free,
++};
++
+ static int gd5fxgq4xa_ecc_get_status(struct spinand_device *spinand,
+ 					 u8 status)
+ {
+@@ -83,7 +102,7 @@ static int gd5fxgq4xa_ecc_get_status(str
+ 	return -EINVAL;
+ }
+ 
+-static int gd5fxgq4uexxg_ooblayout_ecc(struct mtd_info *mtd, int section,
++static int gd5fxgq4_variant2_ooblayout_ecc(struct mtd_info *mtd, int section,
+ 				       struct mtd_oob_region *region)
+ {
+ 	if (section)
+@@ -95,7 +114,7 @@ static int gd5fxgq4uexxg_ooblayout_ecc(s
+ 	return 0;
+ }
+ 
+-static int gd5fxgq4uexxg_ooblayout_free(struct mtd_info *mtd, int section,
++static int gd5fxgq4_variant2_ooblayout_free(struct mtd_info *mtd, int section,
+ 					struct mtd_oob_region *region)
+ {
+ 	if (section)
+@@ -108,6 +127,11 @@ static int gd5fxgq4uexxg_ooblayout_free(
+ 	return 0;
+ }
+ 
++static const struct mtd_ooblayout_ops gd5fxgq4_variant2_ooblayout = {
++	.ecc = gd5fxgq4_variant2_ooblayout_ecc,
++	.free = gd5fxgq4_variant2_ooblayout_free,
++};
++
+ static int gd5fxgq4uexxg_ecc_get_status(struct spinand_device *spinand,
+ 					u8 status)
+ {
+@@ -150,15 +174,25 @@ static int gd5fxgq4uexxg_ecc_get_status(
+ 	return -EINVAL;
+ }
+ 
+-static const struct mtd_ooblayout_ops gd5fxgq4xa_ooblayout = {
+-	.ecc = gd5fxgq4xa_ooblayout_ecc,
+-	.free = gd5fxgq4xa_ooblayout_free,
+-};
++static int gd5fxgq4ufxxg_ecc_get_status(struct spinand_device *spinand,
++					u8 status)
++{
++	switch (status & GD5FXGQ4UXFXXG_STATUS_ECC_MASK) {
++	case GD5FXGQ4UXFXXG_STATUS_ECC_NO_BITFLIPS:
++		return 0;
+ 
+-static const struct mtd_ooblayout_ops gd5fxgq4uexxg_ooblayout = {
+-	.ecc = gd5fxgq4uexxg_ooblayout_ecc,
+-	.free = gd5fxgq4uexxg_ooblayout_free,
+-};
++	case GD5FXGQ4UXFXXG_STATUS_ECC_1_3_BITFLIPS:
++		return 3;
++
++	case GD5FXGQ4UXFXXG_STATUS_ECC_UNCOR_ERROR:
++		return -EBADMSG;
++
++	default: /* (2 << 4) through (6 << 4) are 4-8 corrected errors */
++		return ((status & GD5FXGQ4UXFXXG_STATUS_ECC_MASK) >> 4) + 2;
++	}
++
++	return -EINVAL;
++}
+ 
+ static const struct spinand_info gigadevice_spinand_table[] = {
+ 	SPINAND_INFO("GD5F1GQ4xA", 0xF1,
+@@ -195,25 +229,40 @@ static const struct spinand_info gigadev
+ 					      &write_cache_variants,
+ 					      &update_cache_variants),
+ 		     0,
+-		     SPINAND_ECCINFO(&gd5fxgq4uexxg_ooblayout,
++		     SPINAND_ECCINFO(&gd5fxgq4_variant2_ooblayout,
+ 				     gd5fxgq4uexxg_ecc_get_status)),
++	SPINAND_INFO("GD5F1GQ4UFxxG", 0xb148,
++		     NAND_MEMORG(1, 2048, 128, 64, 1024, 1, 1, 1),
++		     NAND_ECCREQ(8, 512),
++		     SPINAND_INFO_OP_VARIANTS(&read_cache_variants_f,
++					      &write_cache_variants,
++					      &update_cache_variants),
++		     0,
++		     SPINAND_ECCINFO(&gd5fxgq4_variant2_ooblayout,
++				     gd5fxgq4ufxxg_ecc_get_status)),
+ };
+ 
+ static int gigadevice_spinand_detect(struct spinand_device *spinand)
+ {
+ 	u8 *id = spinand->id.data;
++	u16 did;
+ 	int ret;
+ 
+ 	/*
+-	 * For GD NANDs, There is an address byte needed to shift in before IDs
+-	 * are read out, so the first byte in raw_id is dummy.
++	 * Earlier GDF5-series devices (A,E) return [0][MID][DID]
++	 * Later (F) devices return [MID][DID1][DID2]
+ 	 */
+-	if (id[1] != SPINAND_MFR_GIGADEVICE)
++
++	if (id[0] == SPINAND_MFR_GIGADEVICE)
++		did = (id[1] << 8) + id[2];
++	else if (id[0] == 0 && id[1] == SPINAND_MFR_GIGADEVICE)
++		did = id[2];
++	else
+ 		return 0;
+ 
+ 	ret = spinand_match_and_init(spinand, gigadevice_spinand_table,
+ 				     ARRAY_SIZE(gigadevice_spinand_table),
+-				     id[2]);
++				     did);
+ 	if (ret)
+ 		return ret;
+ 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
