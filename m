Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AA91751C2
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 03:21:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cbJFgLlOBPPSbqU70EIIFtEcn1h+Y3h4Ns4+kYEF02o=; b=mjuFKZHIEf1NKf
	GArwEbVlkVRY3EBC1zoSZfvNd5n2L29iwa8v3d/qe2Zm2dWRUmk1mJ7kol+9ZoM4bnyzumhYtHZTf
	ECXxWcjYpu2xgT4SwsnPMD5qQoEsUhM9zQfckecpQQlT+lxvohwNU1IIwULkBRVZjVFWSIR1RF0W4
	wXKZTGdgHFEhURS8+PrQnLUPdJqX3qrSgIr83toG2vDVb0+LRMdIx9BZJyAPSraNRFgATVXOmzGHt
	UsbhEI6BL6vWk7km5nEsLKelbGSPpnZCfZay+4UblcX1gD7Y9GGABFAAL0sOObGLyx44NYlsipwqQ
	/zF/vpOc8n5knIhWhfwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8ahV-00048o-9e; Mon, 02 Mar 2020 02:20:57 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8ahM-00047k-IS
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 02:20:51 +0000
Received: by mail-wm1-x330.google.com with SMTP id 6so936712wmi.5
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Mar 2020 18:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=sbhKLRE6kdP1b0+CTlvz54QDvabfbOL15HnhIGMCoHI=;
 b=hM34aAnIrKSWX32cLsr+pVVwh+BB/UXAX2LA30aa6KKQvT7T/1vQyww3v+uir+qT6/
 C4vp303LVedqpo7kkFztb69TnbCZi3h7JD848pnpWGAZri+euzCVR3FrR2fWETRM1ydx
 5kXeQvlrLx+TZBlDWdD/QvBIxKqdKPupKCxdXKpq97u89UXVZGB5q5DzoOLb/G2VhgeC
 7DdoM9kqtbztkOEHt06D1ggMf2HflMHZ7zdDucYdOx4LeMtLw8xuBhk4oqB21wIDuuP2
 8AZfqxPEK51uGBKGx6US0EXRlodD+xvMDZhfJeRsIsNDHBvEBF7vYF2xlqDFIqcEpQnG
 FD4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=sbhKLRE6kdP1b0+CTlvz54QDvabfbOL15HnhIGMCoHI=;
 b=NQb7tVZ0fA1IcAlPJrwTuGH+B2stRriXvh+5XaUQIk2RkaaztUkbZ84cCR87Hx53lM
 rJphJV7xfoHq0UAUGdfQrrCyzD17ecWAWgHhTNQbzLyzyO5qXLNccU2HWyhVL6s4IYJR
 wJRJiAhWKbpmBmEmJgh7SRIXehsJVaQKZ88E6MnVuz3FJPFnLF9iJUlZhoybcXMw4Jb2
 cQAYlDzw/P8OW+UrZbqSTlFLpYI/iYv6bOQvB3W4A5y4s1FAFRJLXzCeXIwYA7gXyfEP
 2YS7n0XBJAzLdYbzdJ78mGAaEmTExRukCxdMCnsRrBEeIcR/T37jFeYmastWQJuJJmg0
 vPnA==
X-Gm-Message-State: APjAAAWRewVgnZEL5iEY2+Vi6OPsI3qMv81k9OxTOOLr5/R9QfAZt4S2
 yHBQq2DuBAe3j5IsavYJ9jjgbv41
X-Google-Smtp-Source: APXvYqxoQw/+730zr0zlcv83uCiovQ6GmjXV8hyaea43n1oTa1UGAUeEgk/UhTJGSjWNxj2ZZT2ANw==
X-Received: by 2002:a1c:7205:: with SMTP id n5mr12791491wmc.135.1583115643790; 
 Sun, 01 Mar 2020 18:20:43 -0800 (PST)
Received: from mStation (host224-250-dynamic.8-87-r.retail.telecomitalia.it.
 [87.8.250.224])
 by smtp.gmail.com with ESMTPSA id y12sm25613506wrw.88.2020.03.01.18.20.41
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 18:20:42 -0800 (PST)
Date: Mon, 2 Mar 2020 03:20:40 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.353.2003020317090.1019877@mStation.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_182048_666458_6A343F23 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] jffs2: Erase at 0x01ab0000 failed immediately:
 errno -22 on ZBT-WG3526 (32M)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi! I flashed OpenWRt master (commit 4349d4c6823bfe09caabbdd3c9a65198addc76d6) on this device. All seems to work fine, but I sawthis in the dmesg.

