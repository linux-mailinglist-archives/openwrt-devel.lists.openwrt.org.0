Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA651E0791
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 09:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vnt5AQT9HDiPR5Zl+4tttN+UyRnCtkg4uzNz0skcT1c=; b=TeBmaeNmLMAh3c
	oiqX5typ8TiI7FifqQHXbVsV8knXDwYJULFg8wpm+e8KkN5mFgbCP+hhs6pp9APaExu8z/oOd5XcJ
	u0r4RA+9Poh6el9fnVYmdLNkGeDHMm8RIJyeglBgiYr6jvAwGUv7Z2XnkB6klzyr0PmIkwqF/KDLz
	uxNNbAmXh+Bl+1AI0IvGDZUbSm6QGRDzPzrVW/Y/MT4pQXrsjSo9EzNvQooLmtW0oH62w3Ph6XyVl
	HZIweIk6x3ta7gjn21szaMS8hmOOTWxjZHIKVInPS76ySVx4fbku2++fRsheavh4rcg5VirWeBzYk
	Vv8QtB0arTUz1bfwPf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd7JF-0007JG-Sr; Mon, 25 May 2020 07:14:05 +0000
Received: from mail-il1-x12c.google.com ([2607:f8b0:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd7J8-0007DU-Aa
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 07:13:59 +0000
Received: by mail-il1-x12c.google.com with SMTP id j3so16430816ilk.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 May 2020 00:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ObtLY/AAcqCOxwamiDPp62Ubh9HfcjTcvUyXjFK+s14=;
 b=ymoNwMimcBDOHzKVc4roxaKfoKZ0bgyMT0RFQWFq13ldsuwH+3eFpAIPRdxDwAZMYW
 4/wBU/5ccg6apHbB8NQl9DFPO79tBp1SqHMqh3LUNUSuP3PnlsYAeI2482ybGGYXNP+L
 CyfZKP+kZ1ajiftlwmT8a1uD9x/84T7Th4AXuYulUYOl9sA/PtdyOl0Cntty/dWt5+ih
 9IcHodqeZaoKaa71oaPlvSkEkXrOTtgrB0u0sb9tJtWB6OYLx6s1L6r9dKPPEBWOmH/Y
 UBGz2rWSieF1wWS38aPDz0tVHjszxU3CQzFZbh6WOBPsyPjMFdj0dydCikXwJIMjLTK4
 kIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ObtLY/AAcqCOxwamiDPp62Ubh9HfcjTcvUyXjFK+s14=;
 b=ZulW0Pn5RAotaqWiA4yR9AqYR3JwSZC/5PNbpHJsuNJiAv/jDvGgxAbVIQAK8akknL
 UzeiEn3tYzOTe5+SOuSwUCUDlHz1aFmoCT6+TSH7voDWkZtlXSzU8wXhfmr1br9qNqpk
 9xjuXBXrWDhNUSUjiXQWuwXr62RJ3+Z1z0egbdAF07JHUHM6WDu8aT+fjYwoUnru3DLJ
 8g0b3K1xcG3ufG8563+uToXIq3rWfrGAIq35lEy6DHhwY+gpd3kx3D9QTHzZAbdj0P0a
 1eN6JBtuNvXrYOnJsWHlm0KHv/VigqaS7h04X1NQ0x2cnVxR0z7NrOjqgqqOQrxg2nUi
 Qj/g==
X-Gm-Message-State: AOAM531yheTrzRq14PJcgmFBSZqfUICeFSyhVBEKF2ENGx2SuXs7Mbt9
 itOnsAaNQs7x239C8GvORw8MVAaH3M6s09pxVcemcM6aPDM6Kg==
X-Google-Smtp-Source: ABdhPJwtIJZ8G4Apeo29VgP4bMJJMyrTc17PvBcyeZrxxPhW2TiUKCslN46cyoJMzHK1+uRdjfFaI/NXFfHSPz7bKAY=
X-Received: by 2002:a05:6e02:1287:: with SMTP id
 y7mr21405266ilq.63.1590390836191; 
 Mon, 25 May 2020 00:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAAP7ucKJ78gCg1y+60afcL1rYw4XpHxwwdZv97DweGLesaNfCg@mail.gmail.com>
 <CAJQUmm6vjAkiGA+u_CRUG40=r_TBpJJJwUfP5uKdoOpjuN56Kg@mail.gmail.com>
In-Reply-To: <CAJQUmm6vjAkiGA+u_CRUG40=r_TBpJJJwUfP5uKdoOpjuN56Kg@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Mon, 25 May 2020 09:13:45 +0200
Message-ID: <CAAP7ucKpK5V2Dc7XsG=NwfuUpDx962fgnJWZpUaSNgYz57f0YA@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_001358_426123_7016D976 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] netifd: per-interface MTU settings vs per-route
 MTU settings?
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey,

>>
>> There's an ongoing discussion in the ModemManager package in github
>> related to how the MTU may be configured in the network interface
>> based on what the MM bearer object reports:
>> https://github.com/openwrt/packages/issues/11383
>>
>> E.g.:
>>
>> $ ip route show
>> default via 25.225.105.222 dev wwan0 proto static src 25.225.105.221 mtu 1430
>>
>> Looks like the protocol handler implementation for netifd may allow
>> setting the MTU to the routes associated with the network interface,
>> instead of assigning the MTU value to the interface itself. Are both
>> methods completely equivalent? Is there any reason to avoid setting
>> the MTU in the interface when using netifd, or just not implemented
>> yet?
>>
>> Cheers!
>>
>> --
>> Aleksander
>> https://aleksander.es
>
>
>
>
> I'm actually not aware of any method to set the interface MTU via netifd that isn't a UCI setting.
>

While running as a protocol handler under netifd, we can do this while
setting up the default route:
  proto_add_ipv4_route "0.0.0.0" "0" "${gateway}" "${address}"
"${metric}" "${mtu}"
And the given ${mtu} will be set for the route created.

What we're looking for is a way to setup the MTU for the whole network
interface from within the protocol handler automatically.

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
