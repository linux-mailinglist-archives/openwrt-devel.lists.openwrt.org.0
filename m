Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B24B1AFA2E
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 14:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTqEKjJkJ7lhqkDwsLJ6GCAP/s2RQP8mH/8TLuTo+Yo=; b=QiV/yt2AjxpIGs
	9CAs8Ge53GA2ritsKnJT2XX2I9H2x5qSVRNVzFKz/HJrOZAyIHfxYVHkxozrYa2wE8wC66OsP7OVR
	yM6URwLqENkEAVdwJh9fY1VkYLNdBISZ5AxvQD9mnuwV8Z3JmSbpEbBhxd9ruocCIi5JQDe5TmSCa
	Kl9vUugFxLyCA2yNWbuocKShICLSJeKx7C4fKOGqEvESpIOZOlo2F4xP4QDq5VtXz0YP6UR09gi55
	dL4thM6PWXY7azZy6AdxJxqU/CXDq+OnSaUKxpg7hN0CpaWVOFwtH/WUjlaFhOVotnDi8E5RaG3fa
	LDl0L91TSCAkM7y9dA6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9RY-0006rU-0v; Sun, 19 Apr 2020 12:53:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9QI-0005sc-Dv
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 12:51:49 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id BC23F2A0072;
 Sun, 19 Apr 2020 13:51:44 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Date: Sun, 19 Apr 2020 14:51:32 +0200
Message-Id: <20200419125140.1307309-2-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200419125140.1307309-1-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_055146_595222_EF393730 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH 1/9] mtd: rawnand: Add an is_last flag to
 nand_subop
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

Some controllers need to know when they're passed the last subop so
they can de-assert the CE pin.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 drivers/mtd/nand/raw/nand_base.c | 2 ++
 include/linux/mtd/rawnand.h      | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index fa9ac18e97a1..f81b54634061 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -2101,6 +2101,8 @@ nand_op_parser_match_pat(const struct nand_op_parser_pattern *pat,
 	 */
 	ctx->subop.ninstrs = ninstrs;
 	ctx->subop.last_instr_end_off = instr_offset;
+	if (ctx->subop.instrs + ninstrs == end && !instr_offset)
+		ctx->subop.is_last = true;
 
 	return true;
 }
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 8e8d1a61e2fb..99f4ac47c8d3 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -701,6 +701,7 @@ struct nand_op_instr {
  *			   of the sub-operation
  * @last_instr_end_off: offset to end at (excluded) for the last instruction
  *			of the sub-operation
+ * @is_last: this sub-operation is the last one
  *
  * Both @first_instr_start_off and @last_instr_end_off only apply to data or
  * address instructions.
@@ -715,6 +716,7 @@ struct nand_subop {
 	unsigned int ninstrs;
 	unsigned int first_instr_start_off;
 	unsigned int last_instr_end_off;
+	bool is_last;
 };
 
 unsigned int nand_subop_get_addr_start_off(const struct nand_subop *subop,
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
