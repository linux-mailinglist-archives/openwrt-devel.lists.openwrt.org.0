Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3A287A73
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 14:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eFSCBCNvTeTlGQGbi2a1QzM/STyjKwJiM/JZ7IYQwHA=; b=gRTf7CTXxnR5cxnJ8NqhaMvIs
	4EIIdTj/tBDf+G10zPfvKcdMNb9DzgOtEgOJDjzloIQkyYhs/etxRJOXk3mHzMDpMkZPg2k3ziioL
	x/3rCyfJGwZo6u5iaWylV3e55D3ykb5qrkzwlYUD9Nh1WY9Cp02/ifdrYvQtPAKRev3bp6/UG+y0L
	q7HdPHHqeYLuOEoD5nc+iyPfwYnPAK9IfeGBpP2F4+hFW5QtovRjvYEsXD0UhBUjps0iMeVuUp2Zr
	6PnCOawbwhHtSWKdXXhYLQyyuMlZDm1N+8fOur1WiamTDD3LYeubPD7J+jUz1vFcZFdjVFHy63rgg
	o1KLHYIeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw4KN-0006L5-7Y; Fri, 09 Aug 2019 12:49:03 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw4KE-0006Km-Dr
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 12:48:55 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 700D413C283;
 Fri,  9 Aug 2019 05:48:53 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 700D413C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1565354933;
 bh=+UyNd6LlRJ9Vs/m8J/cXIr2hRUO9lotk3jNq6T6hTBw=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=jTyAtmOQ1oByR79HS7PCE4KKXFcGst/6+au5/S0b3ttqWWobOgkdx6SItbOuk80Ly
 5C0tMfgvqpU0gfEI4+G/kXB896lp3WSGaGCuQIHsJK9knW3J00P5I3dZslRVG/R7Sn
 baNVBulLm9RWjmNxMJITdbVtGoQqbOsdvLrSd5rk=
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
 <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
 <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
 <4ca7aa93-1960-1373-7590-1d39c41d8768@candelatech.com>
 <efe239e4-a6dc-1328-d66e-29047290fca1@ncentric.com>
 <f51ea660-d382-7d31-3ecb-f4beddfb997f@candelatech.com>
 <834cede9-27ca-9987-d86e-54335518857b@ncentric.com>
 <44148c8c-2077-1558-83f1-dd59bc483d3f@ncentric.com>
 <9c9445b3-be50-9f2b-5344-9d34ab6bcad4@ncentric.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <5f7fb09e-0113-1cc5-f137-e1ae04ea31d2@candelatech.com>
Date: Fri, 9 Aug 2019 05:48:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <9c9445b3-be50-9f2b-5344-9d34ab6bcad4@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_054854_511186_FCB64A97 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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

On 8/6/19 2:26 AM, Koen Vandeputte wrote:

>>> Hi Ben,
>>>
>>> I finally managed to get to some time to properly take a look using a simple setup.
>>>
>>> Attached all required files to simulate the issue.
>>>
>>> I compiled the latest OpenWrt master state, (included a full wpa_supplicant and iperf tools) and ran the 2 starts.
>>>
>>> Attached also logs as seen from both boards simultaneously.
>>>
>>>
>>> basically:
>>>
>>> - If the boards finally do link after lots of tries, it will have a >200ms latency and max speed of about 3Mbit.
>>>
>>> - The wpa_sup config file is the most basic RSN enabled config.
>>>
>>> - I also tried the current Master state with/without all custom pathes, but the result is the same.
>>>
>>> - wpa_supp also nags about some missing IE's
>>>
>>>
>>> Hw used:
>>>
>>> - 2x RB-922UAGS containing a on-board ar988x, capable of 30dBm.
>>>
>>> - 2x standard 5GHz omni antennae
>>>
>>> - board seperation distance ca 6ft

Can you reproduce without encryption enabled?  That makes it easier to debug
packet sniffs.

If you just run ping traffic (or very slow speed tcp/udp), do you still see the issues (like high
latency, packet loss, poor on-air encoding rates, etc)?

If I build you a debugging firmware, are you able and willing to reproduce the problem and
send me dmesg output as well as on-air packet sniff?

Preferably, with generated traffic with unique packet sizes (ie, ever increasing, random, or something like
that, so I can more easily match up on-air frames with the debugging output.


I believe that the beacon issues are probably a symptom of some other failure in the transmit and/or
receive path.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
