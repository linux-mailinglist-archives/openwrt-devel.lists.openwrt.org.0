Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D797711BCD0
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 20:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JvsJSCVe4gV5GDi60UzHDGIrf3KXCbUD6T5nW3jGFJ8=; b=MkriAi3fqBVEGz/pHRUnpOKlv
	Tq/L4d2Dru5wMd13t1aRje/zPNC7ItIUGJVyW2+xyO8xwg5rwlYHU4LYtMjdrZz8zdZPvhiae6FBT
	uQq5l6IZVmPQ8Mips/5Sg4QgHeKIy9kT1l/niFQ4++JQZGQsE9Lf9IVJvnoXDY9JPTg7JVsNupuoj
	pFvHvDuMkVU8VeenMrZ3PvszWa7qBhKNC4LhNDt+MM8cKhgQgGQsuAxa8DJbjzDkIYUMDUVMwdEO8
	rjezJJhySkGdOrs3SuO0ZVPWzP1d++E/JsnYSXOQTCcPkhhVEP9S3E0UmCa1q8AlAHvG/hERwiAyH
	H7QFGlMPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7b2-0001g7-Pf; Wed, 11 Dec 2019 19:24:28 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7au-0001fT-JU
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 19:24:22 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 97F0413C2B0;
 Wed, 11 Dec 2019 11:24:19 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 97F0413C2B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576092259;
 bh=87wQXalMyZCfQaxMI/71aEuOyPanoJl7qtxVZHApW8M=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pD9V2jiwY1KFpiAL5Jb6VoFKDZIInnyBSfUBXs/06E3JsMqy/cD+ijcFRJYVqO3ZM
 8QNiBYhZs73GpLUL2BI5229+vTOwAiLsLz1ApeRkryVFm7D5M7r+xmEhGukjJjTRXu
 0aDGp9wPera5KNmbA93l6X82cbge+YkGhdj9s8x4=
To: Paul Fertser <fercerpav@gmail.com>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <20191211144459.13235-1-fercerpav@gmail.com>
 <d938b7ab-80b0-c78a-5a84-435243dff86d@candelatech.com>
 <20191211191652.GU11070@home.paul.comp>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <b3d4239d-0565-0cce-11e3-2bf5bdf7f001@candelatech.com>
Date: Wed, 11 Dec 2019 11:24:19 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191211191652.GU11070@home.paul.comp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112420_667809_F7B4985B 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>, openwrt-devel@lists.openwrt.org,
 Christian Lamparter <chunkeey@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 12/11/19 11:16 AM, Paul Fertser wrote:
> Hey Ben,
> 
> On Wed, Dec 11, 2019 at 10:06:26AM -0800, Ben Greear wrote:
>> On 12/11/19 6:44 AM, Paul Fertser wrote:
>>> According to many bugreports [0][1][2] the default ath10k-ct kernel
> ...
>> And also if you want to just have the makefile pass a -DBUILD_ATH10K_SMALL or something
>> like that and #ifdef code in the ath10k-ct driver, then I'd apply that patch to ath10k-ct
>> so that you don't need the patches.
> 
> I am offering my patch to the OpenWrt maintainers as kind of a
> stop-gap measure to get ath10k-ct working for the release (or in any
> way they think is appropriate). Another approach they can choose is to
> select the upstream ath10k for those devices. Otherwise some
> previously supported boards will require manual intervention to get
> WiFi working after an upgrade.
> 
> Regarding your fwcfg idea, I am not sure it will work as it seems the
> PCI initialisation is happening before fwcfg is parsed and applied.
> 
> Adding a Kconfig option is another possibility.
> 
> But what do you think about an additional module parameter, wouldn't
> it be the cleanest solution in the long run?

If fwcfg will not work, and maybe it just will not due to the reasons you
suggest, then I'm fine with adding a module parameter to ath10k-ct.

You may want to conditionally compile the default value of that module parameter
so that on the small platforms the user does not actually have to set the module
param if they want the default (small) values?

Thanks,
Ben

> 
> BTW, according to the git logs the patches were initially added by
> Christian Lamparter, so I hope he can clarify the situation a
> bit. Probably there were some performance tests executed back than to
> measure the impact.
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
