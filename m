Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84944818E4
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 14:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oiW+nfSNvnJnribvQ1PtY8ydFGEhUAAQvQp4hK+sfps=; b=txh6p72tmagS1d
	E7UMVSBMRM0ADD26mAepyB6Dodere2yFaacbvIdb0DZkqMLyjEAfGZISBr63vc+5bftm7jpOCCNUb
	Swm/YExLKFHySBdetY8IKXNz6LMwJgABIMX0/azITtmFWCXLM0EIB/Ps7stjsIPn0W2+2uSQ2m4H+
	CPt0Emkl8clkIJXOicxStwQkJ2EjNvQZQtO77SOLeTM5OYsFfTGChmD2bC/KudouzJORZhu6U9DNU
	Ca+Op2ms+YPfJO0HCJiNU2JkoUfeEUZHadCf7NDgW0IbwuvYCbsMFK6DLbP6LrJZ284mT9iVZxmom
	B5SrHbROMELHnScJDr/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubpR-0001TH-4Q; Mon, 05 Aug 2019 12:11:05 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubpI-0001Sx-C6
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 12:10:57 +0000
Received: by mail-qk1-x734.google.com with SMTP id d15so59814566qkl.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 05:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eyuW1ms9fd0cFpWRTxy0uMkSTkLoJF1RpvVLeg+dtaQ=;
 b=uVFwMv646HCpV1lbUsnGHeUSP11aINf0vFlHTSmn2eEpux1BuCKbxc2eOVsUVXOQwl
 7YBTBet+2SzJKS1iJjOCH7BgV7qnlMFJZL5KzBljXxTz5cezBt+yxNadQ8xtHPprf/rs
 yradZEH4W9kVi8Lfv/j1IpiLWX1mNxZU9pS9MJm8blRekijRUuhFJwq5YZU7W2lKX8I6
 /HUzXX/RtsHNZ7AEgIrzrcMSM1glcwK2DOlG2OzKMlQvdaCuBc0x+/Fr56Bq0WS8QpcB
 nM16Sx6i+o+ExRZWYqFJY9P64UcawDwXz4tErel9MWfsqQNtgQvbOdyWu+ENMxHOT8i6
 pi7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eyuW1ms9fd0cFpWRTxy0uMkSTkLoJF1RpvVLeg+dtaQ=;
 b=hBEJZJbvmedQuEqqeM3Yvib+fDG0LikoBo0ooj3JlEYWIszlkABHZH3opaPezG3d0D
 dmSvoVwy5yENz2GIjXBWYI9T3r6467d1JjOl1q+vIq+oQl8Qpoy5M/NgzFa39umwenTW
 ycRGgqc3fz62yEeKuqUTr4KFKB40FpMbZijW3C/qCrSrfTAK/xe7GYzr+yH+wq7/DpWT
 nuEUNbEpnyxsiRf0DwRo4+Wo+j8e1qq2XL1bSbBdwe2J6eD3TvDQgaNTKz9QM4XgPGbf
 T89KqKfLSMnY6GiO9PZ+4jL07ZebeViMP32GMkoMD+bs2A2sPaeWDE6Xa/eM8F9D2ImS
 gk4A==
X-Gm-Message-State: APjAAAWm2Dsgl3aEByodkAqxUKOGXuC+CNowCibE3Su02zu0QN3iaMf2
 /cpG/k27XTPY9ZoMstw+25fpnFDyeyDFiXsmSCw=
X-Google-Smtp-Source: APXvYqy9UNhhQs063A2Ejv040aWvSsIkRrVSG57sY2FzMrwULJi9kx3qDX0AqdW99U1lZt1IMP8Z4Hr1+DouFa/QWXI=
X-Received: by 2002:a37:a5c6:: with SMTP id
 o189mr101831668qke.455.1565007053435; 
 Mon, 05 Aug 2019 05:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190723030138.12976-1-rosenp@gmail.com>
In-Reply-To: <20190723030138.12976-1-rosenp@gmail.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Mon, 5 Aug 2019 14:10:42 +0200
Message-ID: <CAJLcKsFoaeimx8fqbUgAHhsPK4dUckaKcZ9hYL5NexKsY-_-Sw@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_051056_440724_1A1091D7 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH-18.06] omcproxy: fix compilation on
 little-endian CPUs
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

On Tue, Jul 23, 2019 at 5:02 AM Rosen Penev <rosenp@gmail.com> wrote:
>
> From: Eneas U de Queiroz <cote2004-github@yahoo.com>
>
> Don't use cpu_to_be32 outside of a function.
>
> Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
This patch has already been applied in the past; see
https://git.openwrt.org/?p=project/omcproxy.git;a=commit;h=722151f04348cf1b759613c087bced52fb45790a

Hans
> ---
>  Please backport to 18.06
>  https://downloads.openwrt.org/releases/faillogs-18.06/arm_cortex-a9_vfpv3/base/omcproxy/compile.txt
>  package/network/services/omcproxy/Makefile    |  2 +-
>  ...-use-cpu_to_be32-outside-of-function.patch | 35 +++++++++++++++++++
>  2 files changed, 36 insertions(+), 1 deletion(-)
>  create mode 100644 package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch
>
> diff --git a/package/network/services/omcproxy/Makefile b/package/network/services/omcproxy/Makefile
> index 28de833a1c..e121fa0b23 100644
> --- a/package/network/services/omcproxy/Makefile
> +++ b/package/network/services/omcproxy/Makefile
> @@ -8,7 +8,7 @@
>  include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=omcproxy
> -PKG_RELEASE:=4
> +PKG_RELEASE:=5
>
>  PKG_SOURCE_URL:=https://github.com/sbyx/omcproxy.git
>  PKG_SOURCE_PROTO:=git
> diff --git a/package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch b/package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch
> new file mode 100644
> index 0000000000..d71315b60e
> --- /dev/null
> +++ b/package/network/services/omcproxy/patches/100-mrib.c-don-t-use-cpu_to_be32-outside-of-function.patch
> @@ -0,0 +1,35 @@
> +From 721064f2eb1dabe5bda63dcaff249b73ab891e6c Mon Sep 17 00:00:00 2001
> +From: Eneas U de Queiroz <cote2004-github@yahoo.com>
> +Date: Fri, 14 Dec 2018 15:13:41 -0200
> +Subject: [PATCH] mrib.c: don't use cpu_to_be32 outside of function
> +
> +cpu_to_be32 is not a constant, so it can't be used outside of a
> +function.
> +
> +Signed-off-by: Eneas U de Queiroz <cote2004-github@yahoo.com>
> +
> +--- a/src/mrib.c
> ++++ b/src/mrib.c
> +@@ -21,6 +21,7 @@
> + #include <stdio.h>
> + #include <string.h>
> + #include <stdlib.h>
> ++#include <endian.h>
> + #include <sys/socket.h>
> + #include <sys/ioctl.h>
> + #include <unistd.h>
> +@@ -54,7 +55,13 @@ struct mrib_iface {
> +       struct uloop_timeout timer;
> + };
> +
> +-static uint32_t ipv4_rtr_alert = cpu_to_be32(0x94040000);
> ++/* we can't use cpu_to_be32 outside a function */
> ++#if __BYTE_ORDER == __BIG_ENDIAN
> ++static uint32_t ipv4_rtr_alert = 0x94040000;
> ++#else
> ++static uint32_t ipv4_rtr_alert = 0x00000494;
> ++#endif
> ++
> + static struct {
> +       struct ip6_hbh hdr;
> +       struct ip6_opt_router rt;
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
