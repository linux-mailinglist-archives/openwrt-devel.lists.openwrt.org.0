Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C46AA99F5F
	for <lists+openwrt-devel@lfdr.de>; Thu, 22 Aug 2019 21:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kbtTOzP5w6jSKONB+EcecJnWokNCZ3GmJKwgRFPHSdc=; b=L3eMwX6Wr2q2hn3lnFHpD3pTS
	/VOEQy9z93YqU1KyWrWVOIV1uFIq+WSj5n3ZSs0lLPWw2b+3aQlw4ZnaYDuHY4tbEfyqI67AQ64S4
	LVYcrUXK4bDeW3aGaroU8zQt6imDVPueSMN6LZsuALnW4V1K6UUrirlYYhPSHvf0JyQf+CreS9iaE
	vfmTShMmZeiaITPhQA2dO3qpPw42vfpjZ/gndfihlukl8nxJhlHVFv6MWogmj1ihDm80q38bdsEma
	0puhYTSqHdxkd6I4RQqeEVydht5WfMQYfODG51dBXjsTyHvPwbYuFauZEq+S5FYwtCcHpiaqgtlnJ
	Zf36dGHkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sQd-0007Fj-H3; Thu, 22 Aug 2019 19:07:23 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sQU-0007FA-9S
 for openwrt-devel@lists.openwrt.org; Thu, 22 Aug 2019 19:07:16 +0000
X-Originating-IP: 98.151.65.6
Received: from [192.168.0.191] (cpe-98-151-65-6.hawaii.res.rr.com
 [98.151.65.6]) (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E161AE0006;
 Thu, 22 Aug 2019 19:07:05 +0000 (UTC)
To: John Crispin <john@phrozen.org>, openwrt-devel@lists.openwrt.org
References: <20190822005924.32310-1-mail@aparcar.org>
 <40b56056-3fc8-931f-81d8-97e3b78d6004@phrozen.org>
 <1511b4b8-335c-1863-3c45-0c46a3fd3d61@aparcar.org>
 <770d1eb5-f4de-bb7d-dadc-2632af7f5084@phrozen.org>
From: Paul Spooren <mail@aparcar.org>
Message-ID: <41fade4a-4c0b-fd6d-1f35-1d084a6f0aea@aparcar.org>
Date: Thu, 22 Aug 2019 09:07:02 -1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <770d1eb5-f4de-bb7d-dadc-2632af7f5084@phrozen.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_120714_484990_A6B410C1 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ipqx0xx: add Generic subtarget
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


On 22.08.19 00:11, John Crispin wrote:
>
> On 22/08/2019 08:47, Paul Spooren wrote:
>> Hi John,
>>> This commit adds the Generic subtarget resulting in consistent naming. 
>>
>> and
>>
>>> already uses `x/generic/` as subfolder as if the subtarget would exist. 
>>
>> I'm very much in favor of consistent names[0][1][2] as it reduces the 
>> hassle when trying automate things, like building images via an API[3].
>>
>> Is the subtarget causing any harm except for eight additional 
>> characters per filename?
>>
>> Paul
>>
>> [0]: https://github.com/openwrt/openwrt/pull/2330
>> [1]: https://github.com/openwrt/openwrt/pull/2334
>> [2]: https://github.com/openwrt/openwrt/pull/2326
>> [3]: https://github.com/aparcar/attendedsysupgrade-server
>>
> dont really care, just wondering why

If you don't mind please merge it, I think it's the last target without 
a defined subtarget.

Paul



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
