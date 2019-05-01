Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BF910C52
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:43:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d+0rnv5m2DTAjZIfQ68RsBOOb4IXt9TO48b9zm4U9D4=; b=ERSJ/Mghfq4t+2m03B7mm+IETh
	DIGR2jQ9ZeKluaVTt7QM1RO4Vu/QUZEj9lCIa8QjZRXznyRJEiD1fX9DkEIPtDppJTR6R6T2Rtzoh
	wiefiePJ550tNR2mVs8cmtU/Qrb0CvOo9KA8L0hv5yrXMao+RAg658aJN+EpjZzc67IZKYWY5G2Gt
	+wI8KkD0xGZaA8DqciT1vfjM14PH6XJ+Hd5KHRyOshcLLGhViPNmRSXC5p4iWxKf/4CUuDCL91GGr
	hppov7Qp0fuLFUus004oDgjM6jyNLBcixs7tI4RSPBb39C0Lb6x2IMutFXUOPxMGNr7FwtfeEDJwB
	61qLYwqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtGQ-0008LP-Uz; Wed, 01 May 2019 17:43:27 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtFe-0007O8-O9
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:42:41 +0000
Received: (wp-smtpd smtp.tlen.pl 3559 invoked from network);
 1 May 2019 19:42:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556732556; bh=BRvVeBLYP7dXDP6VS+wPXltOzSWMLHVVlrWGMcRxNvg=;
 h=From:To:Subject;
 b=XvzFMEwxcbmws9UsZO14nXg1Fn8yfbW70YyQKKijwZV1CklOX7Irolpt+EI8QvrXb
 XF8Cg2QqKQ+nlsc2ZXJLgn1wSRA0GBVsxLujjywAujsFj/ikGqAA8Lc+K5JQCMWQ8N
 PWXkIFCKg+wDddx8xUegJaodDoFIkKy52FmwRhbM=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 1 May 2019 19:42:36 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 19:42:22 +0200
Message-Id: <20190501174224.19089-7-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190501174224.19089-1-tomek_n@o2.pl>
References: <20190501174224.19089-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 6eb240e51cdcc90b0b4d73aad6c4e463
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EaNk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_104238_943866_AC175C0D 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 6/8] mvebu: add vendor to device names
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

Replace SoC names with vendors in device names, in few cases, and add
vendor to developemnt boards for easier identyfying potential firmware to
flash.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/uboot-mvebu/Makefile      |  2 +-
 target/linux/mvebu/image/Makefile      |  1 -
 target/linux/mvebu/image/cortex-a53.mk |  4 +--
 target/linux/mvebu/image/cortex-a72.mk | 12 +++----
 target/linux/mvebu/image/cortex-a9.mk  | 44 +++++++++++++++-----------
 5 files changed, 34 insertions(+), 29 deletions(-)

diff --git a/package/boot/uboot-mvebu/Makefile b/package/boot/uboot-mvebu/Makefile
index 61547acb27..06c574594b 100644
--- a/package/boot/uboot-mvebu/Makefile
+++ b/package/boot/uboot-mvebu/Makefile
@@ -24,7 +24,7 @@ endef
 
 define U-Boot/clearfog
   NAME:=SolidRun ClearFog A1
-  BUILD_DEVICES:=armada-388-clearfog-base armada-388-clearfog-pro
+  BUILD_DEVICES:=solidrun-clearfog-base solidrun-clearfog-pro
   BUILD_SUBTARGET:=cortexa9
   UBOOT_IMAGE:=u-boot-spl.kwb
 endef
diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 240cc88642..fe74a12c65 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -70,7 +70,6 @@ endef
 
 define Device/Default
   PROFILES := Default
-  DEVICE_DTS := $(1)
   BOARD_NAME = $$(DEVICE_DTS)
   KERNEL_NAME := zImage
   KERNEL := kernel-bin | append-dtb | uImage none
diff --git a/target/linux/mvebu/image/cortex-a53.mk b/target/linux/mvebu/image/cortex-a53.mk
index a102f52481..4dd1e44665 100644
--- a/target/linux/mvebu/image/cortex-a53.mk
+++ b/target/linux/mvebu/image/cortex-a53.mk
@@ -8,12 +8,12 @@ define Device/globalscale-espressobin
 endef
 TARGET_DEVICES += globalscale-espressobin
 
-define Device/armada-3720-db
+define Device/marvell-armada-3720-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 3720 Development Board DB-88F3720-DDR3
   DEVICE_DTS := armada-3720-db
   SUPPORTED_DEVICES := marvell,armada-3720-db
 endef
-TARGET_DEVICES += armada-3720-db
+TARGET_DEVICES += marvell-armada-3720-db
 
 endif
diff --git a/target/linux/mvebu/image/cortex-a72.mk b/target/linux/mvebu/image/cortex-a72.mk
index 824f6b5d0f..3043f087cc 100644
--- a/target/linux/mvebu/image/cortex-a72.mk
+++ b/target/linux/mvebu/image/cortex-a72.mk
@@ -1,30 +1,30 @@
 ifeq ($(SUBTARGET),cortexa72)
 
