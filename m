Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7AB1E655C
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 17:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MoOKiiMdT+qpdZZVxogdw+rVAip4ej9oTSDPlj1rw48=; b=TOeLI+oBcGomKI
	D0T95biwGnApFgR3g1pGy495RXMHS4dkepDUmkOnNC9an4msB8gGM1hGVlhd3eDXxmGoL3vCHJgZ4
	j7CqwUV8QcHPIwI9kPF2xUZvYZ6mgz1KTpSkXvKY1iAEpK/Hw0JgFCNuEvOYcCXlrZnrt3I9prvOq
	95L0Oz7Ws96eVGZzyCoz/QL0oUH5tRyrAcEQQdJ28v1abLU/cwk61LdhVtchBIrfNrgDzrtPpJPey
	LDRYFKQzRTVDz6SkJmAHDOJDwI5O50PXFP9uHvAA4QZwNs6J96M0YeFTHhTdD/ntvMjmpy+V5x8bp
	MLtGRcgKf+iqKL0E6hmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeK45-0008Cy-B1; Thu, 28 May 2020 15:03:25 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeK2s-0007eZ-JD
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 15:02:13 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeK5c-0000Vd-Nz; Thu, 28 May 2020 15:05:00 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 08:02:01 -0700
Message-Id: <1590678121-27637-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_080210_711643_B90A3C29 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] kernel: iio: fix st_accel_{i2c, spi} driver
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
Cc: Tim Harvey <tharvey@gateworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add missing kernel module and rename driver

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 package/kernel/linux/modules/iio.mk | 46 ++++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 21 deletions(-)

diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index 17ffdc3..b52ec8c 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -328,20 +328,40 @@ endef
 $(eval $(call KernelPackage,iio-st_accel))
 
 
-define KernelPackage/iio-st_sensors-i2c
+define KernelPackage/iio-st_accel-i2c
   SUBMENU:=$(IIO_MENU)
   TITLE:=STMicroelectronics accelerometer 3-Axis Driver (I2C)
   DEPENDS:=+kmod-iio-st_accel +kmod-i2c-core +kmod-regmap-i2c
   KCONFIG:= CONFIG_IIO_ST_ACCEL_I2C_3AXIS
-  FILES:=$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors_i2c.ko
-  AUTOLOAD:=$(call AutoLoad,56,st_sensors_i2c)
+  FILES:= \
+	$(LINUX_DIR)/drivers/iio/accel/st_accel_i2c.ko \
+	$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors_i2c.ko
+  AUTOLOAD:=$(call AutoLoad,56,st_accel_i2c)
 endef
 
-define KernelPackage/iio-st_sensors-i2c/description
+define KernelPackage/iio-st_accel-i2c/description
  This package adds support for STMicroelectronics I2C based accelerometers
 endef
 
-$(eval $(call KernelPackage,iio-st_sensors-i2c))
+$(eval $(call KernelPackage,iio-st_accel-i2c))
+
+
+define KernelPackage/iio-st_accel-spi
+  SUBMENU:=$(IIO_MENU)
+  TITLE:=STMicroelectronics accelerometer 3-Axis Driver (SPI)
+  DEPENDS:=+kmod-iio-st_accel +kmod-regmap-spi
+  KCONFIG:= CONFIG_IIO_ST_ACCEL_SPI_3AXIS
+  FILES:= \
+	$(LINUX_DIR)/drivers/iio/accel/st_accel_spi.ko \
+	$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors_spi.ko
+  AUTOLOAD:=$(call AutoLoad,56,st_accel_spi)
+endef
+
+define KernelPackage/iio-st_accel-spi/description
+ This package adds support for STMicroelectronics SPI based accelerometers
+endef
+
+$(eval $(call KernelPackage,iio-st_accel-spi))
 
 
 define KernelPackage/iio-sps30
@@ -360,22 +380,6 @@ endef
 $(eval $(call KernelPackage,iio-sps30))
 
 
-define KernelPackage/iio-st_sensors-spi
-  SUBMENU:=$(IIO_MENU)
-  TITLE:=STMicroelectronics accelerometer 3-Axis Driver (SPI)
-  DEPENDS:=+kmod-iio-st_accel +kmod-regmap-spi
-  KCONFIG:= CONFIG_IIO_ST_ACCEL_SPI_3AXIS
-  FILES:=$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors_spi.ko
-  AUTOLOAD:=$(call AutoLoad,56,st_sensors_spi)
-endef
-
-define KernelPackage/iio-st_sensors-spi/description
- This package adds support for STMicroelectronics SPI based accelerometers
-endef
-
-$(eval $(call KernelPackage,iio-st_sensors-spi))
-
-
 define KernelPackage/iio-tsl4531
   SUBMENU:=$(IIO_MENU)
   DEPENDS:=+kmod-i2c-core +kmod-iio-core
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
