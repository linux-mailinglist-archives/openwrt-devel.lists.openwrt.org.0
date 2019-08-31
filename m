Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C29A449F
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 15:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxy4ZhfV0+OFKusOLN+UY8/1CmsSJZNaOACgMGarGok=; b=uQcKSDxCmZV03O
	6mL2iNW+ftRhRXteoRwa7JD6Y++ivShmOtYYrvVwJ6Zaz9S7wF1zKscJXXW/KjzIT01pDoGQijEve
	7GDkiRqSl11s39kXmGqZ95X7wNc/HT7oTK3jj9SjC6A0BL5vuC57HixwXoJ+GQMsOjYik/30hOYdD
	zXoimApuRTEeFqv+ZjWGYwZCib9IR7W/465Pxe2y1BxSi8u3cyykaDpk+dPUVAj2e4RcTcrs4ligI
	hqg8ePpsv+u/lC8OvGSLKEklgGSark99CQyj/f/uniCxWrt+CyQSJnZgARup2Ifi1A2cgui4QMFOk
	l41W4wT0nUnmTps8Xokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i43Tm-0001JI-QJ; Sat, 31 Aug 2019 13:31:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i43Tc-0001It-Qo
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 13:31:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id p13so10243491wmh.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 31 Aug 2019 06:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ackkV/Bz7YRjbASSsE8S1lsJQ7BTM6IX1HFuQ/eCs24=;
 b=PqcHKsJqLUdfeq9fcvqFO9tvBYVdXBF/FnWGmKHSANUhAW22hl8orTv0rTT7kY8CsO
 Zczxt/GJhz9uYPJ1lPxwPk8qsKYHnQzYJmAMdsOphkL7oZlM5rzcUJblZ/O1duzyJGrV
 E/loT5uu+PgQLeq8aAl530qywu/f1v9xE0iAMa3Tvliap8YrGfo+KuHumFbZ6ZZc4AOF
 /Qy/Z8lQbbqTR/porl6nY3S92BnhgvSD1mFunpabFFjcR9acCmI0+JUfdUOrOHQwVxI7
 7c4+MFVeJj7FqiDuG7HJubAJZiJx/lEUIx4/BLNIQKMliQ4TFWYs5IcV0cvVc95xoDMz
 QbXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ackkV/Bz7YRjbASSsE8S1lsJQ7BTM6IX1HFuQ/eCs24=;
 b=E/iLZlTZtZ2SN0TlhhAK4HRTGkyIWShDBrO+Rng+T2tZGttcsEkdeYLSetoQEsbEu9
 oLUGkxjO4LXjGtERIYR1yfWhyPtRF9fzYIzB6NezeAFmmXF+XzT8jWAnfYPfUdX7/yBB
 CSphERKl+Rx3Log21AOJZWh3PdbPuQ2CBgHUy+ZwbnOtqwsUgvy7EQtowm+B6MkKizK+
 DiA0xiDxOs8jMmZwkmnKiQmL2uXWxfsalXdS2kWJ+CiCb9fo4CAwOlp1n/nLZEO+Wzyv
 GwUB6g2cxxXV2egl5KtZWUhqQumWVKSIOpyCRpbCnSjdgqjdwR+2CvYeWPgieehu5uEb
 3yCg==
X-Gm-Message-State: APjAAAWkQ1IdktTVTgCW7muZTx5mRhVADLJ5Ib8hm9mNZAXm9vdG2E3v
 6nWb0D8krNugsPsWQ4b7LdTOHBdI
X-Google-Smtp-Source: APXvYqxtJeXNBsj38c+EUTPRQNAdcocBz/JIhD6p2EpTqKTzpNsqQ8NXpNYp7Tt980YfC0HsLJdNaQ==
X-Received: by 2002:a1c:ed05:: with SMTP id l5mr28799wmh.21.1567258294755;
 Sat, 31 Aug 2019 06:31:34 -0700 (PDT)
Received: from debian64.daheim (p5B0D7B75.dip0.t-ipconnect.de. [91.13.123.117])
 by smtp.gmail.com with ESMTPSA id f6sm21583732wrh.30.2019.08.31.06.31.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 31 Aug 2019 06:31:33 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i43TZ-0003oi-47; Sat, 31 Aug 2019 15:31:33 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 31 Aug 2019 15:31:32 +0200
Message-ID: <3922788.WSA6FCIlZt@debian64>
In-Reply-To: <CAOiHx=kQjciZq1WQXit4K3hDkcgoWkG02pki+SoAosw9ANpt6w@mail.gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com> <5317353.KyzfXZn0lP@debian64>
 <CAOiHx=kQjciZq1WQXit4K3hDkcgoWkG02pki+SoAosw9ANpt6w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_063136_874321_67BEBDF1 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Squashfs breakage lottery with UBI WAS: [PATCH
 RFC 2/2] amp821xx: use newly added pad-squashfs for Meraki MR24
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
Cc: Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de, Russell Senior <russell@personaltelco.net>,
 Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On Saturday, August 31, 2019 2:09:55 PM CEST Jonas Gorski wrote:
