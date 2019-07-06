Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BD76133F
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 01:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJj20OWHLTeJ+aezbiRgPraaFVlPJbFwxMYc9QupsRg=; b=ha0woO38pGcqpX
	DUzzaDHrkPE2otI9x53qznil1R0q+Y8a1QuPFrBOpe5oEuz8GpthPwFJb+tAKaYf9b4PWd83AFrXP
	FeDlkDMP1jyiGjV0cGEJIlOBI2yWev20Qv0ZcmHyKpm5UX3KTTaDYEzqoo0JaNaNwofSKm5zUSrVE
	rLCUsnpCq+664ZDKI02ysQE079eSyb31x0H/xkVPpbVxQy/x5GUhCn7Gy+sNGfCIHMmtrG+DamCWw
	XxvaSA6hI6zQmJmj7+GgZYObuwfyIK9KuTDCPjtSYozSErJwpS5TTdOvES3HKTkoYhahfbMbWpgJJ
	ejtitYz+alO3TA+xH0lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjuYV-0004OV-2N; Sat, 06 Jul 2019 23:57:23 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjuYM-0004Nu-D5
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jul 2019 23:57:15 +0000
Received: by mail-lf1-x144.google.com with SMTP id c19so2870511lfm.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jul 2019 16:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s6cTdCEV5IbOggsC2fNDbcjFG0XtlzuDu3cI8DLFfRs=;
 b=Jr0aTyQ3I5QWzsDpuciCOjC1EeTWkmpom2qinvfOk5Peb7MGh1bG3VXeWO4Xct/Zzj
 b7OP+BGTf14T+9DR3KQJPZ9yeVTtxGrVEZBM5o1mfIaCcMOP9OT0aWYq+PRTCsuptsWo
 flydfW8RSUtb0warAdpD5i8Xobvti2JKeL4aK4BR6eUzuAqTLQcZVkzCUn45u8oWR6fI
 MaecsgaFvA9GcO0FeYN3+pA/eKkKwpD0kXWn3FIx4/sNpdfzQrtuzDArHsRtRKdGDwlx
 DEao8kdxN0wIhQ5r7AB3YN2AjN7bvK58CVViosoVt09iOQacthktKIvW3l5jFXrKrqeF
 0QSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s6cTdCEV5IbOggsC2fNDbcjFG0XtlzuDu3cI8DLFfRs=;
 b=mZOiBOvL4Z8yAJxr5LYpg8mHMNZA4tNPqWtO/duJOPLBnjrrU8l+PWpg04gCc+xGvz
 HZ8rz726pm65yh+PeGmwxFm4FDJdYQCf0jdGw+aSpMbuZsSNaIer2SkohYeGm0nCaa6F
 9c9uA/ZzFVRyOsdqCjJWr3ypQpq08kfQSTkuCVylHtxEUw7nsk52xtYJQFgptuUC2/1K
 dgK2YRSjhOt09UrL37BjqkV9i682fgdxKhBDRcyMtvxMn5Urpcr5dqxuqPJlweprXvdP
 14wCLfNRMpprTcLB+aJcWHhXKK/T0AdaFn6i/6/1WWffIld2uOs84yZt4GcBSzi6px62
 pZRg==
X-Gm-Message-State: APjAAAVq3YQhSKmLNJ2DmwsuoDCI0gyTrP19ugP4YnZq1RvvAiMRRO2U
 b5N39izUXdW9oBpPRpMaDz6Ivy5LgrFsPgUgeBR4NQ==
X-Google-Smtp-Source: APXvYqwBqgC3D9XiHh8hioTOXk5A701JtdbwMU4bkq4JG8kx7zcucECFP/Ncg8/tj296YsSTu4UTCDbxrgn9g4zBOBo=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr5219593lfp.61.1562457431167;
 Sat, 06 Jul 2019 16:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190630150756.12439-1-linus.walleij@linaro.org>
 <3107719.WGKQvLnyPJ@debian64>
In-Reply-To: <3107719.WGKQvLnyPJ@debian64>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 7 Jul 2019 01:56:59 +0200
Message-ID: <CACRpkdZPWPo3qem9+JuWwuWYN7MwhB9JEWF1O4sbZGiJWmKUYQ@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_165714_474581_4269B4CD 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Add StorLink SL93512r images
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, Jul 6, 2019 at 5:45 PM Christian Lamparter <chunkeey@gmail.com> wrote:

> The buildbots are currently in a bit of a pickle:
> <http://phase1.builds.lede-project.org/builders/gemini%2Fgeneric>
>
> The gemini-target is failing for some time now.
>
> This is due to this error (see patch):
> https://patchwork.ozlabs.org/patch/1128185/

Thanks to Adrian for fixing this part.

> but also:
>
> cp ./ImageInfo-storlink_sl93512r /home/luser/owrt/test-chunkeey-20190705-170344/gemini-generic/build_dir/target-arm_fa526_musl_eabi/linux-gemini/tmp/openwrt-gemini-storlink_sl93512r-squashfs-factory.bin.tmp/ImageInfo
> cp: cannot stat './ImageInfo-storlink_sl93512r': No such file or directory
>
> This is because the script "Build/storlink-default-images" expects to have
> a "target/linux/gemini/image/ImageInfo-storlink_sl93512r".
>
> @Linus: Can you please make a patch that adds the missing file?

Yep I made a patch, testing it as we speak.

Sorry for stupid mistakes, I guess I forgot some git add and
then rebased and lost the file.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
