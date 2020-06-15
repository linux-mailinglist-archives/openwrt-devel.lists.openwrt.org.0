Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B058B1F9129
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jun 2020 10:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RRN/CBoz/Mwam09gUxH/2uyFrSdh9vi7nkSutWHVOmQ=; b=f6O
	ZDL/LOSUFbtKahto8dogosfvjq2gl0/D8ylPm6GNjQJBoKR6EWksCZ6p7406med4wZHRoJMNG6xTo
	DDlCrrlJvJ7g5zoNiMWtkmSi9rPGCWhwzUoEC0SJYIsA9UxaQ59aXMhG4F1M0KTFbFwCHYEUXGQoM
	n/x8CDIhEoxM9fG9IOLM6oArVvMcxPwWwdAX64+FIc56WxDTUjVCqfMvf3XyWf8ne4p/8Ma/yJ4dS
	Y+ZgZ9Qf9ZdeJjK/x7FE5Puhnr3fiN2JOw0Cq4uhxujO/DJ+VbVGXb1f7rPAYgd5H/kKf4IGHNRWl
	DXOU14j/1HHsKuNfR5b1llKUHCbxVng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkGh-0007GE-L9; Mon, 15 Jun 2020 08:14:59 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkGW-0007Dm-UL
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jun 2020 08:14:50 +0000
Received: by mail-vk1-xa42.google.com with SMTP id u15so3711843vkk.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jun 2020 01:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=1Ypsxms6FBzf3aUpyWP6Q4wdTFggzFK30p3xzE/cxYQ=;
 b=prthBlafRRoIuPgjlXudQEryWPyNLv6OBRyoJYDtkWhhB3bdnWnKs6jk3EdSfFUp1C
 +7x/snDssYD0iDmCiPIhurnQJXuZkg0P6DDcfHbAzxpW7DY/kFQhL8AT+QyvIDDFONBA
 QJuuNGSOnm09sDSqZlhRvUoWNmVzF0YbQzqDdaihQBtxcbexkr1O5JC5qexm7cGvzgsH
 MRFRGEG5425VI39dduuimtdiawJ7OWl3/znsrUlFT9PZx94ueS1i33PXDCYmIAcMJaG2
 FcJa2T4mbK8wxivH1q1N0wkUDGooHuBhBtAWvAXoE09oTm9eWfWNzjCXAS1ymb80qa6g
 DmZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=1Ypsxms6FBzf3aUpyWP6Q4wdTFggzFK30p3xzE/cxYQ=;
 b=Ad6buUY6Cii0TDlcTkY41C47GKu3OrCkO6FnnbTFS7++eV3Jr6kA3+WmciZPvtdz6t
 tB7Sl5r6QsLyN4zz8dgiF10TElDt0eUCTaqhxgSz3mt2DfD1EVMeGgm3Nl4CXFHD8NPA
 BwZAR6TrTahQLXFP5shqc0O6v0jrEMsVrN1/ovvsSVFSfAF3l9eOSuqLb475aYYjE1Gq
 QH7SsBu78Dp7KX6BMri9zvjAA+y9Rhb3+lNWG81lXY/tLBJEBFHnIOl1G/g0x3XGmP/o
 SIdnpT6DSfjRb9iZDKRV+PaMZ94TgS/tUv2Vd61qggmwK9fnkQuKDlidyNXAEkwzG7PJ
 LqnQ==
X-Gm-Message-State: AOAM531dVQ+NnvzEhJefzwAn/BU43jVAQW71G+A1UHDvvgGGtqIu+7jr
 akNdzY1frOIhwf0dKasOitnzAYP8kQmjKklL2mqYRrI9tw==
X-Google-Smtp-Source: ABdhPJxeDl0wl1RdojLvzOAnic3XyIoudsVLNYws3+LHv/hvR6w4cI1m+Q2o2F1O4HcZKoWJF9CTIfqoQNIIpiLQz/c=
X-Received: by 2002:ac5:cc7a:: with SMTP id w26mr17023930vkm.12.1592208886650; 
 Mon, 15 Jun 2020 01:14:46 -0700 (PDT)
