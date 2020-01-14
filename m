Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF8713AC78
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 15:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YCE3ED0godAg+WUyLT97V2XIbV5QhKiVVgwVQGscx3Y=; b=DS3uoLOqSRDH1x
	sih/SrWJi/ZdOsK49B2zQeZJDNPn4WWJLp8wy561eo2SgpJ/r6gSYBw35i8Tg7XooB8rwKIdxANxx
	aBPKLr9Aq9SVMyNFu2Pb85lDwb8+/3ZfGStmzVLYHOk2sb67rkwZVAGa2TuPwLWt3mQO4wTWASq8d
	mY1wVUw8oHSua+BvUINHdC5iZr9o/Vxj7NC6laKpeBcXWis4V7qSpJY7N8F2ycqTKUvx2nVoEMByZ
	nBg5O2/KEGzP5ERfR7YT1wEyYZXN5dOIKHpf1RMSJq1uAugVH9mCl0+EUBxqMKIvqVvnRjaX0hdti
	GZJ0Id14EnXGyvxE/xwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNMn-0003X6-Gx; Tue, 14 Jan 2020 14:40:25 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNMc-0003G6-Q9
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 14:40:19 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MZTa2-1jCm6w1FLi-00WZK4; Tue, 14 Jan 2020 15:40:08 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Jan 2020 15:38:51 +0100
Message-Id: <20200114143851.29038-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:bGIkAJoq909Bwj0SYvoSje4o0QSp8djkT2lSpKsR2w/vk3A2hG7
 7BgZSe5IO9RS3Xm0T1W17q2gKyv6uiIbh1Sjz8CBBkr4U7K3m9CGwYGU4+AC599enElESWk
 voT/BqpJcpcxyU6ixqKvrNvbT0Aslcek0lNLWMyta7tluCeyWjNSFyF8EGFNVfL/88lY1zi
 VwWTZuI3AS63amZKCIWwg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FDnRFzUbRJY=:Md9+BIKrv0+Yx3kyMm6KUG
 NyLeOJBok7dSm0MGr44cnH1kJi9PaASm1SRlz+lsgP774lZIow95uBkCXMzPWYg8f1DzltW7g
 5rsNa5TmTKJnnzhvxTwPOTAgy2nzEGjiIL7JZv3Nc/stCFYnnQyu0tXqe9MAQGKOZKgUooCee
 0xTkL6M8gPTvsrvc6u4JIuH27sK+fmqSS23A/KvHWXyFcEIX6QyVYJUAiQhS/xwB3qVya/W5x
 YY7nufJdfEGSLc7z9rTc+Cnco/kYxzz5b5z85UfThpYCjgjjoDoI9IUIjNl+GqKxMDlN6/WyI
 hJZ1QQpb85fCg6tCiAZsBOxvbQi75kfyKCXYYiREQteVcN2iNS9mszeZwP4ykBemenpSE68u/
 J+1PTe40pMt/8qui4/KPdS0R1B8Pnh63n8b58kRaKJgrlVvVa9VyTGPPs3cj1CEYOFokBFBIg
 jwntNzsvq4eB8T++IQ049ySB6Cq6pLDG0qYNlSAwU/BN9v05Y4yEKl5UtOFyLSU/lB5di6l06
 8gDlAOnPfvF2ZKV9ZWQocn2S3Hh+qCIHPYVKq215eLe6Oq2vHLceNLrU7Q/RkvmDL9dO1cmR+
 +ABs2e0XhxDdcY6z1JgFhTaIR4XZ01AiPJumUPxJGPBaCD4lyz00fmATyxsfieIruQDbs2X/W
 RtOk4am0Le+ku/UjdkTAzVMi2yLukfV8gr9K+8G+qGx0NVZXAsSHR8z/TRKpMxxEkEEChjMfp
 BbEfNU0/PeGL/twT6WD61P8/H1/Jz72AFSMWh7jPMDbT/+hmxS5nyilpiA1Glk1X+lsutLqht
 UA7WWWdgrxnASG/sF8y1jupTP3rV/huxDt5I5v+WUwGiUHdv7U7aMEu69RRzLZKWKZfyZudc9
 mK3ZEVUUL5l0x058X80XoAjJzjIM7vztnRlfxfv0Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_064015_147798_895BCD43 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/2] mediatek: use consistent naming scheme
 for device nodes
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
Cc: John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This harmonizes the device node names (and thus the image names, too)
between subtargets of the mediatek target. So far, each subtarget
has somewhat used its own naming scheme. Now, we use the vendor_device
syntax there, too.

