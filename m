Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B8CA40EB
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 01:19:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3f1BwXjGSrhW0S/UOtoITr+JQ0oK16Fwdy0NJ3jhHeE=; b=lpH1pmjZoEb+2Z
	pnBcv76Q2pfVdCGtRNfHoyop6OWbHHVM5Z1Xrms0am3Nacshzvhz9kdAa+RlNRMoM8uaMAfj2Gsan
	PoqqqlB/eZVWek2MJwFNj86J85oG4Bl2VGUN713F3UeXBz4eRppfNipVT6f3ymSuz7xKi+npG7cFe
	GqGGmrXExn6CLsHzCv9xEcRgkB3UEDyi1bO1FhHpwKtyaIs33i1kRFCHfxfkJMt1K+yoyt3RkjTJ1
	d8iH3xnQNmlmPNtJ6oT1woCwRow9WGAiNLl1pGJPSvBUD5rRwAj4jV1PK04+WuGWCubTlI4Cn85zn
	V/5aiLrcDfoVcgd8LXLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3qAk-00075M-R8; Fri, 30 Aug 2019 23:19:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3qAd-000751-ES
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 23:19:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id v15so8959360wml.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 16:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tf5CV14PdRkyQmDzuFD+NjHQiXrXxNjbrP4Rpy6wp80=;
 b=oJitZjqYd55rO2e6H7t2ASByuT4EvhzEjkTVWgDINgck1Ulbq/Sn5qWdqWBq6wLQmb
 rnBArNTv/cu6VCUFneLt1PGKLgj8Mv2T5GPwT4W86KCGkqT+GPqNVt04fLtg1yBWupxF
 57vWvxlGhJlH0LOlzG+gsq1T1clFC+Ax7O4xtuDkxNwqtmnVZdgML54+cQVgGvszND4f
 x2aDpk6TMYRxqY13Cn0xKAXTI7iIoeA570G6M26UaK5sAr8BTnGKydrYqKi8T4iXufVV
 N50IMElPXRBQpsHfaZLCwjNHUp3wmnZcn1bJPPrMU1tKoXtiGUoZGLqCTiRauoYje3wm
 eTAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tf5CV14PdRkyQmDzuFD+NjHQiXrXxNjbrP4Rpy6wp80=;
 b=DJIG+kNcO/8gwGSM5E2fPDnP1ld5pj8r7NlKYW6qicD+SrYjrMrdj8MZgrbXNdyWnU
 xHUy9TLhbFTNFNn5pJjfuugNqW4J3wsbi5VRLYkcTNXsWDMhcSo0qmQJfUat0ojbrrQ0
 E69SOyv3kt7ermiqWYhemLL47wkdhIrv/TekJwOWGqbda4ohKJ+ew4bbx2ULrUJfkk6W
 y0iH5HcWqU7WCUVZ4m+Rrpr++SpEd8BiK7AqtrYHiDw4LcL0FCm1I3Thb7guMpXCg4Lz
 zXIhKJ0VS7XgZMykPVilg5UqBLa+F8XQtrrydqu/yzGkg0QSCMWs5+WdR/9PhTEyF9Bn
 xmmA==
X-Gm-Message-State: APjAAAVxeAl+t6vTRl/4rscBIpgPZPsP4ZExsUZk5SozVrmpF3laVqKU
 +BpK4YwJk/Ecro3ED5BHcSo=
X-Google-Smtp-Source: APXvYqwb1CuQxrsQEjN8m6Q93SJlhMAmHlSa+DvA9xfceg+DwIu2B9xelvSHnfdVFzHLz5+wChvbRw==
X-Received: by 2002:a1c:f716:: with SMTP id v22mr16517562wmh.164.1567207144520; 
 Fri, 30 Aug 2019 16:19:04 -0700 (PDT)
Received: from debian64.daheim (p5B0D7A2A.dip0.t-ipconnect.de. [91.13.122.42])
 by smtp.gmail.com with ESMTPSA id
 x15sm2670053wmc.16.2019.08.30.16.19.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 16:19:03 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i3qAZ-0004wz-D3; Sat, 31 Aug 2019 01:19:03 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Russell Senior <russell@personaltelco.net>
Date: Sat, 31 Aug 2019 01:19:03 +0200
Message-ID: <5317353.KyzfXZn0lP@debian64>
In-Reply-To: <87mufqnyu9.fsf@husum.klickitat.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com> <3012831.exOcdT49RB@debian64>
 <87mufqnyu9.fsf@husum.klickitat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_161907_489225_6E1FAD48 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de,
 dev@kresin.me, jonas.gorski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, August 30, 2019 11:10:54 PM CEST Russell Senior wrote:
