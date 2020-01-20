Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03288142683
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 10:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9Bz5SvKFHKgnRyWojsHu2dgVVF9odplj0C57uDXeF74=; b=K2aAy1ERKaVrwv/ejoD3GtW5Ln
	GbHYIJYO76Z2u6/fMHDs9sqJ2q6pF2jEZ0ee6XzD6DJSYc+eBKIahoc6VAIuJoDhPe0MdqGQdE8UK
	Yf/m6noerMtN/sgI2NgM+s5HXLTWl9OYcrgqn6xbbg/D770n/+herowC9pG+rDHxaV921IUaejKuO
	st5STiGemZQhhAakuhT6Cg19ZZjHgDA8xC7zcLY1xwl3lEGvnn1wg507yasumDmBLErN8iENmjoue
	M0vZPioG+p0M6v/rgBYaH1xGHBI92HYuyhAD4yfPvfkmGthv2xe5WOrmllF+i8EJEEhvEJ3WOV9Yj
	+aXAGTQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itSwC-0008Hh-JW; Mon, 20 Jan 2020 09:01:36 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSw2-0008Gb-Hy
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 09:01:32 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DC63C4E89;
 Mon, 20 Jan 2020 10:01:18 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 9225b6b6;
 Mon, 20 Jan 2020 10:01:08 +0100 (CET)
Date: Mon, 20 Jan 2020 10:01:08 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20200120090108.GD69327@meh.true.cz>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <20200116100514.GB84286@meh.true.cz>
 <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c252d8df-d0af-b0ec-ea21-7ade8e02da50@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_010126_743597_D4C9554C 
X-CRM114-Status: GOOD (  13.63  )
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
Subject: [OpenWrt-Devel] Releases [Was: Re:  OpenWrt 20.X release plans]
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

Hauke Mehrtens <hauke@hauke-m.de> [2020-01-19 18:17:10]:

Hi,

> Someone has to take care of the release and this person would then
> announce that he wants to tag and build the next RC some days before so
> that people can prepare. The person can change in the release process.

Ok, fine with me, it should be written down (made clear), that the release
timeline, number of RCs depends on the "release manager".

This brings another topic to the table, how are we going to pickup the
"release manager" if we can't find a volunteer? :-) Round-robin or random
choice from the list of available (if needed to be) candidates?

> Does someone else other than jow know how to setup built bot for a new
> branch? Is this documented somewhere?

It should be documented and at least 3 persons should be able (and willing) to
do that.

> From my point of view the delays were not caused by someone saying that
> we should wait till something is fixed, but that nobody did the next
> step and nothing happened.

I was rather referencing delay between the branch and first RC.

IIRC we've branched in the middle of the LuCI Lua refactoring (service side ->
JS client), so waiting for LuCI getting into releasable state. Don't take me
wrong, it's fine with me, we just should take such possible release blockers
into the account in the future as well and either find a way of handling them
or just live with the fact, that this delay migh resurface in the future
again.

> I would also only list the big problems you listed as real showstoppers,
> but it would be nice if more people also get informed about the other
> bugs too.

I hope, that this is going to be improve with the defragmented tooling
(FlySpray merged into something else). We can then have a release (or next RC)
milestones, assigning issues as release blockers (done by the release manager
only).

> I added some support status to this wiki page:
> https://openwrt.org/docs/guide-developer/security#support_status I hope this
> is ok

It makes it clear, explicit, so I like it.

> I would prefer if we make separate votes at least for the topics which
> are separate, you can start them at the same time, but I think it is
> easier to have separate discussions.

Ok, noted.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
