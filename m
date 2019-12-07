Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EEF115F54
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 23:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cZy3z87F3ExLm2FluOMMe/q1CcHOfuExWs+J+daBjPQ=; b=L5+2xr6AY+lM3Mu9zQiK62pdQv
	4/iQko3WFwseFSxqoPqJK5DyYVLjSBQPirlgY21mWU6BEvvonMEyux+8+Kwy1oql1fY939jkCVuV/
	3qFhAvIqHu8lg0e9RzOQqQ+vZ4h6oeL4GzYDa4o+YMoDHMEqba+rhhQdTmx4MWt9ACv91asPFLHAi
	t1ZNvLD54tyAPLXUdUasOyv1yZeXNEcxyLgkbDHjnJLswGHoJxjn1GfV+rF2A55xVWKNniuo7Tiuv
	BOs2d1hh650Csz2V/B8FhWpCrmeGFhj9d9mVF2zIp33E2hiM9gLk1jj0KRRlYfq8eT9lREsMbZlC8
	S3v0WETA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idiaF-0004z6-Jz; Sat, 07 Dec 2019 22:29:51 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idiZe-0004Sb-DN
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 22:29:18 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MLAZe-1iMjgd0A0Q-00IFsL for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Dec 2019 23:29:09 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Dec 2019 23:28:25 +0100
Message-Id: <20191207222826.47389-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
References: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:xVVD42PX0kv/g0+RjrWJnFQ8G3JJBn4o9HubRCLBC/IKFmahDS2
 rViJWUy5HZIxj3TQjfL6+k13WbREPz27m/K7QQME6LorGsN6ULM80R90FXRN+N2uywhDaRq
 +CNrK3wjsWAlE3q4lxC1XOkTJMDTkhiVtO3Oy4iBT33rB+0Jy3hXbvUG4kvnGdzSVusYME5
 ci0Y3e+/gsnmcxWOKU+cg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xiz/P7OYCc4=:cRJvjR3s4qTKx/JvrTk9KV
 4iY/dAuON/Z7/aRz+fdQ30J2LAvPDX7QulYzVhUj465AjqQg4lr+e+L1FzJB9Jic9VOBGKUfc
 D/vwN3GL04p29Hm+Z7bSP6kGViXrVRIRfkLbMkcoh/1li74KpJsbu7FGWfWdKOthDAQHaY40l
 wbx58d2HhvIXv02J/n/cA2+Jck2ZYGKpefRxCleMTzUQ274WFjC39u9vbyVWVBPqb/RWf9HoX
 xZ2k7FfRGHWbSnWaZdnWv++iX032yU6uCFcaYUqDNlAmkdxjrCsWtJBffO9F3SgabEe9OBGwG
 j9KP2Vt+aEPFwsu9fLR7SQ+r/YTxKRRaCXJiP1dSAnAxeD+xi8hHP5MTDN9Z/ibHIk5jff636
 pckVSFKWkXTGXsSvw4XhMMxwuWoCE5R+N/1bf9/NVdqJONLhjejFMG1R8o8IPa9UNpyLyJUHL
 dl+/YGanlE09GG4l6Fl/E8oXEacPoXkHzLiHjHkuWcJiAKgD6g8mRDwc7HyUrzuc6vMyUH2oq
 Y+vAtCocCTs3FpMzJmMyPAqfbT31q6Tfs3Jgwv63KgqIBGrWS4FEcinO3+orPqEM4XxpWoR0E
 t4lPUEOrbWgb1m+EhaCDvGjj80fCL9OhhbzRpgFTVifOd7C23DhuOcRAW+qvcUcVF+pvunNJh
 TGeCbvDP5X+BFM6BjxDWkyJ4/npX95rmsiEB1DKPmRvbw3fcFl9bALUlA0zjstxiNK3v6Qp54
 8ej1+OjorYitcFPo8zJA+llk/ycQyRvk2D92ry9EeT7Vs8SZe/S1l9ywrxG1AdVkFxVJBRd0N
 jvg2gLtcJ7dq9zYby94Qn3QrCQBSWk0vpHovH3wzWs1sEjwd1KYCjDdZ61Dy7w5AnhYRYDwr4
 Zy99XqJA+X2y3vDnmkNKmZFY+WhM7+AaBGsFfe3Jc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_142914_890637_15AF08E7 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] sunxi: use vendor_device scheme for
 device definitions
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

This changes device definition to resemble the vendor_device scheme
already present for the majority of device compatible strings.

