Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D6312307
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 22:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYUAsPd/9WERWgIutBSDVBswb9L7OeUwOtUUGIhT0f4=; b=WookqoNwjSlv1h
	T8LTqV73wqGnQhC6lXuyiId7i/9VIaocakQzv2/XEl+/Qlvq4BvNg6ag3+CoKTqwZCc7BCn0VNEv7
	2l0JevMcJRAyS1R2v5XjaHpgdvA1Sjg1RcIvjiE2FoUtSzcRcFDF/izIoDtjph93j689SZEJdGHWg
	5Jy5rlhjGTrWBbSpkeRwpSqstKILbuQwKIcTRiW9lsZ+bhAD+bPd6bJSOkQPT/G4QBEZ/8pNozxQc
	6Tp1WoCCXA90jNhuGXb9T/OGqQE4VhZ+fcwBNrKwI39mMRk+EJbIsblbBrErgV04beQNUlWOgdHBn
	jwRmYsrqcqvbWfLtlHOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMI5m-00081b-Ea; Thu, 02 May 2019 20:14:06 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMI5f-00081G-DU
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 20:14:01 +0000
Received: by mail-oi1-x241.google.com with SMTP id k9so2692073oig.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 13:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+USkwFfWEO/iuSKbF3TfrlZiugcS2DHLH8XPUZA8LCQ=;
 b=fC+O+U/hxDrLDEUa+oMUZW9YgDTAD/2KsGE5O6TqppMDj54gk5VtoLFnuokWGzlr1G
 wxcxi/IUZiK64rk8eNn4Nw0UcmZRVpkcJ/IVbEW55PirIX+TzPta1qZnvBsw1sYqPJS0
 4PU1U005mQuGeUkyzjgCpOIpaPBJMYiUoF4k2FoiKgr76B2l11HUzKIErFgN+qaBTB2E
 iGEnPpGro9o5tyBeMhkc8kdnHy2V1BgfoJBtmc5Gdr/TpE7nohoMrykuY+EsV24gsyzV
 LYoId6+jkZy4hX8OpTPX2hckQSyl6nzYocuNpzV1AGIBSDMRZwxiAqtW+j65yi2idbVQ
 S3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+USkwFfWEO/iuSKbF3TfrlZiugcS2DHLH8XPUZA8LCQ=;
 b=oaeWGVtQ6Mg6dDxLTzxHc9W4CHDietWTKkfrYefsXk3/5o1HMUHZGux+UOahAb+Kr4
 j+ggAJ6Il4g0UtjHQKYEahobJuMq7BDuGopWCfgqhHqlRU7SOXb85iBNElCxWqLH4r5I
 M384oMdyy2cy8s6SnTrr6fKOdWax2hPmTW79a8wxJXMZRVQH7hnOtlURsER09ohOUfus
 dMup9u6QuVnbpqztBFNR2fq3hptMuTtDT9Y94wlIXVGPKMobYgUkXYZ+N6i2VLAIB6RI
 87UfWbl8J6nbnzbGRjRXmallmEGbNAaF0m4kbkDbOdZ0s9c0YEi40kdIuK5BtuPIWLX/
 ekYw==
X-Gm-Message-State: APjAAAUz5vfvapGAoFWzAF0D2tO/7LCHz+LXKOQmiQyE6etzWFH2ZeIp
 8q4HMNM+DvcgtdrOdhjOmUavOxxS3Z5NCP5/dW0=
X-Google-Smtp-Source: APXvYqyobzltVE5TxMJ0ecXLJ4/7RcJz9bbvy64+omGlUsbnYoQXSiZuQ9MJ1/NhS7c0Lntsr+hLka1OJulaO2bpSnY=
X-Received: by 2002:aca:7213:: with SMTP id p19mr3827183oic.20.1556828037964; 
 Thu, 02 May 2019 13:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190502164706.31453-1-jeffery.to@gmail.com>
In-Reply-To: <20190502164706.31453-1-jeffery.to@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 2 May 2019 13:13:46 -0700
Message-ID: <CAKxU2N_p-VQSKVcP_0z7twvAXgaNX0MePh=BBFmCF1r5GsrFOw@mail.gmail.com>
To: Jeffery To <jeffery.to@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_131359_663823_1749FFB1 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] zlib: Use relative paths in pkg-config
 metadata file
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, May 2, 2019 at 9:47 AM Jeffery To <jeffery.to@gmail.com> wrote:
>
> The default zlib.pc file generated by cmake contains absolute paths.
> This patches the file to use relative paths (relative to ${prefix} and
> ${exec_prefix}).
git grep with-zlib= | wc -l in the packages repo returns 12. I wonder
if this fixes them...
>
> Signed-off-by: Jeffery To <jeffery.to@gmail.com>
> ---
>  package/libs/zlib/Makefile                         |  2 +-
>  .../patches/004-relative-pkg-config-paths.patch    | 14 ++++++++++++++
>  2 files changed, 15 insertions(+), 1 deletion(-)
>  create mode 100644 package/libs/zlib/patches/004-relative-pkg-config-paths.patch
>
> diff --git a/package/libs/zlib/Makefile b/package/libs/zlib/Makefile
> index 4a2a0e53b0..c7a8415c79 100644
> --- a/package/libs/zlib/Makefile
> +++ b/package/libs/zlib/Makefile
> @@ -9,7 +9,7 @@ include $(TOPDIR)/rules.mk
>
>  PKG_NAME:=zlib
>  PKG_VERSION:=1.2.11
> -PKG_RELEASE:=2
> +PKG_RELEASE:=3
>
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
>  PKG_SOURCE_URL:=@SF/libpng http://www.zlib.net
> diff --git a/package/libs/zlib/patches/004-relative-pkg-config-paths.patch b/package/libs/zlib/patches/004-relative-pkg-config-paths.patch
> new file mode 100644
> index 0000000000..c86d19b412
> --- /dev/null
> +++ b/package/libs/zlib/patches/004-relative-pkg-config-paths.patch
> @@ -0,0 +1,14 @@
> +--- a/zlib.pc.cmakein
> ++++ b/zlib.pc.cmakein
> +@@ -1,8 +1,8 @@
> + prefix=@CMAKE_INSTALL_PREFIX@
> + exec_prefix=@CMAKE_INSTALL_PREFIX@
> +-libdir=@INSTALL_LIB_DIR@
> +-sharedlibdir=@INSTALL_LIB_DIR@
> +-includedir=@INSTALL_INC_DIR@
> ++libdir=${exec_prefix}/lib
> ++sharedlibdir=${exec_prefix}/lib
> ++includedir=${prefix}/include
> +
> + Name: zlib
> + Description: zlib compression library
> --
> 2.20.1
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
