Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F6A1ECFB2
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 14:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=84ZN838gkEjmGE75fCLyacRZcM1FqEk3dQjuMO6datI=; b=kssYDL17h0P37FJw9UdwQNrqiX
	hlTMIiIENoZnr+THmq1XgyhRri7DWEF8PEoyKNj9d+ETIgOEqj7oNbC64c3Ix8MWsq98CZB9IwgY7
	kDQlEB3zyAJ74f6sgfQh69SLoObFB/Yq/9WV2wuqJUf3ES64Zt8ntx8au1rTSkjZAMl+ujMJ60M2K
	+5BVXp4vDlxxTbAjJdmLUnK4Tw3zTEf6QfyQJnqMlZLjJPnT61xsuUT+sMWWc62XjW8/r8K2XZWEl
	X3GTirZLHz38pODa45tQUreiMmzZPWdD8kM3mtEFESZdgbNKHZvFiYaPTjPLcPrRCzuixDuINQoOc
	V8sb6MhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSRe-0007rY-OX; Wed, 03 Jun 2020 12:24:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSRY-0007pp-UH
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 12:24:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 967DA48C7;
 Wed,  3 Jun 2020 14:24:20 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a2e27625;
 Wed, 3 Jun 2020 14:24:04 +0200 (CEST)
Date: Wed, 3 Jun 2020 14:24:19 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tim Harvey <tharvey@gateworks.com>
Message-ID: <20200603122419.GA13801@meh.true.cz>
References: <1590674204-26618-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590674204-26618-1-git-send-email-tharvey@gateworks.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_052429_123991_BD329317 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: add I2C retries for ventana i2c1
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tim Harvey <tharvey@gateworks.com> [2020-05-28 06:56:44]:

Hi,

> The GSC sitting on i2c1 can NAK I2C transactions if it is busy
> performing an ADC cycle. Allow enough retries to work around this.

this looks like you either need to keep in your own vendor tree or try to fix
properly upstream, thanks. So I'm not going to accept this as this would
become just another maintenance burden during kernel version bumps etc.

-- ynezz

> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  ...x-add-retries-for-NAK-s-on-ventana-boards.patch | 42 ++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch
> 
> diff --git a/target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch b/target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch
> new file mode 100644
> index 0000000..5f45342
> --- /dev/null
> +++ b/target/linux/imx6/patches-5.4/200-i2c-imx-add-retries-for-NAK-s-on-ventana-boards.patch
> @@ -0,0 +1,42 @@
> +From be183fc2af49e6020bb0b1ac8359351707383f63 Mon Sep 17 00:00:00 2001
> +From: Tim Harvey <tharvey@gateworks.com>
> +Date: Tue, 12 May 2020 12:41:32 -0700
> +Subject: [PATCH] i2c: imx: add retries for NAK's on ventana boards
> +
> +Ventana boards have a Gateworks System Controller (gsc) module that can
> +nak i2c transactions when its busy in an ADC loop. In order to not have to
> +hack up the pca953x and ds1672 device drivers which the GSC emulates we will
> +just add i2c retries around NAK's.
> +
> +Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> +---
> + drivers/i2c/busses/i2c-imx.c | 6 ++++++
> + 1 file changed, 6 insertions(+)
> +
> +diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> +index a3b6133..b2378d8 100644
> +--- a/drivers/i2c/busses/i2c-imx.c
> ++++ b/drivers/i2c/busses/i2c-imx.c
> +@@ -467,6 +467,8 @@ static int i2c_imx_acked(struct imx_i2c_struct *i2c_imx)
> + {
> + 	if (imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR) & I2SR_RXAK) {
> + 		dev_dbg(&i2c_imx->adapter.dev, "<%s> No ACK\n", __func__);
> ++		if (i2c_imx->adapter.retries)
> ++			return -EAGAIN;
> + 		return -ENXIO;  /* No ACK */
> + 	}
> + 
> +@@ -1097,6 +1099,10 @@ static int i2c_imx_probe(struct platform_device *pdev)
> + 	i2c_imx->adapter.dev.of_node	= pdev->dev.of_node;
> + 	i2c_imx->base			= base;
> + 	ACPI_COMPANION_SET(&i2c_imx->adapter.dev, ACPI_COMPANION(&pdev->dev));
> ++	if (of_machine_is_compatible("gw,ventana") && phy_addr == 0x021a0000) {
> ++		dev_info(&pdev->dev, "Adding retries for Ventana GSC\n");
> ++		i2c_imx->adapter.retries = 3;
> ++	}
> + 
> + 	/* Get I2C clock */
> + 	i2c_imx->clk = devm_clk_get(&pdev->dev, NULL);
> +-- 
> +2.7.4

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