> On Sat, 31 Aug 2019 at 01:19, Christian Lamparter <chunkeey@gmail.com> wrote:
> >
> > On Friday, August 30, 2019 11:10:54 PM CEST Russell Senior wrote:
> > > >>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:
> > >
> > > Christian> Ok.
> > >
> > > Christian> I did push a patch titled: "build: remove harmful -nopad
> > > Christian> option from mksquashfs"
> > > Christian> <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=1c0290c5cc6258c48b8ba46b4f9c85a21de4f875>
> > >
> > > Christian> so, let's see if this triggers more undefined behaviour and
> > > Christian> exposes more hidden broken code.
> > >
> > > Just to re-iterate my earlier worry, if for example:
> > >
> > >   kernel_size + rootfs_with_padding_size
> > >
> > > crosses an erase block boundary that:
> > >
> > >   kernel_size + rootfs_without_padding_size
> > >
> > > does not, then we'll be wasting an erase block of flash space on NOR.
> > Not to worry. I guess that part of the magic is also explained in the wiki:
> > <https://openwrt.org/docs/techref/flash.layout#example_flash_partitioning>
> > <https://openwrt.org/docs/techref/flash.layout#explanations>
> > In case my attempt now gets too confusing :-/.
> >
> > The "rootfs" partition also contains the rootfs_data inside. It should
> > be possible to verify this with any of the routers that use the "firmware"
> > parition label.
> >
> > Please check /proc/mtd. For example on my WNDR3700v2 (which is very similar
> > to your WNDR3800). It looks like this
> >
> > |# cat /proc/mtd
> > |dev:    size   erasesize  name
> > |mtd0: 00050000 00010000 "u-boot"
> > |mtd1: 00020000 00010000 "u-boot-env"
> > |mtd2: 00f80000 00010000 "firmware"
> > |mtd3: 0018c440 00010000 "kernel"
> > |mtd4: 00df3bc0 00010000 "rootfs"
> > |mtd5: 00620000 00010000 "rootfs_data"
> > |mtd6: 00010000 00010000 "art
> >
> > The rootfs is 14629824 Bytes = 13.95 MiB. (The kernel + uboot + env + art
> > fills out the remaining ~2MiB to a total of 16 MiB). So the padding we both
> > are talking about already has to exists between the squashfs portion and the
> > jffs2/overlay portion inside the "rootfs" partition and it's a full erase-size
> > block. Sadly, OpenWrt does not readily print the "end" of just the squashfs
> > partition (as it does with the kernel partition above) and your message from
> > earlier with the three routers didn't include the "squashfs-split" and its
> > results. (I think that maybe this is the missing information that got lost?)
> 
> After a bit more investigation, those devices that use padjffs2 (or
> have the rootfs
> start at an at least 4k aligned offset) will be fine.
> 
> The issue are those devices with an unaligned rootfs start, which put their own
> EOF marker in the image by the firmware util (e.g. brcm63xx or tp-link devices).
> 
> There it can happen that e.g. we get
> 
> 0x18fff2  <squashfs end> 00 00 00 00
> 0x19000 00 00 00 00 ... <end of padding> FF FF
> 0x19010 FF FF FF ...
> *
> 0x20000 DE AD C0 DE
> 
> The 0xff are only a guess, I haven't checked what the different
> firmware utils use for padding the end of the rootfs - but mksquashfs
> definitely uses 0x00.
> 
> which leads to:
> 
> 1. squashfs-split will put the roofs_data partition start at 0x19000
> because that's the first aligned erase block after the end of the
> rootfs start + squashfs length
> 2. jffs2 will see that the first block is neither a valid jff2 node,
> an EOF marker, nor all 0xff
> 3. jffs2 will refuse to erase/mount the filesystem (AFAIU the code) [1]
> 
> So removing the -nopad might actually break those devices.
> 
> We could fix this case by making sure that mksquashfs and all firmware
> utils use 0xff's to pad (so the erase block will then be treated as
> empty/all 0xff). But then there is the question how jffs2 reacts if
> the first block is 0xff, and the second block is a valid jffs2 node,
> which happens when we sysupgrade with keeping config on NOR devices.
> The jffs2 code isn't the most readable code ... .
>
No need to worry, see one of the previous mails in this thread:

http://lists.infradead.org/pipermail/openwrt-devel/2019-August/018638.html

It contains a patch at the end titled:
"[PATCH] base-files: pad root.squashfs to 64KiB in ubi volumes"
This is another approach that just deals with the UBI+squashfs
issue but works with "-nopad". Soooooo.... do we all agree there?  

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
