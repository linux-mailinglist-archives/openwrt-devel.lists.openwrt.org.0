Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A195DDFB
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 08:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PeR7cs73saPRF484j2VvA8Zv5RKbSChNHBjgRXXyJAA=; b=hn42x6PuKonbznambYXQGZTm3
	S2+AImojGfKHA+Y+apwWHe63V4oyz4rhX88HxUeyq3Tj7t4Sxs9e7s8VEk8B5Q/lUZp02zXN2svQO
	DMjPClxPnE+yFFD2u0CRdfumjWr169Lf9A7g1P+llLuFw1DJwRnfQL3r9bz3tfXmS0tv8lSreQxwG
	j5mnaRdrH39l42UiUTDe2vBxmI5LyNw2g0M+V949pBEdUkSWyqrcTM8jgwYXfqBX2aEDAZ5Qkwgar
	eLzHN0rc6GjD5gfAoDR7fWa1nM+MWtiv8F4ffX0snjdUSbh+pTSBHPNBwsW/G6jmS+oYpBZzUhORA
	ugUCbdDOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiYag-0006Ok-MT; Wed, 03 Jul 2019 06:18:02 +0000
Received: from 4.mo177.mail-out.ovh.net ([46.105.37.72])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiYaS-0006O6-Ka
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 06:17:50 +0000
Received: from player718.ha.ovh.net (unknown [10.108.35.122])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id C368E102194
 for <openwrt-devel@lists.openwrt.org>; Wed,  3 Jul 2019 08:17:41 +0200 (CEST)
Received: from RCM-web2.webmail.mail.ovh.net
 (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
 (Authenticated sender: rafal@milecki.pl)
 by player718.ha.ovh.net (Postfix) with ESMTPSA id 3421676F77DB;
 Wed,  3 Jul 2019 06:17:39 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 03 Jul 2019 08:17:38 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: Hannu Nyman <hannu.nyman@iki.fi>
In-Reply-To: <4d8977dc-67df-f5cf-4a5f-ae1350a09aa0@iki.fi>
References: <4d8977dc-67df-f5cf-4a5f-ae1350a09aa0@iki.fi>
Message-ID: <3fa1b7442d34cc603c073cae7a2f88e3@milecki.pl>
X-Sender: rafal@milecki.pl
User-Agent: Roundcube Webmail/1.3.9
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 5225301468088078053
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrvdelgddutdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_231748_820553_47654C07 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.37.72 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Lots of core packages fail in phase2(?)
 buildbot - maybe due to lua changes?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 2019-07-03 06:59, Hannu Nyman wrote:
> I looked at the packages buildbot faillogs for OpenWrt master and the 
> package download directories, and noticed that quite a lot of the core 
> OpenWrt packages fail to build in the buildbot at the moment, like 
> ubox, ubus, firewall, uci, netifd... and they are also missing from the 
> snapshot download directories.
> 
> Example failllogs:

That error logs look quite confusing, but the fact is libubox wasn't
compiling because of Lua 5.3 header installed in wrong staging
directory.

Please try:
https://git.openwrt.org/?p=openwrt/openwrt.git;a=commitdiff;h=47a984477b1d300047b3001971f0af0e371ea9ee

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
