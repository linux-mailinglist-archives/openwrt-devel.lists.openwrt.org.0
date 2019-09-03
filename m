Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AB2A604B
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 06:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/aTEcMu6rfzcy3YGxmNaRX1YdTKTxLHd4Dhn5BDS+No=; b=a9ZGHbAE/mDVgvcnZFa4ZDr8b
	belGrkzokDa0QIQV3cElcjtHkWy7S0yxfXTZOd6veUR1gRwpoLztMArTDln33uCQZ288evE0+I5sp
	Qc3Bw+z+2pUhPj3cdxIM8tfhr/2u0XqS/DD3wmxUAv6wqkUfAbySkTb7QpzU10kdTl2+WWRt8uWPw
	B8gKilAXrbduhx7bP3UP25Ry/YW1y/yBwQ2ZWv+uFg2X6huznNc0nbjwxj8GJJyWXHH9AQ1EjUULA
	VbSu5tMqFsB6VNGD3SOe62dTzwdJHodl9RGT5pk2MX32FBp0xQj01lvT6ht+fMWDkJV1yTw3bbYMj
	gr+/ZisIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i50gA-0008W9-UZ; Tue, 03 Sep 2019 04:44:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i50fz-0008Vg-M3
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 04:44:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so15840390wrr.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Sep 2019 21:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=WgKAVaVVF7KacH9zny2SSIaGYGt2Igz7oZh+5bWDrbo=;
 b=hfF7oj5PLwVNMiPT0IxeinIEOwZ4tNpGSAj4O8HeFp9SmSqsAvSQOLIGVnPWqZM8Du
 JCYOqZ3sDfxx8ql85iaLrzZB3huEllub9iCYvnhzaqkFV4UxXzx+LIX5Xg9Lru3aSltE
 Iq7ZMPeAijy5Dgap6jT7geQIEsEIeDinwR3FwD0KcBx6rHB2JsdY4TeqeeDIWnjj4I1l
 FRFy9IfLushUNxJyGyAh39Xt6LrgXz8MEN31owIdKlBDivq/lslmR9CCD6RvaUKrCmiF
 ik4owv3mqvFBgHPaugKiqetU+XBc4CWEGtitrF9p02wzWXb41tSoTEXram/unOQoK76K
 aYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=WgKAVaVVF7KacH9zny2SSIaGYGt2Igz7oZh+5bWDrbo=;
 b=krdd95bFqmqYU8RB2Gy8CJ4a0iJV4BW2ZjJNpyPDOwcTWTxAtGqhwxMsJeA7UfNqaT
 VNViS777GGCsXPRd++vTOqduxg2t9HIOaxB6dn8S9zTdAGgU4YBkPSJuSybhC5VmkMIF
 7ddIzyovMbD1ktD+C64t/rpA3anDXEYN8pgix9QRNaE08Q2eAEoLJoTxlKI0gFX2uzxN
 N780jYJsxPyEpiTJwoHgjM+szPwpRxMJ89IsK74ZUtUaNp6tNyNNPp3YiLoo2nLNVK+v
 Nqky7VZWDjTQFI/kSzF7ZOHrsaSTdtzJcspBnBpP5wV+m1QwshEsco9BLarQtawO5GdA
 5+ww==
X-Gm-Message-State: APjAAAU/kVfNOWtPDgVdqhQ0hlJ7xTYR3V0lCD/WNd1oYzHcHliN27Oq
 CscwlQONmypXYE0AIUhc0gI=
X-Google-Smtp-Source: APXvYqxBD3zzxmWKJwBf92NtzHQma54gORjk32UIe5r4trLkl5v5xXRgNBcVl6mBYdsCb3iPQk4Ziw==
X-Received: by 2002:a5d:66c8:: with SMTP id k8mr40319500wrw.7.1567485857664;
 Mon, 02 Sep 2019 21:44:17 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id v4sm15572489wrg.56.2019.09.02.21.44.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 21:44:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id ad71aac8;
 Tue, 3 Sep 2019 04:44:14 +0000 (UTC)
