Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A220BA0730
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 18:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Content-ID:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qqo1XXUSPDk/jNkIf5IK6TwpY50rZHcjnnQCQX8JlaU=; b=Kt28JyXvA6D7QxIdzg7dBoAb3
	65uARjnUlbX4S0oMDG7MynJGY3D2AX+jxsgHbJA321H4K/RcvbtEbwD0pSJpnOY46A/xuIhPerdGT
	cUZ1Xt6MQYNLB3RKkKeExXIB0h8OSSmO6tfPBIZBDIvj70487NxeC2oH3tQxdS459senrgWx3pSZl
	cPbl/XWXr9rGEbb1mghPYyk85hvvWtltO75DTyOTLuSj0Ygg3rcWNp65rWJXZjtcH/bek6Z700JUq
	BZd3xk2vlpjWWMHHdXvOujr3My/mKQF3jGVVf7n503AcbDQjmpMETa65B4AG/1duyM2Z5ZZduq7JL
	zcT2BdTwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30hr-00081F-TQ; Wed, 28 Aug 2019 16:22:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i30hY-00080r-0v
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 16:21:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id p13so710557wmh.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 09:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version:content-id;
 bh=f3MENoPA2W8Ycqq9dxCAP+vXukEjMnTPnzRy1zq43wY=;
 b=KEWZzPC6pGslcPceVN8DZVdrJ2dvPRB2TIU4O6o0n76IAY1SLyhmqsRw9UqHYcIU1h
 z7t8u70y2/mewWoLVsfq/TPWGWoGUGTgxtd/Han5r50ppeDh7xABjL1R9imKA5jXtlkH
 IWyFCfivqpJ7fq7oFCFeVv3IZqri+txnG4FEFE7jcQQoZt2pOix4i7hJyRntkckAKjNa
 EGrETqdze3SZPD+cT9u0N86egjaC9iVcIrHQWf/CuGiLhlaMn8rkW71f+caOhDoT21nL
 ww9zxPny1InxJk/9y1gHAGxH2yQ/59rF7RQ3GMINn6kmYxqsyCVGHTrWyS12xdt+nRKK
 z/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version:content-id;
 bh=f3MENoPA2W8Ycqq9dxCAP+vXukEjMnTPnzRy1zq43wY=;
 b=Rg2cE9q5jIa+pEDlcchAIEeuK2Pd+PiUZZQOL64DXvQ/ITojwAZflYHTjRqj+cLazT
 S15s6JS9UQPMpbnTdSfUD8YfmGZIqfOLoARA9vwOKYWt9bg63MAdMFjfY1uVPe1HCZ8P
 5HySMSEtJIS+mf+UUOB7nn/739mw/s2nfSwCcREmc+8nQCnh5Zf/IG3MT80Cogsgn3m2
 VrsnMkPKm1mCJetPZF8uUAlyjuEp0rqVoTA8j+6NHiEenmseOsXZz3a7iqmL167HjcUG
 2RDpA0wE1QvBK5JSHOAr+XF4UOOU18JVsOEMfEffQX0ir8aJBHHKJsVSoEmFQyfSuRD2
 uwMw==
X-Gm-Message-State: APjAAAWVq0K/bbzwn+P2WPhi8OC8la7qlsTd+hzXWW7Z6AgoM9bFFad+
 upnug4Q4kWCzN0tO6UKA7AA=
X-Google-Smtp-Source: APXvYqxLgZZp8dRx+235z7zeWM0VipdZpdCKaTpXx1UHQqceBy9vtL3bq/8k8Pcs5pOiFl+pEr3S6A==
X-Received: by 2002:a7b:c7c4:: with SMTP id z4mr5852648wmk.13.1567009298472;
 Wed, 28 Aug 2019 09:21:38 -0700 (PDT)
Received: from gatosaldo (host111-46-dynamic.5-87-r.retail.telecomitalia.it.
 [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id a190sm4714045wme.8.2019.08.28.09.21.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 09:21:37 -0700 (PDT)
Date: Wed, 28 Aug 2019 18:21:35 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
In-Reply-To: <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
Message-ID: <alpine.LNX.2.21.99999.352.1908281820530.3996@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
 <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323328-1820102857-1567009133=:3941"
Content-ID: <alpine.LNX.2.21.99999.352.1908281820510.3996@localhost.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_092140_182892_40CF3FFA 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
 (Fritz_Box_HW198))
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1820102857-1567009133=:3941
Content-Type: text/plain; CHARSET=US-ASCII; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.LNX.2.21.99999.352.1908281820511.3996@localhost.localdomain>

Dear OpenWRt list,
Dear Martin,
Dear Hauke,
TL;DR:
Can you help me out with the DTS? I have no access to datasheets and I couldn't recover useful infos from the original firmware...
Attached my DTS

I am still trying to port a FRITZ!BOX3272 device to OpenWRt.
I tried to grab as much informations as I could, but I am arriving to the conclusion I hould be doing something really wrong.

First of all, the kernel panics due to a data abort at
linux-4.19.66/arch/mips/lantiq/xway/sysctrl.c, line 478
/* make sure to unprotect the memory region where flash is located */
ltq_ebu_w32(ltq_ebu_r32(LTQ_EBU_BUSCON0) & ~EBU_WRDIS, LTQ_EBU_BUSCON0);

Secondly, commenting out this line just to see how it goes, I can see the kernel fails to communicate with the PMU - and...


ROM VER: 1.1.0
CFG 05
??K ]Y
QQK [-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\][|][/][-][\]
(AVM) EVA Revision: 1.1787 Version: 2787
(C) Copyright 2005 AVM Date: Jul  2 2013 Time: 14:06:16 (0) 3 0x0-0x640D

