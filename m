Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB4DFD453
	for <lists+openwrt-devel@lfdr.de>; Fri, 15 Nov 2019 06:30:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=frlL0appk5BhekS6rI+irbs6ZNP0rlaFtdIjrcwd87U=; b=GKZeFOnMeet3XUeg/cVMi9WM+E
	5KIWYA2Nv26XL3EI8ngEw6/nEEZpnlOJtp2oMiA6Is940F0G4YXW28MB9lHUG4Yr92shMM+NF7lcG
	pqO4EAq7Z1oszCqF5FWhBz/xPiK+ZfDem863fTtWA+52nK7MB4ZLj1lk2b/3UDEj8rZTOyYo+7Tcw
	ZwhXgBNN1So3RSW1Iq2TiClMSy6SWG3vaKnGdaT5uKeWYqhR0dCegA+hpLk+JewLtnSHREFxnvvRz
	fasWQf//MhrhSJfp+snvcXM/DjkkxkEae0FE/GSj0aTiv3X92FW0tuui/dqJm/nmVQWawmWjnPw3m
	H45JVo7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVUBQ-0001tb-E4; Fri, 15 Nov 2019 05:30:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVUBH-00013S-Cu
 for openwrt-devel@lists.openwrt.org; Fri, 15 Nov 2019 05:30:04 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 326563C62;
 Fri, 15 Nov 2019 06:30:00 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 5da08d95;
 Fri, 15 Nov 2019 06:29:49 +0100 (CET)
Date: Fri, 15 Nov 2019 06:29:49 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Message-ID: <20191115052949.GC13337@meh.true.cz>
References: <20191113151241.752720-1-thomas.petazzoni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113151241.752720-1-thomas.petazzoni@bootlin.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_213003_595732_965873F7 
X-CRM114-Status: UNSURE (   7.56  )
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
Subject: Re: [OpenWrt-Devel] [PATCH procd] initd/init: add minimal SELinux
 policy loading support
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

Thomas Petazzoni <thomas.petazzoni@bootlin.com> [2019-11-13 16:12:41]:

Hi,

is this some kind of RFC/idea probe? I like the idea, additional hardening is
needed and welcome I would say.

> I have patches ready to add some minimal SELinux support to OpenWRT,
> which I intend to send in the near future.

It would probably make more sense to send somehow minimal but complete working
SELinux support so one could see what it would mean in terms of flash space,
RAM, CPU overhead etc. Maybe adding one of the default services exposed to the
network as initial example?

> +  pkg_search_module(SELINUX REQUIRED libselinux)

This looks like a missing dependency.

> fprintf(stderr, "Cannot load SELinux policy, but system in enforcing mode. Halting.\n");

Just a side note, halting in the context of running on the router means
flashing of factory image. Halting doesn't provide any feedback to the user,
if we don't consider stuck-in-the-bootlop as a proper feedback.  Probably
entering failsafe(has LED feedback) or such would make more sense here?

I'm not implying, that this needs to be solved from the beginning, halting
during development is alright, just something to think about.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
