Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB4015991F
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Feb 2020 19:48:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k1hcWGA3SpULf83BSfmLpJ/uuuTlh8Lw/yvU7JqDllY=; b=V8PzzHEo9VWmFWHHo1iMw/ixtQ
	nyFzIvr1Uf26TgPaVP4oK61uEr5FWul7tedPc2s9zYHgoilWlSzVgT+/14Zq43T+ldLYuq38HGB3P
	kZE/auh5zMcdmcEV8yMj0YRX8g4UkeNNN/doSaULxdwoyad3OhO+VpIpPddRYzFbTwo6+sjlnQbEO
	kzdHSpnZYALRQEOdXJjW7cstAVNLQmTJhot71qBNkYv0b1T5dQPl6X3aFEtcABR/MIfd99+2wqE/s
	02yFJ7Lg7UOz5VY0c5IgXhdEBA+IGJK/INManLV5anF+Z631B0LR1UlKSQeeN3T++FtAOxhHzLNXI
	QJGO3YPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aaA-0006eb-Lu; Tue, 11 Feb 2020 18:48:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1aa1-0006dc-Ex
 for openwrt-devel@lists.openwrt.org; Tue, 11 Feb 2020 18:48:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D1EBA4B72;
 Tue, 11 Feb 2020 19:48:13 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id a998bfac;
 Tue, 11 Feb 2020 19:48:02 +0100 (CET)
Date: Tue, 11 Feb 2020 19:48:12 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200211184812.GA6852@meh.true.cz>
References: <20191029172328.85861-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029172328.85861-1-rosenp@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_104817_648272_D9FD00D6 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/2] ramips: ethernet: Fix NAPI weight
 for non mt7621 devices
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

Rosen Penev <rosenp@gmail.com> [2019-10-29 10:23:27]:

> My original fix was to make the code do 16 * 4 as 64 is the limit for NAPI
> weight. However this also reduces the weight for non mt7621 devices.
> 
> Changed the multiplier to 2 instead.
> 
> Fixes: dcdc2880b6
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  v2: Added Fixes comment.
>  .../drivers/net/ethernet/mediatek/mtk_eth_soc.c           | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> index 00e84bbcfb..91974a461c 100644
> --- a/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> +++ b/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> @@ -1663,11 +1663,11 @@ static int fe_probe(struct platform_device *pdev)
>  	INIT_WORK(&priv->pending_work, fe_pending_work);
>  	u64_stats_init(&priv->hw_stats->syncp);
>  
> -	napi_weight = 16;
> +	napi_weight = 32;
>  	if (priv->flags & FE_FLAG_NAPI_WEIGHT) {
> -		napi_weight *= 4;
> +		napi_weight *= 2;

Above changes makes sense and corresponds with the commit description and with
change in commit dcdc2880b605 ("ramips: reduce napi_weight in the ethernet
driver.")

> -		priv->tx_ring.tx_ring_size *= 4;
> -		priv->rx_ring.rx_ring_size *= 4;
> +		priv->tx_ring.tx_ring_size *= 2;
> +		priv->rx_ring.rx_ring_size *= 2;

This changes don't.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
