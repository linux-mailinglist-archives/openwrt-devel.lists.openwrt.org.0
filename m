Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FB31D6857
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 15:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bzpOMrGEewuYjeOAO4mEBu6rfmLrwqVl0fhu07f0dE8=; b=hPWJTiLSPN5deGA2h5SqPKTtby
	6cTKsa4dGVwzMsBcX1/fwyOLAMgVTVQMkbqL4TQjmYTgM2gClgEArPWC9d/f/o5eDQKS0x+tVM6Ti
	yaDQvolVhH9fswSmRygYm5i53yhPfTA4soRWsmkZUPduL2rr1WS31Sk/JCJvIvSNflAT6PjV6vMi+
	u59I21XsiXWsTF9XGOXZsSJH4VkVEHYZyg6cYKEAsq76RsqerPdUNKZTPNMsI/qE96+awotn+zWR+
	YLRUtx8QOfae25UiARzr+i/W1VqrNO5A/MjajjDwkD6Q1rKixoTL919PiXz//fhpgZN/fm+JjKYiG
	1AHEQPuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaJoJ-0001AL-3g; Sun, 17 May 2020 13:58:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaJoC-00019o-5Z
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 13:58:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DB9104378;
 Sun, 17 May 2020 15:58:23 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6de14e65;
 Sun, 17 May 2020 15:58:07 +0200 (CEST)
Date: Sun, 17 May 2020 15:58:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <20200517135807.GH69771@meh.true.cz>
References: <a41b5533-ab3a-d360-1fb2-53392a19158e@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a41b5533-ab3a-d360-1fb2-53392a19158e@iki.fi>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_065828_404287_6FC18551 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Is 18.06 packages buildbot intentionally
 offline?
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

Hannu Nyman <hannu.nyman@iki.fi> [2020-05-16 11:46:55]:

Hi,

> Apparently the openwrt-18.06 packages buildbot has been offline three weeks,
> since 22 April 2020:
> 
> http://buildbot.openwrt.org/openwrt-18.06/packages/one_line_per_build
> 
> Is that intentional?

yep, because somewhere at that time we've suddenly lost 16 OSUOSL buildslaves
and I've moved those two buildslaves to 19.07 packages and master images as
there wasnt any buildslave active at that time.

> There has been some talk about 18.06.3 it seems strange that the packages
> buildbt would be intentionally offline for several weeks.

AFAIK release means firmware images, packages can be upgraded anytime, so the
release tagging doesn't have any influence on the packages.

> buildslave from nomosphere has never(?) done a build.

It's just a placeholder for machines without root access which cant be managed
via Ansible, so the buildmaster shuffling is done manually on that specific
buildslave.

Anyway, I've just moved truecz-dock-01 from master/images back to
18.06/packages.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
