Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A77B88A90
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 12:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WxnhP8FER0xaoAXBv5CAA8pPTCZv75H46nA6qyc4DjA=; b=ILEEs82IU3XCl2MoVqiAXn9UJP
	JZVHMJ9Bj6gyat/5/yx5O1RFoLobHkDr2sWqmtxwSFG6SI6YqSeD8B2OSA3WDY4PSMyFnRKjHW7xo
	DBQ2xYXYYqpDI1ntfNBP9EFpylyfPUUYQqRBB/fPNynj7OL/dSy1Yjv2Gc1ac5mYVoytn0BpjpLZj
	fYUtURiTBaroSKJBS6w0s2iKD1P3GgnGYbxBdSv4BUL5bjLfw3UwQ6RczL1dxQByC0mRtoWtDj9qn
	APRSnmxhjYHbMkbIEK8kebFHeuTKlm7u8usYuo3SQf4iBGSRTqZHGXf0CnSdBTYArvhTUoze0Un6+
	KLri4Jvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwOOs-0003rj-ID; Sat, 10 Aug 2019 10:15:02 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwOOg-0003rK-Ci
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 10:14:52 +0000
Received: by mail-wm1-x32f.google.com with SMTP id l2so7692810wmg.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 03:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=/n0WtiFaY1coCGnW9/vbTQpve570ZjD3QvfEXEWv7UE=;
 b=lkUjKjhpcZ0OzdHnolyG1HGgS5C1DeVnhMyd4Z77zubDKh4PEKajX6f40IQlXPhgbX
 kq6lBW5llzWuJqOD5LPyuFdp6XrM/X1JFrMk9dGZ9JyHUTUiZDCAhf/URzqtras4tFC/
 vI0qSnywDB8LxarEksclr8eED6sc9dJmxaBMLVkumN9IqYbqeEDcYbGNAvgPA32uIuO2
 di5EU++toCD+2hDymGkJ+Zfa1J1W1v3kRNtdyNnHYC06mppRX7hoBMQ3OUiuJHkhwkRG
 BYDmJfnxS9izFCElfQaYEfjsUcRPOVwT0l+1FaxdKieYB1PpwpHPQkzu5JQRHfrsjyjA
 6ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=/n0WtiFaY1coCGnW9/vbTQpve570ZjD3QvfEXEWv7UE=;
 b=mKK1TCL69q9WcrFHhPvGDkKduqHQfCEdFxi05eU2I/teuef+wJq7GZN9Ux1puiX1fg
 mfQhJK2HB4psdnqzJAsv5bs8lGX2Oh3WOZv64w00+K4VaTiWgtfv3wsGUuaxNN/tQRab
 2Uwy33kMM6SbYLQzGEcqVg5WvlMxP4dmW9OYql3EWe1ahaqWi+7uxNF6InNU9Eamzvkh
 R+T+r9oVS0e9jOmigsCNISvoW2G+acE+Nu2GR3yN/im+1NplwQdEbh7tQispFwP4iCPx
 f8NsRfWKCtjkmB/upRKNv+aNPjG+sgmB6hj6F7jKxb/70N7GgdgpoKtjasVBY/WXR4nJ
 5S7A==
X-Gm-Message-State: APjAAAX5iERc5B2C6rbbepCIVY93NVq8YwCvYa3nRMRqhPg5zNW/ZY2g
 Okv0dME0pXzIBW/2utYM78+MofRV
X-Google-Smtp-Source: APXvYqzdLNTCPlL7+z9QdYuisl7xf3fenj1yjt+kAIMpEcOws4Sf4Qf7bb1kAAcxqJe57vskxLd1+Q==
X-Received: by 2002:a1c:be19:: with SMTP id o25mr15385893wmf.54.1565432086212; 
 Sat, 10 Aug 2019 03:14:46 -0700 (PDT)
Received: from localhost.localdomain
 (host78-240-dynamic.54-82-r.retail.telecomitalia.it. [82.54.240.78])
 by smtp.gmail.com with ESMTPSA id y12sm74302807wru.30.2019.08.10.03.14.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 10 Aug 2019 03:14:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 70d66bb3;
 Sat, 10 Aug 2019 10:14:43 +0000 (UTC)