MIME-Version: 1.0
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Mon, 15 Jun 2020 09:14:33 +0100
Message-ID: <CALjTZvYG4Co4rCa5eoc48hpR-WXJ1a7wgicBqqXN+TMVgRoTGg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_011448_982595_4A354FD7 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] master (mvebu): irq 77: nobody cared
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

Hi, guys,

After some time, the pca953x on my Turris Omnia decides it's not
having any more of it.
I thought I had screwed up my configuration somewhere, so I installed
the current (r13563-69e7d14e1b) snapshot and tried to reproduce the
issue. Stack trace follows.

[12865.018034] irq 77: nobody cared (try booting with the "irqpoll" option)
[12865.024759] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.4.45 #0
[12865.030690] Hardware name: Marvell Armada 380/385 (Device Tree)
[12865.036633] [<c010ee8c>] (unwind_backtrace) from [<c010aff4>]
(show_stack+0x10/0x14)
[12865.044398] [<c010aff4>] (show_stack) from [<c0730298>]
(dump_stack+0x94/0xa8)
[12865.051639] [<c0730298>] (dump_stack) from [<c0173cb8>]
(__report_bad_irq+0x3c/0xc0)
[12865.059401] [<c0173cb8>] (__report_bad_irq) from [<c0173f3c>]
(note_interrupt+0x114/0x2b4)
[12865.067688] [<c0173f3c>] (note_interrupt) from [<c0170d44>]
(handle_irq_event_percpu+0x58/0x64)
[12865.076408] [<c0170d44>] (handle_irq_event_percpu) from
[<c0170d94>] (handle_irq_event+0x44/0x68)
[12865.085302] [<c0170d94>] (handle_irq_event) from [<c01749c4>]
(handle_level_irq+0xc4/0x14c)
[12865.093673] [<c01749c4>] (handle_level_irq) from [<c016fe90>]
(generic_handle_irq+0x24/0x34)
[12865.102132] [<c016fe90>] (generic_handle_irq) from [<c042df6c>]
(mvebu_gpio_irq_handler+0xc4/0x160)
[12865.111199] [<c042df6c>] (mvebu_gpio_irq_handler) from [<c016fe90>]
(generic_handle_irq+0x24/0x34)
[12865.120179] [<c016fe90>] (generic_handle_irq) from [<c0170488>]
(__handle_domain_irq+0x5c/0xb4)
[12865.128900] [<c0170488>] (__handle_domain_irq) from [<c0419934>]
(gic_handle_irq+0x4c/0x90)
[12865.137271] [<c0419934>] (gic_handle_irq) from [<c0101a8c>]
(__irq_svc+0x6c/0x90)
[12865.144769] Exception stack(0xc0b01f30 to 0xc0b01f78)
[12865.149832] 1f20:                                     00000000
072e7da0 eedd98f4 c01146a0
[12865.158028] 1f40: ffffe000 c0b03e68 c0b03ea8 00000001 00000000
c0a47528 c0b0dd34 00000000
[12865.166224] 1f60: 00000000 c0b01f80 c01083e8 c01083ec 60000013 ffffffff
[12865.172858] [<c0101a8c>] (__irq_svc) from [<c01083ec>]
(arch_cpu_idle+0x38/0x3c)
[12865.180275] [<c01083ec>] (arch_cpu_idle) from [<c0150800>]
(do_idle+0x1a4/0x1dc)
[12865.187690] [<c0150800>] (do_idle) from [<c0150ac8>]
(cpu_startup_entry+0x18/0x1c)
[12865.195281] [<c0150ac8>] (cpu_startup_entry) from [<c0a00ebc>]
(start_kernel+0x550/0x564)
[12865.203475] handlers:
[12865.205754] [<1dcc285b>] irq_default_primary_handler threaded
[<9350caa2>] pca953x_irq_handler
[12865.214387] Disabling IRQ #77

Any ideas about what could cause this?

Cheers,
Rui

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
