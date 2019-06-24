Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1351551CBB
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 23:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgobE6aGS28IMmQcMTay//QMPm+2lX4T4TKwL4fPClg=; b=inqc8DxbYOzj3X
	iubXtDJHJWh4e8EtGVFvUd1fhDuJ3pWKX4qifbCfOWO/2VBmzaqFQiLrJKuTcBv82VRSJXOJogTJf
	FwBJgZxv3tPcZEJs7MLatvrN+bveM9cY0B3dRzYvLhiisJ+/cNammpXt8S8UAD4XFQLFoNFa9jXIE
	pwAEAihiWVIBM+VCRpmGTpvBCXkVBkVIJzu4Zfzs4UZelEVkXUSW4AWLGZStoM8tL4LPzQEp2eWxr
	5lvnXZ+GidmmHmiBnTPdn/tufBUwBbYEEKlNQ//JIo1g6uIHtVHDepF1N8VL4SDpobeYoycTTaRZz
	BXiBN5mXFFvpmOlM2yrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfW7y-0007fk-0r; Mon, 24 Jun 2019 21:03:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfW7l-0007c4-Li
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 21:03:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id x15so673028wmj.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 24 Jun 2019 14:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tYemRQMc37MFavo7oJhpAe6mAW5hwvhG59Vpdz2CKfY=;
 b=kPk7bo64Bo/osbXESdnuhTQ4bmo/92siRamKeM7XTyVdxzLd7ZoH2QFsNieBlmXCWW
 fowMF+B/gTZgzv32dYtftjDLOuB5tXGsO/lOhsPkucIAe2YjyU4eBvz4WXb6LoQir5hY
 XtE+vVUy6tSlHb13PGkn0UnTrbRsepmD+HIFcl06EihY0o+yn/qgYsdZvOm1NPBjeNKl
 /AEmJDGK2LcVd82AVR10COfL87Wy0jxZF9jtmMSBJOkQ4p7Y4+B+ls4gFzn5Hg4LL1ma
 65KgsNtgVb0eeOmATI/gUS4fqwHCzKO7dAlNs9J6LxVs9VVuobSquXHOzMLFpIsgac2Y
 3X8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tYemRQMc37MFavo7oJhpAe6mAW5hwvhG59Vpdz2CKfY=;
 b=VjWdGdoZ/JIQNRVIJCl+TH2vBSxdHXhJ3fJh7Kmc7J+1t5EiI9LqCAEBfVWrUNZ+F3
 dsTDB1npJ7IdvslVEMvKHDofO+ZN4miTOe8+h3bT4n2aJeP9LQ9wLUwub7Q8I3/Uqxvf
 tekkV6z5xBItWuwrqFFryDDYbqCxz6wY2uFHDM+omVnsYOJJHbUXO4RALgCn9J8c09+H
 xT6lWclkJYyVyfu35G7YPno3ReeT5I5YwfEGS9UmgpKR2MRmnkFUUzy8qZN0AjLNE1oe
 inlQ9QB5pCjlm6CvHPRqIE6e3xXpim0Tw3fLDyEbfOw+J51aX3jUaOua6oO1DWWgTO9f
 TA/Q==
X-Gm-Message-State: APjAAAXU6A8WzU2T+/FGroACAtBsGidiPSfKauc4QKnMKTbgK9DB7hmd
 cLbmqLSMW7FfBWLdlDMMIwz5i0Qv
X-Google-Smtp-Source: APXvYqwP5y0W1MclASJW4AZXVi513oTszJVpVG8cuAcV7tusYWHL4+b6tgCd+VuJIiHMuyPRmR6BIw==
X-Received: by 2002:a7b:cf27:: with SMTP id m7mr17452577wmg.7.1561410215834;
 Mon, 24 Jun 2019 14:03:35 -0700 (PDT)
Received: from debian64.daheim (pD9E29A68.dip0.t-ipconnect.de.
 [217.226.154.104])
 by smtp.gmail.com with ESMTPSA id x129sm412132wmg.44.2019.06.24.14.03.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 14:03:35 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hfW7i-0005hQ-8S; Mon, 24 Jun 2019 23:03:34 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Rosen Penev <rosenp@gmail.com>
