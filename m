Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7F712DF16
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 15:03:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H+kh0TsyX4WNuEjY5RsWiRcPezUpgitkPpdSabUVVIc=; b=Y6l0gRgfnx6hXAlAQETerm9SGH
	a7q1/h92gTadLjCTo/TF1CkiR5iIErqF1KbphNunQyMd9qn0SHuM16jpm4Zktmp8Lu1VhvHDEmAMe
	GLKYZuNJFlrI/5UdiYGapVhWeiaTk+LMT/X9IwiKsTuWaVazNQi9nGYEC9amtHqUigpiyuUE5OWsv
	bFSmCzZgiueZLbQaMWl+u1wT+dDAqfMwOCNHY3CvHRTM/d8dX5jR4K1ZjADUOOBqMBi6aPa8N5Ol4
	k1vvZjO18eX8lymp97uu6ShwBZEngmq4CdUhLLnkNTDgzZmG5vZXHbHygZ+D0hoBeN0VUDTUGVMJA
	1IsTpHLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imeaY-0004BD-Qo; Wed, 01 Jan 2020 14:03:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imeaS-0004AH-PS
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 14:03:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id ABEE64A27;
 Wed,  1 Jan 2020 15:02:56 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 8a5f1063;
 Wed, 1 Jan 2020 15:02:45 +0100 (CET)
Date: Wed, 1 Jan 2020 15:02:45 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <20200101140245.GP70184@meh.true.cz>
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
 <20191231141559.GP11377@home.paul.comp>
 <3dd75d93-e74f-6831-51f0-d2100fdbc1db@david-bauer.net>
 <20191231152922.GQ11377@home.paul.comp>
 <80fed589-f821-70f3-0337-24904f087351@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <80fed589-f821-70f3-0337-24904f087351@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_060300_975854_3ED13714 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Alberto Bursi <bobafetthotmail@gmail.com> [2020-01-01 03:30:34]:

Hi,

> A LOT of OpenWrt userbase does not follow the mailing lists (or even know
> what a mailing list is), so if you want to have the full picture please
> visit the forum as well.

users dont know/use mailing lists, developers hate to waste time with the slow
and barely usable web UIs, not mentioning the amount of noise, making it
harder to find the signal.

Anyway, the project certainly needs a better popularity/usage feedback in
order to better understand the userbase, so perhaps some kind of run time
statistics[1] would help in this regard.

Or perhaps it would be possible to distill the similar information from the
following passive sources as well:

 - download stats
 - forum posts
 - IRC logs
 - bug tracker/issues

Not so trivial, but less privacy intrusive, probably less accurate as well.
Ideally we would have both :-)

1. https://openwrt.org/meetings/hamburg2019/start#statistics

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
