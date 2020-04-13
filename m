Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA48A1A6A1E
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 18:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qIWmwOyo4bdJRDqqtrk0VAQNDct6kyRRO3QXJ2zKsp4=; b=pOMidYkluxNc0afMO6hcAf+xmI
	WqHaToLnjPPwZ23yc4l5fLy+7NzzTWcr0x5wow+005I8juImO1/qG1nerg8LCuM3AvftckydWdCYQ
	SIQb/qU+rirf97xQ4a1w1i/B8tm1JrOeuXBWwrpsYnUDAOrURTy3azzwaYiJPaothKbYU5vFY4kmj
	Z8aD5UgTej37vKFt/sJRPbZ3m1HkG20BzUp5ZdtGmVoE1KgYdX473VW2i7FdK3FQ0ZUWE8YrFLyNE
	nEQFd31DaVj9EfsdPOl9KqVZDyyLzOKZbJ2Kb2HtHDA8ULDZkPMlxd0+dwVaEPb12+GNC4TtTCRAp
	TJvMyiCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2CR-0003og-UA; Mon, 13 Apr 2020 16:44:43 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2CF-0003lt-ON
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 16:44:34 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MBmDy-1jXyLI2euC-00CBg6 for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 18:44:28 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 18:43:44 +0200
Message-Id: <20200413164344.57000-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413164344.57000-1-freifunk@adrianschmutzler.de>
References: <20200413164344.57000-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:kW5VKPuFGsXC1WIjNk8V+DthN3j+PvkQhEmdPABEtHnNEMWCWwV
 Dvqa88IUz1maTkKuXOtFxythRpIktyIZVHNOM4XWNCxYbHGYjUFsZBW1Zts9qFhDlGzmwBK
 255AFC1ipHclE5cXjHf1eFP90CS8i9g9KboZaL44F8M3sZZtEFUYSlK7hDVM704O1J4Hiz7
 BihjtCw2/81Z5OkHwBVCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1OSsLtwOJuY=:kjsnmhTlFcNTbYwO/HYzvj
 8yBdT38R6/bvOPQURDeCYqbhlZlqB4zpKZKZ9GzBqiCQx7Ga9zaSbmLqu+VSLGhskSOm1rm6Q
 QS/mm0d2Uk/f+J0dGT/Tbthaq+5lWv6hn7tFWiHVJy8S/wmtK1p+4JyJrCO0LIRuTXEsk2eeI
 TuHetDNmIHQFirSz1Oyir/ifNYXFqkIMq9FZCmlwDUm5CVrgymjL7e2BT/vivAIu4ink4Ja+z
 X/IRk6aD/JkQUZ/8d47qHCemlu1tLeFcYu/GN5P4dqNyqmhTgE7zJTC5Goyl22m0aBA58PmN8
 F2s4fEKZbdw3TjoE5Gvp6CYb7eGMEwpmbNlxrMnLeWacPIWRnAWOJ4hncjUFkyVGLAopCIACC
 30UpAGxe4RWz321CWufXB0bFr9VefXqv091nABCT7h1MkW2pLDPcfLGd8TzEabaSDHJ3uIwuu
 mUNxFQEqgQFbQK0UW4iDfpLvB1PINuXn+Teoy8nXDYXcNu/q1GHzbyMw4rrFsP7sV9aoGBsqe
 7rB9yL+PU+zbcy8ChLHstK+eZNarWokJcIRfKlfAv9qaMWkHzBzTTqQ5NEWeLFvAhHr93VDqD
 oX3D3oFRneID9TQpb+JRDdplefLdZHPgB3htOzYgwxk6rTGHyx5E8mob/r8A11GccBYJg7ANL
 n7YoUjH0wchicSBQAt542RW+5no1Mug1b5sy33b37PMg1K6yBR/044vOdkbBRuxgbtZu/y8Qm
 pEaG4oerjwaFAa8f4XsEL6UTlaW28CCedDwfId/Z3fVoBx7TksLmMIO7SS9/SwWHvI7QMFhm7
 TrRj2Fo1b19x6T0MHy+v0i20RPJeOxpBYo6BmA572YqBVkd0Zwh9K7PQqFLyB1kqHrhjG94
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_094432_246530_D0674E17 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: move tplinkpart.c parser to
 patches
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

