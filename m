Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F1914AB72
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 22:06:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=641KFfFqc5C03yznKYLfnLPk4dB/zJmwXofYb9wZxoA=; b=suODWGEAXczTze
	/82XH2g1FtkVmZ8hdfrGHu/mF8alpi7saqmNJl1EUZuWkNpYwUUy8BdRJewVeYoVavuqyQSy73qZ8
	aHIgaBkPTudI6zB3ZhsqKd0C/aIqyCpWD37wU/uArQP1mbkdbRKgwWhAMEPlQMKb8oMTaA8cGejgo
	OclYQ4Yc6ASncR5CuDYQHEf2wBCG66Wrxqiat787GgiDTgWSLu7O+L/4AGppRTHN5bXuwK+Kl7NLb
	sf0jmq+c8Vh8JiKcB6IOOKmU9SAUyf8KZpI9n+nPvJTm6T2FnyMrS9tnIECaGjKbpuQdC3mwxV8wb
	PjYw9d2VOz9XX22lVjMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwBaJ-0000tA-Gz; Mon, 27 Jan 2020 21:06:15 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwBaC-0000sd-Lq
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 21:06:10 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id y2so1356522qvu.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Jan 2020 13:06:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=M7jEDAEeXvhCNpM3f45Z8iqPv9d0IoHcp9FHn0iM91Q=;
 b=TP0kFoVpV4/5iUhH0sOocmpBpX3aC6AvWNQCxkipWEcoM8yQ98RWWevHEGv2p1+P6j
 HoFriMvdeA630p/O8vvbVbxylWC0L+EIEI2fsGqNXeEBMQ1LtHQ3MqPS6DkQek8pBgAh
 UFsV2XY/3oC08cfgdMKa7Uh0WOSDVEQ2Sjr1B5B9TsccCartXyuazhnHV1YWQddkFQGg
 qUo55FGZjpVT3esZ2KHNlgldN82QcscTdHhpsimD0WCTgli7yBund/IahAZ2dMEoPXVK
 goRqUfhV/zavHOjEDN97HxeMaeaCTPeLNz/0ySWdE7mpXWBrIJM73nnxaLd/rjJOV6An
 iLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=M7jEDAEeXvhCNpM3f45Z8iqPv9d0IoHcp9FHn0iM91Q=;
 b=Amzu/IRFsaUSfOlOWesOdi2PDs/Izk76etVZw1M1fu3sHmYffINTCvXLtbK0uMI3y+
 i3vibIxx97tIEgG+KsdlKCHkd0QR0N9V2Z86+Ptxwjy4MG28i2tZWdu5sOr9fPMhU8YT
 lX59tOsiZ2GGw1WID8r2CXPSMxqO9hhE4bYf7Yp7EYR+GRGFWLf/ch1pbUR/YljogAOC
 glhrd6hQFuHa1lTr6njCck2dJmYG3rD6L1/mxflimsoXpqu6Cpv9b4SsiOJ7wl5jFSIa
 dxnPNwZYBabsMbaE0RKj8F8Tvu+0xf0D0mGPgTWkxixmpZxNG2z2i6fThSJ9WqjlziKc
 +toQ==
X-Gm-Message-State: APjAAAUdSrBd8kHwDRAEGVulLr0Ig1TVZIIne05pZXzs1MV5Hg1POXbp
 1yzLd61VqykK7mxIDQ8Z7EBsvpHEcNFnCRbQ7EI=
X-Google-Smtp-Source: APXvYqwrPxxDOPlwIHNfnYzUbNo1eWBis+C9meSIUmJugFwNxgUIyjPuF6jBygZ1bpywILu3VUsDwLjBAwXcNj13SNw=
X-Received: by 2002:ad4:442c:: with SMTP id e12mr17501189qvt.19.1580159163728; 
 Mon, 27 Jan 2020 13:06:03 -0800 (PST)
MIME-Version: 1.0
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
 <CAMdYzYrWaxjP_UMASDjw1Y-PbdHgVzWWfRc9o3cBiiOLWa=+5w@mail.gmail.com>
 <d963c081-fd20-db13-09db-434c30404389@gmail.com>
In-Reply-To: <d963c081-fd20-db13-09db-434c30404389@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 27 Jan 2020 16:05:27 -0500
Message-ID: <CAMdYzYoeXOunh+QmG_CY-DyBXHQhoW9D0MZqcw9DyJGad_AP5A@mail.gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_130608_738747_A91FA922 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 gch981213@gmail.com, ansuelsmth@gmail.com, David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Jan 27, 2020 at 4:00 PM Piotr Dymacz <pepe2k@gmail.com> wrote:
>
> Hi Peter,
>
> On 27.01.2020 19:57, Peter Geis wrote:
> > On Mon, Jan 27, 2020 at 1:35 PM Adrian Schmutzler
> > <mail@adrianschmutzler.de> wrote:
> >>
> >> Just a quick one:
> >>
> >> > > So, no matter what we do, there is no easy way forward.
> >> >
> >> > We could remove all ar71xx -> ath79 migration helper scripts, ar71xx
> >> > board names from supported devices lists in ath79 images and make the
> >> > target a brand new, without any concerns about soon-to-be obsolete ar71xx ;)
> >>
> >> At the moment, I'm actually mostly inclined towards this solution.
> >>
> >> However, for me personally SUPPORTED_DEVICES was always more a "don't brick entirely" flag, so I never expected it to ensure 100 % config compatibility. More like preventing me from flashing ubnt,unifi image onto tplink,wdr-4300-v1. This impression might have been wrong, though.
> >>
> >> But as mentioned by Ansuel, there are other incompatible switches to come (and some are already waiting), and unless we want to create new targets or rename devices in these cases, we have to think about different "levels" of compatibility anyway beyond ar71xx->ath79.
> >
> > Wouldn't it be reasonable to put up a warning that migrating from
> > ar71xx->ath79 will require a reset of networking configuration?
> > Then all you need to do is detect when that sort of upgrade is
> > occurring and nuke the requisite files.
>
> I believe we already have such a 'warning' on the Wiki: [0]. The exact
> problem is 'detecting that sort of upgrade' (what about user migrating
> device under 19.07 but between ar71xx -> ath79 and then back to ar71xx?).
> Also, the problem doesn't affect all the devices so the users have to
> first check whether the device they migrate/upgrade has to be
> (sys)upgraded without preserved settings or not.
>
> > Also I don't know bout y'all, but I usually take a major revision
> > upgrade as an opportunity to hard reset and rebuild anyways. (Years of
> > ingrained ddwrt habits)
>
> But it's not a general rule and, at least in case of generic/basic
> settings, user shouldn't be worried about upgrading between major
> versions with preserving settings. Otherwise, the whole idea doesn't
> make much sense and we should just prevent settings backup during major
> versions switch.

Excellent point!
Here's an odd possibility, just to throw at the wall.
What about building a special transition image, specifically for
moving from ar71xx to ath79.
If you want to retain the ability to return to ar71xx have an image to
go the opposite way.

Or a metadata package to do the conversion post flash.

Because the option (which seems pretty drastic, unless the size could
be minimized) of having a near permanent conversion script built into
the firmware seems rather costly.

>
> [0]
> https://openwrt.org/docs/guide-user/installation/ar71xx.to.ath79#upgrade_from_ar71xx_to_ath79
>
> --
> Cheers,
> Piotr
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
