Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67481A6B12
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Apr 2020 19:13:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=15EqnuWa+ogxfsdupMfhZd6TdWM5G4yjgPqjI29a+Bw=; b=EuMuQeI64zFrppweRT7Rj4CWcs
	ucOJyZoX6SR4plexg0r0zcfVjdh8gV8j/7LooIvXSKKJDbaUTaq0GMxQH8Q1Ge2SOrQ40eLqMGIxe
	angexQUq1GnHVlmvZMJqZJTVtZz4zlEWTA1WsQ4Oh1ZToDAlZeadjCZyDAnc2F6R8OSYPB1MHE4kz
	TggCtxV2fhJx9gBzSoSzbYxSofjJw+KYf4hPIopMd/GFgdY3sL71G8NBqhqdk2tynb4vf0cY82xK6
	KWLq1tKYv41+cpyqMjuixi2M2Th7iNOeHkvpwESgymFQDm5fPVh0v5gLsCLgKXxAt7jdZXYjdf/9p
	pdDHZFfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2eb-0007jC-Ai; Mon, 13 Apr 2020 17:13:49 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2dL-0006Cc-I4
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 17:12:36 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MDv1A-1jVlrK0bIq-009udX for <openwrt-devel@lists.openwrt.org>; Mon, 13
 Apr 2020 19:12:26 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Apr 2020 19:11:18 +0200
Message-Id: <20200413171123.48647-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
References: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:GKP+I/PSvKztRmgL7lH9EzHpwvB2WcaQ5VJsV/HwCKN56hrNpw/
 NTHnVoUyNUqCv98ws3Y60kElpI3rGooPWDt7BykAAwYsOTermB67mRcskaNc/gwGYHToVQl
 jt7oniRglcBt3z7KVEv8m1SARgIyFZvQ8gDd3nXXI7eLAAL6LWY32MFXbODtPKEAls2noiI
 kTf8FI5Zt0Do5ps9dnb0w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:22lGWTGk4Bs=:6UAjlilgtwdAMQiGSLVHQx
 bS2f/0zNDmhDtL1AXMcOol/pTcsg1ZqHi+chThe81AS0iR/kU2APY/rquPDNaZ5KIyR5bSyl5
 QTQ8f7gAUhuKyZkj/9/TY0jPinWmDnwYLBGIJB58ocJERxMrmleE5ZNmbW2o8ZkHCTYb6eG/0
 bbOC2SLcx7MmNtUUFXdebHkijhnOYIsuFyjvtLviJ7dmbBnND3ouz/ertTG0B6hv7i93Ltvas
 ppYqAzsivWFaVUG/u7/0xChMoOCA7M4m3HjbBvmVok2V5h5+2HW8OPmOEPhqBzrMmhzvRQKOw
 WEwVZNoQ1s/KmiEsgdHCgnetGNm20L1DcTjh1CV6GuLb5xsbh6a1epZB9qY9FlhqeOYo99OGz
 bfH0nCKHl/dRp90bRMxY46A+o7ypi1MhdJurnoMmbuYW+IGVKRxVy4NlKrFpmBtskVkNIwfOr
 EoqIvlHtt9mFVGoKGFgbsp2Ks+hBOfoEEgM5sUYO3OB5rxkDNGYGCkf/prOrmG5w2Ut2zE++X
 2tISb82qVKmIdCX7ebKQQoXcVNvv/TOsPWOj0BQIqWNdS0s51+cZkZiPiM+dwMIkV4K8BBOCp
 pJzb7ApeoGNO5k3GKWPxKO+Xn0ocf7EL6mb3MFYJKw0bjPx61icolXYCQPN5DD1Tor8L3ZOUP
 AnL2ZoNRe1vQ6nlbpoCr1iQtXuUyrVgoB7uNap69C7H6rnc3XWAvbjzsNy81fs6ep+5XH5zaM
 2aeqyvbSwrAvEcm30Gv0d6qLA4RFdmlD8wSJAdX1aUcIhNVGcGv/zLUWBQapqcfY3lKBP+3KW
 OnQTj3nWl8k9WMMCxaDPcA9aGhLwxYF7BJPG5v169sxMa28o4KAgTzwP+Q7i1SmSLb5gsEl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_101232_046820_8B3D8A92 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [RFT PATCH 1/6] kernel: fix include of myloader.o
 since kernel 5.4
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
subdirectory. Based on this, the selection of myloader.o was
also moved to that subdirectory, while the Kconfig and our local
myloader.c file remained in /drivers/mtd.

