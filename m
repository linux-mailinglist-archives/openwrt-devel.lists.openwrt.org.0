Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2811712DD6D
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9d+DyRTh/R9QPSLFsiJRxxIPhhYDJpmd0cMYMwQolYE=; b=mB7gN2y/kRcDJ8m3v6kfvXz/s
	VPeMfdF6g3TybZOe+iHgm1HPxS0vy5ezv72Zs1KZ7GFdX+YRwgyGsLQSzCRXNmZ4MNj2huIRq4r1J
	UiKVaLXaxCKSkwXmy4SbSEVjPeXqRsBmkd/E2+RalKIP2e1aEjjsHiMOoBlx22ksWysKvzbw5aBo/
	1PhRZ06ow5+KHIJ2dAoGb/OhIZYS0j1R/GT3bULCZuOl5FuFS67WkDaBuEMUFZnniG5z1xvL5keuk
	kBeco/Gb61Xadxupzo0Qh14KZrb1Mm81h1kWG8oB9ghHTWOEZoGSm1vf6KFtbAU0frrymlhacJmcF
	oFFyY051w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTma-0006aO-6a; Wed, 01 Jan 2020 02:30:48 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTmS-0006Zp-Jb
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:30:41 +0000
Received: by mail-wm1-x330.google.com with SMTP id f129so2923341wmf.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=scdL2R3Zm7ZyOyY6TBi1QETDdUJkK+ZlwgUzoS2vkxA=;
 b=XZHf31PLpVWoNiqPATNt/4EoYpoEhNcQUSt9zLP/j2Cp2iBVXiZ2W2sIbJsLkj5iNP
 bE86sXc+MGYLHyCX7IzeDeKDR9vTBnumlDqmDqYYUNhjU2uqKp4sXqnGiCmbfA4xdhPo
 H0DYaPtC663H//lLkoItdNXzPRuk0vjdl/mjoE/IJm5abnlo2AkddkrLaWrPnR+zR+y0
 d0aaSBn9ZDzIUUkHKzNHDOCi0RA25MdnXEWrCJRXiQ/KwW+zEwLLttD3jv/KFHS7VwJI
 L5GyH3aCdPzZkbHBkSO+lT/N8gptznlpXeWI+HnELO2kygTaSinu5UkWoO33zNYqLQvM
 8L1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=scdL2R3Zm7ZyOyY6TBi1QETDdUJkK+ZlwgUzoS2vkxA=;
 b=Yz1jUuCk1xQom/oh4Y7MJ9ajrfsIGTpgcuqNUFND2vD32c+s/bSDVJnpDocLM+ka0V
 lfj2aN9jt2gX1XKNcVSqXoC7VewEaF0Mjx9east3whZEuo6SWCN+IHP11zbtgRQgYOBE
 UospBGn5WPij5+FPEKCte5n81QvZYQHQl1b8y+mMLdPju39aGlU+8TDqocklSszwUJzY
 gA75MEfzQ1caiEefyYZSqoY3An5ntV4qKbSeYf0kJ+ptE6S/vI64JN+r7JHN7ovTEL82
 jGsDYv6Q+XOk6wOApknYHgp5rXSJkeSjHTbIE7GwHle36/LxzY9T4EMvYZEi1jjWJNQR
 TznQ==
X-Gm-Message-State: APjAAAV86isyQaGzsVBHFS+2dCK0619LMIm+b+hbJ+JvrgcXM8VPFm1j
 yfNtt3tWhmLc0FPDcd0kbmW1m/NAIfoTRQ==
X-Google-Smtp-Source: APXvYqyAx415v17C4EI9kt6NzHC+DctsgBN4E0ZyiKbvuOw1mCdc/f4HFCzhsVwKFPhDBC4XDjG8Jg==
X-Received: by 2002:a7b:c38c:: with SMTP id s12mr6913748wmj.96.1577845837019; 
 Tue, 31 Dec 2019 18:30:37 -0800 (PST)
Received: from [192.168.1.230] ([213.152.162.94])
 by smtp.gmail.com with ESMTPSA id n16sm51447852wro.88.2019.12.31.18.30.36
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Dec 2019 18:30:36 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
References: <20191228140048.GO11377@home.paul.comp>
 <9f716d9b-4230-b3e0-7e38-78c4c4781a78@wwsnet.net>
 <36732b2f-c95a-5749-e028-653a9f8ea4f8@david-bauer.net>
 <bcd2f7e5-abad-3b9c-7a62-b79bd6b424a6@gmail.com>
 <20191231141559.GP11377@home.paul.comp>
 <3dd75d93-e74f-6831-51f0-d2100fdbc1db@david-bauer.net>
 <20191231152922.GQ11377@home.paul.comp>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <80fed589-f821-70f3-0337-24904f087351@gmail.com>
Date: Wed, 1 Jan 2020 03:30:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191231152922.GQ11377@home.paul.comp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_183040_674934_5B5EFC07 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Preserving configs over sysupgrade on
 ath79/tiny broken for some boards (on 19.07 and master), possible solutions
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



On 31/12/19 16:29, Paul Fertser wrote:
> Hello David,
> 
> On Tue, Dec 31, 2019 at 04:20:29PM +0100, David Bauer wrote:
>>> If no users speak up probably it's better to remove all the support
>>> code altogether to avoid wasting maintainers' time on it?
>>
>> The code is not really an issue, as there's not much code dedicated for 4M
>> devices. It's mostly their device-tree, which is maintainable compared to the previous
>> ar71xx boardfiles.
> 
> It's still an effort. People spend time writing patches, reviewers
> spend time reviewing, maintainers spend time merging and we're now
> spending time discussing.

People that want to drop something are always under the impression that 
people that are active on X will be just as active on Y when you drop X.
It's not usually the case.

In this case most of the complex work is writing patches and pretty much 
none of the core developers work on that.
Random contributors will be random, if you drop support they won't 
magically redirect their efforts to something else, they will fork 
OpenWrt and patch their own fork to support better their own devices.

> 
>> As many people still use these 4M devices
> 
> Judging by the amount of replies from active users to my mail
> (apparently zero), not many. 

He said that people that care about 4M devices are mostly on OpenWrt 
forum, and it's kind of rude to just cut that part out and not read it.

A LOT of OpenWrt userbase does not follow the mailing lists (or even 
know what a mailing list is), so if you want to have the full picture 
please visit the forum as well.

-Alberto


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
