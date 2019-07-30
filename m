Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EDD7A063
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 07:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lz0edeKEITfX3/mOEU/6cjHLVvvYeYND8Op/fE2Ovpo=; b=uiBwE0vKCG/TEjl33NdT3e8p0
	bCcVy7o2sLJ/7SMOu9nFGMMaCY9rlTMLln9h15abV5lIVe3EFp1hlLltTZTMCiE4Z76UszcJYH39A
	nIcCCWgsyyqNW9tHtxUGvB8xdEas5drCFO+/s6lNDRu5yJq298ffPHGA6wJmjZDjO46ZK2kJ9qSve
	cKYVDTj06Yw2a8cMOR3miC22pMXEfGl7wkxabHUSEDrBXwb5QvTbFrn0oV/hsxXZs4R2ZkXbhmxVT
	71acglDK8a1HOH9xuVIEKdT8xkGUgcRSdko6ZzTrpAbKKTQAZokjVDD9C2t+slrffBqsG5h/5COGH
	uVE1eFPiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsKpc-0001Fy-Ef; Tue, 30 Jul 2019 05:37:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsKpK-0001FW-1z
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 05:37:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id i21so60859972ljj.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 29 Jul 2019 22:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bluemesh-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ddnj8+x040B48Ck/0h7U3Ntqjcn1HwhuHvQfusfQ60w=;
 b=sgGMCZCMK8bt4aZpeiU85bU5i9rDEbm1dydr4MPDY5l+b56+x1rbE+PsrSc0Etoq6/
 DAWZqxNMG+HjfH/m9MyRMJ4I0MdMqYwcp9BIpCJgw+6ryk6kSjbkHlbbLGt6CjBkGWes
 U7SvwCC0jDIONX4+MB1bRJ1yZYcl10XzCMM6MrNPAZRHoh9pkYvF+xI6TWYZ18CxHQTC
 0HKjr5TDtwXEJ1iaycqLBPrTi/c6uCc04fy3aPTLe+5vhRmxi1h6B5n5BKkfrnmnTCqK
 dQlon03S53OUJThlw0gzsZ7771o5b/7Q8DS+Jc0hN0JoPrJiQPRvBpCYu/UmRwwVab66
 Tzlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ddnj8+x040B48Ck/0h7U3Ntqjcn1HwhuHvQfusfQ60w=;
 b=hFMYYQsYWF9e8EUOzyRNT8ZpnCmFP++V2GqQZkQ3igtQVXjH+TUX7PB6EZm3Z2I1h1
 5p5fqsYc5NlNSnBKssppyq8t6Wq4YukO8Uk7a69T8Dpq2vJ9fb6bEZQWroP4x3aakS0n
 JAbPYZZkFkc7F8Hf2lFMY3cST91sGBzV+9b3D9SuSZySs/OLWhCtGyLnOf86e+fQgG46
 FjP3KekIzj1IHPN2Bkwcqvsn54FVX/1GtKf0nTKpwsNNMzSe3KNHtamrrd1JnALcZLQg
 NG89mZp+lDKhU1sVp5tdS9bVG1oK/uTk2Rd0fvQcV/DcqEAkoNMyxVg1aEl3ibTh/akM
 HxBA==
X-Gm-Message-State: APjAAAXAgAPqXQIeN2HXFxWnvUtmLSlioUT8YgxgyTGoiLiKH3ISC71f
 k9GznVo9601arGBVUUiuJGj5/0A15k1PhbJKic0=
X-Google-Smtp-Source: APXvYqyJGi0/k0AfHreSF+4il8QUJFOqYMhgTXazDqdFlghlm1ARlVdYnXDplzL3xbaUBUzP4ed69MD4t/nDvLI0wxQ=
X-Received: by 2002:a2e:8602:: with SMTP id a2mr57195598lji.206.1564465050904; 
 Mon, 29 Jul 2019 22:37:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190729092555.GA6171@lud.localdomain>
 <4c36b010-522f-bf8d-fbdd-2791467bb65b@hauke-m.de>
 <20190729221001.GC25888@tuxmachine.localdomain>
In-Reply-To: <20190729221001.GC25888@tuxmachine.localdomain>
From: David Hutchison <dhutchison@bluemesh.net>
Date: Mon, 29 Jul 2019 23:37:19 -0600
Message-ID: <CA+i30h9Etu_xaPfkQt3JKoy7TryP4_Wy9=PEog4PRoGYzNXeUQ@mail.gmail.com>
To: Baptiste Jonglez <baptiste@bitsofnetworks.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_223734_133124_55EF1035 
X-CRM114-Status: GOOD (  28.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
 Formatted Colors in HTML
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] 
	=?utf-8?q?ipq40xx=3A_fails_to_boot_with_SMP_on_M?=
	=?utf-8?q?ikrotik_hAP_ac=C2=B2_/_RBD52G-5HacD2HnD_=28WIP=29?=
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Robert Marko <robimarko@gmail.com>
Content-Type: multipart/mixed; boundary="===============7907260507477527656=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7907260507477527656==
Content-Type: multipart/alternative; boundary="0000000000009f79af058edf67a9"

--0000000000009f79af058edf67a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

https://forum.openwrt.org/t/support-for-mikrotik-rb3011uias-rm/4064/412

I've been working on the hAP AC2 port, and haven't tested with SMP yet.

I posted the DTS files I came up with on the RB3011 thread as we were all
working on Mikrotik IPQ40XX boards.

I'm stuck on decompressing the WiFi radio calibration data , I can't seem
to figure out how to get the LZO / RLE portion to work.
I know exactly where the LZO / RLE data is as well.

If you want, I'll try to enable SMP and see if my board boots.
If you have any insight on WiFi, please let me know.

I'd like to help where I can.

On Mon, Jul 29, 2019 at 4:10 PM Baptiste Jonglez <
baptiste@bitsofnetworks.org> wrote:

> On 29-07-19, Hauke Mehrtens wrote:
> > On 7/29/19 11:25 AM, Baptiste Jonglez wrote:
> > > Is there something obviously wrong in the DTS?  As far as I know, oth=
er
> > > ipq40xx devices don't have an issue with SMP.
> >
> > Did you try to revert this commit:
> >
> https://github.com/mmaker/openwrt/commit/481615d2f5e4bb053af805dccb901050=
e1e7a4ed
> >
> > The vendor dts file uses these 3 blocks, I do not know if they are
> > loaded to these regions by some boot loader or later by some driver. If
> > they are loaded there by the boot loader we should probably not use thi=
s
> > memory in Linux and let it run there.
>
> Yes, this commit is just a recent attempt to fix a warning during boot.
> The upstream DTS (qcom-ipq4019.dtsi) already reserves a memory region,
> exactly for the reasons you mention:
> https://patchwork.kernel.org/patch/10347459/
>
> This reserved region in the dtsi is overlapping with the one in the DTS,
> and there was a warning during boot ("OVERLAP DETECTED" below).  The
> commit did fix the warning, but did not change anything about the initial
> problem with SMP.
>
> > I attached the vendor.dts file we extracted from the flash of the board=
.
>
> Thanks, could you spot anything interesting in it?  It looks very verbose=
.
>
> Baptiste
>
> > > PS: here is the failing bootlog, getting stuck after "Testing write
> buffer coherency":
> > >
> > > [    0.000000] Booting Linux on physical CPU 0x0
> > > [    0.000000] Linux version 4.19.57 (bjonglez@gcc14) (gcc version
> 7.4.0 (OpenWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 08:51:07 2=
019
> > > [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7),
> cr=3D10c5387d
> > > [    0.000000] CPU: div instructions available: patching division cod=
e
> > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> > > [    0.000000] OF: fdt: Machine model: Mikrotik RouterBOARD
> RBD52G-5HacD2HnD (hAP ac=C2=B2)
> > > [    0.000000] bootconsole [earlycon0] enabled
> > > [    0.000000] Memory policy: Data cache writealloc
> > > [    0.000000] OF: reserved mem: OVERLAP DETECTED!
> > > [    0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) overlaps with
> smem@87e00000 (0x87e00000--0x87e80000)
> > > [    0.000000] random: get_random_bytes called from
> start_kernel+0x7c/0x438 with crng_init=3D0
> > > [    0.000000] percpu: Embedded 15 pages/cpu s29964 r8192 d23284 u614=
40
> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
> 60864
> > > [    0.000000] Kernel command line: earlyprintk
> > > [    0.000000] Dentry cache hash table entries: 32768 (order: 5,
> 131072 bytes)
> > > [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536
> bytes)
> > > [    0.000000] Memory: 232420K/245760K available (4720K kernel code,
> 168K rwdata, 1288K rodata, 3072K init, 231K bss, 13340K reserved, 0K
> cma-reserved, 0K highmem)
> > > [    0.000000] Virtual kernel memory layout:
> > > [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> > > [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> > > [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
> > > [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
> > > [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> > > [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> > > [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (5713 kB)
> > > [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (3072 kB)
> > > [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 168 kB)
> > > [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 232 kB)
> > > [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=
=3D4,
> Nodes=3D1
> > > [    0.000000] rcu: Hierarchical RCU implementation.
> > > [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> > > [    0.000000] arch_timer: cp15 timer(s) running at 48.00MHz (virt).
> > > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> max_cycles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns
> > > [    0.000007] sched_clock: 56 bits at 48MHz, resolution 20ns, wraps
> every 4398046511096ns
> > > [    0.007985] Switching to timer-based delay loop, resolution 20ns
> > > [    0.014242] Calibrating delay loop (skipped), value calculated
> using timer frequency.. 96.00 BogoMIPS (lpj=3D480000)
> > > [    0.024315] pid_max: default: 32768 minimum: 301
> > > [    0.029081] Mount-cache hash table entries: 1024 (order: 0, 4096
> bytes)
> > > [    0.035524] Mountpoint-cache hash table entries: 1024 (order: 0,
> 4096 bytes)
> > > [    0.043539] CPU: Testing write buffer coherency: ok
> > >
> > >
> > > Here is a working bootlog, same image but with "nosmp":
> > >
> > > [    0.000000] Booting Linux on physical CPU 0x0
> > > [    0.000000] Linux version 4.19.57 (bjonglez@gcc14) (gcc version
> 7.4.0 (OpenWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 08:13:02 2=
019
> > > [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7),
> cr=3D10c5387d
> > > [    0.000000] CPU: div instructions available: patching division cod=
e
> > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> > > [    0.000000] OF: fdt: Machine model: Mikrotik RouterBOARD
> RBD52G-5HacD2HnD (hAP ac=C2=B2)
> > > [    0.000000] bootconsole [earlycon0] enabled
> > > [    0.000000] Memory policy: Data cache writealloc
> > > [    0.000000] OF: reserved mem: OVERLAP DETECTED!
> > > [    0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) overlaps with
> smem@87e00000 (0x87e00000--0x87e80000)
> > > [    0.000000] random: get_random_bytes called from
> start_kernel+0x7c/0x438 with crng_init=3D0
> > > [    0.000000] percpu: Embedded 15 pages/cpu s29964 r8192 d23284 u614=
40
> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
> 60864
> > > [    0.000000] Kernel command line: earlyprintk nosmp
> > > [    0.000000] Dentry cache hash table entries: 32768 (order: 5,
> 131072 bytes)
> > > [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536
> bytes)
> > > [    0.000000] Memory: 232420K/245760K available (4720K kernel code,
> 168K rwdata, 1288K rodata, 3072K init, 231K bss, 13340K reserved, 0K
> cma-reserved, 0K highmem)
> > > [    0.000000] Virtual kernel memory layout:
> > > [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> > > [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> > > [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
> > > [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
> > > [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> > > [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> > > [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (5713 kB)
> > > [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (3072 kB)
> > > [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 168 kB)
> > > [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 232 kB)
> > > [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=
=3D4,
> Nodes=3D1
> > > [    0.000000] rcu: Hierarchical RCU implementation.
> > > [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> > > [    0.000000] arch_timer: cp15 timer(s) running at 48.00MHz (virt).
> > > [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> max_cycles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns
> > > [    0.000008] sched_clock: 56 bits at 48MHz, resolution 20ns, wraps
> every 4398046511096ns
> > > [    0.007985] Switching to timer-based delay loop, resolution 20ns
> > > [    0.014242] Calibrating delay loop (skipped), value calculated
> using timer frequency.. 96.00 BogoMIPS (lpj=3D480000)
> > > [    0.024315] pid_max: default: 32768 minimum: 301
> > > [    0.029087] Mount-cache hash table entries: 1024 (order: 0, 4096
> bytes)
> > > [    0.035521] Mountpoint-cache hash table entries: 1024 (order: 0,
> 4096 bytes)
> > > [    0.043529] CPU: Testing write buffer coherency: ok
> > > [    0.048493] Setting up static identity map for 0x80300000 -
> 0x80300060
> > > [    0.054162] rcu: Hierarchical SRCU implementation.
> > > [    0.059609] smp: Bringing up secondary CPUs ...
> > > [    0.063282] smp: Brought up 1 node, 1 CPU
> > > [    0.067274] SMP: Total of 1 processors activated (96.00 BogoMIPS).
> > > [    0.073476] CPU: All CPU(s) started in SVC mode.
> > > [    0.082314] VFP support v0.3: implementor 41 architecture 2 part 3=
0
> variant 7 rev 5
> > > [    0.089157] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 19112604462750000 ns
> > > [    0.098782] futex hash table entries: 1024 (order: 4, 65536 bytes)
> > > [    0.105261] pinctrl core: initialized pinctrl subsystem
> > > [    0.111253] NET: Registered protocol family 16
> > > [    0.115162] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
> > > [    0.122468] cpuidle: using governor ladder
> > > [    0.125641] cpuidle: using governor menu
> > > [    0.147920] usbcore: registered new interface driver usbfs
> > > [    0.152432] usbcore: registered new interface driver hub
> > > [    0.157828] usbcore: registered new device driver usb
> > > [    0.162751] pps_core: LinuxPPS API ver. 1 registered
> > > [    0.167657] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
> Rodolfo Giometti <giometti@linux.it>
> > > [    0.176824] PTP clock support registered
> > > [    0.182206] clocksource: Switched to clocksource arch_sys_counter
> > > [    0.188356] NET: Registered protocol family 2
> > > [    0.192405] tcp_listen_portaddr_hash hash table entries: 512
> (order: 0, 6144 bytes)
> > > [    0.199346] TCP established hash table entries: 2048 (order: 1,
> 8192 bytes)
> > > [    0.206336] TCP bind hash table entries: 2048 (order: 2, 16384
> bytes)
> > > [    0.212745] TCP: Hash tables configured (established 2048 bind 204=
8)
> > > [    0.219173] UDP hash table entries: 256 (order: 1, 8192 bytes)
> > > [    0.224904] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes=
)
> > > [    0.231351] NET: Registered protocol family 1
> > > [    2.746607] No memory allocated for crashlog
> > > [    2.750141] workingset: timestamp_bits=3D14 max_order=3D16
> bucket_order=3D2
> > > [    2.761295] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> > > [    2.766200] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME)
> (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
> > > [    2.782649] io scheduler noop registered
> > > [    2.785548] io scheduler deadline registered (default)
> > > [    2.793099] bam-dma-engine 8e04000.dma: num-channels unspecified i=
n
> dt
> > > [    2.798599] bam-dma-engine 8e04000.dma: num-ees unspecified in dt
> > > [    2.806057] tcsr 1949000.tcsr: setting wifi_glb_cfg =3D 41000000
> > > [    2.810931] tcsr 194b000.tcsr: setting usb hs phy mode select =3D
> e700e7
> > > [    2.817492] tcsr 1953000.ess_tcsr: setting ess interface select =
=3D 0
> > > [    2.823714] tcsr 1957000.tcsr: setting wifi_noc_memtype_m0_m2 =3D
> 2222222
> > > [    2.830473] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabl=
ed
> > > [    2.837172] msm_serial 78af000.serial: msm_serial: detected port #=
0
> > > [    2.842873] msm_serial 78af000.serial: uartclk =3D 1843200
> > > [    2.848133] 78af000.serial: ttyMSM0 at MMIO 0x78af000 (irq =3D 25,
> base_baud =3D 115200) is a MSM
> > > [    2.856646] msm_serial: console setup =EF=BF=BD[    2.861276] cons=
ole
> [ttyMSM0] enabled
> > > [    2.861276] console [ttyMSM0] enabled
> > > [    2.867570] bootconsole [earlycon0] disabled
> > > [    2.867570] bootconsole [earlycon0] disabled
> > > [    2.876309] msm_serial: driver initialized
> > > [    2.881720] loop: module loaded
> > > [    2.883175] spi_qup 78b5000.spi: IN:block:16, fifo:64,
> OUT:block:16, fifo:64
> > > [    2.892706] random: fast init done
> > > [    2.893893] m25p80 spi0.0: w25q128jv (16384 Kbytes)
> > > [    2.895046] 6 fixed-partitions partitions found on MTD device spi0=
.0
> > > [    2.899777] Creating 6 MTD partitions on "spi0.0":
> > > [    2.906415] 0x000000000000-0x000000023000 : "Qualcomm-boot1"
> > > [    2.911807] 0x000000023000-0x000000080000 : "Qualcomm-boot2"
> > > [    2.917503] 0x000000080000-0x00000008e000 : "RouterBoot"
> > > [    2.923117] 0x00000008e000-0x00000008f000 : "hard_config"
> > > [    2.928336] 0x000000090000-0x0000000a0000 : "dts_config"
> > > [    2.933724] 0x0000000bd000-0x0000000be000 : "soft_config"
> > > [    2.939783] libphy: ipq40xx_mdio: probed
> > > [    3.021986] ESS reset ok!
> > > [    3.054970] ESS reset ok!
> > > [    3.473002] libphy: Fixed MDIO Bus: probed
> > > [    3.474006] EDMA using MAC@ - using
> > > [    3.474026] be:cf:22:8f:ab:1b
> > > [    3.480289] EDMA using MAC@ - using
> > > [    3.480301] ba:b5:bb:8b:4c:13
> > > [    3.582352] i2c /dev entries driver
> > > [    3.589076] NET: Registered protocol family 10
> > > [    3.590761] Segment Routing with IPv6
> > > [    3.592617] NET: Registered protocol family 17
> > > [    3.596483] 8021q: 802.1Q VLAN Support v1.8
> > > [    3.600563] Registering SWP/SWPB emulation handler
> > > [    3.611201] =EF=BF=BD[    3.617293] Freeing unused kernel memory: =
3072K
> > > [    3.632992] Run /init as init process
> > > [    3.658087] init: Console is alive
> > > [    3.658335] init: - watchdog -
> > > [    3.670018] kmodloader: loading kernel modules from
> /etc/modules-boot.d/*
> > > [    3.682835] kmodloader: done loading kernel modules from
> /etc/modules-boot.d/*
> > > [    3.693606] init: - preinit -
> > > [    3.871306] random: jshn: uninitialized urandom read (4 bytes read=
)
> > > [    3.904673] random: jshn: uninitialized urandom read (4 bytes read=
)
> > > [    3.966511] random: jshn: uninitialized urandom read (4 bytes read=
)
> > > /bin/board_detect: line 10: Unsupported: not found
> > > Press the [f] key and hit [enter] to enter failsafe mode
> > > Press the [1], [2], [3] or [4] key and hit [enter] to select the debu=
g
> level
> > > [    7.223677] procd: - early -
> > > [    7.223795] procd: - watchdog -
> > > [    7.769990] procd: - watchdog -
> > > [    7.773940] procd: - ubus -
> > > [    7.788514] urandom_read: 5 callbacks suppressed
> > > [    7.788528] random: ubusd: uninitialized urandom read (4 bytes rea=
d)
> > > [    7.824888] random: ubusd: uninitialized urandom read (4 bytes rea=
d)
> > > [    7.828410] procd: - init -
> > > Please press Enter to activate this console.
> > > [    8.109693] urngd: v1.0.0 started.
> > > [    8.151387] kmodloader: loading kernel modules from /etc/modules.d=
/*
> > > [    8.183371] input: beeper as /devices/platform/beeper/input/input0
> > > [    8.194497] Loading modules backported from Linux version
> v4.19.32-0-g3a2156c839c7
> > > [    8.194532] Backport generated by backports.git
> v4.19.32-1-0-g1c4f7569
> > > [    8.224703] xt_time: kernel timezone is -0000
> > > [    8.263888] random: crng init done
> > > [    8.270731] usbcore: registered new interface driver mt7601u
> > > [    8.296351] PPP generic driver version 2.4.2
> > > [    8.298086] NET: Registered protocol family 24
> > > [    8.312402] usbcore: registered new interface driver mt76x0u
> > > [    8.316366] kmodloader: done loading kernel modules from
> /etc/modules.d/*
> > >
> >
>
>
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>


--=20

Davey Hutchison

CTO

p: 208.342.1789 ext. 03 =EF=B8=B3LinOra.com <http://linora.com/>

--0000000000009f79af058edf67a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><a href=3D"https://forum.openwrt.org/t/support-for-mi=
krotik-rb3011uias-rm/4064/412">https://forum.openwrt.org/t/support-for-mikr=
otik-rb3011uias-rm/4064/412</a>=C2=A0</div><div>=C2=A0<br></div><div>I&#39;=
ve been working on the hAP AC2 port, and haven&#39;t tested with SMP yet.</=
div><div><br></div><div>I posted the DTS files I came up with on the RB3011=
 thread as we were all working on Mikrotik IPQ40XX boards.</div><div><br></=
div><div>I&#39;m stuck on decompressing the WiFi radio calibration data , I=
 can&#39;t seem to figure out how to get the LZO / RLE portion to work.=C2=
=A0=C2=A0<br></div><div>I know exactly where the LZO / RLE data is as well.=
</div><div><br></div><div>If you want, I&#39;ll try to enable SMP and see i=
f my board boots.</div><div>If you have any insight on WiFi, please let me =
know.</div><div><br></div><div>I&#39;d like to help where I can.</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Jul 29, 2019 at 4:10 PM Baptiste Jonglez &lt;<a href=3D"mailto:baptiste@=
bitsofnetworks.org">baptiste@bitsofnetworks.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">On 29-07-19, Hauke Mehrtens =
wrote:<br>
&gt; On 7/29/19 11:25 AM, Baptiste Jonglez wrote:<br>
&gt; &gt; Is there something obviously wrong in the DTS?=C2=A0 As far as I =
know, other<br>
&gt; &gt; ipq40xx devices don&#39;t have an issue with SMP.<br>
&gt; <br>
&gt; Did you try to revert this commit:<br>
&gt; <a href=3D"https://github.com/mmaker/openwrt/commit/481615d2f5e4bb053a=
f805dccb901050e1e7a4ed" rel=3D"noreferrer" target=3D"_blank">https://github=
.com/mmaker/openwrt/commit/481615d2f5e4bb053af805dccb901050e1e7a4ed</a><br>
&gt; <br>
&gt; The vendor dts file uses these 3 blocks, I do not know if they are<br>
&gt; loaded to these regions by some boot loader or later by some driver. I=
f<br>
&gt; they are loaded there by the boot loader we should probably not use th=
is<br>
&gt; memory in Linux and let it run there.<br>
<br>
Yes, this commit is just a recent attempt to fix a warning during boot.<br>
The upstream DTS (qcom-ipq4019.dtsi) already reserves a memory region,<br>
exactly for the reasons you mention: <a href=3D"https://patchwork.kernel.or=
g/patch/10347459/" rel=3D"noreferrer" target=3D"_blank">https://patchwork.k=
ernel.org/patch/10347459/</a><br>
<br>
This reserved region in the dtsi is overlapping with the one in the DTS,<br=
>
and there was a warning during boot (&quot;OVERLAP DETECTED&quot; below).=
=C2=A0 The<br>
commit did fix the warning, but did not change anything about the initial<b=
r>
problem with SMP.<br>
<br>
&gt; I attached the vendor.dts file we extracted from the flash of the boar=
d.<br>
<br>
Thanks, could you spot anything interesting in it?=C2=A0 It looks very verb=
ose.<br>
<br>
Baptiste<br>
<br>
&gt; &gt; PS: here is the failing bootlog, getting stuck after &quot;Testin=
g write buffer coherency&quot;:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Booting Linux on physical CPU 0x0<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Linux version 4.19.57 (bjonglez@gcc14) (=
gcc version 7.4.0 (OpenWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 =
08:51:07 2019<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: ARMv7 Processor [410fc075] revision=
 5 (ARMv7), cr=3D10c5387d<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: div instructions available: patchin=
g division code<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache,=
 VIPT aliasing instruction cache<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] OF: fdt: Machine model: Mikrotik RouterB=
OARD RBD52G-5HacD2HnD (hAP ac=C2=B2)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] bootconsole [earlycon0] enabled<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Memory policy: Data cache writealloc<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] OF: reserved mem: OVERLAP DETECTED!<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) =
overlaps with smem@87e00000 (0x87e00000--0x87e80000)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] random: get_random_bytes called from sta=
rt_kernel+0x7c/0x438 with crng_init=3D0<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] percpu: Embedded 15 pages/cpu s29964 r81=
92 d23284 u61440<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=
=C2=A0 Total pages: 60864<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Kernel command line: earlyprintk<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Dentry cache hash table entries: 32768 (=
order: 5, 131072 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Inode-cache hash table entries: 16384 (o=
rder: 4, 65536 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Memory: 232420K/245760K available (4720K=
 kernel code, 168K rwdata, 1288K rodata, 3072K init, 231K bss, 13340K reser=
ved, 0K cma-reserved, 0K highmem)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Virtual kernel memory layout:<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0vector=C2=A0 : 0xffff=
0000 - 0xffff1000=C2=A0 =C2=A0(=C2=A0 =C2=A04 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0fixmap=C2=A0 : 0xffc0=
0000 - 0xfff00000=C2=A0 =C2=A0(3072 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0vmalloc : 0xd0800000 =
- 0xff800000=C2=A0 =C2=A0( 752 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0lowmem=C2=A0 : 0xc000=
0000 - 0xd0000000=C2=A0 =C2=A0( 256 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0pkmap=C2=A0 =C2=A0: 0=
xbfe00000 - 0xc0000000=C2=A0 =C2=A0(=C2=A0 =C2=A02 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0modules : 0xbf000000 =
- 0xbfe00000=C2=A0 =C2=A0(=C2=A0 14 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.text : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0(5713 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.init : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0(3072 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.data : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0( 168 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0 .bss : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0( 232 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObje=
cts=3D0, CPUs=3D4, Nodes=3D1<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] rcu: Hierarchical RCU implementation.<br=
>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated i=
rqs: 16<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] arch_timer: cp15 timer(s) running at 48.=
00MHz (virt).<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] clocksource: arch_sys_counter: mask: 0xf=
fffffffffffff max_cycles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000007] sched_clock: 56 bits at 48MHz, resolutio=
n 20ns, wraps every 4398046511096ns<br>
&gt; &gt; [=C2=A0 =C2=A0 0.007985] Switching to timer-based delay loop, res=
olution 20ns<br>
&gt; &gt; [=C2=A0 =C2=A0 0.014242] Calibrating delay loop (skipped), value =
calculated using timer frequency.. 96.00 BogoMIPS (lpj=3D480000)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.024315] pid_max: default: 32768 minimum: 301<br>
&gt; &gt; [=C2=A0 =C2=A0 0.029081] Mount-cache hash table entries: 1024 (or=
der: 0, 4096 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.035524] Mountpoint-cache hash table entries: 102=
4 (order: 0, 4096 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.043539] CPU: Testing write buffer coherency: ok<=
br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; Here is a working bootlog, same image but with &quot;nosmp&quot;:=
<br>
&gt; &gt; <br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Booting Linux on physical CPU 0x0<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Linux version 4.19.57 (bjonglez@gcc14) (=
gcc version 7.4.0 (OpenWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 =
08:13:02 2019<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: ARMv7 Processor [410fc075] revision=
 5 (ARMv7), cr=3D10c5387d<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: div instructions available: patchin=
g division code<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache,=
 VIPT aliasing instruction cache<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] OF: fdt: Machine model: Mikrotik RouterB=
OARD RBD52G-5HacD2HnD (hAP ac=C2=B2)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] bootconsole [earlycon0] enabled<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Memory policy: Data cache writealloc<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] OF: reserved mem: OVERLAP DETECTED!<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) =
overlaps with smem@87e00000 (0x87e00000--0x87e80000)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] random: get_random_bytes called from sta=
rt_kernel+0x7c/0x438 with crng_init=3D0<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] percpu: Embedded 15 pages/cpu s29964 r81=
92 d23284 u61440<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=
=C2=A0 Total pages: 60864<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Kernel command line: earlyprintk nosmp<b=
r>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Dentry cache hash table entries: 32768 (=
order: 5, 131072 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Inode-cache hash table entries: 16384 (o=
rder: 4, 65536 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Memory: 232420K/245760K available (4720K=
 kernel code, 168K rwdata, 1288K rodata, 3072K init, 231K bss, 13340K reser=
ved, 0K cma-reserved, 0K highmem)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Virtual kernel memory layout:<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0vector=C2=A0 : 0xffff=
0000 - 0xffff1000=C2=A0 =C2=A0(=C2=A0 =C2=A04 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0fixmap=C2=A0 : 0xffc0=
0000 - 0xfff00000=C2=A0 =C2=A0(3072 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0vmalloc : 0xd0800000 =
- 0xff800000=C2=A0 =C2=A0( 752 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0lowmem=C2=A0 : 0xc000=
0000 - 0xd0000000=C2=A0 =C2=A0( 256 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0pkmap=C2=A0 =C2=A0: 0=
xbfe00000 - 0xc0000000=C2=A0 =C2=A0(=C2=A0 =C2=A02 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0modules : 0xbf000000 =
- 0xbfe00000=C2=A0 =C2=A0(=C2=A0 14 MB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.text : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0(5713 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.init : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0(3072 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.data : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0( 168 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0 .bss : 0x(ptr=
val) - 0x(ptrval)=C2=A0 =C2=A0( 232 kB)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObje=
cts=3D0, CPUs=3D4, Nodes=3D1<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] rcu: Hierarchical RCU implementation.<br=
>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated i=
rqs: 16<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] arch_timer: cp15 timer(s) running at 48.=
00MHz (virt).<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] clocksource: arch_sys_counter: mask: 0xf=
fffffffffffff max_cycles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000008] sched_clock: 56 bits at 48MHz, resolutio=
n 20ns, wraps every 4398046511096ns<br>
&gt; &gt; [=C2=A0 =C2=A0 0.007985] Switching to timer-based delay loop, res=
olution 20ns<br>
&gt; &gt; [=C2=A0 =C2=A0 0.014242] Calibrating delay loop (skipped), value =
calculated using timer frequency.. 96.00 BogoMIPS (lpj=3D480000)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.024315] pid_max: default: 32768 minimum: 301<br>
&gt; &gt; [=C2=A0 =C2=A0 0.029087] Mount-cache hash table entries: 1024 (or=
der: 0, 4096 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.035521] Mountpoint-cache hash table entries: 102=
4 (order: 0, 4096 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.043529] CPU: Testing write buffer coherency: ok<=
br>
&gt; &gt; [=C2=A0 =C2=A0 0.048493] Setting up static identity map for 0x803=
00000 - 0x80300060<br>
&gt; &gt; [=C2=A0 =C2=A0 0.054162] rcu: Hierarchical SRCU implementation.<b=
r>
&gt; &gt; [=C2=A0 =C2=A0 0.059609] smp: Bringing up secondary CPUs ...<br>
&gt; &gt; [=C2=A0 =C2=A0 0.063282] smp: Brought up 1 node, 1 CPU<br>
&gt; &gt; [=C2=A0 =C2=A0 0.067274] SMP: Total of 1 processors activated (96=
.00 BogoMIPS).<br>
&gt; &gt; [=C2=A0 =C2=A0 0.073476] CPU: All CPU(s) started in SVC mode.<br>
&gt; &gt; [=C2=A0 =C2=A0 0.082314] VFP support v0.3: implementor 41 archite=
cture 2 part 30 variant 7 rev 5<br>
&gt; &gt; [=C2=A0 =C2=A0 0.089157] clocksource: jiffies: mask: 0xffffffff m=
ax_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns<br>
&gt; &gt; [=C2=A0 =C2=A0 0.098782] futex hash table entries: 1024 (order: 4=
, 65536 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.105261] pinctrl core: initialized pinctrl subsys=
tem<br>
&gt; &gt; [=C2=A0 =C2=A0 0.111253] NET: Registered protocol family 16<br>
&gt; &gt; [=C2=A0 =C2=A0 0.115162] DMA: preallocated 256 KiB pool for atomi=
c coherent allocations<br>
&gt; &gt; [=C2=A0 =C2=A0 0.122468] cpuidle: using governor ladder<br>
&gt; &gt; [=C2=A0 =C2=A0 0.125641] cpuidle: using governor menu<br>
&gt; &gt; [=C2=A0 =C2=A0 0.147920] usbcore: registered new interface driver=
 usbfs<br>
&gt; &gt; [=C2=A0 =C2=A0 0.152432] usbcore: registered new interface driver=
 hub<br>
&gt; &gt; [=C2=A0 =C2=A0 0.157828] usbcore: registered new device driver us=
b<br>
&gt; &gt; [=C2=A0 =C2=A0 0.162751] pps_core: LinuxPPS API ver. 1 registered=
<br>
&gt; &gt; [=C2=A0 =C2=A0 0.167657] pps_core: Software ver. 5.3.6 - Copyrigh=
t 2005-2007 Rodolfo Giometti &lt;<a href=3D"mailto:giometti@linux.it" targe=
t=3D"_blank">giometti@linux.it</a>&gt;<br>
&gt; &gt; [=C2=A0 =C2=A0 0.176824] PTP clock support registered<br>
&gt; &gt; [=C2=A0 =C2=A0 0.182206] clocksource: Switched to clocksource arc=
h_sys_counter<br>
&gt; &gt; [=C2=A0 =C2=A0 0.188356] NET: Registered protocol family 2<br>
&gt; &gt; [=C2=A0 =C2=A0 0.192405] tcp_listen_portaddr_hash hash table entr=
ies: 512 (order: 0, 6144 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.199346] TCP established hash table entries: 2048=
 (order: 1, 8192 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.206336] TCP bind hash table entries: 2048 (order=
: 2, 16384 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.212745] TCP: Hash tables configured (established=
 2048 bind 2048)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.219173] UDP hash table entries: 256 (order: 1, 8=
192 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.224904] UDP-Lite hash table entries: 256 (order:=
 1, 8192 bytes)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.231351] NET: Registered protocol family 1<br>
&gt; &gt; [=C2=A0 =C2=A0 2.746607] No memory allocated for crashlog<br>
&gt; &gt; [=C2=A0 =C2=A0 2.750141] workingset: timestamp_bits=3D14 max_orde=
r=3D16 bucket_order=3D2<br>
&gt; &gt; [=C2=A0 =C2=A0 2.761295] squashfs: version 4.0 (2009/01/31) Phill=
ip Lougher<br>
&gt; &gt; [=C2=A0 =C2=A0 2.766200] jffs2: version 2.2 (NAND) (SUMMARY) (LZM=
A) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.<br>
&gt; &gt; [=C2=A0 =C2=A0 2.782649] io scheduler noop registered<br>
&gt; &gt; [=C2=A0 =C2=A0 2.785548] io scheduler deadline registered (defaul=
t)<br>
&gt; &gt; [=C2=A0 =C2=A0 2.793099] bam-dma-engine 8e04000.dma: num-channels=
 unspecified in dt<br>
&gt; &gt; [=C2=A0 =C2=A0 2.798599] bam-dma-engine 8e04000.dma: num-ees unsp=
ecified in dt<br>
&gt; &gt; [=C2=A0 =C2=A0 2.806057] tcsr 1949000.tcsr: setting wifi_glb_cfg =
=3D 41000000<br>
&gt; &gt; [=C2=A0 =C2=A0 2.810931] tcsr 194b000.tcsr: setting usb hs phy mo=
de select =3D e700e7<br>
&gt; &gt; [=C2=A0 =C2=A0 2.817492] tcsr 1953000.ess_tcsr: setting ess inter=
face select =3D 0<br>
&gt; &gt; [=C2=A0 =C2=A0 2.823714] tcsr 1957000.tcsr: setting wifi_noc_memt=
ype_m0_m2 =3D 2222222<br>
&gt; &gt; [=C2=A0 =C2=A0 2.830473] Serial: 8250/16550 driver, 2 ports, IRQ =
sharing disabled<br>
&gt; &gt; [=C2=A0 =C2=A0 2.837172] msm_serial 78af000.serial: msm_serial: d=
etected port #0<br>
&gt; &gt; [=C2=A0 =C2=A0 2.842873] msm_serial 78af000.serial: uartclk =3D 1=
843200<br>
&gt; &gt; [=C2=A0 =C2=A0 2.848133] 78af000.serial: ttyMSM0 at MMIO 0x78af00=
0 (irq =3D 25, base_baud =3D 115200) is a MSM<br>
&gt; &gt; [=C2=A0 =C2=A0 2.856646] msm_serial: console setup =EF=BF=BD[=C2=
=A0 =C2=A0 2.861276] console [ttyMSM0] enabled<br>
&gt; &gt; [=C2=A0 =C2=A0 2.861276] console [ttyMSM0] enabled<br>
&gt; &gt; [=C2=A0 =C2=A0 2.867570] bootconsole [earlycon0] disabled<br>
&gt; &gt; [=C2=A0 =C2=A0 2.867570] bootconsole [earlycon0] disabled<br>
&gt; &gt; [=C2=A0 =C2=A0 2.876309] msm_serial: driver initialized<br>
&gt; &gt; [=C2=A0 =C2=A0 2.881720] loop: module loaded<br>
&gt; &gt; [=C2=A0 =C2=A0 2.883175] spi_qup 78b5000.spi: IN:block:16, fifo:6=
4, OUT:block:16, fifo:64<br>
&gt; &gt; [=C2=A0 =C2=A0 2.892706] random: fast init done<br>
&gt; &gt; [=C2=A0 =C2=A0 2.893893] m25p80 spi0.0: w25q128jv (16384 Kbytes)<=
br>
&gt; &gt; [=C2=A0 =C2=A0 2.895046] 6 fixed-partitions partitions found on M=
TD device spi0.0<br>
&gt; &gt; [=C2=A0 =C2=A0 2.899777] Creating 6 MTD partitions on &quot;spi0.=
0&quot;:<br>
&gt; &gt; [=C2=A0 =C2=A0 2.906415] 0x000000000000-0x000000023000 : &quot;Qu=
alcomm-boot1&quot;<br>
&gt; &gt; [=C2=A0 =C2=A0 2.911807] 0x000000023000-0x000000080000 : &quot;Qu=
alcomm-boot2&quot;<br>
&gt; &gt; [=C2=A0 =C2=A0 2.917503] 0x000000080000-0x00000008e000 : &quot;Ro=
uterBoot&quot;<br>
&gt; &gt; [=C2=A0 =C2=A0 2.923117] 0x00000008e000-0x00000008f000 : &quot;ha=
rd_config&quot;<br>
&gt; &gt; [=C2=A0 =C2=A0 2.928336] 0x000000090000-0x0000000a0000 : &quot;dt=
s_config&quot;<br>
&gt; &gt; [=C2=A0 =C2=A0 2.933724] 0x0000000bd000-0x0000000be000 : &quot;so=
ft_config&quot;<br>
&gt; &gt; [=C2=A0 =C2=A0 2.939783] libphy: ipq40xx_mdio: probed<br>
&gt; &gt; [=C2=A0 =C2=A0 3.021986] ESS reset ok!<br>
&gt; &gt; [=C2=A0 =C2=A0 3.054970] ESS reset ok!<br>
&gt; &gt; [=C2=A0 =C2=A0 3.473002] libphy: Fixed MDIO Bus: probed<br>
&gt; &gt; [=C2=A0 =C2=A0 3.474006] EDMA using MAC@ - using<br>
&gt; &gt; [=C2=A0 =C2=A0 3.474026] be:cf:22:8f:ab:1b<br>
&gt; &gt; [=C2=A0 =C2=A0 3.480289] EDMA using MAC@ - using<br>
&gt; &gt; [=C2=A0 =C2=A0 3.480301] ba:b5:bb:8b:4c:13<br>
&gt; &gt; [=C2=A0 =C2=A0 3.582352] i2c /dev entries driver<br>
&gt; &gt; [=C2=A0 =C2=A0 3.589076] NET: Registered protocol family 10<br>
&gt; &gt; [=C2=A0 =C2=A0 3.590761] Segment Routing with IPv6<br>
&gt; &gt; [=C2=A0 =C2=A0 3.592617] NET: Registered protocol family 17<br>
&gt; &gt; [=C2=A0 =C2=A0 3.596483] 8021q: 802.1Q VLAN Support v1.8<br>
&gt; &gt; [=C2=A0 =C2=A0 3.600563] Registering SWP/SWPB emulation handler<b=
r>
&gt; &gt; [=C2=A0 =C2=A0 3.611201] =EF=BF=BD[=C2=A0 =C2=A0 3.617293] Freein=
g unused kernel memory: 3072K<br>
&gt; &gt; [=C2=A0 =C2=A0 3.632992] Run /init as init process<br>
&gt; &gt; [=C2=A0 =C2=A0 3.658087] init: Console is alive<br>
&gt; &gt; [=C2=A0 =C2=A0 3.658335] init: - watchdog -<br>
&gt; &gt; [=C2=A0 =C2=A0 3.670018] kmodloader: loading kernel modules from =
/etc/modules-boot.d/*<br>
&gt; &gt; [=C2=A0 =C2=A0 3.682835] kmodloader: done loading kernel modules =
from /etc/modules-boot.d/*<br>
&gt; &gt; [=C2=A0 =C2=A0 3.693606] init: - preinit -<br>
&gt; &gt; [=C2=A0 =C2=A0 3.871306] random: jshn: uninitialized urandom read=
 (4 bytes read)<br>
&gt; &gt; [=C2=A0 =C2=A0 3.904673] random: jshn: uninitialized urandom read=
 (4 bytes read)<br>
&gt; &gt; [=C2=A0 =C2=A0 3.966511] random: jshn: uninitialized urandom read=
 (4 bytes read)<br>
&gt; &gt; /bin/board_detect: line 10: Unsupported: not found<br>
&gt; &gt; Press the [f] key and hit [enter] to enter failsafe mode<br>
&gt; &gt; Press the [1], [2], [3] or [4] key and hit [enter] to select the =
debug level<br>
&gt; &gt; [=C2=A0 =C2=A0 7.223677] procd: - early -<br>
&gt; &gt; [=C2=A0 =C2=A0 7.223795] procd: - watchdog -<br>
&gt; &gt; [=C2=A0 =C2=A0 7.769990] procd: - watchdog -<br>
&gt; &gt; [=C2=A0 =C2=A0 7.773940] procd: - ubus -<br>
&gt; &gt; [=C2=A0 =C2=A0 7.788514] urandom_read: 5 callbacks suppressed<br>
&gt; &gt; [=C2=A0 =C2=A0 7.788528] random: ubusd: uninitialized urandom rea=
d (4 bytes read)<br>
&gt; &gt; [=C2=A0 =C2=A0 7.824888] random: ubusd: uninitialized urandom rea=
d (4 bytes read)<br>
&gt; &gt; [=C2=A0 =C2=A0 7.828410] procd: - init -<br>
&gt; &gt; Please press Enter to activate this console.<br>
&gt; &gt; [=C2=A0 =C2=A0 8.109693] urngd: v1.0.0 started.<br>
&gt; &gt; [=C2=A0 =C2=A0 8.151387] kmodloader: loading kernel modules from =
/etc/modules.d/*<br>
&gt; &gt; [=C2=A0 =C2=A0 8.183371] input: beeper as /devices/platform/beepe=
r/input/input0<br>
&gt; &gt; [=C2=A0 =C2=A0 8.194497] Loading modules backported from Linux ve=
rsion v4.19.32-0-g3a2156c839c7<br>
&gt; &gt; [=C2=A0 =C2=A0 8.194532] Backport generated by backports.git v4.1=
9.32-1-0-g1c4f7569<br>
&gt; &gt; [=C2=A0 =C2=A0 8.224703] xt_time: kernel timezone is -0000<br>
&gt; &gt; [=C2=A0 =C2=A0 8.263888] random: crng init done<br>
&gt; &gt; [=C2=A0 =C2=A0 8.270731] usbcore: registered new interface driver=
 mt7601u<br>
&gt; &gt; [=C2=A0 =C2=A0 8.296351] PPP generic driver version 2.4.2<br>
&gt; &gt; [=C2=A0 =C2=A0 8.298086] NET: Registered protocol family 24<br>
&gt; &gt; [=C2=A0 =C2=A0 8.312402] usbcore: registered new interface driver=
 mt76x0u<br>
&gt; &gt; [=C2=A0 =C2=A0 8.316366] kmodloader: done loading kernel modules =
from /etc/modules.d/*<br>
&gt; &gt; <br>
&gt; <br>
<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><br></div><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(0,0,=
0);font-family:-webkit-standard"><p dir=3D"ltr" style=3D"line-height:1.2;ma=
rgin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:A=
rial;background-color:transparent;font-weight:700;vertical-align:baseline;w=
hite-space:pre-wrap">Davey </span><span style=3D"font-size:12pt;font-family=
:Arial;background-color:transparent;vertical-align:baseline;white-space:pre=
-wrap">Hutchison</span></p><p dir=3D"ltr" style=3D"line-height:1.2;margin-t=
op:0pt;margin-bottom:3pt"><span style=3D"font-size:9pt;font-family:Arial;ba=
ckground-color:transparent;vertical-align:baseline;white-space:pre-wrap">CT=
O</span></p><p dir=3D"ltr" style=3D"line-height:1.2;margin-top:0.75pt;margi=
n-bottom:0.75pt"><span style=3D"font-size:9pt;font-family:Arial;background-=
color:transparent;vertical-align:baseline;white-space:pre-wrap">p: 208.342.=
1789 ext. 03 =EF=B8=B3</span><a href=3D"http://linora.com/" style=3D"text-d=
ecoration:none" target=3D"_blank"><span style=3D"font-size:9pt;font-family:=
Arial;color:rgb(17,85,204);background-color:transparent;text-decoration:und=
erline;vertical-align:baseline;white-space:pre-wrap">LinOra.com</span></a><=
/p><p dir=3D"ltr" style=3D"line-height:1.8;margin-top:6pt;margin-bottom:0.7=
5pt"><span style=3D"font-size:11pt;font-family:Arial;background-color:trans=
parent;vertical-align:baseline;white-space:pre-wrap"><img src=3D"https://lh=
6.googleusercontent.com/HXE7Qc8j24Nwnt4TMr8XpxFo4OCq0_qZHpAiEfZPNFITrLHNZQC=
ZDovubwGNc0sXfFDDy8ojggMN0MjxUnj3OxQZaBB4XPr4OS7rOmUBvJQJaaMLoQ8N7Oq9X7DRj3=
hbVK-i0mYW" width=3D"104" height=3D"24" style=3D"border: none;"></span></p>=
</span></div></div></div></div></div></div></div></div></div></div>

--0000000000009f79af058edf67a9--


--===============7907260507477527656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7907260507477527656==--