By doing this, we achieve several advantages at once:
- Image names and node names are more consistent with other targets.
- SUPPORTED_DEVICES can be set automatically for all but two cases.
- Image names and node names are in line with DEVICE_TITLEs.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/boot/uboot-sunxi/Makefile      |  68 +++++++--------
 target/linux/sunxi/image/Makefile      |   1 +
 target/linux/sunxi/image/cortex-a53.mk |  28 +++----
 target/linux/sunxi/image/cortex-a7.mk  | 110 ++++++++++---------------
 target/linux/sunxi/image/cortex-a8.mk  |  29 +++----
 5 files changed, 103 insertions(+), 133 deletions(-)

diff --git a/package/boot/uboot-sunxi/Makefile b/package/boot/uboot-sunxi/Makefile
index 2c414f8c9e..ce39fe792d 100644
--- a/package/boot/uboot-sunxi/Makefile
+++ b/package/boot/uboot-sunxi/Makefile
@@ -28,67 +28,67 @@ endef
 define U-Boot/A10-OLinuXino-Lime
   BUILD_SUBTARGET:=cortexa8
   NAME:=A10 OLinuXino LIME
-  BUILD_DEVICES:=sun4i-a10-olinuxino-lime
+  BUILD_DEVICES:=olimex_a10-olinuxino-lime
 endef
 
 define U-Boot/A13-OLinuXino
   BUILD_SUBTARGET:=cortexa8
   NAME:=A13 OlinuXino
-  BUILD_DEVICES:=sun5i-a13-olinuxino
+  BUILD_DEVICES:=olimex_a13-olinuxino
 endef
 
 define U-Boot/A20-OLinuXino-Lime
   BUILD_SUBTARGET:=cortexa7
   NAME:=A20 OLinuXino LIME
-  BUILD_DEVICES:=sun7i-a20-olinuxino-lime
+  BUILD_DEVICES:=olimex_a20-olinuxino-lime
 endef
 
 define U-Boot/A20-OLinuXino-Lime2
   BUILD_SUBTARGET:=cortexa7
   NAME:=A20 OLinuXino LIME2
-  BUILD_DEVICES:=sun7i-a20-olinuxino-lime2
+  BUILD_DEVICES:=olimex_a20-olinuxino-lime2
 endef
 
 define U-Boot/A20-OLinuXino-Lime2-eMMC
   BUILD_SUBTARGET:=cortexa7
   NAME:=A20 OLinuXino LIME2 eMMC
-  BUILD_DEVICES:=sun7i-a20-olinuxino-lime2-emmc
+  BUILD_DEVICES:=olimex_a20-olinuxino-lime2-emmc
 endef
 
 define U-Boot/A20-OLinuXino_MICRO
   BUILD_SUBTARGET:=cortexa7
   NAME:=A20 OLinuXino MICRO
-  BUILD_DEVICES:=sun7i-a20-olinuxino-micro
+  BUILD_DEVICES:=olimex_a20-olinuxino-micro
 endef
 
 define U-Boot/Bananapi
   BUILD_SUBTARGET:=cortexa7
   NAME:=Bananapi
-  BUILD_DEVICES:=sun7i-a20-bananapi
+  BUILD_DEVICES:=lemaker_bananapi
 endef
 
 define U-Boot/Bananapro
   BUILD_SUBTARGET:=cortexa7
   NAME:=Bananapro
-  BUILD_DEVICES:=sun7i-a20-bananapro
+  BUILD_DEVICES:=lemaker_bananapro
 endef
 
 define U-Boot/Cubieboard
   BUILD_SUBTARGET:=cortexa8
   NAME:=Cubieboard
-  BUILD_DEVICES:=sun4i-a10-cubieboard
+  BUILD_DEVICES:=cubietech_a10-cubieboard
 endef
 
 define U-Boot/Cubieboard2
   BUILD_SUBTARGET:=cortexa7
   NAME:=Cubieboard2
-  BUILD_DEVICES:=sun7i-a20-cubieboard2
+  BUILD_DEVICES:=cubietech_cubieboard2
 endef
 
 define U-Boot/Cubietruck
   BUILD_SUBTARGET:=cortexa7
   NAME:=Cubietruck
-  BUILD_DEVICES:=sun7i-a20-cubietruck
+  BUILD_DEVICES:=cubietech_cubietruck
 endef
 
 define U-Boot/Hummingbird_A31
@@ -99,91 +99,91 @@ endef
 define U-Boot/Marsboard_A10
   BUILD_SUBTARGET:=cortexa8
   NAME:=Marsboard
-  BUILD_DEVICES:=sun4i-a10-marsboard
+  BUILD_DEVICES:=marsboard_a10-marsboard
 endef
 
 define U-Boot/Mele_M9
   BUILD_SUBTARGET:=cortexa7
   NAME:=Mele M9 (A31)
