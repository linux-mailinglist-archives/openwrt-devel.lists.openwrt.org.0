Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D801ACE53
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 19:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=No82xv8LsrQPZ0BiLibnOyjfImCtKKTS5GLsExSXqHA=; b=nVUeHl34q/Escv
	LbGaWyyZGMiHwvzrw5QLtjwfSdcYhGBsBvA4SSMdGN+onnbOy6/FGJDFQqPhOXOsgxkllgdFZFXhj
	xdPDV4WRSafiPj+zINc/rFxcrGMvKI+//mORsM7U6hLKxmeeq21kBzJ6fl6AHRPHE5LsmSr5Kq246
	SJGURg45lbHWdLRPVrtBiWuu+5zrieV9RW9aC6/KPigW5aiAqC7A4X7YC95vQ4D1WLyhJjh+w/J9t
	gaxL2antCKlti/KFpwMCCcUHsphJaT3BHay4m8/SvBZ+KlT8YV2Y6FT79tkcaf5CHIQnnVT4wQXvv
	N4N7bxvR0ZMtygEcuhUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7wC-0001DH-CV; Thu, 16 Apr 2020 17:04:28 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7vW-0000Qq-D5
 for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 17:03:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id j3so8158805ljg.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Apr 2020 10:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xbeLxo73NH77r68D3ullEkGVb9CgBQ2dP7I8rPq0gBs=;
 b=lglq4zhgkl9AFMiztMa/60ASuCavgd7BeXA1U/yykbdwX8EvR3U55v42PeKXS9/HjK
 U7pfVJciaVw3V1yhUfvwfi7XX18EnNu4VKtwdEMTWcf2lqatT/ghwWPMZq9wCxha1EE+
 7hEheLmvRDX9HxLAphuWGJBlR/7gfGSKyO8pnVRdA0RAUGTlwaz5t2hOykPCR/Uq5Fiq
 6vPevB89+ypqtYR+WWEj+moMOnu9ZjzncRc2LabOgoswbgurcZ1Mq6v7rzYgMf7LS7Fz
 HcakLEfNWcDGbahcoXgi6i9rD3biVQnWmvuivnfm2cXHWQUwTojpBQj7gWBhl3i0N1/t
 Qcug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xbeLxo73NH77r68D3ullEkGVb9CgBQ2dP7I8rPq0gBs=;
 b=HhBfFQolnZDf8MC9qCoufNNs/UAW/dzWqmdBsP/nC5fFXX8yj5suUt8CsgCQWqfBUo
 FYHazzmetp1KwzTlqH+5/MKA90RBiQisjZwttUGDyrkSTKW+ab3veNRhJ0Be7MkVGeZW
 3cyu8qCH8CaFzwErzOcEHGIWeeq/uINeLCcvj4D4FiC46K2U7Tb3uj2P7mHE+37HoZl5
 gZVhIUuP7WzRCwQ3jsUK9vw9Pu9xsaeo0BG1FaY9z3LI7FnH6px9/Ez7bSThGqfsM1P5
 LJcKzoXtf4v2TzWKfMDX7aWyE0ajCnijEdxNfHpGlxTLC0jcdGBZ8WRo+QJld2kcUbea
 GiRQ==
X-Gm-Message-State: AGi0PuYUi5dbHPdCq3Fu7cNHq2I3lxYUND65Vbfa5BAfRiiULSLTwrwl
 YabstX+Mjh39yZNS158HSW6BkV38R3AXhtFWAWcjBg==
X-Google-Smtp-Source: APiQypIgAYo0tcs0mvZyrFJ0IfPRE7Z5YfjzA0P0F0vr9dOwcIYigV95sjzKOcQ2uMBapEh8+yyey9Uer4dhCviCNLc=
X-Received: by 2002:a2e:b6cf:: with SMTP id m15mr6819492ljo.168.1587056623096; 
 Thu, 16 Apr 2020 10:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200406160914.14698-1-rminnich@google.com>
 <CACRpkdYVwFiCf5MJGLEyhxL8omxr9Tav=8Le_zEX-D89SXjV1Q@mail.gmail.com>
 <CAP6exY+pDg8rAi4RZw5s5jZh1awtWg6_Q5=tm6RYC4c+XZz+cQ@mail.gmail.com>
