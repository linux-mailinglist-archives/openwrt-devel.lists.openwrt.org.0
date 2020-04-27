Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB171BACDC
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 20:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7rjJ8FWzY+0Qh9mpjPSn0PerF13wXqz8W9rr9HWeewc=; b=Rd25PFvQq+vdnd
	t+OO/usTBmpWK0z8dTLeayGT3DiDJxB5OLo+pgW7Sxl5CQTy5EPPK8JAKB2XcSkM1J9CIPnkSdTwt
	r9SUPQyZzeDS7Cmua5Guazy7kU6XcmceyTzmdu6e4GRseyRIqAJG+x8lPi8Mvg5J6yASkHzGvktuK
	vpCs2e6yc+xlbjUIdGKJjdZ4jDRc/l2TaTSvOfTII81BTWAbzwDkwL0sf0XdwpDrfXxcbnBLKV7pT
	347xrSNSBEjZep97aTIFitmHoNFz692Y2WhiJsP8/UOrQmuB4oFDs8AiZryqMwWUDAowVMQRsBgpe
	jnJ4U946XTV/xPgpme2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8bW-0008OS-Jd; Mon, 27 Apr 2020 18:35:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8bL-0008NX-Hf
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 18:35:33 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 34A022A0DF3;
 Mon, 27 Apr 2020 19:35:30 +0100 (BST)
Date: Mon, 27 Apr 2020 20:35:25 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-ID: <20200427203525.5fd1deca@collabora.com>
In-Reply-To: <20200427191811.3f32cebc@xps13>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-6-boris.brezillon@collabora.com>
 <20200427191811.3f32cebc@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_113531_850511_DD601E82 
X-CRM114-Status: GOOD (  28.92  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 5/9] mtd: rawnand: bcm47xx: Implement
 the exec_op() interface
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
 linux-mtd@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, 27 Apr 2020 19:18:11 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 19 Apr
> 2020 14:51:36 +0200:
> 
> > Implement the exec_op() interface so we can get rid of the convoluted
> > cmdfunc() implementation.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> > This is based on my understanding of how this controller works, and I
> > think it covers all the use cases covered by the custom cmdfunc()
> > implementation. I might be wrong of course, so it'd be great to have
> > someone test on real HW.
> > ---
> >  .../nand/raw/bcm47xxnflash/bcm47xxnflash.h    |   1 +
> >  .../mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c  | 150 ++++++++++++++++++
> >  2 files changed, 151 insertions(+)
> > 
> > diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h b/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
> > index 201b9baa52a0..00d0974b73cb 100644
> > --- a/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
> > +++ b/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.h
> > @@ -10,6 +10,7 @@
> >  #include <linux/mtd/rawnand.h>
> >  
> >  struct bcm47xxnflash {
> > +	struct nand_controller base;
> >  	struct bcma_drv_cc *cc;
> >  
> >  	struct nand_chip nand_chip;
> > diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
> > index fbb7acebc8f7..184f78b3d45a 100644
> > --- a/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
> > +++ b/drivers/mtd/nand/raw/bcm47xxnflash/ops_bcm4706.c
> > @@ -382,6 +382,153 @@ static void bcm47xxnflash_ops_bcm4706_write_buf(struct nand_chip *nand_chip,
> >  	pr_err("Invalid command for buf write: 0x%X\n", b47n->curr_command);
> >  }
> >  
> > +static int
> > +bcm47xxnflash_ops_bcm4706_exec_cmd_addr(struct nand_chip *chip,
> > +					const struct nand_subop *subop)
> > +{
> > +	struct bcm47xxnflash *b47n = nand_get_controller_data(chip);
> > +	u32 nctl = 0, col = 0, row = 0, ncols = 0, nrows = 0;
> > +	unsigned int i, j;
> > +
> > +	for (i = 0; i < subop->ninstrs; i++) {
> > +		const struct nand_op_instr *instr = &subop->instrs[i];
> > +
> > +		switch (instr->type) {
> > +		case NAND_OP_CMD_INSTR:
> > +			if (WARN_ON_ONCE((nctl & NCTL_CMD0) &&
> > +					 (nctl & NCTL_CMD1W)))
> > +				return -EINVAL;
> > +			else if (nctl & NCTL_CMD0)
> > +				nctl |= NCTL_CMD1W |
> > +					((u32)instr->ctx.cmd.opcode << 8);
> > +			else
> > +				nctl |= NCTL_CMD0 | instr->ctx.cmd.opcode;
> > +			break;
> > +		case NAND_OP_ADDR_INSTR:
> > +			for (j = 0; j < instr->ctx.addr.naddrs; j++) {
> > +				u32 addr = instr->ctx.addr.addrs[j];
> > +
> > +				if (i < 2) {  
> 
> Don't you mean j here?              ^
> 

Nice catch! Indeed, it should be j.

> > +					col |= addr << i * 8;  
> 
> I'm not sure this will work, addr is 32-bit and col as well, I bet you
> won't end up with what you expect.

Well, assuming I use j that's really what I want. addr is an u32 to
allow for a shift greater than 8, but the value has be extracted
from the instr->ctx.addr.addrs array which is an u8 array, thus
making addr <= 0xff.

> 
> > +					nctl |= NCTL_COL;
> > +					ncols++;
> > +				} else {
> > +					row |= addr << (i - 2) * 8;

And it's j here as well.

> > +					nctl |= NCTL_ROW;
> > +					nrows++;
> > +				}
> > +			}
> > +			break;
> > +		default:
> > +			WARN_ON_ONCE(1);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	/* Keep the CS line asserted if there's something else to execute. */
> > +	if (!subop->is_last)
> > +		nctl |= NCTL_CSA;
> > +
> > +	bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_CONF,
> > +			CONF_MAGIC_BIT |
> > +			CONF_COL_BYTES(ncols) |
> > +			CONF_ROW_BYTES(nrows));
> > +	return bcm47xxnflash_ops_bcm4706_ctl_cmd(b47n->cc, nctl);
> > +}
> > +
> > +static int
> > +bcm47xxnflash_ops_bcm4706_exec_waitrdy(struct nand_chip *chip,
> > +				       const struct nand_subop *subop)
> > +{
> > +	struct bcm47xxnflash *b47n = nand_get_controller_data(chip);
> > +	const struct nand_op_instr *instr = &subop->instrs[0];
> > +	unsigned long timeout_jiffies = jiffies;
> > +
> > +	if (WARN_ON(subop->ninstrs != 1 ||
> > +		    instr->type != NAND_OP_DATA_IN_INSTR))
> > +		return -EINVAL;  
> 
> Same remark as for the atmel migration, I doubt all these checks are
> useful as long as we use the "official" parser to call these helpers. I
> would rather prefer to drop them all.

Agreed.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