-  BUILD_DEVICES:=sun6i-a31-m9
+  BUILD_DEVICES:=mele_m9
 endef
 
 define U-Boot/OLIMEX_A13_SOM
   BUILD_SUBTARGET:=cortexa8
   NAME:=Olimex A13 SOM
-  BUILD_DEVICES:=sun5i-a13-olimex-som
+  BUILD_DEVICES:=olimex_a13-olimex-som
 endef
 
 define U-Boot/Linksprite_pcDuino
   BUILD_SUBTARGET:=cortexa8
   NAME:=Linksprite pcDuino
-  BUILD_DEVICES:=sun4i-a10-pcduino
+  BUILD_DEVICES:=linksprite_a10-pcduino
 endef
 
 define U-Boot/Linksprite_pcDuino3
   BUILD_SUBTARGET:=cortexa7
   NAME:=Linksprite pcDuino3
-  BUILD_DEVICES:=sun7i-a20-pcduino3
+  BUILD_DEVICES:=linksprite_pcduino3
 endef
 
 define U-Boot/Lamobo_R1
   BUILD_SUBTARGET:=cortexa7
   NAME:=Lamobo R1
-  BUILD_DEVICES:=sun7i-a20-lamobo-r1
+  BUILD_DEVICES:=lamobo_lamobo-r1
 endef
 
 define U-Boot/nanopi_m1_plus
   BUILD_SUBTARGET:=cortexa7
   NAME:=NanoPi M1 Plus (H3)
-  BUILD_DEVICES:=sun8i-h3-nanopi-m1-plus
+  BUILD_DEVICES:=friendlyarm_nanopi-m1-plus
 endef
 
 define U-Boot/nanopi_neo
   BUILD_SUBTARGET:=cortexa7
   NAME:=U-Boot for NanoPi NEO (H3)
-  BUILD_DEVICES:=sun8i-h3-nanopi-neo
+  BUILD_DEVICES:=friendlyarm_nanopi-neo
 endef
 
 define U-Boot/orangepi_r1
   BUILD_SUBTARGET:=cortexa7
   NAME:=Orange Pi R1 (H2+)
-  BUILD_DEVICES:=sun8i-h2-plus-orangepi-r1
+  BUILD_DEVICES:=xunlong_orangepi-r1
 endef
 
 define U-Boot/orangepi_zero
   BUILD_SUBTARGET:=cortexa7
   NAME:=Orange Pi Zero (H2+)
-  BUILD_DEVICES:=sun8i-h2-plus-orangepi-zero
+  BUILD_DEVICES:=xunlong_orangepi-zero
 endef
 
 define U-Boot/orangepi_one
   BUILD_SUBTARGET:=cortexa7
   NAME:=Orange Pi One (H3)
-  BUILD_DEVICES:=sun8i-h3-orangepi-one
+  BUILD_DEVICES:=xunlong_orangepi-one
 endef
 
 define U-Boot/orangepi_pc
   BUILD_SUBTARGET:=cortexa7
   NAME:=Orange Pi PC (H3)
-  BUILD_DEVICES:=sun8i-h3-orangepi-pc
+  BUILD_DEVICES:=xunlong_orangepi-pc
 endef
 
 define U-Boot/orangepi_pc_plus
   BUILD_SUBTARGET:=cortexa7
   NAME:=Orange Pi PC Plus (H3)
-  BUILD_DEVICES:=sun8i-h3-orangepi-pc-plus
+  BUILD_DEVICES:=xunlong_orangepi-pc-plus
 endef
 
 define U-Boot/orangepi_plus
   BUILD_SUBTARGET:=cortexa7
   NAME:=Orange Pi Plus (H3)
-  BUILD_DEVICES:=sun8i-h3-orangepi-plus
+  BUILD_DEVICES:=xunlong_orangepi-plus
 endef
 
 define U-Boot/orangepi_2
   BUILD_SUBTARGET:=cortexa7
   NAME:=Orange Pi 2 (H3)
-  BUILD_DEVICES:=sun8i-h3-orangepi-2
+  BUILD_DEVICES:=xunlong_orangepi-2
 endef
 
 define U-Boot/pangolin
@@ -195,7 +195,7 @@ endef
 define U-Boot/nanopi_neo_plus2
   BUILD_SUBTARGET:=cortexa53
   NAME:=NanoPi NEO Plus2 (H5)
-  BUILD_DEVICES:=sun50i-h5-nanopi-neo-plus2
+  BUILD_DEVICES:=friendlyarm_nanopi-neo-plus2
   DEPENDS:=+PACKAGE_u-boot-nanopi_neo_plus2:arm-trusted-firmware-sunxi
   UENV:=a64
 endef
