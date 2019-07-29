Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4D178858
	for <lists+openwrt-devel@lfdr.de>; Mon, 29 Jul 2019 11:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oiawRSVDajZ6IwiNUFO0npmQnmy2uEiPILrSeoom6dY=; b=PF+
	QebSyBhdXb/2p+uJdr+uZPA7JoLAAJJldSBYLiXPHqJz6YgS5gHDPhxZ4ET1AxqHojnjH5O0S7Q3I
	ZmxFbP693IG0EUMNZTvxfeNYmpfY0XrBd5DnWR14FmtECv4AGzA5JYurienoSC7YNBwQNCYlxJe1E
	Uq3F0SsIInev/L9hE4CgWEO3qPqMeH4cWXE86EuLpqZ8NkT/oeElGG7qlNB1VT7lv+xpatLxJA1so
	E+N/ZGRkzLyyWpk5GgC7pLjNuzRVoSyjZoVpiUy+8tZBD8hG7WKhnJ0AZ7G8Rqg5V+0s+WjRwX79f
	CTXw599nB6nzFxROYOeipDfmZG/zUhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs1vI-0002De-7y; Mon, 29 Jul 2019 09:26:28 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs1v0-00022q-BY
 for openwrt-devel@lists.openwrt.org; Mon, 29 Jul 2019 09:26:13 +0000
Received: from [2001:912:1800:0:6047:46ae:9b34:a5df] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1hs1up-0001gA-G3; Mon, 29 Jul 2019 11:25:59 +0200
Date: Mon, 29 Jul 2019 11:25:55 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: Hauke Mehrtens <hauke@hauke-m.de>, Robert Marko <robimarko@gmail.com>,
 openwrt-devel@lists.openwrt.org
Message-ID: <20190729092555.GA6171@lud.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_022610_837796_232F6975 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] =?iso-8859-1?q?ipq40xx=3A_fails_to_boot_with_SMP?=
 =?iso-8859-1?q?_on_Mikrotik_hAP_ac=B2_/_RBD52G-5HacD2HnD_=28WIP=29?=
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
Content-Type: multipart/mixed; boundary="===============1005108453575529414=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============1005108453575529414==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline


--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to finish the port of Mikrotik hAP ac=C2=B2, but I still can't =
get
it to boot properly with SMP.  Adding "nosmp" to the cmdline makes the
initramfs boot fine.

Here is the work-in-progress tree that Hauke based on the RB450Gx4 work:

https://github.com/mmaker/openwrt/tree/device/hAP-ac%C2%B2
https://github.com/mmaker/openwrt/blob/device/hAP-ac%C2%B2/target/linux/ipq=
40xx/files-4.19/arch/arm/boot/dts/qcom-ipq4018-rbd52g-5hacd2hnd.dts
Wiki page: https://openwrt.org/inbox/mikrotik/mikrotik_hap_ac

I tried Pavel's patch "ipq40xx: add support for secondary cores bringup"
=66rom http://lists.infradead.org/pipermail/openwrt-devel/2019-May/017057.h=
tml
but it did not seem to change anything.

Is there something obviously wrong in the DTS?  As far as I know, other
ipq40xx devices don't have an issue with SMP.

Thanks,
Baptiste


