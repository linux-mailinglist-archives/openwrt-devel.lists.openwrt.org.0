Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435EA19BD8B
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 10:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7/7v57thbPnK6QDs48eAdH2FLj+vny6YS1ZiC6GkN+w=; b=JsPmMCgoz9Ok95TREokQ96wnLe
	WeWViEODi3K3vqho6npIiwOwg2nyG2WNNY7vVc9+YQYnw+EDAy/EkG407rDCif4H8s+f0zAGoFPsC
	BtjGQ9/mm7qQUDpuQaUQXqb3pNkB07/NaMy/ivYaIk3m2taSyvYG4jkO7aSJka/I8FDBg8K7WWurN
	la7XepZpSjORjYO5qEMaInxtcYfl5wPk0fcZwyGJm1rJVPPNwVrApBIZYLBTiC8bcgmwYzRDa0rFB
	+Xs3g3/T0i65Mkk0M/t4QSQcjyKq8767LbEVtgPHZCbU1TYOVOrNuU5rxN6OgJcbeQTJB07OxNwVQ
	1F2rOsBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJv79-0000DP-5Y; Thu, 02 Apr 2020 08:22:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJv71-0000Cv-Nd
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 08:22:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id D31873F3A;
 Thu,  2 Apr 2020 10:21:59 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c54b8559;
 Thu, 2 Apr 2020 10:21:45 +0200 (CEST)
Date: Thu, 2 Apr 2020 10:21:58 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Norbert van Bolhuis <nvbolhuis@aimvalley.nl>
Message-ID: <20200402082158.GA17870@meh.true.cz>
References: <976ee2b6-3f1c-fae8-f39b-bb2cc361ba7d@aimvalley.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <976ee2b6-3f1c-fae8-f39b-bb2cc361ba7d@aimvalley.nl>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_012207_914595_3218AD5A 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] Include linux/sockios.h for SIOCGSTAMP
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

Norbert van Bolhuis <nvbolhuis@aimvalley.nl> [2020-03-30 17:18:12]:

Hi,

subject is missing proper prefix `linux-atm: include linux/sockios.h for SIOCGSTAMP`

> linux-atm saaldump.c/atmdump.c need to include linux/sockios.h for SIOCGSTAMP

Ok, where and how does this problem happens? That package builds fine for me
as it is, so I'm wondering Why? is this change needed. Can you add this detail
in the v2 of this patch?

> Signed-off-by: Norbert van Bolhuis <nvbolhuis@aimvalley.nl>
> ---
>   package/network/utils/linux-atm/patches/800-include_sockios.patch         | 21 +++++++++++++++++++
>   1 file changed, 21 insertions(+)
>   create mode 100644 package/network/utils/linux-atm/patches/800-include_sockios.patch
> 
> --
> 2.20.1
> 
> diff --git a/package/network/utils/linux-atm/patches/800-include_sockios.patch b/package/network/utils/linux-atm/patches/800-include_sockios.patch
> new file mode 100644
> index 0000000000..2501f17d17
> --- /dev/null
> +++ b/package/network/utils/linux-atm/patches/800-include_sockios.patch
> @@ -0,0 +1,21 @@
> +--- a/src/maint/saaldump.c	2020-03-29 22:58:01.089711789 +0200
> ++++ b/src/maint/saaldump.c	2020-03-29 22:59:17.564639387 +0200
> +@@ -6,6 +6,7 @@
> + #include <config.h>
> + #endif
> +
> ++#include <linux/sockios.h>
> + #include <stdlib.h>
> + #include <stdarg.h>
> + #include <stdio.h>
> +--- a/src/maint/atmdump.c	2020-03-29 22:58:18.573694469 +0200
> ++++ b/src/maint/atmdump.c	2020-03-29 22:58:49.956729365 +0200
> +@@ -6,6 +6,7 @@
> + #include <config.h>
> + #endif
> +
> ++#include <linux/sockios.h>
> + #include <stdlib.h>
> + #include <stdio.h>
> + #include <unistd.h>
> +

-- 
ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