Date: Tue, 3 Sep 2019 06:44:14 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <127c76e3-441e-816e-7168-fb1942e23484@hauke-m.de>
Message-ID: <alpine.LNX.2.21.99999.352.1909030643540.4670@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1909020530360.2689@localhost.localdomain>
 <127c76e3-441e-816e-7168-fb1942e23484@hauke-m.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-1013248798-1567485854=:4670"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_214419_754662_141AB42E 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1013248798-1567485854=:4670
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Dear Hauke,

Thanks!!

thank you for pointing me out at the teleko-speedport source code! I will compare and look at this very soon today.

So, with your help guys, I started from the vendor code in here:
http://osp.avm.de/fritzbox/fritzbox-3272/source-files-FRITZ.Box_3272-06.20.tar.gz

And started by writing an "arx300.dtsi" ifle - comparing with Bjorn's work, who he nicely provided, pointing me at it.
And pointing out I was using the wrong ebu address.

target/linux/lantiq/files/arch/mips/boot/dts/arx300.dtsi looks like:
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
 		cpu@0 {
 			compatible = "mips,mips34Kc";
 		};
 		cpu@1 {
 			compatible = "mips,mips34Kc";
 		};
 	};

 	memory@0 {
 		device_type = "memory";
 	};

 	cputemp@0 {
 		compatible = "lantiq,cputemp";
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

 		rcu0: rcu@203000 {
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

 			gphy1: gphy@58 {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0x58 0x4>;

 				resets = <&reset0 29 28>, <&reset1 6 6>;
 				reset-names = "gphy", "gphy2";
 			};

 			gphy2: gphy@ac {
 				compatible = "lantiq,xrx300-gphy";
 				reg = <0xac 0x4>;

 				resets = <&reset0 27 26>, <&reset1 5 5>;
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

 				resets = <&reset1 5 4>, <&reset0 4 4>;
 				reset-names = "phy", "ctrl";
 				#phy-cells = <0>;
 			};

 			reboot@10 {
 				compatible = "syscon-reboot";
 				reg = <0x10 4>;

 				regmap = <&rcu0>;
 				offset = <0x10>;
 				mask = <0xe0000000>;
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
 			interrupts = <120 121 122 123 124 125>;
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
 			interrupts = <105 107 108>;
 		};

 		deu@e103100 {
 			status = "disabled";
 			compatible = "lantiq,deu-xrx200";
 			reg = <0xe103100 0xf00>;
 		};

 		dma0: dma@e104100 {
 			compatible = "lantiq,dma-xway";
 			reg = <0xe104100 0x800>;
 		};

 		ebu0: ebu@6000000 {
 			compatible = "lantiq,ebu-xway";
 			reg = <0x6000000 0x100>;
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
 			lantiq,phys = <&gphy0>, <&gphy1>, <&gphy2>;
 		};

 		ppe@e234000 {
 			compatible = "lantiq,ppe-xrx200";
 			interrupt-parent = <&icu0>;
 			interrupts = <96>;
 		};
 	};

};


target/linux/lantiq/files/arch/mips/boot/dts/FRITZ3272.dts (a placeholder for now):

// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
/dts-v1/;

#include "arx300.dtsi"

#include <dt-bindings/input/input.h>
#include <dt-bindings/mips/lantiq_rcu_gphy.h>

/ {
 	compatible = "avm,fritz3272", "lantiq,xway", "lantiq,arx300";
 	model = "AVM FRITZ!Box 3272";

 	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x8000000>;
 	};
};



Thank you very very much for all the help!
Enrico


On Mon, 2 Sep 2019, Hauke Mehrtens wrote:

