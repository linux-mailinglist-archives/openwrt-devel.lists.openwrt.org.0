Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E0218CFE2
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 15:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vINaR9ccsDK3XQ0rb+oubFrvWfPA4NAHWxdZlm4ZWMg=; b=ZutvQsGcCD2sTU1auNPLMXzAl
	LGN22aHz/zGDVjBvDo/ctgWejuLz/EEf6RgC4m9CxXG1GQrKQm6IV51JSh+WH0sl1dlcMCCYf6Wzj
	gKDy7MRRTlsp/e/QTNYbIaK7OaeuKgn2QPDIt+/BdqKC2lO7JnRCMNp7NdP+mcZ1SjFUcVulqpKVc
	zV+ztWZd1QafeC5AmRO6ApaBgYQMEhE5PqDtgpblMZlWoGYxFFgdULttKOzA5pML25GoiaiYxYn8N
	3lYfK72S/QyL+2dTR/+RoS5GpaTI0MpbyEr3CV/nh8jauiDdrw0c2P53UO8bLiL6fscnsvEa4SFJ4
	Wy7YV57aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFIWZ-00007s-Ht; Fri, 20 Mar 2020 14:21:23 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFIWS-00007Y-Mp
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 14:21:18 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id A428E20EC5;
 Fri, 20 Mar 2020 14:21:00 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 15:21:00 +0100
From: Florian Eckert <fe@dev.tdt.de>
To: Felix Fietkau <nbd@nbd.name>
In-Reply-To: <18a31c67-73a6-e410-8ade-31aa445ea000@nbd.name>
References: <20200319120320.28651-1-fe@dev.tdt.de>
 <18a31c67-73a6-e410-8ade-31aa445ea000@nbd.name>
Message-ID: <e5b38741723f540699fc175c8fbd8206@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_072116_901588_8118CCCC 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

network
>> With this change we can decide if this is a user interaction with 
>> CLI/LuCI,
>> because with the new callback mechanism I can set/delete a uci config 
>> flag so
>> that the connection should really disconnected. And so does not 
>> restart on a
>> failed connetion tracking again because the uci config flag is not 
>> set.
>> 
>> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> netifd already tracks for every interface if the user requested it to 
> be
> enabled or not via the 'autostart' flag, which you can query via ubus.

I know this is done wit the uci option auto for this interface.
But if I disable this flag, then on the next boot this interface does 
not start
on boot anymore. I have to start this manual. So I think this is not an 
option.

> Is it enough for your use case to track that flag?

As far as I can tell at this point, it's not an option to use this flag.

> If not, please go into more detail, because I don't think hacking

In the LuCI and in the CLI the command ifup/ifdown is used, if the
user wants to start/stop this interface explicitly manual.
The auto option is not touched.

The ifup/ifdown script executes an ubus call to set the interface 
up/down [1].
After the execution is preformed by netifd (proto) then the hotplug 
scripts are
execute with different ACTION (up/down/ifup-failed.

If I want to know if the Command is execute by an
user interaction by the CLI (ifup/ifdown) or LuCI [2][3] the only 
possibility
I have is to hook into the ifup/ifdown command.

I would also like to point out that debian also has this possibility [4] 
in the
network configuration.

- Florian

[1] 
https://github.com/openwrt/openwrt/blob/master/package/network/config/netifd/files/sbin/ifup#L9
[2] 
https://github.com/openwrt/luci/blob/6c167ea880bd29c69730d802c48ebc2c0253b905/modules/luci-mod-network/htdocs/luci-static/resources/view/network/interfaces.js#L991
[3] 
https://github.com/openwrt/luci/blob/6c167ea880bd29c69730d802c48ebc2c0253b905/modules/luci-mod-network/htdocs/luci-static/resources/view/network/interfaces.js#L997
[4] https://wiki.debian.org/NetworkConfiguration

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
