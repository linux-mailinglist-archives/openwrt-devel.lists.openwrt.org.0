Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 110A8A0EA5
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 02:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=phZbHluS4fsu4xsNXkxqey7vrdIs448UXIxE8z+8Zsc=; b=E8rkIkymUe9bRO+Y/v/Dsbt3L
	ErIA15XuDu9zhGN/zFrqxanYaMD4gCsSLcwulT0nRQ1Z1K1l1SxkN8Gh4nHY4ayYEsERYZnKkPPIF
	AelGHwvr4WCZdjgFA2jCAekWSo7Xn+eNsMbKOhozSmFqWj6/A8LMGFhIf1mHHWeAswlwW8v8D+9zV
	BfmSv3GmF9yTy2ohH7m+sMasK/bFhHKnuLYQ+NjIbki3oNoTKhAXdG0W9BYTEDpXpJbVf/6MGp3OL
	AfbW7TKen4vSX/CjcvGjSZeIsbw7pllLgLeujXMdHNRUXdCniPMAPNdsc2l6n/44PalFtc8MAHjSp
	pz1EMIOAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i38P8-0002GB-Jv; Thu, 29 Aug 2019 00:35:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i38Oy-0001r9-7K
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 00:35:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id u16so1614591wrr.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 17:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=XUaictErWwqefuZ91YgCBzTEVppKoPJJMXE/7stTxf8=;
 b=Sn5F1dEqYCi0d4TJBAW55Eurk7S0631OXRSewIZlzXxwA6r6a3JbC25vyqeU75lXpd
 8OjM9LMbdzXvw66fZAzNmcS5XrZDlRp6hRNsCUS5qMQI6UTELGhFZkykcr99VLh2FIiN
 f/8TwzOqdlpA4k1tZN/UlPgAMWSd6Iy9P0NB2bKGvsxmC3/CHvIC8+fO3MQ7MOLyfeRM
 FF8SMBF8yueaUJCJLZuk6ayFUZmJMVsQoCwRKnxu4tmja5wzj3WwGLpw0lLmmTH3Cm5h
 l4kbI/xcJsppQ+nzK6W+daUjj71h1HLx3789/AiXixO8VY9h2x0+UKntF+nIj4hWclmr
 Uz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=XUaictErWwqefuZ91YgCBzTEVppKoPJJMXE/7stTxf8=;
 b=RF2Z7s49E+jHO8R9FC/Upck5erhKOs6RdfE75oPjKW8ZDecm9CxAl7hEfvycfH96RZ
 IH+KuwjWPFeyhQKaztud/lQOLaAL1AeBpn99CfLhpHF23H8elM7SHIEmSHJL9g5s3A2X
 jskeCD5dH+TSd0veNZnIIu5U5JsmSCMSv+rdQX626wlBbz9+8+H0wjHzz95EuxlelOao
 FvzPod3YHocZYDNqduW5TqgTw8jNEY/UExYAkyUQ9UjvD3bPMWpQbimFhu08/bCiffQU
 qyh2LWdUDzMpHoScZZDH6UEtPiJjQjY94kBQPMwbwPQXdVh2Mrt11cLPUJr9c42ncFS2
 y84Q==
X-Gm-Message-State: APjAAAXbFhonB6V/mX0j8dFPSHYJ1xKrZxuVLxuglubCSCcPhuyXQSlH
 ZAw1K6zkITPXCHxEKgZ813I=
X-Google-Smtp-Source: APXvYqzN1KPdWm4Ug5j9oXYg4vZu60NTQiK/NvTGUIm5XrQpGMkLshuglEvjL22pV4HDNXaDSOkbkQ==
X-Received: by 2002:adf:c613:: with SMTP id n19mr7551650wrg.109.1567038898466; 
 Wed, 28 Aug 2019 17:34:58 -0700 (PDT)
