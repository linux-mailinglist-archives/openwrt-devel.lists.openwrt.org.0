Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3BF51BDF
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 22:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tzxn5ipdWEwS/mteWTSeEs76gP1Jv4qZkO2pMHf46js=; b=CX9m3xJ4LJvFPr
	eFNaiAzTM7W3rgYVN5X8cjFEzC9Blzpo8JPB+/nZ3rmZxOQr4jzaC0Iat0cvKr5qJ1M93s8PZ9h5x
	f+pph/r7QvKCt5BQQjsSgdT+zhly+OQPQb3was3lnEJZzGcmcNhI2sgWDoHZvOSODaghKGLB7t9az
	WgfAl3pZi8VqSICBzzmHFg32mZFhuU4IehE2LDhwgeY9P0gZqh0CzhHBd7wK0J9b1+dgdW0g72mJ8
	xWovam27mgMngdXcS8OXfhwqIKyKipJHuRrIHvEw8H0+CO82jSN/3F6mWJYNY3OCY0yl1wzTv1Owe
	TBLbnHzrSwdQmjD5FeMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVAQ-0002nT-1T; Mon, 24 Jun 2019 20:02:18 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVAF-0002mI-RD
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 20:02:09 +0000
Received: by mail-oi1-x244.google.com with SMTP id m206so10699176oib.12
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 13:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0PvAVyGZDp0eVcHOZgHbhvHpoOURTQ8jyYohJABiVVk=;
 b=CYgNRe3z64MFXWxYQGm3PPWvrCPEGsy23ucFis67KPZi1GNUI863a7IjPCspHiOuX6
 sO32UTMdYyRaYo49QW/JMSMRPf4rwJOpEKxbV1PaYUpTNxShmwBAx/SWUmrTvUAnmKch
 mJFaydNFAupwvYKnblTdi2mJiLK/GOLsSgDz3AF/wcPv0pfGCJh0aOQnyZb+YXUIc98N
 pawlXykDVFdzChEBry3VHvVlDaEKzqW4WVDZWBzX/Df1fVS1c+TueGbjgjwj+OGEOLBc
 G9x221tSMe4NyeqJ6m00IruOpWWqldc9XrrsiUGvNDmWZ3q0J/Xxjgn6L990ZXyYdPCL
 7d3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0PvAVyGZDp0eVcHOZgHbhvHpoOURTQ8jyYohJABiVVk=;
 b=ThPezHi+aXY+QO/R5tuEjq5yqY800vAYpce1q5RcisPnM1x4Dato5myoxMjiONXYIR
 FTFquwK3AYxPR5G+EzVEW/ijkWk7xz4JAfGF64CwlucGEuJ2EuK3v1601S//lBQLqc6y
 5lV8ZU1yMAzumtgv/r9ohCywht2xgT08gx74lX2TOrXZ9aYHwi0fnWjmGH2SR+uavIIb
 wg1VvGQr72oFvKS/0GsTxSM1bp83i5oxg61hIY67Q4UM7WEKzNbrN4IePCj453ipo42b
 9V0zoDvc3QSusZs3V0R9SJRg14LWMEopXqt/ujGHqIzw0EKfIcdF9zXCwgsSTs8YllSn
 0UPg==
X-Gm-Message-State: APjAAAXk6YNwWUzYdqp+wSbmLMyWVvsYXfA+N+N5vJ6+WAHFd5Ey6Qik
 /yvyu56oP8uX2sWk88omLYZO4nFRAmM8rWwwclw=
X-Google-Smtp-Source: APXvYqzU24gAAZ7K2613JbYPZxoOO6oN6iCn+sjlUqLL8k5syQr1SLiVw8R/wDhrTY2RIVbxnSqJCc/ziVuVXTXxsjs=
X-Received: by 2002:aca:6c4c:: with SMTP id h73mr9304550oic.40.1561406522815; 
 Mon, 24 Jun 2019 13:02:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190620193304.30303-1-rosenp@gmail.com>
 <1894667.KyhJTWUrd9@debian64>
 <CAKxU2N-=TpN594wD8f4CAksFbGXVtNno=VfT49VRAKb2wO0wrA@mail.gmail.com>
 <2531183.vupIu1JorU@debian64>
In-Reply-To: <2531183.vupIu1JorU@debian64>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 24 Jun 2019 13:01:51 -0700
Message-ID: <CAKxU2N9zMx9d5VLzPHsNBqSY6X8iSdVkMJd1hueJ_8QZBmdbjw@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130207_887696_F3ADAFBE 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] toolchain: Don't force GCC8 on ARC
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

On Mon, Jun 24, 2019 at 1:00 PM Christian Lamparter <chunkeey@gmail.com> wrote:
>
> On Saturday, June 22, 2019 8:57:32 PM CEST Rosen Penev wrote:
> > On Sat, Jun 22, 2019 at 7:37 AM Christian Lamparter <chunkeey@gmail.com> wrote:
> > >
> > > On Thursday, June 20, 2019 9:33:04 PM CEST Rosen Penev wrote:
> > > > This prevents overriding it to use GCC9.
> > > >
> > > > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > > > ---
> > > >  toolchain/gcc/Config.version | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > >
> > > > diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> > > > index ef9bbb82e2..e635244827 100644
> > > > --- a/toolchain/gcc/Config.version
> > > > +++ b/toolchain/gcc/Config.version
> > > > @@ -4,7 +4,6 @@ config GCC_VERSION_5
> > > >
> > > >  config GCC_VERSION_8
> > > >       default y if GCC_USE_VERSION_8
> > > > -     default y if arc
> > > >       bool
> > > >
> > > >  config GCC_VERSION_9
> > > >
> > > From what I know this would select the default GCC 7.4.
> > It does. On the other hand, if you select Advanced options and select
> > to build GCC9, it still builds GCC8.
>
> Yes, problem here are the buildbots. They always go with the default
> so they would upload images compiled with a broken compiler.
>
> There seems to be also a interaction with toolchain/gcc/Config.in
>
> |choice
> |        prompt "GCC compiler Version" if TOOLCHAINOPTS
> |        default GCC_USE_VERSION_8 if arc
> |        default GCC_USE_VERSION_7
> |        help
> |          Select the version of gcc you wish to use.
> |
> |        config GCC_USE_VERSION_5
> |                bool "gcc 5.x"
> |                depends on !arc
> |
> |        config GCC_USE_VERSION_7
> |                bool "gcc 7.x"
> |                depends on !arc
> |
> |        config GCC_USE_VERSION_8
> |                bool "gcc 8.x"
> |
> |        config GCC_USE_VERSION_9
> |                bool "gcc 9.x"
> |endchoice
>
> I guess this means that one needs to be creative and pile on the
> other workaround and "fixes". I.e.: something like
>
> ---
> diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> index ef9bbb82e2..2a9dc289db 100644
> --- a/toolchain/gcc/Config.version
> +++ b/toolchain/gcc/Config.version
> @@ -4,7 +4,7 @@ config GCC_VERSION_5
>
>  config GCC_VERSION_8
>         default y if GCC_USE_VERSION_8
> -       default y if arc
> +       default y if arc && !GCC_USE_VERSION_9
>         bool
>
>  config GCC_VERSION_9
> ---
>
> Question is, do we really want to go down that route? Or is there
> a better solution? Because this is ugly.
I see no problem as the solution will be short lived (until GCC7 goes away).
>
> Regards,
> Christian
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
