Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEF579B8D
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 23:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y+01ee/GwqAJG6H9deam3cGwp2fDcw8FJbLmKJ6iYpo=; b=U2Jz18nWjwvHdan03J1qYt4ZH
	hXNcSSS8ZcPFCuoDxlwjb+VCtO+y3ftPwreJPUjeGxyj4hjV8uoPLXU2M4YiCqb6cTSZStBlpS0hO
	3rc18oTSm3bfGimBzqKJSZzbWosynf9IcmQJXzF+zYSdX4rzEOywMjtozVSpQdlAgSG4SMlXit6fC
	1tnz6IzJiCaVHgC/tEU1o8Ill8Hay8eTi44Kn1aTZv5QnmCIzyCiqS+sWQLQNnBbOhLvyRQWtEBt5
	dq64Snm5//4npe94VNowguAuEUCGRCKci+2tvBSuPv5nwnkf1b2iJkqrBkZZM7KtE7bFQ1q3kslRk
	Tnf7IxRMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDZM-0004Gc-Rc; Mon, 29 Jul 2019 21:52:36 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDZ5-0004G4-4R
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 21:52:22 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 016114FF73;
 Mon, 29 Jul 2019 23:52:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id 6pj6YW4aByHE; Mon, 29 Jul 2019 23:52:08 +0200 (CEST)
To: Baptiste Jonglez <baptiste@bitsofnetworks.org>,
 Robert Marko <robimarko@gmail.com>, openwrt-devel@lists.openwrt.org
References: <20190729092555.GA6171@lud.localdomain>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <4c36b010-522f-bf8d-fbdd-2791467bb65b@hauke-m.de>
Date: Mon, 29 Jul 2019 23:51:50 +0200
MIME-Version: 1.0
In-Reply-To: <20190729092555.GA6171@lud.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_145219_649199_08DC5105 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============2649201971430041653=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2649201971430041653==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="4DBjhtsYK8hjeGvcdgJcWDnhd0JN2V4No"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--4DBjhtsYK8hjeGvcdgJcWDnhd0JN2V4No
Content-Type: multipart/mixed; boundary="nujRi3BplS3dmMFpGL8QFsPeuPm8Sb6GX";
 protected-headers="v1"
From: Hauke Mehrtens <hauke@hauke-m.de>
To: Baptiste Jonglez <baptiste@bitsofnetworks.org>,
 Robert Marko <robimarko@gmail.com>, openwrt-devel@lists.openwrt.org
Message-ID: <4c36b010-522f-bf8d-fbdd-2791467bb65b@hauke-m.de>
Subject: =?UTF-8?Q?Re=3a_ipq40xx=3a_fails_to_boot_with_SMP_on_Mikrotik_hAP_a?=
 =?UTF-8?Q?c=c2=b2_/_RBD52G-5HacD2HnD_=28WIP=29?=
References: <20190729092555.GA6171@lud.localdomain>
In-Reply-To: <20190729092555.GA6171@lud.localdomain>

--nujRi3BplS3dmMFpGL8QFsPeuPm8Sb6GX
Content-Type: multipart/mixed;
 boundary="------------9035357472566E0725928016"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9035357472566E0725928016
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 7/29/19 11:25 AM, Baptiste Jonglez wrote:
> Hi,
>=20
> I am trying to finish the port of Mikrotik hAP ac=C2=B2, but I still ca=
n't get
> it to boot properly with SMP.  Adding "nosmp" to the cmdline makes the
> initramfs boot fine.
>=20
> Here is the work-in-progress tree that Hauke based on the RB450Gx4 work=
:
>=20
> https://github.com/mmaker/openwrt/tree/device/hAP-ac%C2%B2
> https://github.com/mmaker/openwrt/blob/device/hAP-ac%C2%B2/target/linux=
/ipq40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-rbd52g-5hacd2hnd.dts
> Wiki page: https://openwrt.org/inbox/mikrotik/mikrotik_hap_ac
>=20
> I tried Pavel's patch "ipq40xx: add support for secondary cores bringup=
"
> from http://lists.infradead.org/pipermail/openwrt-devel/2019-May/017057=
=2Ehtml
> but it did not seem to change anything.
>=20
> Is there something obviously wrong in the DTS?  As far as I know, other=

> ipq40xx devices don't have an issue with SMP.

Did you try to revert this commit:
https://github.com/mmaker/openwrt/commit/481615d2f5e4bb053af805dccb901050=
e1e7a4ed

The vendor dts file uses these 3 blocks, I do not know if they are
loaded to these regions by some boot loader or later by some driver. If
they are loaded there by the boot loader we should probably not use this
memory in Linux and let it run there.

I attached the vendor.dts file we extracted from the flash of the board.