Date: Mon, 24 Jun 2019 23:03:23 +0200
Message-ID: <3384311.q6MbUzUJqh@debian64>
In-Reply-To: <CAKxU2N9zMx9d5VLzPHsNBqSY6X8iSdVkMJd1hueJ_8QZBmdbjw@mail.gmail.com>
References: <20190620193304.30303-1-rosenp@gmail.com>
 <2531183.vupIu1JorU@debian64>
 <CAKxU2N9zMx9d5VLzPHsNBqSY6X8iSdVkMJd1hueJ_8QZBmdbjw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_140337_711352_3001A27B 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
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

On Monday, June 24, 2019 10:01:51 PM CEST Rosen Penev wrote:
> On Mon, Jun 24, 2019 at 1:00 PM Christian Lamparter <chunkeey@gmail.com> wrote:
> >
> > On Saturday, June 22, 2019 8:57:32 PM CEST Rosen Penev wrote:
> > > On Sat, Jun 22, 2019 at 7:37 AM Christian Lamparter <chunkeey@gmail.com> wrote:
> > > >
> > > > On Thursday, June 20, 2019 9:33:04 PM CEST Rosen Penev wrote:
> > > > > This prevents overriding it to use GCC9.
> > > > >
> > > > > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > > > > ---
> > > > >  toolchain/gcc/Config.version | 1 -
> > > > >  1 file changed, 1 deletion(-)
> > > > >
> > > > > diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> > > > > index ef9bbb82e2..e635244827 100644
> > > > > --- a/toolchain/gcc/Config.version
> > > > > +++ b/toolchain/gcc/Config.version
> > > > > @@ -4,7 +4,6 @@ config GCC_VERSION_5
> > > > >
> > > > >  config GCC_VERSION_8
> > > > >       default y if GCC_USE_VERSION_8
> > > > > -     default y if arc
> > > > >       bool
> > > > >
> > > > >  config GCC_VERSION_9
> > > > >
> > > > From what I know this would select the default GCC 7.4.
> > > It does. On the other hand, if you select Advanced options and select
> > > to build GCC9, it still builds GCC8.
> >
> > Yes, problem here are the buildbots. They always go with the default
> > so they would upload images compiled with a broken compiler.
> >
> > There seems to be also a interaction with toolchain/gcc/Config.in
> >
> > |choice
> > |        prompt "GCC compiler Version" if TOOLCHAINOPTS
> > |        default GCC_USE_VERSION_8 if arc
> > |        default GCC_USE_VERSION_7
> > |        help
> > |          Select the version of gcc you wish to use.
> > |
> > |        config GCC_USE_VERSION_5
> > |                bool "gcc 5.x"
> > |                depends on !arc
> > |
> > |        config GCC_USE_VERSION_7
> > |                bool "gcc 7.x"
> > |                depends on !arc
> > |
> > |        config GCC_USE_VERSION_8
> > |                bool "gcc 8.x"
> > |
> > |        config GCC_USE_VERSION_9
> > |                bool "gcc 9.x"
> > |endchoice
> >
> > I guess this means that one needs to be creative and pile on the
> > other workaround and "fixes". I.e.: something like
> >
> > ---
> > diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> > index ef9bbb82e2..2a9dc289db 100644
> > --- a/toolchain/gcc/Config.version
> > +++ b/toolchain/gcc/Config.version
> > @@ -4,7 +4,7 @@ config GCC_VERSION_5
> >
> >  config GCC_VERSION_8
> >         default y if GCC_USE_VERSION_8
> > -       default y if arc
> > +       default y if arc && !GCC_USE_VERSION_9
> >         bool
> >
> >  config GCC_VERSION_9
> > ---
> >
> > Question is, do we really want to go down that route? Or is there
> > a better solution? Because this is ugly.
> I see no problem as the solution will be short lived (until GCC7 goes away).

The emphasis was really on "something like". I didn't really test this
properly, so I don't know if it works or has other implications.

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
