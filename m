Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529AA1B7D8D
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Apr 2020 20:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3fZeqhXL1xvVxpNqLh7U8Go2QcB7mD91zmb8YFhEsrg=; b=Cc02mWOVwgj5RE
	/oPTJyNbOqrNp40cnwEj2KGTnF96c9N6RT/8lj8TLq2rbv2lnSXp52UiS0BZADBhrOrBNlf80vU/o
	jbXb25e7qayqcl2EzaTvLpzkjSx1aaHilG6PZWwPep8RbYuwMNAn7ExK+fwVNgI2kYO7aETJB/07v
	2gCga+QfibS4mcWKC+oyoaHwiPI3pbn1oq9ibqJA2J6ypcgCGhe2Iq6UzPVbvDxez5WRkTKQDlpyn
	GZfARWdiernFigTuAbxDEJ7bZmWBRdgGtyxIsQmG6Y2WU1ugq2Wdcd6WaEC1PFhHtLgscbvolHiCs
	qD6ibM8A5uv4fZ7/GGew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2lS-0006jM-10; Fri, 24 Apr 2020 18:09:26 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2lI-0006iH-BS
 for openwrt-devel@lists.openwrt.org; Fri, 24 Apr 2020 18:09:19 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F0D9D00C02AF09015AA5778.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0d:9d00:c02a:f090:15aa:5778])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 880CC22B1E
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Apr 2020 20:09:09 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 24 Apr 2020 20:09:01 +0200
Message-Id: <20200424180901.108961-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_110916_696762_735958AE 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ath79: remove unused TP-Link partition
 parser
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This parser was added with the target, but no device seems to use it
currently, as all partitions are specified in the device-tree.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/config-4.19                |   1 -
 target/linux/ath79/config-5.4                 |   1 -
 .../405-mtd-tp-link-partition-parser.patch    | 250 ------------------
 .../405-mtd-tp-link-partition-parser.patch    | 244 -----------------
 4 files changed, 496 deletions(-)
 delete mode 100644 target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch
 delete mode 100644 target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch

diff --git a/target/linux/ath79/config-4.19 b/target/linux/ath79/config-4.19
index d92da1fbe2..cfa0ebd759 100644
--- a/target/linux/ath79/config-4.19
+++ b/target/linux/ath79/config-4.19
@@ -171,7 +171,6 @@ CONFIG_MTD_SPLIT_LZMA_FW=y
 CONFIG_MTD_SPLIT_SEAMA_FW=y
 CONFIG_MTD_SPLIT_TPLINK_FW=y
 CONFIG_MTD_SPLIT_UIMAGE_FW=y
-CONFIG_MTD_TPLINK_PARTS=y
 CONFIG_MTD_VIRT_CONCAT=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEED_PER_CPU_KM=y
diff --git a/target/linux/ath79/config-5.4 b/target/linux/ath79/config-5.4
index d591f884e7..80f7209b5b 100644
--- a/target/linux/ath79/config-5.4
+++ b/target/linux/ath79/config-5.4
@@ -178,7 +178,6 @@ CONFIG_MTD_SPLIT_LZMA_FW=y
 CONFIG_MTD_SPLIT_SEAMA_FW=y
 CONFIG_MTD_SPLIT_TPLINK_FW=y
 CONFIG_MTD_SPLIT_UIMAGE_FW=y
-CONFIG_MTD_TPLINK_PARTS=y
 CONFIG_MTD_VIRT_CONCAT=y
 CONFIG_NEED_DMA_MAP_STATE=y
 CONFIG_NEED_PER_CPU_KM=y