@@ -203,7 +203,7 @@ endef
 define U-Boot/nanopi_neo2
   BUILD_SUBTARGET:=cortexa53
   NAME:=NanoPi NEO2 (H5)
-  BUILD_DEVICES:=sun50i-h5-nanopi-neo2
+  BUILD_DEVICES:=friendlyarm_nanopi-neo2
   DEPENDS:=+PACKAGE_u-boot-nanopi_neo2:arm-trusted-firmware-sunxi
   UENV:=a64
 endef
@@ -211,7 +211,7 @@ endef
 define U-Boot/pine64_plus
   BUILD_SUBTARGET:=cortexa53
   NAME:=Pine64 Plus A64
-  BUILD_DEVICES:=sun50i-a64-pine64-plus
+  BUILD_DEVICES:=pine64_pine64-plus
   DEPENDS:=+PACKAGE_u-boot-pine64_plus:arm-trusted-firmware-sunxi
   UENV:=a64
 endef
@@ -219,13 +219,13 @@ endef
 define U-Boot/Sinovoip_BPI_M2_Plus
   BUILD_SUBTARGET:=cortexa7
   NAME:=Bananapi M2 Plus
-  BUILD_DEVICES:=sun8i-h3-bananapi-m2-plus
+  BUILD_DEVICES:=sinovoip_bananapi-m2-plus
 endef
 
 define U-Boot/sopine_baseboard
   BUILD_SUBTARGET:=cortexa53
   NAME:=Sopine Baseboard
-  BUILD_DEVICES:=sun50i-a64-sopine-baseboard
+  BUILD_DEVICES:=pine64_sopine-baseboard
   DEPENDS:=+PACKAGE_u-boot-sopine_baseboard:arm-trusted-firmware-sunxi
   UENV:=a64
 endef
@@ -234,7 +234,7 @@ endef
 define U-Boot/orangepi_zero_plus
   BUILD_SUBTARGET:=cortexa53
   NAME:=Xunlong Orange Pi Zero Plus
-  BUILD_DEVICES:=sun50i-h5-orangepi-zero-plus
+  BUILD_DEVICES:=xunlong_orangepi-zero-plus
   DEPENDS:=+PACKAGE_u-boot-orangepi_zero_plus:arm-trusted-firmware-sunxi
   UENV:=a64
 endef
@@ -242,7 +242,7 @@ endef
 define U-Boot/orangepi_pc2
   BUILD_SUBTARGET:=cortexa53
   NAME:=Xunlong Orange Pi PC2
-  BUILD_DEVICES:=sun50i-h5-orangepi-pc2
+  BUILD_DEVICES:=xunlong_orangepi-pc2
   DEPENDS:=+PACKAGE_u-boot-orangepi_pc2:arm-trusted-firmware-sunxi
   UENV:=a64
 endef
@@ -250,7 +250,7 @@ endef
 define U-Boot/Sinovoip_BPI_M2_Ultra
   BUILD_SUBTARGET:=cortexa7
   NAME:=Bananapi M2 Ultra
-  BUILD_DEVICES:=sun8i-r40-bananapi-m2-ultra
+  BUILD_DEVICES:=lemaker_bananapi-m2-ultra
 endef
 
 UBOOT_TARGETS := \
diff --git a/target/linux/sunxi/image/Makefile b/target/linux/sunxi/image/Makefile
index 8f95c61906..04e0abee49 100644
--- a/target/linux/sunxi/image/Makefile
+++ b/target/linux/sunxi/image/Makefile
@@ -37,6 +37,7 @@ define Device/Default
   KERNEL := kernel-bin | uImage none
   IMAGES := sdcard.img.gz
   IMAGE/sdcard.img.gz := sunxi-sdcard | append-metadata | gzip
+  SUPPORTED_DEVICES := $(subst _,$(comma),$(1))
 endef
 
 include cortex-a7.mk
diff --git a/target/linux/sunxi/image/cortex-a53.mk b/target/linux/sunxi/image/cortex-a53.mk
index 7a67160c33..d6c17d95ff 100644
--- a/target/linux/sunxi/image/cortex-a53.mk
+++ b/target/linux/sunxi/image/cortex-a53.mk
@@ -7,7 +7,7 @@
 #
 ifeq ($(SUBTARGET),cortexa53)
 
-define Device/sun50i-h5-nanopi-neo-plus2
+define Device/friendlyarm_nanopi-neo-plus2
   DEVICE_VENDOR := FriendlyARM
   DEVICE_MODEL := NanoPi NEO Plus2
   SUPPORTED_DEVICES:=nanopi-neo-plus2
