Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDA27FFFC
	for <lists+openwrt-devel@lfdr.de>; Fri,  2 Aug 2019 20:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r2ApDaGdlD1A5KYTgMbbhXblppj7nrYwG7vxeZCxZiA=; b=PTDT/DiU8SaSsTVQA/GK1Lqgi
	1Mnk7lekug5QXSQA78mQZBcC+j6UmfOwWNTgwQ7s8sK1f9Xsx+EDF0+pUX9yZYjD2tANeHIsC9VJZ
	IX0gCTvtLN1b7zFFV8ombJACyV76n4LYaGktZRqUYIh/7Cb8qaZ5vb5pFJoLCbaowD0L/FvXNIdb0
	504L/meSagof1CJ1dyefIzOHkeQ/ADhcZo1sQBSsTP6tDh/rntPpYwC4wBCTtvbrtjaGGZSyHzt/s
	Dl3Mlwdgsd7ApdLCwBK0AlMaSWEGL8uYzrp6cHolpVF0w7tNw4qQU732jhUZr7cf/jI6JLyNQdCjh
	c9fRS4jDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htbtk-000628-U4; Fri, 02 Aug 2019 18:03:24 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htbtf-00061p-S1
 for openwrt-devel@lists.openwrt.org; Fri, 02 Aug 2019 18:03:21 +0000
Received: from JKLETSKY-MBP15.guidewire.com (unknown [199.91.43.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id B5FCB3CB42;
 Fri,  2 Aug 2019 11:03:16 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <96201ec3-3b31-2fcf-3e4a-488493235fca@allycomm.com>
Date: Fri, 2 Aug 2019 11:03:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_110319_909935_ED7D76B6 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 8/2/19 7:46 AM, Adrian Schmutzler wrote:
> This converts all remaining devices to use interrupt-driven
> gpio-keys compatible instead of gpio-keys-polled.
> The poll-interval is removed.
>

Not that this proposed change makes the situation any different, but 
many devices have switches that are poorly handled by the "key-press" 
approach.

One specific case that has bothered me (but not enough to dig into it) 
is the Archer C7v2 that has an "rfkill" switch. Not only is it 
"backwards" (label "Off" is really "wireless on"), but it only responds 
to changes in state, so its state at boot is not respected. You can't, 
as I recall, set it for "wireless off", plug in the device, and have the 
wireless be off when OpenWrt boots.

The GL-AR300M series and the GL-AR750S also have a multi-position "mode" 
switch.

Right now, all these switches have to be toggled twice to have their 
position be properly respected by the OS if they're not in the 
"expected" position.

It would seem that, at some point, switches like these would be better 
served by a driver that can both detect position, as well as transition. 
This would likely also require a way to poll the position at 
"impacted-service start" and ubus support along with changes in existing 
hotplug scripts.


Jeff



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
