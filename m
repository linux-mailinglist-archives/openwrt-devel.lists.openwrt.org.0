Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5EF1AFE97
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 00:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FICyQP60eAcjEWAIKKQ8HDGMXMfMJf/aqWIzb6mWQ30=; b=awCeb5FiyaNNqd
	Q91+anw/6ZVQbUWVbp/UQe/L9PQaKarYqjQobDBAQO+2NCsxBf1GWqJpb9GkZgaWUbMmfxG1+coAn
	llbNRkJh5cZu8eYYO3vsiBL8V7zzXjsLlsupy830/pz0tBbvNKxQIYcwNkWdWXE1X9lIkS+iCqxkt
	tcTlVPfV7KBHHTN7NL/vARET3sWQe+aD7qcXYHpPovMu8oVF5Hn+yghuHjZ5Fl8/NYb7GSGIDAlQI
	svMwluQ7Eq3qoNIigTbm23DonM25fnJP3EuDiBINJzs4Ayc+dCxrKHwcjzasRWDcoV7WUMG9ZWr3W
	89Rm3xVD44JaD2lD5eNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQIKR-0001gm-E2; Sun, 19 Apr 2020 22:22:19 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQIKJ-0001fM-8K
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 22:22:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587334925;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=mgwHndPtqzKmp4lquRvhqPNxNHdG30bw2n8K5J3XC7E=;
 b=Ll5QFQcToi82r+wfKwuVgyvYJ66nhwLNmbSgnu5ovJC6qkz6hsngJzSVYaCOIZ56it
 CPNvdm2VA/L3zzhvEBpix6+nEnRaP+5WdsJI0FmEJnIFs8XTKlgkMIjE+EpdgBI5jcbJ
 GAMSi46/lf0eoDhD3wUbsKlwtaqSvdS4f2zHN9EixCtX2i/IWtMlrCQ21mOmyg8ZnTzh
 2d2GVtM11arz4rjVmhUJCsSzwohprI7pzE6lLX+WXG05m57qoqQHGv3hEprUxFlgp8fF
 4/psatisDzjQtwy49a5YgoKgEQb1jXuwHoXHTXReZnwLGUxkz65u3soT1aUPEVMaHSWA
 ZzXQ==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGbO3oK8Gj1q7Xl7CzN"
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 46.5.0 DYNA|AUTH)
 with ESMTPSA id c06e60w3JMM57RU
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Mon, 20 Apr 2020 00:22:05 +0200 (CEST)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 9777C14A477;
 Mon, 20 Apr 2020 00:22:03 +0200 (CEST)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 Apr 2020 00:21:59 +0200
Message-Id: <20200419222159.6333-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_152211_891134_F8B20357 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] uboot-mxs: bump to v2020.04
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
Cc: Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Also update the U-Boot BSP patch for I2SE Duckbill devices.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 package/boot/uboot-mxs/Makefile               |  4 +-
 .../patches/001-add-i2se-duckbill.patch       | 66 ++++++++++---------
 2 files changed, 36 insertions(+), 34 deletions(-)

diff --git a/package/boot/uboot-mxs/Makefile b/package/boot/uboot-mxs/Makefile
index 3112d673d4..2a202dca8f 100644
--- a/package/boot/uboot-mxs/Makefile
+++ b/package/boot/uboot-mxs/Makefile
@@ -8,10 +8,10 @@
 include $(TOPDIR)/rules.mk
 include $(INCLUDE_DIR)/kernel.mk
 
-PKG_VERSION:=2020.01
+PKG_VERSION:=2020.04
 PKG_RELEASE:=1
 
-PKG_HASH:=aa453c603208b1b27bd03525775a7f79b443adec577fdc6e8f06974025a135f1
+PKG_HASH:=fe732aaf037d9cc3c0909bad8362af366ae964bbdac6913a34081ff4ad565372
 
 include $(INCLUDE_DIR)/u-boot.mk
 include $(INCLUDE_DIR)/package.mk