should I worry about my flash chip?
thank you guys!!

Enrico

config.buildinfo:

CONFIG_TARGET_ramips=y
CONFIG_TARGET_ramips_mt7621=y
CONFIG_TARGET_ramips_mt7621_DEVICE_zbtlink_zbt-wg3526-32m=y
CONFIG_FEED_luci=y
CONFIG_FEED_packages=y
CONFIG_FEED_routing=y
CONFIG_FEED_telephony=y
CONFIG_IMAGEOPT=y
# CONFIG_KERNEL_CRASHLOG is not set
CONFIG_KERNEL_MIPS_FPU_EMULATOR=y
CONFIG_KERNEL_MIPS_FP_SUPPORT=y
# CONFIG_KERNEL_SWAP is not set
CONFIG_PACKAGE_ip-tiny=y
CONFIG_PACKAGE_kmod-crypto-crc32=y
CONFIG_PACKAGE_kmod-crypto-crc32c=y
CONFIG_PACKAGE_kmod-crypto-hash=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-f2fs=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-lib-crc16=y
CONFIG_PACKAGE_kmod-mii=y
CONFIG_PACKAGE_kmod-nls-cp437=y
CONFIG_PACKAGE_kmod-nls-iso8859-1=y
CONFIG_PACKAGE_kmod-nls-utf8=y
CONFIG_PACKAGE_kmod-tun=y
CONFIG_PACKAGE_kmod-udptunnel4=y
CONFIG_PACKAGE_kmod-udptunnel6=y
CONFIG_PACKAGE_kmod-usb-net=y
CONFIG_PACKAGE_kmod-usb-net-qmi-wwan=y
CONFIG_PACKAGE_kmod-usb-serial=y
CONFIG_PACKAGE_kmod-usb-serial-option=y
CONFIG_PACKAGE_kmod-usb-serial-qualcomm=m
CONFIG_PACKAGE_kmod-usb-serial-wwan=y
CONFIG_PACKAGE_kmod-usb-wdm=y
CONFIG_PACKAGE_kmod-wireguard=y
CONFIG_PACKAGE_wireguard=y
CONFIG_PACKAGE_wireguard-tools=y

