Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F7F18A8B
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 15:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8LnwVqyTPCA6OMf8JFfMmo4Sw1H+mnEh4aB0pn8LUWU=; b=MmeaDhiF+vGS2rOCni5uU7uRFk
	/vplfKf5g6FJKIFDBFNnz5a2uk9UXs1kaIJUmlTbskp934TgI0yDYc7GM+6pbUgILMN1hQrqYRZyN
	DNN2LibXKYiFH5GJtXU4xU6SapKxl21gXrlrXTdlgnO0gkmFSdK3Lo8UM/fsKV6ve7CD1hafTY7Ce
	4INUl4cCHSQFev8Y1393nH8LtcAjZDXmfEfe8VnArGG33KVm7ocmS5N0V2I8LcuPtkdzelCPwQEYa
	lCRvxiMB+PCQmoF2RUCk3F5lxr1/LGUGxZpnPxns6O7NzTbQsTr22Q19d8q6Pi83s9xLtaV/27f+A
	Jt2z8YsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj51-0006Mp-4i; Thu, 09 May 2019 13:27:23 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj4Y-0005wH-Ph
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 13:26:56 +0000
Received: (wp-smtpd smtp.tlen.pl 14429 invoked from network);
 9 May 2019 15:26:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557408409; bh=XCw8Hi0ExXOO8e6aO1Yi5k00aloF3xeAUUxLtCsjx+o=;
 h=From:To:Subject;
 b=hA6hFswfCE5YU0y49CavGLDzWHHrTK96yM2nRVpaYLYJKnfgNBg86PuDb7rGFXjE6
 j60kCHPKxaO5iQzZluNM88yRWd6wU9f+SbBseuFabF6LzdltVvJyKQAq4xYNQFy8td
 x31ZyYr/pVaryOKfCP4ZPDZhEIGFJ9Az4JZ8cHXk=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 9 May 2019 15:26:49 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 15:26:22 +0200
Message-Id: <20190509132628.4671-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509132628.4671-1-tomek_n@o2.pl>
References: <20190509132628.4671-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 3629984b0d0693723cdbb13ea86838cb
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [YQNU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_062654_988889_C5D87A19 
X-CRM114-Status: UNSURE (   6.62  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 2/8] mvebu: image: stack repeated
 variables
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

All of arm64 devices have part of variables repeatedly defined. Stack
them to common define, and reference it in each device recipe.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile      |  8 ++++++++
 target/linux/mvebu/image/cortex-a53.mk | 12 ++----------
 target/linux/mvebu/image/cortex-a72.mk | 20 +++++---------------
 3 files changed, 15 insertions(+), 25 deletions(-)

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 72b14e344b..5f4ab89716 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -83,6 +83,14 @@ define Device/Default
 endef
 DEVICE_VARS += UBOOT
 
+define Device/Default-arm64
+  DTS_DIR := $(DTS_DIR)/marvell
+  IMAGES := sdcard.img.gz
+  IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
+  KERNEL_NAME := Image
+  KERNEL := kernel-bin
+endef
+
 define Device/UBI
   IMAGES := sysupgrade.bin
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
diff --git a/target/linux/mvebu/image/cortex-a53.mk b/target/linux/mvebu/image/cortex-a53.mk
index dd6176100b..a102f52481 100644
--- a/target/linux/mvebu/image/cortex-a53.mk
+++ b/target/linux/mvebu/image/cortex-a53.mk
@@ -1,25 +1,17 @@
 ifeq ($(SUBTARGET),cortexa53)
 
 define Device/globalscale-espressobin
-  KERNEL_NAME := Image
-  KERNEL := kernel-bin
+  $(call Device/Default-arm64)
   DEVICE_TITLE := ESPRESSObin (Marvell Armada 3700 Community Board)
-  IMAGES := sdcard.img.gz
-  IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-3720-espressobin
-  DTS_DIR := $(DTS_DIR)/marvell
   SUPPORTED_DEVICES := globalscale,espressobin
 endef
 TARGET_DEVICES += globalscale-espressobin
 
 define Device/armada-3720-db
-  KERNEL_NAME := Image
-  KERNEL := kernel-bin
+  $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 3720 Development Board DB-88F3720-DDR3
-  IMAGES := sdcard.img.gz
-  IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-3720-db
-  DTS_DIR := $(DTS_DIR)/marvell
   SUPPORTED_DEVICES := marvell,armada-3720-db
 endef
 TARGET_DEVICES += armada-3720-db
diff --git a/target/linux/mvebu/image/cortex-a72.mk b/target/linux/mvebu/image/cortex-a72.mk
index 25bcf534bc..824f6b5d0f 100644
--- a/target/linux/mvebu/image/cortex-a72.mk
+++ b/target/linux/mvebu/image/cortex-a72.mk
@@ -1,38 +1,28 @@
 ifeq ($(SUBTARGET),cortexa72)
 
 define Device/armada-macchiatobin
-  KERNEL_NAME := Image
-  KERNEL := kernel-bin
+  $(call Device/Default-arm64)
   DEVICE_TITLE := MACCHIATObin (SolidRun Armada 8040 Community Board)
   DEVICE_PACKAGES += kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
-  IMAGES := sdcard.img.gz
-  IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-8040-mcbin
-  DTS_DIR := $(DTS_DIR)/marvell
   SUPPORTED_DEVICES := marvell,armada8040-mcbin
 endef
 TARGET_DEVICES += armada-macchiatobin
 
 define Device/armada-8040-db
-  KERNEL_NAME := Image
-  KERNEL := kernel-bin
+  $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 8040 DB board
-  IMAGES := sdcard.img.gz
-  IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-8040-db
-  DTS_DIR := $(DTS_DIR)/marvell
+  IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   SUPPORTED_DEVICES := marvell,armada8040-db
 endef
 TARGET_DEVICES += armada-8040-db
 
 define Device/armada-7040-db
-  KERNEL_NAME := Image
-  KERNEL := kernel-bin
+  $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 7040 DB board
-  IMAGES := sdcard.img.gz
-  IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   DEVICE_DTS := armada-7040-db
-  DTS_DIR := $(DTS_DIR)/marvell
+  IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   SUPPORTED_DEVICES := marvell,armada7040-db
 endef
 TARGET_DEVICES += armada-7040-db
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