diff --git a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
index 033c843202..50702cb3cb 100644
--- a/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
+++ b/package/boot/uboot-mxs/patches/001-add-i2se-duckbill.patch
@@ -1,6 +1,6 @@
-From b66c70cd15fa02297b94d928970932ef62c2ff02 Mon Sep 17 00:00:00 2001
+From 83ee930c18b068c9a16b66c01aaa5d6e06570152 Mon Sep 17 00:00:00 2001
 From: Michael Heimpold <mhei@heimpold.de>
-Date: Sun, 3 Nov 2019 00:50:21 +0100
+Date: Sun, 19 Apr 2020 02:46:46 +0200
 Subject: [PATCH] arm: mxs: add support for I2SE's Duckbill boards
 
 The Duckbill devices are small, pen-drive sized boards based on
@@ -28,13 +28,13 @@ Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
 ---
  arch/arm/mach-imx/mxs/Kconfig   |   5 +
  board/i2se/duckbill/Kconfig     |  15 +++
- board/i2se/duckbill/MAINTAINERS |   6 ++
+ board/i2se/duckbill/MAINTAINERS |   6 +
  board/i2se/duckbill/Makefile    |  10 ++
- board/i2se/duckbill/duckbill.c  | 186 ++++++++++++++++++++++++++++++++
- board/i2se/duckbill/iomux.c     | 156 +++++++++++++++++++++++++++
- configs/duckbill_defconfig      |  41 +++++++
- include/configs/duckbill.h      | 176 ++++++++++++++++++++++++++++++
- 8 files changed, 595 insertions(+)
+ board/i2se/duckbill/duckbill.c  | 189 ++++++++++++++++++++++++++++++++
+ board/i2se/duckbill/iomux.c     | 157 ++++++++++++++++++++++++++
+ configs/duckbill_defconfig      |  43 ++++++++
+ include/configs/duckbill.h      | 172 +++++++++++++++++++++++++++++
+ 8 files changed, 597 insertions(+)
  create mode 100644 board/i2se/duckbill/Kconfig
  create mode 100644 board/i2se/duckbill/MAINTAINERS
  create mode 100644 board/i2se/duckbill/Makefile
@@ -44,7 +44,7 @@ Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
  create mode 100644 include/configs/duckbill.h
 
 diff --git a/arch/arm/mach-imx/mxs/Kconfig b/arch/arm/mach-imx/mxs/Kconfig
-index 68072d5a1f..82aaa3ef76 100644
+index b90d7b6e41..e7d8bc6792 100644
 --- a/arch/arm/mach-imx/mxs/Kconfig
 +++ b/arch/arm/mach-imx/mxs/Kconfig
 @@ -50,6 +50,10 @@ config TARGET_APX4DEVKIT
@@ -58,14 +58,14 @@ index 68072d5a1f..82aaa3ef76 100644
  config TARGET_MX28EVK
  	bool "Support mx28evk"
  	select BOARD_EARLY_INIT_F
-@@ -67,6 +71,7 @@ config SYS_SOC
+@@ -70,6 +74,7 @@ config SYS_SOC
  
  source "board/bluegiga/apx4devkit/Kconfig"
  source "board/freescale/mx28evk/Kconfig"
 +source "board/i2se/duckbill/Kconfig"
+ source "board/liebherr/xea/Kconfig"
  source "board/ppcag/bg0900/Kconfig"
  source "board/schulercontrol/sc_sps_1/Kconfig"
- source "board/technologic/ts4600/Kconfig"
 diff --git a/board/i2se/duckbill/Kconfig b/board/i2se/duckbill/Kconfig
 new file mode 100644
 index 0000000000..98c1e4689f
@@ -101,13 +101,13 @@ index 0000000000..5496baa330
 +F:	configs/duckbill_defconfig
 diff --git a/board/i2se/duckbill/Makefile b/board/i2se/duckbill/Makefile
 new file mode 100644
-index 0000000000..0079eb413c
+index 0000000000..11bac98e4c
 --- /dev/null
 +++ b/board/i2se/duckbill/Makefile
 @@ -0,0 +1,10 @@
 +# SPDX-License-Identifier: GPL-2.0+
 +#
