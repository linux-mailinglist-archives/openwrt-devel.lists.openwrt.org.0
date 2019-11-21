Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4903D105708
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 17:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtCHRFdeg4MSl284gRW3Tj5yHIMsOkzQ6V3INI1JtKQ=; b=JbKFIC3OkK35TP
	gHDjLMy7dBc5VU8kUNDk0mwWR7/PI8Ei68Oot3gsnyQ9WmWE2PgvivQF4BsGzAiS7jbLIwxl/wJtz
	LAS47fj7r9RrVND1sbo6s6jsBAqnM6yhLi/5qqAnj+21SLgPvd5IKjcfBiYxFvJ9ePmZpIArGUakj
	nV6TG3VmYu0+11QiEP2EUWighPnBQgpR0uECkFIqyQNWEhBSa76mBvFFisKdLHwfeMiUMbZoF3CoX
	iQrtftmAVmG0YHZY5bIB7HTa1Fq2sSCYUIYn5AKZYo6SeqDbwO5zyE5zmYC7h3R7uL1VeFwLKs63k
	yPxaQx7VXC5v7K1adGmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpHD-0006SI-3E; Thu, 21 Nov 2019 16:25:51 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpF6-0002pe-IA
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 16:23:44 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BFD7840006;
 Thu, 21 Nov 2019 16:23:30 +0000 (UTC)
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 21 Nov 2019 17:23:19 +0100
Message-Id: <20191121162322.671035-10-thomas.petazzoni@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
References: <20191121162322.671035-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_082340_892272_47634296 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 09/12] include/image.mk: add support for
 building a dm-verity enabled squashfs image
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit adds a new TARGET_ROOTFS_SQUASHFS_HASHED option that asks
OpenWRT to generate a squashfs image suitable for usage with
dm-verity. The squashfs image is produced, and then passed through
"cryptsetup format" which appends the hash tree to the image.

The output of "cryptsetup format" is passed to a custom script that
parses that output and generates a U-Boot script that defines U-Boot
variables describing the different aspects of the dm-verity
volume. Such values are necessary to be able to build the kernel
command line to mount the dm-verity volume as the root filesystem.

We provide a common Image/mkfs/squashfs-common macro, which gets used
by both the normal SquashFS filesystem generation and the
verity-hashed SquashFS filesystem generation. There is one difference
between the two: the normal SquashFS filesystem is generated with
-nopad, but the one generated for dm-verity is generated without
-no-pad, as it needs to be properly aligned to a block size.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
---
 config/Config-images.in                   |  8 +++++
 include/image.mk                          | 17 ++++++++--
 scripts/prepare-dm-verity-uboot-script.sh | 41 +++++++++++++++++++++++
 tools/Makefile                            |  1 +
 4 files changed, 64 insertions(+), 3 deletions(-)
 create mode 100755 scripts/prepare-dm-verity-uboot-script.sh

diff --git a/config/Config-images.in b/config/Config-images.in
index 4ee0273f63..37e7ad6cff 100644
--- a/config/Config-images.in
+++ b/config/Config-images.in
@@ -153,6 +153,14 @@ menu "Target Images"
 			default 1024 if (SMALL_FLASH && !LOW_MEMORY_FOOTPRINT)
 			default 256
 
+		config TARGET_ROOTFS_SQUASHFS_HASHED
+			bool "hash with veritysetup"
+			select KERNEL_MD
+			select KERNEL_BLK_DEV_DM
+			select KERNEL_DM_VERITY
+			select KERNEL_DM_INIT
+			depends on TARGET_ROOTFS_SQUASHFS
+
 	menuconfig TARGET_ROOTFS_UBIFS
 		bool "ubifs"
 		default y if USES_UBIFS
diff --git a/include/image.mk b/include/image.mk
index 8592c19b99..e4e4dc456d 100644
--- a/include/image.mk
+++ b/include/image.mk
@@ -90,6 +90,7 @@ endif
 JFFS2_BLOCKSIZE ?= 64k 128k
 
 fs-types-$(CONFIG_TARGET_ROOTFS_SQUASHFS) += squashfs
