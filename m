Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C051C251A
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 May 2020 14:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T73pYsDyDQ0OcWpR5yxXJTTsOBzTE/joRO+DZklHjts=; b=Lqcss32hV53/hCh4O0294ZLRy
	BEbfjzKT5JU1Mjau9h/7RxuDx0EOn04oJCWTgxK1y0louBv8C7woAnJXnkS9f+VvtiX/Ratgrxfif
	HMQqZKfNC9hMLv8cugrdcSL9/Ac8ZxMobi77aQF+S0ivSSGR/NeNfHCPUy51Q+EJZyFumk3c3KM34
	ul0LiYrQzyjEpyRQus/DdV5ekBjd1vCITfGTxkoizJtU1goPCBjFJRWsG5LYCSeSV+YIP1s44+hjt
	XpXVK88LqP67bJI0dd+WVfFqjq6rgrPssYPC3IcinxbsZQ2UTCuPXM4S9DlwnJNs6fzsBBnlhGo2i
	THuIo5p3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUr0g-0000Sg-2g; Sat, 02 May 2020 12:12:46 +0000
Received: from [86.122.15.174] (helo=mail.insteeldesign.ro)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUr0X-0000Rh-6q
 for openwrt-devel@lists.openwrt.org; Sat, 02 May 2020 12:12:40 +0000
