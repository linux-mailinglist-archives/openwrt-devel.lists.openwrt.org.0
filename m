Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE89115F50
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 23:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=47D666MZHCacIBrM+wmVfji3/r20tvJbl/9ZbdtH3+w=; b=PvYl4K741KRb6T4LpM33EQO0WU
	JKB4pury9gKS0NWRmZcTOSHdLwcreVxdo81dm91VcKrnmTKGL5Tzgfn4Yt/WSBVDRaeB1aDthJKnq
	aIdF3Gp4K8bwf6/hqkQTQQ1zJ4UXl+gDFvzlW0OOPOTLOjnBRjXU9iLz6us6gfsyvSASz8jTtEdzF
	//0HlXq1AxjOBiMTIKqvaeEG1j+QHPMSpPinLMZqt1WYnMDWNQnQadVoTsTZUmtZqFRopG3L3FfN6
	75HV6NUgl7NsO2KGR3O5uLXnsB+gjLd8GYN5WlGFi8t1GPauh9pwmyvH8A1hFE+o4NnwyRjaHrRTA
	RBsbumYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idia2-0004gY-BL; Sat, 07 Dec 2019 22:29:38 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiZd-0004ST-W9
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 22:29:16 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1M5jA2-1igUWd0uDK-007DEj for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Dec 2019 23:29:09 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:28:26 +0100
Message-Id: <20191207222826.47389-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
References: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:83OV2bBXsfHX0LS7xfgmCqXwBhrflT++MweCUomzDe+0NKTef+A
 MswZhEgB5t5GlFVTjFhn1I4sKAOO3D2VtGJG0yuP3cdk8meJHIOlmOguPI6FOOhH0k4KtUk
 dQJXfwqAuTuOlYoPNwBZ6PGHImkcofR6mI3MSyY3w0/U2Fjc8QECAiZupvl5kPkuEKbgSCb
 ysYIKM+UkIDnNph6kEL9w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Z/YKcgmS3Ps=:SNS3JgtIMTSpTSrecCq1nf
 Bnu3xUjceB2e4Ctbj/3CLrb65fayPv41iwWB6GFf2Vxi6ov3jb+IFWMCD9xVtXS2CNShpNNWH
 16wt2K4Eub+/CGonvyEzxZFWZx8UZjThVj4tjmIpngzFQ1u2HOpp5c1Rn9NEVrWOG7AWCrrVU
 q0PldCV6cTC0f3xvs4Z0iKofVUakQyDhMrm+NqkhZmA+rzjuHCxYYa7OjOBp7NUOej2ioo/vt
 vP6G6g2SbiNFSeInpLj6L84kZab1AdeYfXgtOvjvENTrHcngSUuevqlGm81FZGFJaLWgaz1G2
 tPuGmFq9fnTk67E+sUfkR+ifB1F07LiVu7o/tGhg0/sJtvGTFvcYkPEW6lcrkeX7l/icfCA5m
 nHejYjkgjpJQ3VYLel9zPcIMBVPkZ/Y2K92LnCa7z3AbTXaF7B8zUUWRve9+JmpcV59aAFj6K
 ukyvBw1laOiEkTEL3CBpxjFq+WBTkHwK0rDJn+YBIEHHODTGILu9eiqLMYwAQg30r+7dnQAwp
 TTOiBU1rmFMdNWwbEasRufA762l2DmG6+ee5jSbgj7xSRgCgEviXpupGwcYgs7BiOZu461tWo
 2LDnmx74r3WesHkWQePdbBxlHyHZe/lybPmfvinxHQGDpyf8+MjQN9Vf7AWq0HaJcSWnShVYO
 CYpx387/Ayip9GT0O158yQEo/gv/dxi9nOjsYWDoWtJyiJOtp8kEKAHKuJvEFlKJYLvHeKfSu
 WimrgmfcOHIiNS7jXsPW0DapUqQ29xZXQVSApR0hVCmHoosNj7XuZNy6pHSAhD9nXWNEshAHU
 ztSY0NwBMgHKaUcbZaMdOXIkhY5rAQjsrXmYMTPtTpz/FWBXlrdjqYqT2Sn2JziEMx5W2sCxm
 dpKNtjd7lQEWFAXFK2yZp+Rd05c/gBiGRfw3kNbzc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142914_327957_945DE74F 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] sunxi: construct DTS name from device
 node name and SOC
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

