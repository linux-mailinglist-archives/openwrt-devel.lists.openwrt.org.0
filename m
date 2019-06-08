Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF453A209
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 22:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LTFMhS/roFsm+oKLdV45xh8BLB3W1bvaekWsMHVrmEw=; b=Vla5ANvtgzXoSY
	GFHUS4OmmSwdf9A9oSR9eUEBRukpv1cBmR5n537fsuSt/1irVUrPgaRFyfSb4VrAD+mr9a/iUgaVg
	Z1w9sKE8TLGfUfbPgHLmvpYpsJTWI/HoFUXDEWwViJNvqbcDUWgPee2SicqW6e7BHd+4ByoSJTqx2
	nGK3/zIj9luvC6ke9E3RkvZpVxNKbnE8CJlokoxCWLOa0XoEJ3aYC+VLGAa3qz9KtCCAsKRzqqtaP
	Of4kJUT+6N+0qEj2hYfn+q2LSay+EiWW8jIV5xdlgFt4wMW7iZZOc2S4W231TdHpOJhiO9YFyUKDs
	toTnWd/r2yK5iHW8IozA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZiGb-0003e7-T8; Sat, 08 Jun 2019 20:48:45 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZiGR-0003cs-Re
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 20:48:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id m3so5436227wrv.2
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 13:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfoN89ez9eO3wraKc+6QrYXVGhd9S9Rz3z9Gsd3RcLI=;
 b=lZX5LRqp3l9rxcNCzYiysTttfDxrC4DPoyyMLRgQIFWgQmSnjL/OTleEjItgrvcLPP
 ru5612Ch3PtctqkpiiiId/nNGMR6MvSzi+U9v0nfK1Qb7Z0uAA1UuBT8gti2hL3k2auJ
 rHiaFsQgUYsp4LxaVBD0iZQUI7rVreR3Zvd5uD4KuLKPUPL+LMFgCUNaF/Y2S1b2t34f
 mh+TXpmebMEGgr+chumgrjs0FI4Ygobu+JxGlohzcouhj8fMYP01gEMb0HakjfOQ5cWV
 HoWhO5M511GVjfX8kt258gS3lCzfRskhKj0v2azwGEk8x7+l1DGt3Qay20UnKq7dDA54
 VeZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfoN89ez9eO3wraKc+6QrYXVGhd9S9Rz3z9Gsd3RcLI=;
 b=CIjH2DC7/4cwugYnhzXakM9eFeu04lRzdq/qTqdbBolG77qVYaAQI9gnqAAIPFHyZd
 4+cFOVWdKcqaP8x+cRUbHaddz7efnsaaVt/5o6YeM3JAVtT/Myu6JTTQeti7rdE4//Hg
 3gNeDO17UR1HSzfYpSJl87HE3W89a0muuitbN/6xBHWekwA4KevqR+3TgAH6slSRW7wN
 /cMevEn1dPuFDWMtE9hmRHWDfbPRoDKdYiWzeBwYVNLwI7ZikW6oHmzZ+eUuEUr2rW7R
 VJr0tfCMy6Diprn3BneMicI0geUws9k9ZaTo7bV8Ritp7yoZAzGXqOhKPYBA4saCEh2G
 gP0g==
X-Gm-Message-State: APjAAAUELc/hdtBbDmiVZ5rQ67GSysv8sus9z/LzBFQWm6iiY30/QaSj
 EhGsG4ozhFjFtkdC+gDOIAA=
X-Google-Smtp-Source: APXvYqzUU3xrEON5FVBY9IwHcYbFx1/MTlmt73Mpeud0lcvjQoRoqsj/fnIkDFDAYt3pRdEuOUhrKw==
X-Received: by 2002:a5d:534b:: with SMTP id t11mr622183wrv.61.1560026909963;
 Sat, 08 Jun 2019 13:48:29 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-359a-8d64-e90a-f663.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:359a:8d64:e90a:f663])
 by smtp.gmail.com with ESMTPSA id f204sm4986394wme.18.2019.06.08.13.48.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:48:29 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Sat,  8 Jun 2019 22:48:03 +0200
Message-Id: <cover.1560024463.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_134835_921729_690447D5 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (petrcvekcz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v1 0/7] MIPS: lantiq: irq: Various fixes,
 add SMP support
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
Cc: pakahmar@hotmail.com, openwrt-devel@lists.openwrt.org,
 Petr Cvek <petrcvekcz@gmail.com>, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Petr Cvek <petrcvekcz@gmail.com>

Hi,

While hacking with my modem in openwrt I've found in the lantiq vrx268 SoC
there is only a support for the processes SMP and not for interrupt
routing. After some looking into vendors released source codes (probably
intel UGW) and by observing SoC's memory map I've found out there is
a second interrupt controller (ICU) for the second VPE. The last patch
of this series adds support for it. The code is different from intel UGW's
set affinity function, where the interrupt line gets enabled (switched)
to the second ICU. Instead only the cpumask gets changed in my set affinity.
The change will be written into the hardware after the next irq enable call.
This was changed because of stability reasons in the high irq load of
the SoC.

The first part of the series are more or less cosmetic changes of long
names, different types and few fixed warnings from checkpatch. There is
a fix in part 5, where I've found the missing bitfield clear before ORing
with a new value.

The SMP in part 7 changes devicetree definition for a register regions
of the ICU. Previously, there was a region for a single IM (a mask/unmask/
enable/... set for 32 interrupts). Now it is the whole ICU. It match more
the hardware layout. There is no compatibility issue in vanilla, only
openwrt was affected by these devicetrees.

Also in the UGW's ltq_enable_irq(), there was a status bit reset before
the actual IRQ line enable. It was marked as "Bug fix for fake interrupt".
The code seems to work without it (vanilla and new SMP), but I've made
an assert if this bit is set before the actual enable. The assert reported
these IRQ sources:

	22:00004000     spi_rx  (only when SPI is accessed)
	63:00800000     mei_cpe (permanent 1s)
	112:00000100    asc_tx

But the code seems to run anyway I didn't include the status bit reset part.

The SMP has an algorithm taken from MIPS loongson64's ht_irqdispatch().
Every IRQ enable the line get routed to the other VPE (constrained by cpumask
set in the irq_set_affinity function). This can be effectivelly disabled
in the userspace by constraining the cpumask set to a single VPE or by
commenting out the AUTO_AFFINITY_ROTATION macro definition (the code will
then prefer the first VPE from the cpumask). The default affinity during
the boot is the first VPE.

The code was tested in nosmp configuration on TPLink W9980B in openwrt tree
(patched kernel v4.14). The lantiq devices other than vrx268 were not
tested.

Discussion on openwrt related parts for lantiq ICU SMP is here (devicetrees,
things not in the vanilla kernel, RFC versions of the patch):
https://patchwork.ozlabs.org/patch/1100832/

Petr Cvek (7):
  MIPS: lantiq: Move macro directly to iomem function
  MIPS: lantiq: Change variables to the same type as the source
  MIPS: lantiq: Fix attributes of of_device_id structure
  MIPS: lantiq: Remove unused macros
  MIPS: lantiq: Fix bitfield masking
  MIPS: lantiq: Shorten register names, remove unused macros
  MIPS: lantiq: Add SMP support for lantiq interrupt controller

 arch/mips/lantiq/irq.c | 202 ++++++++++++++++++++++++++++++-----------
 1 file changed, 151 insertions(+), 51 deletions(-)

-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
