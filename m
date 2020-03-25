Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F42192F26
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 18:27:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zQZcPcDPXWRqdtLKCMi4BicL9WiuEiB9doq5ZPXMXOY=; b=p4qnN2XFmnrbuDraPctw44oaoI
	WjdHnMRS13E0Mm8BWwPRoZKCtrK1sxhd74rzx7RMzvGT3/RdeQJb6ZL3rmKZrZwI0UL04bvbcPcS2
	z6duJBeoeDZDwcn4ww2XP+zIqTqDgLXWu9SPaIAzwJ9xVESIwCkYn9uQaEhp3N0lI+Fpx2EGqara6
	5Uj7W5F4cxpOv18kJinnRVsnkJKs2oVIOokMoCs6McHx6sn+pMkqUjYQhs+k1z1D67vXvmM+JYx1G
	ofMPX18N+ZH6qXnP1Eh1bx6ekBlF/8zvhPOnGe3jrNoAsUs9pUOqiKY+qwWaWswqDkTZCDF7psIMK
	ccYewWcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH9nz-0006iD-8w; Wed, 25 Mar 2020 17:27:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH9nr-0006hp-Rk
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 17:26:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id b2so4148630wrj.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 10:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Q2LenQo+IR40aDg5lvVLVryH4o0HY6rmjRN0DWlAJ4o=;
 b=A0Ox8Kc4KA5EksYGFmY/KD26rJuXnpklvOm+PMBsdJ/SFzFYsllWRPE9v7SmcA1Hd3
 Z2n8Dx2ulLgYhWRN+5vp9QjyVWpb+wobEdcRvwlK6FCPuQanyZBCvWLTocjcuxNI0B0r
 spUT+1DodEOfkvJHsL7hUDWBCiUt8orQ080wgV3jvlmzNhGf9VsU+j3pIM3Q5UlrP6Rp
 ZT9fx0iBeRF8vfpUVXiJhWSBMiu4gaQLbXt1riFi7RnUD8rCP6f4bKrM7lHcWaH+6iGs
 DxJqCYwfzDe8TQG5J9VAgJTRudnDOTeDX1ItMTXySr4SFCXU2f584tO299qJNeIGiiEV
 yRcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=Q2LenQo+IR40aDg5lvVLVryH4o0HY6rmjRN0DWlAJ4o=;
 b=ooS3jsgpfA+HkL0mKl0cFVXb/mIg9xeKmAisZ9JTHQLZDI7Z9xA/MVAMjyroaOy31T
 uX+RMBEpnMHlIcJuxtRiww5xOY1yDXytU3ZthSu3qOTj2tjLzN4n92kjn/wA51F4Ogo8
 bZhqe93oM9jw2XZJuCFB953rDE/zjLahYO713uXGB5YMwCNJFxGGBglOAeSasjNn+uMH
 p/cX+S01ivkgWvNwUoA7ixYfUA/hAcEUBw5Mp0F44aHUrKdPfMRUTH4mgsooI1WRadsh
 M3rVOItPLslcoQocsvgBxglvF6ZFzVzXtpR8JFozltjmENyPqzRnucFuM0Dac19Zd/a5
 hOLw==
X-Gm-Message-State: ANhLgQ2JE74aAR4HhI4cdpVOnpW1TcxxQqI/df0Md8ph3qEnZ9eH+Nwf
 c4O2Oyx6RcLfAujyS9u3YesUhEB7
X-Google-Smtp-Source: ADFU+vtyTovwT1ZG7ZnYJ/2Gr4XpX0pmaYc7n8rf3mW19SEaAgQ+ybDB7zOq8gq8poJRzNkPVi31tg==
X-Received: by 2002:adf:84a3:: with SMTP id 32mr4420157wrg.378.1585157213322; 
 Wed, 25 Mar 2020 10:26:53 -0700 (PDT)
Received: from eeeinsomma (host48-12-dynamic.60-82-r.retail.telecomitalia.it.
 [82.60.12.48])
 by smtp.gmail.com with ESMTPSA id s131sm9842033wmf.35.2020.03.25.10.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 10:26:52 -0700 (PDT)
