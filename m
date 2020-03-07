Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6B117C986
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 01:15:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bt9e3qtaMMFopxHyNzGTsPgoU+7kLIWCHatNIwft3PU=; b=Qrro3W1sds1Bk3GNyxvNZ+KR/v
	F+uc4/2gGIVGhOzRBEJktPmHftg0v0YLdowI8ZSmishQU9ptb7kzZDNQ89VQE9KLkkgvfo72cxc6i
	hC/nHxC8CSKCZxc0zNUdFHWr7hk0oMftCy7n618YAwP2UBDtfOV4qElPi30DxQUjjynbeeU0THBFA
	RudkoRpio0hwqELbmsFoq/4bSbYUcRdnGdS+bZm0sitQ/+9VHN8URLStd/EqsgTTdPmLTFS94Jfur
	9enbDDhdtSAf/umDdNlSP2lCXiT5abUlpzXzeGd46UwnclqndiU+bRjdBT5ri5UwNyD5pMZUre5Dm
	rLXvWgbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAN7u-00069Y-5Y; Sat, 07 Mar 2020 00:15:34 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAN7n-000694-NJ
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 00:15:29 +0000
Received: by mail-oi1-x241.google.com with SMTP id p125so4368982oif.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 06 Mar 2020 16:15:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=SCt4S3QdpVx0ESWMxnzQ8gJfAablabQub3HY0sUiEw8=;
 b=ZaX8YwVgeVG2UnDk7Aj9rAdqJRsLbcg4It7M6oDQ9OnI7kD394PNW9PjAHeWsBjqha
 9shjrLkzE4kMwwrZpvbH3ziBQgrUJNE8hq3Zo0AWlJWSxkKr9j22PpwAdaPf1MXBeaxY
 bJgLRNdpc+/CGgYeuxtdZOU4w+t4uJKbJpkVIMqrEqf5+nSI1ndiU5WKXRjS7IKSH8/6
 NxIupit+yaaUL8PtDI2y1K9ouMfZyPjhJM+1SQEN8XRFqdFqTNVdkuQQ17JkrRmaU8yp
 DP0T6lJukHztwBrBqX20R7vnW/USmQ6fCfOuqqi+moq6OK1OqerL+zRAuKbbSv+G0bGL
 ck2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=SCt4S3QdpVx0ESWMxnzQ8gJfAablabQub3HY0sUiEw8=;
 b=uJdasptQEbDeyPnvIuCbB9tpDGtrtuOhveU4lLTj3Oa7KBA7LLuCi21ztiODNrGbBw
 aTrvBDKAujO6wu/k3MLrEZfd5lP4ecs/pZU4pTCBBxwNb4/bGkCAL2IymO8hvhJxyoxW
 XtV90LU5OA229170VrgHHnOIStWmZ9BOv8gyZ9CjurMu8RMl4Mtw/4Zpq9UPXW0YNpEz
 lstxIWkfOYueYCnaO4EiKI6cC/F+hcbxN57EFvr03pYW/x2Ned/fvmr29Fj8X2zQX68y
 ptu2HYx5JxlIPKXGhGp1CFwIza0kicvNmb29RWYVdt8r5ZOaEqHthFXXwNMV1ClfMCas
 SNmQ==
X-Gm-Message-State: ANhLgQ25WyfQlSPdqIl19PK6DiEnCabUUxbSMnPijQ1Gz4W7EY762+0a
 5zlwMEbn6jwPYH1iw8dy0JtZqSy7K7qaAWEQWKGlvLcL
X-Google-Smtp-Source: ADFU+vu1WAwdr2KaAIRzhmPsBQEy8T8x4TXC3Xmo3GcD/EXsZI9PWolR7HTXNpbqlvHV4i6RN9JVlp+3KXtnocijK+M=
X-Received: by 2002:aca:b703:: with SMTP id h3mr4438854oif.148.1583540126562; 
 Fri, 06 Mar 2020 16:15:26 -0800 (PST)
MIME-Version: 1.0
References: <20200305211643.25830-1-paulb@blazebox.homeip.net>
 <CAKxU2N9=pe0RM55CV=YNQYr1jXVDQqH+DzN1+v36cP7s-TmLwQ@mail.gmail.com>
 <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