In-Reply-To: <CAP6exY+pDg8rAi4RZw5s5jZh1awtWg6_Q5=tm6RYC4c+XZz+cQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 19:03:31 +0200
Message-ID: <CACRpkdYVL+DtxgXk5F=jH8dPD=6qu=DbekOYZmTx9vu7L=MScw@mail.gmail.com>
To: ron minnich <rminnich@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_100346_484545_2955E96C 
X-CRM114-Status: GOOD (  22.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mtd: parsers: Support '[]' for id in
 mtdparts
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
Cc: Vignesh R <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Ronald Minnich <rminnich@google.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, Apr 16, 2020 at 4:55 PM ron minnich <rminnich@gmail.com> wrote:
> On Thu, Apr 16, 2020 at 2:51 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> > I suppose the use case is using PCI-based MTD devices for testing
> > something android images on desktops? I'm surprised it didn't
> > come up earlier.
>
> Thanks. In this case it's for systems that companies are deploying
> into their data centers, using linuxboot (linuxboot.org) and Intel
> chipsets. On Intel  chipsets, there is a 64 MiB SPI part, but only 16
> MiB is directly addressable.

Aha, now I get the use case.

> Linux goes in the memory-addressable part of the SPI, and UEFI loads
> it into RAM, since to UEFI the kernel is just another UEFI driver --
> in fact in most cases we replace the UEFI shell with Linux.
>
> But we need a file system, and with the huge amount of drivers that
> come with UEFI there's not much room in the top 16M. (we're working to
> fix that glitch, a process we call DXE-ectomy, but it takes time).
>
> We wish to place a file system in the low 48 MiB -- lots of room there.
>
> So what one can do is put a squashfs-formatted file system in that low
> part of SPI, and, using this mtdparts capability, point the kernel at
> it ("root=/dev/mtd1 mtdparts=[a:b.c]etc.etc"). It's a lifesaver for
> those of us using u-root for our userland.

This makes a lot of sense.

Something I have had ideas about upstreaming is the partition
splitter and automatic rootfs configuration from OpenWrt.
Is this something you would have an interest in for your type
of deployments?

I post some of my (never finished) commit text for your reference:

What the MTD partition splitter code does is to take a
partition, already covering an even number of erase blocks
in the flash, and subdivide it at erase block granularity
into sub-partitions.

This structure is created when the raw images are produced
during compilation of a system: scripts that are aware
of the geometry of the flash (such as erase block size)
will catenate the different parts into a compound
partition that can later be split.

The typical consituents of a split partition are:

 [kernel (z)Image]       "kernel"
 squashfs rootfs         "rootfs"
 JFFS2 writeable area    "rootfs_data"

In the simplified case only the squashfs and JFFS2 are
combined into one split partition, let's say this
partition is named "firmware" (a common convention).

The typical scenario for the above layout is:

- Begin compiling the flash image with the kernel image,
  pad that up to the end of the current erase block
- Catenate the squashfs and pad that up to the end of
  the current erase block
- Catenate a JFFS2 emtpy filesystem" marker at the
  beginning of the next erase block

When the splitter examines this, it will split this
"firmware" partition into a kernel partion, a
squashfs "rootfs" partition, and a partition with just
empty space named "rootfs_data", while still keeping
the overarching "firmware" partition in place.

When the kernel boots, it will mount the squashfs "rootfs"
partition as root filesystem, and then when the system
properly comes up mount the "rootfs_data" partition with
overlayfs so that the root filesystem becomes writeable,
while keeping all the read-only content in the squashfs
and all modifications in the JFFS2 partition.

This way all the available flash memory in the "firmware"
partition is used pretty optimally: "kernel" can grow
to the size it needs (such as a new kernel version taking
up more space) same for the squashfs "rootfs" after it.
Whatever remains after the kernel and the rootfs can be
used for storing data.

When the device kernel and rootfs needs to be upgraded,
it can simply unmount the filesystems and overwrite and
erase the "firmware" partition with the new version,
and the whole system is dynamically repartitioned with
the new images: if they grew over a flash block boundary
then the filesystem will be augmented upwards.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