Date: Wed, 25 Mar 2020 18:26:51 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.22.413.2003251822090.9420@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_102655_928508_AC8593E2 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.9 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] My findings about WL-330N3G not booting
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
Cc: John Crispin <john@phrozen.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello guys!!

So I found out the device boots on 19.07.2. Still, disabling the wan interface seems to make the device unreachable.
this is the default /etc/config/network as built by generate_config.


config interface 'loopback'
 	option ifname 'lo'
 	option proto 'static'
 	option ipaddr '127.0.0.1'
 	option netmask '255.0.0.0'

config globals 'globals'
 	option ula_prefix 'fddd:1e6c:4d3f::/48'

config interface 'lan'
 	option type 'bridge'
 	option ifname 'eth0.1'
 	option proto 'static'
 	option ipaddr '192.168.1.1'
 	option netmask '255.255.255.0'
 	option ip6assign '60'

config device 'lan_eth0_1_dev'
 	option name 'eth0.1'
 	option macaddr 'f4:6d:04:66:f8:10'

config interface 'wan'
 	option ifname 'eth0.2'
 	option proto 'dhcp'

config device 'wan_eth0_2_dev'
 	option name 'eth0.2'
 	option macaddr 'f4:6d:04:66:f8:11'

config interface 'wan6'
 	option ifname 'eth0.2'
 	option proto 'dhcpv6'

config switch
 	option name 'rt305x'
 	option reset '1'
 	option enable_vlan '1'

config switch_vlan
 	option device 'rt305x'
 	option vlan '1'
 	option ports '1 2 3 4 6t'

config switch_vlan
 	option device 'rt305x'
 	option vlan '2'
 	option ports '0 6t'


this in theory should be ok, swconfig says:

Global attributes:
 	enable_vlan: 1
 	alternate_vlan_disable: 0
 	bc_storm_protect: 0
 	led_frequency: 0
Port 0:
 	disable: 0
 	doubletag: 0
 	untag: 1
 	led: 5
 	lan: 0
 	recv_bad: 0
 	recv_good: 0
 	tr_bad: ???
 	tr_good: ???
 	pvid: 2
 	link: port:0 link:down
Port 1:
 	disable: 0
 	doubletag: 0
 	untag: 1
 	led: 5
 	lan: 1
 	recv_bad: 0
 	recv_good: 0
 	tr_bad: ???
 	tr_good: ???
 	pvid: 1
 	link: port:1 link:down
Port 2:
 	disable: 0
 	doubletag: 0
 	untag: 1
 	led: 5
 	lan: 1
 	recv_bad: 0
 	recv_good: 0
 	tr_bad: ???
 	tr_good: ???
 	pvid: 1
 	link: port:2 link:down
Port 3:
 	disable: 0
 	doubletag: 0
 	untag: 1
 	led: 5
 	lan: 1
 	recv_bad: 0
 	recv_good: 0
 	tr_bad: ???
 	tr_good: ???
 	pvid: 1
 	link: port:3 link:down
Port 4:
 	disable: 0
 	doubletag: 0
 	untag: 1
 	led: 5
 	lan: 1
 	recv_bad: 0
 	recv_good: 360
 	tr_bad: ???
 	tr_good: ???
 	pvid: 1
 	link: port:4 link:up speed:100baseT full-duplex 
Port 5:
 	disable: 1
 	doubletag: 0
 	untag: 0
 	led: ???
 	lan: 1
 	recv_bad: 0
 	recv_good: 0
 	tr_bad: ???
 	tr_good: ???
 	pvid: 0
 	link: port:5 link:down
Port 6:
 	disable: 0
 	doubletag: 0
 	untag: 0
 	led: ???
 	lan: ???
 	recv_bad: ???
 	recv_good: ???
 	tr_bad: ???
 	tr_good: ???
 	pvid: 0
 	link: port:6 link:up speed:1000baseT full-duplex 
VLAN 1:
 	ports: 1 2 3 4 6t 
VLAN 2:
 	ports: 0 6t

I am not able to get it booting in master for now.