@@ -16,9 +16,9 @@ define Device/sun50i-h5-nanopi-neo-plus2
   KERNEL := kernel-bin
 endef
 
-TARGET_DEVICES += sun50i-h5-nanopi-neo-plus2
+TARGET_DEVICES += friendlyarm_nanopi-neo-plus2
 
-define Device/sun50i-h5-nanopi-neo2
+define Device/friendlyarm_nanopi-neo2
   DEVICE_VENDOR := FriendlyARM
   DEVICE_MODEL := NanoPi NEO2
   SUPPORTED_DEVICES:=nanopi-neo2
@@ -27,51 +27,47 @@ define Device/sun50i-h5-nanopi-neo2
   KERNEL := kernel-bin
 endef
 
-TARGET_DEVICES += sun50i-h5-nanopi-neo2
+TARGET_DEVICES += friendlyarm_nanopi-neo2
 
-define Device/sun50i-a64-pine64-plus
+define Device/pine64_pine64-plus
   DEVICE_VENDOR := Pine64
   DEVICE_MODEL := Pine64+
-  SUPPORTED_DEVICES:=pine64,pine64-plus
   SUNXI_DTS:=allwinner/sun50i-a64-pine64-plus
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
 
-TARGET_DEVICES += sun50i-a64-pine64-plus
+TARGET_DEVICES += pine64_pine64-plus
 
-define Device/sun50i-a64-sopine-baseboard
+define Device/pine64_sopine-baseboard
   DEVICE_VENDOR := Pine64
   DEVICE_MODEL := SoPine
-  SUPPORTED_DEVICES:=pine64,sopine-baseboard
   SUNXI_DTS:=allwinner/sun50i-a64-sopine-baseboard
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
 
-TARGET_DEVICES += sun50i-a64-sopine-baseboard
+TARGET_DEVICES += pine64_sopine-baseboard
 
 
-define Device/sun50i-h5-orangepi-zero-plus
+define Device/xunlong_orangepi-zero-plus
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi Zero Plus
-  SUPPORTED_DEVICES:=xunlong,orangepi-zero-plus
   SUNXI_DTS:=allwinner/sun50i-h5-orangepi-zero-plus
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
 
-TARGET_DEVICES += sun50i-h5-orangepi-zero-plus
+TARGET_DEVICES += xunlong_orangepi-zero-plus
 
-define Device/sun50i-h5-orangepi-pc2
+define Device/xunlong_orangepi-pc2
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi PC 2
-  SUPPORTED_DEVICES:=xunlong,orangepi-pc2
   SUNXI_DTS:=allwinner/sun50i-h5-orangepi-pc2
   KERNEL_NAME := Image
   KERNEL := kernel-bin
 endef
 
-TARGET_DEVICES += sun50i-h5-orangepi-pc2
+TARGET_DEVICES += xunlong_orangepi-pc2
 
 endif
diff --git a/target/linux/sunxi/image/cortex-a7.mk b/target/linux/sunxi/image/cortex-a7.mk
index 3375a4542c..32e094efb8 100644
--- a/target/linux/sunxi/image/cortex-a7.mk
+++ b/target/linux/sunxi/image/cortex-a7.mk
@@ -8,245 +8,223 @@
 
 ifeq ($(SUBTARGET),cortexa7)
 
-define Device/sun7i-a20-olinuxino-lime
+define Device/olimex_a20-olinuxino-lime
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A20-OLinuXino-LIME
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=olimex,a20-olinuxino-lime
   SUNXI_DTS:=sun7i-a20-olinuxino-lime
 endef
 
-TARGET_DEVICES += sun7i-a20-olinuxino-lime
+TARGET_DEVICES += olimex_a20-olinuxino-lime
 
 
-define Device/sun7i-a20-olinuxino-lime2
+define Device/olimex_a20-olinuxino-lime2
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A20-OLinuXino-LIME2
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi kmod-usb-hid
-  SUPPORTED_DEVICES:=olimex,a20-olinuxino-lime2
   SUNXI_DTS:=sun7i-a20-olinuxino-lime2
 endef
 
-TARGET_DEVICES += sun7i-a20-olinuxino-lime2
+TARGET_DEVICES += olimex_a20-olinuxino-lime2
 
 
-define Device/sun7i-a20-olinuxino-lime2-emmc
+define Device/olimex_a20-olinuxino-lime2-emmc
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A20-OLinuXino-LIME2
   DEVICE_VARIANT := eMMC
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi kmod-usb-hid
-  SUPPORTED_DEVICES:=olimex,a20-olinuxino-lime2-emmc
   SUNXI_DTS:=sun7i-a20-olinuxino-lime2-emmc
 endef
 
