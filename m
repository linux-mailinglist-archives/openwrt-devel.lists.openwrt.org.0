Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F832129E
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 05:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yMxvonCuiSg1TMCXDUV7uYSkDE8Jf6+0re6Y4n3vHAk=; b=JWMhsiyUms9ZVV
	BrQ+qpbCuqWYc9SD3Qh0ZUajo0+npS7YX8dsecDx11PjO7P9iE3qeGLwKf/hLhmRMcxyDyBFEJPu1
	ljSlufD0HorP+bAvMAYo/GTzSJg7F8D9tEe90+o3BkQIgdxaHvKBqxOnxf/KgWp6kQy4Djb68BJa5
	ztoDM50darGpBvUEp/XKiDsteHTGHNkLfctvxwAs4zC5CgMyMz0bxmjUiz2fKZK6a+USTgqI58Xc6
	Bpzfc2mj8ElFecPqCeLbN0MZCTkXt4I5WFA3ZpQLtaHUkweRL9O9AvzMTdeBS3hh3cvKUXLwWD/6j
	HcHM4E+MTrI1q/dbKegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRTmI-0005xz-6G; Fri, 17 May 2019 03:43:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRTmA-0005xc-Ng
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 03:43:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id i3so5473840wml.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 20:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=Uo9YjlBzntrczO+lM93qFLwgjLWacdeQ4y4gViuYztQ=;
 b=WCu5h6s6be2TH4FoxGl3MTSsCOw6Fxagho4sb48wqyoV56Csgh9mdAeEolq3oBSi05
 BE8qiq9aP12i8hNnLYrtQSp2joXvn9zPGIN6XthZ16NYNSfW9GpGVqbFenHWbJQKWBnJ
 LpVMetG0IieiwScmHzQbumP/cHuiEZmLEQgMOHuzw5Bog4BaveuethGcg9mNxDGoTdCO
 48cbbJ4lv6RwiNi/0ra0fOPjwhBWIoeN8ZjWMM/dr3NffJJX/Ws1vlNnL0gR2bpol8gI
 rdKRFJHxhaoOQryihe2h14haMv1ruaOHYflTziotHsgeoZGcZ453ZuSgHgEdBHjOhaRZ
 fxBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=Uo9YjlBzntrczO+lM93qFLwgjLWacdeQ4y4gViuYztQ=;
 b=hbE0Jz1YdtUB0rQxtiSu+bQ7xeKO6FtktvOkkVTh3sfiLgKg+ozHNAmiH1YvI8zT7Q
 hLGeHsCtUOIOLBV3eC2yV9g7920PkxpJqiSfvrt6pPnc+Dxac1n6ocZMkduZDtLQs4U+
 y5GexcJDlTZGbqit8dgF354YFlGkARX3+r22DLnP3rETAWCrD/x8YPwjhzKuChizNjK1
 zbj9GzLUUJtIOr9bS1G2wD5qwhVrn0UMgOX5T1tt5IZMUbyIPDvnIZzBiasm3BKwpyH+
 69hOQLPEacb+aZEAGmjPKdNhQH5GSyFzmJXKU6heJEjSBxPrJTZf4AUL8hZeRpLE1Ip3
 lVOA==
X-Gm-Message-State: APjAAAVxy9hEsOgWW0XLv93zm4g0twTKITk9OhViASlB/j7c734ua/UC
 RVQhp9knEMdO2dLOF4sktIY=
X-Google-Smtp-Source: APXvYqwGbicvnH3bAesHJC+9d/aALBh0z7TocnAnG7HyXpPBVY0glUGNWip60Iiu5gfSYdGwHxGTMQ==
X-Received: by 2002:a1c:6502:: with SMTP id z2mr28474993wmb.119.1558064594789; 
 Thu, 16 May 2019 20:43:14 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-0531-875e-7921-7a78.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:531:875e:7921:7a78])
 by smtp.gmail.com with ESMTPSA id j46sm14045568wre.54.2019.05.16.20.43.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 20:43:14 -0700 (PDT)
