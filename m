Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710253A20C
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 22:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4h5F/blmxNVJE7PpfuW+LmluwNgucgnV2/Pk0+Fu/w=; b=PoQXn7YXSa7fBA
	a68EsGUZfAIkeyih6Y5HAsNyDmQxMTzmEFs1dqxDPQuyS/sBxAYAvqle5K+iLTjr5OyfYJf+h0GaX
	B0YXRzy5scFltZs+bO2rM4XuMvRHdv1HQazw//nZso9UgxxHTBOkEWBioOB+5nlA5Op50ZNkYXVQD
	sfB0uwnHYRhBTbEizbIwUZ7i9jPMV491xJIUho+XjQegJ7UzqTp8FAjl/IJDFJyoJBUUXCv6DwGn9
	pdmgP2BpJVBYk2jbhXGA6DiaU2qzOopwQZygcgzYbwNRKsenqgB14VjfmZI0a0pGsZCQBH+nfgnw+
	HAzRrwyG64DvktR20rIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZiGo-0003pN-QG; Sat, 08 Jun 2019 20:48:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZiGX-0003eX-SY
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 20:48:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so5110167wmf.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 13:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UtD9LqGAYakgNOjMfkfswsTmJIWlE3YoJFMFCxDn+fg=;
 b=LDyQTtv5EX1Jn09YLEnjGaoibpxNYmVNs/c6Or9AmgA5psWHn25QarpfOu70U057TW
 /WmeEQbB34fTdxXVibQuU7mNbx6W8bFpf7GmXRBr3LwCeLkwvcPULSgYQVg7M6h9vaZ7
 upk0Y/8WPgi3TCRwZ/H/qAacNisisuIc+QWr1Bc5wUU7WqWMdoPiuch3g0MpUH/zYPF1
 FmwOGrug8CMSrn1PLZiFq5WzofHAlMdD9JBrO9Qu/Q5UiE4mZZjS6oNl/RSV2CUBJGG6
 LiG3oBQfnPoM642DFemNgBaTDkHUrFOv2mFmeLg294GU8N+4eexVk2lgUEFdOxhHbUrl
 sTMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UtD9LqGAYakgNOjMfkfswsTmJIWlE3YoJFMFCxDn+fg=;
 b=jOBVHIoKgiia9ZkrgtV4uPOzNyZYD14orJEet1q3cqwg3vUKdkqt/orxkekz255zg+
 Q9Ig1iU7mEkNPvcDXsDcYnK67exKsdCA7r95mLxtXGoL1O8UqN2ti2O4LAkxnhER7Nwd
 KShwB+aGeQaYUwXxMPmr1bVSAcoJqJ9Zk8zDShz8yhA9OIQzBUcKQuNbUWTAL3KM/nTe
 mR/qozyLcGDT1eBE7v2czb2XlJrMtEJ6T1FhkmbaVAHdNVk6smC/IeTpFs4Vgi/0ALD/
 CGvAg9NdJmuqn8FXmctbTkxRT39YFKsh6Cw/P+rqHCrgy5c0vcRko7ZL3UfIT8Ulu/BI
 Aydw==
X-Gm-Message-State: APjAAAVhRpr7YFL7gfCm0HoFpDUwCkWlsa5jjeI9Ii6rgTNBmQbPW2Nz
 +t2FAXBzzDG9gi+GI2uhsU0=
X-Google-Smtp-Source: APXvYqxA4kIf6JyrcOnsgnkTGYhGsoMyGre6NzWlKmmX+BmpB1xJ+k/RiPFrNwwsEkKRMXiCtCJ6Mw==
X-Received: by 2002:a1c:c8:: with SMTP id 191mr8109727wma.6.1560026919473;
 Sat, 08 Jun 2019 13:48:39 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-359a-8d64-e90a-f663.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:359a:8d64:e90a:f663])
 by smtp.gmail.com with ESMTPSA id f204sm4986394wme.18.2019.06.08.13.48.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:48:39 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Sat,  8 Jun 2019 22:48:04 +0200
Message-Id: <e3ef5e9ca51ae3169b42d8da5b2f9c623ba53278.1560024463.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560024463.git.petrcvekcz@gmail.com>
References: <cover.1560024463.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_134841_962227_F4CCC257 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v1 1/7] MIPS: lantiq: Move macro directly to
 iomem function
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

Using the variable as a temporary holder for the macro of the register
offset value is not necessary. Move it directly to the IOMEM read/write
call.

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 arch/mips/lantiq/irq.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/arch/mips/lantiq/irq.c b/arch/mips/lantiq/irq.c
index 6549499eb202..fb3e1cc2cf6b 100644
--- a/arch/mips/lantiq/irq.c
+++ b/arch/mips/lantiq/irq.c
@@ -77,44 +77,42 @@ int ltq_eiu_get_irq(int exin)
 
 void ltq_disable_irq(struct irq_data *d)
 {
-	u32 ier = LTQ_ICU_IM0_IER;
 	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
 	int im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
+	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) & ~BIT(offset),
+		    LTQ_ICU_IM0_IER);
 }
 
 void ltq_mask_and_ack_irq(struct irq_data *d)
 {
-	u32 ier = LTQ_ICU_IM0_IER;
-	u32 isr = LTQ_ICU_IM0_ISR;
 	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
 	int im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, ltq_icu_r32(im, ier) & ~BIT(offset), ier);
-	ltq_icu_w32(im, BIT(offset), isr);
+	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) & ~BIT(offset),
+		    LTQ_ICU_IM0_IER);
+	ltq_icu_w32(im, BIT(offset), LTQ_ICU_IM0_ISR);
 }
 
 static void ltq_ack_irq(struct irq_data *d)
 {
-	u32 isr = LTQ_ICU_IM0_ISR;
 	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
 	int im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, BIT(offset), isr);
+	ltq_icu_w32(im, BIT(offset), LTQ_ICU_IM0_ISR);
 }
 
 void ltq_enable_irq(struct irq_data *d)
 {
-	u32 ier = LTQ_ICU_IM0_IER;
 	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
 	int im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, ltq_icu_r32(im, ier) | BIT(offset), ier);
+	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) | BIT(offset),
+		    LTQ_ICU_IM0_IER);
 }
 
 static int ltq_eiu_settype(struct irq_data *d, unsigned int type)
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
