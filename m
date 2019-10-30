Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33766E9ADE
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 12:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75CUSm6/pXV2FxPYersT7ofUZIxs8LtfCKRHmR5wgKc=; b=Z+HTzvCa0kc1ux
	qmWdxm9SOj3geKjSz2kfwRJ/5h4B5XlyxoGCIwEUC2xVZxsJMkWrmtA86CfFRfTjB2ca5ObGbLj6d
	FztWflt8iUBSSP5v5ptIEOhZJuQ1tBTI+OU/5Hq5Ynjaep3DAz1J/QGfWAjT4JF+OLwpUCHPXroos
	4QusNVgSdeCbzpy9h9xAcUUSC3fRlqD60tifLYEts5ABU4f1Pd9G8YJ0eXdmal9FkEkcV2OROxEkT
	/UtH4yb+5i/izLif6kFDGLOXV5kBIgrwOLgAVCqf02LhPLRpkAYJ6I2BVN+Db5lE09nm5W0UxCB+X
	SNSsBtlZOoC9SHRM2QBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPmGX-0005Ar-S7; Wed, 30 Oct 2019 11:35:53 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPmGL-0005AD-Qe
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 11:35:46 +0000
Received: by mail-qk1-x743.google.com with SMTP id e2so2326373qkn.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 04:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gt0vgYkQquJUdMMmqh5YC51xRMJDmMvQbKiLYVvAJiE=;
 b=rf/aaYXZiWkBkRM1CnTn/nvHjCjO1/sZ91B9rgh12x99X5QWTyYhJROqcFZRP1U9vx
 8soEaYSDdM2umDxNAl/mWOMOW3ygBvHUX4Y4lPbduh9sdOSIcR8/oMt9+dYuLZsGj3EP
 fHjBldKDt+Z0qFjtFV9F00dgzASXrL4hj3fq8wFTCf9JOASf60lg7kAvcYEw7zTbJ3q2
 MQvfpES2dRcH964iIEiiA9mrwoFgFTV3guyCNCmMc5qfY2qsDy4AIOEoJULqFYxoel4o
 Y1/bEuA5NmPRJbILyAQZ+0FtgVVfKs3VYObbMlxyPNls/0YiTLCoac7w9XLDAdkRM2KX
 5GWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gt0vgYkQquJUdMMmqh5YC51xRMJDmMvQbKiLYVvAJiE=;
 b=DpyP9d0Pc5gHljtYvK7cY8VBt0PDRVghl2fGOFdYhRGdW3ZMp4Lutv5P4cwDCPuxtI
 d7RTqJKOwu1V0/E12Oob/KpEnEgcuE/NKnsCpZF6PDVR133Vmh6GzSr6EB1Bj+3WQIUI
 7nUlbrD/4Gs/w0BWMBbQWU9NkJFl0YG0+vTyy4FmSigPoZg6laTTkoxB609PS3aT/wRF
 IGaUtaGqlL/rPHPad9JP2ZvHwkHi1TY9vwOTHxPAPP3X2ajZ7GpBYNfUuN9easXg8Jio
 HHhrRlP/4mrVJrnYV9kslcQ9z42lYawkiYU/G9E8Z0pAGUYdeKbrM/5rNeIKiuQex0/m
 JlUQ==
X-Gm-Message-State: APjAAAUcO+MVgJcYE94dNok/3GKITaM/Ulw/poNAS0tWn2Q+3p+qBO3Q
 eUo6HIxXb0AkL0JUePSBK1zfcHa+v7QklL1qkn2i1HC2
X-Google-Smtp-Source: APXvYqwjEcBqV5Nxox+hmbNOGkr8ua0ssjknme/yhr/XT+xh3k4US4LxMpgF3ErFSYI4pAM8oxXQPoto2Lgg704w3ko=
X-Received: by 2002:a37:a950:: with SMTP id s77mr11727185qke.463.1572435339069; 
 Wed, 30 Oct 2019 04:35:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191030112726.13106-1-daniel@dd-wrt.com>
 <20191030112726.13106-2-daniel@dd-wrt.com>
