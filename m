Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CF512635D
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 14:24:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NYZ0dl5gEG59OI5OGHyUUmaq8CyGI3cXUypNrBeUw/0=; b=PkL2nVJEadvA82o/52Dgt7jc4E
	Z4JbAKe/mWr7G6VPJ3PHI2Aq4B2vojLXpYdhvUM5zODbKxdrG9BxLIJOf35HHtIoFZQP0GaZt73cp
	1Xx8/3bw5H7D+NlZNF9Qtj2ib/VRumSymkBe1rnIE8ZlzlFoBmeQB4X3p16EyTA0yOYlNu0Bl+aLb
	s9QSrbtTVPz2PyIgSNWQMy56bQYFAvJ3GYdvgkP5CH4Wg+7CNSnYUbfm+B9wNj6okT6D1OxrY1uCv
	kFbtK/+T11JcVdtL5jLLzmunATJ0bxOU7ElDWHrhRX1jrPJwPK0T8TV0hNJ6anD7VLhD3PXS1Ocg1
	R64SWcAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvmK-0003qW-5w; Thu, 19 Dec 2019 13:23:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvmB-0003qC-JU
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 13:23:37 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2A7A4462F;
 Thu, 19 Dec 2019 14:23:32 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6f532f80;
 Thu, 19 Dec 2019 14:23:22 +0100 (CET)
Date: Thu, 19 Dec 2019 14:23:22 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeffery To <jeffery.to@gmail.com>
Message-ID: <20191219132322.GC70645@meh.true.cz>
References: <20191118220459.14022-1-jeffery.to@gmail.com>
 <CAJXyS=gwZ_CMm1X1-BB1Jspz_j1Auy1w-W6tiJiNSVvohp6gEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJXyS=gwZ_CMm1X1-BB1Jspz_j1Auy1w-W6tiJiNSVvohp6gEA@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_052335_795305_74508C2A 
X-CRM114-Status: UNSURE (   7.73  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain/gcc: Backport patch to fix
 unconditional MULTIARCH_DIRNAME
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeffery To <jeffery.to@gmail.com> [2019-12-19 19:50:41]:

Hi,

> On Tue, Nov 19, 2019 at 6:05 AM Jeffery To <jeffery.to@gmail.com> wrote:
> 
> > This backports the patch for GCC PR target/89587 (gcc's rs6000
> > configuration unconditionally sets MULTIARCH_DIRNAME, even when
> > multiarch is disabled).
> >
> 
> Can someone take a look at this change? This issue is preventing the Python
> 3 package from compiling for apm821xx (

just added it to my staging tree and I'll push it once it passes some tests.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
