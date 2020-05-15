Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8391D49BB
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 May 2020 11:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xGguu8XxGGyS5V3VgFdz2Bo55CDpqIO35gcnUde++LU=; b=SzFeTtyzX7WpBZQcVTuOcicq/3
	bOH8sVpMl4Qw6l0y/fX9TZ1siMloPa1RK56fN1RYd/tRyJWPfQ6UzC+tcwndNjnzdMlCj+8QMPwL4
	LySZSto1G9RU8sNbiZFiYYLaEoEOB2XrapR71YagcwPPttqA1GpRoXwNYPcXHJTKuX8NI0rouKriX
	G5I8R/AFkanNT3mnFpa+zuzuCDkuQuONohBPpDYWVKydhVc51LyWAY4sPg+Eg8ZyjU6gdsfKYJsVx
	xvEEl3Xtx6PGMv3boTYm1I71um8xgaTiEaoJ2q4h9UZhSe03Cin/sGraIwMPaesrdQqYTHGEgHd3m
	gaVt1JAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWkp-0004US-GA; Fri, 15 May 2020 09:35:43 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWkf-00039m-ER
 for openwrt-devel@lists.openwrt.org; Fri, 15 May 2020 09:35:35 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E52CE3AD2;
 Fri, 15 May 2020 11:35:29 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c32611e7;
 Fri, 15 May 2020 11:35:13 +0200 (CEST)
Date: Fri, 15 May 2020 11:35:13 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Michael Jones <mike@meshplusplus.com>
Message-ID: <20200515093513.GF69771@meh.true.cz>
References: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
 <20200515065807.GE69771@meh.true.cz>
 <CAJQUmm5iyZ745gDrXgzwtLqZUxOrEU6p2Xw7Sb4K1qf9MBFXZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJQUmm5iyZ745gDrXgzwtLqZUxOrEU6p2Xw7Sb4K1qf9MBFXZQ@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_023533_661500_F210B5F6 
X-CRM114-Status: UNSURE (   7.77  )
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

Michael Jones <mike@meshplusplus.com> [2020-05-15 02:39:52]:

> What's wrong with monit is that it's documentation is gigantic

Good documentation with a lot of examples is hardly a problem, its a bonus
point for me.

> for a relatively trivial need.

Your need, your current trivial use case. Overall project
goals/design/universe should be taken into account.

> If ubus is failing, there's a much larger problem than my service failing.

And you don't want to recover from this even more critical situation?

> This requires that my program be able to communicate with ubus natively and
> offer a ubus endpoint that can be queried.

Then use file, socket or whatever suits your use case.

> More complicated than a simple timer in procd.

Which is not flexible enough, tailored exactly to your very simple use case.

> It's hardly bloat.

Just take a look one step further.  Once OpenWrt accepts this feature its
official.  What is going to happen afterwards in the OpenWrt universe?

Folks will of course start using this feature, adding support for this feature
into their critical services (take your answer to ISC dhcp support as
example), which would in most cases mean local patch(es) as this feature could
be hardly upstreamed.

So in the end, we're going to have not so trivial amount of local patches for
ubus service watchdog support, which would break DRY principle, and probably
result in additional maintenance/QA work with every package version bump.

In order to avoid this bloat, unnecessary patch hell, one would perhaps need
to implement kind of monit/cron solution in procd/umonitd, so it would be
possible to have custom/generic service liveliness checks defined in the
service init scripts or UCI configuration.

Maybe all is needed is some kind of monitrc generator from UCI configs/init
scripts?

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