This resulted in linking errors like the following (on ath25@5.4):

make[8]: *** No rule to make target 'drivers/mtd/parsers/myloader.o', ...
   needed by 'drivers/mtd/parsers/built-in.a'.  Stop.
make[7]: *** [scripts/Makefile.build:500: drivers/mtd/parsers] Error 2
make[6]: *** [scripts/Makefile.build:500: drivers/mtd] Error 2

Since myloader.c is not too big, this patch moves it to the kernel patches,
allowing to adjust the path for kernel 5.4 and keeping Makefiles and
file paths better in sync.

Other patches have been refreshed accordingly.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../405-mtd-tp-link-partition-parser.patch    |   6 +-
 .../generic/files/drivers/mtd/myloader.c      | 182 ---------------
 ...30-mtd-add-myloader-partition-parser.patch | 190 +++++++++++++++-
 ...30-mtd-add-myloader-partition-parser.patch | 190 +++++++++++++++-
 ...30-mtd-add-myloader-partition-parser.patch | 207 ++++++++++++++++--
 ...cat-add-dt-driver-for-concat-devices.patch |   2 +-
 6 files changed, 569 insertions(+), 208 deletions(-)
 delete mode 100644 target/linux/generic/files/drivers/mtd/myloader.c

diff --git a/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch b/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
index 11d1869544..71951a4ede 100644
--- a/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
+++ b/target/linux/ath79/patches-5.4/405-mtd-tp-link-partition-parser.patch
@@ -1,8 +1,8 @@
 --- a/drivers/mtd/Kconfig
 +++ b/drivers/mtd/Kconfig
-@@ -62,6 +62,12 @@ config MTD_MYLOADER_PARTS
- 	  You will still need the parsing functions to be called by the driver
- 	  for your particular device. It won't happen automatically.
+@@ -46,6 +46,12 @@ menu "Partition parsers"
+ source "drivers/mtd/parsers/Kconfig"
+ endmenu
  
 +config MTD_TPLINK_PARTS
 +	tristate "TP-Link AR7XXX/AR9XXX partitioning support"
