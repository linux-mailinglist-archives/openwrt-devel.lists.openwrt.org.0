Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88A51307C5
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 12:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qmRjT820iy8K0YBcJh0j4CrlTBemjwzfCuD36asbTaU=; b=HAe2v6uRpOgeXDuaE8//toZx9S
	oIPxOl2r3a6LmTgK555kx1e+ByfEby1tGSyQbJyHoc1lM8znbSBP6AiMzVDVj0xoQdw8IvfgNhSGy
	XeoiLe1rygdtWQ7XwiIlB4l+EjjxcUChRJZsrJCFzFlbtF17Xsrb5h9MgTB+AUNj1Aitar1Td8SZN
	ZluU5EpyH5aFGAwq5ZZb/e+G3ibqDLYzkUHBe/YH4Bd1zRg65JHIZB0ywQ9/WByOgY9HvIrCUProU
	d7ZqP1RA57JygytNxPyBFWn46HHhrAAOU4cJF94HYxLbZHQOTPoYGlcVkofi6uGcaGASowItsspGc
	KJkxBblw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io4EQ-0004qH-0L; Sun, 05 Jan 2020 11:38:06 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io4EI-0004pj-9v
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 11:37:59 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1CD5E4EA6;
 Sun,  5 Jan 2020 12:37:55 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 9bb6b273;
 Sun, 5 Jan 2020 12:37:44 +0100 (CET)
Date: Sun, 5 Jan 2020 12:37:44 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20200105113744.GY70184@meh.true.cz>
References: <20200103004638.16307-1-ynezz@true.cz>
 <20200103004638.16307-4-ynezz@true.cz>
 <75fc5a11-2610-b298-ec69-24595184b5d9@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75fc5a11-2610-b298-ec69-24595184b5d9@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_033758_493300_3B78C6EA 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH procd 3/4] system: sysupgrade: rework
 firmware validation
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
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2020-01-04 20:41:44]:

> > +	vjson_error(err, "unhandled error");
>
> In which case is this returned, aren't there specific error handlers in
> call cases now and vjson_parse() would overwrite it again?

It should be returned in unhandled cases, in case I've missed to handle
something or the code would behave in a way I didn't anticipated.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
