Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB94A1ACA2C
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 17:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68cRBqBIjmDsm/o4ggBQiBsRPV6sPtKaO2xH57L7odE=; b=BZ7/v/NrNRNb1+
	jnVYDsUAD4KebU9fju0tqtvqijIYUCOil6QH/W3CUv78XfO2NU0nZqLPzZntmFMj1ibgLMcJYQZb7
	r355RjuU5RHC529Vcxqwha04fS4TzcpAZZw2wNmzcpjR+zIlX/hDswCJIumUJ7PLXV6P52qND1oi3
	VRfb9WkjgcAE5/Bnufs3k6VtUGYOm+/IOGhJHlfVXEb9X153o5x2ENl2YHX7wgCMhiEctH49wbj/F
	ZuX1N7H2dYZMmYzVkd8S+sQ82VG0xaN7vUcr8oXP5yY2g2mQLK1H0qW6WoG5tTnqFXrDO2JGz73Hn
	qnxvPIj1fZJXjOYf89Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6Uz-00059n-Pb; Thu, 16 Apr 2020 15:32:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6Ut-00058U-Ne
 for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 15:32:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id i10so5319466wrv.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Apr 2020 08:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=XwJGh/XDShbZ3q2A+LXQ/6QTKDV3JfDH6XilHlW2Cfo=;
 b=d6k260DNUG6+Z/1ddvHG7BrAe/td0WYJxvacifgUofnfP/aXEOepjF1Y98PT+4bKo2
 2meWGYrW/filc0dQWa09k0wj7x81YD4l3RMIm+VtmSA+hkkZe1/aZ8XUuyKwSjjHMePi
 EmFL9h+bfAH/K1FHVpJAcqOThxmjegOreO3Od5/0NmOPRnhfV+ITv3T4997n+S+7cryn
 oRzC3/bWYm4dAlYIg7kw2ipyR0WKaJ/jOTsKlmc5qLGsKIv5rrxwT46rNJnC0xiATvVX
 Ms9s2XqqdklkvyYZi6TRz0VXEY4nqiDvKZKGumoLUyRAuYjQc13kVGd0citlDzydzyTd
 poNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XwJGh/XDShbZ3q2A+LXQ/6QTKDV3JfDH6XilHlW2Cfo=;
 b=gSg3EI8oJp6ZggwqceAL4Ka28DWotb9s/6OYYlmRnJTk6uy/yFv+yQIb/arfU0QdqZ
 /zJP6l0ZnY8lUsFbD9h6Tap4DpQG8KtyiTWnupL+2IiGtGcx/KR4V1ET/LhY+HZzqKVq
 9B0nomwW6TjZpGDOLzz4fKGGfnOonqCFKv6NKjbs/YXbpu4oBkwLi3WNqJVEI6n2VLZg
 P+eHrw36BuYr5B6RXl2A+9sg/rzDrFwPed41xYLa2ZEAn0vZTskpD6aSVmL11ZPAfRKq
 FYWzPTkFYpj8SvFqABsVV05vigGqub9Wg2cWeEDvg/81uX9Tb9hYEoheH1ZVmCo76pkp
 oJhQ==
X-Gm-Message-State: AGi0PuYqDFWgjZDmIA3gHr1JBPHu3Za2YD5b7sJO9aE0qdnx9BEIaWVm
 xxyf6Y3QutqkKTor+33iKlUPzBxJMH8=
X-Google-Smtp-Source: APiQypJ6FEWrE1gRjBh3RTgI7FZCN5K8YaIHhq85OZ/hgUkrw7D9tWim6X9UJhOHXi+bN1Xh4Gys1A==
X-Received: by 2002:adf:df82:: with SMTP id z2mr26979264wrl.58.1587051129087; 
 Thu, 16 Apr 2020 08:32:09 -0700 (PDT)
Received: from localhost
 (2a01-036d-0111-d037-2495-190a-4faf-4ed0.pool6.digikabel.hu.
 [2a01:36d:111:d037:2495:190a:4faf:4ed0])
 by smtp.gmail.com with ESMTPSA id j13sm1347378wrq.24.2020.04.16.08.32.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 08:32:07 -0700 (PDT)
From: Szabolcs Hubai <szab.hu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Apr 2020 17:31:46 +0200
Message-Id: <20200416153146.4377-1-szab.hu@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_083211_794238_B23CB777 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: limit dictionary size for
 DIR-860L due to kernel 5.4
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
Cc: Szabolcs Hubai <szab.hu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Snapshot images for DIR-860L after the initial kernel 5.4 landing
(on Apr 4, 2020 commits from b51ea43f9001 to 4d979a4d1969)
are broken: they causes "LZMA ERROR 1 - must RESET board to recover"

Snapshot factory image serial log:
----
Please choose the operation:
   1: Load system code to SDRAM via TFTP.
   2: Load system code then write to Flash via TFTP.
   3: Boot system code via Flash (default).
   4: Entr boot command line interface.
   7: Load Boot Loader code then write to Flash via Serial.
   9: Load Boot Loader code then write to Flash via TFTP.

You choosed 3

0

3: System Boot system code via Flash.
addr:80500000
We have SEAMA, Image Size = 2424768
Verifying Checksum ...
Uncompressing SEAMA linux.lzma ... LZMA ERROR 1 - must RESET board to recover
----

The local defconfig build works, also the snapshot initramfs images.

The bug can be reproduced with the "CONFIG_ALL_KMODS=y" configuration.

