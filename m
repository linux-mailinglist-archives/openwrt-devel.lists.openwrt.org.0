Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54A01A6F57
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 00:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hHaBVV5jJWuYipxwB9AGlPOtyaWQSXMDBsAIJkg4b8Q=; b=H6rpHV37Yo1IfxYFzE4WUjwAl
	xrzf0fnsUeA+fc7WQ4Qps/iPLeuLXVZ1srWB5Pfj8fSZVA2akyZDmhLt2j8nkotKLBHHeNq0YSdRY
	aOLavC/lEv/mY0KrsT8+5lX+A834+CRN1Qv8pvYPFvYVOqcb4wDxWae/qKtl7D6MqaFX7Dy+hLp/M
	/B6ibmZ2N9i7Wsigh2niaXE8SqwAbjSOYaPntSxAnVFL0BZHp956jWplT44yicGrKKbNIfw0WQFVE
	vYJx/o4thcQBbhQTZTng0ZYxVBH/YwD1gj64lpZY6d7DNYoEToHYpajvtuxLBz5MhyaIsmSQRTvGm
	ioyzMX8og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7dg-00089B-Tb; Mon, 13 Apr 2020 22:33:12 +0000
Received: from mail-ua1-x92e.google.com ([2607:f8b0:4864:20::92e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7dZ-00088Q-5N
 for openwrt-devel@lists.openwrt.org; Mon, 13 Apr 2020 22:33:08 +0000
Received: by mail-ua1-x92e.google.com with SMTP id 21so3748528uae.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Apr 2020 15:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ojQZ/vBCJHI1vXwX+GLrmFwmLjr1znR3vWicvjoW6TU=;
 b=mA9F+xA0seA0A3x1lS/0Qd5vEN5FugfOvkLsncMsX8HHtG/be2Teo0L/fMLUgRphWP
 QNsZwrf0xaLZY4AWXro8K/kHb4mAuaD+Lhta1xWJM6VyGt34wfO5GuTIUTvbxHYuje0L
 5TL2Wn42zU3o11r8XKy6JR7NMNsJ+2g16HCiFcdSr1W4JO1FoFh7s5Lo7jfCxEgPwgqA
 vQi9oHE1YJ1z3DxSADTvTG+5wKVox8CXUZ1KwpYvkrjPaCALZ8oaYGws2lkXwxqPWgTi
 BeurHyBrWQLA1zUR4IOM+doYmFlX7RCaxg8opzMQpT3uQEnW9jhUGaYXEhJtD0NwJ23W
 2Xig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ojQZ/vBCJHI1vXwX+GLrmFwmLjr1znR3vWicvjoW6TU=;
 b=SFhg7qG3E9Ji+mrtQMyzsApDakHNpe2BjvlxtLnf/kHm357Wdoh+eR5/3Ptl6Wgvyq
 URH4XA0Tehvbuv5jaqsUIU0Ci8iU2Li1BemXCHMwtefCwslj5K0NGAsfT1nGjJxxvVAW
 KFZad8gkC2yI8e8IVVSt/2AMz9ggl3TjOV8Gu7coQtoEdis1H0MCR6ijbLjksm7oCkuD
 5/zVFp+k5xmqh0cqqcWZOkcQIWolQP+6ErlzgGpeHJVQFDa6EzS6Hzi+F6gFb45KOPt6
 N+YGOHnUIjFEcR/c/f0yk+0Am9rMAIAcfMoeiTIpY7RvutyZCoehI9xtyisVqS8ZBpTF
 c/JQ==
X-Gm-Message-State: AGi0PuYCFQrQth4wBcg5JYlmonMWDojDSSgAHCEsstQiLu/UEov7UWG5
 DXgJE1PwTBBBWMzSjg/SEuZUr6Dc9eVUMiQv2sAvg6XkFzA=
X-Google-Smtp-Source: APiQypLBlLV8fiFdwWTrglu4cMGTp1HGvwQ95lea/rlW65VhbAmajE2dzh6X5siiTsMuV+KZN1vMEwt4z6bkUkibP2k=
X-Received: by 2002:ab0:55c9:: with SMTP id w9mr1531088uaa.76.1586817183140;
 Mon, 13 Apr 2020 15:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200413171123.48647-1-freifunk@adrianschmutzler.de>
From: Russell Senior <russell@personaltelco.net>
Date: Mon, 13 Apr 2020 15:32:51 -0700
Message-ID: <CAHP3WfNzrE8HPFsCdZ9Sm2HCqtQjqtpiHkqQxpgTe9qoKJhjRQ@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_153305_397428_6490E3FA 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:92e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 LOTS_OF_MONEY          Huge... sums of money
Subject: Re: [OpenWrt-Devel] [RFT PATCH 0/6] ath25: bump to kernel 5.4
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============0752628527843287025=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0752628527843287025==
Content-Type: multipart/alternative; boundary="000000000000865ff105a333aac9"

--000000000000865ff105a333aac9
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 13, 2020 at 10:12 AM Adrian Schmutzler <
freifunk@adrianschmutzler.de> wrote:

> This is another episode in just-make-it-compile kernel bumps.
>
> This has been built-tested for all devices, but not tested on device.
>

Here is a test of your branch on an Accton MR3201A:

+PHY ID is 0022:5521
Ethernet eth0: MAC address 00:12:cf:83:7b:08
IP: 192.168.0.1/255.255.255.0, Gateway: 0.0.0.0
Default server: 0.0.0.0

RedBoot(tm) bootstrap and debug environment [ROMRAM]
Non-certified release, version v1.3.4 - built 19:22:52, Oct 15 2007

Copyright (C) 2000, 2001, 2002, 2003, 2004 Red Hat, Inc.

Board: ap51
RAM: 0x80000000-0x82000000, [0x8003eaf0-0x80fe1000] available
FLASH: 0xa8000000 - 0xa87f0000, 128 blocks of 0x00010000 bytes each.
== Executing boot script in 3.000 seconds - enter ^C to abort
RedBoot> fis load -l vmlinux.bin.l7
Image loaded from 0x80041000-0x804567ec
RedBoot> exec
Now booting linux kernel:
 Base address 0x80030000 Entry 0x80041000
 Cmdline :
[    0.000000] Linux version 5.4.31 (openwrt@hawg) (gcc version 8.4.0
(OpenWrt GCC 8.4.0 r12956-dcc1489cde)) #0 Mon Apr 13 17:33:46 2020
[    0.000000] printk: bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019064 (MIPS 4KEc)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Primary instruction cache 16kB, VIPT, 4-way, linesize 16 bytes.
[    0.000000] Primary data cache 16kB, 4-way, VIPT, no aliases,
linesize 16 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 8128
[    0.000000] Kernel command line:   console=ttyS0,9600
rootfstype=squashfs,jffs2
[    0.000000] Dentry cache hash table entries: 4096 (order: 2, 16384
bytes, linear)
[    0.000000] Inode-cache hash table entries: 2048 (order: 1, 8192
bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 28040K/32768K available (3432K kernel code,
149K rwdata, 460K rodata, 172K init, 184K bss, 4728K reserved, 0K
cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] NR_IRQS: 128
[    0.000000] random: get_random_bytes called from 0x804359b4 with crng_init=0
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 20774570075 ns
[    0.000050] sched_clock: 32 bits at 92MHz, resolution 10ns, wraps
every 23342213114ns
[    0.093990] Calibrating delay loop... 182.27 BogoMIPS (lpj=364544)
[    0.199378] pid_max: default: 32768 minimum: 301
[    0.255442] Mount-cache hash table entries: 1024 (order: 0, 4096
bytes, linear)
[    0.342220] Mountpoint-cache hash table entries: 1024 (order: 0,
4096 bytes, linear)
[    0.449307] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.565224] futex hash table entries: 256 (order: -1, 3072 bytes, linear)
[    0.649370] NET: Registered protocol family 16
[    1.404220] registering PCI controller with io_map_base unset
[    1.472231] ar2315-pci ar2315-pci: register PCI controller
[    1.660673] PCI host bridge to bus 0000:00
[    1.709012] pci_bus 0000:00: root bus resource [mem 0x80000000-0xbfffffff]
[    1.791103] pci_bus 0000:00: root bus resource [io  0x0000]
[    1.857686] pci_bus 0000:00: root bus resource [??? 0x00000000 flags 0x0]
[    1.938773] pci_bus 0000:00: No busn resource found for root bus,
will use [bus 00-ff]
[    2.033620] pci 0000:00:00.0: [168c:ff18] type 00 class 0x020000
[    2.105378] pci 0000:00:00.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    2.180156] pci 0000:00:00.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    2.255018] pci 0000:00:00.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    2.331545] pci 0000:00:01.0: [168c:ff18] type 00 class 0x020000
[    2.402941] pci 0000:00:01.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    2.477702] pci 0000:00:01.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    2.552565] pci 0000:00:01.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    2.628850] pci 0000:00:02.0: [168c:ff18] type 00 class 0x020000
[    2.700169] pci 0000:00:02.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    2.774932] pci 0000:00:02.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    2.849795] pci 0000:00:02.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    2.926192] pci 0000:00:04.0: [168c:ff18] type 00 class 0x020000
[    2.997611] pci 0000:00:04.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    3.072373] pci 0000:00:04.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    3.147235] pci 0000:00:04.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    3.223534] pci 0000:00:05.0: [168c:ff18] type 00 class 0x020000
[    3.294947] pci 0000:00:05.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    3.369709] pci 0000:00:05.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    3.444571] pci 0000:00:05.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    3.520945] pci 0000:00:06.0: [168c:ff18] type 00 class 0x020000
[    3.592282] pci 0000:00:06.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    3.667061] pci 0000:00:06.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    3.741909] pci 0000:00:06.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    3.818193] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 00
[    3.896886] pci 0000:00:00.0: BAR 1: assigned [mem 0x80000000-0x83ffffff]
[    3.977822] pci 0000:00:01.0: BAR 1: assigned [mem 0x84000000-0x87ffffff]
[    4.058926] pci 0000:00:02.0: BAR 1: assigned [mem 0x88000000-0x8bffffff]
[    4.139849] random: fast init done
[    4.180573] pci 0000:00:04.0: BAR 1: assigned [mem 0x8c000000-0x8fffffff]
[    4.261728] pci 0000:00:05.0: BAR 1: assigned [mem 0x90000000-0x93ffffff]
[    4.342848] pci 0000:00:06.0: BAR 1: assigned [mem 0x94000000-0x97ffffff]
[    4.423967] pci 0000:00:00.0: BAR 2: assigned [mem 0x98000000-0x983fffff]
[    4.505090] pci 0000:00:01.0: BAR 2: assigned [mem 0x98400000-0x987fffff]
[    4.586207] pci 0000:00:02.0: BAR 2: assigned [mem 0x98800000-0x98bfffff]
[    4.667327] pci 0000:00:04.0: BAR 2: assigned [mem 0x98c00000-0x98ffffff]
[    4.748447] pci 0000:00:05.0: BAR 2: assigned [mem 0x99000000-0x993fffff]
[    4.829568] pci 0000:00:06.0: BAR 2: assigned [mem 0x99400000-0x997fffff]
[    4.910689] pci 0000:00:00.0: BAR 0: assigned [mem 0x99800000-0x9981ffff]
[    4.991810] pci 0000:00:01.0: BAR 0: assigned [mem 0x99820000-0x9983ffff]
[    5.072930] pci 0000:00:02.0: BAR 0: assigned [mem 0x99840000-0x9985ffff]
[    5.154049] pci 0000:00:04.0: BAR 0: assigned [mem 0x99860000-0x9987ffff]
[    5.235170] pci 0000:00:05.0: BAR 0: assigned [mem 0x99880000-0x9989ffff]
[    5.316290] pci 0000:00:06.0: BAR 0: assigned [mem 0x998a0000-0x998bffff]
[    5.402386] clocksource: Switched to clocksource MIPS
[    5.471061] NET: Registered protocol family 2
[    5.526735] tcp_listen_portaddr_hash hash table entries: 512
(order: 0, 4096 bytes, linear)
[    5.626194] TCP established hash table entries: 1024 (order: 0,
4096 bytes, linear)
[    5.717683] TCP bind hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    5.801852] TCP: Hash tables configured (established 1024 bind 1024)
[    5.878886] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
[    5.956483] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, linear)
[    6.040967] NET: Registered protocol family 1
[    6.092839] PCI: CLS 0 bytes, default 16
[    6.183954] Radio config found at offset 0xf8 (0x1f8)
[    6.249188] Radio MAC is blank; using board-data
[    6.337597] workingset: timestamp_bits=30 max_order=13 bucket_order=0
[    6.463024] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    6.532184] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME)
(CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    6.745731] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
[    6.842250] serial8250: ttyS0 at MMIO 0x11100000 (irq = 9,
base_baud = 5750000) is a 16550A
[    6.941933] printk: console [ttyS0] enabled
[    6.941933] printk: console [ttyS0] enabled
[    7.041924] printk: bootconsole [early0] disabled
[    7.041924] printk: bootconsole [early0] disabled
[    7.161167] ar2315-spiflash ar2315-spiflash.0: 8192 Kbytes flash detected
[    7.263852] Searching for RedBoot partition table in spiflash at
offset 0x7d0000
[    7.452900] Searching for RedBoot partition table in spiflash at
offset 0x7e0000
[    7.641952] 6 RedBoot partitions found on MTD device spiflash
[    7.711233] Creating 6 MTD partitions on "spiflash":
[    7.771180] 0x000000000000-0x000000030000 : "RedBoot"
[    7.847217] 0x000000030000-0x000000180000 : "vmlinux.bin.l7"
[    7.928872] 0x000000180000-0x0000007e0000 : "rootfs"
[    7.995400] mtd: device 2 (rootfs) set to be root filesystem
[    8.063812] 1 squashfs-split partitions found on MTD device rootfs
[    8.138306] 0x000000580000-0x0000007e0000 : "rootfs_data"
[    8.225114] 0x0000007e0000-0x0000007ef000 : "FIS directory"
[    8.307442] 0x0000007ef000-0x0000007f0000 : "RedBoot config"
[    8.388777] 0x0000007f0000-0x000000800000 : "boardconfig"
[    8.542321] eth0: Atheros AR231x: 00:12:cf:83:7b:08, irq 4
[    8.694091] libphy: ar231x_eth_mii: probed
[    8.744505] eth0: attached PHY driver [Generic PHY] (mii_bus:phy_addr=0:00)
[    8.843041] NET: Registered protocol family 10
[    8.935250] Segment Routing with IPv6
[    8.980060] NET: Registered protocol family 17
[    9.034121] 8021q: 802.1Q VLAN Support v1.8
[    9.116710] VFS: Mounted root (squashfs filesystem) readonly on device 31:2.
[    9.203642] Freeing unused kernel memory: 172K
[    9.257220] This architecture does not have kernel memory protection.
[    9.334740] Run /sbin/init as init process
[   11.428275] init: Console is alive
[   11.471687] init: - watchdog -
[   13.979827] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[   14.196935] kmodloader: done loading kernel modules from
/etc/modules-boot.d/*
[   14.296497] init: - preinit -
[   16.627556] eth0: link up (100Mbps/full duplex)
[   16.732716] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   16.907038] CPU 0 Unable to handle kernel paging request at virtual
address 00000084, epc == 8024fc08, ra == 802708dc
[   17.034579] Oops[#1]:
[   17.061773] CPU: 0 PID: 300 Comm: sh Not tainted 5.4.31 #0
[   17.127474] $ 0   : 00000000 1000b400 00001e1e 80490000
[   17.190071] $ 4   : 81d850c0 81c23800 81e1e002 00000000
[   17.252681] $ 8   : 00000016 00000002 00000002 33330000
[   17.315289] $12   : 00000000 77e272a0 00001f02 00000000
[   17.377898] $16   : 81c23800 00000000 a1d80400 81d850c0
[   17.440506] $20   : 0000005a 00000000 8048e380 00000001
[   17.503115] $24   : 00000000 8032dd40
[   17.565723] $28   : 81e9c000 81c0bc90 00000005 802708dc
[   17.628337] Hi    : 00000000
[   17.662819] Lo    : 00000000
[   17.697323] epc   : 8024fc08 0x8024fc08
[   17.743254] ra    : 802708dc 0x802708dc
[   17.789179] Status: 1000b403	KERNEL EXL IE
[   17.839294] Cause : 10800008 (ExcCode 02)
[   17.887314] BadVA : 00000084
[   17.921801] PrId  : 00019064 (MIPS 4KEc)
[   17.968773] Modules linked in: gpio_button_hotplug
[   18.026200] Process sh (pid: 300, threadinfo=(ptrval),
task=(ptrval), tls=77e28ec8)
[   18.117949] Stack : 3052ffff 001e1200 81d850c0 00000000 81d850c0
81d850c0 81c23800 81d6c000
[   18.218058]         81c23800 00000000 81d6c000 81c0bd2c 00000000
fffffff0 00000001 802708dc
[   18.318168]         00000000 00000000 81d850c0 81c23800 81d850c0
802754fc 00000000 80275300
[   18.418280]         0c1281cc 02e02000 81eab200 81eab000 81d850c0
81c23800 81d6c000 81eab058
[   18.518390]         00000000 802a7190 80420000 81c23800 81e1e028
00000000 81eab200 00000010
[   18.618501]         ...
[   18.647776] Call Trace:
[   18.647826] [<802708dc>] 0x802708dc
[   18.718845] [<802754fc>] 0x802754fc
[   18.760618] [<80275300>] 0x80275300
[   18.802398] [<802a7190>] 0x802a7190
[   18.844173] [<80275914>] 0x80275914
[   18.885946] [<80286760>] 0x80286760
[   18.927717] [<8031f650>] 0x8031f650
[   18.969489] [<803219e4>] 0x803219e4
[   19.011266] [<80346280>] 0x80346280
[   19.053038] [<803348ac>] 0x803348ac
[   19.094813] [<803463c0>] 0x803463c0
[   19.136600] [<80348b0c>] 0x80348b0c
[   19.178354] [<80348b44>] 0x80348b44
[   19.220130] [<80094c94>] 0x80094c94
[   19.261905] [<80348904>] 0x80348904
[   19.303679] [<80348904>] 0x80348904
[   19.345452] [<80094318>] 0x80094318
[   19.387231] [<8009454c>] 0x8009454c
[   19.429000] [<80109e50>] 0x80109e50
[   19.470784] [<8039a51c>] 0x8039a51c
[   19.512548] [<8008e1bc>] 0x8008e1bc
[   19.554320] [<80075950>] 0x80075950
[   19.596102] [<80045c44>] 0x80045c44
[   19.637853]
[   19.655659] Code: 3c038049  000213c2  8c768668 <8c170084> 00021140
00002025  02c2b021  0c093e95  30d50fff
[   19.772543]
[   19.790721] ---[ end trace b37904c85133e5c9 ]---
[   19.846446] Kernel panic - not syncing: Fatal exception in interrupt
[   19.922697] Rebooting in 1 seconds..

--000000000000865ff105a333aac9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 13, 2020 at 10:12 AM Adri=
an Schmutzler &lt;<a href=3D"mailto:freifunk@adrianschmutzler.de">freifunk@=
adrianschmutzler.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">This is another episode in just-make-it-compile kernel b=
umps.<br>
<br>
This has been built-tested for all devices, but not tested on device.<br></=
blockquote><div><br></div><div>Here is a test of your branch on an Accton M=
R3201A:</div><div><br></div><div><pre>+PHY ID is 0022:5521
Ethernet eth0: MAC address 00:12:cf:83:7b:08
IP: <a href=3D"http://192.168.0.1/255.255.255.0">192.168.0.1/255.255.255.0<=
/a>, Gateway: 0.0.0.0
Default server: 0.0.0.0

RedBoot(tm) bootstrap and debug environment [ROMRAM]
Non-certified release, version v1.3.4 - built 19:22:52, Oct 15 2007

Copyright (C) 2000, 2001, 2002, 2003, 2004 Red Hat, Inc.

Board: ap51=20
RAM: 0x80000000-0x82000000, [0x8003eaf0-0x80fe1000] available
FLASH: 0xa8000000 - 0xa87f0000, 128 blocks of 0x00010000 bytes each.
=3D=3D Executing boot script in 3.000 seconds - enter ^C to abort
RedBoot&gt; fis load -l vmlinux.bin.l7
Image loaded from 0x80041000-0x804567ec
RedBoot&gt; exec
Now booting linux kernel:
 Base address 0x80030000 Entry 0x80041000
 Cmdline :=20
[    0.000000] Linux version 5.4.31 (openwrt@hawg) (gcc version 8.4.0 (Open=
Wrt GCC 8.4.0 r12956-dcc1489cde)) #0 Mon Apr 13 17:33:46 2020
[    0.000000] printk: bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019064 (MIPS 4KEc)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Primary instruction cache 16kB, VIPT, 4-way, linesize 16 byt=
es.
[    0.000000] Primary data cache 16kB, 4-way, VIPT, no aliases, linesize 1=
6 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000001ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000001fff=
fff]
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 8128
[    0.000000] Kernel command line:   console=3DttyS0,9600 rootfstype=3Dsqu=
ashfs,jffs2
[    0.000000] Dentry cache hash table entries: 4096 (order: 2, 16384 bytes=
, linear)
[    0.000000] Inode-cache hash table entries: 2048 (order: 1, 8192 bytes, =
linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 28040K/32768K available (3432K kernel code, 149K rwd=
ata, 460K rodata, 172K init, 184K bss, 4728K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, N=
odes=3D1
[    0.000000] NR_IRQS: 128
[    0.000000] random: get_random_bytes called from 0x804359b4 with crng_in=
it=3D0
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, =
max_idle_ns: 20774570075 ns
[    0.000050] sched_clock: 32 bits at 92MHz, resolution 10ns, wraps every =
23342213114ns
[    0.093990] Calibrating delay loop... 182.27 BogoMIPS (lpj=3D364544)
[    0.199378] pid_max: default: 32768 minimum: 301
[    0.255442] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes, =
linear)
[    0.342220] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 by=
tes, linear)
[    0.449307] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 7645041785100000 ns
[    0.565224] futex hash table entries: 256 (order: -1, 3072 bytes, linear=
)
[    0.649370] NET: Registered protocol family 16
[    1.404220] registering PCI controller with io_map_base unset
[    1.472231] ar2315-pci ar2315-pci: register PCI controller
[    1.660673] PCI host bridge to bus 0000:00
[    1.709012] pci_bus 0000:00: root bus resource [mem 0x80000000-0xbffffff=
f]
[    1.791103] pci_bus 0000:00: root bus resource [io  0x0000]
[    1.857686] pci_bus 0000:00: root bus resource [??? 0x00000000 flags 0x0=
]
[    1.938773] pci_bus 0000:00: No busn resource found for root bus, will u=
se [bus 00-ff]
[    2.033620] pci 0000:00:00.0: [168c:ff18] type 00 class 0x020000
[    2.105378] pci 0000:00:00.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    2.180156] pci 0000:00:00.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    2.255018] pci 0000:00:00.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    2.331545] pci 0000:00:01.0: [168c:ff18] type 00 class 0x020000
[    2.402941] pci 0000:00:01.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    2.477702] pci 0000:00:01.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    2.552565] pci 0000:00:01.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    2.628850] pci 0000:00:02.0: [168c:ff18] type 00 class 0x020000
[    2.700169] pci 0000:00:02.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    2.774932] pci 0000:00:02.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    2.849795] pci 0000:00:02.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    2.926192] pci 0000:00:04.0: [168c:ff18] type 00 class 0x020000
[    2.997611] pci 0000:00:04.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    3.072373] pci 0000:00:04.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    3.147235] pci 0000:00:04.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    3.223534] pci 0000:00:05.0: [168c:ff18] type 00 class 0x020000
[    3.294947] pci 0000:00:05.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    3.369709] pci 0000:00:05.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    3.444571] pci 0000:00:05.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    3.520945] pci 0000:00:06.0: [168c:ff18] type 00 class 0x020000
[    3.592282] pci 0000:00:06.0: reg 0x10: [mem 0x10000000-0x1001ffff]
[    3.667061] pci 0000:00:06.0: reg 0x14: [mem 0x20000000-0x23ffffff]
[    3.741909] pci 0000:00:06.0: reg 0x18: [mem 0x30000000-0x303fffff]
[    3.818193] pci_bus 0000:00: busn_res: [bus 00-ff] end is updated to 00
[    3.896886] pci 0000:00:00.0: BAR 1: assigned [mem 0x80000000-0x83ffffff=
]
[    3.977822] pci 0000:00:01.0: BAR 1: assigned [mem 0x84000000-0x87ffffff=
]
[    4.058926] pci 0000:00:02.0: BAR 1: assigned [mem 0x88000000-0x8bffffff=
]
[    4.139849] random: fast init done
[    4.180573] pci 0000:00:04.0: BAR 1: assigned [mem 0x8c000000-0x8fffffff=
]
[    4.261728] pci 0000:00:05.0: BAR 1: assigned [mem 0x90000000-0x93ffffff=
]
[    4.342848] pci 0000:00:06.0: BAR 1: assigned [mem 0x94000000-0x97ffffff=
]
[    4.423967] pci 0000:00:00.0: BAR 2: assigned [mem 0x98000000-0x983fffff=
]
[    4.505090] pci 0000:00:01.0: BAR 2: assigned [mem 0x98400000-0x987fffff=
]
[    4.586207] pci 0000:00:02.0: BAR 2: assigned [mem 0x98800000-0x98bfffff=
]
[    4.667327] pci 0000:00:04.0: BAR 2: assigned [mem 0x98c00000-0x98ffffff=
]
[    4.748447] pci 0000:00:05.0: BAR 2: assigned [mem 0x99000000-0x993fffff=
]
[    4.829568] pci 0000:00:06.0: BAR 2: assigned [mem 0x99400000-0x997fffff=
]
[    4.910689] pci 0000:00:00.0: BAR 0: assigned [mem 0x99800000-0x9981ffff=
]
[    4.991810] pci 0000:00:01.0: BAR 0: assigned [mem 0x99820000-0x9983ffff=
]
[    5.072930] pci 0000:00:02.0: BAR 0: assigned [mem 0x99840000-0x9985ffff=
]
[    5.154049] pci 0000:00:04.0: BAR 0: assigned [mem 0x99860000-0x9987ffff=
]
[    5.235170] pci 0000:00:05.0: BAR 0: assigned [mem 0x99880000-0x9989ffff=
]
[    5.316290] pci 0000:00:06.0: BAR 0: assigned [mem 0x998a0000-0x998bffff=
]
[    5.402386] clocksource: Switched to clocksource MIPS
[    5.471061] NET: Registered protocol family 2
[    5.526735] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, =
4096 bytes, linear)
[    5.626194] TCP established hash table entries: 1024 (order: 0, 4096 byt=
es, linear)
[    5.717683] TCP bind hash table entries: 1024 (order: 0, 4096 bytes, lin=
ear)
[    5.801852] TCP: Hash tables configured (established 1024 bind 1024)
[    5.878886] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
[    5.956483] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, line=
ar)
[    6.040967] NET: Registered protocol family 1
[    6.092839] PCI: CLS 0 bytes, default 16
[    6.183954] Radio config found at offset 0xf8 (0x1f8)
[    6.249188] Radio MAC is blank; using board-data
[    6.337597] workingset: timestamp_bits=3D30 max_order=3D13 bucket_order=
=3D0
[    6.463024] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    6.532184] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PR=
IORITY) (c) 2001-2006 Red Hat, Inc.
[    6.745731] Serial: 8250/16550 driver, 1 ports, IRQ sharing disabled
[    6.842250] serial8250: ttyS0 at MMIO 0x11100000 (irq =3D 9, base_baud =
=3D 5750000) is a 16550A
[    6.941933] printk: console [ttyS0] enabled
[    6.941933] printk: console [ttyS0] enabled
[    7.041924] printk: bootconsole [early0] disabled
[    7.041924] printk: bootconsole [early0] disabled
[    7.161167] ar2315-spiflash ar2315-spiflash.0: 8192 Kbytes flash detecte=
d
[    7.263852] Searching for RedBoot partition table in spiflash at offset =
0x7d0000
[    7.452900] Searching for RedBoot partition table in spiflash at offset =
0x7e0000
[    7.641952] 6 RedBoot partitions found on MTD device spiflash
[    7.711233] Creating 6 MTD partitions on &quot;spiflash&quot;:
[    7.771180] 0x000000000000-0x000000030000 : &quot;RedBoot&quot;
[    7.847217] 0x000000030000-0x000000180000 : &quot;vmlinux.bin.l7&quot;
[    7.928872] 0x000000180000-0x0000007e0000 : &quot;rootfs&quot;
[    7.995400] mtd: device 2 (rootfs) set to be root filesystem
[    8.063812] 1 squashfs-split partitions found on MTD device rootfs
[    8.138306] 0x000000580000-0x0000007e0000 : &quot;rootfs_data&quot;
[    8.225114] 0x0000007e0000-0x0000007ef000 : &quot;FIS directory&quot;
[    8.307442] 0x0000007ef000-0x0000007f0000 : &quot;RedBoot config&quot;
[    8.388777] 0x0000007f0000-0x000000800000 : &quot;boardconfig&quot;
[    8.542321] eth0: Atheros AR231x: 00:12:cf:83:7b:08, irq 4
[    8.694091] libphy: ar231x_eth_mii: probed
[    8.744505] eth0: attached PHY driver [Generic PHY] (mii_bus:phy_addr=3D=
0:00)
[    8.843041] NET: Registered protocol family 10
[    8.935250] Segment Routing with IPv6
[    8.980060] NET: Registered protocol family 17
[    9.034121] 8021q: 802.1Q VLAN Support v1.8
[    9.116710] VFS: Mounted root (squashfs filesystem) readonly on device 3=
1:2.
[    9.203642] Freeing unused kernel memory: 172K
[    9.257220] This architecture does not have kernel memory protection.
[    9.334740] Run /sbin/init as init process
[   11.428275] init: Console is alive
[   11.471687] init: - watchdog -
[   13.979827] kmodloader: loading kernel modules from /etc/modules-boot.d/=
*
[   14.196935] kmodloader: done loading kernel modules from /etc/modules-bo=
ot.d/*
[   14.296497] init: - preinit -
[   16.627556] eth0: link up (100Mbps/full duplex)
[   16.732716] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   16.907038] CPU 0 Unable to handle kernel paging request at virtual addr=
ess 00000084, epc =3D=3D 8024fc08, ra =3D=3D 802708dc
[   17.034579] Oops[#1]:
[   17.061773] CPU: 0 PID: 300 Comm: sh Not tainted 5.4.31 #0
[   17.127474] $ 0   : 00000000 1000b400 00001e1e 80490000
[   17.190071] $ 4   : 81d850c0 81c23800 81e1e002 00000000
[   17.252681] $ 8   : 00000016 00000002 00000002 33330000
[   17.315289] $12   : 00000000 77e272a0 00001f02 00000000
[   17.377898] $16   : 81c23800 00000000 a1d80400 81d850c0
[   17.440506] $20   : 0000005a 00000000 8048e380 00000001
[   17.503115] $24   : 00000000 8032dd40                 =20
[   17.565723] $28   : 81e9c000 81c0bc90 00000005 802708dc
[   17.628337] Hi    : 00000000
[   17.662819] Lo    : 00000000
[   17.697323] epc   : 8024fc08 0x8024fc08
[   17.743254] ra    : 802708dc 0x802708dc
[   17.789179] Status: 1000b403	KERNEL EXL IE=20
[   17.839294] Cause : 10800008 (ExcCode 02)
[   17.887314] BadVA : 00000084
[   17.921801] PrId  : 00019064 (MIPS 4KEc)
[   17.968773] Modules linked in: gpio_button_hotplug
[   18.026200] Process sh (pid: 300, threadinfo=3D(ptrval), task=3D(ptrval)=
, tls=3D77e28ec8)
[   18.117949] Stack : 3052ffff 001e1200 81d850c0 00000000 81d850c0 81d850c=
0 81c23800 81d6c000
[   18.218058]         81c23800 00000000 81d6c000 81c0bd2c 00000000 fffffff=
0 00000001 802708dc
[   18.318168]         00000000 00000000 81d850c0 81c23800 81d850c0 802754f=
c 00000000 80275300
[   18.418280]         0c1281cc 02e02000 81eab200 81eab000 81d850c0 81c2380=
0 81d6c000 81eab058
[   18.518390]         00000000 802a7190 80420000 81c23800 81e1e028 0000000=
0 81eab200 00000010
[   18.618501]         ...
[   18.647776] Call Trace:
[   18.647826] [&lt;802708dc&gt;] 0x802708dc
[   18.718845] [&lt;802754fc&gt;] 0x802754fc
[   18.760618] [&lt;80275300&gt;] 0x80275300
[   18.802398] [&lt;802a7190&gt;] 0x802a7190
[   18.844173] [&lt;80275914&gt;] 0x80275914
[   18.885946] [&lt;80286760&gt;] 0x80286760
[   18.927717] [&lt;8031f650&gt;] 0x8031f650
[   18.969489] [&lt;803219e4&gt;] 0x803219e4
[   19.011266] [&lt;80346280&gt;] 0x80346280
[   19.053038] [&lt;803348ac&gt;] 0x803348ac
[   19.094813] [&lt;803463c0&gt;] 0x803463c0
[   19.136600] [&lt;80348b0c&gt;] 0x80348b0c
[   19.178354] [&lt;80348b44&gt;] 0x80348b44
[   19.220130] [&lt;80094c94&gt;] 0x80094c94
[   19.261905] [&lt;80348904&gt;] 0x80348904
[   19.303679] [&lt;80348904&gt;] 0x80348904
[   19.345452] [&lt;80094318&gt;] 0x80094318
[   19.387231] [&lt;8009454c&gt;] 0x8009454c
[   19.429000] [&lt;80109e50&gt;] 0x80109e50
[   19.470784] [&lt;8039a51c&gt;] 0x8039a51c
[   19.512548] [&lt;8008e1bc&gt;] 0x8008e1bc
[   19.554320] [&lt;80075950&gt;] 0x80075950
[   19.596102] [&lt;80045c44&gt;] 0x80045c44
[   19.637853]=20
[   19.655659] Code: 3c038049  000213c2  8c768668 &lt;8c170084&gt; 00021140=
  00002025  02c2b021  0c093e95  30d50fff=20
[   19.772543]=20
[   19.790721] ---[ end trace b37904c85133e5c9 ]---
[   19.846446] Kernel panic - not syncing: Fatal exception in interrupt
[   19.922697] Rebooting in 1 seconds..</pre></div></div></div>

--000000000000865ff105a333aac9--


--===============0752628527843287025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0752628527843287025==--