[FLASH:] MACRONIX Uniform-Flash 256kB 256 Bytes WriteBuffer
[FLASH:](Eraseregion [0] 4 sectors a 64kB) 
[NAND:] 128MB MICRON 2048 Pagesize 128k Blocksize 1024 Blocks 8Bit 1 CS HW
[SYSTEM:] AR10 on 500MHz/250MHz/250MHz

..
Eva_AVM >







......................................................................................[    0.000000] Linux version 4.19.66 (mrkiko@mStation) (gcc version 7.4.0 (OpenWrt GCC 7.4.0 r10863-e1dcfe02b2)) #0 SMP Mon Aug 26 16:21:13 2019
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
[    0.000000] Writing ErrCtl register=0005e001
[    0.000000] Readback ErrCtl register=0005e001
[    0.000000] Memory: 119040K/131072K available (5207K kernel code, 244K rwdata, 1524K rodata, 3376K init, 232K bss, 12032K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] NR_IRQS: 256
[    0.000000] deactivating PMU module failed!
[    0.000000] deactivating PMU module failed!
[    0.000000] deactivating PMU module failed!
[    0.000000] deactivating PMU module failed!
[    0.000000] deactivating PMU module failed!
[    0.000000] deactivating PMU module failed!
[    0.000000] CPU Clock: 333MHz
[    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 11467562725 ns
[    0.000018] sched_clock: 32 bits at 166MHz, resolution 6ns, wraps every 12884901885ns
[    0.012007] Calibrating delay loop... 221.18 BogoMIPS (lpj=442368)
[    0.061151] pid_max: default: 32768 minimum: 301
[    0.068623] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.078403] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.094666] rcu: Hierarchical SRCU implementation.
[    0.107511] smp: Bringing up secondary CPUs ...
[    0.116087] Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
[    0.116110] Primary data cache 32kB, 4-way, VIPT, cache aliases, linesize 32 bytes
[    0.116322] CPU1 revision is: 00019556 (MIPS 34Kc)
[    0.154525] Synchronize counters for CPU 1: done.
[    0.191066] smp: Brought up 1 node, 2 CPUs
[    0.203823] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.218332] futex hash table entries: 512 (order: 2, 16384 bytes)
[    0.227998] pinctrl core: initialized pinctrl subsystem
[    0.239219] NET: Registered protocol family 16
[    0.266660] dcdc-xrx200 1f106a00.dcdc: Core Voltage : 2040 mV
[    0.284358] pinctrl-xway 1e100b10.pinmux: Init done
[    0.393775] Kernel panic - not syncing: activating PMU module failed!
[    0.403243] Rebooting in 1 seconds..
[    2.864189] Reboot failed -- System halted


Here is my DTS - I adapted it by reading around in the dt-bindings documentation...

#include <dt-bindings/gpio/gpio.h>