In-Reply-To: <8c4b340a-ae84-eb86-ab62-d04ffe2f6b5f@blazebox.homeip.net>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 6 Mar 2020 16:15:15 -0800
Message-ID: <CAKxU2N_YjghwpmSXD3Myu+iUpT1J0hJ03Yv3TT7U5DfZ_wiFKA@mail.gmail.com>
To: Paul Blazejowski <paulb@blazebox.homeip.net>, 
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_161527_765198_180F2633 
X-CRM114-Status: GOOD (  25.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] exfat-nofuse: fix kernel 5.4
 compilation issue
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

On Fri, Mar 6, 2020 at 11:38 AM Paul Blazejowski
<paulb@blazebox.homeip.net> wrote:
>
> Hi Rosen,
>
> Would this patch be more suitable while keeping older kernel compatibility?
>
> What's the best way to submit patches for packages without having
> github.com account?
Post here. I'll merge.
>
> Thanks!
>
> diff --git a/kernel/exfat-nofuse/Makefile b/kernel/exfat-nofuse/Makefile
> index 8354f5621..3931dbc34 100644
> --- a/kernel/exfat-nofuse/Makefile
> +++ b/kernel/exfat-nofuse/Makefile
> @@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
>  include $(INCLUDE_DIR)/kernel.mk
>
>  PKG_NAME:=exfat-nofuse
> -PKG_RELEASE:=2
> +PKG_RELEASE:=3
>
>  PKG_SOURCE_URL:=https://github.com/dorimanx/exfat-nofuse.git
>  PKG_SOURCE_PROTO:=git
> @@ -29,7 +29,7 @@ define KernelPackage/fs-exfat
>     TITLE:=ExFAT Kernel driver
>     FILES:=$(PKG_BUILD_DIR)/exfat.ko
>     AUTOLOAD:=$(call AutoLoad,30,exfat,1)
> -   DEPENDS:=+kmod-nls-base
> +   DEPENDS:=+kmod-nls-base @(LINUX_4_14||LINUX_4_19)
I prefer @!LINUX_5_4