In-Reply-To: <20191030112726.13106-2-daniel@dd-wrt.com>
From: Robert Marko <robimarko@gmail.com>
Date: Wed, 30 Oct 2019 12:35:26 +0100
Message-ID: <CAOX2RU4g+sNp7rmctumONyxjQQcKRyb+ifVJZvpc_i61iW9Pog@mail.gmail.com>
To: Daniel Danzberger <daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_043541_975318_045A9CB4 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ipq40xx: Add gigadevice nandspi
 flash driver
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, 30 Oct 2019 at 12:28, Daniel Danzberger <daniel@dd-wrt.com> wrote:
>
> This patch adds support for Gigadevice SPI NAND device to the mt29f stagging driver.
Which model of SPI NAND does this board use?
MT29F was removed in 4.21 and should not be used as upstream SPI-NAND
framework replaced it in vendor agnostic way.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/drivers/staging?h=v5.4-rc5&id=647ad49ca672b80a3fbf8396bd453ef68ba4916c
OpenWrt has backported support for all SPI-NAND drivers from 5.2
kernel, so please use SPI-NAND instead.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/mtd/nand/spi?h=v5.4-rc5
>
> Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
> ---
>  ...port-gigadevice-nandspi-flash-device.patch | 1778 +++++++++++++++++
>  1 file changed, 1778 insertions(+)
>  create mode 100644 target/linux/ipq40xx/patches-4.19/400-mtd-nand-support-gigadevice-nandspi-flash-device.patch
>
> diff --git a/target/linux/ipq40xx/patches-4.19/400-mtd-nand-support-gigadevice-nandspi-flash-device.patch b/target/linux/ipq40xx/patches-4.19/400-mtd-nand-support-gigadevice-nandspi-flash-device.patch
> new file mode 100644
> index 0000000000..a3b98cd275
> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.19/400-mtd-nand-support-gigadevice-nandspi-flash-device.patch
> @@ -0,0 +1,1778 @@
> +diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
> +index 5423c3bb..31aac787 100644
> +--- a/drivers/mtd/nand/raw/nand_ids.c
> ++++ b/drivers/mtd/nand/raw/nand_ids.c
> +@@ -185,6 +185,7 @@ static const struct nand_manufacturer nand_manufacturers[] = {
> +       {NAND_MFR_INTEL, "Intel"},
> +       {NAND_MFR_ATO, "ATO"},
> +       {NAND_MFR_WINBOND, "Winbond"},
> ++      {NAND_MFR_GIGA, "Gigadevice"},
> + };
> +
> + /**
> +diff --git a/drivers/staging/mt29f_spinand/Kconfig b/drivers/staging/mt29f_spinand/Kconfig
> +index f3f9cb3b..139c058c 100644
> +--- a/drivers/staging/mt29f_spinand/Kconfig
> ++++ b/drivers/staging/mt29f_spinand/Kconfig
> +@@ -14,3 +14,13 @@ config MTD_SPINAND_ONDIEECC
> +       help
> +         Internal ECC.
> +         Enables Hardware ECC support for Micron SPI NAND.
> ++
> ++config MTD_SPINAND_GIGADEVICE
> ++      tristate "SPINAND Devcie Support for Gigadevice "
> ++      depends on MTD_SPINAND_MT29F
> ++      help
> ++         This enables support for accessing Gigadevice SPI NAND flash
> ++         devices.
> ++         If you have Gigadevice SPI NAND chip say yes.
> ++
> ++         If unsure, say no here.
> +diff --git a/drivers/staging/mt29f_spinand/Makefile b/drivers/staging/mt29f_spinand/Makefile
> +index e47af0f7..36df11e6 100644
> +--- a/drivers/staging/mt29f_spinand/Makefile
> ++++ b/drivers/staging/mt29f_spinand/Makefile
> +@@ -1 +1,2 @@
> + obj-$(CONFIG_MTD_SPINAND_MT29F) += mt29f_spinand.o
> ++obj-$(CONFIG_MTD_SPINAND_GIGADEVICE)  += giga_spinand.o
> +diff --git a/drivers/staging/mt29f_spinand/giga_spinand.c b/drivers/staging/mt29f_spinand/giga_spinand.c
> +new file mode 100644
> +index 00000000..a619e96d
> +--- /dev/null
> ++++ b/drivers/staging/mt29f_spinand/giga_spinand.c
> +@@ -0,0 +1,396 @@
> ++/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
> ++ *
> ++ * Permission to use, copy, modify, and/or distribute this software for any
> ++ * purpose with or without fee is hereby granted, provided that the above
> ++ * copyright notice and this permission notice appear in all copies.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> ++ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> ++ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> ++ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> ++ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> ++ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> ++ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
> ++ *
> ++ */
> ++
> ++#include <linux/module.h>
> ++#include <linux/mtd/mtd.h>
> ++#include <linux/mtd/partitions.h>
> ++#include <linux/mtd/rawnand.h>
> ++#include <linux/spi/spi.h>
> ++#include "giga_spinand.h"
> ++
> ++/* Only ecc un-protected fields in the spare area included */
> ++static int winbond_ooblayout_64_ecc(struct mtd_info *mtd, int section,
> ++                struct mtd_oob_region *oobregion) {
> ++  if (section > 3)
> ++    return -ERANGE;
> ++
> ++  oobregion->offset = (section * 16) + 8;
> ++  oobregion->length = 9;
> ++  return 0;
> ++}
> ++
> ++static int winbond_ooblayout_64_free(struct mtd_info *mtd, int section,
> ++                 struct mtd_oob_region *oobregion) {
> ++  if (section > 3)
> ++    return -ERANGE;
> ++
> ++  oobregion->offset = (section * 16) + 2;
> ++  oobregion->length = 2;
> ++  return 0;
> ++}
> ++
> ++static const struct mtd_ooblayout_ops winbond_ooblayout = {
> ++  .ecc = winbond_ooblayout_64_ecc,
> ++  .free = winbond_ooblayout_64_free,
> ++};
> ++
> ++static int ath79_ooblayout_64_ecc(struct mtd_info *mtd, int section,
> ++                struct mtd_oob_region *oobregion) {
> ++  if (section > 7)
> ++    return -ERANGE;
> ++  switch(section) {
> ++    case 0:
> ++      oobregion->offset = 64;
> ++      oobregion->length = 8;
> ++      break;
> ++    case 1:
> ++      oobregion->offset = 72;
> ++      oobregion->length = 8;
> ++      break;
> ++    case 2:
> ++      oobregion->offset = 80;
> ++      oobregion->length = 8;
> ++      break;
> ++    case 3:
> ++      oobregion->offset = 88;
> ++      oobregion->length = 8;
> ++      break;
> ++    case 4:
> ++      oobregion->offset = 96;
> ++      oobregion->length = 8;
> ++      break;
> ++    case 5:
> ++      oobregion->offset = 104;
> ++      oobregion->length = 8;
> ++      break;
> ++    case 6:
> ++      oobregion->offset = 112;
> ++      oobregion->length = 8;
> ++      break;
> ++    case 7:
> ++      oobregion->offset = 120;
> ++      oobregion->length = 8;
> ++      break;
> ++  }
> ++  return 0;
> ++}
> ++
> ++static int ath79_ooblayout_64_free(struct mtd_info *mtd, int section,
> ++                 struct mtd_oob_region *oobregion) {
> ++  if (section > 2)
> ++    return -ERANGE;
> ++
> ++  oobregion->offset = (section * 16);
> ++  oobregion->length = 3;
> ++  return 0;
> ++}
> ++
> ++static const struct mtd_ooblayout_ops ath79_ooblayout = {
> ++  .ecc = ath79_ooblayout_64_ecc,
> ++  .free = ath79_ooblayout_64_free,
> ++};
> ++
> ++
> ++/* Only ecc un-protected fields in the spare area included */
> ++/* ECC parity code stored in the additional hidden spare area */
> ++static int macronix_ooblayout_64_ecc(struct mtd_info *mtd, int section,
> ++                struct mtd_oob_region *oobregion) {
> ++  return -ERANGE;
> ++}
> ++
> ++static int macronix_ooblayout_64_free(struct mtd_info *mtd, int section,
> ++                 struct mtd_oob_region *oobregion) {
> ++  if (section > 3)
> ++    return -ERANGE;
> ++
> ++  oobregion->offset = (section * 16) + 2;
> ++  oobregion->length = 2;
> ++  return 0;
> ++}
> ++
> ++static const struct mtd_ooblayout_ops macronix_ooblayout = {
> ++  .ecc = macronix_ooblayout_64_ecc,
> ++  .free = macronix_ooblayout_64_free,
> ++};
> ++
> ++void gigadevice_set_defaults_128mb(struct spi_device *spi_nand)
> ++{
> ++      struct mtd_info *mtd = (struct mtd_info *)dev_get_drvdata
> ++                                              (&spi_nand->dev);
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++
> ++      chip->ecc.size  = 0x800;
> ++      chip->ecc.bytes = 0x0;
> ++      chip->ecc.steps = 0x0;
> ++
> ++      chip->ecc.strength = 1;
> ++      chip->ecc.total = 0;
> ++  mtd_set_ooblayout(mtd, &ath79_ooblayout);
> ++}
> ++
> ++void gigadevice_set_defaults(struct spi_device *spi_nand)
> ++{
> ++      struct mtd_info *mtd = (struct mtd_info *)dev_get_drvdata
> ++                                              (&spi_nand->dev);
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++
> ++      chip->ecc.size  = 0x800;
> ++      chip->ecc.bytes = 0x0;
> ++      chip->ecc.steps = 0x0;
> ++
> ++      chip->ecc.strength = 1;
> ++      chip->ecc.total = 0;
> ++}
> ++
> ++void gigadevice_set_defaults_512mb(struct spi_device *spi_nand)
> ++{
> ++      struct mtd_info *mtd = (struct mtd_info *)dev_get_drvdata
> ++                                              (&spi_nand->dev);
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++
> ++      chip->ecc.size  = 0x1000;
> ++      chip->ecc.bytes = 0x0;
> ++      chip->ecc.steps = 0x0;
> ++
> ++      chip->ecc.strength = 1;
> ++      chip->ecc.total = 0;
> ++}
> ++
> ++void winbond_set_defaults(struct spi_device *spi_nand)
> ++{
> ++      struct mtd_info *mtd = dev_get_drvdata(&spi_nand->dev);
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++
> ++      chip->ecc.size  = 0x800;
> ++      chip->ecc.bytes = 0x0;
> ++      chip->ecc.steps = 0x0;
> ++
> ++      chip->ecc.strength = 1;
> ++      chip->ecc.total = 0;
> ++  mtd_set_ooblayout(mtd, &winbond_ooblayout);
> ++}
> ++
> ++void macronix_set_defaults(struct spi_device *spi_nand)
> ++{
> ++      struct mtd_info *mtd = dev_get_drvdata(&spi_nand->dev);
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++
> ++      chip->ecc.size  = 0x800;
> ++      chip->ecc.bytes = 0x0;
> ++      chip->ecc.steps = 0x0;
> ++
> ++      chip->ecc.strength = 1;
> ++      chip->ecc.total = 0;
> ++  mtd_set_ooblayout(mtd, &macronix_ooblayout);
> ++}
> ++
> ++void gigadevice_read_cmd(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)(page_id >> 16);
> ++      cmd->addr[1] = (u8)(page_id >> 8);
> ++      cmd->addr[2] = (u8)(page_id);
> ++}
> ++
> ++void toshiba_read_cmd(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[0] = ((u8)(page_id >> 16) % 2);
> ++      cmd->addr[1] = (u8)(page_id >> 8);
> ++      cmd->addr[2] = (u8)(page_id);
> ++}
> ++
> ++void gigadevice_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = 0xff; /*dummy byte*/
> ++      cmd->addr[1] = (u8)(column >> 8);
> ++      cmd->addr[2] = (u8)(column);
> ++}
> ++
> ++void gigadevice_read_data_v2(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)(column >> 8);
> ++      cmd->addr[1] = (u8)(column);
> ++      cmd->addr[2] = 0xff; /*dummy byte*/
> ++}
> ++void macronix_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = ((u8)(column >> 8) & MACRONIX_NORM_RW_MASK);
> ++      cmd->addr[1] = (u8)(column);
> ++}
> ++
> ++void winbond_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)(column >> 8);
> ++      cmd->addr[1] = (u8)(column);
> ++}
> ++
> ++void toshiba_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = ((u8)(column >> 8) & TOSHIBA_NORM_RW_MASK);
> ++      cmd->addr[1] = (u8)(column);
> ++}
> ++
> ++void gigadevice_write_cmd(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)(page_id >> 16);
> ++      cmd->addr[1] = (u8)(page_id >> 8);
> ++      cmd->addr[2] = (u8)(page_id);
> ++}
> ++
> ++void toshiba_write_cmd(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[0] = ((u8)(page_id >> 16) % 2);
> ++      cmd->addr[1] = (u8)(page_id >> 8);
> ++      cmd->addr[2] = (u8)(page_id);
> ++}
> ++
> ++void gigadevice_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)(column >> 8);
> ++      cmd->addr[1] = (u8)(column);
> ++}
> ++
> ++void macronix_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = ((u8)(column >> 8) & MACRONIX_NORM_RW_MASK);
> ++      cmd->addr[1] = (u8)(column);
> ++}
> ++
> ++void winbond_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)(column >> 8);
> ++      cmd->addr[1] = (u8)(column);
> ++}
> ++
> ++void toshiba_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = ((u8)(column >> 8) & TOSHIBA_NORM_RW_MASK);
> ++      cmd->addr[1] = (u8)(column);
> ++}
> ++
> ++void gigadevice_erase_blk(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)(page_id >> 16);
> ++      cmd->addr[1] = (u8)(page_id >> 8);
> ++      cmd->addr[2] = (u8)(page_id);
> ++}
> ++
> ++void toshiba_erase_blk(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)((page_id >> 16) % 2);
> ++      cmd->addr[1] = (u8)(page_id >> 8);
> ++      cmd->addr[2] = (u8)(page_id);
> ++}
> ++
> ++int gigadevice_verify_ecc(u8 status)
> ++{
> ++      int ecc_status = (status & STATUS_ECC_MASK_GIGA);
> ++
> ++      if (ecc_status == STATUS_ECC_ERROR_GIGA)
> ++              return SPINAND_ECC_ERROR;
> ++      else if (ecc_status >= STATUS_ECC_BF_THRESHOLD_GIGA)
> ++              return SPINAND_ECC_CORRECTED;
> ++      else
> ++              return 0;
> ++}
> ++
> ++int macronix_verify_ecc(u8 status)
> ++{
> ++      int ecc_status = (status & STATUS_ECC_MASK_MACRONIX);
> ++
> ++      if ((ecc_status == STATUS_ECC_ERROR_MACRONIX) ||
> ++          (ecc_status == STATUS_ECC_MASK_MACRONIX))
> ++              return SPINAND_ECC_ERROR;
> ++      else if (ecc_status)
> ++              return SPINAND_ECC_CORRECTED;
> ++      else
> ++              return 0;
> ++}
> ++
> ++int toshiba_verify_ecc(u8 status)
> ++{
> ++      int ecc_status = (status & STATUS_ECC_MASK_TOSHIBA);
> ++
> ++      if (ecc_status == STATUS_ECC_ERROR_TOSHIBA)
> ++              return SPINAND_ECC_ERROR;
> ++      else if (ecc_status == STATUS_ECC_BF_THRESHOLD_TOSHIBA)
> ++              return SPINAND_ECC_CORRECTED;
> ++      else
> ++              return 0;
> ++}
> ++
> ++int dummy_verify_ecc(u8 status)
> ++{
> ++      return 0;
> ++}
> ++
> ++int gigadevice_parse_id(struct spi_device *spi_nand,
> ++                      struct spinand_ops *ops, u8 *nand_id, u8 *id)
> ++{
> ++      if (nand_id[0] != NAND_MFR_GIGA && nand_id[0] != NAND_MFR_ATO)
> ++              return -EINVAL;
> ++
> ++      if (!(nand_id[0] == NAND_MFR_GIGA && nand_id[1] == ops->dev_id))
> ++              return -EINVAL;
> ++
> ++      id[0] = nand_id[0];
> ++      id[1] = nand_id[1];
> ++
> ++      return 0;
> ++}
> ++
> ++int gigadevice_parse_id_v2(struct spi_device *spi_nand,
> ++                         struct spinand_ops *ops, u8 *nand_id, u8 *id)
> ++{
> ++      if (nand_id[1] != NAND_MFR_GIGA && nand_id[1] != NAND_MFR_ATO)
> ++              return -EINVAL;
> ++
> ++      if (!(nand_id[1] == NAND_MFR_GIGA && nand_id[2] == ops->dev_id))
> ++              return -EINVAL;
> ++
> ++      id[0] = nand_id[1];
> ++      id[1] = nand_id[2];
> ++
> ++      return 0;
> ++}
> ++
> ++int macronix_parse_id(struct spi_device *spi_nand,
> ++                    struct spinand_ops *ops, u8 *nand_id, u8 *id)
> ++{
> ++      if (nand_id[1] != NAND_MFR_MACRONIX)
> ++              return -EINVAL;
> ++
> ++      return 0;
> ++}
> ++
> ++int winbond_parse_id(struct spi_device *spi_nand,
> ++                   struct spinand_ops *ops, u8 *nand_id, u8 *id)
> ++{
> ++      if (!(nand_id[1] == NAND_MFR_WINBOND && nand_id[2] == ops->dev_id))
> ++              return -EINVAL;
> ++
> ++      return 0;
> ++}
> ++
> ++int toshiba_parse_id(struct spi_device *spi_nand,
> ++                   struct spinand_ops *ops, u8 *nand_id, u8 *id)
> ++{
> ++      if (!(nand_id[1] == NAND_MFR_TOSHIBA && nand_id[2] == ops->dev_id))
> ++              return -EINVAL;
> ++
> ++      return 0;
> ++}
> ++
> ++MODULE_DESCRIPTION("SPI NAND driver for Gigadevice and Macronix");
> +diff --git a/drivers/staging/mt29f_spinand/giga_spinand.h b/drivers/staging/mt29f_spinand/giga_spinand.h
> +new file mode 100644
> +index 00000000..af0f7df0
> +--- /dev/null
> ++++ b/drivers/staging/mt29f_spinand/giga_spinand.h
> +@@ -0,0 +1,94 @@
> ++
> ++/* Copyright (c) 2015, The Linux Foundation. All rights reserved.
> ++ *
> ++ * Permission to use, copy, modify, and/or distribute this software for any
> ++ * purpose with or without fee is hereby granted, provided that the above
> ++ * copyright notice and this permission notice appear in all copies.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
> ++ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
> ++ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
> ++ * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
> ++ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
> ++ * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
> ++ * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
> ++ *
> ++ */
> ++
> ++#ifndef __GIGA_SPI_NAND_H
> ++#define __GIGA__SPI_NAND_H
> ++
> ++#include "mt29f_spinand.h"
> ++
> ++void gigadevice_set_defaults(struct spi_device *spi_nand);
> ++
> ++void gigadevice_set_defaults_128mb(struct spi_device *spi_nand);
> ++
> ++void gigadevice_set_defaults_512mb(struct spi_device *spi_nand);
> ++
> ++void winbond_set_defaults(struct spi_device *spi_nand);
> ++
> ++void macronix_set_defaults(struct spi_device *spi_nand);
> ++
> ++void gigadevice_read_cmd(struct spinand_cmd *cmd, u32 page_id);
> ++
> ++void gigadevice_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++void gigadevice_read_data_v2(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++void gigadevice_write_cmd(struct spinand_cmd *cmd, u32 column);
> ++
> ++void gigadevice_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++void gigadevice_erase_blk(struct spinand_cmd *cmd, u32 page_id);
> ++
> ++int gigadevice_parse_id(struct spi_device *spi_nand, struct spinand_ops *ops,
> ++                      u8 *nand_id, u8 *id);
> ++
> ++int gigadevice_parse_id_v2(struct spi_device *spi_nand, struct spinand_ops *ops,
> ++                         u8 *nand_id, u8 *id);
> ++
> ++int gigadevice_verify_ecc(u8 status);
> ++
> ++int dummy_verify_ecc(u8 status);
> ++
> ++void macronix_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++void macronix_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++int macronix_parse_id(struct spi_device *spi_nand, struct spinand_ops *ops,
> ++                    u8 *nand_id, u8 *id);
> ++
> ++int macronix_verify_ecc(u8 status);
> ++
> ++void winbond_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++void winbond_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++int winbond_parse_id(struct spi_device *spi_nand, struct spinand_ops *ops,
> ++                   u8 *nand_id, u8 *id);
> ++
> ++int winbond_die_select(struct spi_device *spi_nand,
> ++                     struct spinand_ops *dev_ops, u8 die_id);
> ++
> ++void toshiba_read_cmd(struct spinand_cmd *cmd, u32 page_id);
> ++
> ++void toshiba_read_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++void toshiba_write_cmd(struct spinand_cmd *cmd, u32 page_id);
> ++
> ++void toshiba_write_data(struct spinand_cmd *cmd, u16 column, u32 page_id);
> ++
> ++void toshiba_erase_blk(struct spinand_cmd *cmd, u32 page_id);
> ++
> ++int toshiba_parse_id(struct spi_device *spi_nand, struct spinand_ops *ops,
> ++                   u8 *nand_id, u8 *id);
> ++
> ++int toshiba_verify_ecc(u8 status);
> ++
> ++/* Macronix Specific defines */
> ++#define MACRONIX_NORM_RW_MASK 0x0F
> ++
> ++/* Toshiba Specific defines */
> ++#define TOSHIBA_NORM_RW_MASK  0x1F
> ++#endif /* __GIGA_SPI_NAND_H */
> +diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> +index 44847845..90c21890 100644
> +--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
> ++++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
> +@@ -20,20 +20,271 @@
> + #include <linux/mtd/partitions.h>
> + #include <linux/mtd/rawnand.h>
> + #include <linux/spi/spi.h>
> ++#include <linux/sizes.h>
> +
> + #include "mt29f_spinand.h"
> ++#include "giga_spinand.h"
> ++
> ++#define BUFSIZE (10 * 64 * 4096)
> ++#define CACHE_BUF 4352
> ++
> ++static int spinand_disable_ecc(struct spi_device *spi_nand);
> ++static int spinand_lock_block(struct spi_device *spi_nand, u8 lock);
> ++
> ++struct spinand_ops spinand_dev[] = {
> ++#ifdef CONFIG_MTD_SPINAND_GIGADEVICE
> ++      {
> ++              NAND_MFR_GIGA,
> ++              1,
> ++              0xb1,
> ++              INT_MAX,
> ++              0x10000,
> ++              gigadevice_set_defaults,
> ++              gigadevice_read_cmd,
> ++              gigadevice_read_data,
> ++              gigadevice_write_cmd,
> ++              gigadevice_write_data,
> ++              gigadevice_erase_blk,
> ++              gigadevice_parse_id,
> ++              gigadevice_verify_ecc,
> ++              NULL,
> ++      },
> ++      {
> ++              NAND_MFR_GIGA,
> ++              1,
> ++              0xb4,
> ++              INT_MAX,
> ++              0x20000,
> ++              gigadevice_set_defaults_512mb,
> ++              gigadevice_read_cmd,
> ++              gigadevice_read_data,
> ++              gigadevice_write_cmd,
> ++              gigadevice_write_data,
> ++              gigadevice_erase_blk,
> ++              gigadevice_parse_id,
> ++              gigadevice_verify_ecc,
> ++              NULL,
> ++      },
> ++      {
> ++              NAND_MFR_GIGA,
> ++              1,
> ++              0xa1,
> ++              INT_MAX,
> ++              0x10000,
> ++              gigadevice_set_defaults,
> ++              gigadevice_read_cmd,
> ++              gigadevice_read_data,
> ++              gigadevice_write_cmd,
> ++              gigadevice_write_data,
> ++              gigadevice_erase_blk,
> ++              gigadevice_parse_id,
> ++              gigadevice_verify_ecc,
> ++              NULL,
> ++      },
> ++      {
> ++              NAND_MFR_GIGA,
> ++              1,
> ++              0xd1,
> ++              INT_MAX,
> ++              0x10000,
> ++              gigadevice_set_defaults_128mb,
> ++              gigadevice_read_cmd,
> ++              gigadevice_read_data_v2,
> ++              gigadevice_write_cmd,
> ++              gigadevice_write_data,
> ++              gigadevice_erase_blk,
> ++              gigadevice_parse_id_v2,
> ++              gigadevice_verify_ecc,
> ++              NULL,
> ++      },
> ++      {
> ++              NAND_MFR_ATO,
> ++              1,
> ++              0x12,
> ++              INT_MAX,
> ++              0x10000,
> ++              gigadevice_set_defaults,
> ++              gigadevice_read_cmd,
> ++              gigadevice_read_data,
> ++              gigadevice_write_cmd,
> ++              gigadevice_write_data,
> ++              gigadevice_erase_blk,
> ++              gigadevice_parse_id,
> ++              dummy_verify_ecc,
> ++              NULL,
> ++      },
> ++#endif
> ++      {
> ++              NAND_MFR_MACRONIX,
> ++              1,
> ++              0x12,
> ++              INT_MAX,
> ++              0x10000,
> ++              macronix_set_defaults,
> ++              gigadevice_read_cmd,
> ++              macronix_read_data,
> ++              gigadevice_write_cmd,
> ++              macronix_write_data,
> ++              gigadevice_erase_blk,
> ++              macronix_parse_id,
> ++              macronix_verify_ecc,
> ++              NULL,
> ++      },
> ++      {
> ++              NAND_MFR_WINBOND,
> ++              1,
> ++              0xaa,
> ++              INT_MAX,
> ++              0x10000,
> ++              winbond_set_defaults,
> ++              gigadevice_read_cmd,
> ++              winbond_read_data,
> ++              gigadevice_write_cmd,
> ++              winbond_write_data,
> ++              gigadevice_erase_blk,
> ++              winbond_parse_id,
> ++              macronix_verify_ecc,
> ++              NULL,
> ++      },
> ++      {
> ++              NAND_MFR_WINBOND,
> ++              2,
> ++              0xab,
> ++              INT_MAX,
> ++              0x10000,
> ++              winbond_set_defaults,
> ++              gigadevice_read_cmd,
> ++              winbond_read_data,
> ++              gigadevice_write_cmd,
> ++              winbond_write_data,
> ++              gigadevice_erase_blk,
> ++              winbond_parse_id,
> ++              macronix_verify_ecc,
> ++              winbond_die_select,
> ++      },
> ++      {
> ++              NAND_MFR_TOSHIBA,
> ++              1,
> ++              0xcd,
> ++              INT_MAX,
> ++              0x20000,
> ++              gigadevice_set_defaults_512mb,
> ++              toshiba_read_cmd,
> ++              toshiba_read_data,
> ++              toshiba_write_cmd,
> ++              toshiba_write_data,
> ++              toshiba_erase_blk,
> ++              toshiba_parse_id,
> ++              toshiba_verify_ecc,
> ++              NULL,
> ++      },
> ++      { },
> ++};
> ++
> ++void mt29f_read_page_to_cache(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[1] = (u8)((page_id & 0xff00) >> 8);
> ++      cmd->addr[2] = (u8)(page_id & 0x00ff);
> ++}
> ++
> ++void mt29f_read_from_cache(struct spinand_cmd *cmd, u16 column, u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)((column & 0xff00) >> 8);
> ++      cmd->addr[0] |= (u8)(((page_id >> 6) & 0x1) << 4);
> ++      cmd->addr[1] = (u8)(column & 0x00ff);
> ++      cmd->addr[2] = (u8)(0xff);
> ++}
> ++
> ++void mt29f_program_data_to_cache(struct spinand_cmd *cmd, u16 column,
> ++                               u32 page_id)
> ++{
> ++      cmd->addr[0] = (u8)((column & 0xff00) >> 8);
> ++      cmd->addr[0] |= (u8)(((page_id >> 6) & 0x1) << 4);
> ++      cmd->addr[1] = (u8)(column & 0x00ff);
> ++}
> ++
> ++void mt29f_program_execute(struct spinand_cmd *cmd, u32 column)
> ++{
> ++      cmd->addr[1] = (u8)((column & 0xff00) >> 8);
> ++      cmd->addr[2] = (u8)(column & 0x00ff);
> ++}
> ++
> ++void mt29f_erase_block_erase(struct spinand_cmd *cmd, u32 page_id)
> ++{
> ++      cmd->addr[1] = (u8)((page_id & 0xff00) >> 8);
> ++      cmd->addr[2] = (u8)(page_id & 0x00ff);
> ++}
> ++
> ++int mt29f_verify_ecc(u8 status)
> ++{
> ++      int ecc_status = (status & STATUS_ECC_MASK);
> ++
> ++      if (ecc_status == STATUS_ECC_ERROR)
> ++              return SPINAND_ECC_ERROR;
> ++      else if (ecc_status == STATUS_ECC_1BIT_CORRECTED)
> ++              return SPINAND_ECC_CORRECTED;
> ++      else
> ++              return 0;
> ++}
> ++
> ++struct spinand_ops mt29f_spinand_ops = {
> ++              NAND_MFR_MICRON,
> ++              1,
> ++              0x0,
> ++              INT_MAX,
> ++              0x0,
> ++              NULL,
> ++              mt29f_read_page_to_cache,
> ++              mt29f_read_from_cache,
> ++              mt29f_program_execute,
> ++              mt29f_program_data_to_cache,
> ++              mt29f_erase_block_erase,
> ++              NULL,
> ++              mt29f_verify_ecc,
> ++              NULL,
> ++};
> ++
> ++static inline struct spinand_ops *get_dev_ops(struct spi_device *spi_nand)
> ++{
> ++      struct mtd_info *mtd = (struct mtd_info *)dev_get_drvdata
> ++                                                      (&spi_nand->dev);
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++      struct spinand_info *info = (struct spinand_info *)chip->priv;
> ++      struct spinand_ops *dev_ops = info->dev_ops;
> ++
> ++      return dev_ops;
> ++}
> ++
> ++void spinand_parse_id(struct spi_device *spi_nand, u8 *nand_id, u8 *id)
> ++{
> ++      int tmp;
> ++      struct spinand_ops *tmp_ops;
> ++      struct mtd_info *mtd = (struct mtd_info *)
> ++                                      dev_get_drvdata(&spi_nand->dev);
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++      struct spinand_info *info = (struct spinand_info *)chip->priv;
> ++
> ++      for (tmp = 0; tmp < ARRAY_SIZE(spinand_dev) - 1; tmp++) {
> ++              tmp_ops = &spinand_dev[tmp];
> ++                      if (tmp_ops->spinand_parse_id(spi_nand, tmp_ops,
> ++                                                    nand_id, id) == 0) {
> ++                              info->dev_ops = &spinand_dev[tmp];
> ++                              info->dev_ops->spinand_set_defaults(spi_nand);
> ++                              return;
> ++                      }
> ++      }
> ++      info->dev_ops = &mt29f_spinand_ops;
> ++}
> +
> +-#define BUFSIZE (10 * 64 * 2048)
> +-#define CACHE_BUF 2112
> + /*
> +  * OOB area specification layout:  Total 32 available free bytes.
> +  */
> +
> + static inline struct spinand_state *mtd_to_state(struct mtd_info *mtd)
> + {
> +-      struct nand_chip *chip = mtd_to_nand(mtd);
> +-      struct spinand_info *info = nand_get_controller_data(chip);
> +-      struct spinand_state *state = info->priv;
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++      struct spinand_info *info = (struct spinand_info *)chip->priv;
> ++      struct spinand_state *state = (struct spinand_state *)info->priv;
> +
> +       return state;
> + }
> +@@ -43,7 +294,7 @@ static int enable_hw_ecc;
> + static int enable_read_hw_ecc;
> +
> + static int spinand_ooblayout_64_ecc(struct mtd_info *mtd, int section,
> +-                                  struct mtd_oob_region *oobregion)
> ++                                      struct mtd_oob_region *oobregion)
> + {
> +       if (section > 3)
> +               return -ERANGE;
> +@@ -55,7 +306,7 @@ static int spinand_ooblayout_64_ecc(struct mtd_info *mtd, int section,
> + }
> +
> + static int spinand_ooblayout_64_free(struct mtd_info *mtd, int section,
> +-                                   struct mtd_oob_region *oobregion)
> ++                 struct mtd_oob_region *oobregion)
> + {
> +       if (section > 3)
> +               return -ERANGE;
> +@@ -72,8 +323,8 @@ static const struct mtd_ooblayout_ops spinand_oob_64_ops = {
> + };
> + #endif
> +
> +-/**
> +- * spinand_cmd - process a command to send to the SPI Nand
> ++/*
> ++ * spinand_cmd - to process a command to send to the SPI Nand
> +  * Description:
> +  *    Set up the command buffer to send to the SPI controller.
> +  *    The command buffer has to initialized to 0.
> +@@ -119,16 +370,72 @@ static int spinand_cmd(struct spi_device *spi, struct spinand_cmd *cmd)
> +       return spi_sync(spi, &message);
> + }
> +
> +-/**
> +- * spinand_read_id - Read SPI Nand ID
> ++static int get_die_id(struct spinand_ops *dev_ops, u32 page_id)
> ++{
> ++      u64 temp_page = (u64)page_id;
> ++
> ++      do_div(temp_page, dev_ops->pages_per_die);
> ++      if (temp_page > dev_ops->no_of_dies) {
> ++              pr_info("invalid die id : %llu\n", temp_page);
> ++              return -EINVAL;
> ++      }
> ++
> ++      return page_id;
> ++}
> ++
> ++/*
> ++ * winbond_die_select - send command 0xc2 to select die
> ++ * Description:
> ++ *   Die select function.
> ++ *   Die ID is given as either 0 or 1 to select die 0 or 1
> ++ *   respectively
> ++ */
> ++int winbond_die_select(struct spi_device *spi_nand,
> ++                     struct spinand_ops *dev_ops, u8 die_id)
> ++{
> ++      int retval;
> ++      struct spinand_cmd cmd = {0};
> ++
> ++      if (die_id < 0)
> ++              return -1;
> ++
> ++      if (dev_ops->prev_die_id == die_id)
> ++              return 0;
> ++
> ++      cmd.cmd = CMD_DIE_SELECT,
> ++      cmd.n_addr = 1,
> ++      cmd.addr[0] = die_id,
> ++      retval = spinand_cmd(spi_nand, &cmd);
> ++      if (retval < 0)
> ++              dev_err(&spi_nand->dev, "error %d in die select\n", retval);
> ++      else
> ++              dev_ops->prev_die_id = die_id;
> ++
> ++      return retval;
> ++}
> ++
> ++static inline int select_die(struct spi_device *spi_nand,
> ++                           struct spinand_ops *dev_ops, int die)
> ++{
> ++      if (!dev_ops->spinand_die_select)
> ++              return 0;
> ++
> ++      return dev_ops->spinand_die_select(spi_nand,
> ++              dev_ops, die);
> ++}
> ++
> ++/*
> ++ * spinand_read_id- Read SPI Nand ID
> +  * Description:
> +- *    read two ID bytes from the SPI Nand device
> ++ *    Read ID: read two ID bytes from the SPI Nand device
> +  */
> + static int spinand_read_id(struct spi_device *spi_nand, u8 *id)
> + {
> +       int retval;
> ++      int i;
> +       u8 nand_id[3];
> +       struct spinand_cmd cmd = {0};
> ++      struct spinand_ops *dev_ops;
> +
> +       cmd.cmd = CMD_READ_ID;
> +       cmd.n_rx = 3;
> +@@ -141,11 +448,26 @@ static int spinand_read_id(struct spi_device *spi_nand, u8 *id)
> +       }
> +       id[0] = nand_id[1];
> +       id[1] = nand_id[2];
> ++  printk(KERN_ERR "Phi Nguyen: 1st ID %x and 2nd ID %x \n", id[0], id[1]);
> ++      spinand_parse_id(spi_nand, nand_id, id);
> ++      dev_ops = get_dev_ops(spi_nand);
> ++      if (dev_ops->spinand_die_select) {
> ++              for (i = 0; i < dev_ops->no_of_dies; i++) {
> ++                      retval = dev_ops->spinand_die_select(spi_nand,
> ++                                              dev_ops, i);
> ++                      if (retval < 0)
> ++                              return retval;
> ++                      spinand_lock_block(spi_nand, BL_ALL_UNLOCKED);
> ++                      if (spinand_disable_ecc(spi_nand) < 0)
> ++                              pr_info("%s: disable ecc failed!\n", __func__);
> ++              }
> ++      }
> ++
> +       return retval;
> + }
> +
> +-/**
> +- * spinand_read_status - send command 0xf to the SPI Nand status register
> ++/*
> ++ * spinand_read_status- send command 0xf to the SPI Nand status register
> +  * Description:
> +  *    After read, write, or erase, the Nand device is expected to set the
> +  *    busy status.
> +@@ -184,7 +506,7 @@ static int wait_till_ready(struct spi_device *spi_nand)
> +               retval = spinand_read_status(spi_nand, &stat);
> +               if (retval < 0)
> +                       return -1;
> +-              if (!(stat & 0x1))
> ++              else if (!(stat & 0x1))
> +                       break;
> +
> +               cond_resched();
> +@@ -197,7 +519,7 @@ static int wait_till_ready(struct spi_device *spi_nand)
> + }
> +
> + /**
> +- * spinand_get_otp - send command 0xf to read the SPI Nand OTP register
> ++ * spinand_get_otp- send command 0xf to read the SPI Nand OTP register
> +  * Description:
> +  *   There is one bit( bit 0x10 ) to set or to clear the internal ECC.
> +  *   Enable chip internal ECC, set the bit to 1
> +@@ -221,7 +543,7 @@ static int spinand_get_otp(struct spi_device *spi_nand, u8 *otp)
> + }
> +
> + /**
> +- * spinand_set_otp - send command 0x1f to write the SPI Nand OTP register
> ++ * spinand_set_otp- send command 0x1f to write the SPI Nand OTP register
> +  * Description:
> +  *   There is one bit( bit 0x10 ) to set or to clear the internal ECC.
> +  *   Enable chip internal ECC, set the bit to 1
> +@@ -232,11 +554,11 @@ static int spinand_set_otp(struct spi_device *spi_nand, u8 *otp)
> +       int retval;
> +       struct spinand_cmd cmd = {0};
> +
> +-      cmd.cmd = CMD_WRITE_REG;
> +-      cmd.n_addr = 1;
> +-      cmd.addr[0] = REG_OTP;
> +-      cmd.n_tx = 1;
> +-      cmd.tx_buf = otp;
> ++      cmd.cmd = CMD_WRITE_REG,
> ++      cmd.n_addr = 1,
> ++      cmd.addr[0] = REG_OTP,
> ++      cmd.n_tx = 1,
> ++      cmd.tx_buf = otp,
> +
> +       retval = spinand_cmd(spi_nand, &cmd);
> +       if (retval < 0)
> +@@ -247,7 +569,7 @@ static int spinand_set_otp(struct spi_device *spi_nand, u8 *otp)
> +
> + #ifdef CONFIG_MTD_SPINAND_ONDIEECC
> + /**
> +- * spinand_enable_ecc - send command 0x1f to write the SPI Nand OTP register
> ++ * spinand_enable_ecc- send command 0x1f to write the SPI Nand OTP register
> +  * Description:
> +  *   There is one bit( bit 0x10 ) to set or to clear the internal ECC.
> +  *   Enable chip internal ECC, set the bit to 1
> +@@ -256,19 +578,31 @@ static int spinand_set_otp(struct spi_device *spi_nand, u8 *otp)
> + static int spinand_enable_ecc(struct spi_device *spi_nand)
> + {
> +       int retval;
> ++      int i;
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> +       u8 otp = 0;
> +
> +-      retval = spinand_get_otp(spi_nand, &otp);
> +-      if (retval < 0)
> +-              return retval;
> ++      for (i = 0; i < dev_ops->no_of_dies; i++) {
> ++              retval = select_die(spi_nand, dev_ops, i);
> ++              if (retval < 0)
> ++                      return retval;
> +
> +-      if ((otp & OTP_ECC_MASK) == OTP_ECC_MASK)
> +-              return 0;
> +-      otp |= OTP_ECC_MASK;
> +-      retval = spinand_set_otp(spi_nand, &otp);
> +-      if (retval < 0)
> +-              return retval;
> +-      return spinand_get_otp(spi_nand, &otp);
> ++              retval = spinand_get_otp(spi_nand, &otp);
> ++              if (retval < 0)
> ++                      return retval;
> ++
> ++              if ((otp & OTP_ECC_MASK) != OTP_ECC_MASK) {
> ++                      otp |= OTP_ECC_MASK;
> ++                      retval = spinand_set_otp(spi_nand, &otp);
> ++                      if (retval < 0)
> ++                              return retval;
> ++                      retval = spinand_get_otp(spi_nand, &otp);
> ++                      if (retval < 0)
> ++                              return retval;
> ++              }
> ++      }
> ++
> ++      return 0;
> + }
> + #endif
> +
> +@@ -292,58 +626,70 @@ static int spinand_disable_ecc(struct spi_device *spi_nand)
> + }
> +
> + /**
> +- * spinand_write_enable - send command 0x06 to enable write or erase the
> +- * Nand cells
> ++ * spinand_write_config- send command 0x06 to enable write or erase the
> ++ * Nand cells or send command 0x04 to disable write or erase the Nand cells
> ++ *
> +  * Description:
> +  *   Before write and erase the Nand cells, the write enable has to be set.
> +  *   After the write or erase, the write enable bit is automatically
> +  *   cleared (status register bit 2)
> +  *   Set the bit 2 of the status register has the same effect
> ++ *   After write and erase the Nand cells, the write enable has to be disabled.
> +  */
> +-static int spinand_write_enable(struct spi_device *spi_nand)
> ++static int spinand_write_config(struct spi_device *spi_nand, u8 opcode)
> + {
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> +       struct spinand_cmd cmd = {0};
> ++      int ret = 0;
> ++      int i;
> +
> +-      cmd.cmd = CMD_WR_ENABLE;
> +-      return spinand_cmd(spi_nand, &cmd);
> ++      for (i = 0; i < dev_ops->no_of_dies; i++) {
> ++              ret = select_die(spi_nand, dev_ops, i);
> ++              if (ret < 0)
> ++                      return ret;
> ++              cmd.cmd = opcode;
> ++              ret = spinand_cmd(spi_nand, &cmd);
> ++              if (ret < 0)
> ++                      return ret;
> ++      }
> ++
> ++      return ret;
> + }
> +
> + static int spinand_read_page_to_cache(struct spi_device *spi_nand, u16 page_id)
> + {
> +       struct spinand_cmd cmd = {0};
> +-      u16 row;
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> ++
> ++      select_die(spi_nand, dev_ops, get_die_id(dev_ops, page_id));
> +
> +-      row = page_id;
> +       cmd.cmd = CMD_READ;
> +       cmd.n_addr = 3;
> +-      cmd.addr[0] = (u8)((row & 0xff0000) >> 16);
> +-      cmd.addr[1] = (u8)((row & 0xff00) >> 8);
> +-      cmd.addr[2] = (u8)(row & 0x00ff);
> ++      dev_ops->spinand_read_cmd(&cmd, page_id);
> +
> +       return spinand_cmd(spi_nand, &cmd);
> + }
> +
> +-/**
> +- * spinand_read_from_cache - send command 0x03 to read out the data from the
> +- * cache register (2112 bytes max)
> ++/*
> ++ * spinand_read_from_cache- send command 0x03 to read out the data from the
> ++ * cache register(2112 bytes max)
> ++ *
> +  * Description:
> +  *   The read can specify 1 to 2112 bytes of data read at the corresponding
> +  *   locations.
> +  *   No tRd delay.
> +  */
> +-static int spinand_read_from_cache(struct spi_device *spi_nand, u16 page_id,
> ++static int spinand_read_from_cache(struct spi_device *spi_nand, u32 page_id,
> +                                  u16 byte_id, u16 len, u8 *rbuf)
> + {
> +       struct spinand_cmd cmd = {0};
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> +       u16 column;
> +
> +       column = byte_id;
> +       cmd.cmd = CMD_READ_RDM;
> +       cmd.n_addr = 3;
> +-      cmd.addr[0] = (u8)((column & 0xff00) >> 8);
> +-      cmd.addr[0] |= (u8)(((page_id >> 6) & 0x1) << 4);
> +-      cmd.addr[1] = (u8)(column & 0x00ff);
> +-      cmd.addr[2] = (u8)(0xff);
> ++      dev_ops->spinand_read_data(&cmd, column, page_id);
> +       cmd.n_dummy = 0;
> +       cmd.n_rx = len;
> +       cmd.rx_buf = rbuf;
> +@@ -351,22 +697,25 @@ static int spinand_read_from_cache(struct spi_device *spi_nand, u16 page_id,
> +       return spinand_cmd(spi_nand, &cmd);
> + }
> +
> +-/**
> +- * spinand_read_page - read a page
> ++/*
> ++ * spinand_read_page-to read a page with:
> +  * @page_id: the physical page number
> +  * @offset:  the location from 0 to 2111
> +  * @len:     number of bytes to read
> +  * @rbuf:    read buffer to hold @len bytes
> +  *
> +  * Description:
> +- *   The read includes two commands to the Nand - 0x13 and 0x03 commands
> ++ *   The read includes two commands to the Nand: 0x13 and 0x03 commands
> +  *   Poll to read status to wait for tRD time.
> +  */
> +-static int spinand_read_page(struct spi_device *spi_nand, u16 page_id,
> +-                           u16 offset, u16 len, u8 *rbuf)
> ++static int spinand_read_page(struct spi_device *spi_nand, u32 page_id,
> ++                           u32 offset, u32 len, u8 *rbuf)
> + {
> +-      int ret;
> ++      int ret, ecc_error = 0, ecc_corrected = 0;
> +       u8 status = 0;
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> ++      struct mtd_info *mtd = (struct mtd_info *)
> ++                                      dev_get_drvdata(&spi_nand->dev);
> +
> + #ifdef CONFIG_MTD_SPINAND_ONDIEECC
> +       if (enable_read_hw_ecc) {
> +@@ -390,10 +739,15 @@ static int spinand_read_page(struct spi_device *spi_nand, u16 page_id,
> +               }
> +
> +               if ((status & STATUS_OIP_MASK) == STATUS_READY) {
> +-                      if ((status & STATUS_ECC_MASK) == STATUS_ECC_ERROR) {
> ++                      ret = dev_ops->spinand_verify_ecc(status);
> ++                      if (ret == SPINAND_ECC_ERROR) {
> +                               dev_err(&spi_nand->dev, "ecc error, page=%d\n",
> +                                       page_id);
> +-                              return 0;
> ++                              mtd->ecc_stats.failed++;
> ++                              ecc_error = 1;
> ++                      } else if (ret == SPINAND_ECC_CORRECTED) {
> ++                              mtd->ecc_stats.corrected++;
> ++                              ecc_corrected = 1;
> +                       }
> +                       break;
> +               }
> +@@ -415,14 +769,19 @@ static int spinand_read_page(struct spi_device *spi_nand, u16 page_id,
> +               enable_read_hw_ecc = 0;
> +       }
> + #endif
> ++      if (ecc_error)
> ++              ret = -EBADMSG;
> ++      else if (ecc_corrected)
> ++              ret = -EUCLEAN;
> ++
> +       return ret;
> + }
> +
> +-/**
> +- * spinand_program_data_to_cache - write a page to cache
> ++/*
> ++ * spinand_program_data_to_cache--to write a page to cache with:
> +  * @byte_id: the location to write to the cache
> +  * @len:     number of bytes to write
> +- * @wbuf:    write buffer holding @len bytes
> ++ * @rbuf:    read buffer to hold @len bytes
> +  *
> +  * Description:
> +  *   The write command used here is 0x84--indicating that the cache is
> +@@ -430,26 +789,27 @@ static int spinand_read_page(struct spi_device *spi_nand, u16 page_id,
> +  *   Since it is writing the data to cache, there is no tPROG time.
> +  */
> + static int spinand_program_data_to_cache(struct spi_device *spi_nand,
> +-                                       u16 page_id, u16 byte_id,
> ++                                       u32 page_id, u16 byte_id,
> +                                        u16 len, u8 *wbuf)
> + {
> +       struct spinand_cmd cmd = {0};
> +       u16 column;
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> ++
> ++      select_die(spi_nand, dev_ops, get_die_id(dev_ops, page_id));
> +
> +       column = byte_id;
> +       cmd.cmd = CMD_PROG_PAGE_CLRCACHE;
> +       cmd.n_addr = 2;
> +-      cmd.addr[0] = (u8)((column & 0xff00) >> 8);
> +-      cmd.addr[0] |= (u8)(((page_id >> 6) & 0x1) << 4);
> +-      cmd.addr[1] = (u8)(column & 0x00ff);
> ++      dev_ops->spinand_write_data(&cmd, column, page_id);
> +       cmd.n_tx = len;
> +-      cmd.tx_buf = wbuf;
> ++      cmd.tx_buf = wbuf + column;
> +
> +       return spinand_cmd(spi_nand, &cmd);
> + }
> +
> + /**
> +- * spinand_program_execute - write a page from cache to the Nand array
> ++ * spinand_program_execute--to write a page from cache to the Nand array with
> +  * @page_id: the physical page location to write the page.
> +  *
> +  * Description:
> +@@ -457,27 +817,26 @@ static int spinand_program_data_to_cache(struct spi_device *spi_nand,
> +  *   the Nand array.
> +  *   Need to wait for tPROG time to finish the transaction.
> +  */
> +-static int spinand_program_execute(struct spi_device *spi_nand, u16 page_id)
> ++static int spinand_program_execute(struct spi_device *spi_nand, u32 page_id)
> + {
> +       struct spinand_cmd cmd = {0};
> +-      u16 row;
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> ++
> ++      select_die(spi_nand, dev_ops, get_die_id(dev_ops, page_id));
> +
> +-      row = page_id;
> +       cmd.cmd = CMD_PROG_PAGE_EXC;
> +       cmd.n_addr = 3;
> +-      cmd.addr[0] = (u8)((row & 0xff0000) >> 16);
> +-      cmd.addr[1] = (u8)((row & 0xff00) >> 8);
> +-      cmd.addr[2] = (u8)(row & 0x00ff);
> ++      dev_ops->spinand_write_cmd(&cmd, page_id);
> +
> +       return spinand_cmd(spi_nand, &cmd);
> + }
> +
> + /**
> +- * spinand_program_page - write a page
> ++ * spinand_program_page - to write a page with:
> +  * @page_id: the physical page location to write the page.
> +  * @offset:  the location from the cache starting from 0 to 2111
> +  * @len:     the number of bytes to write
> +- * @buf:     the buffer holding @len bytes
> ++ * @wbuf:    the buffer to hold the number of bytes
> +  *
> +  * Description:
> +  *   The commands used here are 0x06, 0x84, and 0x10--indicating that
> +@@ -486,42 +845,36 @@ static int spinand_program_execute(struct spi_device *spi_nand, u16 page_id)
> +  *   Poll to wait for the tPROG time to finish the transaction.
> +  */
> + static int spinand_program_page(struct spi_device *spi_nand,
> +-                              u16 page_id, u16 offset, u16 len, u8 *buf)
> ++                              u32 page_id, u16 offset, u16 len, u8 *buf)
> + {
> +-      int retval;
> ++      int retval = 0;
> +       u8 status = 0;
> +       u8 *wbuf;
> + #ifdef CONFIG_MTD_SPINAND_ONDIEECC
> +-      unsigned int i, j;
> +
> +-      wbuf = devm_kzalloc(&spi_nand->dev, CACHE_BUF, GFP_KERNEL);
> ++      enable_read_hw_ecc = 0;
> ++      wbuf = kzalloc(CACHE_BUF, GFP_KERNEL);
> +       if (!wbuf)
> +               return -ENOMEM;
> +
> +-      enable_read_hw_ecc = 1;
> +-      retval = spinand_read_page(spi_nand, page_id, 0, CACHE_BUF, wbuf);
> +-      if (retval < 0) {
> +-              dev_err(&spi_nand->dev, "ecc error on read page!!!\n");
> +-              return retval;
> +-      }
> ++      spinand_read_page(spi_nand, page_id, 0, CACHE_BUF, wbuf);
> +
> +-      for (i = offset, j = 0; i < len; i++, j++)
> +-              wbuf[i] &= buf[j];
> ++      memcpy(wbuf + offset, buf, len);
> +
> +       if (enable_hw_ecc) {
> +               retval = spinand_enable_ecc(spi_nand);
> +               if (retval < 0) {
> +                       dev_err(&spi_nand->dev, "enable ecc failed!!\n");
> +-                      return retval;
> ++                      goto exit;
> +               }
> +       }
> + #else
> +       wbuf = buf;
> + #endif
> +-      retval = spinand_write_enable(spi_nand);
> ++      retval = spinand_write_config(spi_nand, CMD_WR_ENABLE);
> +       if (retval < 0) {
> +               dev_err(&spi_nand->dev, "write enable failed!!\n");
> +-              return retval;
> ++              goto exit;
> +       }
> +       if (wait_till_ready(spi_nand))
> +               dev_err(&spi_nand->dev, "wait timedout!!!\n");
> +@@ -529,23 +882,26 @@ static int spinand_program_page(struct spi_device *spi_nand,
> +       retval = spinand_program_data_to_cache(spi_nand, page_id,
> +                                              offset, len, wbuf);
> +       if (retval < 0)
> +-              return retval;
> ++              goto exit;
> ++
> +       retval = spinand_program_execute(spi_nand, page_id);
> +       if (retval < 0)
> +-              return retval;
> ++              goto exit;
> ++
> +       while (1) {
> +               retval = spinand_read_status(spi_nand, &status);
> +               if (retval < 0) {
> +                       dev_err(&spi_nand->dev,
> +                               "error %d reading status register\n", retval);
> +-                      return retval;
> ++                      goto exit;
> +               }
> +
> +               if ((status & STATUS_OIP_MASK) == STATUS_READY) {
> +                       if ((status & STATUS_P_FAIL_MASK) == STATUS_P_FAIL) {
> +                               dev_err(&spi_nand->dev,
> +                                       "program error, page %d\n", page_id);
> +-                              return -1;
> ++                              retval = -1;
> ++                              goto exit;
> +                       }
> +                       break;
> +               }
> +@@ -555,17 +911,28 @@ static int spinand_program_page(struct spi_device *spi_nand,
> +               retval = spinand_disable_ecc(spi_nand);
> +               if (retval < 0) {
> +                       dev_err(&spi_nand->dev, "disable ecc failed!!\n");
> +-                      return retval;
> ++                      goto exit;
> +               }
> +               enable_hw_ecc = 0;
> +       }
> + #endif
> ++      retval = spinand_write_config(spi_nand, CMD_WR_DISABLE);
> ++      if (retval < 0) {
> ++              dev_err(&spi_nand->dev, "write disable failed!!\n");
> ++              goto exit;
> ++      }
> ++      if (wait_till_ready(spi_nand))
> ++              dev_err(&spi_nand->dev, "wait timedout!!!\n");
> +
> +-      return 0;
> ++exit:
> ++#ifdef CONFIG_MTD_SPINAND_ONDIEECC
> ++      kfree(wbuf);
> ++#endif
> ++      return retval;
> + }
> +
> + /**
> +- * spinand_erase_block_erase - erase a page
> ++ * spinand_erase_block_erase--to erase a page with:
> +  * @block_id: the physical block location to erase.
> +  *
> +  * Description:
> +@@ -576,20 +943,19 @@ static int spinand_program_page(struct spi_device *spi_nand,
> + static int spinand_erase_block_erase(struct spi_device *spi_nand, u16 block_id)
> + {
> +       struct spinand_cmd cmd = {0};
> +-      u16 row;
> ++      struct spinand_ops *dev_ops = get_dev_ops(spi_nand);
> ++
> ++      select_die(spi_nand, dev_ops, get_die_id(dev_ops, block_id));
> +
> +-      row = block_id;
> +       cmd.cmd = CMD_ERASE_BLK;
> +       cmd.n_addr = 3;
> +-      cmd.addr[0] = (u8)((row & 0xff0000) >> 16);
> +-      cmd.addr[1] = (u8)((row & 0xff00) >> 8);
> +-      cmd.addr[2] = (u8)(row & 0x00ff);
> ++      dev_ops->spinand_erase_blk(&cmd, block_id);
> +
> +       return spinand_cmd(spi_nand, &cmd);
> + }
> +
> + /**
> +- * spinand_erase_block - erase a page
> ++ * spinand_erase_block - erase a page with:
> +  * @block_id: the physical block location to erase.
> +  *
> +  * Description:
> +@@ -599,12 +965,16 @@ static int spinand_erase_block_erase(struct spi_device *spi_nand, u16 block_id)
> +  *   and then send the 0xd8 erase command
> +  *   Poll to wait for the tERS time to complete the tranaction.
> +  */
> +-static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
> ++static int spinand_erase_block(struct spi_device *spi_nand, u32 block_id)
> + {
> +       int retval;
> +       u8 status = 0;
> +
> +-      retval = spinand_write_enable(spi_nand);
> ++      retval = spinand_write_config(spi_nand, CMD_WR_ENABLE);
> ++      if (retval < 0) {
> ++              dev_err(&spi_nand->dev, "write enable failed!!\n");
> ++              return retval;
> ++      }
> +       if (wait_till_ready(spi_nand))
> +               dev_err(&spi_nand->dev, "wait timedout!!!\n");
> +
> +@@ -626,6 +996,13 @@ static int spinand_erase_block(struct spi_device *spi_nand, u16 block_id)
> +                       break;
> +               }
> +       }
> ++      retval = spinand_write_config(spi_nand, CMD_WR_DISABLE);
> ++      if (retval < 0) {
> ++              dev_err(&spi_nand->dev, "write disable failed!!\n");
> ++              return retval;
> ++      }
> ++      if (wait_till_ready(spi_nand))
> ++              dev_err(&spi_nand->dev, "wait timedout!!!\n");
> +       return 0;
> + }
> +
> +@@ -647,13 +1024,17 @@ static int spinand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
> +                                  u8 *buf, int oob_required, int page)
> + {
> +       int retval;
> +-      u8 status;
> ++      u8 status = 0;
> +       u8 *p = buf;
> +       int eccsize = chip->ecc.size;
> +       int eccsteps = chip->ecc.steps;
> +-      struct spinand_info *info = nand_get_controller_data(chip);
> ++      struct spinand_info *info = (struct spinand_info *)chip->priv;
> ++      struct spinand_ops *dev_ops = info->dev_ops;
> ++      struct spinand_state *state = (struct spinand_state *)info->priv;
> +
> +       enable_read_hw_ecc = 1;
> ++      spinand_read_page(info->spi, page, state->col,
> ++              (mtd->writesize + mtd->oobsize), state->buf);
> +
> +       nand_read_page_op(chip, page, 0, p, eccsize * eccsteps);
> +       if (oob_required)
> +@@ -668,15 +1049,32 @@ static int spinand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
> +               }
> +
> +               if ((status & STATUS_OIP_MASK) == STATUS_READY) {
> +-                      if ((status & STATUS_ECC_MASK) == STATUS_ECC_ERROR) {
> ++                      retval = dev_ops->spinand_verify_ecc(status);
> ++                      if (retval == SPINAND_ECC_ERROR) {
> +                               pr_info("spinand: ECC error\n");
> +                               mtd->ecc_stats.failed++;
> +-                      } else if ((status & STATUS_ECC_MASK) ==
> +-                                      STATUS_ECC_1BIT_CORRECTED)
> ++                              retval = -EBADMSG;
> ++                      } else if (retval == SPINAND_ECC_CORRECTED) {
> +                               mtd->ecc_stats.corrected++;
> ++                              retval = -EUCLEAN;
> ++                      }
> +                       break;
> +               }
> +       }
> ++      return retval;
> ++}
> ++
> ++static int spinand_read_page_raw(struct mtd_info *mtd, struct nand_chip *chip,
> ++                            uint8_t *buf, int oob_required, int page)
> ++{
> ++      struct spinand_info *info = (struct spinand_info *)chip->priv;
> ++      struct spinand_state *state = (struct spinand_state *)info->priv;
> ++
> ++      spinand_read_page(info->spi, page, state->col,
> ++              (mtd->writesize + mtd->oobsize), state->buf);
> ++      chip->read_buf(mtd, buf, mtd->writesize);
> ++      if (oob_required)
> ++              chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
> +       return 0;
> + }
> + #endif
> +@@ -697,11 +1095,11 @@ static u8 spinand_read_byte(struct mtd_info *mtd)
> +
> + static int spinand_wait(struct mtd_info *mtd, struct nand_chip *chip)
> + {
> +-      struct spinand_info *info = nand_get_controller_data(chip);
> ++      struct spinand_info *info = (struct spinand_info *)chip->priv;
> +
> +       unsigned long timeo = jiffies;
> +       int retval, state = chip->state;
> +-      u8 status;
> ++      u8 status = 0;
> +
> +       if (state == FL_ERASING)
> +               timeo += (HZ * 400) / 1000;
> +@@ -762,9 +1160,9 @@ static void spinand_reset(struct spi_device *spi_nand)
> + static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
> +                           int column, int page)
> + {
> +-      struct nand_chip *chip = mtd_to_nand(mtd);
> +-      struct spinand_info *info = nand_get_controller_data(chip);
> +-      struct spinand_state *state = info->priv;
> ++      struct nand_chip *chip = (struct nand_chip *)mtd->priv;
> ++      struct spinand_info *info = (struct spinand_info *)chip->priv;
> ++      struct spinand_state *state = (struct spinand_state *)info->priv;
> +
> +       switch (command) {
> +       /*
> +@@ -772,13 +1170,15 @@ static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
> +        */
> +       case NAND_CMD_READ1:
> +       case NAND_CMD_READ0:
> ++              state->col = column;
> ++              state->row = page;
> +               state->buf_ptr = 0;
> +-              spinand_read_page(info->spi, page, 0x0, 0x840, state->buf);
> +               break;
> +       /* READOOB reads only the OOB because no ECC is performed. */
> +       case NAND_CMD_READOOB:
> +               state->buf_ptr = 0;
> +-              spinand_read_page(info->spi, page, 0x800, 0x40, state->buf);
> ++              spinand_read_page(info->spi, page, (mtd->writesize + column),
> ++                                mtd->oobsize, state->buf);
> +               break;
> +       case NAND_CMD_RNDOUT:
> +               state->buf_ptr = column;
> +@@ -828,7 +1228,7 @@ static void spinand_cmdfunc(struct mtd_info *mtd, unsigned int command,
> + }
> +
> + /**
> +- * spinand_lock_block - send write register 0x1f command to the Nand device
> ++ * spinand_lock_block- send write register 0x1f command to the Nand device
> +  *
> +  * Description:
> +  *    After power up, all the Nand blocks are locked.  This function allows
> +@@ -855,12 +1255,44 @@ static int spinand_lock_block(struct spi_device *spi_nand, u8 lock)
> +       return ret;
> + }
> +
> +-/**
> ++/* SPI NAND ID Table */
> ++struct nand_flash_dev spinand_flash_ids[] = {
> ++      {"ATO25D1GA 128MiB 3.3V",
> ++              { .id = {0x9b, 0x12} }, SZ_2K, 128, SZ_128K, 0, 2, 64},
> ++
> ++      {"GD5F4GQ4UC 512MiB 3.3V",
> ++              { .id = {0xc8, 0xB4} }, SZ_4K, 512, SZ_256K, 0, 2, 256},
> ++
> ++      {"GD5F1GQ1UC 128MiB 3.3V",
> ++              { .id = {0xc8, 0xB1} }, SZ_2K, 128, SZ_128K, 0, 2, 128},
> ++
> ++      {"GD5F1GQ1RC 128MiB 1.8V",
> ++              { .id = {0xc8, 0xA1} }, SZ_2K, 128, SZ_128K, 0, 2, 128},
> ++
> ++      {"MX35LFxGE4AB 128MiB 3.3V",
> ++              { .id = {0xc2, 0x12} }, SZ_2K, 128, SZ_128K, 0, 2, 64},
> ++
> ++      {"W25N01GV 128MiB 3.3V",
> ++              { .id = {0xef, 0xaa} }, SZ_2K, 128, SZ_128K, 0, 2, 64},
> ++
> ++      {"W25M02GV 256MiB 3.3V(Dual die)",
> ++              { .id = {0xef, 0xab} }, SZ_2K, 256, SZ_128K, 0, 2, 64},
> ++
> ++      {"TC58CVG2S0F 4G 3.3V 8-bit",
> ++              { .id = {0x98, 0xcd} }, SZ_4K, 512, SZ_256K, 0, 2, 128},
> ++
> ++      {"GD5F1GQ4UB 128MiB 3.3V",
> ++              { .id = {0xc8, 0xd1} }, SZ_2K, 128, SZ_128K, 0, 2, 128},
> ++
> ++      {NULL}
> ++};
> ++
> ++/*
> +  * spinand_probe - [spinand Interface]
> +  * @spi_nand: registered device driver.
> +  *
> +  * Description:
> +- *   Set up the device driver parameters to make the device available.
> ++ *   To set up the device driver parameters to make the device available.
> +  */
> + static int spinand_probe(struct spi_device *spi_nand)
> + {
> +@@ -868,6 +1300,7 @@ static int spinand_probe(struct spi_device *spi_nand)
> +       struct nand_chip *chip;
> +       struct spinand_info *info;
> +       struct spinand_state *state;
> ++      int rc;
> +
> +       info  = devm_kzalloc(&spi_nand->dev, sizeof(struct spinand_info),
> +                            GFP_KERNEL);
> +@@ -903,19 +1336,19 @@ static int spinand_probe(struct spi_device *spi_nand)
> +       chip->ecc.strength = 1;
> +       chip->ecc.total = chip->ecc.steps * chip->ecc.bytes;
> +       chip->ecc.read_page = spinand_read_page_hwecc;
> ++      chip->ecc.read_page_raw = spinand_read_page_raw;
> +       chip->ecc.write_page = spinand_write_page_hwecc;
> + #else
> +       chip->ecc.mode  = NAND_ECC_SOFT;
> +       chip->ecc.algo  = NAND_ECC_HAMMING;
> +       if (spinand_disable_ecc(spi_nand) < 0)
> +-              dev_info(&spi_nand->dev, "%s: disable ecc failed!\n",
> +-                       __func__);
> ++              pr_info("%s: disable ecc failed!\n", __func__);
> + #endif
> +
> +       nand_set_flash_node(chip, spi_nand->dev.of_node);
> +       nand_set_controller_data(chip, info);
> +-      chip->read_buf  = spinand_read_buf;
> +       chip->write_buf = spinand_write_buf;
> ++      chip->read_buf = spinand_read_buf;
> +       chip->read_byte = spinand_read_byte;
> +       chip->cmdfunc   = spinand_cmdfunc;
> +       chip->waitfunc  = spinand_wait;
> +@@ -926,22 +1359,24 @@ static int spinand_probe(struct spi_device *spi_nand)
> +
> +       mtd = nand_to_mtd(chip);
> +
> ++#ifdef CONFIG_MTD_SPINAND_ONDIEECC
> ++      mtd_set_ooblayout(mtd, &spinand_oob_64_ops);
> ++#endif
> +       dev_set_drvdata(&spi_nand->dev, mtd);
> +
> ++      mtd->priv = chip;
> +       mtd->dev.parent = &spi_nand->dev;
> +       mtd->oobsize = 64;
> +-#ifdef CONFIG_MTD_SPINAND_ONDIEECC
> +-      mtd_set_ooblayout(mtd, &spinand_oob_64_ops);
> +-#endif
> +
> +-      if (nand_scan(mtd, 1))
> +-              return -ENXIO;
> ++      rc = nand_scan_with_ids(mtd, 1, spinand_flash_ids);
> ++      if (rc)
> ++              return rc;
> +
> +       return mtd_device_register(mtd, NULL, 0);
> + }
> +
> + /**
> +- * spinand_remove - remove the device driver
> ++ * spinand_remove - Remove the device driver
> +  * @spi: the spi device.
> +  *
> +  * Description:
> +diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.h b/drivers/staging/mt29f_spinand/mt29f_spinand.h
> +index 457dc7ff..19f5a97f 100644
> +--- a/drivers/staging/mt29f_spinand/mt29f_spinand.h
> ++++ b/drivers/staging/mt29f_spinand/mt29f_spinand.h
> +@@ -36,6 +36,7 @@
> + #define CMD_RESET                     0xff
> + #define CMD_READ_REG                  0x0f
> + #define CMD_WRITE_REG                 0x1f
> ++#define CMD_DIE_SELECT                        0xC2
> +
> + /* feature/ status reg */
> + #define REG_BLOCK_LOCK                        0xa0
> +@@ -58,6 +59,17 @@
> + #define STATUS_ECC_ERROR              BIT(5)
> + #define STATUS_ECC_RESERVED           (BIT(5) | BIT(4))
> +
> ++#define STATUS_ECC_MASK_GIGA          0x70
> ++#define STATUS_ECC_ERROR_GIGA         0x70
> ++#define STATUS_ECC_BF_THRESHOLD_GIGA  0x40
> ++#define STATUS_ECC_MASK_MACRONIX      0x30
> ++#define STATUS_ECC_ERROR_MACRONIX     0x20
> ++#define STATUS_ECC_MASK_TOSHIBA               0x30
> ++#define STATUS_ECC_ERROR_TOSHIBA      0x20
> ++#define STATUS_ECC_BF_THRESHOLD_TOSHIBA       0x30
> ++#define SPINAND_ECC_ERROR             0x1
> ++#define SPINAND_ECC_CORRECTED         0x2
> ++
> + /*ECC enable defines*/
> + #define OTP_ECC_MASK                  0x10
> + #define OTP_ECC_OFF                   0
> +@@ -77,9 +89,43 @@
> + #define BL_1_64_LOCKED     0x08
> + #define BL_ALL_UNLOCKED    0
> +
> ++struct spinand_cmd {
> ++      u8              cmd;
> ++      u32             n_addr;         /* Number of address */
> ++      u8              addr[3];        /* Reg Offset */
> ++      u32             n_dummy;        /* Dummy use */
> ++      u32             n_tx;           /* Number of tx bytes */
> ++      u8              *tx_buf;        /* Tx buf */
> ++      u32             n_rx;           /* Number of rx bytes */
> ++      u8              *rx_buf;        /* Rx buf */
> ++};
> ++
> ++struct spinand_ops {
> ++      u8   maf_id;
> ++      u8   no_of_dies;
> ++      u16   dev_id;
> ++      int   prev_die_id;
> ++      u64   pages_per_die;
> ++      void (*spinand_set_defaults)(struct spi_device *spi_nand);
> ++      void (*spinand_read_cmd)(struct spinand_cmd *cmd, u32 page_id);
> ++      void (*spinand_read_data)(struct spinand_cmd *cmd, u16 column,
> ++                                u32 page_id);
> ++      void (*spinand_write_cmd)(struct spinand_cmd *cmd, u32 page_id);
> ++      void (*spinand_write_data)(struct spinand_cmd *cmd, u16 column,
> ++                                 u32 page_id);
> ++      void (*spinand_erase_blk)(struct spinand_cmd *cmd, u32 page_id);
> ++      int (*spinand_parse_id)(struct spi_device *spi_nand,
> ++                              struct spinand_ops *ops, u8 *nand_id, u8 *id);
> ++      int (*spinand_verify_ecc)(u8 status);
> ++      int (*spinand_die_select)(struct spi_device *spi_nand,
> ++                                struct spinand_ops *dev_ops, u8 die_id);
> ++};
> ++
> + struct spinand_info {
> ++      struct nand_ecclayout *ecclayout;
> +       struct spi_device *spi;
> +       void *priv;
> ++      struct spinand_ops *dev_ops;
> + };
> +
> + struct spinand_state {
> +@@ -89,17 +135,6 @@ struct spinand_state {
> +       u8              *buf;
> + };
> +
> +-struct spinand_cmd {
> +-      u8              cmd;
> +-      u32             n_addr;         /* Number of address */
> +-      u8              addr[3];        /* Reg Offset */
> +-      u32             n_dummy;        /* Dummy use */
> +-      u32             n_tx;           /* Number of tx bytes */
> +-      u8              *tx_buf;        /* Tx buf */
> +-      u32             n_rx;           /* Number of rx bytes */
> +-      u8              *rx_buf;        /* Rx buf */
> +-};
> +-
> + int spinand_mtd(struct mtd_info *mtd);
> + void spinand_mtd_release(struct mtd_info *mtd);
> +
> +diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
> +index efb23453..c7a02210 100644
> +--- a/include/linux/mtd/rawnand.h
> ++++ b/include/linux/mtd/rawnand.h
> +@@ -1438,7 +1438,7 @@ static inline void *nand_get_manufacturer_data(struct nand_chip *chip)
> + #define NAND_MFR_INTEL                0x89
> + #define NAND_MFR_ATO          0x9b
> + #define NAND_MFR_WINBOND      0xef
> +-
> ++#define NAND_MFR_GIGA         0xc8
> +
> + /*
> +  * A helper for defining older NAND chips where the second ID byte fully
> --
> 2.23.0
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
