Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE51A4DCA
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Sep 2019 05:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Zptv/fN0fuf3gLHK8GDaLiCkO9hh2l3Je17I4Oahm+o=; b=hK1Laz7P6j9sw6a6VyngMB8oiT
	h648fq6bSs3XFjKb1XHvvyyPQ/XLBXcyXoDd0lfiZtLROwDkPS1PM5GPmcV6GYmdE3A/pBSEGDLKV
	tDZOeNBXDbSBThpCuwFlPABst1jlbLMfOa22B1SiNvywPQxshXI+/gUPRcQKLbWJa2JqTOBZkc1/M
	aiDL71clQ7tFMnY6iVT5/YO8yASSXr3KgcSxcBklaKB+fVYpjT6kcmPTYDHo6fSb60tmSiQ4Q+2TI
	xWR/bRew/M6ZutR2QnNcjRQMopWX0He+DBydAAYpQQf3eZGJh1MkjI8o5hBvpKs4bd3BhaQuWVuSf
	h3Py9zXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4dAi-0001r1-Nr; Mon, 02 Sep 2019 03:38:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4dAW-0001qP-In
 for openwrt-devel@lists.openwrt.org; Mon, 02 Sep 2019 03:38:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id k2so11452452wmj.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 01 Sep 2019 20:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=goZAmBKPgKJ0QkzlHBOBtOItB2eOShR9k2PQhp/PN5k=;
 b=dZa6iwsnLrVCKk5ONpJhC6Q5098nN9S9cXpkgeUPZ5TXeIpEESkf+iAQ5bTJXj1rn3
 8VWOFSD9vh4mQhF69cbR6NGCVW1+3s+xWdEu5RhIWngbQBPImkdlPYk7Y1hHXTmUMdfg
 IaBjiEBcNIwY3pnQQAXnTxQpphbHNtCtuBmtxozoOb0jvcziFg+X/DBxwTfEmPKJ8/Gm
 zhu3PfIMryqyJnwlo35+61s6BCW4PGUXp3BubPYIVfEM5ZNIp2QcrYbJ1GVh+FNKbiTV
 ZzPVi8YMDK4myBbz7BaJjKlw4XOqwIIgG1BMAXhuX29B/RW/opRGRx2wdob/+brDUo1B
 4HQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
 bh=goZAmBKPgKJ0QkzlHBOBtOItB2eOShR9k2PQhp/PN5k=;
 b=UtBZuIbAVNGDKEJwagmMEaxQXyGxVQxcoWMYE/vNtbpJ9ncYBl6x6QJscVBkai40b4
 Ypnh7vANlQI3QU6UTcyTHA415ntwZQOpBvqssmm+eWBtaNXYgEBUrTj1mRlyJBT6SCo3
 /G0N+m4ssvxDxUSwZRTuLhcj51yYvsMWjACJKsjBjYmxROsHcIM8o9wKTVaaqLjIOmA7
 w5MYNIUamUSMFV1AvlHoT6ARVxdu4rAEXMPui1YxBtJ3lvaHTQJyjljH4kmV1zxnJkLS
 YT9jOVqHn4N1tQNTBSFuADljCGAPiML8PrE2H1g06oHc765zW9qiSHORBFKmsngOGM9N
 3sPw==
X-Gm-Message-State: APjAAAVC52rjsbE7OJORk3/U6HSkQ3IbUbu8b7yjdbDN+dNZRHExc7Pn
 Jwi8bOithVeNt4I4Y3tRSjOzmJ6J
X-Google-Smtp-Source: APXvYqyTkj4LQugkZ7dK99mpTHCtpyINS2T7cJelPgIh3USSwFARQjUdXC0OKmLJXtC0KgZVOarZEg==
X-Received: by 2002:a1c:9a0f:: with SMTP id c15mr10613524wme.27.1567395493938; 
 Sun, 01 Sep 2019 20:38:13 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id o3sm15051960wrv.90.2019.09.01.20.38.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Sep 2019 20:38:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 985ab3a7;
 Mon, 2 Sep 2019 03:38:10 +0000 (UTC)
Date: Mon, 2 Sep 2019 05:38:10 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: openwrt-devel@lists.openwrt.org
Message-ID: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_203816_655267_F22A4458 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.2 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: [OpenWrt-Devel] [lantiq] general help on AR10 platform
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
Cc: hauke@hauke-m.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello guys,
Hello Hauke,

Sorry for the amount of mails.

