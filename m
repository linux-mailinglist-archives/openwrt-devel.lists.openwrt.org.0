Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88623A20D
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 22:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6q083ImEQoSRHL/cHWzBoJiIcLJfpNbe5U6tFvafj5g=; b=QjHPnaYO1eNFbh
	GFkQpeSJLXxdfcZmmONooylP/NKX/J0+OasTp8S/QKZDpCJeKdKpOpEdSbHkLuLJF02Khw2EbecRx
	q9yxsD6fxaEobD35rd+N1abYq2BIjJEwi9JjJU2ipp27PUMPyLyfsly9dP4knnYKCha/C7W9BpjfA
	YSD1Oq064X2LCFCZoIVYcmyBnF5S2N/oeKo4Ein6OY4QtUzuH0otyobv0m9N/6tiRs7EVzAA4Mpec
	LCbNUt0H8Psx1c/EMmxNZ522/aeStVB6OrrSzI9npabL2GXFPJLpYawafFLh/tH8xVw7a6MsV2Ug0
	Z4dDCIzTrfWwDB13qWhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZiGx-00046U-Nw; Sat, 08 Jun 2019 20:49:07 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZiGb-0003hs-79
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 20:48:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id f9so5394962wre.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 13:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aoxEMTXRyZdBW4b695q86IBvL71gam3jAF4D6e1oWYk=;
 b=c8TvX61Vizh4NM6ZoXVmRU9s6nI/2g6nO3vb76K/l03Tl5OrExY3ge8z9uQb9VOWw7
 wcUWMNQT3uxtUcsEuB22tce14SCwZuSh01sT6ZMjAaHmY5fFx/qbgTIAW3UgS+TF/gra
 7RHdqwqNxaJOFtOuFh7CrZayFR576YfbsDE9jEEzX5GVSf8+JyoKy2MKD71TQ+kdLecW
 PjFZ7WXu8wwjafUBprUUaMC8gH2XwrnX8MOszR1Yv+6l1Pqj5wtHVEO6gwwfCk8/2x2Q
 vw7hbJNFO2mMEzq0OO24bAz3yr8CoGRlgAiuqc+GezYXq4F6mSziqI5ld407IRR4asPy
 ENhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aoxEMTXRyZdBW4b695q86IBvL71gam3jAF4D6e1oWYk=;
 b=qNL9A/ESHHsfitzI27jy/xwmFCdiHp1HRJpUDL2htsYCb9k6nUtoktx4v/QWGxWhqw
 HUGSGW8V1pUJt83t2TsYsHRMgiJz6kWoENFEjLZKMZu5wq155ape3S70gMk83+fi94tg
 t/ZsGaXbMqbHQ9vbZjGkxRbRMfIsnkrw0Nj7lQEn4nIGvpTLYoOg+iDFMzuyY9j2OF+m
 T3yu8ijfkbJyd6PS3ucvcwAbp49OKFjIpm91PNRhSSaQvgVIknCn1Y1MYSSQMiwtGMay
 8cr7Ys0iSlsRY1eRJdXS3+OArL2+hlbOx0RuMmoflQEbqWmr6phQZ0sgJ9UNI7B/0xAq
 P+Cw==
X-Gm-Message-State: APjAAAW1qCGIn3FEO5B6sCm6chGRTnFXYYhfS3mX/QKKeanbB279qgcX
 OpS43NOpkBabzpEArmet5hFKnYRw
X-Google-Smtp-Source: APXvYqxxtwgU7Ux7lKkMb2sAx8m9aremOqEvUTaNznM7Ug0pFPHWdrojJhYW4xVECXdNva+oh6dB+g==
X-Received: by 2002:a5d:424f:: with SMTP id s15mr10316924wrr.37.1560026923189; 
 Sat, 08 Jun 2019 13:48:43 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-359a-8d64-e90a-f663.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:359a:8d64:e90a:f663])
 by smtp.gmail.com with ESMTPSA id f204sm4986394wme.18.2019.06.08.13.48.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:48:42 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Sat,  8 Jun 2019 22:48:05 +0200
Message-Id: <799e71c36228ff077087e2b4545a5e5275e53729.1560024463.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560024463.git.petrcvekcz@gmail.com>
References: <cover.1560024463.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_134845_265001_15DC59F8 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v1 2/7] MIPS: lantiq: Change variables to
 the same type as the source
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

A structure irq_data, irq_desc_get_irq() and irq_linear_revmap() use
a different type than defined in the lantiq ICU driver, which is using
signed integers. The substracted result should never be negative nor is
tested for that situation. Change it to unsigned.

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 arch/mips/lantiq/irq.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/mips/lantiq/irq.c b/arch/mips/lantiq/irq.c
index fb3e1cc2cf6b..ef946eb41439 100644
--- a/arch/mips/lantiq/irq.c
+++ b/arch/mips/lantiq/irq.c
@@ -77,8 +77,8 @@ int ltq_eiu_get_irq(int exin)
 
 void ltq_disable_irq(struct irq_data *d)
 {
-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
-	int im = offset / INT_NUM_IM_OFFSET;
+	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
 	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) & ~BIT(offset),
@@ -87,8 +87,8 @@ void ltq_disable_irq(struct irq_data *d)
 
 void ltq_mask_and_ack_irq(struct irq_data *d)
 {
-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
-	int im = offset / INT_NUM_IM_OFFSET;
+	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
 	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) & ~BIT(offset),
@@ -98,8 +98,8 @@ void ltq_mask_and_ack_irq(struct irq_data *d)
 
 static void ltq_ack_irq(struct irq_data *d)
 {
-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
-	int im = offset / INT_NUM_IM_OFFSET;
+	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
 	ltq_icu_w32(im, BIT(offset), LTQ_ICU_IM0_ISR);
@@ -107,8 +107,8 @@ static void ltq_ack_irq(struct irq_data *d)
 
 void ltq_enable_irq(struct irq_data *d)
 {
-	int offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
-	int im = offset / INT_NUM_IM_OFFSET;
+	unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
+	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
 	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) | BIT(offset),
@@ -224,9 +224,9 @@ static struct irq_chip ltq_eiu_type = {
 
 static void ltq_hw_irq_handler(struct irq_desc *desc)
 {
-	int module = irq_desc_get_irq(desc) - 2;
+	unsigned int module = irq_desc_get_irq(desc) - 2;
 	u32 irq;
-	int hwirq;
+	irq_hw_number_t hwirq;
 
 	irq = ltq_icu_r32(module, LTQ_ICU_IM0_IOSR);
 	if (irq == 0)
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
