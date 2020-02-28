Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3670173FEE
	for <lists+openwrt-devel@lfdr.de>; Fri, 28 Feb 2020 19:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7h+ZL0rQAJYZD5l0WysfDmFeJ/G0OyKpwszs/gO6bk=; b=A2ybXhJxZpaJRn
	3rVKz3QR6c7jsgP85B8O4VielL0djXxgjxc/izmk8BgsYR4dOV70X5ShdxgbsHpqFV5BIdHHfgfeV
	WXFeczVAaLpiGqcrhdXJFH5ViIOYqp/G0UpbCvcyLj0rNoF2PRElNzWvmVdEZsOpTt6JUvhfst2BV
	uXG+lEgS0yA9hF8ydkAlDkfqkTlKpxo0pUXVbV011du6/wFmY3p9h6ENmBqZ4JIboXBjf9WtK3mkD
	OaNJ7C1+oucDFFCf473tboIsYI7ZvW6Ocnm6sOhHogx8lwI2QEB2eHp8w+CP/6m+yWiU91R6lvO8V
	Ug7U16YKwekRMsZ/oU4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7kiD-0004pS-EL; Fri, 28 Feb 2020 18:50:13 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ki4-0004FD-PR
 for openwrt-devel@lists.openwrt.org; Fri, 28 Feb 2020 18:50:06 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j7kj1-0005IB-NA; Fri, 28 Feb 2020 18:51:03 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 28 Feb 2020 10:49:54 -0800
Message-Id: <1582915794-29886-2-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582915794-29886-1-git-send-email-tharvey@gateworks.com>
References: <1582915794-29886-1-git-send-email-tharvey@gateworks.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_105004_872395_4FB16C5A 
X-CRM114-Status: UNSURE (   5.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] kernel: iio: add fxos8700 driver support
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
 package/kernel/linux/modules/iio.mk | 50 +++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index cd46697..558abf4 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -294,3 +294,53 @@ define KernelPackage/iio-tsl4531/description
 endef
 
 $(eval $(call KernelPackage,iio-tsl4531))
+
+
+define KernelPackage/iio-fxos8700
+  SUBMENU:=$(IIO_MENU)
+  TITLE:=Freescale FXOS8700 3-axis accelerometer driver
+  DEPENDS:=+kmod-iio-core +kmod-regmap-core
+  KCONFIG:= CONFIG_FXOS8700
+  FILES:=$(LINUX_DIR)/drivers/iio/imu/fxos8700_core.ko
+  AUTOLOAD:=$(call AutoLoad,56,fxos8700)
+endef
+
+define KernelPackage/iio-fxos8700/description
+ Support for Freescale FXOS8700 3-axis accelerometer.
+endef
+
+$(eval $(call KernelPackage,iio-fxos8700))
+
+
+define KernelPackage/iio-fxos8700-i2c
+  SUBMENU:=$(IIO_MENU)
+  TITLE:=Freescale FXOS8700 3-axis acceleromter driver (I2C)
+  DEPENDS:=+kmod-iio-fxos8700 +kmod-i2c-core +kmod-regmap-i2c
+  KCONFIG:= CONFIG_FXOS8700_I2C
+  FILES:=$(LINUX_DIR)/drivers/iio/imu/fxos8700_i2c.ko
+  AUTOLOAD:=$(call AutoLoad,56,fxos8700_i2c)
+endef
+
+define KernelPackage/iio-fxos8700-i2c/description
+ Support for Freescale FXOS8700 3-axis accelerometer
+ connected via I2C.
+endef
+
+
+$(eval $(call KernelPackage,iio-fxos8700-i2c))
+
+define KernelPackage/iio-fxos8700-spi
+  SUBMENU:=$(IIO_MENU)
+  DEPENDS:=+kmod-iio-fxos8700 +kmod-regmap-spi
+  TITLE:=Freescale FXOS8700 3-axis accelerometer driver (SPI)
+  KCONFIG:= CONFIG_FXOS8700_SPI
+  FILES:=$(LINUX_DIR)/drivers/iio/imu/fxos8700_spi.ko
+  AUTOLOAD:=$(call AutoLoad,56,fxos8700_spi)
+endef
+
+define KernelPackage/iio-fxos8700-spi/description
+ Support for Freescale FXOS8700 3-axis accelerometer
+ connected via SPI.
+endef
+
+$(eval $(call KernelPackage,iio-fxos8700-spi))
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
