Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9F6100C65
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 20:48:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dfm7timJygGAAs4nIrg0kuJvn/SQunkRGBgVY3COwh4=; b=P8yeRaO7BoMwIn
	7rDQXZ59aduon4PQlt8YaJZDN4qySQrv5R7D0pzUGlbFd/HErHAl4Do9D2HCnU14MLhz0hHau0U3H
	HbfMIRLp5uMod2k1ehU8/aIqo6OzP/mmwqEiTUB+0L3xhBGaXw49zWp6R65PfGd1SNiBKwgWpszWl
	yeARZA9dJGQRLnR2O8tDc1zAjOs2J5udq9auEyT+YuLoXH9bS1iOj+qPysZmzDRzdPWEXGIwP+Zp7
	7bOIgymkMLIOWT4JH32jkbF1U62BBCvA2LnWY8vkVyBqV/MsYgzUa2tUh+UZIFSxWzuwbumsHMnyw
	lDSRmTjYGYpPs9DlBF0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWn0Y-0004gn-1o; Mon, 18 Nov 2019 19:48:22 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWn0Q-0004fC-34
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 19:48:16 +0000
Received: by mail-il1-x144.google.com with SMTP id i6so7756831ilr.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 Nov 2019 11:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rMLZW/e+xb0FgkfU9I1/56RwQaX682X3mgBW6TM1b/M=;
 b=ej0kd3SXxyJyS25vA2OUr/I06Pp2VNJ2f+wbtQ/sJPTmbx0L94/DTie+czUQv2l2jJ
 6PV65gQlmqgrpGto98agLOdyj7HqAI57My1uNrYxmCogeVvfeWHy/qqeMCBNlCY1TBBz
 R3cR6MBceUJXy/hPe0nFlCI+DEIneOWicjVBoCvmOLm6NsXiuXMnUa27wyYtzN0rFJl4
 ix/2ZH/ra/dBkKo1SdLoJnhQ0Zv6hHbvMk1Gf1e14AKeDYbxOQ9gltjrQbb1DfWC5Rou
 cpGPKzyOurOeCKGXAeS16E2fSdWy31S5uip+9rYMUbJvOYUmLhPs1s9zttu05sa9sRXs
 As8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rMLZW/e+xb0FgkfU9I1/56RwQaX682X3mgBW6TM1b/M=;
 b=Blg6UPjM4UbpAtdPJfzltSqqI2ZATehbsklvGjtHEB2ugSLDtylsUHyy8LbVjHJlhH
 z5a2AnHX8ZLXuiseEu7b3FLvUmDRummh0oqZW9kPn6Dpyiu/1vnD21CdjvFHC7VWPeC6
 87b4uB69CPxJE3jpR3POa0gf9l4eGqRulnUhASeajwVfqEJ+7cvat71z6aO6GLx7Pgkl
 qtZyvlZVBKTJkXZ8nFBadGQ51ptPetd2By2cYxC7oNGjPoeLWftAj4OdBLnbafm6Pq95
 AaV9BQg+JZhJePajLjumLeaRbvph95j2hoSo9lhlhu+LA9IyYQXlPdLa9VGD5Cwg0tAr
 Tg+g==
X-Gm-Message-State: APjAAAWupO4vw7rRTJoX4x8//4LEa5ghIyEziP1FRtqjhc/V440OIDJ4
 Nci66kyjJGCyn1323cDe2gfrsFaK06TqMJyWXxECzk35ZGs=
X-Google-Smtp-Source: APXvYqxnXH9LYDiqvLfFba+IrWCtR2AmPVHM9iMVk0zF0zx3U+nG34VjCp7+bHvsYTQxsPV2banMVTybiI4CGe4YMwM=
X-Received: by 2002:a92:8cd4:: with SMTP id s81mr18727491ill.45.1574106487905; 
 Mon, 18 Nov 2019 11:48:07 -0800 (PST)
MIME-Version: 1.0
References: <CAALvt2OQ-LCg=C86GkcgZkw4V-deTbxVYGsxte9iyO9E3BX_cg@mail.gmail.com>
 <20191118110716.GB19872@meh.true.cz>
 <CAALvt2N2Op+dbfGaMYnCCWdRAEqrKkwo601dmbeqqK-RKry2FQ@mail.gmail.com>
 <015a01d59e20$cb99e420$62cdac60$@adrianschmutzler.de>
In-Reply-To: <015a01d59e20$cb99e420$62cdac60$@adrianschmutzler.de>
From: Joe Ayers <joe@ayerscasa.com>
Date: Mon, 18 Nov 2019 11:47:56 -0800
Message-ID: <CAALvt2M1USiVrLjKctVpceNLooNcrzE_0uojaXZ21RnjoC-e_w@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_114814_164361_84CAD88E 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] nanostation-m-xw ath79 missing wlan sysfs pci
 entries
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 Adrian Schmutzler <mail@adrianschmutzler.de>,
 Andrew Cameron <apcameron@softhome.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> > > > On nanostation-m-xw ath79 target in master and 19.07,
> > > > "/sys/devices/pci0000:00"  does not exist.  Unable to access vendor
> > > > and device IDs, and no longer reported in "iwinfo <dev> info"
> > > >
> > > > This is working on ath79 for 'nanostation-m'.   I'm guessing the pcie
> > > > entry in dts needs more definition on the nanostation-m-xw?
> > >
> > > I don't own the device, so you either need to `git bisect` the problem down or
> > > at least start reverting kernel/mac80211 and find out which commit broke it.
> > > Ot at least provide last working Git hash for you.
> > >
> > > It would be better to create a bug report on bugs.openwrt.org, attach your
> > > .config (if you've custom image) and full dmesg as well.
> > >
> > > -- ynezz
> >
> > I will endeavor to find a good commit, but I suspect the
> > nanostation-m-xw never showed through these PCI ID attributes with
> > ath79 target.  I'm looking to obtain the subsystem_device (Ubiquiti
> > boardid) and subsystem_vendor, to subsequently know the power offset,
> > etc. ref:  /usr/share/libiwinfo/hardware.txt.
>
> XW in ar71xx sets up both wmac and ap91_pci:
> https://github.com/openwrt/openwrt/blob/master/target/linux/ar71xx/files/arch/mips/ath79/mach-ubnt-xm.c#L460
>
> In ath79, only wmac is set up. There is no pcie entry.
>
> Since those devices only have one radio (AFAIK?), the dual setup in ar71xx looks wrong to me.
>

Yes, nanostation M2/M5 XWs are one radio.    Are the Device ID (DID)
and Vendor ID (VID) registers available though (or can be made
available though) the wmac dts definition?   Is it possible, the pcie
definition is only needed to gain access to these registers?   I'm not
sure where to go from here to solve the problem, any pointers would be
helpful.

Joe AE6XE

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
