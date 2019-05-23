Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8910827848
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 10:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lr2fqLgFkLcSVBMYevTdt2Vf3u8D75F5Wccz3RyVOok=; b=sU8PNvP2HgP0sLlR1KYql9xLWC
	t+/mbR7UPV6QsZowL9aBmAL46qaJzWn28n2xezXeoZnS2htTH+h5NE2rIlL+4A4Th6A1YrjsabFrj
	2A+vl3CNWu+Dv8eR7K3I7SyPjRad7XnyQvTQXrnaN8R1kUtSTC1oO8plpMpQ2PL9276orzQwFmChB
	OmVxpR5Crw4ARpzXEWGaneJavmzODs4yGYXv5LUJKNYHeTcq/iUhFPhqjWIf8fJC6nc5G/cMLjoVQ
	dOhApv/kmxWb8yt+SNMWGIhk3E2Lg0t5oOBZjnz8pqJOjzRdPlVje8B41xXthXrpLrGK47k+9Vche
	+7yWCfAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjJR-0007Wz-1o; Thu, 23 May 2019 08:42:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjJG-0007WW-Ru
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 08:42:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id BB6214233;
 Thu, 23 May 2019 10:42:39 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id ca043caf;
 Thu, 23 May 2019 10:42:38 +0200 (CEST)
Date: Thu, 23 May 2019 10:42:38 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190523084238.GC4606@meh.true.cz>
References: <20190522172419.20630-1-mail@aparcar.org>
 <20190522172419.20630-2-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522172419.20630-2-mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_014247_813122_EDC633B8 
X-CRM114-Status: GOOD (  11.76  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] procd: add notification if running
 in container
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

Paul Spooren <mail@aparcar.org> [2019-05-22 19:24:19]:

> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
>  state.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/state.c b/state.c
> index ff1734f..9f196ee 100644
> --- a/state.c
> +++ b/state.c
> @@ -101,6 +101,9 @@ static void state_enter(void)
>  	switch (state) {
>  	case STATE_EARLY:
>  		LOG("- early -\n");
> +		if (is_container())
> +			LOG("This isn't real life. I'm running in a container.\n");

your commit message is missing (it's required BTW), so I don't know the reason
why do you need this change. Anyway, I don't see any valid reason to have
this in procd.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
