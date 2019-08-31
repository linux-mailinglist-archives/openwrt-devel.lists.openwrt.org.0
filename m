Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C320A4459
	for <lists+openwrt-devel@lfdr.de>; Sat, 31 Aug 2019 14:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14alCExYWQzo3ri7WtsV1zXWCROEoDCLbSr/Itz4a68=; b=GDFyElGbd0DHCH
	HS+HTtPlxID3+OFzoE+tZoCHI0OUmvVPWXGyd2R6wxOr2YxTBT2bJrKrexWIu7lJ/eRzsw/ArRuEW
	2DOjImAeLu2ox9XKZZhlkXs7jrf+P7wFDykl40vLvDj9YhzBGhvKqpQybWf+xTAWJopCwujOmpj3l
	avclZgzgqlRccDpeBCL/1lJvgLtpAQbwM9BR7IkPja60GuYzkx5E/z7M6WQyGvEULGT1PbZVPdWk5
	ChXHCHqNerJEGQ0Zt/3fTGaVigOFNnIO9/x4JJsInRsjMJc8iiLLLD+eas/aW9ck6LjCcIEPjfs2Z
	J7fxICxG1hEYPAMR5HFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i42Cq-0002lB-Nf; Sat, 31 Aug 2019 12:10:12 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i42Cf-0001zf-U0
 for openwrt-devel@lists.openwrt.org; Sat, 31 Aug 2019 12:10:04 +0000
Received: by mail-wm1-x343.google.com with SMTP id k2so8536813wmj.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 31 Aug 2019 05:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N91r1KHfrxXI6AdqnsqusMq0XbgOfTkqym9kmD7fGD4=;
 b=Ad6J6kwVLicNACWwoY7UIpfiyE6p9U20eE3JGrGJF1JYJ41JXQul01u/SCg7nKJNQw
 CYdnihAwmMJb7frbnJJqlgFeCDmco/XHqlHCuNuPWqlgaJQFbJ6vFV4JPzrtA3RQh++v
 GYxn66dPHQZAoWS0pBry4fyE2SVR/Pe9OfzOFJQNKjWofPgeACnLUcuc9pC8pmWhuFoa
 JuXUmSB4AokHzPCloS2H/6Z2EMh1jQN3eSP1tEA+IftnCjr7Iv79ilFzWRSrhvF4NitM
 6PVHISwBWSEdeS4GzEWE2CR0XLkpnasWg28aXe5VeqVo9DH2AVjX2jJNlvLAr+Ii4/XL
 MxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N91r1KHfrxXI6AdqnsqusMq0XbgOfTkqym9kmD7fGD4=;
 b=l12IHWorARrmGwW1YHMwizcIBjziEIpxx2Xn9A7+mBrwUw9160vy0iRqiZ06IPR76e
 RaWsd2WIVJDHvc2dvuUfN1Cj+NGFuzO7eSgVQu7aN04h5H4+L8+hsPz8mnaMDm4hjIwq
 lvdgtT0wo8fq3e++5LmoLDveLdHwB2MfRYX+iclHb5GrPvW2hrTSEeAyIQ6Yl/pi81U1
 Ir9AhhVoBU+0+H1YdpQAV2uCHmNhGQxCQW1WBSIduCpvXTViP2g/zXezdylxFB5OvuJd
 d3g0Qf7ppGMURJAvhKfAmvq+ZWPwve9L0fUhDkfxcIDiOCCe8GmBxPnnhiJYKG7mWRim
 wjbA==
X-Gm-Message-State: APjAAAW73dj0KDXrvuiyatz5+5q0hbdEsvcQLAtAGtdJsU9sxkz4h6kt
 ahjPYUebV3TN/FVMbtXekeOMQAw6vtc1E8KJazk=
X-Google-Smtp-Source: APXvYqxPmtKS+fwlJ9yiMHE0N57zPsrmpfY2O2Qk9DtQSykFZwR0Kcj+4M7YLR0s823lMlYza/6hnhUHw0xKo9QlRds=
X-Received: by 2002:a1c:9648:: with SMTP id y69mr22814164wmd.122.1567253396803; 
 Sat, 31 Aug 2019 05:09:56 -0700 (PDT)
MIME-Version: 1.0
References: <87a7c1qxl2.fsf@husum.klickitat.com> <3012831.exOcdT49RB@debian64>
 <87mufqnyu9.fsf@husum.klickitat.com> <5317353.KyzfXZn0lP@debian64>
