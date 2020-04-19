Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5041AFA46
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 14:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDoqiyLCWAphRFWGXNeiPaAy2O1JM+Zo6qECXwVLDTw=; b=RHDm3Bj3lFeeJr
	l66Tx3CEHkcoPbVcJYemoYDARlsNXLfFh3qMAR+WcqUNgx9TfE6KRZ4fk56hrgsGJqOometTK/Ggp
	58jx4Ff4XdjMJWEn1YrdQLflVmVE/JtBnFUI3FZbdBzQVTwTfDGX+8DOyitLOgB2bbfc6ubSSjbT0
	p9Pi+bQONoQ7+nFm4YQ/w80VMN6XakM0NFF+nAxztN1Z+ApE+X6nMuK39pDBjWvsF1NORieQb7yBl
	Dk7Y0a8SzKaOJv7Zt1so696WmG7FHfJqBriQ+tMIGZ0q5Gm/QwljQKIRfOmqZ87ewQmXpLD+Y2vfD
	R40stIAAqt5AGyYAnMuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9Uz-0004G3-Iu; Sun, 19 Apr 2020 12:56:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9QM-0005wv-GA
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 12:51:56 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F35252A0D8D;
 Sun, 19 Apr 2020 13:51:46 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Sun, 19 Apr 2020 14:51:38 +0200
Message-Id: <20200419125140.1307309-8-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200419125140.1307309-1-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055150_718825_63CF20A3 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH 7/9] mtd: rawnand: bcm47xx: Simplify the
 init() function
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Boris Brezillon <bbrezillon@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The row and column sizes are now set as part of the exec_op() procedure
and adjusted to match the requested number of address cycles. No need
to set them in the init() function since those values will be
overwritten anyway. As for the other sanity check that was done on the
chip size, I don't think it's really needed.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  | 31 ++-----------------
 1 file changed, 2 insertions(+), 29 deletions(-)

diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
index 4e38b685d207..ab989de54cfc 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
@@ -237,10 +237,6 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 	u16 clock;
 	u8 w0, w1, w2, w3, w4;
 
-	unsigned long chipsize; /* MiB */
-	u8 tbits, col_bits, col_size, row_bits, row_bsize;
-	u32 val;
-
 	nand_controller_init(&b47n->base);
 	b47n->base.ops = &bcm47xxnflash_ops;
 	b47n->nand_chip.controller = &b47n->base;
@@ -274,32 +270,9 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 	err = nand_scan(&b47n->nand_chip, 1);
 	if (err) {
 		pr_err("Could not scan NAND flash: %d\n", err);
-		goto exit;
-	}
-
-	/* Configure FLASH */
-	chipsize = nanddev_target_size(&b47n->nand_chip.base) >> 20;
-	tbits = ffs(chipsize); /* find first bit set */
-	if (!tbits || tbits != fls(chipsize)) {
-		pr_err("Invalid flash size: 0x%lX\n", chipsize);
-		err = -ENOTSUPP;
-		goto exit;
-	}
-	tbits += 19; /* Broadcom increases *index* by 20, we increase *pos* */
-
-	col_bits = b47n->nand_chip.page_shift + 1;
-	col_size = (col_bits + 7) / 8;
-
-	row_bits = tbits - col_bits + 1;
-	row_bsize = (row_bits + 7) / 8;
-
-	val = CONF_ROW_BYTES(row_bsize) | CONF_COL_BYTES(col_size) |
-	      CONF_MAGIC_BIT;
-	bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_CONF, val);
-
-exit:
-	if (err)
 		bcma_cc_mask32(b47n->cc, BCMA_CC_4706_FLASHSCFG,
 			       ~BCMA_CC_4706_FLASHSCFG_NF1);
+	}
+
 	return err;
 }
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
