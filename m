Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8AFA48C0
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Sep 2019 12:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzP09nbUFOAauEoLii/b1/P5ZVgSuxFIhVvR/iWKU6c=; b=MNGVtv8hcSvXyE
	oP7x2memKA2AewZAy1iS5sxAghvU6tjXhYdPX2KmKosXr5FUPJgkKHVOPnhD7T1gimYwTEs7RdeEd
	HYQbFvaelw0Viel72w8XnYFL82+wGeqZUTwy9k7Q6RFNLFOE++iATK7RdqLSHFWRBuL1cNn/fbPYy
	sozxilxLIfktHjls3acNcWPOTotC7HVQH0J/Abb2Eg7gNVT5yHg2VVSlDvfhy8BpcBMs5Jo5iS2RT
	mMk6Sx+O4vUg5VC0Aowq06JY9vDJAWORbD344Z82OpWfqokxob67DNNS8qPLm9ohkHhyQ+4b7YA5z
	OZ7fgCbdLpAdv/MN/ABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4NDt-0000vE-Uq; Sun, 01 Sep 2019 10:36:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4NDk-0000uc-Mc
 for openwrt-devel@lists.openwrt.org; Sun, 01 Sep 2019 10:36:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id v15so11620119wml.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 03:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GLq7aM6MT/EXl6xfkU38ctwItRbyKxOqO63tHEqTPxk=;
 b=uVjjqf3nMjliCaIAusgk5LGsvfnCWn3zu+SgpysGfevG/IwU8PXr/tD2jMdq2Snzc+
 unTLR6LqgUJFmyNjicVKn8iguJdQpGmOAk1EkNIdfIG/Gp5AHDpG9aNgNcKwY0WkuNcg
 o2TdJxTmqLkB4SjCxGeCOgzJ9oEkTrac1xl+JidT/pXknHOud00J8Jx/iTvhPM16xs0e
 cWwzPAnfwkuvNkqX35mEc/aiq0KOrYKyfagBsuyWIueplZ/NV9r7nX5gBXO0lSoA95SD
 57/zzj4GXV3rHtzHSCxqQ0JyemQDtF6LdZAmGinNmbMLhuxE/0tf41k68PLcI8mWVNH/
 jQag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GLq7aM6MT/EXl6xfkU38ctwItRbyKxOqO63tHEqTPxk=;
 b=blD3Qr2pkBX93kBYfn5rSpJ+Zkr0Vs9kdtGzw3dH/9m+nsQGretXmHrVaam1b9yLhZ
 ZNj4APzyojMzsBxxzzhyc3Zlp555RtuqzYotxKGM02/Tu3MZR9daYXIpAnlDi+oax7iF
 nQfrDISsuvteifir4TpS6WAGgaLDlR5OGiEPCajZ2Oim7oP8e+vhBPQUAmvZ15nEmD2M
 2Q2HI2hTsUIl0OOrjewfHcQCO6X2Shwrwy2ksrrt+i5ge9lGvg//wVhZeCWy1fAncAKE
 5grrLrEMJJjxLV8rd11bHmRd8LYuTsJmCvT8aPvgn3VwM2gXheXZWeZ/I7bILAtLRct4
 faiw==
X-Gm-Message-State: APjAAAWspyKQMqHh6LOZsA6uRPAs3avZGbfCxJ0vtoPYWUPZVsQDabt5
 ikI5Kx7jeE+hi0k2EyYqOvCh5ILmfVN0EP3SpW8=
X-Google-Smtp-Source: APXvYqybLHVkDPU8EH5bqjn0gKFSJinptrm/UJ2yrpqijJb4K6r2yzswq+Ga72S6Aoa2VD+IV+3ZPyjGiUmruWO7+eo=
X-Received: by 2002:a1c:9648:: with SMTP id y69mr27413153wmd.122.1567334187706; 
 Sun, 01 Sep 2019 03:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <87a7c1qxl2.fsf@husum.klickitat.com> <5317353.KyzfXZn0lP@debian64>
 <CAOiHx=kQjciZq1WQXit4K3hDkcgoWkG02pki+SoAosw9ANpt6w@mail.gmail.com>
 <3922788.WSA6FCIlZt@debian64>