In-Reply-To: <5317353.KyzfXZn0lP@debian64>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 31 Aug 2019 14:09:55 +0200
Message-ID: <CAOiHx=kQjciZq1WQXit4K3hDkcgoWkG02pki+SoAosw9ANpt6w@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_051002_014399_000BDC5C 
X-CRM114-Status: GOOD (  16.49  )
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
 provider (jonas.gorski[at]gmail.com)
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de, Russell Senior <russell@personaltelco.net>,
 Mathias Kresin <dev@kresin.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Sat, 31 Aug 2019 at 01:19, Christian Lamparter <chunkeey@gmail.com> wrote:
>
> On Friday, August 30, 2019 11:10:54 PM CEST Russell Senior wrote:
> > >>>>> "Christian" == Christian Lamparter <chunkeey@gmail.com> writes:
> >
> > Christian> Ok.
> >
> > Christian> I did push a patch titled: "build: remove harmful -nopad
> > Christian> option from mksquashfs"
> > Christian> <https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=1c0290c5cc6258c48b8ba46b4f9c85a21de4f875>
> >
> > Christian> so, let's see if this triggers more undefined behaviour and
> > Christian> exposes more hidden broken code.
> >
> > Just to re-iterate my earlier worry, if for example:
> >
> >   kernel_size + rootfs_with_padding_size
> >
> > crosses an erase block boundary that:
> >
> >   kernel_size + rootfs_without_padding_size
> >
> > does not, then we'll be wasting an erase block of flash space on NOR.
> Not to worry. I guess that part of the magic is also explained in the wiki:
> <https://openwrt.org/docs/techref/flash.layout#example_flash_partitioning>
> <https://openwrt.org/docs/techref/flash.layout#explanations>
> In case my attempt now gets too confusing :-/.
>
> The "rootfs" partition also contains the rootfs_data inside. It should
> be possible to verify this with any of the routers that use the "firmware"
> parition label.
>
> Please check /proc/mtd. For example on my WNDR3700v2 (which is very similar
> to your WNDR3800). It looks like this
>
> |# cat /proc/mtd
> |dev:    size   erasesize  name
> |mtd0: 00050000 00010000 "u-boot"
> |mtd1: 00020000 00010000 "u-boot-env"
> |mtd2: 00f80000 00010000 "firmware"
> |mtd3: 0018c440 00010000 "kernel"
> |mtd4: 00df3bc0 00010000 "rootfs"
> |mtd5: 00620000 00010000 "rootfs_data"
> |mtd6: 00010000 00010000 "art
>
> The rootfs is 14629824 Bytes = 13.95 MiB. (The kernel + uboot + env + art
> fills out the remaining ~2MiB to a total of 16 MiB). So the padding we both
> are talking about already has to exists between the squashfs portion and the
> jffs2/overlay portion inside the "rootfs" partition and it's a full erase-size
> block. Sadly, OpenWrt does not readily print the "end" of just the squashfs
> partition (as it does with the kernel partition above) and your message from
> earlier with the three routers didn't include the "squashfs-split" and its
> results. (I think that maybe this is the missing information that got lost?)

After a bit more investigation, those devices that use padjffs2 (or
have the rootfs
start at an at least 4k aligned offset) will be fine.

The issue are those devices with an unaligned rootfs start, which put their own
EOF marker in the image by the firmware util (e.g. brcm63xx or tp-link devices).

There it can happen that e.g. we get

0x18fff2  <squashfs end> 00 00 00 00
0x19000 00 00 00 00 ... <end of padding> FF FF
0x19010 FF FF FF ...
*
0x20000 DE AD C0 DE

The 0xff are only a guess, I haven't checked what the different
firmware utils use for padding the end of the rootfs - but mksquashfs
definitely uses 0x00.

which leads to:

1. squashfs-split will put the roofs_data partition start at 0x19000
because that's the first aligned erase block after the end of the
rootfs start + squashfs length
2. jffs2 will see that the first block is neither a valid jff2 node,
an EOF marker, nor all 0xff
3. jffs2 will refuse to erase/mount the filesystem (AFAIU the code) [1]

So removing the -nopad might actually break those devices.

We could fix this case by making sure that mksquashfs and all firmware
utils use 0xff's to pad (so the erase block will then be treated as
empty/all 0xff). But then there is the question how jffs2 reacts if
the first block is 0xff, and the second block is a valid jffs2 node,
which happens when we sysupgrade with keeping config on NOR devices.
The jffs2 code isn't the most readable code ... .


Regards
Jonas

[1]  https://elixir.bootlin.com/linux/latest/source/fs/jffs2/scan.c#L263

all dirty nodes will increase neither c->nr_free_blocks nor
empty_blocks nor badblocks, so the sum will be different from
c->nr_blocks, so jffs2 will refuse to mount

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
