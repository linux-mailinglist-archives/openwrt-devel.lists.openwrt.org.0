Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B642C168EC1
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 13:17:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/X7M+wWFGkB9DiDOV/qBKvtlmIBQereH5e0AnCX9uMs=; b=DqY9YrZARB7ZSWwSsqZ/cF4akR
	gtzfLwUUqQ8n1SHfwAT0+ln1JIzEZJe7xzRp3IgWsPa0t1JvHMi+tFQV1l40TLrZoVutV7EaD4v0K
	8mzV6AzswnK23wI5miyRiK3XxIlc2bHXlqpi3EHa5O07d41nND1nHruYLrproSIHPIt4DfhccpzpM
	ayhGr/fsldYcXAXI87gbw3Mwnp8dH8uYnqpD4mGIixTMmXjuytG7oJugM8QG2MPW7iLwxIvXp7D3C
	MPsp13pVndYyDWo0NDm9O1G7Aj1D24DpWlOo7qPevJ2bCMmzK1JniscWqHXhfeAIK7ny0Wwr5ICBi
	W9C0izCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5TiE-00031M-N1; Sat, 22 Feb 2020 12:16:50 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Thy-0002zc-Au; Sat, 22 Feb 2020 12:16:36 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9F5D3440B;
 Sat, 22 Feb 2020 13:16:28 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 6beefc00;
 Sat, 22 Feb 2020 13:16:15 +0100 (CET)
Date: Sat, 22 Feb 2020 13:16:15 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Karl Palsson <karlp@tweak.net.au>
Message-ID: <20200222121615.GC99033@meh.true.cz>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
 <VNk22yrjERZnNLKDChfJ9jzWHV94cthqSmXyFavD23c4@mailpile>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VNk22yrjERZnNLKDChfJ9jzWHV94cthqSmXyFavD23c4@mailpile>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_041634_527210_89115F28 
X-CRM114-Status: UNSURE (   7.17  )
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
Subject: Re: [OpenWrt-Devel] Next maintenance releases
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
Cc: Chris Nisbet <nischris@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>,
 OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Karl Palsson <karlp@tweak.net.au> [2020-02-21 13:14:29]:

Hi,

> I would very much like to see
> https://bugs.openwrt.org/index.php?do=details&task_id=2833 merged
> (it contains a fix and tests) for 19.07, as it fixes a regression
> in behaviour there. (umdns stopped working)

[puting aside the fact, that the patches weren't send via the standard way[1]
so they weren't reviewed yet]

please note, that this proposed fix is not included in the master yet, thus
untested by the wider audience and you're requesting inclusion into stable
release 19.07.

> I've tested the fix locally at least

I'm always testing everything, preferably with unit tests, runtime tests, but
it's still quite common in the software universe, that one fix introduces two
or more regressions in other parts, so I'm really unsure whether I'm going to
merge this into stable release just a few hours before the point release.
IIRC something similar has been done with last minute CVE fixes before
19.07.0, which didnt worked well.

1. https://openwrt.org/submitting-patches

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
