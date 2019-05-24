Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4687291A0
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 May 2019 09:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WluclVY7LXXVbwYNh9xPOZUwPxQvaQYpOrCeF17uOY=; b=MLPM/1DlUSA4H6
	wOm+iGMs0TkWHplMk5tbZq8iMAjkT/NmIUMvzaebbRnMhttFeieV3I4K1pcaRgqOsudWtmKmry4Me
	aK/tdZBUg43NXBpm64gGlWew7NhAZYtSHEidGp44uznAYSG5wD+y3KeG9Fakt8IRtnSxfM+iVs9oq
	c5lx8KysWRGW+zjFMz4Tk2ezpjq8fsYkSBtAxxSv4jfAYCFJ1wJuaipqoUf9ZCPeQoELZh6fmS+CD
	M9pdYZ045yRG2q9E8gU9wdWH8dez2147o7jDY/lWQqKj6/91prX9ShgOw82YHy0kz5P1QAnkmbvVY
	IvCDFogzrsrGVPgTnlqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4Z3-0005BV-RG; Fri, 24 May 2019 07:24:29 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4Yw-0005B6-AI
 for openwrt-devel@lists.openwrt.org; Fri, 24 May 2019 07:24:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id 198so8207835wme.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 May 2019 00:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0te7SM1lDSIg8uQFJfoMVX1sX/Jeonhdvx9A7AU+xjk=;
 b=f7DunMRLXo+CHD6e5eQMBxig/Q1qbdz3R6ksK9pKu5viF1sZxnyLhnNmZGFjGbbTw/
 Sd9j9TQgUOfhIVkArzTgleZXsKxPU61nhdCZAugodWfLAh+I0F3FN4Sj6roqfpwPB+ZY
 JeV5+sM0wE7MUEk9nuZmoZFUe0ZHIa30cNTqvzHXistOht3it/LqfD6+0eL3NxWgTfQ3
 O1JJVIgO0yLS5scMtISFIkhHCfFEyOFf7uDCNGtpB2JKqSTFcHGoLIpNSAHeAuDUnERe
 gg3X7LrMX10Voe15aT2aany60sTkMFVoiHiEB5tgPw3kVixSGpqVdp2k54QI26oDvHmt
 pDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0te7SM1lDSIg8uQFJfoMVX1sX/Jeonhdvx9A7AU+xjk=;
 b=gQwHPvsWmWZUAoYp6xFayoBMHHk7nynSMOXxeE0/dcBQSBa1YOF3jAs57fgI7dpOwj
 XE8s4JHd5vLEkTYIy9DtBXZgn9bGEtvIMUxjlwRUhp/IkshNEhhY/Jn3yXSFbMoD6Niw
 Ea7uHcuQalbXHgXAzcJHMeaJSY4ItQNIRpW0LPFkKAAl/73Mu4mX/EGj3Qs9xZOAWU92
 tM/hyZNxKpmMfV1mcZyTvDlKYbKY629Ma6wZGGWfyEsCxD/kiuw3ZQTEiYFENndNqxR2
 eSAxR0To0rDfrjx0tRJlGtOfpBGSCymJo3XygvKO0WQQ1UlkmR6Y8SLlZmAR0DN13/4+
 Lz+w==
X-Gm-Message-State: APjAAAXfo4zFPjt6hnF7uiMSlSbZcbWCkP0r9oShaE/KJpJyfZIiRnwc
 +NCKLCEf+78Lc8LPFhiiTmY=
X-Google-Smtp-Source: APXvYqxJeHGj3Cb60dQJGa/8YY0LOxFjq+Pxiq8xm29syhxDMPpM4YsxaVDW983q7KzcSaZBLRK+Vg==
X-Received: by 2002:a1c:f610:: with SMTP id w16mr5299323wmc.37.1558682659394; 
 Fri, 24 May 2019 00:24:19 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-c063-f27b-18bd-163d.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:c063:f27b:18bd:163d])
 by smtp.gmail.com with ESMTPSA id h188sm2923257wmf.48.2019.05.24.00.24.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 00:24:18 -0700 (PDT)
