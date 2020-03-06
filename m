Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 166F417B694
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 07:08:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/lUaq5Jp2uIUGW3YzaWkm4ECxVygJuZEV3pMvKh8Eo=; b=lt8Rx2c8vApHRm
	qrhnUZhC7afJPyZFoQtPjGkQwnCfC6CKGWl1Bw5XPW5jIA9Hx+aqUzTcNR8z4ixrmHnHXDC+EQmqi
	AxKXLmP3U1+cFATDaHB7w0zMUjAF6ROjVRbpA0mFlwFJeldjT75I34YTQdv43yp0Ce3KU1sPj2q71
	Vf9sm+deQJ1IwJPALYfJwJMLv5kRm+iRDUtAM66WfLVZDJsXvLNrwSjd5tFeNt8whwfJTHeOLlfTV
	QAcglT3KnED0L9/4rerK4VttTRbrIvpShBXsfcUjwKlIPhEFmGUzUkwY5cWCQhKsHXhNbMipow6LI
	Z5W61l8iBKSAWHtsAXfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA6AE-0003vB-1c; Fri, 06 Mar 2020 06:08:50 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA6A6-0003ug-2H
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 06:08:43 +0000
Received: by mail-oi1-x242.google.com with SMTP id j80so1462065oih.7
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 22:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6lffrFZAsCovVJL1lnxoK4MXy9CZj3FhUdExqRFGKnc=;
 b=s5eUXYQfDKglJzFmdAqrxD2wdrMRiN7swZKFEznqVxZtEpONpgzM9toBDiK9Hsh/+R
 6odKaLWWYKbmMZdbu2/RzpNRbycCtjBg1wwhGwRDU4evW0xBkczT1Tels48MkJwxE0wO
 D1/wqYuS3e1ZkTmwSNXQjOaXMcEzsi6RJk+UZAJXQ3PQEfsKDugtmdoCDOsvfaQ+OmIh
 zHsWU6QeoKGiHe4mt5POrtzIE1N2NWuqXBYzVZOxgHnzmGQVu3MNYOg9tlPo2gCdDzMh
 U2WSfAL6vU1r+CitlcIosfcix1mCojKyPKZODlcgNBpk7RLG3TklS/OzeQ3fEV2iWisP
 bsHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6lffrFZAsCovVJL1lnxoK4MXy9CZj3FhUdExqRFGKnc=;
 b=U5ySqMIQR6g3p0Dij1YX1GgosY8bblfh9AaijajOhEzddNNnXDRumUNOjz6Pur25+K
 R3T6eQf2KXpT6XZjnq4vUt+Jo37LgV3ePbRHtcjj6W2wZuxQuaItDxciP4p5hgY3CIIK
 sy138WPPwEqvGazCTsOC/oIBrTCB6PhHG5veDdTNfg9xEYyGnPV3TNLYuNJLqPy/Eo9h
 /ttfqRnWV51xVg0f2tqM+WrZgYwBoARR5sPGwHjQChlPTULR/FGgm+GssqEJ9jVKJ19l
 Y31j/PBnzdoUSoAXsYRNNXJcl8vzhyXSbju1pn5y4eB5NCTaCFZcGAWSnwvdp6BnV8G+
 /Z+A==
X-Gm-Message-State: ANhLgQ1ppWWYQQX0XJrg/up04uuAvxQlfZSzPsG/3AjDIot0FTvBe6ee
 MxqMoM8QNPqCjiPf5bj/QSrkHAdbDMQQGsS/ekM=
X-Google-Smtp-Source: ADFU+vt8KHvsemm54tqd7LECYNMcmysDhfi5EDepv/aZWq5z+8Crm12TENKcZlpNLD50ld8h8PHOBfZmSWGhOiURf/M=
X-Received: by 2002:aca:b703:: with SMTP id h3mr1510190oif.148.1583474920294; 
 Thu, 05 Mar 2020 22:08:40 -0800 (PST)
MIME-Version: 1.0
References: <20200305211643.25830-1-paulb@blazebox.homeip.net>
In-Reply-To: <20200305211643.25830-1-paulb@blazebox.homeip.net>
From: Rosen Penev <rosenp@gmail.com>
Date: Thu, 5 Mar 2020 22:10:53 -0800
Message-ID: <CAKxU2N9=pe0RM55CV=YNQYr1jXVDQqH+DzN1+v36cP7s-TmLwQ@mail.gmail.com>
To: Paul Blazejowski <paulb@blazebox.homeip.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_220842_109878_17357463 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Mar 5, 2020 at 1:17 PM Paul Blazejowski
<paulb@blazebox.homeip.net> wrote:
>
> Patch taken from
> https://github.com/barrybingo/exfat-nofuse/commit/8b59e1f338fdd87f1d5a9db2a119a3745bb467d5
>
> Signed-off-by: Paul Blazejowski <paulb@blazebox.homeip.net>
This is the wrong place to submit.

Nevertheless, I'd rather restrict this driver to 4.19 and below.

