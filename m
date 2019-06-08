Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7293A210
	for <lists+openwrt-devel@lfdr.de>; Sat,  8 Jun 2019 22:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLIgJCgFwqz2/zPOdXYtGlj5w3rxi/IetjIUZK9hrHo=; b=CtJjMVQC/cqa1n
	cGDNlq/4SiHGLnfoTKlHCOuQnXrCKqVyobn9yZfvQIS5zsEVQtmBEezWowlj0buIylEj3lreSeXpO
	dgQe7pWrEcqfFJkCYbrjkHEvxcX7Ie+WGVhqFY9mme+UQQ0/VjJg5FgUDq3jEUvCzOyx9XwjBUS4V
	kk7WpRdlvGU6IUv3vcDYMbGq/Xi0ujj48zkoEn2WFsHdLuREifSkNjd9SosuCU3YnTEwRa1H+zZVa
	5cjVmY06bpdPgVOwcgSzoJT9IAwK/51sHWA67eemCap930Ky8xOtGPdK08nxnE14xUQ3CSSBsBkGo
	WM05VEdCNsaa5STl/7Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZiHN-0004jj-Ik; Sat, 08 Jun 2019 20:49:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZiGf-0003oK-Ix
 for openwrt-devel@lists.openwrt.org; Sat, 08 Jun 2019 20:48:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so5416584wrs.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 08 Jun 2019 13:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=acjgtnfZM5+ljClU7KhpnoMYZUUlOHiWM5nNWs1Eo98=;
 b=hNfcyjqhuvXJAtaFSSotaRfOcxQ1ZnU9e1QriFcxjibGRhteg9Ucr9TtUqdmKmJX3P
 S2jW21TiOwDeMcNUxt3BWv/uj6t+NzlUfjSzbjMRr1317ye6mBEyvIMxLXYC4j6CSM01
 4LGHE06ttI7Wu+mCdmn7QJR+Vj6/M+tlu8FL9qogBYUBwDKXEZsKRanh1mtPFiuCO7FN
 QCTMKakHQWIzn5OeVEcpiMDCXgt/Gr9Scbka9erWngAdZHzVs0fyuY5+w07MAckUfBzc
 nywWVENiEslnTrsBEIxE/PmQM8lQyrFT4yIfbdlKusAJxyTnlPbmzeWknLQ3jwvUEdEL
 OCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=acjgtnfZM5+ljClU7KhpnoMYZUUlOHiWM5nNWs1Eo98=;
 b=M+ul/BBJaQlsT/tKeI9Pmj1GndZNq/7wENFnUcAHHA/rnN4y+DKDSNhdOy25myLHvD
 QmFXC9W+e5SE2uV4g0EJTdZDmBhstJKIobY5TcZMfGBLRz81eqtWr4l8LlhsoWRxZ8G7
 Zh9Q0fOqRnUidF2rP6O9vVoMtA7AVUpv7fxnKsWN0MK8DNewA7X+Mi14evwqNAY4Wi7/
 wnktOpse57NdlS2m30cuQS5lBpSr4A7CSfNIGTq7jtXu2MLPHpOZryppOgwAsC+pWI0V
 Bnvl3oQBMqSyko/wJ4M4Z8VoEFBmp1+mO3ibEEJoliar0Ry19oEBqrTS6eXn/cC6dDAk
 ZXdQ==
X-Gm-Message-State: APjAAAUOUPTCQwHTBawuBpI46dur+wj9bulu5exfOllLAfqH23TT41lc
 yzabq4wChwq8Mx3BZTAkoYQ=
X-Google-Smtp-Source: APXvYqzcB1B6B8BjfG4zuebkHlw6A/0J7EtIAvsIyA0gCg26GTnBSXxxa7/TM7FMVVg5P1sFeQveUQ==
X-Received: by 2002:adf:b447:: with SMTP id v7mr3710307wrd.208.1560026928461; 
 Sat, 08 Jun 2019 13:48:48 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-359a-8d64-e90a-f663.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:359a:8d64:e90a:f663])
 by smtp.gmail.com with ESMTPSA id f204sm4986394wme.18.2019.06.08.13.48.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 13:48:48 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Sat,  8 Jun 2019 22:48:07 +0200
Message-Id: <1ebc11c9588ddf0afcec336b35b50751fe1e89f8.1560024463.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1560024463.git.petrcvekcz@gmail.com>
References: <cover.1560024463.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_134849_658614_92BEA973 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
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
Subject: [OpenWrt-Devel] [PATCH v1 4/7] MIPS: lantiq: Remove unused macros
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

The last use of both macros was in 4.11.

Signed-off-by: Petr Cvek <petrcvekcz@gmail.com>
---
 arch/mips/lantiq/irq.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/mips/lantiq/irq.c b/arch/mips/lantiq/irq.c
index 2df5d37d0a7b..21ccd580f8f5 100644
--- a/arch/mips/lantiq/irq.c
+++ b/arch/mips/lantiq/irq.c
@@ -54,10 +54,6 @@
 #define ltq_eiu_w32(x, y)	ltq_w32((x), ltq_eiu_membase + (y))
 #define ltq_eiu_r32(x)		ltq_r32(ltq_eiu_membase + (x))
 
-/* our 2 ipi interrupts for VSMP */
-#define MIPS_CPU_IPI_RESCHED_IRQ	0
-#define MIPS_CPU_IPI_CALL_IRQ		1
-
 /* we have a cascade of 8 irqs */
 #define MIPS_CPU_IRQ_CASCADE		8
 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
