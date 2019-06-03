Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9BE3393B
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Jun 2019 21:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=L6s6f4KhLRX57wk84z+2Gre4lolzJiKmOtZC0ytAkYw=; b=YKvMeTBL7Fo+vAyVifBNBJ4g1c
	QxdeWsqATDDpF0/HCx08o4n4SKaYZ6JstWApDBbY8sVFCEyTi7P0qBn3JyR7PV/DmxSSqBkbPa844
	xc+vHqj4NZS7mr7FdIcuVwuZ63RH1GzPIt7JXzKRc2T+p8FgN3T9Qf+wUbT8jZip24Yv125EuxfJx
	5W8Ti+RTdqNShCy7Rv0fK/P73RoB4SODHTBwsBlFbwOSBgNocb96IBMFg0fFQultszk7S5cUC702V
	LJ3q6waeWbOxkCSAMFxXW2WVEoCm0UHZjfSooiUvb6DfZCq2pQpOL7c8kEtL4Jwkhh0MgAFciHX1i
	qKx1ARYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsto-0000xY-0h; Mon, 03 Jun 2019 19:45:40 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsth-0000x6-UD
 for openwrt-devel@lists.openwrt.org; Mon, 03 Jun 2019 19:45:35 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 984094633;
 Mon,  3 Jun 2019 21:45:30 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 375099fa;
 Mon, 3 Jun 2019 21:45:28 +0200 (CEST)
Date: Mon, 3 Jun 2019 21:45:28 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <20190603194528.GL13432@meh.true.cz>
References: <d3184b92-ca35-9a55-c51f-274117e3c50f@birger-koblitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d3184b92-ca35-9a55-c51f-274117e3c50f@birger-koblitz.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_124534_119966_0161E365 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Edimax
 EW-7476RPC / EW-7478AC
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Birger Koblitz <mail@birger-koblitz.de> [2019-06-03 19:04:23]:

> +		phy0: ethernet-phy@0 {
> +			status ="disabled";

missing space after = and you've just copy&pasted it to the second file.

> +			status = "disabled";
> +			reg = <4>;
> +			phy-mode = "rgmii";
> +		};
> +	};
> +};
> +
> +

remove the extra new line here.

> +&gsw {
> +	mediatek,port5 = "gmac";
> +};
> +
> +

here as well.

> +			label = "ew-7478ac:blue:wlan2g";
> +			linux,default-trigger = "phy1radio";
> +
> +			label = "ew-7478ac:blue:wlan5g";
> +			linux,default-trigger = "phy0radio";

it makes me wonder what's wrong with the phy0tpt/phy1tpt throughput based and
defacto default triggers.

> +	if(!phy_reset)
> +		return;

ERROR: space required before the open parenthesis '('
#567: FILE:
target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c:1346:
+	if(!phy_reset)

> +	if (IS_ERR(phy_reset)){

ERROR: space required before the open brace '{'
#570: FILE:
target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/mtk_eth_soc.c:1349:
+	if (IS_ERR(phy_reset)){

> +		dev_err(priv->dev, "Error acquiring reset gpio pins: %ld\n",
> +			PTR_ERR(phy_reset));
> +		return;
> +	}

new line here please.

> +	err = of_property_read_u32(priv->dev->of_node, "phy-reset-duration",
> +				   &msec);
> +	if (!err && msec > 1000)
> +		msec = 30;
> +
> +	mdelay(msec);

From Documentation/timers/timers-howto.txt:

 SLEEPING FOR ~USECS OR SMALL MSECS ( 10us - 20ms):
         * Use usleep_range

 SLEEPING FOR LARGER MSECS ( 10ms+ )
        * Use msleep or possibly msleep_interruptible

So you probably want:

 if (msec > 20)
	msleep(msec);
 else
	usleep_range(msec * 1000, msec * 1000 + 1000);

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
