Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47882523C
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 16:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dbzWATJNd3BS/OhOBNtDOTdWHnDwnHjhnIGrgSbqiJI=; b=GM+TXnf57dQpN9Wto9hiuWzzaF
	u8bNk6E2cDdjhCYcEMdTDwVc9X9ftTDIU2LW6a+rmOtuchiUNPzNGffwCPXnan8RgjBbEtbdLychf
	nRlCaLBKYKc+eNDSyQ9ZlBsrnEc4Cg4qrfTjyCDukgZzIClL4LbpB5uUy2XqmszD35kgbix4CKygG
	DcKha5Z2wfj8pvwmixF96u4bieQnj0WeU+LfHmL24gmPNfieKsfJHDeK6csION0DUIkepW2SdKdq5
	H7jc33rBS7kDsDiRBq+MY0nP24pG0btkZw8heHUWzgGJ6kX/PPcN1d4HB/t5bbIc4Gxzu1oGkumZm
	1OPWAg6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5pd-0003SX-GW; Tue, 21 May 2019 14:33:33 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5pC-0003FG-2m
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 14:33:16 +0000
Received: by mail-lf1-x135.google.com with SMTP id n134so13240604lfn.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 May 2019 07:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=WfkvfyMIoV0W4Nbb8UlVfOK4aDmrrXshLrxO/KDw220=;
 b=tstvHmQ8pQ1srDV2YduWzJoEJVA7+xndLqmxEg7z0zxfWX7waiM24guOlqgmupLjB3
 cCk0mXbrBpCSW++Gk/Yda5xmzHXi+0YxdrbOqWg4Wx0+/RrVvnbmq0doCbMBvBRjvTuA
 oAIt/Io8rR7pld5+eXjvopmJBDW2rI0CEfzQqWC3I1247d4gpUpD3s0Dt882cPQd+i7x
 ta2g8nu4xEqFP7fSGxziTxl2EcKiq8wfjHfb7dBFpyFz8Ae5pAbe5jlMU6DUVRgBgESd
 /yuTYJEpRd0UfGgjSM1YYFeHp8zUNE28edSXnkg6Lw4HVzLQinpvfRMjuzWmVFthB4EH
 CqUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=WfkvfyMIoV0W4Nbb8UlVfOK4aDmrrXshLrxO/KDw220=;
 b=AaDLW2OPO6H9unir4pXBOvZtvkHIqXL4Lak6Yi9SIX06AXRq/lNj6Ryws2tfJGuX2N
 e3hFLPaM9jF0W4IBVMbulsIHApwVl69hiniYxBaZVU0bsfRFojbVbiPJH795tT0ovWsQ
 D3yzBSIbq2tvh+MjvVTaGjzGkTOyHAXykFh5lon5k8EE81scFNYLcIeRSvjE2ruOJLt6
 hxqXqnJjKE/ipShTezYFwZs4Fng7NiLAyrpEokgZopekM2zoRBdWvb+QxoUldpGyR3ts
 izf0/gIYExOqE4kDIxm1ijtHW9/zCO2y96xOO2xX1RuN5YA0zxqAnxF2NIU+Iy/bew5L
 SvxQ==
X-Gm-Message-State: APjAAAVsLEF0bEu77YjjUr1S4fPtY7LzJdb9x8J0n5WadfK4lnQnvm8o
 8XkTKIGv9CqYS7SUKOFtmLugTZavwBAsTx3Ga0pdHudZ
X-Google-Smtp-Source: APXvYqz8AP9tZLYQcbAixmC2YNSdSZYRSDURMZmX/1RKY6Yh+z7tI7qe6P71/dMc6ealAstpYkfQpkzxgD5QzTMOYpo=
X-Received: by 2002:ac2:5310:: with SMTP id c16mr29691028lfh.76.1558449182123; 
 Tue, 21 May 2019 07:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.41607.1558431452.2376.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.41607.1558431452.2376.openwrt-devel@lists.openwrt.org>
