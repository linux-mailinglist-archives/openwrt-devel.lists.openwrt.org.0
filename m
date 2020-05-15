Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C9A1D468D
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 08:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ezAbNdJ0hVSl240aNl6JbAVKhyHrJtQOvKnrbFXNaQs=; b=Vl+J3HgxASXs4PXMuH99ycHHv+
	rj2f6Xx1m1ejvWL4f7Is46JsIjqe/E46YsryVAlmjaq4WiWS4wflghOwOyg9GDy0ekrYALOKO/M80
	fHmGleQF9BrtJ3BWR9+21w1H3379wWvy7lGMS/qfSALVPPE1gyBKx3H1oQYfn8DyKy3I/u3Q8ZX9A
	aXK0tfRxAkjD+gQRkykXfSnnLgqOQCq3x9gPOrIvBqW7G390ebRd1Y5htjYQfoG9mf42ki0k4Nqtf
	Vz235G34/sWcNLCfPqBLFPk2r8xtfBBMBAAAIEYtC/SMXkZqpo/vsgWDJm3WdC5YeEbvuDRkz+MWF
	IGc39IhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUIr-0006WA-LZ; Fri, 15 May 2020 06:58:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUIe-0006Ug-Kb
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 06:58:34 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 835184D69;
 Fri, 15 May 2020 08:58:23 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6f6d7fff;
 Fri, 15 May 2020 08:58:07 +0200 (CEST)
Date: Fri, 15 May 2020 08:58:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Michael Jones <mike@meshplusplus.com>
Message-ID: <20200515065807.GE69771@meh.true.cz>
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_235829_992960_590BBFA9 
X-CRM114-Status: UNSURE (   5.93  )
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
Subject: Re: [OpenWrt-Devel] Ubus based service watchdog?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Michael Jones <mike@meshplusplus.com> [2020-05-13 12:48:49]:

Hi,

> I have a critical service on my OpenWRT system that needs monitoring and
> re-starting if it's failed.

whats wrong with monit[1]? It was designed exactly for this purpose and is
much more flexible.

> I've been looking for a mechanism in procd that would allow me to request
> that my service be terminated if it did not periodically notify some
> watchdog endpoint via ubus.

So instead of proper error handling and crashing your service ASAP, you're now
going to add another ubus layer which might possibly fail as well. You know,
your service could happily ping the watchdog endpoint, yet still fail in other
parts. You want something more robust.

I would simply add ubus status method to that critical service, then check the
output in the cron shell/Lua script and kill the service if the output of the
ubus status method wouldnt match liveliness for that service.

In other words I think, that one can solve this use case with current
solutions, no need to bloat procd.

1. https://mmonit.com/monit/documentation/monit.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
