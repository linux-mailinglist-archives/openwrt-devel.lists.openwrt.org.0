Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1536810CB5F
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 16:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qw/fcWgZbhazpad1WI0LJm9KKEdbUAg1DWTdVQpuJB4=; b=X1kCPINPcLo3hTCqO5oYQJga42
	VJ56bAh3cLSczFrG/Df/eCSplQ8L6u2OcvWCndxa1aXehn2vqcvIAoB00YydLi6iUmETQkNJgJ4vm
	0TbchJEcrtmqmay6cCVlCGWnQewwLx9bwcXBtws+Zg5u06BUfeozXSiJwAQs1vh0aWaPWBLFEQbJy
	dEx2qX94UavXTBw7XNdvgB/Tz0FkvEbKI3p9HHwjbOxg0+KpA04WtFUxmX7jYxI/uC5S00uN6dj8V
	MHyqCWXMPzCUrpPt5mmQhOwQx3O03rTc9l34A/FByBte9rGmrhBMrSRzYSaXlmoyk4Eg5o7XwMtwU
	D/E953HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLQK-0003fN-It; Thu, 28 Nov 2019 15:09:40 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLPp-0003PV-Rr
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 15:09:16 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 513DB58A3;
 Thu, 28 Nov 2019 16:09:06 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a943c9fd;
 Thu, 28 Nov 2019 16:08:56 +0100 (CET)
Date: Thu, 28 Nov 2019 16:08:56 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191128150856.GE61235@meh.true.cz>
References: <3a6109f9-07db-7670-5a57-9a801d7c4dfc@hauke-m.de>
 <20191128120459.GC61235@meh.true.cz>
 <00e301d5a5f9$c9afd080$5d0f7180$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <00e301d5a5f9$c9afd080$5d0f7180$@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_070910_156833_91B7C451 
X-CRM114-Status: GOOD (  10.05  )
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
Subject: Re: [OpenWrt-Devel] Kernel version for OpenWrt 20.X
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
Cc: 'Hauke Mehrtens' <hauke@hauke-m.de>,
 'OpenWrt Development List' <openwrt-devel@lists.openwrt.org>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2019-11-28 15:40:32]:

> have mixed kernel releases again 

This is not an option, is it?

> or would have to throw out a lot of targets for each of the stable branches
> (which might be always the same set of less-cared targets)?

If the target is obsolete and/or orphaned, what could we do instead? I mean,
if there is no interest to rebase the patches to the next kernel version and
at least compile test them (not even dare to run test it), whats the point of
claiming "support" for this device?

It would be two step process, source-only in one release (users notice this
very quickly, perhaps someone manage to rebase it), then remove it in the next
release.

> This might also have negative impact on the "slow" targets, as they might
> quickly end up with no supported stable branch anymore (unless there are
> mixed-kernel releases again).

Flash size is limiting factor, not the speed. Take a look at 4/32 state, it's
still somehow doable to support some of those devices even with 4.19 and maybe
5.4 kernels, but there's no interest to solve that in maintainable and
acceptable way. In other words, obsolete/orphaned devices.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
