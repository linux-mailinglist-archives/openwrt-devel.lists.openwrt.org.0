Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E935A4DCE2
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 23:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4h5F/blmxNVJE7PpfuW+LmluwNgucgnV2/Pk0+Fu/w=; b=TEJWj8K8wmr3Qv
	GHqI0KWCEE7mz/EklTcrGPNsVIGqSpIItJwGxMRmucMRelbjIYEliN2qucmbiUIGnkFWQ1rH5EGmw
	pAvJkEryuxQIDThDbOsvJX4CWVBTja66Vt3aOUmQr0jkAn4kFlAqnKPKvFUj+oab5nmqsnpGn2mRs
	9xoFwc2mR2fCM73izFlQlTpGYc9MAQZYgPvZROYcDo01F/4fr9GAcnarZ9jRHY1SNpt4cn8Kr/lMU
	QQydV7OSj6OsCGZ2OwndjqFqdTrkp50drgPM4TvItUfCgEApYQU3cJm7jtNQP0xLMlUGEq2FYha3D
	TlPQwC/3mdzUBNfLdAKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4ms-0003in-7M; Thu, 20 Jun 2019 21:40:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4mF-0003RU-1s
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 21:39:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id c6so4581632wml.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 14:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UtD9LqGAYakgNOjMfkfswsTmJIWlE3YoJFMFCxDn+fg=;
 b=SfpmR39vtZGZxS6dTuarEBSd9HKz0/5fgUtH3pk6UbVhjKEpID/hEymGZj+k9C6rvS
 hvzk19T289V0K+7LTh31LI7Jh/KD7Hm5Zi4HciWIhu/cPgreTQd+5+1VWwyeI05ax2ji
 ty6ZOKz340jeiMpGarwF8hn7GSVL9h3lLmLFA/g/E97uyA3aj4moyLu/E9rY5R25zHeg
 l6ZCThX1kIn3E7N93O4H8VJQCHUr3XNLoQOKPYOGXOQVdZ12u9d/kUkiPbzydd/VgAWl
 MTZh13I1tpqGmmiIf0h1IWSVY7xTcr2aIMOfit+amRUKLC10c1YZbfYiK+fyvD9e3DvO
 B7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UtD9LqGAYakgNOjMfkfswsTmJIWlE3YoJFMFCxDn+fg=;
 b=LNR2Dbj74rTdoTk35jgl7pfjJD3ABYcadKXGT420tBC8cD+Wo8twBMV3HTGkjsEURs
 qBAmDpH6GD77wijDTu8DYbaKw5K6GnHAbDEL/fL14GmXmDPFhiWt13iLKM3RqMDh4zMf
 xdvOgiczZ2+xYAT9g9f+/mpXeQ9XmiEte9Gnwif+MRkpDZsezYjZx6Sig1i1mRFCKcfI
 mrtkEc8HKiMpoyMxHDACiQxWW+I0ajprwUM++lHY0rndqzDNmmm2kwlLahgW5ocsjHqV
 ziDt1FYAcztA5GwPvlkAYBNxx0Z6u1xEM0oJVYI2CWU4lAPClyncl0By7oJSnaNOjJMB
 3BjQ==
X-Gm-Message-State: APjAAAWY/TviGNxxoLVQxRec1bEZ80poLOAMmAvMzukt/aOvRwosLDuL
 W9/QmmtgqDR86ChaB6jgLt8=
X-Google-Smtp-Source: APXvYqxAd6Z1+l/sGHqX3fn8NMyCLFvKK8eQVWWo/PMLag6OkyJxJ9QvZXTrHxxfbTArMQNl2oCrow==
X-Received: by 2002:a1c:7304:: with SMTP id d4mr959956wmb.39.1561066764731;
 Thu, 20 Jun 2019 14:39:24 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-ecaa-d74f-d492-3738.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:ecaa:d74f:d492:3738])
 by smtp.gmail.com with ESMTPSA id j4sm575426wrx.57.2019.06.20.14.39.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:39:24 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Thu, 20 Jun 2019 23:39:33 +0200
Message-Id: <ab12b57b489226e6075a9224ca76a8bc48eb7c69.1561065843.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561065843.git.petrcvekcz@gmail.com>
References: <cover.1561065843.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143927_165243_199D4D23 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 1/7] MIPS: lantiq: Move macro directly to
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
