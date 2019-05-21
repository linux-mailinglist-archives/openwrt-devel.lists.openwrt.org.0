Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FB62460C
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 04:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T99g74t1se1WED8BK3dyT71dQCWK5xrfLaHRwg5Rx74=; b=hFNJPsvWtlolyeR9JFvjs5/wdD
	PWlOlBih+I2ZAmVwoakQpHfJUlRWxvuo7UgkTT/tabPbSB0hM559dbB3efOBX5PwdkVStXhsKdLQ4
	zVSMY+VEDXA8U3d8iD/e6uAfbo+VRI+I011arh78QDtvWvow7ycoGJqBa9rcTn4LCwxx8SrVEH/yr
	tSiVuu7sKv/WmeGHGCbuWEn4jKUZQhVaWcPo5c50eJ9gIc3PsP0urxxkxFwCGNrVtTR/FvqVsGagz
	m8pIX8WSnFjf8OvYJLNxHjs/xk9BJWmJMSMr1CPCUJwGZ100oH5Kh+2ltKoL3AdS7NbUFp7lDxzyk
	M3fzP57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSujT-00049J-N8; Tue, 21 May 2019 02:42:27 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSujM-00048w-9z
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 02:42:22 +0000
Received: by mail-lj1-x236.google.com with SMTP id q62so4866813ljq.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 May 2019 19:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=/xpEZHDFUI4Hy8xOlA97Qi4YRY4IQrhQbtEYLSFAunQ=;
 b=zunmtpiwasgwLXSENmY6OEOBbK2L7ElWXe76Y2hc4WXOzWuuFZqTw2fu4MAHftoIJ9
 od3ZBPJj/HKIS0Y13u8F1cn0X3yWIFA81tj/JzfZeR5Ce/7YdmuL6icHowon4Zss1i1j
 DQ4iWOg2pUWAyhOkGsyTgOc6ZJRWygnf/Xleqq0CRdbrq08FPqsLnCoeL3r67hW7VEhD
 uvNqMLxN5apnnSqy190NQVXFA7OyFME+9QSgGRMRNNJFTmDiFuMRwf09IZB/nI21B9ba
 u4XExuP4sRhHNcVi+N/l5v+ZtuA8yJRO1i6Xn6CTNEklo8sA0aU3db9DTsU9PWj6Tr2S
 rwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=/xpEZHDFUI4Hy8xOlA97Qi4YRY4IQrhQbtEYLSFAunQ=;
 b=QmxbiWxGmdMtLcGfg86AOBzSK1fQLoSgrWme0WEnlPUDe8JWSQlkhTAshk7GdwXMh3
 zXnRnHM/PEztiJS5sIHASItUYQV7SSswkMOctS/q4X9MAEVbPWgDQG8/oDDFcsvzcUJo
 vC1RDAM2skFwr3LjHFAu/ZTMjQ4gMuJ78ml0IlDmZ8VVhAhY+Lp3ARGzffDk3TMfxgOZ
 YyH6PlnAV66Bh3v2uteeWfls4boC3NyeIPb/Aw7/2zbxnVHssWF2HmKX29kbFS3089YF
 4Wgy5G7ZYRdCljQoX/l1ejBhudbuaVZd5iAY7T1JTyz79TpsMWqUcx0SzglXe+/CeQ+m
 y8lQ==
X-Gm-Message-State: APjAAAU7Ud7rl3L7IT/W6IlhEukdbSpseGi7bJkmSGdnP2XwxJxOIjSm
 DqBjhpWo7jXlEQOs2AdSJhifjbOKDa8N5ZtwjVLR7LVMQio=
X-Google-Smtp-Source: APXvYqz1C8Awjipu0R2yAxX0I/RPB9D5KkN3AeFg8BcI/LEjdvrOX2cw0KsyuV7Dy2sPRxETsWP6qhFUSrJi2pkl6NQ=
X-Received: by 2002:a2e:5515:: with SMTP id j21mr13492219ljb.198.1558406536262; 
 Mon, 20 May 2019 19:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.41258.1558347304.2376.openwrt-devel@lists.openwrt.org>
In-Reply-To: <mailman.41258.1558347304.2376.openwrt-devel@lists.openwrt.org>
From: Joe Ayers <joe@ayerscasa.com>
Date: Mon, 20 May 2019 19:42:05 -0700
Message-ID: <CAALvt2NSCjnGCcSbf6f1ujuXZoEfhav69s76P1Tv6+Hr+EoYbA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_194220_395908_6FF065E9 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] openwrt-devel Digest, Vol 37, Issue 94
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

> On Sun, May 19, 2019 at 12:44:18PM -0700, Jeff Kletsky wrote:
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