The device part in the SUNXI_DTS variable always corresponds to
device node name. This is another redundancy that can be removed
by calculating the DTS name from a newly introduced SUNXI_SOC
variable and the node name.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/sunxi/image/Makefile      |  5 ++-
 target/linux/sunxi/image/cortex-a53.mk | 18 +++++++----
 target/linux/sunxi/image/cortex-a7.mk  | 44 +++++++++++++-------------
 target/linux/sunxi/image/cortex-a8.mk  | 13 ++++----
 4 files changed, 45 insertions(+), 35 deletions(-)

diff --git a/target/linux/sunxi/image/Makefile b/target/linux/sunxi/image/Makefile
index 04e0abee49..929f4c70f9 100644
--- a/target/linux/sunxi/image/Makefile
+++ b/target/linux/sunxi/image/Makefile
@@ -32,12 +32,15 @@ endef
 # why \x00\x00\x00\x00 for zImage-initramfs
 define Device/Default
   PROFILES := Default
-  DEVICE_VARS := SUNXI_DTS SUNXI_UBOOT
+  DEVICE_VARS := SUNXI_SOC SUNXI_DTS SUNXI_DTS_DIR SUNXI_UBOOT
   KERNEL_NAME := zImage
   KERNEL := kernel-bin | uImage none
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := sunxi-sdcard | append-metadata | gzip
   SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
+  SUNXI_SOC :=
+  SUNXI_DTS_DIR :=
+  SUNXI_DTS = $$(SUNXI_DTS_DIR)$$(SUNXI_SOC)-$(lastword $(subst _, ,$(1)))
 endef
 
 include cortex-a7.mk
diff --git a/target/linux/sunxi/image/cortex-a53.mk b/target/linux/sunxi/image/cortex-a53.mk
index d6c17d95ff..b0d087b9b1 100644
--- a/target/linux/sunxi/image/cortex-a53.mk
+++ b/target/linux/sunxi/image/cortex-a53.mk
@@ -11,7 +11,8 @@ define Device/friendlyarm_nanopi-neo-plus2
   DEVICE_VENDOR := FriendlyARM
   DEVICE_MODEL := NanoPi NEO Plus2
   SUPPORTED_DEVICES:=nanopi-neo-plus2
-  SUNXI_DTS:=allwinner/sun50i-h5-nanopi-neo-plus2
+  SUNXI_DTS_DIR := allwinner/
+  SUNXI_SOC := sun50i-h5
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
@@ -22,7 +23,8 @@ define Device/friendlyarm_nanopi-neo2
   DEVICE_VENDOR := FriendlyARM
   DEVICE_MODEL := NanoPi NEO2
   SUPPORTED_DEVICES:=nanopi-neo2
-  SUNXI_DTS:=allwinner/sun50i-h5-nanopi-neo2
+  SUNXI_DTS_DIR := allwinner/
+  SUNXI_SOC := sun50i-h5
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
@@ -32,7 +34,8 @@ TARGET_DEVICES += friendlyarm_nanopi-neo2
 define Device/pine64_pine64-plus
   DEVICE_VENDOR := Pine64
   DEVICE_MODEL := Pine64+
-  SUNXI_DTS:=allwinner/sun50i-a64-pine64-plus
+  SUNXI_DTS_DIR := allwinner/
+  SUNXI_SOC := sun50i-a64
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
@@ -42,7 +45,8 @@ TARGET_DEVICES += pine64_pine64-plus
 define Device/pine64_sopine-baseboard
   DEVICE_VENDOR := Pine64
   DEVICE_MODEL := SoPine