To: Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
References: <1675e3e2-da4b-79e9-f9e4-895be7cf7882@gmail.com>
 <1a46720c-ac40-c874-d2ca-89819f38733b@hauke-m.de>
From: Petr Cvek <petrcvekcz@gmail.com>
Message-ID: <fe5967e3-e56c-afad-edf4-0d8689b0d1b1@gmail.com>
Date: Fri, 24 May 2019 09:26:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1a46720c-ac40-c874-d2ca-89819f38733b@hauke-m.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_002422_357879_ED5E7694 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v5] kernel: lantiq: add support for SMP
 IRQ routing
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
Cc: pakahmar@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dne 19. 05. 19 v 23:45 Hauke Mehrtens napsal(a):
> 
> Have you seen such feature in any other upstream IRQ driver?
> This automatic assignment of IRQs to VPEs looks a little bit strange to
> me, but I am also not an expter on IRQs.
> 

Yes loongson64 has it in ht_irqdispatch():

https://elixir.bootlin.com/linux/v5.0-rc4/source/arch/mips/loongson64/loongson-3/irq.c#L65

MIPS GIC is using cpumask_first part in gic_unmask_irq():

https://elixir.bootlin.com/linux/v5.0-rc4/source/drivers/irqchip/irq-mips-gic.c#L184

General IRQ driver of powerpc has the similar code used further in mpic_set_affinity(), but that may be because of its architecture (there probably isn't IRQ HW balancer in lantiq).

There will be probably other examples with slightly different code.

>> ++	vpe = cpumask_next(smp_processor_id(),
>> ++			   irq_data_get_effective_affinity_mask(d));
>> ++
>> ++	/*
>> ++	 * There is a theoretical race condition if affinity gets changed
>> ++	 * meanwhile, but it would only caused a wrong VPE to be used until
>> ++	 * the next IRQ enable. Also the SoC has only 2 VPEs which fits
>> ++	 * the single u32. You can move spinlock before first mask readout
>> ++	 * and add it to ltq_icu_irq_set_affinity.
>> ++	 */
>> ++
>> ++	if (vpe >= nr_cpu_ids)
>> ++		vpe = cpumask_first(irq_data_get_effective_affinity_mask(d));
>> ++#else
>> ++	vpe = cpumask_first(irq_data_get_effective_affinity_mask(d));
>> ++#endif
>> ++
>> ++	/* This shouldn't be even possible, maybe during CPU hotplug spam */
>> ++	if (unlikely(vpe >= nr_cpu_ids))
>> ++		vpe = smp_processor_id();
>> ++
>> ++	raw_spin_lock_irqsave(&ltq_icu_lock, flags);
>> ++
>> ++	/* bugfix for fake interrupts? from UGW 3.x kernel */
>> ++	ltq_icu_w32(vpe, im, BIT(offset), LTQ_ICU_ISR);
> 
> It could be that some (broken) bootloader does not deactivate all the
> IRQs when the control is given to Linux. Do you need this change,
> otherwise I would just deactivate all IRQs in the probe function.
> 

I will run further tests, but I think when I've put an assert for an active status bit I've got few IRQs logged. I will repeat the tests. I have a slight suspicion the status bit doesn't work correctly when an interrupt arrives and line is disabled (it behaved weird when I was trying to identify the second ICU, but I may be wrong).

>> ++++ b/arch/mips/boot/dts/ar9.dtsi	2019-05-17 04:58:17.080815930 +0200
>> ++			reg = <0x80200 0xc8>;	/* ICU0 */
>> ++			/* TODO AR9 should have ICU1 (like VR9) too */
> 
> Yes this is similar to VR9.
> 
>> ++++ b/arch/mips/boot/dts/falcon.dtsi	2019-05-17 05:00:42.536997478 +0200
>> ++			/* TODO I don't know if there is another ICU */
> 
> The 2. ICU is at 0x80300, size is 0xe0 for both ICUs.
> 

Thanks, gonna put the addresses there.

Petr

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
