Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00B29C3CC
	for <lists+openwrt-devel@lfdr.de>; Sun, 25 Aug 2019 15:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqY4EkSbFk9gTVZkJ/8T9WdtT9q3cmHHTZlBjoTA5ho=; b=sCCw26gDerkJUv
	zxHgNc3Qf8LX6s8IuEnX4AEyLbOk13OxUB+OcyvNSVUjvIJqaxO9hqF0imrNOOJG8MdowF8pvlmla
	PIEat4IvoyRb4J2O2SXJnB8LxXsoa1t9gRR+4z5+VrJigZEDd+xX2HFI+qrp8ztmyKOR4aHPsw4vx
	DECQ0kpQyeB/Buj9qpoiOLU4+Z8gydANwAymwBvtJxJ8LP68R9cm3pFmHnelQlEc6c/oZEqmkQVyU
	3lLrbrG6l9YuJxNKupWXyGCj9qFANaFwMqEPGtUtCoBbD9JXtSdnKNG5Hb9gf6nOgDP1D994vBYxn
	h86zD0Pr/x9zyApF6kjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1sVq-0003U8-D1; Sun, 25 Aug 2019 13:24:54 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1sUz-0002vk-7T
 for openwrt-devel@lists.openwrt.org; Sun, 25 Aug 2019 13:24:03 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 0872AA612DC; Sun, 25 Aug 2019 06:24:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.2
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 1A7D0A611E1;
 Sun, 25 Aug 2019 06:23:56 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: Christian Lamparter <chunkeey@gmail.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com> <1619788.jSZVMTGyYI@debian64>
 <87r259kbvz.fsf@husum.klickitat.com> <4262093.GnkBSk0z1S@debian64>
Date: Sun, 25 Aug 2019 06:23:56 -0700
In-Reply-To: <4262093.GnkBSk0z1S@debian64> (Christian Lamparter's message of
 "Sun, 25 Aug 2019 14:21:50 +0200")
Message-ID: <87o90dbcpf.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_062401_430821_ED0161FB 
X-CRM114-Status: GOOD (  27.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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


trimming a bit for easier reading ...

> [Fixed Mathias Email]

> > > [...]
> > > OpenWrt's mksquashfs for the rootfs (which is usually
> > > squashfs) is instructed to skip the padding via the nopad
> > > option because the rootfs will be padded by functions like
> > > pad-rootfs to the eraseblocksize which is usually much
> > > bigger at somewhere 64KiB.
> > 
> > Note also, e.g. tplink,tl-wdr3600-v1:
> >
> > [    0.428860] m25p80 spi0.0: en25q64 (8192 Kbytes)
> > [    0.433638] 3 fixed-partitions partitions found on MTD device spi0.0
> > [    0.440112] Creating 3 MTD partitions on "spi0.0":
> > [    0.444991] 0x000000000000-0x000000020000 : "u-boot"
> > [    0.450914] 0x000000020000-0x0000007f0000 : "firmware"
> > [    0.459935] 2 tplink-fw partitions found on MTD device firmware
> > [    0.465951] Creating 2 MTD partitions on "firmware":
> > [    0.471047] 0x000000000000-0x0000001b6b1b : "kernel"
> > [    0.476924] 0x0000001b6b1c-0x0000007d0000 : "rootfs"
> > 
> > netgear,wndr3800:
> > 
> > [    0.671227] m25p80 spi0.0: mx25l12805d (16384 Kbytes)
> > [    0.676366] 4 fixed-partitions partitions found on MTD device spi0.0
> > [    0.682724] Creating 4 MTD partitions on "spi0.0":
> > [    0.687508] 0x000000000000-0x000000050000 : "u-boot"
> > [    0.693223] 0x000000050000-0x000000070000 : "u-boot-env"
> > [    0.699163] 0x000000070000-0x000000ff0000 : "firmware"
> > [    0.707493] 2 netgear-fw partitions found on MTD device firmware
> > [    0.713550] Creating 2 MTD partitions on "firmware":
> > [    0.718507] 0x000000000000-0x0000001bd440 : "kernel"
> > [    0.724195] 0x0000001bd440-0x000000f80000 : "rootfs"
> > 
> > and netgear wgt634u:
> > 
> > [    1.245465] 3 bcm47xxpart partitions found on MTD device
> > physmap-flash.0
> > [    1.252454] Creating 3 MTD partitions on "physmap-flash.0":
> > [    1.258364] 0x000000000000-0x0000000a0000 : "boot"
> > [    1.286600] 0x0000000a0000-0x0000007e0000 : "firmware"
> > [    1.298172] 3 trx partitions found on MTD device firmware
> > [    1.303639] Creating 3 MTD partitions on "firmware":
> > [    1.308944] 0x00000000001c-0x000000000948 : "loader"
> > [    1.331486] 0x000000000948-0x000000139800 : "linux"
> > [    1.348577] 0x000000139800-0x000000740000 : "rootfs"
> > 
> > as examples where the rootfs starts at unaligned addresses. If you
> > padded the rootfs individually, the combination of kernel+rootfs would
> > unnecessarily waste space.
> Aren't these all devices with spi-nor? They all just place the kernel +
> rootfs (squashfs) in a "firmware" mtd partitions and the mtdsplit is doing
> its magic. [...]

