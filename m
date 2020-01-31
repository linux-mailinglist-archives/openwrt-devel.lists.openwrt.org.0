Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0514F14F00A
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:47:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gYG1rIjK0KxeKuJKBLRVAExgwvFOfyZd4Zy0ejd7330=; b=eywvHOc56+M+naK4LVOparSuar
	7RaFv2yG22tmh7ytKamT+tHb+urTnEVbTOn5QykXNPDG3+vZYfzY8hxMnc3JGq60Ypm4HHkVFrJab
	iqDnQHjRwdbF4BE/98nCqT+LIvFHJt1sVZs4AMp5nGckkGzaU7Of6dtKZ5decpexepZK7RalHbbh6
	f85h1kuI5Xuofs0USFjClKb5AdRPUlHo08GddnpBAtcGf1TcPw+kXLimHLD0BndJ/Duqh8rnMlsZU
	rYpjck2Wdw31EATODfgumx6Z/pzoX83pQwk12PSO75Gnq1PkR7+XGG0yihcbryLkw+92RsCDaie1N
	4oolK0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYW2-0006gd-Kc; Fri, 31 Jan 2020 15:47:30 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVQ-0006Cr-TG
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:46:55 +0000
Received: (wp-smtpd smtp.tlen.pl 40786 invoked from network);
 31 Jan 2020 16:46:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485606; bh=oNpWkUBt8VOJPBb0ia+pWeoOL1SgFYv9KPhxdIfx38c=;
 h=From:To:Subject;
 b=EpatSX1K0x/7ssc8nqK3m8CUEJeyzHfpfR0gzEYyxUPzWH0xjXRMwbyafvCGyI+GV
 0EYnuqn9HasGi8NLxYOxOADUMHvYLNoU7oJw8UaqjsjEvADyNRTWXNQH6wvPnE+gIf
 rLGx70u+uA1mZDO3kwR8YUPiYKn4TTgrrLHepswE=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:46:46 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:13 +0100
Message-Id: <20200131154620.25773-2-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131154620.25773-1-tomek_n@o2.pl>
References: <20200131154620.25773-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 05e251871aa4f45889339fdbd5d81b7c
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [IdMS]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074653_160471_AEE2D490 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/8] mvebu: image: sort devices
 alphabetically
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

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/cortex-a72.mk |  30 ++--
 target/linux/mvebu/image/cortex-a9.mk  | 198 ++++++++++++-------------
 2 files changed, 114 insertions(+), 114 deletions(-)

diff --git a/target/linux/mvebu/image/cortex-a72.mk b/target/linux/mvebu/image/cortex-a72.mk
index 6abee2d8b9..a7a4d7c2e7 100644
--- a/target/linux/mvebu/image/cortex-a72.mk
+++ b/target/linux/mvebu/image/cortex-a72.mk
@@ -1,14 +1,11 @@
-define Device/marvell_macchiatobin
+define Device/marvell_armada7040-db
   $(call Device/Default-arm64)
-  DEVICE_VENDOR := SolidRun
-  DEVICE_MODEL := MACCHIATObin
-  DEVICE_ALT0_VENDOR := SolidRun
-  DEVICE_ALT0_MODEL := Armada 8040 Community Board
-  DEVICE_PACKAGES += kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
-  DEVICE_DTS := armada-8040-mcbin
-  SUPPORTED_DEVICES := marvell,armada8040-mcbin
+  DEVICE_VENDOR := Marvell
+  DEVICE_MODEL := Armada 7040 Development Board
+  DEVICE_DTS := armada-7040-db
+  IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
 endef
-TARGET_DEVICES += marvell_macchiatobin
+TARGET_DEVICES += marvell_armada7040-db
 
 define Device/marvell_armada8040-db
   $(call Device/Default-arm64)
@@ -19,11 +16,14 @@ define Device/marvell_armada8040-db
 endef
 TARGET_DEVICES += marvell_armada8040-db
 
-define Device/marvell_armada7040-db
+define Device/marvell_macchiatobin
   $(call Device/Default-arm64)