diff --git a/target/linux/generic/files/drivers/mtd/myloader.c b/target/linux/generic/files/drivers/mtd/myloader.c
deleted file mode 100644
index 7532d454ed..0000000000
--- a/target/linux/generic/files/drivers/mtd/myloader.c
+++ /dev/null
@@ -1,182 +0,0 @@
-/*
- *  Parse MyLoader-style flash partition tables and produce a Linux partition
- *  array to match.
- *
- *  Copyright (C) 2007-2009 Gabor Juhos <juhosg@openwrt.org>
- *
- *  This file was based on drivers/mtd/redboot.c
- *  Author: Red Hat, Inc. - David Woodhouse <dwmw2@cambridge.redhat.com>
- *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms of the GNU General Public License version 2 as published
- *  by the Free Software Foundation.
- *
- */
-
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/version.h>
-#include <linux/slab.h>
-#include <linux/init.h>
-#include <linux/vmalloc.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/partitions.h>
-#include <linux/byteorder/generic.h>
-#include <linux/myloader.h>
-
-#define BLOCK_LEN_MIN		0x10000
-#define PART_NAME_LEN		32
-
-struct part_data {
-	struct mylo_partition_table	tab;
-	char names[MYLO_MAX_PARTITIONS][PART_NAME_LEN];
-};
-
-static int myloader_parse_partitions(struct mtd_info *master,
-				     const struct mtd_partition **pparts,
-				     struct mtd_part_parser_data *data)
-{
-	struct part_data *buf;
-	struct mylo_partition_table *tab;
-	struct mylo_partition *part;
-	struct mtd_partition *mtd_parts;
-	struct mtd_partition *mtd_part;
-	int num_parts;
-	int ret, i;
-	size_t retlen;
-	char *names;
-	unsigned long offset;
-	unsigned long blocklen;
-
-	buf = vmalloc(sizeof(*buf));
-	if (!buf) {
-		return -ENOMEM;
-		goto out;
-	}
-	tab = &buf->tab;
-
-	blocklen = master->erasesize;
-	if (blocklen < BLOCK_LEN_MIN)
-		blocklen = BLOCK_LEN_MIN;
-
-	offset = blocklen;
-
-	/* Find the partition table */
-	for (i = 0; i < 4; i++, offset += blocklen) {
-		printk(KERN_DEBUG "%s: searching for MyLoader partition table"
-				" at offset 0x%lx\n", master->name, offset);
-
-		ret = mtd_read(master, offset, sizeof(*buf), &retlen,
-			       (void *)buf);
-		if (ret)
-			goto out_free_buf;
-
-		if (retlen != sizeof(*buf)) {
-			ret = -EIO;
-			goto out_free_buf;
-		}
-
-		/* Check for Partition Table magic number */
-		if (tab->magic == le32_to_cpu(MYLO_MAGIC_PARTITIONS))
-			break;
-
-	}
-
-	if (tab->magic != le32_to_cpu(MYLO_MAGIC_PARTITIONS)) {
-		printk(KERN_DEBUG "%s: no MyLoader partition table found\n",
-			master->name);
-		ret = 0;
-		goto out_free_buf;
-	}
-
-	/* The MyLoader and the Partition Table is always present */
-	num_parts = 2;
-
-	/* Detect number of used partitions */
-	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
-		part = &tab->partitions[i];
-
-		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
-			continue;
-
-		num_parts++;
-	}
-
-	mtd_parts = kzalloc((num_parts * sizeof(*mtd_part) +
-				num_parts * PART_NAME_LEN), GFP_KERNEL);
-
-	if (!mtd_parts) {
-		ret = -ENOMEM;
-		goto out_free_buf;
-	}
-
-	mtd_part = mtd_parts;
-	names = (char *)&mtd_parts[num_parts];
-
-	strncpy(names, "myloader", PART_NAME_LEN);
-	mtd_part->name = names;
-	mtd_part->offset = 0;
-	mtd_part->size = offset;
-	mtd_part->mask_flags = MTD_WRITEABLE;
-	mtd_part++;
-	names += PART_NAME_LEN;
-
-	strncpy(names, "partition_table", PART_NAME_LEN);
-	mtd_part->name = names;
-	mtd_part->offset = offset;
-	mtd_part->size = blocklen;
-	mtd_part->mask_flags = MTD_WRITEABLE;
-	mtd_part++;
-	names += PART_NAME_LEN;
-
-	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
-		part = &tab->partitions[i];
-
-		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
-			continue;
-
-		if ((buf->names[i][0]) && (buf->names[i][0] != '\xff'))
-			strncpy(names, buf->names[i], PART_NAME_LEN);
-		else
-			snprintf(names, PART_NAME_LEN, "partition%d", i);
-
-		mtd_part->offset = le32_to_cpu(part->addr);
-		mtd_part->size = le32_to_cpu(part->size);
-		mtd_part->name = names;
-		mtd_part++;
-		names += PART_NAME_LEN;
-	}
-
-	*pparts = mtd_parts;
-	ret = num_parts;
-
- out_free_buf:
-	vfree(buf);
- out:
-	return ret;
-}
-
-static struct mtd_part_parser myloader_mtd_parser = {
-	.owner		= THIS_MODULE,
-	.parse_fn	= myloader_parse_partitions,
-	.name		= "MyLoader",
-};
-
-static int __init myloader_mtd_parser_init(void)
-{
-	register_mtd_parser(&myloader_mtd_parser);
-
-	return 0;
-}
-
-static void __exit myloader_mtd_parser_exit(void)
-{
-	deregister_mtd_parser(&myloader_mtd_parser);
-}
-
-module_init(myloader_mtd_parser_init);
-module_exit(myloader_mtd_parser_exit);
-
-MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
-MODULE_DESCRIPTION("Parsing code for MyLoader partition tables");
-MODULE_LICENSE("GPL v2");
diff --git a/target/linux/generic/pending-4.14/430-mtd-add-myloader-partition-parser.patch b/target/linux/generic/pending-4.14/430-mtd-add-myloader-partition-parser.patch
index 889c452057..bf6670a91e 100644
--- a/target/linux/generic/pending-4.14/430-mtd-add-myloader-partition-parser.patch
+++ b/target/linux/generic/pending-4.14/430-mtd-add-myloader-partition-parser.patch
@@ -5,10 +5,8 @@ Subject: Add myloader partition table parser
 
 lede-commit: d8bf22859b51faa09d22c056fe221a45d2f7a3b8
 Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
----
- drivers/mtd/Kconfig  | 16 ++++++++++++++++
- drivers/mtd/Makefile |  1 +
- 2 files changed, 17 insertions(+)
+[add myloader.c to patch]
+Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
 
 --- a/drivers/mtd/Kconfig
 +++ b/drivers/mtd/Kconfig
@@ -45,3 +43,187 @@ Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
  obj-y				+= parsers/
  
  # 'Users' - code which presents functionality to userspace.
