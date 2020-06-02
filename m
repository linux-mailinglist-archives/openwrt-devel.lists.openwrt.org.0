Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B599B1EFC55
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 17:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1e91axK4OJLHJ5sm8NG5ZMuIJXW6ioT3iLxzkHgLuQk=; b=uzC50i2R8EjVNR
	zdq3g6xEcyYi5MtshQXvhtkuimqq9iAM7LxxyRajU3wGZuo4aBtWM1a77sOPdpTOSySSlltBW5Kbz
	fnvui/kqE7LnMtBHsq7coT7D1Ziz9Db2rd3Zos6omkMzQZGiTKkL4UcjuKgfM1Y39HFNRDHxfWFnB
	V5ElhEaJjsGBJdQ3NYW9ijbrb9cplOuwIpnXHWzHgfvo6tV4NwnHiwbSLid2H13vkQdbf8Q5LeLDi
	xZJvuHRt1XaiiO0yK+Rs9sUODRruA6OvgdEKXt46/EfojHahX3ScVoZA8zfu2TvG9Q2hDrBi1NJjI
	r5Vh0k/lp4gOUXfEGQYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhE5Z-0002DJ-IC; Fri, 05 Jun 2020 15:16:57 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhE5R-0002C1-5E
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 15:16:51 +0000
Received: from mail-ua1-f67.google.com ([209.85.222.67])
 by util-01.infra.openwrt.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <rosenp@gmail.com>) id 1jhE5N-0004l0-JD
 for openwrt-devel@openwrt.org; Fri, 05 Jun 2020 11:16:46 -0400
Received: by mail-ua1-f67.google.com with SMTP id v25so3423139uau.4
 for <openwrt-devel@openwrt.org>; Fri, 05 Jun 2020 08:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ixc4DcSZWuV4p6ZPsaIGqf/2m7Lij2oDq1+Dr6DDxkA=;
 b=gxzqTmF+jUGolK4n/sBkdUINxfJ5esUTl+TWeUJtvsY0ukYNWJQunCZmBOGn+7mBgu
 q7/b8YVyRh04ljoLifSxsQCjRvpF5o/SihCeYT7BvYDNlMxjWqHHAU6zIC1ha2FZUhqV
 zvuTE7v41hAJRZir16hgY2lxKieuKt839HOzrNCarb2B1rCABcGPT0mb4YaWAr3h7vYW
 kR6joOxkF4twO2k1HlhMTHW9cTEk86ryQA+KE6MADZuOZlc048BdyH5GmG004uQYWmhF
 fe47q3bGrLIEqB5uMz2v2EC2dnzONQ4tUA79D9+Pe/KXRRwyxvyK6czh26VqTVBdy/67
 K0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ixc4DcSZWuV4p6ZPsaIGqf/2m7Lij2oDq1+Dr6DDxkA=;
 b=V1TfdoacViQsLugqXhu25tndwHBlPnXo0GKb71iF5JT6YlbfuHGQrlDPjOK60rBEWS
 mm4oByBrt4Lyw8fpgF/ax+i/88eUvwojI6n5GugkC+diQWQOW3wCvVK+ve+ECfWYLozi
 HzQXfo0jwycPQ7/C86XHIfhK5yvKdCFHlzsLviFS4d0WzNDqhn2p3LVw/Z0oTj5VHzLu
 4yo5tOwl1jN+hz2K1GwK0PHWcCbww2JcTM530eljDDvz+2uWw663s7L0l2Wpky1inbVh
 mbmaRd9LscRvuM/s0lqXY2hIv+2HO+abHPd/JOTEzG7XZouNYIKycky/9eIY4vTlkIfE
 /PFw==
X-Gm-Message-State: AOAM532JA72mqpEI2OuvSv50shKQqfhOAzzv05xyaKK+YZ58j+Vcz7nv
 jz6SbZ4e9Jg+yBzZsNtBxQwAjP+0bJ8XgWA0G1r8CWYB
X-Google-Smtp-Source: ABdhPJzoz8SQoKVNPzuoAfzlYpwd6hqkCIbMSNWJMRz7YBt/dJkigAreIFWqu/mCdQpa9yAd+X4tFp8z33aWDYYNpq0=
X-Received: by 2002:a9d:2d87:: with SMTP id g7mr792581otb.186.1591129781464;
 Tue, 02 Jun 2020 13:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200526022009.2545101-1-iancooper@hotmail.com>
 <KU1PR01MB2022BE75254218CF30E1C9B7ADB00@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
In-Reply-To: <KU1PR01MB2022BE75254218CF30E1C9B7ADB00@KU1PR01MB2022.apcprd01.prod.exchangelabs.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 2 Jun 2020 13:29:27 -0700
Message-ID: <CAKxU2N_-qMVUx68gvdc2V1YxL8Rx1pHqTwTOa+hrOVqLyv5ucw@mail.gmail.com>
To: Ian Cooper <iancooper@hotmail.com>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview:  On Mon, May 25, 2020 at 7:20 PM Ian Cooper wrote: > > Removes
 the standalone implementation of stack smashing protection > in gcc's libssp
 in favour of the native implementation in musl, > glibc and [...] 
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: common.mk]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_081649_372728_49BA5F68 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] toolchain: remove gcc libssp and
 use libc variant
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
Cc: openwrt-devel@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, May 25, 2020 at 7:20 PM Ian Cooper <iancooper@hotmail.com> wrote:
>
> Removes the standalone implementation of stack smashing protection
> in gcc's libssp in favour of the native implementation in musl,
> glibc and uClibc and introduces a uniform configuration interface.
>
> This also makes kernel-level stack smashing protection available
> for builds using non-musl libc (subject to architecture support).
>
> Signed-off-by: Ian Cooper <iancooper@hotmail.com>
I tested this. I noticed two problems.