-  SUNXI_DTS:=allwinner/sun50i-a64-sopine-baseboard
+  SUNXI_DTS_DIR := allwinner/
+  SUNXI_SOC := sun50i-a64
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
@@ -53,7 +57,8 @@ TARGET_DEVICES += pine64_sopine-baseboard
 define Device/xunlong_orangepi-zero-plus
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi Zero Plus
-  SUNXI_DTS:=allwinner/sun50i-h5-orangepi-zero-plus
+  SUNXI_DTS_DIR := allwinner/
+  SUNXI_SOC := sun50i-h5
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
@@ -63,7 +68,8 @@ TARGET_DEVICES += xunlong_orangepi-zero-plus
 define Device/xunlong_orangepi-pc2
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi PC 2
-  SUNXI_DTS:=allwinner/sun50i-h5-orangepi-pc2
+  SUNXI_DTS_DIR := allwinner/
+  SUNXI_SOC := sun50i-h5
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
diff --git a/target/linux/sunxi/image/cortex-a7.mk b/target/linux/sunxi/image/cortex-a7.mk
index 32e094efb8..0465c2ba9a 100644
--- a/target/linux/sunxi/image/cortex-a7.mk
+++ b/target/linux/sunxi/image/cortex-a7.mk
@@ -12,7 +12,7 @@ define Device/olimex_a20-olinuxino-lime
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A20-OLinuXino-LIME
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi
-  SUNXI_DTS:=sun7i-a20-olinuxino-lime
+  SUNXI_SOC := sun7i
 endef
 
 TARGET_DEVICES += olimex_a20-olinuxino-lime
@@ -22,7 +22,7 @@ define Device/olimex_a20-olinuxino-lime2
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A20-OLinuXino-LIME2
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi kmod-usb-hid
-  SUNXI_DTS:=sun7i-a20-olinuxino-lime2
+  SUNXI_SOC := sun7i
 endef
 
 TARGET_DEVICES += olimex_a20-olinuxino-lime2
@@ -33,7 +33,7 @@ define Device/olimex_a20-olinuxino-lime2-emmc
   DEVICE_MODEL := A20-OLinuXino-LIME2
   DEVICE_VARIANT := eMMC
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi kmod-usb-hid
-  SUNXI_DTS:=sun7i-a20-olinuxino-lime2-emmc
+  SUNXI_SOC := sun7i
 endef
 
 TARGET_DEVICES += olimex_a20-olinuxino-lime2-emmc
@@ -43,7 +43,7 @@ define Device/olimex_a20-olinuxino-micro
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A20-OLinuXino-MICRO
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUNXI_DTS:=sun7i-a20-olinuxino-micro
+  SUNXI_SOC := =sun7i
 endef
 
 TARGET_DEVICES += olimex_a20-olinuxino-micro
@@ -53,7 +53,7 @@ define Device/lemaker_bananapi
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pi
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi
-  SUNXI_DTS:=sun7i-a20-bananapi
+  SUNXI_SOC := sun7i-a20
 endef
 
 TARGET_DEVICES += lemaker_bananapi
@@ -63,7 +63,7 @@ define Device/lemaker_bananapro
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pro
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi kmod-brcmfmac
-  SUNXI_DTS:=sun7i-a20-bananapro
+  SUNXI_SOC := sun7i-a20
 endef
 
 TARGET_DEVICES += lemaker_bananapro
@@ -73,7 +73,7 @@ define Device/cubietech_cubieboard2
   DEVICE_VENDOR := Cubietech
   DEVICE_MODEL := Cubieboard2
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUNXI_DTS:=sun7i-a20-cubieboard2
+  SUNXI_SOC := sun7i-a20
 endef
 
 TARGET_DEVICES += cubietech_cubieboard2
@@ -83,7 +83,7 @@ define Device/cubietech_cubietruck
   DEVICE_VENDOR := Cubietech
   DEVICE_MODEL := Cubietruck
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi kmod-brcmfmac
-  SUNXI_DTS:=sun7i-a20-cubietruck
+  SUNXI_SOC := sun7i-a20
 endef
 
 TARGET_DEVICES += cubietech_cubietruck