Received: from gatosaldo (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id b15sm613697wrt.77.2019.08.28.17.34.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 17:34:57 -0700 (PDT)
Date: Thu, 29 Aug 2019 02:34:55 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: =?ISO-8859-15?Q?Bj=F8rn_Mork?= <bjorn@mork.no>
In-Reply-To: <878srdp6zt.fsf@miraculix.mork.no>
Message-ID: <alpine.LNX.2.21.99999.352.1908290226520.4679@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
 <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
 <alpine.LNX.2.21.99999.352.1908281820530.3996@localhost.localdomain>
 <878srdp6zt.fsf@miraculix.mork.no>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-1138987938-1567038897=:4679"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_173500_295048_2217F5EF 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
 (Fritz_Box_HW198))
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1138987938-1567038897=:4679
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Dear Bjorn,
Thank you very very much! You've been always helpful tome... :)

thank you for pointing me at your work - it has been very useful. I was using as references sources from the TP-Link Archer D2.

thanks to your hints and work, I arrived to some of the conclusions you did. Your device was booting, instead in my case I am not able to get it past the PMU issue.
And even ignoring this error I end up having issues with the GPTU.

I guess the FRITZ!BOX3272 is maybe of another family of devices. don't know, running out of ideas.
Any hint of what I might try next?
I didn't find GPL code for this device from AVM - but maybe it's just me. Any help would be really apreciated.

BTW - PMU activation fails in sysctrl.c, in function
static int pmu_enable(struct clk *clk) ...

Enrico

On Wed, 28 Aug 2019, Bjørn Mork wrote:

> Date: Wed, 28 Aug 2019 18:52:38
> From: Bjørn Mork <bjorn@mork.no>
> To: Enrico Mioso <mrkiko.rs@gmail.com>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
>     Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
>     (Fritz_Box_HW198))
> 
> Enrico Mioso <mrkiko.rs@gmail.com> writes:
>
>> I am still trying to port a FRITZ!BOX3272 device to OpenWRt.
>> I tried to grab as much informations as I could, but I am arriving to the conclusion I hould be doing something really wrong.
>>
>> First of all, the kernel panics due to a data abort at
>> linux-4.19.66/arch/mips/lantiq/xway/sysctrl.c, line 478
>> /* make sure to unprotect the memory region where flash is located */
>> ltq_ebu_w32(ltq_ebu_r32(LTQ_EBU_BUSCON0) & ~EBU_WRDIS, LTQ_EBU_BUSCON0);
> ..
>> [SYSTEM:] AR10 on 500MHz/250MHz/250MHz
>>
>> ..
>> Eva_AVM >
>>
>>
>>
>>
>>
>>
>>
>> ......................................................................................[    0.000000] Linux version 4.19.66 (mrkiko@mStation) (gcc version 7.4.0 (OpenWrt GCC 7.4.0 r10863-e1dcfe02b2)) #0 SMP Mon Aug 26 16:21:13 2019
>> [    0.000000] SoC: xRX300 rev 1.2
>
>
> Right, so this is AR10/xRX300. Been there, trying to get a D-Link
> DWR-956 running, and gave up without getting the T-Shirt ;-)
>
> I believe the problem you are hitting right now is caused by wrong
> address for the EBU.  It is not at 0x1E105300 like for the VR9 etc, but
> at 0x16000000 on the AR10.
>
> So change this:
>
> 		ebu0: ebu@e105300 {
> 			compatible = "lantiq,ebu-xway";
> 			reg = <0xe105300 0x100>;
> 		};
>
> into
>
> 		ebu0: ebu@6000000 {
> 			compatible = "lantiq,ebu-xway";
> 			reg = <0x6000000 0x100>;
> 		};
>
>
> I was stuck the same place for quite some time....
>
> I pushed my abandoned DWR-956 branch here now:
> https://github.com/bmork/OpenWrt/tree/dwr-956-wip
> in case it is of any use to you.
>
> Note that this branch is a terrible mess of Work-in-Progress, meant for
> my eyes only.  And even I can't make much sense out of it anymore.  So
> you might be better off just ignoring it.  Your call.
>
>
>
>
> Bjørn
>
--8323328-1138987938-1567038897=:4679
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323328-1138987938-1567038897=:4679--