+--- /dev/null
++++ b/drivers/mtd/myloader.c
+@@ -0,0 +1,181 @@
++/*
++ *  Parse MyLoader-style flash partition tables and produce a Linux partition
++ *  array to match.
++ *
++ *  Copyright (C) 2007-2009 Gabor Juhos <juhosg@openwrt.org>
++ *
++ *  This file was based on drivers/mtd/redboot.c
++ *  Author: Red Hat, Inc. - David Woodhouse <dwmw2@cambridge.redhat.com>
++ *
++ *  This program is free software; you can redistribute it and/or modify it
++ *  under the terms of the GNU General Public License version 2 as published
++ *  by the Free Software Foundation.
++ */
++
++#include <linux/kernel.h>
++#include <linux/module.h>
++#include <linux/version.h>
++#include <linux/slab.h>
++#include <linux/init.h>
++#include <linux/vmalloc.h>
++#include <linux/mtd/mtd.h>
++#include <linux/mtd/partitions.h>
++#include <linux/byteorder/generic.h>
++#include <linux/myloader.h>
++
++#define BLOCK_LEN_MIN		0x10000
++#define PART_NAME_LEN		32
++
++struct part_data {
++	struct mylo_partition_table	tab;
++	char names[MYLO_MAX_PARTITIONS][PART_NAME_LEN];
++};
++
++static int myloader_parse_partitions(struct mtd_info *master,
++				     const struct mtd_partition **pparts,
++				     struct mtd_part_parser_data *data)
++{
++	struct part_data *buf;
++	struct mylo_partition_table *tab;
++	struct mylo_partition *part;
++	struct mtd_partition *mtd_parts;
++	struct mtd_partition *mtd_part;
++	int num_parts;
++	int ret, i;
++	size_t retlen;
++	char *names;
++	unsigned long offset;
++	unsigned long blocklen;
++
++	buf = vmalloc(sizeof(*buf));
++	if (!buf) {
++		return -ENOMEM;
++		goto out;
++	}
++	tab = &buf->tab;
++
++	blocklen = master->erasesize;
++	if (blocklen < BLOCK_LEN_MIN)
++		blocklen = BLOCK_LEN_MIN;
++
++	offset = blocklen;
++
++	/* Find the partition table */
++	for (i = 0; i < 4; i++, offset += blocklen) {
++		printk(KERN_DEBUG "%s: searching for MyLoader partition table"
++				" at offset 0x%lx\n", master->name, offset);
++
++		ret = mtd_read(master, offset, sizeof(*buf), &retlen,
++			       (void *)buf);
++		if (ret)
++			goto out_free_buf;
++
++		if (retlen != sizeof(*buf)) {
++			ret = -EIO;
++			goto out_free_buf;
++		}
++
++		/* Check for Partition Table magic number */
++		if (tab->magic == le32_to_cpu(MYLO_MAGIC_PARTITIONS))
++			break;
++
++	}
++
++	if (tab->magic != le32_to_cpu(MYLO_MAGIC_PARTITIONS)) {
++		printk(KERN_DEBUG "%s: no MyLoader partition table found\n",
++			master->name);
++		ret = 0;
++		goto out_free_buf;
++	}
++
++	/* The MyLoader and the Partition Table is always present */
++	num_parts = 2;
++
++	/* Detect number of used partitions */
++	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
++		part = &tab->partitions[i];
++
++		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
++			continue;
++
++		num_parts++;
++	}
++
++	mtd_parts = kzalloc((num_parts * sizeof(*mtd_part) +
++				num_parts * PART_NAME_LEN), GFP_KERNEL);
++
++	if (!mtd_parts) {
++		ret = -ENOMEM;
++		goto out_free_buf;
++	}
++
++	mtd_part = mtd_parts;
++	names = (char *)&mtd_parts[num_parts];
++
++	strncpy(names, "myloader", PART_NAME_LEN);
++	mtd_part->name = names;
++	mtd_part->offset = 0;
++	mtd_part->size = offset;
++	mtd_part->mask_flags = MTD_WRITEABLE;
++	mtd_part++;
++	names += PART_NAME_LEN;
++
++	strncpy(names, "partition_table", PART_NAME_LEN);
++	mtd_part->name = names;
++	mtd_part->offset = offset;
++	mtd_part->size = blocklen;
++	mtd_part->mask_flags = MTD_WRITEABLE;
++	mtd_part++;
++	names += PART_NAME_LEN;
++
++	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
++		part = &tab->partitions[i];
++
++		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
++			continue;
++
++		if ((buf->names[i][0]) && (buf->names[i][0] != '\xff'))
++			strncpy(names, buf->names[i], PART_NAME_LEN);
++		else
++			snprintf(names, PART_NAME_LEN, "partition%d", i);
++
++		mtd_part->offset = le32_to_cpu(part->addr);
++		mtd_part->size = le32_to_cpu(part->size);
++		mtd_part->name = names;
++		mtd_part++;
++		names += PART_NAME_LEN;
++	}
++
++	*pparts = mtd_parts;
++	ret = num_parts;
++
++ out_free_buf:
++	vfree(buf);
++ out:
++	return ret;
++}
++
++static struct mtd_part_parser myloader_mtd_parser = {
++	.owner		= THIS_MODULE,
++	.parse_fn	= myloader_parse_partitions,
++	.name		= "MyLoader",
++};
++
++static int __init myloader_mtd_parser_init(void)
++{
++	register_mtd_parser(&myloader_mtd_parser);
++
++	return 0;
++}
++
++static void __exit myloader_mtd_parser_exit(void)
++{
++	deregister_mtd_parser(&myloader_mtd_parser);
++}
++
++module_init(myloader_mtd_parser_init);
++module_exit(myloader_mtd_parser_exit);
++
++MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
++MODULE_DESCRIPTION("Parsing code for MyLoader partition tables");
++MODULE_LICENSE("GPL v2");
diff --git a/target/linux/generic/pending-4.19/430-mtd-add-myloader-partition-parser.patch b/target/linux/generic/pending-4.19/430-mtd-add-myloader-partition-parser.patch
index bd49893dd8..149caf3c6c 100644
--- a/target/linux/generic/pending-4.19/430-mtd-add-myloader-partition-parser.patch
+++ b/target/linux/generic/pending-4.19/430-mtd-add-myloader-partition-parser.patch
@@ -5,10 +5,8 @@ Subject: Add myloader partition table parser
 
 lede-commit: d8bf22859b51faa09d22c056fe221a45d2f7a3b8
 Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
