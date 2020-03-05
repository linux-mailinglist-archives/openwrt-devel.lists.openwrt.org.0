Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E78917A578
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 13:44:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9P5RbzZtq1VDtIZJtvqzySN4BvCKD3yErRGdecZ3PT0=; b=r50UPyhC/1t3rZ4f/MLTHXZg81
	MnxHYlpTGSnewDMSAaUPX/zFfEyLEFQGmEGlsH+hpupFENHyTXOpb2OrmCA+P6/55LRM+jo+ABn5L
	hke2cZYPtbX73yXFITFqN6g3YV22gjIVXAKG3/qOa1LI2LXVBDpiIea/ZLh/HgsH1EwM7DiNAa94r
	v5sWA2KiYEJ66GXM4nhc0RsrH57PRKBeBO6Ke+TXeT0T+6lxbl4AmKcoBFIVvbQEw0kRPZv5zF0b6
	qPqvAs2oTodZXdc8s0LFCRkeU5k5PHyMfgyA6WOjImaSl8+0Sm3CmXeoDCONZNxkrlJFy1aaTrmEW
	1frkk19g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9pr3-0000R8-EW; Thu, 05 Mar 2020 12:43:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pqv-0000QU-Jc
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 12:43:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id F190D3FBC;
 Thu,  5 Mar 2020 13:43:47 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id fbb701fd;
 Thu, 5 Mar 2020 13:43:34 +0100 (CET)
Date: Thu, 5 Mar 2020 13:43:34 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Yousong Zhou <yszhou4tech@gmail.com>
Message-ID: <20200305124334.GC86312@meh.true.cz>
References: <20200305114621.31104-1-ynezz@true.cz>
 <CAECwjAi2BcdXTE4YgpDROY0Mjs_CeYOgwruFdZuPKFsgFjSPZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAECwjAi2BcdXTE4YgpDROY0Mjs_CeYOgwruFdZuPKFsgFjSPZA@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_044349_796092_2CEB21E9 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] malta: fix missing watchdog dependency
 in hwmon-sch5627
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

Yousong Zhou <yszhou4tech@gmail.com> [2020-03-05 19:56:40]:

> > Fixes following error uncovered while building malta/be on 5.4:
> >
> >  Package kmod-hwmon-sch5627 is missing dependencies for the following libraries:
> >  watchdog.ko
> >
> > That dependency was introduced in upstream via 2d8c7ff52c24
> > ("hwmon/sch56xx: Depend on watchdog for watchdog core functions") in
> > v3.5.
> 
> Does it make we actually package watchdog.ko as a module?  

The proposed patch adds that watchdog core as built-in, that missing dependency
error is probably misleading, having that watchdog core built-in is good
enough.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