Between 4.19 and 5.4, mtd parsers have been moved to "parsers"
subdirectory. Like for myloader.c in the previous patch,
this patch moves tplinkpart.c to the kernel patches, so the
code and the kernel includes are at the same location and
the path can be adjusted per kernel.

While at it, remove some outdated kernel version switches from
the C code.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ath79/files/drivers/mtd/tplinkpart.c      | 235 ----------------
 .../405-mtd-tp-link-partition-parser.patch    | 225 ++++++++++++++++
 .../405-mtd-tp-link-partition-parser.patch    | 255 ++++++++++++++++--
 3 files changed, 462 insertions(+), 253 deletions(-)
 delete mode 100644 target/linux/ath79/files/drivers/mtd/tplinkpart.c

diff --git a/target/linux/ath79/files/drivers/mtd/tplinkpart.c b/target/linux/ath79/files/drivers/mtd/tplinkpart.c
deleted file mode 100644
index 1b94163b83..0000000000
--- a/target/linux/ath79/files/drivers/mtd/tplinkpart.c
+++ /dev/null
@@ -1,235 +0,0 @@
-/*
- * Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License version 2 as published
- * by the Free Software Foundation.
- *
- */
-
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/slab.h>
-#include <linux/vmalloc.h>
-#include <linux/magic.h>
-
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/partitions.h>
-#include <linux/version.h>
-
-#define TPLINK_NUM_PARTS	5
-#define TPLINK_HEADER_V1	0x01000000
-#define TPLINK_HEADER_V2	0x02000000
-#define MD5SUM_LEN		16
-
-#define TPLINK_ART_LEN		0x10000
-#define TPLINK_KERNEL_OFFS	0x20000
-#define TPLINK_64K_KERNEL_OFFS	0x10000
-
-struct tplink_fw_header {
-	uint32_t	version;	/* header version */
-	char		vendor_name[24];
-	char		fw_version[36];
-	uint32_t	hw_id;		/* hardware id */
-	uint32_t	hw_rev;		/* hardware revision */
-	uint32_t	unk1;
-	uint8_t		md5sum1[MD5SUM_LEN];
-	uint32_t	unk2;
-	uint8_t		md5sum2[MD5SUM_LEN];
-	uint32_t	unk3;
-	uint32_t	kernel_la;	/* kernel load address */
-	uint32_t	kernel_ep;	/* kernel entry point */
-	uint32_t	fw_length;	/* total length of the firmware */
-	uint32_t	kernel_ofs;	/* kernel data offset */
-	uint32_t	kernel_len;	/* kernel data length */
-	uint32_t	rootfs_ofs;	/* rootfs data offset */
-	uint32_t	rootfs_len;	/* rootfs data length */
-	uint32_t	boot_ofs;	/* bootloader data offset */
-	uint32_t	boot_len;	/* bootloader data length */
-	uint8_t		pad[360];
-} __attribute__ ((packed));
-
-static struct tplink_fw_header *
-tplink_read_header(struct mtd_info *mtd, size_t offset)
-{
-	struct tplink_fw_header *header;
-	size_t header_len;
-	size_t retlen;
-	int ret;
-	u32 t;
-
-	header = vmalloc(sizeof(*header));
-	if (!header)
-		goto err;
-
-	header_len = sizeof(struct tplink_fw_header);
-	ret = mtd_read(mtd, offset, header_len, &retlen,
-		       (unsigned char *) header);
-	if (ret)
-		goto err_free_header;
-
-	if (retlen != header_len)
-		goto err_free_header;
-
-	/* sanity checks */
-	t = be32_to_cpu(header->version);
-	if ((t != TPLINK_HEADER_V1) && (t != TPLINK_HEADER_V2))
-		goto err_free_header;
-
-	t = be32_to_cpu(header->kernel_ofs);
-	if (t != header_len)
-		goto err_free_header;
-
-	return header;
-
-err_free_header:
-	vfree(header);
-err:
-	return NULL;
-}
-
-static int tplink_check_rootfs_magic(struct mtd_info *mtd, size_t offset)
-{
-	u32 magic;
-	size_t retlen;
-	int ret;
-
-	ret = mtd_read(mtd, offset, sizeof(magic), &retlen,
-		       (unsigned char *) &magic);
-	if (ret)
-		return ret;
-
-	if (retlen != sizeof(magic))
-		return -EIO;
-
-	if (le32_to_cpu(magic) != SQUASHFS_MAGIC &&
-	    magic != 0x19852003)
-		return -EINVAL;
-
-	return 0;
-}
-
-static int tplink_parse_partitions_offset(struct mtd_info *master,
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,5,0)
-				   struct mtd_partition **pparts,
-#else
-				   const struct mtd_partition **pparts,
-#endif
-				   struct mtd_part_parser_data *data,
-				   size_t offset)
-{
-	struct mtd_partition *parts;
-	struct tplink_fw_header *header;
-	int nr_parts;
-	size_t art_offset;
-	size_t rootfs_offset;
-	size_t squashfs_offset;
-	int ret;
-
-	nr_parts = TPLINK_NUM_PARTS;
-	parts = kzalloc(nr_parts * sizeof(struct mtd_partition), GFP_KERNEL);
-	if (!parts) {
-		ret = -ENOMEM;
-		goto err;
-	}
-
-	header = tplink_read_header(master, offset);
-	if (!header) {
-		pr_notice("%s: no TP-Link header found\n", master->name);
-		ret = -ENODEV;
-		goto err_free_parts;
-	}
-
-	squashfs_offset = offset + sizeof(struct tplink_fw_header) +
-			  be32_to_cpu(header->kernel_len);
-
-	ret = tplink_check_rootfs_magic(master, squashfs_offset);
-	if (ret == 0)
-		rootfs_offset = squashfs_offset;
-	else
-		rootfs_offset = offset + be32_to_cpu(header->rootfs_ofs);
-
-	art_offset = master->size - TPLINK_ART_LEN;
-
-	parts[0].name = "u-boot";
-	parts[0].offset = 0;
-	parts[0].size = offset;
-	parts[0].mask_flags = MTD_WRITEABLE;
-
-	parts[1].name = "kernel";
-	parts[1].offset = offset;
-	parts[1].size = rootfs_offset - offset;
-
-	parts[2].name = "rootfs";
-	parts[2].offset = rootfs_offset;
-	parts[2].size = art_offset - rootfs_offset;
-
-	parts[3].name = "art";
-	parts[3].offset = art_offset;
-	parts[3].size = TPLINK_ART_LEN;
-	parts[3].mask_flags = MTD_WRITEABLE;
-
-	parts[4].name = "firmware";
-	parts[4].offset = offset;
-	parts[4].size = art_offset - offset;
-
-	vfree(header);
-
-	*pparts = parts;
-	return nr_parts;
-
-err_free_parts:
-	kfree(parts);
-err:
-	*pparts = NULL;
-	return ret;
-}
-
-static int tplink_parse_partitions(struct mtd_info *master,
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,5,0)
-				   struct mtd_partition **pparts,
-#else
-				   const struct mtd_partition **pparts,
-#endif
-				   struct mtd_part_parser_data *data)
-{
-	return tplink_parse_partitions_offset(master, pparts, data,
-		                              TPLINK_KERNEL_OFFS);
-}
-
-static int tplink_parse_64k_partitions(struct mtd_info *master,
-#if LINUX_VERSION_CODE < KERNEL_VERSION(4,5,0)
-				   struct mtd_partition **pparts,
-#else
-				   const struct mtd_partition **pparts,
-#endif
-				   struct mtd_part_parser_data *data)
-{
-	return tplink_parse_partitions_offset(master, pparts, data,
-		                              TPLINK_64K_KERNEL_OFFS);
-}
-
-static struct mtd_part_parser tplink_parser = {
-	.owner		= THIS_MODULE,
-	.parse_fn	= tplink_parse_partitions,
-	.name		= "tp-link",
-};
-
-static struct mtd_part_parser tplink_64k_parser = {
-	.owner		= THIS_MODULE,
-	.parse_fn	= tplink_parse_64k_partitions,
-	.name		= "tp-link-64k",
-};
-
-static int __init tplink_parser_init(void)
-{
-	register_mtd_parser(&tplink_parser);
-	register_mtd_parser(&tplink_64k_parser);
-
-	return 0;
-}
-
-module_init(tplink_parser_init);
-
-MODULE_LICENSE("GPL v2");
-MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
diff --git a/target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch b/target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch
index 16fe5ed272..d65bf663b5 100644
--- a/target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch
+++ b/target/linux/ath79/patches-4.19/405-mtd-tp-link-partition-parser.patch
@@ -23,3 +23,228 @@
  
  # 'Users' - code which presents functionality to userspace.
  obj-$(CONFIG_MTD_BLKDEVS)	+= mtd_blkdevs.o
