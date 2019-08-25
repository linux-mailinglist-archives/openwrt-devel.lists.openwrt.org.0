Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C3C9C334
	for <lists+openwrt-devel@lfdr.de>; Sun, 25 Aug 2019 14:22:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cp8relkmdVqN2GJ6NWbhj7+qyzFMSJiWnwJy40FRZIU=; b=qDHF9RcMDdzRnp
	np78mGdmuxwbXuK1X0YD5qHiohfuc6MrZPt+BP0jkr5KgFn3oxsBhhO2vcdz4gpjfEBGfSI7Vxy1m
	Fo88fDPzU5Lw71u1y5Z0tWTv3NFef9cuzB0f9yXPCLqHNUyM6mgLC8O0y3rgpDdzFJbLEC/WC6M/U
	JE0YuqTolH1E4MlgoatG2J34cYOIOn/5qHkM7OQCYpzx7cHrSccAzdq5bUxD9ypQgFK+KamBerNtI
	cucLO98XbN64tAg4aOi2kPBcrGUdp6aSKpZ2ZgZOGM6I0d8aAANYbywiSL/n5xPcMsLP4l7ix/RRr
	N0k6DfwncQdv/0e2Cs+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1rXC-0006Ic-Rr; Sun, 25 Aug 2019 12:22:14 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1rWv-0006I7-7c
 for openwrt-devel@lists.openwrt.org; Sun, 25 Aug 2019 12:21:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id m125so13239376wmm.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 25 Aug 2019 05:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qkBRAiO19egtjYHJD4Ok5MdSNdh++CyDgqDOznV/zT0=;
 b=Z41daJWyPqKx5QWS2gUs7GDlpUq2wBYdIfoH/i9GifhuXUfXD+XD73hoUdrsp/13f+
 dXqQrECXdo87bYr0SgYESnKP2p3N6+LZ+R3nwE6BJ9NjR7BXraoFqCbit21/isV0htdJ
 HcignxMcJ8vm41Jcnlb/row3w4mC+Vq1lDPlatW5QMDJtsrpxu1D/an3TCwBvc73yLkL
 34yAYrPdBbHZUUxnHxifULYR6XkMl/junOXFSWmS/mYkDAshu3T03oOkEBa8lRgo/pF/
 /g+f6hwjitNtoqDbkT45zMo+maspJ0+KBYkRlSDRaYhq/IOz//3yg0jZzYqml29AyS/+
 4NAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qkBRAiO19egtjYHJD4Ok5MdSNdh++CyDgqDOznV/zT0=;
 b=sOP5TyvEjZHkk8fOhvVJOZZMhPQOpj27vkl5i5Qkr/V12TbXH0g4NpTNuu4Q7limtI
 eSJUljKTkG4ujZHTu/JctKdwRulUfhMp5NWRtTyvDDcb9g3z2D1AEW5EPGEtfMkt+IQs
 hKKmacDPsI+tNzZQ1TE85ovQjmEpi/TvfPdHiw64RqTDHQRTEWkPCwEaH7y7fXzuV9Ej
 aBa8gzs39wjvXRBBep7p6RkTLvwGTaOToK3GaMiq/GA4BapBoZVJuEhh/Dniw47Kl1sU
 4S9jaYU56Lnk29KP7n4coPFUmjXQCQrELvpLJdlaQ/SIX3z0u7skO5DNdWdVsAri1DP4
 IY/Q==
X-Gm-Message-State: APjAAAUV1WxQdazVGdJkABiyR/TZnCsSpzKTmvdHy88scdV8tsJJ5kV8
 zxei2b8Y3xZ0eySuZKEeUtY=
X-Google-Smtp-Source: APXvYqxKM9v/1rGB8TbWT85lEA7CuNTMylFpGhxQ/xZqWpqZhaEPTJR09goEd1wwvk2XDF00KXvlTw==
X-Received: by 2002:a1c:2314:: with SMTP id j20mr15917632wmj.152.1566735715147; 
 Sun, 25 Aug 2019 05:21:55 -0700 (PDT)
Received: from debian64.daheim (p4FD09A39.dip0.t-ipconnect.de. [79.208.154.57])
 by smtp.gmail.com with ESMTPSA id r16sm15954942wrc.81.2019.08.25.05.21.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Aug 2019 05:21:54 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i1rWr-0004Mp-Nt; Sun, 25 Aug 2019 14:21:53 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Russell Senior <russell@personaltelco.net>
Date: Sun, 25 Aug 2019 14:21:50 +0200
Message-ID: <4262093.GnkBSk0z1S@debian64>
In-Reply-To: <87r259kbvz.fsf@husum.klickitat.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com> <1619788.jSZVMTGyYI@debian64>
 <87r259kbvz.fsf@husum.klickitat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_052157_307625_37EF2058 
