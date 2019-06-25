Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C35B5501C
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 15:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3uuElVHFbyM96+UE7sriTjuTPo4QwrFfSRxP1tXGCQ=; b=RL5C7ZEgy7kDW1
	+cblSRGw9ymZVkZ99iiIMSagFV7uoCHR5I3tPQAemMOVM/c1GDR33JTFQHeJLSSrM2dVG+qpQIeXi
	HGWpaZ3q6lKcBxSuRVGwg/PkxMZLMDXrMztrnm+B+GVCbcAttvI3MVW3q12GYsXjrMiyF9UFQP3to
	MIanxM4vSwLojqQ1DoIWpydU+cIpMSX5hFsOIaKLR7F6PAQ4YJIl67w0KoDbdFQfA2NtZ7tvknNft
	BYDDg7jGEnEQdW84rf+XTUllYVXCy8sQBa9SNXeJI/903NxOkYeaIuN4ZmTvI4ngmoRCZjv3uDwh8
	vUswyy0SBnmyCpPJMzJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflMn-0004FR-LJ; Tue, 25 Jun 2019 13:20:09 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflMY-0004EL-EH
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 13:19:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id r16so17821164wrl.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 06:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w+sa4By3r22+C5pDbEejlZgpOTuNUfcKrWFCHDs0cRk=;
 b=MSKyUmi25KquMQAaLr5wUAw9yCxVV9B3YtFktiEAabUX3pl8IG9k2fgkFt+1OBlgzP
 6SSlW0pbxzJVeh43NwodsECGtSiatmC0LlLy07ZHjE8dAJsWwPulnNEGiiOckl15ovvS
 t19jF4RQLy9lXoXhMQtE2ZaKjgCdKkyBzoWHFFY2MSkZb7peIv2iWYNRxuMzp/0b6Aou
 D/y2Q4Cjmz7srmtLBTwERyxBcMbWhEjrXNlvBAj0t5MPfb/+lYtmFdIRFTAbT8KtgjEz
 5/ply9zo+ckUYWbHnWM41UNBpY2uwd9/NQ4DM773gkacxLW8FTiLzSn3XlhwN9LbcyJB
 4wkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w+sa4By3r22+C5pDbEejlZgpOTuNUfcKrWFCHDs0cRk=;
 b=oLaxzTQBy2HVJkb07KaxNaCtQ4zlHSYP0neYVfSvABafKor+HDe4mmSCKERfHgwNhg
 JtwajdAbqJ3+F4XkRt9bSkMpZIJwqiAM9p0VQC5HSymijvTHbj67Mgu5DQeZxNiJBILn
 /idBbxA4WAvgUTbF+pIMJDNbi/UIJgcDeDp4U9BoQNA+xITv+621G3JzmOpTcLt3yDyR
 r9L6sqZ8zjbK4FiIM/XgmOHXS0U5fi6sNQ/jTVXMbeKAz2EcuyXrWwOr4LpS6bDZHHOI
 2/bEDqF27wVqcMYBhQlvTiE/H1PoJ0nMENhJy8vbUBo3yLszRt+yO13iwjv+aUJ6tPsO
 6+qw==
X-Gm-Message-State: APjAAAWQCVA78Lj6xVEDagJUKcsUyGLw0xfyAnzX5AXgNXmfDPGlIYWs
 xs/6qEcMBc41nMini8CrJXw=
X-Google-Smtp-Source: APXvYqxqx3j4oyKDsY2EbFUOp1jGZYIzmVfp23sJ6DiUhzuTP33JVm2Xz/hkbxECx1taj7qCGCGj3A==
X-Received: by 2002:a5d:63c9:: with SMTP id c9mr23128957wrw.81.1561468790895; 
 Tue, 25 Jun 2019 06:19:50 -0700 (PDT)
Received: from debian64.daheim (pD9E29981.dip0.t-ipconnect.de.
 [217.226.153.129])
 by smtp.gmail.com with ESMTPSA id b5sm10222331wru.69.2019.06.25.06.19.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 06:19:50 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hflMT-0002g8-KE; Tue, 25 Jun 2019 15:19:49 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Rosen Penev <rosenp@gmail.com>
