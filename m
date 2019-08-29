Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B1FA13E6
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 10:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wZeze4pm9qAoDDjYWbtnPs+rPR6BeVtRNN9dMSVI/hw=; b=FH6o3CfNPj1ebBaQtrDnV40tv
	l0u2S9Qy/2dbvGxEEidVwC6OaDSZ+GPMkOnXF4JH9UiRnHx2OwSfdluF1gzDxnFKYBlTzX30iiENV
	J9wFwuqxWYOCjgn+BPdw/C1hp86PsfF2Xkz4qxQJFVSYMTzdZ+XCbkrwLnw84ltJIrDOYGhTBU0yL
	i0FA63k97XgyrcplxQ/GhSrv7qtkw1/5F5EXKojLLeqFv9TVGOI6ODXM9j54Z3cQG6lUK3ZFV4RhA
	kB6tNqJ4UiX35ds5T2G4IiaykAwtRJbTp5pGLUjpCyFAoAJnBiy4uH6q9WKoGoM1Hbxa8uKl5j/Te
	QHEz5hPoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Fwt-0001nE-Ht; Thu, 29 Aug 2019 08:38:31 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Fwi-0001mV-75
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 08:38:21 +0000
Received: by mail-ed1-x534.google.com with SMTP id s49so3164606edb.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 29 Aug 2019 01:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=kENfvaXfmDhSEN7YRqsydqaDuGyMB6Suv19ZucZsSns=;
 b=Vp9ipJYPQpt/5JJZGmm6Y7BUaQQ6t+Nl9cSiz4HoM37WBQZ7+WCSzgxyxJR0cEr8cU
 yUIvGfdVRjFMfFodpXxv3W9fUJZBU7XeJKXPT9H6GGFhb6UJSF3fOeEKPUHgl5NHHAuK
 //qMLevENLgghM2YrrX4w2yPmJs/xNsgqy9ujFIyUnB9yNd2KEwxEvpMteQ3k+elXP38
 ApBaRfHmWowxtXW07R3w9f+luQZ61/Og724p0FpBUHmNs+UaAk2V4b5kycrMwdP92q5q
 wx/yOHgcio2RsaN/uDiNAfpsJ5xyssq8klhJBIkcsXMuon6NrG+p5t1soKmRqLwhXNSD
 ak0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=kENfvaXfmDhSEN7YRqsydqaDuGyMB6Suv19ZucZsSns=;
 b=Z06G5/OyEWOY8I9/bKHGVUXpDwjX1h5nSlE/gkgiFoVldtF4Ub3xmNKiFmqT1vqY87
 BAIiW8MrmhvSgms299muP6xK2HDvzjTBplXgZZU9xRuS3GjiMRV38pVGNw8wGDN0qMkh
 0Klmh7Bc4x9jC03vDQQaqIG0OtNAAGAIjocWSsoiGnZUYGtqnR7BoF2Top5v8DziOSbK
 gayiebrSmj425x4dwVfM9ldRdrAC9I8eqH51s2Fsi8UAD2J+BmzMG4ZK+K6V56zRhJxq
 6TQAU06JAe7H4QSyITNVyUqboqdFORd6EYXGgPAeSPGEsoke5F/LOrsEnRInJeeCiz5K
 Vb6A==
X-Gm-Message-State: APjAAAUGOJI/FC8dGniPXoOfVLbLMU9fapnzTnGaQKyLTxbYeKd9ZcqQ
 JLQjUpNBlyiFaD2Wkg/DIXmMZA==
X-Google-Smtp-Source: APXvYqxxvB5caLIZ69a9na52aQqooNVbB0WgwBZETKi1N1r6uaJit0TZH+rRSYHZbErJmOrjQxNh4Q==
X-Received: by 2002:a50:ba57:: with SMTP id 23mr8532207eds.196.1567067898440; 
 Thu, 29 Aug 2019 01:38:18 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id p20sm278746eja.59.2019.08.29.01.38.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 01:38:18 -0700 (PDT)
