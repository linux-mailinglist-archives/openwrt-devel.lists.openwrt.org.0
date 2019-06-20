Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D86C34DCE9
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 23:41:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBK6rLBbhpQJ3mKWFPDPBVXYTa1KKqROU3EIgU/kg0U=; b=eJuQ1elpTiR2xC
	WIXN6BcUVNiP+DNQwj80+TW3kK2gyUSFaN7g2S5LWbPHWTAhpWVobDocUJaK/32P3OOS9ay1bZLny
	Ab16FVAbT+hCY9590ho5btBS4M48jbs6Dn2BXIurSszXQl+m8gWc3xrzF+AEnef70SqVQSTUE/W4S
	rlBpEY7vxkat7A6i3v5TFWMqfAgxaHRTcfjHY7Lrg7cZIh5Ss54hs88dWFITmieWUQOhE9z5YbXI/
	IFgJUtzlhdkBM9yZY4kLJ2pLk+xXA9Xxf33YkOoK/L/CBR8Fvw3otz6/qKUl2lly7FqN9YhlbbGrn
	t98d47UaMAPKpPerfyOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4o5-0006Em-IT; Thu, 20 Jun 2019 21:41:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4mH-0003V1-SF
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 21:39:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so4452563wrw.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 14:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NDkhvgtD/o0cYL0eRaqTRxOMPTqLlZ8l9oete6cnkdg=;
 b=u1703qGeun92yqCuRMsSPPlt6SCwhBVim6l5cOnkSnKiZ1Zp6CuIdJ3uRwz02SBBuk
 +H1SpftyQWtwAZKuIllhnh659xM0DKoApf6HapLa8/ZCL5xepIGTRttf+sFFfJGHq6wC
 QHORcz+tH6Z9MHqIOhKJYc1G0GaiutU2I+/xxw9skE2KeCALOA8p7VEj2MxxVZqYyZRs
 EuxQiD5OaGT/4znPOyPjT9gYCMo9ubggXlffn1huBrG636k8Odef+R2HQ/gsvB25kdtL
 bKCF83TZ6IULoWgOjhVJUJZd2cdsfXDIRpADHZXfijxAKU+L824fL0jH0RBvzgHXS6ED
 TP2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NDkhvgtD/o0cYL0eRaqTRxOMPTqLlZ8l9oete6cnkdg=;
 b=pEN2m/8A3yrJVXVDD0lH+bPhMhtnoafSRaCKuzD6jyofyMGGT5LAOynKi1ixp+x5f+
 K7dQ9hcLOUlZLJnDaBB0Evtth7oyKLN2F4LBoDhMJaGb4jax9aPg7oX+lOzHvVKvztpb
 B/5Ad571nbGHn2r6+jxAgM95enwL96amBubzGWi/tOVaAglZDasiH6GS8tarhQgnctJw
 cGImVGs3zaCVFjaK9/xGLpWT811g6rW+sEYJn7rAh9FdWMWK7fNiBy2trd1RcdIzzuKt
 jEkYato9VU3V7ai/bXQADV3glH6pln1mINTwd7UnnW5VKZXMVbduoUPAv8NAw1+NU+9N
 81kQ==
X-Gm-Message-State: APjAAAW9WMnJ8Y+8YSJYQ1EuMm+5iispTd0Rv6tDsG33CnuIhqlK+uFh
 9yMdULQmX3HxyBlbE2BosgSSsb16
X-Google-Smtp-Source: APXvYqyZ0GhHA1sqVl08N5c2krQx9+bCPv2EEY5VHEaTc6DXvLMMIuA4h3mv2AN9tb5dFbDfB2MC/w==
X-Received: by 2002:adf:efcb:: with SMTP id i11mr44748749wrp.188.1561066768785; 
 Thu, 20 Jun 2019 14:39:28 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-ecaa-d74f-d492-3738.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:ecaa:d74f:d492:3738])
 by smtp.gmail.com with ESMTPSA id j4sm575426wrx.57.2019.06.20.14.39.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:39:28 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Thu, 20 Jun 2019 23:39:38 +0200
Message-Id: <7dd5524c05dc31610d550eb83a401728c64d9105.1561065843.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561065843.git.petrcvekcz@gmail.com>
References: <cover.1561065843.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143930_073569_9A7628D8 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v2 6/7] MIPS: lantiq: Shorten register names,
 remove unused macros
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