In-Reply-To: <3922788.WSA6FCIlZt@debian64>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sun, 1 Sep 2019 12:36:29 +0200
Message-ID: <CAOiHx=nhCKCEDCUXN86YsceqLridmGO=8ODwkxcJf9w-6z-c_A@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_033632_766466_6B3E87E2 
X-CRM114-Status: GOOD (  27.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de, Russell Senior <russell@personaltelco.net>,
 Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, 31 Aug 2019 at 15:31, Christian Lamparter <chunkeey@gmail.com> wrote:
>
> Hello,
>
> On Saturday, August 31, 2019 2:09:55 PM CEST Jonas Gorski wrote:
> > On Sat, 31 Aug 2019 at 01:19, Christian Lamparter <chunkeey@gmail.com> wrote:
> > >
> > > On Friday, August 30, 2019 11:10:54 PM CEST Russell Senior wrote:
> > > > >>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:
> > > >
> > > > Christian> Ok.
> > > >
> > > > Christian> I did push a patch titled: "build: remove harmful -nopad
> > > > Christian> option from mksquashfs"
> > > > Christian> <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=1c0290c5cc6258c48b8ba46b4f9c85a21de4f875>
> > > >
> > > > Christian> so, let's see if this triggers more undefined behaviour and
> > > > Christian> exposes more hidden broken code.
> > > >
> > > > Just to re-iterate my earlier worry, if for example:
> > > >
> > > >   kernel_size + rootfs_with_padding_size
> > > >
> > > > crosses an erase block boundary that:
> > > >
> > > >   kernel_size + rootfs_without_padding_size
> > > >
> > > > does not, then we'll be wasting an erase block of flash space on NOR.
> > > Not to worry. I guess that part of the magic is also explained in the wiki:
> > > <https://openwrt.org/docs/techref/flash.layout#example_flash_partitioning>
> > > <https://openwrt.org/docs/techref/flash.layout#explanations>
> > > In case my attempt now gets too confusing :-/.
> > >
> > > The "rootfs" partition also contains the rootfs_data inside. It should
> > > be possible to verify this with any of the routers that use the "firmware"
> > > parition label.
> > >
> > > Please check /proc/mtd. For example on my WNDR3700v2 (which is very similar
> > > to your WNDR3800). It looks like this
> > >
> > > |# cat /proc/mtd
> > > |dev:    size   erasesize  name
> > > |mtd0: 00050000 00010000 "u-boot"
> > > |mtd1: 00020000 00010000 "u-boot-env"
> > > |mtd2: 00f80000 00010000 "firmware"
> > > |mtd3: 0018c440 00010000 "kernel"
> > > |mtd4: 00df3bc0 00010000 "rootfs"
> > > |mtd5: 00620000 00010000 "rootfs_data"
> > > |mtd6: 00010000 00010000 "art
> > >
> > > The rootfs is 14629824 Bytes = 13.95 MiB. (The kernel + uboot + env + art
> > > fills out the remaining ~2MiB to a total of 16 MiB). So the padding we both
> > > are talking about already has to exists between the squashfs portion and the
> > > jffs2/overlay portion inside the "rootfs" partition and it's a full erase-size
> > > block. Sadly, OpenWrt does not readily print the "end" of just the squashfs
> > > partition (as it does with the kernel partition above) and your message from
> > > earlier with the three routers didn't include the "squashfs-split" and its
> > > results. (I think that maybe this is the missing information that got lost?)
> >
> > After a bit more investigation, those devices that use padjffs2 (or
> > have the rootfs
> > start at an at least 4k aligned offset) will be fine.
> >
> > The issue are those devices with an unaligned rootfs start, which put their own
> > EOF marker in the image by the firmware util (e.g. brcm63xx or tp-link devices).
> >
> > There it can happen that e.g. we get
> >
> > 0x18fff2  <squashfs end> 00 00 00 00
> > 0x19000 00 00 00 00 ... <end of padding> FF FF
> > 0x19010 FF FF FF ...
> > *
> > 0x20000 DE AD C0 DE
> >
> > The 0xff are only a guess, I haven't checked what the different
> > firmware utils use for padding the end of the rootfs - but mksquashfs
> > definitely uses 0x00.
> >
> > which leads to:
> >
> > 1. squashfs-split will put the roofs_data partition start at 0x19000
> > because that's the first aligned erase block after the end of the
> > rootfs start + squashfs length
> > 2. jffs2 will see that the first block is neither a valid jff2 node,
> > an EOF marker, nor all 0xff
> > 3. jffs2 will refuse to erase/mount the filesystem (AFAIU the code) [1]
> >
> > So removing the -nopad might actually break those devices.
> >
> > We could fix this case by making sure that mksquashfs and all firmware
> > utils use 0xff's to pad (so the erase block will then be treated as
> > empty/all 0xff). But then there is the question how jffs2 reacts if
> > the first block is 0xff, and the second block is a valid jffs2 node,
> > which happens when we sysupgrade with keeping config on NOR devices.
> > The jffs2 code isn't the most readable code ... .
> >
> No need to worry, see one of the previous mails in this thread:
>
> http://lists.infradead.org/pipermail/openwrt-devel/2019-August/018638.html
>
> It contains a patch at the end titled:
> "[PATCH] base-files: pad root.squashfs to 64KiB in ubi volumes"
> This is another approach that just deals with the UBI+squashfs
> issue but works with "-nopad". Soooooo.... do we all agree there?

a) 64k is excessive, we only need 4k (actually 1k would be enough,
since we don't enable CONFIG_SQUASHFS_4K_DEVBLK_SIZE).

The referenced issue with 64k page size happens when loop-mounting a
squashfs, since loop defaults to PAGE_SIZE as its block size. But we
never do that in OpenWrt, and we don't support any targets with that
huge PAGE_SIZE - biggest is ARC with 8k.

b) it misses the squashfs's in generic sysupgrade images itself - we
need to pad their length as well, to avoid breaking devices with a
sysupgrade image hitting the corner case being flashed from an unfixed
firmware with the old nand.sh.

Also IMHO "1c0290c5cc6258c48b8ba46b4f9c85a21de4f875" should be
reverted, for the previously mentioned issues.

Regards



Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
