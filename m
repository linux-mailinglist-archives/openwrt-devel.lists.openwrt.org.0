Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDEB108006
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 Nov 2019 19:35:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lHkY+N3swqtw8B5h4q7S5oELCRkWXF6J4ocykImqpBo=; b=HmSx3HZZPn2zjQ
	NzwSmiC/UKmj4xaXh5p7VmkGvfEVn/HpjFM1PAOZpsNbqWthxoRhDKls/AlIhlv9XAxN7DHJf2VjF
	PmOUWU8+nL2n7wpsV0o1iBG3hB4Fts5zCXhcj6e5kKs3btEY6ucRHnQltpoHJcqMiYO5Z9NzyoVou
	zFHEJ7Te1TjkFCln3s5vlGthd35DD5qZzaSpwTGroJJB7Ov85lDuz3RNA1gwt30IixtFUlYBpi8rA
	PGHEgIbrEWL/8FgiNaEcBL+Z1gNsF2HEkscCB5vYBkspToT9z5O8NmrTPZKWQ13JCWEDSoPTU/XSb
	MtYx4Snqwpds+IRXbhPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYaFj-0000Tr-4j; Sat, 23 Nov 2019 18:35:27 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYaFc-0000TH-0H
 for openwrt-devel@lists.openwrt.org; Sat, 23 Nov 2019 18:35:21 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MnJdC-1i9OMw3bPQ-00jHJb for <openwrt-devel@lists.openwrt.org>; Sat, 23
 Nov 2019 19:35:14 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 23 Nov 2019 19:34:29 +0100
Message-Id: <20191123183429.56891-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:dTaocmK+poJlaZCmGiWLlEXTtSjWrxqCuYAdrd7WEd9/tVD4AAa
 UPK2XJWdpSNrdyKBBUQJ+Q4di5Nv1+bC+7C4aWD00uATZaoWJ7bkvE7UjotJY5Ej0E8WzXO
 UTwAa8noM0iWt2anUZI7yO25bUwRSbj1fscyB3zDdAzSNmzGftG8E0Pxaj/qjlzULbg4U5O
 CWD0qZFmHnAtR/WSXubBw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:noLAsGt+Tpo=:5w7nIYlVtOBV0F6D2Vk8Lt
 ELlwR9XTxCEl0IIAoW/jpywsE7Sj6NUHC40c1dU8aokbAFMGJfm9CiG3CTHyuDbVBeQmOP4MJ
 U0lXu2H7FLtzL8GSbzR6AUqHWntpP6tYXAg8i3PoGQxNG1XoCKSPuWstqNsS8Mr4U54Iylw75
 PnikrHgrvbh3Ja1v88U9i8QV9n1kDVMCcghBRODLYN2UWbtBpl7s9x9I10+GDOk+eJCUiJlcv
 F62LSfk3eoE+V2psFYwdrquBchThkPPG8lkNqMXcdvFp0bk7dsenhzJDzJqx4QyAfJT05bUNX
 jQwVry+kAQtL3VjWXXzOmz2zTx0defCIGHBRCujQsaodwHiGJ1DLfYD2aJy4dwy92h7wI2bKS
 ES04zXrlOOtbbq7reAGBvwHOrRr651c53uElI658Co32xBbiUy1NW/JZQmw8YeCudTqCteEMW
 tVkELAjFg+nlzS3B9ysK6fBUFQdIXyoqxm2YaiZIbN53/gq01tvDeMh/SQu2HG44876IJwTXj
 XsA7DarxlnMctaWJSUCtE8vGIbsNx877do7S4LKEi0l6PsAifnnX90vmF28MSLRaj+Tgg3nXl
 vapgfI/eL6322fkZ3HhIX15BnS8c3oCqhEdJvsBe473fVk382bnTtiRwp/dGSapM/faBVmGA7
 o+OgEUOBioHay9BSkJ79A0sZ/zls/+SD6BoIXe5Tglp4f+YyZtoADrKvPcMv1e2lfpRh7/Ozu
 nOJO24bBGXNaWO+ASNmQftojdZizLmwq+7BwH3Tai9Lz1A8f9BjaOGbX4lJDpVRLid3e6YzPv
 CR9tuUdKoSkB8bF7NAGKyCd+oVxtm+YXRlhk70s3txFW+ZZiV484RX/imkD64pB/DXfWXCWds
 CNhyfMGkJsApQOkK0YIcZyH0o3k3XAQo4nSwn2jQo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_103520_333252_425C3F2F 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mpc85xx: add vendor to Makefile node name,
 derive SUPPORTED_DEVICES
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

By adding the vendor to the Makefile device definition node name,
one can derive the standard compatible used in SUPPORTED_DEVICES
instead of having to specify it manually.

Despite, this moves the naming scheme closer to what is used for
other targets (ath79, ramips).

