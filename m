Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29472BE850
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 00:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4QeMpBFRiHkdFeKOKIqCfscVzTH1zzHgMAhxSlGGLs=; b=PIsjbuvbo40/zG
	3TSKCdGIBnJNgvEYCpNrrgrDT2Vp9wmnI32ZTylFQD9MrMXvEXmUEFqsr+qOoJQ/pmnZC7yaZxnN7
	aoo5caxQieXHUbS75dXvn49uJMloLbeXf/fdHr6blfU9czq/t9qrV4fPXc21o1s6w68FTMsOIUyPM
	uyCMI5i6UpU5NLbyuy4XjnCU7ArENRxdEpF2koDqQ1CIFzU2YrXeeLk7TqE2QYbzGQ0XmA2/DABmI
	uOU4P/qNG1NnjYcpW6YFmZce2Fm3ARvSTyL5qAJnfdQO8mNAQOvbap838kOBBxxdYe2kwJf2WMp4e
	pyRlF2tSPyxJKUGtxRAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDFkX-0000yM-Og; Wed, 25 Sep 2019 22:27:05 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDFkP-0000xy-DO
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 22:26:59 +0000
Received: by mail-ot1-x342.google.com with SMTP id g25so266709otl.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 15:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=sWsB/ltvoN1DlJSohuXlVQehBHvyDCOZW6p2BBJjWQ8=;
 b=dndD+viSTWToG6p/RH3q7lInXUjg73AhEUxOzfd4dudlDpsUNn19SXkZ5tACTMpmAU
 ne15iKW9YC26fFQ0qwmQ2+nmTZzjvLw4RRwfhrnxgYfXkNZrkP9MdQF6zAB1v3kjJWox
 slKjlfQ3a0Opy1ydqBIX+o0PcRVWbjbkWiGV/NLTNNFTVG6gzYwJO0/MgL6H2mYpNjmU
 xqUx9S+VKivTaRVAvuO1NL4XoplOOEy1nFpkzHrFeUNQJmRWFtOYLje0hgMSW2/1uikO
 yoKs4t2hi1KjF+skjV9+Axr3oOFAZ7P1c7xQAaxAJCX1MsEk8dyPGbW+bgdWRC3Q2IkS
 MioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=sWsB/ltvoN1DlJSohuXlVQehBHvyDCOZW6p2BBJjWQ8=;
 b=pPKlJBDXEhHrhbg8DucWhAa5DLhglHNiA+95qIO8d3Y/t2xkUBm1gVElwySlMnAKQs
 hmYGaIG6rxLmpwGlkfip+/gfbEfi0SrZYzV2kXwXj5UNSEpZIULp9xcTzhOVpoNVgdxZ
 07erUhvkQANrhdVxEkslaA/shS7GhrRXgpYaxIw5diUk4rt+kMrfEhEJFj+ez0DIEeGj
 YEr523SxM0EAFJo9SDDw1Jlboz2Lr8N2fHuC6tPVAv6DcGaMJTKKATnqIE9nplV6K2h0
 wKxEH2vojfij9bCONmMu2m9M88/52/WsJ1CsGkWmj8NLeV0V+jNuv5NwiaAiaz0fy2WA
 uZeQ==
X-Gm-Message-State: APjAAAVsP6gJ271GbobOiPVGL68/QwnB2IuD0JT+1ulBZ2Ld5BmpYCiu
 H9SnbB5FR2vSh52eP2GL+HyAjwOdZUC4XC+NO0Yhmyab
X-Google-Smtp-Source: APXvYqyeCynDjaMG6GcD2Ai0J70C12tCBcx8e6dVcdN5hUE+87/ALb7EW5bT31kYnjNcKpuRe2vektcTxG6rOwhjbGs=
X-Received: by 2002:a9d:621a:: with SMTP id g26mr340439otj.236.1569450415522; 
 Wed, 25 Sep 2019 15:26:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP; Wed, 25 Sep 2019 15:26:54
 -0700 (PDT)
In-Reply-To: <0475f01d-fb50-4d85-9711-6f2822757d9f@maxnet.al>
References: <E35DD50A54031C50.92928df6-9b31-4ba8-b86b-7037754522f2@mail.outlook.com>
 <e2a51e07-7730-6b89-172c-4836e9168a27@ironai.com>
 <8fa864c2-99ca-1a08-c2f1-b53288201079@candelatech.com>
 <ce97ab8de243a3b9d9e08b466ccf76d2@maxnet.al>
 <767b2c5a-1a91-b694-7d79-8ed02860ec23@candelatech.com>
 <E35DD50A54031C50.f6a00d5e-317f-456b-b3e4-15891dc232b5@mail.outlook.com>
 <c9f32f30-c40b-81a6-8497-fab4cebb5df1@candelatech.com>
 <E35DD50A54031C50.bd843672-79ee-46bd-9cc5-21e5b7f21227@mail.outlook.com>
 <c9f4eef7-e45a-15c0-35d9-9f747f88dcf6@ncentric.com>
 <E35DD50A54031C50.de2e2e47-8353-471a-9b8c-2d93bbb6a536@mail.outlook.com>
 <0475f01d-fb50-4d85-9711-6f2822757d9f@maxnet.al>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 26 Sep 2019 00:26:54 +0200