@@ -93,7 +93,7 @@ define Device/lamobo_lamobo-r1
   DEVICE_VENDOR := Lamobo
   DEVICE_MODEL := Lamobo R1
   DEVICE_PACKAGES:=kmod-ata-sunxi kmod-rtl8192cu swconfig wpad-basic
-  SUNXI_DTS:=sun7i-a20-lamobo-r1
+  SUNXI_SOC := sun7i-a20
 endef
 
 TARGET_DEVICES += lamobo_lamobo-r1
@@ -103,7 +103,7 @@ define Device/mele_m9
   DEVICE_VENDOR := Mele
   DEVICE_MODEL := M9
   DEVICE_PACKAGES:=kmod-sun4i-emac kmod-rtc-sunxi kmod-rtl8192cu
-  SUNXI_DTS:=sun6i-a31-m9
+  SUNXI_SOC := sun6i-a31
 endef
 
 TARGET_DEVICES += mele_m9
@@ -113,7 +113,7 @@ define Device/xunlong_orangepi-zero
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi Zero
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUNXI_DTS:=sun8i-h2-plus-orangepi-zero
+  SUNXI_SOC := sun8i-h2-plus
 endef
 
 TARGET_DEVICES += xunlong_orangepi-zero
@@ -123,7 +123,7 @@ define Device/xunlong_orangepi-r1
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi R1
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-usb-net kmod-usb-net-rtl8152
-  SUNXI_DTS:=sun8i-h2-plus-orangepi-r1
+  SUNXI_SOC := sun8i-h2-plus
 endef
 
 TARGET_DEVICES += xunlong_orangepi-r1
@@ -134,7 +134,7 @@ define Device/sinovoip_bananapi-m2-plus
   DEVICE_PACKAGES:=kmod-rtc-sunxi \
 	kmod-leds-gpio kmod-ledtrig-heartbeat \
 	kmod-brcmfmac brcmfmac-firmware-43430a0-sdio wpad-basic
-  SUNXI_DTS:=sun8i-h3-bananapi-m2-plus
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += sinovoip_bananapi-m2-plus
@@ -145,7 +145,7 @@ define Device/friendlyarm_nanopi-m1-plus
   DEVICE_PACKAGES:=kmod-rtc-sunxi \
 	kmod-leds-gpio kmod-ledtrig-heartbeat \
 	kmod-brcmfmac brcmfmac-firmware-43430-sdio wpad-basic
-  SUNXI_DTS:=sun8i-h3-nanopi-m1-plus
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += friendlyarm_nanopi-m1-plus
@@ -154,7 +154,7 @@ TARGET_DEVICES += friendlyarm_nanopi-m1-plus
 define Device/friendlyarm_nanopi-neo
   DEVICE_VENDOR := FriendlyARM
   DEVICE_MODEL := NanoPi NEO
-  SUNXI_DTS:=sun8i-h3-nanopi-neo
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += friendlyarm_nanopi-neo
@@ -164,7 +164,7 @@ define Device/xunlong_orangepi-one
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi One
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUNXI_DTS:=sun8i-h3-orangepi-one
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += xunlong_orangepi-one
@@ -174,7 +174,7 @@ define Device/xunlong_orangepi-pc
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi PC
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-gpio-button-hotplug
-  SUNXI_DTS:=sun8i-h3-orangepi-pc
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += xunlong_orangepi-pc
@@ -184,7 +184,7 @@ define Device/xunlong_orangepi-pc-plus
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi PC Plus
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-gpio-button-hotplug
-  SUNXI_DTS:=sun8i-h3-orangepi-pc-plus
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += xunlong_orangepi-pc-plus
@@ -194,7 +194,7 @@ define Device/xunlong_orangepi-plus
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi Plus
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUNXI_DTS:=sun8i-h3-orangepi-plus
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += xunlong_orangepi-plus
@@ -203,7 +203,7 @@ define Device/xunlong_orangepi-2
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi 2
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUNXI_DTS:=sun8i-h3-orangepi-2
+  SUNXI_SOC := sun8i-h3
 endef
 
 TARGET_DEVICES += xunlong_orangepi-2