> Date: Mon, 2 Sep 2019 20:41:29
> From: Hauke Mehrtens <hauke@hauke-m.de>
> To: Enrico Mioso <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [lantiq] general help on AR10 platform
> 
> On 9/2/19 5:38 AM, Enrico Mioso wrote:
>> Hello guys,
>> Hello Hauke,
>>
>> Sorry for the amount of mails.
>
> Did you had a look at this vendor device tree file:
> https://gitlab.com/gplmirror/telekom-speedport-w925v/blob/master/w925_1.5.001.7_opensource/extern/lantiq-bsp/ugw711-grx550/UGW-7.1.1-SW-CD/Sources/UGW-7.1.1/ugw/target/linux/lantiq/dts/xRX330.dtsi
>
> The arch code is added by these patches on top of kernel 3.10.X:
> https://gitlab.com/gplmirror/telekom-speedport-w925v/tree/master/w925_1.5.001.7_opensource/extern/lantiq-bsp/ugw711-grx550/UGW-7.1.1-SW-CD/Sources/UGW-7.1.1/ugw/target/linux/lantiq/patches-3.10
>
> The AR10 is probably partly working wih these kernel patches.
>
>> So in I patched the kernel to be more specific on PMU error messages,
>> since it seems something is fundamentally wrong here:
>> the system panics like
>>
>> [    0.000000] SoC: xRX300 rev 1.2
>> [    0.000000] bootconsole [early0] enabled
>
> Do you use the compatible string lantiq,ar10 for the device?
>
>> [    0.000000] CPU0 revision is: 00019556 (MIPS 34Kc)
>> [    0.000000] MIPS: machine is AVM FRITZ!Box 3272
>> [    0.000000] Determined physical RAM map:
>> [    0.000000]  memory: 08000000 @ 00000000 (usable)
>> [    0.000000] Initrd not found or empty - disabling initrd
>> [    0.000000] Detected 1 available secondary CPU(s)
>> [    0.000000] Primary instruction cache 32kB, VIPT, 4-way, linesize 32
>> bytes.
>> [    0.000000] Primary data cache 32kB, 4-way, VIPT, cache aliases,
>> linesize 32 bytes
>> [    0.000000] Zone ranges:
>> [    0.000000]   Normal   [mem 0x0000000000000000-0x0000000007ffffff]
>> [    0.000000] Movable zone start for each node
>> [    0.000000] Early memory node ranges
>> [    0.000000]   node   0: [mem 0x0000000000000000-0x0000000007ffffff]
>> [    0.000000] Initmem setup node 0 [mem
>> 0x0000000000000000-0x0000000007ffffff]
>> [    0.000000] random: get_random_bytes called from
>> start_kernel+0x98/0x4dc with crng_init=0
>> [    0.000000] percpu: Embedded 14 pages/cpu s26256 r8192 d22896 u57344
>> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 32480
>> [    0.000000] Kernel command line: [    0.000000] Dentry cache hash
>> table entries: 16384 (order: 4, 65536 bytes)
>> [    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
>> [    0.000000] Writing ErrCtl register=00050000
>> [    0.000000] Readback ErrCtl register=00050000
>> [    0.000000] Memory: 119048K/131072K available (5210K kernel code,
>> 241K rwdata, 1524K rodata, 3376K init, 232K bss, 12024K reserved, 0K
>> cma-reserved)
>> [    0.000000] SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
>> [    0.000000] rcu: Hierarchical RCU implementation.
>> [    0.000000] NR_IRQS: 256
>> [    0.000000] deactivating PMU module 0 (clock gate) failed!
>> [    0.000000] deactivating PMU module 0 (clock gate) failed!
>> [    0.000000] deactivating PMU module 0 (clock gate) failed!
>> [    0.000000] deactivating PMU module 0 (clock gate) failed!
>> [    0.000000] deactivating PMU module 0 (clock gate) failed!
>> [    0.000000] deactivating PMU module 0 (clock gate) failed!
>
> Did you add the PUM like this:
>
> 		pmu0: pmu@102000 {
> 			compatible = "lantiq,pmu-xway";
> 			reg = <0x102000 0x1000>;
> 		};
>
> Please share your device tree and the other changes you did.
>
>> [    0.000000] CPU Clock: 333MHz
>> [    0.000000] clocksource: MIPS: mask: 0xffffffff max_cycles:
>> 0xffffffff, max_idle_ns: 11467562725 ns
>> [    0.000018] sched_clock: 32 bits at 166MHz, resolution 6ns, wraps
>> every 12884901885ns
>> [    0.012011] Calibrating delay loop... 221.18 BogoMIPS (lpj=442368)
>> [    0.061193] pid_max: default: 32768 minimum: 301
>> [    0.068648] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
>> [    0.078418] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
>> bytes)
>> [    0.094717] rcu: Hierarchical SRCU implementation.
>> [    0.107625] smp: Bringing up secondary CPUs ...
>> [    0.116227] Primary instruction cache 32kB, VIPT, 4-way, linesize 32
>> bytes.
>> [    0.116249] Primary data cache 32kB, 4-way, VIPT, cache aliases,
>> linesize 32 bytes
>> [    0.116461] CPU1 revision is: 00019556 (MIPS 34Kc)
>> [    0.154663] Synchronize counters for CPU 1: done.
>> [    0.191216] smp: Brought up 1 node, 2 CPUs
>> [    0.202371] clocksource: jiffies: mask: 0xffffffff max_cycles:
>> 0xffffffff, max_idle_ns: 7645041785100000 ns
>> [    0.216869] futex hash table entries: 512 (order: 2, 16384 bytes)
>> [    0.226527] pinctrl core: initialized pinctrl subsystem
>> [    0.237723] NET: Registered protocol family 16
>> [    0.265485] dcdc-xrx200 1f106a00.dcdc: Core Voltage : 2040 mV
>> [    0.284748] pinctrl-xway 1e100b10.pinmux: Init done
>> [    0.393384] Kernel panic - not syncing: activating PMU module 0
>> (clock gate) failed!
>> [    0.404809] Rebooting in 1 seconds..
>> [    2.865738] Reboot failed -- System halted
>>
>> Secondly, I am encountering some issues in
>> int __init lq_gptu_init(void)
>> ... infact vendor firmware is not using
>> as I get a data abort at line 798 which reads:
>> timer_dev.number_of_timers = GPTU_ID_CFG * 2;
>>
>> and looking at the vendor firmware, they do something like
>> timer_dev.number_of_timers = 3 * 2;
>>
>> Where may I check for wrong things?
>> Thanks!!
>>
>> Enrico
>>
>> From 23bc8dd1d48bf7588f3aca1bf90c3999c0d05bcd Mon Sep 17 00:00:00 2001
>> From: Enrico Mioso <mrkiko.rs@gmail.com>
>> Date: Mon, 2 Sep 2019 05:04:19 +0200
>> Subject: [PATCH] lantiq: XWAY: report PMU module for which
>>  activation/deactivation failed
>>
>> Helps in diagnosing issues when porting new devices.
>>
>> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
>> ---
>>  arch/mips/lantiq/xway/sysctrl.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/mips/lantiq/xway/sysctrl.c
>> b/arch/mips/lantiq/xway/sysctrl.c
>> index c7f6dee..b30fdcc 100644
>> --- a/arch/mips/lantiq/xway/sysctrl.c
>> +++ b/arch/mips/lantiq/xway/sysctrl.c
>> @@ -165,7 +165,7 @@ void ltq_pmu_enable(unsigned int module)
>>      spin_unlock(&g_pmu_lock);
>>
>>      if (!retry)
>> -        panic("activating PMU module failed!");
>> +        panic("activating PMU module %u failed!",module);
>>  }
>>  EXPORT_SYMBOL(ltq_pmu_enable);
>>
>> @@ -180,7 +180,7 @@ void ltq_pmu_disable(unsigned int module)
>>      spin_unlock(&g_pmu_lock);
>>
>>      if (!retry)
>> -        pr_warn("deactivating PMU module failed!");
>> +        pr_warn("deactivating PMU module %u failed!",module);
>>  }
>>  EXPORT_SYMBOL(ltq_pmu_disable);
>>
>> @@ -218,7 +218,7 @@ static int pmu_enable(struct clk *clk)
>>      }
>>
>>      if (!retry)
>> -        panic("activating PMU module failed!");
>> +        panic("activating PMU module %u (clock gate)
>> failed!",clk->module);
>>
>>      return 0;
>>  }
>> @@ -243,7 +243,7 @@ static void pmu_disable(struct clk *clk)
>>      }
>>
>>      if (!retry)
>> -        pr_warn("deactivating PMU module failed!");
>> +        pr_warn("deactivating PMU module %u (clock gate)
>> failed!",clk->module);
>>  }
>>
>>  static void usb_set_clock(void)
>
>
>
--8323328-1013248798-1567485854=:4670
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323328-1013248798-1567485854=:4670--

