Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3D7D3C59
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RW4BXIY3OOfpkuJBIOYJ0Z+F6PqQmzgzL73MZy/5WW0=; b=F7Uzlm/MBsgq3x
	YReI97yba5T2b9AqZ1Rj1XDbxWc6ojmwazdV/dquqZvpa4xfZRjLM46ATmOHnp3kE+nb/40h0NcDT
	MbRB7XdqYaS6Ake0JQWoW/vpIKkoEXwgXMdVvPeGm/E6greWfgen4GLj5dS34t/i9ye1Mcb8xdVxv
	5QwPPSX7rhotSOQ0LYgAFp94f50Qw+d3M9NlwksgrRAIIaNm50IzvlWbv1TF4fbG7Xs09c2zhVjmU
	aajc0TO1ufKQpO/lKNPyhfFCDB7SHVlX7VtoZ19e+f/LizPcLfv9hQ27fY54/mO6lJmQQ8p8Oe9oU
	usuTGP2Lvm6cfFBZJDBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrHX-0000sc-8j; Fri, 11 Oct 2019 09:32:19 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrGs-0000KO-RF
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:31:43 +0000
Received: (wp-smtpd smtp.wp.pl 26439 invoked from network);
 11 Oct 2019 11:31:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1570786292; bh=tKbUl7+AOJc+/q0d59I2zTz6d2fkwMQoi5cZm3D11Yw=;
 h=From:To:Subject;
 b=lviBrggqfpr27+YYjFmrtXlUFPfnDm4yDKezuVc3BRZHgJVuuhQofzRkGXVS/6/4m
 7iC+4jlIQibNOK4vstlT3oTKA3SvCmPFHXRKl1/GZU9aoiwloFOzp35d7WplCXzeis
 3eRZKaLN3lmmeL3gB1azXssT482klt4UczTUQldc=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 11 Oct 2019 11:31:32 +0200
Date: Fri, 11 Oct 2019 10:50:11 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20191011105011.05efbcda@kosmio.komorska>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 2385828f6ef4d424674bc0030d43835e
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [8aOh]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_023139_794589_58838C68 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ath79: add AR934x NAND Flash Controller
 driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch contains updated driver for Atheros NAND Flash Controller
written originally by Gabor Juhos for ar71xx (aka 'ar934x-nfc').
ath79 version has adapted to work with kernel 4.19 and Device Tree.
It has also been renamed to 'ar934x-nand' to avoid confusion with
Near-Field Communication technology.
Controller is present on Atheros AR934x SoCs and required for accessing
internal flash storage on routers like Netgear WNDR4300.
This port preserves all NAND programming code while moving platform
configuration to Device Tree and replacing some kernel functions marked
for retirement by 4.19.
Suitable definition is included in 'ar934x.dtsi' ('nand@1b000200' section).

Most important changes to ar71xx version are:
* old kernel sections of code removed
* 'bool swap_dma' provided by platform data is now set by boolean DT
  property 'qca,nand-swap-dma'
* board-supplied (mach-*.c code) platform data removed - its elements
  become either unused, redundant or replaced by DT methods (like reset)
* IRQ is reserved by devm_request_irq() so free_irq() is not needed anymore
* calls to deprecated nand_scan_ident() + nand_scan_tail() function pair
  replaced by using recommended nand_scan() with attach_chip() callback
* ECC is set to hardware by default, can be overriden by standard DT
  'nand-ecc-*' properties (software Hamming or BCH are other options)

This driver has been successfully tested on Netgear WNDR4300 running
experimental ath79 OpenWrt master branch.

Signed-off-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
---
 target/linux/ath79/dts/ar934x.dtsi            |   18 +
 .../files/drivers/mtd/nand/raw/ar934x_nand.c  | 1460 +++++++++++++++++
 target/linux/ath79/nand/config-default        |    1 +
 .../440-mtd-ar934x-nand-driver.patch          |   25 +
 4 files changed, 1504 insertions(+)
 create mode 100644 target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
 create mode 100644 target/linux/ath79/patches-4.19/440-mtd-ar934x-nand-driver.patch

diff --git a/target/linux/ath79/dts/ar934x.dtsi b/target/linux/ath79/dts/ar934x.dtsi
index ba1355d071..bb6c647452 100644
--- a/target/linux/ath79/dts/ar934x.dtsi
+++ b/target/linux/ath79/dts/ar934x.dtsi
@@ -135,6 +135,24 @@
 			};
 		};
 