-  DEVICE_VENDOR := Marvell
-  DEVICE_MODEL := Armada 7040 Development Board
-  DEVICE_DTS := armada-7040-db
-  IMAGE/sdcard.img.gz := boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
+  DEVICE_VENDOR := SolidRun
+  DEVICE_MODEL := MACCHIATObin
+  DEVICE_ALT0_VENDOR := SolidRun
+  DEVICE_ALT0_MODEL := Armada 8040 Community Board
+  DEVICE_PACKAGES += kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
+  DEVICE_DTS := armada-8040-mcbin
+  SUPPORTED_DEVICES := marvell,armada8040-mcbin
 endef
-TARGET_DEVICES += marvell_armada7040-db
+TARGET_DEVICES += marvell_macchiatobin
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index 79253049c7..be7ec4313d 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -6,6 +6,34 @@
 # See /LICENSE for more information.
 #
 
+define Device/cznic_turris-omnia
+  DEVICE_VENDOR := CZ.NIC
+  DEVICE_MODEL := Turris Omnia
+  KERNEL_INSTALL := 1
+  KERNEL := kernel-bin
+  KERNEL_INITRAMFS := kernel-bin
+  DEVICE_PACKAGES :=  \
+    mkf2fs e2fsprogs kmod-fs-vfat kmod-nls-cp437 kmod-nls-iso8859-1 \
+    wpad-basic kmod-ath9k kmod-ath10k-ct ath10k-firmware-qca988x-ct \
+    partx-utils kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
+  IMAGES := $$(IMAGE_PREFIX)-sysupgrade.img.gz omnia-medkit-$$(IMAGE_PREFIX)-initramfs.tar.gz
+  IMAGE/$$(IMAGE_PREFIX)-sysupgrade.img.gz := boot-img | sdcard-img | gzip | append-metadata
+  IMAGE/omnia-medkit-$$(IMAGE_PREFIX)-initramfs.tar.gz := omnia-medkit-initramfs | gzip
+  IMAGE_NAME = $$(2)
+  SOC := armada-385
+  SUPPORTED_DEVICES += armada-385-turris-omnia
+endef
+TARGET_DEVICES += cznic_turris-omnia
+
+define Device/globalscale_mirabox
+  $(Device/NAND-512K)
+  DEVICE_VENDOR := Globalscale
+  DEVICE_MODEL := Mirabox
+  SOC := armada-370
+  SUPPORTED_DEVICES += mirabox
+endef
+TARGET_DEVICES += globalscale_mirabox
+
 define Device/linksys
   $(Device/NAND-128K)
   DEVICE_VENDOR := Linksys
@@ -25,29 +53,6 @@ define Device/linksys_wrt1200ac
 endef
 TARGET_DEVICES += linksys_wrt1200ac
 
-define Device/linksys_wrt1900acv2
-  $(call Device/linksys)
-  DEVICE_MODEL := WRT1900AC
-  DEVICE_VARIANT := v2
-  DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Cobra
-  DEVICE_DTS := armada-385-linksys-cobra
-  DEVICE_PACKAGES += mwlwifi-firmware-88w8864
-  SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
-endef
-TARGET_DEVICES += linksys_wrt1900acv2
-
-define Device/linksys_wrt3200acm
-  $(call Device/linksys)
-  DEVICE_MODEL := WRT3200ACM
-  DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Rango
-  DEVICE_DTS := armada-385-linksys-rango
-  DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
-  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
-endef
-TARGET_DEVICES += linksys_wrt3200acm
-
 define Device/linksys_wrt1900acs
   $(call Device/linksys)
   DEVICE_MODEL := WRT1900ACS
@@ -63,18 +68,17 @@ define Device/linksys_wrt1900acs
 endef
 TARGET_DEVICES += linksys_wrt1900acs
 
-define Device/linksys_wrt32x
+define Device/linksys_wrt1900acv2
   $(call Device/linksys)
-  DEVICE_MODEL := WRT32X
+  DEVICE_MODEL := WRT1900AC
+  DEVICE_VARIANT := v2
   DEVICE_ALT0_VENDOR := Linksys
-  DEVICE_ALT0_MODEL := Venom
-  DEVICE_DTS := armada-385-linksys-venom
-  DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
-  KERNEL_SIZE := 3072k
-  KERNEL := kernel-bin | append-dtb
-  SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
+  DEVICE_ALT0_MODEL := Cobra
+  DEVICE_DTS := armada-385-linksys-cobra
+  DEVICE_PACKAGES += mwlwifi-firmware-88w8864
+  SUPPORTED_DEVICES := armada-385-linksys-cobra linksys,cobra
 endef
