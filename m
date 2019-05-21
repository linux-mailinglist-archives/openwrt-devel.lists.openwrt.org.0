Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7756B24B45
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 11:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=toLV1a5qz6wPyRpN412kARCrWD5pYJE5clxMVf/nt0I=; b=GaPFYFc8EpTgd+I8/uQ1BOkDys
	xjIcrsr8YHy0nJqvV+QYM57lQnkWNjIEmg1OmFjvL5wcNcTwg86twk6lixhurI6MOGNmGkfcT1zes
	gtxKcTl4wIiY59LySJJxiJigXkxNXLbJ8QiKPE30j653D/qVItjwpBAC8lDaLHz4T5c/hhRM0xKJP
	W/3BNlxrOO/a+0PzOog5o7/55/yYnm+zXdCLYwpfcPETlzsNNYQV1Rxj1hJwkY6rcIHYKrTJjxSJ0
	owIi+mzNxFr3nHEY9D7giaG7nm/Pk2pwIXv0j5ESdm4K+xwvQUK9WsNB1dl9C+AkVLrV19ZFyWtIn
	m0HnLiDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0q5-0003uZ-VR; Tue, 21 May 2019 09:13:42 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0px-0003tz-Do
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 09:13:35 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 335D23692;
 Tue, 21 May 2019 11:13:28 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b2a077ce;
 Tue, 21 May 2019 11:13:26 +0200 (CEST)
Date: Tue, 21 May 2019 11:13:26 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20190521091326.GK63920@meh.true.cz>
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
 <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_021333_614286_4B98FDB3 
X-CRM114-Status: UNSURE (   9.31  )
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
Subject: [OpenWrt-Devel] Documentation in the tree? [Was: Re: [PATCH v3]
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
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Javier Domingo Cansino <javierdo1@gmail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 Alberto Bursi <bobafetthotmail@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Thomas Endt <tmo26@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Linus Walleij <linus.walleij@linaro.org> [2019-05-20 23:48:41]:

[adding Alberto, Thomas and Javier to the Cc: loop]

> how you want the sysupgrade to work.

it's just preferred to share as much common code as possible.

> Maybe we could open a documentation page for new devices, like here is how
> we want you to implement sysupgrade, I had a hard time to figure out that
> all was circuling around the platform.sh script and how that was called from
> the core sysupgrade.

indeed, some documentation would be certainly nice and welcome, but I think,
that it's clear, that having the documentation decoupled from the code (wiki
today) leads often to outdated (incomplete, even factually wrong or misleadin)
documentation which might be even more confusing for the starters then current
"read the code Luke" approach.

I mean, maybe this is the right time to rethink[1,2], so we could have
docs/Documentation folder in the source tree, like it's done in the kernel and
other projects.

1. https://lede.readthedocs.io/en/latest/
2. https://lists.openwrt.org/pipermail/openwrt-devel/2017-November/009888.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