Message-ID: <CAKR_QVLt=S9mx_DzXw47yCrsLpmCdm94VpOi63eFHu1R05e--g@mail.gmail.com>
To: Maxnet Support <support@maxnet.al>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_152657_459976_E6673778 
X-CRM114-Status: GOOD (  27.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ben Greear <greearb@candelatech.com>,
 Vincent Wiemann <vincent.wiemann@ironai.com>, openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 25/09/2019, Maxnet Support <support@maxnet.al> wrote:
> I have attached iw phy phy0 info output. It shows only 2 antennas. Is this
> wrong? Qca9994 has 4 chains.
>
> On 25 Sep 2019, 22:51, at 22:51, support@maxnet.al wrote:
>>Hi,
>>
>>
>>
>>
>>
>>
>>In the beginning i was using 2 dishes on each side. They are ubiquiti
>>2x2 dual polarized dishes and i connected the chains of station in the
>>same way as AP and i still had issues. After that i thought the problem
>>might be because this card uses mimo multipath and AP ch0 should talk
>>with station ch  0 1 2 3. With 2x2 dishes that's not possible because
>>
>>
>>
>>
>>
>>
>>DISH 1
>>
>>
>>
>>
>>CH0 -H
>>
>>
>>
>>
>>CH1 -V
>>
>>
>>
>>
>>
>>
>>CH2 -H
>>
>>
>>
>>
>>CH3 -V
>>
>>
>>
>>
>>
>>
>>The station pigtails were connected in the same way as AP.
>>
>>
>>
>>
>>In this configuration AP ch0 whish is Horizontal can talk only with
>>station ch0 and ch2.
>>
>>
>>
>>
>>
>>
>>So i decided to go with Jiroues single polarity dishes on each side.
>>You think that single polarity might be the problem but why it doesn't
>>cause problems in routers when there are 4 omni antennas and still you
>>can get datarates 866Mbps by phone(my phone is 2x2). The testing
>>distance now is 5km but the distance where they will be installed is
>>13km. We also have dozens of ubiquiti and mikrotik links and 13km it's
>>not a big deal.
>>
>>
>>
>>
>>
>>
>>Today also i noticed something strange. The AP was openwrt and station
>>was ddwrt and i got  433/866 and after changing the station to openwrt
>>the datarates got worse. Ddwrt wasn't good either. It had datarates
>>problem.
>>
>>
>>
>>
>>
>>
>>Can it be something wrong with firmware antenna configuration? Why it
>>shows only two antennas iw phy phy0 info?
>>
>>
>>
>>
>>
>>
>>Thank you
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>On Wed, Sep 25, 2019 at 6:34 PM +0200, "Koen Vandeputte"
>><koen.vandeputte@ncentric.com> wrote:
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>On 25.09.19 17:14, support@maxnet.al wrote:
>>> This is long distance, 5km with 4 dishes on each side. They are all
>>> vertical and all chains have signal range -60 to -65.
>>>
>>> I don't have omni antennas. Is there a problem that i am using
>>dishes?
>>>
>>>
>>I run dozens of long-range devices, and I'm seeing 2 issues in your
>>setup:
>>
>>1)
>>
>>- Ack-to issues kick in starting from roughly 1000m.  When you cannot
>>alter ack_to (coverage class), you will notice severe performance
>>issues
>>above 1000m
>>
>>2)
>>
>>- Using identical polarization on all chains is an absolute performance
>>
>>killer.
>>
>>I have 2 devices,  both 2x2 802.11n, HT40 SGI, which are only 150m
>>apart, all chains V polarized.
>>
>>When running speedtests, inspecting ath9k rate control shows it is
>>stuck
>>at the max speed for 1 chain (iso 2)
>>
>>In my case it means the absolute link rate is 130Mbit iso 270 in this
>>configuration.
>>
>>I can imagine using 4 chains will even reduce performance a lot more.
>>
>>You should really try to use use H + V+ (-45) + (+45).
>>
>>Also, ensure radio's at both sides have the chains on identical
>>polarization. (Chain0 - V,  Chain1 - H, ..)
>>
>>
>>Regards,
>>
>>Koen
>>
>>>
>>> On Wed, Sep 25, 2019 at 5:11 PM +0200, "Ben Greear"
>>> > wrote:
>>>
>>>     Is this short distance or long?
>>>
>>>     Please try short distance with omni antenna first to make sure
>>you are not hitting the delayed-ack issue
>>>     or problems with your antenna.
>>>
>>>     Change your antenna orientation so that they point in different
>>directions.
>>>
>>>     Thanks,
>>>     Ben
>>>
>>>     On 9/25/19 6:49 AM, support@maxnet.al wrote:
>>>     > Hello,
>>>     >
>>>     > Today i managed to connect the station wds at 80MHz channel.
>>Signal is -56 and i have very low datarates. I have attached a photo.
>>>     >
>>>     >   When station was ddwrt and AP openwrt the datarates were
>>866/433. TX won't do more than VHT-NSS 1 although RX it's not good
>>either because it's a 4 chain
>>>     > radio and it should do VHT-NSS4.
>>>     >
>>>     > Thank you,
>>>     > Klevis
>>>     >
>>>     >
>>>     >
>>>     >
>>>     > On Mon, Sep 23, 2019 at 6:36 PM +0200, "Ben Greear" > wrote: >
>>> Weeks or months or whenever I have time, and maybe
>>>     sooner if someone > wants to sponsor it. Please understand I, and
>>>     probably everyone else working > on OpenWRT, am busy with lots of
>>>     other projects and community work often > gets pushed to the back
>>>     burner. > > Thanks, > Ben > > On 9/23/19 8:18 AM,
>>>     support@maxnet.al wrote: > > Hi Ben, > > > > When do you think
>>you
>>>     might be able to make those changes to your driver? > > > >
>>>     Thanks, > > Klevis. > > > > > > > > On 2019-09-20 13:00, Ben
>>>     Greear wrote: > >> On 9/20/19 12:55 PM, Vincent Wiemann wrote: >
>>>     >>> Hi Klevis, > >>> > >>> have you tried it with a short
>>>     distance? > >>> If you did you should better ask Ben Greear
>>>     directly. > >> > >> I asked him to post publicly so that others
>>>     can help answer and that > >> my own answers might > >> help
>>>     someone else. > >> > >> I have some patches that should enable
>>>     coverage class settings for > >> wave-2, but I am too busy > >>
>>>     with other things right now to port them to my ath10k-ct
>>>     driver/firmware. > >> > >> Thanks, > >> Ben > >> > >>> > >>> By
>>>     the way ath10k gen 2 chipsets don't work very well with long
>>>     distance links without a > >>> special feature which
>>>     implementation is only available to companies like Ubiquiti and
>>>     very few > >>> people who have an own reverse-engineered
>>>     implementation. > >>> It works on IPQ401X, QCA9886 and QCA9888
>>>     based chips only. > >>> > >>> And it is not possible to set a
>>>     coverage class for gen 2 devices, yet as far as I know due to
>>>     missing > >>> documentation and implementation (correct me if
>>that
>>>     information is outdated). > >>> Furthermore a high channel width
>>>     often results in problems > >>> due to lower receiver
>>sensibility.
>>>     > >>> We have better experiences with lower channel widths and
>>>     sometimes get more throughput with that. > >>> > >>> Actually I
>>>     think this does not explain your connection issues as 13 km is
>>not
>>>     that much. > >>> > >>> Regards, > >>> > >>> Vincent Wiemann > >>>
>>>     > >>> On 20.09.19 18:30, support@maxnet.al wrote: > >>>> Hello
>>>     everyone, > >>>> > >>>> I am trying to setup a custom made
>>outdoor
>>>     link with Apu2d2 board devices and QCA9994 cards from compex.
>>>     After i installed openwrt and ath10k ct driver, > >>>> kmod
>>ath10k
>>>     and board-2.bin the device can run a 80MHz channel in WDS AP. The
>>>     problem is that it won't run as station or station wds. It can
>>>     scan > >>>> the SSIDs but won't connect them. > >>>> > >>>> Any
>>>     suggestion? > >>>> > >>>> Thank you! > >>>> Klevis > >>>> > >>> >
>>>     >>> _______________________________________________ > >>>
>>>     openwrt-devel mailing list > >>> openwrt-devel@lists.openwrt.org
>>>
>>>     >>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel >
>>>>>
>>>     > > > > > -- > Ben GreearCandela Technologies Inc
>>>     http://www.candelatech.com > -- Ben Greear Candela Technologies
>>>     Inc http://www.candelatech.com
>>>
>>>
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists.openwrt.org
>>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

it shows 4 chains; note the value 0xf which in 3ch case is 0x7, 2ch
case 0x3 and single chain case 0x1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
