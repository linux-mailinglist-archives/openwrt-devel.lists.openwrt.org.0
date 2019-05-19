Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F261522951
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 00:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:Mime-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pw3WuKYB3GKGmnoBuJdEm3x6091rmdNfgUQnAP6959U=; b=PTuLtv7ZGQs12/
	meFrzUdExzP/iRWcHpbUA5sjg1jQh3QNBpvI+P9HBnLdiEUG8merGsldniBXHx4ngpE5K9ifQ9JTb
	ISooUFkd4tmtIK0vKkRP6K7Q3bCkV74PbTSyOz5YfMy1SQGV0yvkeu1C7BCFOB+QM0uOzfxm5DIe3
	U2HiECoK9yx6evHpIO5MXc3W1jE3Pdg3EHnuQuBIxTQ3twV1zsK4yw4fllmSTMoegqvEubPuMWiha
	IAjxNeAhAvMy7kfk9WTOwHk6Ja+z2/DVARibxpWv2pnlWwqGrYMTnfyWvQKhAcGLdXzP7UdgmJkkG
	y9hdVswqo/TN1vJ++cVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSUHI-00053M-4f; Sun, 19 May 2019 22:27:36 +0000
Received: from mx-out1.startmail.com ([145.131.90.139])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSUHA-000525-Ju
 for openwrt-devel@lists.openwrt.org; Sun, 19 May 2019 22:27:31 +0000
Date: Sun, 19 May 2019 17:26:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=startmail.com;
 s=2017-11; t=1558304843;
 bh=rbL9ZFgC5sjI46+r5o3v3FnYJm8L9UYj4Hhh/hLww3I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DjB2duheHWgoyVpcTDyDYjhNsWrLosyxuLcQAqqnLiqAduy7wIgVR8EOaOwEOmie1
 9uTHQ9axNxrQ77iHmfhiHX4ZXEljiUzHBCZU0n9e1P7FUfrPCghl0u9YtauYm+htAi
 lwiSpuqDYO0cLe23Z424LxnLIBEgxkOOgDIHvsz2//Y2DCiHHc2sX5l4e07xOmveMk
 DXa4UCqxl/OIBy0RJgLAwbBsWTGrM211ycCj622jELTkmXodXmpXD4XIdhaT3OGYcG
 RAwH+bodf+4Dk2myUJY+6/3QOVpp1aLWHpk19JDJQFA4FOdUeYBtYe+UMYNCZc3ihS
 vrFnPENMsCV2g==
From: "Marty E. Plummer" <hanetzer@startmail.com>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190519222651.2vxzikacjbdee2xx@proprietary-killer>
References: <2f67e4e7-34bc-bed4-a682-870b534f2ce9@allycomm.com>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f67e4e7-34bc-bed4-a682-870b534f2ce9@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_152728_969200_95B27512 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [145.131.90.139 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [RFC] ath79: Removal of GL.iNet AR300M NAND
 Target
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
Cc: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, May 19, 2019 at 12:44:18PM -0700, Jeff Kletsky wrote:
> I'm in the process of porting the AR750S to the ath79 target with
> SPI-NAND support now available on Linux 4.19[1].
> 
> From what I can tell, the AR300M (NAND) target, while it builds,
> does not provide a functional image with either Linux 4.14 or 4.19
> as there has not been and is not yet an applicable SPI-NAND driver
> built by OpenWrt[2].
> 
> While the ar71xx target had various patches to provide an SPI-attached
> NAND driver, at least as I understand it, these were rejected for the
> ath79 target in favor of the upstream SPI-NAND framework that would
> become available[2,3].
> 
> While there is support for the GigaDevice E-series SPI NAND already
> backported to OpenWrt under Linux 4.19[4] and I have submitted patches to
> support the F-series chips upstream[5], I have been told that some of the
> AR300M units also shipped with Paragon SPI NAND[6], for which there is no
> upstream driver support at this time.
> 
> 
> 
> As there is no bootable image produced, I would like to remove
> the AR300M (NAND) target from the ath79 tree at this time. The AR300M
> would remain on the ath79 generic (NOR) target.
> 
> The intention is that the AR300M (NAND) would be reinstated once
> proper driver support is available.
> 
> 
> 
> ======================
> If you have objections to this course of action, please let me know.
> ======================
> 
Nah. Worst case is we have to dig the commmit log and pull the data back
out. That's the great thing about git.
> 
> 
> Also, if you have an AR300M with the Paragon SPI NAND that you would
> be able to assist me in testing development of an upstream-supported
> driver, please also let me know.
> 
I do believe my particular ar300m is paragon based, and I'm more than
willing to assist wherever I can. I was under the impression that
bbrezelion or however you spell it was working on a generic spi-nand
driver?
> From looking at the GL.iNet source[7], I would expect to see `dmesg` on
> an OEM or image built from their sources to display a line containing
> 
>     spi-nand: Paragon SPI NAND was found.
> 
> These are probably older-production units.
> 
> 
> 
> Jeff
> 
> 
> ---
> 
> [1] http://patchwork.ozlabs.org/project/openwrt/list/?series=107880
> 
> [2] http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015604.html
>     http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015606.html
> 
> [3] https://github.com/openwrt/openwrt/pull/1428#issuecomment-441594401
> 
> [4] 3bc8ed91d4 generic-4.19: Backport spi-nand support for GigaDevice A/E
> 
> [5] http://patchwork.ozlabs.org/project/linux-mtd/list/?series=107874
> 
> [6] http://www.xtxtech.com/upfile/2016082517274590.pdf
> 
> [7] <https://github.com/gl-inet/openwrt/blob/develop/target/linux/ar71xx/patches-4.9/491-mtd-spi-nand-driver.patch#L2678>
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
