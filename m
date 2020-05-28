Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE6A1E6311
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 15:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ywBBburItwL76vR4eXuMlt0xOilL+XWTCuEEXs9KFM=; b=JzIFQDBhY3pd6U
	n52+56IUr+MY4+XpYEDc9vAWJ+xwZ84dvYNF58jvJRy2zen7HKc30ZrH+DgzB3MiLzDJX3HY547vE
	QKqrpMh09QXfl1lsG7MhfQlPvSj1DV7xs6Ggkvfu7NNADTj41+1rLIEHg/OUdd0gUj4wXRiisk99X
	I1sZJCe1l6JzYiCoHWIyk4DkmHABoJVJTLjMRiK5MIUfUaaG6AQFIH1m/Q5Q0ERnZhaSZj3kmAlUw
	e22LDBk+9UEMLbHjFpQla32XWyiGdeNuKpKAyeDod53RgMr6wZTE1DyW5+xWTs3t7+Xo4BH0UC1H9
	ei3VHrlnBLPMSFHOmthg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJ27-0007YB-Hn; Thu, 28 May 2020 13:57:19 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJ1z-0007U9-TU
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 13:57:13 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeJ4S-0000Pi-UA; Thu, 28 May 2020 13:59:45 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 06:56:44 -0700
Message-Id: <1590674204-26618-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_065711_990006_8768BB77 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] imx6: add I2C retries for ventana i2c1
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

The GSC sitting on i2c1 can NAK I2C transactions if it is busy
performing an ADC cycle. Allow enough retries to work around this.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 ...x-add-retries-for-NAK-s-on-ventana-boards.patch | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch

diff --git a/target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch b/target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch
new file mode 100644
index 0000000..5f45342
--- /dev/null
+++ b/target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch
@@ -0,0 +1,42 @@
+From be183fc2af49e6020bb0b1ac8359351707383f63 Mon Sep 17 00:00:00 2001
+From: Tim Harvey <tharvey@gateworks.com>
+Date: Tue, 12 May 2020 12:41:32 -0700
+Subject: [PATCH] i2c: imx: add retries for NAK's on ventana boards
+
+Ventana boards have a Gateworks System Controller (gsc) module that can
+nak i2c transactions when its busy in an ADC loop. In order to not have to
+hack up the pca953x and ds1672 device drivers which the GSC emulates we will
+just add i2c retries around NAK's.
+
+Signed-off-by: Tim Harvey <tharvey@gateworks.com>
+---
+ drivers/i2c/busses/i2c-imx.c | 6 ++++++
+ 1 file changed, 6 insertions(+)
+
+diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
+index a3b6133..b2378d8 100644
+--- a/drivers/i2c/busses/i2c-imx.c
++++ b/drivers/i2c/busses/i2c-imx.c
+@@ -467,6 +467,8 @@ static int i2c_imx_acked(struct imx_i2c_struct *i2c_imx)
+ {
+ 	if (imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR) & I2SR_RXAK) {
+ 		dev_dbg(&i2c_imx->adapter.dev, "<%s> No ACK\n", __func__);
++		if (i2c_imx->adapter.retries)
++			return -EAGAIN;
+ 		return -ENXIO;  /* No ACK */
+ 	}
+ 
+@@ -1097,6 +1099,10 @@ static int i2c_imx_probe(struct platform_device *pdev)
+ 	i2c_imx->adapter.dev.of_node	= pdev->dev.of_node;
+ 	i2c_imx->base			= base;
+ 	ACPI_COMPANION_SET(&i2c_imx->adapter.dev, ACPI_COMPANION(&pdev->dev));
++	if (of_machine_is_compatible("gw,ventana") && phy_addr == 0x021a0000) {
++		dev_info(&pdev->dev, "Adding retries for Ventana GSC\n");
++		i2c_imx->adapter.retries = 3;
++	}
+ 
+ 	/* Get I2C clock */
+ 	i2c_imx->clk = devm_clk_get(&pdev->dev, NULL);
+-- 
+2.7.4
+
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
