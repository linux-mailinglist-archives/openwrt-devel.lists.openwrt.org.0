Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12301A1E3F
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 11:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	To:In-Reply-To:Date:Mime-Version:Content-Type:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iOTtTNwoNgzP8/0PhsvSBew7WPrCYuVS3OhPP/lw+7s=; b=ER8TXad58tyweoGg6ERjW1CB9
	QQlIynAZSiMGS8ZKfS7dA/np34Elv1b1DqTgUvbzJSC0to1vfd6v3YSCLHk6TOtI6aiH99bknQF/4
	PVk3CTsjsRPPhVWswRYOi27pJgjBNOkCzhhFUj1y+g/fBu5FhHIumu466h+cueDyY+IZElm6RtzW4
	GB2JM2qrNU6j2sMSjxlQMPIyuSNkUF0mMp2q8PTWJcMIwdDCDTImZcsO+eVCb6PbYOvVUfuVUMk2v
	lmKYSx37CBXK7HYcXr8CIC0mmUHKUjFHYPaKvmACzagCvvjN1gyOVyxrUUJ6IwbdHxk77MTpGxoXW
	J4fok4QSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM7In-0003Qn-AR; Wed, 08 Apr 2020 09:47:21 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM7If-0003PC-Oc
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 09:47:16 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 45CC56000B;
 Wed,  8 Apr 2020 11:46:50 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 45CC56000B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1586339210; bh=gymaG7VwIpqFSwbTLIMcb0LK82y4CCCgcOwG0EiaIv4=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=S15rt5dYmYr8eHPSloWZm24HuWapHbWpWfcSUEnqWHT7fkbRHIkvuao+ImaNklIhk
 3Q6Ed0gMcL73MDXmigxIPsBm1s/LEhSLct04PBMcuIJE5zl3+5iGflnAr0zA5Y0YHn
 PRn6BAAPgEDFQEPccUGzkbOoua9I9SaiBOO9ZH5g=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <D335910C-9F48-43A5-83AF-204F87AED576@slashdirt.org>
Content-Type: multipart/mixed;
 boundary="Apple-Mail=_74F3B114-1F4C-490B-9B0A-A70881535813"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Date: Wed, 8 Apr 2020 11:46:49 +0200
In-Reply-To: <20200328142032.37734-12-hacks@slashdirt.org>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
 <20200328142032.37734-12-hacks@slashdirt.org>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_024714_267700_C35862CB 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 11/11] ramips: MikroTik RBM33G
 routerboot partitions
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
Cc: Tobias Schramm <tobleminer@gmail.com>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--Apple-Mail=_74F3B114-1F4C-490B-9B0A-A70881535813
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I received a successful test report from Tobias Schramm (CC=E2=80=99d) =
on ramips MikroTik RBM33G, who agreed to have his Tested-by applied. =
Dmesg attached.


--Apple-Mail=_74F3B114-1F4C-490B-9B0A-A70881535813
Content-Disposition: attachment;
	filename=routerboot-dynamic-partitions.log
Content-Type: application/octet-stream;
	x-unix-mode=0644;
	name="routerboot-dynamic-partitions.log"
Content-Transfer-Encoding: 7bit

OpenWrt kernel loader for MIPS based SoC
Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
Decompressing kernel... done!
Starting kernel at 80001000...