-TARGET_DEVICES += linksys_wrt32x
+TARGET_DEVICES += linksys_wrt1900acv2
 
 define Device/linksys_wrt1900ac
   $(call Device/linksys)
@@ -89,29 +93,29 @@ define Device/linksys_wrt1900ac
 endef
 TARGET_DEVICES += linksys_wrt1900ac
 
-define Device/plathome_openblocks-ax3-4
-  DEVICE_VENDOR := Plat'Home
-  DEVICE_MODEL := OpenBlocks AX3
-  DEVICE_VARIANT := 4 ports
-  SOC := armada-xp
-  SUPPORTED_DEVICES += openblocks-ax3-4
-  BLOCKSIZE := 128k
-  PAGESIZE := 1
-  IMAGES += factory.img
-  IMAGE/factory.img := append-kernel | pad-to $$(BLOCKSIZE) | append-ubi
+define Device/linksys_wrt3200acm
+  $(call Device/linksys)
+  DEVICE_MODEL := WRT3200ACM
+  DEVICE_ALT0_VENDOR := Linksys
+  DEVICE_ALT0_MODEL := Rango
+  DEVICE_DTS := armada-385-linksys-rango
+  DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
+  SUPPORTED_DEVICES := armada-385-linksys-rango linksys,rango
 endef
-TARGET_DEVICES += plathome_openblocks-ax3-4
+TARGET_DEVICES += linksys_wrt3200acm
 
-define Device/marvell_a385-db-ap
-  $(Device/NAND-256K)
-  DEVICE_VENDOR := Marvell
-  DEVICE_MODEL := Armada 385 Development Board AP (DB-88F6820-AP)
-  DEVICE_DTS := armada-385-db-ap
-  IMAGES += factory.img
-  KERNEL_SIZE := 8192k
-  SUPPORTED_DEVICES += armada-385-db-ap
+define Device/linksys_wrt32x
+  $(call Device/linksys)
+  DEVICE_MODEL := WRT32X
+  DEVICE_ALT0_VENDOR := Linksys
+  DEVICE_ALT0_MODEL := Venom
+  DEVICE_DTS := armada-385-linksys-venom
+  DEVICE_PACKAGES += kmod-btmrvl kmod-mwifiex-sdio mwlwifi-firmware-88w8964
+  KERNEL_SIZE := 3072k
+  KERNEL := kernel-bin | append-dtb
+  SUPPORTED_DEVICES := armada-385-linksys-venom linksys,venom
 endef
-TARGET_DEVICES += marvell_a385-db-ap
+TARGET_DEVICES += linksys_wrt32x
 
 define Device/marvell_a370-db
   $(Device/NAND-512K)
@@ -131,6 +135,27 @@ define Device/marvell_a370-rd
 endef
 TARGET_DEVICES += marvell_a370-rd
 
+define Device/marvell_a385-db-ap
+  $(Device/NAND-256K)
+  DEVICE_VENDOR := Marvell
+  DEVICE_MODEL := Armada 385 Development Board AP (DB-88F6820-AP)
+  DEVICE_DTS := armada-385-db-ap
+  IMAGES += factory.img
+  KERNEL_SIZE := 8192k
+  SUPPORTED_DEVICES += armada-385-db-ap
+endef
+TARGET_DEVICES += marvell_a385-db-ap
+
+define Device/marvell_a388-rd
+  DEVICE_VENDOR := Marvell
+  DEVICE_MODEL := Armada 388 RD (RD-88F6820-AP)
+  DEVICE_DTS := armada-388-rd
+  IMAGES := firmware.bin
+  IMAGE/firmware.bin := append-kernel | pad-to 256k | append-rootfs | pad-rootfs
+  SUPPORTED_DEVICES := armada-388-rd marvell,a385-rd
+endef
+TARGET_DEVICES += marvell_a388-rd
+
 define Device/marvell_axp-db
   $(Device/NAND-512K)
   DEVICE_VENDOR := Marvell
@@ -149,30 +174,18 @@ define Device/marvell_axp-gp
 endef
 TARGET_DEVICES += marvell_axp-gp
 