>=20
> Thanks,
> Baptiste
>=20
>=20
> PS: here is the failing bootlog, getting stuck after "Testing write buf=
fer coherency":
>                             =20
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 4.19.57 (bjonglez@gcc14) (gcc version 7.4.=
0 (OpenWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 08:51:07 2019
> [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=3D=
10c5387d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing i=
nstruction cache
> [    0.000000] OF: fdt: Machine model: Mikrotik RouterBOARD RBD52G-5Hac=
D2HnD (hAP ac=C2=B2)
> [    0.000000] bootconsole [earlycon0] enabled
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] OF: reserved mem: OVERLAP DETECTED!
> [    0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) overlaps with sm=
em@87e00000 (0x87e00000--0x87e80000)
> [    0.000000] random: get_random_bytes called from start_kernel+0x7c/0=
x438 with crng_init=3D0
> [    0.000000] percpu: Embedded 15 pages/cpu s29964 r8192 d23284 u61440=

> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 6=
0864
> [    0.000000] Kernel command line: earlyprintk
> [    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072=
 bytes)
> [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 b=
ytes)
> [    0.000000] Memory: 232420K/245760K available (4720K kernel code, 16=
8K rwdata, 1288K rodata, 3072K init, 231K bss, 13340K reserved, 0K cma-re=
served, 0K highmem)
> [    0.000000] Virtual kernel memory layout:
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
> [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (5713 kB)
> [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (3072 kB)
> [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 168 kB)
> [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 232 kB)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D=
4, Nodes=3D1
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] arch_timer: cp15 timer(s) running at 48.00MHz (virt).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff ma=
x_cycles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns
> [    0.000007] sched_clock: 56 bits at 48MHz, resolution 20ns, wraps ev=
ery 4398046511096ns
> [    0.007985] Switching to timer-based delay loop, resolution 20ns
> [    0.014242] Calibrating delay loop (skipped), value calculated using=
 timer frequency.. 96.00 BogoMIPS (lpj=3D480000)
> [    0.024315] pid_max: default: 32768 minimum: 301
> [    0.029081] Mount-cache hash table entries: 1024 (order: 0, 4096 byt=
es)
> [    0.035524] Mountpoint-cache hash table entries: 1024 (order: 0, 409=
6 bytes)
> [    0.043539] CPU: Testing write buffer coherency: ok
>=20
>=20
> Here is a working bootlog, same image but with "nosmp":
>=20
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 4.19.57 (bjonglez@gcc14) (gcc version 7.4.=
0 (OpenWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 08:13:02 2019
> [    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=3D=
10c5387d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing i=
nstruction cache
> [    0.000000] OF: fdt: Machine model: Mikrotik RouterBOARD RBD52G-5Hac=
D2HnD (hAP ac=C2=B2)
> [    0.000000] bootconsole [earlycon0] enabled
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] OF: reserved mem: OVERLAP DETECTED!
> [    0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) overlaps with sm=
em@87e00000 (0x87e00000--0x87e80000)
> [    0.000000] random: get_random_bytes called from start_kernel+0x7c/0=
x438 with crng_init=3D0
> [    0.000000] percpu: Embedded 15 pages/cpu s29964 r8192 d23284 u61440=

> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 6=
0864
> [    0.000000] Kernel command line: earlyprintk nosmp
> [    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072=
 bytes)
> [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 b=
ytes)
> [    0.000000] Memory: 232420K/245760K available (4720K kernel code, 16=
8K rwdata, 1288K rodata, 3072K init, 231K bss, 13340K reserved, 0K cma-re=
served, 0K highmem)
> [    0.000000] Virtual kernel memory layout:
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
> [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> [    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (5713 kB)
> [    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (3072 kB)
> [    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 168 kB)
> [    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 232 kB)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D=
4, Nodes=3D1
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] arch_timer: cp15 timer(s) running at 48.00MHz (virt).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff ma=
x_cycles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns
> [    0.000008] sched_clock: 56 bits at 48MHz, resolution 20ns, wraps ev=
ery 4398046511096ns
> [    0.007985] Switching to timer-based delay loop, resolution 20ns
> [    0.014242] Calibrating delay loop (skipped), value calculated using=
 timer frequency.. 96.00 BogoMIPS (lpj=3D480000)
> [    0.024315] pid_max: default: 32768 minimum: 301
> [    0.029087] Mount-cache hash table entries: 1024 (order: 0, 4096 byt=
es)
> [    0.035521] Mountpoint-cache hash table entries: 1024 (order: 0, 409=
6 bytes)
> [    0.043529] CPU: Testing write buffer coherency: ok
> [    0.048493] Setting up static identity map for 0x80300000 - 0x803000=
60
> [    0.054162] rcu: Hierarchical SRCU implementation.
> [    0.059609] smp: Bringing up secondary CPUs ...
> [    0.063282] smp: Brought up 1 node, 1 CPU
> [    0.067274] SMP: Total of 1 processors activated (96.00 BogoMIPS).
> [    0.073476] CPU: All CPU(s) started in SVC mode.
> [    0.082314] VFP support v0.3: implementor 41 architecture 2 part 30 =
variant 7 rev 5
> [    0.089157] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfff=
fffff, max_idle_ns: 19112604462750000 ns
> [    0.098782] futex hash table entries: 1024 (order: 4, 65536 bytes)
> [    0.105261] pinctrl core: initialized pinctrl subsystem
> [    0.111253] NET: Registered protocol family 16
> [    0.115162] DMA: preallocated 256 KiB pool for atomic coherent alloc=
ations
> [    0.122468] cpuidle: using governor ladder
> [    0.125641] cpuidle: using governor menu
> [    0.147920] usbcore: registered new interface driver usbfs
> [    0.152432] usbcore: registered new interface driver hub
> [    0.157828] usbcore: registered new device driver usb
> [    0.162751] pps_core: LinuxPPS API ver. 1 registered
> [    0.167657] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodo=
lfo Giometti <giometti@linux.it>
> [    0.176824] PTP clock support registered
> [    0.182206] clocksource: Switched to clocksource arch_sys_counter
> [    0.188356] NET: Registered protocol family 2
> [    0.192405] tcp_listen_portaddr_hash hash table entries: 512 (order:=
 0, 6144 bytes)
> [    0.199346] TCP established hash table entries: 2048 (order: 1, 8192=
 bytes)
> [    0.206336] TCP bind hash table entries: 2048 (order: 2, 16384 bytes=
)
> [    0.212745] TCP: Hash tables configured (established 2048 bind 2048)=

> [    0.219173] UDP hash table entries: 256 (order: 1, 8192 bytes)
> [    0.224904] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
> [    0.231351] NET: Registered protocol family 1
> [    2.746607] No memory allocated for crashlog
> [    2.750141] workingset: timestamp_bits=3D14 max_order=3D16 bucket_or=
der=3D2
> [    2.761295] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> [    2.766200] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMOD=
E_PRIORITY) (c) 2001-2006 Red Hat, Inc.
> [    2.782649] io scheduler noop registered
> [    2.785548] io scheduler deadline registered (default)
> [    2.793099] bam-dma-engine 8e04000.dma: num-channels unspecified in =
dt
> [    2.798599] bam-dma-engine 8e04000.dma: num-ees unspecified in dt
> [    2.806057] tcsr 1949000.tcsr: setting wifi_glb_cfg =3D 41000000
> [    2.810931] tcsr 194b000.tcsr: setting usb hs phy mode select =3D e7=
00e7
> [    2.817492] tcsr 1953000.ess_tcsr: setting ess interface select =3D =
0
> [    2.823714] tcsr 1957000.tcsr: setting wifi_noc_memtype_m0_m2 =3D 22=
22222
> [    2.830473] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled=

> [    2.837172] msm_serial 78af000.serial: msm_serial: detected port #0
> [    2.842873] msm_serial 78af000.serial: uartclk =3D 1843200
> [    2.848133] 78af000.serial: ttyMSM0 at MMIO 0x78af000 (irq =3D 25, b=
ase_baud =3D 115200) is a MSM
> [    2.856646] msm_serial: console setup =EF=BF=BD[    2.861276] consol=
e [ttyMSM0] enabled
> [    2.861276] console [ttyMSM0] enabled
> [    2.867570] bootconsole [earlycon0] disabled
> [    2.867570] bootconsole [earlycon0] disabled
> [    2.876309] msm_serial: driver initialized
> [    2.881720] loop: module loaded
> [    2.883175] spi_qup 78b5000.spi: IN:block:16, fifo:64, OUT:block:16,=
 fifo:64
> [    2.892706] random: fast init done
> [    2.893893] m25p80 spi0.0: w25q128jv (16384 Kbytes)
> [    2.895046] 6 fixed-partitions partitions found on MTD device spi0.0=

> [    2.899777] Creating 6 MTD partitions on "spi0.0":
> [    2.906415] 0x000000000000-0x000000023000 : "Qualcomm-boot1"
> [    2.911807] 0x000000023000-0x000000080000 : "Qualcomm-boot2"
> [    2.917503] 0x000000080000-0x00000008e000 : "RouterBoot"
> [    2.923117] 0x00000008e000-0x00000008f000 : "hard_config"
> [    2.928336] 0x000000090000-0x0000000a0000 : "dts_config"
> [    2.933724] 0x0000000bd000-0x0000000be000 : "soft_config"
> [    2.939783] libphy: ipq40xx_mdio: probed
> [    3.021986] ESS reset ok!
> [    3.054970] ESS reset ok!
> [    3.473002] libphy: Fixed MDIO Bus: probed
> [    3.474006] EDMA using MAC@ - using
> [    3.474026] be:cf:22:8f:ab:1b
> [    3.480289] EDMA using MAC@ - using
> [    3.480301] ba:b5:bb:8b:4c:13
> [    3.582352] i2c /dev entries driver
> [    3.589076] NET: Registered protocol family 10
> [    3.590761] Segment Routing with IPv6
> [    3.592617] NET: Registered protocol family 17
> [    3.596483] 8021q: 802.1Q VLAN Support v1.8
> [    3.600563] Registering SWP/SWPB emulation handler
> [    3.611201] =EF=BF=BD[    3.617293] Freeing unused kernel memory: 30=
72K
> [    3.632992] Run /init as init process
> [    3.658087] init: Console is alive
> [    3.658335] init: - watchdog -
> [    3.670018] kmodloader: loading kernel modules from /etc/modules-boo=
t.d/*
> [    3.682835] kmodloader: done loading kernel modules from /etc/module=
s-boot.d/*
> [    3.693606] init: - preinit -
> [    3.871306] random: jshn: uninitialized urandom read (4 bytes read)
> [    3.904673] random: jshn: uninitialized urandom read (4 bytes read)
> [    3.966511] random: jshn: uninitialized urandom read (4 bytes read)
> /bin/board_detect: line 10: Unsupported: not found
> Press the [f] key and hit [enter] to enter failsafe mode
> Press the [1], [2], [3] or [4] key and hit [enter] to select the debug =
level
> [    7.223677] procd: - early -
> [    7.223795] procd: - watchdog -
> [    7.769990] procd: - watchdog -
> [    7.773940] procd: - ubus -
> [    7.788514] urandom_read: 5 callbacks suppressed
> [    7.788528] random: ubusd: uninitialized urandom read (4 bytes read)=

> [    7.824888] random: ubusd: uninitialized urandom read (4 bytes read)=

> [    7.828410] procd: - init -
> Please press Enter to activate this console.
> [    8.109693] urngd: v1.0.0 started.
> [    8.151387] kmodloader: loading kernel modules from /etc/modules.d/*=

> [    8.183371] input: beeper as /devices/platform/beeper/input/input0
> [    8.194497] Loading modules backported from Linux version v4.19.32-0=
-g3a2156c839c7
> [    8.194532] Backport generated by backports.git v4.19.32-1-0-g1c4f75=
69
> [    8.224703] xt_time: kernel timezone is -0000
> [    8.263888] random: crng init done
> [    8.270731] usbcore: registered new interface driver mt7601u
> [    8.296351] PPP generic driver version 2.4.2
> [    8.298086] NET: Registered protocol family 24
> [    8.312402] usbcore: registered new interface driver mt76x0u
> [    8.316366] kmodloader: done loading kernel modules from /etc/module=
s.d/*
>=20


--------------9035357472566E0725928016
Content-Type: audio/vnd.dts;
 name="vendor.dts"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="vendor.dts"

L2R0cy12MS87CgovIHsKCSNhZGRyZXNzLWNlbGxzID0gPCAweDAxID47Cgkjc2l6ZS1jZWxs
cyA9IDwgMHgwMSA+OwoJY29tcGF0aWJsZSA9ICJxY29tLGlwcTQweHgtYXBkazAxLjFcMHFj
b20saXBxNDB4eCI7CgltYWMtYWRkcmVzcyA9IFsgMDAgMDAgMDAgMDAgMDAgMDAgXTsKCWlu
dGVycnVwdC1wYXJlbnQgPSA8IDB4MDEgPjsKCW1vZGVsID0gIjk1MkdfNUhhY0QySG5EIjsK
CgljaG9zZW4gewoJCWJvb3RhcmdzLWFwcGVuZCA9ICIgY2xrX2lnbm9yZV91bnVzZWQiOwoJ
CWJvb3RhcmdzID0gWyAwMCBdOwoJCWxpbnV4LGluaXRyZC1zdGFydCA9IDwgMHgwMCA+OwoJ
CWxpbnV4LGluaXRyZC1lbmQgPSA8IDB4MDAgPjsKCX07CgoJYWxpYXNlcyB7CgkJc3BpMCA9
ICIvc29jL3NwaUA3OGI1MDAwIjsKCQlpMmMwID0gIi9zb2MvaTJjQDc4YjcwMDAiOwoJCWV0
aGVybmV0MCA9ICIvc29jL2VkbWEvZ21hYzAiOwoJCWV0aGVybmV0MSA9ICIvc29jL2VkbWEv
Z21hYzEiOwoJfTsKCgljcHVzIHsKCQkjYWRkcmVzcy1jZWxscyA9IDwgMHgwMSA+OwoJCSNz
aXplLWNlbGxzID0gPCAweDAwID47CgoJCWNwdUAwIHsKCQkJZGV2aWNlX3R5cGUgPSAiY3B1
IjsKCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE3IjsKCQkJZW5hYmxlLW1ldGhvZCA9
ICJxY29tLGFybS1jb3J0ZXgtYWNjIjsKCQkJcmVnID0gPCAweDAwID47CgkJCWNsb2NrcyA9
IDwgMHgwMiAweDA5ID47CgkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwgMHgwMCA+OwoJCX07CgoJ
CWNwdUAxIHsKCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKCQkJY29tcGF0aWJsZSA9ICJhcm0s
Y29ydGV4LWE3IjsKCQkJZW5hYmxlLW1ldGhvZCA9ICJxY29tLGFybS1jb3J0ZXgtYWNjIjsK
CQkJcmVnID0gPCAweDAxID47CgkJCWNsb2NrcyA9IDwgMHgwMiAweDA5ID47CgkJCWNsb2Nr
LWZyZXF1ZW5jeSA9IDwgMHgwMCA+OwoJCX07CgoJCWNwdUAyIHsKCQkJZGV2aWNlX3R5cGUg
PSAiY3B1IjsKCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE3IjsKCQkJZW5hYmxlLW1l
dGhvZCA9ICJxY29tLGFybS1jb3J0ZXgtYWNjIjsKCQkJcmVnID0gPCAweDAyID47CgkJCWNs
b2NrcyA9IDwgMHgwMiAweDA5ID47CgkJCWNsb2NrLWZyZXF1ZW5jeSA9IDwgMHgwMCA+OwoJ
CX07CgoJCWNwdUAzIHsKCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKCQkJY29tcGF0aWJsZSA9
ICJhcm0sY29ydGV4LWE3IjsKCQkJZW5hYmxlLW1ldGhvZCA9ICJxY29tLGFybS1jb3J0ZXgt
YWNjIjsKCQkJcmVnID0gPCAweDAzID47CgkJCWNsb2NrcyA9IDwgMHgwMiAweDA5ID47CgkJ
CWNsb2NrLWZyZXF1ZW5jeSA9IDwgMHgwMCA+OwoJCX07Cgl9OwoKCWNsb2NrcyB7CgoJCWdj
Y19zbGVlcF9jbGtfc3JjIHsKCQkJY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7CgkJCWNs
b2NrLWZyZXF1ZW5jeSA9IDwgMHg3ZDAwID47CgkJCSNjbG9jay1jZWxscyA9IDwgMHgwMCA+
OwoJCQlwaGFuZGxlID0gPCAweDQ3ID47CgkJfTsKCgkJeG8gewoJCQljb21wYXRpYmxlID0g
ImZpeGVkLWNsb2NrIjsKCQkJY2xvY2stZnJlcXVlbmN5ID0gPCAweDJkYzZjMDAgPjsKCQkJ
I2Nsb2NrLWNlbGxzID0gPCAweDAwID47CgkJfTsKCX07CgoJc29jIHsKCQkjYWRkcmVzcy1j
ZWxscyA9IDwgMHgwMSA+OwoJCSNzaXplLWNlbGxzID0gPCAweDAxID47CgkJcmFuZ2VzOwoJ
CWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7CgoJCWFkLWhvYy1idXNANTAwMDAwIHsKCQkJ
Y29tcGF0aWJsZSA9ICJxY29tLG1zbS1idXMtZGV2aWNlIjsKCQkJcmVnID0gPCAweDU4MDAw
MCAweDE0MDAwIDB4NTAwMDAwIDB4MTEwMDAgPjsKCQkJcmVnLW5hbWVzID0gInNub2MtYmFz
ZVwwcGNub2MtYmFzZSI7CgoJCQlmYWItcGNub2MgewoJCQkJY2VsbC1pZCA9IDwgMHgxMDAw
ID47CgkJCQlsYWJlbCA9ICJmYWItcGNub2MiOwoJCQkJcWNvbSxmYWItZGV2OwoJCQkJcWNv
bSxiYXNlLW5hbWUgPSAicGNub2MtYmFzZSI7CgkJCQlxY29tLGJ5cGFzcy1xb3MtcHJnOwoJ
CQkJcWNvbSxidXMtdHlwZSA9IDwgMHgwMSA+OwoJCQkJcWNvbSxxb3Mtb2ZmID0gPCAweDEw
MDAgPjsKCQkJCXFjb20sYmFzZS1vZmZzZXQgPSA8IDB4MDAgPjsKCQkJCWNsb2NrczsKCQkJ
CXBoYW5kbGUgPSA8IDB4MDQgPjsKCQkJfTsKCgkJCWZhYi1zbm9jIHsKCQkJCWNlbGwtaWQg
PSA8IDB4NDAwID47CgkJCQlsYWJlbCA9ICJmYWItc25vYyI7CgkJCQlxY29tLGZhYi1kZXY7
CgkJCQlxY29tLGJhc2UtbmFtZSA9ICJzbm9jLWJhc2UiOwoJCQkJcWNvbSxieXBhc3MtcW9z
LXByZzsKCQkJCXFjb20sYnVzLXR5cGUgPSA8IDB4MDEgPjsKCQkJCXFjb20scW9zLW9mZiA9
IDwgMHg4MCA+OwoJCQkJcWNvbSxiYXNlLW9mZnNldCA9IDwgMHgwMCA+OwoJCQkJY2xvY2tz
OwoJCQkJcGhhbmRsZSA9IDwgMHgzMSA+OwoJCQl9OwoKCQkJbWFzLWJsc3AtYmFtIHsKCQkJ
CWNlbGwtaWQgPSA8IDB4NmQgPjsKCQkJCWxhYmVsID0gIm1hcy1ibHNwLWJhbSI7CgkJCQlx
Y29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxj
b25uZWN0aW9ucyA9IDwgMHgwMyA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJ
CQlxY29tLG1hcy1ycG0taWQgPSA8IDB4ODIgPjsKCQkJCXFjb20sYmxhY2tsaXN0ID0gPCAw
eDA1IDB4MDYgMHgwNyAweDA4IDB4MDkgMHgwYSAweDBiIDB4MGMgMHgwZCAweDBlIDB4MGYg
MHgxMCAweDExIDB4MTIgMHgxMyAweDE0IDB4MTUgMHgxNiAweDE3IDB4MTggMHgxOSAweDFh
IDB4MWIgMHgxYyAweDFkIDB4MWUgMHgxZiAweDIwIDB4MjEgMHgyMiAweDIzIDB4MjQgMHgy
NSAweDI2IDB4MjcgMHgyOCAweDI5IDB4MmEgPjsKCQkJfTsKCgkJCW1hcy11c2IyLWJhbSB7
CgkJCQljZWxsLWlkID0gPCAweDZlID47CgkJCQlsYWJlbCA9ICJtYXMtdXNiMi1iYW0iOwoJ
CQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwOCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFj
b20scXBvcnQgPSA8IDB4MGYgPjsKCQkJCXFjb20scW9zLW1vZGUgPSAiZml4ZWQiOwoJCQkJ
cWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyYiA+OwoJCQkJcWNvbSxwcmlvMSA9IDwgMHgwMSA+
OwoJCQkJcWNvbSxwcmlvMCA9IDwgMHgwMSA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0
ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4ODMgPjsKCQkJCXFjb20sYmxhY2tsaXN0
ID0gPCAweDA1IDB4MDYgMHgwNyAweDA4IDB4MDkgMHgwYSAweDBiIDB4MGMgMHgwZCAweDBl
IDB4MGYgMHgxMCAweDExIDB4MTIgMHgxMyAweDE0IDB4MTUgMHgxNiAweDE3IDB4MTggMHgx
OSAweDFhIDB4MWIgMHgxYyAweDFkIDB4MWUgMHgxZiAweDIwIDB4MjEgMHgyMiAweDIzIDB4
MjQgMHgyNSAweDI2IDB4MjcgMHgyOCAweDI5IDB4MmEgPjsKCQkJfTsKCgkJCW1hcy1hZHNz
LWRtYTAgewoJCQkJY2VsbC1pZCA9IDwgMHg2ZiA+OwoJCQkJbGFiZWwgPSAibWFzLWFkc3Mt
ZG1hMCI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVk
OwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyYyA+OwoJCQkJcWNvbSxidXMtZGV2ID0g
PCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4ODQgPjsKCQkJCXFjb20sYmxh
Y2tsaXN0ID0gPCAweDA1IDB4MDYgMHgwNyAweDA4IDB4MDkgMHgwYSAweDBiIDB4MGMgMHgw
ZCAweDBlIDB4MGYgMHgxMCAweDExIDB4MTIgMHgxMyAweDE0IDB4MTUgMHgxNiAweDE3IDB4
MTggMHgxOSAweDFhIDB4MWIgMHgxYyAweDFkIDB4MWUgMHgxZiAweDIwIDB4MjEgMHgyMiAw
eDIzIDB4MjQgMHgyNSAweDI2IDB4MjcgMHgyOCAweDI5IDB4MmEgPjsKCQkJfTsKCgkJCW1h
cy1hZHNzLWRtYTEgewoJCQkJY2VsbC1pZCA9IDwgMHg3MCA+OwoJCQkJbGFiZWwgPSAibWFz
LWFkc3MtZG1hMSI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFw
LW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyYyA+OwoJCQkJcWNvbSxidXMt
ZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4ODUgPjsKCQkJCXFj
b20sYmxhY2tsaXN0ID0gPCAweDA1IDB4MDYgMHgwNyAweDA4IDB4MDkgMHgwYSAweDBiIDB4
MGMgMHgwZCAweDBlIDB4MGYgMHgxMCAweDExIDB4MTIgMHgxMyAweDE0IDB4MTUgMHgxNiAw
eDE3IDB4MTggMHgxOSAweDFhIDB4MWIgMHgxYyAweDFkIDB4MWUgMHgxZiAweDIwIDB4MjEg
MHgyMiAweDIzIDB4MjQgMHgyNSAweDI2IDB4MjcgMHgyOCAweDI5IDB4MmEgPjsKCQkJfTsK
CgkJCW1hcy1hZHNzLWRtYTIgewoJCQkJY2VsbC1pZCA9IDwgMHg3MSA+OwoJCQkJbGFiZWwg
PSAibWFzLWFkc3MtZG1hMiI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlx
Y29tLGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyYyA+OwoJCQkJcWNv
bSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4ODYgPjsK
CQkJCXFjb20sYmxhY2tsaXN0ID0gPCAweDA1IDB4MDYgMHgwNyAweDA4IDB4MDkgMHgwYSAw
eDBiIDB4MGMgMHgwZCAweDBlIDB4MGYgMHgxMCAweDExIDB4MTIgMHgxMyAweDE0IDB4MTUg
MHgxNiAweDE3IDB4MTggMHgxOSAweDFhIDB4MWIgMHgxYyAweDFkIDB4MWUgMHgxZiAweDIw
IDB4MjEgMHgyMiAweDIzIDB4MjQgMHgyNSAweDI2IDB4MjcgMHgyOCAweDI5IDB4MmEgPjsK
CQkJfTsKCgkJCW1hcy1hZHNzLWRtYTMgewoJCQkJY2VsbC1pZCA9IDwgMHg3MiA+OwoJCQkJ
bGFiZWwgPSAibWFzLWFkc3MtZG1hMyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47
CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyYyA+OwoJ
CQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4
ODcgPjsKCQkJCXFjb20sYmxhY2tsaXN0ID0gPCAweDA1IDB4MDYgMHgwNyAweDA4IDB4MDkg
MHgwYSAweDBiIDB4MGMgMHgwZCAweDBlIDB4MGYgMHgxMCAweDExIDB4MTIgMHgxMyAweDE0
IDB4MTUgMHgxNiAweDE3IDB4MTggMHgxOSAweDFhIDB4MWIgMHgxYyAweDFkIDB4MWUgMHgx
ZiAweDIwIDB4MjEgMHgyMiAweDIzIDB4MjQgMHgyNSAweDI2IDB4MjcgMHgyOCAweDI5IDB4
MmEgPjsKCQkJfTsKCgkJCW1hcy1xcGljLWJhbSB7CgkJCQljZWxsLWlkID0gPCAweDczID47
CgkJCQlsYWJlbCA9ICJtYXMtcXBpYy1iYW0iOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgw
NCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sY29ubmVjdGlvbnMgPSA8IDB4MDMg
PjsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0g
PCAweDg4ID47CgkJCQlxY29tLGJsYWNrbGlzdCA9IDwgMHgwNSAweDA2IDB4MDcgMHgwOCAw
eDA5IDB4MGEgMHgwYiAweDBjIDB4MGQgMHgwZSAweDBmIDB4MTAgMHgxMSAweDEyIDB4MTMg
MHgxNCAweDE1IDB4MTYgMHgxNyAweDE4IDB4MTkgMHgxYSAweDFiIDB4MWMgMHgxZCAweDFl
IDB4MWYgMHgyMCAweDIxIDB4MjIgMHgyMyAweDI0IDB4MjUgMHgyNiAweDI3IDB4MjggMHgy
OSAweDJhID47CgkJCX07CgoJCQltYXMtc3BkbSB7CgkJCQljZWxsLWlkID0gPCAweDI0ID47
CgkJCQlsYWJlbCA9ICJtYXMtc3BkbSI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47
CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgwMyA+OwoJ
CQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4
MzIgPjsKCQkJCXFjb20sYmxhY2tsaXN0ID0gPCAweDA1IDB4MDYgMHgwNyAweDA4IDB4MDkg
MHgwYSAweDBiIDB4MGMgMHgwZCAweDBlIDB4MGYgMHgxMCAweDExIDB4MTIgMHgxMyAweDE0
IDB4MTUgMHgxNiAweDE3IDB4MTggMHgxOSAweDFhIDB4MWIgMHgxYyAweDFkIDB4MWUgMHgx
ZiAweDIwIDB4MjEgMHgyMiAweDIzIDB4MjQgMHgyNSAweDI2IDB4MjcgMHgyOCAweDI5IDB4
MmEgPjsKCQkJfTsKCgkJCW1hcy1wY25vYy1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHg1OCA+
OwoJCQkJbGFiZWwgPSAibWFzLXBjbm9jLWNmZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAw
eDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgy
NiA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQg
PSA8IDB4NTQgPjsKCQkJfTsKCgkJCW1hcy10aWMgewoJCQkJY2VsbC1pZCA9IDwgMHg0ZCA+
OwoJCQkJbGFiZWwgPSAibWFzLXRpYyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47
CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyZCAweDJi
ID47CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sbWFzLXJwbS1pZCA9
IDwgMHgzMyA+OwoJCQl9OwoKCQkJbWFzLXNkY2MtYmFtIHsKCQkJCWNlbGwtaWQgPSA8IDB4
NzQgPjsKCQkJCWxhYmVsID0gIm1hcy1zZGNjLWJhbSI7CgkJCQlxY29tLGJ1c3dpZHRoID0g
PCAweDA4ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxxcG9ydCA9IDwgMHgwZSA+
OwoJCQkJcWNvbSxxb3MtbW9kZSA9ICJmaXhlZCI7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0g
PCAweDJiID47CgkJCQlxY29tLHByaW8xID0gPCAweDAwID47CgkJCQlxY29tLHByaW8wID0g
PCAweDAwID47CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sbWFzLXJw
bS1pZCA9IDwgMHg4OSA+OwoJCQkJcWNvbSxibGFja2xpc3QgPSA8IDB4MDUgMHgwNiAweDA3
IDB4MDggMHgwOSAweDBhIDB4MGIgMHgwYyAweDBkIDB4MGUgMHgwZiAweDEwIDB4MTEgMHgx
MiAweDEzIDB4MTQgMHgxNSAweDE2IDB4MTcgMHgxOCAweDE5IDB4MWEgMHgxYiAweDFjIDB4
MWQgMHgxZSAweDFmIDB4MjAgMHgyMSAweDIyIDB4MjMgMHgyNCAweDI1IDB4MjYgMHgyNyAw
eDI4IDB4MjkgMHgyYSA+OwoJCQl9OwoKCQkJbWFzLXNub2MtcGNub2MgewoJCQkJY2VsbC1p
ZCA9IDwgMHgyNzM5ID47CgkJCQlsYWJlbCA9ICJtYXMtc25vYy1wY25vYyI7CgkJCQlxY29t
LGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxxcG9y
dCA9IDwgMHgxMCA+OwoJCQkJcWNvbSxxb3MtbW9kZSA9ICJmaXhlZCI7CgkJCQlxY29tLGNv
bm5lY3Rpb25zID0gPCAweDJkID47CgkJCQlxY29tLHByaW8xID0gPCAweDAwID47CgkJCQlx
Y29tLHByaW8wID0gPCAweDAwID47CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJ
CXFjb20sbWFzLXJwbS1pZCA9IDwgMHg0ZCA+OwoJCQl9OwoKCQkJbWFzLXFkc3MtZGFwIHsK
CQkJCWNlbGwtaWQgPSA8IDB4NGMgPjsKCQkJCWxhYmVsID0gIm1hcy1xZHNzLWRhcCI7CgkJ
CQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNv
bSxjb25uZWN0aW9ucyA9IDwgMHgyZCAweDJiID47CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4
MDQgPjsKCQkJCXFjb20sbWFzLXJwbS1pZCA9IDwgMHgzMSA+OwoJCQl9OwoKCQkJbWFzLWRk
cmMtc25vYyB7CgkJCQljZWxsLWlkID0gPCAweDc1ID47CgkJCQlsYWJlbCA9ICJtYXMtZGRy
Yy1zbm9jIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MTAgPjsKCQkJCXFjb20sYXAtb3du
ZWQ7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0gPCAweDJlIDB4MmYgMHgzMCA+OwoJCQkJcWNv
bSxidXMtZGV2ID0gPCAweDMxID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4OGEgPjsK
CQkJCXFjb20sYmxhY2tsaXN0ID0gPCAweDMyIDB4MzMgPjsKCQkJfTsKCgkJCW1hcy13c3Mt
MCB7CgkJCQljZWxsLWlkID0gPCAweDc2ID47CgkJCQlsYWJlbCA9ICJtYXMtd3NzLTAiOwoJ
CQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFj
b20scXBvcnQgPSA8IDB4MWEgPjsKCQkJCXFjb20scW9zLW1vZGUgPSAiZml4ZWQiOwoJCQkJ
cWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyZSAweDMyID47CgkJCQlxY29tLHByaW8xID0gPCAw
eDAwID47CgkJCQlxY29tLHByaW8wID0gPCAweDAwID47CgkJCQlxY29tLGJ1cy1kZXYgPSA8
IDB4MzEgPjsKCQkJCXFjb20sbWFzLXJwbS1pZCA9IDwgMHg4YiA+OwoJCQkJcWNvbSxibGFj
a2xpc3QgPSA8IDB4MzQgMHgzNSAweDMwIDB4MzYgMHgzNyAweDM4IDB4MzMgPjsKCQkJfTsK
CgkJCW1hcy13c3MtMSB7CgkJCQljZWxsLWlkID0gPCAweDc3ID47CgkJCQlsYWJlbCA9ICJt
YXMtd3NzLTEiOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1v
d25lZDsKCQkJCXFjb20scXBvcnQgPSA8IDB4MWIgPjsKCQkJCXFjb20scW9zLW1vZGUgPSAi
Zml4ZWQiOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyZSAweDMyID47CgkJCQlxY29t
LHByaW8xID0gPCAweDAwID47CgkJCQlxY29tLHByaW8wID0gPCAweDAwID47CgkJCQlxY29t
LGJ1cy1kZXYgPSA8IDB4MzEgPjsKCQkJCXFjb20sbWFzLXJwbS1pZCA9IDwgMHg4YyA+OwoJ
CQkJcWNvbSxibGFja2xpc3QgPSA8IDB4MzQgMHgzNSAweDMwIDB4MzYgMHgzNyAweDM4IDB4
MzMgPjsKCQkJfTsKCgkJCW1hcy1jcnlwdG8gewoJCQkJY2VsbC1pZCA9IDwgMHgyZiA+OwoJ
CQkJbGFiZWwgPSAibWFzLWNyeXB0byI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA4ID47
CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxxcG9ydCA9IDwgMHgwNSA+OwoJCQkJcWNv
bSxxb3MtbW9kZSA9ICJmaXhlZCI7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0gPCAweDJlIDB4
MmYgMHgzMiA+OwoJCQkJcWNvbSxwcmlvMSA9IDwgMHgwMCA+OwoJCQkJcWNvbSxwcmlvMCA9
IDwgMHgwMCA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDMxID47CgkJCQlxY29tLG1hcy1y
cG0taWQgPSA8IDB4MTcgPjsKCQkJCXFjb20sYmxhY2tsaXN0ID0gPCAweDM0IDB4MzUgMHgz
OSAweDMwIDB4M2EgMHgzOCAweDMzID47CgkJCX07CgoJCQltYXMtZXNzIHsKCQkJCWNlbGwt
aWQgPSA8IDB4NzggPjsKCQkJCWxhYmVsID0gIm1hcy1lc3MiOwoJCQkJcWNvbSxidXN3aWR0
aCA9IDwgMHgwOCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20scXBvcnQgPSA8IDB4
MmMgPjsKCQkJCXFjb20scW9zLW1vZGUgPSAiZml4ZWQiOwoJCQkJcWNvbSxjb25uZWN0aW9u
cyA9IDwgMHgyZSAweDMyID47CgkJCQlxY29tLHByaW8xID0gPCAweDAwID47CgkJCQlxY29t
LHByaW8wID0gPCAweDAwID47CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MzEgPjsKCQkJCXFj
b20sbWFzLXJwbS1pZCA9IDwgMHg4ZCA+OwoJCQkJcWNvbSxibGFja2xpc3QgPSA8IDB4MzQg
MHgzNSAweDM5IDB4MzAgMHgzYSAweDM2IDB4MzcgMHgzOCAweDMzID47CgkJCX07CgoJCQlt
YXMtcGNpZSB7CgkJCQljZWxsLWlkID0gPCAweDJkID47CgkJCQlsYWJlbCA9ICJtYXMtcGNp
ZSI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA4ID47CgkJCQlxY29tLGFwLW93bmVkOwoJ
CQkJcWNvbSxxcG9ydCA9IDwgMHgwNiA+OwoJCQkJcWNvbSxxb3MtbW9kZSA9ICJmaXhlZCI7
CgkJCQlxY29tLGNvbm5lY3Rpb25zID0gPCAweDJlIDB4MzIgPjsKCQkJCXFjb20scHJpbzEg
PSA8IDB4MDAgPjsKCQkJCXFjb20scHJpbzAgPSA8IDB4MDAgPjsKCQkJCXFjb20sYnVzLWRl
diA9IDwgMHgzMSA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDhlID47CgkJCQlxY29t
LGJsYWNrbGlzdCA9IDwgMHgzNCAweDM1IDB4MzAgMHgzYSAweDM2IDB4MzcgMHgzOCAweDMz
ID47CgkJCX07CgoJCQltYXMtdXNiMyB7CgkJCQljZWxsLWlkID0gPCAweDNkID47CgkJCQls
YWJlbCA9ICJtYXMtdXNiMyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA4ID47CgkJCQlx
Y29tLGFwLW93bmVkOwoJCQkJcWNvbSxxcG9ydCA9IDwgMHgwNyA+OwoJCQkJcWNvbSxxb3Mt
bW9kZSA9ICJmaXhlZCI7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0gPCAweDJlIDB4MzIgPjsK
CQkJCXFjb20scHJpbzEgPSA8IDB4MDAgPjsKCQkJCXFjb20scHJpbzAgPSA8IDB4MDAgPjsK
CQkJCXFjb20sYnVzLWRldiA9IDwgMHgzMSA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAw
eDIwID47CgkJCQlxY29tLGJsYWNrbGlzdCA9IDwgMHgzNCAweDM1IDB4MzkgMHgzMCAweDNh
IDB4MzYgMHgzNyAweDM4IDB4MzMgPjsKCQkJfTsKCgkJCW1hcy1xZHNzLWV0ciB7CgkJCQlj
ZWxsLWlkID0gPCAweDNjID47CgkJCQlsYWJlbCA9ICJtYXMtcWRzcy1ldHIiOwoJCQkJcWNv
bSxidXN3aWR0aCA9IDwgMHgwOCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20scXBv
cnQgPSA8IDB4MjIwID47CgkJCQlxY29tLHFvcy1tb2RlID0gImZpeGVkIjsKCQkJCXFjb20s
Y29ubmVjdGlvbnMgPSA8IDB4M2IgPjsKCQkJCXFjb20scHJpbzEgPSA8IDB4MDAgPjsKCQkJ
CXFjb20scHJpbzAgPSA8IDB4MDAgPjsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgzMSA+OwoJ
CQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDFmID47CgkJCQlxY29tLGJsYWNrbGlzdCA9IDwg
MHgzNCAweDM1IDB4MzkgMHgzMCAweDNhIDB4MzYgMHgzNyAweDM4IDB4MzMgPjsKCQkJfTsK
CgkJCW1hcy1xZHNzLWJhbW5kcCB7CgkJCQljZWxsLWlkID0gPCAweDc5ID47CgkJCQlsYWJl
bCA9ICJtYXMtcWRzcy1iYW1uZHAiOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20scXBvcnQgPSA8IDB4MjQwID47CgkJCQlxY29t
LHFvcy1tb2RlID0gImZpeGVkIjsKCQkJCXFjb20sY29ubmVjdGlvbnMgPSA8IDB4M2IgPjsK
CQkJCXFjb20scHJpbzEgPSA8IDB4MDAgPjsKCQkJCXFjb20scHJpbzAgPSA8IDB4MDAgPjsK
CQkJCXFjb20sYnVzLWRldiA9IDwgMHgzMSA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAw
eDhmID47CgkJCQlxY29tLGJsYWNrbGlzdCA9IDwgMHgzNCAweDM1IDB4MzkgMHgzMCAweDNh
IDB4MzYgMHgzNyAweDM4IDB4MzMgPjsKCQkJfTsKCgkJCW1hcy1wY25vYy1zbm9jIHsKCQkJ
CWNlbGwtaWQgPSA8IDB4MjcxYSA+OwoJCQkJbGFiZWwgPSAibWFzLXBjbm9jLXNub2MiOwoJ
CQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFj
b20scXBvcnQgPSA8IDB4MTgwID47CgkJCQlxY29tLHFvcy1tb2RlID0gImZpeGVkIjsKCQkJ
CXFjb20sY29ubmVjdGlvbnMgPSA8IDB4MmUgMHgyZiAweDMyID47CgkJCQlxY29tLHByaW8x
ID0gPCAweDAwID47CgkJCQlxY29tLHByaW8wID0gPCAweDAwID47CgkJCQlxY29tLGJ1cy1k
ZXYgPSA8IDB4MzEgPjsKCQkJCXFjb20sbWFzLXJwbS1pZCA9IDwgMHgxZCA+OwoJCQkJcWNv
bSxibGFja2xpc3QgPSA8IDB4MzMgPjsKCQkJfTsKCgkJCW1hcy1zbm9jLWNmZyB7CgkJCQlj
ZWxsLWlkID0gPCAweDdhID47CgkJCQlsYWJlbCA9ICJtYXMtc25vYy1jZmciOwoJCQkJcWNv
bSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sY29u
bmVjdGlvbnMgPSA8IDB4MzMgPjsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgzMSA+OwoJCQkJ
cWNvbSxtYXMtcnBtLWlkID0gPCAweDkwID47CgkJCX07CgoJCQlwY25vYy1tLTAgewoJCQkJ
Y2VsbC1pZCA9IDwgMHgyNzFlID47CgkJCQlsYWJlbCA9ICJwY25vYy1tLTAiOwoJCQkJcWNv
bSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20scXBv
cnQgPSA8IDB4MGMgPjsKCQkJCXFjb20scW9zLW1vZGUgPSAiZml4ZWQiOwoJCQkJcWNvbSxj
b25uZWN0aW9ucyA9IDwgMHgyYiA+OwoJCQkJcWNvbSxwcmlvMSA9IDwgMHgwMSA+OwoJCQkJ
cWNvbSxwcmlvMCA9IDwgMHgwMSA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJ
CQlxY29tLG1hcy1ycG0taWQgPSA8IDB4NTcgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwg
MHg3NCA+OwoJCQkJcGhhbmRsZSA9IDwgMHgwMyA+OwoJCQl9OwoKCQkJcGNub2MtbS0xIHsK
CQkJCWNlbGwtaWQgPSA8IDB4MjcxZiA+OwoJCQkJbGFiZWwgPSAicGNub2MtbS0xIjsKCQkJ
CXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29t
LHFwb3J0ID0gPCAweDBkID47CgkJCQlxY29tLHFvcy1tb2RlID0gImZpeGVkIjsKCQkJCXFj
b20sY29ubmVjdGlvbnMgPSA8IDB4MmIgPjsKCQkJCXFjb20scHJpbzEgPSA8IDB4MDEgPjsK
CQkJCXFjb20scHJpbzAgPSA8IDB4MDEgPjsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+
OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDU4ID47CgkJCQlxY29tLHNsdi1ycG0taWQg
PSA8IDB4NzUgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MmMgPjsKCQkJfTsKCgkJCXBjbm9jLWlu
dC0wIHsKCQkJCWNlbGwtaWQgPSA8IDB4MjcxYyA+OwoJCQkJbGFiZWwgPSAicGNub2MtaW50
LTAiOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwOCA+OwoJCQkJcWNvbSxhcC1vd25lZDsK
CQkJCXFjb20sY29ubmVjdGlvbnMgPSA8IDB4M2MgMHgzZCAweDNlIDB4M2YgMHg0MCAweDQx
IDB4NDIgMHg0MyAweDQ0IDB4NDUgPjsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDU1ID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8
IDB4NzIgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MmQgPjsKCQkJfTsKCgkJCXBjbm9jLXMtMCB7
CgkJCQljZWxsLWlkID0gPCAweDI3MjIgPjsKCQkJCWxhYmVsID0gInBjbm9jLXMtMCI7CgkJ
CQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNv
bSxjb25uZWN0aW9ucyA9IDwgMHgyMiAweDA1IDB4MWIgMHgxNyA+OwoJCQkJcWNvbSxidXMt
ZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4NTkgPjsKCQkJCXFj
b20sc2x2LXJwbS1pZCA9IDwgMHg3NiA+OwoJCQkJcGhhbmRsZSA9IDwgMHgzZSA+OwoJCQl9
OwoKCQkJcGNub2Mtcy0xIHsKCQkJCWNlbGwtaWQgPSA8IDB4MjcyMyA+OwoJCQkJbGFiZWwg
PSAicGNub2Mtcy0xIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20s
YXAtb3duZWQ7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0gPCAweDE5IDB4MTIgMHgxMCA+OwoJ
CQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4
NWEgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHg3NyA+OwoJCQkJcGhhbmRsZSA9IDwg
MHgzYyA+OwoJCQl9OwoKCQkJcGNub2Mtcy0yIHsKCQkJCWNlbGwtaWQgPSA8IDB4MjcyNCA+
OwoJCQkJbGFiZWwgPSAicGNub2Mtcy0yIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQg
PjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0gPCAweDFjIDB4
MWQgMHgwZSAweDFhID47CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20s
bWFzLXJwbS1pZCA9IDwgMHg1YiA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweDc4ID47
CgkJCQlwaGFuZGxlID0gPCAweDNkID47CgkJCX07CgoJCQlwY25vYy1zLTMgewoJCQkJY2Vs
bC1pZCA9IDwgMHgyNzI1ID47CgkJCQlsYWJlbCA9ICJwY25vYy1zLTMiOwoJCQkJcWNvbSxi
dXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sY29ubmVj
dGlvbnMgPSA8IDB4MTMgMHgxNiAweDJhIDB4MjcgPjsKCQkJCXFjb20sYnVzLWRldiA9IDwg
MHgwNCA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDVjID47CgkJCQlxY29tLHNsdi1y
cG0taWQgPSA8IDB4NzkgPjsKCQkJCXBoYW5kbGUgPSA8IDB4NDUgPjsKCQkJfTsKCgkJCXBj
bm9jLXMtNCB7CgkJCQljZWxsLWlkID0gPCAweDI3MjYgPjsKCQkJCWxhYmVsID0gInBjbm9j
LXMtNCI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVk
OwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgwNyAweDIxIDB4MjMgPjsKCQkJCXFjb20s
YnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDVkID47CgkJ
CQlxY29tLHNsdi1ycG0taWQgPSA8IDB4N2EgPjsKCQkJCXBoYW5kbGUgPSA8IDB4M2YgPjsK
CQkJfTsKCgkJCXBjbm9jLXMtNSB7CgkJCQljZWxsLWlkID0gPCAweDI3M2YgPjsKCQkJCWxh
YmVsID0gInBjbm9jLXMtNSI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlx
Y29tLGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyMCAweDA4IDB4MDYg
MHgxMSA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLG1hcy1ycG0t
aWQgPSA8IDB4ODEgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhiZCA+OwoJCQkJcGhh
bmRsZSA9IDwgMHg0MCA+OwoJCQl9OwoKCQkJcGNub2Mtcy02IHsKCQkJCWNlbGwtaWQgPSA8
IDB4Mjc0MCA+OwoJCQkJbGFiZWwgPSAicGNub2Mtcy02IjsKCQkJCXFjb20sYnVzd2lkdGgg
PSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0g
PCAweDBiIDB4MTUgMHgxZSAweDBkIDB4MGEgPjsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgw
NCA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDVlID47CgkJCQlxY29tLHNsdi1ycG0t
aWQgPSA8IDB4N2IgPjsKCQkJCXBoYW5kbGUgPSA8IDB4NDEgPjsKCQkJfTsKCgkJCXBjbm9j
LXMtNyB7CgkJCQljZWxsLWlkID0gPCAweDI3NTIgPjsKCQkJCWxhYmVsID0gInBjbm9jLXMt
NyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJ
CQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgwZiAweDI1IDB4MWYgPjsKCQkJCXFjb20sYnVz
LWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAweDVmID47CgkJCQlx
Y29tLHNsdi1ycG0taWQgPSA8IDB4N2MgPjsKCQkJCXBoYW5kbGUgPSA8IDB4NDIgPjsKCQkJ
fTsKCgkJCXBjbm9jLXMtOCB7CgkJCQljZWxsLWlkID0gPCAweDI3MjcgPjsKCQkJCWxhYmVs
ID0gInBjbm9jLXMtOCI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29t
LGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgyOSAweDBjIDB4MjQgPjsK
CQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxtYXMtcnBtLWlkID0gPCAw
eDYwID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4N2QgPjsKCQkJCXBoYW5kbGUgPSA8
IDB4NDMgPjsKCQkJfTsKCgkJCXBjbm9jLXMtOSB7CgkJCQljZWxsLWlkID0gPCAweDI3Mjgg
PjsKCQkJCWxhYmVsID0gInBjbm9jLXMtOSI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0
ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxjb25uZWN0aW9ucyA9IDwgMHgwOSAw
eDI4IDB4MTggMHgxNCA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29t
LG1hcy1ycG0taWQgPSA8IDB4NjEgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHg3ZSA+
OwoJCQkJcGhhbmRsZSA9IDwgMHg0NCA+OwoJCQl9OwoKCQkJc25vYy1pbnQtMCB7CgkJCQlj
ZWxsLWlkID0gPCAweDI3MTQgPjsKCQkJCWxhYmVsID0gInNub2MtaW50LTAiOwoJCQkJcWNv
bSxidXN3aWR0aCA9IDwgMHgwOCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sY29u
bmVjdGlvbnMgPSA8IDB4NDYgMHgzYSA+OwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDMxID47
CgkJCQlxY29tLG1hcy1ycG0taWQgPSA8IDB4NjMgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9
IDwgMHg4MiA+OwoJCQkJcGhhbmRsZSA9IDwgMHgyZSA+OwoJCQl9OwoKCQkJc25vYy1pbnQt
MSB7CgkJCQljZWxsLWlkID0gPCAweDI3MTUgPjsKCQkJCWxhYmVsID0gInNub2MtaW50LTEi
OwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwOCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJ
CXFjb20sY29ubmVjdGlvbnMgPSA8IDB4MzggMHgzOSAweDM1IDB4MzQgMHgzNiAweDM3ID47
CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MzEgPjsKCQkJCXFjb20sbWFzLXJwbS1pZCA9IDwg
MHg2NCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweDgzID47CgkJCQlwaGFuZGxlID0g
PCAweDJmID47CgkJCX07CgoJCQlxZHNzLWludCB7CgkJCQljZWxsLWlkID0gPCAweDI3MTkg
PjsKCQkJCWxhYmVsID0gInFkc3MtaW50IjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDgg
PjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGNvbm5lY3Rpb25zID0gPCAweDJlIDB4
MzIgPjsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgzMSA+OwoJCQkJcWNvbSxtYXMtcnBtLWlk
ID0gPCAweDYyID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4ODAgPjsKCQkJCXBoYW5k
bGUgPSA8IDB4M2IgPjsKCQkJfTsKCgkJCXNsdi1jbGstY3RsIHsKCQkJCWNlbGwtaWQgPSA8
IDB4MjZjID47CgkJCQlsYWJlbCA9ICJzbHYtY2xrLWN0bCI7CgkJCQlxY29tLGJ1c3dpZHRo
ID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAw
eDA0ID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4MmYgPjsKCQkJCXBoYW5kbGUgPSA8
IDB4MjIgPjsKCQkJfTsKCgkJCXNsdi1zZWN1cml0eSB7CgkJCQljZWxsLWlkID0gPCAweDI2
ZSA+OwoJCQkJbGFiZWwgPSAic2x2LXNlY3VyaXR5IjsKCQkJCXFjb20sYnVzd2lkdGggPSA8
IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQg
PjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHgzMSA+OwoJCQkJcGhhbmRsZSA9IDwgMHgx
YiA+OwoJCQl9OwoKCQkJc2x2LXRjc3IgewoJCQkJY2VsbC1pZCA9IDwgMHgyNmYgPjsKCQkJ
CWxhYmVsID0gInNsdi10Y3NyIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJ
CXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20s
c2x2LXJwbS1pZCA9IDwgMHgzMiA+OwoJCQkJcGhhbmRsZSA9IDwgMHgwNSA+OwoJCQl9OwoK
CQkJc2x2LXRsbW0gewoJCQkJY2VsbC1pZCA9IDwgMHgyNzAgPjsKCQkJCWxhYmVsID0gInNs
di10bG1tIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3du
ZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9
IDwgMHgzMyA+OwoJCQkJcGhhbmRsZSA9IDwgMHgxNyA+OwoJCQl9OwoKCQkJc2x2LWltZW0t
Y2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4MjczID47CgkJCQlsYWJlbCA9ICJzbHYtaW1lbS1j
ZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsK
CQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAw
eDM2ID47CgkJCQlwaGFuZGxlID0gPCAweDEwID47CgkJCX07CgoJCQlzbHYtcHJuZyB7CgkJ
CQljZWxsLWlkID0gPCAweDI2YSA+OwoJCQkJbGFiZWwgPSAic2x2LXBybmciOwoJCQkJcWNv
bSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVz
LWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweDJjID47CgkJCQlw
aGFuZGxlID0gPCAweDEyID47CgkJCX07CgoJCQlzbHYtcHJuZy1hcHUtY2ZnIHsKCQkJCWNl
bGwtaWQgPSA8IDB4MmNjID47CgkJCQlsYWJlbCA9ICJzbHYtcHJuZy1hcHUtY2ZnIjsKCQkJ
CXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29t
LGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhiZSA+OwoJ
CQkJcGhhbmRsZSA9IDwgMHgxOSA+OwoJCQl9OwoKCQkJc2x2LWJvb3Qtcm9tIHsKCQkJCWNl
bGwtaWQgPSA8IDB4Mjc2ID47CgkJCQlsYWJlbCA9ICJzbHYtYm9vdC1yb20iOwoJCQkJcWNv
bSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVz
LWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweDM5ID47CgkJCQlw
aGFuZGxlID0gPCAweDFhID47CgkJCX07CgoJCQlzbHYtc3BkbSB7CgkJCQljZWxsLWlkID0g
PCAweDI3OSA+OwoJCQkJbGFiZWwgPSAic2x2LXNwZG0iOwoJCQkJcWNvbSxidXN3aWR0aCA9
IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgw
NCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweDNjID47CgkJCQlwaGFuZGxlID0gPCAw
eDFjID47CgkJCX07CgoJCQlzbHYtcGNub2MtY2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4Mjgx
ID47CgkJCQlsYWJlbCA9ICJzbHYtcGNub2MtY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8
IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQg
PjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHg0NSA+OwoJCQkJcGhhbmRsZSA9IDwgMHgw
ZSA+OwoJCQl9OwoKCQkJc2x2LXBjbm9jLW1wdS1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgy
Y2QgPjsKCQkJCWxhYmVsID0gInNsdi1wY25vYy1tcHUtY2ZnIjsKCQkJCXFjb20sYnVzd2lk
dGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8
IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhiZiA+OwoJCQkJcGhhbmRsZSA9
IDwgMHgxZCA+OwoJCQl9OwoKCQkJc2x2LWdjbnQgewoJCQkJY2VsbC1pZCA9IDwgMHgyY2Ug
PjsKCQkJCWxhYmVsID0gInNsdi1nY250IjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQg
PjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJ
CXFjb20sc2x2LXJwbS1pZCA9IDwgMHhjMCA+OwoJCQkJcGhhbmRsZSA9IDwgMHgxNiA+OwoJ
CQl9OwoKCQkJc2x2LXFkc3MtY2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4MjdiID47CgkJCQls
YWJlbCA9ICJzbHYtcWRzcy1jZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNv
bSxzbHYtcnBtLWlkID0gPCAweDNmID47CgkJCQlwaGFuZGxlID0gPCAweDEzID47CgkJCX07
CgoJCQlzbHYtc25vYy1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyODIgPjsKCQkJCWxhYmVs
ID0gInNsdi1zbm9jLWNmZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlx
Y29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLHNs
di1ycG0taWQgPSA8IDB4NDYgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MmEgPjsKCQkJfTsKCgkJ
CXNsdi1zbm9jLW1wdS1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyN2UgPjsKCQkJCWxhYmVs
ID0gInNsdi1zbm9jLW1wdS1jZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNv
bSxzbHYtcnBtLWlkID0gPCAweDQzID47CgkJCQlwaGFuZGxlID0gPCAweDI3ID47CgkJCX07
CgoJCQlzbHYtYWRzcy1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyY2YgPjsKCQkJCWxhYmVs
ID0gInNsdi1hZHNzLWNmZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlx
Y29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLHNs
di1ycG0taWQgPSA8IDB4YzEgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MDcgPjsKCQkJfTsKCgkJ
CXNsdi1hZHNzLWFwdSB7CgkJCQljZWxsLWlkID0gPCAweDJkMCA+OwoJCQkJbGFiZWwgPSAi
c2x2LWFkc3MtYXB1IjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20s
YXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJw
bS1pZCA9IDwgMHhjMiA+OwoJCQkJcGhhbmRsZSA9IDwgMHgyMyA+OwoJCQl9OwoKCQkJc2x2
LWFkc3Mtdm1pZG10LWNmZyB7CgkJCQljZWxsLWlkID0gPCAweDJkMCA+OwoJCQkJbGFiZWwg
PSAic2x2LWFkc3Mtdm1pZG10LWNmZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47
CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlx
Y29tLHNsdi1ycG0taWQgPSA8IDB4YzMgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MjEgPjsKCQkJ
fTsKCgkJCXNsdi1xaHNzLWFwdS1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZDEgPjsKCQkJ
CWxhYmVsID0gInNsdi1xaHNzLWFwdS1jZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgw
NCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweGM0ID47CgkJCQlwaGFuZGxlID0gPCAweDIwID47
CgkJCX07CgoJCQlzbHYtbWRpbyB7CgkJCQljZWxsLWlkID0gPCAweDJkMiA+OwoJCQkJbGFi
ZWwgPSAic2x2LW1kaW8iOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNv
bSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxzbHYt
cnBtLWlkID0gPCAweGM1ID47CgkJCQlwaGFuZGxlID0gPCAweDA2ID47CgkJCX07CgoJCQlz
bHYtZmVwaHktY2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4MmQzID47CgkJCQlsYWJlbCA9ICJz
bHYtZmVwaHktY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20s
YXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJw
bS1pZCA9IDwgMHhjNiA+OwoJCQkJcGhhbmRsZSA9IDwgMHgwOCA+OwoJCQl9OwoKCQkJc2x2
LXNyaWYgewoJCQkJY2VsbC1pZCA9IDwgMHgyZDQgPjsKCQkJCWxhYmVsID0gInNsdi1zcmlm
IjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJ
CQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhj
NyA+OwoJCQkJcGhhbmRsZSA9IDwgMHgxMSA+OwoJCQl9OwoKCQkJc2x2LWRkcmMtY2ZnIHsK
CQkJCWNlbGwtaWQgPSA8IDB4MmRiID47CgkJCQlsYWJlbCA9ICJzbHYtZGRyYy1jZmciOwoJ
CQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFj
b20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweGM4ID47
CgkJCQlwaGFuZGxlID0gPCAweDBkID47CgkJCX07CgoJCQlzbHYtZGRyYy1hcHUtY2ZnIHsK
CQkJCWNlbGwtaWQgPSA8IDB4MmRjID47CgkJCQlsYWJlbCA9ICJzbHYtZGRyYy1hcHUtY2Zn
IjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJ
CQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhj
OSA+OwoJCQkJcGhhbmRsZSA9IDwgMHgxNSA+OwoJCQl9OwoKCQkJc2x2LWRkcmMtbXB1MC1j
ZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZGQgPjsKCQkJCWxhYmVsID0gInNsdi1kZHJjLW1w
dTAtY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3du
ZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9
IDwgMHhjYSA+OwoJCQkJcGhhbmRsZSA9IDwgMHgwYiA+OwoJCQl9OwoKCQkJc2x2LWRkcmMt
bXB1MS1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZGUgPjsKCQkJCWxhYmVsID0gInNsdi1k
ZHJjLW1wdTEtY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20s
YXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJw
bS1pZCA9IDwgMHhjYiA+OwoJCQkJcGhhbmRsZSA9IDwgMHgwYSA+OwoJCQl9OwoKCQkJc2x2
LWRkcmMtbXB1Mi1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZGUgPjsKCQkJCWxhYmVsID0g
InNsdi1kZHJjLW1wdTItY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJ
CXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20s
c2x2LXJwbS1pZCA9IDwgMHhkMiA+OwoJCQkJcGhhbmRsZSA9IDwgMHgxZSA+OwoJCQl9OwoK
CQkJc2x2LWVzcy12bWlkbXQtY2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4MmRmID47CgkJCQls
YWJlbCA9ICJzbHYtZXNzLXZtaWRtdC1jZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgw
NCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweGQzID47CgkJCQlwaGFuZGxlID0gPCAweDFmID47
CgkJCX07CgoJCQlzbHYtZXNzLWFwdS1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZTAgPjsK
CQkJCWxhYmVsID0gInNsdi1lc3MtYXB1LWNmZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAw
eDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47
CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4ZDQgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MGYg
PjsKCQkJfTsKCgkJCXNsdi11c2IyLWNmZyB7CgkJCQljZWxsLWlkID0gPCAweDJlMSA+OwoJ
CQkJbGFiZWwgPSAic2x2LXVzYjItY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQg
PjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJ
CXFjb20sc2x2LXJwbS1pZCA9IDwgMHhkNSA+OwoJCQkJcGhhbmRsZSA9IDwgMHgyNSA+OwoJ
CQl9OwoKCQkJc2x2LWJsc3AtY2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4MmUyID47CgkJCQls
YWJlbCA9ICJzbHYtYmxzcC1jZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJCQkJcWNv
bSxzbHYtcnBtLWlkID0gPCAweGQ2ID47CgkJCQlwaGFuZGxlID0gPCAweDI0ID47CgkJCX07
CgoJCQlzbHYtcXBpYy1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZTMgPjsKCQkJCWxhYmVs
ID0gInNsdi1xcGljLWNmZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlx
Y29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlxY29tLHNs
di1ycG0taWQgPSA8IDB4ZDcgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MGMgPjsKCQkJfTsKCgkJ
CXNsdi1zZGNjLWNmZyB7CgkJCQljZWxsLWlkID0gPCAweDJlNCA+OwoJCQkJbGFiZWwgPSAi
c2x2LXNkY2MtY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20s
YXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJw
bS1pZCA9IDwgMHhkOCA+OwoJCQkJcGhhbmRsZSA9IDwgMHgyOSA+OwoJCQl9OwoKCQkJc2x2
LXdzczAtdm1pZG10LWNmZyB7CgkJCQljZWxsLWlkID0gPCAweDJlNSA+OwoJCQkJbGFiZWwg
PSAic2x2LXdzczAtdm1pZG10LWNmZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47
CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDA0ID47CgkJCQlx
Y29tLHNsdi1ycG0taWQgPSA8IDB4ZDkgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MTggPjsKCQkJ
fTsKCgkJCXNsdi13c3MwLWFwdS1jZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZTYgPjsKCQkJ
CWxhYmVsID0gInNsdi13c3MwLWFwdS1jZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgw
NCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgwNCA+OwoJ
CQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweGRhID47CgkJCQlwaGFuZGxlID0gPCAweDE0ID47
CgkJCX07CgoJCQlzbHYtd3NzMS12bWlkbXQtY2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4MmU3
ID47CgkJCQlsYWJlbCA9ICJzbHYtd3NzMS12bWlkbXQtY2ZnIjsKCQkJCXFjb20sYnVzd2lk
dGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8
IDB4MDQgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhkYiA+OwoJCQkJcGhhbmRsZSA9
IDwgMHgyOCA+OwoJCQl9OwoKCQkJc2x2LXdzczEtYXB1LWNmZyB7CgkJCQljZWxsLWlkID0g
PCAweDJlOCA+OwoJCQkJbGFiZWwgPSAic2x2LXdzczEtYXB1LWNmZyI7CgkJCQlxY29tLGJ1
c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2
ID0gPCAweDA0ID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4ZGMgPjsKCQkJCXBoYW5k
bGUgPSA8IDB4MDkgPjsKCQkJfTsKCgkJCXNsdi1wY25vYy1zbm9jIHsKCQkJCWNlbGwtaWQg
PSA8IDB4MjcxYiA+OwoJCQkJbGFiZWwgPSAic2x2LXBjbm9jLXNub2MiOwoJCQkJcWNvbSxi
dXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRl
diA9IDwgMHgwNCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweDJkID47CgkJCQlwaGFu
ZGxlID0gPCAweDJiID47CgkJCX07CgoJCQlzbHYtc3J2Yy1wY25vYyB7CgkJCQljZWxsLWlk
ID0gPCAweDJlOSA+OwoJCQkJbGFiZWwgPSAic2x2LXNydmMtcGNub2MiOwoJCQkJcWNvbSxi
dXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJcWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRl
diA9IDwgMHgwNCA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0gPCAweGRkID47CgkJCQlwaGFu
ZGxlID0gPCAweDI2ID47CgkJCX07CgoJCQlzbHYtc25vYy1kZHJjLW0xIHsKCQkJCWNlbGwt
aWQgPSA8IDB4MmVhID47CgkJCQlsYWJlbCA9ICJzbHYtc25vYy1kZHJjLW0xIjsKCQkJCXFj
b20sYnVzd2lkdGggPSA8IDB4MDggPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1
cy1kZXYgPSA8IDB4MzEgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhkZSA+OwoJCQkJ
cGhhbmRsZSA9IDwgMHgzMiA+OwoJCQl9OwoKCQkJc2x2LWE3c3MgewoJCQkJY2VsbC1pZCA9
IDwgMHgyZWIgPjsKCQkJCWxhYmVsID0gInNsdi1hN3NzIjsKCQkJCXFjb20sYnVzd2lkdGgg
PSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4
MzEgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHhkZiA+OwoJCQkJcGhhbmRsZSA9IDwg
MHgzOSA+OwoJCQl9OwoKCQkJc2x2LW9jaW1lbSB7CgkJCQljZWxsLWlkID0gPCAweDI0OSA+
OwoJCQkJbGFiZWwgPSAic2x2LW9jaW1lbSI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA4
ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMtZGV2ID0gPCAweDMxID47CgkJ
CQlxY29tLHNsdi1ycG0taWQgPSA8IDB4MWEgPjsKCQkJCXBoYW5kbGUgPSA8IDB4NDYgPjsK
CQkJfTsKCgkJCXNsdi13c3MwLWNmZyB7CgkJCQljZWxsLWlkID0gPCAweDJlYyA+OwoJCQkJ
bGFiZWwgPSAic2x2LXdzczAtY2ZnIjsKCQkJCXFjb20sYnVzd2lkdGggPSA8IDB4MDQgPjsK
CQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1cy1kZXYgPSA8IDB4MzEgPjsKCQkJCXFj
b20sc2x2LXJwbS1pZCA9IDwgMHhlMCA+OwoJCQkJcGhhbmRsZSA9IDwgMHgzNyA+OwoJCQl9
OwoKCQkJc2x2LXdzczEtY2ZnIHsKCQkJCWNlbGwtaWQgPSA8IDB4MmVkID47CgkJCQlsYWJl
bCA9ICJzbHYtd3NzMS1jZmciOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwNCA+OwoJCQkJ
cWNvbSxhcC1vd25lZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgzMSA+OwoJCQkJcWNvbSxz
bHYtcnBtLWlkID0gPCAweGUxID47CgkJCQlwaGFuZGxlID0gPCAweDM2ID47CgkJCX07CgoJ
CQlzbHYtcGNpZSB7CgkJCQljZWxsLWlkID0gPCAweDJlZSA+OwoJCQkJbGFiZWwgPSAic2x2
LXBjaWUiOwoJCQkJcWNvbSxidXN3aWR0aCA9IDwgMHgwOCA+OwoJCQkJcWNvbSxhcC1vd25l
ZDsKCQkJCXFjb20sYnVzLWRldiA9IDwgMHgzMSA+OwoJCQkJcWNvbSxzbHYtcnBtLWlkID0g
PCAweGUyID47CgkJCQlwaGFuZGxlID0gPCAweDMwID47CgkJCX07CgoJCQlzbHYtdXNiMy1j
ZmcgewoJCQkJY2VsbC1pZCA9IDwgMHgyZWYgPjsKCQkJCWxhYmVsID0gInNsdi11c2IzLWNm
ZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJ
CQkJcWNvbSxidXMtZGV2ID0gPCAweDMxID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4
ZTMgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MzQgPjsKCQkJfTsKCgkJCXNsdi1jcnlwdG8tY2Zn
IHsKCQkJCWNlbGwtaWQgPSA8IDB4MmYwID47CgkJCQlsYWJlbCA9ICJzbHYtY3J5cHRvLWNm
ZyI7CgkJCQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJ
CQkJcWNvbSxidXMtZGV2ID0gPCAweDMxID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4
ZTQgPjsKCQkJCXBoYW5kbGUgPSA8IDB4MzggPjsKCQkJfTsKCgkJCXNsdi1lc3MtY2ZnIHsK
CQkJCWNlbGwtaWQgPSA8IDB4MmYxID47CgkJCQlsYWJlbCA9ICJzbHYtZXNzLWNmZyI7CgkJ
CQlxY29tLGJ1c3dpZHRoID0gPCAweDA0ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNv
bSxidXMtZGV2ID0gPCAweDMxID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4ZTUgPjsK
CQkJCXBoYW5kbGUgPSA8IDB4MzUgPjsKCQkJfTsKCgkJCXNsdi1xZHNzLXN0bSB7CgkJCQlj
ZWxsLWlkID0gPCAweDI0YyA+OwoJCQkJbGFiZWwgPSAic2x2LXFkc3Mtc3RtIjsKCQkJCXFj
b20sYnVzd2lkdGggPSA8IDB4MDQgPjsKCQkJCXFjb20sYXAtb3duZWQ7CgkJCQlxY29tLGJ1
cy1kZXYgPSA8IDB4MzEgPjsKCQkJCXFjb20sc2x2LXJwbS1pZCA9IDwgMHgxZSA+OwoJCQkJ
cGhhbmRsZSA9IDwgMHgzYSA+OwoJCQl9OwoKCQkJc2x2LXNydmMtc25vYyB7CgkJCQljZWxs
LWlkID0gPCAweDJmMiA+OwoJCQkJbGFiZWwgPSAic2x2LXNydmMtc25vYyI7CgkJCQlxY29t
LGJ1c3dpZHRoID0gPCAweDA4ID47CgkJCQlxY29tLGFwLW93bmVkOwoJCQkJcWNvbSxidXMt
ZGV2ID0gPCAweDMxID47CgkJCQlxY29tLHNsdi1ycG0taWQgPSA8IDB4ZTYgPjsKCQkJCXBo
YW5kbGUgPSA8IDB4MzMgPjsKCQkJfTsKCQl9OwoKCQlpbnRlcnJ1cHQtY29udHJvbGxlckBi
MDAwMDAwIHsKCQkJY29tcGF0aWJsZSA9ICJxY29tLG1zbS1xZ2ljMiI7CgkJCWludGVycnVw
dC1jb250cm9sbGVyOwoJCQkjaW50ZXJydXB0LWNlbGxzID0gPCAweDAzID47CgkJCXJlZyA9
IDwgMHhiMDAwMDAwIDB4MTAwMCAweGIwMDIwMDAgMHgxMDAwID47CgkJCXBoYW5kbGUgPSA8
IDB4MDEgPjsKCQl9OwoKCQljb3VudGVyQDRhMTAwMCB7CgkJCWNvbXBhdGlibGUgPSAicWNv
bSxxY2EtZ2NudCI7CgkJCXJlZyA9IDwgMHg0YTEwMDAgMHgwNCA+OwoJCX07CgoJCWNsb2Nr
LWNvbnRyb2xsZXJAMTgwMDAwMCB7CgkJCWNvbXBhdGlibGUgPSAicWNvbSxnY2MtaXBxNDB4
eCI7CgkJCSNjbG9jay1jZWxscyA9IDwgMHgwMSA+OwoJCQkjcmVzZXQtY2VsbHMgPSA8IDB4
MDEgPjsKCQkJcmVnID0gPCAweDE4MDAwMDAgMHg2MDAwMCA+OwoJCQlwaGFuZGxlID0gPCAw
eDAyID47CgkJfTsKCgkJY2xvY2stY29udHJvbGxlckA3NzAwMDM4IHsKCQkJY29tcGF0aWJs
ZSA9ICJxY29tLGFkY2MtaXBxNDB4eCI7CgkJCSNjbG9jay1jZWxscyA9IDwgMHgwMSA+OwoJ
CQkjcmVzZXQtY2VsbHMgPSA8IDB4MDEgPjsKCQkJcmVnID0gPCAweDc3MDAwMzggMHgxZGMg
PjsKCQkJc3RhdHVzID0gIm9rIjsKCQl9OwoKCQl0aW1lciB7CgkJCWNvbXBhdGlibGUgPSAi
YXJtLGFybXY3LXRpbWVyIjsKCQkJaW50ZXJydXB0cyA9IDwgMHgwMSAweDAyIDB4ZjA4IDB4
MDEgMHgwMyAweGYwOCAweDAxIDB4MDQgMHhmMDggMHgwMSAweDAxIDB4ZjA4ID47CgkJCWNs
b2NrLWZyZXF1ZW5jeSA9IDwgMHgyZGM2YzAwID47CgkJfTsKCgkJcmVzdGFydEA0YWIwMDAg
ewoJCQljb21wYXRpYmxlID0gInFjb20scHNob2xkIjsKCQkJcmVnID0gPCAweDRhYjAwMCAw
eDA0ID47CgkJfTsKCgkJd2F0Y2hkb2dAYjAxNzAwMCB7CgkJCWNvbXBhdGlibGUgPSAicWNv
bSxrcHNzLXdkdC1pcHE0MHh4IjsKCQkJcmVnID0gPCAweGIwMTcwMDAgMHg0MCA+OwoJCQlp
bnRlcnJ1cHQtbmFtZXMgPSAiYmFya19pcnEiOwoJCQlpbnRlcnJ1cHRzID0gPCAweDAwIDB4
MDMgMHgwMCA+OwoJCQljbG9ja3MgPSA8IDB4NDcgPjsKCQkJdGltZW91dC1zZWMgPSA8IDB4
MGEgPjsKCQkJd2R0X3JlcyA9IDwgMHgwNCA+OwoJCQl3ZHRfZW4gPSA8IDB4MDggPjsKCQkJ
d2R0X2JhcmtfdGltZSA9IDwgMHgxMCA+OwoJCQl3ZHRfYml0ZV90aW1lID0gPCAweDE0ID47
CgkJCXN0YXR1cyA9ICJvayI7CgkJfTsKCgkJYTdzc19iYXNlQGIwODgwMDAgewoJCQljb21w
YXRpYmxlID0gInFjb20sYXJtLWNvcnRleC1hY2MiOwoJCQlyZWcgPSA8IDB4YjA4ODAwMCAw
eDEwMDAgPjsKCQl9OwoKCQlwaW5jdHJsQDB4MDEwMDAwMDAgewoJCQljb21wYXRpYmxlID0g
InFjb20saXBxNDB4eC1waW5jdHJsIjsKCQkJcmVnID0gPCAweDEwMDAwMDAgMHgzMDAwMDAg
PjsKCQkJZ3Bpby1jb250cm9sbGVyOwoJCQkjZ3Bpby1jZWxscyA9IDwgMHgwMiA+OwoJCQlp
bnRlcnJ1cHQtY29udHJvbGxlcjsKCQkJI2ludGVycnVwdC1jZWxscyA9IDwgMHgwMiA+OwoJ
CQlpbnRlcnJ1cHRzID0gPCAweDAwIDB4ZDAgMHgwMCA+OwoKCQkJc2VyaWFsX3Bpbm11eCB7
CgkJCQlwaGFuZGxlID0gPCAweDQ4ID47CgoJCQkJbXV4IHsKCQkJCQlwaW5zID0gImdwaW82
MFwwZ3BpbzYxIjsKCQkJCQlmdW5jdGlvbiA9ICJibHNwX3VhcnQwIjsKCQkJCQliaWFzLWRp
c2FibGU7CgkJCQl9OwoJCQl9OwoKCQkJc3BpXzBfcGlubXV4IHsKCQkJCXBoYW5kbGUgPSA8
IDB4NDkgPjsKCgkJCQltdXggewoJCQkJCXBpbnMgPSAiZ3BpbzU0XDBncGlvNTVcMGdwaW81
NlwwZ3BpbzU3IjsKCQkJCQlmdW5jdGlvbiA9ICJibHNwX3NwaTAiOwoJCQkJCWJpYXMtZGlz
YWJsZTsKCQkJCX07CgkJCX07CgkJfTsKCgkJc2VyaWFsQDc4YWYwMDAgewoJCQljb21wYXRp
YmxlID0gInFjb20sbXNtLXVhcnRkbS12MS40XDBxY29tLG1zbS11YXJ0ZG0iOwoJCQlyZWcg
PSA8IDB4NzhhZjAwMCAweDIwMCA+OwoJCQlpbnRlcnJ1cHRzID0gPCAweDAwIDB4NmIgMHgw
MCA+OwoJCQlzdGF0dXMgPSAib2siOwoJCQljbG9ja3MgPSA8IDB4MDIgMHgxYSAweDAyIDB4
MTUgPjsKCQkJY2xvY2stbmFtZXMgPSAiY29yZVwwaWZhY2UiOwoJCQlwaW5jdHJsLTAgPSA8
IDB4NDggPjsKCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKCQl9OwoKCQlzZXJpYWxA
NzhiMDAwMCB7CgkJCWNvbXBhdGlibGUgPSAicWNvbSxtc20tdWFydGRtLXYxLjRcMHFjb20s
bXNtLXVhcnRkbSI7CgkJCXJlZyA9IDwgMHg3OGIwMDAwIDB4MjAwID47CgkJCWludGVycnVw
dHMgPSA8IDB4MDAgMHg2YyAweDAwID47CgkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgkJCWNs
b2NrcyA9IDwgMHgwMiAweDFiIDB4MDIgMHgxNSA+OwoJCQljbG9jay1uYW1lcyA9ICJjb3Jl
XDBpZmFjZSI7CgkJfTsKCgkJcWNvbSxzcHMgewoJCQljb21wYXRpYmxlID0gInFjb20sbXNt
X3Nwc180ayI7CgkJCXFjb20sZGV2aWNlLXR5cGUgPSA8IDB4MDMgPjsKCQkJcWNvbSxwaXBl
LWF0dHItZWU7CgkJfTsKCgkJc3BpQDc4YjUwMDAgewoJCQljb21wYXRpYmxlID0gInFjb20s
c3BpLXF1cC12MiI7CgkJCSNhZGRyZXNzLWNlbGxzID0gPCAweDAxID47CgkJCSNzaXplLWNl
bGxzID0gPCAweDAwID47CgkJCXJlZy1uYW1lcyA9ICJzcGlfcGh5c2ljYWxcMHNwaV9iYW1f
cGh5c2ljYWwiOwoJCQlyZWcgPSA8IDB4NzhiNTAwMCAweDYwMCAweDc4ODQwMDAgMHgyMzAw
MCA+OwoJCQlpbnRlcnJ1cHQtbmFtZXMgPSAic3BpX2lycVwwc3BpX2JhbV9pcnEiOwoJCQlp
bnRlcnJ1cHRzID0gPCAweDAwIDB4NWYgMHgwMCAweDAwIDB4ZWUgMHgwMCA+OwoJCQlzcGkt
bWF4LWZyZXF1ZW5jeSA9IDwgMHgxNmUzNjAwID47CgkJCWNsb2NrcyA9IDwgMHgwMiAweDE3
IDB4MDIgMHgxNSA+OwoJCQljbG9jay1uYW1lcyA9ICJjb3JlX2Nsa1wwaWZhY2VfY2xrIjsK
CQkJcWNvbSxpbmZpbml0ZS1tb2RlID0gPCAweDAwID47CgkJCXFjb20sYmFtLWNvbnN1bWVy
LXBpcGUtaW5kZXggPSA8IDB4MDQgPjsKCQkJcWNvbSxiYW0tcHJvZHVjZXItcGlwZS1pbmRl
eCA9IDwgMHgwNSA+OwoJCQlxY29tLG1hc3Rlci1pZCA9IDwgMHgwMCA+OwoJCQlzdGF0dXMg
PSAib2siOwoJCQlwaW5jdHJsLTAgPSA8IDB4NDkgPjsKCQkJcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKCgkJCW0yNXA4MEAwIHsKCQkJCSNhZGRyZXNzLWNlbGxzID0gPCAweDAxID47
CgkJCQkjc2l6ZS1jZWxscyA9IDwgMHgwMSA+OwoJCQkJY29tcGF0aWJsZSA9ICJtMjVwODAi
OwoJCQkJcmVnID0gPCAweDAwID47CgkJCQlzcGktbWF4LWZyZXF1ZW5jeSA9IDwgMHgxN2Q3
ODQwID47CgoJCQkJcGFydGl0aW9uQDAgewoJCQkJCXJlZyA9IDwgMHgxMDAwMDAgMHgwMCA+
OwoJCQkJCWxhYmVsID0gIlJvdXRlck9TIjsKCQkJCX07CgoJCQkJcGFydGl0aW9uQDEgewoJ
CQkJCXJlZyA9IDwgMHg4MDAwMCAweDQwMDAwID47CgkJCQkJbGFiZWwgPSAiUm91dGVyQm9v
dCI7CgkJCQl9OwoJCQl9OwoJCX07CgoJCXFjb20sbmFuZEA3OTgwMDAwIHsKCQkJY29tcGF0
aWJsZSA9ICJxY29tLG1zbS1uYW5kIjsKCQkJcmVnID0gPCAweDc5ODAwMDAgMHg0MDAwMCAw
eDc5ODQwMDAgMHgxYTAwMCA+OwoJCQlyZWctbmFtZXMgPSAibmFuZF9waHlzXDBiYW1fcGh5
cyI7CgkJCWludGVycnVwdHMgPSA8IDB4MDAgMHg2NSAweDAwID47CgkJCWludGVycnVwdC1u
YW1lcyA9ICJiYW1faXJxIjsKCQkJcWNvbSxtc20tYnVzLG5hbWUgPSAicXBpY19uYW5kIjsK
CQkJcWNvbSxtc20tYnVzLG51bS1jYXNlcyA9IDwgMHgwMiA+OwoJCQlxY29tLG1zbS1idXMs
bnVtLXBhdGhzID0gPCAweDAxID47CgkJCXFjb20sbXNtLWJ1cyx2ZWN0b3JzLUtCcHMgPSA8
IDB4NWIgMHgyMDAgMHgwMCAweDAwIDB4NWIgMHgyMDAgMHg2MWE4MCAweGMzNTAwID47CgkJ
CWNsb2NrLW5hbWVzID0gImlmYWNlX2Nsa1wwY29yZV9jbGsiOwoJCQljbG9ja3MgPSA8IDB4
MDIgMHgyYiAweDAyIDB4MmMgPjsKCQkJc3RhdHVzID0gImRpc2FibGVkIjsKCQl9OwoKCQl0
Y3NyQDE5NGIwMDAgewoJCQljb21wYXRpYmxlID0gInFjb20sdGNzciI7CgkJCXJlZyA9IDwg
MHgxOTRiMDAwIDB4MTAwID47CgkJCXFjb20sdXNiLWhzcGh5LW1vZGUtc2VsZWN0ID0gPCAw
eGU3MDBlNyA+OwoJCQlzdGF0dXMgPSAib2siOwoJCX07CgoJCWVzc190Y3NyQDE5NTMwMDAg
ewoJCQljb21wYXRpYmxlID0gInFjb20sdGNzciI7CgkJCXJlZyA9IDwgMHgxOTUzMDAwIDB4
MTAwMCA+OwoJCQlxY29tLGVzcy1pbnRlcmZhY2Utc2VsZWN0ID0gPCAweDAwID47CgkJfTsK
CgkJc3NwaHlAMCB7CgkJCWNvbXBhdGlibGUgPSAicWNhLHVuaS1zc3BoeSI7CgkJCXJlZyA9
IDwgMHg5YTAwMCAweDgwMCA+OwoJCQlyZWctbmFtZXMgPSAicGh5X2Jhc2UiOwoJCQlyZXNl
dHMgPSA8IDB4MDIgMHgwYyA+OwoJCQlyZXNldC1uYW1lcyA9ICJwb3JfcnN0IjsKCQkJcWNh
LGhvc3QgPSA8IDB4MDEgPjsKCQkJcWNhLGVtdWxhdGlvbiA9IDwgMHgwMCA+OwoJCQlzdGF0
dXMgPSAiZGlzYWJsZWQiOwoJCQlwaGFuZGxlID0gPCAweDRiID47CgkJfTsKCgkJc3NwaHlA
MSB7CgkJCWNvbXBhdGlibGUgPSAicWNhLGR1bW15LXNzcGh5IjsKCQkJc3RhdHVzID0gImRp
c2FibGVkIjsKCQkJcmVnID0gPCAweDAwIDB4MDAgPjsKCQkJcGhhbmRsZSA9IDwgMHg0ZCA+
OwoJCX07CgoJCXJuZ0AweDAwMDIyMDAwIHsKCQkJY29tcGF0aWJsZSA9ICJxY29tLHBybmci
OwoJCQlyZWcgPSA8IDB4MjIwMDAgMHgxNDAgPjsKCQkJY2xvY2tzID0gPCAweDAyIDB4MmEg
PjsKCQkJY2xvY2stbmFtZXMgPSAiY29yZSI7CgkJfTsKCgkJaTJjQDc4YjcwMDAgewoJCQlj
b21wYXRpYmxlID0gInFjb20saTJjLW1zbS12MiI7CgkJCSNhZGRyZXNzLWNlbGxzID0gPCAw
eDAxID47CgkJCSNzaXplLWNlbGxzID0gPCAweDAwID47CgkJCXJlZy1uYW1lcyA9ICJxdXBf
cGh5c19hZGRyXDBiYW1fcGh5c19hZGRyIjsKCQkJcmVnID0gPCAweDc4YjcwMDAgMHg2MDAg
MHg3ODg0MDAwIDB4MjMwMDAgPjsKCQkJaW50ZXJydXB0LW5hbWVzID0gInF1cF9pcnFcMGJh
bV9pcnEiOwoJCQlpbnRlcnJ1cHRzID0gPCAweDAwIDB4NjEgMHgwMCAweDAwIDB4ZWUgMHgw
MCA+OwoJCQljbG9ja3MgPSA8IDB4MDIgMHgxNSAweDAyIDB4MTYgPjsKCQkJY2xvY2stbmFt
ZXMgPSAiaWZhY2VfY2xrXDBjb3JlX2NsayI7CgkJCXFjb20sY2xrLWZyZXEtb3V0ID0gPCAw
eDE4NmEwID47CgkJCXFjb20sY2xrLWZyZXEtaW4gPSA8IDB4MTIyYWUxMCA+OwoJCQlxY29t
LG5vaXNlLXJqY3Qtc2NsID0gPCAweDAwID47CgkJCXFjb20sbm9pc2UtcmpjdC1zZGEgPSA8
IDB4MDAgPjsKCQkJcWNvbSxiYW0tcGlwZS1pZHgtY29ucyA9IDwgMHgwOCA+OwoJCQlxY29t
LGJhbS1waXBlLWlkeC1wcm9kID0gPCAweDA5ID47CgkJCXFjb20sbWFzdGVyLWlkID0gPCAw
eDAwID47CgkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgkJfTsKCgkJcWNyeXB0b0A4ZTIwMDAw
IHsKCQkJY29tcGF0aWJsZSA9ICJxY29tLHFjcnlwdG8iOwoJCQlyZWcgPSA8IDB4OGUyMDAw
MCAweDIwMDAwIDB4OGUwNDAwMCAweDIwMDAwID47CgkJCXJlZy1uYW1lcyA9ICJjcnlwdG8t
YmFzZVwwY3J5cHRvLWJhbS1iYXNlIjsKCQkJaW50ZXJydXB0cyA9IDwgMHgwMCAweGNmIDB4
MDAgPjsKCQkJcWNvbSxiYW0tcGlwZS1wYWlyID0gPCAweDAxID47CgkJCXFjb20sY2UtZGV2
aWNlID0gPCAweDAwID47CgkJCWNsb2NrcyA9IDwgMHgwMiAweDIyIDB4MDIgMHgyMSAweDAy
IDB4MjAgPjsKCQkJY2xvY2stbmFtZXMgPSAiY29yZV9jbGtcMGJ1c19jbGtcMGlmYWNlX2Ns
ayI7CgkJCXN0YXR1cyA9ICJvayI7CgkJfTsKCgkJdGNzckAxOTQ5MDAwIHsKCQkJY29tcGF0
aWJsZSA9ICJxY29tLHRjc3IiOwoJCQlyZWcgPSA8IDB4MTk0OTAwMCAweDEwMCA+OwoJCQlx
Y29tLHdpZmlfZ2xiX2NmZyA9IDwgMHg0MTAwMDAwMCA+OwoJCX07CgoJCXRjc3JAMTk1NzAw
MCB7CgkJCWNvbXBhdGlibGUgPSAicWNvbSx0Y3NyIjsKCQkJcmVnID0gPCAweDE5NTcwMDAg
MHgxMDAgPjsKCQkJcWNvbSx3aWZpX25vY19tZW10eXBlX20wX20yID0gPCAweDIyMjIyMjIg
PjsKCQl9OwoKCQl3aWZpQGEwMDAwMDAgewoJCQljb21wYXRpYmxlID0gInFjYSx3aWZpLWlw
cTQweHgiOwoJCQlyZWcgPSA8IDB4YTAwMDAwMCAweDIwMDAwMCA+OwoJCQljb3JlLWlkID0g
PCAweDAwID47CgkJCXJlc2V0cyA9IDwgMHgwMiAweDAwIDB4MDIgMHgwMSAweDAyIDB4MDIg
MHgwMiAweDAzIDB4MDIgMHgwNCAweDAyIDB4MDUgPjsKCQkJcmVzZXQtbmFtZXMgPSAid2lm
aV9jcHVfaW5pdFwwd2lmaV9yYWRpb19zcmlmXDB3aWZpX3JhZGlvX3dhcm1cMHdpZmlfcmFk
aW9fY29sZFwwd2lmaV9jb3JlX3dhcm1cMHdpZmlfY29yZV9jb2xkIjsKCQkJY2xvY2tzID0g
PCAweDAyIDB4M2EgMHgwMiAweDNiIDB4MDIgMHgzYyA+OwoJCQljbG9jay1uYW1lcyA9ICJ3
aWZpX3djc3NfY21kXDB3aWZpX3djc3NfcmVmXDB3aWZpX3djc3NfcnRjIjsKCQkJaW50ZXJy
dXB0cyA9IDwgMHgwMCAweDIwIDB4MDEgMHgwMCAweDIxIDB4MDEgMHgwMCAweDIyIDB4MDEg
MHgwMCAweDIzIDB4MDEgMHgwMCAweDI0IDB4MDEgMHgwMCAweDI1IDB4MDEgMHgwMCAweDI2
IDB4MDEgMHgwMCAweDI3IDB4MDEgMHgwMCAweDI4IDB4MDEgMHgwMCAweDI5IDB4MDEgMHgw
MCAweDJhIDB4MDEgMHgwMCAweDJiIDB4MDEgMHgwMCAweDJjIDB4MDEgMHgwMCAweDJkIDB4
MDEgMHgwMCAweDJlIDB4MDEgMHgwMCAweDJmIDB4MDEgMHgwMCAweGE4IDB4MDAgPjsKCQkJ
aW50ZXJydXB0LW5hbWVzID0gIm1zaTBcMG1zaTFcMG1zaTJcMG1zaTNcMG1zaTRcMG1zaTVc
MG1zaTZcMG1zaTdcMG1zaThcMG1zaTlcMG1zaTEwXDBtc2kxMVwwbXNpMTJcMG1zaTEzXDBt
c2kxNFwwbXNpMTVcMGxlZ2FjeSI7CgkJCXN0YXR1cyA9ICJvayI7CgkJCXFjYSxtc2lfYWRk
ciA9IDwgMHhiMDA2MDQwID47CgkJCXFjYSxtc2lfYmFzZSA9IDwgMHg0MCA+OwoJCX07CgoJ
CXdpZmlAYTgwMDAwMCB7CgkJCWNvbXBhdGlibGUgPSAicWNhLHdpZmktaXBxNDB4eCI7CgkJ
CXJlZyA9IDwgMHhhODAwMDAwIDB4MjAwMDAwID47CgkJCWNvcmUtaWQgPSA8IDB4MDEgPjsK
CQkJcmVzZXRzID0gPCAweDAyIDB4MDYgMHgwMiAweDA3IDB4MDIgMHgwOCAweDAyIDB4MDkg
MHgwMiAweDBhIDB4MDIgMHgwYiA+OwoJCQlyZXNldC1uYW1lcyA9ICJ3aWZpX2NwdV9pbml0
XDB3aWZpX3JhZGlvX3NyaWZcMHdpZmlfcmFkaW9fd2FybVwwd2lmaV9yYWRpb19jb2xkXDB3
aWZpX2NvcmVfd2FybVwwd2lmaV9jb3JlX2NvbGQiOwoJCQljbG9ja3MgPSA8IDB4MDIgMHgz
ZCAweDAyIDB4M2UgMHgwMiAweDNmID47CgkJCWNsb2NrLW5hbWVzID0gIndpZmlfd2Nzc19j
bWRcMHdpZmlfd2Nzc19yZWZcMHdpZmlfd2Nzc19ydGMiOwoJCQlpbnRlcnJ1cHRzID0gPCAw
eDAwIDB4MzAgMHgwMSAweDAwIDB4MzEgMHgwMSAweDAwIDB4MzIgMHgwMSAweDAwIDB4MzMg
MHgwMSAweDAwIDB4MzQgMHgwMSAweDAwIDB4MzUgMHgwMSAweDAwIDB4MzYgMHgwMSAweDAw
IDB4MzcgMHgwMSAweDAwIDB4MzggMHgwMSAweDAwIDB4MzkgMHgwMSAweDAwIDB4M2EgMHgw
MSAweDAwIDB4M2IgMHgwMSAweDAwIDB4M2MgMHgwMSAweDAwIDB4M2QgMHgwMSAweDAwIDB4
M2UgMHgwMSAweDAwIDB4M2YgMHgwMSAweDAwIDB4YTkgMHgwMCA+OwoJCQlpbnRlcnJ1cHQt
bmFtZXMgPSAibXNpMFwwbXNpMVwwbXNpMlwwbXNpM1wwbXNpNFwwbXNpNVwwbXNpNlwwbXNp
N1wwbXNpOFwwbXNpOVwwbXNpMTBcMG1zaTExXDBtc2kxMlwwbXNpMTNcMG1zaTE0XDBtc2kx
NVwwbGVnYWN5IjsKCQkJc3RhdHVzID0gIm9rIjsKCQkJcWNhLG1zaV9hZGRyID0gPCAweGIw
MDYwNDAgPjsKCQkJcWNhLG1zaV9iYXNlID0gPCAweDUwID47CgkJfTsKCgkJaHNwaHlAYTYw
MDAgewoJCQljb21wYXRpYmxlID0gInFjYSxiYWxkdXItdXNiMy1oc3BoeSI7CgkJCXJlZyA9
IDwgMHhhNjAwMCAweDQwID47CgkJCXJlZy1uYW1lcyA9ICJwaHlfYmFzZSI7CgkJCXJlc2V0
cyA9IDwgMHgwMiAweDBkIDB4MDIgMHgwZSA+OwoJCQlyZXNldC1uYW1lcyA9ICJwb3JfcnN0
XDBzcmlmX3JzdCI7CgkJCXFjYSxob3N0ID0gPCAweDAxID47CgkJCXFjYSxlbXVsYXRpb24g
PSA8IDB4MDAgPjsKCQkJc3RhdHVzID0gIm9rIjsKCQkJcGhhbmRsZSA9IDwgMHg0YSA+OwoJ
CX07CgoJCWhzcGh5QGE4MDAwIHsKCQkJY29tcGF0aWJsZSA9ICJxY2EsYmFsZHVyLXVzYjIt
aHNwaHkiOwoJCQlyZWcgPSA8IDB4YTgwMDAgMHg0MCA+OwoJCQlyZWctbmFtZXMgPSAicGh5
X2Jhc2UiOwoJCQlyZXNldHMgPSA8IDB4MDIgMHgwZiAweDAyIDB4MTAgPjsKCQkJcmVzZXQt
bmFtZXMgPSAicG9yX3JzdFwwc3JpZl9yc3QiOwoJCQlxY2EsaG9zdCA9IDwgMHgwMSA+OwoJ
CQlxY2EsZW11bGF0aW9uID0gPCAweDAwID47CgkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgkJ
CXBoYW5kbGUgPSA8IDB4NGMgPjsKCQl9OwoKCQl1c2IzQDhhMDAwMDAgewoJCQljb21wYXRp
YmxlID0gInFjYSxkd2MzIjsKCQkJI2FkZHJlc3MtY2VsbHMgPSA8IDB4MDEgPjsKCQkJI3Np
emUtY2VsbHMgPSA8IDB4MDEgPjsKCQkJcmFuZ2VzOwoJCQlyZWcgPSA8IDB4OGFmODgwMCAw
eDEwMCA+OwoJCQlyZWctbmFtZXMgPSAicXNjcmF0Y2hfYmFzZSI7CgkJCWNsb2NrcyA9IDwg
MHgwMiAweDM3IDB4MDIgMHgzOCAweDAyIDB4MzkgPjsKCQkJY2xvY2stbmFtZXMgPSAibWFz
dGVyXDBzbGVlcFwwbW9ja191dG1pIjsKCQkJcWNhLGhvc3QgPSA8IDB4MDEgPjsKCQkJc3Rh
dHVzID0gIm9rIjsKCgkJCWR3YzNAOGEwMDAwMCB7CgkJCQljb21wYXRpYmxlID0gInNucHMs
ZHdjMyI7CgkJCQlyZWcgPSA8IDB4OGEwMDAwMCAweGY4MDAwID47CgkJCQlpbnRlcnJ1cHRz
ID0gPCAweDAwIDB4ODQgMHgwMCA+OwoJCQkJdXNiLXBoeSA9IDwgMHg0YSAweDRiID47CgkJ
CQlwaHktbmFtZXMgPSAidXNiMi1waHlcMHVzYjMtcGh5IjsKCQkJCXR4LWZpZm8tcmVzaXpl
OwoJCQkJZHJfbW9kZSA9ICJob3N0IjsKCQkJCXVzYjItc3VzcGh5LXF1aXJrOwoJCQkJdXNi
Mi1ob3N0LWRpc2Nvbi1xdWlyazsKCQkJCXVzYjItaG9zdC1kaXNjb24tcGh5LW1pc2MtcmVn
ID0gPCAweDI0ID47CgkJCQl1c2IyLWhvc3QtZGlzY29uLW1hc2sgPSA8IDB4MTAwID47CgkJ
CX07CgkJfTsKCgkJdXNiMkA2MDAwMDAwIHsKCQkJY29tcGF0aWJsZSA9ICJxY2EsZHdjMyI7
CgkJCSNhZGRyZXNzLWNlbGxzID0gPCAweDAxID47CgkJCSNzaXplLWNlbGxzID0gPCAweDAx
ID47CgkJCXJhbmdlczsKCQkJcmVnID0gPCAweDYwZjg4MDAgMHgxMDAgPjsKCQkJcmVnLW5h
bWVzID0gInFzY3JhdGNoX2Jhc2UiOwoJCQljbG9ja3MgPSA8IDB4MDIgMHgzNCAweDAyIDB4
MzUgMHgwMiAweDM2ID47CgkJCWNsb2NrLW5hbWVzID0gIm1hc3Rlclwwc2xlZXBcMG1vY2tf
dXRtaSI7CgkJCXFjYSxob3N0ID0gPCAweDAxID47CgkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
CgoJCQlkd2MzQDYwMDAwMDAgewoJCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3YzMiOwoJCQkJ
cmVnID0gPCAweDYwMDAwMDAgMHhmODAwMCA+OwoJCQkJaW50ZXJydXB0cyA9IDwgMHgwMCAw
eDg4IDB4MDAgPjsKCQkJCXVzYi1waHkgPSA8IDB4NGMgMHg0ZCA+OwoJCQkJcGh5LW5hbWVz
ID0gInVzYjItcGh5XDB1c2IzLXBoeSI7CgkJCQl0eC1maWZvLXJlc2l6ZTsKCQkJCWRyX21v
ZGUgPSAiaG9zdCI7CgkJCQl1c2IyLXN1c3BoeS1xdWlyazsKCQkJCXVzYjItaG9zdC1kaXNj
b24tcXVpcms7CgkJCQl1c2IyLWhvc3QtZGlzY29uLXBoeS1taXNjLXJlZyA9IDwgMHgyNCA+
OwoJCQkJdXNiMi1ob3N0LWRpc2Nvbi1tYXNrID0gPCAweDEwMCA+OwoJCQl9OwoJCX07CgoJ
CW1zbWdwaW8gewoJCQljb21wYXRpYmxlID0gIm1zbWdwaW8iOwoJCQlncGlvLWNvbnRyb2xs
ZXI7CgkJCSNncGlvLWNlbGxzID0gPCAweDAyID47CgkJCXBoYW5kbGUgPSA8IDB4NGYgPjsK
CQl9OwoKCQlwb2Utb3V0LXNpbXBsZSB7CgkJCWNvbXBhdGlibGUgPSAicmIscG9lLW91dC1z
aW1wbGUiOwoJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwoJCX07CgoJCWVkbWFAYzA4MDAwMCB7
CgkJCWNvbXBhdGlibGUgPSAicWNvbSxlc3MtZWRtYSI7CgkJCXJlZyA9IDwgMHhjMDgwMDAw
IDB4ODAwMCA+OwoJCQlxY29tLHBhZ2UtbW9kZSA9IDwgMHgwMCA+OwoJCQlxY29tLHJ4X2hl
YWRfYnVmX3NpemUgPSA8IDB4NjA0ID47CgkJCXFjb20sd2FuX3BvcnRfaWRfbWFzayA9IDwg
MHgxMCA+OwoJCQlxY29tLG1kaW9fc3VwcG9ydGVkOwoJCQlxY29tLHBoeV9tZGlvX2FkZHIg
PSA8IDB4MDQgPjsKCQkJcWNvbSxwb2xsX3JlcXVpcmVkID0gPCAweDAxID47CgkJCXFjb20s
Zm9yY2VkX3NwZWVkID0gPCAweDNlOCA+OwoJCQlxY29tLGZvcmNlZF9kdXBsZXggPSA8IDB4
MDEgPjsKCQkJaW50ZXJydXB0cyA9IDwgMHgwMCAweDQxIDB4MDEgMHgwMCAweDQyIDB4MDEg
MHgwMCAweDQzIDB4MDEgMHgwMCAweDQ0IDB4MDEgMHgwMCAweDQ1IDB4MDEgMHgwMCAweDQ2
IDB4MDEgMHgwMCAweDQ3IDB4MDEgMHgwMCAweDQ4IDB4MDEgMHgwMCAweDQ5IDB4MDEgMHgw
MCAweDRhIDB4MDEgMHgwMCAweDRiIDB4MDEgMHgwMCAweDRjIDB4MDEgMHgwMCAweDRkIDB4
MDEgMHgwMCAweDRlIDB4MDEgMHgwMCAweDRmIDB4MDEgMHgwMCAweDUwIDB4MDEgMHgwMCAw
eGYwIDB4MDEgMHgwMCAweGYxIDB4MDEgMHgwMCAweGYyIDB4MDEgMHgwMCAweGYzIDB4MDEg
MHgwMCAweGY0IDB4MDEgMHgwMCAweGY1IDB4MDEgMHgwMCAweGY2IDB4MDEgMHgwMCAweGY3
IDB4MDEgMHgwMCAweGY4IDB4MDEgMHgwMCAweGY5IDB4MDEgMHgwMCAweGZhIDB4MDEgMHgw
MCAweGZiIDB4MDEgMHgwMCAweGZjIDB4MDEgMHgwMCAweGZkIDB4MDEgMHgwMCAweGZlIDB4
MDEgMHgwMCAweGZmIDB4MDEgPjsKCQkJcG9ydF9tYXAgPSA8IDB4MDQgMHgwMyAweDAyIDB4
MDEgMHgwMCAweGZmZmZmZmZmID47CgoJCQlnbWFjMCB7CgkJCQlsb2NhbC1tYWMtYWRkcmVz
cyA9IFsgMDAgMDAgMDAgMDAgMDAgMDAgXTsKCQkJfTsKCgkJCWdtYWMxIHsKCQkJCWxvY2Fs
LW1hYy1hZGRyZXNzID0gWyAwMCAwMCAwMCAwMCAwMCAwMCBdOwoJCQl9OwoJCX07CgoJCXFj
b20scGNpZUA4MDAwMCB7CgkJCWNvbXBhdGlibGUgPSAicWNvbSxtc21fcGNpZSI7CgkJCWNl
bGwtaW5kZXggPSA8IDB4MDAgPjsKCQkJcWNvbSxjdHJsLWFtdCA9IDwgMHgwMSA+OwoJCQly
ZWcgPSA8IDB4ODAwMDAgMHgyMDAwIDB4OTkwMDAgMHg4MDAgMHg0MDAwMDAwMCAweGYxZCAw
eDQwMDAwZjIwIDB4YTggMHg0MDEwMDAwMCAweDEwMDAgMHg0MDIwMDAwMCAweDEwMDAwMCAw
eDQwMzAwMDAwIDB4ZDAwMDAwID47CgkJCXJlZy1uYW1lcyA9ICJwYXJmXDBwaHlcMGRtX2Nv
cmVcMGVsYmlcMGNvbmZcMGlvXDBiYXJzIjsKCQkJI2FkZHJlc3MtY2VsbHMgPSA8IDB4MDAg
PjsKCQkJaW50ZXJydXB0LXBhcmVudCA9IDwgMHg0ZSA+OwoJCQlpbnRlcnJ1cHRzID0gPCAw
eDAwIDB4MDEgMHgwMiAweDAzIDB4MDQgMHgwNSAweDA2IDB4MDcgMHgwOCAweDA5IDB4MGEg
MHgwYiAweDBjID47CgkJCSNpbnRlcnJ1cHQtY2VsbHMgPSA8IDB4MDEgPjsKCQkJaW50ZXJy
dXB0LW1hcC1tYXNrID0gPCAweGZmZmZmZmZmID47CgkJCWludGVycnVwdC1tYXAgPSA8IDB4
MDAgMHgwMSAweDAwIDB4OGQgMHgwMCAweDAxIDB4MDEgMHgwMCAweDhlIDB4MDAgMHgwMiAw
eDAxIDB4MDAgMHg4ZiAweDAwIDB4MDMgMHgwMSAweDAwIDB4OTAgMHgwMCAweDA0IDB4MDEg
MHgwMCAweDkxIDB4MDAgMHgwNSAweDAxIDB4MDAgMHg5MiAweDAwIDB4MDYgMHgwMSAweDAw
IDB4OTMgMHgwMCAweDA3IDB4MDEgMHgwMCAweDk0IDB4MDAgMHgwOCAweDAxIDB4MDAgMHg5
NSAweDAwIDB4MDkgMHgwMSAweDAwIDB4OTYgMHgwMCAweDBhIDB4MDEgMHgwMCAweDk3IDB4
MDAgMHgwYiAweDAxIDB4MDAgMHg5OCAweDAwID47CgkJCWludGVycnVwdC1uYW1lcyA9ICJp
bnRfbXNpXDBpbnRfYVwwaW50X2JcMGludF9jXDBpbnRfZFwwaW50X3Bsc19wbWVcMGludF9w
bWVfbGVnYWN5XDBpbnRfcGxzX2VyclwwaW50X2Flcl9sZWdhY3lcMGludF9wbHNfbGlua191
cFwwaW50X3Bsc19saW5rX2Rvd25cMGludF9icmlkZ2VfZmx1c2hfblwwaW50X3dha2UiOwoJ
CQlxY29tLGVwLWxhdGVuY3kgPSA8IDB4MGEgPjsKCQkJY2xvY2tzID0gPCAweDAyIDB4MjYg
MHgwMiAweDI3IDB4MDIgMHgyOCA+OwoJCQljbG9jay1uYW1lcyA9ICJwY2llXzBfY2ZnX2Fo
Yl9jbGtcMHBjaWVfMF9tc3RyX2F4aV9jbGtcMHBjaWVfMF9zbHZfYXhpX2NsayI7CgkJCW1h
eC1jbG9jay1mcmVxdWVuY3ktaHogPSA8IDB4MDAgMHgwMCAweDAwID47CgkJCXJlc2V0cyA9
IDwgMHgwMiAweDFjIDB4MDIgMHgxYiAweDAyIDB4MWEgMHgwMiAweDE5IDB4MDIgMHgxOCAw
eDAyIDB4MTcgMHgwMiAweDE2IDB4MDIgMHgxNSAweDAyIDB4MTQgMHgwMiAweDEzIDB4MDIg
MHgxMiAweDAyIDB4MTEgPjsKCQkJcmVzZXQtbmFtZXMgPSAicGNpZV9yc3RfYXhpX21fYXJl
c1wwcGNpZV9yc3RfYXhpX3NfYXJlc1wwcGNpZV9yc3RfcGlwZV9hcmVzXDBwY2llX3JzdF9h
eGlfbV92bWlkbXRfYXJlc1wwcGNpZV9yc3RfYXhpX3NfeHB1X2FyZXNcMHBjaWVfcnN0X3Bh
cmZfeHB1X2FyZXNcMHBjaWVfcnN0X3BoeV9hcmVzXDBwY2llX3JzdF9heGlfbV9zdGlja3lf
YXJlc1wwcGNpZV9yc3RfcGlwZV9zdGlja3lfYXJlc1wwcGNpZV9yc3RfcHdyX2FyZXNcMHBj
aWVfcnN0X2FoYl9yZXNcMHBjaWVfcnN0X3BoeV9haGJfYXJlcyI7CgkJCXN0YXR1cyA9ICJv
ayI7CgkJCXBoYW5kbGUgPSA8IDB4NGUgPjsKCQl9OwoKCQlsZWRjQDE5MzcwMDAgewoJCQlj
b21wYXRpYmxlID0gInFjYSxsZWRjIjsKCQkJcmVnID0gPCAweDE5MzcwMDAgMHgyMDA3MCA+
OwoJCQlyZWctbmFtZXMgPSAibGVkY19iYXNlX2FkZHIiOwoJCQlxY29tLHRjc3JfbGVkY192
YWx1ZXMgPSA8IDB4MzIwMTkzIDB4MTQ3MjA4MDAgMHgyMGQgMHgwMCAweDAwIDB4ZmZmZmZm
ZmYgMHgwMCAweDA3IDB4N2QwMDEwIDB4MDAgMHgxMDQ4MjA5MCAweDNmZmZkZmMgPjsKCQkJ
cWNvbSxsZWRjX2JsaW5rX2luZGljZXNfY250ID0gPCAweDAwID47CgkJCXFjb20sbGVkY19i
bGlua19pbmRpY2VzID0gPCAweDAwID47CgkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CgkJfTsK
CgkJcG11IHsKCQkJY29tcGF0aWJsZSA9ICJhcm0sY29ydGV4LWE3LXBtdSI7CgkJCWludGVy
cnVwdHMgPSA8IDB4MDEgMHgwNyAweGYwNCA+OwoJCX07CgoJCXNkaGNpQDc4MjQwMDAgewoJ
CQljb21wYXRpYmxlID0gInFjb20sc2RoY2ktbXNtLXY0IjsKCQkJcmVnID0gPCAweDc4MjQ5
MDAgMHgxMWMgMHg3ODI0MDAwIDB4ODAwID47CgkJCWludGVycnVwdHMgPSA8IDB4MDAgMHg3
YiAweDAwIDB4MDAgMHg4YSAweDAwID47CgkJCWJ1cy13aWR0aCA9IDwgMHgwOCA+OwoJCQlj
bG9ja3MgPSA8IDB4MDIgMHgyZSAweDAyIDB4MmQgPjsKCQkJY2xvY2stbmFtZXMgPSAiY29y
ZVwwaWZhY2UiOwoJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwoJCX07CgoJCWVzcy1zd2l0Y2hA
YzAwMDAwMCB7CgkJCWNvbXBhdGlibGUgPSAicWNvbSxlc3Mtc3dpdGNoIjsKCQkJcmVnID0g
PCAweGMwMDAwMDAgMHg4MDAwMCA+OwoJCQlzd2l0Y2hfYWNjZXNzX21vZGUgPSAibG9jYWwg
YnVzIjsKCQkJcmVzZXRzID0gPCAweDAyIDB4MWQgMHgwMiAweDRlIDB4MDIgMHg0ZiAweDAy
IDB4NTAgMHgwMiAweDUxIDB4MDIgMHg1MiA+OwoJCQlyZXNldC1uYW1lcyA9ICJlc3NfcnN0
XDBlc3NfbWFjMV9jbGtfZGlzXDBlc3NfbWFjMl9jbGtfZGlzXDBlc3NfbWFjM19jbGtfZGlz
XDBlc3NfbWFjNF9jbGtfZGlzXDBlc3NfbWFjNV9jbGtfZGlzIjsKCQkJY2xvY2tzID0gPCAw
eDAyIDB4MjMgPjsKCQkJY2xvY2stbmFtZXMgPSAiZXNzX2NsayI7CgkJCXN3aXRjaF9jcHVf
Ym1wID0gPCAweDAxID47CgkJCXN3aXRjaF9sYW5fYm1wID0gPCAweDFlID47CgkJCXN3aXRj
aF93YW5fYm1wID0gPCAweDIwID47CgkJCXN3aXRjaF9tYWNfbW9kZSA9IDwgMHgwMCA+OwoJ
CQlzd2l0Y2hfaW5pdHZsYXMgPSA8IDB4N2MgMHg1NCA+OwoJCX07CgoJCWVzcy1wc2dtaWlA
OTgwMDAgewoJCQljb21wYXRpYmxlID0gInFjb20sZXNzLXBzZ21paSI7CgkJCXJlZyA9IDwg
MHg5ODAwMCAweDgwMCA+OwoJCQlwc2dtaWlfYWNjZXNzX21vZGUgPSAibG9jYWwgYnVzIjsK
CQkJcmVzZXRzID0gPCAweDAyIDB4NGQgPjsKCQkJcmVzZXQtbmFtZXMgPSAicHNnbWlpX3Jz
dCI7CgkJfTsKCgkJbWRpb0A5MDAwMCB7CgkJCSNhZGRyZXNzLWNlbGxzID0gPCAweDAxID47
CgkJCSNzaXplLWNlbGxzID0gPCAweDAxID47CgkJCWNvbXBhdGlibGUgPSAicWNvbSxpcHE0
MHh4LW1kaW8iOwoJCQlyZWcgPSA8IDB4OTAwMDAgMHg2NCA+OwoKCQkJZXRoZXJuZXQtcGh5
QDAgewoJCQkJcmVnID0gPCAweDAwIDB4MDQgPjsKCQkJfTsKCgkJCWV0aGVybmV0LXBoeUAx
IHsKCQkJCXJlZyA9IDwgMHgwMSAweDA0ID47CgkJCX07CgoJCQlldGhlcm5ldC1waHlAMiB7
CgkJCQlyZWcgPSA8IDB4MDIgMHgwNCA+OwoJCQl9OwoKCQkJZXRoZXJuZXQtcGh5QDMgewoJ
CQkJcmVnID0gPCAweDAzIDB4MDQgPjsKCQkJfTsKCgkJCWV0aGVybmV0LXBoeUA0IHsKCQkJ
CXJlZyA9IDwgMHgwNCAweDA0ID47CgkJCX07CgkJfTsKCgkJcWNhLHNjbV9yZXN0YXJ0X3Jl
YXNvbiB7CgkJCWNvbXBhdGlibGUgPSAicWNhLHNjbV9yZXN0YXJ0X3JlYXNvbiI7CgkJfTsK
CgkJY3B1X2ZyZXFfaXBxNDB4eCB7CgkJCWNvbXBhdGlibGUgPSAicWNhLGlwcTQweHhfZnJl
cSI7CgkJCWNsb2NrLWxhdGVuY3kgPSA8IDB4MTg2YTAgPjsKCQkJcWNvbSxjcHVmcmVxLXRh
YmxlID0gPCAweGFlY2UwIDB4NWRjMDAgMHg2NGQ0OCAweDZkNjAwIDB4NzcyNDAgMHg3ZDAw
MCAweDgzMWE4IDB4ODlmMDggMHg5MWMwOCAweDlhNGMwIDB4YTQxMDAgMHhiYjgwMCAweGM4
ZWQ4IDB4ZGFjMDAgPjsKCQl9OwoJfTsKCgltZW1vcnlAODAwMDAwMDAgewoJCWRldmljZV90
eXBlID0gIm1lbW9yeSI7CgkJcmVnID0gPCAweDgwMDAwMDAwIDB4MTAwMDAwMDAgPjsKCX07
CgoJcmVzZXJ2ZWQtbWVtb3J5IHsKCQkjYWRkcmVzcy1jZWxscyA9IDwgMHgwMSA+OwoJCSNz
aXplLWNlbGxzID0gPCAweDAxID47CgkJcmFuZ2VzOwoKCQlyc3ZkMUA4NzAwMDAwMCB7CgkJ
CXJlZyA9IDwgMHg4NzAwMDAwMCAweDUwMDAwMCA+OwoJCQluby1tYXA7CgkJfTsKCgkJd2lm
aV9kdW1wQDg3NTAwMDAwIHsKCQkJcmVnID0gPCAweDg3NTAwMDAwIDB4NjAwMDAwID47CgkJ
CW5vLW1hcDsKCQl9OwoKCQlyc3ZkMkA4N0IwMDAwMCB7CgkJCXJlZyA9IDwgMHg4N2IwMDAw
MCAweDUwMDAwMCA+OwoJCQluby1tYXA7CgkJfTsKCX07CgoJbGVkcyB7CgkJY29tcGF0aWJs
ZSA9ICJsZWRzLXJiIjsKCgkJdXNlci1sZWQgewoJCQlncGlvcyA9IDwgMHg0ZiAweDAzIDB4
MDAgPjsKCQl9OwoKCQlwb3dlci1sZWQgewoJCQlncGlvcyA9IDwgMHg0ZiAweDAwIDB4MDAg
PjsKCQkJZGVmYXVsdC1zdGF0ZSA9ICJrZWVwIjsKCQl9OwoKCQlidXR0b24gewoJCQlncGlv
cyA9IDwgMHg0ZiAweDNmIDB4MDEgPjsKCQkJZGVmYXVsdC1zdGF0ZSA9ICJpbnB1dCI7CgkJ
fTsKCgkJbW9kZS1idXR0b24gewoJCQlncGlvcyA9IDwgMHg0ZiAweDA1IDB4MDEgPjsKCQkJ
ZGVmYXVsdC1zdGF0ZSA9ICJpbnB1dCI7CgkJfTsKCgkJdXNiLXBvd2VyLW9mZiB7CgkJCWdw
aW9zID0gPCAweDRmIDB4MDIgMHgwMSA+OwoJCX07Cgl9Owp9Owo=
--------------9035357472566E0725928016--

--nujRi3BplS3dmMFpGL8QFsPeuPm8Sb6GX--

--4DBjhtsYK8hjeGvcdgJcWDnhd0JN2V4No
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl0/anwACgkQ8bdnhZyy
68ejTwgArDjQRIImY1aW7imu1cqtWmEerjr4irZe6XuVpwj9DQxy65PuP9k9/oeU
/3cgrgPFjGwHIpQnC6KlJLXyb9Xt0JdlSrE0/hqX0SeXsRhn6EM6t18cX5/K4Rsf
YVztfstYYhtLBq9WtjEuYenSoCwB1V1793zYfozh+MoNsid7obhEOoeaAZn1lJrl
3KGVWR+wPP1rMcMuhkSvuiL/k5eBkL+FzgGUD/nsP97LX+lIyZRaiVB47JtHz1vk
jxNsGrNxf12Nq1EtxTqghrV2wOZIu+ZItT8ZDGl4SZeJz0JTBRqvq1n+zep/st8h
d5rCycl3d1EZ3hW2HShMb40hUgH++A==
=WqTY
-----END PGP SIGNATURE-----

--4DBjhtsYK8hjeGvcdgJcWDnhd0JN2V4No--


--===============2649201971430041653==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2649201971430041653==--