From: Petr Cvek <petrcvekcz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
Date: Fri, 17 May 2019 05:44:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_204318_777391_11AB9F5F 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v5] kernel: lantiq: add support for SMP IRQ
 routing
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
Cc: pakahmar@hotmail.com, Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Some lantiq SoCs have multiple VPE support but no support for the IRQ
routing, so only the first VPE is receiving interrupts. This patch adds
support for rerouting interrupts to the other VPE. Basically it expands
the current ICU driver for the second controller, adds new address
ranges to the devicetree and fixes the interrupt masking on the second
core.
Some reg access locking was added too.

The mode of the operation is that userdefined IRQ affinity CPU mask is
either cycled between VPEs in every IRQ enable call
(AUTO_AFFINITY_ROTATION), or only the first VPE from affinity CPU mask
is used (AUTO_AFFINITY_ROTATION not defined).

Tested on TD-W9980B device (both VPEs used as linux CPUs).

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 .../0901-add-icu-smp-support.patch            | 436 ++++++++++++++++++
 1 file changed, 436 insertions(+)
 create mode 100644
target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch

diff --git
a/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
new file mode 100644
index 0000000000..eaefdf27a3
--- /dev/null
+++ b/target/linux/lantiq/patches-4.14/0901-add-icu-smp-support.patch
@@ -0,0 +1,436 @@
+--- a/arch/mips/lantiq/irq.c	2019-03-10 20:44:58.755134326 +0100
++++ b/arch/mips/lantiq/irq.c	2019-05-17 05:13:50.302149058 +0200
+@@ -22,14 +22,21 @@
+ #include <lantiq_soc.h>
+ #include <irq.h>
+ ++/*
++ * If defined, every IRQ enable call will switch the interrupt to
++ * the other VPE. You can limit used VPEs from the userspace.
++ *
++ * If not defined, only the first configured VPE from the userspace
++ * will be used.
++ */
++#define AUTO_AFFINITY_ROTATION
++
+ /* register definitions - internal irqs */
+-#define LTQ_ICU_IM0_ISR		0x0000
+-#define LTQ_ICU_IM0_IER		0x0008
+-#define LTQ_ICU_IM0_IOSR	0x0010
+-#define LTQ_ICU_IM0_IRSR	0x0018
+-#define LTQ_ICU_IM0_IMR		0x0020
+-#define LTQ_ICU_IM1_ISR		0x0028
+-#define LTQ_ICU_OFFSET		(LTQ_ICU_IM1_ISR - LTQ_ICU_IM0_ISR)
++#define LTQ_ICU_ISR		0x0000
++#define LTQ_ICU_IER		0x0008
++#define LTQ_ICU_IOSR		0x0010
++#define LTQ_ICU_IRSR		0x0018
++#define LTQ_ICU_IMR		0x0020
+ + /* register definitions - external irqs */
+ #define LTQ_EIU_EXIN_C		0x0000
+@@ -49,24 +56,27 @@
+  */
+ #define LTQ_ICU_EBU_IRQ		22
+ +-#define ltq_icu_w32(m, x, y)	ltq_w32((x), ltq_icu_membase[m] + (y))
+-#define ltq_icu_r32(m, x)	ltq_r32(ltq_icu_membase[m] + (x))
++#define ltq_icu_w32(vpe, m, x, y)	\
++	ltq_w32((x), ltq_icu_membase[vpe] + m*0x28 + (y))
++
++#define ltq_icu_r32(vpe, m, x)		\
++	ltq_r32(ltq_icu_membase[vpe] + m*0x28 + (x))
+ + #define ltq_eiu_w32(x, y)	ltq_w32((x), ltq_eiu_membase + (y))
+ #define ltq_eiu_r32(x)		ltq_r32(ltq_eiu_membase + (x))
+ +-/* our 2 ipi interrupts for VSMP */
+-#define MIPS_CPU_IPI_RESCHED_IRQ	0
+-#define MIPS_CPU_IPI_CALL_IRQ		1
+-
+ /* we have a cascade of 8 irqs */
+ #define MIPS_CPU_IRQ_CASCADE		8
+ ++#define MAX_VPES 2
++
+ static int exin_avail;
+ static u32 ltq_eiu_irq[MAX_EIU];
+-static void __iomem *ltq_icu_membase[MAX_IM];
++static void __iomem *ltq_icu_membase[MAX_VPES];
+ static void __iomem *ltq_eiu_membase;
+ static struct irq_domain *ltq_domain;
++static DEFINE_SPINLOCK(ltq_eiu_lock);
++static DEFINE_RAW_SPINLOCK(ltq_icu_lock);
+ static int ltq_perfcount_irq;
+ + int ltq_eiu_get_irq(int exin)
+@@ -78,50 +88,104 @@
+ + void ltq_disable_irq(struct irq_data *d)
+ {
+-	u32 ier = LTQ_ICU_IM0_IER;
+-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-	int im = offset / INT_NUM_IM_OFFSET;
++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
++	unsigned long im = offset / INT_NUM_IM_OFFSET;
++	unsigned int vpe;
++	unsigned long flags;
+ + 	offset %= INT_NUM_IM_OFFSET;
+-	ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
++
++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++	for_each_present_cpu(vpe) {
++		ltq_icu_w32(vpe, im,
++			    ltq_icu_r32(vpe, im, LTQ_ICU_IER) & ~BIT(offset),
++			    LTQ_ICU_IER);
++	}
++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ + void ltq_mask_and_ack_irq(struct irq_data *d)
+ {
+-	u32 ier = LTQ_ICU_IM0_IER;
+-	u32 isr = LTQ_ICU_IM0_ISR;
+-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-	int im = offset / INT_NUM_IM_OFFSET;
++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
++	unsigned long im = offset / INT_NUM_IM_OFFSET;
++	unsigned int vpe;
++	unsigned long flags;
+ + 	offset %= INT_NUM_IM_OFFSET;
+-	ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
+-	ltq_icu_w32(im, BIT(offset), isr);
++
++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++	for_each_present_cpu(vpe) {
++		ltq_icu_w32(vpe, im,
++			    ltq_icu_r32(vpe, im, LTQ_ICU_IER) & ~BIT(offset),
++			    LTQ_ICU_IER);
++		ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
++	}
++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ EXPORT_SYMBOL(ltq_mask_and_ack_irq);
+ + static void ltq_ack_irq(struct irq_data *d)
+ {
+-	u32 isr = LTQ_ICU_IM0_ISR;
+-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-	int im = offset / INT_NUM_IM_OFFSET;
++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
++	unsigned long im = offset / INT_NUM_IM_OFFSET;
++	unsigned int vpe;
++	unsigned long flags;
+ + 	offset %= INT_NUM_IM_OFFSET;
+-	ltq_icu_w32(im, BIT(offset), isr);
++
++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++	for_each_present_cpu(vpe) {
++		ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
++	}
++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ + void ltq_enable_irq(struct irq_data *d)
+ {
+-	u32 ier = LTQ_ICU_IM0_IER;
+-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+-	int im = offset / INT_NUM_IM_OFFSET;
++	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
++	unsigned long im = offset / INT_NUM_IM_OFFSET;
++	unsigned int vpe;
++	unsigned long flags;
+ + 	offset %= INT_NUM_IM_OFFSET;
+-	ltq_icu_w32(im, ltq_icu_r32(im, ier) | BIT(offset), ier);
++
++#if defined(AUTO_AFFINITY_ROTATION)
++	vpe = cpumask_next(smp_processor_id(),
++			   irq_data_get_effective_affinity_mask(d));
++
++	/*
++	 * There is a theoretical race condition if affinity gets changed
++	 * meanwhile, but it would only caused a wrong VPE to be used until
++	 * the next IRQ enable. Also the SoC has only 2 VPEs which fits
++	 * the single u32. You can move spinlock before first mask readout
++	 * and add it to ltq_icu_irq_set_affinity.
++	 */
++
++	if (vpe >= nr_cpu_ids)
++		vpe = cpumask_first(irq_data_get_effective_affinity_mask(d));
++#else
++	vpe = cpumask_first(irq_data_get_effective_affinity_mask(d));
++#endif
++
++	/* This shouldn't be even possible, maybe during CPU hotplug spam */
++	if (unlikely(vpe >= nr_cpu_ids))
++		vpe = smp_processor_id();
++
++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
++
++	/* bugfix for fake interrupts? from UGW 3.x kernel */
++	ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
++
++	ltq_icu_w32(vpe, im, ltq_icu_r32(vpe, im, LTQ_ICU_IER) | BIT(offset),
++		    LTQ_ICU_IER);
++
++	raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
+ }
+ + static int ltq_eiu_settype(struct irq_data *d, unsigned int type)
+ {
+ 	int i;
++	unsigned long flags;
+ + 	for (i = 0; i < exin_avail; i++) {
+ 		if (d->hwirq == ltq_eiu_irq[i]) {
+@@ -158,8 +222,12 @@
+ 			if (edge)
+ 				irq_set_handler(d->hwirq, handle_edge_irq);
+ +-			ltq_eiu_w32(ltq_eiu_r32(LTQ_EIU_EXIN_C) |
+-				(val << (i * 4)), LTQ_EIU_EXIN_C);
++			// v3.10 kernel has this atomic for SMP
++			spin_lock_irqsave(&ltq_eiu_lock, flags);
++			ltq_eiu_w32((ltq_eiu_r32(LTQ_EIU_EXIN_C) &
++				    (~(7 << (i * 4)))) | (val << (i * 4)),
++				    LTQ_EIU_EXIN_C);
++			spin_unlock_irqrestore(&ltq_eiu_lock, flags);
+ 		}
+ 	}
+ +@@ -203,6 +271,21 @@
+ 	}
+ }
+ ++#if defined(CONFIG_SMP)
++static int ltq_icu_irq_set_affinity(struct irq_data *d,
++				    const struct cpumask *cpumask, bool force)
++{
++	struct cpumask tmask;
++
++	if (!cpumask_and(&tmask, cpumask, cpu_online_mask))
++		return -EINVAL;
++
++	irq_data_update_effective_affinity(d, &tmask);
++
++	return IRQ_SET_MASK_OK;
++}
++#endif
++
+ static struct irq_chip ltq_irq_type = {
+ 	.name = "icu",
+ 	.irq_enable = ltq_enable_irq,
+@@ -211,6 +294,9 @@
+ 	.irq_ack = ltq_ack_irq,
+ 	.irq_mask = ltq_disable_irq,
+ 	.irq_mask_ack = ltq_mask_and_ack_irq,
++#if defined(CONFIG_SMP)
++	.irq_set_affinity = ltq_icu_irq_set_affinity,
++#endif
+ };
+ + static struct irq_chip ltq_eiu_type = {
+@@ -224,15 +310,19 @@
+ 	.irq_mask = ltq_disable_irq,
+ 	.irq_mask_ack = ltq_mask_and_ack_irq,
+ 	.irq_set_type = ltq_eiu_settype,
++#if defined(CONFIG_SMP)
++	.irq_set_affinity = ltq_icu_irq_set_affinity,
++#endif
+ };
+ + static void ltq_hw_irq_handler(struct irq_desc *desc)
+ {
+-	int module = irq_desc_get_irq(desc) - 2;
++	unsigned int module = irq_desc_get_irq(desc) - 2;
+ 	u32 irq;
+-	int hwirq;
++	irq_hw_number_t hwirq;
++	unsigned int vpe = smp_processor_id();
+ +-	irq = ltq_icu_r32(module, LTQ_ICU_IM0_IOSR);
++	irq = ltq_icu_r32(vpe, module, LTQ_ICU_IOSR);
+ 	if (irq == 0)
+ 		return;
+ +@@ -253,6 +343,7 @@
+ static int icu_map(struct irq_domain *d, unsigned int irq,
irq_hw_number_t hw)
+ {
+ 	struct irq_chip *chip = &ltq_irq_type;
++	struct irq_data *data;
+ 	int i;
+ + 	if (hw < MIPS_CPU_IRQ_CASCADE)
+@@ -262,6 +353,10 @@
+ 		if (hw == ltq_eiu_irq[i])
+ 			chip = &ltq_eiu_type;
+ ++	data = irq_get_irq_data(irq);
++
++	irq_data_update_effective_affinity(data, cpumask_of(0));
++
+ 	irq_set_chip_and_handler(irq, chip, handle_level_irq);
+ + 	return 0;
+@@ -276,28 +371,40 @@
+ {
+ 	struct device_node *eiu_node;
+ 	struct resource res;
+-	int i, ret;
++	int i, ret, vpe;
+ +-	for (i = 0; i < MAX_IM; i++) {
+-		if (of_address_to_resource(node, i, &res))
+-			panic("Failed to get icu memory range");
++	/* TODO someone pls update+test devicetr5ee for danube (not SMP,
++	 * foreach bellow should run once), ar9, amazon, falcon (no info).
++	 * Addresses are known only for vr9, tested only in generic SMP
++	 * ( = no VPE reserved for firmware).
++	 */
++	for_each_possible_cpu(vpe) {
++		if (of_address_to_resource(node, vpe, &res))
++			panic("Failed to get icu%i memory range", vpe);
+ + 		if (!request_mem_region(res.start, resource_size(&res),
+ 					res.name))
+-			pr_err("Failed to request icu memory");
++			pr_err("Failed to request icu%i memory\n", vpe);
+ +-		ltq_icu_membase[i] = ioremap_nocache(res.start,
++		ltq_icu_membase[vpe] = ioremap_nocache(res.start,
+ 					resource_size(&res));
+-		if (!ltq_icu_membase[i])
+-			panic("Failed to remap icu memory");
++
++		if (!ltq_icu_membase[vpe])
++			panic("Failed to remap icu%i memory", vpe);
+ 	}
+ + 	/* turn off all irqs by default */
+-	for (i = 0; i < MAX_IM; i++) {
+-		/* make sure all irqs are turned off by default */
+-		ltq_icu_w32(i, 0, LTQ_ICU_IM0_IER);
+-		/* clear all possibly pending interrupts */
+-		ltq_icu_w32(i, ~0, LTQ_ICU_IM0_ISR);
++	for_each_possible_cpu(vpe) {
++		for (i = 0; i < MAX_IM; i++) {
++			/* make sure all irqs are turned off by default */
++			ltq_icu_w32(vpe, i, 0, LTQ_ICU_IER);
++
++			/* clear all possibly pending interrupts */
++			ltq_icu_w32(vpe, i, ~0, LTQ_ICU_ISR);
++			ltq_icu_w32(vpe, i, ~0, LTQ_ICU_IMR);
++
++			ltq_icu_w32(vpe, i, 0, LTQ_ICU_IRSR);
++		}
+ 	}
+ + 	mips_cpu_irq_init();
+@@ -358,7 +465,7 @@
+ 	return MIPS_CPU_TIMER_IRQ;
+ }
+ +-static struct of_device_id __initdata of_irq_ids[] = {
++static const struct of_device_id of_irq_ids[] __initconst = {
+ 	{ .compatible = "lantiq,icu", .data = icu_of_init },
+ 	{},
+ };
+--- a/arch/mips/kernel/smp-mt.c	2019-03-05 17:58:03.000000000 +0100
++++ b/arch/mips/kernel/smp-mt.c	2019-05-16 03:09:02.268859090 +0200
+@@ -125,6 +125,8 @@
+ 					 STATUSF_IP6 | STATUSF_IP7);
+ 	else
+ 		change_c0_status(ST0_IM, STATUSF_IP0 | STATUSF_IP1 |
++					 STATUSF_IP2 | STATUSF_IP3 |
++					 STATUSF_IP4 | STATUSF_IP5 |
+ 					 STATUSF_IP6 | STATUSF_IP7);
+ }
+ +--- a/arch/mips/boot/dts/vr9.dtsi	2019-03-10 19:03:35.747182390 +0100
++++ b/arch/mips/boot/dts/vr9.dtsi	2019-05-17 05:01:36.789319230 +0200
+@@ -38,11 +38,9 @@
+ 			#interrupt-cells = <1>;
+ 			interrupt-controller;
+ 			compatible = "lantiq,icu";
+-			reg = <0x80200 0x28
+-				0x80228 0x28
+-				0x80250 0x28
+-				0x80278 0x28
+-				0x802a0 0x28>;
++
++			reg = <0x80200 0xc8	/* icu0 */
++				0x80300 0xc8>;	/* icu1 */
+ 		};
+ + 		watchdog@803f0 {
+--- a/arch/mips/boot/dts/danube.dtsi	2019-03-10 19:03:35.746182403 +0100
++++ b/arch/mips/boot/dts/danube.dtsi	2019-05-17 04:55:28.777920006 +0200
+@@ -34,11 +34,12 @@
+ 			#interrupt-cells = <1>;
+ 			interrupt-controller;
+ 			compatible = "lantiq,icu";
+-			reg = <0x80200 0x28
+-				0x80228 0x28
+-				0x80250 0x28
+-				0x80278 0x28
+-				0x802a0 0x28>;
++
++			/*
++			 * There is a second ICU, but the SoC is not SMP
++			 * capable.
++			 */
++			reg = <0x80200 0xc8>;
+ 		};
+ + 		watchdog@803f0 {
+--- a/arch/mips/boot/dts/ar9.dtsi	2019-03-10 19:03:35.746182403 +0100
++++ b/arch/mips/boot/dts/ar9.dtsi	2019-05-17 04:58:17.080815930 +0200
+@@ -34,11 +34,8 @@
+ 			#interrupt-cells = <1>;
+ 			interrupt-controller;
+ 			compatible = "lantiq,icu";
+-			reg = <0x80200 0x28
+-				0x80228 0x28
+-				0x80250 0x28
+-				0x80278 0x28
+-				0x802a0 0x28>;
++			reg = <0x80200 0xc8>;	/* ICU0 */
++			/* TODO AR9 should have ICU1 (like VR9) too */
+ 		};
+ + 		watchdog@803f0 {
+--- a/arch/mips/boot/dts/amazonse.dtsi	2019-03-10 19:03:35.746182403 +0100
++++ b/arch/mips/boot/dts/amazonse.dtsi	2019-05-17 04:58:56.343325081 +0200
+@@ -34,11 +34,7 @@
+ 			#interrupt-cells = <1>;
+ 			interrupt-controller;
+ 			compatible = "lantiq,icu";
+-			reg = <0x80200 0x28
+-				0x80228 0x28
+-				0x80250 0x28
+-				0x80278 0x28
+-				0x802a0 0x28>;
++			reg = <0x80200 0xc8>;	/* only 1 ICU */
+ 		};
+ + 		watchdog@803f0 {
+--- a/arch/mips/boot/dts/falcon.dtsi	2019-03-10 19:03:35.747182390 +0100
++++ b/arch/mips/boot/dts/falcon.dtsi	2019-05-17 05:00:42.536997478 +0200
+@@ -293,11 +293,8 @@
+ 			#interrupt-cells = <1>;
+ 			interrupt-controller;
+ 			compatible = "lantiq,icu";
+-			reg = <0x80200 0x28
+-				0x80228 0x28
+-				0x80250 0x28
+-				0x80278 0x28
+-				0x802a0 0x28>;
++			reg = <0x80200 0xc8>;
++			/* TODO I don't know if there is another ICU */
+ 		};
+ + 		watchdog@803F0 {
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
