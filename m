Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E6114AB63
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 22:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LbFOex4aThkpSiz6SI7BwRxRDXJ55DR7TlSLsK3gwh8=; b=Cmh5UN63KdGKWul5jy+2SToqs
	RScmzjCeNAHtQ1Ssgq7EbmU7oZCQCIsCymugn5k8FR+vCVFrq6tr5yH6M1fwJ6A62iARzYgVmN0xd
	+l56VsLmBo7B+Y9FKQx+9x5bAiuk7yHdKjwXs62UmtZlnyA2+n62z+cLCmr7n8o0ZDuyZlZrn0PmE
	MeYV1c4cqlqk6/Rbgt5+k23RUka1HNhFTxeUDL7R/fAEQe8YcZ593aECLqUtaBoPjEjp+AyDRqXMA
	yAHOcYvUwjIaE7GbELGUBDHn0uRdqFZRabaFjIhx+JgDpg5pceN7SUZgjUBP/Fp3Ee1mSEPLKVTAE
	veRucGofQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwBUY-0007dB-CS; Mon, 27 Jan 2020 21:00:18 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwBUO-0007IR-AU
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 21:00:10 +0000
Received: by mail-lf1-x12e.google.com with SMTP id n25so7360023lfl.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 13:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0MEXcT2bBV2mhAhWZRrvZgLDur0gKkCVMERNLJUSh1g=;
 b=S8fzfZXDKJ5Vt9RyttMPXYOiyr+plwh+O6KNOtQNO7LD4rHiy48AE//777l8kZOMc3
 Xe9Owi2zYS9mgYPN9f4dtC7EfG5kW8wb8mGaPQ44LEt2uJPQ6uWK84R7EmwgZClY6i3k
 41+UrXOhTa2T3OsQaWH2s8Opk9UvLnLTR7e2Eh52QYAtW62kwKN+b/y8JFJmfkCXOrw7
 gmcqoBUzWPMlC5eBvY5uriqcUxb7zbvi+wHgmMYebyb5ZXQAE2e/A7YO4Zz4qUH371Or
 21HVocuwblHgAop8GIjAByk0Ko5h2U36LZjpl8nKb4j3AuOY8AcLX3UI3caum/jIRB7q
 7a/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0MEXcT2bBV2mhAhWZRrvZgLDur0gKkCVMERNLJUSh1g=;
 b=rtM4MG8/auiIccnwUUkLb2Fnm42ar5fovprm5Oyj61L1WOR4hLgSkzhYwG/zG7W/YE
 QkXY3JKW/+x/FWMUR4+nK1Kcf8Inh3ss1P805xrFDFxyAdyZvRazMS/jQfvvYG1is7el
 Qoow7k8WF00QivRu1A71ju+eU1y2paQOqn+mM9zfaeTnSu5Gb3tdVLDOyV3TdzEmlYh7
 N9Xkt/Pi3cOt9PjK7vtbbJEfcmlRiiCmD2aTMxgmTuSi6KmPRRcCWMKt8YITw95HtyNK
 JXCmtblep+i6A8czoNCKWujtPW3Rqos78dyTdQ343R/6pfbOHssYY5M8XDq6QVAVJr3M
 Fejg==
X-Gm-Message-State: APjAAAVbvQonmxeyq5Qs7I4NghP3kmTwMyOu28LoKrEUxdeBpPhuWoia
 zEYhyxoiiCcBdeRvXjKI6wU=
X-Google-Smtp-Source: APXvYqwnjcRQQXLxTH81tAS1txgnh3F72LcdM+XKOVHMXAgb6/yoaf/wzTu1PLaPIstCJ4wWh3A6oA==
X-Received: by 2002:ac2:54b5:: with SMTP id w21mr302649lfk.175.1580158806124; 
 Mon, 27 Jan 2020 13:00:06 -0800 (PST)
Received: from [192.168.55.103] (031011201135.warszawa.vectranet.pl.
 [31.11.201.135])
 by smtp.gmail.com with ESMTPSA id 14sm8583178lfz.47.2020.01.27.13.00.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 13:00:05 -0800 (PST)
To: Peter Geis <pgwipeout@gmail.com>
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
 <CAMdYzYrWaxjP_UMASDjw1Y-PbdHgVzWWfRc9o3cBiiOLWa=+5w@mail.gmail.com>
From: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <d963c081-fd20-db13-09db-434c30404389@gmail.com>
Date: Mon, 27 Jan 2020 22:00:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMdYzYrWaxjP_UMASDjw1Y-PbdHgVzWWfRc9o3cBiiOLWa=+5w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_130008_607789_6C2793E4 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12e listed in]
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
Cc: gch981213@gmail.com,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>, ansuelsmth@gmail.com,
 David Bauer <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Peter,

On 27.01.2020 19:57, Peter Geis wrote:
> On Mon, Jan 27, 2020 at 1:35 PM Adrian Schmutzler
> <mail@adrianschmutzler.de> wrote:
>>
>> Just a quick one:
>>
>> > > So, no matter what we do, there is no easy way forward.
>> >
>> > We could remove all ar71xx -> ath79 migration helper scripts, ar71xx
>> > board names from supported devices lists in ath79 images and make the
>> > target a brand new, without any concerns about soon-to-be obsolete ar71xx ;)
>>
>> At the moment, I'm actually mostly inclined towards this solution.
>>
>> However, for me personally SUPPORTED_DEVICES was always more a "don't brick entirely" flag, so I never expected it to ensure 100 % config compatibility. More like preventing me from flashing ubnt,unifi image onto tplink,wdr-4300-v1. This impression might have been wrong, though.
>>
>> But as mentioned by Ansuel, there are other incompatible switches to come (and some are already waiting), and unless we want to create new targets or rename devices in these cases, we have to think about different "levels" of compatibility anyway beyond ar71xx->ath79.
> 
> Wouldn't it be reasonable to put up a warning that migrating from
> ar71xx->ath79 will require a reset of networking configuration?
> Then all you need to do is detect when that sort of upgrade is
> occurring and nuke the requisite files.

I believe we already have such a 'warning' on the Wiki: [0]. The exact 
problem is 'detecting that sort of upgrade' (what about user migrating 
device under 19.07 but between ar71xx -> ath79 and then back to ar71xx?).
Also, the problem doesn't affect all the devices so the users have to 
first check whether the device they migrate/upgrade has to be 
(sys)upgraded without preserved settings or not.

> Also I don't know bout y'all, but I usually take a major revision
> upgrade as an opportunity to hard reset and rebuild anyways. (Years of
> ingrained ddwrt habits)

But it's not a general rule and, at least in case of generic/basic 
settings, user shouldn't be worried about upgrading between major 
versions with preserving settings. Otherwise, the whole idea doesn't 
make much sense and we should just prevent settings backup during major 
versions switch.

[0] 
https://openwrt.org/docs/guide-user/installation/ar71xx.to.ath79#upgrade_from_ar71xx_to_ath79

-- 
Cheers,
Piotr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
