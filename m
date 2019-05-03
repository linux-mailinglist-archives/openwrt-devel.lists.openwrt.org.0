Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A7B12C38
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 13:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DIcRZ0o8GncyIO3JWXHZqbW4yJkuHQoErEjMCE5KE7c=; b=rKlCbFXVn0uIhjAUbodoKZm+/D
	AFWMj1hCgX0RDWvkV3tadjmyhc2hFny05BNunV8Yzd3E0tG/BxNcRv8mG1n6MpV4Ce5gzagbnATxU
	+8tYXX4DD64VRkwSfyGIQcIhipLBLMkN7czLyEZNcD1ZulRuyRVdfPxngIHn0KbxDAx7TXnGodG72
	zaAEejuORV8YamvusMHXpE0TqdyNhLkW28H6UNXgJk6WlIt0kkQnT0WG02+Z22b+2vevD96xl8vjY
	onH/Vp4H4igHa6aK/LBdw3Qmdr6C26CrTapjOf7l/0rcJX+ypIEKOL6iANQiEWQpoYWack9pUdW3s
	9EW/huLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWFy-00078Y-8K; Fri, 03 May 2019 11:21:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWFq-000784-W5
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 11:21:28 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 945464275;
 Fri,  3 May 2019 13:21:25 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id f09cbd90;
 Fri, 3 May 2019 13:21:24 +0200 (CEST)
Date: Fri, 3 May 2019 13:21:24 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
Message-ID: <20190503112124.GK346@meh.true.cz>
References: <20190501174354.19409-1-tomek_n@o2.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190501174354.19409-1-tomek_n@o2.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_042127_187098_95A3DCFF 
X-CRM114-Status: UNSURE (   4.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] tegra: add vendor string to device name
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

Tomasz Maciej Nowak <tomek_n@o2.pl> [2019-05-01 19:43:54]:

Hi,

> for better identification. Also create SUPPORTED_DEVICES string from it
> which corresponds to dts compatible string.
> 
> Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>

...

>  define U-Boot/trimslice
>    NAME := CompuLab TrimSlice
> -  BUILD_DEVICES := trimslice
> +  BUILD_DEVICES := compulab_trimslice
>    UBOOT_IMAGE := trimslice-mmc.img trimslice-spi.img

what about this files? Shouldn't you rename them as well?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
