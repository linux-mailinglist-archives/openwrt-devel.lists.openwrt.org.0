Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2622EA63BD
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 10:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EzdxjwLxVLUbrdQP6bWWGoQJLqoJePDH3w+X5PF0Ukw=; b=AY67V0yxwPqLDUHpPw1F7UdQY
	VrHKIGT7cdgpgWuIzkjxs4Hu8IYtjLNxpuyyiuQ/0Im7zlZGs9q3u9C8G5Esv029B6gxVFqf540yD
	8bee2tQKQ3WQkROHtnH5s63NochQ3gdXyE6R6OWPc3xSdJgJ3NG0lPK0Fdk16U3QcOS+Wgoo/Hs/i
	3vtUCG+LLU9G+loRv7v5KIl2ohb5FIuJ2gC0t9RZG25/5pkHlDjCcjLZxi8Ysn/wCGmz4c1tCzevc
	kD8rjXO8rLMCXAfWQbJyT6pkRoPCwNjSuQYqObL8BNGzFA/tliFeIszNCpLDEYxINgR88SYX98KSn
	DDPAkoaTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i544R-000480-NS; Tue, 03 Sep 2019 08:21:47 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i544H-00047P-93
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 08:21:39 +0000
Received: by mail-wr1-x42b.google.com with SMTP id 30so5462973wrk.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 01:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=PQoEOsy9uoL/JpERIlNxOUHen4TPmEPDFfqg4lCy8bw=;
 b=iFNcha09MhKA1HL7XBD0mbfD5v1zsJDS/dzivJ0VPEWZGuDVqe33zDb4QYqZwwszM9
 Ba0Ig35ytNN5jn5mKMmlzlA/9kqmlBK+L9njs4/dHMMEJl6MxV55Cr4p59dgPftKXPK5
 HXU7NN2qKQPuRQiazVRs7tqG9LbCH5w550ix/lptYMbzj2UhDckxMDgqv7aWgIMTF1Sw
 7Sy8YznH5MOxqcHZcQxOpe7Zs+J3Q4IXNjZuOWDxlhbOgclIoJQlujN5uPQZhHWXmGJ/
 uH9+NXPL7cl/VRwyEew6fnZuRdRAcs8HcjFmdLYCqCHEwNsFfLFlC047DtDHCXdOW7g4
 ENqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=PQoEOsy9uoL/JpERIlNxOUHen4TPmEPDFfqg4lCy8bw=;
 b=HqxLMd5k4CQPIrefHeZ+6pNRYL5UOH4xyOxj5CCqYGklBDe4wVmYmaEQqm7/BFQTh9
 phli+I0NEZn2yizIPBivh3bBbVNW0xtfm6tb+QtiRZYHcC8i4CjNUr/eNHzACS98iiNf
 UuWiOjSVGX7D8FcSyY/7H60eayneadpQK+dPKSOm1SxYsUOrBADsZx5t1xk5dV6Ddhtm
 MjxF46ynJRw4/igLDPyqZkgVYP+Fj5XOdX0k+G8kP6uDwLTrouuLQ3/dSM+qni8pvouD
 Jy+lcfz4kEwDiYbw3Vq8dbDO3GEy8rn92XcmBbDPw9X0J89wz4ydiLdMNjg1X6JpSmnu
 8dWw==
X-Gm-Message-State: APjAAAWj7zCRdaeo5j4V3kcb9w0KacjOQNtXcFj2vQVxX74blE02sjwo
 B5fZEtwa7R/f0b+O4ba3+tc=
X-Google-Smtp-Source: APXvYqza6DFfNCzW2KF6rKqpLGc1Y1cp1V+ZTf9rbw0cTxjeimvU23K4PSS5uRhkARY7NSW6aV422w==
X-Received: by 2002:a5d:6088:: with SMTP id w8mr7274013wrt.31.1567498894795;
 Tue, 03 Sep 2019 01:21:34 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id e15sm17279064wrj.74.2019.09.03.01.21.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 01:21:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id b181127e;
 Tue, 3 Sep 2019 08:21:32 +0000 (UTC)
