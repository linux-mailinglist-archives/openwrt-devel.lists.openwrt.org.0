Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18AC10C979
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 14:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oXq/j+4P+dDjKG+XTrs2mgZfPPo4Qkr5kmEvvFRM/5M=; b=d2uT4amgPYX9GTd2fOrczldLWm
	7+meC8hhShXHCyhnwIyfCz2JSfVzMQc5w917uzr+eabSAbqIjOA8XqdbYdzIgvUz52UchGRH+ablz
	8CYwCsIPQ0N//IHWp0xgBj2STbKSAQbV7IBIHRAC5F4u+u1XVkD58bbrgUEEVQ4e2ymRxS/KatMyB
	TsmC5i/8BeYKJoEm6R5byyPaSygFVlOiCXeo0CjAdvPyS6p0AofW42Q6nbZf7zNqnL0e8o0y0+kr+
	LKAlYwmrbqVpFu29PDt5+/61zr8P7sq65cjzO7ESlV38HzKdKlJzD11al1wd8tjmUa0lihp7pDY9+
	fE52ErDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaJsP-0008Ci-Ku; Thu, 28 Nov 2019 13:30:33 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaJsB-0008Bp-0Y
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 13:30:20 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2C4834E38;
 Thu, 28 Nov 2019 14:30:15 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 33053ed6;
 Thu, 28 Nov 2019 14:30:05 +0100 (CET)
Date: Thu, 28 Nov 2019 14:30:05 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191128133005.GD61235@meh.true.cz>
References: <20191127223005.9632-1-rosenp@gmail.com>
 <20191127223005.9632-2-rosenp@gmail.com>
 <CAKxU2N-LM_6BB7+3mHwG-AYh=BnC4oY7dEoX+93uUR-V9U93qQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N-LM_6BB7+3mHwG-AYh=BnC4oY7dEoX+93uUR-V9U93qQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_053019_204105_08E34F6E 
X-CRM114-Status: UNSURE (   8.49  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] tools/pkgconf: Run pkg-config
 wrapper through shellcheck
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-11-27 16:18:10]:

> > Switched to calling by dirname so that it can be called from any
> > directory.

I can see that already from the source code, but I would rather see a answer
to "Why?" In other words, whats the problem with current state, why is this
change needed?

> AGH. This is totally wrong. I goofed while rebasing this. It should
> have a / after dirname.

I would prefer to drop this change unless there is a good reason to have it.
It's not related to the patch subject in any way.

> Should I resend?

Yes please.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