----
- drivers/mtd/Kconfig  | 16 ++++++++++++++++
- drivers/mtd/Makefile |  1 +
- 2 files changed, 17 insertions(+)
+[add myloader.c to patch]
+Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
 
 --- a/drivers/mtd/Kconfig
 +++ b/drivers/mtd/Kconfig
@@ -45,3 +43,187 @@ Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
  obj-y				+= parsers/
  
  # 'Users' - code which presents functionality to userspace.
+--- /dev/null
++++ b/drivers/mtd/myloader.c
+@@ -0,0 +1,181 @@
++/*
++ *  Parse MyLoader-style flash partition tables and produce a Linux partition
++ *  array to match.
++ *
++ *  Copyright (C) 2007-2009 Gabor Juhos <juhosg@openwrt.org>
++ *
++ *  This file was based on drivers/mtd/redboot.c
++ *  Author: Red Hat, Inc. - David Woodhouse <dwmw2@cambridge.redhat.com>
++ *
++ *  This program is free software; you can redistribute it and/or modify it
++ *  under the terms of the GNU General Public License version 2 as published
++ *  by the Free Software Foundation.
++ */
++
++#include <linux/kernel.h>
++#include <linux/module.h>
++#include <linux/version.h>
++#include <linux/slab.h>
++#include <linux/init.h>
++#include <linux/vmalloc.h>
++#include <linux/mtd/mtd.h>
++#include <linux/mtd/partitions.h>
++#include <linux/byteorder/generic.h>
++#include <linux/myloader.h>
++
++#define BLOCK_LEN_MIN		0x10000
++#define PART_NAME_LEN		32
++
++struct part_data {
++	struct mylo_partition_table	tab;
++	char names[MYLO_MAX_PARTITIONS][PART_NAME_LEN];
++};
++
++static int myloader_parse_partitions(struct mtd_info *master,
++				     const struct mtd_partition **pparts,
++				     struct mtd_part_parser_data *data)
++{
++	struct part_data *buf;
++	struct mylo_partition_table *tab;
++	struct mylo_partition *part;
++	struct mtd_partition *mtd_parts;
++	struct mtd_partition *mtd_part;
++	int num_parts;
++	int ret, i;
++	size_t retlen;
++	char *names;
++	unsigned long offset;
++	unsigned long blocklen;
++
++	buf = vmalloc(sizeof(*buf));
++	if (!buf) {
++		return -ENOMEM;
++		goto out;
++	}
++	tab = &buf->tab;
++
++	blocklen = master->erasesize;
++	if (blocklen < BLOCK_LEN_MIN)
++		blocklen = BLOCK_LEN_MIN;
++
++	offset = blocklen;
++
++	/* Find the partition table */
++	for (i = 0; i < 4; i++, offset += blocklen) {
++		printk(KERN_DEBUG "%s: searching for MyLoader partition table"
++				" at offset 0x%lx\n", master->name, offset);
++
++		ret = mtd_read(master, offset, sizeof(*buf), &retlen,
++			       (void *)buf);
++		if (ret)
++			goto out_free_buf;
++
++		if (retlen != sizeof(*buf)) {
++			ret = -EIO;
++			goto out_free_buf;
++		}
++
++		/* Check for Partition Table magic number */
++		if (tab->magic == le32_to_cpu(MYLO_MAGIC_PARTITIONS))
++			break;
++
++	}
++
++	if (tab->magic != le32_to_cpu(MYLO_MAGIC_PARTITIONS)) {
++		printk(KERN_DEBUG "%s: no MyLoader partition table found\n",
++			master->name);
++		ret = 0;
++		goto out_free_buf;
++	}
++
++	/* The MyLoader and the Partition Table is always present */
++	num_parts = 2;
++
++	/* Detect number of used partitions */
++	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
++		part = &tab->partitions[i];
++
++		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
++			continue;
++
++		num_parts++;
++	}
++
++	mtd_parts = kzalloc((num_parts * sizeof(*mtd_part) +
++				num_parts * PART_NAME_LEN), GFP_KERNEL);
++
++	if (!mtd_parts) {
++		ret = -ENOMEM;
++		goto out_free_buf;
++	}
++
++	mtd_part = mtd_parts;
++	names = (char *)&mtd_parts[num_parts];
++
++	strncpy(names, "myloader", PART_NAME_LEN);
++	mtd_part->name = names;
++	mtd_part->offset = 0;
++	mtd_part->size = offset;
++	mtd_part->mask_flags = MTD_WRITEABLE;
++	mtd_part++;
++	names += PART_NAME_LEN;
++
++	strncpy(names, "partition_table", PART_NAME_LEN);
++	mtd_part->name = names;
++	mtd_part->offset = offset;
++	mtd_part->size = blocklen;
++	mtd_part->mask_flags = MTD_WRITEABLE;
++	mtd_part++;
++	names += PART_NAME_LEN;
++
++	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
++		part = &tab->partitions[i];
++
++		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
++			continue;
++
++		if ((buf->names[i][0]) && (buf->names[i][0] != '\xff'))
++			strncpy(names, buf->names[i], PART_NAME_LEN);
++		else
++			snprintf(names, PART_NAME_LEN, "partition%d", i);
++
++		mtd_part->offset = le32_to_cpu(part->addr);
++		mtd_part->size = le32_to_cpu(part->size);
++		mtd_part->name = names;
++		mtd_part++;
++		names += PART_NAME_LEN;
++	}
++
++	*pparts = mtd_parts;
++	ret = num_parts;
++
++ out_free_buf:
++	vfree(buf);
++ out:
++	return ret;
++}
++
++static struct mtd_part_parser myloader_mtd_parser = {
++	.owner		= THIS_MODULE,
++	.parse_fn	= myloader_parse_partitions,
++	.name		= "MyLoader",
++};
++
++static int __init myloader_mtd_parser_init(void)
++{
++	register_mtd_parser(&myloader_mtd_parser);
++
++	return 0;
++}
++
++static void __exit myloader_mtd_parser_exit(void)
++{
++	deregister_mtd_parser(&myloader_mtd_parser);
++}
++
++module_init(myloader_mtd_parser_init);
++module_exit(myloader_mtd_parser_exit);
++
++MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
++MODULE_DESCRIPTION("Parsing code for MyLoader partition tables");
++MODULE_LICENSE("GPL v2");
diff --git a/target/linux/generic/pending-5.4/430-mtd-add-myloader-partition-parser.patch b/target/linux/generic/pending-5.4/430-mtd-add-myloader-partition-parser.patch
index f66da83924..2fd24a420c 100644
--- a/target/linux/generic/pending-5.4/430-mtd-add-myloader-partition-parser.patch
+++ b/target/linux/generic/pending-5.4/430-mtd-add-myloader-partition-parser.patch
@@ -5,17 +5,16 @@ Subject: Add myloader partition table parser
 
 lede-commit: d8bf22859b51faa09d22c056fe221a45d2f7a3b8
 Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
