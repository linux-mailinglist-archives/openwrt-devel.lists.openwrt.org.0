Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385CB1208A4
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Dec 2019 15:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2m5Tebzzw4cWfnhU+OZtAqh6VjbbTa3a/vgU1bqTDpc=; b=XEBViydp3Jg8ipuFHNf5qk5ty
	Tf0zO2ebWXMVHBUm9x6jTiFpfEcq8AtssYcGKXzJIHrqVvqN5M5vH9jWVl9RZq6fVHLsIQxpjzREq
	Jp+FwySTcVdYQ6Vwap2N8XFNKYx/WFrg5P9AX3BkvvZ1MFMBxS+sRz13afrrdxiTCqZuNPhzWlwvP
	klfD3GeOuknquQqeON/4H3YIGXVnWlwWhObm7YdF29+n+e9Fvdy3CMzqeSzZ88X+Kouk0lSwDWGwg
	09Sx4zN+Yz8xGxcnYbO9Uf/xJ1p/ccdz0/Sb1v78H8ATS+LtbrwCx2fpsQblwdZ0xbhtoBt9+8+6l
	Q5WiyJJ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrNo-0000Vw-7S; Mon, 16 Dec 2019 14:30:00 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrNe-0000Un-De
 for openwrt-devel@lists.openwrt.org; Mon, 16 Dec 2019 14:29:51 +0000
Received: from [192.168.1.47] (unknown [50.34.171.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 2FA9313C283;
 Mon, 16 Dec 2019 06:29:44 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 2FA9313C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1576506584;
 bh=9fV8W6vsGdK1p7c3jU7IenpfM5LrS8wUXt4wOlolSNY=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=mpU64Bs0yEeSJ7TlGHs7qcTx02dP302NMb3R4YpuBUfAYFI32oO5o39EKnulF++nk
 jPzThv3CSQk5fXZQA6rl6mJyRWDb4JcZnc4xmwcsSNU7QkhQ4qGe4Zg0EiD8cvNgj/
 UQ54MmFG2RSwzipLiMdHTkQIva5qV6+ShW4o4oFY=
To: Alberto Bursi <bobafetthotmail@gmail.com>, openwrt-devel@lists.openwrt.org
References: <4c10fab6-2a90-ea0b-8176-314638e1cb06@hauke-m.de>
 <5675304.dXXkMWVoIb@debian64> <20191215120114.GD11070@home.paul.comp>
 <4186246.Rc2P9gcx8s@debian64>
 <a8f56a23-108f-3f76-2ea3-a904726ed224@gmail.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <af007825-49ef-73fe-edc9-3198737e3f3d@candelatech.com>
Date: Mon, 16 Dec 2019 06:29:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <a8f56a23-108f-3f76-2ea3-a904726ed224@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_062950_513103_F149499A 
X-CRM114-Status: GOOD (  12.63  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org



On 12/16/2019 03:26 AM, Alberto Bursi wrote:
>
> On 15/12/19 14:09, Christian Lamparter wrote:
>>
>> But it seems that Ben had a change of heart in this regard. I don't know the
>> details or why, But it makes sense because it would enable his company to save
>> some money for the systems his company sells:
>>   <https://www.candelatech.com/lf_systems.php> so there is some value
>> in supporting these devices, especially if someone else does all the work
>> for it.
>
> These are wifi/network testing equipment, not network devices.
>
> Also I don't see the value in "saving some money" by using a bit less RAM
>
> when the cheaper system is sold for 3k, and most stuff is above 10k.
>
> You could use standard whitebox x86 stuff at that price point.

The low-ram thing is for people using OpenWRT on low-powered AP boards.  We don't
need it for our test equipment.

Hopefully someone can test Paul Fertser's patches, and if they work well, then can
be applied to OpenWRT.

Maybe later we can conditionally compile it directly into ath10k-ct instead of having
the extra patch in OpenWRT.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
