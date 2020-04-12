Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70FC1A5BD2
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Apr 2020 03:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4qhCWGfC5aIq7tvrXOsK+pdPHHvtJ39QEDMCK0Yjqc=; b=WF7NVNZckC+wGD
	nbIrHunqpIAcLJgrCA3JAf5atunIImU1uj8YYZ62DKH7yoJw+8J5sUZGK40OoGWi8uq5MLltXKPVj
	m5wgAyTlFiqnbQgmxknKC622D77L2nnL0DugRjbLD8y4F2muY7YtR/D9+MP6AxXEgweryGBguzexx
	7hCsevGkPwu/Pu5I1Hvb7Rb98tPMU0ncD16gYoi4+qvzPj8wbVeklv7m5Fu2zXpbMAcc1ZI/7zwVw
	bSjqX2DSObt/Frkf2bP5LO2fkjdIO1xpxXQlE9U3dV+YghtzURL3i0jsAiCM8mtyHSLzfo6ajgMCN
	RAOtOlHMiJweEt5miRJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNRdh-0003hX-2H; Sun, 12 Apr 2020 01:42:25 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNRdW-0003fi-NH
 for openwrt-devel@lists.openwrt.org; Sun, 12 Apr 2020 01:42:16 +0000
Received: by mail-qv1-xf41.google.com with SMTP id o15so2837368qvl.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Apr 2020 18:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xkTEHPEmy729OZUElzLnJpkgM/03s2lrjTRywFuZcA=;
 b=JnD4+tNpPLhDBfEnYYyMLU0Qh3FJvFFUbeC1KFy4EwTy7opepmg/XtCLQ2NyYMfo9/
 13K30bDYu7ZnDfBaOIVa48m+oTMmyBZJhl84yXgFlzYgWq2BkMHn0uy+efhmw8MhDlK9
 hYAXbYkHZvrwT+W1mJUq6S5Axa1bjYX4d++gy9of6Q6RBOTXMmRsVkNdjSGavC4a1nBf
 3qW0yCBYZqBxlzTQPt0o4XqcEFysQKYDVtEdMFSNWuCk6w7131OkJfEepykWJh3Vo6DF
 baHhjPYQIFdkqOVW+pVFkbcrtpKzAcbAZSinvw8JSI+wE4OUng5v1jxr8C1ySYWJsHQL
 A2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xkTEHPEmy729OZUElzLnJpkgM/03s2lrjTRywFuZcA=;
 b=oHL1nwvxdPCbHsit9e2M9VXq5a9eUWyGcGwG0azoPw87swMlvJm2RW7XRdaznxV6qG
 wpwju+OrjKoVfkfgNDzIuyy+XKA6T8/8NEG7mIj2LyZoOO0ouPEsCTx3Qa/7SxlFyD5/
 U1vr7UvZnEb0VBEvZw06xtP0BS08bsp1FMuXmXq3JL1r3RHQ7MxQlY6q0j/6Lw7DqAZu
 /VNnNhadPy7OAavJEDWCG2fu5EXA5marfLha/MKTqL1Ow1cR06aFBiFVMJqq+VTQKg97
 NlmHV1vIzfS2IaTwY/A51YODyLSUDDPWn2OTVZ6iEZ3GDQ18WMFS6+mURyaiYij5KxVw
 3xkg==
X-Gm-Message-State: AGi0PuYZVhRtQhNMirSEncK6IC7i/OxkmlDzK/urp0xVXN2JfrrF1yMq
 9SwPHMnqUVc3/6Mz84Mu54yeIqfwvuKO0VsD+Yz5+c64rmM=
X-Google-Smtp-Source: APiQypK7syS3imoWh7v/XORfQh/VI1X4wBDTsyqIqklX0ZkIvlTw2GWKAmDnDpfXAR5Ksq2qx//P369P5JQNexGfXzk=
X-Received: by 2002:a0c:8bc2:: with SMTP id a2mr11237378qvc.246.1586655731055; 
 Sat, 11 Apr 2020 18:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200407200724.8308-1-cotequeiroz@gmail.com>
 <f2434fb3-461d-b58f-6a6c-323162480808@wwsnet.net>
In-Reply-To: <f2434fb3-461d-b58f-6a6c-323162480808@wwsnet.net>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Sat, 11 Apr 2020 22:41:59 -0300
Message-ID: <CAPxccB3rU4Ka-D8Tu0sGhw=RvUEgUvUTNo6tCu6sa29PueiayQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_184214_777307_C83F5C79 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 0/6] build: update scritps/config to
 kconfig-v5.6
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

On Sat, Apr 11, 2020 at 7:23 PM Jo-Philipp Wich <jo@mein.io> wrote:
>
> Hi Eneas,
>
> I am sorry but I had to completely revert the kconfig bump. It thoroughly
> broke the package repository builds since multiple days and the fatal
> recursive dependencies make it a no-go for master, at least as far as our
> build infrastructure is concerned.
>
> Right now, a single malformed feed package can entirely break the builder,
> across all architectures.
>
> I am happy to reapply it but first we have to figure out why things like
> http://builds.openwrt.org/master/packages/builders/arm_fa526/builds/224/steps/compile/logs/stdio
> happen and how we can prevent them in the future.
>
> I'm also strongly in favor of making recursive deps a warning, at least when
> CONFIG_BUILDBOT=y.
>
> Regards,
> Jo

Hi

I'm really sorry--and embarrassed, really--to have caused all this
trouble.  I'll see what I can do from here, but I'm not familiar
enough with the build bot system to do much on my own--and that was
the origin of all problems.

As for the recursive dependency warning/error, at first I thought
about using CONFIG_BUILDBOT but then scripts/config/conf may be built
before .config even exist.  I added a make option, so the bots could
just add WARN_RECURSIVE_DEPS=1 to the make args.  Even changing the
recursive dep to a warning would not have been enough to overcome
this, for example:

feeds/base/package/utils/busybox/config/Config.in:712: invalid statement

I'm not sure if the feeds/base/package structure is the same as
$(TOPDIR)/package, but 1da014f should have quoted the source filenames
in package/utils/busybox/config/Config.in.

Does anybody have any suggestion about how this could be moved forward?

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