-+# (C) Copyright 2014-2019
++# (C) Copyright 2014-2020
 +# Michael Heimpold, mhei@heimpold.de.
 +
 +ifndef	CONFIG_SPL_BUILD
@@ -117,15 +117,15 @@ index 0000000000..0079eb413c
 +endif
 diff --git a/board/i2se/duckbill/duckbill.c b/board/i2se/duckbill/duckbill.c
 new file mode 100644
-index 0000000000..f93c372611
+index 0000000000..93defc6c28
 --- /dev/null
 +++ b/board/i2se/duckbill/duckbill.c
-@@ -0,0 +1,186 @@
+@@ -0,0 +1,189 @@
 +// SPDX-License-Identifier: GPL-2.0+
 +/*
 + * I2SE Duckbill board
 + *
-+ * (C) Copyright 2014-2019 Michael Heimpold <mhei@heimpold.de>
++ * Copyright (C) 2014-2020 Michael Heimpold <mhei@heimpold.de>
 + */
 +
 +#include <common.h>
@@ -177,14 +177,14 @@ index 0000000000..f93c372611
 +	return 0;
 +}
 +
-+#ifdef	CONFIG_CMD_MMC
++#ifdef CONFIG_CMD_MMC
 +int board_mmc_init(bd_t *bis)
 +{
 +	return mxsmmc_initialize(bis, 0, NULL, NULL);
 +}
 +#endif
 +
-+#ifdef	CONFIG_CMD_NET
++#ifdef CONFIG_CMD_NET
 +int board_eth_init(bd_t *bis)
 +{
 +	unsigned int reset_gpio;
@@ -198,6 +198,7 @@ index 0000000000..f93c372611
 +		reset_gpio = MX28_PAD_GPMI_ALE__GPIO_0_26;
 +
 +	/* Reset PHY */
++	gpio_request(reset_gpio, "enet0_phy_rst");
 +	gpio_direction_output(reset_gpio, 0);
 +	udelay(200);
 +	gpio_set_value(reset_gpio, 1);
@@ -270,6 +271,7 @@ index 0000000000..f93c372611
 +	char *s;
 +
 +	/* Board revision detection */
++	gpio_request(MX28_PAD_LCD_D17__GPIO_1_17, "board_revision");
 +	gpio_direction_input(MX28_PAD_LCD_D17__GPIO_1_17);
 +
 +	/* MX28_PAD_LCD_D17__GPIO_1_17: v1 = pull-down, v2 = pull-up */
@@ -290,6 +292,7 @@ index 0000000000..f93c372611
 +		led_red_gpio = MX28_PAD_AUART1_RX__GPIO_3_4;
 +	else
 +		led_red_gpio = MX28_PAD_SAIF0_LRCLK__GPIO_3_21;
++	gpio_request(led_red_gpio, "led_red");
 +	gpio_direction_output(led_red_gpio, 1);
 +
 +	if (system_rev == 1)
@@ -309,15 +312,15 @@ index 0000000000..f93c372611
 +}
 diff --git a/board/i2se/duckbill/iomux.c b/board/i2se/duckbill/iomux.c
 new file mode 100644
-index 0000000000..1db3c52c34
+index 0000000000..c6cc211181
 --- /dev/null
 +++ b/board/i2se/duckbill/iomux.c
-@@ -0,0 +1,156 @@
+@@ -0,0 +1,157 @@
 +// SPDX-License-Identifier: GPL-2.0+
 +/*
 + * I2SE Duckbill IOMUX setup
 + *
-+ * Copyright (C) 2013-2019 Michael Heimpold <mhei@heimpold.de>
++ * Copyright (C) 2013-2020 Michael Heimpold <mhei@heimpold.de>
 + */
 +
 +#include <common.h>
@@ -462,6 +465,7 @@ index 0000000000..1db3c52c34
 +{
 +	mxs_common_spl_init(arg, resptr, iomux_setup, ARRAY_SIZE(iomux_setup));
 +
++	gpio_request(MX28_PAD_LCD_D17__GPIO_1_17, "board_revision");
 +	gpio_direction_input(MX28_PAD_LCD_D17__GPIO_1_17);
 +
 +	if (gpio_get_value(MX28_PAD_LCD_D17__GPIO_1_17))
@@ -471,10 +475,10 @@ index 0000000000..1db3c52c34
 +}
 diff --git a/configs/duckbill_defconfig b/configs/duckbill_defconfig
 new file mode 100644