+--- /dev/null
++++ b/drivers/mtd/tplinkpart.c
+@@ -0,0 +1,222 @@
++/*
++ * Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
++ *
++ * This program is free software; you can redistribute it and/or modify it
++ * under the terms of the GNU General Public License version 2 as published
++ * by the Free Software Foundation.
++ */
++
++#include <linux/kernel.h>
++#include <linux/module.h>
++#include <linux/slab.h>
++#include <linux/vmalloc.h>
++#include <linux/magic.h>
++
++#include <linux/mtd/mtd.h>
++#include <linux/mtd/partitions.h>
++#include <linux/version.h>
++
++#define TPLINK_NUM_PARTS	5
++#define TPLINK_HEADER_V1	0x01000000
++#define TPLINK_HEADER_V2	0x02000000
++#define MD5SUM_LEN		16
++
++#define TPLINK_ART_LEN		0x10000
++#define TPLINK_KERNEL_OFFS	0x20000
++#define TPLINK_64K_KERNEL_OFFS	0x10000
++
++struct tplink_fw_header {
++	uint32_t	version;	/* header version */
++	char		vendor_name[24];
++	char		fw_version[36];
++	uint32_t	hw_id;		/* hardware id */
++	uint32_t	hw_rev;		/* hardware revision */
++	uint32_t	unk1;
++	uint8_t		md5sum1[MD5SUM_LEN];
++	uint32_t	unk2;
++	uint8_t		md5sum2[MD5SUM_LEN];
++	uint32_t	unk3;
++	uint32_t	kernel_la;	/* kernel load address */
++	uint32_t	kernel_ep;	/* kernel entry point */
++	uint32_t	fw_length;	/* total length of the firmware */
++	uint32_t	kernel_ofs;	/* kernel data offset */
++	uint32_t	kernel_len;	/* kernel data length */
++	uint32_t	rootfs_ofs;	/* rootfs data offset */
++	uint32_t	rootfs_len;	/* rootfs data length */
++	uint32_t	boot_ofs;	/* bootloader data offset */
++	uint32_t	boot_len;	/* bootloader data length */
++	uint8_t		pad[360];
++} __attribute__ ((packed));
++
++static struct tplink_fw_header *
++tplink_read_header(struct mtd_info *mtd, size_t offset)
++{
++	struct tplink_fw_header *header;
++	size_t header_len;
++	size_t retlen;
++	int ret;
++	u32 t;
++
++	header = vmalloc(sizeof(*header));
++	if (!header)
++		goto err;
++
++	header_len = sizeof(struct tplink_fw_header);
++	ret = mtd_read(mtd, offset, header_len, &retlen,
++		       (unsigned char *) header);
++	if (ret)
++		goto err_free_header;
++
++	if (retlen != header_len)
++		goto err_free_header;
++
++	/* sanity checks */
++	t = be32_to_cpu(header->version);
++	if ((t != TPLINK_HEADER_V1) && (t != TPLINK_HEADER_V2))
++		goto err_free_header;
++
++	t = be32_to_cpu(header->kernel_ofs);
++	if (t != header_len)
++		goto err_free_header;
++
++	return header;
++
++err_free_header:
++	vfree(header);
++err:
++	return NULL;
++}
++
++static int tplink_check_rootfs_magic(struct mtd_info *mtd, size_t offset)
++{
++	u32 magic;
++	size_t retlen;
++	int ret;
++
++	ret = mtd_read(mtd, offset, sizeof(magic), &retlen,
++		       (unsigned char *) &magic);
++	if (ret)
++		return ret;
++
++	if (retlen != sizeof(magic))
++		return -EIO;
++
++	if (le32_to_cpu(magic) != SQUASHFS_MAGIC &&
++	    magic != 0x19852003)
++		return -EINVAL;
++
++	return 0;
++}
++
++static int tplink_parse_partitions_offset(struct mtd_info *master,
++				   const struct mtd_partition **pparts,
++				   struct mtd_part_parser_data *data,
++				   size_t offset)
++{
++	struct mtd_partition *parts;
++	struct tplink_fw_header *header;
++	int nr_parts;
++	size_t art_offset;
++	size_t rootfs_offset;
++	size_t squashfs_offset;
++	int ret;
++
++	nr_parts = TPLINK_NUM_PARTS;
++	parts = kzalloc(nr_parts * sizeof(struct mtd_partition), GFP_KERNEL);
++	if (!parts) {
++		ret = -ENOMEM;
++		goto err;
++	}
++
++	header = tplink_read_header(master, offset);
++	if (!header) {
++		pr_notice("%s: no TP-Link header found\n", master->name);
++		ret = -ENODEV;
++		goto err_free_parts;
++	}
++
++	squashfs_offset = offset + sizeof(struct tplink_fw_header) +
++			  be32_to_cpu(header->kernel_len);
++
++	ret = tplink_check_rootfs_magic(master, squashfs_offset);
++	if (ret == 0)
++		rootfs_offset = squashfs_offset;
++	else
++		rootfs_offset = offset + be32_to_cpu(header->rootfs_ofs);
++
++	art_offset = master->size - TPLINK_ART_LEN;
++
++	parts[0].name = "u-boot";
++	parts[0].offset = 0;
++	parts[0].size = offset;
++	parts[0].mask_flags = MTD_WRITEABLE;
++
++	parts[1].name = "kernel";
++	parts[1].offset = offset;
++	parts[1].size = rootfs_offset - offset;
++
++	parts[2].name = "rootfs";
++	parts[2].offset = rootfs_offset;
++	parts[2].size = art_offset - rootfs_offset;
++
++	parts[3].name = "art";
++	parts[3].offset = art_offset;
++	parts[3].size = TPLINK_ART_LEN;
++	parts[3].mask_flags = MTD_WRITEABLE;
++
++	parts[4].name = "firmware";
++	parts[4].offset = offset;
++	parts[4].size = art_offset - offset;
++
++	vfree(header);
++
++	*pparts = parts;
++	return nr_parts;
++
++err_free_parts:
++	kfree(parts);
++err:
++	*pparts = NULL;
++	return ret;
++}
++
++static int tplink_parse_partitions(struct mtd_info *master,
++				   const struct mtd_partition **pparts,
++				   struct mtd_part_parser_data *data)
++{
++	return tplink_parse_partitions_offset(master, pparts, data,
++		                              TPLINK_KERNEL_OFFS);
++}
++
++static int tplink_parse_64k_partitions(struct mtd_info *master,
++				   const struct mtd_partition **pparts,
++				   struct mtd_part_parser_data *data)
++{
++	return tplink_parse_partitions_offset(master, pparts, data,
++		                              TPLINK_64K_KERNEL_OFFS);
++}
++
++static struct mtd_part_parser tplink_parser = {
++	.owner		= THIS_MODULE,
++	.parse_fn	= tplink_parse_partitions,
++	.name		= "tp-link",
++};
++
++static struct mtd_part_parser tplink_64k_parser = {
++	.owner		= THIS_MODULE,
++	.parse_fn	= tplink_parse_64k_partitions,
++	.name		= "tp-link-64k",
++};
++
++static int __init tplink_parser_init(void)
++{
++	register_mtd_parser(&tplink_parser);
++	register_mtd_parser(&tplink_64k_parser);
++
++	return 0;
++}
++
++module_init(tplink_parser_init);
++
++MODULE_LICENSE("GPL v2");
++MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
diff --git a/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch b/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
index 71951a4ede..281cd2c351 100644
--- a/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
+++ b/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
@@ -1,25 +1,244 @@
---- a/drivers/mtd/Kconfig
-+++ b/drivers/mtd/Kconfig
-@@ -46,6 +46,12 @@ menu "Partition parsers"
- source "drivers/mtd/parsers/Kconfig"
- endmenu
+--- a/drivers/mtd/parsers/Kconfig
++++ b/drivers/mtd/parsers/Kconfig
+@@ -184,3 +184,9 @@ config MTD_MYLOADER_PARTS
  