full dmesg:
[    0.000000] Linux version 4.14.171 (mrkiko@mStation) (gcc version 8.3.0 (OpenWrt GCC 8.3.0 r12417-4349d4c682)) #0 SMP Sun Mar 1 22:39:27 2020
[    0.000000] SoC Type: MediaTek MT7621 ver:1 eco:3
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 0001992f (MIPS 1004Kc)
[    0.000000] MIPS: machine is Zbtlink ZBT-WG3526 (32M)
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 1c000000 @ 00000000 (usable)
[    0.000000]  memory: 04000000 @ 20000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] VPE topology {2,2} total 4
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.000000] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x000000000fffffff]
[    0.000000]   HighMem  [mem 0x0000000010000000-0x0000000023ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x000000001bffffff]
[    0.000000]   node   0: [mem 0x0000000020000000-0x0000000023ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000023ffffff]
[    0.000000] On node 0 totalpages: 131072
[    0.000000] free_area_init_node: node 0, pgdat 805f8360, node_mem_map 81003000
[    0.000000]   Normal zone: 576 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 65536 pages, LIFO batch:15
[    0.000000]   HighMem zone: 65536 pages, LIFO batch:15
[    0.000000] random: get_random_bytes called from start_kernel+0x9c/0x4d8 with crng_init=0
[    0.000000] percpu: Embedded 14 pages/cpu s26544 r8192 d22608 u57344
[    0.000000] pcpu-alloc: s26544 r8192 d22608 u57344 alloc=14*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 130496
[    0.000000] Kernel command line: console=ttyS0,115200 rootfstype=squashfs,jffs2
[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Writing ErrCtl register=0001aa20
[    0.000000] Readback ErrCtl register=0001aa20
[    0.000000] Memory: 510976K/524288K available (4819K kernel code, 244K rwdata, 1048K rodata, 1236K init, 253K bss, 13312K reserved, 0K cma-reserved, 262144K highmem)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 256
[    0.000000] CPU Clock: 880MHz
[    0.000000] clocksource: GIC: mask: 0xffffffffffffffff max_cycles: 0xcaf478abb4, max_idle_ns: 440795247997 ns
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 4343773742 ns
[    0.000010] sched_clock: 32 bits at 440MHz, resolution 2ns, wraps every 4880645118ns
[    0.007824] Calibrating delay loop... 586.13 BogoMIPS (lpj=2930688)
[    0.073981] pid_max: default: 32768 minimum: 301
[    0.078798] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.085307] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.094587] Hierarchical SRCU implementation.
[    0.099822] smp: Bringing up secondary CPUs ...
[    0.105966] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.105975] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.105987] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.106134] CPU1 revision is: 0001992f (MIPS 1004Kc)
[    0.164579] Synchronize counters for CPU 1: done.
[    0.206013] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.206021] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.206030] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.206106] CPU2 revision is: 0001992f (MIPS 1004Kc)
[    0.255787] Synchronize counters for CPU 2: done.
[    0.287157] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.287165] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.287173] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.287253] CPU3 revision is: 0001992f (MIPS 1004Kc)
[    0.340970] Synchronize counters for CPU 3: done.
[    0.370844] smp: Brought up 1 node, 4 CPUs
[    0.379150] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.388958] futex hash table entries: 1024 (order: 3, 32768 bytes)
[    0.395386] pinctrl core: initialized pinctrl subsystem
[    0.402163] NET: Registered protocol family 16
[    0.417708] FPU Affinity set after 11720 emulations
[    0.419274] pull PCIe RST: RALINK_RSTCTRL = 0
[    0.723989] release PCIe RST: RALINK_RSTCTRL = 7000000
[    0.729022] ***** Xtal 40MHz *****
[    0.732396] release PCIe RST: RALINK_RSTCTRL = 7000000
[    0.737502] Port 0 N_FTS = 1b105000
[    0.740944] Port 1 N_FTS = 1b105000
[    0.744404] Port 2 N_FTS = 1b105000
[    1.899350]  -> 21007f2
[    1.901704] PCIE0 enabled
[    1.904298] PCIE1 enabled
[    1.906887] PCIE2 enabled
[    1.909509] PCI host bridge /pcie@1e140000 ranges:
[    1.914254]  MEM 0x0000000060000000..0x000000006fffffff
[    1.919420]   IO 0x000000001e160000..0x000000001e16ffff
[    1.924629] PCI coherence region base: 0xbfbf8000, mask/settings: 0x60000000
[    1.941857] mt7621_gpio 1e000600.gpio: registering 32 gpios
[    1.947712] mt7621_gpio 1e000600.gpio: registering 32 gpios
[    1.953491] mt7621_gpio 1e000600.gpio: registering 32 gpios
[    1.960794] i2c-mt7621 1e000900.i2c: clock 100KHz, re-start not support
[    1.967960] PCI host bridge to bus 0000:00
[    1.972045] pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
[    1.978812] pci_bus 0000:00: root bus resource [io  0xffffffff]
[    1.984709] pci_bus 0000:00: root bus resource [??? 0x00000000 flags 0x0]
[    1.991433] pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
[    1.999368] pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
[    1.999411] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[    1.999423] pci 0000:00:00.0: reg 0x14: [mem 0x60500000-0x6050ffff]
[    1.999490] pci 0000:00:00.0: supports D1
[    1.999499] pci 0000:00:00.0: PME# supported from D0 D1 D3hot
[    1.999757] pci 0000:00:01.0: [0e8d:0801] type 01 class 0x060400
[    1.999796] pci 0000:00:01.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[    1.999816] pci 0000:00:01.0: reg 0x14: [mem 0x60510000-0x6051ffff]
[    1.999882] pci 0000:00:01.0: supports D1
[    1.999892] pci 0000:00:01.0: PME# supported from D0 D1 D3hot
[    2.000115] pci 0000:00:02.0: [0e8d:0801] type 01 class 0x060400
[    2.000165] pci 0000:00:02.0: reg 0x10: [mem 0x00000000-0x7fffffff]
[    2.000183] pci 0000:00:02.0: reg 0x14: [mem 0x60520000-0x6052ffff]
[    2.000245] pci 0000:00:02.0: supports D1
[    2.000254] pci 0000:00:02.0: PME# supported from D0 D1 D3hot
[    2.000748] pci 0000:01:00.0: [14c3:7603] type 00 class 0x028000
[    2.000808] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x000fffff]
[    2.000945] pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
[    2.001153] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
[    2.001419] pci 0000:02:00.0: [14c3:7662] type 00 class 0x028000
[    2.001485] pci 0000:02:00.0: reg 0x10: [mem 0x00000000-0x000fffff 64bit]
[    2.001533] pci 0000:02:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
[    2.001627] pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
[    2.001838] pci_bus 0000:02: busn_res: [bus 02-ff] end is updated to 02
[    2.002102] pci 0000:03:00.0: [1b21:0611] type 00 class 0x010185
[    2.002159] pci 0000:03:00.0: reg 0x10: [io  0x0000-0x0007]
[    2.002180] pci 0000:03:00.0: reg 0x14: [io  0x0000-0x0003]
[    2.002196] pci 0000:03:00.0: reg 0x18: [io  0x0000-0x0007]
[    2.002211] pci 0000:03:00.0: reg 0x1c: [io  0x0000-0x0003]
[    2.002226] pci 0000:03:00.0: reg 0x20: [io  0x0000-0x000f]
[    2.002243] pci 0000:03:00.0: reg 0x24: [mem 0x00000000-0x000001ff]
[    2.002258] pci 0000:03:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
[    2.002540] pci_bus 0000:03: busn_res: [bus 03-ff] end is updated to 03
[    2.002567] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 03
[    2.002672] pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
[    2.009184] pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
[    2.016154] pci 0000:00:01.0: BAR 0: no space for [mem size 0x80000000]
[    2.022661] pci 0000:00:01.0: BAR 0: failed to assign [mem size 0x80000000]
[    2.029599] pci 0000:00:02.0: BAR 0: no space for [mem size 0x80000000]
[    2.036146] pci 0000:00:02.0: BAR 0: failed to assign [mem size 0x80000000]
[    2.043082] pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x600fffff]
[    2.049796] pci 0000:00:01.0: BAR 8: assigned [mem 0x60100000-0x601fffff]
[    2.056554] pci 0000:00:01.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
[    2.063704] pci 0000:00:02.0: BAR 8: assigned [mem 0x60300000-0x603fffff]
[    2.070468] pci 0000:00:02.0: BAR 9: assigned [mem 0x60400000-0x604fffff pref]
[    2.077622] pci 0000:00:00.0: BAR 1: assigned [mem 0x60500000-0x6050ffff]
[    2.084385] pci 0000:00:01.0: BAR 1: assigned [mem 0x60510000-0x6051ffff]
[    2.091099] pci 0000:00:02.0: BAR 1: assigned [mem 0x60520000-0x6052ffff]
[    2.097858] pci 0000:00:02.0: BAR 7: no space for [io  size 0x1000]
[    2.104050] pci 0000:00:02.0: BAR 7: failed to assign [io  size 0x1000]
[    2.110649] pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x600fffff]
[    2.117367] pci 0000:00:00.0: PCI bridge to [bus 01]
[    2.122309] pci 0000:00:00.0:   bridge window [mem 0x60000000-0x600fffff]
[    2.129034] pci 0000:02:00.0: BAR 0: assigned [mem 0x60100000-0x601fffff 64bit]
[    2.136311] pci 0000:02:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
[    2.143449] pci 0000:00:01.0: PCI bridge to [bus 02]
[    2.148397] pci 0000:00:01.0:   bridge window [mem 0x60100000-0x601fffff]
[    2.155113] pci 0000:00:01.0:   bridge window [mem 0x60200000-0x602fffff pref]
[    2.162321] pci 0000:03:00.0: BAR 6: assigned [mem 0x60400000-0x6040ffff pref]
[    2.169461] pci 0000:03:00.0: BAR 5: assigned [mem 0x60300000-0x603001ff]
[    2.176239] pci 0000:03:00.0: BAR 4: no space for [io  size 0x0010]
[    2.182415] pci 0000:03:00.0: BAR 4: failed to assign [io  size 0x0010]
[    2.189015] pci 0000:03:00.0: BAR 0: no space for [io  size 0x0008]
[    2.195202] pci 0000:03:00.0: BAR 0: failed to assign [io  size 0x0008]
[    2.201791] pci 0000:03:00.0: BAR 2: no space for [io  size 0x0008]
[    2.207994] pci 0000:03:00.0: BAR 2: failed to assign [io  size 0x0008]
[    2.214583] pci 0000:03:00.0: BAR 1: no space for [io  size 0x0004]
[    2.220778] pci 0000:03:00.0: BAR 1: failed to assign [io  size 0x0004]
[    2.227363] pci 0000:03:00.0: BAR 3: no space for [io  size 0x0004]
[    2.233573] pci 0000:03:00.0: BAR 3: failed to assign [io  size 0x0004]
[    2.240152] pci 0000:00:02.0: PCI bridge to [bus 03]
[    2.245057] pci 0000:00:02.0:   bridge window [mem 0x60300000-0x603fffff]
[    2.251823] pci 0000:00:02.0:   bridge window [mem 0x60400000-0x604fffff pref]
[    2.260578] clocksource: Switched to clocksource GIC
[    2.267445] NET: Registered protocol family 2
[    2.272412] TCP established hash table entries: 2048 (order: 1, 8192 bytes)
[    2.279294] TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
[    2.285758] TCP: Hash tables configured (established 2048 bind 2048)
[    2.292181] UDP hash table entries: 256 (order: 1, 8192 bytes)
[    2.297953] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
[    2.304453] NET: Registered protocol family 1
[    2.308785] PCI: CLS 0 bytes, default 32
[    2.540520] 4 CPUs re-calibrate udelay(lpj = 2924544)
[    2.547457] workingset: timestamp_bits=14 max_order=17 bucket_order=3
[    2.560344] random: fast init done
[    2.561698] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    2.569467] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    2.583068] bounce: pool size: 64 pages
[    2.586843] io scheduler noop registered
[    2.590753] io scheduler deadline registered (default)
[    2.596839] Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
[    2.604556] console [ttyS0] disabled
[    2.608110] 1e000c00.uartlite: ttyS0 at MMIO 0x1e000c00 (irq = 19, base_baud = 3125000) is a 16550A
[    2.617182] console [ttyS0] enabled
[    2.624065] bootconsole [early0] disabled
[    2.634362] MediaTek Nand driver init, version v2.1 Fix AHB virt2phys error
[    2.641781] spi-mt7621 1e000b00.spi: sys_freq: 220000000
[    2.656954] m25p80 spi0.0: w25q256 (32768 Kbytes)
[    2.661740] 4 fixed-partitions partitions found on MTD device spi0.0
[    2.668061] Creating 4 MTD partitions on "spi0.0":
[    2.672858] 0x000000000000-0x000000030000 : "u-boot"
[    2.678933] 0x000000030000-0x000000040000 : "u-boot-env"
[    2.685304] 0x000000040000-0x000000050000 : "factory"
[    2.691398] 0x000000050000-0x000002000000 : "firmware"
[    2.697705] 2 uimage-fw partitions found on MTD device firmware
[    2.703690] Creating 2 MTD partitions on "firmware":
[    2.708648] 0x000000000000-0x0000001ee085 : "kernel"
[    2.714719] 0x0000001ee085-0x000001fb0000 : "rootfs"
[    2.720707] mtd: device 5 (rootfs) set to be root filesystem
[    2.726481] 1 squashfs-split partitions found on MTD device rootfs
[    2.732675] Creating 1 MTD partitions on "rootfs":
[    2.737458] 0x000000301f7b-0x000001dc1f7b : "rootfs_data"
[    2.744522] libphy: Fixed MDIO Bus: probed
[    2.812601] libphy: mdio: probed
[    4.216935] mtk_soc_eth 1e100000.ethernet: loaded mt7530 driver
[    4.223693] mtk_soc_eth 1e100000.ethernet eth0: mediatek frame engine at 0xbe100000, irq 22
[    4.234981] NET: Registered protocol family 10
[    4.241266] Segment Routing with IPv6
[    4.245029] NET: Registered protocol family 17
[    4.249517] 8021q: 802.1Q VLAN Support v1.8
[    4.256516] hctosys: unable to open rtc device (rtc0)
[    4.268945] VFS: Mounted root (squashfs filesystem) readonly on device 31:5.
[    4.280996] Freeing unused kernel memory: 1236K
[    4.285530] This architecture does not have kernel memory protection.
[    5.081003] init: Console is alive
[    5.084684] init: - watchdog -
[    6.517665] mtk_soc_eth 1e100000.ethernet eth0: port 1 link up
[    7.139026] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    7.294061] usbcore: registered new interface driver usbfs
[    7.299662] usbcore: registered new interface driver hub
[    7.305276] usbcore: registered new device driver usb
[    7.358336] SCSI subsystem initialized
[    7.374839] libata version 3.00 loaded.
[    7.378342] bus=0x3, slot = 0x2, irq=0x0
[    7.382417] ahci 0000:03:00.0: version 3.0
[    7.382596] ahci 0000:03:00.0: SSS flag set, parallel bus scan disabled
[    7.389239] ahci 0000:03:00.0: AHCI 0001.0200 32 slots 2 ports 6 Gbps 0x3 impl IDE mode
[    7.397240] ahci 0000:03:00.0: flags: 64bit ncq sntf stag led clo pmp pio slum part ccc sxs 
[    7.407968] scsi host0: ahci
[    7.411615] scsi host1: ahci
[    7.414789] ata1: SATA max UDMA/133 abar m512@0x60300000 port 0x60300100 irq 26
[    7.422101] ata2: SATA max UDMA/133 abar m512@0x60300000 port 0x60300180 irq 26
[    7.770593] ata1: SATA link down (SStatus 0 SControl 300)
[    8.110583] ata2: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    8.117043] ata2.00: ATA-9: WDC WDS120G2G0A-00JH30, UE450000, max UDMA/133
[    8.123907] ata2.00: 234455040 sectors, multi 1: LBA48 NCQ (depth 31/32)
[    8.136074] ata2.00: configured for UDMA/133
[    8.141072] scsi 1:0:0:0: Direct-Access     ATA      WDC WDS120G2G0A- 0000 PQ: 0 ANSI: 5
[    8.151374] sd 1:0:0:0: [sda] 234455040 512-byte logical blocks: (120 GB/112 GiB)
[    8.158945] sd 1:0:0:0: [sda] Write Protect is off
[    8.163738] sd 1:0:0:0: [sda] Mode Sense: 00 3a 00 00
[    8.163930] sd 1:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    8.175472]  sda: sda1
[    8.179936] sd 1:0:0:0: [sda] Attached SCSI disk
[    8.191138] xhci-mtk 1e1c0000.xhci: 1e1c0000.xhci supply vbus not found, using dummy regulator
[    8.199866] xhci-mtk 1e1c0000.xhci: 1e1c0000.xhci supply vusb33 not found, using dummy regulator
[    8.208828] xhci-mtk 1e1c0000.xhci: xHCI Host Controller
[    8.214173] xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 1
[    8.230756] xhci-mtk 1e1c0000.xhci: hcc params 0x01401198 hci version 0x96 quirks 0x0000000000210010
[    8.239939] xhci-mtk 1e1c0000.xhci: irq 21, io mem 0x1e1c0000
[    8.246713] hub 1-0:1.0: USB hub found
[    8.250640] hub 1-0:1.0: 2 ports detected
[    8.255263] xhci-mtk 1e1c0000.xhci: xHCI Host Controller
[    8.260669] xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 2
[    8.268136] xhci-mtk 1e1c0000.xhci: Host supports USB 3.0  SuperSpeed
[    8.274792] usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
[    8.283784] hub 2-0:1.0: USB hub found
[    8.287609] hub 2-0:1.0: 1 port detected
[    8.364965] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    8.380970] init: - preinit -
[    8.410283] mmc0: new high speed SDHC card at address 0001
[    8.416874] mmcblk0: mmc0:0001 SD16G 14.5 GiB 
[    8.422931]  mmcblk0: p1
[    8.770627] usb 1-2: new high-speed USB device number 2 using xhci-mtk
[    8.990032] random: procd: uninitialized urandom read (4 bytes read)
[    9.591926] mtk_soc_eth 1e100000.ethernet: PPE started
[   13.968763] jffs2: notice: (560) jffs2_build_xattr_subsystem: complete building xattr subsystem, 3 of xdatum (0 unchecked, 1 orphan) and 3 of xref (1 dead, 0 orphan) found.
[   13.986700] mount_root: switching to jffs2 overlay
[   14.022588] overlayfs: upper fs does not support tmpfile.
[   14.034779] urandom-seed: Seeding with /etc/urandom.seed
[   14.119024] mtk_soc_eth 1e100000.ethernet: 0x100 = 0x6060000c, 0x10c = 0x80818
[   14.134986] procd: - early -
[   14.137975] procd: - watchdog -
[   14.284751] random: crng init done
[   14.810827] procd: - watchdog -
[   14.814343] procd: - ubus -
[   14.876562] procd: - init -
[   17.368834] kmodloader: loading kernel modules from /etc/modules.d/*
[   17.396659] tun: Universal TUN/TAP device driver, 1.6
[   17.419381] ip6_tables: (C) 2000-2006 Netfilter Core Team
[   17.443499] usbcore: registered new interface driver cdc_wdm
[   17.452781] Loading modules backported from Linux version v5.4-rc8-0-gaf42d3466bdc
[   17.460344] Backport generated by backports.git v5.4-rc8-1-0-g368e8c51
[   17.471732] ip_tables: (C) 2000-2006 Netfilter Core Team
[   17.492855] nf_conntrack version 0.5.0 (8192 buckets, 32768 max)
[   17.555205] urngd: v1.0.2 started.
[   17.568477] usbcore: registered new interface driver usbserial
[   17.574648] usbcore: registered new interface driver usbserial_generic
[   17.581394] usbserial: USB Serial support registered for generic
[   17.595893] wireguard: WireGuard 0.0.20200215 loaded. See www.wireguard.com for information.
[   17.604380] wireguard: Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
[   17.634409] xt_time: kernel timezone is -0000
[   17.755582] bus=0x1, slot = 0x0, irq=0xff
[   17.759851] mt7603e 0000:01:00.0: ASIC revision: 76030010
[   19.202019] mt7603e 0000:01:00.0: Firmware Version: ap_pcie
[   19.207594] mt7603e 0000:01:00.0: Build Time: 20160107100755
[   19.250580] mt7603e 0000:01:00.0: firmware init done
[   19.419817] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   19.438522] bus=0x2, slot = 0x1, irq=0xff
[   19.442938] mt76x2e 0000:02:00.0: ASIC revision: 76120044
[   20.242838] mt76x2e 0000:02:00.0: ROM patch build: 20141115060606a
[   20.252627] mt76x2e 0000:02:00.0: Firmware Version: 0.0.00
[   20.258119] mt76x2e 0000:02:00.0: Build: 1
[   20.262265] mt76x2e 0000:02:00.0: Build Time: 201507311614____
[   20.290569] mt76x2e 0000:02:00.0: Firmware running!
[   20.298547] ieee80211 phy1: Selected rate control algorithm 'minstrel_ht'
[   20.306087] PPP generic driver version 2.4.2
[   20.312296] NET: Registered protocol family 24
[   20.320725] qmi_wwan 1-2:1.4: cdc-wdm0: USB WDM device
[   20.328030] qmi_wwan 1-2:1.4 wwan0: register 'qmi_wwan' at usb-1e1c0000.xhci-2, WWAN/QMI device, 22:7f:81:5d:34:75
[   20.338730] usbcore: registered new interface driver qmi_wwan
[   20.348443] usbcore: registered new interface driver option
[   20.354278] usbserial: USB Serial support registered for GSM modem (1-port)
[   20.361751] option 1-2:1.0: GSM modem (1-port) converter detected
[   20.368264] usb 1-2: GSM modem (1-port) converter now attached to ttyUSB0
[   20.375698] option 1-2:1.1: GSM modem (1-port) converter detected
[   20.382345] usb 1-2: GSM modem (1-port) converter now attached to ttyUSB1
[   20.389722] option 1-2:1.2: GSM modem (1-port) converter detected
[   20.396328] usb 1-2: GSM modem (1-port) converter now attached to ttyUSB2
[   20.403725] option 1-2:1.3: GSM modem (1-port) converter detected
[   20.410289] usb 1-2: GSM modem (1-port) converter now attached to ttyUSB3
[   20.420910] kmodloader: done loading kernel modules from /etc/modules.d/*
[   38.651152] mtk_soc_eth 1e100000.ethernet: PPE started
[   38.662679] br-lan: port 1(eth0.1) entered blocking state
[   38.668153] br-lan: port 1(eth0.1) entered disabled state
[   38.674180] device eth0.1 entered promiscuous mode
[   38.679063] device eth0 entered promiscuous mode
[   38.691079] br-lan: port 1(eth0.1) entered blocking state
[   38.696492] br-lan: port 1(eth0.1) entered forwarding state
[   38.702402] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
[   39.722362] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready
[   84.740892] jffs2: Erase at 0x01ab0000 failed immediately: errno -22
[ 1586.828986] F2FS-fs (sda1): Found nat_bits in checkpoint
[ 1595.128977] F2FS-fs (sda1): Mounted with checkpoint version = 35fafab1



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
