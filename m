Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A15143BAE
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 12:09:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kikiO8+bSOcqVnls+D3UlBMHBtWvrbqBVZ068XVGqyk=; b=lHcZL24fNnw13U
	Cbm6EThVSU9mJf1jWRN7Zw6RCQ9fhmL5NImqwH6JAVCj4fc5KwDqXCU3hRfgcpQtLU6r6hnFRSmoU
	Qn0pnd8yp80GdrxVXOB+yCrTYHXKZCSwKqklepfirSvJrD5/JbiCNQ+FWVj7H88BVOvM8/pn0Ae3U
	E5Ic4iCQvkmNHhdB9G4N3gAK+WBXEhsSIdlZyjB/UCvFTYgzhsZGU87Q+ndZ90XMgsAPT73KvOAuM
	iIdFH/PAt+ddQq4X+vmhlpEucZDYXI6C6A4M/o71EtrIKPjJ5SythA2FVv51PLS1+qd2px4x1n2Wq
	CSm0rzhZBo4iGpj1PkcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itrPO-00073W-Jl; Tue, 21 Jan 2020 11:09:22 +0000
Received: from jax4mhob20.registeredsite.com ([64.69.218.108])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itrPA-00072q-RN
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 11:09:14 +0000
Received: from mailpod.hostingplatform.com ([10.30.71.85])
 by jax4mhob20.registeredsite.com (8.14.4/8.14.4) with ESMTP id 00LB95vD188929
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 06:09:05 -0500
Received: (qmail 163522 invoked by uid 0); 21 Jan 2020 11:09:05 -0000
X-TCPREMOTEIP: 65.41.18.216
X-Authenticated-UID: sbrown@opensat.com
Received: from unknown (HELO 155-15-85-208.altiusbb.net)
 (sbrown@opensat.com@65.41.18.216)
 by 0 with ESMTPA; 21 Jan 2020 11:09:04 -0000
Received: from localhost (localhost [127.0.0.1])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id D7D081540592;
 Tue, 21 Jan 2020 06:09:03 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at ewol.com