[    0.000000] Linux version 4.14.172 (openwrt@arch-build) (gcc version 8.4.0 (OpenWrt GCC 8.4.0 r12820-913f2a6799)) #0 SMP Fri Apr 3 18:18:56 2020
[    0.000000] SoC Type: MediaTek MT7621 ver:1 eco:3
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 0001992f (MIPS 1004Kc)
[    0.000000] MIPS: machine is MikroTik RouterBOARD M33G
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 10000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] VPE topology {2,2} total 4
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.000000] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x000000000fffffff]
[    0.000000]   HighMem  empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x000000000fffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000000fffffff]
[    0.000000] random: get_random_bytes called from start_kernel+0x9c/0x4d8 with crng_init=0
[    0.000000] percpu: Embedded 14 pages/cpu s26064 r8192 d23088 u57344
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 64960
[    0.000000] Kernel command line: console=ttyS0,115200 rootfstype=squashfs,jffs2
[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Writing ErrCtl register=00038d50
[    0.000000] Readback ErrCtl register=00038d50
[    0.000000] Memory: 250284K/262144K available (4806K kernel code, 246K rwdata, 1052K rodata, 2652K init, 253K bss, 11860K reserved, 0K cma-reserved, 0K highmem)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 256
[    0.000000] CPU Clock: 880MHz
[    0.000000] clocksource: GIC: mask: 0xffffffffffffffff max_cycles: 0xcaf478abb4, max_idle_ns: 440795247997 ns
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 4343773742 ns
[    0.000009] sched_clock: 32 bits at 440MHz, resolution 2ns, wraps every 4880645118ns
[    0.007807] Calibrating delay loop... 586.13 BogoMIPS (lpj=2930688)
[    0.073981] pid_max: default: 32768 minimum: 301
[    0.078797] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.085304] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.094424] Hierarchical SRCU implementation.
[    0.099615] smp: Bringing up secondary CPUs ...
[    1.646516] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    1.646525] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    1.646536] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    1.646671] CPU1 revision is: 0001992f (MIPS 1004Kc)
[    0.164362] Synchronize counters for CPU 1: done.
[    0.526801] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.526810] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.526818] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.526887] CPU2 revision is: 0001992f (MIPS 1004Kc)
[    0.255461] Synchronize counters for CPU 2: done.
[    0.616134] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.616141] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.616148] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.616222] CPU3 revision is: 0001992f (MIPS 1004Kc)
[    0.340640] Synchronize counters for CPU 3: done.
[    0.370491] smp: Brought up 1 node, 4 CPUs
[    0.379027] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.388782] futex hash table entries: 1024 (order: 3, 32768 bytes)
[    0.395200] pinctrl core: initialized pinctrl subsystem
[    0.401807] NET: Registered protocol family 16
[    0.417741] pull PCIe RST: RALINK_RSTCTRL = 0
[    0.722531] release PCIe RST: RALINK_RSTCTRL = 7000000
[    0.727584] ***** Xtal 40MHz *****
[    0.730936] release PCIe RST: RALINK_RSTCTRL = 7000000
[    0.736030] Port 0 N_FTS = 1b102800
[    0.739503] Port 1 N_FTS = 1b105000
[    0.742945] Port 2 N_FTS = 1b102800
[    1.898461] PCIE0 no card, disable it(RST&CLK)
[    1.902820] PCIE2 no card, disable it(RST&CLK)
[    1.907210]  -> 20107f2
[    1.909627] PCIE1 enabled
[    1.912229] PCI host bridge /pcie@1e140000 ranges:
[    1.917007]  MEM 0x0000000060000000..0x000000006fffffff
[    1.922170]   IO 0x000000001e160000..0x000000001e16ffff
[    1.927371] PCI coherence region base: 0xbfbf8000, mask/settings: 0x60000000
[    1.943639] mt7621_gpio 1e000600.gpio: registering 32 gpios
[    1.949393] mt7621_gpio 1e000600.gpio: registering 32 gpios
[    1.955150] mt7621_gpio 1e000600.gpio: registering 32 gpios
[    1.963989] i2c-mt7621 1e000900.i2c: clock 100KHz, re-start not support
[    1.971122] PCI host bridge to bus 0000:00
[    1.975150] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
[    1.981980] pci_bus 0000:00: root bus resource [io  0xffffffff]
[    1.987835] pci_bus 0000:00: root bus resource [??? 0x00000000 flags 0x0]
[    1.994589] pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
[    2.003629] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
[    2.010167] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
[    2.017056] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
[    2.023810] pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
[    2.030969] pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
[    2.037733] pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
[    2.044975] pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
[    2.052147] pci 0000:00:00.0: PCI bridge to [bus 01]
[    2.057058] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
[    2.063810] pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
[    2.072350] clocksource: Switched to clocksource GIC
[    2.078938] NET: Registered protocol family 2
[    2.083949] TCP established hash table entries: 2048 (order: 1, 8192 bytes)
[    2.090831] TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
[    2.097254] TCP: Hash tables configured (established 2048 bind 2048)
[    2.103664] UDP hash table entries: 256 (order: 1, 8192 bytes)
[    2.109424] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
[    2.115900] NET: Registered protocol family 1
[    4.082310] 4 CPUs re-calibrate udelay(lpj = 2924544)
[    4.088894] Crashlog allocated RAM at address 0x3f00000
[    4.094297] workingset: timestamp_bits=14 max_order=16 bucket_order=2
[    4.107035] random: fast init done
[    4.108529] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    4.116200] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    4.129659] io scheduler noop registered
[    4.133607] io scheduler deadline registered (default)
[    4.139519] Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
[    4.147043] console [ttyS0] disabled
[    4.150586] 1e000c00.uartlite: ttyS0 at MMIO 0x1e000c00 (irq = 19, base_baud = 3125000) is a 16550A
[    4.159637] console [ttyS0] enabled
[    4.159637] console [ttyS0] enabled
[    4.166512] bootconsole [early0] disabled
[    4.166512] bootconsole [early0] disabled
[    4.176626] MediaTek Nand driver init, version v2.1 Fix AHB virt2phys error
[    4.184017] spi-mt7621 1e000b00.spi: sys_freq: 220000000
[    4.200425] m25p80 spi0.0: w25x40 (512 Kbytes)
[    4.204930] 1 fixed-partitions partitions found on MTD device spi0.0
[    4.211251] Creating 1 MTD partitions on "spi0.0":
[    4.216046] 0x000000000000-0x000000040000 : "RouterBoot"
[    4.224817] 5 routerbootpart partitions found on MTD device RouterBoot
[    4.231326] Creating 5 MTD partitions on "RouterBoot":
[    4.236496] 0x000000000000-0x00000000f000 : "bootloader1"
[    4.242918] 0x00000000f000-0x000000010000 : "hard_config"
[    4.249262] 0x000000010000-0x00000001f000 : "bootloader2"
[    4.255585] 0x000000020000-0x000000021000 : "soft_config"
[    4.261926] 0x000000030000-0x000000031000 : "bios"
[    4.277433] m25p80 spi0.1: w25q128jv (16384 Kbytes)
[    4.282364] 1 fixed-partitions partitions found on MTD device spi0.1
[    4.288685] Creating 1 MTD partitions on "spi0.1":
[    4.293482] 0x000000040000-0x000001000000 : "firmware"
[    4.300937] 2 minor-fw partitions found on MTD device firmware
[    4.306811] Creating 2 MTD partitions on "firmware":
[    4.311766] 0x000000000000-0x000000200000 : "kernel"
[    4.317692] 0x000000200000-0x000000fc0000 : "rootfs"
[    4.323594] mtd: device 8 (rootfs) set to be root filesystem
[    4.329464] 1 squashfs-split partitions found on MTD device rootfs
[    4.335689] 0x000000840000-0x000000fc0000 : "rootfs_data"
[    4.342728] libphy: Fixed MDIO Bus: probed
[    4.414391] libphy: mdio: probed
[    5.829788] mtk_soc_eth 1e100000.ethernet: loaded mt7530 driver
[    5.836445] mtk_soc_eth 1e100000.ethernet eth0: mediatek frame engine at 0xbe100000, irq 22
[    5.857214] MikroTik RouterBOARD hardware configuration sysfs driver v0.02
[    5.865364] NET: Registered protocol family 10
[    5.871329] Segment Routing with IPv6
[    5.875124] NET: Registered protocol family 17
[    5.879610] 8021q: 802.1Q VLAN Support v1.8
[    5.886151] hctosys: unable to open rtc device (rtc0)
[    5.901121] Freeing unused kernel memory: 2652K
[    5.905678] This architecture does not have kernel memory protection.
[    5.924673] init: Console is alive
[    5.928302] init: - watchdog -
[    5.943092] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    5.958336] usbcore: registered new interface driver usbfs
[    5.963972] usbcore: registered new interface driver hub
[    5.969438] usbcore: registered new device driver usb
[    5.982286] xhci-mtk 1e1c0000.xhci: 1e1c0000.xhci supply vbus not found, using dummy regulator
[    5.991084] xhci-mtk 1e1c0000.xhci: 1e1c0000.xhci supply vusb33 not found, using dummy regulator
[    6.000064] xhci-mtk 1e1c0000.xhci: xHCI Host Controller
[    6.005407] xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 1
[    6.022555] xhci-mtk 1e1c0000.xhci: hcc params 0x01401198 hci version 0x96 quirks 0x0000000000210010
[    6.031724] xhci-mtk 1e1c0000.xhci: irq 21, io mem 0x1e1c0000
[    6.038495] hub 1-0:1.0: USB hub found
[    6.042373] hub 1-0:1.0: 2 ports detected
[    6.046941] xhci-mtk 1e1c0000.xhci: xHCI Host Controller
[    6.052259] xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 2
[    6.059845] xhci-mtk 1e1c0000.xhci: Host supports USB 3.0  SuperSpeed
[    6.066474] usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
[    6.075433] hub 2-0:1.0: USB hub found
[    6.079257] hub 2-0:1.0: 1 port detected
[    6.087653] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    6.112650] init: - preinit -
[    6.277329] mtk_soc_eth 1e100000.ethernet: PPE started
[    6.295506] random: procd: uninitialized urandom read (4 bytes read)
Press the [f] key and hit [enter] to enter failsafe mode
Press the [1], [2], [3] or [4] key and hit [enter] to select the debug level
[    7.831744] mtk_soc_eth 1e100000.ethernet eth0: port 0 link up

