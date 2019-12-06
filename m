Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002D01156EE
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Dec 2019 19:02:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dBTMI/3ziRFNm+C6fJ9yzt6EYQBvJzxLBS9irvCCWAg=; b=T5k711CpTat8UfYEmWS1cPfSB
	XodWb1m3YMG/9/q36rz9E9s5omuqiF7s10UTk+FK1fOr8Y+FVcNHSUDLeNAZ9Z5ZsHoqRoGxeRnqW
	FdoYVXrRhTho0OglDY+HFI8piy+JCL59dU4hk9GPISEfv+5r4wVGW9iBkCGGJyWuwH0PComEkalwb
	yQU8BURTySGCSqd0ByEyzjD9/YYzVfn3wqUeZIOr9hNvnXJ0Rtp/BvxkRyq9erq3P0YFhjEH4y+Pq
	GLVeZdly8TUGFMhmx+noycQFlOOTadfPJvMXmYWtoI6xD2bTUPxA1kRFK0F7MCnaF5QOzBEwyyi0q
	RS47IwjTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHvu-00045z-3C; Fri, 06 Dec 2019 18:02:26 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHvj-00045T-V8
 for openwrt-devel@lists.openwrt.org; Fri, 06 Dec 2019 18:02:17 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 0C33F137534;
 Fri,  6 Dec 2019 10:02:14 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 0C33F137534
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1575655334;
 bh=gOPR37uiZ5KWgXZP5W/XU/Ngov+Rgqz7aWGLytLe7ow=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=rZPzrvzqMQKnq9qBICax1hH3rouf44FBFuONvuM76UnsrAw37ziM/nYp+ubgS1EF0
 8Q0Y8RhQTd+haslh/6Tu7pxqtXmf544b4v7r6CCRD3Q10flvKMVvjoFWltlIN7V/9S
 vUUO+bmxM2oUnyG1CbGOKXLTGNVDXpwCukicIKCM=
To: Joe Ayers <joe@ayerscasa.com>, =?UTF-8?Q?Petr_=c5=a0tetiar?=
 <ynezz@true.cz>
References: <CAALvt2MKiCHmZb5neZqjawnr-R1VAHpTK+LQafPrUj=i_UJ05w@mail.gmail.com>
 <20191203143434.GF8181@meh.true.cz>
 <CAALvt2POG3isiKH+2aHjSGRoh-+HADtamD9O2VLOCKO=73byGw@mail.gmail.com>
 <20191205200036.GD71465@meh.true.cz>
 <CAALvt2NygyiyJ3iV82B3DXLr+hWsW_7T=iL=9=7xnyUHxD8UdA@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <069ab5b0-f9ea-8700-afc6-3514ea2dba99@candelatech.com>
Date: Fri, 6 Dec 2019 10:02:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAALvt2NygyiyJ3iV82B3DXLr+hWsW_7T=iL=9=7xnyUHxD8UdA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_100216_027329_B2B9148F 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] ath10k memory leak on 19.07 branch and mikrotik
 RB952Ui-5ac2nD?
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

On 12/6/19 9:44 AM, Joe Ayers wrote:
>>
>>
>>> Possibly the same symptoms don't exist on 128MB RAM devices.
>>
>> Like there is some if condition, which is doing some nasty things on 64M
>> devices? I admit, that I don't have ath10k-ct source code under my pillow, but
>> it doesn't make much sense to me.
>>
>>> Comparable results between above and my 64MB device.   However, if the
>>> sleep time is extended the consumption is more
>>
>> Ok, I'll let it run overnight with 120s sleep in between.
>>
>>> I suspect this is not the intended behavior.
>>
>> No its not and it's even strange, that I'm not seeing it here if it should
>> happen in the "default setup". Maybe its because:
>>
>> 1. You're using custom image (I'm using official prebuilt images)
>> 2. You're not providing all the steps needed to reproduce the issue
>> 3. I've way different hardware
>>
>> Every detail could make huge difference.
>>
>> -- ynezz
> 
> On the device I am testing, it is both (2GHz) ath9k and (5GHz) ath10k.
>    These look to be related patches to this issue:
> 
> 960-0010-ath10k-limit-htt-rx-ring-size.patch
> 960-0011-ath10k-limit-pci-buffer-size.patch
> 
> In the v19.07.0-rc2 build for the rb-nor-flash-16M-ac ar71xx image,
> these patches are applied to backports-4.19.85-1, but don't seem to be
> applied to ath10k-ct-2019-09-09-5e8cd86f.    Should ath10k-ct have
> these and other patches?    The device's installed packages do include
> ath10k-ct (from downloads.openwrt.org installed image).

I think that if you need the patches for upstream ath10k, then you should also apply
the patches to ath10k-ct.

Platforms with more memory probably do not need or benefit from those patches.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
