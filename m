Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC423D3FD0
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 14:43:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7+T7qsWEj40xOGK5y0QJhUNr++U2Xlv6q6WmFrRU7Rc=; b=QdfszcAa0U9NuTb6oj9ArchjL
	XiNovq1Ip5VUQ0cNLRV74O7+qMaycpbariDsaix3iRTxejFHkKa5C+ADO04v6CbP9g5Op2KlTXR5T
	At3UvHSAUQzt94shMN6+vO2Vm7u515K5roXR1ckc+xqpch98leoNS/Z6Bp5AROzxo8n8V7vSl0ZIh
	i11NCM7TpM4tnNMvVI1l28gnLiDHjz1x4uKYnDfXw/BQpl5yexKEe7xFTfBycSdt1oOAnC5FQgQRS
	WekyqEQMNORPRuGPbZIHSHmlmCMmYBL/RUSN54YkRCbQdQmZpQZK+f74emp5v7tNTaA045Q+N3r9b
	YEvrwMThg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuG9-0000VX-EB; Fri, 11 Oct 2019 12:43:05 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuG3-0000Ug-4L
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 12:43:00 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id D9E3F204BB;
 Fri, 11 Oct 2019 12:42:49 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 11 Oct 2019 14:42:49 +0200
From: Florian Eckert <fe@dev.tdt.de>
To: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <B5610083-3E74-48CB-930E-F4074FAB6475@gmx.de>
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <B5610083-3E74-48CB-930E-F4074FAB6475@gmx.de>
Message-ID: <9acb357ce08a81639859c3f449aaa8f4@dev.tdt.de>
X-Sender: fe@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_054259_330162_855D7089 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

I'm not sure if my opinion is helpful, but that's how I see it.

>>> Or: Start discussing the release blockers here and now.  Thanks.
>> 
>> 1) Blocker: LuCI master needs to be backported to 19.07
>>   Time estimate: 2-3 weeks

I think it's good that LuCI has now outsourced more work to the client.
Thanks to Jo-Philipp to do this work (great job) but I think it needs 
more testing time.
So it should go into next release maybe 20.03?

>> 2) Blocker: All relevant sub-components for WPA-3 + GUI support, such
>> as
>>   hostapd, iwinfo etc. need to be backported to 19.07
>>   Time estimate: 2 weeks

should go into next release maybe 20.03 because this is neede by LuCI

>> 3) Blocker: Some weaknesses in libustream-ssl client certificate
>>   handling need to  be addressed, which can only be solved by an API
>>   redesign. Band-aid fixes available but not merged, nobody worked
>>   on API redesign yet
>>   Time estimate: 1 week

should be done before 19.07 release


>> 4) Blocker: Need to assert the state of the Dragonblood WPA3
>>   vulnerabilities in 19.07's hostapd
>>   Time estimate: a few days I guess

should go into next release maybe 20.03 maks only sense in master.

> Question: How long would it take to stabilize/test a fresh fork from
> today's Master branch instead? I assume none of these issues apply to
> master or need to be solved in master as well?

There are always changes in the master that may need to be backported to 
a stable branch.
But since the master is constantly evolving a stable will never be 
released if we keep going like this.
I think the release will delayed even more.

It is clear to me that there is more effort in the LuCI to fix the bugs, 
that there were big change in the master -> switching to Javascript.
There is always advantage and disadvantage.
How to do it may be wrong. This is life.

Kind regards

Florian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