I also want an exfat package for 5.4. As it stands even though it is
in the staging directory, I don't think a package is available.
>  endef
>
>  define KernelPackage/fs-exfat/description
>
>
> On 3/6/20 1:10 AM, Rosen Penev wrote:
> > On Thu, Mar 5, 2020 at 1:17 PM Paul Blazejowski
> > <paulb@blazebox.homeip.net> wrote:
> >>
> >> Patch taken from
> >> https://github.com/barrybingo/exfat-nofuse/commit/8b59e1f338fdd87f1d5a9db2a119a3745bb467d5
> >>
> >> Signed-off-by: Paul Blazejowski <paulb@blazebox.homeip.net>
> > This is the wrong place to submit.
> >
> > Nevertheless, I'd rather restrict this driver to 4.19 and below.
> >
> > kernel 5.4 has an exfat driver available in the staging directory.
> >> ---
> >>  kernel/exfat-nofuse/Makefile               |  2 +-
> >>  kernel/exfat-nofuse/patches/0003-5.0.patch | 88 ++++++++++++++++++++++
> >>  2 files changed, 89 insertions(+), 1 deletion(-)
> >>  create mode 100644 kernel/exfat-nofuse/patches/0003-5.0.patch
> >>
> >> diff --git a/kernel/exfat-nofuse/Makefile b/kernel/exfat-nofuse/Makefile
> >> index 8354f5621..ebc101144 100644
> >> --- a/kernel/exfat-nofuse/Makefile
> >> +++ b/kernel/exfat-nofuse/Makefile
> >> @@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
> >>  include $(INCLUDE_DIR)/kernel.mk
> >>
> >>  PKG_NAME:=exfat-nofuse
> >> -PKG_RELEASE:=2
> >> +PKG_RELEASE:=3
> >>
> >>  PKG_SOURCE_URL:=https://github.com/dorimanx/exfat-nofuse.git
> >>  PKG_SOURCE_PROTO:=git
> >> diff --git a/kernel/exfat-nofuse/patches/0003-5.0.patch b/kernel/exfat-nofuse/patches/0003-5.0.patch
> >> new file mode 100644
> >> index 000000000..da28fc03c
> >> --- /dev/null
> >> +++ b/kernel/exfat-nofuse/patches/0003-5.0.patch
> >> @@ -0,0 +1,88 @@
> >> +From 8b59e1f338fdd87f1d5a9db2a119a3745bb467d5 Mon Sep 17 00:00:00 2001
> >> +From: Junde Yhi <lmy441900@aosc.xyz>
> >> +Date: Thu, 10 Jan 2019 21:19:49 +0800
> >> +Subject: [PATCH] exfat_{core,super}.c: fix build on 5.0-rc1, MS_* -> SB_*
> >> +
> >> +In torvalds/linux@e462ec50cb a new set of superblock flags was added
> >> +to replace the original MS_* ones, and in torvalds/linux@e262e32d6b
> >> +the MS_* flags are suppressed unless uapi/linux/mount.h is included.
> >> +As is suggested, we should use the new API now.
> >> +---
> >> + exfat_core.c  |  6 +++++-
> >> + exfat_core.h  |  6 ++++++
> >> + exfat_super.c | 11 ++++++++++-
> >> + 3 files changed, 21 insertions(+), 2 deletions(-)
> >> +
> >> +diff --git a/exfat_core.c b/exfat_core.c
> >> +index 143b721..397afd6 100644
> >> +--- a/exfat_core.c
> >> ++++ b/exfat_core.c
> >> +@@ -1757,8 +1757,12 @@ void fs_error(struct super_block *sb)
> >> +
> >> +       if (opts->errors == EXFAT_ERRORS_PANIC)
> >> +               panic("[EXFAT] Filesystem panic from previous error\n");
> >> +-      else if ((opts->errors == EXFAT_ERRORS_RO) && !(sb->s_flags & MS_RDONLY)) {
> >> ++      else if ((opts->errors == EXFAT_ERRORS_RO) && !EXFAT_IS_SB_RDONLY(sb)) {
> >> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> >> +               sb->s_flags |= MS_RDONLY;
> >> ++#else
> >> ++              sb->s_flags |= SB_RDONLY;
> >> ++#endif
> >> +               printk(KERN_ERR "[EXFAT] Filesystem has been set read-only\n");
> >> +       }
> >> + }
> >> +diff --git a/exfat_core.h b/exfat_core.h
> >> +index 52d05c7..3d023b7 100644
> >> +--- a/exfat_core.h
> >> ++++ b/exfat_core.h
> >> +@@ -45,6 +45,12 @@
> >> + #include "exfat_api.h"
> >> + #include "exfat_cache.h"
> >> +
> >> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> >> ++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & MS_RDONLY)
> >> ++#else
> >> ++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & SB_RDONLY)
> >> ++#endif
> >> ++
> >> + #ifdef CONFIG_EXFAT_KERNEL_DEBUG
> >> +   /* For Debugging Purpose */
> >> +       /* IOCTL code 'f' used by
> >> +diff --git a/exfat_super.c b/exfat_super.c
> >> +index 79ff5f9..6452b54 100644
> >> +--- a/exfat_super.c
> >> ++++ b/exfat_super.c
> >> +@@ -2086,7 +2086,7 @@ static void exfat_write_super(struct super_block *sb)
> >> +
> >> +       __set_sb_clean(sb);
> >> +
> >> +-      if (!(sb->s_flags & MS_RDONLY))
> >> ++      if (!EXFAT_IS_SB_RDONLY(sb))
> >> +               FsSyncVol(sb, 1);
> >> +
> >> +       __unlock_super(sb);
> >> +@@ -2142,7 +2142,12 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
> >> +
> >> + static int exfat_remount(struct super_block *sb, int *flags, char *data)
> >> + {
> >> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> >> +       *flags |= MS_NODIRATIME;
> >> ++#else
> >> ++      *flags |= SB_NODIRATIME;
> >> ++#endif
> >> ++
> >> +       return 0;
> >> + }
> >> +
> >> +@@ -2495,7 +2500,11 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
> >> +       mutex_init(&sbi->s_lock);
> >> + #endif
> >> +       sb->s_fs_info = sbi;
> >> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> >> +       sb->s_flags |= MS_NODIRATIME;
> >> ++#else
> >> ++      sb->s_flags |= SB_NODIRATIME;
> >> ++#endif
> >> +       sb->s_magic = EXFAT_SUPER_MAGIC;
> >> +       sb->s_op = &exfat_sops;
> >> +       sb->s_export_op = &exfat_export_ops;
> >> --
> >> 2.25.1
> >>
> >>
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