It breaks make menuconfig by moving some advanced developer options to
the front.

It also breaks some packages that used libssp. I noticed this with my
latest version bump of pkgconf with certain platforms.
> ---
>  config/Config-build.in      | 4 ----
>  toolchain/Config.in         | 2 +-
>  toolchain/binutils/Makefile | 8 --------
>  toolchain/gcc/Config.in     | 6 +-----
>  toolchain/glibc/common.mk   | 3 ++-
>  5 files changed, 4 insertions(+), 19 deletions(-)
>
> diff --git a/config/Config-build.in b/config/Config-build.in
> index 61a9265ad7..ac1e05d2ff 100644
> --- a/config/Config-build.in
> +++ b/config/Config-build.in
> @@ -249,7 +249,6 @@ menu "Global build settings"
>
>         choice
>                 prompt "User space Stack-Smashing Protection"
> -               depends on USE_MUSL
>                 default PKG_CC_STACKPROTECTOR_REGULAR
>                 help
>                   Enable GCC Stack Smashing Protection (SSP) for userspace applications
> @@ -257,18 +256,15 @@ menu "Global build settings"
>                         bool "None"
>                 config PKG_CC_STACKPROTECTOR_REGULAR
>                         bool "Regular"
> -                       select GCC_LIBSSP if !USE_MUSL
>                         depends on KERNEL_CC_STACKPROTECTOR_REGULAR
>                 config PKG_CC_STACKPROTECTOR_STRONG
>                         bool "Strong"
> -                       select GCC_LIBSSP if !USE_MUSL
>                         depends on KERNEL_CC_STACKPROTECTOR_STRONG
>         endchoice
>
>         choice
>                 prompt "Kernel space Stack-Smashing Protection"
>                 default KERNEL_CC_STACKPROTECTOR_REGULAR
> -               depends on USE_MUSL || !(x86_64 || i386)
>                 help
>                   Enable GCC Stack-Smashing Protection (SSP) for the kernel
>                 config KERNEL_CC_STACKPROTECTOR_NONE
> diff --git a/toolchain/Config.in b/toolchain/Config.in
> index 762f4e10d7..cb557d4ad3 100644
> --- a/toolchain/Config.in
> +++ b/toolchain/Config.in
> @@ -284,7 +284,7 @@ config USE_MUSL
>         bool
>
>  config SSP_SUPPORT
> -       default y if USE_MUSL || GCC_LIBSSP
> +       default y if !PKG_CC_STACKPROTECTOR_NONE
>         bool
>
>  config USE_EXTERNAL_LIBC
> diff --git a/toolchain/binutils/Makefile b/toolchain/binutils/Makefile
> index c5c8bf588c..6eee77eaa9 100644
> --- a/toolchain/binutils/Makefile
> +++ b/toolchain/binutils/Makefile
> @@ -54,14 +54,6 @@ HOST_CONFIGURE_ARGS = \
>         $(SOFT_FLOAT_CONFIG_OPTION) \
>         $(call qstrip,$(CONFIG_EXTRA_BINUTILS_CONFIG_OPTIONS))
>
> -ifneq ($(CONFIG_SSP_SUPPORT),)
> -  HOST_CONFIGURE_ARGS+= \
> -               --enable-libssp
> -else
> -  HOST_CONFIGURE_ARGS+= \
> -               --disable-libssp
> -endif
> -
>  ifneq ($(CONFIG_EXTRA_TARGET_ARCH),)
>    HOST_CONFIGURE_ARGS+= \
>                 --enable-targets=$(call qstrip,$(CONFIG_EXTRA_TARGET_ARCH_NAME))-linux-$(TARGET_SUFFIX)
> diff --git a/toolchain/gcc/Config.in b/toolchain/gcc/Config.in
> index 7d7f34210a..c481af88d0 100644
> --- a/toolchain/gcc/Config.in
> +++ b/toolchain/gcc/Config.in
> @@ -49,11 +49,7 @@ config GCC_DEFAULT_SSP
>
>  config GCC_LIBSSP
>         bool
> -       prompt "Build gcc libssp" if TOOLCHAINOPTS
> -       depends on !USE_MUSL
> -       default y if !USE_MUSL
> -       help
> -           Enable Stack-Smashing Protection support
> +       default n
>
>  config SJLJ_EXCEPTIONS
>         bool
> diff --git a/toolchain/glibc/common.mk b/toolchain/glibc/common.mk
> index 768ff19060..b908afc50f 100644
> --- a/toolchain/glibc/common.mk
> +++ b/toolchain/glibc/common.mk
> @@ -39,7 +39,6 @@ ifeq ($(ARCH),mips64)
>    endif
>  endif
>
> -
>  # -Os miscompiles w. 2.24 gcc5/gcc6
>  # only -O2 tested by upstream changeset
>  # "Optimize i386 syscall inlining for GCC 5"
> @@ -61,6 +60,8 @@ GLIBC_CONFIGURE:= \
>                 --without-cvs \
>                 --enable-add-ons \
>                 --$(if $(CONFIG_SOFT_FLOAT),without,with)-fp \
> +                 $(if $(CONFIG_PKG_CC_STACKPROTECTOR_REGULAR),--enable-stack-protector=yes,) \
> +                 $(if $(CONFIG_PKG_CC_STACKPROTECTOR_STRONG),--enable-stack-protector=strong,) \
>                 --enable-kernel=4.14.0
>
>  export libc_cv_ssp=no
> --
> 2.25.1
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
