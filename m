Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5F714A7FC
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 17:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WsGhupZOr3AaB9QXj+MQu6/CpXisxvBX3RjMOla8sv8=; b=YLnrUYzhPGLk6HFK/2EUyJd8p
	oWOODS4YIdcs82E6p83958vxuhZLcXlh2CeNqOPcnqv/UvPtUDJWdISBjFemT5gpVHd9Zs2saTzhz
	7zPlZkvHvgHaEV06210JMz960jziLepzkkgla7EiV0Lq+xhHun/uNAwpVpRciwZuNlHTWmacZ4lXO
	pJHt1Qi3TwKtTon+1aT3niYJ5HoxY0Sz85lkjF4uabsYSwxIRjRlQ68NTFOqvct5soCKkO3t4Aglo
	TJaZ7s6IjWq1Axsp7Ym+uG+yuCe2sgY6PtWZUYl+zpWRDd6qmNnFXf9dVfiPUcJTC+/PIjcinny+u
	iu8fXThWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw7BN-0005ic-Kr; Mon, 27 Jan 2020 16:24:13 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw7BE-0005hw-EY
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 16:24:06 +0000
Received: by mail-wm1-x335.google.com with SMTP id p17so7708628wma.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 08:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=jx1Tih9cMoY+SJCdve+zbibk5KTOtG5OmgKQBnGAdZQ=;
 b=rLvHm05CxktvvQFh4Ao9jX+5J567PbNrXOwOfy3t4W3q7ppvX2WdsAsjXQ1qwogRm8
 SLtcZ4F8hubyAOYPu6iBao6TuYRnNkgFMkDwmprDeHtezVm5qq+eshAohWwKMhy7kZw3
 1HP3/fuAa4NA6CmpuCgDLWcPV3Evf1xOVULjI8j6oWD57ZFAjsjR9Xg4/Eb/zfaBDwDf
 sdS/IgU6XkO/11/9DDmIshclUJdFNfVDx6lzgLbvRCeO4AsQYDKa+st46qB7O1xt2NZV
 ufs/6o03Vi90oSh9N6TiNyxnB4qUP+Wr19wcA5WVy6lPI4U612arb8TIeP/n85u5grMR
 U14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=jx1Tih9cMoY+SJCdve+zbibk5KTOtG5OmgKQBnGAdZQ=;
 b=ZBM+cqxa9BxI9ycSNVOFwyylMxXU0MvwffpycWEFA3r3vDWB5jgURtmONAFDYvwZNW
 2zup9PXqphrqDaURzim2uJD6mXzjAo/KHobBqItVjyKen97CZtQ9lwRFV+13IvDraQbf
 vHF2F548G9B1iHjGB9+bUXIqjTIqBGjIWOhOrAiTsHbNN9RvzfIlgdDzOXL6TN8N1bqc
 rNEUPThb/CzjARMdqogaPYeqvId4aaLpRDpCyFN3slokG6Klf/ni824jWWk48B0Ae60j
 i1KQFYE4bnNBpeNrEZZKu5+Nsy65xmtxhFshc1vFAnnkqKAXn5CpTouL+wtjy7UbmTYr
 T1DQ==
X-Gm-Message-State: APjAAAVvEWJ5AAkDZ0pjM7cfaqYR4BKRvevFlawIcjyHbgfQvbi2GO6o
 hHscGbNBDrevtMpd4CTxNAKu7VyLc3s=
X-Google-Smtp-Source: APXvYqyhZ53l8qKkzSflfCX8nx9TGwCEqqErdfQTtf6v1On8eOwSWudc36FrTKr9I9INCBMkf+T1dg==
X-Received: by 2002:a7b:cbc9:: with SMTP id n9mr14768783wmi.89.1580142242012; 
 Mon, 27 Jan 2020 08:24:02 -0800 (PST)
Received: from [10.202.0.7] (d5152e8e2.static.telenet.be. [81.82.232.226])
 by smtp.gmail.com with ESMTPSA id s15sm20947459wrp.4.2020.01.27.08.24.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 08:24:01 -0800 (PST)
To: Joe Ayers <joe@ayerscasa.com>, openwrt-devel@lists.openwrt.org
References: <CAALvt2OkLzFj_xhfDXY9WObeV48RkZGLZ83z0jfoNtG9tNQS1A@mail.gmail.com>
 <20200126230936.GH1525457@lud.localdomain>
 <00cc01d5d4a1$40715510$c153ff30$@adrianschmutzler.de>
 <CAALvt2PNFULVP7NbnGx_ZYJ7rNPMG0Wr9Lguq+V+pVGKakg_mw@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <63072ee1-a88c-3d34-9066-a9365e4b4cca@ncentric.com>
Date: Mon, 27 Jan 2020 17:24:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAALvt2PNFULVP7NbnGx_ZYJ7rNPMG0Wr9Lguq+V+pVGKakg_mw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_082404_625159_DA7DB56B 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] 19.07.0 boot hang on Mikrotik device
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
Cc: Baptiste Jonglez <baptiste@bitsofnetworks.org>, mail@adrianschmutzler.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 27.01.20 17:14, Joe Ayers wrote:
>>> You should report this bug under "openwrt-19.07":
>>> https://bugs.openwrt.org/
>>>
>>> You are apparently using ar71xx, did you try an ath79 19.07 image?
>> the first mikrotik device in ath79 was merged to master last week, so ath79 is not an option here ATM.
>>
>> Best
>>
>> Adrian
>>
>>> Regards,
>>> Baptiste
>>>
> The devices with this issue aren't supported with Openwrt images yet
> :) .   Thus, submitting a defect may be problematic.   I've added a
> few definitions on top of the openwrt "Mikrotik LHG 5" to add support
> (and hopefully I can find the time to submit an openwrt PR).  There
> are 3 devices with exact same motherboard "LHG 2nD" and same behavior
> going from 18.06.2 to 19.07.0:
>
> LDF 2nD
> LHG 2nD
> LHG 2nD-XL
>
> I have narrowed down the problem.  By removing "40_run_failsafe_hook",
> procd completes as expected.   Something seems to be triggering
> failsafe mode and blocking procd.   If anyone knows what might have
> changed or where to fix the root cause, would appreciate any
> information to save time.   I'll dig a little more...
>
> Joe AE6XE
>
I'm also a bit worried when seeing this:

[    0.133043] ar71xx: invalid MDIO id 1

Koen

>>> On 25-01-20, Joe Ayers wrote:
>>>> At http:\\arednmesh.org, we've had several mikrotik devices working,
>>>> all with "LHG" motherboards.   One of the devices, RB LHG 2nD-XL no
>>>> longer boots with upgrade from 18.06.2 to 19.07.0.  Other devices with
>>>> same "LHG" mother board continue to work fine, e.g. RB LHG 5nD-XL, LHG
>>>> 5nDHP.
>>>>
>>>> I'm stuck on getting this working, if you have any pointers, please
>>>> let me know.    Here's dmesg where it hangs:
>>>>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
