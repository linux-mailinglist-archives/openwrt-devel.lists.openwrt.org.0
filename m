Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67810AA9F5
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 19:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=y24vlaacxsbczBiopYY1r4xDapnhQ7gb0tC4LmSYqVY=; b=TS9
	x1k4lPZnz6Fh5ol0v+V7dYkINgp598UWF2uYIDwLuY1uSZVqRmwNS9tUxIsw2NBW8ouuDz9r6gSo8
	jl8M933LNRgIiQLIixDUdOD8cg0N0+BNtr9NNxbgEkaUv6UDzAmJx3us9YYYGA0hgqjE8iOs/0VL0
	lpoAfDvDmlK1O8fBnZQGSGDgpLHijGnKubIH/RBv5vvO4L6tQddGRNLHbPBP0mD/Bfqkr/eKxrk+L
	lcFutVYT0+yhmCOboQt5KiS8Ibr1V4ReZTp38YMebBrDqo9WQQt/rjNw9VDB6PyQkb4bXUrEQbZW0
	RLPNj1chWwlhmnuFn92kDIllY3csDJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vWP-0004mj-Ny; Thu, 05 Sep 2019 17:26:13 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vWI-0004mF-9f
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 17:26:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id x18so3383924ljh.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 10:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=/p9Kj0PBaTT13pDMonEal3V8HWJIbQfU5vKCCus8cKU=;
 b=lieuRbICmmLH6+WXRLkFBp57gFaOEWU9422yTEMz/JmjGDCszUo7RuRoD4as1g4Xkj
 yxOOUIfffwirzaBZo0EzZEyMTRiRXzujpm35n9Tcp1SqioKfaeisqAgG4l9HuLNWK/Kv
 v6AtbkcSojJHj3NszFVTNHs+76Qumi+rCb3381YW9Ym6UsUBlYE4QlurGyCelXywF5oQ
 DjTZdLPAZGftBA1EC3DOSFQcBQrlhjhAe9J5GDYX05TlRIVRj9jho5dfojX6sZkTO/1x
 OhY7jcxcSvyAoDO8FcRSlYHsCGRla6/i8P+GDLnydd0DqGf9uMShf5d0SMytO0Hb3bhn
 Oyag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=/p9Kj0PBaTT13pDMonEal3V8HWJIbQfU5vKCCus8cKU=;
 b=rsW5Q5QYKjKK76mP4fB+aNDzwmnuTFgivEUvNoLP0BYrrvmMwnlW1H8EQ0RuFFxo8P
 Ey0LmhTpzuN+sXcg2QQaKFGe+L4/8+YGFmKINh0u1fmPQkASnmmp6uAAMQOYtEeNof94
 EPlrI3gkTfo/xWRHFozVbwvEz37jpmfUB0ayDWjmjBXGtQTOWBM31qjEAtnjksRFEpai
 KNQvmQJGtYk4ruf76xvKq0X099Us6dIDqYHjrMlJo/kzCfoH1+KnkD3BcAJ43v5XC4T0
 RvVEILCwB2rg9OOyvy2JMYxaYlPTIv1/jU8xTyVMPJeMJ6M9Ty9q+WoCQaiMernNJyEc
 4LZg==
X-Gm-Message-State: APjAAAUzaLXJUhM1Jit8i13Eq7ez904UrFbDURiOAeInLxYuFBfmPjDC
 TPoYNrCspfKWFB5l+A9Ny81pSD3YO6py4rct2QZQo+/d
X-Google-Smtp-Source: APXvYqz9iktAV6udk5pCPIJzKFaCfRADLQyisVhmUfHI9PwYn9yTPcnUXczyi9TMFwxPlaKD708mtuViH3m3txDgfeY=
X-Received: by 2002:a2e:b1c4:: with SMTP id e4mr2939845lja.101.1567704362815; 
 Thu, 05 Sep 2019 10:26:02 -0700 (PDT)
MIME-Version: 1.0
From: sven falempin <sven.falempin@gmail.com>
Date: Thu, 5 Sep 2019 13:25:34 -0400
Message-ID: <CA++fYEh0NX1J-YHiY4E4ns8VEFe5N8_JwFu-j7qKi8B6si0MJA@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_102606_344479_9AB7B452 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sven.falempin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Same Kernel Crash / Dont crash ,
 given an attempt to read rootfs ?
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