@@ -213,7 +213,7 @@ define Device/linksprite_pcduino3
   DEVICE_VENDOR := LinkSprite
   DEVICE_MODEL := pcDuino3
   DEVICE_PACKAGES:=kmod-sun4i-emac kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi kmod-rtl8xxxu rtl8188eu-firmware
-  SUNXI_DTS:=sun7i-a20-pcduino3
+  SUNXI_SOC := sun7i-a20
 endef
 
 TARGET_DEVICES += linksprite_pcduino3
@@ -222,7 +222,7 @@ define Device/lemaker_bananapi-m2-ultra
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pi M2 Ultra
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi
-  SUNXI_DTS:=sun8i-r40-bananapi-m2-ultra
+  SUNXI_SOC := sun8i-r40
 endef
 
 TARGET_DEVICES += lemaker_bananapi-m2-ultra
diff --git a/target/linux/sunxi/image/cortex-a8.mk b/target/linux/sunxi/image/cortex-a8.mk
index 073ed8f2d1..d6b5a46a22 100644
--- a/target/linux/sunxi/image/cortex-a8.mk
+++ b/target/linux/sunxi/image/cortex-a8.mk
@@ -11,7 +11,7 @@ define Device/olimex_a10-olinuxino-lime
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A10-OLinuXino-LIME
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUNXI_DTS:=sun4i-a10-olinuxino-lime
+  SUNXI_SOC := sun4i
 endef
 
 TARGET_DEVICES += olimex_a10-olinuxino-lime
@@ -22,7 +22,8 @@ define Device/olimex_a13-olimex-som
   DEVICE_MODEL := A13-SOM
   DEVICE_PACKAGES:=kmod-rtl8192cu
   SUPPORTED_DEVICES:=olimex,a13-olinuxino
-  SUNXI_DTS:=sun5i-a13-olinuxino
+  SUNXI_SOC := sun5i-a13
+  SUNXI_DTS := sun5i-a13-olinuxino
 endef
 
 TARGET_DEVICES += olimex_a13-olimex-som
@@ -32,7 +33,7 @@ define Device/olimex_a13-olinuxino
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A13-OLinuXino
   DEVICE_PACKAGES:=kmod-rtl8192cu
-  SUNXI_DTS:=sun5i-a13-olinuxino
+  SUNXI_SOC := sun5i
 endef
 
 TARGET_DEVICES += olimex_a13-olinuxino
@@ -42,7 +43,7 @@ define Device/cubietech_a10-cubieboard
   DEVICE_VENDOR := Cubietech
   DEVICE_MODEL := Cubieboard
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUNXI_DTS:=sun4i-a10-cubieboard
+  SUNXI_SOC := sun4i
 endef
 
 TARGET_DEVICES += cubietech_a10-cubieboard
@@ -52,7 +53,7 @@ define Device/linksprite_a10-pcduino
   DEVICE_VENDOR := LinkSprite
   DEVICE_MODEL := pcDuino
   DEVICE_PACKAGES:=kmod-sun4i-emac kmod-rtc-sunxi kmod-rtl8192cu
-  SUNXI_DTS:=sun4i-a10-pcduino
+  SUNXI_SOC := sun4i
 endef
 
 TARGET_DEVICES += linksprite_a10-pcduino
@@ -62,7 +63,7 @@ define Device/marsboard_a10-marsboard
   DEVICE_VENDOR := HAOYU Electronics
   DEVICE_MODEL := MarsBoard A10
   DEVICE_PACKAGES:=mod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi sound-soc-sunxi
-  SUNXI_DTS:=sun4i-a10-marsboard
+  SUNXI_SOC := sun4i
 endef
 
 TARGET_DEVICES += marsboard_a10-marsboard
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