+ 	  You will still need the parsing functions to be called by the driver
+ 	  for your particular device. It won't happen automatically.
++
 +config MTD_TPLINK_PARTS
 +	tristate "TP-Link AR7XXX/AR9XXX partitioning support"
 +	depends on ATH79
 +	---help---
 +	  TBD.
+--- a/drivers/mtd/parsers/Makefile
++++ b/drivers/mtd/parsers/Makefile
+@@ -11,3 +11,4 @@ obj-$(CONFIG_MTD_PARSER_TRX)		+= parser_
+ obj-$(CONFIG_MTD_SHARPSL_PARTS)		+= sharpslpart.o
+ obj-$(CONFIG_MTD_REDBOOT_PARTS)		+= redboot.o
+ obj-$(CONFIG_MTD_MYLOADER_PARTS)		+= myloader.o
++obj-$(CONFIG_MTD_TPLINK_PARTS)		+= tplinkpart.o
+--- /dev/null
++++ b/drivers/mtd/parsers/tplinkpart.c
+@@ -0,0 +1,222 @@
++/*
++ * Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
++ *
++ * This program is free software; you can redistribute it and/or modify it
++ * under the terms of the GNU General Public License version 2 as published
++ * by the Free Software Foundation.
++ */
 +
- comment "User Modules And Translation Layers"
- 
- #
---- a/drivers/mtd/Makefile
-+++ b/drivers/mtd/Makefile
-@@ -8,6 +8,7 @@ obj-$(CONFIG_MTD)		+= mtd.o
- mtd-y				:= mtdcore.o mtdsuper.o mtdconcat.o mtdpart.o mtdchar.o
- 
- obj-y				+= parsers/
-+obj-$(CONFIG_MTD_TPLINK_PARTS)	+= tplinkpart.o
- 
- obj-$(CONFIG_MTD_SPLIT)		+= mtdsplit/
- 
++#include <linux/kernel.h>
++#include <linux/module.h>
++#include <linux/slab.h>
++#include <linux/vmalloc.h>
++#include <linux/magic.h>
++
++#include <linux/mtd/mtd.h>
++#include <linux/mtd/partitions.h>
++#include <linux/version.h>
++
++#define TPLINK_NUM_PARTS	5
++#define TPLINK_HEADER_V1	0x01000000
++#define TPLINK_HEADER_V2	0x02000000
++#define MD5SUM_LEN		16
++
++#define TPLINK_ART_LEN		0x10000
++#define TPLINK_KERNEL_OFFS	0x20000
++#define TPLINK_64K_KERNEL_OFFS	0x10000
++
++struct tplink_fw_header {
++	uint32_t	version;	/* header version */
++	char		vendor_name[24];
++	char		fw_version[36];
++	uint32_t	hw_id;		/* hardware id */
++	uint32_t	hw_rev;		/* hardware revision */
++	uint32_t	unk1;
++	uint8_t		md5sum1[MD5SUM_LEN];
++	uint32_t	unk2;
++	uint8_t		md5sum2[MD5SUM_LEN];
++	uint32_t	unk3;
++	uint32_t	kernel_la;	/* kernel load address */
++	uint32_t	kernel_ep;	/* kernel entry point */
++	uint32_t	fw_length;	/* total length of the firmware */
++	uint32_t	kernel_ofs;	/* kernel data offset */
++	uint32_t	kernel_len;	/* kernel data length */
++	uint32_t	rootfs_ofs;	/* rootfs data offset */
++	uint32_t	rootfs_len;	/* rootfs data length */
++	uint32_t	boot_ofs;	/* bootloader data offset */
++	uint32_t	boot_len;	/* bootloader data length */
++	uint8_t		pad[360];
++} __attribute__ ((packed));
++
++static struct tplink_fw_header *
++tplink_read_header(struct mtd_info *mtd, size_t offset)
++{
++	struct tplink_fw_header *header;
++	size_t header_len;
++	size_t retlen;
++	int ret;
++	u32 t;
++
++	header = vmalloc(sizeof(*header));
++	if (!header)
++		goto err;
++
++	header_len = sizeof(struct tplink_fw_header);
++	ret = mtd_read(mtd, offset, header_len, &retlen,
++		       (unsigned char *) header);
++	if (ret)
++		goto err_free_header;
++
++	if (retlen != header_len)
++		goto err_free_header;
++
++	/* sanity checks */
++	t = be32_to_cpu(header->version);
++	if ((t != TPLINK_HEADER_V1) && (t != TPLINK_HEADER_V2))
++		goto err_free_header;
++
++	t = be32_to_cpu(header->kernel_ofs);
++	if (t != header_len)
++		goto err_free_header;
++
++	return header;
++
++err_free_header:
++	vfree(header);
++err:
++	return NULL;
++}
++
++static int tplink_check_rootfs_magic(struct mtd_info *mtd, size_t offset)
++{
++	u32 magic;
++	size_t retlen;
++	int ret;
++
++	ret = mtd_read(mtd, offset, sizeof(magic), &retlen,
++		       (unsigned char *) &magic);
++	if (ret)
++		return ret;
++
++	if (retlen != sizeof(magic))
++		return -EIO;
++
++	if (le32_to_cpu(magic) != SQUASHFS_MAGIC &&
++	    magic != 0x19852003)
++		return -EINVAL;
++
++	return 0;
++}
++
++static int tplink_parse_partitions_offset(struct mtd_info *master,
++				   const struct mtd_partition **pparts,
++				   struct mtd_part_parser_data *data,
++				   size_t offset)
++{
++	struct mtd_partition *parts;
++	struct tplink_fw_header *header;
++	int nr_parts;
++	size_t art_offset;
++	size_t rootfs_offset;
++	size_t squashfs_offset;
++	int ret;
++
++	nr_parts = TPLINK_NUM_PARTS;
++	parts = kzalloc(nr_parts * sizeof(struct mtd_partition), GFP_KERNEL);
++	if (!parts) {
++		ret = -ENOMEM;
++		goto err;
++	}
++
++	header = tplink_read_header(master, offset);
++	if (!header) {
++		pr_notice("%s: no TP-Link header found\n", master->name);
++		ret = -ENODEV;
++		goto err_free_parts;
++	}
++
++	squashfs_offset = offset + sizeof(struct tplink_fw_header) +
++			  be32_to_cpu(header->kernel_len);
++
++	ret = tplink_check_rootfs_magic(master, squashfs_offset);
++	if (ret == 0)
++		rootfs_offset = squashfs_offset;
++	else
++		rootfs_offset = offset + be32_to_cpu(header->rootfs_ofs);
++
++	art_offset = master->size - TPLINK_ART_LEN;
++
++	parts[0].name = "u-boot";
++	parts[0].offset = 0;
++	parts[0].size = offset;
++	parts[0].mask_flags = MTD_WRITEABLE;
++
++	parts[1].name = "kernel";
++	parts[1].offset = offset;
++	parts[1].size = rootfs_offset - offset;
++
++	parts[2].name = "rootfs";
++	parts[2].offset = rootfs_offset;
++	parts[2].size = art_offset - rootfs_offset;
++
++	parts[3].name = "art";
++	parts[3].offset = art_offset;
++	parts[3].size = TPLINK_ART_LEN;
++	parts[3].mask_flags = MTD_WRITEABLE;
++
++	parts[4].name = "firmware";
++	parts[4].offset = offset;
++	parts[4].size = art_offset - offset;
++
++	vfree(header);
++
++	*pparts = parts;
++	return nr_parts;
++
++err_free_parts:
++	kfree(parts);
++err:
++	*pparts = NULL;
++	return ret;
++}
++
++static int tplink_parse_partitions(struct mtd_info *master,
++				   const struct mtd_partition **pparts,
++				   struct mtd_part_parser_data *data)
++{
++	return tplink_parse_partitions_offset(master, pparts, data,
++		                              TPLINK_KERNEL_OFFS);
++}
++
++static int tplink_parse_64k_partitions(struct mtd_info *master,
++				   const struct mtd_partition **pparts,
++				   struct mtd_part_parser_data *data)
++{
++	return tplink_parse_partitions_offset(master, pparts, data,
++		                              TPLINK_64K_KERNEL_OFFS);
++}
++
++static struct mtd_part_parser tplink_parser = {
++	.owner		= THIS_MODULE,
++	.parse_fn	= tplink_parse_partitions,
++	.name		= "tp-link",
++};
++
++static struct mtd_part_parser tplink_64k_parser = {
++	.owner		= THIS_MODULE,
++	.parse_fn	= tplink_parse_64k_partitions,
++	.name		= "tp-link-64k",
++};
++
++static int __init tplink_parser_init(void)
++{
++	register_mtd_parser(&tplink_parser);
++	register_mtd_parser(&tplink_64k_parser);
++
++	return 0;
++}
++
++module_init(tplink_parser_init);
++
++MODULE_LICENSE("GPL v2");
++MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