kernel 5.4 has an exfat driver available in the staging directory.
> ---
>  kernel/exfat-nofuse/Makefile               |  2 +-
>  kernel/exfat-nofuse/patches/0003-5.0.patch | 88 ++++++++++++++++++++++
>  2 files changed, 89 insertions(+), 1 deletion(-)
>  create mode 100644 kernel/exfat-nofuse/patches/0003-5.0.patch
>
> diff --git a/kernel/exfat-nofuse/Makefile b/kernel/exfat-nofuse/Makefile
> index 8354f5621..ebc101144 100644
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
> diff --git a/kernel/exfat-nofuse/patches/0003-5.0.patch b/kernel/exfat-nofuse/patches/0003-5.0.patch
> new file mode 100644
> index 000000000..da28fc03c
> --- /dev/null
> +++ b/kernel/exfat-nofuse/patches/0003-5.0.patch
> @@ -0,0 +1,88 @@
> +From 8b59e1f338fdd87f1d5a9db2a119a3745bb467d5 Mon Sep 17 00:00:00 2001
> +From: Junde Yhi <lmy441900@aosc.xyz>
> +Date: Thu, 10 Jan 2019 21:19:49 +0800
> +Subject: [PATCH] exfat_{core,super}.c: fix build on 5.0-rc1, MS_* -> SB_*
> +
> +In torvalds/linux@e462ec50cb a new set of superblock flags was added
> +to replace the original MS_* ones, and in torvalds/linux@e262e32d6b
> +the MS_* flags are suppressed unless uapi/linux/mount.h is included.
> +As is suggested, we should use the new API now.
> +---
> + exfat_core.c  |  6 +++++-
> + exfat_core.h  |  6 ++++++
> + exfat_super.c | 11 ++++++++++-
> + 3 files changed, 21 insertions(+), 2 deletions(-)
> +
> +diff --git a/exfat_core.c b/exfat_core.c
> +index 143b721..397afd6 100644
> +--- a/exfat_core.c
> ++++ b/exfat_core.c
> +@@ -1757,8 +1757,12 @@ void fs_error(struct super_block *sb)
> +
> +       if (opts->errors == EXFAT_ERRORS_PANIC)
> +               panic("[EXFAT] Filesystem panic from previous error\n");
> +-      else if ((opts->errors == EXFAT_ERRORS_RO) && !(sb->s_flags & MS_RDONLY)) {
> ++      else if ((opts->errors == EXFAT_ERRORS_RO) && !EXFAT_IS_SB_RDONLY(sb)) {
> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> +               sb->s_flags |= MS_RDONLY;
> ++#else
> ++              sb->s_flags |= SB_RDONLY;
> ++#endif
> +               printk(KERN_ERR "[EXFAT] Filesystem has been set read-only\n");
> +       }
> + }
> +diff --git a/exfat_core.h b/exfat_core.h
> +index 52d05c7..3d023b7 100644
> +--- a/exfat_core.h
> ++++ b/exfat_core.h
> +@@ -45,6 +45,12 @@
> + #include "exfat_api.h"
> + #include "exfat_cache.h"
> +
> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> ++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & MS_RDONLY)
> ++#else
> ++#define EXFAT_IS_SB_RDONLY(sb) ((sb)->s_flags & SB_RDONLY)
> ++#endif
> ++
> + #ifdef CONFIG_EXFAT_KERNEL_DEBUG
> +   /* For Debugging Purpose */
> +       /* IOCTL code 'f' used by
> +diff --git a/exfat_super.c b/exfat_super.c
> +index 79ff5f9..6452b54 100644
> +--- a/exfat_super.c
> ++++ b/exfat_super.c
> +@@ -2086,7 +2086,7 @@ static void exfat_write_super(struct super_block *sb)
> +
> +       __set_sb_clean(sb);
> +
> +-      if (!(sb->s_flags & MS_RDONLY))
> ++      if (!EXFAT_IS_SB_RDONLY(sb))
> +               FsSyncVol(sb, 1);
> +
> +       __unlock_super(sb);
> +@@ -2142,7 +2142,12 @@ static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
> +
> + static int exfat_remount(struct super_block *sb, int *flags, char *data)
> + {
> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> +       *flags |= MS_NODIRATIME;
> ++#else
> ++      *flags |= SB_NODIRATIME;
> ++#endif
> ++
> +       return 0;
> + }
> +
> +@@ -2495,7 +2500,11 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
> +       mutex_init(&sbi->s_lock);
> + #endif
> +       sb->s_fs_info = sbi;
> ++#if LINUX_VERSION_CODE < KERNEL_VERSION(4, 14, 0)
> +       sb->s_flags |= MS_NODIRATIME;
> ++#else
> ++      sb->s_flags |= SB_NODIRATIME;
> ++#endif
> +       sb->s_magic = EXFAT_SUPER_MAGIC;
> +       sb->s_op = &exfat_sops;
> +       sb->s_export_op = &exfat_export_ops;
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
