Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27DB24C6D
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 12:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vCQO5IkDEIZHaN5PZVwCpdnnxlaiXZk/Wx+L8YpKQBE=; b=JWHHR1ulaxfYQxdgvBMHYLDuQf
	OCLLu4+F8a81H7aBS3Z29Vgc6Xbj/Q9cUVdvyfm9kQ2EWg27BALTVlgRg4S1c4eP3RTbRaBqCkJjS
	5A3AXPTh0vo04xLfhhtxOlHtG4ws8EmG57OaSjZGBi7JarI/f1UnqmUCjT7gyJjFxOx3ae65Kt9B/
	MDhHgRA05VH6Bq1LRPbv97yvxfKC74vAmhfRx7zL3D2Zne9p0VE7v1qTNMUH8oO30ett4k6xyTXRE
	xcbeKTmubP1uskjWOCDv+7EBDNyaaF3UXCFhzV0XEPtEglCJjYiZMPc4CCKfUVV4aNQhwsjOWWrDV
	CnJyCejQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1lA-00075s-Bl; Tue, 21 May 2019 10:12:40 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1kI-0006FY-LU
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 10:11:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5170138D3;
 Tue, 21 May 2019 12:11:44 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 43262146;
 Tue, 21 May 2019 12:11:43 +0200 (CEST)
Date: Tue, 21 May 2019 12:11:42 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <20190521101142.GL63920@meh.true.cz>
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
 <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
 <20190521091326.GK63920@meh.true.cz>
 <bc46acbe-c9f0-77e6-7218-a6b8465a59f0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc46acbe-c9f0-77e6-7218-a6b8465a59f0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_031147_687450_272748B6 
X-CRM114-Status: UNSURE (   6.88  )
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
Subject: Re: [OpenWrt-Devel] Documentation in the tree? [Was: Re: [PATCH v3]
 gemini: Support sysupgrade on DIR-685]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Linus Walleij <linus.walleij@linaro.org>,
 Javier Domingo Cansino <javierdo1@gmail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Thomas Endt <tmo26@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Alberto Bursi <bobafetthotmail@gmail.com> [2019-05-21 11:37:31]:

> The only clear thing is that documentation does not write itself and that
> you can't rely on users to write developer documentation.

You actually can enforce it somehow, as you either include/update
documentation to reflect your changes or your contribution won't be considered
for merge/review.

It's not a panacea, but it works relatively well in the kernel (DT docs for
example).

> with commit 882f4d2d63272abce8c1966983aa10178e2e971f
> as it was horribly outdated and completely useless

Maybe, that at that time GitHub considered Tex binary format and thus wouldn't
allow web based PRs, thus limiting potential contributions? :-)

I think, that you either have approachable documentation format(Markdown/ReST)
and tooling around, which would allow easy contributions or you end up with
the outdated documentation.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
