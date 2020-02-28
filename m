Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DE8173DB9
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 17:56:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J3cu5whFGXVdx9EzfE5XZjIxKdYIylf+ScEBipRo7xU=; b=eEl5aHOC0iI5sk
	GfZ215F7c23LxT+2z77NIFYyXZ4YAE0LHf2oYzHWc/yESLZUxn+b3aD4niw7HuKAeogM7IrzC+Vs5
	gYsIjEGSDwP0z22MQjG6Qh+zBK9pEwi/ms7hyCltk9fZMdnYv4C69C4rsVLa6sqWOmMBG/+k5vD1R
	HDuhWOPoUcHVkpXTLXMXJFMeZB0MJ4kofpjQ3y2bLp005ZG6OA/wiTvCR7MPmv40JsHL490c0oZBv
	/5XpMhFPTpQihuMoJp08zl8Xd4IcZIfd6xXXNs1jBi9HWGrnwdA3sVYPnugb/FCk/GPmt7yZNk72v
	cn7PoYi8VAEw5tE1j8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iwF-0005GA-Q9; Fri, 28 Feb 2020 16:56:35 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iw8-0005FT-Qt
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 16:56:30 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j7ix9-0004yU-VQ; Fri, 28 Feb 2020 16:57:32 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 28 Feb 2020 08:56:24 -0800
Message-Id: <1582908984-28003-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_085628_911009_17FCEB28 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] kernel: iio: add st-accel driver modules
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

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 package/kernel/linux/modules/iio.mk | 54 +++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index cd46697..aaccbde 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -278,6 +278,60 @@ endef
 $(eval $(call KernelPackage,iio-si7020))
 
 
+define KernelPackage/iio-st_accel
+  SUBMENU:=$(IIO_MENU)
+  TITLE:=STMicroelectronics accelerometer 3-Axis Driver
+  DEPENDS:=+kmod-iio-core
+  KCONFIG:= \
+	CONFIG_IIO_ST_ACCEL_3AXIS \
+	CONFIG_IIO_ST_SENSORS_CORE
+  FILES:= \
+	$(LINUX_DIR)/drivers/iio/accel/st_accel.ko \
+	$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors.ko
+endef
+
+define KernelPackage/iio-st_accel/description
+ This package adds support for STMicroelectronics accelerometers:
+  LSM303DLH, LSM303DLHC, LIS3DH, LSM330D, LSM330DL, LSM330DLC,
+  LIS331DLH, LSM303DL, LSM303DLM, LSM330, LIS2DH12, H3LIS331DL,
+  LNG2DM, LIS3DE, LIS2DE12
+endef
+
+$(eval $(call KernelPackage,iio-st_accel))
+
+
+define KernelPackage/iio-st_sensors-i2c
+  SUBMENU:=$(IIO_MENU)
+  TITLE:=STMicroelectronics accelerometer 3-Axis Driver (I2C)
+  DEPENDS:=+kmod-iio-st_accel +kmod-i2c-core
+  KCONFIG:= CONFIG_IIO_ST_ACCEL_I2C_3AXIS
+  FILES:=$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors_i2c.ko
+  AUTOLOAD:=$(call AutoLoad,56,st_sensors_i2c)
+endef
+
+define KernelPackage/iio-st_sensors-i2c/description
+ This package adds support for STMicroelectronics I2C based accelerometers
+endef
+
+$(eval $(call KernelPackage,iio-st_sensors-i2c))
+
+
+define KernelPackage/iio-st_sensors-spi
+  SUBMENU:=$(IIO_MENU)
+  TITLE:=STMicroelectronics accelerometer 3-Axis Driver (SPI)
+  DEPENDS:=+kmod-iio-st_accel
+  KCONFIG:= CONFIG_IIO_ST_ACCEL_SPI_3AXIS
+  FILES:=$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors_spi.ko
+  AUTOLOAD:=$(call AutoLoad,56,st_sensors_spi)
+endef
+
+define KernelPackage/iio-st_sensors-spi/description
+ This package adds support for STMicroelectronics SPI based accelerometers
+endef
+
+$(eval $(call KernelPackage,iio-st_sensors-spi))
+
+
 define KernelPackage/iio-tsl4531
   SUBMENU:=$(IIO_MENU)
   DEPENDS:=+kmod-i2c-core +kmod-iio-core
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
