Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E594919DE9E
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 21:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gceoh1M0WD2h7QIvMb96hCxmwb3BDmOgTDY+HTQpfw0=; b=Mijdh3YcXfbUq1WwzS4WliQ97
	RYYwq2fTQBfaB4NqRvV4zCBJCtxruFq/OqrxEFYU1n22FgwyUP34aiz5j2aP0GJ32iN5Uubc04TcY
	TbZlrUw8Dw4huWuUSjJWDl07MDd56kpofx96p1ZP4WIr4bMEmdtpmCs6yRoxrqc43tFTCn/DSTF8H
	QaNa82xHzEtnTIESzqVMf3gDYfY367F1FftkBx64rW5xayM9/PkJ470qRHXPJorY/jR9LgAI8FTZc
	Ck2KlpEtcdWUR+h7rKGPNuN/spygXrxymZxzlpgQfrwVU2AvdSxceWNOY6yUGB9GalLRJQN0+XDP7
	CmLuK9m7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSCQ-0000Dt-8e; Fri, 03 Apr 2020 19:41:54 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSCI-0000DX-J4
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 19:41:49 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MEVmm-1jZKYo1eAs-00G52c; Fri, 03 Apr 2020 21:41:32 +0200
From: <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Bj=C3=B8rn_Mork'?= <bjorn@mork.no>,
 "'Russell Senior'" <russell@personaltelco.net>
References: <20200402195359.51545-1-mail@david-bauer.net>
 <87k12wx6tm.fsf@miraculix.mork.no>
 <e74d668d-d2ad-8312-b5c0-7e8e2e9bbf02@gmail.com>
 <332d6de9-97e7-2afb-20f9-18aa66e2a0aa@david-bauer.net>
 <CAHP3WfMQmF+rmm2iaTJPakKHDUAKpYoWDh=o_4tE+3LBQjhMbQ@mail.gmail.com>
 <87k12wveuc.fsf@miraculix.mork.no>
In-Reply-To: <87k12wveuc.fsf@miraculix.mork.no>
Date: Fri, 3 Apr 2020 21:41:30 +0200
Message-ID: <01f201d609ef$e09c4620$a1d4d260$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGC1SgkF0aUPCAgLXhSaGRWdguy5wIcJfPpASbPQuMBpv3RWgItjMWUAjUTdwiow9BG8A==
Content-Language: de
X-Provags-ID: V03:K1:Ec33EDTjpHWSstIOkTYKirIbdmIj7aZZjVzE2Rcf0CdDIoy0q+d
 RUT+911JdzEvMgYkJ4fAfSh2gqlESh81SA/xrXVn74CrNW7hTL4hZgD5IhXMt1ZwK0PKkU6
 +WUl/V/DRDokKjccLt/dl1sReNhtSCk9jXcOprZYdee5ZVKz7Mpx0jNT2KOAUeCd55hxVE1
 WW2i78y0LqGyT6Rw4yYCQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FD7v/2DAKo8=:uPHxwQfFTFxZqrNAkEYRZ3
 fYDBVTYI8apjY+HMdK+3RpPHDL/A5qJDHgZ3Hy2kDqS/v1TBjbt+heMscDwzBIpY/LbI7NRVQ
 lZztUrVaNtNg7K4ZgTPkpWODMlqbdl0qO+9ifqeZSszKKb9co0wRzeV13jyxiOCPKI+rcnlxx
 2i+jLq42Wx1tq9Q0ThP085iVDX+aE472ybUnibCUfi1LNZe353T4/crsRKalPBDaeFxZrJZJW
 AZwapF8/i2+x1FdtiOEsR1UkNFnKe6VprtxHLpKDLfto0Jr61V/UMLCtb5Di90nwGS6EenwmS
 NmDt1s4gYSGoBNsszE7Xr2dHGOwnHym2pa/CQBA99Teg6ern2NB2+/ZNhrSXHV0ykvECuTTRb
 XPNLQnPMay/AAwYgTpQ9HG8JzM0xSa1pNDlKklruEWppDv1uJUtQlbdS6O5GTEzAnUUKTXazy
 28hCZXNjFyvP0GeMiFL6GscsxHj0k5Az3D6V6kfmRdnTb9OXbjj7ECRCGcUY+OERRBNdHY70z
 RYVaT79jlA7Wx64r/GaV7ruGTr3aiiRjBFrcH+Q7xZkIgy3IRArf8g7rg15ws5IX1MMr948Ja
 PSXiZTD6PSC0zFHiZw7VfeYYlRGiTC8XGwOtMf4qG443pJV5iA0I92F+iYw0yJU3OIX+9p6sf
 QKxSbS8KVLuq/EbZesZ0EAxulzSpTqj6L5aKXo8kJvcESFB4PQsqwFpAONsoLiUQK09dOSBWr
 0cUVkawU4VA/YFepXlpBghBiJQ9N1tcKqDmwWJBekGpmOvm1K7DOayX+COtMuBsrqH2pYwnsx
 FmGy7l64PdcuVe8HODAP0FSXvw9V59Gw8DbF8TLumD8dZ/vtgIT4DQqWGgs1HSg615zHmk0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_124146_926105_66BCA8F0 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>,
 'David Bauer' <mail@david-bauer.net>, 'Magnus Kroken' <mkroken@gmail.com>
