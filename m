Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6FF30EEA
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 May 2019 15:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scXifpaQnXO8fDoP/iYwL0NL3oyCEJGBa4p9lMEfXAA=; b=ov5bf6DiEssP3n
	Q8Q3pQtM0AJ5eyWlrXcDMwiO1UIlV9sRQNnvS30yXCY3t2w8SpzMbm/E8Uk84miVKBp6Hiiv/xcnD
	bJyl5LbgeWZYvtl2JfmzU2qwi7qAn5ydhKgJcw0x8+MwmyqByqIlJ/D0r/lCzb7d0cL968OBMZlDV
	sPAeh905VkHB8IkWk3BSjNxcePxxdNWXlFKjqyayYG4Q2nOHkgS34CnJW+LQ5Kz/lYwzswgTXl2qR
	dUyw8rg+mMURCg2i7U06Ro3LD1+BwdrFrFmAc+t6Fy3VbUYB64K85/yiSdhXrANECdkOHXLPqGK31
	D1/flDXylpBU8LzsFIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWhgE-0000ZS-CV; Fri, 31 May 2019 13:34:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWhg7-0000Z3-6I
 for openwrt-devel@lists.openwrt.org; Fri, 31 May 2019 13:34:41 +0000
Received: by mail-wr1-x444.google.com with SMTP id d9so6588247wrx.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 May 2019 06:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xUM3C5YwWO2aFH7X5h0W4U+dEfqtIzPTijqRkM3K1E4=;
 b=FjEo8D6DhEuXVDGlW7vJO9HTuEvN1sYDsp3/dPOcfdjJotcKCcrEyV5ph5P8hLJJeE
 zIMdHUiwZXFJbKYX/HdNoZ3rqnGkq48rcu0zJbxhsMKj32s82gHVmKV5VY34UQCMCSwY
 UQKjBGaIYpINraQv6q2giNIa86p17fbILI2qMF/5zNR8QKxhcugLd9j8CbZnYXq3HY+G
 qx+t8j+YKz+gLSUFKMdqogw/qSLX1q1X96ocXzwZkJN4Hj4iulT0hwm06D8bxsOztdqb
 HGyqd7tlWixvPrs18mG7wPLxbRFF6fEtSLLaF5jumCkZy34qkVZY92qDNgoRwlbT37pV
 1JNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xUM3C5YwWO2aFH7X5h0W4U+dEfqtIzPTijqRkM3K1E4=;
 b=MAgrQrbgF+iwLy6qJRdMy/RdPPx+HKLMCBplP+FVZ5z8hZ+B405co6yv/iIOf9edwQ
 V8CbFIvDqgEzh8eeAgJCzSgyRsrJTbLSZccpUUBnLlfn8/VlwEpQo3ZWdDhYgj5pyGmv
 xCY1SGhNbA9JDFTvsKGwzLAztn17+KUmldsKPIEqzpshoWeDKF8cDSGtkfOS+3QFuhwW
 bavkAyXlyy8AtR/GGA48LsY+XTh0GiwAyGi0+PP1+jYwwhRinp4O1kqpVgy6z8AV+2dF
 Le0qf1WSBXItP86bEBEpmbw3/eDD5Js5arJcrBxiPxf/Z+4OK8C/9Pul7IGfOS4VlSW5
 aswQ==
X-Gm-Message-State: APjAAAX/oL90ujklrFYRTxPoqmNZznK6Ci9s15Hj6vlgRjfct1n7/Ks5
 nQe47JJWTEK44wzdGgY1AhmvtEOH
X-Google-Smtp-Source: APXvYqznGXO4R4xRk6NEkI1vNldrTdq8g0P5Lvwa6J+OkevGpHX2UU8WB+KwDipINyI8BkFWo0Gw3Q==
X-Received: by 2002:a5d:5342:: with SMTP id t2mr6370224wrv.71.1559309675998;
 Fri, 31 May 2019 06:34:35 -0700 (PDT)
Received: from debian64.daheim (pD9E29608.dip0.t-ipconnect.de. [217.226.150.8])
 by smtp.gmail.com with ESMTPSA id z4sm1694937wrm.12.2019.05.31.06.34.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 06:34:35 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hWhg2-0004NI-Eu; Fri, 31 May 2019 15:34:34 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 May 2019 15:34:34 +0200
