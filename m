Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32A04DCE6
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 23:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6q083ImEQoSRHL/cHWzBoJiIcLJfpNbe5U6tFvafj5g=; b=R5sh+bhoaLXixJ
	9llrgrhhCA4filBr2nLZmC4akxcOqjh9praORtYaYzF5J6YXYuZwqTy7pLAyfXH1+j9A8mxxVCy6K
	tOp/RbYQaVh9cHMItoVNiCerx3HefTHf+Mjj2iIaoiGYwwfKp6aAIVwZSfMgklCWYbMM64UCtc+uS
	Uif0VGqQNrzWqKMP/2jjQVxQENVTpauFx4y+idaNds/TyOA6vulEJjeAUZP+vdTu3wqfRvzG3WJ19
	QucykZvUi3SElhRAqOgMlDFA9afdbCR3geV1T2A0WQhWRR70uselvpKQZkGPSGopU/08AA8hvSM7H
	BU/XQiTzPCV1xv8uRaeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4nO-0005Sc-EJ; Thu, 20 Jun 2019 21:40:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4mF-0003SG-28
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 21:39:30 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so3298588wrs.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 14:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aoxEMTXRyZdBW4b695q86IBvL71gam3jAF4D6e1oWYk=;
 b=npw55f+ATcn6mfPxVcEVb2eOu5sTVShGqtID0EYa5ifUEqucGxmsZYAI/xvfLgibf/
 nWff/Odeku9OVz5QRfQaTcUONulf+9Og4zBpqm7WyS3vKCJek0FUxap2ToZEvU9pA3i9
 DdLtieqrR0E3QXK+pMvoq9xg0QeeSL2upahwvya06YHUJrJROtTSB7xb1uc87EVqV+hf
 kmHA16gT3hZgeg7NuXCRIcTN6NybC5XYoqp+Q2wuRYLa5NCHbD3RdALNJzRDXYRHGviW
 ZkxBKP+aP3cD67eMFYdlVrFIjkqLqCLQ56ry1CeIr0QZ0I9/WnWI53MCnhb3qBHEq2vI
 dBsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aoxEMTXRyZdBW4b695q86IBvL71gam3jAF4D6e1oWYk=;
 b=LLs6vmpD4TPhqFRRUDCuUYy7dZLOHM4ZhCr/SvbehYD+0yaj0OlDSw8ehBo2TIPxiq
 ULf3zv1aQuD3X/mEsfSRdxAU2JBAPJDhUOvtiXVBK6aDo2PI3NgwdKtt59r4DGPb8N0r
 7dI9uRMM+4CvTRmNwj34Ev7OZQQ7HRUqyCdXU2/o+5TCh8OWDs21SjFoDlaImbZN1oE6
 4jA6dYA+e829m2Nlh7pjAgu9XXRT2asO1bJeyrNVeqOQkY6qwwVd7mSXNB4cjXfJXyyq
 JnhnEWvJOxdi9isgrxvtofdXv7MER8JwT6GvyWxRbeO8n66rjRTkSZQKledMVs5rWA5Q
 HljQ==
X-Gm-Message-State: APjAAAXR23vPwDtJJ0+lgNVSuOVuxQE6VtfB6zups0v5US+HxaRddj+T
 3hqWxj8w0zn4DV3Xg+I0Y5k=
X-Google-Smtp-Source: APXvYqwnqWLBKxor2zNDz1OVCipLWIoOFPUlgwTBwdTPBMZQvkXyztHMgGfSVTdjpJenW2DYphijNQ==
X-Received: by 2002:adf:ed41:: with SMTP id u1mr45563754wro.162.1561066765557; 
 Thu, 20 Jun 2019 14:39:25 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-ecaa-d74f-d492-3738.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:ecaa:d74f:d492:3738])
 by smtp.gmail.com with ESMTPSA id j4sm575426wrx.57.2019.06.20.14.39.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:39:25 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Thu, 20 Jun 2019 23:39:34 +0200
Message-Id: <bf6dd033516c90636f75595c12b1f3c0a3331d28.1561065843.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561065843.git.petrcvekcz@gmail.com>
References: <cover.1561065843.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143927_157958_77B535A9 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v2 2/7] MIPS: lantiq: Change variables to
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