-TARGET_DEVICES += sun7i-a20-olinuxino-lime2-emmc
+TARGET_DEVICES += olimex_a20-olinuxino-lime2-emmc
 
 
-define Device/sun7i-a20-olinuxino-micro
+define Device/olimex_a20-olinuxino-micro
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A20-OLinuXino-MICRO
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=olimex,a20-olinuxino-micro
   SUNXI_DTS:=sun7i-a20-olinuxino-micro
 endef
 
-TARGET_DEVICES += sun7i-a20-olinuxino-micro
+TARGET_DEVICES += olimex_a20-olinuxino-micro
 
 
-define Device/sun7i-a20-bananapi
+define Device/lemaker_bananapi
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pi
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi
-  SUPPORTED_DEVICES:=lemaker,bananapi
   SUNXI_DTS:=sun7i-a20-bananapi
 endef
 
-TARGET_DEVICES += sun7i-a20-bananapi
+TARGET_DEVICES += lemaker_bananapi
 
 
-define Device/sun7i-a20-bananapro
+define Device/lemaker_bananapro
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pro
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi kmod-brcmfmac
-  SUPPORTED_DEVICES:=lemaker,bananapro
   SUNXI_DTS:=sun7i-a20-bananapro
 endef
 
-TARGET_DEVICES += sun7i-a20-bananapro
+TARGET_DEVICES += lemaker_bananapro
 
 
-define Device/sun7i-a20-cubieboard2
+define Device/cubietech_cubieboard2
   DEVICE_VENDOR := Cubietech
   DEVICE_MODEL := Cubieboard2
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=cubietech,cubieboard2
   SUNXI_DTS:=sun7i-a20-cubieboard2
 endef
 
-TARGET_DEVICES += sun7i-a20-cubieboard2
+TARGET_DEVICES += cubietech_cubieboard2
 
 
-define Device/sun7i-a20-cubietruck
+define Device/cubietech_cubietruck
   DEVICE_VENDOR := Cubietech
   DEVICE_MODEL := Cubietruck
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-rtc-sunxi kmod-brcmfmac
-  SUPPORTED_DEVICES:=cubietech,cubietruck
   SUNXI_DTS:=sun7i-a20-cubietruck
 endef
 
-TARGET_DEVICES += sun7i-a20-cubietruck
+TARGET_DEVICES += cubietech_cubietruck
 
 
-define Device/sun7i-a20-lamobo-r1
+define Device/lamobo_lamobo-r1
   DEVICE_VENDOR := Lamobo
   DEVICE_MODEL := Lamobo R1
   DEVICE_PACKAGES:=kmod-ata-sunxi kmod-rtl8192cu swconfig wpad-basic
-  SUPPORTED_DEVICES:=lamobo,lamobo-r1
   SUNXI_DTS:=sun7i-a20-lamobo-r1
 endef
 
-TARGET_DEVICES += sun7i-a20-lamobo-r1
+TARGET_DEVICES += lamobo_lamobo-r1
 
 
-define Device/sun6i-a31-m9
+define Device/mele_m9
   DEVICE_VENDOR := Mele
   DEVICE_MODEL := M9
   DEVICE_PACKAGES:=kmod-sun4i-emac kmod-rtc-sunxi kmod-rtl8192cu
-  SUPPORTED_DEVICES:=mele,m9
   SUNXI_DTS:=sun6i-a31-m9
 endef
 
-TARGET_DEVICES += sun6i-a31-m9
+TARGET_DEVICES += mele_m9
 
 
-define Device/sun8i-h2-plus-orangepi-zero
+define Device/xunlong_orangepi-zero
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi Zero
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=xunlong,orangepi-zero
   SUNXI_DTS:=sun8i-h2-plus-orangepi-zero
 endef
 
-TARGET_DEVICES += sun8i-h2-plus-orangepi-zero
+TARGET_DEVICES += xunlong_orangepi-zero
 
 
-define Device/sun8i-h2-plus-orangepi-r1
+define Device/xunlong_orangepi-r1
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi R1
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-usb-net kmod-usb-net-rtl8152
-  SUPPORTED_DEVICES:=xunlong,orangepi-r1
   SUNXI_DTS:=sun8i-h2-plus-orangepi-r1
 endef
 
-TARGET_DEVICES += sun8i-h2-plus-orangepi-r1
+TARGET_DEVICES += xunlong_orangepi-r1
 
