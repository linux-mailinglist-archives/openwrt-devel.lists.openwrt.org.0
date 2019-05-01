Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7007710C50
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=abpaH+HHvN64BnQffFgpms0o6N/xhi6CAkLeyaxj5+c=; b=g/fF6py+OKNTI5afk/Rs1gt1q/
	TQFln9KIuJO3+w2EAkhg8kgBiCdMI3Qs9Z9NnK6TdBJXAh8ooV2jh3btMaLgb1EolV2qsDaoaSew5
	ftIPu+sQd4vFi+snIyXKyzHoSG//EQQvbwBO7wMnGldWN1K/iHVynE18+WxIDZeTxvGqcq820oLKC
	yrCssHcRStZsMJQ5RVUtQBkVw1aaE1Y0MW9yD3nNFTq6/b+1H9Y4/i7iwSEFMxPUFi9QaDklGeZk8
	8a55vJPrJtdgWry3Ke55h1yCIEAiFvjZrNMF3it0GatQ5HYOEg13wQLIdlEF6m0wwtUiOjLyh7b3Y
	RNLERWLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtGH-00087G-K0; Wed, 01 May 2019 17:43:17 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtFd-0007O5-VM
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:42:41 +0000
Received: (wp-smtpd smtp.tlen.pl 1382 invoked from network);
 1 May 2019 19:42:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556732554; bh=OZuR0VHOMJxtTRuIlDRtFiBXWEaqI+A3Bcq8ld2ntuw=;
 h=From:To:Subject;
 b=ahhnnU1ibcvrmhp8MmX7rbe9T8Mgk0hWb0NigE/LJfqqmPw4coT8rhQvhXjEaFOC/
 V5N4F9ZsSdRiPliJPDMSWC7HJhSqSuR9VF2eXwCrsMZcC7TvAkxrWdgSg2LFfif7yV
 eahYHMdb9rJCSvfQo1FGhZud8WYqpAKxxxy9IPxg=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 1 May 2019 19:42:34 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 19:42:19 +0200
Message-Id: <20190501174224.19089-4-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190501174224.19089-1-tomek_n@o2.pl>
References: <20190501174224.19089-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: be7713e4e4a939d53804b7a380a76e36
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [wYMk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_104238_167600_7671109B 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [OpenWrt-Devel] [PATCH 3/8] mvebu: image: introduce BOOT_SCRIPT
 variable
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

All of U-Boot scripts repeat the same pattern with only Device Tree blob
name changing for respective device. Therefore create generic scripts
which will be altered on demad by image build process, and create
BOOT_SCRIPT variable which can be added to device recipe and will allow
referencing the same script by many device recipes. This will allow to
slim down the ammount of files in buildroot tree and avoid needlessly
incrementing amount of boot scripts if new devices will be added.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 target/linux/mvebu/image/Makefile             | 10 ++++---
 .../image/armada-388-clearfog-base.bootscript | 27 -------------------
 .../image/armada-macchiatobin.bootscript      | 10 -------
 ...fog-pro.bootscript => clearfog.bootscript} |  6 +----
 target/linux/mvebu/image/cortex-a9.mk         |  4 ++-
 ...db.bootscript => generic-arm64.bootscript} |  2 +-
 .../image/globalscale-espressobin.bootscript  | 10 -------
 7 files changed, 12 insertions(+), 57 deletions(-)
 delete mode 100644 target/linux/mvebu/image/armada-388-clearfog-base.bootscript
 delete mode 100644 target/linux/mvebu/image/armada-macchiatobin.bootscript
 rename target/linux/mvebu/image/{armada-388-clearfog-pro.bootscript => clearfog.bootscript} (78%)
 rename target/linux/mvebu/image/{armada-3720-db.bootscript => generic-arm64.bootscript} (82%)
 delete mode 100644 target/linux/mvebu/image/globalscale-espressobin.bootscript

