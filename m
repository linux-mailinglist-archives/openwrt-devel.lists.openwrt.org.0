Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F0D4DCEB
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 23:41:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLIgJCgFwqz2/zPOdXYtGlj5w3rxi/IetjIUZK9hrHo=; b=Zif728uLDMajyd
	9fEdrnArnzDKIEix7gtIgZZxWn2Dn1jFhzUERV+TpJKKezNGqwtXXuS5npvzhVVv7VxzMMPY+OUCh
	s/psok9ZASPuMylF7iFV8w+N/8lIVvfOHx506iVcB6EkSTIHOCPWRlwtxYiLybBC3rBdgwDBswBqn
	muRhu+Jt0vZvrrJqoVZ1aZwbMatj85WWxhgcfAT4pIdaguf6MDdR0aRCbtPaWCFIrbVnp4tOwsHz4
	nEIcbjZ/G4dTG4BWa1o5IJ7lOQs+R27t2qog+KQPyj61bkWrZvkClo/t18uJt6+Xyw6cVwfZKq5tx
	RdxkLy/GlUHwBVUd70OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4oH-0006U8-Vz; Thu, 20 Jun 2019 21:41:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4mI-0003UI-8Q
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 21:39:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so4499964wrs.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 14:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=acjgtnfZM5+ljClU7KhpnoMYZUUlOHiWM5nNWs1Eo98=;
 b=VGQ4w5Go605TQmCEYTXdnEQDLuDjBy/4JC4cTBrBAgCQUaxEahj8OY/ca+bYkEhRb1
 5vG+vdbpFZWXSKBiMT9o5Zh9pgpCALb/NX2DRTif6PIR//2N1lVt68IftTKHmtmznsLd
 Hq+hB+eS2BGdyfSMm2D7xEO/V4pPxazNFsklE8qPwElNFwL3iFs81us4qlRAF0wCvAkg
 afebjHELKRfpKk+TLtiiX7jZ3DMqYKdvP//GQ7jUKEht4ncUKcBMmzMZW3u9OYqWquLW
 OL2NHqalQqYN6X5pF6p63LcR1eNmiZ/iTnaIjft/kUgV1RM75kYb8sFugqOpUfBggzYJ
 hfkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=acjgtnfZM5+ljClU7KhpnoMYZUUlOHiWM5nNWs1Eo98=;
 b=V/3SA3Piy0FeG5mqTSu/7jlgQf6kjCcQfe4ZqvWnJtp7FWRbp9E0eRkRNAQdcwoBnm
 ZmTdLlamnPgJOCBvG8XJsPScxLyD0CKSr16Usk+1IrkAnqwOdUGmGlizRfLjcy+1tyXE
 K+D0xQ8wewUXxcD5GAwt9FYrgdLwzBs3ZONfk8o3IxAiMRUrNdZ7QFfoBB/ctsLrbQ7b
 yG4F5Vtro3yAWSS+bho7BfDTrORXfR5WQht9DhedJXyTBtdqVTGnAWyEXOgtW5pE7L5Q
 HqI25tmL4W76/prYAlsla3Wf1tdpK7729dcrKb6NVHfP50EAGd9MGZtTMT1NtxJ6nzln
 LpAQ==
X-Gm-Message-State: APjAAAWEWPtQl7KRRwmFK/S7ygKRP025q8OI16CuexkfuoEwSLB/1+Ri
 z4Z4fAkBAXQLBkpUyjn6VO9FoR15
X-Google-Smtp-Source: APXvYqyPH8F2fDKmvqu44PVP/pItOJUWglqn49sM52ko+RQL8xu4mDYvtnmW5Y985xINnlkXV8PDxg==
X-Received: by 2002:adf:eacd:: with SMTP id o13mr21094872wrn.91.1561066767148; 
 Thu, 20 Jun 2019 14:39:27 -0700 (PDT)
Received: from kontron.lan
 (2001-1ae9-0ff1-f191-ecaa-d74f-d492-3738.ip6.tmcz.cz.
 [2001:1ae9:ff1:f191:ecaa:d74f:d492:3738])
 by smtp.gmail.com with ESMTPSA id j4sm575426wrx.57.2019.06.20.14.39.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 14:39:26 -0700 (PDT)
From: petrcvekcz@gmail.com
X-Google-Original-From: petrcvekcz.gmail.com
To: hauke@hauke-m.de,
	john@phrozen.org
Date: Thu, 20 Jun 2019 23:39:36 +0200
Message-Id: <4b59c74cb4dcf89ae034c4cfe71d942d7588ad7f.1561065843.git.petrcvekcz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1561065843.git.petrcvekcz@gmail.com>
References: <cover.1561065843.git.petrcvekcz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_143930_809114_06E7C29A 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Subject: [OpenWrt-Devel] [PATCH v2 4/7] MIPS: lantiq: Remove unused macros
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
