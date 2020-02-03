Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1C615041B
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 11:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dsUNfFficjGUDKXhbeMrIAJvru+1BzP1CWv0Et5/9OI=; b=FTSPrVkDjMhfTRz/feMhKkPvMo
	iqhW498SEFOm2YeQ7wB2C8hIJnUCPSBqkfuLmPopqInSOM/qLXObGs4gJOGO/TPGcsd5VgpGxolBV
	7JK0UQu2qeQLRb7mucz75OupXHc1PYDTunkFp7jTO5U4FondqOEHIJvPJTdavl4PpR3oL5vutICub
	ulC0FMelaNdLNWqQM8Rfq8Bqt+5L1MhZKikG2R4wSpZ6hFKWPM2aYw77bk+w0nDy3AY9N3oGGolF5
	Hwb/2e9YzZ8WfMxiPT4aiFjqxnZJ4U3jnQoCdJcRoDcxzO49O2qOvJ0sXy6Ay6vLQz0RJt0xMXSxd
	vL5G1w3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYrM-0002JX-KO; Mon, 03 Feb 2020 10:21:40 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYr3-000279-Tq
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 10:21:23 +0000
Received: from buildfff.adridolf.com ([188.195.207.249]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MHX3X-1il2Kc08fZ-00Daql for <openwrt-devel@lists.openwrt.org>; Mon, 03
 Feb 2020 11:21:19 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  3 Feb 2020 11:19:16 +0100
Message-Id: <20200203101916.3191-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200203101916.3191-1-freifunk@adrianschmutzler.de>
References: <20200203101916.3191-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:k9Ff+4D2pPzumNqWqXYTSUAafWroSCK+k55AXVzgXk3IM5H7t1g
 3khj5SJDLKU8Y4lJ4WrvS6sF6UKrao9vd4k2EvU2xZLfWyEFutluj3JwpFpO07R3X1KlxuG
 Zguzb74qxEGNAhCPKKngKH8g3nuBcrk+7+8D1GTW/sgmOsgVtPqPX8PU4nUaUICmyAkz1R3
 /P6xOfvPAr+7KjhhETt8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hMQdKVnznaU=:pgFPr3TF2XrzdE6TXd7C9T
 WS5H0tGMzV+JdUq+5d3En2MTcnx52Zt25crhiqf6or9SUbR90q3SIfUX/sZbbxQGcG5Xy6XFv
 YuTIPA48v5paBj4WceUhN2CRuCcse6wmRhXoJg8cGrXZRzQLn/guTI0duCM8pJ+sott3sG1j8
 fBOFDcBdDRJjVujpp5ZOovtcK7+KQOuYqrb/uIHf/BLwteaKa1ypGVuGx1l8skLxYQ3Nf5oux
 AG6wJ2LUWpzXvqZg2sVwNJPGBtURobNE/bxC9/pmsMAwSvDFXyTcdOqS7sBl8aBO6ED1UbV1i
 EM0CkqgHvlauhmy62MrLIxH1gyNDzWyetBdJbLMBtLpEC6rujLSxKrp+02IHsdWwTQiZ7K7x6
 94yCVpHH/OGfxJNlNy6H2HlCX+zcsgnmfkByOIVVV0DxPR0ArKpZFdzAHT0WsQHpy4NyMkHya
 CsALIpdeswQT1lCXNog6vR/R36P1JibEhSG+mz6STKEj4uU9/pEl9iScdQFAgNxQxHIYVvfKt
 GutFvfigYWEVZGWcb5n+4e7rpD3PEaEHymCR0KzpLurrnIQhU3J2fYyEVbHoFjgdenFu3uR/O
 ddwdxMc3qZ25UozP7ORBipGu0DUk7M4nHv7LhMvrserBii1tvLpleYfdeQZAyPLInK9p49qLS
 7m4L2g5nLx3BseMeR3HdhTfSpYbWhxri/eeLNvmBIw4HTdufdBZdSE5rSQHegk2RXDITOoJBL
 C0dNJMgRHBVN2XlW0+p3fSaPiOkiVxFQUhjmstpQSCn0LdArB2RSoRLYR5AZdQeJb98Vzv2p1
 yeQszkIKKhv2jjM0L+ezd/BqxGVsptnE2KFPux1ZOz2NmHY0ifNHH5of75EcTEL4Jl99xvV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_022122_254146_EE604487 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] ath79: introduce KERNEL_DTB_LZMA
 variable for common build sequence
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

