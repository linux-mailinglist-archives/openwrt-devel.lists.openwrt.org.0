Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F133F139258
	for <lists+openwrt-devel@lfdr.de>; Mon, 13 Jan 2020 14:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d2QLra8aDMF1uJxp/1ADsOcDa0oARAx5rFV/cgWP0yI=; b=ibGJogpbEHoIvG
	4foxqyE5lWg4UbFaW7yzQXA9bGfFTBxDighsM9mSSisM4gHkE9L5qAHbsaqvjXxZin1ipNJfRO0fq
	8Lkp8z4Vy7CHpPTcniAxNp/2qupuQawd+ZsUj4j4STy/IvWvgiPp433r/CrZq1nbIyn0PiSgyfKAP
	i7eWTeTRaF/eWKGBxzOCILgpyJ/deZgXt/1si/9IuLt+dGq8qR/4qNZsiutvEEjLcA+5p6JRE83Ue
	dnjTB2DYiLAWQchjM6osGoNHvd7wL2+ePdw3t2AfYRKayECGN0Ymfq8EYB54UQQV0pcks131kqZKF
	XYNULBOhEnNYuwoHhlCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzxx-0004NN-2B; Mon, 13 Jan 2020 13:41:13 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzxm-0004MK-Td
 for openwrt-devel@lists.openwrt.org; Mon, 13 Jan 2020 13:41:05 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1578922861;
 h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=MG5onmUDuhnF680mK7AhRgePimwlJw6bc+g/+fpT5VA=;
 b=iEEGR7gk+YV/mE5q1huNtXNK6/oMzZAmxhkKLSVZXOrYTwqem2UWN/ydlrdhKs0V7xi/CQm6
 cXt/awPCcQWyrClqhmxoHxaItYidWxmvRIFy+9Xxen6JTe5e1I36WtBimTfdMwkVYDG+mRoF
 m1z9jIR5sSIO6PaGBqDsZ/nhMBA=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from ms-arch.localdomain (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5e1c736a.7f7a72c30110-smtp-out-n02;
 Mon, 13 Jan 2020 13:40:58 -0000 (UTC)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 13 Jan 2020 22:40:17 +0900
Message-Id: <20200113134017.11363-1-mans0n@gorani.run>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_054103_148640_5420A59D 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.61.254.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] Revert "ar71xx: fix Arduino Yun enabling of
 level shifters outputs"
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This reverts commit 077253dd666a30ae5231c3748222d4b5b138593d.

The output enable pins should be disabled by default, and only enabled when
used. Otherwise unwanted conflicts might occur between MCU and SoC pins.

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
index e92f68f490..5873248edf 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
@@ -141,7 +141,7 @@ static void __init ds_setup(void)
 
 	// enable OE of level shifter
 	if (gpio_request_one(DS_GPIO_OE,
-	    GPIOF_OUT_INIT_HIGH | GPIOF_EXPORT_DIR_FIXED, "OE-1") != 0)
+	    GPIOF_OUT_INIT_LOW | GPIOF_EXPORT_DIR_FIXED, "OE-1") != 0)
 		printk("Error setting GPIO OE\n");
 
 	if (gpio_request_one(DS_GPIO_UART_ENA,
@@ -150,7 +150,7 @@ static void __init ds_setup(void)
 
 	// enable OE of level shifter
 	if (gpio_request_one(DS_GPIO_OE2,
-	    GPIOF_OUT_INIT_HIGH | GPIOF_EXPORT_DIR_FIXED, "OE-2") != 0)
+	    GPIOF_OUT_INIT_LOW | GPIOF_EXPORT_DIR_FIXED, "OE-2") != 0)
 		printk("Error setting GPIO OE2\n");
 }
 
-- 
2.24.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