To: Joe Ayers <joe@ayerscasa.com>
References: <CAJ0CqmXJj9tnN65b9MjeEtTBcYkPnQFcWXSHaPPLOP4dE=FsQg@mail.gmail.com>
 <CAALvt2Pb+is9LZzSqv5BmbH6G6A+_LxvpP16==2OsNwk5LT50w@mail.gmail.com>
 <CAJ0CqmXvn23AZy+ONQsvV-bDuLE1pr_=jcOsgcOc++hZ8jMuuw@mail.gmail.com>
 <CAALvt2MVpMh_899tPSTw96=MaZtaehXd3Of3HOEfSWuoQgDkAA@mail.gmail.com>
 <CAJ0CqmWwu-W=AaSrjhe+MNsMBpPj-pWxy0ua-jm=m85XtiEn9g@mail.gmail.com>
 <CAALvt2Pje6Vk3zPRi-o0JCHXf51Eo2YBPmjhMo7HdwQhDgeFUQ@mail.gmail.com>
 <CAJ0CqmUaeWXbFz0_0Jg0m+NGOPGm66WEGA_mHsSRb1dV3+PL_A@mail.gmail.com>
 <CAALvt2MHTuEt8Y_Uwxh6TS1M0y4AD2-iSSccNS1WTfdr1zjQ0g@mail.gmail.com>
 <20190404072034.GA4265@localhost.localdomain>
 <CAALvt2PtubH=5i_Q3afHaATm7HNK16=jH06yivf3tDdmftQ=YQ@mail.gmail.com>
 <20190604101827.GA6510@localhost.localdomain>
 <CAALvt2O8GYDkx9bTEq6D705B6gSD9Q2hC6BoS7BPqF10WacRPw@mail.gmail.com>
 <ddc36b74-f982-33ba-8aff-fbd67a80c738@ncentric.com>
 <CAALvt2M1VQsHEahxp-jT8UMyxhQQy95xH3-YTBv1-4cppzmXWA@mail.gmail.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <4a6a3b6e-c025-3826-6fea-8f3ae13a7645@ncentric.com>
Date: Thu, 29 Aug 2019 10:38:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAALvt2M1VQsHEahxp-jT8UMyxhQQy95xH3-YTBv1-4cppzmXWA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_013820_321348_597C8FC4 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath9k: fix dynack in IBSS mode
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
Cc: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


On 28.08.19 19:34, Joe Ayers wrote:
>>> initialized the ackto to max:
>>>
>>> A) avoidance of late-ack state
>>> B) not require wpa_supplicant  -- not in use by our community today
>>> C) Suspect some conditions, e.g. low SNR Neighbors, do not trigger
>>> "late ack" (consistent, with observation of low SNR Neighbors sticking
>>> at max ack_to with my changes )
>>>
>>> flip the algo off/on when new neighbor joins:
>>>
>>> Intended technique to reset ack_to to max.  If ack_to is set to 20km
>>> and then a new adhoc neighbor joins at 30km, this would be a late ack
>>> state, and unable to detect.    My early testing results showed the
>>> algo off/on would restart the ack_to to max and start the process over
>>> with the new neighbor.   I trust I got it right?
>>>
>>> There are 10s to 100s of users testing this bleeding edge change from
>>> nightly builds, and so far, I've not found a failure case.
>>> Although, the findings are showing the cases where static setting has
>>> better throughput.
>>>
>>> Joe AE6XE
>>>
>> Hi Joe,
>>
>> Purely fyi
>>
>> I just pushed dynack improvements to all openwrt branches.
>>
>> I also noticed the issues you addressed above, and these patches fix
>> them for me.
>>
>> Regards,
>>
>> Koen
>>
> Thanks for update.   Updates on performance observations, I've been
> recommending usage of auto settings to the AREDN community as follows:
>
> * best performance gain on Point-to-Point longer distance links (back
> bone links).  I saw ~30% iperf improvement results on a 60km 5GHz link
> -- ack-to floats up under load.   This was about the difference I
> measured on a similar 3GHz  60km link head-to-head comparison between
> AirOS auto distance with TDMA and openwrt static distance with CSMA.
> (3GHz because it takes wifi noise out of the picture.)  I want to do a
> head-to-head comparison again to confirm, but it appears a P2P w/ auto
> setting CSMA in openwrt will compare similar thoughput as AirOS auto
> distance TDMA.

> * good/poor performance for Point-to-Multipoint long distance
> settings, up to 20km  range (cell coverage).   If weak SNR stations, a
> static setting is optimal.  If quality signal, auto works good.
Will try to verify this one
> * Poor performance for short distances, e.g. in the house.   auto
> calculated ack_to settings are several km.  Performance is much poorer
> than a static setting of <1km.
Ack on this one.
Tested on links ranging from ~500m up to 3.5km

static seems to win in terms of performance until the distance goes 
beyond ~6km here


> There seems to be something going on with calculation when 'on the
> bench' testing with short distances.   Maybe a bias needs to be
> applied?

I notice that ack_to never drops below 64 on short distance links. 
(static sets it to 31 on selecting 500m)

I wonder if processing delay/time and thread context switching is coming 
into play here on the slower ar71xx socs

Will check it.

The main focus of this series was to have working links and avoid 
breaking existing ones.

I think the next round will be regarding these performance "issues" 
compared to static

Koen

>
> Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