This introduces a variable KERNEL_DTB_LZMA to replace the frequently
used sequence "kernel-bin | append-dtb | lzma", similar to the
same variable in ramips target.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ath79/image/Makefile           |  5 +++--
 target/linux/ath79/image/common-mikrotik.mk |  4 ++--
 target/linux/ath79/image/common-tp-link.mk  | 18 ++++++++----------
 target/linux/ath79/image/generic-tp-link.mk |  3 +--
 target/linux/ath79/image/generic-ubnt.mk    |  2 +-
 target/linux/ath79/image/generic.mk         | 10 +++++-----
 6 files changed, 20 insertions(+), 22 deletions(-)

diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image/Makefile
index a28658ec0b..1795f3d558 100644
--- a/target/linux/ath79/image/Makefile
+++ b/target/linux/ath79/image/Makefile
@@ -52,6 +52,7 @@ define Build/relocate-kernel
 	rm -rf $@.relocate
 endef
 
+KERNEL_DTB_LZMA := kernel-bin | append-dtb | lzma
 
 define Device/Default
   DEVICE_DTS_DIR := ../dts
@@ -59,8 +60,8 @@ define Device/Default
   PROFILES = Default
   MTDPARTS :=
   BLOCKSIZE := 64k
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | uImage lzma
+  KERNEL := $(KERNEL_DTB_LZMA) | uImage lzma
+  KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | uImage lzma
   COMPILE :=
   SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
   IMAGES := sysupgrade.bin
diff --git a/target/linux/ath79/image/common-mikrotik.mk b/target/linux/ath79/image/common-mikrotik.mk
index 292237c76a..de7db6aa36 100644
--- a/target/linux/ath79/image/common-mikrotik.mk
+++ b/target/linux/ath79/image/common-mikrotik.mk
@@ -2,6 +2,6 @@ define Device/mikrotik
 	DEVICE_VENDOR := MikroTik
 	DEVICE_PACKAGES := rbextract rbcfg
 	LOADER_TYPE := elf
-	KERNEL := kernel-bin | append-dtb | lzma | loader-kernel
-	KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | loader-kernel
+	KERNEL := $(KERNEL_DTB_LZMA) | loader-kernel
+	KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | loader-kernel
 endef
diff --git a/target/linux/ath79/image/common-tp-link.mk b/target/linux/ath79/image/common-tp-link.mk
index cfc574e4fb..5df99f0eb9 100644
--- a/target/linux/ath79/image/common-tp-link.mk
+++ b/target/linux/ath79/image/common-tp-link.mk
@@ -14,8 +14,8 @@ define Device/tplink-v1
   TPLINK_HWREV := 0x1
   TPLINK_HEADER_VERSION := 1
   LOADER_TYPE := gz
-  KERNEL := kernel-bin | append-dtb | lzma
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | tplink-v1-header
+  KERNEL := $(KERNEL_DTB_LZMA)
+  KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | tplink-v1-header
   IMAGES += factory.bin
   IMAGE/sysupgrade.bin := tplink-v1-image sysupgrade | append-metadata
   IMAGE/factory.bin := tplink-v1-image factory
@@ -26,8 +26,8 @@ define Device/tplink-v2
   TPLINK_HWREV := 0x1
   TPLINK_HWREVADD := 0x0
   TPLINK_HVERSION := 3
-  KERNEL := kernel-bin | append-dtb | lzma
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | tplink-v2-header
+  KERNEL := $(KERNEL_DTB_LZMA)
+  KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | tplink-v2-header
   IMAGE/sysupgrade.bin := tplink-v2-image -s | append-metadata | \
 	check-size $$$$(IMAGE_SIZE)
 endef
