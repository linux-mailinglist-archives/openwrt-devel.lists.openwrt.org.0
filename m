Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F53C22131
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 May 2019 04:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4eLSAOs5imttmsUf2xygqrH5DGIhtuYPMUaqNOQOEc=; b=Xg0ldT1EuUB4iZ
	vliYW/pNULK/iI1k8RTIA/xpnp4MBldBF4TmagXsPBkivcLkYbGEcIDtmz7FMCIxupnmbthLEtjZR
	W1HsHiaB7VCDf1TXeqGA3FplBYra3KRzar6Ljluyx3GLieSurRS/9JrlI6aQucts+CgS+C13taxWq
	TwJpFtnsSWGZNvusMNs1WjhBD6+pWMhO4751ytNMd+cxO42/lrwXnA7o3/lv9j6E64/SckJAeqE+E
	yXO7/X8wBdKcwLPDRHyaN4k2f6tlc9HWEeaPWEx69nWNbiKBMruasyyeruPv/NTARB2wWeSemJvmu
	sRvHDQ6NOTaKguCJQk5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRokw-0008Ew-Ji; Sat, 18 May 2019 02:07:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRokp-0008Ea-If
 for openwrt-devel@lists.openwrt.org; Sat, 18 May 2019 02:07:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id j187so10392933wma.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 19:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=8oFZmuHAjyeMEgps6UqaNJkMG68FW7OXS124eU0T7LI=;
 b=HFW3o2qE2OnjxJqqmFhTa46bI3NZXzKQ8OXyVlky4YXzZA+8Ys2es+IU1gflKFJYg+
 0404r90ccSISyrvnnDYTNVDogVTK+lehMou7niRVEQgVLZvk5YJb3Rgjv3dlSNneHhdE
 NtZMDn6MX2GRkLl8TZsdepxbvZK6tsgI/ht1t7l4A8IXjQ+3WOAWkad2oCVz6cyQtEd3
 aVN6iAZL1KZswJGh8pm5OxTwVlKoTdB3YIe72Id7P1SMEk8v7Zz5SbLMAYVfOROYtWSw
 3p7Cs41osVw6m5nXxkSu1aVHjiU4sYI/tVUCfms10T2KIZSGX1hQl9mWNYE/7wGOT/eL
 OYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8oFZmuHAjyeMEgps6UqaNJkMG68FW7OXS124eU0T7LI=;
 b=gBo3TfFBf9RY21gph1SjjR42Ok3WStgdIrSpYvuZIV6Qq+NKXBLehu6uQRUv2GUbiR
 2hRNi8VbsM6S1xFXTsV8H8TozQHl6nv6dAO8Pd7j04ugx5+YoQeYftuHz+nHALIGZZEN
 5o6jTp1w6H6U3dUp+m38P4cI/dIU47SxODFdpn1BD+oXV9GxacpqZmpcHN2HR0PsazaD
 iFHsYDEtuiZryoiUm2HW2v/7MjWRTxwAlbZFjvk9bBdk9LwdT5GbS2Kw9J6ukZe2cpw/
 S8N1TtjR6xU0CR+uSbUU8YuZ9O+msZNaycXLAuzVBLsPti8YBWTeJg14mrQOBx17xK5n
 7RPw==
X-Gm-Message-State: APjAAAVu/7XAyPujnUDA4theAWr9/dz/ZliKdSkSfaWNouiI3KfZJGK1
 e94O59Zoz3VDcHsLrWLxquvOPZe6
X-Google-Smtp-Source: APXvYqziIP3lQFUxeRXGAWNKcuu9M5PGCe9TsDe0DedPIIDLzqhBgwT+6YOuLMdip8rEP9u+uSHxxQ==
X-Received: by 2002:a1c:8004:: with SMTP id b4mr32701491wmd.79.1558145237382; 
 Fri, 17 May 2019 19:07:17 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-915b-387e-1507-33c4.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:915b:387e:1507:33c4])
 by smtp.gmail.com with ESMTPSA id a184sm11010898wmh.36.2019.05.17.19.07.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 19:07:16 -0700 (PDT)
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <40efd247-c72d-c341-de31-b46ac9b3ad69@gmail.com>
 <3c63292c-c97e-b0a2-47f6-f0b84d276902@hauke-m.de>
 <123cc18d-1bc3-9973-1c7a-a8d7a4f652db@hauke-m.de>
 <308d3f1c-9dd5-ed22-5d4c-7ac48e59a31c@gmail.com>
 <f237b8c1-084f-5392-94db-d9d85b390024@hauke-m.de>