Since DTS names have different patterns and the target only contains
a few devices, this does not replace DEVICE_DTS by a calculated
default value (like for other targets).

SUPPORTED_DEVICES is adjusted based on the node rename where necessary,
though it looks like for several older devices it was not set up
correctly so far.

While at it, this also changes the DTS name for u7623-02-emmc-512m
to all-lower-case.

Cc: John Crispin <john@phrozen.org>
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/mediatek/image/mt7622.mk              | 14 ++++++++------
 target/linux/mediatek/image/mt7623.mk              | 14 ++++++--------
 target/linux/mediatek/image/mt7629.mk              |  1 -
 .../0227-arm-dts-Add-Unielec-U7623-DTS.patch       |  8 ++++----
 .../0227-arm-dts-Add-Unielec-U7623-DTS.patch       |  8 ++++----
 5 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/target/linux/mediatek/image/mt7622.mk b/target/linux/mediatek/image/mt7622.mk
index b84a3a6b50..9a5aedc88d 100644
--- a/target/linux/mediatek/image/mt7622.mk
+++ b/target/linux/mediatek/image/mt7622.mk
@@ -1,4 +1,4 @@
-define Device/MTK-RFB1
+define Device/mediatek_mt7622-rfb1
   DEVICE_VENDOR := MediaTek
   DEVICE_MODEL := MTK7622 rfb1 AP
   DEVICE_DTS := mt7622-rfb1
@@ -6,24 +6,26 @@ define Device/MTK-RFB1
   DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb3 \
 			kmod-ata-core kmod-ata-ahci-mtk
 endef
-TARGET_DEVICES += MTK-RFB1
+TARGET_DEVICES += mediatek_mt7622-rfb1
 
-define Device/MTK-LYNX-RFB1
+define Device/mediatek_mt7622-lynx-rfb1
   DEVICE_VENDOR := MediaTek
   DEVICE_MODEL := MTK7622 Lynx rfb1 AP
   DEVICE_DTS := mt7622-lynx-rfb1
   DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
+  SUPPORTED_DEVICES := mediatek,mt7622-rfb1
   DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb3 \
 			kmod-ata-core kmod-ata-ahci-mtk
 endef
-TARGET_DEVICES += MTK-LYNX-RFB1
+TARGET_DEVICES += mediatek_mt7622-lynx-rfb1
 
-define Device/BPI-R64
+define Device/lemaker_bananapi-bpi-r64
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pi R64
   DEVICE_DTS := mt7622-bananapi-bpi-r64
   DEVICE_DTS_DIR := $(DTS_DIR)/mediatek
+  SUPPORTED_DEVICES := bananapi,bpi-r64
   DEVICE_PACKAGES := kmod-usb-ohci kmod-usb2 kmod-usb3 \
 			kmod-ata-core kmod-ata-ahci-mtk
 endef
-TARGET_DEVICES += BPI-R64
+TARGET_DEVICES += lemaker_bananapi-bpi-r64
diff --git a/target/linux/mediatek/image/mt7623.mk b/target/linux/mediatek/image/mt7623.mk
index 3f72979849..fd609d22fa 100644
--- a/target/linux/mediatek/image/mt7623.mk
+++ b/target/linux/mediatek/image/mt7623.mk
@@ -1,20 +1,18 @@
-define Device/7623a-unielec-u7623-02-emmc-512m
+define Device/unielec_u7623-02-emmc-512m
   DEVICE_VENDOR := UniElec
   DEVICE_MODEL := U7623-02
   DEVICE_VARIANT := eMMC/512MB RAM
-  DEVICE_DTS := mt7623a-unielec-u7623-02-emmc-512M
+  DEVICE_DTS := mt7623a-unielec-u7623-02-emmc-512m
   DEVICE_PACKAGES := mkf2fs e2fsprogs kmod-fs-vfat kmod-nls-cp437 kmod-nls-iso8859-1 kmod-mmc
-  SUPPORTED_DEVICES := unielec,u7623-02-emmc-512m
   IMAGES := sysupgrade-emmc.bin.gz
   IMAGE/sysupgrade-emmc.bin.gz := sysupgrade-emmc | gzip | append-metadata
 endef
+TARGET_DEVICES += unielec_u7623-02-emmc-512m
 
-TARGET_DEVICES += 7623a-unielec-u7623-02-emmc-512m
-
-define Device/7623n-bananapi-bpi-r2
+define Device/lemaker_bananapi-bpi-r2
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pi R2
   DEVICE_DTS := mt7623n-bananapi-bpi-r2
+  SUPPORTED_DEVICES := bananapi,bpi-r2
 endef