Build-tested on all subtargets.
Run-tested on TP-Link TL-WDR4900 v1.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/mpc85xx/image/Makefile | 28 +++++++++++++---------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/target/linux/mpc85xx/image/Makefile b/target/linux/mpc85xx/image/Makefile
index 156f1e6eda..81b7293d71 100644
--- a/target/linux/mpc85xx/image/Makefile
+++ b/target/linux/mpc85xx/image/Makefile
@@ -37,16 +37,17 @@ endef
 
 define Device/Default
   PROFILES := Default
-  DEVICE_DTS := $(1)
+  DEVICE_DTS := $(lastword $(subst _, ,$(1)))
   KERNEL_DEPENDS = $$(wildcard $(DTS_DIR)/$$(DEVICE_DTS).dts)
   KERNEL_ENTRY := 0x00000000
   KERNEL_LOADADDR := 0x00000000
   KERNEL := kernel-bin
+  SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
 endef
 
 ifeq ($(SUBTARGET),generic)
 
-define Device/tl-wdr4900-v1
+define Device/tplink_tl-wdr4900-v1
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := TL-WDR4900
   DEVICE_VARIANT := v1
@@ -59,33 +60,32 @@ define Device/tl-wdr4900-v1
   KERNEL := kernel-bin | uImage none
   KERNEL_ENTRY := 0x1000000
   KERNEL_LOADADDR := 0x1000000
-  SUPPORTED_DEVICES:=tl-wdr4900-v1 tplink,tl-wdr4900-v1
+  SUPPORTED_DEVICES += tl-wdr4900-v1
   ARTIFACTS := fdt.bin
   ARTIFACT/fdt.bin := append-dtb
   IMAGES := fdt.bin factory.bin sysupgrade.bin
   IMAGE/sysupgrade.bin := append-rootfs | mktplinkfw sysupgrade | append-metadata
   IMAGE/factory.bin := append-rootfs | mktplinkfw factory
 endef
-TARGET_DEVICES += tl-wdr4900-v1
+TARGET_DEVICES += tplink_tl-wdr4900-v1
 
-define Device/red-15w-rev1
+define Device/sophos_red-15w-rev1
   DEVICE_VENDOR := Sophos
   DEVICE_MODEL := RED 15w
   DEVICE_VARIANT := Rev.1
   # Original firmware uses a dedicated DTB-partition.
   # The bootloader however supports FIT-images.
   KERNEL = kernel-bin | gzip | fit gzip $(KDIR)/image-$$(DEVICE_DTS).dtb
-  SUPPORTED_DEVICES := sophos,red-15w-rev1
   IMAGES := sysupgrade.bin
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
 endef
-TARGET_DEVICES += red-15w-rev1
+TARGET_DEVICES += sophos_red-15w-rev1
 
 endif
 
 ifeq ($(SUBTARGET),p1020)
 
-define Device/hiveap-330
+define Device/aerohive_hiveap-330
   DEVICE_VENDOR := Aerohive
   DEVICE_MODEL := HiveAP-330
   DEVICE_PACKAGES := kmod-tpm-i2c-atmel
@@ -93,7 +93,6 @@ define Device/hiveap-330
   KERNEL := kernel-bin | gzip | uImage gzip
   KERNEL_SIZE := 8m
   KERNEL_INITRAMFS := copy-file $(KDIR)/vmlinux-initramfs | uImage none
-  SUPPORTED_DEVICES := aerohive,hiveap-330
   IMAGES := fdt.bin sysupgrade.bin
   IMAGE/fdt.bin := append-dtb
   IMAGE/sysupgrade.bin := append-dtb | pad-to 256k | check-size 256k | \
@@ -101,9 +100,9 @@ define Device/hiveap-330
 	append-rootfs | pad-rootfs $$(BLOCKSIZE) | pad-to 41216k | check-size 41216k | \
 	append-kernel | append-metadata
 endef
-TARGET_DEVICES += hiveap-330
+TARGET_DEVICES += aerohive_hiveap-330
 
-define Device/panda
+define Device/ocedo_panda
   DEVICE_VENDOR := OCEDO
   DEVICE_MODEL := Panda
   DEVICE_PACKAGES := kmod-rtc-ds1307 uboot-envtools
@@ -111,18 +110,17 @@ define Device/panda
   PAGESIZE := 2048
   SUBPAGESIZE := 512
   BLOCKSIZE := 128k
-  SUPPORTED_DEVICES := ocedo,panda
   IMAGES := fdt.bin sysupgrade.bin
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
   IMAGE/fdt.bin := append-dtb
 endef
-TARGET_DEVICES += panda
+TARGET_DEVICES += ocedo_panda
 
 endif
 
 ifeq ($(SUBTARGET),p2020)
 
-define Device/p2020rdb
+define Device/fsl_p2020rdb
   DEVICE_VENDOR := Freescale
   DEVICE_MODEL := P2020RDB
   DEVICE_DTS_DIR := $(DTS_DIR)/fsl
@@ -136,7 +134,7 @@ define Device/p2020rdb
   IMAGE/sysupgrade.bin := append-kernel | append-rootfs | \
 	pad-rootfs $$(BLOCKSIZE) | append-metadata
 endef
-TARGET_DEVICES += p2020rdb
+TARGET_DEVICES += fsl_p2020rdb
 
 endif
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