+fs-types-$(CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED) += squashfs-hashed
 fs-types-$(CONFIG_TARGET_ROOTFS_JFFS2) += $(addprefix jffs2-,$(JFFS2_BLOCKSIZE))
 fs-types-$(CONFIG_TARGET_ROOTFS_JFFS2_NAND) += $(addprefix jffs2-nand-,$(NAND_BLOCKSIZE))
 fs-types-$(CONFIG_TARGET_ROOTFS_EXT4FS) += ext4
@@ -239,11 +240,21 @@ endef
 $(eval $(foreach S,$(JFFS2_BLOCKSIZE),$(call Image/mkfs/jffs2/template,$(S))))
 $(eval $(foreach S,$(NAND_BLOCKSIZE),$(call Image/mkfs/jffs2-nand/template,$(S))))
 
-define Image/mkfs/squashfs
+define Image/mkfs/squashfs-common
 	$(STAGING_DIR_HOST)/bin/mksquashfs4 $(call mkfs_target_dir,$(1)) $@ \
-		-nopad -noappend -root-owned \
+		-noappend -root-owned \
 		-comp $(SQUASHFSCOMP) $(SQUASHFSOPT) \
-		-processors 1
+		-processors 1 $(2)
+endef
+
+define Image/mkfs/squashfs
+	$(call Image/mkfs/squashfs-common,$(1),-nopad)
+endef
+
+define Image/mkfs/squashfs-hashed
+	$(call Image/mkfs/squashfs-common,$(1))
+	$(STAGING_DIR_HOST)/bin/veritysetup format --hash-offset=`stat -c "%s" $@` $@ $@ \
+		| $(TOPDIR)/scripts/prepare-dm-verity-uboot-script.sh > $@-dm-verity-uboot-script.txt
 endef
 
 # $(1): board name
diff --git a/scripts/prepare-dm-verity-uboot-script.sh b/scripts/prepare-dm-verity-uboot-script.sh
new file mode 100755
index 0000000000..846e52b989
--- /dev/null
+++ b/scripts/prepare-dm-verity-uboot-script.sh
@@ -0,0 +1,41 @@
+#!/bin/bash
+
+while read line; do
+	key=$(echo ${line} | cut -f1 -d':')
+	value=$(echo ${line} | cut -f2 -d':')
+
+	case "${key}" in
+	"UUID")
+		UUID=${value}
+		;;
+	"Data blocks")
+		DATA_BLOCKS=${value}
+		;;
+	"Data block size")
+		DATA_BLOCK_SIZE=${value}
+		;;
+	"Hash block size")
+		HASH_BLOCK_SIZE=${value}
+		;;
+	"Hash algorithm")
+		HASH_ALG=${value}
+		;;
+	"Salt")
+		SALT=${value}
+		;;
+	"Root hash")
+		ROOT_HASH=${value}
+		;;
+	esac
+done
+
+SECTORS=$((${DATA_BLOCKS} * 8))
+
+echo setenv verity_sectors $((${DATA_BLOCKS} * 8))
+echo setenv verity_data_blocks ${DATA_BLOCKS}
+echo setenv verity_hash_start $((${DATA_BLOCKS} + 1))
+echo setenv verity_data_block_sz ${DATA_BLOCK_SIZE}
+echo setenv verity_hash_block_sz ${HASH_BLOCK_SIZE}
+echo setenv verity_hash_alg ${HASH_ALG}
+echo setenv verity_salt ${SALT}
+echo setenv verity_root_hash ${ROOT_HASH}
diff --git a/tools/Makefile b/tools/Makefile
index cf91f04100..b9e1f4d1e4 100644
--- a/tools/Makefile
+++ b/tools/Makefile
@@ -39,6 +39,7 @@ tools-$(BUILD_ISL) += isl
 tools-$(CONFIG_USE_SPARSE) += sparse
 tools-$(CONFIG_TARGET_apm821xx)$(CONFIG_TARGET_gemini) += genext2fs
 tools-$(CONFIG_TARGET_tegra) += cbootimage cbootimage-configs
+tools-$(CONFIG_TARGET_ROOTFS_SQUASHFS_HASHED) += cryptsetup lvm2 libaio popt libjson-c
 
 # builddir dependencies
 $(curdir)/bison/compile := $(curdir)/flex/compile
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
