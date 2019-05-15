Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41C91E9CC
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 10:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v2tJTyL6zZ3v5f4W9UALZ47NbXTkzEIWjux+12kE7Bo=; b=XqzKi65CdiIm1DyxMTzDzw8zOp
	Hwa8fGdSuRGSjmp02FiQra7p87SU1m8PBB4kQaHS80QI/mVkTVJ0KK94D/lsseu8rnqCwYr+ruMbs
	doOwjP0vJj6pNCKQDP/z6z2vKfy71NZFUdMGxOy+fMYWtXiVPcrZStMz+F9jDWTxGVIHhkMFOldCm
	q/mXCqFVoCwzMBgFxx/OXCSiOHbSn2LRoeFtYX8sg8M8GQWqOdP1D1Y22g+ytELbDMskqOqKUUSGm
	PIUXFTLe49wTgCORk9BESZC4ArqXNEktcaAp61+v+99vXpmlQGK2g7+bmYWXqfJYtUIo/DdUU5GqO
	W3LmCwxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQowE-0002ye-FH; Wed, 15 May 2019 08:06:58 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQow7-0002yK-96
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 08:06:53 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4F85LXD014556
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 10:05:21 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 36DA03C91;
 Wed, 15 May 2019 10:05:18 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 89c357a1;
 Wed, 15 May 2019 10:05:16 +0200 (CEST)
Date: Wed, 15 May 2019 10:05:16 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190515080516.GG93050@meh.true.cz>
References: <20190514223956.19663-1-lede@allycomm.com>
 <20190514223956.19663-3-lede@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514223956.19663-3-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_010651_632336_1627037A 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] ath79: Prepare nand subtarget for
 SPI-NAND boards under Linux 4.19
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org,
 "Marty E. Plummer" <hanetzer@startmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeff Kletsky <lede@allycomm.com> [2019-05-14 15:39:55]:

[ adding Marty (author of ar300m-nand support) to the Cc loop ]

>   * Removed non-functional GL.iNet AR300M NAND target

you've probably missed some parts:

 package/boot/uboot-envtools/files/ath79:glinet,gl-ar300m-nand|\
 target/linux/ath79/base-files/etc/board.d/01_leds:glinet,gl-ar300m-nand|\
 target/linux/ath79/base-files/etc/board.d/02_network:   glinet,gl-ar300m-nand|\
 target/linux/ath79/dts/qca9531_glinet_gl-ar300m-nand.dts:       compatible = "glinet,gl-ar300m-nand", "qca,qca9531";

could you please make this ar300m-nand removal separate commit (probably first
in the series) and add Marty to the Cc?

 Cc: Marty E. Plummer <hanetzer@startmail.com>
 Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>

It would be nice to make him aware about this possible device removal as he
might be interested in fixing of support for this device or in the other case,
he can possibly give you his Acked-by/Reviewed-by tag.

> ---
>  target/linux/ath79/image/nand.mk       | 13 -----------
>  target/linux/ath79/nand/config-default | 32 +++++++++++++++-----------
>  target/linux/ath79/nand/target.mk      | 10 +++++---
>  3 files changed, 26 insertions(+), 29 deletions(-)
> 
> diff --git a/target/linux/ath79/image/nand.mk b/target/linux/ath79/image/nand.mk
> index eee419194b..e69de29bb2 100644
> --- a/target/linux/ath79/image/nand.mk
> +++ b/target/linux/ath79/image/nand.mk
> @@ -1,13 +0,0 @@
> -define Device/glinet_gl-ar300m-nand
> -  ATH_SOC := qca9531
> -  DEVICE_TITLE := GL-AR300M (NAND)
> -  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-storage kmod-usb-ledtrig-usbport
> -  KERNEL_SIZE := 2048k
> -  BLOCKSIZE := 128k
> -  PAGESIZE := 2048
> -  VID_HDR_OFFSET := 512
> -  IMAGES += factory.ubi
> -  IMAGE/sysupgrade.bin := sysupgrade-tar
> -  IMAGE/factory.ubi := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi
> -endef
> -TARGET_DEVICES += glinet_gl-ar300m-nand
> diff --git a/target/linux/ath79/nand/config-default b/target/linux/ath79/nand/config-default
> index 738c29c9b1..05a5a8dbd0 100644
> --- a/target/linux/ath79/nand/config-default
> +++ b/target/linux/ath79/nand/config-default
> @@ -1,14 +1,20 @@
> -CONFIG_BCH=y
> -CONFIG_MTD_NAND=y
> -CONFIG_MTD_NAND_BCH=y
> -CONFIG_MTD_NAND_ECC=y
> -CONFIG_MTD_NAND_ECC_BCH=y
> -CONFIG_MTD_SPINAND_MT29F=y
> -CONFIG_MTD_SPINAND_ONDIEECC=y
> +CONFIG_BLK_MQ_PCI=y
> +CONFIG_LEDS_RESET=y
> +CONFIG_MTD_NAND_CORE=y
> +CONFIG_MTD_SPI_NAND=y
>  CONFIG_MTD_UBI=y
> -CONFIG_MTD_UBI_BEB_LIMIT=20
> -# CONFIG_MTD_UBI_BLOCK is not set
> -# CONFIG_MTD_UBI_FASTMAP is not set
> -# CONFIG_MTD_UBI_GLUEBI is not set
> -CONFIG_MTD_UBI_WL_THRESHOLD=4096
> -# CONFIG_UBIFS_FS is not set
> +CONFIG_MTD_UBI_BLOCK=y
> +CONFIG_OF_ADDRESS_PCI=y
> +CONFIG_OF_PCI=y
> +CONFIG_OF_PCI_IRQ=y
> +CONFIG_PCI=y
> +# CONFIG_PCI_AR71XX is not set
> +CONFIG_PCI_AR724X=y
> +CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
> +CONFIG_PCI_DOMAINS=y
> +# CONFIG_PHY_AR7100_USB is not set
> +CONFIG_PHY_AR7200_USB=y
> +CONFIG_UBIFS_FS=y
> +CONFIG_UBIFS_FS_ADVANCED_COMPR=y
> +CONFIG_UBIFS_FS_LZO=y
> +CONFIG_UBIFS_FS_ZLIB=y
> diff --git a/target/linux/ath79/nand/target.mk b/target/linux/ath79/nand/target.mk
> index 91afe675c5..6ab9748ca4 100644
> --- a/target/linux/ath79/nand/target.mk
> +++ b/target/linux/ath79/nand/target.mk
> @@ -1,9 +1,13 @@
>  BOARDNAME := Generic devices with NAND flash
> -FEATURES += squashfs nand rtc
> +
> +# SPI NAND support requires at least Linux 4.19

You can drop this comment, having this in the commit message is enough.

> +KERNEL_PATCHVER:=4.19
> +
> +FEATURES += squashfs nand
>  
>  DEFAULT_PACKAGES += wpad-basic
>  
>  define Target/Description
> -	Build firmware for Atheros AR71xx/AR913x based boards with
> -	NAND flash, e.g. Netgear WNDR4300.
> +	Firmware for boards based on MIPS 24kc Atheros/Qualcomm SoCs
> +	in the ar72xx and subsequent generations with support for NAND flash
>  endef
> -- 
> 2.20.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
