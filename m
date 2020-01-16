Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EF213D949
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oK8pEBO3bAu9GIdZFGwdRxHW1wxGIRiNQOiRUtXBzF0=; b=XffkTf6TS5MLE1rko5SMK8CcBx
	EfbXDaJmQK4YWzM99y5KJTxTUTiFhCTlop139g66+C1aQugn/fpIF4+RTgW53PJrYrx91lS8lCyjJ
	5CNzCoET0j5qqkKzDHVhB7Qd5n8dhxKn6hFDeaRoCJhfTk86jNjEqYHFIQrsb4ZaA8Q6w/58YP8wx
	xW++86lEII1EeY0zLKtXTw5BMJ1R7I/cof2fUZ5C0HvBa+ZM7xuXw+acPpKsUyA4q8GdHKPmxYxml
	GYoMI5pmEI+GTzP2DFTLU02Xbe4CKwrSmCmIWlUU9JAFXr3J1FTl9OEbtMI1jQi6JHtuwNqE3+1y7
	En6FH/UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3di-0006Gl-8q; Thu, 16 Jan 2020 11:48:42 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3dS-0006GC-S9
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:48:31 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 10DE265C6;
 Thu, 16 Jan 2020 12:48:24 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 67758a12;
 Thu, 16 Jan 2020 12:48:13 +0100 (CET)
Date: Thu, 16 Jan 2020 12:48:13 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Peter Geis <pgwipeout@gmail.com>
Message-ID: <20200116114813.GC84286@meh.true.cz>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <CAMdYzYqL3-6s4vcjyT7=UDDQTN85RNQTRQ77ixvRnBk2EaBDHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYqL3-6s4vcjyT7=UDDQTN85RNQTRQ77ixvRnBk2EaBDHQ@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_034827_061095_1900118B 
X-CRM114-Status: GOOD (  12.74  )
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
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Peter Geis <pgwipeout@gmail.com> [2020-01-15 21:15:41]:

Hi,

tl;dr I'm going to vote in favor of skipping release with 4.19 and focus on
5.4 kernel.

The 19.07 release was delayed by a few months, so this has affected the
subsequent release as well. The plan is to have stable release every 6 months
as it is easier to support, allows us iterating faster and breaking stuff more
often :-)

It's clear, that this fast release cycle needs some time to settle, but I
believe, that in the end everybody is going to benefit from that. Users by
having modern kernel and userland, developers less backports to maintain and
everybody predictable releases (to some extent).

Once mastered, this faster release pace might be one more very good reason for
the vendors/companies to adopt (or at least strongly consider) "upstream
first" workflow :-) If that's not doable for various obstacles, then let's
hope, that they will hopefully engage and consider sponsoring some kind of
OpenWrt (Long Term Support) LTS release effort.

> I think it is wise to target 4.19 as it has been in the nightly
> releases, and as such has been in testing.

Yeah, we're all aware about that. If we decide to skip 4.19, we're partialy
throwing away a lot of work, but on the other hand there was a lot of stuff
upstreamed/fixed, so making the 5.4 better. It's more then clear, that staying
closer to the upstream brings mostly only benefits.

So I'm going to support focus on 5.4 with my vote, thus suggest, that we skip
release with 4.19.  Even that I know, that we're going to violate our 6 month
release cycle goal one more time, but hopefully for the last time :-) Lets
bite the bullet and move forward in that 5.4 direction ASAP.

BTW people doing the kernel development are essential element for this
project, so we should try to make their work easier as much as possible. Or at
least don't put any obstacles in their development direction.

In other words, if I've to choose where to spend the finite and scarce amount
of resources, whether it should go into the development of 5.4 or into the
maintenance of 4.19, I'm wholeheartedly selecting 5.4. 

> It would be nice to have lxd support in the full release, instead of
> needing to custom build to enable support.

Feel free to follow https://openwrt.org/submitting-patches and make it reality
:-) Thanks!

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