Hello,

I was learning about openWRT and trying to get an ipq4019 to work with
recent openwrt

I forked : d3e832d6fda8a39e7ec262994f75dac67353dcae and create a DTS
file from the templates, tried my build using dhcp/bootm initramfs
Kernel,

The layout of the flash separate the FIT kernel and the ROOTFS,
I extracted ( probably not the best way , below for details ) the hsqs
/ squashfs part of the factory image,

When the device boot the non ramfs KERNEL it crashes like that :

[    1.032721] 0x000000580000-0x000001b80000 : "rootfs"
[    1.037444] mtd: device 9 (rootfs) set to be root filesystem
[    1.042160] 1 squashfs-split partitions found on MTD device rootfs
[    1.047606] 0x000000c00000-0x000001b80000 : "rootfs_data"
[    1.054867] ipq4019-pinctrl 1000000.pinctrl: invalid function mdio0
in map table
[    1.059189] libphy: ipq40xx_mdio: probed
[    1.070582] Unable to handle kernel NULL pointer dereference at
virtual address 000000a4
[    1.070621] pgd = (ptrval)
[    1.078484] [000000a4] *pgd=00000000
[    1.080973] Internal error: Oops: 5 [#1] SMP ARM
[    1.084699] Modules linked in:
[    1.089302] CPU: 2 PID: 1 Comm: swapper/0 Not tainted 4.19.64 #0
[    1.092167] Hardware name: Generic DT based system
[    1.098338] PC is at ar40xx_probe+0x308/0x724
[    1.102932] LR is at ar40xx_probe+0x2fc/0x724
[    1.107354] pc : [<c0607b8c>]    lr : [<c0607b80>]    psr: 60000013
[    1.111698] sp : df449e08  ip : dfb585a4  fp : 00000000
[    1.117774] r10: df5a4200  r9 : c0b20574  r8 : c0b5f4e4
[    1.122983] r7 : df5a4210  r6 : dfb779f0  r5 : 00000000  r4 : df7e0040
[    1.128192] r3 : 00000002  r2 : 00000000  r1 : 00000000  r0 : df7e0040
[    1.134793] Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
[    1.141304] Control: 10c5387d  T: 00000051
[    1.148504] Process swapper/0 (pid: 1, stack limit = 0x(ptrval))
[    1.154235] Stack: (0xdf449e08 to 0xdf44a000)
[    1.160313] 9e00:                   00000000 dfb6f3f8 df5769c0
00000004 00098000 000987ff
[    1.164575] 9e20: dfb77d28 00000200 00000000 00000000 00000000
00000000 0c000000 0c07ffff
[    1.172732] 9e40: dfb77a48 00000200 00000000 00000000 00000000
00000000 c0b20574 df5a4210
[    1.180893] 9e60: c0b20574 c0b5e858 00000000 00000000 c0b20574
00000000 00000000 c05a6368
[    1.189053] 9e80: c0b5e854 df5a4210 c0b5e858 c05a4ba8 df5a4210
c0b20574 df5a4244 00000000
[    1.197213] 9ea0: 00000000 00000062 c0a35c04 c05a4fd0 df5a4210
c0b20574 c05a4f40 c05a3144
[    1.205371] 9ec0: df407d58 df552db4 c0b20574 df575600 c0b1cde8
c05a4144 c089aa18 ffffe000
[    1.213533] 9ee0: c0b20574 c0b20574 c0b04c48 ffffe000 c0a1778c
c05a56d4 c0b29dc0 c0b04c48
[    1.221690] 9f00: ffffe000 c03026a4 00000003 00000000 00000000
c0353100 00000000 df449f24
[    1.229853] 9f20: cccccccd 00000000 c08dbee8 c08a0be8 00000006
00000006 c08658c4 00000000
[    1.238009] 9f40: c086c214 c0865938 c0a2b83c cccccccd 00000000
00041340 00000007 c0b29dc0
[    1.246171] 9f60: c0b29dc0 c0a2b834 c0a2b83c c0a35c04 00000000
c0a00eec 00000006 00000006
[    1.254328] 9f80: 00000000 c0a0058c 00000000 c079621c 00000000
00000000 00000000 00000000
[    1.262490] 9fa0: 00000000 c0796224 00000000 c03010e8 00000000
00000000 00000000 00000000
[    1.270647] 9fc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[    1.278809] 9fe0: 00000000 00000000 00000000 00000000 00000013
00000000 00000000 00000000
[    1.286984] [<c0607b8c>] (ar40xx_probe) from [<c05a6368>]
(platform_drv_probe+0x34/0x70)
[    1.295135] [<c05a6368>] (platform_drv_probe) from [<c05a4ba8>]
(really_probe+0x14c/0x2b4)
[    1.303292] [<c05a4ba8>] (really_probe) from [<c05a4fd0>]
(__driver_attach+0x90/0xc4)
[    1.311363] [<c05a4fd0>] (__driver_attach) from [<c05a3144>]
(bus_for_each_dev+0x48/0x98)
[    1.319264] [<c05a3144>] (bus_for_each_dev) from [<c05a4144>]
(bus_add_driver+0xe8/0x200)
[    1.327420] [<c05a4144>] (bus_add_driver) from [<c05a56d4>]
(driver_register+0xbc/0xf8)
[    1.335583] [<c05a56d4>] (driver_register) from [<c03026a4>]
(do_one_initcall+0x7c/0x184)
[    1.343398] [<c03026a4>] (do_one_initcall) from [<c0a00eec>]
(kernel_init_freeable+0x1c4/0x260)
[    1.351731] [<c0a00eec>] (kernel_init_freeable) from [<c0796224>]
(kernel_init+0x8/0x114)
[    1.360237] [<c0796224>] (kernel_init) from [<c03010e8>]
(ret_from_fork+0x14/0x2c)

I do not understand how a (maybe) invalid rootfs could crash the
kernel like that
especially when the ramfs kernel works fine :


[    1.163653] 0x000000580000-0x000001b80000 : "rootfs"
[    1.168320] mtd: device 9 (rootfs) set to be root filesystem
[    1.173108] 1 squashfs-split partitions found on MTD device rootfs
[    1.178525] 0x000000c00000-0x000001b80000 : "rootfs_data"
[    1.185837] ipq4019-pinctrl 1000000.pinctrl: invalid function mdio0
in map table
[    1.190099] libphy: ipq40xx_mdio: probed
[    1.268444] ESS reset ok!
[    1.301448] ESS reset ok!
[    1.719346] libphy: Fixed MDIO Bus: probed
[    1.824620] i2c /dev entries driver
[    1.824907] i2c_qup 78b7000.i2c: using default clock-frequency 100000
[    1.834006] NET: Registered protocol family 10
[    1.836073] Segment Routing with IPv6
[    1.837977] NET: Registered protocol family 17
[    1.841834] 8021q: 802.1Q VLAN Support v1.8
[    1.846005] Registering SWP/SWPB emulation handler
[    1.85675[    1.878475] Freeing unused kernel memory: 14336K
[    1.927344] Run /init as init process
[    1.959651] init: Console is alive
[    1.959930] init: - watchdog -
[    1.973086] kmodloader: loading kernel modules from /etc/modules-boot.d/

I setup my test like this :
I just look for the magic of squash and DD out of the  file the data
to flash the rootfs partition
dd if=/home/toor/release/HD53/bin/targets/ipq40xx/generic/openwrt-ipq40xx-ipq-hd53-squashfs-nand-factory.ubi
skip=459264 bs=8 > ./hd53.hsqs

I did not find another way to do that, nor I understand how
ar40xx_probe is related to rootfs

Basically I boot /dev/mtd8 and i put hd53.hsqs in /dev/mtd9, the
~/release/HD53/bin/targets/ipq40xx/generic/openwrt-ipq40xx-ipq-hd53-fit-uImage.itb
in /dev/mtd8
and the u-boot tftp boot these file
~/release/HD53/bin/targets/ipq40xx/generic/openwrt-ipq40xx-ipq-hd53-initramfs-fit-uImage.itb

TFTP BOOT is fine , booting the  openwrt-ipq40xx-ipq-hd53-fit-uImage.itb crashes

It's mostly confusing to me.
My main question is : did I screw up the rootfs so bad it does, or is
there another problem ?

Thank you for reading.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
