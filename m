Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313C710CD89
	for <lists+openwrt-devel@lfdr.de>; Thu, 28 Nov 2019 18:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWX726Yu+2Ud4qWakGRz/pWk54txcw3qs/shB38HBnQ=; b=Khm4NSnflwDUlo
	X6O1bhj2OdctQQfwxSNb/XyvZ7CJVZ9fYGBcvZsDb/Gk9IA+JwLrAKGfAwBB8WUYJWpaoQeYSwhtZ
	6ZzzroBW5l9SME1Cls9UOb5SmyAs5+E9BU1GdxGqYyAyoTBrEyHY5CHkTEp04YKWKcOlJ1moNaFL5
	FYsWeX29KpSWO84Jrroc5odpuAaU+Jq2bKSr+0uhZxFLeWab3lUB68Or26znuSSoNyIvy2IpBRyNo
	V2uSo/JHZ1XbYHF5L+/Yp42H7o9zRH2F7pMGN5CbPRxAG2QhAylvM1jV1p5cS+io5i6/xdob/qxnl
	fTDqRYNWlAd+aRIqd2LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNMZ-0000K3-Ou; Thu, 28 Nov 2019 17:13:55 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNMO-0000Je-PT
 for openwrt-devel@lists.openwrt.org; Thu, 28 Nov 2019 17:13:46 +0000
Received: by mail-lj1-x235.google.com with SMTP id m6so21853079ljc.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 28 Nov 2019 09:13:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nNB8SptW2XYM/pw4VjOVi6tt7pKfNYWcIbVyXZlpEF0=;
 b=f9D3DD6T/rhhmuNunuFHsYKobxihYpOH0Pyq3hbmeCttDleSv9muVGVtyL+3BMDtGK
 ITPVp2wclnamaLVKTK9fr0yr8XuQB4h7qvO4q+zYw5HfXan9eQ2x7CQY36xlLiFHLpCj
 X0OJ8A2F8LSsK0sOdFSezQfBW74ZzlkBdTDGcXLtmI399xAxfVMRVY8EUSeQ05ZcksSY
 sqMJySm7Fh1Nh3GnlCL91sSLDAjkO8slh7D84U4pWZSZJFos2YAgllskf+y8bELaqfKw
 0p638Z4+I63flt938Yr7FzS364pAINvlDK1qUkHiH1bFPFSJCiiJbgzBLeff14XeKNlA
 f6zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nNB8SptW2XYM/pw4VjOVi6tt7pKfNYWcIbVyXZlpEF0=;
 b=R2WpjYu3MKlP9fImfnBOxr1E7VUG9RlWkWQUPSRKBMskeK7sYLh+ctKRU6qBgiiXAg
 rnXbPELKLvOVEd/eXw8GjAzc0c15A7keepOn8AlCLKZL49xTHzmDnQMf8zXINRVG84lA
 JIzbgG1egi8MyMpNQMMKAnaun+l2JL/zQLT+fIOs7O4CJSLW1su0AQrooySzL3zQ7l5I
 pmw85NMKT9A69y46P69p3Gl5banqVGKd58vfmK9jctKYMYtB9J2Izw3RubIIXlQzSXrx
 N/t2ujEGxtTzDez7CiFjsZzYNxSjbTxWZq4to162oLJkll7nXUYrc05zAeqF+b1fmo4T
 i53w==
X-Gm-Message-State: APjAAAUEJsnjwVbRDwfuSu+PZwWSVUw8yJ131/N2v3qEGunz/U/CTsvW
 iXatgB/U3hKu0JiSJK2CLkc5lnTmqxCBVfvu4Yo=
X-Google-Smtp-Source: APXvYqyPZg/StXBFXYFS2h84i+N/QQop4Akto/wsY2euO8E7BKD9xDBX/9y+7kLU9q+pnng+UFzpStq3dy0UIHrPSoE=
X-Received: by 2002:a05:651c:390:: with SMTP id
 e16mr35323823ljp.196.1574961222828; 
 Thu, 28 Nov 2019 09:13:42 -0800 (PST)
MIME-Version: 1.0
References: <CAECwjAh__fE=qWmXtyTFUzTwSHGy_0v5MC4n=VJ6qVc=Hq0w5Q@mail.gmail.com>
 <d0abeb47-099c-7eb7-c8b0-f191c52d258f@aparcar.org>
In-Reply-To: <d0abeb47-099c-7eb7-c8b0-f191c52d258f@aparcar.org>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Fri, 29 Nov 2019 01:13:30 +0800
Message-ID: <CAECwjAhj6aHmhSR5=hXvotZxJQ6uCupBridbM4fwQwzMZ5At-A@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_091344_852899_02D59BE7 
X-CRM114-Status: GOOD (  18.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Running k3s on OpenWrt
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 29 Nov 2019 at 00:32, Paul Spooren <mail@aparcar.org> wrote:
>
> Hi Yousong,
>
> > A few months ago, I started working on bringing up k3s on OpenWrt.  I
> > managed to have a small k8s cluster with nodes running centos and
> > openwrt.  Likely other linux distros will also do, but I didn't test
> > combination of different architectures yet.
> Cool! That looks like an interesting project to make OpenWrt even more
> attractive for "the cloud".
> > K3s is on its own a k8s distribution.  It provides a single packaged
> > binary for amd64, arm64, armhf.  If I understand it right, the binary
> > is supposed to be as userland-dependency-free as possible, with
> > dependencies only on the kernel.
> >
> > One thing worth noting is that the openwrt package is NOT official,
> > neither from OpenWrt nor k3s upstream project.  It packages binary
> > executables distributed by k3s upstream project which is generally
> > frowned upon if sources are available.
> It looks like Go code, have you tried to compile it via the build
> system? There are other packages like syncthing which already make use
> of it, maybe you can use it as an inspiration. Overall I'd like to see
> this package as part of packages.git and maybe can help out if you're
> stumbling.

By being a distribution, k3s really means it, literally.   It packs up
a collection of static linked binaries built from buildroot.  That
part is also open-sourced but my impression is that the automation
level is not very high.

Even if we managed to patch the k3s source to use just whatever is
available in the host system, or building those exact binaries from
source code in the OpenWrt build system, we will still need to
establish a level of confidence that the result artifacts as a whole
can pass k8s e2e test ourselves.  This is a lot of effort and time.

> > The other thing is that k3s (or k8s) requires quite a few kernel
> > features to run, some of them only available as builtin (compared to
> > kmod).  This means you will likely to build your own image to use it.
> > The required features as of k3s 1.0.0 are recorded as well and
> > available as a default off config symbol CONFIG_k3s_KERNEL [2]
>
> I know nothing about sunix, but the other three targets appear mostly
> space "indipendent". Maybe these could be enabled by default? I think
> pretty much the same kernel options are required for LXD, docker and
> related things.
>
> x86_64, aarch64, sunxi, armvirt
>
>      select KERNEL_CGROUPS
>      select KERNEL_KEYS
>      select KERNEL_MEMCG
>      select KERNEL_NAMESPACES
>      select KERNEL_SECCOMP
>      select KERNEL_SECCOMP_FILTER
>      select KERNEL_X86_VSYSCALL_EMULATION if x86_64
>
> >   [1] https://github.com/yousong/waller/tree/master/k3s
> >   [2] https://github.com/yousong/waller/blob/c3ee00451ce12e869277bbd73b08652882c52010/k3s/Makefile#L69-L79
>
> Best,
> Paul
>

Personally I prefer we keep them small and slim by default.  On this
regard, that and being highly-customizable are two things I think make
OpenWrt as a linux distribution stand out.

Regards,
               yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