The macros LTQ_ICU_IM1_ISR and LTQ_ICU_OFFSET seems to be unused, remove
them. Allong with that, remove _IM0 substring from the macro names. The
IM (interrupt module) is already defined in IOMEM access and IM0 would be
misleading.

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 arch/mips/lantiq/irq.c | 34 ++++++++++++++++------------------
 1 file changed, 16 insertions(+), 18 deletions(-)

diff --git a/arch/mips/lantiq/irq.c b/arch/mips/lantiq/irq.c
index 35d7c5f6d159..b9ca20ff07d5 100644
--- a/arch/mips/lantiq/irq.c
+++ b/arch/mips/lantiq/irq.c
@@ -22,13 +22,11 @@
 #include <irq.h>
 
 /* register definitions - internal irqs */
-#define LTQ_ICU_IM0_ISR		0x0000
-#define LTQ_ICU_IM0_IER		0x0008
-#define LTQ_ICU_IM0_IOSR	0x0010
-#define LTQ_ICU_IM0_IRSR	0x0018
-#define LTQ_ICU_IM0_IMR		0x0020
-#define LTQ_ICU_IM1_ISR		0x0028
-#define LTQ_ICU_OFFSET		(LTQ_ICU_IM1_ISR - LTQ_ICU_IM0_ISR)
+#define LTQ_ICU_ISR		0x0000
+#define LTQ_ICU_IER		0x0008
+#define LTQ_ICU_IOSR		0x0010
+#define LTQ_ICU_IRSR		0x0018
+#define LTQ_ICU_IMR		0x0020
 
 /* register definitions - external irqs */
 #define LTQ_EIU_EXIN_C		0x0000
@@ -77,8 +75,8 @@ void ltq_disable_irq(struct irq_data *d)
 	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) & ~BIT(offset),
-		    LTQ_ICU_IM0_IER);
+	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IER) & ~BIT(offset),
+		    LTQ_ICU_IER);
 }
 
 void ltq_mask_and_ack_irq(struct irq_data *d)
@@ -87,9 +85,9 @@ void ltq_mask_and_ack_irq(struct irq_data *d)
 	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) & ~BIT(offset),
-		    LTQ_ICU_IM0_IER);
-	ltq_icu_w32(im, BIT(offset), LTQ_ICU_IM0_ISR);
+	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IER) & ~BIT(offset),
+		    LTQ_ICU_IER);
+	ltq_icu_w32(im, BIT(offset), LTQ_ICU_ISR);
 }
 
 static void ltq_ack_irq(struct irq_data *d)
@@ -98,7 +96,7 @@ static void ltq_ack_irq(struct irq_data *d)
 	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, BIT(offset), LTQ_ICU_IM0_ISR);
+	ltq_icu_w32(im, BIT(offset), LTQ_ICU_ISR);
 }
 
 void ltq_enable_irq(struct irq_data *d)
@@ -107,8 +105,8 @@ void ltq_enable_irq(struct irq_data *d)
 	unsigned long im = offset / INT_NUM_IM_OFFSET;
 
 	offset %= INT_NUM_IM_OFFSET;
-	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IM0_IER) | BIT(offset),
-		    LTQ_ICU_IM0_IER);
+	ltq_icu_w32(im, ltq_icu_r32(im, LTQ_ICU_IER) | BIT(offset),
+		    LTQ_ICU_IER);
 }
 
 static int ltq_eiu_settype(struct irq_data *d, unsigned int type)
@@ -225,7 +223,7 @@ static void ltq_hw_irq_handler(struct irq_desc *desc)
 	u32 irq;
 	irq_hw_number_t hwirq;
 
-	irq = ltq_icu_r32(module, LTQ_ICU_IM0_IOSR);
+	irq = ltq_icu_r32(module, LTQ_ICU_IOSR);
 	if (irq == 0)
 		return;
 
@@ -288,9 +286,9 @@ int __init icu_of_init(struct device_node *node, struct device_node *parent)
 	/* turn off all irqs by default */
 	for (i = 0; i < MAX_IM; i++) {
 		/* make sure all irqs are turned off by default */
-		ltq_icu_w32(i, 0, LTQ_ICU_IM0_IER);
+		ltq_icu_w32(i, 0, LTQ_ICU_IER);
 		/* clear all possibly pending interrupts */
-		ltq_icu_w32(i, ~0, LTQ_ICU_IM0_ISR);
+		ltq_icu_w32(i, ~0, LTQ_ICU_ISR);
 	}
 
 	mips_cpu_irq_init();
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
