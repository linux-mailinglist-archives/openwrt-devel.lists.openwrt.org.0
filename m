Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C68A71EFC8D
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 17:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oJr4AqtkypZI4aUwEFWYf0EA27yMiTP8X9Ac9FSksk8=; b=uEKAbaIuFpd64zh8t2s856CXRO
	26NPVb6Yf04NPeQ/5eorS/vIDeYLBT0k25UcFTrOI9AzwDm8tmaPX82iu9FeDARLoKJdQNUDR1fCt
	/u99DqVV+0DTs3TulcXQ5xmqOkBj+orJcoPdYc6+r9SZfEibZHmshGrzl/4EiFLrB45s7m24VRA92
	G0otcc27IGhJBNSRFh8HgAdMI2+IWNh7mB970X8UzxiYbEhLpSew+1zNlQL90wuJWL2jaTiqQjZXO
	aTLK9LOGbuH2KAExllzG9WqU2mYjW0SRVMYTRn/f9alxAdUomev/iGTSnF8b7ASaFV9OuQrk/ipPH
	Xq4qcGRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhEMq-0003Xe-1p; Fri, 05 Jun 2020 15:34:48 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhEMg-0003XJ-VM
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 15:34:40 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A20273354;
 Fri,  5 Jun 2020 17:34:33 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d15761b2;
 Fri, 5 Jun 2020 17:34:17 +0200 (CEST)
Date: Fri, 5 Jun 2020 17:34:17 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20200605153417.GB32043@meh.true.cz>
References: <20200605143748.28826-1-ynezz@true.cz>
 <AF820591-BA50-45AD-B392-011DC86C0EF9@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AF820591-BA50-45AD-B392-011DC86C0EF9@adrianschmutzler.de>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_083439_157795_50645165 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: edgerouter-x: fix
 missing wan interface
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
Cc: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>,
 Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel@lists.openwrt.org, Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2020-06-05 16:50:48]:

Hi,

> as far as I'm concerned, this was/is desired. There has been an older discussion on the list

yeah, I barely remember something, but can't find it right now, but IIRC it
was David who explained to you, that removing the WAN port is not that good
idea.

> I do think that all-LAN is closer to the default configuration, and thus
> would keep it, but I don't intend to repeat the discussion a third time. 

Well, as you can see, this new default configuration is seen as regression by
me, because I'm used to have sane default wan/lan setup on devices with more
then single port. It was always like that.

> So, as in the PR, I would not merge this, but won't keep you from doing it
> if you have a strong preference. There are much more important things to
> spent time on discussing than this :-)

Ok, DSA, renaming, all fine with me. You're all doing great work, it's really
nice to see 5.4.43 on ERX, but changing default network configurationsuddenly
after 2 releases (18.06 and 19.07) with just because "all-LAN is closer to the
default configuration" reasoning seems a bit off. So I'm inclined to merge the
Perry's fix.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