diff --git a/target/linux/mvebu/image/Makefile b/target/linux/mvebu/image/Makefile
index c0bb02d7c0..95885d8ab6 100644
--- a/target/linux/mvebu/image/Makefile
+++ b/target/linux/mvebu/image/Makefile
@@ -17,8 +17,10 @@ SIGNATURE:=$(shell printf "%.8s" $(SOURCE_DATE_EPOCH))
 
 define Build/boot-scr
 	rm -f $@-boot.scr
-	sed -e 's#@ROOT@#$(SIGNATURE)#g' \
-		$(DEVICE_NAME).bootscript > $@-new.bootscript
+	sed \
+		-e 's#@ROOT@#$(SIGNATURE)#g' \
+		-e 's#@DTB@#$(firstword $(DEVICE_DTS))#g' \
+		$(BOOT_SCRIPT).bootscript > $@-new.bootscript
 	mkimage -A arm -O linux -T script -C none -a 0 -e 0 -d $@-new.bootscript $@-boot.scr
 endef
 
@@ -80,10 +82,12 @@ define Device/Default
   KERNEL := kernel-bin | append-dtb | uImage none
   SUPPORTED_DEVICES = $$(DEVICE_DTS)
   UBOOT :=
+  BOOT_SCRIPT :=
 endef
-DEVICE_VARS += UBOOT
+DEVICE_VARS += BOOT_SCRIPT UBOOT
 
 define Device/Default-arm64
+  BOOT_SCRIPT := generic-arm64
   DTS_DIR := $(DTS_DIR)/marvell
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
diff --git a/target/linux/mvebu/image/armada-388-clearfog-base.bootscript b/target/linux/mvebu/image/armada-388-clearfog-base.bootscript
deleted file mode 100644
index 1755203dc5..0000000000
--- a/target/linux/mvebu/image/armada-388-clearfog-base.bootscript
+++ /dev/null
@@ -1,27 +0,0 @@
-# Standard Boot-Script
-# use only well-known variable names provided by U-Boot Distro boot
-# This script assumes that there is a boot partition,
-# and that the root partition is always the next one.
-
-# Override DeviceTree for Clearfog Base
-# removed once U-Boot is able to detect the board variant.
-setenv fdtfile armada-388-clearfog-base.dtb
-
-# rootfs is always on the next partition
-setexpr openwrt_rootpart ${distro_bootpart} + 1
-
-# figure out partition uuid to pass to the kernel as root=
-part uuid ${devtype} ${devnum}:${openwrt_rootpart} uuid
-
-# generate bootargs (rootfs)
-setenv bootargs ${bootargs} root=PARTUUID=${uuid} rootfstype=auto rootwait
-
-# add console= option to bootargs, if any
-if test -n "${console}"; then
-	setenv bootargs ${bootargs} console=${console}
-fi
-
-echo "Booting Linux with ${bootargs}"
-load ${devtype} ${devnum}:${distro_bootpart} ${fdt_addr_r} ${fdtfile}
-load ${devtype} ${devnum}:${distro_bootpart} ${kernel_addr_r} zImage
-bootz ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/target/linux/mvebu/image/armada-macchiatobin.bootscript b/target/linux/mvebu/image/armada-macchiatobin.bootscript
deleted file mode 100644
index ae9fdca92d..0000000000
--- a/target/linux/mvebu/image/armada-macchiatobin.bootscript
+++ /dev/null
@@ -1,10 +0,0 @@
-setenv bootargs "root=PARTUUID=@ROOT@-02 rw rootwait"
-
-if test -n "${console}"; then
-	setenv bootargs "${bootargs} ${console}"
-fi
-
-load mmc 1:1 ${fdt_addr} armada-8040-mcbin.dtb
-load mmc 1:1 ${kernel_addr} Image
-
-booti ${kernel_addr} - ${fdt_addr}
diff --git a/target/linux/mvebu/image/armada-388-clearfog-pro.bootscript b/target/linux/mvebu/image/clearfog.bootscript
similarity index 78%
rename from target/linux/mvebu/image/armada-388-clearfog-pro.bootscript
rename to target/linux/mvebu/image/clearfog.bootscript
index 99aa145858..20ba76f0da 100644
--- a/target/linux/mvebu/image/armada-388-clearfog-pro.bootscript
+++ b/target/linux/mvebu/image/clearfog.bootscript
@@ -3,10 +3,6 @@
 # This script assumes that there is a boot partition,
 # and that the root partition is always the next one.
 
