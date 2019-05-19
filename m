Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDE82265E
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 May 2019 11:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0z4w7Z+Fo7s81wQRMD46iMRbav20ccmetcoRtJqUgyI=; b=kXk+WhE5VZ+/cb
	HsCis1oia1PVqjVQhDpebbibyzz6+Ir9tnbUw189QbioOPRtAJJU4HJqFrybCyBf9Np2eKIODbC2h
	XluuESItxu0ngaRQH3s+0iaRiKkz0nGdxAyPJmaNF2JFIgOFQIlV+/RB5JB5newueeyffWxk/vkYp
	KOiGK02tuhrlKwBX5wth7mmM0x2wB0ZYZx19IIKQLR4TYdfcD6o9okUWyxV7YPAe1xTa6fqAEwm6s
	l/bsEsybCD+YGoNXaQOIVG393ZSqgA+28RCVnkHK2D6+fvTgr51nBcLVif36QOwkFj7tClc8rQrB3
	nwMpgbIeuINl7o4ZWYOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSI3S-0004oz-77; Sun, 19 May 2019 09:24:30 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSI3K-0004oU-GK
 for openwrt-devel@lists.openwrt.org; Sun, 19 May 2019 09:24:25 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id DD55AA0163;
 Sun, 19 May 2019 11:24:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id 9PD-jT2nWUhk; Sun, 19 May 2019 11:24:07 +0200 (CEST)
To: Petr Cvek <petrcvekcz@gmail.com>, openwrt-devel@lists.openwrt.org
References: <40efd247-c72d-c341-de31-b46ac9b3ad69@gmail.com>
 <3c63292c-c97e-b0a2-47f6-f0b84d276902@hauke-m.de>
 <123cc18d-1bc3-9973-1c7a-a8d7a4f652db@hauke-m.de>
 <308d3f1c-9dd5-ed22-5d4c-7ac48e59a31c@gmail.com>
 <f237b8c1-084f-5392-94db-d9d85b390024@hauke-m.de>
 <7861b2ce-21e7-d1d9-6339-61056f9dfa8f@gmail.com>
From: Hauke Mehrtens <hauke@hauke-m.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
 U9K2P2+nz7is4sF1hNVarw==
