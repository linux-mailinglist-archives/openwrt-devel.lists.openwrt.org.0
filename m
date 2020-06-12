Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9161F7D63
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jun 2020 21:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I9E/PPFCvs/bg9RfM3+V6S4Js16bFEg74DWEj5wGZ2I=; b=XXBUW8t4X6ftfTm9yqtn2u6Dp
	c2nHubarhq14d4pz/PUarUbEBMnNl4pi+LCNgVAMZFgOSZ1eVtkLp1tgNw1SYfH24ABDT8BetMcj+
	Gx0PQ5NlXeqXtyiLJo/04VPkw1HU6NGaomDfCl/LCChcM0ziWzU8i1S2ZGgkggRrDC7dFLXrFFfqH
	u6KqGHOGzC+kikRNJS+H8wRor0fft4KMfwAd9Lc6ylMhJ4smEj2Lj0KxIBvh1QehkGL+mHV3eoiBF
	86uNih06Z+HwF8BNNc1/C2BAGka3419a1nYxEreHbHMCjiwzLfjIX5J8IhhDhY6Rzc9y0F4Zetnc3
	2YX16aplg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjp4P-0001IR-3f; Fri, 12 Jun 2020 19:10:29 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjp4F-0001I3-Ph
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jun 2020 19:10:21 +0000
Received: by mail-lj1-x242.google.com with SMTP id z9so12276574ljh.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 12 Jun 2020 12:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/p3KwRjKLSmGJ8BRsWc/8lXnrxtcCfJOABU5OBtt2WU=;
 b=D+c9cn8/9rNuYxTYhTRfaLp5IJq/BDkIr+Yzk2fQVOwPbam0ThgtZUD0CD4nJIWwU1
 nDuTP1Fuv7WL/5toWVtysv36H0XVhdEGhGoSzUoFeBrqtd/dtBHibbyaLWqAhvcaUdSL
 3C5zRkBzR6HVqT6QoMqCqPA/HfNpQDVU7sk5oQsyzZ/t7G80u9lg1PnuzAXNJjIiVg7d
 8+pdm2p6agyG+Vb5JB6fnXY7PRSQewznE6ATCuLCBJ0dnAeOmF3eujUdadck44EpJyej
 TMjBhyUYhFQtbYVcuZIfuznwiczMjUCOOOMsEEBHrlmyID0VRugsMfETZwvx2zIpE7O7
 jxmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/p3KwRjKLSmGJ8BRsWc/8lXnrxtcCfJOABU5OBtt2WU=;
 b=DHGYiLUrn1NQciJJrH9k9SY2cYh++/THDmMkGZnJTghiZ1Yh2He55NjhYNMb1kYqLm
 8LM6ubyJOStKb1DP6f33VmY4F7RYqb2DhM0EH8gg/19radZVshaukt/2VRUDkzHfppWj
 np1wEmPyG1G5rl0OzlbUCTq7jJMQscgHwOdIVkoYldpnJJDORN2/IvEFtsGKSRV6chEU
 QoIansWz00hCiNKjZvBlHnh8O4tirMYLvEStZJamf9KV0dzZ2RR4B71XpexD6DYgcuUt
 BO9vFK2HJd16M/ousgqdtisAV8NiOTX5vHufRUE687AvNZ3OhAUUJel9u47/q9T2fKsu
 hoCA==
X-Gm-Message-State: AOAM530p7FdBLCuphmoAF6Mi4GvMlnBAHAz2UhwBwRfoaBNpQwVQtLxU
 SEWAmAqYf0aF9BvP94VAg9MYDofVMmND0YwZblHWdPDJ
X-Google-Smtp-Source: ABdhPJwpQyw/p6riE60RJsH8Ket6aNowVoi7g+oSliSd3LpGKNS1n9TWxjRT0snqN798QMzZL0GXjB3htm20lIylQN4=
X-Received: by 2002:a2e:9105:: with SMTP id m5mr8160209ljg.408.1591989017232; 
 Fri, 12 Jun 2020 12:10:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200612184346.18877-1-roman@advem.lv>
In-Reply-To: <20200612184346.18877-1-roman@advem.lv>
From: Michael Jones <mike@meshplusplus.com>
Date: Fri, 12 Jun 2020 14:10:06 -0500
Message-ID: <CAJQUmm5OpzzUmoBG7UZQZpqqsPCLwOqoAJVdotWf_sk6mYBcaQ@mail.gmail.com>
To: Roman Yeryomin <roman@advem.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_121019_884046_D821A45D 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: improve ccache support
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
Content-Type: multipart/mixed; boundary="===============1871624528771083691=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1871624528771083691==
Content-Type: multipart/alternative; boundary="000000000000dbdc2f05a7e7d3ff"

--000000000000dbdc2f05a7e7d3ff
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 12, 2020 at 1:44 PM Roman Yeryomin <roman@advem.lv> wrote:

> Set CCACHE_DIR to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).
> This allows to do clean and dirclean. Cache hit rate for test build
> after dirclean is ~65%.
> If CCACHE is enabled stats are printed out at the end of building process.
> CCACHE_DIR config variable allows to override default, which could be
> useful
> when sharing cache with many builds.
> cacheclean make target allows to clean the cache.
>
> Changes from v1:
> - remove ccache directory using CCACHE_DIR variable
> - remove ccache leftovers from sdk and toolchain make files
> - introduce CONFIG_CCACHE_DIR variable
> - introduce cacheclean make target
>
>

Wonderful, this solves my use case.

A minor nitpick, but you may want to also add a
CONFIG_CCACHE_COMPILER_CHECK as well.

I personally will not change it, as I use the value that you are already
setting, but it's something to consider.

--000000000000dbdc2f05a7e7d3ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12, 2020 at 1:44 PM Roman=
 Yeryomin &lt;<a href=3D"mailto:roman@advem.lv">roman@advem.lv</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Set CCACHE_DI=
R to $(TOPDIR)/.ccache and CCACHE_BASEDIR to $(TOPDIR).<br>
This allows to do clean and dirclean. Cache hit rate for test build<br>
after dirclean is ~65%.<br>
If CCACHE is enabled stats are printed out at the end of building process.<=
br>
CCACHE_DIR config variable allows to override default, which could be usefu=
l<br>
when sharing cache with many builds.<br>
cacheclean make target allows to clean the cache.<br>
<br>
Changes from v1:<br>
- remove ccache directory using CCACHE_DIR variable<br>
- remove ccache leftovers from sdk and toolchain make files<br>
- introduce CONFIG_CCACHE_DIR variable<br>
- introduce cacheclean make target<br>
<br></blockquote><div><br></div><div><br></div><div>Wonderful, this solves =
my use case.</div><div><br></div><div>A minor nitpick, but you may want to =
also add a CONFIG_CCACHE_COMPILER_CHECK as well.</div><div><br></div><div>I=
 personally will not change it, as I use the value that you are already set=
ting, but it&#39;s something to consider.</div><div><br></div></div></div>

--000000000000dbdc2f05a7e7d3ff--


--===============1871624528771083691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1871624528771083691==--