-# Override DeviceTree for Clearfog Pro
-# removed once U-Boot has been updated to the new name.
-setenv fdtfile armada-388-clearfog-pro.dtb
-
 # rootfs is always on the next partition
 setexpr openwrt_rootpart ${distro_bootpart} + 1
 
@@ -22,6 +18,6 @@ if test -n "${console}"; then
 fi
 
 echo "Booting Linux with ${bootargs}"
-load ${devtype} ${devnum}:${distro_bootpart} ${fdt_addr_r} ${fdtfile}
+load ${devtype} ${devnum}:${distro_bootpart} ${fdt_addr_r} @DTB@.dtb
 load ${devtype} ${devnum}:${distro_bootpart} ${kernel_addr_r} zImage
 bootz ${kernel_addr_r} - ${fdt_addr_r}
diff --git a/target/linux/mvebu/image/cortex-a9.mk b/target/linux/mvebu/image/cortex-a9.mk
index 66cf54f9c5..8e9ef41fb6 100644
--- a/target/linux/mvebu/image/cortex-a9.mk
+++ b/target/linux/mvebu/image/cortex-a9.mk
@@ -132,6 +132,7 @@ define Device/armada-388-clearfog-pro
   DEVICE_DTS := armada-388-clearfog-pro armada-388-clearfog-base
   SUPPORTED_DEVICES := armada-388-clearfog-pro armada-388-clearfog
   UBOOT := clearfog-u-boot-spl.kwb
+  BOOT_SCRIPT := clearfog
 endef
 TARGET_DEVICES += armada-388-clearfog-pro
 
@@ -142,8 +143,9 @@ define Device/armada-388-clearfog-base
   DEVICE_PACKAGES := mkf2fs e2fsprogs partx-utils
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := boot-scr | boot-img-ext4 | sdcard-img-ext4 | gzip | append-metadata
-  DEVICE_DTS := armada-388-clearfog-pro armada-388-clearfog-base
+  DEVICE_DTS := armada-388-clearfog-base armada-388-clearfog-pro
   UBOOT := clearfog-u-boot-spl.kwb
+  BOOT_SCRIPT := clearfog
 endef
 TARGET_DEVICES += armada-388-clearfog-base
 
diff --git a/target/linux/mvebu/image/armada-3720-db.bootscript b/target/linux/mvebu/image/generic-arm64.bootscript
similarity index 82%
rename from target/linux/mvebu/image/armada-3720-db.bootscript
rename to target/linux/mvebu/image/generic-arm64.bootscript
index 65e39a1af5..f395590f84 100644
--- a/target/linux/mvebu/image/armada-3720-db.bootscript
+++ b/target/linux/mvebu/image/generic-arm64.bootscript
@@ -4,7 +4,7 @@ if test -n "${console}"; then
 	setenv bootargs "${bootargs} ${console}"
 fi
 
-load mmc 0:1 ${fdt_addr} armada-3720-db.dtb
+load mmc 0:1 ${fdt_addr} @DTB@.dtb
 load mmc 0:1 ${kernel_addr} Image
 
 booti ${kernel_addr} - ${fdt_addr}
diff --git a/target/linux/mvebu/image/globalscale-espressobin.bootscript b/target/linux/mvebu/image/globalscale-espressobin.bootscript
deleted file mode 100644
index 0d03ac8513..0000000000
--- a/target/linux/mvebu/image/globalscale-espressobin.bootscript
+++ /dev/null
@@ -1,10 +0,0 @@
-setenv bootargs "root=PARTUUID=@ROOT@-02 rw rootwait"
-
-if test -n "${console}"; then
-	setenv bootargs "${bootargs} ${console}"
-fi
-
-load mmc 0:1 ${fdt_addr} armada-3720-espressobin.dtb
-load mmc 0:1 ${kernel_addr} Image
-
-booti ${kernel_addr} - ${fdt_addr}
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