So in I patched the kernel to be more specific on PMU error messages, since it seems something is fundamentally wrong here:
the system panics like

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
[    0.000000] Memory: 119048K/131072K available (5210K kernel code, 241K rwdata, 1524K rodata, 3376K init, 232K bss, 12024K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 256
[    0.000000] deactivating PMU module 0 (clock gate) failed!
[    0.000000] deactivating PMU module 0 (clock gate) failed!
[    0.000000] deactivating PMU module 0 (clock gate) failed!
[    0.000000] deactivating PMU module 0 (clock gate) failed!
[    0.000000] deactivating PMU module 0 (clock gate) failed!
[    0.000000] deactivating PMU module 0 (clock gate) failed!
[    0.000000] CPU Clock: 333MHz
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 11467562725 ns
[    0.000018] sched_clock: 32 bits at 166MHz, resolution 6ns, wraps every 12884901885ns
[    0.012011] Calibrating delay loop... 221.18 BogoMIPS (lpj=442368)
[    0.061193] pid_max: default: 32768 minimum: 301
[    0.068648] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.078418] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.094717] rcu: Hierarchical SRCU implementation.
[    0.107625] smp: Bringing up secondary CPUs ...
[    0.116227] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.116249] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.116461] CPU1 revision is: 00019556 (MIPS 34Kc)
[    0.154663] Synchronize counters for CPU 1: done.
[    0.191216] smp: Brought up 1 node, 2 CPUs
[    0.202371] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.216869] futex hash table entries: 512 (order: 2, 16384 bytes)
[    0.226527] pinctrl core: initialized pinctrl subsystem
[    0.237723] NET: Registered protocol family 16
[    0.265485] dcdc-xrx200 1f106a00.dcdc: Core Voltage : 2040 mV
[    0.284748] pinctrl-xway 1e100b10.pinmux: Init done
[    0.393384] Kernel panic - not syncing: activating PMU module 0 (clock gate) failed!
[    0.404809] Rebooting in 1 seconds..
[    2.865738] Reboot failed -- System halted

Secondly, I am encountering some issues in
int __init lq_gptu_init(void)
... 
infact vendor firmware is not using
as I get a data abort at line 798 which reads:
timer_dev.number_of_timers = GPTU_ID_CFG * 2;

and looking at the vendor firmware, they do something like
timer_dev.number_of_timers = 3 * 2;

Where may I check for wrong things?
Thanks!!

Enrico

From 23bc8dd1d48bf7588f3aca1bf90c3999c0d05bcd Mon Sep 17 00:00:00 2001
From: Enrico Mioso <mrkiko.rs@gmail.com>
Date: Mon, 2 Sep 2019 05:04:19 +0200
Subject: [PATCH] lantiq: XWAY: report PMU module for which
  activation/deactivation failed

Helps in diagnosing issues when porting new devices.

Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
---
  arch/mips/lantiq/xway/sysctrl.c | 8 ++++----
  1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/lantiq/xway/sysctrl.c b/arch/mips/lantiq/xway/sysctrl.c
index c7f6dee..b30fdcc 100644
--- a/arch/mips/lantiq/xway/sysctrl.c
+++ b/arch/mips/lantiq/xway/sysctrl.c
@@ -165,7 +165,7 @@ void ltq_pmu_enable(unsigned int module)
  	spin_unlock(&g_pmu_lock);

  	if (!retry)
-		panic("activating PMU module failed!");
+		panic("activating PMU module %u failed!",module);
  }
  EXPORT_SYMBOL(ltq_pmu_enable);

@@ -180,7 +180,7 @@ void ltq_pmu_disable(unsigned int module)
  	spin_unlock(&g_pmu_lock);

  	if (!retry)
-		pr_warn("deactivating PMU module failed!");
+		pr_warn("deactivating PMU module %u failed!",module);
  }
  EXPORT_SYMBOL(ltq_pmu_disable);

@@ -218,7 +218,7 @@ static int pmu_enable(struct clk *clk)
  	}

  	if (!retry)
-		panic("activating PMU module failed!");
+		panic("activating PMU module %u (clock gate) failed!",clk->module);

  	return 0;
  }
@@ -243,7 +243,7 @@ static void pmu_disable(struct clk *clk)
  	}

  	if (!retry)
-		pr_warn("deactivating PMU module failed!");
+		pr_warn("deactivating PMU module %u (clock gate) failed!",clk->module);
  }

  static void usb_set_clock(void)
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