-define Device/sun8i-h3-bananapi-m2-plus
+define Device/sinovoip_bananapi-m2-plus
   DEVICE_VENDOR := Sinovoip
   DEVICE_MODEL := Banana Pi M2+
   DEVICE_PACKAGES:=kmod-rtc-sunxi \
 	kmod-leds-gpio kmod-ledtrig-heartbeat \
 	kmod-brcmfmac brcmfmac-firmware-43430a0-sdio wpad-basic
-  SUPPORTED_DEVICES:=sinovoip,bananapi-m2-plus
   SUNXI_DTS:=sun8i-h3-bananapi-m2-plus
 endef
 
-TARGET_DEVICES += sun8i-h3-bananapi-m2-plus
+TARGET_DEVICES += sinovoip_bananapi-m2-plus
 
-define Device/sun8i-h3-nanopi-m1-plus
+define Device/friendlyarm_nanopi-m1-plus
   DEVICE_VENDOR := FriendlyARM
   DEVICE_MODEL := NanoPi M1 Plus
   DEVICE_PACKAGES:=kmod-rtc-sunxi \
 	kmod-leds-gpio kmod-ledtrig-heartbeat \
 	kmod-brcmfmac brcmfmac-firmware-43430-sdio wpad-basic
-  SUPPORTED_DEVICES:=friendlyarm,nanopi-m1-plus
   SUNXI_DTS:=sun8i-h3-nanopi-m1-plus
 endef
 
-TARGET_DEVICES += sun8i-h3-nanopi-m1-plus
+TARGET_DEVICES += friendlyarm_nanopi-m1-plus
 
 
-define Device/sun8i-h3-nanopi-neo
+define Device/friendlyarm_nanopi-neo
   DEVICE_VENDOR := FriendlyARM
   DEVICE_MODEL := NanoPi NEO
-  SUPPORTED_DEVICES:=friendlyarm,nanopi-neo
   SUNXI_DTS:=sun8i-h3-nanopi-neo
 endef
 
-TARGET_DEVICES += sun8i-h3-nanopi-neo
+TARGET_DEVICES += friendlyarm_nanopi-neo
 
 
-define Device/sun8i-h3-orangepi-one
+define Device/xunlong_orangepi-one
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi One
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=xunlong,orangepi-one
   SUNXI_DTS:=sun8i-h3-orangepi-one
 endef
 
-TARGET_DEVICES += sun8i-h3-orangepi-one
+TARGET_DEVICES += xunlong_orangepi-one
 
 
-define Device/sun8i-h3-orangepi-pc
+define Device/xunlong_orangepi-pc
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi PC
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-gpio-button-hotplug
-  SUPPORTED_DEVICES:=xunlong,orangepi-pc
   SUNXI_DTS:=sun8i-h3-orangepi-pc
 endef
 
-TARGET_DEVICES += sun8i-h3-orangepi-pc
+TARGET_DEVICES += xunlong_orangepi-pc
 
 
-define Device/sun8i-h3-orangepi-pc-plus
+define Device/xunlong_orangepi-pc-plus
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi PC Plus
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-gpio-button-hotplug
-  SUPPORTED_DEVICES:=xunlong,orangepi-pc-plus
   SUNXI_DTS:=sun8i-h3-orangepi-pc-plus
 endef
 
-TARGET_DEVICES += sun8i-h3-orangepi-pc-plus
+TARGET_DEVICES += xunlong_orangepi-pc-plus
 
 
-define Device/sun8i-h3-orangepi-plus
+define Device/xunlong_orangepi-plus
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi Plus
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=xunlong,orangepi-plus
   SUNXI_DTS:=sun8i-h3-orangepi-plus
 endef
 
-TARGET_DEVICES += sun8i-h3-orangepi-plus
+TARGET_DEVICES += xunlong_orangepi-plus
 
-define Device/sun8i-h3-orangepi-2
+define Device/xunlong_orangepi-2
   DEVICE_VENDOR := Xunlong
   DEVICE_MODEL := Orange Pi 2
   DEVICE_PACKAGES:=kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=xunlong,orangepi-2
   SUNXI_DTS:=sun8i-h3-orangepi-2
 endef
 
-TARGET_DEVICES += sun8i-h3-orangepi-2
+TARGET_DEVICES += xunlong_orangepi-2
 
 
-define Device/sun7i-a20-pcduino3
+define Device/linksprite_pcduino3
   DEVICE_VENDOR := LinkSprite
   DEVICE_MODEL := pcDuino3
   DEVICE_PACKAGES:=kmod-sun4i-emac kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi kmod-rtl8xxxu rtl8188eu-firmware
-  SUPPORTED_DEVICES:=linksprite,pcduino3
   SUNXI_DTS:=sun7i-a20-pcduino3
 endef
 
