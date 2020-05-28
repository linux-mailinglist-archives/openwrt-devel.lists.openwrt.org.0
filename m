Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22EE1E6312
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 May 2020 15:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GqllGporpNWqcYCoaR+SokGWvXrJcJjPlURE4Q9JY78=; b=YzDIPQTtI2/ZKH
	DBcY3FEoOeaeMzuRG4/Gj5Ow0XQ6/NOckylyQaNlIfYs2YJvrovXe3zTVgEEQhnlakkvxU78aLloM
	mzhh/m379q7qkbxOnfuT5yYsuZcMHjPL8hw1IDg1fm+JqQP2BWtD7jO1bCqtwQFeaDiaxxSr8c6og
	glHoCZLVKkTbLzniYp4MiM8xPtG/rqKVyxyUVtv8YGVrdr9r4/B4wNv02JFZ+59Ahh56+HuaBtXVL
	WB/o2Ke9MzKOvwA5JMCloCHo5NG5S3+jPcyzKwKqKkqnzPOtPhJr4YIkJuNsgrt4X0fW3gWKU/hVM
	KDscqJl2+F6ox7FIIbtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJ2J-0007lF-4Z; Thu, 28 May 2020 13:57:31 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJ22-0007YA-OQ
 for openwrt-devel@lists.openwrt.org; Thu, 28 May 2020 13:57:15 +0000
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1jeJ4m-0000Pl-Ps; Thu, 28 May 2020 14:00:04 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 28 May 2020 06:57:05 -0700
Message-Id: <1590674225-5014-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_065714_842910_00C165DD 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] imx6: image: increase max ubifs file-system
 size
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

The latest 2GiB NAND flash parts used by Gateworks ventana are 2K page-size.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 target/linux/imx6/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/imx6/image/Makefile b/target/linux/imx6/image/Makefile
index 232dc42..2c9d03c 100644
--- a/target/linux/imx6/image/Makefile
+++ b/target/linux/imx6/image/Makefile
@@ -35,7 +35,7 @@ define Build/boot-overlay
 
 	$(STAGING_DIR_HOST)/bin/mkfs.ubifs \
 		--space-fixup --compr=zlib --squash-uids \
-		$(MKUBIFS_OPTS) -c 8124 \
+		$(MKUBIFS_OPTS) -c 16248 \
 		-o $@.boot.ubifs -d $@.boot
 
 	$(TAR) -C $@.boot -cf $@.boot.tar .
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
