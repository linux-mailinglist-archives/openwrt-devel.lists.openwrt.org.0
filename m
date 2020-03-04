Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D851178FDF
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 12:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YY2Jsm2k9wbQ0xrbmRR8fFiHkMoY9n8ukLS0Lmgrxkc=; b=uE9WWWr07mvYPXOoG8WsJbOyF
	Ick1hm8kPqdXCvGgmdC0ScIya2oZactB6J+ujd0mhWWIlhEP8cBsllYMGLP01viuWkmW2mBSJb57u
	es5mVb6UvBVRVPlDcvtblRJZ8TnSY5KJqpGpxwiz8c4XsC5YVu0WlcG6sInmW7m+jRDmxcmuQlYfA
	hWCqGadciStOkHR4iKRj6s61vXqiA1kuBF7L8+A7h/svOhhVnyBqdqu71dfQaFWCm77zZAczfGF0y
	77IJXi7i2uWnul94/tdMHjeoxgfvZZbTPEppttikryqMesRq1e65h7YEQNqaJaHdMU0ZGR/EQH9yK
	yBmYfmHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Saf-0000ye-1W; Wed, 04 Mar 2020 11:53:29 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9SaW-0000yI-8U
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 11:53:22 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id BF6F020C94;
 Wed,  4 Mar 2020 11:53:07 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 04 Mar 2020 12:53:07 +0100
From: Florian Eckert <fe@dev.tdt.de>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
In-Reply-To: <d983ff97-5c1f-4285-b6e5-e7e0f3363f82@localhost>
References: <158330982516.19674.4885350586434429867@git-01.infra.openwrt.org>
 <mailman.35728.1583309833.2486.lede-commits@lists.infradead.org>
 <20200304092608.GD79862@meh.true.cz>
 <2e0ca3c649ba7041638b351ca216299f@dev.tdt.de>
 <d983ff97-5c1f-4285-b6e5-e7e0f3363f82@localhost>
Message-ID: <47f845a230bbfc9d3dea93ebab97e64d@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_035320_457253_35716C3D 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


>> > > procd_open_instance
>> > > procd_set_param command "$PROG" ${socket:+-s "$socket"}
>> > > ${timeout:+-t "$timeout"}
>> > > + procd_set_param respawn ${respawn_retry:-0}
>> > >
>> >
>> > IMHO this is probably not correct as well, that respawn param is
>> > "array" of
>> > [threshold, timeout, retry] params, so this probably sets
>> > `respawn_threshold` to
>> > 0, not `respawn_retry` as intended.
>> >
>> 
>> I was not aware of the fact that all parameters must be given!
>> Sorry for that my fault!
>> 
>> If so I would suggest to change change the line to:
>> 
>> procd_set_param respawn ${respawn_threshold:-3600} 
>> ${respawn_timeout:-5}
>> ${respawn_retry:-5}
> 
> I barely remember seeing such defaults in
> https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=package/system/procd/files/procd.sh;h=e8b1b6ffb7d3bf09725c2451813ca69fb4d74372;hb=HEAD#l395
> 

So we only have to change the line to this?

procd_set_param respawn

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
