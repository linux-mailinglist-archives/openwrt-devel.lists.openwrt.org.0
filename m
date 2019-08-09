Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED54880A6
	for <lists+openwrt-devel@lfdr.de>; Fri,  9 Aug 2019 18:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzkuzwHarKIBkRJchGSdPZwEBt0/2nwgfTFGDiIwkrI=; b=qF6Eh60iO/kgHR
	ggizLA65hjlDI/lL8CAbdOUfxKhUYOtq5JjGKraitefGxTfa2/8j1OOs+KMMTh9RjgzcK8pw3Ymvv
	BoK0fGUcKGflLbkPQhh1UG0w7mOrZIR3t1LBx0VGDs8/43Uker0gt85xaRJAGtgCR6kZHAbTbl3UL
	3VGBqXDs8VkJD20XlJvZM9hih5E8ZFTsfUIFDIewBJur7AprVeWjIOekau6gX6IQPBnYOojK+6ljK
	t56UIfHhHbNXn+17eV5I0qCklpnbq1Ye1kHcu371U2dd2byVB/8z60b81w9Miq7V/AlqLMjE/hGgT
	JRipS5+VaamxKbsmc/LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8D9-00066R-P3; Fri, 09 Aug 2019 16:57:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8Cv-0005x4-3N
 for openwrt-devel@lists.openwrt.org; Fri, 09 Aug 2019 16:57:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id j17so15975993lfp.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 09 Aug 2019 09:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kgwNH/g1nY1qAMEw6WQ+US9yyf0Y5RBev21yEQrZZuI=;
 b=Q3U7pHFERzEbszQcKDgpJ5m3dn8HJpoT+5r0ze+GemJkyikPW/teHmKUqQY8MMbCBQ
 ++O7pES6QTdKnBZwAy5zI4R5i4m7SJeu7nh0S4zPU/l1ysYq8VLD4gcWw5DavA+6Ga7E
 +Grf9HA+wLEMe5/irWBOYCs/vpWlyeW8TOFTJdrCB53YAf34Zxi3MvPc/CTUSpBW8qqT
 Nj/a9zBqMrVAdh0kBE40IjQV9tiKup6gNVJua+x8RpacG/VNJvyyEU3NWVkWGWJTKg7E
 SDQVdTnhvATWExVA7nnM2UR9O+qUrneRRY8kNm+YoP1z9NBbi5iHXM7yAvLXzWZcX5Xi
 Bk0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kgwNH/g1nY1qAMEw6WQ+US9yyf0Y5RBev21yEQrZZuI=;
 b=diJFnQKbKc3wjWX209yD16Cayynz4kk0g8XC3fWwSbH3wytwgQPz5Rk2EXJPRzZ/vy
 U6Dg5NpRZO7ImPq2AoUa7jKZ1/4YNT1vUaAMsBt8+XW9xBo59+vm7+44N7LpNBQ97NIA
 g57rJxXjfGq3UOahJe0UAfjCqm8GTFikbNojTSsquqtk4ZfpqSEi/g1mtwb9Dfn5iJVa
 0QkzQhDAyt4bJtVNoQG1CuWKJMMxkUQDakMYcxJrmGsd/zGRaQ+74ph/VaoDE3Nc8s9M
 D906ex7HAq2FRD5K88wiEVo5ylag6iVD8xX+PHyKDy2xtMqJ1htQQYIg3JU/uIdWO1RB
 021A==
X-Gm-Message-State: APjAAAXPzvJmsGCRc0X4dcnJah7Lk9kqTJHuBI8G/7QMckF7rd/6dxIp
 drRFWzwXYzaYmwe1z1cMlTWEsLM1xmy7vbVqZggCFA==
X-Google-Smtp-Source: APXvYqz9oG/MAShtC8joWP2SRv5FwaWClx7+JtEu8MOsx/Vew1VvGD6ZoEOxlj54naGRK/n4ecUdCCbzA3CsGIUqxOs=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr13594010lfp.61.1565369854569; 
 Fri, 09 Aug 2019 09:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190717172332.8286-1-linus.walleij@linaro.org>
In-Reply-To: <20190717172332.8286-1-linus.walleij@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 9 Aug 2019 18:57:22 +0200
Message-ID: <CACRpkdb2nz8BHXgOWnMk48_k0qqR=s5Q86LY--jaj30jOyv5kQ@mail.gmail.com>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_095737_157842_74D888FA 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] gemini: Add copy-kernel utility
 package
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, Jul 17, 2019 at 7:23 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> This package just contains a small Gemini-only assembler
> bootstrap loop to copy the kernel from the two fragments
> (previously zImage at 0x01600000 and initramdisk at 0x00800000)
> into one big zImage of up to 8 MB at 0x00400000.
>
> It will be built on demand from the Gemini image Makefile.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Any comments on these two patches?

I have tested on both ITian Square One and the SL93512r
reference design, and I am pretty confident that the
Raidsonic 4220B "IcyBox" will also work with this approach,
but of course it is even nicer if someone tests it.

I do not flash my devices from the composite firmware
image actually: I use the RedBoot menu to flash
each of the files: "kernel", "ramdisk" and "application"
from the constituents. I think the composite firmware
image only works from the web-based upgrade utility,
the RedBoot "upgrade firmware" option is super dangerous
and will erase the whole flash and overwrite it with
whatever you send in.

I just extract the firmware files:
tar xvf openwrt-gemini-storlink_sl93512r-squashfs-factory.bin
then I flash
hddapp.tgz
rd.gz
zImage

From the different menu choices over TFTP.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
