Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC001E650D
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 16:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iVfMZk41McS2HjD47/OLHlqUneeB2KZRLNysTsK+zv4=; b=bQu7eG74+CsbB1
	/RqpN7wF9I5VWWvvHpoCLyavOJ9F3NmY2LdiC4fp+feEiSexOwMN3HrbmpSKYwtdgI11vOczlZD7H
	6w9rXlSmPJNHBdN/p2iyxXdB+1fgIbWqM1SUzE+u+4Hfup1qc68vgHJeOweuF3yFqLP+Zj57IWTKz
	uJgYkhb6HFZ8RQgBfIc8ssX/8MxB2exL69wGS/D2IeJ1uBjJ0Rtcdl9oyei5WQe7V8ddoiU9qOnAX
	39ju+Y+5qaDDE77HIUnzrQFMXmHIu3JGFGyGqPSiwFrBXo6tyYb2DtbZSAM25ozAldc+jYg/UTEzO
	8j4xKJI2hU59EbREyP0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJzx-0003la-Mv; Thu, 28 May 2020 14:59:09 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJzo-0003jz-HL
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 14:59:01 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeK2V-0000VW-OK; Thu, 28 May 2020 15:01:47 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 07:58:49 -0700
Message-Id: <1590677929-27159-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_075900_611567_464635B6 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] octeontx: fix mcp251x can controller
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

Update the can-mcp251x-convert-to-half-duplex-SPI patch to fix reception

Some SPI host controllers such as the Cavium Thunder TX do not support
full-duplex SPI. Using half-duplex transfers allows the driver to work
with those host controllers.

This patch fixes the fact that mcp251x_hw_rx_frame was still relying on
a full-duplex transfer where bits were being shifted on MOSI at the same time
as MISO. After splitting the transaction into a spi_write_then_read() care
must be taken to ignore the first byte.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 ...03-can-mcp251x-convert-to-half-duplex-SPI.patch | 31 +++++++++++++++++-----
 1 file changed, 24 insertions(+), 7 deletions(-)

diff --git a/target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch b/target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch
index 6096fcf..54906b7 100644
--- a/target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch
+++ b/target/linux/octeontx/patches-5.4/0003-can-mcp251x-convert-to-half-duplex-SPI.patch
@@ -1,20 +1,22 @@
-From 6edfb172ff1dd3cfc84c19790c245a4005474bb7 Mon Sep 17 00:00:00 2001
+From 097cc81ee5c15913ad330baffff2e3dea09bdad0 Mon Sep 17 00:00:00 2001
 From: Tim Harvey <tharvey@gateworks.com>
-Date: Tue, 25 Feb 2020 12:01:36 -0800
-Subject: [PATCH 03/12] can: mcp251x: convert to half-duplex SPI
+Date: Thu, 30 Aug 2018 15:16:08 -0700
+Subject: [PATCH] can: mcp251x: convert driver to half-duplex SPI
 
-Some SPI host controllers such as the Cavium Thunder do not support
+Some SPI host controllers such as the Cavium Thunder TX do not support
 full-duplex SPI. Using half-duplex transfers allows the driver to work
 with those host controllers.
 
 Signed-off-by: Tim Harvey <tharvey@gateworks.com>
 ---
- drivers/net/can/spi/mcp251x.c | 10 +++++-----
- 1 file changed, 5 insertions(+), 5 deletions(-)
+ drivers/net/can/spi/mcp251x.c | 15 ++++++++-------
+ 1 file changed, 8 insertions(+), 7 deletions(-)
 
+diff --git a/drivers/net/can/spi/mcp251x.c b/drivers/net/can/spi/mcp251x.c
+index bb20a9b..dc0574a 100644
 --- a/drivers/net/can/spi/mcp251x.c
 +++ b/drivers/net/can/spi/mcp251x.c
-@@ -291,23 +291,23 @@ static u8 mcp251x_read_reg(struct spi_de
+@@ -291,23 +291,23 @@ static u8 mcp251x_read_reg(struct spi_device *spi, u8 reg)
  	priv->spi_tx_buf[0] = INSTRUCTION_READ;
  	priv->spi_tx_buf[1] = reg;
  
@@ -43,3 +45,18 @@ Signed-off-by: Tim Harvey <tharvey@gateworks.com>
  }
  
  static void mcp251x_write_reg(struct spi_device *spi, u8 reg, u8 val)
+@@ -398,8 +398,9 @@ static void mcp251x_hw_rx_frame(struct spi_device *spi, u8 *buf,
+ 			buf[i] = mcp251x_read_reg(spi, RXBCTRL(buf_idx) + i);
+ 	} else {
+ 		priv->spi_tx_buf[RXBCTRL_OFF] = INSTRUCTION_READ_RXB(buf_idx);
+-		mcp251x_spi_trans(spi, SPI_TRANSFER_BUF_LEN);
+-		memcpy(buf, priv->spi_rx_buf, SPI_TRANSFER_BUF_LEN);
++		spi_write_then_read(spi, priv->spi_tx_buf, 1, priv->spi_rx_buf,
++				    SPI_TRANSFER_BUF_LEN);
++		memcpy(buf + 1, priv->spi_rx_buf, SPI_TRANSFER_BUF_LEN - 1);
+ 	}
+ }
+ 
+-- 
+2.7.4
+
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
