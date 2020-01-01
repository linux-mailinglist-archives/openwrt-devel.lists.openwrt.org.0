Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B39E12DF53
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 16:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:To:References:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kCY21pO7aOZitEpGFivVxPpjk8Nh97AqwKnR2ZQIlBU=; b=gkIwL/D9+cidJGv4ohvcfiuNJ
	yOHXg+EPrNKl2uGia4zU+JMiCnV8/xZADazz8BTTMqg6XqHzWuxYLrLD8u7cCwkCLuRciQbgh1ktT
	toy6p72pOz+1bPM0wJSCp19sF0vYgKKNiJF3BuM08Rwq+JIiQPZsSoBxW3MpE8ha7I2xMgPr3gjSe
	iEc1gGZYk0RWem4stbC4Cv+AvRynDkgw+9iOMHfP3ViepTeoiazf2irZJDj17gKNDRv4uuRn1J+9x
	jdK9ylT6zWOxmOjlBHSKDvAe+rFCCUQku2ml2l3wqxIw6ZDFbCH8PPh7iSNDbpm03YI+Hbj1P5r8L
	hkgrgWUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgMn-0005IH-QO; Wed, 01 Jan 2020 15:57:01 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imgMe-0005Gv-3P
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 15:56:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id DD839C029D
 for <openwrt-devel@lists.openwrt.org>; Wed,  1 Jan 2020 16:56:44 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMxElHKPYq0e for <openwrt-devel@lists.openwrt.org>;
 Wed,  1 Jan 2020 16:56:41 +0100 (CET)
Received: from [192.168.0.114] (unknown [117.2.22.45])
 by mail.softart-ge.com (Postfix) with ESMTPA id B22F9C0097
 for <openwrt-devel@lists.openwrt.org>; Wed,  1 Jan 2020 16:56:40 +0100 (CET)
References: <a7471bca-f5d3-d0b1-042b-6c3eef7620b1@softart-ge.com>
To: openwrt-devel@lists.openwrt.org
From: Reiner Karlsberg <karlsberg@softart-ge.com>
X-Forwarded-Message-Id: <a7471bca-f5d3-d0b1-042b-6c3eef7620b1@softart-ge.com>
Message-ID: <2811cf04-045f-c39a-3e46-773e4d931d9e@softart-ge.com>
Date: Wed, 1 Jan 2020 22:56:35 +0700
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <a7471bca-f5d3-d0b1-042b-6c3eef7620b1@softart-ge.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_075652_293146_76D2A0F5 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Fwd: Re: Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


Am 31.12.2019 um 21:15 schrieb Paul Fertser:
> Hello gents,
> 
> On Mon, Dec 30, 2019 at 02:41:12PM +0100, Piotr Dymacz wrote:
>>> On 12/30/19 12:42 PM, Jo-Philipp Wich wrote:
>>>> Hi,
>>>>
>>>> given that (binary release) support for 4MB devices will end with 19.07,
>>>> I'd vote for reverting the 4K sector change in ath79 and stick with 64K
>>>> ones as common denominator across the entire target. That will be the
>>>> least invasive and most robust fix.
>>>
>>> +1
>>>
>>> IMHO this change is way to crucial to have it introduced this short before
>>> the release is built. People who built images for their devices can introduce
>>> 4K sectors to their own images. This way, we do't risk breaking boards.
>>
>> +1
> 
> Are any of you using the affected TP-Link boards or ath79/tiny or
> 4 MiB devices in general? What features do you actually pack in them?
> Do you plan to continue doing so past 19.XX release?
> 
> If no users speak up probably it's better to remove all the support
> code altogether to avoid wasting maintainers' time on it?
> 

I am supporting lot of smallest/cheapest TP-Links, running custom built current "tiny" image, or even 15.05, heavily 
shrinked down for 4MB flash.
No special packages installed, besides wireguard or coova-chilli.

All these devices installed in Asia or South America.
Past 19.xx it seems be to OK to drop support.



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
