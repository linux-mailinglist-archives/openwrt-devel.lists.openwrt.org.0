Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDB610C4D
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:42:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r/MQUmtUdbgTSjJ9Dub2UeTDQceqTleTk9fMcQJp5Es=; b=Q1sYUGTHreDEICS4iWrgQNdsli
	hvOoe9/2zqUzRgCrR2eMw6xaUFexcejDp42KykeIYEuNNMPmsEHRNwZYVl5MeypD9nbHKEhJjgHHE
	hxiNZMiJTIn8qldDdAdm965J4W4rV7wssWgmpAZFodaelwrka9A2PFwsdsaLeMrGuZVx34KZGl9am
	6K3rcW3aUmw+LRykS6VsCYoftwBZCzWq0xBJWfhamEXrmYoV14RrWc+g9ncOQQ+XbYYVLSzsAdi9E
	IXUqsizI8m9+NwOBhCrbCkwnMeMxVF2k0OX6ldCmMq57L9+ljYwn7qfTwGCEtKSIXu3xUQhCBJpBT
	z8FDTNWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtFu-0007Yf-UA; Wed, 01 May 2019 17:42:54 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtFd-0007Nq-CK
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:42:39 +0000
Received: (wp-smtpd smtp.tlen.pl 406 invoked from network);
 1 May 2019 19:42:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556732553; bh=7t9DlMXJdenDlLIeBrygyJJMSJUUIEcv1tUCi2YAfiU=;
 h=From:To:Subject;
 b=ExLnAPRD8N3rxt0NRltHdZi0OSI6i9LMyqgNrM3AhQ8vYpQ1N5yx2jEjjpRP2tMc2
 ksgXvSTKrHCCvMwYF0/inEvdkoo4rmoM/lUF8esZsMQdO7mV0v0ECqYsp8rYIoO4cl
 AYIbSw1Sff2wWqf9du99WTA2wE6jmc4iq1drLtkg=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 1 May 2019 19:42:33 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 19:42:18 +0200
Message-Id: <20190501174224.19089-3-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190501174224.19089-1-tomek_n@o2.pl>
References: <20190501174224.19089-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 12ebd974876dd3c54cd0d48a927e6e72
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [MVN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_104237_754207_34610C2A 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/8] mvebu: image: stack repeated variables
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
index 18421d1dd0..c0bb02d7c0 100644
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