Message-ID: <2850061.LOaScECSic@debian64>
In-Reply-To: <20190411155945.28600-2-mail@david-bauer.net>
References: <20190411155945.28600-1-mail@david-bauer.net>
 <20190411155945.28600-2-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_063439_264250_29919973 
X-CRM114-Status: GOOD (  25.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ath79: add QCA955x SGMII link loss
 workaround
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
Cc: David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thursday, April 11, 2019 5:59:43 PM CEST David Bauer wrote:
> This commit adds a workaround for the loss of the SGMII link observed on
> the QCA955x generation of SoCs. The workaround originates part from the
> U-Boot source code, part from the implementation from AVM found in the
> GPL tarball for the AVM FRITZ!WLAN Repeater 450E.
> 
> The bug results in a stuck SGMII link between the PHY device and the SoC
> side. This has only been observed with the Atheros AR8033 PHY and most
> likely all devices using such combination are affected.
> 
> It is worked around by reading a hidden SGMII status register and
> issuing a SGMII PHY reset until the link becomes useable again.
> 
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---

Not to be a party pooper. The ag71xx is well on its way to upstream.
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/atheros/ag71xx.c?id=d51b6ce441d356369387d20bc1de5f2edb0ab71e

So sadly this all would need to be somehow upstreamed first and then 
backported again. *sight* :(


>  .../net/ethernet/atheros/ag71xx/ag71xx_main.c | 108 ++++++++++++++++++
>  ...9-add-missing-QCA955x-GMAC-registers.patch |  91 +++++++++++++++
>  ...9-add-missing-QCA955x-GMAC-registers.patch |  91 +++++++++++++++
>  3 files changed, 290 insertions(+)
>  create mode 100644 target/linux/ath79/patches-4.14/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch
>  create mode 100644 target/linux/ath79/patches-4.19/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch
> 
> diff --git a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
> index 8cff56a11a..a7565e6ffb 100644
> --- a/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
> +++ b/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/ag71xx_main.c
> @@ -559,6 +559,112 @@ static void ath79_set_pll(struct ag71xx *ag)
>  	udelay(100);
>  }
>  
> +static void ag71xx_bit_set(void __iomem *reg, u32 bit)
> +{
> +	u32 val;
> +
> +	val = __raw_readl(reg) | bit;
> +	__raw_writel(val, reg);
> +	__raw_readl(reg);
> +}
> +
> +static void ag71xx_bit_clear(void __iomem *reg, u32 bit)
> +{
> +	u32 val;
> +
> +	val = __raw_readl(reg) & ~bit;
> +	__raw_writel(val, reg);
> +	__raw_readl(reg);
> +}
> +
> +static void ag71xx_sgmii_init_qca955x(struct device_node *np)
> +{
> +	struct device_node *np_dev;
> +	void __iomem *gmac_base;
> +	u32 mr_an_status;
> +	u32 sgmii_status;
> +	u8 tries = 0;
> +	int err = 0;
> +
> +	np = of_get_child_by_name(np, "gmac-config");
> +	if (!np)
> +		return;
> +
> +	np_dev = of_parse_phandle(np, "device", 0);
> +	if (!np_dev)
> +		goto out;
> +
> +	gmac_base = of_iomap(np_dev, 0);
> +	if (!gmac_base) {
> +		pr_err("%pOF: can't map GMAC registers\n", np_dev);
> +		err = -ENOMEM;
> +		goto err_iomap;
> +	}
> +
> +	mr_an_status = __raw_readl(gmac_base + QCA955X_GMAC_REG_MR_AN_STATUS);
> +	if (!(mr_an_status & QCA955X_MR_AN_STATUS_AN_ABILITY))
> +		goto sgmii_out;
> +
> +	/* SGMII reset sequence */
> +	__raw_writel(QCA955X_SGMII_RESET_RX_CLK_N_RESET,
> +		     gmac_base + QCA955X_GMAC_REG_SGMII_RESET);
> +	__raw_readl(gmac_base + QCA955X_GMAC_REG_SGMII_RESET);
> +	udelay(10);
> +
> +	ag71xx_bit_set(gmac_base + QCA955X_GMAC_REG_SGMII_RESET,
> +		       QCA955X_SGMII_RESET_HW_RX_125M_N);
> +	udelay(10);
> +
> +	ag71xx_bit_set(gmac_base + QCA955X_GMAC_REG_SGMII_RESET,
> +		       QCA955X_SGMII_RESET_RX_125M_N);
> +	udelay(10);
> +
> +	ag71xx_bit_set(gmac_base + QCA955X_GMAC_REG_SGMII_RESET,
> +		       QCA955X_SGMII_RESET_TX_125M_N);
> +	udelay(10);
> +
> +	ag71xx_bit_set(gmac_base + QCA955X_GMAC_REG_SGMII_RESET,
> +		       QCA955X_SGMII_RESET_RX_CLK_N);
> +	udelay(10);
> +
> +	ag71xx_bit_set(gmac_base + QCA955X_GMAC_REG_SGMII_RESET,
> +		       QCA955X_SGMII_RESET_TX_CLK_N);
> +	udelay(10);
> +
> +	/*
> +	 * The following is what QCA has to say about what happens here:
> +	 *
> +	 * Across resets SGMII link status goes to weird state.
> +	 * If SGMII_DEBUG register reads other than 0x1f or 0x10,
> +	 * we are for sure in a bad  state.
> +	 *
> +	 * Issue a PHY reset in MR_AN_CONTROL to keep going.
> +	 */
> +	do {
> +		ag71xx_bit_set(gmac_base + QCA955X_GMAC_REG_MR_AN_CONTROL,
> +			       QCA955X_MR_AN_CONTROL_PHY_RESET |
> +			       QCA955X_MR_AN_CONTROL_AN_ENABLE);
> +		udelay(200);
> +		ag71xx_bit_clear(gmac_base + QCA955X_GMAC_REG_MR_AN_CONTROL,
> +				 QCA955X_MR_AN_CONTROL_PHY_RESET);
> +		mdelay(300);
> +		sgmii_status = __raw_readl(gmac_base + QCA955X_GMAC_REG_SGMII_DEBUG) &
> +					   QCA955X_SGMII_DEBUG_TX_STATE_MASK;
> +
> +		if (tries++ >= 20) {
> +			pr_err("ag71xx: max retries for SGMII fixup exceeded\n");
> +			break;
> +		}
> +	} while (!(sgmii_status == 0xf || sgmii_status == 0x10));
> +
> +sgmii_out:
> +	iounmap(gmac_base);
> +err_iomap:
> +	of_node_put(np_dev);
> +out:
> +	of_node_put(np);
> +}
> +
>  static void ath79_mii_ctrl_set_if(struct ag71xx *ag, unsigned int mii_if)
>  {
>  	u32 t;
> @@ -705,6 +811,8 @@ __ag71xx_link_adjust(struct ag71xx *ag, bool update)
>  			   of_device_is_compatible(np, "qca,qca9550-eth") ||
>  			   of_device_is_compatible(np, "qca,qca9560-eth")) {
>  			ath79_set_pllval(ag);
> +			if (of_property_read_bool(np, "qca955x-sgmii-fixup"))
> +				ag71xx_sgmii_init_qca955x(np);
>  		}
>  	}
>  
> diff --git a/target/linux/ath79/patches-4.14/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch b/target/linux/ath79/patches-4.14/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch
> new file mode 100644
> index 0000000000..111c1553d3
> --- /dev/null
> +++ b/target/linux/ath79/patches-4.14/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch
> @@ -0,0 +1,91 @@
> +From 60efe35257b063ce584968f9f80b437030ce6ba6 Mon Sep 17 00:00:00 2001
> +From: David Bauer <mail@david-bauer.net>
> +Date: Mon, 18 Mar 2019 00:54:06 +0100
> +Subject: [PATCH] MIPS: ath79: add missing QCA955x GMAC registers
> +
> +This adds missing GMAC register definitions for the Qualcomm Atheros
> +QCA955X series MIPS SoCs.
> +
> +They originate from the platforms U-Boot code and the AVM FRITZ!WLAN
> +Repeater 450E's GPL tarball.
> +
> +Signed-off-by: David Bauer <mail@david-bauer.net>
> +---
> + .../mips/include/asm/mach-ath79/ar71xx_regs.h | 54 +++++++++++++++++++
> + 1 file changed, 54 insertions(+)
> +
> +--- a/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
> ++++ b/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
> +@@ -1245,7 +1245,12 @@
> +  */
> + 
> + #define QCA955X_GMAC_REG_ETH_CFG	0x00
> ++#define QCA955X_GMAC_REG_SGMII_RESET	0x14
> + #define QCA955X_GMAC_REG_SGMII_SERDES	0x18
> ++#define QCA955X_GMAC_REG_MR_AN_CONTROL	0x1c
> ++#define QCA955X_GMAC_REG_MR_AN_STATUS	0x20
> ++#define QCA955X_GMAC_REG_SGMII_CONFIG	0x34
> ++#define QCA955X_GMAC_REG_SGMII_DEBUG	0x58
> + 
> + #define QCA955X_ETH_CFG_RGMII_EN	BIT(0)
> + #define QCA955X_ETH_CFG_MII_GE0		BIT(1)
> +@@ -1267,9 +1272,58 @@
> + #define QCA955X_ETH_CFG_TXE_DELAY_MASK	0x3
> + #define QCA955X_ETH_CFG_TXE_DELAY_SHIFT	20
> + 
> ++#define QCA955X_SGMII_RESET_RX_CLK_N_RESET	0
> ++#define QCA955X_SGMII_RESET_RX_CLK_N		BIT(0)
> ++#define QCA955X_SGMII_RESET_TX_CLK_N		BIT(1)
> ++#define QCA955X_SGMII_RESET_RX_125M_N		BIT(2)
> ++#define QCA955X_SGMII_RESET_TX_125M_N		BIT(3)
> ++#define QCA955X_SGMII_RESET_HW_RX_125M_N	BIT(4)
> ++
> + #define QCA955X_SGMII_SERDES_LOCK_DETECT_STATUS	BIT(15)
> + #define QCA955X_SGMII_SERDES_RES_CALIBRATION_SHIFT 23
> + #define QCA955X_SGMII_SERDES_RES_CALIBRATION_MASK 0xf
> ++
> ++#define QCA955X_MR_AN_CONTROL_SPEED_SEL1	BIT(6)
> ++#define QCA955X_MR_AN_CONTROL_DUPLEX_MODE	BIT(8)
> ++#define QCA955X_MR_AN_CONTROL_RESTART_AN	BIT(9)
> ++#define QCA955X_MR_AN_CONTROL_POWER_DOWN	BIT(11)
> ++#define QCA955X_MR_AN_CONTROL_AN_ENABLE		BIT(12)
> ++#define QCA955X_MR_AN_CONTROL_SPEED_SEL0	BIT(13)
> ++#define QCA955X_MR_AN_CONTROL_LOOPBACK		BIT(14)
> ++#define QCA955X_MR_AN_CONTROL_PHY_RESET		BIT(15)
> ++
> ++#define QCA955X_MR_AN_STATUS_EXT_CAP		BIT(0)
> ++#define QCA955X_MR_AN_STATUS_LINK_UP		BIT(2)
> ++#define QCA955X_MR_AN_STATUS_AN_ABILITY		BIT(3)
> ++#define QCA955X_MR_AN_STATUS_REMOTE_FAULT	BIT(4)
> ++#define QCA955X_MR_AN_STATUS_AN_COMPLETE	BIT(5)
> ++#define QCA955X_MR_AN_STATUS_NO_PREAMBLE	BIT(6)
> ++#define QCA955X_MR_AN_STATUS_BASE_PAGE		BIT(7)
> ++
> ++#define QCA955X_SGMII_CONFIG_MODE_CTRL_SHIFT		0
> ++#define QCA955X_SGMII_CONFIG_MODE_CTRL_MASK		0x7
> ++#define QCA955X_SGMII_CONFIG_ENABLE_SGMII_TX_PAUSE	BIT(3)
> ++#define QCA955X_SGMII_CONFIG_MR_REG4_CHANGED		BIT(4)
> ++#define QCA955X_SGMII_CONFIG_FORCE_SPEED		BIT(5)
> ++#define QCA955X_SGMII_CONFIG_SPEED_SHIFT		6
> ++#define QCA955X_SGMII_CONFIG_SPEED_MASK			0xc0
> ++#define QCA955X_SGMII_CONFIG_REMOTE_PHY_LOOPBACK	BIT(8)
> ++#define QCA955X_SGMII_CONFIG_NEXT_PAGE_LOADED		BIT(9)
> ++#define QCA955X_SGMII_CONFIG_MDIO_ENABLE		BIT(10)
> ++#define QCA955X_SGMII_CONFIG_MDIO_PULSE			BIT(11)
> ++#define QCA955X_SGMII_CONFIG_MDIO_COMPLETE		BIT(12)
> ++#define QCA955X_SGMII_CONFIG_PRBS_ENABLE		BIT(13)
> ++#define QCA955X_SGMII_CONFIG_BERT_ENABLE		BIT(14)
> ++
> ++#define QCA955X_SGMII_DEBUG_TX_STATE_MASK	0xff
> ++#define QCA955X_SGMII_DEBUG_TX_STATE_SHIFT	0
> ++#define QCA955X_SGMII_DEBUG_RX_STATE_MASK	0xff00
> ++#define QCA955X_SGMII_DEBUG_RX_STATE_SHIFT	8
> ++#define QCA955X_SGMII_DEBUG_RX_SYNC_STATE_MASK	0xff0000
> ++#define QCA955X_SGMII_DEBUG_RX_SYNC_STATE_SHIFT	16
> ++#define QCA955X_SGMII_DEBUG_ARB_STATE_MASK	0xf000000
> ++#define QCA955X_SGMII_DEBUG_ARB_STATE_SHIFT	24
> ++
> + /*
> +  * QCA956X GMAC Interface
> +  */
> +
> diff --git a/target/linux/ath79/patches-4.19/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch b/target/linux/ath79/patches-4.19/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch
> new file mode 100644
> index 0000000000..111c1553d3
> --- /dev/null
> +++ b/target/linux/ath79/patches-4.19/0038-MIPS-ath79-add-missing-QCA955x-GMAC-registers.patch
> @@ -0,0 +1,91 @@
> +From 60efe35257b063ce584968f9f80b437030ce6ba6 Mon Sep 17 00:00:00 2001
> +From: David Bauer <mail@david-bauer.net>
> +Date: Mon, 18 Mar 2019 00:54:06 +0100
> +Subject: [PATCH] MIPS: ath79: add missing QCA955x GMAC registers
> +
> +This adds missing GMAC register definitions for the Qualcomm Atheros
> +QCA955X series MIPS SoCs.
> +
> +They originate from the platforms U-Boot code and the AVM FRITZ!WLAN
> +Repeater 450E's GPL tarball.
> +
> +Signed-off-by: David Bauer <mail@david-bauer.net>
> +---
> + .../mips/include/asm/mach-ath79/ar71xx_regs.h | 54 +++++++++++++++++++
> + 1 file changed, 54 insertions(+)
> +
> +--- a/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
> ++++ b/arch/mips/include/asm/mach-ath79/ar71xx_regs.h
> +@@ -1245,7 +1245,12 @@
> +  */
> + 
> + #define QCA955X_GMAC_REG_ETH_CFG	0x00
> ++#define QCA955X_GMAC_REG_SGMII_RESET	0x14
> + #define QCA955X_GMAC_REG_SGMII_SERDES	0x18
> ++#define QCA955X_GMAC_REG_MR_AN_CONTROL	0x1c
> ++#define QCA955X_GMAC_REG_MR_AN_STATUS	0x20
> ++#define QCA955X_GMAC_REG_SGMII_CONFIG	0x34
> ++#define QCA955X_GMAC_REG_SGMII_DEBUG	0x58
> + 
> + #define QCA955X_ETH_CFG_RGMII_EN	BIT(0)
> + #define QCA955X_ETH_CFG_MII_GE0		BIT(1)
> +@@ -1267,9 +1272,58 @@
> + #define QCA955X_ETH_CFG_TXE_DELAY_MASK	0x3
> + #define QCA955X_ETH_CFG_TXE_DELAY_SHIFT	20
> + 
> ++#define QCA955X_SGMII_RESET_RX_CLK_N_RESET	0
> ++#define QCA955X_SGMII_RESET_RX_CLK_N		BIT(0)
> ++#define QCA955X_SGMII_RESET_TX_CLK_N		BIT(1)
> ++#define QCA955X_SGMII_RESET_RX_125M_N		BIT(2)
> ++#define QCA955X_SGMII_RESET_TX_125M_N		BIT(3)
> ++#define QCA955X_SGMII_RESET_HW_RX_125M_N	BIT(4)
> ++
> + #define QCA955X_SGMII_SERDES_LOCK_DETECT_STATUS	BIT(15)
> + #define QCA955X_SGMII_SERDES_RES_CALIBRATION_SHIFT 23
> + #define QCA955X_SGMII_SERDES_RES_CALIBRATION_MASK 0xf
> ++
> ++#define QCA955X_MR_AN_CONTROL_SPEED_SEL1	BIT(6)
> ++#define QCA955X_MR_AN_CONTROL_DUPLEX_MODE	BIT(8)
> ++#define QCA955X_MR_AN_CONTROL_RESTART_AN	BIT(9)
> ++#define QCA955X_MR_AN_CONTROL_POWER_DOWN	BIT(11)
> ++#define QCA955X_MR_AN_CONTROL_AN_ENABLE		BIT(12)
> ++#define QCA955X_MR_AN_CONTROL_SPEED_SEL0	BIT(13)
> ++#define QCA955X_MR_AN_CONTROL_LOOPBACK		BIT(14)
> ++#define QCA955X_MR_AN_CONTROL_PHY_RESET		BIT(15)
> ++
> ++#define QCA955X_MR_AN_STATUS_EXT_CAP		BIT(0)
> ++#define QCA955X_MR_AN_STATUS_LINK_UP		BIT(2)
> ++#define QCA955X_MR_AN_STATUS_AN_ABILITY		BIT(3)
> ++#define QCA955X_MR_AN_STATUS_REMOTE_FAULT	BIT(4)
> ++#define QCA955X_MR_AN_STATUS_AN_COMPLETE	BIT(5)
> ++#define QCA955X_MR_AN_STATUS_NO_PREAMBLE	BIT(6)
> ++#define QCA955X_MR_AN_STATUS_BASE_PAGE		BIT(7)
> ++
> ++#define QCA955X_SGMII_CONFIG_MODE_CTRL_SHIFT		0
> ++#define QCA955X_SGMII_CONFIG_MODE_CTRL_MASK		0x7
> ++#define QCA955X_SGMII_CONFIG_ENABLE_SGMII_TX_PAUSE	BIT(3)
> ++#define QCA955X_SGMII_CONFIG_MR_REG4_CHANGED		BIT(4)
> ++#define QCA955X_SGMII_CONFIG_FORCE_SPEED		BIT(5)
> ++#define QCA955X_SGMII_CONFIG_SPEED_SHIFT		6
> ++#define QCA955X_SGMII_CONFIG_SPEED_MASK			0xc0
> ++#define QCA955X_SGMII_CONFIG_REMOTE_PHY_LOOPBACK	BIT(8)
> ++#define QCA955X_SGMII_CONFIG_NEXT_PAGE_LOADED		BIT(9)
> ++#define QCA955X_SGMII_CONFIG_MDIO_ENABLE		BIT(10)
> ++#define QCA955X_SGMII_CONFIG_MDIO_PULSE			BIT(11)
> ++#define QCA955X_SGMII_CONFIG_MDIO_COMPLETE		BIT(12)
> ++#define QCA955X_SGMII_CONFIG_PRBS_ENABLE		BIT(13)
> ++#define QCA955X_SGMII_CONFIG_BERT_ENABLE		BIT(14)
> ++
> ++#define QCA955X_SGMII_DEBUG_TX_STATE_MASK	0xff
> ++#define QCA955X_SGMII_DEBUG_TX_STATE_SHIFT	0
> ++#define QCA955X_SGMII_DEBUG_RX_STATE_MASK	0xff00
> ++#define QCA955X_SGMII_DEBUG_RX_STATE_SHIFT	8
> ++#define QCA955X_SGMII_DEBUG_RX_SYNC_STATE_MASK	0xff0000
> ++#define QCA955X_SGMII_DEBUG_RX_SYNC_STATE_SHIFT	16
> ++#define QCA955X_SGMII_DEBUG_ARB_STATE_MASK	0xf000000
> ++#define QCA955X_SGMII_DEBUG_ARB_STATE_SHIFT	24
> ++
> + /*
> +  * QCA956X GMAC Interface
> +  */
> +
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
