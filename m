Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B11913E50
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 09:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+klVFt+fSrGjb9zF2Mhq/JEMvpd4t5IfISHGJyWjvFw=; b=rXbPY6JcryzUDo
	n73797rjbYkKcSAhll31Ibt1k6Kq6M2+N1b10klHis6mxVxJa8DXafFcxyXmEZx0tpVO1oZd2O1FF
	ky6HGWp0bVCvEFQ+8fWvH7lc6nl6/q5h9aZmbSgcb5oK0/ZYQQgi9hoYKzWC1Tmnjqt6gi2JDw7uO
	eEoivr0O75JrxuSJ7Ifgxn767Vq2iAiFqi1bShFNtCv5gOmyc7veOi7ebCAUqcJu4ub+vC5LpKS3q
	I2WZ42hxyjNu7G5WOtpOQsg24y9KsEwZEh7rdwemAMLjDoMNRIKwosZ38oiYKyDpIHQfgWtbeBtkW
	GyvfZfKtevMakl6nGCiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNBy1-0004r8-2c; Sun, 05 May 2019 07:53:49 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNBxq-0004qj-Ge
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 07:53:40 +0000
Received: by mail-qt1-x841.google.com with SMTP id i31so11407300qti.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 00:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vM/SvhmHTJVNgPktwSD88BFUbeAQFQgWdMtERlV9wOI=;
 b=Yfu0YWCcNcsZaG0bBlnMOVqq1ExJL6pv5DrD/cYCCI6ks7Bu8KmwH513h0P3qSe8bW
 FFYclZ0QYPYKixfBWeG/aSa4m8s1N+YzQT9sMl5pGyj7X4ucjmIeURZ535YT9E4TwFts
 aTFSDf+H4CWE6sKn/YUgLQXEkmkWA90tppGqv4bIFYJTN9g3fNSOoZIj4jVNkxDxJlo1
 4Q5SCb9jWVm0s/KQj1pUeGgc3w8EI+rCfFH7aPBTNlST8VCnwAgIO1AuSH72vKm+W3gf
 JDj8jfGbN9T2YIdZYGpVgzvfA0ZU4dVbQQsWMqjvw05tl4jmmqHvJo/kmgF1NizRX+qV
 UpqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vM/SvhmHTJVNgPktwSD88BFUbeAQFQgWdMtERlV9wOI=;
 b=FUeH5A8fGZBgxg5qXsTiDuaYJ8hxaTfgfZG6zBczRdeRe81Dg4qbeDJ0D4/qE9NAZh
 AVuA65o9oz1I/zlVooCmuHwAabIz+xzhHKqXATMAhYi9mXx3bhldvxPpI0uDdtTyI9Ic
 0CtUZ2o16ll5CSdDUHkmQ+MMXtzvECggeZmKvKXI4nB/gWnfprmPjFL9oG0Hf804hoH+
 akwAv5TR8BBRAUiBcbTYC0MX/qhk5JkIufxt0vS0A6JAARf/L0fqAeNszY83J70kVqhx
 yExiMn51BYVAL+4c7Af1SqgH1RVDqrGWB0CrlLA/vzCAC3HXJJZYUguEXt3g/cZSBo/7
 Cy3w==
X-Gm-Message-State: APjAAAWK3YhtaxU5Viqz6OrLx2AIaGQNawqaCMr5dUGHnk26aIvl+BjQ
 BgCMmeqO7+PY1wagj7kI4fVUXIZ7mskiMr1DMW47lg==
X-Google-Smtp-Source: APXvYqxVe+27lA33tLEJUDO49oFb/jxrghDhWkUMTc17m9iClGFQtYxtXou9LyU5K8MIUFDsVrNeeCq64GtN4JmCHOc=
X-Received: by 2002:a0c:99df:: with SMTP id y31mr15772609qve.171.1557042816769; 
 Sun, 05 May 2019 00:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190504202920.14779-1-mail@aparcar.org>