Date: Tue, 3 Sep 2019 10:21:32 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <127c76e3-441e-816e-7168-fb1942e23484@hauke-m.de>
Message-ID: <alpine.LNX.2.21.99999.352.1909031010570.13628@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <127c76e3-441e-816e-7168-fb1942e23484@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_012137_343895_595FC204 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.2 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [lantiq] general help on AR10 platform
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey there!
On Mon, 2 Sep 2019, Hauke Mehrtens wrote:

> Do you use the compatible string lantiq,ar10 for the device?

OOOOPS! Thanks!!!! Lots of work needed but still...

Eva_AVM >   







........................................................................................[    0.000000] Linux version 4.19.68 (mrkiko@mStation) (gcc version 7.4.0 (OpenWrt GCC 7.4.0 r10891-055abe902b)) #0 SMP Thu Aug 29 14:19:00 2019
[    0.000000] SoC: xRX300 rev 1.2
[    0.000000] bootconsole [early0] enabled
[    0.000000] CPU0 revision is: 00019556 (MIPS 34Kc)
[    0.000000] MIPS: machine is AVM FRITZ!Box 3272
[    0.000000] Determined physical RAM map:
[    0.000000]  memory: 08000000 @ 00000000 (usable)
[    0.000000] Initrd not found or empty - disabling initrd
[    0.000000] Detected 1 available secondary CPU(s)
[    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x0000000007ffffff]
[    0.000000] random: get_random_bytes called from start_kernel+0x98/0x4dc with crng_init=0
[    0.000000] percpu: Embedded 14 pages/cpu s26256 r8192 d22896 u57344
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 32480
[    0.000000] Kernel command line: 
[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Writing ErrCtl register=00050000
[    0.000000] Readback ErrCtl register=00050000
[    0.000000] Memory: 119044K/131072K available (5210K kernel code, 241K rwdata, 1524K rodata, 3376K init, 232K bss, 12028K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 256
[    0.000000] CPU Clock: 500MHz
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041786 ns
[    0.000012] sched_clock: 32 bits at 250MHz, resolution 4ns, wraps every 8589934590ns
[    0.007922] Calibrating delay loop... 332.54 BogoMIPS (lpj=665088)
[    0.046022] pid_max: default: 32768 minimum: 301
[    0.050995] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.057507] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.068267] rcu: Hierarchical SRCU implementation.
[    0.076792] smp: Bringing up secondary CPUs ...
[    0.082535] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.082551] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.082694] CPU1 revision is: 00019556 (MIPS 34Kc)
[    0.113485] Synchronize counters for CPU 1: done.
[    0.137848] smp: Brought up 1 node, 2 CPUs
[    0.145295] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.154989] futex hash table entries: 512 (order: 2, 16384 bytes)
[    0.161374] pinctrl core: initialized pinctrl subsystem
[    0.168913] NET: Registered protocol family 16
[    0.192153] pinctrl-xway 1e100b10.pinmux: Init done
[    0.198381] dma-xway 1e104100.dma: Init done - hw rev: 8, ports: 5, channels: 24
[    0.242745] usbcore: registered new interface driver usbfs
[    0.248408] usbcore: registered new interface driver hub
[    0.253842] usbcore: registered new device driver usb
[    0.262539] clocksource: Switched to clocksource MIPS
[    0.270805] NET: Registered protocol family 2
[    0.276328] tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes)
[    0.283934] TCP established hash table entries: 1024 (order: 0, 4096 bytes)
[    0.290964] TCP bind hash table entries: 1024 (order: 1, 8192 bytes)
[    0.297372] TCP: Hash tables configured (established 1024 bind 1024)
[    0.304011] UDP hash table entries: 256 (order: 1, 8192 bytes)
[    0.309805] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
[    0.316470] NET: Registered protocol family 1
[    0.497491] random: fast init done
[    4.762312] gptu: totally 6 16-bit timers/counters
[    4.767177] gptu: misc_register on minor 63
[    4.771338] gptu: succeeded to request irq 126
[    4.775862] gptu: succeeded to request irq 127
[    4.780340] gptu: succeeded to request irq 128
[    4.784898] gptu: succeeded to request irq 129
[    4.789369] gptu: succeeded to request irq 130
[    4.793888] gptu: succeeded to request irq 131
[    4.798552] No VPEs reserved for AP/SP, not initialize VPE loader
[    4.798552] Pass maxvpes=<n> argument as kernel argument
[    4.809939] No TCs reserved for AP/SP, not initializing RTLX.
[    4.809939] Pass maxtcs=<n> argument as kernel argument
[    4.823144] Crashlog allocated RAM at address 0x3f00000
[    4.828818] workingset: timestamp_bits=14 max_order=15 bucket_order=1
[    4.853525] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    4.859312] jffs2: version 2.2 (NAND) (SUMMARY) (LZMA) (RTIME) (CMODE_PRIORITY) (c) 2001-2006 Red Hat, Inc.
[    4.882110] io scheduler noop registered
[    4.886082] io scheduler deadline registered (default)
[    4.892539] fpi-xway 10000000.fpi: can't request region for resource [mem 0x10000000-0x1fefffff]
[    4.901331] fpi-xway: probe of 10000000.fpi failed with error -16
[    4.908974] 1e100c00.serial: ttyLTQ0 at MMIO 0x1e100c00 (irq = 112, base_baud = 0) is a lantiq,asc
[    4.917888] console [ttyLTQ0] enabled
[    4.917888] console [ttyLTQ0] enabled
[    4.925235] bootconsole [early0] disabled
[    4.925235] bootconsole [early0] disabled
[    4.934787] cacheinfo: Failed to find cpu0 device node
[    4.938696] cacheinfo: Unable to detect cache hierarchy for CPU 0
[    4.950104] libphy: Fixed MDIO Bus: probed
[    4.956849] wdt 1f8803f0.watchdog: Init done
[    4.963583] NET: Registered protocol family 10
[    4.971956] Segment Routing with IPv6
[    4.974549] NET: Registered protocol family 17
[    4.978846] 8021q: 802.1Q VLAN Support v1.8
[    4.998378] Freeing unused kernel memory: 3376K
[    5.001519] This architecture does not have kernel memory protection.
[    5.007949] Run /init as init process
[    5.032752] init: Console is alive
[    5.035243] init: - watchdog -
[    5.064201] kmodloader: loading kernel modules from /etc/modules-boot.d/*
[    5.073603] kmodloader: done loading kernel modules from /etc/modules-boot.d/*
[    5.089945] init: - preinit -
Press the [f] key and hit [enter] to enter failsafe mode
Press the [1], [2], [3] or [4] key and hit [enter] to select the debug level
[    8.403771] procd: - early -
[    8.405405] procd: - watchdog -
[    8.984982] procd: - watchdog -
[    8.987423] procd: - ubus -
[    8.998940] random: ubusd: uninitialized urandom read (4 bytes read)
[    9.040099] random: ubusd: uninitialized urandom read (4 bytes read)
[    9.045911] random: ubusd: uninitialized urandom read (4 bytes read)
[    9.053860] procd: - init -
Please press Enter to activate this console.
[    9.602838] kmodloader: loading kernel modules from /etc/modules.d/*
[    9.612884] IFXOS, Version 1.5.19 (c) Copyright 2009, Lantiq Deutschland GmbH
[    9.625395] NET: Registered protocol family 8
[    9.628395] NET: Registered protocol family 20
[    9.644457] PPP generic driver version 2.4.2
[    9.698097] Lantiq (VRX) DSL CPE MEI driver, version 1.5.17.6, (c) 2007-2015 Lantiq Beteiligungs-GmbH & Co. KG
[    9.717819] 
[    9.717819] 
[    9.717819] Lantiq CPE API Driver version: DSL CPE API V4.17.18.6
[    9.735493] 
[    9.735493] Predefined debug level: 3
[    9.740625] Get BSP Driver Handle Fail!
[    9.744454] Get BSP Driver NFC Handle Fail!
[    9.756135] urngd: v1.0.0 started.
[    9.787304] NET: Registered protocol family 24
[    9.809358] xt_time: kernel timezone is -0000
[    9.871018] kmodloader: done loading kernel modules from /etc/modules.d/*
[   10.054261] random: crng init done
[   10.056226] random: 7 urandom warning(s) missed due to ratelimiting

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