As this "LZMA ERROR 1" isn't new (e.g. 77e2bccde8f7),
I tried to adjust the lzma dictionary parameter:
- with "-d20" and above it causes "LZMA ERROR 1"
- with "-d19" it boots but doesn't find the device tree (see below)
- with "-d18" it boots fine

Serial log with "-d19" lzma dictionary:
----
Please choose the operation:
   1: Load system code to SDRAM via TFTP.
   2: Load system code then write to Flash via TFTP.
   3: Boot system code via Flash (default).
   4: Entr boot command line interface.
   7: Load Boot Loader code then write to Flash via Serial.
   9: Load Boot Loader code then write to Flash via TFTP.
0

3: System Boot system code via Flash.
addr:80500000
We have SEAMA, Image Size = 4915140
Verifying Checksum ...
Uncompressing SEAMA linux.lzma ... OK

Starting kernel ...

[    0.000000] Linux version 5.4.32 (xabolcs@ut1804) (gcc version 8.4.0 (OpenWrt GCC 8.4.0 r12974-75f19deb3a)) #0 SMP Wed Apr 15 02:14:19 2020
[    0.000000] SoC Type: MediaTek MT7621 ver:1 eco:3
[    0.000000] printk: bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 0001992f (MIPS 1004Kc)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] VPE topology {2,2} total 4
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
[    0.000000] MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000]   HighMem  empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] OF: fdt: No valid device tree found, continuing without
[    0.000000] percpu: Embedded 14 pages/cpu s26704 r8192 d22448 u57344
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 32480
[    0.000000] Kernel command line:   rootfstype=squashfs,jffs2
[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 bytes, linear)
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes, linear)
[    0.000000] Writing ErrCtl register=0004050c
[    0.000000] Readback ErrCtl register=0004050c
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Memory: 120752K/131072K available (5826K kernel code, 206K rwdata, 1252K rodata, 1280K init, 237K bss, 10320K reserved, 0K cma-reserved, 0K highmem)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
[    0.000000] ------------[ cut here ]------------
[    0.000000] WARNING: CPU: 0 PID: 0 at kernel/rcu/tree.c:2998 rcu_init+0x55c/0x774
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.4.32 #0
[    0.000000] Stack : 00000000 800774cc 806b0000 806b6474 80720000 806b643c 806b5590 806efdb4
[    0.000000]         80860000 80701248 80700d83 8064c7e4 00000000 00000001 806efd58 00000000
[    0.000000]         00000000 00000000 808a0000 00000000 00000030 00000027 342e3520 2032332e
[    0.000000]         00000000 00000000 00000000 00000000 00000000 80720000 00000000 807299f0
[    0.000000]         00000009 806451a4 806fe2b0 80700000 00000002 00000010 87ff0000 00000000
[    0.000000]         ...
[    0.000000] Call Trace:
[    0.000000] [<8000b72c>] show_stack+0x30/0x100
[    0.000000] [<8058fac4>] dump_stack+0xa4/0xdc
[    0.000000] [<80028038>] __warn+0xc0/0x10c
[    0.000000] [<800280e0>] warn_slowpath_fmt+0x5c/0xac
[    0.000000] [<807299f0>] rcu_init+0x55c/0x774
[    0.000000] [<80720a7c>] start_kernel+0x2dc/0x55c
[    0.000000] [<80011044>] start_secondary+0xb0/0x3a0
[    0.000000] random: get_random_bytes called from print_oops_end_marker+0x2c/0x64 with crng_init=0
[    0.000000] ---[ end trace 0000000000000000 ]---
[    0.000000] ------------[ cut here ]------------
[    0.000000] WARNING: CPU: 0 PID: 0 at kernel/rcu/tree.c:2999 rcu_init+0x5ac/0x774
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G        W          5.4.32 #0
[    0.000000] Stack : 00000000 800774cc 806b0000 806b6474 80720000 806b643c 806b5590 806efdb4
[    0.000000]         80860000 80701248 80700d83 8064c7e4 00000000 00000001 806efd58 00000000
[    0.000000]         00000000 00000000 808a0000 00000000 00000030 0000003b 342e3520 2032332e
[    0.000000]         00000000 00000000 00000000 00000000 00000000 80720000 00000000 80729a40
[    0.000000]         00000009 806451a4 806fe2b0 80700000 00000002 00000010 87ff0000 00000000
[    0.000000]         ...
[    0.000000] Call Trace:
[    0.000000] [<8000b72c>] show_stack+0x30/0x100
[    0.000000] [<8058fac4>] dump_stack+0xa4/0xdc
[    0.000000] [<80028038>] __warn+0xc0/0x10c
[    0.000000] [<800280e0>] warn_slowpath_fmt+0x5c/0xac
[    0.000000] [<80729a40>] rcu_init+0x5ac/0x774
[    0.000000] [<80720a7c>] start_kernel+0x2dc/0x55c
[    0.000000] [<80011044>] start_secondary+0xb0/0x3a0
[    0.000000] ---[ end trace f68728a0d3053b52 ]---
[    0.000000] NR_IRQS: 256
[    0.000000] Kernel panic - not syncing: Failed to find mtk,mt7621-sysc node
[    0.000000] Rebooting in 1 seconds..
[    0.000000] Reboot failed -- System halted
----

Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
---
 target/linux/ramips/image/mt7621.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 6e64fb8bf1..cfae103d22 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -218,6 +218,7 @@ define Device/dlink_dir-860l-b1
   $(Device/seama)
   BLOCKSIZE := 64k
   SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
+  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma -d18 | uImage lzma
   KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := D-Link
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
