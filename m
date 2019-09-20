Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB4EB982F
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 22:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uXL3ktmLeBpx2gVni4FiJm7MNZPQS9D6so7kz7doe4c=; b=IcHsB2btd4XUPndZlTtC+CY+7
	j4Ouqa2rMD83Zhz6XsCffusgpHA4gghn6pNe5EaJ3JJ++Pm+dZM4kbZVTg4x3l2Ax3Ny1MKi9CFfk
	4LIdWjDsFJ9iMVf90sLtlliNiA6b2ef4W9a2cwRZfrRrP9/BZVKjP6Y24ioJ036C8vobjmVv4KJww
	/uFLCe4+Nappcd9AvD2GcC7GGi3wbg9MMdDs67b6GQux6MDH36r3AMENeTWoIO7obCJtOLKa4hQa/
	/5SbxjnDNFiWrAr3yK37e/zybrgtB+b45uO/V23+nQgmOKlG9bmdLdwzeiBadyjJ7iDqmkXUlRwVj
	aodSs6/zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBP5C-0006oS-Ru; Fri, 20 Sep 2019 20:00:46 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBP52-0006nV-1U
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 20:00:41 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 2366D13753C;
 Fri, 20 Sep 2019 13:00:34 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 2366D13753C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1569009634;
 bh=9M8JJGNdW+snEYq/kkrIPepTMqUljl09GUOpWBt6T6M=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=pC0yYqvEK8c3uYsOiFPF6e4iY8xZBZHcpEDYQXExWeqwqQPJxF0Y+aEklzy6G2lp5
 zP8h6Z+wg8gUQTY3d98ICy/d4aMz8qEXU33sN2Uh2I8be7D06iBmKn/GL+rDmaR5BT
 iuxKWnbPtj8/KcNs3U7zAqASGedlNnyaLy3Lvmy8=
To: Vincent Wiemann <vincent.wiemann@ironai.com>, support@maxnet.al,
 openwrt-devel@lists.openwrt.org
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
Date: Fri, 20 Sep 2019 13:00:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_130036_111262_3035355A 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 9/20/19 12:55 PM, Vincent Wiemann wrote:
> Hi Klevis,
> 
> have you tried it with a short distance?
> If you did you should better ask Ben Greear directly.

I asked him to post publicly so that others can help answer and that my own answers might
help someone else.

I have some patches that should enable coverage class settings for wave-2, but I am too busy
with other things right now to port them to my ath10k-ct driver/firmware.

Thanks,
Ben

> 
> By the way ath10k gen 2 chipsets don't work very well with long distance links without a
> special feature which implementation is only available to companies like Ubiquiti and very few
> people who have an own reverse-engineered implementation.
> It works on IPQ401X, QCA9886 and QCA9888 based chips only.
> 
> And it is not possible to set a coverage class for gen 2 devices, yet as far as I know due to missing
> documentation and implementation (correct me if that information is outdated).
> Furthermore a high channel width often results in problems
> due to lower receiver sensibility.
> We have better experiences with lower channel widths and sometimes get more throughput with that.
> 
> Actually I think this does not explain your connection issues as 13 km is not that much.
> 
> Regards,
> 
> Vincent Wiemann
> 
> On 20.09.19 18:30, support@maxnet.al wrote:
>> Hello everyone,
>>
>> I am trying to setup a custom made outdoor link with Apu2d2 board devices and QCA9994 cards from compex. After i installed openwrt and ath10k ct driver, kmod ath10k and board-2.bin the device can run a 80MHz channel in WDS AP. The problem is that it won't run as station or station wds. It can scan
>> the SSIDs but won't connect them.
>>
>> Any suggestion?
>>
>> Thank you!
>> Klevis
>>
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
