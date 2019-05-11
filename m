Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC90B1A8D9
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 19:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SC2Ta5VVMsKVuI0SvNAPzllcZSOS/2WFzGV49esrgQs=; b=pisdEt6554N2hQBhTtPzMX4PNw
	6NX3tj/yW3WV2agYz5ZFDBl+sNuh1l4ewprcyLYam+RnFHVJkE1Ca5A/YivI8k0xkRWm8Fl8voxwa
	hhdxOeyrxpsSu9z0SFctddCQfqn2ElLe/MnaP4cVuZaqN3FCWufj8+O85AV9Yg0VhHwXuqS7MFNaX
	Lr04RM3BOFusTxHWevCychiKD6IJY006SWbl8Cd3EOVT7dEIPfIC8P3Ob0mwU6c3fofYfl+3bLUfm
	5YzVWxNGpFauwKGsrSzYaTRILpDEK8MdP4FVFaAN04yLAQvjj0n91nYwC974g1M9KFS9sPp0CEPCs
	ZwrrIxIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPVxJ-0006ni-3P; Sat, 11 May 2019 17:38:41 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPVwU-0005pK-7P
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 17:37:53 +0000
Received: (wp-smtpd smtp.tlen.pl 15120 invoked from network);
 11 May 2019 19:37:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557596266; bh=ObPoMDrMC0tkL4+EpMcxCCLPMUmgjIlHq39ofGUn0cw=;
 h=From:To:Subject;
 b=apjwyNU3JLrxxm9X6jLQXs7bcHRErNtBVpdqSbanAIH3+Vg8EI9UVC0AgkM1CuFJb
 +Nbc44xQ6JOqZjRChyHOBJdDONAfChoCpYPa4zqySzZKjhFqPysmAMfGQJwU4TBqFR
 kTJ683Pchoc5IbUgM8zNGq5epgD36f6+LXWQ0rfU=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 May 2019 19:37:46 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 19:37:31 +0200
