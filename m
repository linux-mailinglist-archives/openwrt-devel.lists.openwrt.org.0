Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670A719B3D9
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 18:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UPQMGJs/VRJo0Zth5ApUa9eo9+Oc/EpXCwhzNMKZpt0=; b=Xb9ZUDlVXHgTaRhd5oh/qY0mBK
	9HUAzjb+UoSWi34p4j2I0/bhYw3oyKfq2fvmJxuFlc2JAbSS+/LwCFVyFTRGeGLvkKtyJ/8ageao5
	7HR5Bl2vr7Wb18NSO7jw0RpSJjvJQT3FltjVGiBkAzJWRti5oFt4s9HgrPOp39YzdohqRRFdrOFn6
	8l1Mn1I+oB12tuIIvligteibEgHGdQ4DOvfewvNMA62qZtMt9XuvappF6AzFA+KiJCXh8MRBBJUr9
	vX0yEOqQi5/NShpEdg78KQDhhMYfW76FBhsc2v9q56HoFxaEPISAE3T7R5TCbPNmUfQkiekzMqDxC
	q5heT2yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJgdn-0003SD-NN; Wed, 01 Apr 2020 16:54:59 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJgdg-0003RE-VD
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 16:54:54 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0D1354733;
 Wed,  1 Apr 2020 18:54:50 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id c5cc3647;
 Wed, 1 Apr 2020 18:54:35 +0200 (CEST)
Date: Wed, 1 Apr 2020 18:54:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Klaus Kudielka <klaus.kudielka@gmail.com>
Message-ID: <20200401165435.GF21251@meh.true.cz>
References: <20200331092158.5787-1-ynezz@true.cz>
 <1d98f481-8d58-0180-291a-ecf0da707b5e@o2.pl>
 <18882612.h8XCQiH2nZ@debian64> <20200401135229.GE21251@meh.true.cz>
 <3025909a-178a-d671-977e-547c0a15b693@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3025909a-178a-d671-977e-547c0a15b693@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095453_155070_92424F93 
X-CRM114-Status: UNSURE (   7.07  )
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Klaus Kudielka <klaus.kudielka@gmail.com> [2020-04-01 16:52:41]:

Hi,

> omap & sunxi/cortexa8 are both cortex-a8.

good point, I've missed that.

> So, tegra and mvebu/cortexa9 are the *only* targets with arm_cortex-a9_vfpv3
> (-d16) packages?

Seems so.

> If we switch both, like Tomasz did, arm_cortex-a9_vfpv3 would not be needed
> anymore, and be replaced by -d16. Why does that cost more resources?

It doesn't, you're right.

> (Okay, a few snapshot users would have to upgrade if they want to install
> packages, but this is the master branch anyway)

That master branch is going to be next release at some point. Just wondering
now if this change could have some impact during upgrade from 19.07.y release.

> Nevermind, just a stupid idea, to avoid unneeded complexity.

But so far the best idea :-)

So I've marked this patch as 'Rejected', solved, thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
