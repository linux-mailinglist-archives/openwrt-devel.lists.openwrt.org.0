Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417371C2A35
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 07:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:Mime-Version:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QnamOZTZiuL9vu4Ps6V1bzJXRDmRZdExpKThaf1lCN8=; b=hsKWkUbypuuHHs
	BcwThUvEoCFT1gu/rcHDr8FQmoWKLtSrRUTebt0tB43M8llF2roPLVu86+YNwdhVG358uS/WcN7mf
	It1YgZ1ZiYzpUf2QGglgzbQbRBvZtg7fWs1RnZmVw5QKPqpZDlfuIIoFmgTDXJGMvXcEdVmcEKWRf
	3VgYPEN+uv5X4jaHYbJRoe/USZmOxqsPiOggyjwM89Gv8sOEz2zmK4LgQSQ0DNcRzrFp9DWY3Wi89
	zfOpPZmn/DxDnDwdLB8PaKLrWTGWXt77QdVli7d7y/h36HKVk44B4TDjvPKuczRX+23HPZvSuzk2Y
	YJONQMEJV0lFAnbZu2Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV7al-0004LF-3S; Sun, 03 May 2020 05:55:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV7ae-0004Ib-K2
 for openwrt-devel@bombadil.infradead.org; Sun, 03 May 2020 05:55:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:To:From:Sender:
 Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:References;
 bh=eE9qxUh/ql3iDV+LkVrmIA9ZVKExPg4Wa2ZYBRI15Ww=; b=dnZLLwdT5F7EOZ06REAygGawqN
 6BLjbOJ9LR+GWep0BAxFt2gJt8ioaX0ksMFf6pkwtAYFWx3NmlENJNoHUrYI8FFfJlBADwLHgYZEr
 tWRiUc8Zk/3vlcpHdeViasVci+5f5ZReru2x76jWuSvvSd8w2hADWg3FFEqfU7e8I+DwkQxe9zCOd
 8LipfKvoZ4As75Vmz8sQrPqq1U6LyaWM7XLfb5oMp5BgppcVigQIdNK0Rh9vHldPK0cYW7mxJd6VF
 0AbVUFItR7lLc/t6k0FciUk5kI8XmRxGqmfIdFJccF3yupzsJNGKWVeamSCT67s3edtya8F1oH0It
 SEH/gH5g==;
