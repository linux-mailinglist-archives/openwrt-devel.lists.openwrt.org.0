Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288E31E0D4F
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 13:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q9VIHtQi2CVMCsQqON4XuK+J4+7GVgJcaSnytoEHMPg=; b=AbW7c03Mda2oY1+hZoD30TZ9D
	YE4biptFWU/m71jQ7KqjO+DDdZnzrujU6Z/NZDBI5T05pe0XzbteDBOx9418ZtZWszCBszCzcayra
	RsF1X+6JOw+FPPaL6MpnEkaMewcz7hXmMFQFyye/d+ZTHwMZmg8ov+wSQaLEE8HYehGlPISFzYW5z
	99JkdqSKUagsY0QMHuojfp6rC7oxrJ0IqGrIXq0RlGo+dqKP53MUoQtbPkqmpBb+7ALGFXUfdVAfp
	KAJsq0BoY6Rj57eMY1czRbJFLYCEX/3WkkZhFd5PPtUU44oLS2FiSUM21T0Zy3ypJRnCCDQW4wXWo
	GJxnh742w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBL2-00031R-Nd; Mon, 25 May 2020 11:32:12 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBKu-00030t-BN
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 11:32:06 +0000
Received: by mail-ej1-x644.google.com with SMTP id l21so20156073eji.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 04:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=YYdg0iFC8FJFrDkBIwK4z/Vfek1jrd18CbW1kcs9Puw=;
 b=cJZ/tkX1cwg7K9Yw6IHtDd036UHLzscr6ikN4jlmFoevmVAM67xtaAqYYA7BJw2KxX
 Xt+bDWCcMaRKAFpP7113C1g2JdjE+1ODLT01YmcgIU8TcuHblt7QLktXns7GHzxLjElw
 L7pC3ppegZU0Kc9IKKv3nfVyfrmvxdkQhwkF+z1gRa2JPjrqWMQnVyJfYN7u+uR/LT81
 eKuLAttFBfHotmSEOyjMTmWZuWYrs7CbnPSpu85KvhEQGqgYmJ4ITGTgz22TOCMzo7jD
 z4dvA2jW1Exl1vjOpfIopH7cWZMqm2f+vQF28vZmxGWDeO93ltIIoHG0zLhGMcO1/XYP
 F5Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YYdg0iFC8FJFrDkBIwK4z/Vfek1jrd18CbW1kcs9Puw=;
 b=p0Vlp3EjNVy6KJE4qfntrgzQhXhbzzWgKbasf1HPbT+15SSfrxmoNvHvUkkzMR9Eyq
 lQttvxDLASAd+e4HkByitqedy25w6S1YK7PrAppYxPicEOvNtYGRfyHhcabmiqZt/eAm
 Qix5tH6VUPQkYrEA4HmkjIUXtcjwnjb4L5bnsWCinw9gohNyfI88IjyOFEnWG07gtTGL
 T31vhywek+IiY+mmniVQ6cRhqltaD3DGQ4CnPqiHi53+jyao7ZC1/Oa6KW3Hn7OOkufM
 eiyRde9vZ+F5JZRen603NLYqIMJV2tUZu/6votIbnNX0YG4PI67Byd00o2NR0/dh7VEc
 ZU6w==
X-Gm-Message-State: AOAM5325aXK4Tru/IUS06qeGFPz9M6F1C4FXrocebKHLfJYqRlUxHvdR
 7iGdYZJJ/nYRzsOT3K3wjHsn8nWNtAg=
X-Google-Smtp-Source: ABdhPJyJZTwmpFnBf7XbRyr8ZHhc7KMdv5wyDFbu4SbUMRpkV4Fvqb8Orfu11yKugqUNDopfQza0gg==
X-Received: by 2002:a17:906:edbd:: with SMTP id
 sa29mr18918808ejb.128.1590406322045; 
 Mon, 25 May 2020 04:32:02 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id b16sm15726072ejg.43.2020.05.25.04.32.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 04:32:01 -0700 (PDT)
To: Zoltan HERPAI <wigyori@uid0.hu>, mail@adrianschmutzler.de,
 openwrt-devel@lists.openwrt.org
References: <00e701d63281$400bbf50$c0233df0$@adrianschmutzler.de>
 <9e1169be-896c-28e7-af00-b5991de3ed12@uid0.hu>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <ab717ee2-6f86-089c-069e-02ef58316325@ncentric.com>
Date: Mon, 25 May 2020 13:32:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <9e1169be-896c-28e7-af00-b5991de3ed12@uid0.hu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_043204_414601_52004CA7 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Targets without 5.4 support yet
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


On 25.05.20 13:11, Zoltan HERPAI wrote:
> Hi,
>
> On 5/25/2020 12:42, mail@adrianschmutzler.de wrote:
>> Hi all,
>>
>> while there has been a lot of progress during the last months, there 
>> are still a few target that have not been updated to 5.4 (at least as 
>> testing kernel) yet:
>>
>> 4.19:
>> cns3xxx
>>
>> 4.14:
>> ar71xx (to be removed)
>> arc770 (RFT patch: 
>> https://patchwork.ozlabs.org/project/openwrt/patch/20200413103352.7429-1-freifunk@adrianschmutzler.de/)
>> at91
>> ath25 (patchset crashing at Ethernet init: 
>> https://patchwork.ozlabs.org/project/openwrt/list/?series=169991)
>> pistachio
>> rb532
>> samsung
>> uml
>>
>> This is meant as an invitation for those caring about/using these 
>> targets to consider updating them; in best case they should receive 
>> some testing before a 5.4 stable branch is made (whenever that might 
>> be).
>>
>> At least for the 4.14 targets, I expect them to be archived if there 
>> is no update until after the next release (or at the latest after the 
>> one following it).
>>
> I'm working on bringing pistachio up to 5.4, apart from the spi-nand 
> (which is quite a core item obviously, so I thought about reaching out 
> to Boris for some guidance) it's looking good so far. If anyone's 
> interested in helping, I'll share what I have. Also, if there is no 
> one else interested in cns3xxx, I'm happy to take a look at that, I've 
> got two devboards in the shed for that.
>
> Regards,
> Zoltan H
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

cns3xxx is scheduled later this week, but help is certainly welcome.

I managed to do most of the required changes, but was stuck currently on 
the new "GPIO descriptor" stuff. (for GPS PPS)

Regards,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