Message-Id: <20190511173735.5549-5-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190511173735.5549-1-tomek_n@o2.pl>
References: <20190511173735.5549-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: eb06786a7a5f84337884ec16aa8074f7
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [ESME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_103750_425524_78DD7F7B 
X-CRM114-Status: UNSURE (   6.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v3 4/8] mvebu: image: improve readability of
 device recipes
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

Drop overly complex amount of defines wich are referenced in the same
devices pool and move image recipes to common define, since devices not
using them overwrite it.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile     | 21 ++++-----------
 target/linux/mvebu/image/cortex-a9.mk | 39 ++++++++++-----------------
 2 files changed, 19 insertions(+), 41 deletions(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 95d4d5a79b..108b569c07 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -80,7 +80,11 @@ define Device/Default
   BOARD_NAME = $$(DEVICE_DTS)
   KERNEL_NAME := zImage
   KERNEL := kernel-bin | append-dtb | uImage none
-  SUPPORTED_DEVICES = $$(DEVICE_DTS)
+  IMAGES := sysupgrade.bin
+  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | pad-to $$$$(PAGESIZE)
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  SUPPORTED_DEVICES = $$(firstword $$(DEVICE_DTS))
+  UBINIZE_OPTS := -E 5
   UBOOT :=
   BOOT_SCRIPT :=
 endef
@@ -95,20 +99,7 @@ define Device/Default-arm64
   KERNEL := kernel-bin
 endef
 
-define Device/UBI
-  IMAGES := sysupgrade.bin
-  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
-endef
-
-define Device/UBI-factory
-  $(Device/UBI)
-  UBINIZE_OPTS := -E 5
-  IMAGES += factory.img
-  IMAGE/factory.img := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | pad-to $$$$(PAGESIZE)
-endef
-
 define Device/NAND-128K
-  $(Device/UBI)
   BLOCKSIZE := 128k
   PAGESIZE := 2048
   SUBPAGESIZE := 512
@@ -116,13 +107,11 @@ define Device/NAND-128K
 endef
 
 define Device/NAND-256K
-  $(Device/UBI)
   BLOCKSIZE := 256k
   PAGESIZE := 4096
 endef
 
 define Device/NAND-512K
-  $(Device/UBI)
   BLOCKSIZE := 512k
   PAGESIZE := 4096
 endef
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index 8e9ef41fb6..252300b942 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -9,19 +9,15 @@
 ifeq ($(SUBTARGET),cortexa9)
 
 define Device/linksys
-  DEVICE_TITLE := Linksys $(1)
-  DEVICE_PACKAGES := kmod-mwlwifi wpad-basic swconfig
-endef
-
-define Device/armada-385-linksys
   $(Device/NAND-128K)
-  $(Device/UBI-factory)
+  DEVICE_TITLE := Linksys $(1)
+  DEVICE_PACKAGES := kmod-mwlwifi swconfig wpad-basic
+  IMAGES += factory.img
   KERNEL_SIZE := 6144k
 endef
 
 define Device/linksys-wrt1200ac
   $(call Device/linksys,WRT1200AC (Caiman))
-  $(Device/armada-385-linksys)
   DEVICE_DTS := armada-385-linksys-caiman
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
 endef
@@ -29,7 +25,6 @@ TARGET_DEVICES += linksys-wrt1200ac
 
 define Device/linksys-wrt1900acv2
   $(call Device/linksys,WRT1900ACv2 (Cobra))
-  $(Device/armada-385-linksys)
   DEVICE_DTS := armada-385-linksys-cobra
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
 endef
@@ -37,7 +32,6 @@ TARGET_DEVICES += linksys-wrt1900acv2
 
 define Device/linksys-wrt3200acm
   $(call Device/linksys,WRT3200ACM (Rango))
-  $(Device/armada-385-linksys)
   DEVICE_DTS := armada-385-linksys-rango
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
 endef
@@ -45,17 +39,15 @@ TARGET_DEVICES += linksys-wrt3200acm
 
 define Device/linksys-wrt1900acs
   $(call Device/linksys,WRT1900ACS (Shelby))
-  $(Device/armada-385-linksys)
   DEVICE_DTS := armada-385-linksys-shelby
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
 endef
 TARGET_DEVICES += linksys-wrt1900acs
 
 define Device/linksys-wrt32x
-$(call Device/linksys,WRT32X (Venom))
+  $(call Device/linksys,WRT32X (Venom))
   DEVICE_DTS := armada-385-linksys-venom
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
-  $(Device/armada-385-linksys)
   KERNEL_SIZE := 3072k
   KERNEL := kernel-bin | append-dtb
 endef
@@ -65,18 +57,16 @@ define Device/linksys-wrt1900ac
   $(call Device/linksys,WRT1900AC (Mamba))
   DEVICE_DTS := armada-xp-linksys-mamba
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  $(Device/NAND-128K)
-  $(Device/UBI-factory)
   KERNEL_SIZE := 3072k
 endef
 TARGET_DEVICES += linksys-wrt1900ac
 
 define Device/openblocks-ax3-4
-  $(Device/UBI-factory)
   DEVICE_DTS := armada-xp-openblocks-ax3-4
   SUPPORTED_DEVICES := $(1)
   BLOCKSIZE := 128k
   PAGESIZE := 1
+  IMAGES += factory.img
   IMAGE/factory.img := append-kernel | pad-to $$(BLOCKSIZE) | append-ubi
   DEVICE_TITLE := Plat'Home OpenBlocks AX3
 endef
@@ -84,34 +74,33 @@ TARGET_DEVICES += openblocks-ax3-4
 
 define Device/armada-385-db-ap
   $(Device/NAND-256K)
-  $(Device/UBI-factory)
+  IMAGES += factory.img
   KERNEL_SIZE := 8192k
   DEVICE_TITLE := Marvell Armada 385 DB AP (DB-88F6820-AP)
 endef
 TARGET_DEVICES += armada-385-db-ap
 
-define Device/marvell-nand
-  $(Device/NAND-512K)
-  DEVICE_TITLE := Marvell Armada $(1)
-endef
-
 define Device/armada-370-db
-	$(call Device/marvell-nand,370 DB (DB-88F6710-BP-DDR3))
+  $(Device/NAND-512K)
+  DEVICE_TITLE := Marvell Armada 370 DB (DB-88F6710-BP-DDR3)
 endef
 TARGET_DEVICES += armada-370-db
 
 define Device/armada-370-rd
-	$(call Device/marvell-nand,370 RD (RD-88F6710-A1))
+  $(Device/NAND-512K)
+  DEVICE_TITLE := Marvell Armada 370 RD (RD-88F6710-A1)
 endef
 TARGET_DEVICES += armada-370-rd
 
 define Device/armada-xp-db
-	$(call Device/marvell-nand,XP DB (DB-78460-BP))
+  $(Device/NAND-512K)
+  DEVICE_TITLE := Marvell Armada XP DB (DB-78460-BP)
 endef
 TARGET_DEVICES += armada-xp-db
 
 define Device/armada-xp-gp
-	$(call Device/marvell-nand,XP GP (DB-MV784MP-GP))
+  $(Device/NAND-512K)
+  DEVICE_TITLE := Marvell Armada XP GP (DB-MV784MP-GP)
 endef
 TARGET_DEVICES += armada-xp-gp
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
