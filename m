Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C2832249
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Jun 2019 08:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FSgl1ydHRjlfvqFaM5VEPdeMjpr5+MDN4492QgOrLs=; b=jTRnhD4g6oddA8
	MHdbzyD0vxaBcGeCZmyzgPQa3WHQbzktmYULT4qENL5XdpzilDRy8udtjzCIs4Icx4iTsDHlGpeNS
	o3nigoGR1CWmjo/9ZA8e4xGs4nL8Fk3eZYkaliRUWCYaZ8TnJdChegMaH7iGzroQKnoLCY4UX2T2B
	hC48jW9WVO4uU8NNjvVdJbjRai7VflF4Sx7dX0ZO+TJ6hGLWEeqkWGtgxtjKmR3lMet9poTBekZae
	RaQKSAzC+cQ0SgqxUArgQrFFnwP71uVW6HzC/ChriLuFmfCi8L3L847fbfq8ugY4pgPeYgh7r14CN
	7vSH4wfXJlDC5KDEmmVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXK1q-0001oj-K3; Sun, 02 Jun 2019 06:31:38 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXK1i-0001oC-TL
 for openwrt-devel@lists.openwrt.org; Sun, 02 Jun 2019 06:31:32 +0000
Received: by mail-ot1-x344.google.com with SMTP id d17so2463502oth.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 01 Jun 2019 23:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=crdNwKjKcZFJ7S0BsPlD7qVM98kxWBQOJbGYhynaqX8=;
 b=V835gNSJNqpcJ+qlQC9m2ITE0oJ4tuwz7mEA6PZQWWItTz7UM2TDB/cZr7bjItebfb
 Y/0bcztb2W8LVcpYrfzWehQGn5IDwF/xznj8ndKX2icZRdIyPzbzVBu+gB/gTMxMHqgI
 OkQ1vTzRUp+pNCrsNx4mJ2jeLh6qTd4dyGARjn1ViYIXRXgXjzoZE4peR4jwiA06/Grd
 Z4kAYT1B8P1T+7qvXWWK8gF5kH9fUly1/tgOF6jCyKkhVA9d4zYn/rEo6GX8LhbTbfV8
 c8JFAQjUoaE4J3ik5/sryfygns49M/wKcRSzUBimn9QBb82j3U4UdOZ34oJz7+rYZJCK
 ImXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=crdNwKjKcZFJ7S0BsPlD7qVM98kxWBQOJbGYhynaqX8=;
 b=VEBy0mlCyjvgyd/X8/VLuXqu+mMSBmUWyeA3cDwy3D2/ERzV4yimevMOM0QBx6OO98
 b7+4/u78zMKuqJ/wYg85OnPb4AbhanVgGT1Qzodt2si9fM+Kh5CM05/honlrS8e/xdPj
 LoKK546EK94mU5nlzRDp68uGHHhTusY7EnUsGdLxJT8MzRRy9jiRalng5U8RjCLJnTF/
 9n6uy+q/Wa/+B6airFx6GlsWuqf2aJtSK3VICBfTCJrrEWHFCFfT8ak/+0BlHdbvhYOM
 pR+0SNCjeF80WiDVCiUk/8uANemYUNAlRm/oq/EnoKH/zQ4Kp4h7Phl1UwYgQAMxRrzx
 WZ6g==
X-Gm-Message-State: APjAAAXT0+gGngBi4/nPXg1mLJXz+5K349dgiEAviQBtxtB8X3OwSJTl
 Mu31U6NrIlsJIXHjs+wlb6Yr7qRmEIGwcrC961g=
X-Google-Smtp-Source: APXvYqwxN4uijZI49KI1jkwroYrPGlnTmpo4K/9tqL/2LEgV/XuJjblW6TGJYts9T12PLAhXLKPvLLZpOugG40qzrMk=
X-Received: by 2002:a9d:201:: with SMTP id 1mr7484466otb.279.1559457087467;
 Sat, 01 Jun 2019 23:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190411155945.28600-1-mail@david-bauer.net>
 <2850061.LOaScECSic@debian64>
 <CAJsYDV+yTFZafgzz0H42sfnzKYoB32ycxRBEht_XHXs4CzEcJg@mail.gmail.com>
 <2607811.gNoC5flUSi@debian64>
 <CAJsYDVLBD6WK6ZdCPCoBO8w2cyKSC_DOhNmOTbKi3o9uUXvjDw@mail.gmail.com>
In-Reply-To: <CAJsYDVLBD6WK6ZdCPCoBO8w2cyKSC_DOhNmOTbKi3o9uUXvjDw@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 1 Jun 2019 23:31:17 -0700
Message-ID: <CAKxU2N9NEKnin5owvC6U6f3+iBbaS3FPjkSgWLNxUAxd25a4ig@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_233130_971852_DBD3FD46 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ath79: add QCA955x SGMII link loss
 workaround
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 David Bauer <mail@david-bauer.net>, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, May 31, 2019 at 7:16 PM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> On Sat, Jun 1, 2019 at 12:26 AM Christian Lamparter <chunkeey@gmail.com> wrote:
> >
> > On Friday, May 31, 2019 4:44:50 PM CEST Chuanhong Guo wrote:
> > > Hi!
> > >
> > > On Fri, May 31, 2019 at 9:34 PM Christian Lamparter <chunkeey@gmail.com> wrote:
> > > >
> > > > Not to be a party pooper. The ag71xx is well on its way to upstream.
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/drivers/net/ethernet/atheros/ag71xx.c?id=d51b6ce441d356369387d20bc1de5f2edb0ab71e
> > > >
> > > > So sadly this all would need to be somehow upstreamed first and then
> > > > backported again. *sight* :(
> > > >
> > > The upstream driver is pretty much broken on every SoCs with external
> > > PHY/switch. Getting every ath79 SoC working with that driver is
> > > already a headache.
> > >
> > > I think we should just keep maintaining our ag71xx driver until
> > > someone having a pile of ath79 routers get that driver working.
> >
> > Well, look what happend to ar71xx then. The development on it is being
> > defered in favor of the upstream ath79 dts. So what do you think will
> > happen to the special out-of-tree ag71xx drivers now?
>
> That happens after we got ath79 target working. There is a period of
> time when ath79 has broken wireless support, during which ar71xx
> patches were still accepted.
>
> Author of upstream ag71xx driver did a 'rework' of OpenWrt ag71xx
> driver dropped all mii interface configuration stuff. Unless someone
> patches it back, it won't work on qca9558 in this case.
> To upstream this particular patch, we need to:
> 1. patch mii interface configuration code back. (Somehow we named it
> PLL and the author thought it's a clock register that doesn't belong
> to ethernet driver.)
> 2. patch the miscellaneous ethernet-related configuration code back.
> (gmac-config in our driver which is used by this patch.)
> Our current code for both of them will have little chance being
> accepted by upstream.
>
> Since this patch depends on gmac-config that doesn't exist in upstream
> ag71xx yet and we won't be using the upstream driver in upcoming 19.x
> release, I think it's fine to have this problem fixed in our driver
> and then port it upstream (likely to be a rework) with gmac-config
> code.
That's the current situation with ramips as well.
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
