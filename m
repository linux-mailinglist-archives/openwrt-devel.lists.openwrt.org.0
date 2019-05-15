Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7BA1E9EC
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 10:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=njibaknHyH3QmxGGkj4Kj+nLFIko5eymDgMhM0yTikc=; b=cv/jvu4WRKksPWFaHY88Bi43zK
	9aJzjcsuRmEeWx/ev3+RyEh26CaD++Ugu1ypsviXWwNMcqMvdFrCiGCcxlExZQGkI6nphVA2wtfDw
	x7cFJhMwNvGu6RpUUhuUB81rjLNWohDKd1D0H11BBhG4MMzBg+1FqJW28z5FENhPvkxlB50Uofoqr
	pHBCMgn/nvHamkpL9PpQ6dh7YWuW/A4wacAzmwsUTcPbFSpDDeffLOuwrC5Ba4XZJtSZodzl4VoAU
	HoZ7WsSewmHT/01m8H6KHIc8Q8LZ+/DeAxfEK1XFPrTwriSlQLjNEvmsIfrNgEoLqruh9YSw5SMjk
	1omrpdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQp4K-0006Sh-4A; Wed, 15 May 2019 08:15:20 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQp4C-0006SL-LH
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 08:15:14 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4F8F4Gc014987
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 10:15:04 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 212F93D15;
 Wed, 15 May 2019 10:15:01 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 67666b2b;
 Wed, 15 May 2019 10:15:00 +0200 (CEST)
Date: Wed, 15 May 2019 10:14:59 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190515081459.GH93050@meh.true.cz>
References: <20190514223956.19663-1-lede@allycomm.com>
 <20190514223956.19663-2-lede@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514223956.19663-2-lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_011513_019272_65E334A6 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] mtd: spinand: Add support for
 GigaDevice GD5F1GQ4UFxxG (Pending)
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

Jeff Kletsky <lede@allycomm.com> [2019-05-14 15:39:54]:

> Subject: [PATCH 1/3] mtd: spinand: Add support for GigaDevice GD5F1GQ4UFxxG (Pending)

It should be `kernel: mtd: spinand: ...` and while at it, you can probably
drop that `(Pending)` part as well.

> Submitted upstream as https://patchwork.ozlabs.org/patch/1098024/

...

> --- /dev/null
> +++ b/target/linux/generic/pending-4.19/452-mtd-spinand-add-support-for-gigadevice-gd5f1gq4ufxxg.patch
> @@ -0,0 +1,255 @@
> +Index: linux-4.19.37/drivers/mtd/nand/spi/gigadevice.c
> +===================================================================
> +--- linux-4.19.37.orig/drivers/mtd/nand/spi/gigadevice.c
> ++++ linux-4.19.37/drivers/mtd/nand/spi/gigadevice.c

I would prefer if you could include complete patch as provided by `git
format-patch` command in order to have some context in that file.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
