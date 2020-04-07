Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236A51A0CFB
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 13:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yCQkf2zVGrufDM3G1d0MtRl/vkySEC03gwmSZ5xKTsU=; b=YvsYuUOxourw4jocFFGtJmg59v
	IwtGDWcxX60gP06OKH30aZ7b0s4ReufQ0jECKsBiJRtkiNdVkIrVnmFx+1w8zVaMhknbl1J9cF/AV
	V5XQ66zHQXy10q8oNNH0ipNroZS9kCX700dulef/yn8yhQLWuMoJmDxFtKQba1G8NinZoGiajpmNX
	zUOngtiV1edALuBhFvwSBfuR6Q+G3ZiLz7BL9aVNGGfK5JxxSHy32AHPSeur87hH/wco6rUS/kg3h
	SIs+7JhSfPdODXl1P2lzRCObQoqHJmrxCW1ULdiBW37jFVtTD5PW7OzmjQIo58J6i2e/quO2Z6ttj
	t5RID5pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLmcX-00051t-Rz; Tue, 07 Apr 2020 11:42:21 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLmcF-00051P-Mv
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 11:42:06 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D44F64306;
 Tue,  7 Apr 2020 13:41:56 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ecf6bd2d;
 Tue, 7 Apr 2020 13:41:42 +0200 (CEST)
Date: Tue, 7 Apr 2020 13:41:42 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Eneas Queiroz <cotequeiroz@gmail.com>
Message-ID: <20200407114142.GB39350@meh.true.cz>
References: <20200406201036.19144-1-cotequeiroz@gmail.com>
 <20200407081921.GA39350@meh.true.cz>
 <CAPxccB1k0GnOg1f45ZciHYxbM94hSi=NPNZnqwsQojTuYFCydA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPxccB1k0GnOg1f45ZciHYxbM94hSi=NPNZnqwsQojTuYFCydA@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_044203_958984_98B43EBC 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH 0/6] build: update scritps/config to
 kconfig-v5.6
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Eneas Queiroz <cotequeiroz@gmail.com> [2020-04-07 08:20:44]:

> I'm in the dark here with exactly what went wrong

I've made the build step more verbose[1]:

 make[2]: Entering directory '/builds/ynezz/openwrt/scripts/config'
 cc -O2    -c -o conf.o conf.c
 cc -O2    -c -o confdata.o confdata.c
 cc -O2    -c -o expr.o expr.c
 bison -l -d -b parser parser.y
 make[2]: bison: Command not found
 Makefile:95: recipe for target 'parser.tab.h' failed

> but I've caught an oversight on my part: Linux now requires flex & bison
> to build files that it used to ship prebuilt.  I can either restore the
> previous behavior, or we can require them as well, and then I'll add a check
> for them--and later perhaps remove them from tools/?  What do you think?

I think, that this additional dependencies doesn't make much sense if it was
working for years without those. I would prefer to ship preprocessed files
instead, if that would work just fine. 

1. https://gitlab.com/ynezz/openwrt/-/jobs/501743309

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