Device dmesg:
[    0.000000] Linux version 4.14.171 (builder@buildhost) (gcc version 7.5.0 (OpenWrt GCC 7.5.0 r10947-65030d81f3)) #0 Thu Feb 27 21:05:12 2020
[    0.000000] SoC Type: Ralink RT3350 id:1 rev:2
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 0001964c (MIPS 24KEc)
[    0.000000] MIPS: machine is Asus WL-330N3G
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 02000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 16kB, 4-way, VIPT, no aliases, linesize 32 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] On node 0 totalpages: 8192
[    0.000000] free_area_init_node: node 0, pgdat 803d14e0, node_mem_map 81000040
[    0.000000]   Normal zone: 64 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 8192 pages, LIFO batch:0
[    0.000000] random: get_random_bytes called from 0x803d46ec with crng_init=0
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0 
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 8128
[    0.000000] Kernel command line: console=ttyS0,57600 rootfstype=squashfs,jffs2
[    0.000000] PID hash table entries: 128 (order: -3, 512 bytes)
[    0.000000] Dentry cache hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Inode-cache hash table entries: 2048 (order: 1, 8192 bytes)
[    0.000000] Writing ErrCtl register=000760b0
[    0.000000] Readback ErrCtl register=000760b0
[    0.000000] Memory: 27076K/32768K available (3312K kernel code, 168K rwdata, 432K rodata, 1200K init, 199K bss, 5692K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] NR_IRQS: 256
[    0.000000] CPU Clock: 320MHz
[    0.000000] timer_probe: no matching timers found
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 11945377789 ns
[    0.000018] sched_clock: 32 bits at 160MHz, resolution 6ns, wraps every 13421772796ns
[    0.015783] Calibrating delay loop... 212.58 BogoMIPS (lpj=1062912)
[    0.108105] pid_max: default: 32768 minimum: 301
[    0.117773] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.130951] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.155241] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.174843] futex hash table entries: 256 (order: -1, 3072 bytes)
[    0.187198] pinctrl core: initialized pinctrl subsystem
[    0.201005] NET: Registered protocol family 16
[    0.271881] rt2880_gpio 10000600.gpio: registering 24 gpios
[    0.283087] rt2880_gpio 10000600.gpio: registering 24 irq handlers
[    0.307544] clocksource: Switched to clocksource MIPS
[    0.320308] NET: Registered protocol family 2
[    0.331300] TCP established hash table entries: 1024 (order: 0, 4096 bytes)
[    0.345266] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
[    0.357913] TCP: Hash tables configured (established 1024 bind 1024)
[    0.370998] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.382722] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.395827] NET: Registered protocol family 1
[    0.412836] rt-timer 10000100.timer: maximum frequency is 3255Hz
[    0.426907] Crashlog allocated RAM at address 0x1f00000
[    0.443160] workingset: timestamp_bits=30 max_order=13 bucket_order=0
[    0.469874] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.481529] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    0.537000] io scheduler noop registered
[    0.544819] io scheduler deadline registered (default)
[    0.556201] Serial: 8250/16550 driver, 16 ports, IRQ sharing enabled
[    0.576161] console [ttyS0] disabled
[    0.583401] 10000c00.uartlite: ttyS0 at MMIO 0x10000c00 (irq = 20, base_baud = 6666666) is a Palmchip BK-3103
[    0.603205] console [ttyS0] enabled
[    0.617158] bootconsole [early0] disabled
[    0.656711] spi spi0.0: force spi mode3
[    0.666325] m25p80 spi0.0: mx25l3205d (4096 Kbytes)
[    0.676408] 4 fixed-partitions partitions found on MTD device spi0.0
[    0.689307] Creating 4 MTD partitions on "spi0.0":
[    0.699063] 0x000000000000-0x000000030000 : "u-boot"
[    0.711358] 0x000000030000-0x000000040000 : "u-boot-env"
[    0.724444] 0x000000040000-0x000000050000 : "factory"
[    0.736942] 0x000000050000-0x000000400000 : "firmware"
[    0.759261] 2 uimage-fw partitions found on MTD device firmware
[    0.771367] Creating 2 MTD partitions on "firmware":
[    0.781480] 0x000000000000-0x0000001485fa : "kernel"
[    0.793757] 0x0000001485fa-0x0000003b0000 : "rootfs"
[    0.806060] mtd: device 5 (rootfs) set to be root filesystem
[    0.822511] 1 squashfs-split partitions found on MTD device rootfs
[    0.835171] 0x000000365000-0x0000003b0000 : "rootfs_data"
[    0.849591] libphy: Fixed MDIO Bus: probed
[    0.861554] rt3050-esw 10110000.esw: link changed 0x10
[    0.881321] mtk_soc_eth 10100000.ethernet eth0: mediatek frame engine at 0xb0100000, irq 5
[    0.899251] rt2880_wdt 10000120.watchdog: Initialized
[    0.912582] NET: Registered protocol family 10
[    0.933162] Segment Routing with IPv6
[    0.940988] NET: Registered protocol family 17
[    0.950229] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
[    0.976478] 8021q: 802.1Q VLAN Support v1.8
[    1.009561] VFS: Mounted root (squashfs filesystem) readonly on device 31:5.
[    1.040667] Freeing unused kernel memory: 1200K
[    1.049913] This architecture does not have kernel memory protection.
[    2.637599] random: fast init done
[    6.095210] init: Console is alive
[    6.102965] init: - watchdog -
[    7.977801] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    8.415927] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    8.441804] init: - preinit -
[   10.392460] 8021q: adding VLAN 0 to HW filter on device eth0
[   10.964773] random: procd: uninitialized urandom read (4 bytes read)
[   15.134721] jffs2: notice: (338) jffs2_build_xattr_subsystem: complete building xattr subsystem, 3 of xdatum (0 unchecked, 3 orphan) and 9 of xref (0 dead, 9 orphan) found.
[   15.170260] mount_root: overlay filesystem has not been fully initialized yet
[   15.188342] mount_root: switching to jffs2 overlay
[   15.261591] overlayfs: upper fs does not support tmpfile.
[   15.282390] urandom-seed: Seed file not found (/etc/urandom.seed)
[   15.391117] procd: - early -
[   15.397290] procd: - watchdog -
[   16.532563] procd: - watchdog -
[   16.540135] procd: - ubus -
[   18.398716] random: ubusd: uninitialized urandom read (4 bytes read)
[   18.827075] random: ubusd: uninitialized urandom read (4 bytes read)
[   18.841288] random: ubusd: uninitialized urandom read (4 bytes read)
[   18.858077] procd: - init -
[   20.371699] urandom_read: 5 callbacks suppressed
[   20.371717] random: jshn: uninitialized urandom read (4 bytes read)
[   21.748564] kmodloader: loading kernel modules from /etc/modules.d/*
[   21.776517] ip6_tables: (C) 2000-2006 Netfilter Core Team
[   21.810588] Loading modules backported from Linux version v4.19.98-0-gd183c8e2647a
[   21.826050] Backport generated by backports.git v4.19.98-1-0-g8204eb99
[   21.846113] ip_tables: (C) 2000-2006 Netfilter Core Team
[   21.876249] nf_conntrack version 0.5.0 (1024 buckets, 4096 max)
[   22.026957] xt_time: kernel timezone is -0000
[   22.199600] PPP generic driver version 2.4.2
[   22.229475] NET: Registered protocol family 24
[   22.358397] rt2800_wmac 10180000.wmac: loaded eeprom from mtd device "factory"
[   22.373149] ieee80211 phy0: rt2x00_set_rt: Info - RT chipset 2872, rev 0200 detected
[   22.388913] ieee80211 phy0: rt2x00_set_rf: Info - RF chipset 0005 detected
[   22.404448] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[   22.520662] kmodloader: done loading kernel modules from /etc/modules.d/*
[   23.558513] urngd: v1.0.2 started.
[   25.086243] random: crng init done
[   84.378050] 8021q: adding VLAN 0 to HW filter on device eth0
[   84.437430] br-lan: port 1(eth0.1) entered blocking state
[   84.448536] br-lan: port 1(eth0.1) entered disabled state
[   84.460365] device eth0.1 entered promiscuous mode
[   84.470209] device eth0 entered promiscuous mode
[   84.597730] br-lan: port 1(eth0.1) entered blocking state
[   84.608731] br-lan: port 1(eth0.1) entered forwarding state
[   84.620621] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
[   85.418698] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
