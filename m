Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F4F186A7B
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 13:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:Message-ID:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=6iZSUnhjwM/m4fj0I8ZjsqmgkFRdx+r98SZFyuMYr6s=; b=esR
	mNuYhE4SszAwPBMfZgiKCRpNbPRnl6XYQM0FI/Ruy4UH3fERDPLpgYBnzl7Yo1fCIftbqv+Y9u8nU
	/suMs23WrrOuG4SCpUekh3tHFGSabLQlGqG7qfT+TJBlJlKVhErPqz1UDPYI15ZIOwOh4wDCRIszy
	cSXLG+6IPnyMxzFU/fTgn1UBRfM8xLFgbR/ziGUoSXtEWSq6TCytmYWmB2nRbFNqrwxLz3Copj+Gg
	voR20Y65eA59EpXnlyJqAAhZfrpIeq9lPHfAN8OqMPgTIf34QM+MCnE3J0nzX+UEMKJYwT4d54xet
	rkeYf1l6C9IS+6oPSSIahHfeRAl4Zyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDoRr-0002bt-9i; Mon, 16 Mar 2020 12:02:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDoRl-0002Qd-2A
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 12:02:18 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 80CD04ADA;
 Mon, 16 Mar 2020 13:02:04 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a3cc42ac;
 Mon, 16 Mar 2020 13:01:51 +0100 (CET)
Date: Mon, 16 Mar 2020 13:01:51 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hans Dedecker <dedeckeh@gmail.com>, Stijn Tintel <stijn@linux-ipv6.be>
Message-ID: <20200316120150.GA62331@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea486a85-4212-b536-0d70-12ad7ada5a09@linux-ipv6.be>
 <CAJLcKsEL1yhYfqs0V+ksygMS+ZWyFc1__ge9r=tbm95wHQPtJw@mail.gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_050217_256130_C4F2ADB1 
X-CRM114-Status: UNSURE (   9.25  )
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
Subject: [OpenWrt-Devel] core package definition,
 2nd attempt [Was: Re:  [PATCH] iproute2: ... ]
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
Cc: Alin =?utf-8?Q?N=C4=83stac?= <alin.nastac@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hans Dedecker <dedeckeh@gmail.com> [2020-03-16 08:37:49]:

Hi,

> > > On Thu, Mar 5, 2020 at 8:34 PM Mathias Kresin <dev@kresin.me> wrote:
> >
> > Try to get libcap into the OpenWrt base system and enable HAVE_CAP
> > afterwards?
>
> I'm in favor of this approach as currently a part of the ip-full
> functionality is broken and I see ip-full for now and in the future as
> a core package.

Why do you think so? Can you try to define what is "core package" from your
point of view? Why should this iproute2 package be in the main tree, why it
doesn't belong into package feeds?

Stijn Tintel <stijn@linux-ipv6.be> [2020-03-16 13:50:20]:

> +1 for moving libcap to core. Other packages could benefit from it too
> (lldpd comes to mind).

IMHO lldpd should be probably moved to package feeds as well

1. http://lists.infradead.org/pipermail/openwrt-devel/2019-August/018399.html

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