diff --git a/target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch b/target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch
deleted file mode 100644
index d65bf663b5..0000000000
--- a/target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch
+++ /dev/null
@@ -1,250 +0,0 @@
---- a/drivers/mtd/Kconfig
-+++ b/drivers/mtd/Kconfig
-@@ -193,6 +193,12 @@ config MTD_MYLOADER_PARTS
- 	  You will still need the parsing functions to be called by the driver
- 	  for your particular device. It won't happen automatically.
- 
-+config MTD_TPLINK_PARTS
-+	tristate "TP-Link AR7XXX/AR9XXX partitioning support"
-+	depends on ATH79
-+	---help---
-+	  TBD.
-+
- comment "User Modules And Translation Layers"
- 
- #
---- a/drivers/mtd/Makefile
-+++ b/drivers/mtd/Makefile
-@@ -18,6 +18,7 @@ obj-$(CONFIG_MTD_BCM63XX_PARTS)	+= bcm63
- obj-$(CONFIG_MTD_BCM47XX_PARTS)	+= bcm47xxpart.o
- obj-$(CONFIG_MTD_MYLOADER_PARTS) += myloader.o
- obj-y				+= parsers/
-+obj-$(CONFIG_MTD_TPLINK_PARTS)	+= tplinkpart.o
- 
- # 'Users' - code which presents functionality to userspace.
- obj-$(CONFIG_MTD_BLKDEVS)	+= mtd_blkdevs.o
---- /dev/null
-+++ b/drivers/mtd/tplinkpart.c
-@@ -0,0 +1,222 @@
-+/*
-+ * Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
-+ *
-+ * This program is free software; you can redistribute it and/or modify it
-+ * under the terms of the GNU General Public License version 2 as published
-+ * by the Free Software Foundation.
-+ */
-+
-+#include <linux/kernel.h>
-+#include <linux/module.h>
-+#include <linux/slab.h>
-+#include <linux/vmalloc.h>
-+#include <linux/magic.h>
-+
-+#include <linux/mtd/mtd.h>
-+#include <linux/mtd/partitions.h>
-+#include <linux/version.h>
-+
-+#define TPLINK_NUM_PARTS	5
-+#define TPLINK_HEADER_V1	0x01000000
-+#define TPLINK_HEADER_V2	0x02000000
-+#define MD5SUM_LEN		16
-+
-+#define TPLINK_ART_LEN		0x10000
-+#define TPLINK_KERNEL_OFFS	0x20000
-+#define TPLINK_64K_KERNEL_OFFS	0x10000
-+
-+struct tplink_fw_header {
-+	uint32_t	version;	/* header version */
-+	char		vendor_name[24];
-+	char		fw_version[36];
-+	uint32_t	hw_id;		/* hardware id */
-+	uint32_t	hw_rev;		/* hardware revision */
-+	uint32_t	unk1;
-+	uint8_t		md5sum1[MD5SUM_LEN];
-+	uint32_t	unk2;
-+	uint8_t		md5sum2[MD5SUM_LEN];
-+	uint32_t	unk3;
-+	uint32_t	kernel_la;	/* kernel load address */
-+	uint32_t	kernel_ep;	/* kernel entry point */
-+	uint32_t	fw_length;	/* total length of the firmware */
-+	uint32_t	kernel_ofs;	/* kernel data offset */
-+	uint32_t	kernel_len;	/* kernel data length */
-+	uint32_t	rootfs_ofs;	/* rootfs data offset */
-+	uint32_t	rootfs_len;	/* rootfs data length */
-+	uint32_t	boot_ofs;	/* bootloader data offset */
-+	uint32_t	boot_len;	/* bootloader data length */
-+	uint8_t		pad[360];
-+} __attribute__ ((packed));
-+
-+static struct tplink_fw_header *
-+tplink_read_header(struct mtd_info *mtd, size_t offset)
-+{
-+	struct tplink_fw_header *header;
-+	size_t header_len;
-+	size_t retlen;
-+	int ret;
-+	u32 t;
-+
-+	header = vmalloc(sizeof(*header));
-+	if (!header)
-+		goto err;
-+
-+	header_len = sizeof(struct tplink_fw_header);
-+	ret = mtd_read(mtd, offset, header_len, &retlen,
-+		       (unsigned char *) header);
-+	if (ret)
-+		goto err_free_header;
-+
-+	if (retlen != header_len)
-+		goto err_free_header;
-+
-+	/* sanity checks */
-+	t = be32_to_cpu(header->version);
-+	if ((t != TPLINK_HEADER_V1) && (t != TPLINK_HEADER_V2))
-+		goto err_free_header;
-+
-+	t = be32_to_cpu(header->kernel_ofs);
-+	if (t != header_len)
-+		goto err_free_header;
-+
-+	return header;
-+
-+err_free_header:
-+	vfree(header);
-+err:
-+	return NULL;
-+}
-+
-+static int tplink_check_rootfs_magic(struct mtd_info *mtd, size_t offset)
-+{
-+	u32 magic;
-+	size_t retlen;
-+	int ret;
-+
-+	ret = mtd_read(mtd, offset, sizeof(magic), &retlen,
-+		       (unsigned char *) &magic);
-+	if (ret)
-+		return ret;
-+
-+	if (retlen != sizeof(magic))
-+		return -EIO;
-+
-+	if (le32_to_cpu(magic) != SQUASHFS_MAGIC &&
-+	    magic != 0x19852003)
-+		return -EINVAL;
-+
-+	return 0;
-+}
-+
-+static int tplink_parse_partitions_offset(struct mtd_info *master,
-+				   const struct mtd_partition **pparts,
-+				   struct mtd_part_parser_data *data,
-+				   size_t offset)
-+{
-+	struct mtd_partition *parts;
-+	struct tplink_fw_header *header;
-+	int nr_parts;
-+	size_t art_offset;
-+	size_t rootfs_offset;
-+	size_t squashfs_offset;
-+	int ret;
-+
-+	nr_parts = TPLINK_NUM_PARTS;
-+	parts = kzalloc(nr_parts * sizeof(struct mtd_partition), GFP_KERNEL);
-+	if (!parts) {
-+		ret = -ENOMEM;
-+		goto err;
-+	}
-+
-+	header = tplink_read_header(master, offset);
-+	if (!header) {
-+		pr_notice("%s: no TP-Link header found\n", master->name);
-+		ret = -ENODEV;
-+		goto err_free_parts;
-+	}
-+
-+	squashfs_offset = offset + sizeof(struct tplink_fw_header) +
-+			  be32_to_cpu(header->kernel_len);
-+
-+	ret = tplink_check_rootfs_magic(master, squashfs_offset);
-+	if (ret == 0)
-+		rootfs_offset = squashfs_offset;
-+	else
-+		rootfs_offset = offset + be32_to_cpu(header->rootfs_ofs);
-+
-+	art_offset = master->size - TPLINK_ART_LEN;
-+
-+	parts[0].name = "u-boot";
-+	parts[0].offset = 0;
-+	parts[0].size = offset;
-+	parts[0].mask_flags = MTD_WRITEABLE;
-+
-+	parts[1].name = "kernel";
-+	parts[1].offset = offset;
-+	parts[1].size = rootfs_offset - offset;
-+
-+	parts[2].name = "rootfs";
-+	parts[2].offset = rootfs_offset;
-+	parts[2].size = art_offset - rootfs_offset;
-+
-+	parts[3].name = "art";
-+	parts[3].offset = art_offset;
-+	parts[3].size = TPLINK_ART_LEN;
-+	parts[3].mask_flags = MTD_WRITEABLE;
-+
-+	parts[4].name = "firmware";
-+	parts[4].offset = offset;
-+	parts[4].size = art_offset - offset;
-+
-+	vfree(header);
-+
-+	*pparts = parts;
-+	return nr_parts;
-+
-+err_free_parts:
-+	kfree(parts);
-+err:
-+	*pparts = NULL;
-+	return ret;
-+}
-+
-+static int tplink_parse_partitions(struct mtd_info *master,
-+				   const struct mtd_partition **pparts,
-+				   struct mtd_part_parser_data *data)
-+{
-+	return tplink_parse_partitions_offset(master, pparts, data,
-+		                              TPLINK_KERNEL_OFFS);
-+}
-+
-+static int tplink_parse_64k_partitions(struct mtd_info *master,
-+				   const struct mtd_partition **pparts,
-+				   struct mtd_part_parser_data *data)
-+{
-+	return tplink_parse_partitions_offset(master, pparts, data,
-+		                              TPLINK_64K_KERNEL_OFFS);
-+}
-+
-+static struct mtd_part_parser tplink_parser = {
-+	.owner		= THIS_MODULE,
-+	.parse_fn	= tplink_parse_partitions,
-+	.name		= "tp-link",
-+};
-+
-+static struct mtd_part_parser tplink_64k_parser = {
-+	.owner		= THIS_MODULE,
-+	.parse_fn	= tplink_parse_64k_partitions,
-+	.name		= "tp-link-64k",
-+};
-+
-+static int __init tplink_parser_init(void)
-+{
-+	register_mtd_parser(&tplink_parser);
-+	register_mtd_parser(&tplink_64k_parser);
-+
-+	return 0;
-+}
-+
-+module_init(tplink_parser_init);
-+
-+MODULE_LICENSE("GPL v2");
-+MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
diff --git a/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch b/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
deleted file mode 100644
index 281cd2c351..0000000000
--- a/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
+++ /dev/null
@@ -1,244 +0,0 @@
---- a/drivers/mtd/parsers/Kconfig
-+++ b/drivers/mtd/parsers/Kconfig
-@@ -184,3 +184,9 @@ config MTD_MYLOADER_PARTS
- 
- 	  You will still need the parsing functions to be called by the driver
- 	  for your particular device. It won't happen automatically.
-+
-+config MTD_TPLINK_PARTS
-+	tristate "TP-Link AR7XXX/AR9XXX partitioning support"
-+	depends on ATH79
-+	---help---
-+	  TBD.
---- a/drivers/mtd/parsers/Makefile
-+++ b/drivers/mtd/parsers/Makefile
-@@ -11,3 +11,4 @@ obj-$(CONFIG_MTD_PARSER_TRX)		+= parser_
- obj-$(CONFIG_MTD_SHARPSL_PARTS)		+= sharpslpart.o
- obj-$(CONFIG_MTD_REDBOOT_PARTS)		+= redboot.o
- obj-$(CONFIG_MTD_MYLOADER_PARTS)		+= myloader.o
-+obj-$(CONFIG_MTD_TPLINK_PARTS)		+= tplinkpart.o
---- /dev/null
-+++ b/drivers/mtd/parsers/tplinkpart.c
-@@ -0,0 +1,222 @@
-+/*
-+ * Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
-+ *
-+ * This program is free software; you can redistribute it and/or modify it
-+ * under the terms of the GNU General Public License version 2 as published
-+ * by the Free Software Foundation.
-+ */
-+
-+#include <linux/kernel.h>
-+#include <linux/module.h>
-+#include <linux/slab.h>
-+#include <linux/vmalloc.h>
-+#include <linux/magic.h>
-+
-+#include <linux/mtd/mtd.h>
-+#include <linux/mtd/partitions.h>
-+#include <linux/version.h>
-+
-+#define TPLINK_NUM_PARTS	5
-+#define TPLINK_HEADER_V1	0x01000000
-+#define TPLINK_HEADER_V2	0x02000000
-+#define MD5SUM_LEN		16
-+
-+#define TPLINK_ART_LEN		0x10000
-+#define TPLINK_KERNEL_OFFS	0x20000
-+#define TPLINK_64K_KERNEL_OFFS	0x10000
-+
-+struct tplink_fw_header {
-+	uint32_t	version;	/* header version */
-+	char		vendor_name[24];
-+	char		fw_version[36];
-+	uint32_t	hw_id;		/* hardware id */
-+	uint32_t	hw_rev;		/* hardware revision */
-+	uint32_t	unk1;
-+	uint8_t		md5sum1[MD5SUM_LEN];
-+	uint32_t	unk2;
-+	uint8_t		md5sum2[MD5SUM_LEN];
-+	uint32_t	unk3;
-+	uint32_t	kernel_la;	/* kernel load address */
-+	uint32_t	kernel_ep;	/* kernel entry point */
-+	uint32_t	fw_length;	/* total length of the firmware */
-+	uint32_t	kernel_ofs;	/* kernel data offset */
-+	uint32_t	kernel_len;	/* kernel data length */
-+	uint32_t	rootfs_ofs;	/* rootfs data offset */
-+	uint32_t	rootfs_len;	/* rootfs data length */
-+	uint32_t	boot_ofs;	/* bootloader data offset */
-+	uint32_t	boot_len;	/* bootloader data length */
-+	uint8_t		pad[360];
-+} __attribute__ ((packed));
-+
-+static struct tplink_fw_header *
-+tplink_read_header(struct mtd_info *mtd, size_t offset)
-+{
-+	struct tplink_fw_header *header;
-+	size_t header_len;
-+	size_t retlen;
-+	int ret;
-+	u32 t;
-+
-+	header = vmalloc(sizeof(*header));
-+	if (!header)
-+		goto err;
-+
-+	header_len = sizeof(struct tplink_fw_header);
-+	ret = mtd_read(mtd, offset, header_len, &retlen,
-+		       (unsigned char *) header);
-+	if (ret)
-+		goto err_free_header;
-+
-+	if (retlen != header_len)
-+		goto err_free_header;
-+
-+	/* sanity checks */
-+	t = be32_to_cpu(header->version);
-+	if ((t != TPLINK_HEADER_V1) && (t != TPLINK_HEADER_V2))
-+		goto err_free_header;
-+
-+	t = be32_to_cpu(header->kernel_ofs);
-+	if (t != header_len)
-+		goto err_free_header;
-+
-+	return header;
-+
-+err_free_header:
-+	vfree(header);
-+err:
-+	return NULL;
-+}
-+
-+static int tplink_check_rootfs_magic(struct mtd_info *mtd, size_t offset)
-+{
-+	u32 magic;
-+	size_t retlen;
-+	int ret;
-+
-+	ret = mtd_read(mtd, offset, sizeof(magic), &retlen,
-+		       (unsigned char *) &magic);
-+	if (ret)
-+		return ret;
-+
-+	if (retlen != sizeof(magic))
-+		return -EIO;
-+
-+	if (le32_to_cpu(magic) != SQUASHFS_MAGIC &&
-+	    magic != 0x19852003)
-+		return -EINVAL;
-+
-+	return 0;
-+}
-+
-+static int tplink_parse_partitions_offset(struct mtd_info *master,
-+				   const struct mtd_partition **pparts,
-+				   struct mtd_part_parser_data *data,
-+				   size_t offset)
-+{
-+	struct mtd_partition *parts;
-+	struct tplink_fw_header *header;
-+	int nr_parts;
-+	size_t art_offset;
-+	size_t rootfs_offset;
-+	size_t squashfs_offset;
-+	int ret;
-+
-+	nr_parts = TPLINK_NUM_PARTS;
-+	parts = kzalloc(nr_parts * sizeof(struct mtd_partition), GFP_KERNEL);
-+	if (!parts) {
-+		ret = -ENOMEM;
-+		goto err;
-+	}
-+
-+	header = tplink_read_header(master, offset);
-+	if (!header) {
-+		pr_notice("%s: no TP-Link header found\n", master->name);
-+		ret = -ENODEV;
-+		goto err_free_parts;
-+	}
-+
-+	squashfs_offset = offset + sizeof(struct tplink_fw_header) +
-+			  be32_to_cpu(header->kernel_len);
-+
-+	ret = tplink_check_rootfs_magic(master, squashfs_offset);
-+	if (ret == 0)
-+		rootfs_offset = squashfs_offset;
-+	else
-+		rootfs_offset = offset + be32_to_cpu(header->rootfs_ofs);
-+
-+	art_offset = master->size - TPLINK_ART_LEN;
-+
-+	parts[0].name = "u-boot";
-+	parts[0].offset = 0;
-+	parts[0].size = offset;
-+	parts[0].mask_flags = MTD_WRITEABLE;
-+
-+	parts[1].name = "kernel";
-+	parts[1].offset = offset;
-+	parts[1].size = rootfs_offset - offset;
-+
-+	parts[2].name = "rootfs";
-+	parts[2].offset = rootfs_offset;
-+	parts[2].size = art_offset - rootfs_offset;
-+
-+	parts[3].name = "art";
-+	parts[3].offset = art_offset;
-+	parts[3].size = TPLINK_ART_LEN;
-+	parts[3].mask_flags = MTD_WRITEABLE;
-+
-+	parts[4].name = "firmware";
-+	parts[4].offset = offset;
-+	parts[4].size = art_offset - offset;
-+
-+	vfree(header);
-+
-+	*pparts = parts;
-+	return nr_parts;
-+
-+err_free_parts:
-+	kfree(parts);
-+err:
-+	*pparts = NULL;
-+	return ret;
-+}
-+
-+static int tplink_parse_partitions(struct mtd_info *master,
-+				   const struct mtd_partition **pparts,
-+				   struct mtd_part_parser_data *data)
-+{
-+	return tplink_parse_partitions_offset(master, pparts, data,
-+		                              TPLINK_KERNEL_OFFS);
-+}
-+
-+static int tplink_parse_64k_partitions(struct mtd_info *master,
-+				   const struct mtd_partition **pparts,
-+				   struct mtd_part_parser_data *data)
-+{
-+	return tplink_parse_partitions_offset(master, pparts, data,
-+		                              TPLINK_64K_KERNEL_OFFS);
-+}
-+
-+static struct mtd_part_parser tplink_parser = {
-+	.owner		= THIS_MODULE,
-+	.parse_fn	= tplink_parse_partitions,
-+	.name		= "tp-link",
-+};
-+
-+static struct mtd_part_parser tplink_64k_parser = {
-+	.owner		= THIS_MODULE,
-+	.parse_fn	= tplink_parse_64k_partitions,
-+	.name		= "tp-link-64k",
-+};
-+
-+static int __init tplink_parser_init(void)
-+{
-+	register_mtd_parser(&tplink_parser);
-+	register_mtd_parser(&tplink_64k_parser);
-+
-+	return 0;
-+}
-+
-+module_init(tplink_parser_init);
-+
-+MODULE_LICENSE("GPL v2");
-+MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