Content-Type: multipart/mixed; boundary="===============3359092091676270195=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3359092091676270195==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=tNVyvluEfn3Biv=-="

This is a multipart message in MIME format.

--=-=tNVyvluEfn3Biv=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Bj=C3=B8rn Mork
> Sent: Freitag, 3. April 2020 16:12
> To: Russell Senior <russell@personaltelco.net>
> Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>; David Bauer
> <mail@david-bauer.net>; Magnus Kroken <mkroken@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: switch to kernel 5.4
>=20
> Russell Senior <russell@personaltelco.net> writes:
>=20
> > FYI: https://bugs.openwrt.org/index.php?do=3Ddetails&task_id=3D2928
>=20
> Thanks a lot!
>=20
> AP is now revived *with* v5.4 built with gcc-8.4.0.

So, this is sorted out?

If further testing is required, I have a Unifi AC Mesh and several TP-Link =
devices at hand (but only limited time for testing).
I might also try what happens on tiny ...

Best

Adrian

>=20
> Hauke already did all the hevy debugging work.  I assumed that if
>=20
>  http://git.kernel.org/linus/9012d011660ea5cf2a623e1de207a2bc0ca6936d
>=20
> broke this, then a simple quickfix would be to disable
> CONFIG_OPTIMIZE_INLINING
>=20
> But looking at that dsp stuff, I noticed that there was a pair of suspici=
ous-
> looking inlined (or not after v5.4...) functions.  So without understandi=
ng
> much of this, I just tested once with the attached patch.
> And it boots:
>=20
>=20
> root@unifiac2:~# dmesg
> [    0.000000] Linux version 5.4.28 (bjorn@canardo) (gcc version 8.4.0
> (OpenWrt GCC 8.4.0 r12793-fcd14017007d)) #0 Fri Apr 3 13:28:57 2020
> [    0.000000] printk: bootconsole [early0] enabled
> [    0.000000] CPU0 revision is: 00019750 (MIPS 74Kc)
> [    0.000000] MIPS: machine is Ubiquiti UniFi-AC-PRO
> [    0.000000] SoC: Qualcomm Atheros QCA956X ver 1 rev 0
> [    0.000000] Initrd not found or empty - disabling initrd
> [    0.000000] Primary instruction cache 64kB, VIPT, 4-way, linesize 32 b=
ytes.
> [    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases, lines=
ize 32
> bytes
> [    0.000000] Zone ranges:
> [    0.000000]   Normal   [mem 0x0000000000000000-0x0000000007ffffff]
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000000000-0x0000000007ffffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-
> 0x0000000007ffffff]
> [    0.000000] On node 0 totalpages: 32768
> [    0.000000]   Normal zone: 256 pages used for memmap
> [    0.000000]   Normal zone: 0 pages reserved
> [    0.000000]   Normal zone: 32768 pages, LIFO batch:7
> [    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=3D1*32768
> [    0.000000] pcpu-alloc: [0] 0
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 325=
12
> [    0.000000] Kernel command line: console=3DttyS0,115200n8
> rootfstype=3Dsquashfs,jffs2
> [    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 by=
tes,
> linear)
> [    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 byte=
s,
> linear)
> [    0.000000] Writing ErrCtl register=3D00000000
> [    0.000000] Readback ErrCtl register=3D00000000
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 122844K/131072K available (4405K kernel code, 167K
> rwdata, 1044K rodata, 1224K init, 190K bss, 8228K reserved, 0K cma-reserv=
ed)
> [    0.000000] SLUB: HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1,=
 Nodes=3D1
> [    0.000000] NR_IRQS: 51
> [    0.000000] random: get_random_bytes called from
> start_kernel+0x324/0x4ec with crng_init=3D0
> [    0.000000] CPU clock: 775.000 MHz
> [    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff,
> max_idle_ns: 4932285024 ns
> [    0.000007] sched_clock: 32 bits at 387MHz, resolution 2ns, wraps every
> 5541893118ns
> [    0.008208] Calibrating delay loop... 385.02 BogoMIPS (lpj=3D770048)
> [    0.046712] pid_max: default: 32768 minimum: 301
> [    0.051701] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes,
> linear)
> [    0.059411] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
> bytes, linear)
> [    0.070685] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff,
> max_idle_ns: 7645041785100000 ns
> [    0.080993] futex hash table entries: 256 (order: -1, 3072 bytes, line=
ar)
> [    0.088207] pinctrl core: initialized pinctrl subsystem
> [    0.094602] NET: Registered protocol family 16
> [    0.105912] PCI host bridge /ahb/pcie-controller@18250000 ranges:
> [    0.112386]  MEM 0x0000000012000000..0x0000000013ffffff
> [    0.117899]   IO 0x0000000000000000..0x0000000000000000
> [    0.140712] PCI host bridge to bus 0000:00
> [    0.145080] pci_bus 0000:00: root bus resource [mem 0x12000000-0x13fff=
fff]
> [    0.152334] pci_bus 0000:00: root bus resource [io  0x0000]
> [    0.158208] pci_bus 0000:00: root bus resource [??? 0x00000000 flags 0=
x0]
> [    0.165361] pci_bus 0000:00: No busn resource found for root bus, will=
 use
