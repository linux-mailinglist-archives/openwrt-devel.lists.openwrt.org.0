Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1574BB7BB
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 17:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pP0ItP0f+1qJyzvXq8Qopp2OmQ/QLlCR8B2Y1akUnKs=; b=BX8tL8Zd1TuikDSpyFZ3FOvsq
	Llg8EhSES609HoOt0FuKP8Tn5Txqt11dKyAbI63Cqu7wI9A2xrDZdAATdZPY/Nr9zmUmW4gi7mH3P
	I8zCnktG7keZkZHTFUhzCPT3aAGqokNnpOye4BvDomsKV/XU9J07ZLbsqkp2pvg6hHOXs6aIoyOKz
	moUEBtxfnRgaKXEQo5m9oEf6ktekcMKIx2Kc5bVWP1zWmbkPP+K+hvOB74Xx2rK3nWGewNoO/Ehox
	cnPz1Ow+EDE+WxhRXVDzYxHu7DzuAru5Re87QHi5DehJJQv3hby+drR5EJwrZnD/03AqEFMyOJaWD
	po4dlwa2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQ92-0004wZ-Bb; Mon, 23 Sep 2019 15:20:56 +0000
Received: from n1nlsmtp03.shr.prod.ams1.secureserver.net ([188.121.43.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQ8o-0003g3-JU
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 15:20:44 +0000
Received: from n3plcpnl0065.prod.ams3.secureserver.net ([160.153.153.132])
 by : HOSTING RELAY : with ESMTP
 id CQ76iYWseLoCYCQ76imAbD; Mon, 23 Sep 2019 08:18:56 -0700
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=maxnet.al; 
 s=default;
 h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x34/rg7sxCesmsWF42SUSycoDa+ov/mUeyQEI2XbOv0=; b=p6O08lTN6DknhRryG3aW9Zh0ra
 bWtQ5UOTNlvthglivqq4NOpQYsVmbbzdQuIef3xT2s1cofAcrvYpyFGNZzwlQntinFMmLiwPO5GSA
 qbz5RaeYJ8tFTk6Zit+a9x2nC5gu77o+VUD9XV+QxjH9FYBeYe05ugKPTBTS8tRPkQHKztgVOJXyk
 lFBtZhPp8KtVBSs1vbCIz6wfY7sA9gmN1msFYk53ymSADzn7iltbP5MEkbjJahP4xVqp4zNl+VOZf
 2DsbymsbTFnRTzdkhUllPRfQVH3GyVWOguXUmOYHQi/QvbCH0+uZdXMdCqwXdDQm7ZhlKJAG4QxEl
 ON8fUHhw==;
Received: from [127.0.0.1] (port=59008
 helo=n3plcpnl0065.prod.ams3.secureserver.net)
 by n3plcpnl0065.prod.ams3.secureserver.net with esmtpa (Exim 4.92)
 (envelope-from <support@maxnet.al>)
 id 1iCQ76-000F9Y-Eu; Mon, 23 Sep 2019 08:18:56 -0700
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 08:18:51 -0700
From: support@maxnet.al
To: Ben Greear <greearb@candelatech.com>
In-Reply-To: <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
Message-ID: <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
X-Sender: support@maxnet.al
User-Agent: Roundcube Webmail/1.3.7
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - n3plcpnl0065.prod.ams3.secureserver.net
X-AntiAbuse: Original Domain - lists.openwrt.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - maxnet.al
X-Get-Message-Sender-Via: n3plcpnl0065.prod.ams3.secureserver.net: authenticated_id:
 support@maxnet.al
X-Authenticated-Sender: n3plcpnl0065.prod.ams3.secureserver.net: support@maxnet.al
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CMAE-Envelope: MS4wfHYoPXnkGDnfj5uCjUtVBHJUe5Exl+hcF+02CFp3AThs6CxpJqS3u3fq0gqhhgDi3CqonIDQZs1gygQ04NpdxL4BIMgVLB4PSojM0h5n9qWEwxU48x0A
 VjNC/NxHi0kbM3nieVgdUdvbOzT64yduSmqxuD4D1+l87n9fqLwjxDLeuR69owuEriHf2GiCu/uNfDBeIDH9/CP+SKzYWXNCjz3uO1J/2HoNdfsK3azpX4tM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_082042_794871_94285CC3 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.121.43.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [188.121.43.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: Re: [OpenWrt-Devel] QCA9994 outdoor 13km link
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
Cc: Vincent Wiemann <vincent.wiemann@ironai.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Ben,

When do you think you might be able to make those changes to your 
driver?

Thanks,
Klevis.



On 2019-09-20 13:00, Ben Greear wrote:
> On 9/20/19 12:55 PM, Vincent Wiemann wrote:
>> Hi Klevis,
>> 
>> have you tried it with a short distance?
>> If you did you should better ask Ben Greear directly.
> 
> I asked him to post publicly so that others can help answer and that
> my own answers might
> help someone else.
> 
> I have some patches that should enable coverage class settings for
> wave-2, but I am too busy
> with other things right now to port them to my ath10k-ct 
> driver/firmware.
> 
> Thanks,
> Ben
> 
>> 
>> By the way ath10k gen 2 chipsets don't work very well with long 
>> distance links without a
>> special feature which implementation is only available to companies 
>> like Ubiquiti and very few
>> people who have an own reverse-engineered implementation.
>> It works on IPQ401X, QCA9886 and QCA9888 based chips only.
>> 
>> And it is not possible to set a coverage class for gen 2 devices, yet 
>> as far as I know due to missing
>> documentation and implementation (correct me if that information is 
>> outdated).
>> Furthermore a high channel width often results in problems
>> due to lower receiver sensibility.
>> We have better experiences with lower channel widths and sometimes get 
>> more throughput with that.
>> 
>> Actually I think this does not explain your connection issues as 13 km 
>> is not that much.
>> 
>> Regards,
>> 
>> Vincent Wiemann
>> 
>> On 20.09.19 18:30, support@maxnet.al wrote:
>>> Hello everyone,
>>> 
>>> I am trying to setup a custom made outdoor link with Apu2d2 board 
>>> devices and QCA9994 cards from compex. After i installed openwrt and 
>>> ath10k ct driver, kmod ath10k and board-2.bin the device can run a 
>>> 80MHz channel in WDS AP. The problem is that it won't run as station 
>>> or station wds. It can scan
>>> the SSIDs but won't connect them.
>>> 
>>> Any suggestion?
>>> 
>>> Thank you!
>>> Klevis
>>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
