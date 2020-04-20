Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8DB1B0773
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 13:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzNbUTOqrUf54vZvHvdW1H9txBZUAJk63Lj+ze7l1ck=; b=NmM19ScfWE7V4U
	DvGrOpom+6JCLpWe9FQxXIDvKubyJB4oGBlO9tPnkVNvQoW3iPeyKHeU9S0Itkj+Tzd9nf/vs7rNv
	oYJWPnpdUWlavFj7Wr/ZCjcT+Iy7TNsjzCT1y3LnmhCv0HKMR4WP/Xl6qFE5inchn4gf6NfxoOi5F
	eKSuhDCsBGZjcj98MwXnPYhSgQ7Mq3Nv2Lk/8OcTNpVqqQiuW6AsJaHYUkp2flZVW/URLSLYhkI/A
	mcGDDNn3k2ozB4vHqbXLaUyHIXLVfq8674PyvBC0SYcp7VNcmbZ66lp6izbhEbrw+wXLOIJs1J/lf
	T5hFba3hTNYoNMYc7BuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUf9-0006T1-2u; Mon, 20 Apr 2020 11:32:31 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUen-0006GY-PN
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 11:32:11 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 443C62A04B2;
 Mon, 20 Apr 2020 12:32:08 +0100 (BST)
Date: Mon, 20 Apr 2020 13:32:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-mtd@lists.infradead.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>
Message-ID: <20200420133205.5c068155@collabora.com>
In-Reply-To: <20200419125140.1307309-10-boris.brezillon@collabora.com>
References: <20200419125140.1307309-1-boris.brezillon@collabora.com>
 <20200419125140.1307309-10-boris.brezillon@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_043209_955082_D92346C6 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 9/9] mtd: rawnand: bcm47xx: Move the
 driver to drivers/mtd/nand/raw/
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
 bcm-kernel-feedback-list@broadcom.com, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, 19 Apr 2020 14:51:40 +0200
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> Now that we have a single we can move it to the directory where all
> single source file drivers live.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  drivers/mtd/nand/raw/Makefile                            | 1 +
>  drivers/mtd/nand/raw/{bcm47xxnflash => }/bcm47xxnflash.c | 0
>  drivers/mtd/nand/raw/bcm47xxnflash/Makefile              | 2 --
>  3 files changed, 1 insertion(+), 2 deletions(-)
>  rename drivers/mtd/nand/raw/{bcm47xxnflash => }/bcm47xxnflash.c (100%)
>  delete mode 100644 drivers/mtd/nand/raw/bcm47xxnflash/Makefile
> 
> diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
> index 2d136b158fb7..703d696c2d61 100644
> --- a/drivers/mtd/nand/raw/Makefile
> +++ b/drivers/mtd/nand/raw/Makefile
> @@ -58,6 +58,7 @@ obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
>  obj-$(CONFIG_MTD_NAND_STM32_FMC2)	+= stm32_fmc2_nand.o
>  obj-$(CONFIG_MTD_NAND_MESON)		+= meson_nand.o
>  obj-$(CONFIG_MTD_NAND_CADENCE)		+= cadence-nand-controller.o
> +obj-$(CONFIG_MTD_NAND_BCM47XXNFLASH)	+= bcm47xxnflash.o

I forgot to remove the 

obj-$(CONFIG_MTD_NAND_BCM47XXNFLASH)	+= bcm47xxnflash/

line. Will fix it in v2.

>  
>  nand-objs := nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_ids.o
>  nand-objs += nand_onfi.o
> diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.c b/drivers/mtd/nand/raw/bcm47xxnflash.c
> similarity index 100%
> rename from drivers/mtd/nand/raw/bcm47xxnflash/bcm47xxnflash.c
> rename to drivers/mtd/nand/raw/bcm47xxnflash.c
> diff --git a/drivers/mtd/nand/raw/bcm47xxnflash/Makefile b/drivers/mtd/nand/raw/bcm47xxnflash/Makefile
> deleted file mode 100644
> index 71a953078799..000000000000
> --- a/drivers/mtd/nand/raw/bcm47xxnflash/Makefile
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -obj-$(CONFIG_MTD_NAND_BCM47XXNFLASH)	+= bcm47xxnflash.o


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
