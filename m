Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D676411F8B8
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 17:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oUyLRk0vzLGgGqVkvYk0V0NZFHPYqb4xBSKRmMDfkk8=; b=AsGPlq/PiwIbOL7WLRRCR/g4W
	+Fyk3S4M82ZG2iurZD3J3ZVYrsvXqP64uXQ5oKp2vljel0UWuDuwdND+OoLzugEf3BS1fMUrZVfg+
	v9Ulqw++ACSjMxGKcyTCPmJJpbgmxDizM3M0IUu40JahAqZyGFwYDt9NB6FCGra7gxlBvAQu0XGck
	qmzAeER+ZLVx7+3js4VnhNmLHwr3Fu0xsgekmddAP7YziajhB6d/ITVDqG8vAKF0S3N2qpP5/xnEd
	j9QkaDayKdbh+xM7Xc9KQh+xJXsKOymFCiCUGqrnQjvhKhK04Aabv0Fzw2C7K9GPjKyOpbGcLt2fx
	qRpHa/eUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igWRc-0006lU-Ut; Sun, 15 Dec 2019 16:08:32 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igWRW-0006l6-Rt
 for openwrt-devel@lists.openwrt.org; Sun, 15 Dec 2019 16:08:28 +0000
Received: from [192.168.1.47] (unknown [50.34.171.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 900CD13C283;
 Sun, 15 Dec 2019 08:08:23 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 900CD13C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576426105;
 bh=G/rtt91fb+XHAoMpBRds4gyUxLzt7kfJGYdB5bcYW6o=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=AiEACLagPN583+yTqv/WtnRJg1m7IfymvkOzJtvWzD4yhZ0qKBEllSURdUc84mMr4
 KaFmfsiQO4j/MpSpkMQn1a59Q5odBMU5dPdwaogDnGtMTTL4yr0UwLAuz0+KGGElXP
 bBRtLz7MdpyznrpbrctJo19NkKM6CXn6JRd4eEXk=
To: Christian Lamparter <chunkeey@gmail.com>,
 Paul Fertser <fercerpav@gmail.com>
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <5675304.dXXkMWVoIb@debian64> <20191215120114.GD11070@home.paul.comp>
 <4186246.Rc2P9gcx8s@debian64>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <5354fe9c-6a58-f7ab-1d50-23192c5a12dc@candelatech.com>
Date: Sun, 15 Dec 2019 08:08:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <4186246.Rc2P9gcx8s@debian64>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_080826_950543_DB6A3983 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 12/15/2019 05:09 AM, Christian Lamparter wrote:
> On Sunday, 15 December 2019 13:01:14 CET Paul Fertser wrote:
>> Thank you for the answer Christian,
>>
>> On Sun, Dec 15, 2019 at 12:00:48PM +0100, Christian Lamparter wrote:
>>> I think for this to have any chance of moving forward you'll need to
>>> pressure your ODMs and if that doesn't work: Go with a different WIFI
>>> chip vendor that supports low memory devices, or add more RAM.
>>> From what I can tell, Qualcomm nowadays gets what they want "for free"
>>> and for the past four-five years, they certainly didn't feel pressured
>>> to add "low memory" support to ath10k.
>>
>> FWIW, OpenWrt's ath10k vendor is CT now, not QCA, so it's not much
>> relevant what do ODMs and (whatever is left from) QCA say, I guess.
> Well, not sure what you are trying to say here. But I think Ben is free
> to do what he wants as well. For example see the:
> "ath10k: add LED and GPIO controlling support for various chipsets"
> patch that OpenWrt has been carrying because neither upstream (linux-wireless)
> nor CT wants to integrate it.
> <https://github.com/openwrt/openwrt/blob/master/package/kernel/ath10k-ct/patches/201-ath10k-4.16_add-LED-and-GPIO-controlling-support-for-various-chipsets.patch>
>
> The situation with the "low memory" support wasn't much better. Because
> from what I remember, there was a discussion about this very topic between
> Ben an Hauke in the past (and you can see how it played out, since you wouldn't
> have posted this series if it was integrated back then).
> But it seems that Ben had a change of heart in this regard. I don't know the
> details or why, But it makes sense because it would enable his company to save
> some money for the systems his company sells:
>  <https://www.candelatech.com/lf_systems.php> so there is some value
> in supporting these devices, especially if someone else does all the work
> for it.

My goal is to have stable and fully featured ath10k that works well for higher powered
systems by default (our test rigs are typically powerful x86 with gigs of RAM running
Fedora or similar).

OpenWRT is all about adding patches on top of upstream projects for specific platforms, so that
would easily work with ath10k-ct too.

And, if someone wants to write a patch that either modifies ath10k-ct for OpenWRT
to work better on certain systems, then by all means, go ahead.  This should be just
as easy as doing the same thing for upstream ath10k.

If someone writes a patch that conditionally compiles for OpenWRT and/or allows
OpenWRT to configure smaller memory usage, then I will apply that to my ath10k-ct
driver (with caveat that defaults for non openwrt systems needs to remain as is).

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