> [bus 00-ff]
> [    0.173740] pci 0000:00:00.0: [168c:003c] type 00 class 0x028000
> [    0.180117] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64b=
it]
> [    0.187313] pci 0000:00:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pre=
f]
> [    0.194443] pci 0000:00:00.0: supports D1
> [    0.198666] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> [    0.205572] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 00
> [    0.212582] pci 0000:00:00.0: BAR 0: assigned [mem 0x12000000-0x121fff=
ff
> 64bit]
> [    0.220302] pci 0000:00:00.0: BAR 6: assigned [mem 0x12200000-0x1220ff=
ff
> pref]
> [    0.230375] clocksource: Switched to clocksource MIPS
> [    0.236702] NET: Registered protocol family 2
> [    0.241970] tcp_listen_portaddr_hash hash table entries: 512 (order: 0=
, 4096
> bytes, linear)
> [    0.250838] TCP established hash table entries: 1024 (order: 0, 4096 b=
ytes,
> linear)
> [    0.258931] TCP bind hash table entries: 1024 (order: 0, 4096 bytes, l=
inear)
> [    0.266381] TCP: Hash tables configured (established 1024 bind 1024)
> [    0.273210] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
> [    0.280149] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, li=
near)
> [    0.287752] NET: Registered protocol family 1
> [    0.292419] PCI: CLS 0 bytes, default 32
> [    0.299540] workingset: timestamp_bits=3D30 max_order=3D15 bucket_orde=
r=3D0
> [    0.311223] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> [    0.317409] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME)
> (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
> [    0.337003] ar7200-usb-phy usb-phy: phy reset is missing
> [    0.344102] pinctrl-single 1804002c.pinmux: 544 pins, size 68
> [    0.351204] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
> [    0.358621] printk: console [ttyS0] disabled
> [    0.363192] 18020000.uart: ttyS0 at MMIO 0x18020000 (irq =3D 9, base_b=
aud =3D
> 1562500) is a 16550A
> [    0.372301] printk: console [ttyS0] enabled
> [    0.381366] printk: bootconsole [early0] disabled
> [    0.397604] spi-nor spi0.0: mx25l12805d (16384 Kbytes)
> [    0.403010] 7 fixed-partitions partitions found on MTD device spi0.0
> [    0.409582] Creating 7 MTD partitions on "spi0.0":
> [    0.414542] 0x000000000000-0x000000060000 : "u-boot"
> [    0.420474] 0x000000060000-0x000000070000 : "u-boot-env"
> [    0.426848] 0x000000070000-0x000000800000 : "firmware"
> [    0.435796] 2 uimage-fw partitions found on MTD device firmware
> [    0.441955] Creating 2 MTD partitions on "firmware":
> [    0.447106] 0x000000000000-0x0000001d0000 : "kernel"
> [    0.452989] 0x0000001d0000-0x000000790000 : "rootfs"
> [    0.458944] mtd: device 4 (rootfs) set to be root filesystem
> [    0.466320] 1 squashfs-split partitions found on MTD device rootfs
> [    0.472762] 0x0000004f0000-0x000000790000 : "rootfs_data"
> [    0.479165] 0x000000800000-0x000000f90000 : "ubnt-airos"
> [    0.485471] 0x000000f90000-0x000000fb0000 : "bs"
> [    0.491082] 0x000000fb0000-0x000000ff0000 : "cfg"
> [    0.496783] 0x000000ff0000-0x000001000000 : "art"
> [    0.504304] libphy: Fixed MDIO Bus: probed
> [    1.154734] libphy: ag71xx_mdio: probed
> [    1.161760] switch0: Atheros AR8337 rev. 2 switch registered on mdio.0
> [    1.170368] random: fast init done
> [    1.753854] ag71xx 19000000.eth: connected to PHY at mdio.0:00
> [uid=3D004dd036, driver=3DAtheros AR8216/AR8236/AR8316]
> [    1.765106] eth0: Atheros AG71xx at 0xb9000000, irq 4, mode: mii
> [    1.773224] NET: Registered protocol family 10
> [    1.781640] Segment Routing with IPv6
> [    1.785573] NET: Registered protocol family 17
> [    1.790237] 8021q: 802.1Q VLAN Support v1.8
> [    1.800499] VFS: Mounted root (squashfs filesystem) readonly on device
> 31:4.
> [    1.814541] Freeing unused kernel memory: 1224K
> [    1.819239] This architecture does not have kernel memory protection.
> [    1.825892] Run /sbin/init as init process
> [    2.360115] init: Console is alive
> [    2.363923] init: - watchdog -
> [    3.538161] kmodloader: loading kernel modules from /etc/modules-
> boot.d/*
> [    3.650743] usbcore: registered new interface driver usbfs
> [    3.656513] usbcore: registered new interface driver hub
> [    3.662094] usbcore: registered new device driver usb
> [    3.672789] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    3.680931] ehci-fsl: Freescale EHCI Host controller driver
> [    3.688060] ehci-platform: EHCI generic platform driver
> [    3.693721] ehci-platform 1b000000.usb: EHCI Host Controller
> [    3.699634] ehci-platform 1b000000.usb: new USB bus registered, assign=
ed
> bus number 1
> [    3.707831] ehci-platform 1b000000.usb: irq 13, io mem 0x1b000000
> [    3.726390] ehci-platform 1b000000.usb: USB 2.0 started, EHCI 1.00
> [    3.733503] hub 1-0:1.0: USB hub found
> [    3.737779] hub 1-0:1.0: 1 port detected
> [    3.744311] kmodloader: done loading kernel modules from /etc/modules-
> boot.d/*
> [    3.762200] init: - preinit -
> [    4.875572] random: jshn: uninitialized urandom read (4 bytes read)
> [    5.113916] random: jshn: uninitialized urandom read (4 bytes read)
> [    5.208572] random: jshn: uninitialized urandom read (4 bytes read)
> [    6.279170] Atheros AR8216/AR8236/AR8316 mdio.0:00: Port 2 is up
> [    6.287409] eth0: link up (1000Mbps/Full duplex)
> [    6.305638] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> [    6.320732] IPv6: ADDRCONF(NETDEV_CHANGE): eth0.1: link becomes
> ready
> [    6.362054] urandom_read: 4 callbacks suppressed
> [    6.362061] random: procd: uninitialized urandom read (4 bytes read)
> [   10.527444] jffs2: notice: (517) jffs2_build_xattr_subsystem: complete
> building xattr subsystem, 35 of xdatum (29 unchecked, 2 orphan) and 40 of
> xref (2 dead, 0 orphan) found.
> [   10.545400] mount_root: switching to jffs2 overlay
> [   10.569375] overlayfs: upper fs does not support tmpfile.
> [   10.582122] urandom-seed: Seeding with /etc/urandom.seed
> [   10.646740] eth0: link down
> [   10.666531] procd: - early -
> [   10.669596] procd: - watchdog -
> [   11.232285] procd: - watchdog -
> [   11.235826] procd: - ubus -
> [   11.290957] random: ubusd: uninitialized urandom read (4 bytes read)
> [   11.298769] random: ubusd: uninitialized urandom read (4 bytes read)
> [   11.306209] procd: - init -
> [   12.017594] kmodloader: loading kernel modules from /etc/modules.d/*
> [   12.055647] Loading modules backported from Linux version v5.4.27-0-
> g585e0cc08069
> [   12.063425] Backport generated by backports.git v5.4.27-1-0-gf6e8852f
> [   12.106155] usbcore: registered new interface driver usbserial_generic
> [   12.113035] usbserial: USB Serial support registered for generic
> [   12.155174] xt_time: kernel timezone is -0000
> [   12.278162] usbcore: registered new interface driver pl2303
> [   12.284050] usbserial: USB Serial support registered for pl2303
> [   12.322117] urngd: v1.0.2 started.
> [   12.373325] ath10k 5.1 driver, optimized for CT firmware, probing pci =
device:
> 0x3c.
> [   12.395040] ath10k_pci 0000:00:00.0: enabling device (0000 -> 0002)
> [   12.401721] ath10k_pci 0000:00:00.0: pci irq legacy oper_irq_mode 1
> irq_mode 0 reset_mode 0
> [   12.531525] random: crng init done
> [   14.100472] ath10k_pci 0000:00:00.0: qca988x hw2.0 target 0x4100016c
> chip_id 0x043202ff sub 0000:0000
> [   14.110052] ath10k_pci 0000:00:00.0: kconfig debug 0 debugfs 1 tracing=
 0 dfs
> 1 testmode 0
> [   14.122473] ath10k_pci 0000:00:00.0: firmware ver 10.1-ct-8x-__fH-022-
> cc5313da api 2 features wmi-10.x,mfp,txstatus-noack,wmi-10.x-CT,ratemask-
> CT,txrate-CT,get-temp-CT,tx-rc-CT,cust-stats-CT,retry-gt2-CT,txrate2-acon-
> cb-CT,wmi-block-ack-CT crc32 84cbd09d
> [   14.382884] ath10k_pci 0000:00:00.0: board_file api 1 bmi_id N/A crc32
> bebc7c08
> [   15.329508] ath10k_pci 0000:00:00.0: unsupported HTC service id: 1536
> [   15.336565] ath10k_pci 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: =
127  tid:
> 256
> [   15.354181] ath10k_pci 0000:00:00.0: wmi print 'P 128 V 8 T 410'
> [   15.360451] ath10k_pci 0000:00:00.0: wmi print 'msdu-desc: 1424  sw-cr=
ypt:
> 0 ct-sta: 0'
> [   15.368733] ath10k_pci 0000:00:00.0: wmi print 'alloc rem: 21000 iram:=
 25992'
> [   15.422690] ath10k_pci 0000:00:00.0: htt-ver 2.2 wmi-op 2 htt-op 2 cal=
 file
> max-sta 128 raw 0 hwcrypto 1
> [   15.437026] ath10k_pci 0000:00:00.0: NOTE:  Firmware DBGLOG output
> disabled in debug_mask: 0x10000000
> [   15.547797] ath: EEPROM regdomain: 0x0
> [   15.547803] ath: EEPROM indicates default country code should be used
> [   15.547806] ath: doing EEPROM country->regdmn map search
> [   15.547817] ath: country maps to regdmn code: 0x3a
> [   15.547822] ath: Country alpha2 being used: US
> [   15.547825] ath: Regpair used: 0x3a
> [   15.617138] ath: EEPROM regdomain: 0x0
> [   15.617146] ath: EEPROM indicates default country code should be used
> [   15.617149] ath: doing EEPROM country->regdmn map search
> [   15.617161] ath: country maps to regdmn code: 0x3a
> [   15.617166] ath: Country alpha2 being used: US
> [   15.617169] ath: Regpair used: 0x3a
> [   15.629735] ieee80211 phy1: Selected rate control algorithm 'minstrel_=
ht'
> [   15.631175] ieee80211 phy1: Atheros AR9561 Rev:0 mem=3D0xb8100000, irq=
=3D2
> [   15.670721] kmodloader: done loading kernel modules from
> /etc/modules.d/*
> [   23.139094] eth0: link up (1000Mbps/Full duplex)
> [   23.151278] br-antiboks: port 1(eth0.8) entered blocking state
> [   23.157362] br-antiboks: port 1(eth0.8) entered disabled state
> [   23.163657] device eth0.8 entered promiscuous mode
> [   23.168645] device eth0 entered promiscuous mode
> [   23.174312] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> [   23.202007] br-antiboks: port 1(eth0.8) entered blocking state
> [   23.208081] br-antiboks: port 1(eth0.8) entered forwarding state
> [   23.337472] br-guest: port 1(eth0.13) entered blocking state
> [   23.343388] br-guest: port 1(eth0.13) entered disabled state
> [   23.349514] device eth0.13 entered promiscuous mode
> [   23.390512] br-guest: port 1(eth0.13) entered blocking state
> [   23.396384] br-guest: port 1(eth0.13) entered forwarding state
> [   23.517643] br-lan: port 1(eth0.7) entered blocking state
> [   23.523288] br-lan: port 1(eth0.7) entered disabled state
> [   23.545012] device eth0.7 entered promiscuous mode
> [   23.556419] br-lan: port 1(eth0.7) entered blocking state
> [   23.562042] br-lan: port 1(eth0.7) entered forwarding state
> [   24.142480] IPv6: ADDRCONF(NETDEV_CHANGE): br-antiboks: link becomes
> ready
> [   25.938244] ath: EEPROM regdomain: 0x8242
> [   25.938252] ath: EEPROM indicates we should expect a country code
> [   25.938258] ath: doing EEPROM country->regdmn map search
> [   25.938263] ath: country maps to regdmn code: 0x37
> [   25.938268] ath: Country alpha2 being used: NO
> [   25.938271] ath: Regpair used: 0x37
> [   25.938276] ath: regdomain 0x8242 dynamically updated by user
> [   25.938348] ath: EEPROM regdomain: 0x8242
> [   25.938351] ath: EEPROM indicates we should expect a country code
> [   25.938356] ath: doing EEPROM country->regdmn map search
> [   25.938412] ath: country maps to regdmn code: 0x37
> [   25.938416] ath: Country alpha2 being used: NO
> [   25.938419] ath: Regpair used: 0x37
> [   25.938423] ath: regdomain 0x8242 dynamically updated by user
> [   29.469663] ath10k_pci 0000:00:00.0: unsupported HTC service id: 1536
> [   29.476436] ath10k_pci 0000:00:00.0: 10.1 wmi init: vdevs: 16  peers: =
127  tid:
> 256
> [   29.494056] ath10k_pci 0000:00:00.0: wmi print 'P 128 V 8 T 410'
> [   29.500337] ath10k_pci 0000:00:00.0: wmi print 'msdu-desc: 1424  sw-cr=
ypt:
> 0 ct-sta: 0'
> [   29.508634] ath10k_pci 0000:00:00.0: wmi print 'alloc rem: 21000 iram:=
 25992'
> [   29.578049] ath10k_pci 0000:00:00.0: pdev param 0 not supported by
> firmware
> [   29.617938] br-lan: port 2(wlan0) entered blocking state
> [   29.623478] br-lan: port 2(wlan0) entered disabled state
> [   29.629269] device wlan0 entered promiscuous mode
> [   29.640443] br-lan: port 3(wlan1) entered blocking state
> [   29.646063] br-lan: port 3(wlan1) entered disabled state
> [   29.651867] device wlan1 entered promiscuous mode
> [   29.998669] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes
> ready
> [   30.005432] br-lan: port 3(wlan1) entered blocking state
> [   30.010991] br-lan: port 3(wlan1) entered forwarding state
> [   30.030686] br-antiboks: port 2(wlan1-1) entered blocking state
> [   30.036963] br-antiboks: port 2(wlan1-1) entered disabled state
> [   30.043372] device wlan1-1 entered promiscuous mode
> [   30.066895] br-antiboks: port 2(wlan1-1) entered blocking state
> [   30.073059] br-antiboks: port 2(wlan1-1) entered forwarding state
> [   30.190721] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1-1: link becomes
> ready
> [   91.183136] ath10k_pci 0000:00:00.0: mac flush null vif, drop 0 queues=
 0xffff
> [   91.249150] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes
> ready
> [   91.255996] br-lan: port 2(wlan0) entered blocking state
> [   91.261558] br-lan: port 2(wlan0) entered forwarding state
> [   91.282793] br-antiboks: port 3(wlan0-1) entered blocking state
> [   91.289050] br-antiboks: port 3(wlan0-1) entered disabled state
> [   91.295503] device wlan0-1 entered promiscuous mode
> [   91.321901] br-antiboks: port 3(wlan0-1) entered blocking state
> [   91.328079] br-antiboks: port 3(wlan0-1) entered forwarding state
> [   91.448415] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0-1: link becomes
> ready
>=20
>=20
>=20
>=20
> Now, I could be completely wrong here.  This could very well be some hidd=
en
> race, which just happens to be triggered by changes to inlining etc. Or
> whatever.
>=20
> Proper analysis from somebody with a clue is appreciated :-)
>=20
> Note that the kernel grows a lot with these two functions inlined.
>=20
>=20
>=20
> Bj=C3=B8rn
>=20
>=20

--=-=tNVyvluEfn3Biv=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6HkWcACgkQoNyKO7qx
AnBYWw//dA4RkplE+DM0NLvDzPLUKKN5AW3TMrA1HpvTTuwqCgcaz6uApv+AyYDe
GoDFSdzJ7r3Nyn1NSKaccv87PBuwFdg4XwiTYwsXF/6XoNCtRkEpixJu9VSH6XJs
beK2jwBp7NwiBXtp3nELPGb75qV6H8e4UVq+SlEKTF+svMhX1QnWCwZA2mZXCSGE
rzSLebUrQ9SvAZq7RSrFWrkskkAdXtGbCCwFPnyO2NB+20F0RxI8mGGHu/Ls0J7L
aCfGYW0dGQASV8unNQrqEijK9AFLV+ZMz/VM/crRYyNiOArRoIdrvXsXNIu0/+wq
B9ixWQMD4fTgr2fDGzE/jsLqMBuYgZr4RY3gLyuph19UcV3oo2thRlEr2ctMT9pi
7zslX0DW4SIA3IZ6E+y3Um2R0D2ntaeRDFeeflFk/2nBZi5h8k52Y2SM3v0TNnJh
988PD0WMbnknyYGC18vB9U1HXicuYg5kAgqSdSf4cH1fcjcJEXUHpOyYDCdx60q2
40W4RkHROoJ78B5th0UiLOc2Z4lglKGiTF+1utsqXlhmqywHJqn1MmJA8GtKS+sO
ElztT0l6kTwBj8scZ5ORF5KSinGMZmK26s44U3LR5VQfKeJCKR5PVZUeCTTJ/gfE
dQxP5wWYd+LDiCqx7vYEJVynK1FpWnnth3xE4vvIfxS9/sShvCc=
=ecN0
-----END PGP SIGNATURE-----


--=-=tNVyvluEfn3Biv=-=--



--===============3359092091676270195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3359092091676270195==--


