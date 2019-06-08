Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C073A212
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 22:49:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBK6rLBbhpQJ3mKWFPDPBVXYTa1KKqROU3EIgU/kg0U=; b=TB2ZbxNlR5SnEO
	TUX/rT10afpJ+aPD/0b5sCFSzfB+n3tW40dV87qx4jCNIkRx8GYois9e9XGjoRtiGxz4bRqd/DIOX
	G3+QJ6Xwx2CIe9iu1rtYySCPYAtg4Eao4I0vZIZ/hkuS7bUY+X2+ot2V/dfQ3HrDFclKmjWKajMRl
	1B4uQg/j2httxXdAtNyXgQcJMKPICxtN8nIoB9Y6S7tUz9qBMVAwpUG8HVzTnOEHZpteT1/dG4N/A
	o/4wpFKtiQj9vgcn7SlTGVGFPV4or/TnCj3Xi6AIb0BPHto/SKK5C7jbyueSp5+pSnJAmXcN6s29j
	alnIWsePDrgbDYOjHUag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZiHf-0005EJ-SA; Sat, 08 Jun 2019 20:49:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZiGj-0003uy-Lm
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 20:48:55 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so5453095wru.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 13:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NDkhvgtD/o0cYL0eRaqTRxOMPTqLlZ8l9oete6cnkdg=;
 b=b2sWoyvyFLmxT+oY88f/Ny6QzzIZROW+5Dum6y6X09IhNYT1UCGdaeKVWbXOP3Ictk
 GTdSNc0olhc/TPrc70GdlcH2HBJXi/TW3kNfHU4JpHBpX8qliroBFb3Hl+Cj+5B+trH7
 pXeQ5PxfozheKWnYSa5jWVgDaaMmmXk3qSEfdCNE8USw1BtFoGHSCEfAnF4Tlwei7AzO
 u5hH5GzHSJIpJGexKvTMWkivrhuZF2l6df0N+NvnTA24O/I2f/T8kijcnMvkHPf0Xlw9
 IafA6VDydYvrBYBx7SOf5Xf93IhPctIrl7SEH121rs7Cb3dSGmvBcX6ZbrR6TXLXgvsi
 H7yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NDkhvgtD/o0cYL0eRaqTRxOMPTqLlZ8l9oete6cnkdg=;
 b=WgOUOSwkejdDRaKU2efF80C4cLXlfIw734B27vIdcgZb/YOWSEQVm6UWwrLlSPJcmd
 +ayvjtpTbJA/GFs5JCA7GaWVvJc154vXSwLRViYY5J4Rru0S7auqG21oM/yPNor/wjHv
 Wew/OxnJED0gc+9LP7pbXjYGj+8l54ZUxmXVRjzeShotVRhjE6ItT+HDhtssLXxOjCaS
 UljE7qIOv6KpgyIqGKxsWJITj6HIvz0jRj1X3jxNmMVlPM6xE/WLmmTDmOxcB6Jt3ABv
 xtgqG0LGsD03COvS68FzD9PL0Q4+HvXMEFgyYM3evGGm4bz3rSro8DSc7iGy3gY0Gg0L
 GJag==
X-Gm-Message-State: APjAAAWCGzlWiZTkZKaSu2nTWZoYfiXN3TN78uqUiEeJ0s8mesP9UB0b
 GYBfklfJANyNUX7CzK13d1g=
X-Google-Smtp-Source: APXvYqxrllq2YXhlFbcTSCsE5eJWOW2xflbeXjr/f27HPYjPDsi8g6gG0ubMjJ9KX8tqQneExDtxOA==
X-Received: by 2002:adf:ef09:: with SMTP id e9mr24636275wro.79.1560026932396; 
 Sat, 08 Jun 2019 13:48:52 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-359a-8d64-e90a-f663.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:359a:8d64:e90a:f663])
 by smtp.gmail.com with ESMTPSA id f204sm4986394wme.18.2019.06.08.13.48.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:48:52 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Sat,  8 Jun 2019 22:48:09 +0200
Message-Id: <430d6780b19250426ad4aa32f8382d62fe7e7dd0.1560024463.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560024463.git.petrcvekcz@gmail.com>
References: <cover.1560024463.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_134853_861345_4DAEF075 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v1 6/7] MIPS: lantiq: Shorten register names,
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