-index 0000000000..fcdec4f3c7
+index 0000000000..b2d7fbcf77
 --- /dev/null
 +++ b/configs/duckbill_defconfig
-@@ -0,0 +1,41 @@
+@@ -0,0 +1,43 @@
 +CONFIG_ARM=y
 +CONFIG_ARCH_MX28=y
 +CONFIG_SYS_TEXT_BASE=0x40002000
@@ -510,6 +514,8 @@ index 0000000000..fcdec4f3c7
 +CONFIG_CMD_FS_GENERIC=y
 +CONFIG_DOS_PARTITION=y
 +CONFIG_ENV_IS_IN_MMC=y
++CONFIG_SYS_REDUNDAND_ENVIRONMENT=y
++CONFIG_ENV_OFFSET_REDUND=0x40000
 +CONFIG_SYS_RELOC_GD_ENV_ADDR=y
 +CONFIG_MXS_GPIO=y
 +CONFIG_MMC_MXS=y
@@ -518,13 +524,13 @@ index 0000000000..fcdec4f3c7
 +CONFIG_OF_LIBFDT=y
 diff --git a/include/configs/duckbill.h b/include/configs/duckbill.h
 new file mode 100644
-index 0000000000..76da1008b8
+index 0000000000..565d8c58b7
 --- /dev/null
 +++ b/include/configs/duckbill.h
-@@ -0,0 +1,176 @@
+@@ -0,0 +1,172 @@
 +/* SPDX-License-Identifier: GPL-2.0+ */
 +/*
-+ * Copyright (C) 2014-2019 Michael Heimpold <mhei@heimpold.de>
++ * Copyright (C) 2014-2020 Michael Heimpold <mhei@heimpold.de>
 + *
 + */
 +#ifndef __CONFIGS_DUCKBILL_H__
@@ -545,7 +551,6 @@ index 0000000000..76da1008b8
 +/* Environment is in MMC */
 +#define CONFIG_ENV_OVERWRITE
 +#define CONFIG_SYS_MMC_ENV_DEV		0
-+#define CONFIG_SYS_REDUNDAND_ENVIRONMENT
 +
 +/* FEC Ethernet on SoC */
 +#ifdef CONFIG_CMD_NET
@@ -622,9 +627,6 @@ index 0000000000..76da1008b8
 +		"else " \
 +			"echo Firmware Update OK; " \
 +		"fi; setenv error\0" \
-+	"erase_mmc=mmc erase 0 2\0" \
-+	"erase_env1=mmc erase 100 100\0" \
-+	"erase_env2=mmc erase 200 100\0" \
 +	"image=zImage\0" \
 +	"console=ttyAMA0\0" \
 +	"fdt_addr=0x41000000\0" \
@@ -637,8 +639,8 @@ index 0000000000..76da1008b8
 +	"mmcargs=setenv bootargs console=${console},${baudrate} " \
 +		"root=${mmcroot} " \
 +		"rootwait bootsys=${bootsys} panic=1 ${extraargs}\0" \
-+	"loadimage=ext4load mmc ${mmcdev}:${mmcpart} ${loadaddr} /boot/${image}\0" \
-+	"loadfdt=ext4load mmc ${mmcdev}:${mmcpart} ${fdt_addr} /boot/${fdt_file}\0" \
++	"loadimage=load mmc ${mmcdev}:${mmcpart} ${loadaddr} /boot/${image}\0" \
++	"loadfdt=load mmc ${mmcdev}:${mmcpart} ${fdt_addr} /boot/${fdt_file}\0" \
 +	"mmcboot=echo Booting from mmc ...; " \
 +		"setexpr mmcpart 1 + ${bootsys}; " \
 +		"setenv mmcroot /dev/mmcblk0p${mmcpart}; " \
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