/ {
 	#address-cells = <1>;
 	#size-cells = <1>;
 	compatible = "lantiq,xway", "lantiq,ar10";

 	aliases {
 		serial0 = &asc1;
 	};

 	chosen {
 		stdout-path = "serial0:115200n8";
 	};

 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;

 		cpu@0 {
 			compatible = "mips,mips34Kc";
 			reg = <0>;
 		};
 	};

 	cputemp {
 		compatible = "lantiq,cputemp";
 	};

 	reboot {
 		compatible = "syscon-reboot";

 		regmap = <&rcu0>;
 		offset = <0x10>;
 		mask = <0xe0000000>;
 	};

 	biu@1f800000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "lantiq,biu", "simple-bus";
 		reg = <0x1f800000 0x800000>;
 		ranges = <0x0 0x1f800000 0x7fffff>;

 		icu0: icu@80200 {
 			#interrupt-cells = <1>;
 			interrupt-controller;
 			compatible = "lantiq,icu";
 			reg = <0x80200 0x28
 				0x80228 0x28
 				0x80250 0x28
 				0x80278 0x28
 				0x802a0 0x28>;
 		};

 		watchdog@803f0 {
 			compatible = "lantiq,xrx100-wdt", "lantiq,xrx100-wdt";
 			reg = <0x803f0 0x10>;

 			regmap = <&rcu0>;
 		};
 	};

 	sram@1f000000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "lantiq,sram", "simple-bus";
 		reg = <0x1f000000 0x800000>;
 		ranges = <0x0 0x1f000000 0x7fffff>;

 		eiu0: eiu@101000 {
 			#interrupt-cells = <1>;
 			interrupt-controller;
 			compatible = "lantiq,eiu-xway";
 			reg = <0x101000 0x1000>;
 			interrupt-parent = <&icu0>;
 			lantiq,eiu-irqs = <166 135 66 40 41 42>;
 		};

 		pmu0: pmu@102000 {
 			compatible = "lantiq,pmu-xway";
 			reg = <0x102000 0x1000>;
 		};

 		cgu0: cgu@103000 {
 			compatible = "lantiq,cgu-xway";
 			reg = <0x103000 0x1000>;
 		};

 		dcdc@106a00 {
 			compatible = "lantiq,dcdc-xrx200";
 			reg = <0x106a00 0x200>;
 		};

 		vmmc: vmmc@107000 {
 			status = "disabled";
 			compatible = "lantiq,vmmc-xway";
 			reg = <0x107000 0x300>;
 			interrupt-parent = <&icu0>;
 			interrupts = <150 151 152 153 154 155>;
 		};

 		rcu0: rcu@203000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 			compatible = "lantiq,xrx200-rcu", "simple-mfd", "syscon";
 			reg = <0x203000 0x100>;
 			ranges = <0x0 0x203000 0x100>;
 			big-endian;

 			gphy0: gphy@20 {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0x20 0x4>;

 				resets = <&reset0 31 30>, <&reset1 7 7>;
 				reset-names = "gphy", "gphy2";
 			};

 			gphy1: gphy@68 {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0x68 0x4>;

 				resets = <&reset0 29 28>, <&reset1 6 6>;
 				reset-names = "gphy", "gphy2";
 			};

 			reset0: reset-controller@10 {
 				compatible = "lantiq,xrx200-reset";
 				reg = <0x10 4>, <0x14 4>;

 				#reset-cells = <2>;
 			};

 			reset1: reset-controller@48 {
 				compatible = "lantiq,xrx200-reset";
 				reg = <0x48 4>, <0x24 4>;

 				#reset-cells = <2>;
 			};

 			usb_phy0: usb2-phy@18 {
 				compatible = "lantiq,xrx300-usb2-phy";
 				reg = <0x18 4>, <0x38 4>;
 				status = "disabled";

 				resets = <&reset1 4 4>, <&reset0 4 4>;
 				reset-names = "phy", "ctrl";
 				#phy-cells = <0>;
 			};

 			usb_phy1: usb2-phy@34 {
 				compatible = "lantiq,xrx300-usb2-phy";
 				reg = <0x34 4>, <0x3c 4>;
 				status = "disabled";

 				resets = <&reset1 5 5>, <&reset0 4 4>;
 				reset-names = "phy", "ctrl";
 				#phy-cells = <0>;
 			};
 		};
 	};

 	fpi@10000000 {
 		compatible = "lantiq,xrx200-fpi", "simple-bus";
 		ranges = <0x0 0x10000000 0xf000000>;
 		reg =	<0x1f400000 0x1000>,
 			<0x10000000 0xf000000>;
 		regmap = <&rcu0>;
 		offset-endianness = <0x4c>;
 		#address-cells = <1>;
 		#size-cells = <1>;

 		localbus: localbus@0 {
 			#address-cells = <2>;
 			#size-cells = <1>;
 			ranges = <0 0 0x0 0x3ffffff /* addrsel0 */
 				1 0 0x4000000 0x4000010>; /* addsel1 */
 			compatible = "lantiq,localbus", "simple-bus";
 		};

 		gptu@e100a00 {
 			compatible = "lantiq,gptu-xway";
 			reg = <0xe100a00 0x100>;
 			interrupt-parent = <&icu0>;
 			interrupts = <126 127 128 129 130 131>;
 		};

 		usif: usif@da00000 {
 			compatible = "lantiq,usif";
 			reg = <0xda00000 0x1000000>;
 			interrupt-parent = <&icu0>;
 			interrupts = <29 125 107 108 109 110>;
 			status = "disabled";
 		};

 		spi: spi@e100800 {
 			compatible = "lantiq,xrx200-spi", "lantiq,xrx100-spi";
 			reg = <0xe100800 0x100>;
 			interrupt-parent = <&icu0>;
 			interrupts = <22 23 24>;
 			interrupt-names = "spi_rx", "spi_tx", "spi_err",
 					"spi_frm";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			status = "disabled";
 		};

 		gpio: pinmux@e100b10 {
 			compatible = "lantiq,xrx300-pinctrl";
 			#gpio-cells = <2>;
 			gpio-controller;
 			reg = <0xe100b10 0xa0>;
 		};

 		stp: stp@e100bb0 {
 			status = "disabled";
 			compatible = "lantiq,gpio-stp-xway";
 			reg = <0xe100bb0 0x40>;
 			#gpio-cells = <2>;
 			gpio-controller;

 			lantiq,shadow = <0xffffff>;
 			lantiq,groups = <0x7>;
 			lantiq,dsl = <0x0>;
 			lantiq,phy1 = <0x0>;
 			lantiq,phy2 = <0x0>;
 		};

 		asc1: serial@e100c00 {
 			compatible = "lantiq,asc";
 			reg = <0xe100c00 0x400>;
 			interrupt-parent = <&icu0>;
 			interrupts = <112 113 114>;
 		};

 		deu@e103100 {
 			compatible = "lantiq,deu-xrx200";
 			reg = <0xe103100 0xf00>;
 		};

 		dma0: dma@e104100 {
 			compatible = "lantiq,dma-xway";
 			reg = <0xe104100 0x800>;
 		};

 		ebu0: ebu@e105300 {
 			compatible = "lantiq,ebu-xway";
 			reg = <0xe105300 0x100>;
 		};

 		usb0: usb@e101000 {
 			status = "disabled";
 			compatible = "lantiq,xrx200-usb";
 			reg = <0xe101000 0x1000
 				0xe120000 0x3f000>;
 			interrupt-parent = <&icu0>;
 			interrupts = <62 91>;
 			dr_mode = "host";
 			phys = <&usb_phy0>;
 			phy-names = "usb2-phy";
 		};

 		usb1: usb@e106000 {
 			status = "disabled";
 			compatible = "lantiq,xrx200-usb";
 			reg = <0xe106000 0x1000>;
 			interrupt-parent = <&icu0>;
 			interrupts = <91>;
 			dr_mode = "host";
 			phys = <&usb_phy1>;
 			phy-names = "usb2-phy";
 		};

 		eth0: eth@e108000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "lantiq,xrx200-net";
 			reg = <	0xe108000 0x3000 /* switch */
 				0xe10b100 0x70 /* mdio */
 				0xe10b1d8 0x30 /* mii */
 				0xe10b308 0x30 /* pmac */
 			>;
 			interrupt-parent = <&icu0>;
 			interrupts = <75 73 72>;
 			resets = <&reset0 21 16>, <&reset0 8 8>;
 			reset-names = "switch", "ppe";
 			lantiq,phys = <&gphy0>, <&gphy1>;
 		};

 		mei@e116000 {
 			compatible = "lantiq,mei-xrx200";
 			reg = <0xe116000 0x9c>;
 			interrupt-parent = <&icu0>;
 			interrupts = <63>;
 		};

 		ppe@e234000 {
 			compatible = "lantiq,ppe-xrx200";
 			reg = <0xe234000 0x3ffd>;
 			interrupt-parent = <&icu0>;
 			interrupts = <96>;
 			resets = <&reset0 3 3>, <&reset0 11 11>, <&reset0 23 23>;
 			reset-names = "dsp", "dfe", "tc";
 		};

 		pcie0: pcie@d900000 {
 			compatible = "lantiq,pcie-xrx200";

 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;

 			reg = <0xd900000 0x1000>;

 			interrupt-parent = <&icu0>;
 			interrupts = <161 144>;

 			device_type = "pci";

 			gpio-reset = <&gpio 38 GPIO_ACTIVE_HIGH>;
 		};

 		pci0: pci@e105400 {
 			status = "disabled";

 			#address-cells = <3>;
 			#size-cells = <2>;
 			#interrupt-cells = <1>;
 			compatible = "lantiq,pci-xway";
 			bus-range = <0x0 0x0>;
 			ranges = <0x2000000 0 0x8000000 0x8000000 0 0x2000000   /* pci memory */
 				0x1000000 0 0x00000000 0xae00000 0 0x200000>; /* io space */
 			reg = <0x7000000 0x8000         /* config space */
 				0xe105400 0x400>;       /* pci bridge */
 			lantiq,bus-clock = <33333333>;
 			interrupt-map-mask = <0xf800 0x0 0x0 0x7>;
 			interrupt-map = <0x7000 0 0 1 &icu0 30 1>; /* slot 14, irq 30 */
 			req-mask = <0x1>; /* GNT1 */
 		};
 	};

};

thank for the help!

Enrico
--8323328-1820102857-1567009133=:3941
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323328-1820102857-1567009133=:3941--

