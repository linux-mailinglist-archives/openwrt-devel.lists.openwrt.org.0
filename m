Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B161A8D7
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 May 2019 19:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8LnwVqyTPCA6OMf8JFfMmo4Sw1H+mnEh4aB0pn8LUWU=; b=AzyZnl2ywebVvmM4FdVQMRHV90
	pCWQAwuozN8GPlQl7asIhjY7eqxjEz247HNklmQxPrxhrMaNQP4lMkgxMZQV5iXbzuMGIDyoyDUfo
	I817Ns+Qv3hywbRsnlfSrnSbiRg1m94XyXd0M7w9MAPeo//OxBo7enAYipNaz+9olSo5wqwx1Huso
	Yk3kzZiVk89LTfcRj8cLWhd5a/imGndQutbcBKuxtvwRte7KQF1Y6PhyGe/m7c482KwUyg18opFgy
	W9+44P6bMiIXCLBVIB+TA1yqMJxSNfdpXB1PP9sFJsO5YvuLNxX1agaoQ99dJ5HQIEI+9py6U7fa3
	VX5nfrZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPVwy-0006Ik-NP; Sat, 11 May 2019 17:38:20 +0000
Received: from mx-out.tlen.pl ([193.222.135.158])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPVwT-0005pH-6D
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 17:37:52 +0000
Received: (wp-smtpd smtp.tlen.pl 13685 invoked from network);
 11 May 2019 19:37:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557596265; bh=XCw8Hi0ExXOO8e6aO1Yi5k00aloF3xeAUUxLtCsjx+o=;
 h=From:To:Subject;
 b=NTa6ZJQvOSFHDEXo3/dpVl5CIQtR7j7S1/U9pCKV2SVfAkNADmxr6HRDtlkHK7b8q
 csXPtML3qOXr+Ihy8iuXD2U37f3mMGatdBdVAOSPs4+VS5B0YC+cCxd12U4jqdjHTy
 UzS1VwAgDZRgNEFRWij9hn4HX7YfXENmR8spLFpk=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 May 2019 19:37:45 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 11 May 2019 19:37:29 +0200
Message-Id: <20190511173735.5549-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190511173735.5549-1-tomek_n@o2.pl>
References: <20190511173735.5549-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 6d1ecff6a27088d1d3002981f26a4b1d
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [YVPU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_103749_547258_AFA9E44C 
X-CRM114-Status: UNSURE (   6.51  )
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
Subject: [OpenWrt-Devel] [PATCH v3 2/8] mvebu: image: stack repeated
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
