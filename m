Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A715F716C4
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 13:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0apaBdXAkX9EWi9D/bBucHvR/fdgf/y+WAwmvZWXgjk=; b=c7VkrYzBFgiB4zu6XKJ/gwPicl
	sqQZ55M+wgs1cq4lTxw6V5vTzqm3GYAGCy2DRCIXG43bA9HUwlGCnobn2GZVmyxvf5WQduUZHk8M5
	fapPGuvo0QVoSRJgJnRULpW7XKUvTtpt7mV+VJykX5/qBq14I7w5cx6JpcGDqeBs9sJMYNBL6jK0U
	qgdvE8c+EIIS4ZDEpFS6C1UQed3YprhHLeLmZvh2EcXHfvCvnY1TLcPzr3nSGTLJkEVqDCNzmo/nl
	1wdJXS6KbRcVh3gVl3Xtv9WkXYNsVz0CZuy1mgUz5nxhhfcwdhlPkqrxPjset1DJCEDiOETe7gH3K
	AGhkVymw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpsjl-0002Xg-PY; Tue, 23 Jul 2019 11:13:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsjS-0002WK-Be
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 11:13:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B51B13E4B;
 Tue, 23 Jul 2019 13:13:19 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b549819f;
 Tue, 23 Jul 2019 13:13:12 +0200 (CEST)
Date: Tue, 23 Jul 2019 13:13:12 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20190723111312.GA68258@meh.true.cz>
References: <20190723102252.30420-1-ynezz@true.cz>
 <CAECwjAhGgJ7Tdkv=cusD4CV3UoGi+5P80AZ0f-fuaKyoQaUDSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAhGgJ7Tdkv=cusD4CV3UoGi+5P80AZ0f-fuaKyoQaUDSA@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_041322_557821_A8E5E32A 
X-CRM114-Status: UNSURE (   6.35  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] build: rules.mk: allow overriding of
 HOSTCC and HOSTCXX
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

Yousong Zhou <yszhou4tech@gmail.com> [2019-07-23 18:57:32]:

Hi,

> Variables specified as command arguments can override `:=` assignment.

thanks, didn't know about this.

> But the change is still helpful if such HOSTCC and HOSTCXX are from
> environment.

I think, that current default is better, I'm able to override it, so I'm quite
reluctant to change the default behavior just for the case. Anyway, thanks a
lot for review!

Cheers,

Petr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
