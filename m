Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F073178D5C
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 10:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=REAeK0rNpAyntf+eebhZbGX2yY5vh7bkF8btZHO4gj8=; b=Ke54vLDCOpWpsufhk4VRWVH+cv
	LrEGxqKS+WhW0xdP+SE6FJ61mxCcvX4soL4zMFjq/l7NjFuyHD6bRDafym3NYJ1JOxiRPqnfVSHHo
	lReXMqD6Yjf9/5bAb78u3U9QuiCihvyw8bD8c4kXh+tLQF1ZL/kNJZJGkISoC1gIS+mteN8ixM/Ci
	KbE6P2om1j3osWqHgdX/E46bSyv5JjYWs/EGEPPYP/2swOmmBbgAJrk8qOQl4uwVWJg29f84igDHa
	oLvA35gevpggjIqa1IRBtMQR73gw/Ssf3zQ/eav7YN2iMAKvMPYHBTLCN4AtAW8BfFKOP1p1cB98T
	1yItHLZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QIR-0001w8-EO; Wed, 04 Mar 2020 09:26:31 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9QII-0001vM-V4
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 09:26:24 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3FBBF4742;
 Wed,  4 Mar 2020 10:26:21 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 061d0e50;
 Wed, 4 Mar 2020 10:26:08 +0100 (CET)
Date: Wed, 4 Mar 2020 10:26:08 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jo-Philipp Wich <jo@mein.io>
Message-ID: <20200304092608.GD79862@meh.true.cz>
References: <158330982516.19674.4885350586434429867@git-01.infra.openwrt.org>
 <mailman.35728.1583309833.2486.lede-commits@lists.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mailman.35728.1583309833.2486.lede-commits@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_012623_302301_5C11499F 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: [OpenWrt-Devel] Security implications for consideration [Was: Re:
 [openwrt/openwrt] rpcd: add respawn param]
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org,
 Florian Eckert <fe@dev.tdt.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

LEDE Commits <lede-commits@lists.infradead.org> [2020-03-04 03:17:06]:

Hi,

sorry for such late post-review :-), but I've somehow missed it previously
(probably because of commit subject?), just noticed it now via content of Jo's
commit email.

> jow pushed a commit to openwrt/openwrt.git, branch openwrt-19.07:
> Author: Florian Eckert <fe@dev.tdt.de>
> 
>     rpcd: add respawn param
>     
>     The rpcd service is an important service, 

It is _very_ important, because it's available by default in releases and
exposed to network.

> but if the service stops working for any reason, no one will ever respawn
> that service. 

The issue should be rather reported and fixed.

> With this commit, the procd service will monitor if the rpcd service is
> running. If the rpcd service has crashed, then procd respawns the rpcd
> service.

I simply would like to bring one important aspect for consideration. 

By respawning any network facing service indefinitely we're giving adversary
infinite attempts for figuring out the way in, decreasing the purpose of
(expensive) ASLR etc. See "Remotely Compromising an iPhone through
iMessage"[1] (48:41) for real world example.

I think, that the previous default (max 5 restarts?) was good enough, ideally
the timeout should be exponential in between those 5 restarts and I wouldn't
mind if the restart count was set to 0 by default.

> diff --git a/package/system/rpcd/files/rpcd.init b/package/system/rpcd/files/rpcd.init
> index 77ebcbe6cb..b1061b906c 100755
> --- a/package/system/rpcd/files/rpcd.init
> +++ b/package/system/rpcd/files/rpcd.init
> @@ -12,6 +12,7 @@ start_service() {
>  
>  	procd_open_instance
>  	procd_set_param command "$PROG" ${socket:+-s "$socket"} ${timeout:+-t "$timeout"}
> +	procd_set_param respawn ${respawn_retry:-0}

IMHO this is probably not correct as well, that respawn param is "array" of
[threshold, timeout, retry] params, so this probably sets `respawn_threshold` to
0, not `respawn_retry` as intended.

1. https://media.ccc.de/v/36c3-10497-messenger_hacking_remotely_compromising_an_iphone_through_imessage

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
