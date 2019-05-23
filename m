Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CBC27A8C
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 May 2019 12:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1Fu7nhj42uuMr6iB+uHuXOlcnIL8ULFrE0Du6MX3rD0=; b=TrTTAukn12HAq9MR39NUNx8ovB
	59O8/O/Mf1pg0vf5KwROegaJM8l5TrsrtahOR4YPewah0AMuOskMdEFBty2hBXmVwOtF0xGsW0we8
	u0NLJ201V7uiKcGqvjn6mimoA3d335mRjnDXDFHswdt6sbJNkoDJt3BJRlUcOgJ4pzy1ROHWT5FIi
	3AYgKpZUf0MCnBXwP4e8XKqHn5D4esIpX7Jwq4JCT63xLWtvXoAmP0iu83wdLZQLLoIzJ8pVWGe8W
	vAj6yrEOQgfxWkLWBaGURP6tHsi7lqe0ddvgvCyrk3S67hFZExCLTZ7vbJWEPVbHJcRli6ILDpulo
	5A19cMxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkzp-0007Ef-5r; Thu, 23 May 2019 10:30:49 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkzh-0007EB-Vk
 for openwrt-devel@lists.openwrt.org; Thu, 23 May 2019 10:30:43 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E7E04474C;
 Thu, 23 May 2019 12:30:36 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 70edd282;
 Thu, 23 May 2019 12:30:35 +0200 (CEST)
Date: Thu, 23 May 2019 12:30:35 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Spooren <mail@aparcar.org>
Message-ID: <20190523103035.GD4606@meh.true.cz>
References: <20190522172419.20630-1-mail@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522172419.20630-1-mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033042_176790_6BD6AEA2 
X-CRM114-Status: GOOD (  13.19  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] procd: add docker support
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

Paul Spooren <mail@aparcar.org> [2019-05-22 19:24:18]:

I'm wondering if this Docker related changes shouldn't be included as a part
of a patch series which would add complete Docker support to OpenWrt (do you
plan to do this?), so it could be tested together.

Or is it now possible to just download OpenWrt image and use it inside the
Docker as it is?

> The additional exit(0) treatment in state.c is based on @mikma code[0].
> It should fix stopping problems of containers.
> 
> [0]: https://github.com/mikma/lxd-openwrt/blob/master/patches/procd-master/0003-docker-fix-problem-stopping-container.patch

This patch looks like a hack, which was probably just cherry-picked without
actually looking into the surrounding code. See bellow.

> --- a/container.h
> +++ b/container.h
> @@ -16,9 +16,11 @@
>  
>  #include <stdlib.h>
>  #include <stdbool.h>
> +#include <sys/stat.h>
>  
>  static inline bool is_container() {
> -	return !!getenv("container");
> +	struct stat s;
> +	return !!getenv("container") || !!stat("/.dockerinit", &s);
>  }

Have you noticed "Remove dockerinit once and for all"[1]?

> --- a/state.c
> +++ b/state.c
> @@ -21,6 +21,7 @@
>  #include <signal.h>
>  
>  #include "procd.h"
> +#include "container.h"
>  #include "syslog.h"
>  #include "plug/hotplug.h"
>  #include "watchdog.h"
> @@ -157,6 +158,9 @@ static void state_enter(void)
>  		else
>  			LOG("- reboot -\n");
>  
> +		if (is_container())
> +			exit(0);

if you look at that file, you'll notice following:

 #ifndef DISABLE_INIT
                ...
 #else
		exit(0);
 #endif

which makes me wonder if this is proper approach as maybe the proper fix would
be conversion of compile time DISABLE_INIT functionality into runtime one,
something like following: 

 inline bool is_init_disabled()
 {
 #ifdef DISABLE_INIT
	return true;
 #else
	return is_container();
 #endif
 }

It seems like that DISABLE_INIT touches more parts of procd which probably
should be considered in case if procd is running in container as well (or
maybe not):

 $ git grep DISABLE_INIT

 plug/hotplug.h:#ifndef DISABLE_INIT
 signal.c:#ifndef DISABLE_INIT
 signal.c:#ifndef DISABLE_INIT
 state.c:#ifndef DISABLE_INIT
 watchdog.h:#ifndef DISABLE_INIT

This will probably incur more work, but it will likely result in a proper
solution.

1. https://github.com/moby/moby/pull/19490

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