----
- drivers/mtd/Kconfig  | 16 ++++++++++++++++
- drivers/mtd/Makefile |  1 +
- 2 files changed, 17 insertions(+)
+[adjust for kernel 5.4, add myloader.c to patch]
+Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
 
---- a/drivers/mtd/Kconfig
-+++ b/drivers/mtd/Kconfig
-@@ -46,6 +46,22 @@ menu "Partition parsers"
- source "drivers/mtd/parsers/Kconfig"
- endmenu
+--- a/drivers/mtd/parsers/Kconfig
++++ b/drivers/mtd/parsers/Kconfig
+@@ -160,3 +160,19 @@ config MTD_REDBOOT_PARTS_READONLY
+ 	  'FIS directory' images, enable this option.
  
+ endif # MTD_REDBOOT_PARTS
++
 +config MTD_MYLOADER_PARTS
 +	tristate "MyLoader partition parsing"
 +	depends on ADM5120 || ATH25 || ATH79
@@ -31,14 +30,194 @@ Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
 +
 +	  You will still need the parsing functions to be called by the driver
 +	  for your particular device. It won't happen automatically.
-+
- comment "User Modules And Translation Layers"
- 
- #
 --- a/drivers/mtd/parsers/Makefile
 +++ b/drivers/mtd/parsers/Makefile
 @@ -9,3 +9,4 @@ obj-$(CONFIG_MTD_AFS_PARTS)		+= afs.o
  obj-$(CONFIG_MTD_PARSER_TRX)		+= parser_trx.o
  obj-$(CONFIG_MTD_SHARPSL_PARTS)		+= sharpslpart.o
  obj-$(CONFIG_MTD_REDBOOT_PARTS)		+= redboot.o