Date: Tue, 25 Jun 2019 15:19:49 +0200
Message-ID: <1673836.BABE8v8KFP@debian64>
In-Reply-To: <3384311.q6MbUzUJqh@debian64>
References: <20190620193304.30303-1-rosenp@gmail.com>
 <CAKxU2N9zMx9d5VLzPHsNBqSY6X8iSdVkMJd1hueJ_8QZBmdbjw@mail.gmail.com>
 <3384311.q6MbUzUJqh@debian64>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061954_509253_CF5EBD0E 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Monday, June 24, 2019 11:03:23 PM CEST Christian Lamparter wrote:
> On Monday, June 24, 2019 10:01:51 PM CEST Rosen Penev wrote:
> > On Mon, Jun 24, 2019 at 1:00 PM Christian Lamparter <chunkeey@gmail.com> wrote:
> > >
> > > On Saturday, June 22, 2019 8:57:32 PM CEST Rosen Penev wrote:
> > > > On Sat, Jun 22, 2019 at 7:37 AM Christian Lamparter <chunkeey@gmail.com> wrote:
> > > > >
> > > > > On Thursday, June 20, 2019 9:33:04 PM CEST Rosen Penev wrote:
> > > > > > This prevents overriding it to use GCC9.
> > > > > >
> > > > > > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > > > > > ---
> > > > > >  toolchain/gcc/Config.version | 1 -
> > > > > >  1 file changed, 1 deletion(-)
> > > > > >
> > > > > > diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> > > > > > index ef9bbb82e2..e635244827 100644
> > > > > > --- a/toolchain/gcc/Config.version
> > > > > > +++ b/toolchain/gcc/Config.version
> > > > > > @@ -4,7 +4,6 @@ config GCC_VERSION_5
> > > > > >
> > > > > >  config GCC_VERSION_8
> > > > > >       default y if GCC_USE_VERSION_8
> > > > > > -     default y if arc
> > > > > >       bool
> > > > > >
> > > > > >  config GCC_VERSION_9
> > > > > >
> > > > > From what I know this would select the default GCC 7.4.
> > > > It does. On the other hand, if you select Advanced options and select
> > > > to build GCC9, it still builds GCC8.
> > >
> > > Yes, problem here are the buildbots. They always go with the default
> > > so they would upload images compiled with a broken compiler.
> > >
> > > There seems to be also a interaction with toolchain/gcc/Config.in
> > >
> > > |choice
> > > |        prompt "GCC compiler Version" if TOOLCHAINOPTS
> > > |        default GCC_USE_VERSION_8 if arc
> > > |        default GCC_USE_VERSION_7
> > > |        help
> > > |          Select the version of gcc you wish to use.
> > > |
> > > |        config GCC_USE_VERSION_5
> > > |                bool "gcc 5.x"
> > > |                depends on !arc
> > > |
> > > |        config GCC_USE_VERSION_7
> > > |                bool "gcc 7.x"
> > > |                depends on !arc
> > > |
> > > |        config GCC_USE_VERSION_8
> > > |                bool "gcc 8.x"
> > > |
> > > |        config GCC_USE_VERSION_9
> > > |                bool "gcc 9.x"
> > > |endchoice
> > >
> > > I guess this means that one needs to be creative and pile on the
> > > other workaround and "fixes". I.e.: something like
> > >
> > > ---
> > > diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> > > index ef9bbb82e2..2a9dc289db 100644
> > > --- a/toolchain/gcc/Config.version
> > > +++ b/toolchain/gcc/Config.version
> > > @@ -4,7 +4,7 @@ config GCC_VERSION_5
> > >
> > >  config GCC_VERSION_8
> > >         default y if GCC_USE_VERSION_8
> > > -       default y if arc
> > > +       default y if arc && !GCC_USE_VERSION_9
> > >         bool
> > >
> > >  config GCC_VERSION_9
> > > ---
> > >
> > > Question is, do we really want to go down that route? Or is there
> > > a better solution? Because this is ugly.
> > I see no problem as the solution will be short lived (until GCC7 goes away).
> 
> The emphasis was really on "something like". I didn't really test this
> properly, so I don't know if it works or has other implications.

Well, I've added the patches to my staging tree for now.
If there's no objection I'm probably going to merged them this weekend.

"toolchain: Don't force GCC8 on ARC"
<https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=fb5958dbd33c51a7ac5e7c3201f4e828b055e9e7>

"gdb-arc: Remove"
<https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=c91519b30fc38ba5ad45066b9c7d4ca0a609a78f>

"gdb: Remove !arc dependency"
<https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=2bf178a2eac10364defa32928877d37d371ae51f>

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
