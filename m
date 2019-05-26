Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD522A9C1
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 14:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WteXN4xE4PKBnqcXf90ymOlxjGyXUnJhhjfxtZ/ghRE=; b=JAf5xybHT966etp0lStZhJc09T
	170RlhAihMXyGEFEK2CIAD+9KFbAqjJA5R0XR4y7GdKirQOqhd/rLR3/Pgx70TjhjZM11UQ8Jw8xy
	S7uMhOM2lVsUgZ2mZsS7BxZCHmRSeihr1gGT6qwpfDHgNY8MiQ8dzmbY0zCaFc0J0HEW88WN3rfQD
	xJ0SbcY6gm1qlsXFhgg2CdbvXFTgqloUrPoc3u0MtHUsdI9VHav/EK6jMQTFCZ8w45Xay2LoU/RsJ
	oSVL1TtKaxQnFIo32ZKQmb6k+tR/h8nuoPEzcnUonkT8goAvKxjm4V0DlaGCOjGJSx1fgVt8uvdAC
	4bZWq8vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUsQc-00058e-16; Sun, 26 May 2019 12:39:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUsQU-00057o-6W
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 12:39:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1C8B04E7D;
 Sun, 26 May 2019 14:38:53 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 812b8329;
 Sun, 26 May 2019 14:38:51 +0200 (CEST)
Date: Sun, 26 May 2019 14:38:51 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Etienne Champetier <champetier.etienne@gmail.com>
Message-ID: <20190526123851.GF50588@meh.true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
 <CAOdf3goqqUUXc7pM8wMR=edshXdJAfqEzUi5_wGSnSyJk-P7sg@mail.gmail.com>
 <20190521145502.GB4606@meh.true.cz>
 <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOdf3gp4dAakvC7xjdA_JNzkBT0-1=6BSL0G3s2Hzake+T75fw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_053858_636405_293B520C 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH RFC 0/5] ath79: add micro non-physical
 true RNG based on timing jitter
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Stephan Mueller <smueller@chronox.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Etienne Champetier <champetier.etienne@gmail.com> [2019-05-25 12:43:25]:

Hi,

> I just want to be sure we don't make some devices worse / are not
> missing something

and I really appreciate that, the more eyes, the better.

> > Exactly, that's why it's recommended[2] to save it during EVERY shutdown, so it's
> > different EVERY boot.
> 
> I know and I'm in favour of it, but proper shutdown is not always a
> thing on router, that is why I went with getrandom() at the time

Indeed, and I think, that it served us well. Now, that we've found out, that
it's not helping that much as it was expected, and having proper source of
randomness, we could simply stop using it in default install. Should you still
need it, you can `opkg install` it back.

> > I started experiments with kmod-crypto-rng package which already contains
> > jitterentropy, drbg, krng and rng kernel modules, but it didn't improved the
> > long booting times for me on ath79.  Other reason was size of this kernel
> > module(s) as they provide much more functionality of course.
> 
> I think before anyone merge this (I'm not a core dev),

This is just an RFC, so I'm not going to merge it anyway. I'm going to post
another series of patches without the RFC and I plan to merge it myself if I
get Acked-by from at least one additional core developer. I find this part of
the system important enough, that I'm not going to push it myself.

My current plan for the new series is following:

 * enable CONFIG_WARN_ALL_UNSEEDED_RANDOM by default in all kernels

 * add urngd as default package, because it's going to improve the overall
   system randomness

 * start urngd directly in procd to get rid of the following warnings:

    random: procd: uninitialized urandom read (4 bytes read)
    procd: - ubus -
    random: ubusd: uninitialized urandom read (4 bytes read)
    random: ubusd: uninitialized urandom read (4 bytes read)
    random: ubusd: uninitialized urandom read (4 bytes read)
    procd: - init -

 * create packages for urandom-seed, getrandom and remove those from the
   default images

> we need to explain why your user space version and the kernel module
> version behave differently Is the kernel module underestimating entropy ?
> Is you user space version over estimating entropy ?

I hope, that Stephan has already provided that answer in the other email to
you.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
