Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C9318A97
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 15:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c7MZD822R519OrASdHJgVtbXvItdiiDgkASbHcn1ZT4=; b=KbW/axHOQi82HZtejSawF8wV/Z
	Q2LMUhpqBVYNr0Ddhrs7N/MdYwHl9HDaknhN46DtH3LYHOUyH+DUaDy58wF4NOSzYdERX869xCDL9
	wbhfAon+pZULF/yB5Kuf12F5qur4jEph7e0Cz9iVpEKnm1a9f8+1jeJNN5KG/8ygQs3EhmbBFuf5e
	qnsrZl8f2LHIoFwIHbMuVio1f6zPH/My88a31pK6YrreIkLX2HpjcveYj6BdzS6Eri12gvU6hIr+t
	uMjTFU7Sjaz4owE0gVW0K4HEZxdUjuqNlJLneh6jnSZMr9LSej/oc9MDA4y4NxWlFrh3yHhrjLFvs
	hzIldyeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOj63-00080N-4c; Thu, 09 May 2019 13:28:27 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj5H-0006zv-Oa
 for openwrt-devel@bombadil.infradead.org; Thu, 09 May 2019 13:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=05dfMlB4hCMSjZ8+/izERifrIgFXjGOhzFLVVvf6gv8=; b=Qz6Q4CBu6gIAi/LUAM5dqpUjf+
 p4mpNXuBxmQLsVDIRtcmJE9QuE/AGhjSxmXerju4VCVYuYRQjjqTJI+2tO310WR/2PLCdT26c9WZd
 8fxQk7N1jEukUE/3E5vTSfjwgjZgY1ZAIxELMmbxn936Dz6aB8dPw3XeJ60EVAln0Raq3iFPJ1P2e
 uGtbiRmOGRQWp1bsoou0EAA9IVJwl+hgSxDeiFI0siq3MaCXeQxLkcDef0Vb0+ARZnItJwQGC9Ymu
 eGzXXraEPkNUKFmYyeuFpsM6500o6rlk8Uqfm8x8pGGbuikYa6aYRDFGvgr5qZoUY5jazqLIyhXRC
 oaYV7ipw==;
Received: from mx-out.tlen.pl ([193.222.135.148])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOj5E-0003PH-V1
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 13:27:37 +0000
Received: (wp-smtpd smtp.tlen.pl 24794 invoked from network);
 9 May 2019 15:26:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1557408416; bh=05dfMlB4hCMSjZ8+/izERifrIgFXjGOhzFLVVvf6gv8=;
 h=From:To:Subject;
 b=ZdAMfEJTjjEDDpWaTPuplpxp8O3CmfD4GV1l3lvZWh3jymOm/gwSrujahlETyKknE
 xW4MgfV6la2mjRjQkubd21WomZUWXHn0DVA8Oa7RozlS/zQM4PbwSMriFne4zJisRw
 PXnLIq14FBaxdT+0PZ15zVs7QtCl3xUwabZFx7HM=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 9 May 2019 15:26:56 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 May 2019 15:26:26 +0200
Message-Id: <20190509132628.4671-7-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509132628.4671-1-tomek_n@o2.pl>
References: <20190509132628.4671-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 210aa794d53f932bde423f5a9bce5adc
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [AYOU]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_092737_132866_43736D49 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 6/8] mvebu: align device names to
 vendor_device format
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

Add vendors in device names and also rename few device names, for easier
identyfying potential firmware to flash. The vendor and device string is
mainly derived from model/compatipble string in dts from particular
device, but since not all devices are well described, some of the renames
follow marketing names.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 package/boot/uboot-mvebu/Makefile      |  2 +-
 target/linux/mvebu/image/Makefile      |  1 -
 target/linux/mvebu/image/cortex-a53.mk |  8 +--
 target/linux/mvebu/image/cortex-a72.mk | 12 ++--
 target/linux/mvebu/image/cortex-a9.mk  | 76 ++++++++++++++------------
 5 files changed, 52 insertions(+), 47 deletions(-)

diff --git a/package/boot/uboot-mvebu/Makefile b/package/boot/uboot-mvebu/Makefile
index 61547acb27..c24bfe3ff0 100644
--- a/package/boot/uboot-mvebu/Makefile
+++ b/package/boot/uboot-mvebu/Makefile
@@ -24,7 +24,7 @@ endef
 
 define U-Boot/clearfog
   NAME:=SolidRun ClearFog A1
-  BUILD_DEVICES:=armada-388-clearfog-base armada-388-clearfog-pro
+  BUILD_DEVICES:=solidrun_clearfog-base-a1 solidrun_clearfog-pro-a1
   BUILD_SUBTARGET:=cortexa9
   UBOOT_IMAGE:=u-boot-spl.kwb
 endef
diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index 9084b3e028..f432a37911 100644
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
index a102f52481..5a3e9b4d07 100644
--- a/target/linux/mvebu/image/cortex-a53.mk
+++ b/target/linux/mvebu/image/cortex-a53.mk
@@ -1,19 +1,19 @@
 ifeq ($(SUBTARGET),cortexa53)
 
-define Device/globalscale-espressobin
+define Device/globalscale_espressobin
   $(call Device/Default-arm64)
   DEVICE_TITLE := ESPRESSObin (Marvell Armada 3700 Community Board)
   DEVICE_DTS := armada-3720-espressobin
   SUPPORTED_DEVICES := globalscale,espressobin
 endef
-TARGET_DEVICES += globalscale-espressobin
+TARGET_DEVICES += globalscale_espressobin
 
-define Device/armada-3720-db
+define Device/marvell_armada-3720-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 3720 Development Board DB-88F3720-DDR3
   DEVICE_DTS := armada-3720-db
   SUPPORTED_DEVICES := marvell,armada-3720-db
 endef
-TARGET_DEVICES += armada-3720-db
+TARGET_DEVICES += marvell_armada-3720-db
 
 endif
diff --git a/target/linux/mvebu/image/cortex-a72.mk b/target/linux/mvebu/image/cortex-a72.mk
index 824f6b5d0f..b1069b1f0b 100644
--- a/target/linux/mvebu/image/cortex-a72.mk
+++ b/target/linux/mvebu/image/cortex-a72.mk
@@ -1,30 +1,30 @@
 ifeq ($(SUBTARGET),cortexa72)
 
-define Device/armada-macchiatobin
+define Device/marvell_macchiatobin
   $(call Device/Default-arm64)
   DEVICE_TITLE := MACCHIATObin (SolidRun Armada 8040 Community Board)
   DEVICE_PACKAGES += kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
   DEVICE_DTS := armada-8040-mcbin
   SUPPORTED_DEVICES := marvell,armada8040-mcbin
 endef
-TARGET_DEVICES += armada-macchiatobin
+TARGET_DEVICES += marvell_macchiatobin
 
-define Device/armada-8040-db
+define Device/marvell_armada8040-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 8040 DB board
   DEVICE_DTS := armada-8040-db
   IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   SUPPORTED_DEVICES := marvell,armada8040-db
 endef
-TARGET_DEVICES += armada-8040-db
+TARGET_DEVICES += marvell_armada8040-db
 
-define Device/armada-7040-db
+define Device/marvell_armada7040-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 7040 DB board
   DEVICE_DTS := armada-7040-db
   IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
   SUPPORTED_DEVICES := marvell,armada7040-db
 endef
-TARGET_DEVICES += armada-7040-db
+TARGET_DEVICES += marvell_armada7040-db
 
 endif
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index 252300b942..baaeb8ddb6 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -16,102 +16,108 @@ define Device/linksys
   KERNEL_SIZE := 6144k
 endef
 
-define Device/linksys-wrt1200ac
+define Device/linksys_wrt1200ac
   $(call Device/linksys,WRT1200AC (Caiman))
   DEVICE_DTS := armada-385-linksys-caiman
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
 endef
-TARGET_DEVICES += linksys-wrt1200ac
+TARGET_DEVICES += linksys_wrt1200ac
 
-define Device/linksys-wrt1900acv2
+define Device/linksys_wrt1900acv2
   $(call Device/linksys,WRT1900ACv2 (Cobra))
   DEVICE_DTS := armada-385-linksys-cobra
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
 endef
-TARGET_DEVICES += linksys-wrt1900acv2
+TARGET_DEVICES += linksys_wrt1900acv2
 
-define Device/linksys-wrt3200acm
+define Device/linksys_wrt3200acm
   $(call Device/linksys,WRT3200ACM (Rango))
   DEVICE_DTS := armada-385-linksys-rango
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
 endef
-TARGET_DEVICES += linksys-wrt3200acm
+TARGET_DEVICES += linksys_wrt3200acm
 
-define Device/linksys-wrt1900acs
+define Device/linksys_wrt1900acs
   $(call Device/linksys,WRT1900ACS (Shelby))
   DEVICE_DTS := armada-385-linksys-shelby
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
 endef
-TARGET_DEVICES += linksys-wrt1900acs
+TARGET_DEVICES += linksys_wrt1900acs
 
-define Device/linksys-wrt32x
+define Device/linksys_wrt32x
   $(call Device/linksys,WRT32X (Venom))
   DEVICE_DTS := armada-385-linksys-venom
   DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
   KERNEL_SIZE := 3072k
   KERNEL := kernel-bin | append-dtb
 endef
-TARGET_DEVICES += linksys-wrt32x
+TARGET_DEVICES += linksys_wrt32x
 
