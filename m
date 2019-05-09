Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA2B189ED
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 14:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4s6VQlifSPP/AFZrm1P03Ao7dgxYIueY6iYxheraooM=; b=HSOlF38dIE+F5T+N0pqfhbSptk
	36vuCsy2e/2WZN0WNSC3od2maPR5ft8vu5lpr/XBIw6dNZOYciSrd8KHXmkMstVxnqC3zOOp33v7C
	PPekJZboH/FdHweVJpEq43Cq6TvH3yKIbHBOPcGRdwYoIrsSqXq6daK+mESGPFdvOtz5VGBihRLgg
	rScDUaDIgmaOGjvi4EAEiEaylsrpC+VI8B9emuwRHUCAHdgpsu7SuwCHviLsjcNYDMspSXQ1oKqdY
	eKQi+JK862YF9wAVm3S+jZb1n04gMGOX4l08OZmHHlJD09RUf3nIbHXfIsMeT3T5ntyu3SNAGomWG
	JWraG16g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiMx-0006gJ-8A; Thu, 09 May 2019 12:41:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiMp-0006fw-DI
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 12:41:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3566C34A9;
 Thu,  9 May 2019 14:41:40 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id edd769af;
 Thu, 9 May 2019 14:41:38 +0200 (CEST)
Date: Thu, 9 May 2019 14:41:38 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20190509124138.GR81826@meh.true.cz>
References: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_054143_601736_E42B5504 
X-CRM114-Status: UNSURE (   4.98  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add missing read-only properties
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

Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-05-09 13:50:39]:

Hi,

> The read-only properties for non-firmware partitions seem to have been
> assigned rather randomly.

Instead of randomly I would say, that it was developer/submitter preference.

>  				label = "u-boot-env";
> +				read-only;
>  			};

as ath79 has `DEFAULT_PACKAGES += uboot-envtools` and just few devices set
`DEFAULT_PACKAGES -= uboot-envtools` I would assume, that it's expected to be
writeable.

>  				label = "art";
> +				read-only;
>  			};

this one seems legit and should be probably ok.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
