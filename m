Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86452B0D4
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 11:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yg++SLr9ceaW1WCF2kMjNbSEhXUA851ld1rLCK6cpbg=; b=hXy9bk7vwFF7HJ
	+3yHBFa6HRseDmaZjg6l6CnFl+Y/WTJqSWT83LmRDyx6ajSDls3JVS8ikx1gXSuk7LK2TbrSjw5G9
	H+2CGPXP1QY+WPKjE5mvkhKcpFNo7Eef36lSYs6bA+ClmgR13VKFpJP6GGu21nCYkIw3atmi77ySF
	YXm9qzJYVsTRE8xAMtD7splkGghrL0oZYJ+56SNPthejI0nXt9Xd9vvLSM9Qxb2FbMlc6P+xv2uUW
	GoK9h6Q7wYJe0XYd2dkS4PKMOP4YgnA+9d/xkqry3jPwNhHz+YU7Q3Ve1wv/pYzsElpH7X39aIYvx
	hpvyAMR4qy9xbDOkv+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBU4-0003Bw-8K; Mon, 27 May 2019 08:59:56 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBTy-0003Bc-0l
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 08:59:51 +0000
Received: by mail-lj1-x241.google.com with SMTP id z5so13996420lji.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 01:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=44Y6ehIo1pxmtypIZbOOt4ccJkWxhEbh33LN5HgmO+k=;
 b=EdZ8iykMdtJVpnebExusPqKOKb88J2b0WOsfqzv44xj8JaFRsjZIEVQgHOFkav63jj
 Or2sL9JW1nYrtHuw5PQkO3Li4eRbzkBYTIU3dXN2jmCmI9my4c2tvzNOmeqAf5UmYHeR
 7VgGuzgVBg4Fx+YqyPkJwO5+U4Ki4tAchH178F/bfQmTK7aUZwaab30l6U4mdPHvpL9m
 iSNn04kAfT4iLSG8QYGrLw2Km/gKDWeRIA0WmGI54PTWeeRi1L1PJsf7rN8FK5dn/dod
 3GVP32XMS2DQLYYpsdwztyxew/aBk5vgLP97Y31Jb0zBmSH8dcn0acaC0YBeXdtLf/ic
 8q9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=44Y6ehIo1pxmtypIZbOOt4ccJkWxhEbh33LN5HgmO+k=;
 b=ifKh0x/QiEFKTCJofwODQu/nSlaoOH+/BRhKzHeg4q4zZRNsBYMg8zxkUVt6t5ywOh
 rP1xo6cq5DTTw1ncTvs0D6ExYOoiEloIBSRcR9vgPSCCfmEo9RMuAllFhH7DBpsUokOi
 bD7nmSOuXvhhwLWeifIgPVQrd9ZfllAJYO4ZGV3VmKEfDY4nnl3C4GyEXnTxv5thLL0O
 5cURjBbc/eID785pZrjfRpm48k3KpoSI3hLvFvaMWldYSfo2R5UD2X7qcpzes7liDP5r
 cxMdme9yXHooszlQu3S00PRGx6fynV5fk6s/tY223J6ilTZoAHe3x1ZXURxKRaP53WG1
 JCHA==
X-Gm-Message-State: APjAAAW8QK6P3/nSCZUU75hU/10Lzbuh8bGLamUbMw8PyEYn75xULXKI
 KPezaJeoNJHUdNDNwLBdftPiKJFt6rqeO17ihuH8SQ==
X-Google-Smtp-Source: APXvYqxRKEKCWRGJgWIlalTdDzF6J4ASQ0ATTGoFbe/2EibDFK0OupJdLJZQG7/VIKjAEjL+kKXUYUaGzs6xQZ1M4aQ=
X-Received: by 2002:a2e:9259:: with SMTP id v25mr16840076ljg.46.1558947587716; 
 Mon, 27 May 2019 01:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190512173151.27388-1-hauke@hauke-m.de>
 <CACRpkdYjbOihH4G1ND807JhbXjx7YnhGcnVmSqmakOagGVK62w@mail.gmail.com>
 <ffac899b-ec53-1627-d9cd-e2be7d78f142@hauke-m.de>
In-Reply-To: <ffac899b-ec53-1627-d9cd-e2be7d78f142@hauke-m.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2019 10:59:34 +0200
Message-ID: <CACRpkdaDbOqecWx=ZMC35fmraVJfk4RnVv50RXQ5usdmPHSLZQ@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_015950_061418_EAB6643D 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: Move some DSA config options to
 generic config
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sun, May 26, 2019 at 11:46 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
> On 5/24/19 11:09 PM, Linus Walleij wrote:
> > Hi Hauke,
> >
> > this patch regresses my Gemini systems because I really need these switches
> > to come up and this patch:
>
> Sorry Linus,
>
> I didn't know that they are needed, I assumed that they were
> accidentally added for the gemini target, on the ath79 target these
> options were not defined by the build system for kernel 4.19 at all.

Don't worry I find all the bugs :)

For ath79 CONFIG_NET_DSA_VITESSE_VSC73XX it is however
pretty relevant I think!

The AR71xx v4.14 kernel at
ar71xx/files/drivers/spi/spi-vsc7385.c
there is some OpenWrt custom driver for the VSC7385 that is
used by the PB44 board and added in patch:
patches-4.14/606-MIPS-ath79-pb44-fixes.patch
this should be covered by the new upstream driver in v4.19, but
I don't have this router so I cannot really enable it. I think it
will be possible to just enable the driver for use without any
of the special firmware that is provided for PB44 in the
OpenWrt tree.

The best would be if PB44 would be converted to device tree to
use it, but I suppose it is also possible to patch
drivers/net/dsa/vitesse-vsc73xx.c to use the boardfile.

> Are both switches found on some of the gemini board? I will add them again.

Yep the RTL8366RB is on the DIR-685 and the Vitesse variants
are on the SQ201.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