Yes, agreed. These are examples of why we shouldn't just remove the
-nopad, and actually mostly just my own sanity check that I remembered
this on some devices (other spi-nor devices, such as the buffalo
wzr600dhp seem to align the rootfs). Oh, and (irrelevant detail) the
wgt634u is NOR, but not spi.

> I think this is a bit out of the scope. This patch should not
> interfere with them and the unaligned squashfs rootfs starts is not a
> problem from what I can tell. That said removing the "-nopad" switch or
> adding the padding with "pad-squashfs" you made should make no difference
> in regards to the missing padding between the linux/kernel and rootfs
> since this isn't the problem.

I was under the impression that removing the -nopad switch would pad out
the root.squashfs out to a 4k boundary before concatenation, leading to
a further padding of the concatenation since the padding will (in
general) hang over a 4k boundary.

> > > But this is a problem for squashfs as rootfs in ubi
> > > partitions. Currently no explicit padding is being
> > > set and it currently works for the most time because
> > > ubi volumes are always aligned to LEBs which could
> > > be close enough for 4KiB paddings...
> > > 
> > > Digging down deeper revealed that squashfs excepts blocks
> > 
> > trivial spelling fix, that should be "accepts", I think...
> Not sure if it's trivial or not, but yes the "excepts" is wrong,
> I think it should have been "expects". But... I've still hope
> that "-nopad will be the way" so I'm prepared to just drop this
> patch again :D.
> 
> > > to be up to PAGE_SIZE. This is explained in this bug report
> > > that states that the 4k padding for ARCHs with 64KiB pages
> > > resulted in "attempt access beyond end of device" errors:
> > > <https://sourceforge.net/p/squashfs/mailman/message/28307755/>
> > 
> > AFAICT, the PAGE_SIZE on Meraki MR24 is 4k. In the kernel's
> > include/asm-generic/page.h, we have:
> The APM821xx SoC supports 4KiB, 16KiB and 64KiB page sizes.
> Ie: <https://cateee.net/lkddb/web-lkddb/PPC_64K_PAGES.html>
> OpenWrt currently defaults to 4KiB, but the 16KiB and 64KiB
> do provide a throughput boost and they are easily enabled
> by just editing config-default a bit.

The MR24's NAND is only 32MB (okay, that's not tiny), but I'm all for
optimizing for size.

> > When Jonas and I were discussing this, we noted that sysupgrade changes
> > won't be installed the first time you do this, so a lack of padding to
> > the root.squashfs can still result in boot looping.
> >
> > Since Meraki MR24 (afaict) doesn't use the ubinize-image.sh script, it
> > won't be protected.
> Are you using an alternative flashing approach?
> 
> The wiki: <https://openwrt.org/toh/meraki/mr24> notes that for the initial
> install, the MR24 should boot off an tftp-loaded initramfs and then the 
> user has to use sysupgrade to install the real image.
> Yes, existing initramfs + installs will have to be updated before this will
> work. But then, this bug has sadly been present from the beginning and on
> many other routers as well and nobody fixed it yet. It's definitely a bad
> bug though.

Reguar sysupgrade.bin is a tarball. I normally use sysupgrade. The
initial install from stock meraki firmware is tftp booting an initramfs,
and that shouldn't be a problem. The problem I'm referring to is going
from an existing openwrt install to a new "fixed" one without tftp
booting.  If we are depending on the already-on-device sysupgrade
nand.sh process, it hasn't been fixed yet. Padding the root.squashfs as
delivered in the tarball will avoid the bug no matter the state of
nand.sh.


-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