Message-ID: <c05dbe29-30d8-2223-406f-81d6aed875b7@hauke-m.de>
Date: Sun, 19 May 2019 11:24:05 +0200
MIME-Version: 1.0
In-Reply-To: <7861b2ce-21e7-d1d9-6339-61056f9dfa8f@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_022422_844193_B8580535 
X-CRM114-Status: GOOD (  40.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [RFC] [PATCH v4] lantiq: IRQ balancing,
 ethernet driver, wave300
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

On 5/18/19 4:08 AM, Petr Cvek wrote:
> Hi again,
> 
> I'm finishing the ethernet driver and it is still sort of slow for my
> taste, but it seems I've reached the hardware limit.

Will you send these patches also to the upstream kernel? I would like to
see the improvements to the DMA controller and the scatter DMA in the
mainline kernel then we do not have to maintain this separately in
OpenWrt any more.

> As someone who well knows the internals of the SoC, could you guess the
> maximum hardware possible speed of TX bandwidth speed (roughly big
> saturated UDP packets)?
> 
> If I'm evaluating this correctly, there is DDR2 controller @250MHz... I
> don't know if 250MHz is the bus speed as my modem has DDR2-800 chip,
> which means 400MHz bus speed (pretty big 150MHz reserve).

I would not be surprised if the RAM is running with a lower frequency
than what would be supported by the RAM chips, but I haven't checked
what is the maximum supported frequency by the SoC itself.

> But if I'm right that would mean the data are transferred at 500MT/s
> over 16bit bus. So the continuous construction of the UDP packets in CPU
> (500MHZ@32bit) would ate the whole RAM bandwidth.
> 
> This result seems wrong as the VPE needs to load instructions too and
> there is up to 4 threads. And most importantly there are the gigabit
> switch with multiple ports and PCI(e) peripherals too.
> 
> Anyway my measurements shows the saturated UDP traffic on localhost
> interface are only up to around 400Mbit/s and they are only mem/cache
> transfers.
> 
> Am I right? Is it impossible to obtain the full 1Gbit/s with vrx-268?

The SoC and many of the competition SoCs are not build to handle all the
traffic in Linux. This SoC is designed that the data traffic should be
handled by the hardware or some specialized FW. There is even some SRAM
in the chip which is used by these HW blocks to avoid coping the data to
the RAM.

The VRX200 line has the GSWIP which can handle the layer 2 switching at
line rate (1 GBit/s) at least for normal packages sizes.

NAT, PPPoE and some other L3 handling is done by the PP32 hardware block
which runs a separate FW and also has some specialized HW blocks. This
block can also directly take packages from the DSL and wifi and forward
packages to these peripherals.

The CPU path is only used to learn a flow which is then later offloaded
to the hardware

Hauke

> 
> Best regards,
> 
> Petr
> 
> Dne 26. 03. 19 v 2:23 Hauke Mehrtens napsal(a):
>> On 3/26/19 1:24 AM, Petr Cvek wrote:
>>>
>>>
>>> Dne 26. 03. 19 v 0:45 Hauke Mehrtens napsal(a):
>>>> On 3/26/19 12:24 AM, Hauke Mehrtens wrote:
>>>>> Hi Petr
>>>>>
>>>>> On 3/14/19 6:46 AM, Petr Cvek wrote:
>>>>>> Hello again,
>>>>>>
>>>>>> I've managed to enhance few drivers for lantiq platform. They are still
>>>>>> in ugly commented form (ethernet part especially). But I need some hints
>>>>>> before the final version. The patches are based on a kernel 4.14.99.
>>>>>> Copy them into target/linux/lantiq/patches-4.14 (cleaned from any of my
>>>>>> previous patch).
>>>>>
>>>>> Thanks for working on this.
>>>>>
>>>>>> The eth+irq speedup is up to 360/260 Mbps (the vanilla was 170/80 on my
>>>>>> setup). The iperf3 benchmark (2 passes for both vanilla and changed
>>>>>> versions) altogether with script are in the attachment.
>>>>>>
>>>>>> 1) IRQ with SMP and balancing support:
>>>>>>
>>>>>> 	0901-add-icu-smp-support.patch
>>>>>> 	0902-enable-external-irqs-for-second-vpe.patch
>>>>>> 	0903-add-icu1-node-for-smp.patch
>>>>>>
>>>>>> As requested I've changed the patch heavily. The original locking from
>>>>>> k3b source code (probably from UGW) didn't work and in heavy load the
>>>>>> system could have froze (smp affinity change during irq handling). This
>>>>>> version has this fixed by using generic raw spinlocks with irq.
>>>>>>
>>>>>> The SMP IRQ now works in a way that before every irq_enable (serves as
>>>>>> unmask too) the VPE will be switched. This can be limited by writing
>>>>>> into /proc/irq/X/smp_affinity (it can be possibly balanced from
>>>>>> userspace too).
>>>>>>
>>>>>> I've rewritten the device tree reg fields so there are only 2 arrays
>>>>>> now. One per an icu controller. The original one per module was
>>>>>> redundant as the ranges were continuous. The modules of a single ICU are
>>>>>> now explicitly computed in a macro:
>>>>>>
>>>>>> 	ltq_w32((x), ltq_icu_membase[vpe] + m*0x28 + (y))
>>>>>> 	ltq_r32(ltq_icu_membase[vpe] + m*0x28 + (x))
>>>>>>
>>>>>> before there was a pointer for every 0x28 block (there shouldn't be
>>>>>> speed downgrade, only a multiplication and an addition for every
>>>>>> register access).
>>>>>>
>>>>>> Also I've simplified register names from LTQ_ICU_IM0_ISR to LTQ_ICU_ISR
>>>>>> as "IM0" (module) was confusing (the real module number 0-4 was a part
>>>>>> of the macro).
>>>>>>
>>>>>> The code is written in a way it should work fine on a uniprocessor
>>>>>> configuration (as the for_each_present_cpu etc macros will cycle on a
>>>>>> single VPE on uniprocessor). I didn't test the no CONFIG_SMP yet, but I
>>>>>> did check it with "nosmp" kernel parameter. It works.
>>>>>>
>>>>>> Anyway please test if you have the board where the second VPE is used
>>>>>> for FXS.
>>>>>>
>>>>>> The new device tree structure is now incompatible with an old version of
>>>>>> the driver (and old device tree with the new driver too). It seems icu
>>>>>> driver is used in Danube, AR9, AmazonSE and Falcon chipset too. I don't
>>>>>> know the hardware for these boards so before a final patch I would like
>>>>>> to know if they have a second ICU too (at 0x80300 offset).
>>>>>
>>>>> Normally the device tree should stay stable, but I already though about
>>>>> the same change and I am not aware that any device ships a U-Boot with
>>>>> an embedded device tree, so this should be fine.
>>>>>
>>>>> The Amazon and Amazon SE only have one ICU block because they only have
>>>>> one CPU with one VPE.
>>>>> The Danube SoC has two ICU blocks one for each CPU, each CPU only has
>>>>> one VPE. The CPUs are not cache coherent, SMP is not possible.
>>>>>
>>>>> Falcon, AR9, VR9, AR10, ARX300, GRX300, GRX330 have two ICU blocks one
>>>>> for each VPE of the single CPU.
>>>>> GRX350 uses a MIPS InterAptiv CPU with a MIPS GIC.
>>>>>
>>>>>> More development could be done with locking probably. As only the
>>>>>> accesses in a single module (= 1 set of registers) would cause a race
>>>>>> condition. But as the most contented interrupts are in the same module
>>>>>> there won't be much speed increase IMO. I can add it if requested (just
>>>>>> spinlock array and some lookup code).
>>>>>
>>>>> I do not think that this improves the performance significantly, I
>>>>> assume that the CPUs only have to wait there in rare conditions anyway.
>>>>>
>>>>>> 2) Reworked lantiq xrx200 ethernet driver:
>>>>>>
>>>>>> 	0904-backport-vanilla-eth-driver.patch
>>>>>> 	0905-increase-dma-descriptors.patch
>>>>>> 	0906-increase-dma-burst-size.patch
>>>>>>
>>>>>> The code is still ugly, but stable now. There is a fragmented skb
>>>>>> support and napi polling. DMA ring buffer was increased so it handle
>>>>>> faster speeds and I've fixed some code weirdness. A can split the
>>>>>> changes in the future into separate patches.
>>>>>
>>>>> It would be nice if you could also do the same changes to the upstream
>>>>> driver in mainline Linux kernel and send this for inclusion to mainline
>>>>> Linux.
>>>>>
>>>>>> I didn't test the ICU and eth patches separate, but I've tested the
>>>>>> ethernet driver on a single VPE only (by setting smp affinity and
>>>>>> nosmp). This version of the ethernet driver was used for root over NFS
>>>>>> on the debug setup for like two weeks (without problems).
>>>>>>
>>>>>> Tell me if we should pursue the way for the second DMA channel to PPE so
>>>>>> both VPEs can send frames at the same time.
>>>>>
>>>>> I think it should be ok to use both DMA channels for the CPU traffic.
>>>>>
>>>>>> 3) WAVE300
>>>>>>
>>>>>> In the two past weeks I've tried to fix a mash together various versions
>>>>>> of wave300 wifi driver (there are partial version in GPL sources from
>>>>>> router vendors). And I've managed to put the driver into "not
>>>>>> immediately crashing" mode. If you are interested in the development,
>>>>>> there is a thread in openwrt forum. The source repo here:
>>>>>>
>>>>>> https://repo.or.cz/wave300.git
>>>>>> https://repo.or.cz/wave300_rflib.git
>>>>>>
>>>>>> (the second one must be copied into the first one)
>>>>>>
>>>>>> The driver will often crash when meeting an unknown packet, request for
>>>>>> encryption (no encryption support), unusual combination of configuration
>>>>>> or just by module unloading. The code is _really_ ugly and it will
>>>>>> server only as hardware specification for better GPL driver development.
>>>>>> If you want to help or you have some tips you can join the forum (there
>>>>>> are links for firmwares and intensive research of available source codes
>>>>>> from vendors).
>>>>>>
>>>>>> Links:
>>>>>> https://forum.openwrt.org/t/support-for-wave-300-wi-fi-chip/24690/129
>>>>>> https://forum.openwrt.org/t/how-can-we-make-the-lantiq-xrx200-devices-faster/9724/70
>>>>>> https://forum.openwrt.org/t/xrx200-irq-balancing-between-vpes/29732/25
>>>>>>
>>>>>> Petr
>>>>> Hauke
>>>>
>>>
>>> Hi
>>>
>>>> It would be nice if you could send your patches as single mails and
>>>> inline so I can easily comment on them.
>>>
>>> OK
>>>
>>>>
>>>> The DMA handling in the OpenWrt Ethernet driver is only more flexible to
>>>> handle arbitrary number of DMA channels, but I think this is not needed.
>>>>
>>>> The DMA memory is already 16 byte aligned, see the byte_offset variable
>>>> in xmit, so it should not be a problem to use the 4W DMA mode, I assume
>>>> that the hardware also takes care of this.
>>>>
>>>
>>> Yes it is 16 byte aligned in the original driver, but my patched driver
>>> is using 32 byte alignment (8W DMA mode). Using 32B bursts with 16B
>>> alignment caused crashing.
>>>
>>>> Why are the changes in arch/mips/kernel/smp-mt.c needed? this looks
>>>> strange to me.
>>>>
>>>
>>> That is interrupt masking. IP0 and IP1 are (I think) software interrupts
>>> for IPI communications, IP6/7 are timer (and something) and in IP2-IP5
>>> range, which is not enabled there are external IRQ signals for ICU.
>>> Without this set the second VPE only receives IPI and not ICU events.
>>>
>>> Basically I've set this MIPS C0 Status register to the same value as the
>>> C0 Status register for the first VPE.
>>
>> hmm strange, looks like there are not so many SoCs with multiple VPEs
>> which have an own IRQ controller.
>>
>>>> Changing LTQ_DMA_CPOLL could affect the latency of the system, but I
>>>> think your increase should not harm significantly.
>>>
>>> Yeah I've tested it, there is some minor impact on the maximal
>>> bandwidth. However I cannot set the value correctly without the model of
>>> xrx200 SoC (I assume this register controls the check frequency of the
>>> OWN bit of the first descriptor).
>>
>> Yes this is the polling frequency in fDMA/16, this value is global and
>> not per channel. The DMA controller will check the OWN bit on all
>> descriptors for all DMA channels where polling is activated with this
>> frequency. fDMA is the same as the FPI frequency, probably 250MHz.
>>
>>> I don't even know the clock and width
>>> of the bus between DMA and RAM (or between DMA and ethernet FIFO). But
>>> if the original value DMA_CLK_DIV4 means "every fourth clock" it seems
>>> too often for me (if a packet has like 1500 bytes, it would check many
>>> times before the packet is transferred). The highest values empirically
>>> lags the DMA descriptor ring.
>>
>> The DMA controller uses a 32 bit wide data path to the RAM and 28 bit
>> word addresses, a word for the DMA controller is 32 bit.
>>
>> The DMA controller can handle some priorities between the ports and
>> channels. When you activate PKTARB (BIT(31)) in DMA_CTRL the DMA
>> controller will transfer the complete packet before the arbitration is
>> changed. With MBRSTCNT (bit 25:16) in DMA_CTRL you can control after how
>> many burst the arbitration should be changed, when MBRSTARB (BIT(30)) in
>> DMA_CTRL is activated. Both is for TX and RX.
>>
>> Hauke
>>


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
