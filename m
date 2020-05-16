Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4801D5F5A
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 09:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PZ5IenANTuU6Tpg6wUxUp/46FWYUVXGlLlP888oTPI=; b=Knoh6ue8CB21ds
	4VgIUho7GFY/Qm/ByIUzyRrxRSIxUwLQaQf6pCkWXdTvGpNpLYgL2RP6lftiBN2fNZ60Ph4erZnSg
	+0ikl3wUzQemkXeTIdkMjdUy0lUG0qrH7AEJpqEtG4aOT989ke/02k43xD83pmAv31QjnwR3zmR4Y
	byp3SmDtT/irlwR+A89pgJ3iCfy+SC0AFJWWSDgn2hQvhNZNDqgeN1b4kdp3yW0/TAKe00m4ic1EA
	Z4vGS0hr0zi4Jbs1e2VHj+WNo85s7+ptMLe+0p5++A+wbtDlXEEY83t582AEeoRK4ThGOpcsAYaxD
	Atx/0jxCtQpo2j2BitSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZr6B-0004ty-NB; Sat, 16 May 2020 07:19:07 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZr62-0004tT-Oe
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 07:19:00 +0000
Received: by mail-il1-x135.google.com with SMTP id 4so4857636ilg.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 16 May 2020 00:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0aZbpWd4/MWwc8lGrJv4d81wC/qGKqgYkO+a9dajZg8=;
 b=sEX9pzV8U1G5N+mIGoiYpJ9UYll6hrpLW2IVdSDPDhxgNwM7hTD6OYGs02xPvbUhkS
 wlKADzHap3BzfsqqeL9Y1xxBuOrMosYyY+jPJe5BXMZ9HOYlX3GCHrA6DbppHKjTgL4s
 /HakN6UuRwcOJFQwXW3m5BujrKXE80Fca0BfRucyHjBQ0ZxGixLl1sXwgIqPEkEH06X/
 YzZOknlRpnl/6ZR818jFMgKb7n0uETdy38Xmlcq229P/IPzId8keZnV9ZT9ICgHXOTjn
 VHlOR3b9zSfcnf/Fx8k/sTnfdVI0M7S1l3/kybCZZOycusO+KRKaU4SiDDCyTM39Zj09
 Jobg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0aZbpWd4/MWwc8lGrJv4d81wC/qGKqgYkO+a9dajZg8=;
 b=Cw7KqFzyMhVCKNAlpS71fEfflwA913JvUiQ4EcC4TaXm8U1veon+FZk1Zn7jY0Bi6W
 yNNaJwJE2+szyxHFJZ9iJ4n8YU90YHcjAjXY9ZXVPLNXfLUuSplSHGVx2N29GaKdKxtJ
 uedL1y7UM7yMlwHdmQBaFAw35bdiPioGBtmCrTCZubAr3Q3YcAJjW/IdCZ9VCbOmxUBY
 Bc0+E8FvcKOgpfRp+xg1w/vcyBVoem5Ru8DpEtT1uS2xJR737SzK68LjvmsDbcx6VAUZ
 OI6o7PBATycRo1UijJNmUNi3Z6seKoqB8J+P3sg1gBZVBtA1xQGOn+jV2r+uc5r/VqSr
 H6qw==
X-Gm-Message-State: AOAM532jQygqzf7K4Rx86GZZoA9jG+h5ZPIBrgQgbPrD76fZ/xRZLtKA
 cqQfYT/kKSUOnaspmceG90URGFrHOQlF0z73ghpljQ==
X-Google-Smtp-Source: ABdhPJzsH9UG6bSQWBBmPeSi/g3SRHul/mTGB+A3KBc9hTwlSxM0KwEsp+nby6NtX58FNBLuaCBHy90KdTPiGPmwFsw=
X-Received: by 2002:a92:de02:: with SMTP id x2mr7312693ilm.267.1589613537367; 
 Sat, 16 May 2020 00:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200511185653.1f81ee9c@meshplusplus.com>
 <CAAP7uc+Tyfg8nmk=3qrPK4xeCOMx-m62JKMSdgxpbwA5h_4+6Q@mail.gmail.com>
 <20200513163357.5e2f924b@meshplusplus.com>
 <20200515161702.427a83aa@meshplusplus.com>
In-Reply-To: <20200515161702.427a83aa@meshplusplus.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 16 May 2020 09:18:46 +0200
Message-ID: <CAAP7ucLznRNioDaJQWu8q3ui_ZN1soLLvde34s0v6sZZfeqH+w@mail.gmail.com>
To: Alex Ballmer <alexb@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_001858_870278_D755DC73 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Quectel RM500Q failing to get ip address
 assignment with netifd and modemmanager
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
Cc: "ModemManager \(development\)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey!

> > > > root@localhost:~# mmcli -b 2
> > > >   --------------------------------
> > > >   General            |  dbus path:
> > > > /org/freedesktop/ModemManager1/Bearer/2
> > > >                      |       type: default
> > > >   --------------------------------
> > > >   Status             |  connected: yes
> > > >                      |  suspended: no
> > > >                      |  interface: wwan0
> > > >                      | ip timeout: 20
> > > >   --------------------------------
> > > >   Properties         |    roaming: allowed
> > > >   --------------------------------
> > > >   IPv4 configuration |     method: dhcp
> > >
> > > This is the issue here. It shouldn't say DHCP, it should say
> > > "static", because the WWAN network interface of all the new 5G
> > > modules are always in raw-ip instead of 802.3, and therefore MM
> > > should fallback to request static IP addressing instead of DHCP.
> > >
> > > Please try to backport the following fix:
> > > https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/commit/a8fd33ebaa80a0844c375fdb39173736d18f71cb
> > >
> > > I really haven't spent much time backporting 5G related fixes to the
> > > 1.12 branch, because they will all be released together in 1.14
> > > soon.
> > >
> >
> > I found it easier to switch my own setup to use the libqmi master
> > branch and modemmanager from the commit you mentioned. It works just
> > fine so far, wwan0 gets the correct address and the modem can ping
> > fine now.
> >
> > I attached the makefiles and patches I used for my openwrt build if
> > anyone needs them. In order to build the master branch, I also needed
> > to add
> >
> > https://github.com/autoconf-archive/autoconf-archive
> >
> > as a build dependency.
>
>
>
>
>
> I have another quick question about modemmanager support for the
> Quectel RM500Q. The commit a8fd33ebaa80a0844c375fdb39173736d18f71cb on
> the modemmanager git isn't in the current release. Will it be slated
> for the next release, and if so is there a rough time estimate as to
> when that will be?
>

If enough testing gets done with git master in the following weeks, we
can probably have a new stable 1.14 release at the beginning of June
or so. Please test with git master as much as you can!

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
