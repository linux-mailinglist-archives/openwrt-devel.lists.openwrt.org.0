Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430471E6575
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 17:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R9cCaVQWFVmMC5GNbEoM7e8BTR+4WA1BJVbnZNdfRwg=; b=MWdApvHTsVGAVh
	e1iZF5htX6Z97z/RRgJmTkKRsOrcesRJexO+6f8Zrhk5HBR/vMoUTqw+qcEZIRHbk3CP9yqmYhtxL
	Asj4nKLdwulRDtHNVJ66QJWOjmDL7sOJ170qkxblHVorTEVPvNNFcgZ4jD4khRmSLQVW09sPci1mI
	kzbXlUKH8dqbP+h73avYYz1ub2AC4Aka7xRHUS5sav1FMrpN525kaDXePxLy2T8AREsyGUew9KqT2
	zPwft23Q4ZKWaC4LiYwq4/iPRptv60zqWQpgUoe93YDxo8/9KgsWYTqmuqGmi8dHPwTIUt+FCi+lg
	GJ1RLwkae1qWHU9uJy8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeK6o-0004Bs-5N; Thu, 28 May 2020 15:06:14 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeK5N-00011x-L6
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 15:04:55 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeK8D-0000Vk-3L; Thu, 28 May 2020 15:07:41 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 08:04:42 -0700
Message-Id: <1590678282-28051-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_080445_903387_B0191379 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] kernel: iio: add drivers for st_lsm6dsx IMU
 MEMS sensors
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

Add kmod for the ST LSM6DSX IMU driver.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 package/kernel/linux/modules/iio.mk | 48 +++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index b52ec8c..5fbe2ee 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -364,6 +364,54 @@ endef
 $(eval $(call KernelPackage,iio-st_accel-spi))
 
 
+define KernelPackage/iio-lsm6dsx
+  SUBMENU:=$(IIO_MENU)
+  DEPENDS:=+kmod-iio-core +kmod-iio-kfifo-buf
+  TITLE:=ST LSM6DSx driver for IMU MEMS sensors
+  KCONFIG:=CONFIG_IIO_ST_LSM6DSX
+  FILES:=$(LINUX_DIR)/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.ko
+  AUTOLOAD:=$(call AutoProbe,st_lsm6dsx)
+endef
+
+define KernelPackage/iio-lsm6dsx/description
+ Support for the ST LSM6DSx and related IMU MEMS sensors.
+endef
+
+$(eval $(call KernelPackage,iio-lsm6dsx))
+
+
+define KernelPackage/iio-lsm6dsx-i2c
+  SUBMENU:=$(IIO_MENU)
+  DEPENDS:=+kmod-iio-lsm6dsx +kmod-i2c-core
+  TITLE:=ST LSM6DSx driver for IMU MEMS sensors (I2C)
+  KCONFIG:=CONFIG_IIO_ST_LSM6DSX
+  FILES:=$(LINUX_DIR)/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_i2c.ko
+  AUTOLOAD:=$(call AutoProbe,st_lsm6dsx-i2c)
+endef
+
+define KernelPackage/iio-lsm6dsx-i2c/description
+ Support for the ST LSM6DSx and related IMU MEMS I2C sensors.
+endef
+
+$(eval $(call KernelPackage,iio-lsm6dsx-i2c))
+
+
+define KernelPackage/iio-lsm6dsx-spi
+  SUBMENU:=$(IIO_MENU)
+  DEPENDS:=+kmod-iio-lsm6dsx +kmod-regmap-spi
+  TITLE:=ST LSM6DSx driver for IMU MEMS sensors (SPI)
+  KCONFIG:=CONFIG_IIO_ST_LSM6DSX
+  FILES:=$(LINUX_DIR)/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_spi.ko
+  AUTOLOAD:=$(call AutoProbe,st_lsm6dsx-spi)
+endef
+
+define KernelPackage/iio-lsm6dsx-spi/description
+ Support for the ST LSM6DSx and related IMU MEMS SPI sensors.
+endef
+
+$(eval $(call KernelPackage,iio-lsm6dsx-spi))
+
+
 define KernelPackage/iio-sps30
   SUBMENU:=$(IIO_MENU)
   DEPENDS:=@!LINUX_4_14 +kmod-i2c-core +kmod-iio-core +kmod-industrialio-triggered-buffer +kmod-lib-crc8
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