-TARGET_DEVICES += sun7i-a20-pcduino3
+TARGET_DEVICES += linksprite_pcduino3
 
-define Device/sun8i-r40-bananapi-m2-ultra
+define Device/lemaker_bananapi-m2-ultra
   DEVICE_VENDOR := LeMaker
   DEVICE_MODEL := Banana Pi M2 Ultra
   DEVICE_PACKAGES:=kmod-rtc-sunxi kmod-ata-core kmod-ata-sunxi
-  SUPPORTED_DEVICES:=lemaker,bananapi-m2-ultra
   SUNXI_DTS:=sun8i-r40-bananapi-m2-ultra
 endef
 
-TARGET_DEVICES += sun8i-r40-bananapi-m2-ultra
+TARGET_DEVICES += lemaker_bananapi-m2-ultra
 
 endif
diff --git a/target/linux/sunxi/image/cortex-a8.mk b/target/linux/sunxi/image/cortex-a8.mk
index 4eeaab99d1..073ed8f2d1 100644
--- a/target/linux/sunxi/image/cortex-a8.mk
+++ b/target/linux/sunxi/image/cortex-a8.mk
@@ -7,18 +7,17 @@
 #
 ifeq ($(SUBTARGET),cortexa8)
 
-define Device/sun4i-a10-olinuxino-lime
+define Device/olimex_a10-olinuxino-lime
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A10-OLinuXino-LIME
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=olimex,a10-olinuxino-lime
   SUNXI_DTS:=sun4i-a10-olinuxino-lime
 endef
 
-TARGET_DEVICES += sun4i-a10-olinuxino-lime
+TARGET_DEVICES += olimex_a10-olinuxino-lime
 
 
-define Device/sun5i-a13-olimex-som
+define Device/olimex_a13-olimex-som
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A13-SOM
   DEVICE_PACKAGES:=kmod-rtl8192cu
@@ -26,50 +25,46 @@ define Device/sun5i-a13-olimex-som
   SUNXI_DTS:=sun5i-a13-olinuxino
 endef
 
-TARGET_DEVICES += sun5i-a13-olimex-som
+TARGET_DEVICES += olimex_a13-olimex-som
 
 
-define Device/sun5i-a13-olinuxino
+define Device/olimex_a13-olinuxino
   DEVICE_VENDOR := Olimex
   DEVICE_MODEL := A13-OLinuXino
   DEVICE_PACKAGES:=kmod-rtl8192cu
-  SUPPORTED_DEVICES:=olimex,a13-olinuxino
   SUNXI_DTS:=sun5i-a13-olinuxino
 endef
 
-TARGET_DEVICES += sun5i-a13-olinuxino
+TARGET_DEVICES += olimex_a13-olinuxino
 
 
-define Device/sun4i-a10-cubieboard
+define Device/cubietech_a10-cubieboard
   DEVICE_VENDOR := Cubietech
   DEVICE_MODEL := Cubieboard
   DEVICE_PACKAGES:=kmod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi
-  SUPPORTED_DEVICES:=cubietech,a10-cubieboard
   SUNXI_DTS:=sun4i-a10-cubieboard
 endef
 
-TARGET_DEVICES += sun4i-a10-cubieboard
+TARGET_DEVICES += cubietech_a10-cubieboard
 
 
-define Device/sun4i-a10-pcduino
+define Device/linksprite_a10-pcduino
   DEVICE_VENDOR := LinkSprite
   DEVICE_MODEL := pcDuino
   DEVICE_PACKAGES:=kmod-sun4i-emac kmod-rtc-sunxi kmod-rtl8192cu
-  SUPPORTED_DEVICES:=linksprite,a10-pcduino
   SUNXI_DTS:=sun4i-a10-pcduino
 endef
 
-TARGET_DEVICES += sun4i-a10-pcduino
+TARGET_DEVICES += linksprite_a10-pcduino
 
 
-define Device/sun4i-a10-marsboard
+define Device/marsboard_a10-marsboard
   DEVICE_VENDOR := HAOYU Electronics
   DEVICE_MODEL := MarsBoard A10
   DEVICE_PACKAGES:=mod-ata-core kmod-ata-sunxi kmod-sun4i-emac kmod-rtc-sunxi sound-soc-sunxi
-  SUPPORTED_DEVICES:=marsboard,a10-marsboard
   SUNXI_DTS:=sun4i-a10-marsboard
 endef
 
-TARGET_DEVICES += sun4i-a10-marsboard
+TARGET_DEVICES += marsboard_a10-marsboard
 
 endif
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
