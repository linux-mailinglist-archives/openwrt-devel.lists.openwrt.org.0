Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A7E11BD0B
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 20:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mO5dFZk9rw2AGBQEACu9fpdihIzfhFXglszjoRFNwmE=; b=q3nLp10AyQfKbom/rUnL5wY/9
	Mw31LNmRgd5AKPcENUUh6SYj3+pldEFNHBsHha61DhC0lSmzw54w3368gHt3Q1xDhJKBaBR2RPlvn
	fek9ooJ1Mc0DIQ0CrvO2Vt0mE/9gxGUJJdcJlD2fiQOEyPUb6TUapq1zyYerP5xUs2U8Aw/vQeglu
	oOf3rLr27/3CvpjEN4J0fEgMSuJgws+CE62+1q34y61IoECN8Q+kXPAp8JXxYMU2StJF6j8RqU43k
	wS6bNfnrJm0wuvX5oWMNRKNLQcW51PGqBn1bh7LtFWFuF1xj9yyvFU/6brtDOehF1laOAyVwgFTdN
	YThOIovJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7jF-0007IN-RU; Wed, 11 Dec 2019 19:32:57 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7j4-0007Hi-U6
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 19:32:48 +0000
Received: by mail-wm1-x336.google.com with SMTP id p9so8497799wmc.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 11:32:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=pptmeUG3H2Oh0l49Lx7rdcdz09fyQA5fVnN+XGgpwxU=;
 b=kvN4fPCP5JedAIDBSpxcv7zEpgMJVKQBMar3my92vnCqlv47QcZAontxXEPTuTOzh/
 CICWyXGaObanN437m0s2l/s0HACfqMUcFwysJ6tGcQ/ANtRpY3j7s3msRNQTMtf9VwND
 ab0S1J3xmd0aRUKW9j4EP3zcKHrHYXynr+SDMMfF3NHcRn63AtwCdVoSb4RdRwQ3Z9fy
 Y4YI4B7jE43AQauKr5RuhSVUNZAGQjfbvCyEzj1R/H/zmZXVkn7eqnqQF9FlRy6OcXvK
 GwKs6XDRNe4Cl5XHU3ShfllQtytd3SNl1tzhIJRr25jCuHpquxdd/BOFBwzTN7QK6thR
 6YfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pptmeUG3H2Oh0l49Lx7rdcdz09fyQA5fVnN+XGgpwxU=;
 b=YLR1s+iUG8LaqRmdltEiJ2LLpBZriVhlSR8lnDheIMmiy5Nz5XLLKIlF7vHgUUEPgS
 4+FDacOWRaLobaxSOg7wSFTtmIqYoiZzCXdWRcw7s1vKRcAxHUkoUu4SJ6D2VCFU48E4
 +QyOJMd2rWTNMDJ4AC8wkofhRnCUiNwh/scR6RFnFOkCGmZanyPi+YK+U9lNydVuwVMi
 qetwDJGJpBQLpjZq0tTekI2USOg+pBAVtS5YC5f2Iec92urDLZjBFZM3uY7b/06Q42au
 bHXNIqOvAOgd1UJcr4gEegIv6bxwqmrPuooQ3Y+c6WQ+03++Ouu0uobqLut2hNV767hx
 qRsA==
X-Gm-Message-State: APjAAAXGvAdZqedIvZj03AUB1h0f06+SJV/bNL5ZhDw8X1mA70m/kGWj
 8KFqSbabyXcbMQupjl69bocpLQYCmJA1vA==
X-Google-Smtp-Source: APXvYqxzWOmzp/D4a68gHlqEOFb46iBM+JqOTiuwWJyUZYR8shcRH9uNutj4h1RZd3dMs6+61E6L1A==
X-Received: by 2002:a7b:c0d8:: with SMTP id s24mr1792856wmh.30.1576092764753; 
 Wed, 11 Dec 2019 11:32:44 -0800 (PST)
Received: from [192.168.1.230] ([213.152.161.244])
 by smtp.gmail.com with ESMTPSA id c17sm3230197wrr.87.2019.12.11.11.32.43
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 11:32:44 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <trinity-108cc2ee-b593-4dec-a1d9-77c447ee9eed-1576082246699@3c-app-mailcom-lxa07>
 <20191211175432.GI1371@makrotopia.org>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <911d8b6a-df86-5a3f-906d-c6bb1c1d7e43@gmail.com>
Date: Wed, 11 Dec 2019 20:32:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211175432.GI1371@makrotopia.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_113246_997333_CD10B4A5 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Inquery
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



On 11/12/19 18:54, Daniel Golle wrote:
> On Wed, Dec 11, 2019 at 05:37:26PM +0100, WRT Burner wrote:
>> On 11/12/2019 15:22, Daniel Golle wrote:
>>> And it's even needless to say that
>>> replying to a spam email in which ever way will always make it worse.
>>
>> +1. There is no constructive value in replying to spam. Let's keep openwrt-devel
>> nice and clean.
>>
>> On 11/12/2019 15:22, Daniel Golle wrote:
>>> You statement "suck it" (guess what) is also an obvious
>>> and disgusting example of a masculist culture which hurts our community
>>> as a whole and I strongly believe we should not tolerate that.
>>
>> -1. This is a software development mailing list, not tumblr.com.
> 
> '-1'? So I get right, you are saying it's ok to be insulting other
> people because this mailing list is about software development?
> If that's really what you wanted to say, I'm glad that's only a single
> individual opinion coming from an email address which has never
> actually been used on this mailing list.
> And btw, this is your first 'contribution', and it's not even about
> software development...
> 

He is just disappointed at your pointing out the "masculinist culture" 
in a place where he expected more maturity.

Yours is mostly SJW-speak and I'm also not fond of it, I'll explain why.
It is a double-edged blade.
In this case your definition is technically correct, we all know what 
"suck it" implies.
But this highly polarizing approach to life and people can (and does, 
especially in its dens like tumblr.com as mentioned) slippery slope into 
full blown hate and reverse oppression, which is equally bad.

I'm not impressed by your reaction here, first thing you do is a blatant 
strawman logical fallacy and then proceed to attack him on his personal 
values as a person without even asking to clarify his position first.
He just posted a single short sentence, for heaven's sake.

This is EXACTLY an example of slippery slope into blind hate rage as I 
said above, and exactly why this kind of polarizing categorizations and 
statements should be avoided at all costs in a serious and sane environment.

We should really not jump at each other's throats on a moment's notice 
like that, especially not in a software development mailing list.

-Alberto

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