Received: from [10.160.20.20] (unknown [188.24.81.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: luci@powerneth.ro)
 by mail.insteeldesign.ro (Postfix) with ESMTPSA id 33F7F220E255
 for <openwrt-devel@lists.openwrt.org>; Sat,  2 May 2020 15:12:30 +0300 (EEST)
To: openwrt-devel@lists.openwrt.org
References: <tencent_CA5BE2AEEC59E9338384A248C275945C0509@qq.com>
From: Lucian Cristian <luci@powerneth.ro>
Message-ID: <c15e8dbf-a85c-fc56-11df-8af1d36abb03@powerneth.ro>
Date: Sat, 2 May 2020 15:12:24 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <tencent_CA5BE2AEEC59E9338384A248C275945C0509@qq.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_051237_605337_CB876F56 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Subject: Re: [OpenWrt-Devel] Kernel hang on rk3328 at branch master
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
Content-Type: multipart/mixed; boundary="===============7675794673709435756=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.
--===============7675794673709435756==
Content-Type: multipart/alternative;
 boundary="------------CB63615A96AEE6AC996650F1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CB63615A96AEE6AC996650F1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02.05.2020 14:46, b.l.huang wrote:
> Hi all,
>
> Hi all, I am trying to run openwrt on rk3328, but the kernel hanged 
> when booting, below is the log.
> Any hints will be appreciated.
>
> U-Boot 2020.01 (Apr 07 2020 - 11:55:14 +0000) Model: Radxa Rockpi E 
> DRAM: 1022 MiB PMIC: RK8050 (on=0x40, off=0x00) MMC: rksdmmc@ff500000: 
> 1, rksdmmc@ff520000: 0 Loading Environment from MMC... *** Warning - 
> bad CRC, using default environment In: serial@ff130000 Out: 
> serial@ff130000 Err: serial@ff130000 Model: Radxa Rockpi E Net: eth0: 
> ethernet@ff540000 Hit any key to stop autoboot: 0 Card did not respond 
> to voltage select! switch to partitions #0, OK mmc1 is current device 
> Scanning mmc 1:1... Found /extlinux/extlinux.conf Retrieving file: 
> /extlinux/extlinux.conf 205 bytes read in 7 ms (28.3 KiB/s) 1: 
> kernel-5.4 Retrieving file: /Image 7485448 bytes read in 330 ms (21.6 
> MiB/s) append: earlycon=uart8250,mmio32,0xff130000 
> console=ttyS2,1500000n8 rw root=PARTUUID=b921b045-1d rootwait 
> rootfstype=ext4 init=/sbin/init Retrieving file: /rk3328-rockpi-e.dtb 
> 33554 bytes read in 8 ms (4 MiB/s) ## Flattened Device Tree blob at 
> 01f00000 Booting using the fdt blob at 0x1f00000 Loading Device Tree 
> to 000000003df1d000, end 000000003df28311 ... OK Starting kernel ... [ 
> 0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034] [ 
> 0.000000] Linux version 5.4.28 (rockpi@rockpi-dev) (gcc version 8.4.0 
> (OpenWrt GCC 8.4.0 r12776-437eb41f23)) #0 SMP Tue Apr 7 11:55:14 2020 
> [ 0.000000] Machine model: Radxa ROCK Pi E [ 0.000000] earlycon: 
> uart8250 at MMIO32 0x00000000ff130000 (options '') [ 0.000000] printk: 
> bootconsole [uart8250] enabled [ 0.000000] psci: probing for conduit 
> method from DT. [ 0.000000] psci: PSCIv1.0 detected in firmware. [ 
> 0.000000] psci: Using standard PSCI v0.2 function IDs [ 0.000000] 
> psci: MIGRATE_INFO_TYPE not supported. [ 0.000000] psci: SMC Calling 
> Convention v1.0 [ 0.000000] percpu: Embedded 19 pages/cpu s38424 r8192 
> d31208 u77824 [ 0.000000] Detected VIPT I-cache on CPU0 [ 0.000000] 
> Built 1 zonelists, mobility grouping on. Total pages: 257544 [ 
> 0.000000] Kernel command line: earlycon=uart8250,mmio32,0xff130000 
> console=ttyS2,1500000n8 rw root=PARTUUID=b921b045-1d rootwait 
> rootfstype=ext4 init=/sbin/init [ 0.000000] Dentry cache hash table 
> entries: 131072 (order: 8, 1048576 bytes, linear) [ 0.000000] 
> Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear) 
> [ 0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off [ 
> 0.000000] Memory: 1018444K/1046528K available (5054K kernel code, 334K 
> rwdata, 1244K rodata, 640K init, 281K bss, 28084K reserved, 0K 
> cma-reserved) [ 0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, 
> CPUs=4, Nodes=1 [ 0.000000] rcu: Hierarchical RCU implementation. [ 
> 0.000000] rcu: CONFIG_RCU_FANOUT set to non-default value of 32. [ 
> 0.000000] rcu: RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4. 
> [ 0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 
> 25 jiffies. [ 0.000000] rcu: Adjusting geometry for 
> rcu_fanout_leaf=16, nr_cpu_ids=4 [ 0.000000] NR_IRQS: 64, nr_irqs: 64, 
> preallocated irqs: 0 [ 0.000000] GIC: Using split EOI/Deactivate mode 
> [ 0.000000] random: get_random_bytes called from 
> start_kernel+0x2dc/0x450 with crng_init=0 [ 0.000000] arch_timer: cp15 
> timer(s) running at 24.00MHz (phys). [ 0.000000] clocksource: 
> arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, 
> max_idle_ns: 440795202592 ns [ 0.000007] sched_clock: 56 bits at 
> 24MHz, resolution 41ns, wraps every 4398046511097ns [ 0.001345] 
> Calibrating delay loop (skipped), value calculated using timer 
> frequency.. 48.00 BogoMIPS (lpj=96000) [ 0.002323] pid_max: default: 
> 32768 minimum: 301 [ 0.002957] Mount-cache hash table entries: 2048 
> (order: 2, 16384 bytes, linear) [ 0.003632] Mountpoint-cache hash 
> table entries: 2048 (order: 2, 16384 bytes, linear) [ 0.006152] ASID 
> allocator initialised with 32768 entries [ 0.006805] rcu: Hierarchical 
> SRCU implementation. [ 0.008023] smp: Bringing up secondary CPUs ... [ 
> 0.009010] Detected VIPT I-cache on CPU1 [ 0.009084] CPU1: Booted 
> secondary processor 0x0000000001 [0x410fd034] [ 0.009735] Detected 
> VIPT I-cache on CPU2 [ 0.009789] CPU2: Booted secondary processor 
> 0x0000000002 [0x410fd034] [ 0.010386] Detected VIPT I-cache on CPU3 [ 
> 0.010435] CPU3: Booted secondary processor 0x0000000003 [0x410fd034] [ 
> 0.010530] smp: Brought up 1 node, 4 CPUs [ 0.013785] SMP: Total of 4 
> processors activated. [ 0.014213] CPU features: detected: 32-bit EL0 
> Support [ 0.014680] CPU features: detected: CRC32 instructions [ 
> 0.015226] CPU features: emulated: Privileged Access Never (PAN) using 
> TTBR0_EL1 switching [ 0.015980] CPU: All CPU(s) started at EL2 [ 
> 0.016372] alternatives: patching kernel code [ 0.027185] clocksource: 
> jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 
> 7645041785100000 ns [ 0.028128] futex hash table entries: 1024 (order: 
> 4, 65536 bytes, linear) [ 0.028981] pinctrl core: initialized pinctrl 
> subsystem [ 0.029940] NET: Registered protocol family 16 [ 0.030855] 
> DMA: preallocated 256 KiB pool for atomic allocations [ 0.057761] 
> clocksource: Switched to clocksource arch_sys_counter [ 0.059496] NET: 
> Registered protocol family 2 [ 0.060488] tcp_listen_portaddr_hash hash 
> table entries: 512 (order: 1, 8192 bytes, linear) [ 0.061344] TCP 
> established hash table entries: 8192 (order: 4, 65536 bytes, linear) [ 
> 0.062174] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, 
> linear) [ 0.063013] TCP: Hash tables configured (established 8192 bind 
> 8192) [ 0.063764] UDP hash table entries: 512 (order: 2, 16384 bytes, 
> linear) [ 0.064403] UDP-Lite hash table entries: 512 (order: 2, 16384 
> bytes, linear) [ 0.065286] NET: Registered protocol family 1 [ 
> 0.067377] workingset: timestamp_bits=46 max_order=18 bucket_order=0 [ 
> 0.074878] squashfs: version 4.0 (2009/01/31) Phillip Lougher [ 
> 0.075589] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) 
> (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc. [ 0.078456] Serial: 
> 8250/16550 driver, 2 ports, IRQ sharing disabled [ 0.080981] sdhci: 
> Secure Digital Host Controller Interface driver [ 0.081556] sdhci: 
> Copyright(c) Pierre Ossman [ 0.082014] Synopsys Designware Multimedia 
> Card Interface Driver [ 0.083364] dwmmc_rockchip ff500000.dwmmc: IDMAC 
> supports 32-bit address mode. [ 0.084043] dwmmc_rockchip 
> ff500000.dwmmc: Using internal DMA controller. [ 0.084667] 
> dwmmc_rockchip ff500000.dwmmc: Version ID is 270a [ 0.085256] 
> dwmmc_rockchip ff500000.dwmmc: DW MMC controller at irq 24,32 bit host 
> data width,256 deep fifo [ 0.097901] mmc_host mmc0: Bus speed (slot 0) 
> = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0) [ 0.110764] 
> dwmmc_rockchip ff520000.dwmmc: IDMAC supports 32-bit address mode. [ 
> 0.111450] dwmmc_rockchip ff520000.dwmmc: Using internal DMA 
> controller. [ 0.112100] dwmmc_rockchip ff520000.dwmmc: Version ID is 
> 270a [ 0.112696] dwmmc_rockchip ff520000.dwmmc: DW MMC controller at 
> irq 25,32 bit host data width,256 deep fifo [ 0.113667] mmc_host mmc1: 
> card is non-removable. [ 0.125850] mmc_host mmc1: Bus speed (slot 0) = 
> 400000Hz (slot req 400000Hz, actual 400000HZ div = 0) [ 0.137979] 
> sdhci-pltfm: SDHCI platform and OF driver helper [ 0.139566] NET: 
> Registered protocol family 10 [ 0.141313] Segment Routing with IPv6 [ 
> 0.141838] NET: Registered protocol family 17 [ 0.142310] 8021q: 802.1Q 
> VLAN Support v1.8
> content of the config file is:
> label kernel-5.4 kernel /Image fdt /rk3328-rockpi-e.dtb append 
> earlycon=uart8250,mmio32,0xff130000 console=ttyS2,1500000n8 rw 
> root=PARTUUID=b921b045-1d rootwait rootfstype=ext4 init=/sbin/init
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Hi,

Did you checked https://github.com/openwrt/openwrt/pull/2945 and try 
with that kernel config ?

In my experience I had hangs on drm related options, but from your dmesg 
it seems that the SD-card is not detected


Regards


--------------CB63615A96AEE6AC996650F1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 02.05.2020 14:46, b.l.huang wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:tencent_CA5BE2AEEC59E9338384A248C275945C0509@qq.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <div>Hi all,</div>
      <div><br>
      </div>
      <div>    <span style="color: rgb(34, 34, 34); font-family:
          Helvetica, Arial, sans-serif; font-size: 15px;">Hi all, I am
          trying to run openwrt on rk3328, but the kernel hanged when
          booting, below is the log.</span></div>
      <span style="color: rgb(34, 34, 34); font-family: Helvetica,
        Arial, sans-serif; font-size: 15px;">Any hints will be
        appreciated.</span>
      <div><span style="color: rgb(34, 34, 34); font-family: Helvetica,
          Arial, sans-serif; font-size: 15px;"><br>
        </span></div>
      <div><span style="color: rgb(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 15px; white-space: pre; background-color: rgb(248, 248, 248);">U-Boot 2020.01 (Apr 07 2020 - 11:55:14 +0000)

Model: Radxa Rockpi E
DRAM:  1022 MiB
PMIC:  RK8050 (on=0x40, off=0x00)
MMC:   rksdmmc@ff500000: 1, rksdmmc@ff520000: 0
Loading Environment from MMC... *** Warning - bad CRC, using default environment

In:    serial@ff130000
Out:   serial@ff130000
Err:   serial@ff130000
Model: Radxa Rockpi E
Net:   eth0: ethernet@ff540000
Hit any key to stop autoboot:  0 
Card did not respond to voltage select!
switch to partitions #0, OK
mmc1 is current device
Scanning mmc 1:1...
Found /extlinux/extlinux.conf
Retrieving file: /extlinux/extlinux.conf
205 bytes read in 7 ms (28.3 KiB/s)
1:      kernel-5.4
Retrieving file: /Image
7485448 bytes read in 330 ms (21.6 MiB/s)
append: earlycon=uart8250,mmio32,0xff130000 console=ttyS2,1500000n8 rw root=PARTUUID=b921b045-1d rootwait rootfstype=ext4 init=/sbin/init
Retrieving file: /rk3328-rockpi-e.dtb
33554 bytes read in 8 ms (4 MiB/s)
## Flattened Device Tree blob at 01f00000
   Booting using the fdt blob at 0x1f00000
   Loading Device Tree to 000000003df1d000, end 000000003df28311 ... OK

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.4.28 (rockpi@rockpi-dev) (gcc version 8.4.0 (OpenWrt GCC 8.4.0 r12776-437eb41f23)) #0 SMP Tue Apr 7 11:55:14 2020
[    0.000000] Machine model: Radxa ROCK Pi E
[    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff130000 (options '')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.0 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.0
[    0.000000] percpu: Embedded 19 pages/cpu s38424 r8192 d31208 u77824
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 257544
[    0.000000] Kernel command line: earlycon=uart8250,mmio32,0xff130000 console=ttyS2,1500000n8 rw root=PARTUUID=b921b045-1d rootwait rootfstype=ext4 init=/sbin/init
[    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
[    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 1018444K/1046528K available (5054K kernel code, 334K rwdata, 1244K rodata, 640K init, 281K bss, 28084K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu:     CONFIG_RCU_FANOUT set to non-default value of 32.
[    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=256 to nr_cpu_ids=4.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=4
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] GIC: Using split EOI/Deactivate mode
[    0.000000] random: get_random_bytes called from start_kernel+0x2dc/0x450 with crng_init=0
[    0.000000] arch_timer: cp15 timer(s) running at 24.00MHz (phys).
[    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
[    0.000007] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
[    0.001345] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=96000)
[    0.002323] pid_max: default: 32768 minimum: 301
[    0.002957] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.003632] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.006152] ASID allocator initialised with 32768 entries
[    0.006805] rcu: Hierarchical SRCU implementation.
[    0.008023] smp: Bringing up secondary CPUs ...
[    0.009010] Detected VIPT I-cache on CPU1
[    0.009084] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.009735] Detected VIPT I-cache on CPU2
[    0.009789] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.010386] Detected VIPT I-cache on CPU3
[    0.010435] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.010530] smp: Brought up 1 node, 4 CPUs
[    0.013785] SMP: Total of 4 processors activated.
[    0.014213] CPU features: detected: 32-bit EL0 Support
[    0.014680] CPU features: detected: CRC32 instructions
[    0.015226] CPU features: emulated: Privileged Access Never (PAN) using TTBR0_EL1 switching
[    0.015980] CPU: All CPU(s) started at EL2
[    0.016372] alternatives: patching kernel code
[    0.027185] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.028128] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.028981] pinctrl core: initialized pinctrl subsystem
[    0.029940] NET: Registered protocol family 16
[    0.030855] DMA: preallocated 256 KiB pool for atomic allocations
[    0.057761] clocksource: Switched to clocksource arch_sys_counter
[    0.059496] NET: Registered protocol family 2
[    0.060488] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, 8192 bytes, linear)
[    0.061344] TCP established hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.062174] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    0.063013] TCP: Hash tables configured (established 8192 bind 8192)
[    0.063764] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.064403] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.065286] NET: Registered protocol family 1
[    0.067377] workingset: timestamp_bits=46 max_order=18 bucket_order=0
[    0.074878] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.075589] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    0.078456] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
[    0.080981] sdhci: Secure Digital Host Controller Interface driver
[    0.081556] sdhci: Copyright(c) Pierre Ossman
[    0.082014] Synopsys Designware Multimedia Card Interface Driver
[    0.083364] dwmmc_rockchip ff500000.dwmmc: IDMAC supports 32-bit address mode.
[    0.084043] dwmmc_rockchip ff500000.dwmmc: Using internal DMA controller.
[    0.084667] dwmmc_rockchip ff500000.dwmmc: Version ID is 270a
[    0.085256] dwmmc_rockchip ff500000.dwmmc: DW MMC controller at irq 24,32 bit host data width,256 deep fifo
[    0.097901] mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
[    0.110764] dwmmc_rockchip ff520000.dwmmc: IDMAC supports 32-bit address mode.
[    0.111450] dwmmc_rockchip ff520000.dwmmc: Using internal DMA controller.
[    0.112100] dwmmc_rockchip ff520000.dwmmc: Version ID is 270a
[    0.112696] dwmmc_rockchip ff520000.dwmmc: DW MMC controller at irq 25,32 bit host data width,256 deep fifo
[    0.113667] mmc_host mmc1: card is non-removable.
[    0.125850] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
[    0.137979] sdhci-pltfm: SDHCI platform and OF driver helper
[    0.139566] NET: Registered protocol family 10
[    0.141313] Segment Routing with IPv6
[    0.141838] NET: Registered protocol family 17
[    0.142310] 8021q: 802.1Q VLAN Support v1.8</span></div>
      <div><span style="color: rgb(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 15px; white-space: pre; background-color: rgb(248, 248, 248);">