X-CRM114-Status: GOOD (  50.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

[Fixed Mathias Email]

On Sunday, August 25, 2019 8:16:48 AM CEST Russell Senior wrote:
> > On Saturday, August 24, 2019 2:18:55 AM CEST Russell Senior wrote:
> > > > What's happening here is that mksquashfs4 is being told
> > > > through the "-nopad" option to "do not pad filesystem to a
> > > > multiple of 4K" [0].
> > > 
> > > > |define Image/mkfs/squashfs |
> > > > $(STAGING_DIR_HOST)/bin/mksquashfs4 $(call
> > > > mkfs_target_dir,$(1)) $@ \ | -nopad -noappend -root-owned \ |
> > > > -comp $(SQUASHFSCOMP) $(SQUASHFSOPT) \ | -processors 1 |endef
> > > 
> > > > My guess is that this affects more than just the MR24 (I'm
> > > > looking at you too: pad2jffs and various pad-to $value)
> > > > . I've tried tracking down the change that added the "-nopad"
> > > > and found it in a commit from 2005 titled: "add some changes
> > > > from whiterussian to head" [1] [2]:
> > > 
> > > I agree that other devices where rootfs is squashfs and lives on a ubi
> > > volume are probaby also vulnerable to this problem. Regrettably, I haven't
> > > thought of any other of those devices that I have on hand to test. 
> > > 
> > > > | $(KDIR)/root.squashfs: | @mkdir -p $(KDIR)/root/jffs |-
> > > > $(STAGING_DIR)/bin/mksquashfs-lzma $(KDIR)/root $@ -noappend
> > > > -root-owned -le |+ $(STAGING_DIR)/bin/mksquashfs-lzma
> > > > $(KDIR)/root $@ -nopad -noappend -root-owned -le
> > > 
> > > 
> > > > So, this is really old...
> > > 
> > > > Question is, should we just drop the -nopad? Since as you
> > > > established, in the described corner-case (see above)
> > > > squashfs needs this 4k padding and the generated squashfs
> > > > could be considered broken otherwise?
> > > 
> > > I'm under the impression that the -nopad makes sense for NOR flash where
> > > the kernel and rootfs are glued together, padding the isolated rootfs
> > > would cause alignment problems or wasted space in the combined blobs.
> > 
> > Yes, that's the nod to padjffs2. That said,
> > <https://sourceforge.net/p/squashfs/mailman/message/28307755/> makes
> > it sound like that apart from the BLOCKSIZE, we also need to PAGE_SIZE?
> > 
> > (I think the APM821XX is a special case, since it can do 64KiB Pages
> > as well as it's 32MiB SLC NAND that uses 16 KiB erase-blocks. So a
> > PAGE can span up to 4 pages.
> > 
> > > 
> > > > (Judging from your
> > > > message, you went through the kernel code. Can you please
> > > > share the place where the lack of the padding is breaking the
> > > > fs?)
> > > 
> > > It's mostly inferred from the fact that I saw the error and kernel
> > > panic, and glancing at the kernel squashfs code. I am not pretending to
> > > understand completely how the squashfs kernel code works, but the
> > > position of the error relative to the size of the rootfs in my panic
> > > case strongly suggests it was trying to read past the end of the ubi
> > > volume.
> > > 
> > > The error comes in the kernel's fs/squashfs/block.c in the
> > > squashfs_read_data() function. There are a bunch of conditions (at least
> > > 5) within the function (see "goto read_failure;") that will lead to that
> > > message being printed.
> > > 
> > Well, that's a pity this could have saved a lot of time.
> > 
> > I've cobbered together a patch that deals with some of the
> > padding issues at "ubimkvol" and "ubinize" time. The idea
> > is that ideally we want to do the padding when we know
> > PAGE_SIZE and the BLOCKSIZE/Erasesize (MR24 blocksize in
> > image/Makefile seems wrong as well...).
> > 
> > But for now, it's set to 64KiB. If this is the way forward
> > we add enable getconf and get the PAGESIZE at runtime. If not,
> > we need to come up with something else.
> > (It's also possible to do some changes in  ubi's block code or
> > squashfs kernel code to mitigate the padding, but I don't think
> > the maintainers will even look at it).
> > 
> > 
> > Regards,
> > Christian
> > ---
> > From 803cab7d585ebb85362357d008067caf645a7f17 Mon Sep 17 00:00:00 2001
> > From: Christian Lamparter <chunkeey@gmail.com>
> > Date: Sat, 24 Aug 2019 12:55:40 +0200
> > Subject: [PATCH] base-files: pad root.squashfs to 64KiB in ubi volumes
> > 
> > SquashFS's HOWTO states in the section "Using mksquashfs"
> > <https://elinux.org/Squash_FS_Howto#Using_mksquashfs>
> > that a padding is necessary "for the filesystem to be used
> > on block devices."
> > 
> > OpenWrt's mksquashfs for the rootfs (which is usually
> > squashfs) is instructed to skip the padding via the nopad
> > option because the rootfs will be padded by functions like
> > pad-rootfs to the eraseblocksize which is usually much
> > bigger at somewhere 64KiB.
> 
> Note also, e.g. tplink,tl-wdr3600-v1:
>
> [    0.428860] m25p80 spi0.0: en25q64 (8192 Kbytes)
> [    0.433638] 3 fixed-partitions partitions found on MTD device spi0.0
> [    0.440112] Creating 3 MTD partitions on "spi0.0":
> [    0.444991] 0x000000000000-0x000000020000 : "u-boot"
> [    0.450914] 0x000000020000-0x0000007f0000 : "firmware"
> [    0.459935] 2 tplink-fw partitions found on MTD device firmware
> [    0.465951] Creating 2 MTD partitions on "firmware":
> [    0.471047] 0x000000000000-0x0000001b6b1b : "kernel"
> [    0.476924] 0x0000001b6b1c-0x0000007d0000 : "rootfs"
> 
> netgear,wndr3800:
> 
> [    0.671227] m25p80 spi0.0: mx25l12805d (16384 Kbytes)
> [    0.676366] 4 fixed-partitions partitions found on MTD device spi0.0
> [    0.682724] Creating 4 MTD partitions on "spi0.0":
> [    0.687508] 0x000000000000-0x000000050000 : "u-boot"
> [    0.693223] 0x000000050000-0x000000070000 : "u-boot-env"
> [    0.699163] 0x000000070000-0x000000ff0000 : "firmware"
> [    0.707493] 2 netgear-fw partitions found on MTD device firmware
> [    0.713550] Creating 2 MTD partitions on "firmware":
> [    0.718507] 0x000000000000-0x0000001bd440 : "kernel"
> [    0.724195] 0x0000001bd440-0x000000f80000 : "rootfs"
> 
> and netgear wgt634u:
> 
> [    1.245465] 3 bcm47xxpart partitions found on MTD device
> physmap-flash.0
> [    1.252454] Creating 3 MTD partitions on "physmap-flash.0":
> [    1.258364] 0x000000000000-0x0000000a0000 : "boot"
> [    1.286600] 0x0000000a0000-0x0000007e0000 : "firmware"
> [    1.298172] 3 trx partitions found on MTD device firmware
> [    1.303639] Creating 3 MTD partitions on "firmware":
> [    1.308944] 0x00000000001c-0x000000000948 : "loader"
> [    1.331486] 0x000000000948-0x000000139800 : "linux"
> [    1.348577] 0x000000139800-0x000000740000 : "rootfs"
> 
> as examples where the rootfs starts at unaligned addresses. If you
> padded the rootfs individually, the combination of kernel+rootfs would
> unnecessarily waste space.
Aren't these all devices with spi-nor? They all just place the kernel +
rootfs (squashfs) in a "firmware" mtd partitions and the mtdsplit is doing
its magic. I think this is a bit out of the scope. This patch should not
interfere with them and the unaligned squashfs rootfs starts is not a
problem from what I can tell. That said removing the "-nopad" switch or
adding the padding with "pad-squashfs" you made should make no difference
in regards to the missing padding between the linux/kernel and rootfs
since this isn't the problem.

> > But this is a problem for squashfs as rootfs in ubi
> > partitions. Currently no explicit padding is being
> > set and it currently works for the most time because
> > ubi volumes are always aligned to LEBs which could
> > be close enough for 4KiB paddings...
> > 
> > Digging down deeper revealed that squashfs excepts blocks
> 
> trivial spelling fix, that should be "accepts", I think...
Not sure if it's trivial or not, but yes the "excepts" is wrong,
I think it should have been "expects". But... I've still hope
that "-nopad will be the way" so I'm prepared to just drop this
patch again :D.

> > to be up to PAGE_SIZE. This is explained in this bug report
> > that states that the 4k padding for ARCHs with 64KiB pages
> > resulted in "attempt access beyond end of device" errors:
> > <https://sourceforge.net/p/squashfs/mailman/message/28307755/>
> 
> AFAICT, the PAGE_SIZE on Meraki MR24 is 4k. In the kernel's
> include/asm-generic/page.h, we have:
The APM821xx SoC supports 4KiB, 16KiB and 64KiB page sizes.
Ie: <https://cateee.net/lkddb/web-lkddb/PPC_64K_PAGES.html>
OpenWrt currently defaults to 4KiB, but the 16KiB and 64KiB
do provide a throughput boost and they are easily enabled
by just editing config-default a bit.

>   /* PAGE_SHIFT determines the page size */
>   
>   #define PAGE_SHIFT      12
>   #ifdef __ASSEMBLY__
>   #define PAGE_SIZE       (1 << PAGE_SHIFT)
>   #else
>   #define PAGE_SIZE       (1UL << PAGE_SHIFT)
>   #endif
> 
> > 
> > This patch changes sysupgrade to follow fstools with its
> > ROOTDEV_OVERLAY_ALIGN (=64KiB) and aligns squashfs rootfs
> > filesystem to the same amount, while also changing the
> > ubinize script to apply the alignment in the same manner.
> > (More additions would be welcome. Note: ubinize and
> > ubimkvol don't support alignment values that are bigger
> > than a LEB!)
> 
> When Jonas and I were discussing this, we noted that sysupgrade changes
> won't be installed the first time you do this, so a lack of padding to
> the root.squashfs can still result in boot looping.
>
> Since Meraki MR24 (afaict) doesn't use the ubinize-image.sh script, it
> won't be protected.
Are you using an alternative flashing approach?

The wiki: <https://openwrt.org/toh/meraki/mr24> notes that for the initial
install, the MR24 should boot off an tftp-loaded initramfs and then the 
user has to use sysupgrade to install the real image.
Yes, existing initramfs + installs will have to be updated before this will
work. But then, this bug has sadly been present from the beginning and on
many other routers as well and nobody fixed it yet. It's definitely a bad
bug though.

> > Reported-by: Russell Senior <russell@personaltelco.net>
> > Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> > ---
> >  package/base-files/files/lib/upgrade/nand.sh | 12 +++++++++---
> >  scripts/ubinize-image.sh                     | 12 +++++++++++-
> >  2 files changed, 20 insertions(+), 4 deletions(-)
> > 
> > diff --git a/package/base-files/files/lib/upgrade/nand.sh b/package/base-files/files/lib/upgrade/nand.sh
> > index fbc2b5c19a..7eb9632a06 100644
> > --- a/package/base-files/files/lib/upgrade/nand.sh
> > +++ b/package/base-files/files/lib/upgrade/nand.sh
> > @@ -174,11 +174,17 @@ nand_upgrade_prepare_ubi() {
> >  
> >  	# update rootfs
> >  	local root_size_param
> > -	if [ "$rootfs_type" = "ubifs" ]; then
> > +	case "$rootfs_type" in
> > +	"squashfs")
> > +		root_size_param="-s $(( ($rootfs_length + 65535) & ~65535))"
> > +		;;
> > +	"ubifs")
> >  		root_size_param="-m"
> > -	else
> > +		;;
> > +	*)
> >  		root_size_param="-s $rootfs_length"
> > -	fi
> > +		;;
> > +	esac
> >  	if ! ubimkvol /dev/$ubidev -N $CI_ROOTPART $root_size_param; then
> >  		echo "cannot create rootfs volume"
> >  		return 1;
> > diff --git a/scripts/ubinize-image.sh b/scripts/ubinize-image.sh
> > index a18d6dc428..06f4a3b995 100755
> > --- a/scripts/ubinize-image.sh
> > +++ b/scripts/ubinize-image.sh
> > @@ -18,6 +18,12 @@ is_ubifs() {
> >  	fi
> >  }
> >  
> > +is_squashfs() {
> > +	if [ "$( get_magic_word "$1" )" = "6873" ]; then
> > +		echo "1"
> > +	fi
> > +}
> > +
> >  ubivol() {
> >  	volid=$1
> >  	name=$2
> > @@ -69,7 +75,11 @@ ubilayout() {
> >  		ubivol $vol_id kernel "$3"
> >  		vol_id=$(( $vol_id + 1 ))
> >  	fi
> > -	ubivol $vol_id rootfs "$2" $root_is_ubifs
> > +	size=""
> > +	if [ -n "$( is_squashfs "$2" )" ]; then
> > +		size=$(( ($(wc -c < "$2") + 65535) & ~65535))
> > +	fi
> > +	ubivol $vol_id rootfs "$2" "$root_is_ubifs" "$size"
> >  	vol_id=$(( $vol_id + 1 ))
> >  	[ "$root_is_ubifs" ] || ubivol $vol_id rootfs_data "" 1
> >  }



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
