Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941261AFA34
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 14:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXHutioS6AFSWX/zI1OB4B74d9FP3RniqIsWAahgAIg=; b=IHzrTKgRdRJVbH
	51R6R+P6RcN6uWhb0zVQ8j8nIo7C13nDorCDe7thkC6TAhrJAXhRlJlEHhgOANJj5ml3nlNolfLFX
	L+2SlmrTko3qMEfZEt+4Fh/FxxqcHgjDdcaRz2N5QOvgYLxDps1z8I09mVPvjwFkL2b1h8AqoRWdo
	SFn/bkJs+JXyNGQRtNvxRs/U7qB3to9fIN+/+V/lvn3/HAFd7brCL7Er9LkBMPfREhUmcwnc15PA2
	Mio5QKa/NjokizfeKDpBBAurCV5jMsV03lhHVO8RDmAHsu20WIHZCD+d03wteWrUoRY1ulE7olUhd
	2hb6VNhiP7ikwO+I+slg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9Sl-0008I8-AQ; Sun, 19 Apr 2020 12:54:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9QJ-0005sq-9w
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 12:51:52 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CD6A12A0D69;
 Sun, 19 Apr 2020 13:51:45 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Sun, 19 Apr 2020 14:51:35 +0200
Message-Id: <20200419125140.1307309-5-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200419125140.1307309-1-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055147_599997_D77E68C5 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH 4/9] mtd: rawnand: bcm47xx: Demistify a few
 more things
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

There were a few places were raw hex values were used instead of the
macro def.

We also add macros to help forming the conf value (note that we still
have one magic bit whose meaning I couldn't extract from the code), and
add an extra macro to specify the number of DATA cycles to issue when
the READ or WRITE flag is set.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  | 34 +++++++++++++++----
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
index 591775173034..fbb7acebc8f7 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
@@ -25,12 +25,29 @@
 #define NCTL_CMD1W			0x00080000
 #define NCTL_READ			0x00100000
 #define NCTL_WRITE			0x00200000
+/* When the SPECADDR is set CMD1 is interpreted as a single ADDR cycle */
 #define NCTL_SPECADDR			0x01000000
 #define NCTL_READY			0x04000000
 #define NCTL_ERR			0x08000000
+/*
+ * Number of DATA cycles to issue when NCTL_{READ,WRITE} is set. The minimum
+ * value is 1 and the maximum value is 4. Those bytes are then stored in the
+ * BCMA_CC_NFLASH_DATA register.
+ */
+#define NCTL_DATA_CYCLES(x)		((((x) - 1) & 0x3) << 28)
+/*
+ * The CS pin seems to be asserted even if NCTL_CSA is not set. All this bit
+ * seems to encode is whether the CS line should stay asserted after the
+ * operation has been executed. In other words, you should only set it if if
+ * you intend to do more operations on the NAND bus.
+ */
 #define NCTL_CSA			0x40000000
 #define NCTL_START			0x80000000
 
+#define CONF_MAGIC_BIT			0x00000002
+#define CONF_COL_BYTES(x)		(((x) - 1) << 4)
+#define CONF_ROW_BYTES(x)		(((x) - 1) << 6)
+
 /**************************************************
  * Various helpers
  **************************************************/
@@ -118,7 +135,7 @@ static void bcm47xxnflash_ops_bcm4706_read(struct mtd_info *mtd, uint8_t *buf,
 
 		/* Eventually read some data :) */
 		for (i = 0; i < toread; i += 4, dest++) {
-			ctlcode = NCTL_CSA | 0x30000000 | NCTL_READ;
+			ctlcode = NCTL_CSA | NCTL_DATA_CYCLES(4) | NCTL_READ;
 			if (i == toread - 4) /* Last read goes without that */
 				ctlcode &= ~NCTL_CSA;
 			if (bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc,
@@ -150,7 +167,7 @@ static void bcm47xxnflash_ops_bcm4706_write(struct mtd_info *mtd,
 	for (i = 0; i < len; i += 4, data++) {
 		bcma_cc_write32(cc, BCMA_CC_NFLASH_DATA, *data);
 
-		ctlcode = NCTL_CSA | 0x30000000 | NCTL_WRITE;
+		ctlcode = NCTL_CSA | NCTL_DATA_CYCLES(4) | NCTL_WRITE;
 		if (i == len - 4) /* Last read goes without that */
 			ctlcode &= ~NCTL_CSA;
 		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, ctlcode)) {
@@ -229,7 +246,7 @@ static void bcm47xxnflash_ops_bcm4706_cmdfunc(struct nand_chip *nand_chip,
 		nand_wait_ready(nand_chip);
 		break;
 	case NAND_CMD_READID:
-		ctlcode = NCTL_CSA | 0x01000000 | NCTL_CMD1W | NCTL_CMD0;
+		ctlcode = NCTL_CSA | NCTL_SPECADDR | NCTL_CMD1W | NCTL_CMD0;
 		ctlcode |= NAND_CMD_READID;
 		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, ctlcode)) {
 			pr_err("READID error\n");
@@ -242,7 +259,7 @@ static void bcm47xxnflash_ops_bcm4706_cmdfunc(struct nand_chip *nand_chip,
 		 * to perform, so cache everything.
 		 */
 		for (i = 0; i < ARRAY_SIZE(b47n->id_data); i++) {
-			ctlcode = NCTL_CSA | NCTL_READ;
+			ctlcode = NCTL_CSA | NCTL_READ | NCTL_DATA_CYCLES(1);
 			if (i == ARRAY_SIZE(b47n->id_data) - 1)
 				ctlcode &= ~NCTL_CSA;
 			if (bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc,
@@ -285,7 +302,7 @@ static void bcm47xxnflash_ops_bcm4706_cmdfunc(struct nand_chip *nand_chip,
 				b47n->curr_page_addr);
 
 		/* Prepare to write */
-		ctlcode = 0x40000000 | NCTL_ROW | NCTL_COL | NCTL_CMD0;
+		ctlcode = NCTL_CSA | NCTL_ROW | NCTL_COL | NCTL_CMD0;
 		ctlcode |= NAND_CMD_SEQIN;
 		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, ctlcode))
 			pr_err("SEQIN failed\n");
@@ -320,7 +337,9 @@ static u8 bcm47xxnflash_ops_bcm4706_read_byte(struct nand_chip *nand_chip)
 		}
 		return b47n->id_data[b47n->curr_column++];
 	case NAND_CMD_STATUS:
-		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc, NCTL_READ))
+		if (bcm47xxnflash_ops_bcm4706_ctl_cmd(cc,
+						      NCTL_READ |
+						      NCTL_DATA_CYCLES(1)))
 			return 0;
 		return bcma_cc_read32(cc, BCMA_CC_NFLASH_DATA) & 0xff;
 	case NAND_CMD_READOOB:
@@ -439,7 +458,8 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 	row_bits = tbits - col_bits + 1;
 	row_bsize = (row_bits + 7) / 8;
 
-	val = ((row_bsize - 1) << 6) | ((col_size - 1) << 4) | 2;
+	val = CONF_ROW_BYTES(row_bsize) | CONF_COL_BYTES(col_size) |
+	      CONF_MAGIC_BIT;
 	bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_CONF, val);
 
 exit:
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
