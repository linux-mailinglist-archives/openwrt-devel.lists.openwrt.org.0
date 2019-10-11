Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83C8D3C08
	for <lists+openwrt-devel@lfdr.de>; Fri, 11 Oct 2019 11:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4w/b7Q0fM/zsxxo56rgs0f8F3InmiTmxe0OVpVt/jl4=; b=sseilGSjTwDxRBOFYX5vjRTvxZ
	3yrUE9jxjik10g055dPHYbtOgbY91CwydWDTH/dWPg1RvzEEYvxgQH8y6w8hTiDwWeEvval673NlC
	Cza1xp5NTVhkkRz3uBa2/fRsmiKnM5L6syez+pqL+xUHoo8elLoETLjXAzL6gPOBvoI2v/WXJcudM
	F+oL1oWkS1JPnKYbhOTdpbOH7MIYFDlql2aiELAX4crKEx5xTRBdsKUswbL8XFCbYShCyvDXCep6r
	WYvpbmqO1arNSIOLglor/8vrNLgz48vg2i1F92Z6S5Aej00fsoavAiJywOkkn2zit1BKcQF9UBMmN
	B7phLFIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqzh-0000jN-36; Fri, 11 Oct 2019 09:13:53 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqzY-0000it-1i
 for openwrt-devel@lists.openwrt.org; Fri, 11 Oct 2019 09:13:45 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 187DD411D;
 Fri, 11 Oct 2019 11:13:38 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 9b44adc8;
 Fri, 11 Oct 2019 11:13:28 +0200 (CEST)
Date: Fri, 11 Oct 2019 11:13:28 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191011091328.GE82174@meh.true.cz>
References: <20191011084204.19790-1-ynezz@true.cz>
 <CAKxU2N-=E8T0pFfep5t6cn7yWP=8_Mb2Nbge8DX38tC6E=+D2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N-=E8T0pFfep5t6cn7yWP=8_Mb2Nbge8DX38tC6E=+D2Q@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_021344_234992_FA17A6B0 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
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
Subject: Re: [OpenWrt-Devel] [PATCH urngd 0/4] sync with upstream,
 fixes and GitLab CI
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Rosen Penev <rosenp@gmail.com> [2019-10-11 01:49:56]:

Hi,

> Is this related to
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20191011&id=3f2dc2798b81531fd93a3b9b7c39da47ec689e55

no, I doubt that. In my case it was simply scan-build complaining[1] about
logic error in jitterentropy-base.c and I wanted to fix that, so as always
I've first tried to update to latest upstream version available where the
problem was luckily gone.

1. https://ynezz.gitlab.io/-/openwrt-urngd/-/jobs/318246115/artifacts/build/scan/2019-10-11-090723-297-1/index.html

Cheers,

Petr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