Date: Sat, 10 Aug 2019 12:14:43 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <alpine.LNX.2.21.99999.352.1908101206460.1682@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_031450_463710_66F18626 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [14445.624549] ath10k_pci 0000:00:00.0:
 peer-unmap-event: unknown peer id 0
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
Cc: Ben Greear <greearb@candelatech.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello all,

This is the message I receive everytime I bring down Wi-Fi on my Archer C60 V2.

root@C60:/# [14445.574213] device wlan1 left promiscuous mode
[14445.579042] br-lan: port 2(wlan1) entered disabled state
[14445.588397] device wlan0 left promiscuous mode
[14445.593107] br-lan: port 3(wlan0) entered disabled state
[14445.617585] ath10k_pci 0000:00:00.0: peer-unmap-event: unknown peer id 0
[14445.624549] ath10k_pci 0000:00:00.0: peer-unmap-event: unknown peer id 0

There are no issues, wanted just to let this know...

bootlog attached.

root@C60:/# cat /etc/openwrt_release
DISTRIB_ID='OpenWrt'
DISTRIB_RELEASE='SNAPSHOT'
DISTRIB_REVISION='r10564-fc2df4f705'
DISTRIB_TARGET='ath79/generic'
DISTRIB_ARCH='mips_24kc'
DISTRIB_DESCRIPTION='OpenWrt SNAPSHOT r10564-fc2df4f705'
DISTRIB_TAINTS=''
root@C60:/#

Thanks! Enrico

U-Boot 1.1.4 (Dec  6 2016 - 14:40:45)

ap151 - Dragonfly 1.0

DRAM:  64 MB
Top of RAM usable for U-Boot at: 84000000
Reserving 402k for U-Boot at: 83f98000
Reserving 32832k for malloc() at: 81f88000
Reserving 44 Bytes for Board Info at: 81f87fd4
Reserving 36 Bytes for Global Data at: 81f87fb0
Reserving 128k for boot params() at: 81f67fb0
Stack Pointer at: 81f67f98
Now running in RAM - U-Boot at: 83f98000
Flash Manuf Id 0xc8, DeviceId0 0x40, DeviceId1 0x17
flash size 8MB, sector count = 128
Flash:  8 MB
Using default environment

In:    serial
Out:   serial
Err:   serial
Net:   ath_gmac_enet_initialize...
No valid address in Flash. Using fixed address
No valid address in Flash. Using fixed address
ath_gmac_enet_initialize: reset mask:c02200 
Dragonfly----> S27 PHY *
: cfg1 0x80000000 cfg2 0x7114
eth0: 00:03:7f:09:0b:ad
athrs27_phy_setup ATHR_PHY_CONTROL 4 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 4 :10
eth0 up
ATHRS27: resetting s27
ATHRS27: s27 reset done
: cfg1 0x800c0000 cfg2 0x7214
eth1: 00:03:7f:09:0b:ad
athrs27_phy_setup ATHR_PHY_CONTROL 0 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 0 :50
athrs27_phy_setup ATHR_PHY_CONTROL 1 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 1 :50
athrs27_phy_setup ATHR_PHY_CONTROL 2 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 2 :50
athrs27_phy_setup ATHR_PHY_CONTROL 3 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 3 :50
eth1 up
eth0, eth1
Setting 0x181162c0 to 0x82
Reading Partition Table from NVRAM ... OK
Parsing Partition Table ... OK
factory boot check integer ok.
load fs uboot at 0x10000.
Autobooting in 1 seconds
## Starting application at 0x80010000 ...


U-Boot 1.1.4 (Dec  6 2016 - 14:40:35)

ap151 - Dragonfly 1.0

DRAM:  64 MB
Top of RAM usable for U-Boot at: 84000000
Reserving 120k for U-Boot at: 83fe0000
Reserving 32832k for malloc() at: 81fd0000
Reserving 44 Bytes for Board Info at: 81fcffd4
Reserving 36 Bytes for Global Data at: 81fcffb0
Reserving 128k for boot params() at: 81faffb0
Stack Pointer at: 81faff98
Now running in RAM - U-Boot at: 83fe0000
Flash Manuf Id 0xc8, DeviceId0 0x40, DeviceId1 0x17
flash size 8MB, sector count = 128
Flash:  8 MB
Using default environment

