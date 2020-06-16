Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD371FB04D
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 14:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=85iPEAr4Nk53iKqxs2Qt2z24HDa4BFIlwBzJ5uxmEOo=; b=h9jsayfPPfcAZh8coTjcl47YU
	T6iYG/YnhShVIhihdSH1RnX5InHjvYZ2eKg3hETsu6F1SCZ9ik5t/QHWkMqfw+M+5QBcEG4+C3oXH
	s0R1YYAYQDCSsuZ030N0aLOYt9Gpgq79eBJO26jgNZAGUARfyiAXRBwRY09/WsIDFVmrYLaYH8vd8
	NUBuG7sukN9uuNDe7GYN7OR2tpYXgO/n5MkjEVpyCnmqBazxGao7nVQJHGNK1MDQ39VTrUJbUvCTZ
	MXhwtUfUd1/W2NWqLcJ1Z+ZSCwd7Li3NNOhiAGxHhtHhXSNyoXxNqn7rLK2tT9UGtAteZtLK/W0vl
	Glgs5twxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAbC-0006GP-5e; Tue, 16 Jun 2020 12:21:54 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAXx-0001Ee-G4
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jun 2020 12:18:39 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id 5152C208E4;
 Tue, 16 Jun 2020 12:18:32 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 16 Jun 2020 14:18:32 +0200
From: Florian Eckert <fe@dev.tdt.de>
To: mail@adrianschmutzler.de
In-Reply-To: <004301d643d1$0eccb190$2c6614b0$@adrianschmutzler.de>
References: <20200616082613.892-1-fe@dev.tdt.de>
 <004301d643d1$0eccb190$2c6614b0$@adrianschmutzler.de>
Message-ID: <3523633f9906f23b980f260be84bce9e@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051833_715158_CA993795 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] [PATCH] lantiq: add dsl line_state mapping
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
Cc: openwrt-devel@lists.openwrt.org, Eckert.Florian@googlemail.com,
 dev@kresin.me, john@phrozen.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

thanks for your comment

>> -		"0xd00")	s="resync" ;;
>> -		"0x3c0")	s="short init entry" ;;
>> -		"")		s="not running daemon"; ls="0xfff" ;;
>> -		*)		s="unknown" ;;
>> +		"0x0")		s="not initialized"
>> +				n=1 ;;
> 
> Wouldn't it be more user-friendly to just use the decimal number
> equivalent of the hex code?

I've been thinking the same thing.
But then I have a problem when I want to display the values over time 
(collectd/gravana).
 From my point of view the distances are then too small or too large it 
does not give equal gradations.

>> -		"0x1000000")	s="test" ;;

Especially the test value jumps out of line there. I think this is 
unlikely and could be neglected,
but I would like to have a linear gradation.


>> -		"")		s="not running daemon"; ls="0xfff" ;;
>> -		*)		s="unknown" ;;
> Empty and error could be modelled with negative numbers then.

We can still do that. So we have for "" and * the value -1 and -2.

Best regards

Florian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
