Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA586C96C
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 08:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3s3y1wnRhWqMohCSlrvyEYUS0OEqI63FgY5VkAi7lI=; b=S04J3kZAPeOWeP
	HozxNLmnnu8kIkDy3OEOlt0a+3BMjqLlAmdT9MINCgHRWk0Ewk0vlKuf7u2180+LsZ45hpe9FfOML
	os9FOBZ2kWi+xN7jKlaKp9pXQGB7K3DnxHKvxlfJToK+pDUTSmKhgncH+Y8WA38MIHypon6B1ejIy
	af2j63kyZkc2qZeJe4dmqq4POrYO7ALxbWOIzB/C2qEIALFwNIgZd8VLhsDaupaHcOnPhqpdXoYpT
	A1joM9OErvYY3FFiZKZ8DyKAtYlH7hoYPuemVuGfZxzOIBogg6O23/BjXwk5SUgkCJIUfeCUTJYCO
	vPdHk47ydvmw9E/bQ11Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho0GL-0006ne-VU; Thu, 18 Jul 2019 06:51:34 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho0G2-0006nD-Em
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 06:51:16 +0000
Received: by mail-qt1-x843.google.com with SMTP id l9so26048945qtu.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 23:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4EzxBPIFR62sm3wzSVHELDGfUT6aKHcEGArLtTJA8Gk=;
 b=lkaoS/wdq64ZJ7qmOfpjAHDZBmk1O6+Smeq4Bw2Q8m56txUf4Q7AkAw19RAZ8ye39u
 aNuOhdEYGetZgXPQCNt8DdU8XCP817LUOmE7QrCq+MTDs10QbujyT+oYtuARd1hFPseG
 kWiQWY0NZ/aWLvQmjodDYdTSRh3zRlN7S1Uypg5T/CNxv8cTMefgaaRxroTwzcvb8ACC
 szL85BRqkZ/QoPphQz9tqXDQA2kcxZzBv104ra7aIlBfGBOIaMQhXGnMQBZSkHZO7dRA
 WrEpq3imeQEPX0uUJ2ZsZKsECuiFwspvQRyU2L2dmyAsCVWBq3ncAo2AhwOjwmX6xtHM
 pArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4EzxBPIFR62sm3wzSVHELDGfUT6aKHcEGArLtTJA8Gk=;
 b=JvZV+mllTPX4ophqcGBLxf4sGt19TxOQkMG91lcpIPFTZ5YZ+HnsdovSVG/jJhY2bn
 82gcSxxDKZKI+T+GHZmB8sLwhnTzZhE89oZ3zsa9epX+BGewfg1OEjj2YAgYTtZmPHZS
 VpFg/ptaVSSCnCF0x/JvY0AWahlkcz1uLGGfL99M0tlpWfFs0yGQUTe06Db/oPGNmppz
 PCJYXT66Ub5TmfyJSk1c6/W5zxBDj1gQqC6syUvh+fozmUSXJdfsfeBPziDlVa2AmJ6A
 yL6XoO20vpzmbmjddPp7U09jXsoc7m2UCPBDATJph1sn1U7iesM2wMRSnVhGWSHr1C9x
 LE0g==
X-Gm-Message-State: APjAAAWR0xqXUvdSyjeN5w7m+mMDlnGPNLmyUGKnawVAfOgqtqArXJ0e
 zGDvJIrrk+2LYu55ZpG6rPVH08qFRE15Jd3/vJI=
X-Google-Smtp-Source: APXvYqyPbK9ohsLmTDQRaXZJPe+W4NmyD7MmK3NTmjd9dz8x1yk5usAH+Ah2oOaqZfFsfsnJCevWyKq9Egb3ICk+UVE=
X-Received: by 2002:a0c:928b:: with SMTP id b11mr31982081qvb.209.1563432672469; 
 Wed, 17 Jul 2019 23:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190718013552.19112-1-rosenp@gmail.com>
In-Reply-To: <20190718013552.19112-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Thu, 18 Jul 2019 08:51:01 +0200
Message-ID: <CAJLcKsGwhujYuVAYXOg79mvn2Aa9Q17uDrc7VvSyn2C9zmrQaA@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_235114_501040_EAB52D0B 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ppp: Add missing headers
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Thu, Jul 18, 2019 at 3:36 AM Rosen Penev <rosenp@gmail.com> wrote:
>
> Fixes compilation with -Werror=implicit-function-declaration.
>
> Patch submitted upstream: https://github.com/paulusmack/ppp/pull/124
The upstream patch is not in line with the expected standards as
described in https://github.com/paulusmack/ppp/commit/347904e33a8a1993316e57445a1ba8243cd947ce

Hans
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
> ---
>  package/network/services/ppp/Makefile         |  2 +-
>  .../services/ppp/patches/700-musl.patch       | 22 +++++++++++++++++++
>  2 files changed, 23 insertions(+), 1 deletion(-)
>  create mode 100644 package/network/services/ppp/patches/700-musl.patch
>
> diff --git a/package/network/services/ppp/Makefile b/package/network/services/ppp/Makefile
> index c8016dc619..7f266e126b 100644
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
> diff --git a/package/network/services/ppp/patches/700-musl.patch b/package/network/services/ppp/patches/700-musl.patch
> new file mode 100644
> index 0000000000..70fad9ef99
> --- /dev/null
> +++ b/package/network/services/ppp/patches/700-musl.patch
> @@ -0,0 +1,22 @@
> +From bbe58b9f83ba197d1cca1ca4338214e35f6131c8 Mon Sep 17 00:00:00 2001
> +From: Rosen Penev <rosenp@gmail.com>
> +Date: Tue, 2 Jul 2019 12:53:12 -0700
> +Subject: [PATCH] pppd.h: Add missing headers
> +
> +---
> + pppd/pppd.h | 2 ++
> + 1 file changed, 2 insertions(+)
> +
> +diff --git a/pppd/pppd.h b/pppd/pppd.h
> +index 6e3743fd..b3470571 100644
> +--- a/pppd/pppd.h
> ++++ b/pppd/pppd.h
> +@@ -50,6 +50,8 @@
> + #define __PPPD_H__
> +
> + #include <stdio.h>            /* for FILE */
> ++#include <stdlib.h>           /* for encrypt */
> ++#include <unistd.h>           /* for setkey */
> + #include <limits.h>           /* for NGROUPS_MAX */
> + #include <sys/param.h>                /* for MAXPATHLEN and BSD4_4, if defined */
> + #include <sys/types.h>                /* for u_int32_t, if defined */
> --
> 2.17.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