-define Device/marvell_a388-rd
-  DEVICE_VENDOR := Marvell
-  DEVICE_MODEL := Armada 388 RD (RD-88F6820-AP)
-  DEVICE_DTS := armada-388-rd
-  IMAGES := firmware.bin
-  IMAGE/firmware.bin := append-kernel | pad-to 256k | append-rootfs | pad-rootfs
-  SUPPORTED_DEVICES := armada-388-rd marvell,a385-rd
-endef
-TARGET_DEVICES += marvell_a388-rd
-
-define Device/solidrun_clearfog-pro-a1
-  DEVICE_VENDOR := SolidRun
-  DEVICE_MODEL := ClearFog Pro
-  KERNEL_INSTALL := 1
-  KERNEL := kernel-bin
-  DEVICE_PACKAGES := mkf2fs e2fsprogs partx-utils swconfig
-  IMAGES := sdcard.img.gz
-  IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
-  DEVICE_DTS := armada-388-clearfog-pro armada-388-clearfog-base
-  SUPPORTED_DEVICES += armada-388-clearfog armada-388-clearfog-pro
-  UBOOT := clearfog-u-boot-spl.kwb
-  BOOT_SCRIPT := clearfog
+define Device/plathome_openblocks-ax3-4
+  DEVICE_VENDOR := Plat'Home
+  DEVICE_MODEL := OpenBlocks AX3
+  DEVICE_VARIANT := 4 ports
+  SOC := armada-xp
+  SUPPORTED_DEVICES += openblocks-ax3-4
+  BLOCKSIZE := 128k
+  PAGESIZE := 1
+  IMAGES += factory.img
+  IMAGE/factory.img := append-kernel | pad-to $$(BLOCKSIZE) | append-ubi
 endef
-TARGET_DEVICES += solidrun_clearfog-pro-a1
+TARGET_DEVICES += plathome_openblocks-ax3-4
 
 define Device/solidrun_clearfog-base-a1
   DEVICE_VENDOR := SolidRun
@@ -189,30 +202,17 @@ define Device/solidrun_clearfog-base-a1
 endef
 TARGET_DEVICES += solidrun_clearfog-base-a1
 
-define Device/globalscale_mirabox
-  $(Device/NAND-512K)
-  DEVICE_VENDOR := Globalscale
-  DEVICE_MODEL := Mirabox
-  SOC := armada-370
-  SUPPORTED_DEVICES += mirabox
-endef
-TARGET_DEVICES += globalscale_mirabox
-
-define Device/cznic_turris-omnia
-  DEVICE_VENDOR := CZ.NIC
-  DEVICE_MODEL := Turris Omnia
+define Device/solidrun_clearfog-pro-a1
+  DEVICE_VENDOR := SolidRun
+  DEVICE_MODEL := ClearFog Pro
   KERNEL_INSTALL := 1
   KERNEL := kernel-bin
-  KERNEL_INITRAMFS := kernel-bin
-  DEVICE_PACKAGES :=  \
-    mkf2fs e2fsprogs kmod-fs-vfat kmod-nls-cp437 kmod-nls-iso8859-1 \
-    wpad-basic kmod-ath9k kmod-ath10k-ct ath10k-firmware-qca988x-ct \
-    partx-utils kmod-i2c-core kmod-i2c-mux kmod-i2c-mux-pca954x
-  IMAGES := $$(IMAGE_PREFIX)-sysupgrade.img.gz omnia-medkit-$$(IMAGE_PREFIX)-initramfs.tar.gz
-  IMAGE/$$(IMAGE_PREFIX)-sysupgrade.img.gz := boot-img | sdcard-img | gzip | append-metadata
-  IMAGE/omnia-medkit-$$(IMAGE_PREFIX)-initramfs.tar.gz := omnia-medkit-initramfs | gzip
-  IMAGE_NAME = $$(2)
-  SOC := armada-385
-  SUPPORTED_DEVICES += armada-385-turris-omnia
+  DEVICE_PACKAGES := mkf2fs e2fsprogs partx-utils swconfig
+  IMAGES := sdcard.img.gz
+  IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
+  DEVICE_DTS := armada-388-clearfog-pro armada-388-clearfog-base
+  SUPPORTED_DEVICES += armada-388-clearfog armada-388-clearfog-pro
+  UBOOT := clearfog-u-boot-spl.kwb
+  BOOT_SCRIPT := clearfog
 endef
-TARGET_DEVICES += cznic_turris-omnia
+TARGET_DEVICES += solidrun_clearfog-pro-a1
-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