-
-TARGET_DEVICES += 7623n-bananapi-bpi-r2
+TARGET_DEVICES += lemaker_bananapi-bpi-r2
diff --git a/target/linux/mediatek/image/mt7629.mk b/target/linux/mediatek/image/mt7629.mk
index ba1daefa03..71fb3dda09 100644
--- a/target/linux/mediatek/image/mt7629.mk
+++ b/target/linux/mediatek/image/mt7629.mk
@@ -5,4 +5,3 @@ define Device/mediatek_mt7629-lynx-rfb
   DEVICE_PACKAGES := swconfig
 endef
 TARGET_DEVICES += mediatek_mt7629-lynx-rfb
-
diff --git a/target/linux/mediatek/patches-4.14/0227-arm-dts-Add-Unielec-U7623-DTS.patch b/target/linux/mediatek/patches-4.14/0227-arm-dts-Add-Unielec-U7623-DTS.patch
index 996b309e8f..46fc9abab9 100644
--- a/target/linux/mediatek/patches-4.14/0227-arm-dts-Add-Unielec-U7623-DTS.patch
+++ b/target/linux/mediatek/patches-4.14/0227-arm-dts-Add-Unielec-U7623-DTS.patch
@@ -5,10 +5,10 @@ Subject: [PATCH] arm: dts: Add Unielec U7623 DTS
 
 ---
  arch/arm/boot/dts/Makefile                         |   1 +
- .../dts/mt7623a-unielec-u7623-02-emmc-512M.dts     |  18 +
+ .../dts/mt7623a-unielec-u7623-02-emmc-512m.dts     |  18 +
  .../boot/dts/mt7623a-unielec-u7623-02-emmc.dtsi    | 366 +++++++++++++++++++++
  3 files changed, 385 insertions(+)
- create mode 100644 arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512M.dts
+ create mode 100644 arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512m.dts
  create mode 100644 arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc.dtsi
 
 --- a/arch/arm/boot/dts/Makefile
@@ -17,12 +17,12 @@ Subject: [PATCH] arm: dts: Add Unielec U7623 DTS
  	mt6589-aquaris5.dtb \
  	mt6592-evb.dtb \
  	mt7623a-rfb-emmc.dtb \
-+	mt7623a-unielec-u7623-02-emmc-512M.dtb \
++	mt7623a-unielec-u7623-02-emmc-512m.dtb \
  	mt7623n-rfb-nand.dtb \
  	mt7623n-bananapi-bpi-r2.dtb \
  	mt8127-moose.dtb \
 --- /dev/null
-+++ b/arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512M.dts
++++ b/arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512m.dts
 @@ -0,0 +1,18 @@
 +/*
 + * Copyright 2018 Kristian Evensen <kristian.evensen@gmail.com>
diff --git a/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch b/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch
index 6561e8d5a7..7b92141c5f 100644
--- a/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch
+++ b/target/linux/mediatek/patches-4.19/0227-arm-dts-Add-Unielec-U7623-DTS.patch
@@ -5,10 +5,10 @@ Subject: [PATCH] arm: dts: Add Unielec U7623 DTS
 
 ---
  arch/arm/boot/dts/Makefile                         |   1 +
- .../dts/mt7623a-unielec-u7623-02-emmc-512M.dts     |  18 +
+ .../dts/mt7623a-unielec-u7623-02-emmc-512m.dts     |  18 +
  .../boot/dts/mt7623a-unielec-u7623-02-emmc.dtsi    | 366 +++++++++++++++++++++
  3 files changed, 385 insertions(+)
- create mode 100644 arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512M.dts
+ create mode 100644 arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512m.dts
  create mode 100644 arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc.dtsi
 
 --- a/arch/arm/boot/dts/Makefile
@@ -17,12 +17,12 @@ Subject: [PATCH] arm: dts: Add Unielec U7623 DTS
  	mt7623a-rfb-nand.dtb \
  	mt7623n-rfb-emmc.dtb \
  	mt7623n-bananapi-bpi-r2.dtb \
-+	mt7623a-unielec-u7623-02-emmc-512M.dtb \
++	mt7623a-unielec-u7623-02-emmc-512m.dtb \
  	mt8127-moose.dtb \
  	mt8135-evbp1.dtb
  dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 --- /dev/null
-+++ b/arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512M.dts
++++ b/arch/arm/boot/dts/mt7623a-unielec-u7623-02-emmc-512m.dts
 @@ -0,0 +1,18 @@
 +/*
 + * Copyright 2018 Kristian Evensen <kristian.evensen@gmail.com>
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
