Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA2091781
	for <lists+openwrt-devel@lfdr.de>; Sun, 18 Aug 2019 17:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIZQGVqjv6DzFls5wf2L/kYwohCAdBxwYv795PoDffM=; b=bPZZhuOY3BZ6hJ
	DPFdEjAEQNYIoB3MLc4hdXUj5nh34D7EsbqZ4TX3e/XKhvYBRUp3CNT4CviA+cccKaxX5w8yYx8Ag
	gzqFowWaEUqABAfTGnJxlllBWG8Q+cEpfnAyBtAT1aMY4qXOM4S5YrYRFBa4oFNGHKgVCQ7OSjaYh
	wz5L1DNhBz3JwM7NhrLdBaNjCM/X6h3rQHLPx0+4UH3uj5ctXGjhA8OsLdRlz3O0t4sDwA3R4Quur
	3/Dxoh0Mm+Q2jHGP2bMf+HTb6QKz4pged8iEMSjinexr10JtGNLdS8zj/92Ufl9nsgJCAjsTq8ayf
	f+Bt5oHF9NoDjBe0rTMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzNHH-0005jB-FZ; Sun, 18 Aug 2019 15:39:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzNH8-0005iq-Ng
 for openwrt-devel@lists.openwrt.org; Sun, 18 Aug 2019 15:39:24 +0000
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 50F723D96B
 for <openwrt-devel@lists.openwrt.org>; Sun, 18 Aug 2019 15:39:21 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id a13so1292634ioh.18
 for <openwrt-devel@lists.openwrt.org>; Sun, 18 Aug 2019 08:39:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GmW9qv78eBRSmC4QJOdC0Qk8zCoQN0rDUFLe8fr8Z74=;
 b=Jtc1UXn299JJ7JL4nDl/FNRxSPIFEbmc/Cbm1s00y14rIybyZyKRe/k9qtHxdMbGxB
 Hha186GI9Bq/gv15ptnsCcuzu+wlyV0LJMeenLQxpGvgOd6QFMG1f2p6Y3I0zkFQGJbu
 ELekB+uTNHUvrfygP1WGCaiSNMDMXmOZ2m/LPFJojwW0kL89Bf0QtUqy5qTGtgvogtrM
 2YtYEW1NUnmCEKf+hmQqsALNMObzLHvZaPu+gsXSjqPhHOB9u1bK9xF0o031Ujwgiigc
 349H2Ww/H2ktvCE/q5PNdhZ6n49ZmmgjOFUg3c4i9jFaczwyt/NCQk6Q4cpyBjj3RENA
 tmJw==
X-Gm-Message-State: APjAAAXmoBe1NZWIIw3/hlO2crpyv4UsLjemTfW0lXG/yySDCVc+ryJQ
 ce8UoOzvRgaBeZMpnx/qyOvPwKL9rcrhOQChEBUrw+ljQLQJcD8JNUxtOG5psqOwSp4JQQWrJTY
 ImFxA/8ReEBTG8I08CK8aIescmq1OA15NYy9VjE61aIe7
X-Received: by 2002:a02:2243:: with SMTP id o64mr20122631jao.100.1566142760708; 
 Sun, 18 Aug 2019 08:39:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyxMj724/bUlwjPV9Z4CXSfuJu12nHUtBPCexHnjVnoZinewHnaZkE67eO8FL2Zv7riN47Rl5yr1FUSpwghKAE=
X-Received: by 2002:a02:2243:: with SMTP id o64mr20122600jao.100.1566142760324; 
 Sun, 18 Aug 2019 08:39:20 -0700 (PDT)
MIME-Version: 1.0
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
 <574d666f-5bb0-1205-caf0-97f37c3e9a9f@ncentric.com>
In-Reply-To: <574d666f-5bb0-1205-caf0-97f37c3e9a9f@ncentric.com>
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Date: Sun, 18 Aug 2019 17:39:08 +0200
Message-ID: <CAJ0CqmXq60aq0_q6OWUnrBaTpwrxiQrzJP8XGZtZg7nWdYZvfA@mail.gmail.com>
To: Koen Vandeputte <koen.vandeputte@ncentric.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_083922_818794_65E6EF27 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Joe Ayers <joe@ayerscasa.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

>
>
> >> Hi Joe,
> >>
> >>> Lorenzo,  I deployed an ath9k auto distance solution in April that is
> >>> working for the AREDN community http://www.arednmesh.org .
> >>>
> >>> https://github.com/aredn/aredn_ar71xx/blob/develop/patches/712-auto-distance-settings.patch
> >>>
> >>> Summary of solution:
> >>>
> >>> * no dependency on wpa_supplicant
> >>> * initial ack_to is set to max,  to not enter late ack conditions
> >>> * User level trigger to flip distance setting to static and back to
> >>> auto when new 802.11 adhoc neighbor joins. (we archive and chart SNR
> >>> values for neighbors and natural to hook in this trigger).
> >> Have you initialized the ackto to the max value to remove wpa_supplicant
> >> dependency or because the system is not able to trigger the 'late ack'?
> >> I did not get why you need to flip the algo off/on when new 802.11 adhoc
> >> neighbor joins
> >>
> >> Regards,
> >> Lorenzo
> >>
> > initialized the ackto to max:
> >
> > A) avoidance of late-ack state
> > B) not require wpa_supplicant  -- not in use by our community today
> > C) Suspect some conditions, e.g. low SNR Neighbors, do not trigger
> > "late ack" (consistent, with observation of low SNR Neighbors sticking
> > at max ack_to with my changes )
> >
> > flip the algo off/on when new neighbor joins:
> >
> > Intended technique to reset ack_to to max.  If ack_to is set to 20km
> > and then a new adhoc neighbor joins at 30km, this would be a late ack
> > state, and unable to detect.    My early testing results showed the
> > algo off/on would restart the ack_to to max and start the process over
> > with the new neighbor.   I trust I got it right?
> >
> > There are 10s to 100s of users testing this bleeding edge change from
> > nightly builds, and so far, I've not found a failure case.
> > Although, the findings are showing the cases where static setting has
> > better throughput.
> >
> > Joe AE6XE
> >
> >>>
>
> <snip>
>
> Lorenzo,
>

Hi Koen,

> It's been a while regarding the above.
>
> I can confirm the issue that if the algorithm misses the late ack's due
> to low initial snr, the initial ack_to is too low to recover afterwards.
>

are you referring to tx side or rx side? are you able to reproduce the
issue with debug enable?
I guess the system will resend the assoc request/response packets so
eventually we should be able tack the 'late ack'

> Do you think it would be useful to start at high ack_to and let it
> estimate/drop afterwards?
>

I think we can add more logic to take care of this issue but first I
would have a clearer idea of the problem

> Ps.
>
> I've got my 24km link back if required to do some additional testing.
>

cool :)

Regards,
Lorenzo

>
> Thanks,
>
> Koen
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
