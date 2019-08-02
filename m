Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E9B801C1
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 22:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZGd5ETKS+VEtZLY3ySyd68f9McrFg9O6GOKHpqcZLM=; b=m0lkGNJCNxTeJB
	np7MbrQO39SGFGGbCFpKddYwZ9TyUEOvo621d0DN9cc2Hdixiw3nOTucC1eSw+QxhFYzfIG2ZZKHB
	FDkhrT/EEFI/kc8fsEu3PIO02RwD6uqKq+8eALvUSvQO83RpDC1F5BoMM9H0NedYzFza0SiWKx0W8
	xuKQj7VX+0tF4W87XE18n2I2FUHO0cUAIZyCRMIez8coIEYGHj7JYxt8yHWJB+YT6/DDRYCtN8B02
	AVszMAeo2z41GxpCtbRFcgrx40LAqbZRRyxeTysme3V/VEtgY9zhht8e55v0AfcZGRqmz7nMYOPvF
	kiOcjrXjMKIF1VxEDOQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hteCf-0003lG-FM; Fri, 02 Aug 2019 20:31:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hteCX-0003kY-Ez
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 20:30:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id x1so28504688wrr.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 02 Aug 2019 13:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E1c9Cposbkcu0SAVWLy4HfKtc8MnBFRHuYilxsNzaO0=;
 b=likj0IkF5iRqh5/BQoz4s26edjbru6qkCehlHKKxAzrOGKVrKM6n6SIKLHFMJ0bnOU
 7EzESRs2rCIWOLR0w3I9WtIfRKm9YPcTSkrzwiwfgh8MIs+E1dKmRW2n/njXDXRku92X
 xCmDgdwq6NkibWbzmTTpEpAajw0s465mKhKb8Y7j3Fz4iUEl840XCz3n9l/QBqMiDv6J
 5QG+BDpDjX6HVvQ5+xaqnIzV5JT4IJGcvc6BaOMH9x8g+L35GKFYhOPBk2lP3fCKmp1V
 x87rSCQwryT9RiuRZ4+aH21mlIZdyVIkbREB5mWPQA6O3WDq7HumJLf2ytQHWeWY1We2
 dTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E1c9Cposbkcu0SAVWLy4HfKtc8MnBFRHuYilxsNzaO0=;
 b=n32IBFU2W/ostQJL9/skxk2BgaR08Eo1TLCKOl29W99DWLn1fyUaMOSeBeyQRRADti
 3dqsCQhzxSQ57iOWR0KObe1gzVTNmLI1B9ICjBWO6l1ZMKDYF/PZRqFaIur2E78BEYKM
 7jHRxYcZYpaCizDN38gTqbx74aw3IYUeJoWSYplzSBuH/1MstMzxjQbibF4EfbCBBw1v
 qCiTnwWkvX0uZlrQ9tZ8auqjaZs/YXKaf8j8qixbsbhSwCD49FbF3NYUapD4EIPui5N/
 m91IbBHoXKSJ8WjzPtXDRnhm5uLo2nJtmL8F2vcc0jKeyGezZCWZJVhGl15FElpKAnfW
 mlug==
X-Gm-Message-State: APjAAAX/4yTJBtVjg8mFaBESfWCHQe65FXAsrIK7O/hnQB1DGU7D1FBo
 YNOfsxz2E196hlnB+d4cVILXzQm6
X-Google-Smtp-Source: APXvYqxkHHH4TsuoEjHyO4+UTvwLlXDDt4ROTT3JFIc8Tfti0erD9o4NNAT+oOX72ivYUJeKldhfkA==
X-Received: by 2002:adf:f281:: with SMTP id k1mr60846934wro.154.1564777852445; 
 Fri, 02 Aug 2019 13:30:52 -0700 (PDT)
Received: from debian64.daheim (pD9E2978F.dip0.t-ipconnect.de.
 [217.226.151.143])
 by smtp.gmail.com with ESMTPSA id g19sm138144281wrb.52.2019.08.02.13.30.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 13:30:51 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hteCR-0005Yr-15; Fri, 02 Aug 2019 22:30:51 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 02 Aug 2019 22:21:49 +0200
Message-ID: <3550985.MgYyW4AKct@debian64>
In-Reply-To: <96201ec3-3b31-2fcf-3e4a-488493235fca@allycomm.com>
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <96201ec3-3b31-2fcf-3e4a-488493235fca@allycomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_133057_505997_40B891BE 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 Jeff Kletsky <lede@allycomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, August 2, 2019 8:03:17 PM CEST Jeff Kletsky wrote:
> 
> On 8/2/19 7:46 AM, Adrian Schmutzler wrote:
> > This converts all remaining devices to use interrupt-driven
> > gpio-keys compatible instead of gpio-keys-polled.
> > The poll-interval is removed.
> >
> 
> Not that this proposed change makes the situation any different, but 
> many devices have switches that are poorly handled by the "key-press" 
> approach.
> 
> One specific case that has bothered me (but not enough to dig into it) 
> is the Archer C7v2 that has an "rfkill" switch. Not only is it 
> "backwards" (label "Off" is really "wireless on"), but it only responds 
> to changes in state, so its state at boot is not respected. You can't, 
> as I recall, set it for "wireless off", plug in the device, and have the 
> wireless be off when OpenWrt boots.
> 
> The GL-AR300M series and the GL-AR750S also have a multi-position "mode" 
> switch.
> 
> Right now, all these switches have to be toggled twice to have their 
> position be properly respected by the OS if they're not in the 
> "expected" position.
> 
> It would seem that, at some point, switches like these would be better 
> served by a driver that can both detect position, as well as transition. 
> This would likely also require a way to poll the position at 
> "impacted-service start" and ubus support along with changes in existing 
> hotplug scripts.

From playing around with gpio-keys and the openwrt's gpio-button-hotplug.c
in the past few weeks, I think I can tell you what's happening here.
One (there are more) of the problems is that gpio-keys module gets loaded
even before the procd enters its "preinit" phase (the module is part of 
/etc/modules-boot.d/30-gpio-button-hotplug). And the bad news is that
even once procd hits the preinit phase, it intentionally forwards everything
to the failsafe button events script:

|	[ "if",
|		[ "eq", "SUBSYSTEM", "button" ],
|		[ "exec", "/etc/rc.button/failsafe" ]
|  ]

<https://github.com/openwrt/openwrt/blob/master/package/system/procd/files/hotplug-preinit.json#L15>

/etc/rc.button/failsafe itself is also very telling:

|#!/bin/sh
|
|[ "${TYPE}" = "switch" ] || echo ${BUTTON} > /tmp/failsafe_button
|
|return 0

The long and short of this is that initial switch state event is
generated but it has no change of getting processed properly
at the time the driver is loaded as the system isn't ready.

Note: If it was loaded later when procd is in the "init" phase,
then it works because events are then processed by hotplug.json,
which does:
 
	[ "if",
		[ "and",
			[ "has", "BUTTON" ],
			[ "eq", "SUBSYSTEM", "button" ]
		],
		[ "button", "/etc/rc.button/%BUTTON%" ]
],

<https://github.com/openwrt/openwrt/blob/master/package/system/procd/files/hotplug.json#L58>

Then everything would work as you expect.
so, it's not the driver that lets you down here, because it can't
do much about these userspace antics.

(Note: OpenWrt's gpio-button-hotplug.c uses the BUTTON subsystem
event type for both EV_KEY (button) and EV_SW (switches) events.
So don't let this confuse you).

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
