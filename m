Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981C519E4B
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 15:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hu8kYLkgjYEnsQRXorjgSSFNbTOhUTLY2HaJqMLPhmY=; b=m2XpO7365y2Bm6
	6MkWKwpU311TzSor3HCBKXYsoNAgToQ4DyZngtNJxsxWLyekXknn0k4q7at04H7OwM7diyaJTP9kL
	0YS8cr+BAnydxVXk96iNX7GBHidKBC2xqYQXXv7prCvOU5dxCeFmwwTnNS97V1CU8843K7xsS0Ikl
	O8Jdky9ToAqZ2qjqLvITts7rPuyTzLv+x5wQp/cFkjitTh5SXYxmVfsdKKScvA06FCj915GooZ8gb
	XbGePgA0S50C+g6kQOdqKmfkBkaAH05IAEqqp3C4i9A63eCfkOZX4V5T4jj9Iu6hMJNvYM+ipFD6Q
	GPXZObhwOpeghx928VLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5ge-0007RQ-IN; Fri, 10 May 2019 13:35:44 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5gX-0007R4-TW
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 13:35:39 +0000
Received: from localhost.localdomain (184-23-191-143.vpn.dynamic.sonic.net
 [184.23.191.143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id 073CE40DAC;
 Fri, 10 May 2019 06:35:35 -0700 (PDT)
From: lede@allycomm.com
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 06:25:45 -0700
Message-Id: <20190510132545.30808-1-lede@allycomm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_063537_959009_C94BB85C 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ath79: Remove NAND targets as no available
 drivers
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Jeff Kletsky <git-commits@allycomm.com>

Prior to Linux 4.19 there will be no driver support for SPI NAND

Remove the non-bootable GL.iNet AR300M from nand.mk
so images are not generated.

Based on work with the GL.iNet AR750S, the GL.iNet AR300M, NAND-based
board definition and DTS should be reexamined, as well as the NAND port
completed prior to its reintroduction.

Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
---
 target/linux/ath79/image/nand.mk | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
index eee419194b..30e0c72008 100644
--- a/target/linux/ath79/image/nand.mk
+++ b/target/linux/ath79/image/nand.mk
@@ -1,13 +1 @@
-define Device/glinet_gl-ar300m-nand
-  ATH_SOC := qca9531
-  DEVICE_TITLE := GL-AR300M (NAND)
-  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
-  KERNEL_SIZE := 2048k
-  BLOCKSIZE := 128k
-  PAGESIZE := 2048
-  VID_HDR_OFFSET := 512
-  IMAGES += factory.ubi
-  IMAGE/sysupgrade.bin := sysupgrade-tar
-  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
-endef
-TARGET_DEVICES += glinet_gl-ar300m-nand
+# There is no driver support on ath79 for SPI NAND prior to Linux 4.19
-- 
2.11.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
