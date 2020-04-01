Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40B219AD29
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 15:53:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gNQXfdu7cW2F2I+ajt33aZQOYiXe7LRMH59fCQsb0Ho=; b=o73+MjQboMcD4U/Khv790CgXyD
	giStdX8i34GAmOxXbNTdqOO2Yfcl46TTWmMPiybAjOfWBSUeOOTB03X12iwd/mtKMq+OTtMyfl9BL
	L8lYnx2FbpFsBGVORvjDT7JGpwbPnLL+OXenPG/BAhGmND7GqT/nmyOtOljg5XNEFJawPruOsj0Sk
	4pmlSPVOQKInZn7wkAbv0t/BznA0m8gsH9BQqmzxu0hHLlbX+h69yRfdSv149Mu3xexQhfggqdykB
	Qu8YJfNQLTqpKk27lnepy1kTXFbGAnqABm03rfEncnhMUTudZLJ3HCfzpCbgfHknJo1BVvmxuCLHi
	VpLAsgoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdnc-0003F1-J0; Wed, 01 Apr 2020 13:52:56 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdnT-0003EH-H9
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 13:52:49 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B90FC41A3;
 Wed,  1 Apr 2020 15:52:43 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ff994cfe;
 Wed, 1 Apr 2020 15:52:29 +0200 (CEST)
Date: Wed, 1 Apr 2020 15:52:29 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <20200401135229.GE21251@meh.true.cz>
References: <20200331092158.5787-1-ynezz@true.cz>
 <1d98f481-8d58-0180-291a-ecf0da707b5e@o2.pl>
 <18882612.h8XCQiH2nZ@debian64>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18882612.h8XCQiH2nZ@debian64>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_065247_724904_92946DB2 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu,
 tegra: make CPU subtype default to vfp3-d16
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Christian Lamparter <chunkeey@gmail.com> [2020-04-01 15:43:40]:

Hi Christian,

> > > diff --git a/include/target.mk b/include/target.mk
> > > index 9bd4c14936c1..94ea1a9e0001 100644
> > > --- a/include/target.mk
> > > +++ b/include/target.mk
> > > @@ -179,6 +179,9 @@ ifeq ($(DUMP),1)
> > >    endif
> > >    ifneq ($(findstring arm,$(ARCH)),)
> > >      CPU_TYPE ?= xscale
> > > +    ifeq ($(CONFIG_SOFT_FLOAT),)
> > > +      CPU_CFLAGS_vfpv3 = -mfpu=vfpv3-d16
> > > +    endif
> 
> The question I'm pondering is: Do you really want to maintain this specifc maps
> for this (only this arch) or not? 

Ideally no, sure, but I wasn't aware about the other options. I don't own HW
with this CPUs, so have no prior experience.

> Because I do think this will creep up sooner or later again. 

Yeah, thats likely going to happen :-)

> So we could also defuse this a bit by replacing that monicer "vfpv3" (as
> this is a gcc/binutils thing and not under our control) with something
> "clearly from OpenWrt". like CPU_CFLAGS_fpu = -mfpu=vfpv3-d16 (if that
> doesn't clash with something else).

You mean put this explicitly in the target/linux/tegra/Makefile?

> But then again, I'm not here to tell you what to do. 

I'm all in to fix this properly.

> If you want your patch as-is then go for it! :D

Then I would commit it without even asking for review, right? :-)

Thanks!


Cheers,

Petr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
