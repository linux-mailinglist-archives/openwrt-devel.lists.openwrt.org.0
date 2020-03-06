Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB0317C82B
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 23:10:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g5ong+vFhrgaaqgRVlQT/uRgEp4myKNuZQRFCq695w8=; b=tb05EDmSrhPqZi
	V6CwG+PoEtRyzMSx4tUXPQOH+A0WO+dZtgKNlfYqI0k4ZrL9GftB3c/H3dUPhhxTQRTSW32jfNEPe
	Xovs5spBi8Im35X8LFySwIrHy/PDEpLtFrpSj2dvp810N3pRz327nlo6ZWS902j/qwnc+FfXsDexs
	xCKeLKxi4Jy6SLjIRmSo6THhma6DbWiaR+yq7jy1qSUwl0qMWB+GW9FjPxYCoSdNzJK2GN44W3fdg
	Ys3/1Zif+HA9MnRdYtI+6bi4cIBIjvZ14IO/tY0rB0n56S47oYbz6uSZ3hxQ2beoJP/Hb4U38T+at
	SlTJKhMMvJ1s4NcKjSUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jALAw-0007bC-13; Fri, 06 Mar 2020 22:10:34 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jALAc-0007Us-Ph
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 22:10:16 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jALBg-0000L2-NV; Fri, 06 Mar 2020 22:11:20 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Date: Fri,  6 Mar 2020 14:10:05 -0800
Message-Id: <1583532605-30146-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_141014_899204_7B09FACB 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [OpenWrt-devel][PATCH] kernel: iio: fix
 iio-st_sensors-spi missing dependency
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

Fixes following build error on octeontx:

Package kmod-iio-st_sensors-spi is missing dependencies for the following libraries:
regmap-spi.ko

Fixes: 2d8f4c4fbd46 ("kernel: iio: add st-accel driver modules")
Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 package/kernel/linux/modules/iio.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/kernel/linux/modules/iio.mk b/package/kernel/linux/modules/iio.mk
index 0d30321..2d8be46 100644
--- a/package/kernel/linux/modules/iio.mk
+++ b/package/kernel/linux/modules/iio.mk
@@ -319,7 +319,7 @@ $(eval $(call KernelPackage,iio-st_sensors-i2c))
 define KernelPackage/iio-st_sensors-spi
   SUBMENU:=$(IIO_MENU)
   TITLE:=STMicroelectronics accelerometer 3-Axis Driver (SPI)
-  DEPENDS:=+kmod-iio-st_accel
+  DEPENDS:=+kmod-iio-st_accel +kmod-regmap-spi
   KCONFIG:= CONFIG_IIO_ST_ACCEL_SPI_3AXIS
   FILES:=$(LINUX_DIR)/drivers/iio/common/st_sensors/st_sensors_spi.ko
   AUTOLOAD:=$(call AutoLoad,56,st_sensors_spi)
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