-+obj-$(CONFIG_MTD_MYLOADER_PARTS)	+= myloader.o
++obj-$(CONFIG_MTD_MYLOADER_PARTS)		+= myloader.o
+--- /dev/null
++++ b/drivers/mtd/parsers/myloader.c
+@@ -0,0 +1,181 @@
++/*
++ *  Parse MyLoader-style flash partition tables and produce a Linux partition
++ *  array to match.
++ *
++ *  Copyright (C) 2007-2009 Gabor Juhos <juhosg@openwrt.org>
++ *
++ *  This file was based on drivers/mtd/redboot.c
++ *  Author: Red Hat, Inc. - David Woodhouse <dwmw2@cambridge.redhat.com>
++ *
++ *  This program is free software; you can redistribute it and/or modify it
++ *  under the terms of the GNU General Public License version 2 as published
++ *  by the Free Software Foundation.
++ */
++
++#include <linux/kernel.h>
++#include <linux/module.h>
++#include <linux/version.h>
++#include <linux/slab.h>
++#include <linux/init.h>
++#include <linux/vmalloc.h>
++#include <linux/mtd/mtd.h>
++#include <linux/mtd/partitions.h>
++#include <linux/byteorder/generic.h>
++#include <linux/myloader.h>
++
++#define BLOCK_LEN_MIN		0x10000
++#define PART_NAME_LEN		32
++
++struct part_data {
++	struct mylo_partition_table	tab;
++	char names[MYLO_MAX_PARTITIONS][PART_NAME_LEN];
++};
++
++static int myloader_parse_partitions(struct mtd_info *master,
++				     const struct mtd_partition **pparts,
++				     struct mtd_part_parser_data *data)
++{
++	struct part_data *buf;
++	struct mylo_partition_table *tab;
++	struct mylo_partition *part;
++	struct mtd_partition *mtd_parts;
++	struct mtd_partition *mtd_part;
++	int num_parts;
++	int ret, i;
++	size_t retlen;
++	char *names;
++	unsigned long offset;
++	unsigned long blocklen;
++
++	buf = vmalloc(sizeof(*buf));
++	if (!buf) {
++		return -ENOMEM;
++		goto out;
++	}
++	tab = &buf->tab;
++
++	blocklen = master->erasesize;
++	if (blocklen < BLOCK_LEN_MIN)
++		blocklen = BLOCK_LEN_MIN;
++
++	offset = blocklen;
++
++	/* Find the partition table */
++	for (i = 0; i < 4; i++, offset += blocklen) {
++		printk(KERN_DEBUG "%s: searching for MyLoader partition table"
++				" at offset 0x%lx\n", master->name, offset);
++
++		ret = mtd_read(master, offset, sizeof(*buf), &retlen,
++			       (void *)buf);
++		if (ret)
++			goto out_free_buf;
++
++		if (retlen != sizeof(*buf)) {
++			ret = -EIO;
++			goto out_free_buf;
++		}
++
++		/* Check for Partition Table magic number */
++		if (tab->magic == le32_to_cpu(MYLO_MAGIC_PARTITIONS))
++			break;
++
++	}
++
++	if (tab->magic != le32_to_cpu(MYLO_MAGIC_PARTITIONS)) {
++		printk(KERN_DEBUG "%s: no MyLoader partition table found\n",
++			master->name);
++		ret = 0;
++		goto out_free_buf;
++	}
++
++	/* The MyLoader and the Partition Table is always present */
++	num_parts = 2;
++
++	/* Detect number of used partitions */
++	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
++		part = &tab->partitions[i];
++
++		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
++			continue;
++
++		num_parts++;
++	}
++
++	mtd_parts = kzalloc((num_parts * sizeof(*mtd_part) +
++				num_parts * PART_NAME_LEN), GFP_KERNEL);
++
++	if (!mtd_parts) {
++		ret = -ENOMEM;
++		goto out_free_buf;
++	}
++
++	mtd_part = mtd_parts;
++	names = (char *)&mtd_parts[num_parts];
++
++	strncpy(names, "myloader", PART_NAME_LEN);
++	mtd_part->name = names;
++	mtd_part->offset = 0;
++	mtd_part->size = offset;
++	mtd_part->mask_flags = MTD_WRITEABLE;
++	mtd_part++;
++	names += PART_NAME_LEN;
++
++	strncpy(names, "partition_table", PART_NAME_LEN);
++	mtd_part->name = names;
++	mtd_part->offset = offset;
++	mtd_part->size = blocklen;
++	mtd_part->mask_flags = MTD_WRITEABLE;
++	mtd_part++;
++	names += PART_NAME_LEN;
++
++	for (i = 0; i < MYLO_MAX_PARTITIONS; i++) {
++		part = &tab->partitions[i];
++
++		if (le16_to_cpu(part->type) == PARTITION_TYPE_FREE)
++			continue;
++
++		if ((buf->names[i][0]) && (buf->names[i][0] != '\xff'))
++			strncpy(names, buf->names[i], PART_NAME_LEN);
++		else
++			snprintf(names, PART_NAME_LEN, "partition%d", i);
++
++		mtd_part->offset = le32_to_cpu(part->addr);
++		mtd_part->size = le32_to_cpu(part->size);
++		mtd_part->name = names;
++		mtd_part++;
++		names += PART_NAME_LEN;
++	}
++
++	*pparts = mtd_parts;
++	ret = num_parts;
++
++ out_free_buf:
++	vfree(buf);
++ out:
++	return ret;
++}
++
++static struct mtd_part_parser myloader_mtd_parser = {
++	.owner		= THIS_MODULE,
++	.parse_fn	= myloader_parse_partitions,
++	.name		= "MyLoader",
++};
++
++static int __init myloader_mtd_parser_init(void)
++{
++	register_mtd_parser(&myloader_mtd_parser);
++
++	return 0;
++}
++
++static void __exit myloader_mtd_parser_exit(void)
++{
++	deregister_mtd_parser(&myloader_mtd_parser);
++}
++
++module_init(myloader_mtd_parser_init);
++module_exit(myloader_mtd_parser_exit);
++
++MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
++MODULE_DESCRIPTION("Parsing code for MyLoader partition tables");
++MODULE_LICENSE("GPL v2");
diff --git a/target/linux/generic/pending-5.4/497-mtd-mtdconcat-add-dt-driver-for-concat-devices.patch b/target/linux/generic/pending-5.4/497-mtd-mtdconcat-add-dt-driver-for-concat-devices.patch
index 4d7598cc7c..1c42ed7bff 100644
--- a/target/linux/generic/pending-5.4/497-mtd-mtdconcat-add-dt-driver-for-concat-devices.patch
+++ b/target/linux/generic/pending-5.4/497-mtd-mtdconcat-add-dt-driver-for-concat-devices.patch
@@ -43,7 +43,7 @@ Signed-off-by: Bernhard Frauendienst <kernel@nospam.obeliks.de>
 
 --- a/drivers/mtd/Kconfig
 +++ b/drivers/mtd/Kconfig
-@@ -244,4 +244,6 @@ source "drivers/mtd/ubi/Kconfig"
+@@ -228,4 +228,6 @@ source "drivers/mtd/ubi/Kconfig"
  
  source "drivers/mtd/hyperbus/Kconfig"
  
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
