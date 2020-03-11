Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB67F181922
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 14:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zFc7Tf7SnOuFKyHtyNoCt+kXKItkiselr2phjkNxNtw=; b=J6K5nyH4ZG955M5fQ9j104jCNK
	hfSm31+G61AgZGivMdzNQecaztM4XaMJF4hBT8SG9YLI0iL/lr8xpu/Wi4PwDx1XX3k0QDuxTrtVg
	2DDyQD4rBzolBKQvOOOjpyL0oGwaNJkm2A8zlOBb8FpgUdvP0He4sVUpXw3RBxfxup+wumLQKvIO5
	1T2CNrVeKt5AkM36hkZbZNy7IsMY/LOSzh1eVuLV8WFSTJY4GO7qzV6Zp430FBtaoAwzVG5v2ve3h
	T6j37gxHbfV3TO8XDqoOI3ecrSiu4wRh0OH5Kxk2qZKeHUQWIMnQEHbqtnbT+HI8ghNJPmd0bTAwP
	Mfa6L2aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC13s-0003j1-0r; Wed, 11 Mar 2020 13:06:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC13J-0003TM-44
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 13:05:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8502A37CA;
 Wed, 11 Mar 2020 14:05:34 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 712949f1;
 Wed, 11 Mar 2020 14:05:21 +0100 (CET)
Date: Wed, 11 Mar 2020 14:05:21 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20200311130521.GB17292@meh.true.cz>
References: <20200311112558.21961-1-ynezz@true.cz>
 <009801d5f7a4$2417e2a0$6c47a7e0$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <009801d5f7a4$2417e2a0$6c47a7e0$@adrianschmutzler.de>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_060537_386406_AFC191B0 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: switch to 5.4 kernel
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
Cc: 'Tim Harvey' <tharvey@gateworks.com>, openwrt-devel@lists.openwrt.org,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <mail@adrianschmutzler.de> [2020-03-11 13:54:02]:

> > --- a/target/linux/imx6/Makefile
> > +++ b/target/linux/imx6/Makefile
> > @@ -14,7 +14,7 @@ CPU_TYPE:=cortex-a9
> >  CPU_SUBTYPE:=neon
> >  MAINTAINER:=Luka Perkov <luka@openwrt.org>
> > 
> > -KERNEL_PATCHVER:=4.19
> > +KERNEL_PATCHVER:=5.4
> >  KERNEL_TESTING_PATCHVER:=5.4
> 
> Did you keep TESTING_PATCHVER by intention (I do not think there is a rule for it?)?

Yes, I don't see the reason for adding and removing of that line every few
months, but if that's prefered, fine with me and I can remove it :-)

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
