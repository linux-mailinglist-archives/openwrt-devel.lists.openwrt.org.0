Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F78B8B39
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Sep 2019 08:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Is51d+4KHgleLYAUG6W7V4cPHZ+ZLCpg0AOSI8Wydc=; b=n22k/wzaipiXAQ
	7mwLJo29UoZ3RKBH8QZaZsNTBPHRYUt12IvelOWTCS/Pnl4OXczXA98PYwwr80oUezqXutTyQVReK
	cSGyzx5V+N+ZfB9JuqR2s8pX0qt7pDmh6tBFTGhU1n9QYjFIzqguObn5Npc8TlPgACtynO+tHcmPJ
	tBNAC4PubeQb1dXNj+DzgKxF/6fsSNBU9N68wTwEjdjvfHYbIFlCscGoRbcS42Zux6dTaPuQ+x35Y
	MJ5EOZRD13WdmgLXYsKVjvHzEUZPkfX+uNoqRxXDacKuls06HTqIvZg7i9Y516xqsPldK4qhcnpQD
	wKM4+oWUjJTPEKV9fZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBCfh-0008SA-TM; Fri, 20 Sep 2019 06:45:37 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBCfO-0008Rq-2U
 for openwrt-devel@lists.openwrt.org; Fri, 20 Sep 2019 06:45:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2D1DE4517;
 Fri, 20 Sep 2019 08:45:09 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id e15d174b;
 Fri, 20 Sep 2019 08:45:01 +0200 (CEST)
Date: Fri, 20 Sep 2019 08:45:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20190920064507.GA17181@meh.true.cz>
References: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917122223.2745-1-freifunk@adrianschmutzler.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_234518_269054_5B71BEAC 
X-CRM114-Status: UNSURE (   5.65  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ramips/mt762x: convert devices to
 interrupt-driven gpio-keys
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Adrian Schmutzler <freifunk@adrianschmutzler.de> [2019-09-17 14:22:21]:

Hi,

> This converts all remaining devices to use interrupt-driven
> gpio-keys compatible instead of gpio-keys-polled.
> The poll-interval is removed.

[...]

>  161 files changed, 197 insertions(+), 314 deletions(-)

I'm just wondering what makes you so confident, that this changes wont break
any of the affected devices. On which devices this has been tested? Some
Tested-by: would help to get this merged, thanks.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
