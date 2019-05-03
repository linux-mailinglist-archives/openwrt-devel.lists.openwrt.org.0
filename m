Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E76912D7B
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 14:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HhbFMVKEMrhXaUuCl5ha0U6Svt+wbx2tN6s6dc+o1z8=; b=ha/QJTb1bmKFuO5UDR+nIjEzT4
	3OMOR2hN/i9cuBAxwkIuzlsPlsu8Ip49dJu6/g8jU/2bW1bQMr2gQoL3TMS2SEGb63rqrh6NA5i36
	JmCs9C9UaRu2ZyWV2nq80joxKtW+oHKBQcUeEFGbit3vzldW4+a1tLd2sP3JYotO1bLykHHhVK7kg
	SHZFCgh2yfc21GB5GxUMuzkg6qadECw8cQaZzIQqdA/bPiRYy8FpQuzqSTfrze9kXDwBDidP/k0I1
	UhQNqI2pdOl85KBIB5Z1E1TlFardEFOcUqEfEP6utiTkB4m2/WtrVIXpcVPG8PviOiQ3sEsAO/1Rr
	qCkTDbmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXHD-0002nR-10; Fri, 03 May 2019 12:26:55 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXH5-0002mb-1X
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 12:26:48 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 838DB459C;
 Fri,  3 May 2019 14:26:44 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5e04c023;
 Fri, 3 May 2019 14:26:43 +0200 (CEST)
Date: Fri, 3 May 2019 14:26:43 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Luis Araneda <luaraneda@gmail.com>
Message-ID: <20190503122643.GC71477@meh.true.cz>
References: <20190428151714.5405-1-luaraneda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428151714.5405-1-luaraneda@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_052647_243918_8C53E589 
X-CRM114-Status: UNSURE (   8.84  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] zynq: add manufactured to device title
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

Luis Araneda <luaraneda@gmail.com> [2019-04-28 11:17:14]:

Hi,

> Make the device's title consistent by adding the manufacturer to their
> title, as the other boards on the target.  Additionally, this creates a
> sorted by manufacturer board list on menuconfig

your changes, doesn't correspond with the commit description, see bellow.

> diff --git a/target/linux/zynq/image/Makefile b/target/linux/zynq/image/Makefile
> index d8a882313b..380b07bb82 100644
> --- a/target/linux/zynq/image/Makefile
> +++ b/target/linux/zynq/image/Makefile
> @@ -58,7 +58,7 @@ TARGET_DEVICES += avnet_zynq-zed
>  
>  define Device/digilent_zynq-zybo
>  	$(call Device/FitImageGzip)
> -	DEVICE_TITLE := ZYBO Development Board
> +	DEVICE_TITLE := Digilent Zybo board

why are you removing the development part? I think, that it's useful
information so it shouldn't be removed if you don't have a good reason for
this. Putting appart the fact, that it's marked as trainer board on the
vendor's site[1].

>  define Device/xlnx_zynq-zc702
>  	$(call Device/FitImageGzip)
> -	DEVICE_TITLE := ZC702 Development Board
> +	DEVICE_TITLE := Xilinx ZC702 board

ditto, putting apart the fact, that it's marked as evaluation kit on the
vendor's site[2].

1. https://store.digilentinc.com/zybo-zynq-7000-arm-fpga-soc-trainer-board
2. https://www.xilinx.com/products/boards-and-kits/ek-z7-zc702-g.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