From: Joe Ayers <joe@ayerscasa.com>
Date: Tue, 21 May 2019 07:32:52 -0700
Message-ID: <CAALvt2Pu+Gv01HGcEjHPAm7Qch_v7ah_ix91O55giuiFNjrEnA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073306_537447_AA38D6A8 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [RFC] ath79: Removal of GL.iNet AR300M NAND
 Target
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

 > > On Sun, May 19, 2019 at 12:44:18PM -0700, Jeff Kletsky wrote:
 > > I'm in the process of porting the AR750S to the ath79 target with
 > > SPI-NAND support now available on Linux 4.19[1].
 > >
 > > From what I can tell, the AR300M (NAND) target, while it builds,
 > > does not provide a functional image with either Linux 4.14 or 4.19
 > > as there has not been and is not yet an applicable SPI-NAND driver
 > > built by OpenWrt[2].
 > >
 > > While the ar71xx target had various patches to provide an SPI-attached
 > > NAND driver, at least as I understand it, these were rejected for the
 > > ath79 target in favor of the upstream SPI-NAND framework that would
 > > become available[2,3].
 > >
 > > While there is support for the GigaDevice E-series SPI NAND already
 > > backported to OpenWrt under Linux 4.19[4] and I have submitted patches to
 > > support the F-series chips upstream[5], I have been told that some of the
 > > AR300M units also shipped with Paragon SPI NAND[6], for which there is no
 > > upstream driver support at this time.
 > >
 > >
 > >
 > > As there is no bootable image produced, I would like to remove
 > > the AR300M (NAND) target from the ath79 tree at this time. The AR300M
 > > would remain on the ath79 generic (NOR) target.
 > >
 > > The intention is that the AR300M (NAND) would be reinstated once
 > > proper driver support is available.
 > >
 > >
 > >
 > > ======================
 > > If you have objections to this course of action, please let me know.
 > > ======================
 > >
 > Nah. Worst case is we have to dig the commmit log and pull the data back
 > out. That's the great thing about git.
 > >
 > >
 > > Also, if you have an AR300M with the Paragon SPI NAND that you would
 > > be able to assist me in testing development of an upstream-supported
 > > driver, please also let me know.
 > >
 > I do believe my particular ar300m is paragon based, and I'm more than
 > willing to assist wherever I can. I was under the impression that
 > bbrezelion or however you spell it was working on a generic spi-nand
 > driver?
 > > From looking at the GL.iNet source[7], I would expect to see `dmesg` on
 > > an OEM or image built from their sources to display a line containing
 > >
 > >     spi-nand: Paragon SPI NAND was found.
 > >
 > > These are probably older-production units.
 > >

 I just received a new GL ARM300M last week.  From gl-inet's 3.019 version:

 [    0.833564] m25p80 spi0.0: found w25q128, expected m25p80
 [    0.848151] m25p80 spi0.0: w25q128 (16384 Kbytes)
 [    0.853060] 4 cmdlinepart partitions found on MTD device spi0.0
 [    0.859168] Creating 4 MTD partitions on "spi0.0":
 [    0.864134] 0x000000000000-0x000000040000 : "u-boot"
 [    0.870637] 0x000000040000-0x000000050000 : "u-boot-env"
 [    0.877667] 0x000000050000-0x000000ff0000 : "reserved"
 [    0.884526] 0x000000ff0000-0x000001000000 : "art"
 [    0.891497] spi-nand: Giga SPI NAND was found.
 [    0.896149] spi-nand: 128 MiB, block size: 128 KiB, page size:
 2048, OOB size: 128
 [    0.904277] 2 cmdlinepart partitions found on MTD device spi0.1
 [    0.910394] Creating 2 MTD partitions on "spi0.1":
 [    0.915381] 0x000000000000-0x000000200000 : "kernel"
 [    0.925438] 0x000000200000-0x000008000000 : "ubi"

 [    2.771631] UBI: auto-attach mtd5
 [    2.775137] ubi0: attaching mtd5
 [    5.175419] ubi0: scanning is finished
 [    5.287855] ubi0: volume 1 ("rootfs_data") re-sized from 9 to 905 LEBs
 [    5.295504] ubi0: attached mtd5 (name "ubi", size 126 MiB)
 [    5.301183] ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
 [    5.308323] ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
 [    5.315337] ubi0: VID header offset: 2048 (aligned 2048), data offset: 4096
 [    5.322531] ubi0: good PEBs: 1007, bad PEBs: 1, corrupted PEBs: 0
 [    5.328822] ubi0: user volume: 2, internal volumes: 1, max. volumes
 count: 128
 [    5.336289] ubi0: max/mean erase counter: 1/0, WL threshold: 4096,
 image sequence number: 933695444
 [    5.345631] ubi0: available PEBs: 0, total reserved PEBs: 1007,
 PEBs reserved for bad PEB handling: 19
 [    5.355319] ubi0: background thread "ubi_bgt0d" started, PID 301
 [    5.373091] block ubiblock0_0: created from ubi0:0(rootfs)
 [    5.378767] ubiblock: device ubiblock0_0 (rootfs) set to be root filesystem

 Happy to help out any testing.  Our community has started using these devices.

 Joe AE6XE
 http://www.arednmesh.org project

 > >
 > >
 > > Jeff
 > >
 > >
 > > ---
 > >
 > > [1] http://patchwork.ozlabs.org/project/openwrt/list/?series=107880
 > >
 > > [2] http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015604.html
 > >     http://lists.infradead.org/pipermail/openwrt-devel/2019-January/015606.html
 > >
 > > [3] https://github.com/openwrt/openwrt/pull/1428#issuecomment-441594401
 > >
 > > [4] 3bc8ed91d4 generic-4.19: Backport spi-nand support for GigaDevice A/E
 > >
 > > [5] http://patchwork.ozlabs.org/project/linux-mtd/list/?series=107874
 > >
 > > [6] http://www.xtxtech.com/upfile/2016082517274590.pdf
 > >
 > > [7] <https://github.com/gl-inet/openwrt/blob/develop/target/linux/ar71xx/patches-4.9/491-mtd-spi-nand-driver.patch#L2678>
 > >

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
