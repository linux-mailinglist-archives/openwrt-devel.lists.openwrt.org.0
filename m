Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4C51E42E
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 23:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RRM2hdxVtKc1ziv21ZbUCuZp6+VA7iwsqh65eDdj5jI=; b=h5hNQrpNJ7IRSgaT9Ckt34rvNM
	GyfqROZHlP2JLEGVyDfbGzuGAso3njWG4mvrigota+Coz8ARlzvMtbKgwRYqWJ2M6cnNZ9I2TWYCm
	hnDSFqZsNaqngu7HJUBa9fI7/uXPW/Km51B4F3PNPtWq1Twz9TZvMYyN5XPyuFNVt35dJYFf49HEc
	XqmDQ8cvRy4puBvkVeQRP3/Mj1qRAGqY9Qv7yzT8B/OgGSherAA4tiQiSSvVVrEti+2k6SyG7dUuS
	Np/Qxjina0KOMq3qh/MhkG8TK071rsZaB+xQob07psJ9ks8c28FGOj3kiIa6L3emwqUFLo0JHM0xc
	nFkRRJTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfOQ-0006jC-Pz; Tue, 14 May 2019 21:55:26 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfOJ-0006ii-Bt
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 21:55:21 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4ELtD3o084129
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 14 May 2019 23:55:13 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id CB43C4E48;
 Tue, 14 May 2019 23:55:08 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 84b5824d;
 Tue, 14 May 2019 23:55:07 +0200 (CEST)
Date: Tue, 14 May 2019 23:55:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190514215507.GF93050@meh.true.cz>
References: <20190512191317.32061-1-linus.walleij@linaro.org>
 <20190514083038.GA31332@meh.true.cz>
 <CACRpkdZ3JBBt8qTnC5KhLm1QUPhRU1WmQggenC+RhQmkwvd5oQ@mail.gmail.com>
 <20190514120736.GB31332@meh.true.cz>
 <CACRpkdb_Dyx02NaB1BODfzuMtGfCRSQegyrY7RZkqXXHggzu1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdb_Dyx02NaB1BODfzuMtGfCRSQegyrY7RZkqXXHggzu1A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145519_719442_DDD3334B 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] gemini: Support sysupgrade on DIR-685
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Linus Walleij <linus.walleij@linaro.org> [2019-05-14 21:33:48]:

> The full header format can be seen in tools/firmware-utils/src/mkwrggimg.c
> and includes a MD5 digest. This MD5 digest is checked by the ROM
> of the machine every time it boots.

Ok, but if I understand it properly, if this ROM check fails (corrupted image
after the header and before the footer), then you need UART recovery anyway,
right?

> I guess I could insist on writing a utility in C to check that custom
> MD5 sum before we flash, it has a nice "being close to what the target
> wants" feeling about it.

It seems to me, that the appropriate place for this feature would be
fwtool/metadata as other platforms could benefit from this improved and
checksum based image checking as well.

> But on the other hand it could be nice that it is done
> according to the OpenWrt standard, and what really matters is that
> some checksum is checked, so I guess I will go with your suggestion
> unless the DAP-2695 A1 people have some other opinion?

Don't take me wrong, you should know this device better then I do, so if
you're really convinced, that this additional check is needed or such, well
then just keep it.

Anyway, if you take a look at all other platforms with
REQUIRE_IMAGE_METADATA=1, you'll probably find out, that metadata check is
good enough on most of them (all of them?) and platform_check_image usually
boils down to just more or less simple `return 0` on those platforms.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
