Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2254178ED7
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 11:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=58trMLPniUKHTWQJfayCNfqp6zCqEl6/WmAaMv67Z7E=; b=fJLv7dRrNYT4NzQ2VpNFDp8xT
	OYFyiCBg5wCWJQA3Mg3kxaAieLWZj6fwTJkCIqfq8KVBYfwkoqsfp53CXKEGHBf15lYfYBgmxd+nb
	VwBwg49p6xtTQmxkCesmokUw5N+Ab+a0563MaF2i5izigGZhU7XXNLh5qwXa3x5tNtYzgzhdy40Dd
	MtjRgueYla4mQfqahy5LOLeFSChI234MbL02Zl3mI/QzM+7scOIP6nJUWYOgMWMjW0eU7smO8VgIn
	8J77spCbJfr7pqJlRNbwUxPeA2c3cwUPtqKX3aD0CUbVK6nkADr3Ib5c8a1TbTYYChJzuGhCa8n6i
	KFzHKWvWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Rbs-0002w4-Mq; Wed, 04 Mar 2020 10:50:40 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Rbi-0002vA-QV
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 10:50:32 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 1CC0420E81;
 Wed,  4 Mar 2020 10:50:15 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 04 Mar 2020 11:50:15 +0100
From: Florian Eckert <fe@dev.tdt.de>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <20200304092608.GD79862@meh.true.cz>
References: <158330982516.19674.4885350586434429867@git-01.infra.openwrt.org>
 <mailman.35728.1583309833.2486.lede-commits@lists.infradead.org>
 <20200304092608.GD79862@meh.true.cz>
Message-ID: <2e0ca3c649ba7041638b351ca216299f@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_025031_016474_6F0248AC 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] Security implications for consideration [Was:
 Re: [openwrt/openwrt] rpcd: add respawn param]
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 Jo-Philipp Wich <jo@mein.io>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Petr

thanks for your investigation

> I simply would like to bring one important aspect for consideration.
> 
> By respawning any network facing service indefinitely we're giving 
> adversary
> infinite attempts for figuring out the way in, decreasing the purpose 
> of
> (expensive) ASLR etc. See "Remotely Compromising an iPhone through
> iMessage"[1] (48:41) for real world example.
> 
> I think, that the previous default (max 5 restarts?) was good enough, 
> ideally
> the timeout should be exponential in between those 5 restarts and I 
> wouldn't
> mind if the restart count was set to 0 by default.
> 
>> diff --git a/package/system/rpcd/files/rpcd.init 
>> b/package/system/rpcd/files/rpcd.init
>> index 77ebcbe6cb..b1061b906c 100755
>> --- a/package/system/rpcd/files/rpcd.init
>> +++ b/package/system/rpcd/files/rpcd.init
>> @@ -12,6 +12,7 @@ start_service() {
>> 
>>  	procd_open_instance
>>  	procd_set_param command "$PROG" ${socket:+-s "$socket"} 
>> ${timeout:+-t "$timeout"}
>> +	procd_set_param respawn ${respawn_retry:-0}
> 
> IMHO this is probably not correct as well, that respawn param is 
> "array" of
> [threshold, timeout, retry] params, so this probably sets 
> `respawn_threshold` to
> 0, not `respawn_retry` as intended.

I was not aware of the fact that all parameters must be given!
Sorry for that my fault!

If so I would suggest to change change the line to:

procd_set_param respawn ${respawn_threshold:-3600} ${respawn_timeout:-5} 
${respawn_retry:-5}

> 
> 1.
> https://media.ccc.de/v/36c3-10497-messenger_hacking_remotely_compromising_an_iphone_through_imessage
> 
> -- ynezz
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