> >>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:
> 
> Christian> Ok.
> 
> Christian> I did push a patch titled: "build: remove harmful -nopad
> Christian> option from mksquashfs"
> Christian> <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=1c0290c5cc6258c48b8ba46b4f9c85a21de4f875>
> 
> Christian> so, let's see if this triggers more undefined behaviour and
> Christian> exposes more hidden broken code.
> 
> Just to re-iterate my earlier worry, if for example:
> 
>   kernel_size + rootfs_with_padding_size
> 
> crosses an erase block boundary that:
> 
>   kernel_size + rootfs_without_padding_size
> 
> does not, then we'll be wasting an erase block of flash space on NOR.
Not to worry. I guess that part of the magic is also explained in the wiki:
<https://openwrt.org/docs/techref/flash.layout#example_flash_partitioning>
<https://openwrt.org/docs/techref/flash.layout#explanations>
In case my attempt now gets too confusing :-/.

The "rootfs" partition also contains the rootfs_data inside. It should
be possible to verify this with any of the routers that use the "firmware"
parition label.

Please check /proc/mtd. For example on my WNDR3700v2 (which is very similar
to your WNDR3800). It looks like this

|# cat /proc/mtd
|dev:    size   erasesize  name
|mtd0: 00050000 00010000 "u-boot"
|mtd1: 00020000 00010000 "u-boot-env"
|mtd2: 00f80000 00010000 "firmware"
|mtd3: 0018c440 00010000 "kernel"
|mtd4: 00df3bc0 00010000 "rootfs"
|mtd5: 00620000 00010000 "rootfs_data"
|mtd6: 00010000 00010000 "art
 
The rootfs is 14629824 Bytes = 13.95 MiB. (The kernel + uboot + env + art
fills out the remaining ~2MiB to a total of 16 MiB). So the padding we both
are talking about already has to exists between the squashfs portion and the
jffs2/overlay portion inside the "rootfs" partition and it's a full erase-size
block. Sadly, OpenWrt does not readily print the "end" of just the squashfs
partition (as it does with the kernel partition above) and your message from 
earlier with the three routers didn't include the "squashfs-split" and its
results. (I think that maybe this is the missing information that got lost?)

|[    0.655975] m25p80 spi0.0: mx25l12805d (16384 Kbytes)
|[    0.661058] 4 fixed-partitions partitions found on MTD device spi0.0
|[    0.667448] Creating 4 MTD partitions on "spi0.0":
|[    0.672234] 0x000000000000-0x000000050000 : "u-boot"
|[    0.677910] 0x000000050000-0x000000070000 : "u-boot-env"
|[    0.683834] 0x000000070000-0x000000ff0000 : "firmware"
|[    0.691804] 2 netgear-fw partitions found on MTD device firmware
|[    0.697856] Creating 2 MTD partitions on "firmware":
|[    0.702818] 0x000000000000-0x00000018c440 : "kernel"
|[    0.708443] 0x00000018c440-0x000000f80000 : "rootfs"
|[    0.713960] mtd: device 4 (rootfs) set to be root filesystem
|[    0.719688] 1 squashfs-split partitions found on MTD device rootfs
|[    0.725870] 0x000000960000-0x000000f80000 : "rootfs_data"
|[    0.731896] 0x000000ff0000-0x000001000000 : "art"


That is of course, you don't max-out the rootfs completely (to the last byte)
and leave no space for the overlay/jffs2... But in that case, mksquashfs 
should not need to add any padding since the partition is ending at a 4k block
already. (However, I don't think padjffs2 will be happy.)

> On a side note, I noticed that there were some checks[1] added to
> kernels about a year ago (early august 2018) to squashfs code[1], to
> protect against malformed squash filesystems that might have started
> triggering the boot loop. This might explain why we haven't seen the
> problem earlier (it might have been silently ignored).
> 
> [1] e.g. https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=71755ee5350b63fb1f283de8561cdb61b47f4d1d
It's more of an edge case for sure. I think I've must have hit it during
the development as well. I remember having a bad squashfs after a build 
that I just could not read even with the userspace unsquashfs utils either
on my PC. So I think we really want to provide "unsquashfs"/"binwalk" able
root.squashfs for debugging as well.

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
