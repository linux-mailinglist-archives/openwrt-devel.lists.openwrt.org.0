Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A071E6B83F
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 10:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bROyuFA8Jg5+hHr9bnX6THV/X451+1seADyumE5ziGE=; b=jZ/f4DtXYXMkHwst6jaKiG+m/T
	T10njKL5DZhzmt4P42xfSW8/XKCceaugfg/YJYO+Crq9yNoaj/H+dXEmSuehW1V2zhMuJ2X23WO7M
	KZIwq23tOJ9behBsgEoscWbtH05IOa5MZwLB2X8BI7qAdlg4ZGRFh2atVobfEVgXFhROFKZ8xJnXP
	lGKzIxN9lE6Ru9a26p65/gLQltDUhoYp3nbtDaZ+qWAcVJl5L8GRmN9a/49Sm8TW43fGpIHMp9Piy
	N4Ac02wXRM0s0ngqZUhC8bIpyWfoMYFLnhOMfnByWr54ACNIW9KJW0pxkQ0ErMlRhtTx2O1bWoDW+
	y6ACgUPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfNI-0004Ke-1K; Wed, 17 Jul 2019 08:33:20 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfMx-0004Dn-LU
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 08:33:01 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4070539B2;
 Wed, 17 Jul 2019 10:32:52 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 0cca2dbe;
 Wed, 17 Jul 2019 10:32:44 +0200 (CEST)
Date: Wed, 17 Jul 2019 10:32:44 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Etienne Champetier <champetier.etienne@gmail.com>
Message-ID: <20190717083244.GC48772@meh.true.cz>
References: <20190714024328.17271-1-champetier.etienne@gmail.com>
 <04f97319-0ea0-25b8-1a54-c85c8c7fb4db@david-bauer.net>
 <CAOdf3gqxNEsoSFs-rNt886MR=SzM93fMH_-6HEyF53200t511g@mail.gmail.com>
 <555d1fe9-d8ac-f0e1-ec9e-894a6a008375@david-bauer.net>
 <CAOdf3gr1at3jhgvB7mY=e4EirqaXhg4BezuEKO=oJ3-ufo5-EQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOdf3gr1at3jhgvB7mY=e4EirqaXhg4BezuEKO=oJ3-ufo5-EQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013259_947375_74B08CFD 
X-CRM114-Status: UNSURE (   5.25  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ar71xx: enable QCA955x SGMII fixup on
 Mikrotik wAP AC
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
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Etienne Champetier <champetier.etienne@gmail.com> [2019-07-16 21:17:43]:

Hi,

> Saw that you applied it to master, I just tested the patch on 19.07, works fine
> Do you want me to send the patch again, or can you just cherry-pick it ?
> (git cherry-pick 2a7519e29d6cbbe1eb73623ef35add0ef596fb5f)

 git cherry-pick -x 2a7519e29d6cbbe1eb73623ef35add0ef596fb5f

as this is preferred.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
