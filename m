Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE088C434
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 00:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WB2iVLcmMm98J7LhkSPOV8gtEsKN8x5HjIArEM5wD34=; b=lkVJxNno062nkqZSgzgdLF/HsR
	9AaSIS7PU5ypUciKxZeR14t8b+T7r/hcxsFKfC05Td/qEOOP/tF1EJFz1Skslr2RWBYGofqE9Jtp5
	HAj6swe9TUfcPe//v/vHWlf7nLsoZ8/SeWaq4ZlwAhf1cATWT11EjmJvXhhun/ADOW5j82VdIQJe+
	GBgj9ryg5glhgly2c95koTThbO1JhHg/Hz78cFt3QCvinlbUyKqjJfSx91dIeGX3zBVYorfZu1ioJ
	8XjG+qhQyspHrvpOc7m/Kapo5Gmpvj7LT+cqAhD1Ha1kKWzAW48tGBhGNc+groe+2AbAaGwLehGlv
	RS8QVDSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfFK-00038i-Os; Tue, 13 Aug 2019 22:26:26 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfFE-000386-TD
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 22:26:22 +0000
Received: by mail-oi1-x243.google.com with SMTP id o6so990512oic.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 15:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=nG+aun8CgK6SgIc1DBnPttS9O/jw/NxzXjM9ZaNdVjo=;
 b=UfYzQwJ82q1ksMG3JUUJXQJueqpHsYRU60v0evH86ijJV4y4Zc1MDZ4Pa31lCNVStZ
 WLFdT+hbeTfNFsaQ9ujLDu5OVqxquHoaPyaEC5pl7i+RjilS5VFsb+Am03xZ7eH6dAb/
 Ae+gTeO6Hqf226esZSzQz2Z1601+t7n6ivsKfytFoTXHTFpkHcWSxg40UTuICZ+ZJCMN
 eeso//bLpofJW31sXIpaO6TXmgv1WGP3AtfBU3edZ69qRDWqDNeC/KwNSZ+UYeZBHhdq
 r1sUKxiu0SsDFa1fMZhtSPXEEbDBGj8BEC5u/jBMjCAQRB5ZIr/yD6Yl4+7B8Nf6KmUW
 7GpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=nG+aun8CgK6SgIc1DBnPttS9O/jw/NxzXjM9ZaNdVjo=;
 b=VU4VbR0Do/bWf7EwT/woo5ENXZ5+bjpZP4wzKdpqG5lGhPMrWWR45z/PXctEeMw/17
 gk1ynxwn0TjGa5KaT5szKm3+ZB76iIeHcXg553T1QAovGxGHcrtG3rYDVwLB2WsqUdsX
 wJuxtUlw8OBqxF2XXCtbeL+EoXPxBy/DRyjrXJR1WbFAD1G599Q6KObN/S77n+LKxY8Q
 ynGaj+hf8Qnxe4kzDKZvukmXySkDHM+u+AlHar9wMBkgkNOyOFe8FN/HKmYNaejy5q0/
 j6BrzVxRGoxz7L2D3G/F1FflZLyZsKGKgFRsZhSz5/NEPrehp0y0yCed+Cnk8g0AAAI+
 p/pQ==
X-Gm-Message-State: APjAAAWf5mozl78A0IsHhYZtgEgEXolQ1OoPohwC9brd2ZLlKt/P1nAU
 869+JHYHKNS9tCnjX/8/ZgAVubukZs80yw+kwxZL0KkW6Ks=
X-Google-Smtp-Source: APXvYqwFSAdesMSbu3/HCQb6x6RKcc4An2g9h/bN09sR+479lU2zzpraBe9hvt5MVFX7qGgisBlXpS5AJb4QXhQam/A=
X-Received: by 2002:aca:111a:: with SMTP id 26mr3148398oir.20.1565735177697;
 Tue, 13 Aug 2019 15:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190506215718.14886-1-rosenp@gmail.com>
In-Reply-To: <20190506215718.14886-1-rosenp@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 13 Aug 2019 15:26:06 -0700
Message-ID: <CAKxU2N-_iiDWTkibzRH7Qh50J-X+99uCkQKvTe=2mGww=PFwOg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_152620_969967_0E12E72C 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] xfsprogs: Replace valloc with
 posix_memalign
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

On Mon, May 6, 2019 at 2:57 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> Fixes compilation under uClibc-ng.
>
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
Can this also be backported to 18.06? It's failing there as well:
https://downloads.openwrt.org/releases/faillogs-18.06/arc_arc700/base/xfsprogs/compile.txt
> ---
>  package/utils/xfsprogs/Makefile               |  2 +-
>  ...six_memalign-instead-of-deprecated-v.patch | 31 +++++++++++++++++++
>  2 files changed, 32 insertions(+), 1 deletion(-)
>  create mode 100644 package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
>
> diff --git a/package/utils/xfsprogs/Makefile b/package/utils/xfsprogs/Makefile
> index 50a5147b04..353773840a 100644
> --- a/package/utils/xfsprogs/Makefile
> +++ b/package/utils/xfsprogs/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=xfsprogs
>  PKG_CPE_ID:=cpe:/a:sgi:xfsprogs
> -PKG_RELEASE:=2
> +PKG_RELEASE:=3
>  PKG_VERSION:=4.11.0
>  PKG_SOURCE_URL:=@KERNEL/linux/utils/fs/xfs/xfsprogs
>  PKG_HASH:=c3a6d87b564d7738243c507df82276bed982265e345363a95f2c764e8a5f5bb2
> diff --git a/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch b/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
> new file mode 100644
> index 0000000000..7bf1c77a40
> --- /dev/null
> +++ b/package/utils/xfsprogs/patches/130-db-malloc-Use-posix_memalign-instead-of-deprecated-v.patch
> @@ -0,0 +1,31 @@
> +From 930f9aa8f08759fa739dd6e615ba8b3a1890008d Mon Sep 17 00:00:00 2001
> +From: Rosen Penev <rosenp@gmail.com>
> +Date: Mon, 6 May 2019 13:56:13 -0700
> +Subject: [PATCH] db/malloc: Use posix_memalign instead of deprecated valloc
> +
> +valloc is not available with uClibc-ng as well as being deprecated, which
> +causes compilation errors. aligned_alloc is not available before C11 so
> +used posix_memalign.'
> +
> +Signed-off-by: Rosen Penev <rosenp@gmail.com>
> +---
> + db/malloc.c | 3 +--
> + 1 file changed, 1 insertion(+), 2 deletions(-)
> +
> +diff --git a/db/malloc.c b/db/malloc.c
> +index 77b3e022..38fe0b05 100644
> +--- a/db/malloc.c
> ++++ b/db/malloc.c
> +@@ -56,8 +56,7 @@ xmalloc(
> + {
> +       void    *ptr;
> +
> +-      ptr = valloc(size);
> +-      if (ptr)
> ++      if(!posix_memalign(&ptr, sysconf(_SC_PAGESIZE), size))
> +               return ptr;
> +       badmalloc();
> +       /* NOTREACHED */
> +--
> +2.17.1
> +
> --
> 2.17.1
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
