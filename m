Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D31618F213
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 10:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Co4VA4igSE0eYX4Y38zncXDg1NhW9ih/7Al50aSQRck=; b=mdFO2iB2GbDFkdgB8iKfEh9tl
	x+fv5E8d97ARPdYfOZq0AisBz88kHQ9jzwo2e7DbfLIM9sdwBzQ2cNMfQ8WoJ6r2w8xwxtK0h6Cwo
	xCD0Rc3VQn6KHkell2D6cpfxo1mWqDoWI9EFXEJbxXDeZeIGythGe5KlCM0gW6g/XuLB79E/5p2El
	zNx55e+AjdECsjZCIdSWsdSL2X/AE8E6xZ0Ay3SeGo7GJsO8uIYSeNOsUAGmMUFJrAc+TuYGbxnp+
	XmxqZV1VfX8EDvy/ywyuS+WvR9sfD4Hrfmj5zTBAyIU32LetZgY3bIU4pVM4HAd2YsuTsggAi3fP0
	LdYCq3mHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJce-0007Z5-7a; Mon, 23 Mar 2020 09:43:52 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJcX-0007Y5-T7
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 09:43:47 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id AB48D20AB4;
 Mon, 23 Mar 2020 09:43:28 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 23 Mar 2020 10:43:28 +0100
From: Florian Eckert <fe@dev.tdt.de>
To: Felix Fietkau <nbd@nbd.name>
In-Reply-To: <4acf0592-cf45-15c9-3741-55b47fccc238@nbd.name>
References: <20200319120320.28651-1-fe@dev.tdt.de>
 <18a31c67-73a6-e410-8ade-31aa445ea000@nbd.name>
 <e5b38741723f540699fc175c8fbd8206@dev.tdt.de>
 <4acf0592-cf45-15c9-3741-55b47fccc238@nbd.name>
Message-ID: <f608da27cfbe3e9d0b831886d966ddcd@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_024346_089344_1057B938 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] netifd: add pre-up/down
 post-up/down callback handling
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
Cc: openwrt-devel@lists.openwrt.org, Eckert.Florian@googlemail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


>> I know this is done wit the uci option auto for this interface.
>> But if I disable this flag, then on the next boot this interface does
>> not start
>> on boot anymore. I have to start this manual. So I think this is not 
>> an
>> option.
> No, I'm talking about the internal per-interface 'autostart' variable,
> which gets set to false if the user does a manual ifdown of an 
> interface
> (but not if it just failed to start up).

That doesn't help me.
If I do an manual ifup (CLI) or an ubus call the value does change.
I could not difference if this is a manual command by CLI or a direct 
ubus call.

In my case a connection has been established by the protocol handler 
successfully by netif.
But in the course of the established connection there is an error.
To track this I am using the mwan3.
The error can have different reasons.
The problem I have especially with wireless cellular interfaces.

* Layer 3 problem by the provider or in his backend
* Bug in the Modem firmware

Netifd can't detect this, because the operstate does not change
on radio devices the firmware of the modem does not support this.
Or it is an other problem that does not have to do with the modem.

The only thing that helps me is to reestablish
the connection with an ifup (CLI) or an ubus call.

The Problem is now i can not stop the connection because it is for now
not possible to distinguish if the stop is a user interaction or a 
script
interaction.

So If I only use ubus call on my script and user interaction uses 
ifup/ifdown CLI command
and if I set a flag by ifup/ifdown I could solve my issue. So that if a 
user
uses ifup/ifdown set the flag and so could proper stop the connection.
The restart code could does test the flag an so does not restart on user 
interaction
by the ifup/ifdown CLI command.

I can also imagine that we extend the netifd so that we add a flag to 
the ubus call
if it is a user interaction via the script ifup/ifdown. This way I can 
distinguish
if the connection is coming from a script or the command ifup/ifdown.
This is a very precise solution. The other one is more a general 
solution
with which other things are possible.

@felix thanks for reply :-)

- Florian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