-define Device/armada-macchiatobin
+define Device/marvell-macchiatobin
   $(call Device/Default-arm64)
   DEVICE_TITLE := MACCHIATObin (SolidRun Armada 8040 Community Board)
   DEVICE_PACKAGES += kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
   DEVICE_DTS := armada-8040-mcbin
   SUPPORTED_DEVICES := marvell,armada8040-mcbin
 endef
-TARGET_DEVICES += armada-macchiatobin
+TARGET_DEVICES += marvell-macchiatobin
 
-define Device/armada-8040-db
+define Device/marvell-armada-8040-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 8040 DB board
   DEVICE_DTS := armada-8040-db
   IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   SUPPORTED_DEVICES := marvell,armada8040-db
 endef
-TARGET_DEVICES += armada-8040-db
+TARGET_DEVICES += marvell-armada-8040-db
 
-define Device/armada-7040-db
+define Device/marvell-armada-7040-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 7040 DB board
   DEVICE_DTS := armada-7040-db
   IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   SUPPORTED_DEVICES := marvell,armada7040-db
 endef
-TARGET_DEVICES += armada-7040-db
+TARGET_DEVICES += marvell-armada-7040-db
 
 endif
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index 252300b942..e5459dad1a 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -61,57 +61,63 @@ define Device/linksys-wrt1900ac
 endef
 TARGET_DEVICES += linksys-wrt1900ac
 
-define Device/openblocks-ax3-4
+define Device/plathome-openblocks-ax3-4
   DEVICE_DTS := armada-xp-openblocks-ax3-4
-  SUPPORTED_DEVICES := $(1)
+  SUPPORTED_DEVICES := openblocks-ax3-4
   BLOCKSIZE := 128k
   PAGESIZE := 1
   IMAGES += factory.img
   IMAGE/factory.img := append-kernel | pad-to $$(BLOCKSIZE) | append-ubi
   DEVICE_TITLE := Plat'Home OpenBlocks AX3
 endef
-TARGET_DEVICES += openblocks-ax3-4
+TARGET_DEVICES += plathome-openblocks-ax3-4
 
-define Device/armada-385-db-ap
+define Device/marvell-armada-385-db-ap
   $(Device/NAND-256K)
+  DEVICE_DTS := armada-385-db-ap
   IMAGES += factory.img
   KERNEL_SIZE := 8192k
   DEVICE_TITLE := Marvell Armada 385 DB AP (DB-88F6820-AP)
 endef
-TARGET_DEVICES += armada-385-db-ap
+TARGET_DEVICES += marvell-armada-385-db-ap
 
-define Device/armada-370-db
+define Device/marvell-armada-370-db
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada 370 DB (DB-88F6710-BP-DDR3)
+  DEVICE_DTS := armada-370-db
 endef
-TARGET_DEVICES += armada-370-db
+TARGET_DEVICES += marvell-armada-370-db
 
-define Device/armada-370-rd
+define Device/marvell-armada-370-rd
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada 370 RD (RD-88F6710-A1)
+  DEVICE_DTS := armada-370-rd
 endef
-TARGET_DEVICES += armada-370-rd
+TARGET_DEVICES += marvell-armada-370-rd
 
-define Device/armada-xp-db
+define Device/marvell-armada-xp-db
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada XP DB (DB-78460-BP)
+  DEVICE_DTS := armada-xp-db
 endef
-TARGET_DEVICES += armada-xp-db
+TARGET_DEVICES += marvell-armada-xp-db
 
-define Device/armada-xp-gp
+define Device/marvell-armada-xp-gp
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada XP GP (DB-MV784MP-GP)
+  DEVICE_DTS := armada-xp-gp
 endef
-TARGET_DEVICES += armada-xp-gp
+TARGET_DEVICES += marvell-armada-xp-gp
 
-define Device/armada-388-rd
+define Device/marvell-armada-388-rd
   DEVICE_TITLE := Marvell Armada 388 RD (RD-88F6820-AP)
+  DEVICE_DTS := armada-388-rd
   IMAGES := firmware.bin
   IMAGE/firmware.bin := append-kernel | pad-to 256k | append-rootfs | pad-rootfs
 endef
-TARGET_DEVICES += armada-388-rd
+TARGET_DEVICES += marvell-armada-388-rd
 
-define Device/armada-388-clearfog-pro
+define Device/solidrun-clearfog-pro
   KERNEL_INSTALL := 1
   KERNEL := kernel-bin
   DEVICE_TITLE := SolidRun ClearFog Pro
@@ -123,9 +129,9 @@ define Device/armada-388-clearfog-pro
   UBOOT := clearfog-u-boot-spl.kwb
   BOOT_SCRIPT := clearfog
 endef
-TARGET_DEVICES += armada-388-clearfog-pro
+TARGET_DEVICES += solidrun-clearfog-pro
 
-define Device/armada-388-clearfog-base
+define Device/solidrun-clearfog-base
   KERNEL_INSTALL := 1
   KERNEL := kernel-bin
   DEVICE_TITLE := SolidRun ClearFog Base
@@ -136,7 +142,7 @@ define Device/armada-388-clearfog-base
   UBOOT := clearfog-u-boot-spl.kwb
   BOOT_SCRIPT := clearfog
 endef
-TARGET_DEVICES += armada-388-clearfog-base
+TARGET_DEVICES += solidrun-clearfog-base
 
 define Device/globalscale-mirabox
   $(Device/NAND-512K)
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
