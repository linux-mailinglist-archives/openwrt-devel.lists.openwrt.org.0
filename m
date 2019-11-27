Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0C710B3FF
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 18:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVGPKlcJZdpM5MyOYQEumw9gJJNMeRxNDF7pgkaDIcw=; b=ZeN6M9tnyFQ85q
	qWqZwhu28JXj53w7Q6vHKhTUs2R6ihk45cAMJr1awcOWqPoEChXBXiVjOjxjlK+D6c8KLTsl7TCw3
	iOPjb1FxewH4pYCf/2DeOCC5XX0XPDXdBuQ/e7b9WvmY+SZUkSujzTYRuGhYlV6sfygxjG8lKx4hb
	0wGsrIk4/DsrcFf+jhO+d5RVB61Qq/fQUUFj+Z6TDgMWqURtWmo+YSt+ImqW3KreU0/G+KX4SkJCf
	Q0HLslWoHJgFG0rU9GTFqGf44F9KVxSW1u5zdOw8Q6fXHLX9AG6mlN2jjYajNVPYgKTCDOS/X9GHZ
	PEnEJtt/1IxaprHKw7Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0hJ-0001Mk-Nd; Wed, 27 Nov 2019 17:01:49 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0hD-0001M3-Oo
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 17:01:45 +0000
Received: by mail-qk1-x742.google.com with SMTP id c124so15727553qkg.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 Nov 2019 09:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3GsU/9yb6pZnoPiHLbG7ZLKGIvVt+A3KOT+E1aNaPjM=;
 b=r9FYreszpZmwooQCYohwTNVkxTS9PhL/65F9x0js1j7ihl5cu2KqZnGL9aQnnBFyne
 4SYJ8eqfuuuvF0WYGc8ajRqowiiM6eR3PjrdF0XOm2MPbha094iRrdLAYHEonCatQfKJ
 o4hh/krRCMTHuLcn2kKZ5IPZNxq56fHGW75qk2rwT4bPhfKwpF8YXdoDNaGijRM9lqVA
 FNwbrTaO4VX9Gzk3b0n5qjhH3TZISrbXOf0RkpTa8A/qCI2qUpxYy52Uu2JPYekm1hrZ
 5P864tDJxy/db7B/sXevR3yVpW72g7F/wyyrREjvt54DVVP248sUD8csJeQ70t1vAW2C
 kfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3GsU/9yb6pZnoPiHLbG7ZLKGIvVt+A3KOT+E1aNaPjM=;
 b=g5ElTzuCkGOUKVn7wTSQhkl0K/gb4uJaoHyvj9EXmByk6rwEZ39WrA/wCJWWLbpn67
 DrBeEFmWSDemedxyGlE7e4t584al19BXfxeNiCtokycg4l1psgXjjuKX/tZcZHhjwvlt
 yb00jmiOHxTElD+bcvtHVhFG72i4BVgNpe4wNjiD9hcUHOQuWV/WFT2EZSidQ2tgftVk
 9wmFluvXBda8aUMt3Q0U+7pWK1e+GDIijfKhFyh19E0xMF9r/xHvLl5+SxY6NhLf1IvU
 8YyRNsJdz5scRSYHBe1mHgKbBgpG9tmBkORS6+AGwKV5jvp1po6gyrt5wHJQm4nuNpFh
 cA2Q==
X-Gm-Message-State: APjAAAWoqJ/W7ev6BKD6LB6mHpBMqsuWtbg5i9TpfTCE1EL+OMs2xw5M
 cnQycrlnK0c1E4lGMl+l2G7GnH0T1QELd7uRiy0=
X-Google-Smtp-Source: APXvYqxkZ296R4biUEIft9w/CCUV9bmMSnc8d1/2BITHJQdb0afl7T2eQ1fi+pBFWioHsuwy+mLODEU9gJBNJvDNFpo=
X-Received: by 2002:a37:ac09:: with SMTP id e9mr5481081qkm.258.1574874100772; 
 Wed, 27 Nov 2019 09:01:40 -0800 (PST)
MIME-Version: 1.0
References: <20191126234302.GR1344@shell.armlinux.org.uk>
 <20191126225009.dopGQ1344@shell.armlinux.org.uk>
 <20191126000743.GV25745@shell.armlinux.org.uk>
 <20191127085045.GA37269@meh.true.cz>
 <20191127103510.GD25745@shell.armlinux.org.uk>
 <20191127115735.GC37269@meh.true.cz>
 <20191127121421.GE25745@shell.armlinux.org.uk>
 <CAOiHx=moeDKc+_23H1L+pGrGHqGtbYwi9++_55sQvKGfxqCtww@mail.gmail.com>
 <20191127132749.GF25745@shell.armlinux.org.uk>
In-Reply-To: <20191127132749.GF25745@shell.armlinux.org.uk>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Wed, 27 Nov 2019 14:01:30 -0300
Message-ID: <CAPxccB1WO0c85MEWJ+QhzG6dUsbcLvmOh9qj6k7UpoNBvQuHoA@mail.gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_090143_806219_0EE2D151 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] kernel: add backported
 phy/phylink/sfp patches
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jonas Gorski <jonas.gorski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Nov 27, 2019 at 10:28 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> The build system is just very painful for a new-comer to understand.
> I don't doubt that it does what you need it to, but trying to work
> out stuff from it is a nightmare unless you have some knowledge
> about how it is setup.
>
> For example, referencing:
>
>  https://openwrt.org/docs/guide-developer/single.package
>
> and trying to build just the kernel.  So:
>
>  $ make tools/install
>  $ make toolchain/install
>  $ make target/linux/install
>
> fails because there is no opkg host tool present.

I'm no build system expert, so if I say anything too wrong, anyone,
please correct me.  This is just what I do while testing changes.  For
the final test, I do a whole build with 'make dirclean && make' to
avoid any trouble.

I'm assuming you just want to build the kernel modules, not the full
image, right?  If you want a flashable image, then a plain 'make' is
probably the best way to do it.

TLDR: Whenever I need to compile just the kernel, I use 'make
{toolchain,target,package/linux}/compile package/index'.
These steps will not need opkg built or anything else.

make toolchain/compile
- This step should only be needed once, unless you change the
toolchain.  This will perform tools/compile, so that step is not
really necessary.

make target/compile
- This builds the kernel image, including the built-in modules, but
does not make the flashable image--you'll need target/install for
that.

make package/linux/compile
- Builds the module packages.  If you're building a module package,
you won't need to perform make target/install.

make package/index
- Builds the files needed to be able to publish the bin dir to use
with opkg.  I tend to copy the ipk file and install it from there, to
not have to worry about opkg downloading the package from the original
repository.

If I need to start from a clean kernel, I use 'make
target/{clean,compile} package/linux/compile'
make target/clean
 - Removes the kernel build directory, (including the files compiled
with "make package/linux/compile", but not the final ipks under bin).
This is useful, so you won't clean and have to rebuild too much.

>
> Trying to find out how to build opkg is really not easy.  You find
> "host-compile" and "host-install" targets in the makefiles, so you
> assume that if you try make package/system/opkg/host-install, maybe
> it'll install a host built opkg into staging_dir/host/bin - but no,
> that doesn't work.  That seems to be utterly impossible to do.
> That has alone made me develop a great hate for the implementation
> after spending a lot of time trying to figure it out.

'make package/opkg/host/compile' does the trick.

Cheers,

Eneas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