Received: from smtpbg702.qq.com ([203.205.195.102] helo=smtpproxy21.qq.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV7aA-00070M-PG
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 05:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1588485236;
 bh=eE9qxUh/ql3iDV+LkVrmIA9ZVKExPg4Wa2ZYBRI15Ww=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=YhyXQ4zhMx7NA+eH9VUeXGIxGMKcCQ71wjONvWjmqlY7iYj58ocbTGvhN+AlqOB1t
 PgWDxvYs1UZiyFiK5kjSrJCsfNSsI+FNc4EMf/d58q5lgrbk1ZgxwZbET1bG2yj6+U
 WIuyBmvArCCn/9gUmc3BqTjOju5Haaf2fk9/DAns=
X-QQ-FEAT: /6gZq7PmJ2xFpQVrbfiAYHlJcknFg/zDYPeJTWfVqHPs4CiJEuxHcP3+xDo+O
 qrFhWy6/IrKLMddV4QjBXwGRGce0RPPcSagDY7UqYsjZeVKxlfc0Dxn+8w0iqcK4Zv9cU/f
 pqPh9lh12TMfqLfHp0+mUWyoJ6Bl10Lnb9DzLWpqDXXn0fUTG4u47SWgZnqpJOQW0wFAo1Z
 bsavoJmdVKh6mtwa9W4FMUfBt0FnCCayBHtxNba5coqktq3lzXZdoBEPlIWlB2O0k+Bw/rv
 Hs92HcEddhwgtP1BMIa7mpo8Y=
X-QQ-SSF: 00010000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 113.87.144.31
X-QQ-STYLE: 
X-QQ-mid: webmail321t1588485234t5868291
From: "=?utf-8?B?Yi5sLmh1YW5n?=" <banglang.huang@foxmail.com>
To: "=?utf-8?B?b3BlbndydC1kZXZlbA==?=" <openwrt-devel@lists.openwrt.org>
Mime-Version: 1.0
Date: Sun, 3 May 2020 13:53:54 +0800
X-Priority: 3
Message-ID: <tencent_1D0EFD4AD05C546C38A79290A0495C97BD06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Sun, 03 May 2020 13:53:55 +0800 (CST)
Feedback-ID: webmail:foxmail.com:bgforeign:bgforeign11
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_065432_597651_786DD98B 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-2.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.195.102 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [banglang.huang[at]foxmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] Kernel hang on rk3328 at branch master
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,
    I am trying to run openwrt on rk3328, but the kernel hanged when booting, below is the log.Any hints will be appreciated.

below is the boot log:

U-Boot 2020.01 (Apr 07 2020 - 11:55:14 +0000)

Model: Radxa Rockpi E
DRAM:  1022 MiB
PMIC:  RK8050 (on=0x40, off=0x01)
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
[    0.001364] Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=96000)
[    0.002340] pid_max: default: 32768 minimum: 301
[    0.002974] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.003652] Mountpoint-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.006176] ASID allocator initialised with 32768 entries
[    0.006830] rcu: Hierarchical SRCU implementation.
[    0.008053] smp: Bringing up secondary CPUs ...
[    0.009041] Detected VIPT I-cache on CPU1
[    0.009116] CPU1: Booted secondary processor 0x0000000001 [0x410fd034]
[    0.009772] Detected VIPT I-cache on CPU2
[    0.009824] CPU2: Booted secondary processor 0x0000000002 [0x410fd034]
[    0.010419] Detected VIPT I-cache on CPU3
[    0.010470] CPU3: Booted secondary processor 0x0000000003 [0x410fd034]
[    0.010560] smp: Brought up 1 node, 4 CPUs
[    0.013820] SMP: Total of 4 processors activated.
[    0.014247] CPU features: detected: 32-bit EL0 Support
[    0.014716] CPU features: detected: CRC32 instructions
[    0.015259] CPU features: emulated: Privileged Access Never (PAN) using TTBR0_EL1 switching
[    0.016014] CPU: All CPU(s) started at EL2
[    0.016405] alternatives: patching kernel code
[    0.027164] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.028111] futex hash table entries: 1024 (order: 4, 65536 bytes, linear)
[    0.028958] pinctrl core: initialized pinctrl subsystem
[    0.029921] NET: Registered protocol family 16
[    0.030843] DMA: preallocated 256 KiB pool for atomic allocations
[    0.057570] clocksource: Switched to clocksource arch_sys_counter
[    0.059314] NET: Registered protocol family 2
[    0.060322] tcp_listen_portaddr_hash hash table entries: 512 (order: 1, 8192 bytes, linear)
[    0.061177] TCP established hash table entries: 8192 (order: 4, 65536 bytes, linear)
[    0.062007] TCP bind hash table entries: 8192 (order: 5, 131072 bytes, linear)
[    0.062846] TCP: Hash tables configured (established 8192 bind 8192)
[    0.063595] UDP hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.064233] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, linear)
[    0.065109] NET: Registered protocol family 1
[    0.067178] workingset: timestamp_bits=46 max_order=18 bucket_order=0
[    0.074664] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.075373] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    0.078229] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
[    0.080769] sdhci: Secure Digital Host Controller Interface driver
[    0.081348] sdhci: Copyright(c) Pierre Ossman
[    0.081810] Synopsys Designware Multimedia Card Interface Driver
[    0.083165] dwmmc_rockchip ff500000.dwmmc: IDMAC supports 32-bit address mode.
[    0.083850] dwmmc_rockchip ff500000.dwmmc: Using internal DMA controller.
[    0.084474] dwmmc_rockchip ff500000.dwmmc: Version ID is 270a
[    0.085061] dwmmc_rockchip ff500000.dwmmc: DW MMC controller at irq 24,32 bit host data width,256 deep fifo
[    0.097703] mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
[    0.110596] dwmmc_rockchip ff520000.dwmmc: IDMAC supports 32-bit address mode.
[    0.111286] dwmmc_rockchip ff520000.dwmmc: Using internal DMA controller.
[    0.111938] dwmmc_rockchip ff520000.dwmmc: Version ID is 270a
[    0.112521] dwmmc_rockchip ff520000.dwmmc: DW MMC controller at irq 25,32 bit host data width,256 deep fifo
[    0.113495] mmc_host mmc1: card is non-removable.
[    0.126089] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
[    0.137798] sdhci-pltfm: SDHCI platform and OF driver helper
[    0.139388] NET: Registered protocol family 10
[    0.141170] Segment Routing with IPv6
[    0.141691] NET: Registered protocol family 17
[    0.142174] 8021q: 802.1Q VLAN Support v1.8
_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