X-Spam-Flag: NO
X-Spam-Score: -2.899
X-Spam-Level: 
X-Spam-Status: No, score=-2.899 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Received: from 155-15-85-208.altiusbb.net ([127.0.0.1])
 by localhost (fl-server.ewol.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9Xs0OR5S9Xy; Tue, 21 Jan 2020 06:09:00 -0500 (EST)
Received: from w7.lan (w7.lan [192.168.1.9])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 84EEB154053D;
 Tue, 21 Jan 2020 06:09:00 -0500 (EST)
Message-ID: <ffb18c66350a0834d46000ff5844b5ec198ea1c4.camel@ewol.com>
From: Steve Brown <sbrown@ewol.com>
To: Bruno Pena <brunompena@gmail.com>
Date: Tue, 21 Jan 2020 06:09:00 -0500
In-Reply-To: <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_030909_116642_80BC197B 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Below:

Steve

================================

/proc/cmdline:
console=ttyS0,115200n8 rootfstype=squashfs,jffs2

/proc/mtd:
mtd0: 00020000 00010000 "factory-uboot"
mtd1: 00020000 00010000 "u-boot"
mtd2: 00ec0000 00010000 "firmware"
mtd3: 001a38de 00010000 "kernel"
mtd4: 00d1c722 00010000 "rootfs"
mtd5: 009f0000 00010000 "rootfs_data"
mtd6: 00020000 00010000 "info"
mtd7: 00050000 00010000 "config"
mtd8: 00010000 00010000 "partition-table"
mtd9: 00010000 00010000 "art"

dmesg:

root@OpenWrt:/# dmesg
[    0.000000] Linux version 4.19.97 (brown@fl-ws) (gcc version 8.3.0 (OpenWrt GCC 8.3.0 r11638-3ee767086d)) #0 Tue Jan 21 08:25:27 2020
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019750 (MIPS 74Kc)
[    0.000000] MIPS: machine is TP-Link Archer A7 v5
[    0.000000] SoC: Qualcomm Atheros QCA956X ver 1 rev 0
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 08000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Primary instruction cache 64kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] On node 0 totalpages: 32768
[    0.000000]   Normal zone: 256 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 32768 pages, LIFO batch:7
[    0.000000] random: get_random_bytes called from start_kernel+0x90/0x478 with crng_init=0
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 32512
[    0.000000] Kernel command line: console=ttyS0,115200n8 rootfstype=squashfs,jffs2
[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Writing ErrCtl register=00000000
[    0.000000] Readback ErrCtl register=00000000
[    0.000000] Memory: 122876K/131072K available (4036K kernel code, 156K rwdata, 976K rodata, 1224K init, 203K bss, 8196K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] NR_IRQS: 51
[    0.000000] CPU clock: 775.000 MHz
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 4932285024 ns
[    0.000007] sched_clock: 32 bits at 387MHz, resolution 2ns, wraps every 5541893118ns
[    0.008223] Calibrating delay loop... 385.84 BogoMIPS (lpj=1929216)
[    0.074769] pid_max: default: 32768 minimum: 301
[    0.079794] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.086778] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.097866] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.108262] futex hash table entries: 256 (order: -1, 3072 bytes)
[    0.114764] pinctrl core: initialized pinctrl subsystem
[    0.121120] NET: Registered protocol family 16
[    0.132175] PCI host bridge /ahb/pcie-controller@18250000 ranges:
[    0.138606]  MEM 0x0000000012000000..0x0000000013ffffff
[    0.144145]   IO 0x0000000000000000..0x0000000000000000
[    0.165954] PCI host bridge to bus 0000:00
[    0.170280] pci_bus 0000:00: root bus resource [mem 0x12000000-0x13ffffff]
[    0.177574] pci_bus 0000:00: root bus resource [io  0x0000]
[    0.183443] pci_bus 0000:00: root bus resource [??? 0x00000000 flags 0x0]
[    0.190603] pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
[    0.198979] pci 0000:00:00.0: [168c:003c] type 00 class 0x028000
[    0.199033] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64bit]
[    0.199085] pci 0000:00:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
[    0.199157] pci 0000:00:00.0: supports D1 D2
[    0.200166] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 00
[    0.200191] pci 0000:00:00.0: BAR 0: assigned [mem 0x12000000-0x121fffff 64bit]
[    0.207951] pci 0000:00:00.0: BAR 6: assigned [mem 0x12200000-0x1220ffff pref]
[    0.218259] clocksource: Switched to clocksource MIPS
[    0.224540] NET: Registered protocol family 2
[    0.229829] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 4096 bytes)
[    0.237916] TCP established hash table entries: 1024 (order: 0, 4096 bytes)
[    0.245309] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
[    0.252028] TCP: Hash tables configured (established 1024 bind 1024)
[    0.258865] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.265035] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.271944] NET: Registered protocol family 1
[    0.276573] PCI: CLS 0 bytes, default 32
[    0.279039] Crashlog allocated RAM at address 0x3f00000
[    0.285680] workingset: timestamp_bits=30 max_order=15 bucket_order=0
[    0.297065] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.303257] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    0.322084] io scheduler noop registered
[    0.326219] io scheduler deadline registered (default)
[    0.331947] ar7200-usb-phy usb-phy: phy reset is missing
[    0.339096] pinctrl-single 1804002c.pinmux: 544 pins, size 68
[    0.345635] gpio-export gpio-export: 1 gpio(s) exported
[    0.351929] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
[    0.359287] console [ttyS0] disabled
[    0.363077] 18020000.uart: ttyS0 at MMIO 0x18020000 (irq = 9, base_baud = 1562500) is a 16550A
[    0.372215] console [ttyS0] enabled
[    0.379772] bootconsole [early0] disabled
[    0.403110] m25p80 spi0.0: w25q128 (16384 Kbytes)
[    0.408019] 7 fixed-partitions partitions found on MTD device spi0.0
[    0.414607] Creating 7 MTD partitions on "spi0.0":
[    0.419577] 0x000000000000-0x000000020000 : "factory-uboot"
[    0.426010] 0x000000020000-0x000000040000 : "u-boot"
[    0.431826] 0x000000040000-0x000000f00000 : "firmware"
[    0.439691] 2 uimage-fw partitions found on MTD device firmware
[    0.445812] Creating 2 MTD partitions on "firmware":
[    0.450987] 0x000000000000-0x0000001a39ea : "kernel"
[    0.456772] 0x0000001a39ea-0x000000ec0000 : "rootfs"
[    0.462573] mtd: device 4 (rootfs) set to be root filesystem
[    0.469678] 1 squashfs-split partitions found on MTD device rootfs
[    0.476073] 0x0000004d0000-0x000000ec0000 : "rootfs_data"
[    0.482375] 0x000000f40000-0x000000f60000 : "info"
[    0.487976] 0x000000f60000-0x000000fb0000 : "config"
[    0.493807] 0x000000fc0000-0x000000fd0000 : "partition-table"
[    0.500441] 0x000000ff0000-0x000001000000 : "art"
[    0.506919] libphy: Fixed MDIO Bus: probed
[    1.198626] libphy: ag71xx_mdio: probed
[    1.205612] switch0: Atheros AR8337 rev. 2 switch registered on mdio-bus.0
[    1.859723] ag71xx 19000000.eth: connected to PHY at mdio-bus.0:00 [uid=004dd036, driver=Atheros AR8216/AR8236/AR8316]
[    1.871386] eth0: Atheros AG71xx at 0xb9000000, irq 4, mode: sgmii
[    1.880557] NET: Registered protocol family 10
[    1.889842] Segment Routing with IPv6
[    1.893721] NET: Registered protocol family 17
[    1.898414] 8021q: 802.1Q VLAN Support v1.8
[    1.913382] VFS: Mounted root (squashfs filesystem) readonly on device 31:4.
[    1.927353] Freeing unused kernel memory: 1224K
[    1.932066] This architecture does not have kernel memory protection.
[    1.938728] Run /sbin/init as init process
[    2.548272] random: fast init done
[    2.689983] init: Console is alive
[    2.693704] init: - watchdog -
[    3.981824] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    4.019253] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    4.037118] init: - preinit -
[    5.622091] random: jshn: uninitialized urandom read (4 bytes read)
[    5.878874] random: jshn: uninitialized urandom read (4 bytes read)
[    6.144887] random: jshn: uninitialized urandom read (4 bytes read)
[    7.575010] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[    7.581173] IPv6: ADDRCONF(NETDEV_UP): eth0.1: link is not ready
[    7.618572] urandom_read: 4 callbacks suppressed
[    7.618578] random: procd: uninitialized urandom read (4 bytes read)
[    8.589576] eth0: link up (1000Mbps/Full duplex)
[    8.594428] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[    8.601245] IPv6: ADDRCONF(NETDEV_CHANGE): eth0.1: link becomes ready
[   11.829289] jffs2_scan_eraseblock(): End of filesystem marker found at 0x10000
[   11.836769] jffs2_build_filesystem(): unlocking the mtd device... 
[   11.836794] done.
[   11.845179] jffs2_build_filesystem(): erasing all blocks after the end marker... 
[   11.845188] jffs2: Erase at 0x009e0000 failed immediately: -EROFS. Is the sector locked?
[   11.861274] jffs2: Erase at 0x009d0000 failed immediately: -EROFS. Is the sector locked?
[   11.869634] jffs2: Erase at 0x009c0000 failed immediately: -EROFS. Is the sector locked?
[   11.877983] jffs2: Erase at 0x009b0000 failed immediately: -EROFS. Is the sector locked?
[   11.886344] jffs2: Erase at 0x009a0000 failed immediately: -EROFS. Is the sector locked?
[   11.894703] jffs2: Erase at 0x00990000 failed immediately: -EROFS. Is the sector locked?
[   11.903063] jffs2: Erase at 0x00980000 failed immediately: -EROFS. Is the sector locked?
[   11.911422] jffs2: Erase at 0x00970000 failed immediately: -EROFS. Is the sector locked?
[   11.919782] jffs2: Erase at 0x00960000 failed immediately: -EROFS. Is the sector locked?
[   11.928130] jffs2: Erase at 0x00950000 failed immediately: -EROFS. Is the sector locked?
[   11.936492] jffs2: Erase at 0x00940000 failed immediately: -EROFS. Is the sector locked?
[   11.944851] jffs2: Erase at 0x00930000 failed immediately: -EROFS. Is the sector locked?
[   11.953219] jffs2: Erase at 0x00920000 failed immediately: -EROFS. Is the sector locked?
[   11.966474] jffs2: Erase at 0x00910000 failed immediately: -EROFS. Is the sector locked?
[   11.974849] jffs2: Erase at 0x00900000 failed immediately: -EROFS. Is the sector locked?
[   11.983210] jffs2: Erase at 0x008f0000 failed immediately: -EROFS. Is the sector locked?
[   11.991569] jffs2: Erase at 0x008e0000 failed immediately: -EROFS. Is the sector locked?
[   11.999930] jffs2: Erase at 0x008d0000 failed immediately: -EROFS. Is the sector locked?
[   12.008289] jffs2: Erase at 0x008c0000 failed immediately: -EROFS. Is the sector locked?
[   12.016638] jffs2: Erase at 0x008b0000 failed immediately: -EROFS. Is the sector locked?
[   12.024999] jffs2: Erase at 0x008a0000 failed immediately: -EROFS. Is the sector locked?
[   12.033361] jffs2: Erase at 0x00890000 failed immediately: -EROFS. Is the sector locked?
[   12.041719] jffs2: Erase at 0x00880000 failed immediately: -EROFS. Is the sector locked?
[   12.050078] jffs2: Erase at 0x00870000 failed immediately: -EROFS. Is the sector locked?
[   12.058438] jffs2: Erase at 0x00860000 failed immediately: -EROFS. Is the sector locked?
[   12.066787] jffs2: Erase at 0x00850000 failed immediately: -EROFS. Is the sector locked?
[   12.075148] jffs2: Erase at 0x00840000 failed immediately: -EROFS. Is the sector locked?
[   12.083508] jffs2: Erase at 0x00830000 failed immediately: -EROFS. Is the sector locked?
[   12.091868] jffs2: Erase at 0x00820000 failed immediately: -EROFS. Is the sector locked?
[   12.100227] jffs2: Erase at 0x00810000 failed immediately: -EROFS. Is the sector locked?
[   12.108587] jffs2: Erase at 0x00800000 failed immediately: -EROFS. Is the sector locked?
[   12.116936] jffs2: Erase at 0x007f0000 failed immediately: -EROFS. Is the sector locked?
[   12.125298] jffs2: Erase at 0x007e0000 failed immediately: -EROFS. Is the sector locked?
[   12.133658] jffs2: Erase at 0x007d0000 failed immediately: -EROFS. Is the sector locked?
[   12.142017] jffs2: Erase at 0x007c0000 failed immediately: -EROFS. Is the sector locked?
[   12.150376] jffs2: Erase at 0x007b0000 failed immediately: -EROFS. Is the sector locked?
[   12.158741] jffs2: Erase at 0x007a0000 failed immediately: -EROFS. Is the sector locked?
[   12.167094] jffs2: Erase at 0x00790000 failed immediately: -EROFS. Is the sector locked?
[   12.175458] jffs2: Erase at 0x00780000 failed immediately: -EROFS. Is the sector locked?
[   12.183815] jffs2: Erase at 0x00770000 failed immediately: -EROFS. Is the sector locked?
[   12.192179] jffs2: Erase at 0x00760000 failed immediately: -EROFS. Is the sector locked?
[   12.200534] jffs2: Erase at 0x00750000 failed immediately: -EROFS. Is the sector locked?
[   12.208894] jffs2: Erase at 0x00740000 failed immediately: -EROFS. Is the sector locked?
[   12.217243] jffs2: Erase at 0x00730000 failed immediately: -EROFS. Is the sector locked?
[   12.225604] jffs2: Erase at 0x00720000 failed immediately: -EROFS. Is the sector locked?
[   12.233964] jffs2: Erase at 0x00710000 failed immediately: -EROFS. Is the sector locked?
[   12.242324] jffs2: Erase at 0x00700000 failed immediately: -EROFS. Is the sector locked?
[   12.250683] jffs2: Erase at 0x006f0000 failed immediately: -EROFS. Is the sector locked?
[   12.259043] jffs2: Erase at 0x006e0000 failed immediately: -EROFS. Is the sector locked?
[   12.267393] jffs2: Erase at 0x006d0000 failed immediately: -EROFS. Is the sector locked?
[   12.275754] jffs2: Erase at 0x006c0000 failed immediately: -EROFS. Is the sector locked?
[   12.284113] jffs2: Erase at 0x006b0000 failed immediately: -EROFS. Is the sector locked?
[   12.292473] jffs2: Erase at 0x006a0000 failed immediately: -EROFS. Is the sector locked?
[   12.300833] jffs2: Erase at 0x00690000 failed immediately: -EROFS. Is the sector locked?
[   12.309192] jffs2: Erase at 0x00680000 failed immediately: -EROFS. Is the sector locked?
[   12.317541] jffs2: Erase at 0x00670000 failed immediately: -EROFS. Is the sector locked?
[   12.325903] jffs2: Erase at 0x00660000 failed immediately: -EROFS. Is the sector locked?
[   12.334262] jffs2: Erase at 0x00650000 failed immediately: -EROFS. Is the sector locked?
[   12.342622] jffs2: Erase at 0x00640000 failed immediately: -EROFS. Is the sector locked?
[   12.350981] jffs2: Erase at 0x00630000 failed immediately: -EROFS. Is the sector locked?
[   12.359341] jffs2: Erase at 0x00620000 failed immediately: -EROFS. Is the sector locked?
[   12.367691] jffs2: Erase at 0x00610000 failed immediately: -EROFS. Is the sector locked?
[   12.376055] jffs2: Erase at 0x00600000 failed immediately: -EROFS. Is the sector locked?
[   12.384414] jffs2: Erase at 0x005f0000 failed immediately: -EROFS. Is the sector locked?
[   12.392772] jffs2: Erase at 0x005e0000 failed immediately: -EROFS. Is the sector locked?
[   12.401130] jffs2: Erase at 0x005d0000 failed immediately: -EROFS. Is the sector locked?
[   12.409491] jffs2: Erase at 0x005c0000 failed immediately: -EROFS. Is the sector locked?
[   12.417839] jffs2: Erase at 0x005b0000 failed immediately: -EROFS. Is the sector locked?
[   12.426201] jffs2: Erase at 0x005a0000 failed immediately: -EROFS. Is the sector locked?
[   12.434560] jffs2: Erase at 0x00590000 failed immediately: -EROFS. Is the sector locked?
[   12.442920] jffs2: Erase at 0x00580000 failed immediately: -EROFS. Is the sector locked?
[   12.451279] jffs2: Erase at 0x00570000 failed immediately: -EROFS. Is the sector locked?
[   12.459639] jffs2: Erase at 0x00560000 failed immediately: -EROFS. Is the sector locked?
[   12.467989] jffs2: Erase at 0x00550000 failed immediately: -EROFS. Is the sector locked?
[   12.481232] jffs2: Erase at 0x00540000 failed immediately: -EROFS. Is the sector locked?
[   12.489599] jffs2: Erase at 0x00530000 failed immediately: -EROFS. Is the sector locked?
[   12.497951] jffs2: Erase at 0x00520000 failed immediately: -EROFS. Is the sector locked?
[   12.506313] jffs2: Erase at 0x00510000 failed immediately: -EROFS. Is the sector locked?
[   12.514672] jffs2: Erase at 0x00500000 failed immediately: -EROFS. Is the sector locked?
[   12.523032] jffs2: Erase at 0x004f0000 failed immediately: -EROFS. Is the sector locked?
[   12.531391] jffs2: Erase at 0x004e0000 failed immediately: -EROFS. Is the sector locked?
[   12.539751] jffs2: Erase at 0x004d0000 failed immediately: -EROFS. Is the sector locked?
[   12.548100] jffs2: Erase at 0x004c0000 failed immediately: -EROFS. Is the sector locked?
[   12.556462] jffs2: Erase at 0x004b0000 failed immediately: -EROFS. Is the sector locked?
[   12.564821] jffs2: Erase at 0x004a0000 failed immediately: -EROFS. Is the sector locked?
[   12.573181] jffs2: Erase at 0x00490000 failed immediately: -EROFS. Is the sector locked?
[   12.581544] jffs2: Erase at 0x00480000 failed immediately: -EROFS. Is the sector locked?
[   12.589911] jffs2: Erase at 0x00470000 failed immediately: -EROFS. Is the sector locked?
[   12.598269] jffs2: Erase at 0x00460000 failed immediately: -EROFS. Is the sector locked?
[   12.606618] jffs2: Erase at 0x00450000 failed immediately: -EROFS. Is the sector locked?
[   12.615023] jffs2: Erase at 0x00440000 failed immediately: -EROFS. Is the sector locked?
[   12.623388] jffs2: Erase at 0x00430000 failed immediately: -EROFS. Is the sector locked?
[   12.631752] jffs2: Erase at 0x00420000 failed immediately: -EROFS. Is the sector locked?
[   12.640112] jffs2: Erase at 0x00410000 failed immediately: -EROFS. Is the sector locked?
[   12.648472] jffs2: Erase at 0x00400000 failed immediately: -EROFS. Is the sector locked?
[   12.656821] jffs2: Erase at 0x003f0000 failed immediately: -EROFS. Is the sector locked?
[   12.665183] jffs2: Erase at 0x003e0000 failed immediately: -EROFS. Is the sector locked?
[   12.673542] jffs2: Erase at 0x003d0000 failed immediately: -EROFS. Is the sector locked?
[   12.681901] jffs2: Erase at 0x003c0000 failed immediately: -EROFS. Is the sector locked?
[   12.690262] jffs2: Erase at 0x003b0000 failed immediately: -EROFS. Is the sector locked?
[   12.698683] jffs2: Erase at 0x003a0000 failed immediately: -EROFS. Is the sector locked?
[   12.707034] jffs2: Erase at 0x00390000 failed immediately: -EROFS. Is the sector locked?
[   12.715404] jffs2: Erase at 0x00380000 failed immediately: -EROFS. Is the sector locked?
[   12.723764] jffs2: Erase at 0x00370000 failed immediately: -EROFS. Is the sector locked?
[   12.732122] jffs2: Erase at 0x00360000 failed immediately: -EROFS. Is the sector locked?
[   12.740482] jffs2: Erase at 0x00350000 failed immediately: -EROFS. Is the sector locked?
[   12.749035] jffs2: Erase at 0x00340000 failed immediately: -EROFS. Is the sector locked?
[   12.757389] jffs2: Erase at 0x00330000 failed immediately: -EROFS. Is the sector locked?
[   12.765757] jffs2: Erase at 0x00320000 failed immediately: -EROFS. Is the sector locked?
[   12.774119] jffs2: Erase at 0x00310000 failed immediately: -EROFS. Is the sector locked?
[   12.782478] jffs2: Erase at 0x00300000 failed immediately: -EROFS. Is the sector locked?
[   12.790843] jffs2: Erase at 0x002f0000 failed immediately: -EROFS. Is the sector locked?
[   12.799208] jffs2: Erase at 0x002e0000 failed immediately: -EROFS. Is the sector locked?
[   12.807555] jffs2: Erase at 0x002d0000 failed immediately: -EROFS. Is the sector locked?
[   12.815922] jffs2: Erase at 0x002c0000 failed immediately: -EROFS. Is the sector locked?
[   12.824285] jffs2: Erase at 0x002b0000 failed immediately: -EROFS. Is the sector locked?
[   12.832644] jffs2: Erase at 0x002a0000 failed immediately: -EROFS. Is the sector locked?
[   12.841004] jffs2: Erase at 0x00290000 failed immediately: -EROFS. Is the sector locked?
[   12.849364] jffs2: Erase at 0x00280000 failed immediately: -EROFS. Is the sector locked?
[   12.857713] jffs2: Erase at 0x00270000 failed immediately: -EROFS. Is the sector locked?
[   12.866075] jffs2: Erase at 0x00260000 failed immediately: -EROFS. Is the sector locked?
[   12.874434] jffs2: Erase at 0x00250000 failed immediately: -EROFS. Is the sector locked?
[   12.882794] jffs2: Erase at 0x00240000 failed immediately: -EROFS. Is the sector locked?
[   12.891153] jffs2: Erase at 0x00230000 failed immediately: -EROFS. Is the sector locked?
[   12.899513] jffs2: Erase at 0x00220000 failed immediately: -EROFS. Is the sector locked?
[   12.907862] jffs2: Erase at 0x00210000 failed immediately: -EROFS. Is the sector locked?
[   12.916224] jffs2: Erase at 0x00200000 failed immediately: -EROFS. Is the sector locked?
[   12.924584] jffs2: Erase at 0x001f0000 failed immediately: -EROFS. Is the sector locked?
[   12.932944] jffs2: Erase at 0x001e0000 failed immediately: -EROFS. Is the sector locked?
[   12.941303] jffs2: Erase at 0x001d0000 failed immediately: -EROFS. Is the sector locked?
[   12.949663] jffs2: Erase at 0x001c0000 failed immediately: -EROFS. Is the sector locked?
[   12.958011] jffs2: Erase at 0x001b0000 failed immediately: -EROFS. Is the sector locked?
[   12.966374] jffs2: Erase at 0x001a0000 failed immediately: -EROFS. Is the sector locked?
[   12.974732] jffs2: Erase at 0x00190000 failed immediately: -EROFS. Is the sector locked?
[   12.983091] jffs2: Erase at 0x00180000 failed immediately: -EROFS. Is the sector locked?
[   12.996322] jffs2: Erase at 0x00170000 failed immediately: -EROFS. Is the sector locked?
[   13.004699] jffs2: Erase at 0x00160000 failed immediately: -EROFS. Is the sector locked?
[   13.013066] jffs2: Erase at 0x00150000 failed immediately: -EROFS. Is the sector locked?
[   13.021423] jffs2: Erase at 0x00140000 failed immediately: -EROFS. Is the sector locked?
[   13.029784] jffs2: Erase at 0x00130000 failed immediately: -EROFS. Is the sector locked?
[   13.038132] jffs2: Erase at 0x00120000 failed immediately: -EROFS. Is the sector locked?
[   13.046493] jffs2: Erase at 0x00110000 failed immediately: -EROFS. Is the sector locked?
[   13.054853] jffs2: Erase at 0x00100000 failed immediately: -EROFS. Is the sector locked?
[   13.063212] jffs2: Erase at 0x000f0000 failed immediately: -EROFS. Is the sector locked?
[   13.071572] jffs2: Erase at 0x000e0000 failed immediately: -EROFS. Is the sector locked?
[   13.079932] jffs2: Erase at 0x000d0000 failed immediately: -EROFS. Is the sector locked?
[   13.088291] jffs2: Erase at 0x000c0000 failed immediately: -EROFS. Is the sector locked?
[   13.096641] jffs2: Erase at 0x000b0000 failed immediately: -EROFS. Is the sector locked?
[   13.105002] jffs2: Erase at 0x000a0000 failed immediately: -EROFS. Is the sector locked?
[   13.113361] jffs2: Erase at 0x00090000 failed immediately: -EROFS. Is the sector locked?
[   13.121720] jffs2: Erase at 0x00080000 failed immediately: -EROFS. Is the sector locked?
[   13.130081] jffs2: Erase at 0x00070000 failed immediately: -EROFS. Is the sector locked?
[   13.138440] jffs2: Erase at 0x00060000 failed immediately: -EROFS. Is the sector locked?
[   13.146789] jffs2: Erase at 0x00050000 failed immediately: -EROFS. Is the sector locked?
[   13.155150] jffs2: Erase at 0x00040000 failed immediately: -EROFS. Is the sector locked?
[   13.163511] jffs2: Erase at 0x00030000 failed immediately: -EROFS. Is the sector locked?
[   13.171871] jffs2: Erase at 0x00020000 failed immediately: -EROFS. Is the sector locked?
[   13.180230] jffs2: Erase at 0x00010000 failed immediately: -EROFS. Is the sector locked?
[   13.188587] done.
[   13.190598] jffs2: notice: (487) jffs2_build_xattr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 .
[   13.207284] mount_root: unable to set filesystem state
[   13.212840] mount_root: switching to jffs2 overlay
[   13.243430] overlayfs: failed to resolve '/overlay/upper': -2
[   13.265635] mount_root: mount failed: lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options No such device
[   13.276838] mount_root: switching to jffs2 failed - fallback to ramoverlay
[   13.303346] urandom-seed: Seed file not found (/etc/urandom.seed)
[   13.395561] eth0: link down
[   13.414889] procd: - early -
[   13.417963] procd: - watchdog -
[   14.079880] procd: - watchdog -
[   14.083383] procd: - ubus -
[   14.141748] random: ubusd: uninitialized urandom read (4 bytes read)
[   14.157806] random: ubusd: uninitialized urandom read (4 bytes read)
[   14.165573] procd: - init -
[   14.805834] kmodloader: loading kernel modules from /etc/modules.d/*
[   14.841433] Loading modules backported from Linux version v5.4-rc8-0-gaf42d3466bdc
[   14.849299] Backport generated by backports.git v5.4-rc8-1-0-g368e8c51
[   14.913549] xt_time: kernel timezone is -0000
[   15.159075] PPP generic driver version 2.4.2
[   15.179263] NET: Registered protocol family 24
[   15.249148] ath10k_pci 0000:00:00.0: enabling device (0000 -> 0002)
[   15.255794] ath10k_pci 0000:00:00.0: pci irq legacy oper_irq_mode 1 irq_mode 0 reset_mode 0
[   15.274765] urngd: v1.0.1 started.
[   15.435424] random: crng init done
[   15.718918] firmware ath10k!pre-cal-pci-0000:00:00.0.bin: firmware_loading_store: map pages failed
[   16.162778] firmware ath10k!QCA988X!hw2.0!firmware-6.bin: firmware_loading_store: map pages failed
[   16.177043] ath10k_pci 0000:00:00.0: qca988x hw2.0 target 0x4100016c chip_id 0x043202ff sub 0000:0000
[   16.186622] ath10k_pci 0000:00:00.0: kconfig debug 0 debugfs 1 tracing 0 dfs 1 testmode 1
[   16.199646] ath10k_pci 0000:00:00.0: firmware ver 10.2.4-1.0-00047 api 5 features no-p2p,raw-mode,mfp,allows-mesh-bcast crc32 35bd9258
[   16.445940] firmware ath10k!QCA988X!hw2.0!board-2.bin: firmware_loading_store: map pages failed
[   16.463780] ath10k_pci 0000:00:00.0: board_file api 1 bmi_id N/A crc32 bebc7c08
[   17.585055] ath10k_pci 0000:00:00.0: unsupported HTC service id: 1536
[   17.613087] ath10k_pci 0000:00:00.0: htt-ver 2.1 wmi-op 5 htt-op 2 cal file max-sta 128 raw 0 hwcrypto 1
[   17.751599] ath: EEPROM regdomain: 0x0
[   17.751606] ath: EEPROM indicates default country code should be used
[   17.751609] ath: doing EEPROM country->regdmn map search
[   17.751622] ath: country maps to regdmn code: 0x3a
[   17.751626] ath: Country alpha2 being used: US
[   17.751629] ath: Regpair used: 0x3a
[   17.841026] ath: EEPROM regdomain: 0x0
[   17.841034] ath: EEPROM indicates default country code should be used
[   17.841037] ath: doing EEPROM country->regdmn map search
[   17.841050] ath: country maps to regdmn code: 0x3a
[   17.841055] ath: Country alpha2 being used: US
[   17.841058] ath: Regpair used: 0x3a
[   17.853468] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
[   17.854854] ieee80211 phy1: Atheros AR9561 Rev:0 mem=0xb8100000, irq=2
[   17.911885] kmodloader: done loading kernel modules from /etc/modules.d/*
[   41.459564] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   41.491537] br-lan: port 1(eth0.1) entered blocking state
[   41.497119] br-lan: port 1(eth0.1) entered disabled state
[   41.503029] device eth0.1 entered promiscuous mode
[   41.507985] device eth0 entered promiscuous mode
[   41.585898] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
[   41.643458] IPv6: ADDRCONF(NETDEV_UP): eth0.2: link is not ready
[   42.509983] eth0: link up (1000Mbps/Full duplex)
[   42.514835] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   42.578397] br-lan: port 1(eth0.1) entered blocking state
[   42.583986] br-lan: port 1(eth0.1) entered forwarding state
[   42.590106] IPv6: ADDRCONF(NETDEV_CHANGE): eth0.2: link becomes ready
[   42.704550] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready


On Tue, 2020-01-21 at 11:24 +0100, Bruno Pena wrote:
> Please also include the contents of "dmesg" and of the files
> "/proc/cmdline" and "/proc/mtd".
> 
> Best regards,
> Bruno Pena
> 
> On Tue, Jan 21, 2020, 11:01 Bruno Pena <brunompena@gmail.com> wrote:
> > Hi Steve,
> > 
> > These patches should only impact partitions that are marked as read
> > only.
> > Can you please provide more details about your configuration?
> > (architecture, device profile, mtd layout, the mtd partition
> > generating the error)
> > 
> > Best regards,
> > Bruno Pena
> > 
> > On Tue, Jan 21, 2020, 10:51 Steve Brown <sbrown@ewol.com> wrote:
> > > Hi Bruno,
> > > 
> > > On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:
> > > > This patch enables fstools to open read-only MTD partitions,
> > > which in
> > > > turn also enables OpenWrt to boot from read-only partitions.
> > > > 
> > > > The use of read-only partitions is of special importance for
> > > WiFi-
> > > > only
> > > > devices, where a protected read-only recovery image can be used
> > > in
> > > > case
> > > > something goes wrong with the main firmware (eg. user gets
> > > locked out
> > > > due to bad settings, flash of an unbootable dev firmware, etc).
> > > > 
> > > > Signed-off-by: Bruno Pena <brunompena@gmail.com>
> > > > ---
> > > >  libfstools/mtd.c | 19 +++++++++++++++----
> > > >  1 file changed, 15 insertions(+), 4 deletions(-)
> > > > 
> > > > diff --git a/libfstools/mtd.c b/libfstools/mtd.c
> > > > index 77c71ee..aae633e 100644
> > > > --- a/libfstools/mtd.c
> > > > +++ b/libfstools/mtd.c
> > > > @@ -36,20 +36,31 @@ struct mtd_volume {
> > > >  
> > > >  static struct driver mtd_driver;
> > > >  
> > > > +static int mtd_open_device(const char *dev)
> > > > +{
> > > > +     int ret;
> > > > +
> > > > +     ret = open(dev, O_RDWR | O_SYNC);
> > > > +     if (ret < 0)
> > > > +             ret = open(dev, O_RDONLY);
> > > > +
> > > > +     return ret;
> > > > +}
> > > > +
> > > >  static int mtd_open(const char *mtd, int block)
> > > >  {
> > > >       FILE *fp;
> > > >       char dev[PATH_MAX];
> > > > -     int i, ret, flags = O_RDWR | O_SYNC;
> > > > +     int i, ret;
> > > >  
> > > >       if ((fp = fopen("/proc/mtd", "r"))) {
> > > >               while (fgets(dev, sizeof(dev), fp)) {
> > > >                       if (sscanf(dev, "mtd%d:", &i) &&
> > > strstr(dev,
> > > > mtd)) {
> > > >                               snprintf(dev, sizeof(dev),
> > > > "/dev/mtd%s/%d", (block ? "block" : ""), i);
> > > > -                             ret = open(dev, flags);
> > > > +                             ret = mtd_open_device(dev);
> > > >                               if (ret < 0) {
> > > >                                       snprintf(dev,
> > > sizeof(dev),
> > > > "/dev/mtd%s%d", (block ? "block" : ""), i);
> > > > -                                     ret = open(dev, flags);
> > > > +                                     ret =
> > > mtd_open_device(dev);
> > > >                               }
> > > >                               fclose(fp);
> > > >                               return ret;
> > > > @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int
> > > block)
> > > >               fclose(fp);
> > > >       }
> > > >  
> > > > -     return open(mtd, flags);
> > > > +     return mtd_open_device(mtd);
> > > >  }
> > > >  
> > > >  static void mtd_volume_close(struct mtd_volume *p)
> > > 
> > > 
> > > This patch and related commit
> > > de80424f706682e8bba27c60bcd2a9c1b4a5e875
> > > break the jffs erase on my Archer a7 v5.
> > > 
> > >     [   11.787856] jffs2_scan_eraseblock(): End of filesystem
> > > marker found at 0x10000
> > >     [   11.795357] jffs2_build_filesystem(): unlocking the mtd
> > > device...
> > >     [   11.795390] done.
> > >     [   11.803771] jffs2_build_filesystem(): erasing all blocks
> > > after the end marker...
> > >     [   11.803781] jffs2: Erase at 0x009e0000 failed immediately:
> > > -EROFS. Is the sector locked?
> > >          -------------
> > >     [   13.138841] jffs2: Erase at 0x00010000 failed immediately:
> > > -EROFS. Is the sector locked?
> > >     [   13.147188] done.
> > >     [   13.149202] jffs2: notice: (487)
> > > jffs2_build_xattr_subsystem: complete building xattr subsystem, 0
> > > of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 .
> > >     [   13.165896] mount_root: unable to set filesystem state
> > >     [   13.171443] mount_root: switching to jffs2 overlay
> > >     [   13.201867] overlayfs: failed to resolve '/overlay/upper':
> > > -2
> > >     [   13.223939] mount_root: mount failed:
> > > lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options
> > > No such device
> > >     [   13.235145] mount_root: switching to jffs2 failed -
> > > fallback to ramoverlay
> > > 
> > > Verified by reverting de80424f7. 
> > > 
> > > Steve
> > > 
> > > 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