PS: here is the failing bootlog, getting stuck after "Testing write buffer =
coherency":
                            =20
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 4.19.57 (bjonglez@gcc14) (gcc version 7.4.0 (O=
penWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 08:51:07 2019
[    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=3D10c=
5387d
[    0.000000] CPU: div instructions available: patching division code
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instr=
uction cache
[    0.000000] OF: fdt: Machine model: Mikrotik RouterBOARD RBD52G-5HacD2Hn=
D (hAP ac=C2=B2)
[    0.000000] bootconsole [earlycon0] enabled
[    0.000000] Memory policy: Data cache writealloc
[    0.000000] OF: reserved mem: OVERLAP DETECTED!
[    0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) overlaps with smem@8=
7e00000 (0x87e00000--0x87e80000)
[    0.000000] random: get_random_bytes called from start_kernel+0x7c/0x438=
 with crng_init=3D0
[    0.000000] percpu: Embedded 15 pages/cpu s29964 r8192 d23284 u61440
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 60864
[    0.000000] Kernel command line: earlyprintk
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 byt=
es)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Memory: 232420K/245760K available (4720K kernel code, 168K r=
wdata, 1288K rodata, 3072K init, 231K bss, 13340K reserved, 0K cma-reserved=
, 0K highmem)
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
[    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
[    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
[    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
[    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (5713 kB)
[    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (3072 kB)
[    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 168 kB)
[    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 232 kB)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] arch_timer: cp15 timer(s) running at 48.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cy=
cles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns
[    0.000007] sched_clock: 56 bits at 48MHz, resolution 20ns, wraps every =
4398046511096ns
[    0.007985] Switching to timer-based delay loop, resolution 20ns
[    0.014242] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 96.00 BogoMIPS (lpj=3D480000)
[    0.024315] pid_max: default: 32768 minimum: 301
[    0.029081] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.035524] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 by=
tes)
[    0.043539] CPU: Testing write buffer coherency: ok


Here is a working bootlog, same image but with "nosmp":

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 4.19.57 (bjonglez@gcc14) (gcc version 7.4.0 (O=
penWrt GCC 7.4.0 r10506-a0c97101d6)) #0 SMP Mon Jul 29 08:13:02 2019
[    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=3D10c=
5387d
[    0.000000] CPU: div instructions available: patching division code
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instr=
uction cache
[    0.000000] OF: fdt: Machine model: Mikrotik RouterBOARD RBD52G-5HacD2Hn=
D (hAP ac=C2=B2)
[    0.000000] bootconsole [earlycon0] enabled
[    0.000000] Memory policy: Data cache writealloc
[    0.000000] OF: reserved mem: OVERLAP DETECTED!
[    0.000000] rsvd2@87B00000 (0x87b00000--0x88000000) overlaps with smem@8=
7e00000 (0x87e00000--0x87e80000)
[    0.000000] random: get_random_bytes called from start_kernel+0x7c/0x438=
 with crng_init=3D0
[    0.000000] percpu: Embedded 15 pages/cpu s29964 r8192 d23284 u61440
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 60864
[    0.000000] Kernel command line: earlyprintk nosmp
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 byt=
es)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Memory: 232420K/245760K available (4720K kernel code, 168K r=
wdata, 1288K rodata, 3072K init, 231K bss, 13340K reserved, 0K cma-reserved=
, 0K highmem)
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
[    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
[    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
[    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
[    0.000000]       .text : 0x(ptrval) - 0x(ptrval)   (5713 kB)
[    0.000000]       .init : 0x(ptrval) - 0x(ptrval)   (3072 kB)
[    0.000000]       .data : 0x(ptrval) - 0x(ptrval)   ( 168 kB)
[    0.000000]        .bss : 0x(ptrval) - 0x(ptrval)   ( 232 kB)
[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, N=
odes=3D1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
[    0.000000] arch_timer: cp15 timer(s) running at 48.00MHz (virt).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cy=
cles: 0xb11fd3bfb, max_idle_ns: 440795203732 ns
[    0.000008] sched_clock: 56 bits at 48MHz, resolution 20ns, wraps every =
4398046511096ns
[    0.007985] Switching to timer-based delay loop, resolution 20ns
[    0.014242] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 96.00 BogoMIPS (lpj=3D480000)
[    0.024315] pid_max: default: 32768 minimum: 301
[    0.029087] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.035521] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 by=
tes)
[    0.043529] CPU: Testing write buffer coherency: ok
[    0.048493] Setting up static identity map for 0x80300000 - 0x80300060
[    0.054162] rcu: Hierarchical SRCU implementation.
[    0.059609] smp: Bringing up secondary CPUs ...
[    0.063282] smp: Brought up 1 node, 1 CPU
[    0.067274] SMP: Total of 1 processors activated (96.00 BogoMIPS).
[    0.073476] CPU: All CPU(s) started in SVC mode.
[    0.082314] VFP support v0.3: implementor 41 architecture 2 part 30 vari=
ant 7 rev 5
[    0.089157] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 19112604462750000 ns
[    0.098782] futex hash table entries: 1024 (order: 4, 65536 bytes)
[    0.105261] pinctrl core: initialized pinctrl subsystem
[    0.111253] NET: Registered protocol family 16
[    0.115162] DMA: preallocated 256 KiB pool for atomic coherent allocatio=
ns
[    0.122468] cpuidle: using governor ladder
[    0.125641] cpuidle: using governor menu
[    0.147920] usbcore: registered new interface driver usbfs
[    0.152432] usbcore: registered new interface driver hub
[    0.157828] usbcore: registered new device driver usb
[    0.162751] pps_core: LinuxPPS API ver. 1 registered
[    0.167657] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    0.176824] PTP clock support registered
[    0.182206] clocksource: Switched to clocksource arch_sys_counter
[    0.188356] NET: Registered protocol family 2
[    0.192405] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, =
6144 bytes)
[    0.199346] TCP established hash table entries: 2048 (order: 1, 8192 byt=
es)
[    0.206336] TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
[    0.212745] TCP: Hash tables configured (established 2048 bind 2048)
[    0.219173] UDP hash table entries: 256 (order: 1, 8192 bytes)
[    0.224904] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
[    0.231351] NET: Registered protocol family 1
[    2.746607] No memory allocated for crashlog
[    2.750141] workingset: timestamp_bits=3D14 max_order=3D16 bucket_order=
=3D2
[    2.761295] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    2.766200] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PR=
IORITY) (c) 2001-2006 Red Hat, Inc.
[    2.782649] io scheduler noop registered
[    2.785548] io scheduler deadline registered (default)
[    2.793099] bam-dma-engine 8e04000.dma: num-channels unspecified in dt
[    2.798599] bam-dma-engine 8e04000.dma: num-ees unspecified in dt
[    2.806057] tcsr 1949000.tcsr: setting wifi_glb_cfg =3D 41000000
[    2.810931] tcsr 194b000.tcsr: setting usb hs phy mode select =3D e700e7
[    2.817492] tcsr 1953000.ess_tcsr: setting ess interface select =3D 0
[    2.823714] tcsr 1957000.tcsr: setting wifi_noc_memtype_m0_m2 =3D 2222222
[    2.830473] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
[    2.837172] msm_serial 78af000.serial: msm_serial: detected port #0
[    2.842873] msm_serial 78af000.serial: uartclk =3D 1843200
[    2.848133] 78af000.serial: ttyMSM0 at MMIO 0x78af000 (irq =3D 25, base_=
baud =3D 115200) is a MSM
[    2.856646] msm_serial: console setup =EF=BF=BD[    2.861276] console [t=
tyMSM0] enabled
[    2.861276] console [ttyMSM0] enabled
[    2.867570] bootconsole [earlycon0] disabled
[    2.867570] bootconsole [earlycon0] disabled
[    2.876309] msm_serial: driver initialized
[    2.881720] loop: module loaded
[    2.883175] spi_qup 78b5000.spi: IN:block:16, fifo:64, OUT:block:16, fif=
o:64
[    2.892706] random: fast init done
[    2.893893] m25p80 spi0.0: w25q128jv (16384 Kbytes)
[    2.895046] 6 fixed-partitions partitions found on MTD device spi0.0
[    2.899777] Creating 6 MTD partitions on "spi0.0":
[    2.906415] 0x000000000000-0x000000023000 : "Qualcomm-boot1"
[    2.911807] 0x000000023000-0x000000080000 : "Qualcomm-boot2"
[    2.917503] 0x000000080000-0x00000008e000 : "RouterBoot"
[    2.923117] 0x00000008e000-0x00000008f000 : "hard_config"
[    2.928336] 0x000000090000-0x0000000a0000 : "dts_config"
[    2.933724] 0x0000000bd000-0x0000000be000 : "soft_config"
[    2.939783] libphy: ipq40xx_mdio: probed
[    3.021986] ESS reset ok!
[    3.054970] ESS reset ok!
[    3.473002] libphy: Fixed MDIO Bus: probed
[    3.474006] EDMA using MAC@ - using
[    3.474026] be:cf:22:8f:ab:1b
[    3.480289] EDMA using MAC@ - using
[    3.480301] ba:b5:bb:8b:4c:13
[    3.582352] i2c /dev entries driver
[    3.589076] NET: Registered protocol family 10
[    3.590761] Segment Routing with IPv6
[    3.592617] NET: Registered protocol family 17
[    3.596483] 8021q: 802.1Q VLAN Support v1.8
[    3.600563] Registering SWP/SWPB emulation handler
[    3.611201] =EF=BF=BD[    3.617293] Freeing unused kernel memory: 3072K
[    3.632992] Run /init as init process
[    3.658087] init: Console is alive
[    3.658335] init: - watchdog -
[    3.670018] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    3.682835] kmodloader: done loading kernel modules from /etc/modules-bo=
ot.d/*
[    3.693606] init: - preinit -
[    3.871306] random: jshn: uninitialized urandom read (4 bytes read)
[    3.904673] random: jshn: uninitialized urandom read (4 bytes read)
[    3.966511] random: jshn: uninitialized urandom read (4 bytes read)
/bin/board_detect: line 10: Unsupported: not found
Press the [f] key and hit [enter] to enter failsafe mode
Press the [1], [2], [3] or [4] key and hit [enter] to select the debug level
[    7.223677] procd: - early -
[    7.223795] procd: - watchdog -
[    7.769990] procd: - watchdog -
[    7.773940] procd: - ubus -
[    7.788514] urandom_read: 5 callbacks suppressed
[    7.788528] random: ubusd: uninitialized urandom read (4 bytes read)
[    7.824888] random: ubusd: uninitialized urandom read (4 bytes read)
[    7.828410] procd: - init -
Please press Enter to activate this console.
[    8.109693] urngd: v1.0.0 started.
[    8.151387] kmodloader: loading kernel modules from /etc/modules.d/*
[    8.183371] input: beeper as /devices/platform/beeper/input/input0
[    8.194497] Loading modules backported from Linux version v4.19.32-0-g3a=
2156c839c7
[    8.194532] Backport generated by backports.git v4.19.32-1-0-g1c4f7569
[    8.224703] xt_time: kernel timezone is -0000
[    8.263888] random: crng init done
[    8.270731] usbcore: registered new interface driver mt7601u
[    8.296351] PPP generic driver version 2.4.2
[    8.298086] NET: Registered protocol family 24
[    8.312402] usbcore: registered new interface driver mt76x0u
[    8.316366] kmodloader: done loading kernel modules from /etc/modules.d/*


--n8g4imXOkfNTN/H1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl0+u6IACgkQvgHsIqBO
LkaZmA//cZuyYICAVtVxjXNLcf9coSDU+Q7eWSQCAd63CHRBssRRD3MxXZmtdmAY
eUkgaWcpYUPjKGdnJxHfSBObWPNLcCH/jRCMpv5QuQ/k5NrE0pmmRcWNaP1atQ1G
+v49QwRyVzRDGxkXsAF51ieGTVtgG+9DAAGZXwxLpRHqkUfYTCMP7Ii57cdaLlNW
UIhPf52tSarJWA3dqIezKPw+SWbJR8SRQzFU0sRvXEfa88JNqezg/0HciV4WmLfR
x5Rcz+84m7gg6MJm6iTqZuxV67a8k3L6D2REdkwYQbP4CL83ouxN6Qirjazfqlph
bQWlZGJlsJO4cd6XtbwNh+QsjYE4AV7z6PjQ/m3Xa9O5qWaJIzI0WCmtbEdkOIqp
2lxQacHu75TDbWWqQ/U8+vFh2p0sRVdKjYrLpTpvI16Y8K1FToa7r7kOzmfMcKH5
BvY4ck638bX5yNRHWMw5YfF0DS/m8xcpncTJ+1LcLB3nx9K6F75Plt/jG8s6t6/r
ENYb+ZfYkF+bGa3AEJ7EYSHXfzS6D9ayYi2tmSY9ceaIMxb48PhjQX6Qz87jsA0S
92ERM0PCTW36rR0DLESX+QNYQaIds/zzKCrVdYWhtFusCWrOuxip/8Eob0+buNvn
FsynQTIvM73awDX4T+3IkzYeNNbhbFGjcIMVBk51TNlZW3OzcJM=
=eiAF
-----END PGP SIGNATURE-----

--n8g4imXOkfNTN/H1--


--===============1005108453575529414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1005108453575529414==--