In-Reply-To: <20190504202920.14779-1-mail@aparcar.org>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sun, 5 May 2019 09:53:24 +0200
Message-ID: <CAJLcKsGbiDeQxkrXsMpk2YAqBRZMygGu=cBotV3goA32=F8zew@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_005338_582043_C1CE6D85 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] procd: detect lxc container and
 behave accordingly
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, May 4, 2019 at 10:30 PM Paul Spooren <mail@aparcar.org> wrote:
>
> meaning to not mount some specific parts witch cause trouble.
>
> The patch is based on previous work of @mikma to combine OpenWrt with
> lxd[0]. This patch however adds a detection copied from *virt-what* to
> check /proc/1/environment for the string "container".
>
> Thanks to @dangowrt for the cleanup.
>
> [0]: https://github.com/containercraft/openwrt-lxd/blob/master/patches/procd-openwrt-18.06/001_lxd_no_mounts.patch
>
> Signed-off-by: Paul Spooren <mail@aparcar.org>
> ---
>  container.h     | 22 ++++++++++++++++++++++
>  initd/early.c   | 20 ++++++++++++--------
>  initd/zram.c    | 11 +++++++----
>  plug/coldplug.c | 14 +++++++++-----
>  4 files changed, 50 insertions(+), 17 deletions(-)
>  create mode 100644 container.h
>
> diff --git a/container.h b/container.h
> new file mode 100644
> index 0000000..c9b5e46
> --- /dev/null
> +++ b/container.h
> @@ -0,0 +1,22 @@
> +/*
> + * Copyright (C) 2019 Paul Spooren <mail@aparcar.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU Lesser General Public License version 2.1
> + * as published by the Free Software Foundation
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#ifndef __CONTAINER_H
> +#define __CONTAINER_H
> +#include <stdlib.h>
> +
> +static inline unsigned short int is_container() {
Let this function return a bool

Hans
> +       return !!getenv("container");
> +}
> +
> +#endif
> diff --git a/initd/early.c b/initd/early.c
> index 2e15112..7b281b2 100644
> --- a/initd/early.c
> +++ b/initd/early.c
> @@ -25,6 +25,7 @@
>  #include "../utils/utils.h"
>  #include "init.h"
>  #include "../libc-compat.h"
> +#include "../container.h"
>
>  static void
>  early_dev(void)
> @@ -56,14 +57,17 @@ early_mounts(void)
>  {
>         unsigned int oldumask = umask(0);
>
> -       mount("proc", "/proc", "proc", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
> -       mount("sysfs", "/sys", "sysfs", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
> -       mount("cgroup", "/sys/fs/cgroup", "cgroup",  MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
> -       mount("tmpfs", "/dev", "tmpfs", MS_NOATIME | MS_NOSUID, "mode=0755,size=512K");
> -       ignore(symlink("/tmp/shm", "/dev/shm"));
> -       mkdir("/dev/pts", 0755);
> -       mount("devpts", "/dev/pts", "devpts", MS_NOATIME | MS_NOEXEC | MS_NOSUID, "mode=600");
> -       early_dev();
> +       if (!is_container()) {
> +               mount("proc", "/proc", "proc", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
> +               mount("sysfs", "/sys", "sysfs", MS_NOATIME | MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
> +               mount("cgroup", "/sys/fs/cgroup", "cgroup",  MS_NODEV | MS_NOEXEC | MS_NOSUID, 0);
> +               mount("tmpfs", "/dev", "tmpfs", MS_NOATIME | MS_NOSUID, "mode=0755,size=512K");
> +               ignore(symlink("/tmp/shm", "/dev/shm"));
> +               mkdir("/dev/pts", 0755);
> +               mount("devpts", "/dev/pts", "devpts", MS_NOATIME | MS_NOEXEC | MS_NOSUID, "mode=600");
> +
> +               early_dev();
> +       }
>
>         early_console("/dev/console");
>         if (mount_zram_on_tmp()) {
> diff --git a/initd/zram.c b/initd/zram.c
> index b41bfd9..487d3d6 100644
> --- a/initd/zram.c
> +++ b/initd/zram.c
> @@ -12,6 +12,7 @@
>  #include <sys/stat.h>
>
>  #include "../log.h"
> +#include "../container.h"
>
>  #include "init.h"
>
> @@ -116,10 +117,12 @@ mount_zram_on_tmp(void)
>                 waitpid(pid, NULL, 0);
>         }
>
> -       ret = mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NOATIME, "errors=continue,noquota");
> -       if (ret < 0) {
> -               ERROR("Can't mount /dev/zram0 on /tmp: %m\n");
> -               return errno;
> +       if (!is_container()) {
> +               ret = mount("/dev/zram0", "/tmp", "ext4", MS_NOSUID | MS_NODEV | MS_NOATIME, "errors=continue,noquota");
> +               if (ret < 0) {
> +                       ERROR("Can't mount /dev/zram0 on /tmp: %m\n");
> +                       return errno;
> +               }
>         }
>
>         LOG("Using up to %ld kB of RAM as ZRAM storage on /mnt\n", zramsize);
> diff --git a/plug/coldplug.c b/plug/coldplug.c
> index c6a89c3..12df421 100644
> --- a/plug/coldplug.c
> +++ b/plug/coldplug.c
> @@ -22,6 +22,7 @@
>  #include "../libc-compat.h"
>
>  #include "hotplug.h"
> +#include "../container.h"
>
>  static struct uloop_process udevtrigger;
>
> @@ -43,13 +44,16 @@ void procd_coldplug(void)
>         char *argv[] = { "udevtrigger", NULL };
>         unsigned int oldumask = umask(0);
>
> -       umount2("/dev/pts", MNT_DETACH);
> -       umount2("/dev/", MNT_DETACH);
> -       mount("tmpfs", "/dev", "tmpfs", MS_NOSUID, "mode=0755,size=512K");
> +       if (!is_container()) {
> +               umount2("/dev/pts", MNT_DETACH);
> +               umount2("/dev/", MNT_DETACH);
> +               mount("tmpfs", "/dev", "tmpfs", MS_NOSUID, "mode=0755,size=512K");
> +               mkdir("/dev/pts", 0755);
> +               mount("devpts", "/dev/pts", "devpts", MS_NOEXEC | MS_NOSUID, 0);
> +       }
> +
>         ignore(symlink("/tmp/shm", "/dev/shm"));
> -       mkdir("/dev/pts", 0755);
>         umask(oldumask);
> -       mount("devpts", "/dev/pts", "devpts", MS_NOEXEC | MS_NOSUID, 0);
>         udevtrigger.cb = udevtrigger_complete;
>         udevtrigger.pid = fork();
>         if (!udevtrigger.pid) {
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
