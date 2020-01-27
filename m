Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8640E14AB3F
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 21:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OslIBjkDk3TkjUefHGHb6Fa22RFAj+KJ9kFw8NaKnhs=; b=i/SVJXS3VJSwfihjSQCADyhZm
	c0LbGJOex/emkDNvPsX2YoMGs3EEccAdtaszuBbmfl2c5aPj8K2+Uras0srPSaRpNjhZz6Fqu4bn2
	uIPp79691uUtUAYDltYKlFhhmYIs04Xn/nw6CDuaQubOdVDnrxbY/cSDU2gFHLJJkrb1Z1vuhYP95
	2L2VZTysfHe7WvS7YpU+3YIHAGIulfMjlJyNAlCNbwrJgKEYNexMKJDT2OpLvO86NXbd0X86r/Nxa
	REvJfevfvmduNwtL28Q/EKcG7A4WX380m0Raz8BVJy8DNJAJ414E5agCmvJMDmiMRJ111EjY7lPv9
	MZadF8B7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwBGA-0002LV-3P; Mon, 27 Jan 2020 20:45:26 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwBG3-0002L8-Ra
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 20:45:21 +0000
Received: by mail-lf1-x131.google.com with SMTP id l18so7340813lfc.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 12:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+BQmjf5iXLX9GpuFX249pRx0iY3Pe/sMUBps8y7a6C8=;
 b=qHFXQDT48Od+aHRroDKVYpFHZOkeuIpQi5aHxtGRMXf7zySU4BA4uFo7ZXqen03kpC
 H+nruIxZd5CuEY4MgxxiiSVmp2hYLbgpVaoWxjiuibVA2pTgaXM+JNdpjXS6yuOmk0ra
 AXY/PgT2wbNjN07/LP23DrQ+PsFzrDEz92ptSh5HAYQl0Uvq6oJ//lUzrg/xt3eJZhcY
 5wJmGcCVlGvvoilW8r0mjrxtcZwZhN0WbiCruZGSI2Ce/V8OhtwfX/H+4rolZtIlX5+m
 MGBRuB6oAgMHRO67oMiLCD0D8rH2Y4l80K+JvZsW6vTFzkzlHgSUYVDVDYtrZZNqIKWm
 QyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+BQmjf5iXLX9GpuFX249pRx0iY3Pe/sMUBps8y7a6C8=;
 b=TxN6NLR6u6O6qa7MfI0iG7rSvVfrW6Ey399VI9YT4MChFKIxQgP2pR7UoUBPtbLN0W
 FgQggNKtx6WHcGr3QyLJSH/s8hJPbtx5fS6jfiOG/nn+257dbtqfu6ge93lYn2BXeQUN
 xPM827i+sYj3O29Uanbpr4r2oey/FFmk5aGzVkL1TTjjqviU7IKFUQK8kpIRHUa0VpdA
 zxez4qKgZWOlz+vFIw+vwr2iOu09VvdC1BORenWW6OZcU49omT0ZMssIdIeqeuZEf+qW
 VyThCpyL/oK/qzJ7Y/tWqzBSiWxmD2TIiu3Cojh0y/Cpq2p9P7qvjb+5vmUSshz0HanA
 zW5g==
X-Gm-Message-State: APjAAAUVRNy1eQZhmiCaSNLv6pVSX7uaPGfpXP9LdYSFi3SAO5L765Wo
 OR1dXHIAJK9ujQT7aI9ZY8k=
X-Google-Smtp-Source: APXvYqwRPnA5DPeRM5rTyZh/4jYKIXhdsBn/PyQwnTiKvtbFt2k6AxlqaFfoKmrf2BJQF3nKe43Ksg==
X-Received: by 2002:ac2:5478:: with SMTP id e24mr291557lfn.58.1580157916197;
 Mon, 27 Jan 2020 12:45:16 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id p9sm7089974ljg.55.2020.01.27.12.45.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 12:45:14 -0800 (PST)
To: Adrian Schmutzler <mail@adrianschmutzler.de>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <fcbe4834-b61a-c3a6-99fa-77058773c59d@gmail.com>
Date: Mon, 27 Jan 2020 21:45:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_124519_894108_2961A4C8 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pepe2k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com, ansuelsmth@gmail.com,
 'David Bauer' <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Adrian,

On 27.01.2020 19:35, Adrian Schmutzler wrote:
> Just a quick one:
> 
>> > So, no matter what we do, there is no easy way forward.
>> 
>> We could remove all ar71xx -> ath79 migration helper scripts, ar71xx
>> board names from supported devices lists in ath79 images and make the
>> target a brand new, without any concerns about soon-to-be obsolete ar71xx ;)
> 
> At the moment, I'm actually mostly inclined towards this solution.

I'm afraid it's a bit late for that as 19.07 is already out and it 
supports (at least partially) ar71xx -> ath79 migration path/s.
Wouldn't that look unprofessional? Am I overreacting here?

> However, for me personally SUPPORTED_DEVICES was always more a "don't brick entirely" flag, so I never expected it to ensure 100 % config compatibility. More like preventing me from flashing ubnt,unifi image onto tplink,wdr-4300-v1. This impression might have been wrong, though.

I think device to image matching was the main reason behind the idea. 
IIRC, mismatched image doesn't prevent you against upgrading with 
preserved settings.

> But as mentioned by Ansuel, there are other incompatible switches to come (and some are already waiting), and unless we want to create new targets or rename devices in these cases, we have to think about different "levels" of compatibility anyway beyond ar71xx->ath79.

I believe ar71xx -> ath79 is a special case here. First of all, that's a 
new DTS-enabled target and it was suppose to _replace_ ar71xx but 19.07 
went out with both of them and I'm pretty sure there are users who got 
confused with that (some devices are supported only in one of the 
targets, some in both, some with seamless migration possible). On the 
other hand, when ar71xx gets abandoned, we (as a project) should make it 
clear if ath79 is a replacement (thus providing seamless upgrade from 
ar71xx) or a new target, without any relationship with ar71xx (thus a 
clean sysupgrade is required). Keeping anything in between would just 
confuse people.

DSA is slightly different topic as it will touch many different targets 
(also ath79, think about qca8k) so probably a project-wide solution 
would be required.

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
