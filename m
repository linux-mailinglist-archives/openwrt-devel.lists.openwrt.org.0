Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEF28FF6A
	for <lists+openwrt-devel@lfdr.de>; Fri, 16 Aug 2019 11:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QuG2qSGJAZdzq6wUZo6YGKrnEyjGm6egwzbEgrNItZ0=; b=JoqAt17PvYuHCzi/CxE964BiE
	HVJZBHrZiUhVIORphJRuyLZBeDDfpfPGkr+0gPUpjiMoenbXOr19giSXRgREMI8Adp58MtEZbdySw
	pJgZCSYKNxAtzqDT6ato9n3t/ZGBMcIWHMFEway0ll2O+ANWFXC/heV8a19ZbvjLj/bGpyXvKfWYp
	O3uzH9IDwf1+MMlMnTRIRS8S2o4rrN8mAHWwVOYJ10JEnEIlA1eXQ69vQeHtwuZJUPvKqWzAYKrGV
	PSte6bruqv+kTdQO8nxeUhor0TJcu2hudqmOPPF0FqjQ5w0SlfnRgwQ2PlX+0nBFiN5Lje7NZ5Z3m
	Rhk3Y534g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyYrA-0007v8-CR; Fri, 16 Aug 2019 09:49:12 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyYqq-0007ue-Vc
 for openwrt-devel@lists.openwrt.org; Fri, 16 Aug 2019 09:48:55 +0000
Received: by mail-wr1-x435.google.com with SMTP id t16so956911wra.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 16 Aug 2019 02:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=T43BmJRC0icqIdCxdV95454xCxz1mIczbfX583/dJ3c=;
 b=qY5MIDDAMYqjICRL1wJu565a0OzQ2p258kHNwVXQD3LAqyoI9aZ50EUO7oXybbfwyI
 utDX/YxR1ZyhLhuqoSyvOfzA9ZKVn63PH+lY+GgDueP00bXIvSCPKmbkZbmANNbeo0FL
 L/F2D20QwiNxnpIeIh11YdLSQPj8wQuQwRubB+3Pz6Wslfffn4l/nwbM5I2cPuw4dTcX
 9ZDRebFfcMTB1etYAz5CXUY+74jyQiOI82fd8BlytOCgUkivFG2bSV9GkAvmHmvQddqz
 euolSkPiQ3MTjIMjL0gM8VhnNWIA7LSg8HCNwLSgQEwY4m01Po1C0p3lNNYLh+6y5Txw
 dGmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=T43BmJRC0icqIdCxdV95454xCxz1mIczbfX583/dJ3c=;
 b=Vbm4x+oRe27D9nCIS9BiL2SBzFE4ZYZXI6/mfKNCxZHdo5pN+MsgFxA8wpBq7QPYBH
 Z2+6Fs/WolPD8MT9xDR+CBKnRLmnmN6VLy83VS9aaBXFlN0dRfWx/4Yf2yJRPS9WTeNM
 D1vEzNrlctcx9+VHM/YttZ6Gs6rDduqydSILxhNKBnoASKqqAtCQoC1vFTrdjYHMhFJT
 bX741mdGjxN+DUdfe7rvzkEKN2/V1IymNPn9VcR5r/HplCMrEBYXVp1/HrY/bbiGlavH
 3Y/qSUz1o+9dvHpnCEKpowcGbNtd8Vr2ZLOOZ7yDxCPma7u/KjmLPLV6jP8uoPAIOtyM
 OZhA==
X-Gm-Message-State: APjAAAV7KMDW0/ZDan/q2IObgShIPjzIWc53F9E+tdUpbuWOh3zpD7Tm
 g6IBsbnLW2ml5FrGvTJBylKonA==
X-Google-Smtp-Source: APXvYqzxZ0L6KHNFwwLkRKrOYhqkg9lyWkuTTJLuHectzIIZ5kDdbyevoIC7M+tytJ9tJR7Qy3RIKA==
X-Received: by 2002:adf:9484:: with SMTP id 4mr9427105wrr.14.1565948930776;
 Fri, 16 Aug 2019 02:48:50 -0700 (PDT)
Received: from [192.168.3.176] (138.114-243-81.adsl-dyn.isp.belgacom.be.
 [81.243.114.138])
 by smtp.gmail.com with ESMTPSA id d17sm5663855wrm.52.2019.08.16.02.48.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 02:48:50 -0700 (PDT)
To: Joe Ayers <joe@ayerscasa.com>, openwrt-devel@lists.openwrt.org
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
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <574d666f-5bb0-1205-caf0-97f37c3e9a9f@ncentric.com>
Date: Fri, 16 Aug 2019 11:48:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAALvt2O8GYDkx9bTEq6D705B6gSD9Q2hC6BoS7BPqF10WacRPw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_024853_076465_4DBFF8E0 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
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
Cc: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


>> Hi Joe,
>>
>>> Lorenzo,  I deployed an ath9k auto distance solution in April that is
>>> working for the AREDN community http://www.arednmesh.org .
>>>
>>> https://github.com/aredn/aredn_ar71xx/blob/develop/patches/712-auto-distance-settings.patch
>>>
>>> Summary of solution:
>>>
>>> * no dependency on wpa_supplicant
>>> * initial ack_to is set to max,  to not enter late ack conditions
>>> * User level trigger to flip distance setting to static and back to
>>> auto when new 802.11 adhoc neighbor joins. (we archive and chart SNR
>>> values for neighbors and natural to hook in this trigger).
>> Have you initialized the ackto to the max value to remove wpa_supplicant
>> dependency or because the system is not able to trigger the 'late ack'?
>> I did not get why you need to flip the algo off/on when new 802.11 adhoc
>> neighbor joins
>>
>> Regards,
>> Lorenzo
>>
> initialized the ackto to max:
>
> A) avoidance of late-ack state
> B) not require wpa_supplicant  -- not in use by our community today
> C) Suspect some conditions, e.g. low SNR Neighbors, do not trigger
> "late ack" (consistent, with observation of low SNR Neighbors sticking
> at max ack_to with my changes )
>
> flip the algo off/on when new neighbor joins:
>
> Intended technique to reset ack_to to max.  If ack_to is set to 20km
> and then a new adhoc neighbor joins at 30km, this would be a late ack
> state, and unable to detect.    My early testing results showed the
> algo off/on would restart the ack_to to max and start the process over
> with the new neighbor.   I trust I got it right?
>
> There are 10s to 100s of users testing this bleeding edge change from
> nightly builds, and so far, I've not found a failure case.
> Although, the findings are showing the cases where static setting has
> better throughput.
>
> Joe AE6XE
>
>>>

<snip>

Lorenzo,

It's been a while regarding the above.

I can confirm the issue that if the algorithm misses the late ack's due 
to low initial snr, the initial ack_to is too low to recover afterwards.

Do you think it would be useful to start at high ack_to and let it 
estimate/drop afterwards?

Ps.

I've got my 24km link back if required to do some additional testing.


Thanks,

Koen


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
