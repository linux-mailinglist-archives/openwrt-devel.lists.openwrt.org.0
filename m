Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8C31FA0C5
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 21:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j/1Fmjg/kNf5YFvLkZyTYytzZLrL1wqSml4ZHzSfPQ4=; b=du5f7r6NH6WtWqV4oSAyB+PoT
	4OCpWQPPR4EkeESiWyeMXVa50njnT5f80d9CwtdsoW2xwSZaZ+m0KIgQ5gLvAm85LOC6Mq6A8zn4g
	HQrNWa5P3CnSThGWEy3sH5V0ejBHXUZq21rR7KH0x64Fwfbsy8julea4V0OwXG07276wDpJmYPZl0
	Lyzlj91mJmrieKForV6Z7QzM3XkRxldkTrjvNSc6N19GbUrd1lBuXFRdJSnImExbGDynBBPv6rf91
	27bROotQhtE6ThbOV65+Zx/ziTHT6A3OMVrGT3K/BRc6+jomRND3xfxtsYYkCxZtift/823NIzMnp
	dEiby/pWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkv6j-0002kW-Pb; Mon, 15 Jun 2020 19:49:25 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkv6c-0002jr-32
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 19:49:20 +0000
X-Originating-IP: 72.234.141.215
Received: from [10.137.0.13] (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 4A7E8FF802;
 Mon, 15 Jun 2020 19:49:10 +0000 (UTC)
To: Matthias Schiffer <mschiffer@universe-factory.net>,
 mail@adrianschmutzler.de
References: <20200614093330.17516-1-mail@aparcar.org>
 <002a01d64286$7fc90660$7f5b1320$@adrianschmutzler.de>
 <f718a261-fc80-5e5e-0ed2-081396f529a1@aparcar.org>
 <005001d6429b$9d8f8100$d8ae8300$@adrianschmutzler.de>
 <eb60d315-8312-e109-5240-154479e07950@universe-factory.net>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <ef57f384-5aca-8e42-ef42-d0f74645406d@aparcar.org>
Date: Mon, 15 Jun 2020 09:49:06 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <eb60d315-8312-e109-5240-154479e07950@universe-factory.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_124918_400789_759B1C61 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH][RFC] build: disable target name in
 image filename
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


On 6/15/20 7:32 AM, Matthias Schiffer wrote:
>>>> I just think of ar71xx and ath79, where we have the same device but
>>> different targets. Of course, the name won't be exactly equal, as ath79 will
>>> have e.g. tplink_ prefix and ar71xx won't.
>>> Isn't ar71xx removed from master builds? It's neither at snapshot
>>> https://downloads.openwrt.org/snapshots/targets/ nor planed to be re-
>>> added to any upcoming release, is it?
>> Yes, but it's just an example for a similar situation which might arise in the future. Then, we even might not have the current situation with the different device names, but may end up with completely identical names except for the target.
>>
>>>> For bcm63xx, we have two subtargets that build the same devices.
>>>> If we look at PR#2957, we might have a now bmips target at some point
>>> that features the same devices as bcm63xx.
>>> Can you please explain why that's the case? Why do we offer different
>>> images for the same device? I understand that for ar71xx -> ath79 within a
>> I don't have any idea why this situation at bcm63xx exists; I just got aware of it at some point. Maybe Noltari or KanjiMonster can help ...
>>
>>> transfer period but it's never the scope to offer different "flavors"
>>> long term, is it?
>>>> This won't necessarily break anything, as images will still be in different
>>> folders (at least in /bin).
>>> I would be at least confusing and reverts the "unique profile name" idea.
>>>> However, we couldn't tell the difference between ar71xx/ath79 or similar
>>> from the image name (easily) after this change, or whether it's generic or
>>> smp for bcm63xx. For my personal taste, this drawback is bigger that the gain
>>> we will get from removing the target/subtarget part.
>>> Again, this sounds like a undesirable state where we not only build but also
>>> maintain multiple images for the save device. Wouldn't it be possible to add
>>> the target to all those "legacy images", however remove it wherever a target
>>> uses device tree and images.mk aka has long term support?
>> Well, just look at the situation in 19.07. There we have both ar71xx and ath79 for the same devices, and even if we wanted, it would actually be quite hard to really filter out the ath79 devices in ar71xx. I really don't think removing the target from image names will pay out in the future.
>>
>>>> So, unless there is overwhelming support, I tend to NAK this.
>>> :(
>> A compromise could be found by just removing the subtarget, but keeping the target in file names. This would mostly solve your problem with the generic names (at least there would be less duplicate info), but there would be significantly less situations where this was an impediment. Normally, no duplicate devices in a target exist, and if they are moved between subtargets, they are actually moved and not copied. The only remaining problem I can think of at the moment would be the bcm63xx situation, and maybe that one can be resolved at low cost.
>>
>> Best
>>
>> Adrian
>
> What about x86-{generic,legacy,64,...}? These subtargets each define a
> device just called "generic", with the image names only distinguished by
> their subtarget name.
That's why I created this PR earlier, I should have created a patchset 
instead of splitting it on the ML and GitHub...
https://github.com/openwrt/openwrt/pull/3082

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
