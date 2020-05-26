Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B66441AFA35
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 14:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hm2CK+oW98etk5h+1HC4Pa0efI/iWfd5bV6iCaOiDgA=; b=ZXuY0eGdaOnptH
	leTC/o0gXeh+Vy3J/sQHnQqDXwuZGU1yKiAXBNwivaXI+YhuSqJfs3z2xisunVOPE+V7nrz+mOQ2n
	al3ZLmyZuWxCT1Wz4a51DMCJwaaruvmm5kHB/cch/15M0oeLTeefCdjiCSKrlh7Eo56BMj50ACs2u
	LDU8jU/1WCIqIlJN1ITfdA2NPcoBY07E7Y9J74hbQzmG3ruxRu2AiNl1JKfO8WC3dd0s5jRlOWF8h
	dnNKqghMAUg9xzya+bc+DzyjSB91TXqLTfxjVwA2uIG5DrZiVDrT7VMmIKgAYd5l7BIYSqjFGl5J1
	KmjQyYWQh4RFmV10FYlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9Sx-00007s-FQ; Sun, 19 Apr 2020 12:54:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9QK-0005vV-Vs
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 12:51:53 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 43D5A2A0D6C;
 Sun, 19 Apr 2020 13:51:46 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Sun, 19 Apr 2020 14:51:36 +0200
Message-Id: <20200419125140.1307309-6-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200419125140.1307309-1-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055149_316832_A1C0348A 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH 5/9] mtd: rawnand: bcm47xx: Implement the
 exec_op() interface
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

Implement the exec_op() interface so we can get rid of the convoluted
cmdfunc() implementation.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
This is based on my understanding of how this controller works, and I
think it covers all the use cases covered by the custom cmdfunc()
implementation. I might be wrong of course, so it'd be great to have
someone test on real HW.
---
 .../nand/raw/bcm47xxnflash/bcm47xxnflash.h    |   1 +
 .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  | 150 ++++++++++++++++++
 2 files changed, 151 insertions(+)

diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h b/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
index 201b9baa52a0..00d0974b73cb 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
@@ -10,6 +10,7 @@
 #include <linux/mtd/rawnand.h>
 
 struct bcm47xxnflash {
+	struct nand_controller base;
 	struct bcma_drv_cc *cc;
 
 	struct nand_chip nand_chip;
diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
index fbb7acebc8f7..184f78b3d45a 100644
--- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
+++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
@@ -382,6 +382,153 @@ static void bcm47xxnflash_ops_bcm4706_write_buf(struct nand_chip *nand_chip,
 	pr_err("Invalid command for buf write: 0x%X\n", b47n->curr_command);
 }
 
+static int
+bcm47xxnflash_ops_bcm4706_exec_cmd_addr(struct nand_chip *chip,
+					const struct nand_subop *subop)
+{
+	struct bcm47xxnflash *b47n = nand_get_controller_data(chip);
+	u32 nctl = 0, col = 0, row = 0, ncols = 0, nrows = 0;
+	unsigned int i, j;
+
+	for (i = 0; i < subop->ninstrs; i++) {
+		const struct nand_op_instr *instr = &subop->instrs[i];
+
+		switch (instr->type) {
+		case NAND_OP_CMD_INSTR:
+			if (WARN_ON_ONCE((nctl & NCTL_CMD0) &&
+					 (nctl & NCTL_CMD1W)))
+				return -EINVAL;
+			else if (nctl & NCTL_CMD0)
+				nctl |= NCTL_CMD1W |
+					((u32)instr->ctx.cmd.opcode << 8);
+			else
+				nctl |= NCTL_CMD0 | instr->ctx.cmd.opcode;
+			break;
+		case NAND_OP_ADDR_INSTR:
+			for (j = 0; j < instr->ctx.addr.naddrs; j++) {
+				u32 addr = instr->ctx.addr.addrs[j];
+
+				if (i < 2) {
+					col |= addr << i * 8;
+					nctl |= NCTL_COL;
+					ncols++;
+				} else {
+					row |= addr << (i - 2) * 8;
+					nctl |= NCTL_ROW;
+					nrows++;
+				}
+			}
+			break;
+		default:
+			WARN_ON_ONCE(1);
+			return -EINVAL;
+		}
+	}
+
+	/* Keep the CS line asserted if there's something else to execute. */
+	if (!subop->is_last)
+		nctl |= NCTL_CSA;
+
+	bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_CONF,
+			CONF_MAGIC_BIT |
+			CONF_COL_BYTES(ncols) |
+			CONF_ROW_BYTES(nrows));
+	return bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, nctl);
+}
+
+static int
+bcm47xxnflash_ops_bcm4706_exec_waitrdy(struct nand_chip *chip,
+				       const struct nand_subop *subop)
+{
+	struct bcm47xxnflash *b47n = nand_get_controller_data(chip);
+	const struct nand_op_instr *instr = &subop->instrs[0];
+	unsigned long timeout_jiffies = jiffies;
+
+	if (WARN_ON(subop->ninstrs != 1 ||
+		    instr->type != NAND_OP_DATA_IN_INSTR))
+		return -EINVAL;
+
+	timeout_jiffies += msecs_to_jiffies(instr->ctx.waitrdy.timeout_ms) + 1;
+	do {
+		if (bcma_cc_read32(b47n->cc, BCMA_CC_NFLASH_CTL) & NCTL_READY)
+			return 0;
+
+		usleep_range(10, 100);
+	} while (time_before(jiffies, timeout_jiffies));
+
+	return -ETIMEDOUT;
+}
+
+static int
+bcm47xxnflash_ops_bcm4706_exec_rw(struct nand_chip *chip,
+				  const struct nand_subop *subop)
+{
+	struct bcm47xxnflash *b47n = nand_get_controller_data(chip);
+	const struct nand_op_instr *instr = &subop->instrs[0];
+	unsigned int i;
+	int ret;
+
+	if (WARN_ON(subop->ninstrs != 1 ||
+		    (instr->type != NAND_OP_DATA_IN_INSTR &&
+		     instr->type != NAND_OP_DATA_OUT_INSTR)))
+		return -EINVAL;
+
+	for (i = 0; i < instr->ctx.data.len; i += 4) {
+		unsigned int nbytes = min_t(unsigned int,
+					    instr->ctx.data.len - i, 4);
+		u32 nctl, data;
+
+		nctl = NCTL_CSA | NCTL_DATA_CYCLES(nbytes);
+		if (instr->type == NAND_OP_DATA_IN_INSTR) {
+			nctl |= NCTL_READ;
+		} else {
+			nctl |= NCTL_WRITE;
+			memcpy(&data, instr->ctx.data.buf.in + i, nbytes);
+			bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_DATA, data);
+		}
+
+		if (i + nbytes < instr->ctx.data.len)
+			nctl |= NCTL_CSA;
+
+		ret = bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, nctl);
+		if (ret)
+			return ret;
+
+		if (instr->type == NAND_OP_DATA_IN_INSTR) {
+			data = bcma_cc_read32(b47n->cc, BCMA_CC_NFLASH_DATA);
+			memcpy(instr->ctx.data.buf.in + i, &data, nbytes);
+		}
+	}
+
+	return 0;
+}
+
+static const struct nand_op_parser bcm47xxnflash_op_parser = NAND_OP_PARSER(
+	NAND_OP_PARSER_PATTERN(bcm47xxnflash_ops_bcm4706_exec_cmd_addr,
+			       NAND_OP_PARSER_PAT_CMD_ELEM(true),
+			       NAND_OP_PARSER_PAT_ADDR_ELEM(true, 5),
+			       NAND_OP_PARSER_PAT_CMD_ELEM(true)),
+	NAND_OP_PARSER_PATTERN(bcm47xxnflash_ops_bcm4706_exec_waitrdy,
+			       NAND_OP_PARSER_PAT_WAITRDY_ELEM(false)),
+	NAND_OP_PARSER_PATTERN(bcm47xxnflash_ops_bcm4706_exec_rw,
+			       NAND_OP_PARSER_PAT_DATA_IN_ELEM(false, 0x200)),
+	NAND_OP_PARSER_PATTERN(bcm47xxnflash_ops_bcm4706_exec_rw,
+			       NAND_OP_PARSER_PAT_DATA_OUT_ELEM(false, 0x200)),
+);
+
+static int
+bcm47xxnflash_ops_bcm4706_exec_op(struct nand_chip *chip,
+				  const struct nand_operation *op,
+				  bool check_only)
+{
+	return nand_op_parser_exec_op(chip, &bcm47xxnflash_op_parser, op,
+				      check_only);
+}
+
+static const struct nand_controller_ops bcm47xxnflash_ops = {
+	.exec_op = bcm47xxnflash_ops_bcm4706_exec_op,
+};
+
 /**************************************************
  * Init
  **************************************************/
@@ -398,6 +545,9 @@ int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
 	u8 tbits, col_bits, col_size, row_bits, row_bsize;
 	u32 val;
 
+	nand_controller_init(&b47n->base);
+	b47n->base.ops = &bcm47xxnflash_ops;
+	b47n->nand_chip.controller = &b47n->base;
 	nand_chip->legacy.select_chip = bcm47xxnflash_ops_bcm4706_select_chip;
 	nand_chip->legacy.cmd_ctrl = bcm47xxnflash_ops_bcm4706_cmd_ctrl;
 	nand_chip->legacy.dev_ready = bcm47xxnflash_ops_bcm4706_dev_ready;
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