-define Device/linksys-wrt1900ac
+define Device/linksys_wrt1900ac
   $(call Device/linksys,WRT1900AC (Mamba))
   DEVICE_DTS := armada-xp-linksys-mamba
   DEVICE_PACKAGES += mwlwifi-firmware-88w8864
   KERNEL_SIZE := 3072k
 endef
-TARGET_DEVICES += linksys-wrt1900ac
+TARGET_DEVICES += linksys_wrt1900ac
 
-define Device/openblocks-ax3-4
+define Device/plathome_openblocks-ax3-4
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
+TARGET_DEVICES += plathome_openblocks-ax3-4
 
-define Device/armada-385-db-ap
+define Device/marvell_a385-db-ap
   $(Device/NAND-256K)
+  DEVICE_DTS := armada-385-db-ap
   IMAGES += factory.img
   KERNEL_SIZE := 8192k
   DEVICE_TITLE := Marvell Armada 385 DB AP (DB-88F6820-AP)
 endef
-TARGET_DEVICES += armada-385-db-ap
+TARGET_DEVICES += marvell_a385-db-ap
 
-define Device/armada-370-db
+define Device/marvell_a370-db
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada 370 DB (DB-88F6710-BP-DDR3)
+  DEVICE_DTS := armada-370-db
 endef
-TARGET_DEVICES += armada-370-db
+TARGET_DEVICES += marvell_a370-db
 
-define Device/armada-370-rd
+define Device/marvell_a370-rd
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada 370 RD (RD-88F6710-A1)
+  DEVICE_DTS := armada-370-rd
 endef
-TARGET_DEVICES += armada-370-rd
+TARGET_DEVICES += marvell_a370-rd
 
-define Device/armada-xp-db
+define Device/marvell_axp-db
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada XP DB (DB-78460-BP)
+  DEVICE_DTS := armada-xp-db
 endef
-TARGET_DEVICES += armada-xp-db
+TARGET_DEVICES += marvell_axp-db
 
-define Device/armada-xp-gp
+define Device/marvell_axp-gp
   $(Device/NAND-512K)
   DEVICE_TITLE := Marvell Armada XP GP (DB-MV784MP-GP)
+  DEVICE_DTS := armada-xp-gp
 endef
-TARGET_DEVICES += armada-xp-gp
+TARGET_DEVICES += marvell_axp-gp
 
-define Device/armada-388-rd
+define Device/marvell_a388-rd
   DEVICE_TITLE := Marvell Armada 388 RD (RD-88F6820-AP)
+  DEVICE_DTS := armada-388-rd
   IMAGES := firmware.bin
   IMAGE/firmware.bin := append-kernel | pad-to 256k | append-rootfs | pad-rootfs
 endef
-TARGET_DEVICES += armada-388-rd
+TARGET_DEVICES += marvell_a388-rd
 
-define Device/armada-388-clearfog-pro
+define Device/solidrun_clearfog-pro-a1
   KERNEL_INSTALL := 1
   KERNEL := kernel-bin
   DEVICE_TITLE := SolidRun ClearFog Pro
@@ -123,9 +129,9 @@ define Device/armada-388-clearfog-pro
   UBOOT := clearfog-u-boot-spl.kwb
   BOOT_SCRIPT := clearfog
 endef
-TARGET_DEVICES += armada-388-clearfog-pro
+TARGET_DEVICES += solidrun_clearfog-pro-a1
 
-define Device/armada-388-clearfog-base
+define Device/solidrun_clearfog-base-a1
   KERNEL_INSTALL := 1
   KERNEL := kernel-bin
   DEVICE_TITLE := SolidRun ClearFog Base
@@ -136,17 +142,17 @@ define Device/armada-388-clearfog-base
   UBOOT := clearfog-u-boot-spl.kwb
   BOOT_SCRIPT := clearfog
 endef
-TARGET_DEVICES += armada-388-clearfog-base
+TARGET_DEVICES += solidrun_clearfog-base-a1
 
-define Device/globalscale-mirabox
+define Device/globalscale_mirabox
   $(Device/NAND-512K)
   DEVICE_DTS := armada-370-mirabox
   SUPPORTED_DEVICES := mirabox
   DEVICE_TITLE := Globalscale Mirabox
 endef
-TARGET_DEVICES += globalscale-mirabox
+TARGET_DEVICES += globalscale_mirabox
 
-define Device/turris-omnia
+define Device/cznic_turris-omnia
   KERNEL_INSTALL := 1
   KERNEL := kernel-bin
   KERNEL_INITRAMFS := kernel-bin
@@ -161,6 +167,6 @@ define Device/turris-omnia
   IMAGE_NAME = $$(2)
   DEVICE_DTS := armada-385-turris-omnia
 endef
-TARGET_DEVICES += turris-omnia
+TARGET_DEVICES += cznic_turris-omnia
 
 endif
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