In:    serial
Out:   serial
Err:   serial
Net:   ath_gmac_enet_initialize...
No valid address in Flash. Using fixed address
No valid address in Flash. Using fixed address
ath_gmac_enet_initialize: reset mask:c02200 
Dragonfly----> S27 PHY *
: cfg1 0x80000000 cfg2 0x7114
eth0: 00:03:7f:09:0b:ad
athrs27_phy_setup ATHR_PHY_CONTROL 4 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 4 :10
eth0 up
ATHRS27: resetting s27
ATHRS27: s27 reset done
: cfg1 0x800c0000 cfg2 0x7214
eth1: 00:03:7f:09:0b:ad
athrs27_phy_setup ATHR_PHY_CONTROL 0 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 0 :10
athrs27_phy_setup ATHR_PHY_CONTROL 1 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 1 :10
athrs27_phy_setup ATHR_PHY_CONTROL 2 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 2 :10
athrs27_phy_setup ATHR_PHY_CONTROL 3 :1000
athrs27_phy_setup ATHR_PHY_SPEC_STAUS 3 :10
eth1 up
eth0, eth1
Setting 0x181162c0 to 0x82
Autobooting in 1 seconds
## Booting image at 9f030000 ...
    Image Name:   MIPS OpenWrt Linux-4.19.57
    Created:      2019-07-21  21:30:27 UTC
    Image Type:   MIPS Linux Kernel Image (lzma compressed)
    Data Size:    1888015 Bytes =  1.8 MB
    Load Address: 80060000
    Entry Point:  80060000
    Verifying Checksum at 0x9f030040 ...OK
    Uncompressing Kernel Image ... OK
No initrd
## Transferring control to Linux (at address 80060000) ...
## Giving linux memsize in bytes, 67108864

Starting kernel ...

