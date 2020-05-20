Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C839E1DB5A6
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 15:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BNl1ghs71H8YW5TUJnnRZVUCIuDZOVmPMhAC501AREg=; b=Y76X1FS8GGbBolQ1XZzmR7h3O+
	z2fp5g2r1+r2nilDVrxgQthUQ0r7kDAkaENAUgzziZIUNikp0eu0Pqif1jtFg/KubpuGQzG9jNDRJ
	iderlNK1OLUBO1pFe8w28cRTMbPt9ljVRLNeRxdFd3FT+r6SR+L1ufn4m/hMC3bpWrpmhlnTAr/Kz
	93DbQM7XfG7sYjjT0EqjE9mvt0e0vDWpodzU1I/J8Te/Lyh2NSgvtLxsJhcLihbSpyMm8Mjku6SKq
	UW4I0gAWJpRunpNEYRa1snWJ73OZmDYQEgcnxKFyQfQfvfSNc5TSbRaWDHirsk1cQw1jmBHVKilnD
	AKW6m1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbP9y-0004Gi-HI; Wed, 20 May 2020 13:53:26 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbP9Z-00045N-4A
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 13:53:02 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id B8AFF5E26;
 Wed, 20 May 2020 15:52:59 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 9b3cc798;
 Wed, 20 May 2020 15:52:44 +0200 (CEST)
Date: Wed, 20 May 2020 15:52:58 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20200520135258.GA11175@meh.true.cz>
References: <20200330044434.1954554-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330044434.1954554-1-rosenp@gmail.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_065301_345122_D96181DE 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ppd: add missing header
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

Rosen Penev <rosenp@gmail.com> [2020-03-29 21:44:34]:

> sys/cdefs.h is needed for __P macro definition.

Where? I mean, which combination triggers this issue? Perhaps upstream
material?

> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/network/services/ppp/Makefile                |  2 +-
>  package/network/services/ppp/patches/800-cdefs.patch | 10 ++++++++++
>  2 files changed, 11 insertions(+), 1 deletion(-)
>  create mode 100644 package/network/services/ppp/patches/800-cdefs.patch
> 
> diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
> index 9e42cb7437..88b0a518e5 100644
> --- a/package/network/services/ppp/Makefile
> +++ b/package/network/services/ppp/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>  include $(INCLUDE_DIR)/kernel.mk
>  
>  PKG_NAME:=ppp
> -PKG_RELEASE:=2
> +PKG_RELEASE:=3
>  
>  PKG_SOURCE_PROTO:=git
>  PKG_SOURCE_URL:=https://github.com/paulusmack/ppp
> diff --git a/package/network/services/ppp/patches/800-cdefs.patch b/package/network/services/ppp/patches/800-cdefs.patch
> new file mode 100644
> index 0000000000..e361275a3c
> --- /dev/null
> +++ b/package/network/services/ppp/patches/800-cdefs.patch
> @@ -0,0 +1,10 @@
> +--- a/pppd/pppd.h
> ++++ b/pppd/pppd.h
> +@@ -53,6 +53,7 @@
> + #include <stdlib.h>		/* for encrypt */
> + #include <unistd.h>		/* for setkey */
> + #include <limits.h>		/* for NGROUPS_MAX */
> ++#include <sys/cdefs.h>		/* for __P */
> + #include <sys/param.h>		/* for MAXPATHLEN and BSD4_4, if defined */
> + #include <sys/types.h>		/* for u_int32_t, if defined */
> + #include <sys/time.h>		/* for struct timeval */
> -- 
> 2.25.1
> 
> 

-- 
ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
