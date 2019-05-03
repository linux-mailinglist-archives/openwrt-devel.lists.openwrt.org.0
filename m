Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419201354A
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 00:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTgOaS7BPdpgApmfHA+CMLRayrCBT2iDTAcwMpo/hD8=; b=HnNkSMVwh7oyCi
	x8UWCDPImtClUu0n0N3bCHKnmNvjK4vvVP+DA7peZV7is0Hettr4cIVvgXGvM1d0xW6ld8ki5T3Ig
	2dAT0PWrzCvBvNb1+c0I8Ux4igNILUFtg0OMAEIFMMWr3Axc/G8oCeYLzdBrOk/hKvptS4OanaL5U
	uKSyb0I8S+pqSpnAxT9sn+MCJ7lHllcaw6msNGyPETUEYqaUED4nKIQKw8Gavr0tIVD6L/mMa7LZ6
	nGFMrqDpyg7rXG6bxiMxp1aDhItgKAeWO/5es79AmE057Y3hekTdAHeE0iKsoXztkFZaEEAaF063T
	YJoiu9EAP9GudQeXTmKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMgPd-0006if-4E; Fri, 03 May 2019 22:12:13 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMgPT-0006iB-VK
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 22:12:07 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 8397AA109C;
 Sat,  4 May 2019 00:12:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id jRdng5dr-oJP; Sat,  4 May 2019 00:11:37 +0200 (CEST)
To: Tomasz Maciej Nowak <tomek_n@o2.pl>, openwrt-devel@lists.openwrt.org
References: <20190501174224.19089-1-tomek_n@o2.pl>
 <20190501174224.19089-9-tomek_n@o2.pl>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <8442ddee-acfb-1f91-9b01-248d82a527e4@hauke-m.de>
Date: Sat, 4 May 2019 00:11:36 +0200
MIME-Version: 1.0
In-Reply-To: <20190501174224.19089-9-tomek_n@o2.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_151205_079384_84D85A04 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 8/8] mvebu: add images for additional
 ESPRESSObin boards
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 5/1/19 7:42 PM, Tomasz Maciej Nowak wrote:
> This commit adds support for different iterations of ESPRESSObin.
> The added variants are:
> 
> ESPRESSObin with soldered eMMC,
> 
> ESPRESSObin V7, compared to V5 some passive elements changed and ethernet
> ports labels positions have been reversed,
> 
> ESPRESSObin V7 with soldered eMMC.
> 
> Please refer to:
> 584d7c5 ("mvebu: new subtarget cortex A53")
> for instruction how to boot OpenWrt image placed on SD card. It is
> advised for owners of V5 and previous to upgrade bootloader based on
> U-Boot 2015.01, to the latest version available at:
> http://espressobin.net/tech-spec.
> 
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
> ---
>  .../marvell/armada-3720-espressobin-emmc.dts  | 28 +++++++++++
>  .../armada-3720-espressobin-v7-emmc.dts       | 43 ++++++++++++++++
>  .../marvell/armada-3720-espressobin-v7.dts    | 31 ++++++++++++
>  target/linux/mvebu/image/cortex-a53.mk        | 24 +++++++++
>  ...l-armada37xx-Add-emmc-sdio-pinctrl-d.patch | 40 +++++++++++++++
>  ...l-armada-37xx-Enable-emmc-on-espress.patch | 49 +++++++++++++++++++
>  ...da-3720-espressobin-correct-spi-node.patch |  2 +-
>  ...l-armada-3720-espressobin-add-ports-.patch | 26 ++++++++++
>  8 files changed, 242 insertions(+), 1 deletion(-)
>  create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
>  create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
>  create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
>  create mode 100644 target/linux/mvebu/patches-4.14/513-arm64-dts-marvell-armada37xx-Add-emmc-sdio-pinctrl-d.patch
>  create mode 100644 target/linux/mvebu/patches-4.14/514-arm64-dts-marvell-armada-37xx-Enable-emmc-on-espress.patch
>  create mode 100644 target/linux/mvebu/patches-4.14/522-arm64-dts-marvell-armada-3720-espressobin-add-ports-.patch
> 
> diff --git a/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
> new file mode 100644
> index 0000000000..ef90a1bd38
> --- /dev/null
> +++ b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Globalscale Marvell ESPRESSOBin Board with eMMC
> + * Copyright (C) 2018 Marvell
> + *
> + * Romain Perier <romain.perier@free-electrons.com>
> + * Konstantin Porotchkin <kostap@marvell.com>
> + *
> + */
> +
> +#include "armada-3720-espressobin.dts"
> +
> +/ {
> +	model = "Globalscale Marvell ESPRESSOBin Board (eMMC)";
> +	compatible = "globalscale,espressobin-emmc", "globalscale,espressobin",
> +		     "marvell,armada3720", "marvell,armada3710";
> +};
> +
> +&sdhci0 {
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	mmccard: mmccard@0 {
> +		compatible = "mmc-card";
> +		reg = <0>;
> +	};
> +};
> diff --git a/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
> new file mode 100644
> index 0000000000..2b565ca8d8
> --- /dev/null
> +++ b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Globalscale Marvell ESPRESSOBin Board V7 with eMMC
> + * Copyright (C) 2018 Marvell
> + *
> + * Romain Perier <romain.perier@free-electrons.com>
> + * Konstantin Porotchkin <kostap@marvell.com>
> + *
> + */
> +
> +#include "armada-3720-espressobin.dts"
> +
> +/ {
> +	model = "Globalscale Marvell ESPRESSOBin Board V7 (eMMC)";
> +	compatible = "globalscale,espressobin-v7-emmc", "globalscale,espressobin-v7",
> +		     "globalscale,espressobin", "marvell,armada3720",
> +		     "marvell,armada3710";
> +};
> +
> +&ports {
> +	port@1 {
> +		reg = <1>;
> +		label = "lan1";
> +		phy-handle = <&switch0phy0>;
> +	};
> +
> +	port@3 {
> +		reg = <3>;
> +		label = "wan";
> +		phy-handle = <&switch0phy2>;
> +	};
> +};
> +
> +&sdhci0 {
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	mmccard: mmccard@0 {
> +		compatible = "mmc-card";
> +		reg = <0>;
> +	};
> +};

Are these device tree files already send upstream or will you do so?

Hauke

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