[    0.000000] Linux version 4.19.57 (builder@buildhost) (gcc version 7.4.0 (OpenWrt GCC 7.4.0 r10564-fc2df4f705)) #0 Sun Jul 21 21:30:27 2019
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019750 (MIPS 74Kc)
[    0.000000] MIPS: machine is TP-Link Archer C60 v2
[    0.000000] SoC: Qualcomm Atheros QCA956X ver 1 rev 0
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 04000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Primary instruction cache 64kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000003ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000003ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000003ffffff]
[    0.000000] random: get_random_bytes called from start_kernel+0x98/0x4b0 with crng_init=0
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 16240
[    0.000000] Kernel command line: console=ttyS0,115200n8 rootfstype=squashfs,jffs2
[    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Writing ErrCtl register=00000000
[    0.000000] Readback ErrCtl register=00000000
[    0.000000] Memory: 57252K/65536K available (4500K kernel code, 180K rwdata, 1052K rodata, 1236K init, 214K bss, 8284K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] NR_IRQS: 51
[    0.000000] CPU clock: 775.000 MHz
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 4932285024 ns
[    0.000007] sched_clock: 32 bits at 387MHz, resolution 2ns, wraps every 5541893118ns
[    0.008221] Calibrating delay loop... 385.84 BogoMIPS (lpj=1929216)
[    0.074761] pid_max: default: 32768 minimum: 301
[    0.079822] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.086811] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.098425] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.108829] futex hash table entries: 256 (order: -1, 3072 bytes)
[    0.115381] pinctrl core: initialized pinctrl subsystem
[    0.123194] NET: Registered protocol family 16
[    0.134826] PCI host bridge /ahb/pcie-controller@18250000 ranges:
[    0.141316]  MEM 0x0000000012000000..0x0000000013ffffff
[    0.146817]   IO 0x0000000000000000..0x0000000000000000
[    0.169667] PCI host bridge to bus 0000:00
[    0.174046] pci_bus 0000:00: root bus resource [mem 0x12000000-0x13ffffff]
[    0.181288] pci_bus 0000:00: root bus resource [io  0x0000]
[    0.187169] pci_bus 0000:00: root bus resource [??? 0x00000000 flags 0x0]
[    0.194317] pci_bus 0000:00: No busn resource found for root bus, will use [bus 00-ff]
[    0.203832] pci 0000:00:00.0: BAR 0: assigned [mem 0x12000000-0x121fffff 64bit]
[    0.214760] clocksource: Switched to clocksource MIPS
[    0.221111] NET: Registered protocol family 2
[    0.226570] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 4096 bytes)
[    0.234673] TCP established hash table entries: 1024 (order: 0, 4096 bytes)
[    0.242077] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
[    0.248798] TCP: Hash tables configured (established 1024 bind 1024)
[    0.255624] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.261791] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.268757] NET: Registered protocol family 1
[    0.276204] Crashlog allocated RAM at address 0x3f00000
[    0.282983] workingset: timestamp_bits=14 max_order=14 bucket_order=0
[    0.295732] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.301876] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    0.324951] io scheduler noop registered
[    0.329082] io scheduler deadline registered (default)
[    0.336745] pinctrl-single 1804002c.pinmux: 544 pins, size 68
[    0.343793] Serial: 8250/16550 driver, 16 ports, IRQ sharing enabled
[    0.352664] console [ttyS0] disabled
[    0.356509] 18020000.uart: ttyS0 at MMIO 0x18020000 (irq = 9, base_baud = 1562500) is a 16550A
[    0.365623] console [ttyS0] enabled
[    0.365623] console [ttyS0] enabled
[    0.373167] bootconsole [early0] disabled
[    0.373167] bootconsole [early0] disabled
[    0.392628] m25p80 spi0.0: gd25q64 (8192 Kbytes)
[    0.397496] 6 fixed-partitions partitions found on MTD device spi0.0
[    0.404053] Creating 6 MTD partitions on "spi0.0":
[    0.409045] 0x000000000000-0x00000001fb00 : "factory-boot"
[    0.415487] 0x00000001fb00-0x000000020000 : "mac"
[    0.421022] 0x000000020000-0x000000030000 : "u-boot"
[    0.426902] 0x000000030000-0x0000007d0000 : "firmware"
[    0.436324] 2 uimage-fw partitions found on MTD device firmware
[    0.442439] Creating 2 MTD partitions on "firmware":
[    0.447630] 0x000000000000-0x0000001ccf4f : "kernel"
[    0.453441] 0x0000001ccf4f-0x0000007a0000 : "rootfs"
[    0.459281] mtd: device 5 (rootfs) set to be root filesystem
[    0.466578] 1 squashfs-split partitions found on MTD device rootfs
[    0.472978] 0x000000460000-0x0000007a0000 : "rootfs_data"
[    0.479319] 0x0000007d0000-0x0000007f0000 : "tplink"
[    0.485196] 0x0000007f0000-0x000000800000 : "art"
[    0.491746] libphy: Fixed MDIO Bus: probed
[    0.845841] ag71xx 19000000.eth: Could not connect to PHY device. Deferring probe.
[    1.525147] libphy: ag71xx_mdio: probed
[    1.529794] libphy: ar8xxx-mdio: probed
[    1.537842] switch0: Atheros AR8229 rev. 1 switch registered on mdio-bus.0
[    1.610241] ag71xx 1a000000.eth: connected to PHY at fixed-0:00 [uid=00000000, driver=Generic PHY]
[    1.620092] eth0: Atheros AG71xx at 0xba000000, irq 5, mode: gmii
[    1.629121] NET: Registered protocol family 10
[    1.639516] Segment Routing with IPv6
[    1.643403] NET: Registered protocol family 17
[    1.648116] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
[    1.661518] 8021q: 802.1Q VLAN Support v1.8
[    2.010415] ag71xx 19000000.eth: connected to PHY at mdio-bus.0:1f:04 [uid=004dd042, driver=Generic PHY]
[    2.021037] eth1: Atheros AG71xx at 0xb9000000, irq 4, mode: mii
[    2.027953] hctosys: unable to open rtc device (rtc0)
[    2.040626] VFS: Mounted root (squashfs filesystem) readonly on device 31:5.
[    2.054664] Freeing unused kernel memory: 1236K
[    2.059377] This architecture does not have kernel memory protection.
[    2.066037] Run /sbin/init as init process
[    2.444770] random: fast init done
[    2.894157] init: Console is alive
[    2.897943] init: - watchdog -
[    4.283192] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    4.433538] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    4.451444] init: - preinit -
[    5.359598] random: jshn: uninitialized urandom read (4 bytes read)
[    5.462917] random: jshn: uninitialized urandom read (4 bytes read)
[    5.604495] random: jshn: uninitialized urandom read (4 bytes read)
[    6.243433] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[    6.249598] IPv6: ADDRCONF(NETDEV_UP): eth0.1: link is not ready
Press the [f] key and hit [enter] to enter failsafe mode
Press the [1], [2], [3] or [4] key and hit [enter] to select the debug level
[    7.305921] eth0: link up (1000Mbps/Full duplex)
[    7.310723] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[    7.319592] IPv6: ADDRCONF(NETDEV_CHANGE): eth0.1: link becomes ready
[    9.554299] jffs2: notice: (523) jffs2_build_xattr_subsystem: complete building xattr subsystem, 28 of xdatum (3 unchecked, 25 orphan) and 62 of xref (25 dead, 2 orphan) found.
[    9.574698] mount_root: switching to jffs2 overlay
[    9.603793] overlayfs: upper fs does not support tmpfile.
[    9.622321] urandom-seed: Seeding with /etc/urandom.seed
[    9.963075] eth0: link down
[    9.983238] procd: - early -
[    9.987970] procd: - watchdog -
[   10.611498] procd: - watchdog -
[   10.615040] procd: - ubus -
[   10.640353] urandom_read: 5 callbacks suppressed
[   10.640360] random: ubusd: uninitialized urandom read (4 bytes read)
[   10.669839] random: ubusd: uninitialized urandom read (4 bytes read)
[   10.677745] procd: - init -
Please press Enter to activate this console.
[   11.257925] kmodloader: loading kernel modules from /etc/modules.d/*
[   11.297740] Loading modules backported from Linux version v5.2-rc7-0-g6fbc7275c7a9
[   11.305620] Backport generated by backports.git v5.2-rc7-1-0-g021a6ba1
[   11.370055] xt_time: kernel timezone is -0000
[   11.403848] urngd: v1.0.0 started.
[   11.495565] PPP generic driver version 2.4.2
[   11.516914] NET: Registered protocol family 24
[   11.587997] ath10k 4.19 driver, optimized for CT firmware, probing pci device: 0x56.
[   11.615714] ath10k_pci 0000:00:00.0: enabling device (0000 -> 0002)
[   11.622490] ath10k_pci 0000:00:00.0: pci irq legacy oper_irq_mode 1 irq_mode 0 reset_mode 0
[   11.644501] random: crng init done
[   11.945441] firmware ath10k!fwcfg-pci-0000:00:00.0.txt: firmware_loading_store: map pages failed
[   12.140240] firmware ath10k!QCA9888!hw2.0!ct-firmware-5.bin: firmware_loading_store: map pages failed
[   12.327541] firmware ath10k!QCA9888!hw2.0!ct-firmware-2.bin: firmware_loading_store: map pages failed
[   12.514455] firmware ath10k!QCA9888!hw2.0!firmware-6.bin: firmware_loading_store: map pages failed
[   13.327675] ath10k_pci 0000:00:00.0: qca9888 hw2.0 target 0x01000000 chip_id 0x00000000 sub 0000:0000
[   13.337246] ath10k_pci 0000:00:00.0: kconfig debug 0 debugfs 1 tracing 0 dfs 1 testmode 0
[   13.357248] ath10k_pci 0000:00:00.0: firmware ver 10.4b-ct-9888-fW-012-e8020273 api 5 features mfp,peer-flow-ctrl,txstatus-noack,wmi-10.x-CT,ratemask-CT,regdump-CT,txrate-CT,flush-all-CT,pingpong-CT,ch-regs-CT,nop-CT,set-special-CT,tx-rc-CT,cust-stats-CT,txrate2-CT,beacon-cb-CT,wmi-block-ack-CT,wmi-bcn-rc-CT crc32 d41e2174
[   13.720493] ath10k_pci 0000:00:00.0: failed to fetch board data for bus=pci,bmi-chip-id=0,bmi-board-id=20 from ath10k/QCA9888/hw2.0/board-2.bin
[   13.734711] ath10k_pci 0000:00:00.0: board_file api 1 bmi_id 0:20 crc32 60247e07
[   15.830232] ath10k_pci 0000:00:00.0: 10.4 wmi init: vdevs: 16  peers: 48  tid: 96
[   15.838017] ath10k_pci 0000:00:00.0: msdu-desc: 2500  skid: 32
[   15.868060] ath10k_pci 0000:00:00.0: wmi print 'P 48/48 V 16 K 144 PH 176 T 186  msdu-desc: 2500  sw-crypt: 0 ct-sta: 0'
[   15.879433] ath10k_pci 0000:00:00.0: wmi print 'free: 117872 iram: 22724 sram: 26020'
[   16.088811] ath10k_pci 0000:00:00.0: htt-ver 2.2 wmi-op 6 htt-op 4 cal pre-cal-file max-sta 32 raw 0 hwcrypto 1
[   16.339451] ieee80211 phy1: Atheros AR9561 Rev:0 mem=0xb8100000, irq=2
[   16.349953] kmodloader: done loading kernel modules from /etc/modules.d/*
[   23.414658] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[   23.421942] eth0: link up (1000Mbps/Full duplex)
[   23.434994] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
[   23.444668] br-lan: port 1(eth0.1) entered blocking state
[   23.450319] br-lan: port 1(eth0.1) entered disabled state
[   23.456188] device eth0.1 entered promiscuous mode
[   23.461144] device eth0 entered promiscuous mode
[   23.495790] br-lan: port 1(eth0.1) entered blocking state
[   23.501368] br-lan: port 1(eth0.1) entered forwarding state
[   23.507318] IPv6: ADDRCONF(NETDEV_UP): br-lan: link is not ready
[   24.425089] IPv6: ADDRCONF(NETDEV_CHANGE): br-lan: link becomes ready
[   26.851903] IPv6: ADDRCONF(NETDEV_UP): wlan1: link is not ready
[   26.861528] br-lan: port 2(wlan1) entered blocking state
[   26.867085] br-lan: port 2(wlan1) entered disabled state
[   26.872853] device wlan1 entered promiscuous mode
[   29.441056] ath10k_pci 0000:00:00.0: 10.4 wmi init: vdevs: 16  peers: 48  tid: 96
[   29.448846] ath10k_pci 0000:00:00.0: msdu-desc: 2500  skid: 32
[   29.479102] ath10k_pci 0000:00:00.0: wmi print 'P 48/48 V 16 K 144 PH 176 T 186  msdu-desc: 2500  sw-crypt: 0 ct-sta: 0'
[   29.490424] ath10k_pci 0000:00:00.0: wmi print 'free: 117872 iram: 22724 sram: 26020'
[   29.777833] ath10k_pci 0000:00:00.0: Firmware lacks feature flag indicating a retry limit of > 2 is OK, requested limit: 4
[   29.789417] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[   29.814827] IPv6: ADDRCONF(NETDEV_CHANGE): wlan1: link becomes ready
[   29.821530] br-lan: port 2(wlan1) entered blocking state
[   29.827061] br-lan: port 2(wlan1) entered forwarding state
[   29.836839] br-lan: port 3(wlan0) entered blocking state
[   29.842333] br-lan: port 3(wlan0) entered disabled state
[   29.848262] device wlan0 entered promiscuous mode
[   30.439225] ath10k_pci 0000:00:00.0: NOTE:  Firmware DBGLOG output disabled in debug_mask: 0x10000000
[   30.701366] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
[   30.708206] br-lan: port 3(wlan0) entered blocking state
[   30.713693] br-lan: port 3(wlan0) entered forwarding state



BusyBox v1.31.0 () built-in shell (ash)

   _______                     ________        __
  |       |.-----.-----.-----.|  |  |  |.----.|  |_
  |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
  |_______||   __|_____|__|__||________||__|  |____|
           |__| W I R E L E S S   F R E E D O M
  -----------------------------------------------------
  OpenWrt SNAPSHOT, r10564-fc2df4f705
  -----------------------------------------------------
root@C60:/# wifi down
root@C60:/# [   39.419873] device wlan1 left promiscuous mode
[   39.424612] br-lan: port 2(wlan1) entered disabled state
[   39.441354] device wlan0 left promiscuous mode
[   39.446107] br-lan: port 3(wlan0) entered disabled state
[   39.462263] ath10k_pci 0000:00:00.0: peer-unmap-event: unknown peer id 0
[   39.469238] ath10k_pci 0000:00:00.0: peer-unmap-event: unknown peer id 0

root@C60:/#

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