</span></div>
      <div><span style="color: rgb(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 15px; white-space: pre; background-color: rgb(248, 248, 248);">content of the config file is:</span></div>
      <div><span style="color: rgb(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 15px; white-space: pre; background-color: rgb(248, 248, 248);">
</span></div>
      <div><span style="background-color: rgb(248, 248, 248); font-size: 15px; white-space: pre;"><font face="Consolas, Menlo, Monaco, Lucida Console, Liberation Mono, DejaVu Sans Mono, Bitstream Vera Sans Mono, Courier New, monospace" color="#333333">label kernel-5.4
    kernel /Image
    fdt /rk3328-rockpi-e.dtb
    append earlycon=uart8250,mmio32,0xff130000 console=ttyS2,1500000n8 rw root=PARTUUID=b921b045-1d rootwait rootfstype=ext4 init=/sbin/init</font></span><span style="color: rgb(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 15px; white-space: pre; background-color: rgb(248, 248, 248);">
</span></div>
      <div><span style="color: rgb(51, 51, 51); font-family: Consolas, Menlo, Monaco, &quot;Lucida Console&quot;, &quot;Liberation Mono&quot;, &quot;DejaVu Sans Mono&quot;, &quot;Bitstream Vera Sans Mono&quot;, &quot;Courier New&quot;, monospace; font-size: 15px; white-space: pre; background-color: rgb(248, 248, 248);">
</span></div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
openwrt-devel mailing list
<a class="moz-txt-link-abbreviated" href="mailto:openwrt-devel@lists.openwrt.org">openwrt-devel@lists.openwrt.org</a>
<a class="moz-txt-link-freetext" href="https://lists.openwrt.org/mailman/listinfo/openwrt-devel">https://lists.openwrt.org/mailman/listinfo/openwrt-devel</a>
</pre>
    </blockquote>
    <p>Hi,</p>
    <p>Did you checked <a
        href="https://github.com/openwrt/openwrt/pull/2945">https://github.com/openwrt/openwrt/pull/2945</a>
      and try with that kernel config ?<br>
    </p>
    <p>In my experience I had hangs on drm related options, but from
      your dmesg it seems that the SD-card is not detected</p>
    <p><br>
    </p>
    <p>Regards<br>
    </p>
  </body>
</html>

--------------CB63615A96AEE6AC996650F1--


--===============7675794673709435756==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7675794673709435756==--

