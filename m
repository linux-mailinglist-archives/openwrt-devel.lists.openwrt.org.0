Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E29193494
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 00:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bwxJeyIMHRjVTmzDoZoi/BakmZEyFkHFCXPVi8rvSRA=; b=HQ446l8Zb+GE7QQ0cEKJIX4/wz
	CGGXxOKEq27klQGJxoxmJchl4Yjpwg1n2JLLT2AfqKF3Kz+ctaAkEygEkxfPnvleyVvEPz1CdV1Ak
	rcrvNE6ZiHe7rLbd/RMIvSFGhbEU5YcQSmdBRGGPcZfjmpTWGC54uduM89dhm9Gjms+xp+qOdGezL
	NgJBPa9xbcw3eqmAlyuAEp9k7t1t47+CJoyLa1Xcup51n1q+4Whk/vA5zQpmoCp8AmmyW46EZEi8v
	6T75ne5d62BW261xz5SpPZ/X/4dSqWwnFepJX2efMAIq1nvS+Os8Fn6TAFag/JEifIY+j4BP+7MFF
	DSDXmnhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFSf-0001ti-3O; Wed, 25 Mar 2020 23:29:25 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFSY-0001tP-4h
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 23:29:19 +0000
Received: by mail-oi1-x242.google.com with SMTP id k9so3844858oia.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 16:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=htQi7oO7djZJSJRoMC6xLTCWqog9kQacCWv+hmd6RxM=;
 b=iHWAHkiyKpSpeYiR0leSxJwr8ViQw2RZV175ZhoVZZkA8dx3JtrUrvRWW3VmAy6fhd
 oDclwjLQlZ7MSLAGLxbjh3OYfGY1bkwYvLOr0rmQqOJq1XTYxXMGborWOWkcau9Aqs92
 scqow1OPsX7qeetlO/kibtT+ltozUGI/GfMOD7HostjHH9gybUwzddpa+ocUWqGKA2Zo
 HtdzVpS123qdfurYN8NruDUjUoWAu3Qh5/qAMMwYFa1NgI7AxhGhbT69RBRjKGclW+ub
 d4YSc4yox5H64pfBOt6BpjenFD2iHbcUMXK9IepPhIgV4g9OhrSdPcQoeIS2IxlitKkX
 sC5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=htQi7oO7djZJSJRoMC6xLTCWqog9kQacCWv+hmd6RxM=;
 b=laCwxMs4d0ls38Kqn4RI2O/wNfdL625W8FN997s8aXKG8qY/g9B2n2v9/79ytEte9Y
 S0oF8jj/EZ+j2jwjCCk9AZ/K6bPW2tCb/ftVwlNutz8PHu09rMsM/eklbQIgoK4JKX4a
 W3oDLlp0ihNnpf1puszPEXTW5WbVkV1lRoa2LpydBuYrkxgzOZQR3WY/rOBB8flShPI8
 a7FizET9/qEx1b2F4I7HvIqZaS67lU/CK/Zh3TMD/jHQ627fyhP7zZMaaHnEw0LDsyxZ
 hYYaP+f2nkUovm+AD8V0IyGSyd5K7Txb8mgPzaVj34rDR6cLRlJ/zzsC3fnR/lga40PD
 eyVw==
X-Gm-Message-State: ANhLgQ1YJeq47m6Nsf/gthyuqZIt5sXCnkIZ8OHioVWTtjNf+MKvcr42
 dmDEpFO6O/Y/COCDdNpyzUplw20BVX6CkvLX//y1pGStDA8=
X-Google-Smtp-Source: ADFU+vuMMcDTzj/c7bNEUK0vn2dsw5TXV46wl7fR/w4z3QU7EvqWhM8nkNvpHNH/AurJYE8VKSBB7tRroOs6Anx2/9I=
X-Received: by 2002:aca:574a:: with SMTP id l71mr9225oib.148.1585178957005;
 Wed, 25 Mar 2020 16:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200325232747.8675-1-rosenp@gmail.com>
In-Reply-To: <20200325232747.8675-1-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 25 Mar 2020 16:29:06 -0700
Message-ID: <CAKxU2N8qP8Fa6sOhzWS0Os9qJM2+XHHRaYWTZjPmzS64+-mhMA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_162918_183979_10F508BC 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] fstoools: add define for GLOB_ONLYDIR
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Mar 25, 2020 at 4:27 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> This was originally a patch for musl. It is not present in musl as it is a
> GNU extension.
>
> Place it here where it belongs.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
Funny. openembedded has the same patch:
https://github.com/kraj/meta-openwrt/blob/master/recipes-core/fstools/files/0001-Define-GLOB_ONLYDIR-if-not-available.patch
> ---
>  libfstools/overlay.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/libfstools/overlay.c b/libfstools/overlay.c
> index 14214a3..39215d5 100644
> --- a/libfstools/overlay.c
> +++ b/libfstools/overlay.c
> @@ -30,6 +30,10 @@
>  #include "libfstools.h"
>  #include "volume.h"
>
> +#ifndef GLOB_ONLYDIR
> +#define GLOB_ONLYDIR 0x100
> +#endif
> +
>  #define SWITCH_JFFS2 "/tmp/.switch_jffs2"
>
>  static bool keep_sysupgrade;
> --
> 2.25.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