From: Petr Cvek <petrcvekcz@gmail.com>
Message-ID: <7861b2ce-21e7-d1d9-6339-61056f9dfa8f@gmail.com>
Date: Sat, 18 May 2019 04:08:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f237b8c1-084f-5392-94db-d9d85b390024@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_190719_647072_0731CE12 
X-CRM114-Status: GOOD (  41.39  )
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
 provider (petrcvekcz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi again,

I'm finishing the ethernet driver and it is still sort of slow for my
taste, but it seems I've reached the hardware limit.

As someone who well knows the internals of the SoC, could you guess the
maximum hardware possible speed of TX bandwidth speed (roughly big
saturated UDP packets)?

If I'm evaluating this correctly, there is DDR2 controller @250MHz... I
don't know if 250MHz is the bus speed as my modem has DDR2-800 chip,
which means 400MHz bus speed (pretty big 150MHz reserve).

But if I'm right that would mean the data are transferred at 500MT/s
over 16bit bus. So the continuous construction of the UDP packets in CPU
(500MHZ@32bit) would ate the whole RAM bandwidth.

This result seems wrong as the VPE needs to load instructions too and
there is up to 4 threads. And most importantly there are the gigabit
switch with multiple ports and PCI(e) peripherals too.

Anyway my measurements shows the saturated UDP traffic on localhost
interface are only up to around 400Mbit/s and they are only mem/cache
transfers.

Am I right? Is it impossible to obtain the full 1Gbit/s with vrx-268?

Best regards,

Petr

Dne 26. 03. 19 v 2:23 Hauke Mehrtens napsal(a):
> On 3/26/19 1:24 AM, Petr Cvek wrote:
>>
>>
>> Dne 26. 03. 19 v 0:45 Hauke Mehrtens napsal(a):
>>> On 3/26/19 12:24 AM, Hauke Mehrtens wrote:
>>>> Hi Petr
>>>>
>>>> On 3/14/19 6:46 AM, Petr Cvek wrote:
>>>>> Hello again,
>>>>>
>>>>> I've managed to enhance few drivers for lantiq platform. They are still
>>>>> in ugly commented form (ethernet part especially). But I need some hints
>>>>> before the final version. The patches are based on a kernel 4.14.99.
>>>>> Copy them into target/linux/lantiq/patches-4.14 (cleaned from any of my
>>>>> previous patch).
>>>>
>>>> Thanks for working on this.
>>>>
>>>>> The eth+irq speedup is up to 360/260 Mbps (the vanilla was 170/80 on my
>>>>> setup). The iperf3 benchmark (2 passes for both vanilla and changed
>>>>> versions) altogether with script are in the attachment.
>>>>>
>>>>> 1) IRQ with SMP and balancing support:
>>>>>
>>>>> 	0901-add-icu-smp-support.patch
>>>>> 	0902-enable-external-irqs-for-second-vpe.patch
>>>>> 	0903-add-icu1-node-for-smp.patch
>>>>>
>>>>> As requested I've changed the patch heavily. The original locking from
>>>>> k3b source code (probably from UGW) didn't work and in heavy load the
>>>>> system could have froze (smp affinity change during irq handling). This
>>>>> version has this fixed by using generic raw spinlocks with irq.
>>>>>
>>>>> The SMP IRQ now works in a way that before every irq_enable (serves as
>>>>> unmask too) the VPE will be switched. This can be limited by writing
>>>>> into /proc/irq/X/smp_affinity (it can be possibly balanced from
>>>>> userspace too).
>>>>>
>>>>> I've rewritten the device tree reg fields so there are only 2 arrays
>>>>> now. One per an icu controller. The original one per module was
>>>>> redundant as the ranges were continuous. The modules of a single ICU are
>>>>> now explicitly computed in a macro:
>>>>>
>>>>> 	ltq_w32((x), ltq_icu_membase[vpe] + m*0x28 + (y))
>>>>> 	ltq_r32(ltq_icu_membase[vpe] + m*0x28 + (x))
>>>>>
>>>>> before there was a pointer for every 0x28 block (there shouldn't be
>>>>> speed downgrade, only a multiplication and an addition for every
>>>>> register access).
>>>>>
>>>>> Also I've simplified register names from LTQ_ICU_IM0_ISR to LTQ_ICU_ISR
>>>>> as "IM0" (module) was confusing (the real module number 0-4 was a part
>>>>> of the macro).
>>>>>
>>>>> The code is written in a way it should work fine on a uniprocessor
>>>>> configuration (as the for_each_present_cpu etc macros will cycle on a
>>>>> single VPE on uniprocessor). I didn't test the no CONFIG_SMP yet, but I
>>>>> did check it with "nosmp" kernel parameter. It works.
>>>>>
>>>>> Anyway please test if you have the board where the second VPE is used
>>>>> for FXS.
>>>>>
>>>>> The new device tree structure is now incompatible with an old version of
>>>>> the driver (and old device tree with the new driver too). It seems icu
>>>>> driver is used in Danube, AR9, AmazonSE and Falcon chipset too. I don't
>>>>> know the hardware for these boards so before a final patch I would like
>>>>> to know if they have a second ICU too (at 0x80300 offset).
>>>>
>>>> Normally the device tree should stay stable, but I already though about
>>>> the same change and I am not aware that any device ships a U-Boot with
>>>> an embedded device tree, so this should be fine.
>>>>
>>>> The Amazon and Amazon SE only have one ICU block because they only have
>>>> one CPU with one VPE.
>>>> The Danube SoC has two ICU blocks one for each CPU, each CPU only has
>>>> one VPE. The CPUs are not cache coherent, SMP is not possible.
>>>>
>>>> Falcon, AR9, VR9, AR10, ARX300, GRX300, GRX330 have two ICU blocks one
>>>> for each VPE of the single CPU.
>>>> GRX350 uses a MIPS InterAptiv CPU with a MIPS GIC.
>>>>
>>>>> More development could be done with locking probably. As only the
>>>>> accesses in a single module (= 1 set of registers) would cause a race
>>>>> condition. But as the most contented interrupts are in the same module
>>>>> there won't be much speed increase IMO. I can add it if requested (just
>>>>> spinlock array and some lookup code).
>>>>
>>>> I do not think that this improves the performance significantly, I
>>>> assume that the CPUs only have to wait there in rare conditions anyway.
>>>>
>>>>> 2) Reworked lantiq xrx200 ethernet driver:
>>>>>
>>>>> 	0904-backport-vanilla-eth-driver.patch
>>>>> 	0905-increase-dma-descriptors.patch
>>>>> 	0906-increase-dma-burst-size.patch
>>>>>
>>>>> The code is still ugly, but stable now. There is a fragmented skb
>>>>> support and napi polling. DMA ring buffer was increased so it handle
>>>>> faster speeds and I've fixed some code weirdness. A can split the
>>>>> changes in the future into separate patches.
>>>>
>>>> It would be nice if you could also do the same changes to the upstream
>>>> driver in mainline Linux kernel and send this for inclusion to mainline
>>>> Linux.
>>>>
>>>>> I didn't test the ICU and eth patches separate, but I've tested the
>>>>> ethernet driver on a single VPE only (by setting smp affinity and
>>>>> nosmp). This version of the ethernet driver was used for root over NFS
>>>>> on the debug setup for like two weeks (without problems).
>>>>>
>>>>> Tell me if we should pursue the way for the second DMA channel to PPE so
>>>>> both VPEs can send frames at the same time.
>>>>
>>>> I think it should be ok to use both DMA channels for the CPU traffic.
>>>>
>>>>> 3) WAVE300
>>>>>
>>>>> In the two past weeks I've tried to fix a mash together various versions
>>>>> of wave300 wifi driver (there are partial version in GPL sources from
>>>>> router vendors). And I've managed to put the driver into "not
>>>>> immediately crashing" mode. If you are interested in the development,
>>>>> there is a thread in openwrt forum. The source repo here:
>>>>>
>>>>> https://repo.or.cz/wave300.git
>>>>> https://repo.or.cz/wave300_rflib.git
>>>>>
>>>>> (the second one must be copied into the first one)
>>>>>
>>>>> The driver will often crash when meeting an unknown packet, request for
>>>>> encryption (no encryption support), unusual combination of configuration
>>>>> or just by module unloading. The code is _really_ ugly and it will
>>>>> server only as hardware specification for better GPL driver development.
>>>>> If you want to help or you have some tips you can join the forum (there
>>>>> are links for firmwares and intensive research of available source codes
>>>>> from vendors).
>>>>>
>>>>> Links:
>>>>> https://forum.openwrt.org/t/support-for-wave-300-wi-fi-chip/24690/129
>>>>> https://forum.openwrt.org/t/how-can-we-make-the-lantiq-xrx200-devices-faster/9724/70
>>>>> https://forum.openwrt.org/t/xrx200-irq-balancing-between-vpes/29732/25
>>>>>
>>>>> Petr
>>>> Hauke
>>>
>>
>> Hi
>>
>>> It would be nice if you could send your patches as single mails and
>>> inline so I can easily comment on them.
>>
>> OK
>>
>>>
>>> The DMA handling in the OpenWrt Ethernet driver is only more flexible to
>>> handle arbitrary number of DMA channels, but I think this is not needed.
>>>
>>> The DMA memory is already 16 byte aligned, see the byte_offset variable
>>> in xmit, so it should not be a problem to use the 4W DMA mode, I assume
>>> that the hardware also takes care of this.
>>>
>>
>> Yes it is 16 byte aligned in the original driver, but my patched driver
>> is using 32 byte alignment (8W DMA mode). Using 32B bursts with 16B
>> alignment caused crashing.
>>
>>> Why are the changes in arch/mips/kernel/smp-mt.c needed? this looks
>>> strange to me.
>>>
>>
>> That is interrupt masking. IP0 and IP1 are (I think) software interrupts
>> for IPI communications, IP6/7 are timer (and something) and in IP2-IP5
>> range, which is not enabled there are external IRQ signals for ICU.
>> Without this set the second VPE only receives IPI and not ICU events.
>>
>> Basically I've set this MIPS C0 Status register to the same value as the
>> C0 Status register for the first VPE.
> 
> hmm strange, looks like there are not so many SoCs with multiple VPEs
> which have an own IRQ controller.
> 
>>> Changing LTQ_DMA_CPOLL could affect the latency of the system, but I
>>> think your increase should not harm significantly.
>>
>> Yeah I've tested it, there is some minor impact on the maximal
>> bandwidth. However I cannot set the value correctly without the model of
>> xrx200 SoC (I assume this register controls the check frequency of the
>> OWN bit of the first descriptor).
> 
> Yes this is the polling frequency in fDMA/16, this value is global and
> not per channel. The DMA controller will check the OWN bit on all
> descriptors for all DMA channels where polling is activated with this
> frequency. fDMA is the same as the FPI frequency, probably 250MHz.
> 
>> I don't even know the clock and width
>> of the bus between DMA and RAM (or between DMA and ethernet FIFO). But
>> if the original value DMA_CLK_DIV4 means "every fourth clock" it seems
>> too often for me (if a packet has like 1500 bytes, it would check many
>> times before the packet is transferred). The highest values empirically
>> lags the DMA descriptor ring.
> 
> The DMA controller uses a 32 bit wide data path to the RAM and 28 bit
> word addresses, a word for the DMA controller is 32 bit.
> 
> The DMA controller can handle some priorities between the ports and
> channels. When you activate PKTARB (BIT(31)) in DMA_CTRL the DMA
> controller will transfer the complete packet before the arbitration is
> changed. With MBRSTCNT (bit 25:16) in DMA_CTRL you can control after how
> many burst the arbitration should be changed, when MBRSTARB (BIT(30)) in
> DMA_CTRL is activated. Both is for TX and RX.
> 
> Hauke
> 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