+		nand: nand@1b000200 {
+			compatible = "qca,ar934x-nand";
+			reg = <0x1b000200 0xb8>;
+
+			interrupts = <21>;
+			interrupt-parent = <&miscintc>;
+
+			resets = <&rst 14>;
+			reset-names = "nand";
+
+			nand-ecc-mode = "hw";
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			status = "disabled";
+		};
+
 		gmac: gmac@18070000 {
 			compatible = "qca,ar9340-gmac";
 			reg = <0x18070000 0x14>;
diff --git a/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c b/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
new file mode 100644
index 0000000000..a1efc57ae4
--- /dev/null
+++ b/target/linux/ath79/files/drivers/mtd/nand/raw/ar934x_nand.c
@@ -0,0 +1,1460 @@
+/*
+ * Driver for the built-in NAND controller of the Atheros AR934x SoCs
+ *
+ * Copyright (C) 2011-2013 Gabor Juhos <juhosg@openwrt.org>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms of the GNU General Public License version 2 as published
+ * by the Free Software Foundation.
+ */
+
+#include <linux/version.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/dma-mapping.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/mtd/partitions.h>
+#include <linux/platform_device.h>
+#include <linux/delay.h>
+#include <linux/slab.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+
+#define AR934X_NFC_DRIVER_NAME		"ar934x-nand"
+
+#define AR934X_NFC_REG_CMD		0x00
+#define AR934X_NFC_REG_CTRL		0x04
+#define AR934X_NFC_REG_STATUS		0x08
+#define AR934X_NFC_REG_INT_MASK		0x0c
+#define AR934X_NFC_REG_INT_STATUS	0x10
+#define AR934X_NFC_REG_ECC_CTRL		0x14
+#define AR934X_NFC_REG_ECC_OFFSET	0x18
+#define AR934X_NFC_REG_ADDR0_0		0x1c
+#define AR934X_NFC_REG_ADDR0_1		0x24
+#define AR934X_NFC_REG_ADDR1_0		0x20
+#define AR934X_NFC_REG_ADDR1_1		0x28
+#define AR934X_NFC_REG_SPARE_SIZE	0x30
+#define AR934X_NFC_REG_PROTECT		0x38
+#define AR934X_NFC_REG_LOOKUP_EN	0x40
+#define AR934X_NFC_REG_LOOKUP(_x)	(0x44 + (_i) * 4)
+#define AR934X_NFC_REG_DMA_ADDR		0x64
+#define AR934X_NFC_REG_DMA_COUNT	0x68
+#define AR934X_NFC_REG_DMA_CTRL		0x6c
+#define AR934X_NFC_REG_MEM_CTRL		0x80
+#define AR934X_NFC_REG_DATA_SIZE	0x84
+#define AR934X_NFC_REG_READ_STATUS	0x88
+#define AR934X_NFC_REG_TIME_SEQ		0x8c
+#define AR934X_NFC_REG_TIMINGS_ASYN	0x90
+#define AR934X_NFC_REG_TIMINGS_SYN	0x94
+#define AR934X_NFC_REG_FIFO_DATA	0x98
+#define AR934X_NFC_REG_TIME_MODE	0x9c
+#define AR934X_NFC_REG_DMA_ADDR_OFFS	0xa0
+#define AR934X_NFC_REG_FIFO_INIT	0xb0
+#define AR934X_NFC_REG_GEN_SEQ_CTRL	0xb4
+
+#define AR934X_NFC_CMD_CMD_SEQ_S		0
+#define AR934X_NFC_CMD_CMD_SEQ_M		0x3f
+#define   AR934X_NFC_CMD_SEQ_1C			0x00
+#define   AR934X_NFC_CMD_SEQ_ERASE		0x0e
+#define   AR934X_NFC_CMD_SEQ_12			0x0c
+#define   AR934X_NFC_CMD_SEQ_1C1AXR		0x21
+#define   AR934X_NFC_CMD_SEQ_S			0x24
+#define   AR934X_NFC_CMD_SEQ_1C3AXR		0x27
+#define   AR934X_NFC_CMD_SEQ_1C5A1CXR		0x2a
+#define   AR934X_NFC_CMD_SEQ_18			0x32
+#define AR934X_NFC_CMD_INPUT_SEL_SIU		0
+#define AR934X_NFC_CMD_INPUT_SEL_DMA		BIT(6)
+#define AR934X_NFC_CMD_ADDR_SEL_0		0
+#define AR934X_NFC_CMD_ADDR_SEL_1		BIT(7)
+#define AR934X_NFC_CMD_CMD0_S			8
+#define AR934X_NFC_CMD_CMD0_M			0xff
+#define AR934X_NFC_CMD_CMD1_S			16
+#define AR934X_NFC_CMD_CMD1_M			0xff
+#define AR934X_NFC_CMD_CMD2_S			24
+#define AR934X_NFC_CMD_CMD2_M			0xff
+
+#define AR934X_NFC_CTRL_ADDR_CYCLE0_M		0x7
+#define AR934X_NFC_CTRL_ADDR_CYCLE0_S		0
+#define AR934X_NFC_CTRL_SPARE_EN		BIT(3)
+#define AR934X_NFC_CTRL_INT_EN			BIT(4)
+#define AR934X_NFC_CTRL_ECC_EN			BIT(5)
+#define AR934X_NFC_CTRL_BLOCK_SIZE_S		6
+#define AR934X_NFC_CTRL_BLOCK_SIZE_M		0x3
+#define   AR934X_NFC_CTRL_BLOCK_SIZE_32		0
+#define   AR934X_NFC_CTRL_BLOCK_SIZE_64		1
+#define   AR934X_NFC_CTRL_BLOCK_SIZE_128	2
+#define   AR934X_NFC_CTRL_BLOCK_SIZE_256	3
+#define AR934X_NFC_CTRL_PAGE_SIZE_S		8
+#define AR934X_NFC_CTRL_PAGE_SIZE_M		0x7
+#define   AR934X_NFC_CTRL_PAGE_SIZE_256		0
+#define   AR934X_NFC_CTRL_PAGE_SIZE_512		1
+#define   AR934X_NFC_CTRL_PAGE_SIZE_1024	2
+#define   AR934X_NFC_CTRL_PAGE_SIZE_2048	3
+#define   AR934X_NFC_CTRL_PAGE_SIZE_4096	4
+#define   AR934X_NFC_CTRL_PAGE_SIZE_8192	5
+#define   AR934X_NFC_CTRL_PAGE_SIZE_16384	6
+#define AR934X_NFC_CTRL_CUSTOM_SIZE_EN		BIT(11)
+#define AR934X_NFC_CTRL_IO_WIDTH_8BITS		0
+#define AR934X_NFC_CTRL_IO_WIDTH_16BITS		BIT(12)
+#define AR934X_NFC_CTRL_LOOKUP_EN		BIT(13)
+#define AR934X_NFC_CTRL_PROT_EN			BIT(14)
+#define AR934X_NFC_CTRL_WORK_MODE_ASYNC		0
+#define AR934X_NFC_CTRL_WORK_MODE_SYNC		BIT(15)
+#define AR934X_NFC_CTRL_ADDR0_AUTO_INC		BIT(16)
+#define AR934X_NFC_CTRL_ADDR1_AUTO_INC		BIT(17)
+#define AR934X_NFC_CTRL_ADDR_CYCLE1_M		0x7
+#define AR934X_NFC_CTRL_ADDR_CYCLE1_S		18
+#define AR934X_NFC_CTRL_SMALL_PAGE		BIT(21)
+
+#define AR934X_NFC_DMA_CTRL_DMA_START		BIT(7)
+#define AR934X_NFC_DMA_CTRL_DMA_DIR_WRITE	0
+#define AR934X_NFC_DMA_CTRL_DMA_DIR_READ	BIT(6)
+#define AR934X_NFC_DMA_CTRL_DMA_MODE_SG		BIT(5)
+#define AR934X_NFC_DMA_CTRL_DMA_BURST_S		2
+#define AR934X_NFC_DMA_CTRL_DMA_BURST_0		0
+#define AR934X_NFC_DMA_CTRL_DMA_BURST_1		1
+#define AR934X_NFC_DMA_CTRL_DMA_BURST_2		2
+#define AR934X_NFC_DMA_CTRL_DMA_BURST_3		3
+#define AR934X_NFC_DMA_CTRL_DMA_BURST_4		4
+#define AR934X_NFC_DMA_CTRL_DMA_BURST_5		5
+#define AR934X_NFC_DMA_CTRL_ERR_FLAG		BIT(1)
+#define AR934X_NFC_DMA_CTRL_DMA_READY		BIT(0)
+
+#define AR934X_NFC_INT_DEV_RDY(_x)		BIT(4 + (_x))
+#define AR934X_NFC_INT_CMD_END			BIT(1)
+
+#define AR934X_NFC_ECC_CTRL_ERR_THRES_S		8
+#define AR934X_NFC_ECC_CTRL_ERR_THRES_M		0x1f
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_S		5
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_M		0x7
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_2		0
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_4		1
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_6		2
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_8		3
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_10		4
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_12		5
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_14		6
+#define AR934X_NFC_ECC_CTRL_ECC_CAP_16		7
+#define AR934X_NFC_ECC_CTRL_ERR_OVER		BIT(2)
+#define AR934X_NFC_ECC_CTRL_ERR_UNCORRECT	BIT(1)
+#define AR934X_NFC_ECC_CTRL_ERR_CORRECT		BIT(0)
+
+#define AR934X_NFC_ECC_OFFS_OFSET_M		0xffff
+
+/* default timing values */
+#define AR934X_NFC_TIME_SEQ_DEFAULT	0x7fff
+#define AR934X_NFC_TIMINGS_ASYN_DEFAULT	0x22
+#define AR934X_NFC_TIMINGS_SYN_DEFAULT	0xf
+
+#define AR934X_NFC_ID_BUF_SIZE		8
+#define AR934X_NFC_DEV_READY_TIMEOUT	25 /* msecs */
+#define AR934X_NFC_DMA_READY_TIMEOUT	25 /* msecs */
+#define AR934X_NFC_DONE_TIMEOUT		1000
+#define AR934X_NFC_DMA_RETRIES		20
+
+#define AR934X_NFC_USE_IRQ		true
+#define AR934X_NFC_IRQ_MASK		AR934X_NFC_INT_DEV_RDY(0)
+
+#define  AR934X_NFC_GENSEQ_SMALL_PAGE_READ	0x30043
+
+#undef AR934X_NFC_DEBUG_DATA
+#undef AR934X_NFC_DEBUG
+
+struct mtd_info;
+struct mtd_partition;
+struct ar934x_nfc;
+
+struct ar934x_nfc {
+	struct nand_chip nand_chip;
+	struct device *parent;
+	void __iomem *base;
+	bool swap_dma;
+	int irq;
+	wait_queue_head_t irq_waitq;
+
+	bool spurious_irq_expected;
+	u32 irq_status;
+
+	u32 ctrl_reg;
+	u32 ecc_ctrl_reg;
+	u32 ecc_offset_reg;
+	u32 ecc_thres;
+	u32 ecc_oob_pos;
+
+	bool small_page;
+	unsigned int addr_count0;
+	unsigned int addr_count1;
+
+	u8 *buf;
+	dma_addr_t buf_dma;
+	unsigned int buf_size;
+	int buf_index;
+
+	bool read_id;
+
+	int erase1_page_addr;
+
+	int rndout_page_addr;
+	int rndout_read_cmd;
+
+	int seqin_page_addr;
+	int seqin_column;
+	int seqin_read_cmd;
+};
+
+static inline __printf(2, 3)
+void _nfc_dbg(struct ar934x_nfc *nfc, const char *fmt, ...)
+{
+}
+
+#ifdef AR934X_NFC_DEBUG
+#define nfc_dbg(_nfc, fmt, ...) \
+	dev_info((_nfc)->parent, fmt, ##__VA_ARGS__)
+#else
+#define nfc_dbg(_nfc, fmt, ...) \
+	_nfc_dbg((_nfc), fmt, ##__VA_ARGS__)
+#endif /* AR934X_NFC_DEBUG */
+
+#ifdef AR934X_NFC_DEBUG_DATA
+static void nfc_debug_data(const char *label, void *data, int len)
+{
+	print_hex_dump(KERN_WARNING, label, DUMP_PREFIX_OFFSET, 16, 1,
+		       data, len, 0);
+}
+#else
+static inline void nfc_debug_data(const char *label, void *data, int len) {}
+#endif /* AR934X_NFC_DEBUG_DATA */
+
+static void ar934x_nfc_restart(struct ar934x_nfc *nfc);
+
+static inline bool is_all_ff(u8 *buf, int len)
+{
+	while (len--)
+		if (buf[len] != 0xff)
+			return false;
+
+	return true;
+}
+
+static inline void ar934x_nfc_wr(struct ar934x_nfc *nfc, unsigned reg, u32 val)
+{
+	__raw_writel(val, nfc->base + reg);
+}
+
+static inline u32 ar934x_nfc_rr(struct ar934x_nfc *nfc, unsigned reg)
+{
+	return __raw_readl(nfc->base + reg);
+}
+
+static inline struct ar934x_nfc *mtd_to_ar934x_nfc(struct mtd_info *mtd)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	return container_of(chip, struct ar934x_nfc, nand_chip);
+}
+
+static struct mtd_info *ar934x_nfc_to_mtd(struct ar934x_nfc *nfc)
+{
+	return nand_to_mtd(&nfc->nand_chip);
+}
+
+static inline bool ar934x_nfc_use_irq(struct ar934x_nfc *nfc)
+{
+	return AR934X_NFC_USE_IRQ;
+}
+
+static inline void ar934x_nfc_write_cmd_reg(struct ar934x_nfc *nfc, u32 cmd_reg)
+{
+	wmb();
+
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_CMD, cmd_reg);
+	/* flush write */
+	ar934x_nfc_rr(nfc, AR934X_NFC_REG_CMD);
+}
+
+static bool __ar934x_nfc_dev_ready(struct ar934x_nfc *nfc)
+{
+	u32 status;
+
+	status = ar934x_nfc_rr(nfc, AR934X_NFC_REG_STATUS);
+	return (status & 0xff) == 0xff;
+}
+
+static inline bool __ar934x_nfc_is_dma_ready(struct ar934x_nfc *nfc)
+{
+	u32 status;
+
+	status = ar934x_nfc_rr(nfc, AR934X_NFC_REG_DMA_CTRL);
+	return (status & AR934X_NFC_DMA_CTRL_DMA_READY) != 0;
+}
+
+static int ar934x_nfc_wait_dev_ready(struct ar934x_nfc *nfc)
+{
+	unsigned long timeout;
+
+	timeout = jiffies + msecs_to_jiffies(AR934X_NFC_DEV_READY_TIMEOUT);
+	do {
+		if (__ar934x_nfc_dev_ready(nfc))
+			return 0;
+	} while time_before(jiffies, timeout);
+
+	nfc_dbg(nfc, "timeout waiting for device ready, status:%08x int:%08x\n",
+		ar934x_nfc_rr(nfc, AR934X_NFC_REG_STATUS),
+		ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_STATUS));
+	return -ETIMEDOUT;
+}
+
+static int ar934x_nfc_wait_dma_ready(struct ar934x_nfc *nfc)
+{
+	unsigned long timeout;
+
+	timeout = jiffies + msecs_to_jiffies(AR934X_NFC_DMA_READY_TIMEOUT);
+	do {
+		if (__ar934x_nfc_is_dma_ready(nfc))
+			return 0;
+	} while time_before(jiffies, timeout);
+
+	nfc_dbg(nfc, "timeout waiting for DMA ready, dma_ctrl:%08x\n",
+		ar934x_nfc_rr(nfc, AR934X_NFC_REG_DMA_CTRL));
+	return -ETIMEDOUT;
+}
+
+static int ar934x_nfc_wait_irq(struct ar934x_nfc *nfc)
+{
+	long timeout;
+	int ret;
+
+	timeout = wait_event_timeout(nfc->irq_waitq,
+				(nfc->irq_status & AR934X_NFC_IRQ_MASK) != 0,
+				msecs_to_jiffies(AR934X_NFC_DEV_READY_TIMEOUT));
+
+	ret = 0;
+	if (!timeout) {
+		ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_MASK, 0);
+		ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);
+		/* flush write */
+		ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_STATUS);
+
+		nfc_dbg(nfc,
+			"timeout waiting for interrupt, status:%08x\n",
+			nfc->irq_status);
+		ret = -ETIMEDOUT;
+	}
+
+	nfc->irq_status = 0;
+	return ret;
+}
+
+static int ar934x_nfc_wait_done(struct ar934x_nfc *nfc)
+{
+	int ret;
+
+	if (ar934x_nfc_use_irq(nfc))
+		ret = ar934x_nfc_wait_irq(nfc);
+	else
+		ret = ar934x_nfc_wait_dev_ready(nfc);
+
+	if (ret)
+		return ret;
+
+	return ar934x_nfc_wait_dma_ready(nfc);
+}
+
+static int ar934x_nfc_alloc_buf(struct ar934x_nfc *nfc, unsigned size)
+{
+	nfc->buf = dma_alloc_coherent(nfc->parent, size,
+				      &nfc->buf_dma, GFP_KERNEL);
+	if (nfc->buf == NULL) {
+		dev_err(nfc->parent, "no memory for DMA buffer\n");
+		return -ENOMEM;
+	}
+
+	nfc->buf_size = size;
+	nfc_dbg(nfc, "buf:%p size:%u\n", nfc->buf, nfc->buf_size);
+
+	return 0;
+}
+
+static void ar934x_nfc_free_buf(struct ar934x_nfc *nfc)
+{
+	dma_free_coherent(nfc->parent, nfc->buf_size, nfc->buf, nfc->buf_dma);
+}
+
+static void ar934x_nfc_get_addr(struct ar934x_nfc *nfc, int column,
+				int page_addr, u32 *addr0, u32 *addr1)
+{
+	u32 a0, a1;
+
+	a0 = 0;
+	a1 = 0;
+
+	if (column == -1) {
+		/* ERASE1 */
+		a0 = (page_addr & 0xffff) << 16;
+		a1 = (page_addr >> 16) & 0xf;
+	} else if (page_addr != -1) {
+		/* SEQIN, READ0, etc.. */
+
+		/* TODO: handle 16bit bus width */
+		if (nfc->small_page) {
+			a0 = column & 0xff;
+			a0 |= (page_addr & 0xff) << 8;
+			a0 |= ((page_addr >> 8) & 0xff) << 16;
+			a0 |= ((page_addr >> 16) & 0xff) << 24;
+		} else {
+			a0 = column & 0x0FFF;
+			a0 |= (page_addr & 0xffff) << 16;
+
+			if (nfc->addr_count0 > 4)
+				a1 = (page_addr >> 16) & 0xf;
+		}
+	}
+
+	*addr0 = a0;
+	*addr1 = a1;
+}
+
+static void ar934x_nfc_send_cmd(struct ar934x_nfc *nfc, unsigned command)
+{
+	u32 cmd_reg;
+
+	cmd_reg = AR934X_NFC_CMD_INPUT_SEL_SIU | AR934X_NFC_CMD_ADDR_SEL_0 |
+		  AR934X_NFC_CMD_SEQ_1C;
+	cmd_reg |= (command & AR934X_NFC_CMD_CMD0_M) << AR934X_NFC_CMD_CMD0_S;
+
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_CTRL, nfc->ctrl_reg);
+
+	ar934x_nfc_write_cmd_reg(nfc, cmd_reg);
+	ar934x_nfc_wait_dev_ready(nfc);
+}
+
+static int ar934x_nfc_do_rw_command(struct ar934x_nfc *nfc, int column,
+				    int page_addr, int len, u32 cmd_reg,
+				    u32 ctrl_reg, bool write)
+{
+	u32 addr0, addr1;
+	u32 dma_ctrl;
+	int dir;
+	int err;
+	int retries = 0;
+
+	WARN_ON(len & 3);
+
+	if (WARN_ON(len > nfc->buf_size))
+		dev_err(nfc->parent, "len=%d > buf_size=%d", len,
+			nfc->buf_size);
+
+	if (write) {
+		dma_ctrl = AR934X_NFC_DMA_CTRL_DMA_DIR_WRITE;
+		dir = DMA_TO_DEVICE;
+	} else {
+		dma_ctrl = AR934X_NFC_DMA_CTRL_DMA_DIR_READ;
+		dir = DMA_FROM_DEVICE;
+	}
+
+	ar934x_nfc_get_addr(nfc, column, page_addr, &addr0, &addr1);
+
+	dma_ctrl |= AR934X_NFC_DMA_CTRL_DMA_START |
+		    (AR934X_NFC_DMA_CTRL_DMA_BURST_3 <<
+		     AR934X_NFC_DMA_CTRL_DMA_BURST_S);
+
+	cmd_reg |= AR934X_NFC_CMD_INPUT_SEL_DMA | AR934X_NFC_CMD_ADDR_SEL_0;
+	ctrl_reg |= AR934X_NFC_CTRL_INT_EN;
+
+	nfc_dbg(nfc, "%s a0:%08x a1:%08x len:%x cmd:%08x dma:%08x ctrl:%08x\n",
+		(write) ? "write" : "read",
+		addr0, addr1, len, cmd_reg, dma_ctrl, ctrl_reg);
+
+retry:
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_ADDR0_0, addr0);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_ADDR0_1, addr1);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_DMA_ADDR, nfc->buf_dma);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_DMA_COUNT, len);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_DATA_SIZE, len);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_CTRL, ctrl_reg);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_DMA_CTRL, dma_ctrl);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_ECC_CTRL, nfc->ecc_ctrl_reg);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_ECC_OFFSET, nfc->ecc_offset_reg);
+
+	if (ar934x_nfc_use_irq(nfc)) {
+		ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_MASK,
+			      AR934X_NFC_IRQ_MASK);
+		/* flush write */
+		ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_MASK);
+	}
+
+	ar934x_nfc_write_cmd_reg(nfc, cmd_reg);
+	err = ar934x_nfc_wait_done(nfc);
+	if (err) {
+		dev_dbg(nfc->parent, "%s operation stuck at page %d\n",
+			(write) ? "write" : "read", page_addr);
+
+		ar934x_nfc_restart(nfc);
+		if (retries++ < AR934X_NFC_DMA_RETRIES)
+			goto retry;
+
+		dev_err(nfc->parent, "%s operation failed on page %d\n",
+			(write) ? "write" : "read", page_addr);
+	}
+
+	return err;
+}
+
+static int ar934x_nfc_send_readid(struct ar934x_nfc *nfc, unsigned command)
+{
+	u32 cmd_reg;
+	int err;
+
+	nfc_dbg(nfc, "readid, cmd:%02x\n", command);
+
+	cmd_reg = AR934X_NFC_CMD_SEQ_1C1AXR;
+	cmd_reg |= (command & AR934X_NFC_CMD_CMD0_M) << AR934X_NFC_CMD_CMD0_S;
+
+	err = ar934x_nfc_do_rw_command(nfc, -1, -1, AR934X_NFC_ID_BUF_SIZE,
+				       cmd_reg, nfc->ctrl_reg, false);
+
+	nfc_debug_data("[id] ", nfc->buf, AR934X_NFC_ID_BUF_SIZE);
+
+	return err;
+}
+
+static int ar934x_nfc_send_read(struct ar934x_nfc *nfc, unsigned command,
+				int column, int page_addr, int len)
+{
+	u32 cmd_reg;
+	int err;
+
+	nfc_dbg(nfc, "read, column=%d page=%d len=%d\n",
+		column, page_addr, len);
+
+	cmd_reg = (command & AR934X_NFC_CMD_CMD0_M) << AR934X_NFC_CMD_CMD0_S;
+
+	if (nfc->small_page) {
+		cmd_reg |= AR934X_NFC_CMD_SEQ_18;
+	} else {
+		cmd_reg |= NAND_CMD_READSTART << AR934X_NFC_CMD_CMD1_S;
+		cmd_reg |= AR934X_NFC_CMD_SEQ_1C5A1CXR;
+	}
+
+	err = ar934x_nfc_do_rw_command(nfc, column, page_addr, len,
+				       cmd_reg, nfc->ctrl_reg, false);
+
+	nfc_debug_data("[data] ", nfc->buf, len);
+
+	return err;
+}
+
+static void ar934x_nfc_send_erase(struct ar934x_nfc *nfc, unsigned command,
+				  int column, int page_addr)
+{
+	u32 addr0, addr1;
+	u32 ctrl_reg;
+	u32 cmd_reg;
+
+	ar934x_nfc_get_addr(nfc, column, page_addr, &addr0, &addr1);
+
+	ctrl_reg = nfc->ctrl_reg;
+	if (nfc->small_page) {
+		/* override number of address cycles for the erase command */
+		ctrl_reg &= ~(AR934X_NFC_CTRL_ADDR_CYCLE0_M <<
+			      AR934X_NFC_CTRL_ADDR_CYCLE0_S);
+		ctrl_reg &= ~(AR934X_NFC_CTRL_ADDR_CYCLE1_M <<
+			      AR934X_NFC_CTRL_ADDR_CYCLE1_S);
+		ctrl_reg &= ~(AR934X_NFC_CTRL_SMALL_PAGE);
+		ctrl_reg |= (nfc->addr_count0 + 1) <<
+			    AR934X_NFC_CTRL_ADDR_CYCLE0_S;
+	}
+
+	cmd_reg = NAND_CMD_ERASE1 << AR934X_NFC_CMD_CMD0_S;
+	cmd_reg |= command << AR934X_NFC_CMD_CMD1_S;
+	cmd_reg |= AR934X_NFC_CMD_SEQ_ERASE;
+
+	nfc_dbg(nfc, "erase page %d, a0:%08x a1:%08x cmd:%08x ctrl:%08x\n",
+		page_addr, addr0, addr1, cmd_reg, ctrl_reg);
+
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_CTRL, ctrl_reg);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_ADDR0_0, addr0);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_ADDR0_1, addr1);
+
+	ar934x_nfc_write_cmd_reg(nfc, cmd_reg);
+	ar934x_nfc_wait_dev_ready(nfc);
+}
+
+static int ar934x_nfc_send_write(struct ar934x_nfc *nfc, unsigned command,
+				 int column, int page_addr, int len)
+{
+	u32 cmd_reg;
+
+	nfc_dbg(nfc, "write, column=%d page=%d len=%d\n",
+		column, page_addr, len);
+
+	nfc_debug_data("[data] ", nfc->buf, len);
+
+	cmd_reg = NAND_CMD_SEQIN << AR934X_NFC_CMD_CMD0_S;
+	cmd_reg |= command << AR934X_NFC_CMD_CMD1_S;
+	cmd_reg |= AR934X_NFC_CMD_SEQ_12;
+
+	return ar934x_nfc_do_rw_command(nfc, column, page_addr, len,
+					cmd_reg, nfc->ctrl_reg, true);
+}
+
+static void ar934x_nfc_read_status(struct ar934x_nfc *nfc)
+{
+	u32 cmd_reg;
+	u32 status;
+
+	cmd_reg = NAND_CMD_STATUS << AR934X_NFC_CMD_CMD0_S;
+	cmd_reg |= AR934X_NFC_CMD_SEQ_S;
+
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_CTRL, nfc->ctrl_reg);
+
+	ar934x_nfc_write_cmd_reg(nfc, cmd_reg);
+	ar934x_nfc_wait_dev_ready(nfc);
+
+	status = ar934x_nfc_rr(nfc, AR934X_NFC_REG_READ_STATUS);
+
+	nfc_dbg(nfc, "read status, cmd:%08x status:%02x\n",
+		cmd_reg, (status & 0xff));
+
+	if (nfc->swap_dma)
+		nfc->buf[0 ^ 3] = status;
+	else
+		nfc->buf[0] = status;
+}
+
+static void ar934x_nfc_cmdfunc(struct mtd_info *mtd, unsigned int command,
+			       int column, int page_addr)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	struct nand_chip *nand = &nfc->nand_chip;
+
+	nfc->read_id = false;
+	if (command != NAND_CMD_PAGEPROG)
+		nfc->buf_index = 0;
+
+	switch (command) {
+	case NAND_CMD_RESET:
+		ar934x_nfc_send_cmd(nfc, command);
+		break;
+
+	case NAND_CMD_READID:
+		nfc->read_id = true;
+		ar934x_nfc_send_readid(nfc, command);
+		break;
+
+	case NAND_CMD_READ0:
+	case NAND_CMD_READ1:
+		if (nfc->small_page) {
+			ar934x_nfc_send_read(nfc, command, column, page_addr,
+					     mtd->writesize + mtd->oobsize);
+		} else {
+			ar934x_nfc_send_read(nfc, command, 0, page_addr,
+					     mtd->writesize + mtd->oobsize);
+			nfc->buf_index = column;
+			nfc->rndout_page_addr = page_addr;
+			nfc->rndout_read_cmd = command;
+		}
+		break;
+
+	case NAND_CMD_READOOB:
+		if (nfc->small_page)
+			ar934x_nfc_send_read(nfc, NAND_CMD_READOOB,
+					     column, page_addr,
+					     mtd->oobsize);
+		else
+			ar934x_nfc_send_read(nfc, NAND_CMD_READ0,
+					     mtd->writesize, page_addr,
+					     mtd->oobsize);
+		break;
+
+	case NAND_CMD_RNDOUT:
+		if (WARN_ON(nfc->small_page))
+			break;
+
+		/* emulate subpage read */
+		ar934x_nfc_send_read(nfc, nfc->rndout_read_cmd, 0,
+				     nfc->rndout_page_addr,
+				     mtd->writesize + mtd->oobsize);
+		nfc->buf_index = column;
+		break;
+
+	case NAND_CMD_ERASE1:
+		nfc->erase1_page_addr = page_addr;
+		break;
+
+	case NAND_CMD_ERASE2:
+		ar934x_nfc_send_erase(nfc, command, -1, nfc->erase1_page_addr);
+		break;
+
+	case NAND_CMD_STATUS:
+		ar934x_nfc_read_status(nfc);
+		break;
+
+	case NAND_CMD_SEQIN:
+		if (nfc->small_page) {
+			/* output read command */
+			if (column >= mtd->writesize) {
+				column -= mtd->writesize;
+				nfc->seqin_read_cmd = NAND_CMD_READOOB;
+			} else if (column < 256) {
+				nfc->seqin_read_cmd = NAND_CMD_READ0;
+			} else {
+				column -= 256;
+				nfc->seqin_read_cmd = NAND_CMD_READ1;
+			}
+		} else {
+			nfc->seqin_read_cmd = NAND_CMD_READ0;
+		}
+		nfc->seqin_column = column;
+		nfc->seqin_page_addr = page_addr;
+		break;
+
+	case NAND_CMD_PAGEPROG:
+		if (nand->ecc.mode == NAND_ECC_HW) {
+			/* the data is already written */
+			break;
+		}
+
+		if (nfc->small_page)
+			ar934x_nfc_send_cmd(nfc, nfc->seqin_read_cmd);
+
+		ar934x_nfc_send_write(nfc, command, nfc->seqin_column,
+				      nfc->seqin_page_addr,
+				      nfc->buf_index);
+		break;
+
+	default:
+		dev_err(nfc->parent,
+			"unsupported command: %x, column:%d page_addr=%d\n",
+			command, column, page_addr);
+		break;
+	}
+}
+
+static int ar934x_nfc_dev_ready(struct mtd_info *mtd)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+
+	return __ar934x_nfc_dev_ready(nfc);
+}
+
+static u8 ar934x_nfc_read_byte(struct mtd_info *mtd)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	u8 data;
+
+	WARN_ON(nfc->buf_index >= nfc->buf_size);
+
+	if (nfc->swap_dma || nfc->read_id)
+		data = nfc->buf[nfc->buf_index ^ 3];
+	else
+		data = nfc->buf[nfc->buf_index];
+
+	nfc->buf_index++;
+
+	return data;
+}
+
+static void ar934x_nfc_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	int i;
+
+	WARN_ON(nfc->buf_index + len > nfc->buf_size);
+
+	if (nfc->swap_dma) {
+		for (i = 0; i < len; i++) {
+			nfc->buf[nfc->buf_index ^ 3] = buf[i];
+			nfc->buf_index++;
+		}
+	} else {
+		for (i = 0; i < len; i++) {
+			nfc->buf[nfc->buf_index] = buf[i];
+			nfc->buf_index++;
+		}
+	}
+}
+
+static void ar934x_nfc_read_buf(struct mtd_info *mtd, u8 *buf, int len)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	int buf_index;
+	int i;
+
+	WARN_ON(nfc->buf_index + len > nfc->buf_size);
+
+	buf_index = nfc->buf_index;
+
+	if (nfc->swap_dma || nfc->read_id) {
+		for (i = 0; i < len; i++) {
+			buf[i] = nfc->buf[buf_index ^ 3];
+			buf_index++;
+		}
+	} else {
+		for (i = 0; i < len; i++) {
+			buf[i] = nfc->buf[buf_index];
+			buf_index++;
+		}
+	}
+
+	nfc->buf_index = buf_index;
+}
+
+static inline void ar934x_nfc_enable_hwecc(struct ar934x_nfc *nfc)
+{
+	nfc->ctrl_reg |= AR934X_NFC_CTRL_ECC_EN;
+	nfc->ctrl_reg &= ~AR934X_NFC_CTRL_CUSTOM_SIZE_EN;
+}
+
+static inline void ar934x_nfc_disable_hwecc(struct ar934x_nfc *nfc)
+{
+	nfc->ctrl_reg &= ~AR934X_NFC_CTRL_ECC_EN;
+	nfc->ctrl_reg |= AR934X_NFC_CTRL_CUSTOM_SIZE_EN;
+}
+
+static int ar934x_nfc_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
+			       int page)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	int err;
+
+	nfc_dbg(nfc, "read_oob: page:%d\n", page);
+
+	err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, mtd->writesize, page,
+				   mtd->oobsize);
+	if (err)
+		return err;
+
+	memcpy(chip->oob_poi, nfc->buf, mtd->oobsize);
+
+	return 0;
+}
+
+static int ar934x_nfc_write_oob(struct mtd_info *mtd, struct nand_chip *chip,
+				int page)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+
+	nfc_dbg(nfc, "write_oob: page:%d\n", page);
+
+	memcpy(nfc->buf, chip->oob_poi, mtd->oobsize);
+
+	return ar934x_nfc_send_write(nfc, NAND_CMD_PAGEPROG, mtd->writesize,
+				     page, mtd->oobsize);
+}
+
+static int ar934x_nfc_read_page_raw(struct mtd_info *mtd,
+				    struct nand_chip *chip, u8 *buf,
+				    int oob_required, int page)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	int len;
+	int err;
+
+	nfc_dbg(nfc, "read_page_raw: page:%d oob:%d\n", page, oob_required);
+
+	len = mtd->writesize;
+	if (oob_required)
+		len += mtd->oobsize;
+
+	err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, 0, page, len);
+	if (err)
+		return err;
+
+	memcpy(buf, nfc->buf, mtd->writesize);
+
+	if (oob_required)
+		memcpy(chip->oob_poi, &nfc->buf[mtd->writesize], mtd->oobsize);
+
+	return 0;
+}
+
+static int ar934x_nfc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
+				u8 *buf, int oob_required, int page)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	u32 ecc_ctrl;
+	int max_bitflips = 0;
+	bool ecc_failed;
+	bool ecc_corrected;
+	int err;
+
+	nfc_dbg(nfc, "read_page: page:%d oob:%d\n", page, oob_required);
+
+	ar934x_nfc_enable_hwecc(nfc);
+	err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, 0, page,
+				   mtd->writesize);
+	ar934x_nfc_disable_hwecc(nfc);
+
+	if (err)
+		return err;
+
+	/* TODO: optimize to avoid memcpy */
+	memcpy(buf, nfc->buf, mtd->writesize);
+
+	/* read the ECC status */
+	ecc_ctrl = ar934x_nfc_rr(nfc, AR934X_NFC_REG_ECC_CTRL);
+	ecc_failed = ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_UNCORRECT;
+	ecc_corrected = ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_CORRECT;
+
+	if (oob_required || ecc_failed) {
+		err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, mtd->writesize,
+					   page, mtd->oobsize);
+		if (err)
+			return err;
+
+		if (oob_required)
+			memcpy(chip->oob_poi, nfc->buf, mtd->oobsize);
+	}
+
+	if (ecc_failed) {
+		/*
+		 * The hardware ECC engine reports uncorrectable errors
+		 * on empty pages. Check the ECC bytes and the data. If
+		 * both contains 0xff bytes only, dont report a failure.
+		 *
+		 * TODO: prebuild a buffer with 0xff bytes and use memcmp
+		 * for better performance?
+		 */
+		if (!is_all_ff(&nfc->buf[nfc->ecc_oob_pos], chip->ecc.total) ||
+		    !is_all_ff(buf, mtd->writesize))
+				mtd->ecc_stats.failed++;
+	} else if (ecc_corrected) {
+		/*
+		 * The hardware does not report the exact count of the
+		 * corrected bitflips, use assumptions based on the
+		 * threshold.
+		 */
+		if (ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_OVER) {
+			/*
+			 * The number of corrected bitflips exceeds the
+			 * threshold. Assume the maximum.
+			 */
+			max_bitflips = chip->ecc.strength * chip->ecc.steps;
+		} else {
+			max_bitflips = nfc->ecc_thres * chip->ecc.steps;
+		}
+
+		mtd->ecc_stats.corrected += max_bitflips;
+	}
+
+	return max_bitflips;
+}
+
+static int ar934x_nfc_write_page_raw(struct mtd_info *mtd,
+				     struct nand_chip *chip, const u8 *buf,
+				     int oob_required, int page)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	int len;
+
+	nfc_dbg(nfc, "write_page_raw: page:%d oob:%d\n", page, oob_required);
+
+	memcpy(nfc->buf, buf, mtd->writesize);
+	len = mtd->writesize;
+
+	if (oob_required) {
+		memcpy(&nfc->buf[mtd->writesize], chip->oob_poi, mtd->oobsize);
+		len += mtd->oobsize;
+	}
+
+	return ar934x_nfc_send_write(nfc, NAND_CMD_PAGEPROG, 0, page, len);
+}
+
+static int ar934x_nfc_write_page(struct mtd_info *mtd, struct nand_chip *chip,
+				 const u8 *buf, int oob_required, int page)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	int err;
+
+	nfc_dbg(nfc, "write_page: page:%d oob:%d\n", page, oob_required);
+
+	/* write OOB first */
+	if (oob_required &&
+	    !is_all_ff(chip->oob_poi, mtd->oobsize)) {
+		err = ar934x_nfc_write_oob(mtd, chip, page);
+		if (err)
+			return err;
+	}
+
+	/* TODO: optimize to avoid memcopy */
+	memcpy(nfc->buf, buf, mtd->writesize);
+
+	ar934x_nfc_enable_hwecc(nfc);
+	err = ar934x_nfc_send_write(nfc, NAND_CMD_PAGEPROG, 0, page,
+				    mtd->writesize);
+	ar934x_nfc_disable_hwecc(nfc);
+
+	return err;
+}
+
+static int ar934x_nfc_hw_init(struct ar934x_nfc *nfc)
+{
+	/*
+	 * setup timings
+	 * TODO: make it configurable via platform data or DT
+	 */
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_TIME_SEQ,
+		      AR934X_NFC_TIME_SEQ_DEFAULT);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_TIMINGS_ASYN,
+		      AR934X_NFC_TIMINGS_ASYN_DEFAULT);
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_TIMINGS_SYN,
+		      AR934X_NFC_TIMINGS_SYN_DEFAULT);
+
+	/* disable WP on all chips, and select chip 0 */
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_MEM_CTRL, 0xff00);
+
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_DMA_ADDR_OFFS, 0);
+
+	/* initialize Control register */
+	nfc->ctrl_reg = AR934X_NFC_CTRL_CUSTOM_SIZE_EN;
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_CTRL, nfc->ctrl_reg);
+
+	if (nfc->small_page) {
+		/*  Setup generic sequence register for small page reads. */
+		ar934x_nfc_wr(nfc, AR934X_NFC_REG_GEN_SEQ_CTRL,
+			      AR934X_NFC_GENSEQ_SMALL_PAGE_READ);
+	}
+
+	return 0;
+}
+
+static void ar934x_nfc_restart(struct ar934x_nfc *nfc)
+{
+	u32 ctrl_reg;
+
+	ctrl_reg = nfc->ctrl_reg;
+	ar934x_nfc_hw_init(nfc);
+	nfc->ctrl_reg = ctrl_reg;
+
+	ar934x_nfc_send_cmd(nfc, NAND_CMD_RESET);
+}
+
+static irqreturn_t ar934x_nfc_irq_handler(int irq, void *data)
+{
+	struct ar934x_nfc *nfc = data;
+	u32 status;
+
+	status = ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_STATUS);
+
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);
+	/* flush write */
+	ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_STATUS);
+
+	status &= ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_MASK);
+	if (status) {
+		nfc_dbg(nfc, "got IRQ, status:%08x\n", status);
+
+		nfc->irq_status = status;
+		nfc->spurious_irq_expected = true;
+		wake_up(&nfc->irq_waitq);
+	} else {
+		if (nfc->spurious_irq_expected)
+			nfc->spurious_irq_expected = false;
+		else
+			dev_warn(nfc->parent, "spurious interrupt\n");
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int ar934x_nfc_init_tail(struct mtd_info *mtd)
+{
+	struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
+	struct nand_chip *chip = &nfc->nand_chip;
+	u32 ctrl;
+	u32 t;
+	int err;
+
+	switch (mtd->oobsize) {
+	case 16:
+	case 64:
+	case 128:
+		ar934x_nfc_wr(nfc, AR934X_NFC_REG_SPARE_SIZE, mtd->oobsize);
+		break;
+
+	default:
+		dev_err(nfc->parent, "unsupported OOB size: %d bytes\n",
+			mtd->oobsize);
+		return -ENXIO;
+	}
+
+	ctrl = AR934X_NFC_CTRL_CUSTOM_SIZE_EN;
+
+	switch (mtd->erasesize / mtd->writesize) {
+	case 32:
+		t = AR934X_NFC_CTRL_BLOCK_SIZE_32;
+		break;
+
+	case 64:
+		t = AR934X_NFC_CTRL_BLOCK_SIZE_64;
+		break;
+
+	case 128:
+		t = AR934X_NFC_CTRL_BLOCK_SIZE_128;
+		break;
+
+	case 256:
+		t = AR934X_NFC_CTRL_BLOCK_SIZE_256;
+		break;
+
+	default:
+		dev_err(nfc->parent, "unsupported block size: %u\n",
+			mtd->erasesize / mtd->writesize);
+		return -ENXIO;
+	}
+
+	ctrl |= t << AR934X_NFC_CTRL_BLOCK_SIZE_S;
+
+	switch (mtd->writesize) {
+	case 256:
+		nfc->small_page = 1;
+		t = AR934X_NFC_CTRL_PAGE_SIZE_256;
+		break;
+
+	case 512:
+		nfc->small_page = 1;
+		t = AR934X_NFC_CTRL_PAGE_SIZE_512;
+		break;
+
+	case 1024:
+		t = AR934X_NFC_CTRL_PAGE_SIZE_1024;
+		break;
+
+	case 2048:
+		t = AR934X_NFC_CTRL_PAGE_SIZE_2048;
+		break;
+
+	case 4096:
+		t = AR934X_NFC_CTRL_PAGE_SIZE_4096;
+		break;
+
+	case 8192:
+		t = AR934X_NFC_CTRL_PAGE_SIZE_8192;
+		break;
+
+	case 16384:
+		t = AR934X_NFC_CTRL_PAGE_SIZE_16384;
+		break;
+
+	default:
+		dev_err(nfc->parent, "unsupported write size: %d bytes\n",
+			mtd->writesize);
+		return -ENXIO;
+	}
+
+	ctrl |= t << AR934X_NFC_CTRL_PAGE_SIZE_S;
+
+	if (nfc->small_page) {
+		ctrl |= AR934X_NFC_CTRL_SMALL_PAGE;
+
+		if (chip->chipsize > (32 << 20)) {
+			nfc->addr_count0 = 4;
+			nfc->addr_count1 = 3;
+		} else if (chip->chipsize > (2 << 16)) {
+			nfc->addr_count0 = 3;
+			nfc->addr_count1 = 2;
+		} else {
+			nfc->addr_count0 = 2;
+			nfc->addr_count1 = 1;
+		}
+	} else {
+		if (chip->chipsize > (128 << 20)) {
+			nfc->addr_count0 = 5;
+			nfc->addr_count1 = 3;
+		} else if (chip->chipsize > (8 << 16)) {
+			nfc->addr_count0 = 4;
+			nfc->addr_count1 = 2;
+		} else {
+			nfc->addr_count0 = 3;
+			nfc->addr_count1 = 1;
+		}
+	}
+
+	ctrl |= nfc->addr_count0 << AR934X_NFC_CTRL_ADDR_CYCLE0_S;
+	ctrl |= nfc->addr_count1 << AR934X_NFC_CTRL_ADDR_CYCLE1_S;
+
+	nfc->ctrl_reg = ctrl;
+	ar934x_nfc_wr(nfc, AR934X_NFC_REG_CTRL, nfc->ctrl_reg);
+
+	ar934x_nfc_free_buf(nfc);
+	err = ar934x_nfc_alloc_buf(nfc, mtd->writesize + mtd->oobsize);
+
+	return err;
+}
+
+static int ar934x_nfc_ooblayout_ecc(struct mtd_info *mtd, int section,
+				    struct mtd_oob_region *oobregion)
+{
+	if (section)
+		return -ERANGE;
+
+	oobregion->offset = 20;
+	oobregion->length = 28;
+
+	return 0;
+}
+
+static int ar934x_nfc_ooblayout_free(struct mtd_info *mtd, int section,
+				     struct mtd_oob_region *oobregion)
+{
+	switch (section) {
+	case 0:
+		oobregion->offset = 4;
+		oobregion->length = 16;
+		return 0;
+	case 1:
+		oobregion->offset = 48;
+		oobregion->length = 16;
+		return 0;
+	default:
+		return -ERANGE;
+	}
+}
+
+static const struct mtd_ooblayout_ops ar934x_nfc_ecclayout_ops = {
+	.ecc = ar934x_nfc_ooblayout_ecc,
+	.free = ar934x_nfc_ooblayout_free,
+};
+
+static int ar934x_nfc_setup_hwecc(struct ar934x_nfc *nfc)
+{
+	struct nand_chip *nand = &nfc->nand_chip;
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	u32 ecc_cap;
+	u32 ecc_thres;
+	struct mtd_oob_region oobregion;
+
+	switch (mtd->writesize) {
+	case 2048:
+		/*
+		 * Writing a subpage separately is not supported, because
+		 * the controller only does ECC on full-page accesses.
+		 */
+		nand->options = NAND_NO_SUBPAGE_WRITE;
+
+		nand->ecc.size = 512;
+		nand->ecc.bytes = 7;
+		nand->ecc.strength = 4;
+		mtd_set_ooblayout(mtd, &ar934x_nfc_ecclayout_ops);
+		break;
+
+	default:
+		dev_err(nfc->parent,
+			"hardware ECC is not available for %d byte pages\n",
+			mtd->writesize);
+		return -EINVAL;
+	}
+
+	BUG_ON(!mtd->ooblayout->ecc);
+
+	switch (nand->ecc.strength) {
+	case 4:
+		ecc_cap = AR934X_NFC_ECC_CTRL_ECC_CAP_4;
+		ecc_thres = 4;
+		break;
+
+	default:
+		dev_err(nfc->parent, "unsupported ECC strength %u\n",
+			nand->ecc.strength);
+		return -EINVAL;
+	}
+
+	nfc->ecc_thres = ecc_thres;
+	mtd->ooblayout->ecc(mtd, 0, &oobregion);
+	nfc->ecc_oob_pos = oobregion.offset;
+
+	nfc->ecc_ctrl_reg = ecc_cap << AR934X_NFC_ECC_CTRL_ECC_CAP_S;
+	nfc->ecc_ctrl_reg |= ecc_thres << AR934X_NFC_ECC_CTRL_ERR_THRES_S;
+
+	nfc->ecc_offset_reg = mtd->writesize + nfc->ecc_oob_pos;
+
+	nand->ecc.read_page = ar934x_nfc_read_page;
+	nand->ecc.read_page_raw = ar934x_nfc_read_page_raw;
+	nand->ecc.write_page = ar934x_nfc_write_page;
+	nand->ecc.write_page_raw = ar934x_nfc_write_page_raw;
+	nand->ecc.read_oob = ar934x_nfc_read_oob;
+	nand->ecc.write_oob = ar934x_nfc_write_oob;
+
+	return 0;
+}
+
+static int ar934x_nfc_attach_chip(struct nand_chip *nand)
+{
+	struct mtd_info *mtd = nand_to_mtd(nand);
+	struct ar934x_nfc *nfc = nand_get_controller_data(nand);
+	struct device *dev = mtd->dev.parent;
+	int ret;
+
+	ret = ar934x_nfc_init_tail(mtd);
+	if (ret)
+		return ret;
+
+	if (nand->ecc.mode == NAND_ECC_HW) {
+		ret = ar934x_nfc_setup_hwecc(nfc);
+		if (ret)
+			return ret;
+	} else if (nand->ecc.mode != NAND_ECC_SOFT) {
+		dev_err(dev, "unknown ECC mode %d\n", nand->ecc.mode);
+		return -EINVAL;
+	} else if ((nand->ecc.algo != NAND_ECC_BCH) &&
+		   (nand->ecc.algo != NAND_ECC_HAMMING)) {
+		dev_err(dev, "unknown software ECC algo %d\n", nand->ecc.algo);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static u64 ar934x_nfc_dma_mask = DMA_BIT_MASK(32);
+
+static void ar934x_nfc_cmd_ctrl(struct mtd_info *mtd, int dat,
+				unsigned int ctrl)
+{
+	WARN_ON(dat != NAND_CMD_NONE);
+}
+
+static const struct nand_controller_ops ar934x_nfc_controller_ops = {
+	.attach_chip = ar934x_nfc_attach_chip,
+};
+
+static int ar934x_nfc_probe(struct platform_device *pdev)
+{
+	struct ar934x_nfc *nfc;
+	struct resource *res;
+	struct mtd_info *mtd;
+	struct nand_chip *nand;
+	int ret;
+
+	pdev->dev.dma_mask = &ar934x_nfc_dma_mask;
+	pdev->dev.coherent_dma_mask = DMA_BIT_MASK(32);
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res) {
+		dev_err(&pdev->dev, "failed to get I/O memory\n");
+		return -EINVAL;
+	}
+
+	nfc = devm_kzalloc(&pdev->dev, sizeof(struct ar934x_nfc), GFP_KERNEL);
+	if (!nfc) {
+		dev_err(&pdev->dev, "failed to allocate driver data\n");
+		return -ENOMEM;
+	}
+
+	nfc->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(nfc->base)) {
+		dev_err(&pdev->dev, "failed to remap I/O memory\n");
+		return PTR_ERR(nfc->base);
+	}
+
+	nfc->irq = platform_get_irq(pdev, 0);
+	if (nfc->irq < 0) {
+		dev_err(&pdev->dev, "no IRQ resource specified\n");
+		return -EINVAL;
+	}
+
+	init_waitqueue_head(&nfc->irq_waitq);
+	ret = devm_request_irq(&pdev->dev, nfc->irq, ar934x_nfc_irq_handler,
+			       0, AR934X_NFC_DRIVER_NAME, nfc);
+	if (ret) {
+		dev_err(&pdev->dev, "devm_request_irq failed, err:%d\n", ret);
+		return ret;
+	}
+
+	nfc->parent = &pdev->dev;
+	nfc->swap_dma = of_property_read_bool(pdev->dev.of_node,
+					      "qca,nand-swap-dma");
+
+	nand = &nfc->nand_chip;
+	mtd = nand_to_mtd(nand);
+
+	mtd->owner = THIS_MODULE;
+	mtd->dev.parent = &pdev->dev;
+	mtd->name = AR934X_NFC_DRIVER_NAME;
+
+	nand_set_controller_data(nand, nfc);
+	nand_set_flash_node(nand, pdev->dev.of_node);
+	nand->chip_delay = 25;
+	nand->dev_ready = ar934x_nfc_dev_ready;
+	nand->cmdfunc = ar934x_nfc_cmdfunc;
+	nand->cmd_ctrl = ar934x_nfc_cmd_ctrl;	/* dummy */
+	nand->read_byte = ar934x_nfc_read_byte;
+	nand->write_buf = ar934x_nfc_write_buf;
+	nand->read_buf = ar934x_nfc_read_buf;
+	nand->ecc.mode = NAND_ECC_HW;	/* default */
+	platform_set_drvdata(pdev, nfc);
+
+	ret = ar934x_nfc_alloc_buf(nfc, AR934X_NFC_ID_BUF_SIZE);
+	if (ret)
+		return ret;
+
+	ret = ar934x_nfc_hw_init(nfc);
+	if (ret) {
+		dev_err(&pdev->dev, "hardware init failed, err:%d\n", ret);
+		goto err_free_buf;
+	}
+
+	nand->dummy_controller.ops = &ar934x_nfc_controller_ops;
+	ret = nand_scan(mtd, 1);
+	if (ret) {
+		dev_err(&pdev->dev, "nand_scan failed, err:%d\n", ret);
+		goto err_free_buf;
+	}
+
+	ret = mtd_device_register(mtd, NULL, 0);
+	if (ret) {
+		dev_err(&pdev->dev, "unable to register mtd, err:%d\n", ret);
+		goto err_free_buf;
+	}
+
+	return 0;
+
+err_free_buf:
+	ar934x_nfc_free_buf(nfc);
+	return ret;
+}
+
+static int ar934x_nfc_remove(struct platform_device *pdev)
+{
+	struct ar934x_nfc *nfc;
+	struct mtd_info *mtd;
+
+	nfc = platform_get_drvdata(pdev);
+	if (nfc) {
+		mtd = ar934x_nfc_to_mtd(nfc);
+		nand_release(mtd);
+		ar934x_nfc_free_buf(nfc);
+	}
+
+	return 0;
+}
+
+static const struct of_device_id ar934x_nfc_match[] = {
+	{ .compatible = "qca," AR934X_NFC_DRIVER_NAME },
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, ar934x_nfc_match);
+
+static struct platform_driver ar934x_nfc_driver = {
+	.probe		= ar934x_nfc_probe,
+	.remove		= ar934x_nfc_remove,
+	.driver = {
+		.name	= AR934X_NFC_DRIVER_NAME,
+		.owner	= THIS_MODULE,
+		.of_match_table = ar934x_nfc_match,
+	},
+};
+
+module_platform_driver(ar934x_nfc_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Gabor Juhos <juhosg@openwrt.org>");
+MODULE_DESCRIPTION("Atheros AR934x NAND Flash Controller driver");
+MODULE_ALIAS("platform:" AR934X_NFC_DRIVER_NAME);
diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
index 738c29c9b1..c8114a4985 100644
--- a/target/linux/ath79/nand/config-default
+++ b/target/linux/ath79/nand/config-default
@@ -1,5 +1,6 @@
 CONFIG_BCH=y
 CONFIG_MTD_NAND=y
+CONFIG_MTD_NAND_AR934X=y
 CONFIG_MTD_NAND_BCH=y
 CONFIG_MTD_NAND_ECC=y
 CONFIG_MTD_NAND_ECC_BCH=y
diff --git a/target/linux/ath79/patches-4.19/440-mtd-ar934x-nand-driver.patch b/target/linux/ath79/patches-4.19/440-mtd-ar934x-nand-driver.patch
new file mode 100644
index 0000000000..b74ad90745
--- /dev/null
+++ b/target/linux/ath79/patches-4.19/440-mtd-ar934x-nand-driver.patch
@@ -0,0 +1,25 @@
+--- a/drivers/mtd/nand/raw/Kconfig
++++ b/drivers/mtd/nand/raw/Kconfig
+@@ -561,4 +561,12 @@ config MTD_NAND_TEGRA
+ 	  is supported. Extra OOB bytes when using HW ECC are currently
+ 	  not supported.
+ 
++config MTD_NAND_AR934X
++	tristate "Support for NAND controller on Qualcomm Atheros AR934x/QCA955x SoCs"
++	depends on ATH79 || COMPILE_TEST
++	depends on HAS_IOMEM
++	help
++	  Enables support for NAND controller on Qualcomm Atheros SoCs.
++	  This controller is found on AR934x and QCA955x SoCs.
++
+ endif # MTD_NAND
+--- a/drivers/mtd/nand/raw/Makefile
++++ b/drivers/mtd/nand/raw/Makefile
+@@ -57,6 +57,7 @@ obj-$(CONFIG_MTD_NAND_BRCMNAND)		+= brcm
+ obj-$(CONFIG_MTD_NAND_QCOM)		+= qcom_nandc.o
+ obj-$(CONFIG_MTD_NAND_MTK)		+= mtk_ecc.o mtk_nand.o
+ obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
++obj-$(CONFIG_MTD_NAND_AR934X)		+= ar934x_nand.o
+ 
+ nand-objs := nand_base.o nand_bbt.o nand_timings.o nand_ids.o
+ nand-objs += nand_amd.o
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