[    9.417856] mtk_soc_eth 1e100000.ethernet: 0x100 = 0x6060000c, 0x10c = 0x80818
[    9.432680] procd: - early -
[    9.435658] procd: - watchdog -
[   10.082524] procd: - watchdog -
[   10.085993] procd: - ubus -
[   10.093948] random: ubusd: uninitialized urandom read (4 bytes read)
[   10.142903] random: ubusd: uninitialized urandom read (4 bytes read)
[   10.149598] random: ubusd: uninitialized urandom read (4 bytes read)
[   10.156839] procd: - init -
Please press Enter to activate this console.
[   10.412690] kmodloader: loading kernel modules from /etc/modules.d/*
[   10.423741] ip6_tables: (C) 2000-2006 Netfilter Core Team
[   10.435644] ip_tables: (C) 2000-2006 Netfilter Core Team
[   10.447151] nf_conntrack version 0.5.0 (4096 buckets, 16384 max)
[   10.491253] xt_time: kernel timezone is -0000
[   10.501747] PPP generic driver version 2.4.2
[   10.507425] NET: Registered protocol family 24
[   10.514292] kmodloader: done loading kernel modules from /etc/modules.d/*
[   10.580172] urngd: v1.0.2 started.
[   10.718070] random: crng init done
[   10.721457] random: 6 urandom warning(s) missed due to ratelimiting


--Apple-Mail=_74F3B114-1F4C-490B-9B0A-A70881535813
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> Le 28 mars 2020 =C3=A0 15:20, Thibaut VAR=C3=88NE =
<hacks@slashdirt.org> a =C3=A9crit :
>=20
> Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> ---
> target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts | 12 ++++--------
> 1 file changed, 4 insertions(+), 8 deletions(-)
>=20
> diff --git a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts =
b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
> index 2500ae29da..9895bb70d5 100644
> --- a/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
> +++ b/target/linux/ramips/dts/mt7621_mikrotik_rbm33g.dts
> @@ -104,19 +104,17 @@
> 				label =3D "RouterBoot";
> 				reg =3D <0x0 0x40000>;
> 				read-only;
> -				compatible =3D "fixed-partitions";
> +				compatible =3D =
"mikrotik,routerboot-partitions";
> 				#address-cells =3D <1>;
> 				#size-cells =3D <1>;
>=20
> 				partition@0 {
> 					label =3D "bootloader1";
> -					reg =3D <0x0 0xf000>;
> +					reg =3D <0x0 0x0>;
> 					read-only;
> 				};
>=20
> -				hard_config: partition@f000 {
> -					label =3D "hard_config";
> -					reg =3D <0xf000 0x1000>;
> +				hard_config: hard_config {
> 					read-only;
> 				};
>=20
> @@ -126,9 +124,7 @@
> 					read-only;
> 				};
>=20
> -				partition@20000 {
> -					label =3D "soft_config";
> -					reg =3D <0x20000 0x1000>;
> +				soft_config {
> 				};
>=20
> 				partition@30000 {
> --=20
> 2.11.0
>=20


--Apple-Mail=_74F3B114-1F4C-490B-9B0A-A70881535813
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--Apple-Mail=_74F3B114-1F4C-490B-9B0A-A70881535813--