@@ -37,8 +37,7 @@ define Device/tplink-nolzma
   LOADER_FLASH_OFFS := 0x22000
   COMPILE := loader-$(1).gz
   COMPILE/loader-$(1).gz := loader-okli-compile
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 | \
-	loader-okli $(1) 7680
+  KERNEL := $(KERNEL_DTB_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli $(1) 7680
   KERNEL_INITRAMFS := kernel-bin | append-dtb | gzip | tplink-v1-header
 endef
 
@@ -74,7 +73,7 @@ endef
 
 define Device/tplink-safeloader
   $(Device/tplink-v1)
-  KERNEL := kernel-bin | append-dtb | lzma | tplink-v1-header -O
+  KERNEL := $(KERNEL_DTB_LZMA) | tplink-v1-header -O
   IMAGE/sysupgrade.bin := append-rootfs | tplink-safeloader sysupgrade | \
     append-metadata | check-size $$$$(IMAGE_SIZE)
   IMAGE/factory.bin := append-rootfs | tplink-safeloader factory
@@ -82,7 +81,7 @@ endef
 
 define Device/tplink-safeloader-uimage
   $(Device/tplink-safeloader)
-  KERNEL := kernel-bin | append-dtb | lzma | uImageArcher lzma
+  KERNEL := $(KERNEL_DTB_LZMA) | uImageArcher lzma
 endef
 
 define Device/tplink-safeloader-okli
@@ -91,6 +90,5 @@ define Device/tplink-safeloader-okli
   LOADER_FLASH_OFFS := 0x43000
   COMPILE := loader-$(1).elf
   COMPILE/loader-$(1).elf := loader-okli-compile
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49 | \
-	loader-okli $(1) 12288
+  KERNEL := $(KERNEL_DTB_LZMA) | uImage lzma -M 0x4f4b4c49 | loader-okli $(1) 12288
 endef
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 2a2384762b..458917547f 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -201,8 +201,7 @@ define Device/tplink_archer-d50-v1
   TPLINK_HWID := 0xC1200001
   TPLINK_HWREV := 0x00000046
   TPLINK_FLASHLAYOUT := 8Mqca
-  KERNEL_INITRAMFS := kernel-bin | append-dtb | lzma | \
-	tplink-v2-header -s -V "ver. 1.0"
+  KERNEL_INITRAMFS := $(KERNEL_DTB_LZMA) | tplink-v2-header -s -V "ver. 1.0"
 endef
 TARGET_DEVICES += tplink_archer-d50-v1
 
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index ffae83eda5..9fb3b9a179 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -220,7 +220,7 @@ define Device/ubnt_routerstation_common
   IMAGES := factory.bin
   IMAGE/factory.bin := append-rootfs | pad-rootfs | mkubntimage | \
 	check-size $$$$(IMAGE_SIZE)
-  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
+  KERNEL := $(KERNEL_DTB_LZMA) | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
 endef
 
diff --git a/target/linux/ath79/image/generic.mk b/target/linux/ath79/image/generic.mk
index 1bc7b2d68e..10c5a07739 100644
--- a/target/linux/ath79/image/generic.mk
+++ b/target/linux/ath79/image/generic.mk
@@ -105,7 +105,7 @@ define Device/adtran_bsap1880
   SOC := ar7161
   DEVICE_VENDOR := Adtran/Bluesocket
   DEVICE_PACKAGES += -swconfig -uboot-envtools fconfig
-  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
+  KERNEL := $(KERNEL_DTB_LZMA) | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
   IMAGE_SIZE := 11200k
   IMAGES += kernel.bin rootfs.bin
@@ -151,7 +151,7 @@ define Device/avm_fritz300e
   SOC := ar7242
   DEVICE_VENDOR := AVM
   DEVICE_MODEL := FRITZ!WLAN Repeater 300E
-  KERNEL := kernel-bin | append-dtb | lzma | eva-image
+  KERNEL := $(KERNEL_DTB_LZMA) | eva-image
   KERNEL_INITRAMFS := $$(KERNEL)
   IMAGE_SIZE := 15232k
   IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \
@@ -166,7 +166,7 @@ define Device/avm_fritz4020
   DEVICE_VENDOR := AVM
   DEVICE_MODEL := FRITZ!Box 4020
   IMAGE_SIZE := 15232k
-  KERNEL := kernel-bin | append-dtb | lzma | eva-image
+  KERNEL := $(KERNEL_DTB_LZMA) | eva-image
   KERNEL_INITRAMFS := $$(KERNEL)
   IMAGE/sysupgrade.bin := append-kernel | pad-to 64k | \
 	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs | pad-rootfs | \
@@ -712,7 +712,7 @@ define Device/jjplus_ja76pf2
   IMAGES := kernel.bin rootfs.bin
   IMAGE/kernel.bin := append-kernel
   IMAGE/rootfs.bin := append-rootfs | pad-rootfs
-  KERNEL := kernel-bin | append-dtb | lzma | pad-to $$(BLOCKSIZE)
+  KERNEL := $(KERNEL_DTB_LZMA) | pad-to $$(BLOCKSIZE)
   KERNEL_INITRAMFS := kernel-bin | append-dtb
   IMAGE_SIZE := 16000k
   SUPPORTED_DEVICES += ja76pf2
@@ -992,7 +992,7 @@ define Device/pisen_wmb001n
   COMPILE/loader-$(1).bin := loader-okli-compile
   COMPILE/loader-$(1).uImage := append-loader-okli $(1) | pad-to 64k | lzma | \
 	uImage lzma
-  KERNEL := kernel-bin | append-dtb | lzma | uImage lzma -M 0x4f4b4c49
+  KERNEL := $(KERNEL_DTB_LZMA) | uImage lzma -M 0x4f4b4c49
   IMAGES += factory.bin
   IMAGE/factory.bin := $$(IMAGE/sysupgrade.bin) | pisen_wmb001n-factory $(1)
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
