Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F02417AA8E
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 17:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFsCnxuvyPNFLCF0vcyiyfxoDT/ENKrN66xH39rOAVQ=; b=Ed8A3NBSO592vc
	Xwk601M9EBNbzCkgcHh9DWTk1xkCcoFDSHTiLG9oI8TOaMeNpGVs9yOVcIYkh9tQsuO17eL50+THD
	kLMn9A7rO0GdlEE1F5vxMvl0OnMY4+eCMNFnVaV3XAaFS+86FwAS9ul9QW2s6YChdvD4agbJuXWnV
	ZbfDAKrefpHC9yQKI3Miq4qzJm7tSSnYeYpgRMH3GfU+b8RAeTNr6ZOcp4RN436l7ikAn4teZNtAV
	ljpTjuNuSiDZAz0DDr5y6BOrkzh1ZTyODv1OKI9Epjqx7UwCAE0p3T8jfih+bLQqeCSGHW4yLKleR
	jJabDrOnv9zzdV1cMA2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tRg-0004an-1i; Thu, 05 Mar 2020 16:34:00 +0000
Received: from mout-u-204.mailbox.org ([91.198.250.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tQy-0003wS-S5
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 16:33:18 +0000
Received: from mout-u-107.mailbox.org (mout-u-107.mailbox.org [91.198.250.252])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-204.mailbox.org (Postfix) with ESMTPS id 48YGWv4GV4zQlGH;
 Thu,  5 Mar 2020 17:33:15 +0100 (CET)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 48YGWv3VCnzKmhQ;
 Thu,  5 Mar 2020 17:33:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gorani.run; s=MBO0001; 
 t=1583425993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hn6lXYHX3QGS6brIcmJ9TFd226+AKfOgITWkaHfmvco=;
 b=csA9+ogN6TLxrlbqSs/iVFoEUGQQfZETqRD6h4809ILt8fTf2xp63Z0Oj9oEDzn3eOv/7r
 sTXcyLOsNjTK1T50v3hOynETdhPjvFYkcdG74bIDHd8ivj/l9gshim8w8DTk+rQ7t3rTgv
 huj4QK9M6aHTfHH2MFN9U732CbZs3XajqIi46pPRcLxfxUv2E2crG0R8L0QY3PZd5YQeZT
 U21+CJskuSB3ANxXi9ei9tymhCqt6RkJn+yOBiUT+h12a3wd0YwprX7bovgnqVAwDUU+o3
 PTsA3sVouOgFuKn2Q5s5NrybcxByzA33UV0YP8f9cf6Z+m7c/h6Q8v35bWi2lg==
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id s15dYdeUyFiY; Thu,  5 Mar 2020 17:33:12 +0100 (CET)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  6 Mar 2020 01:32:47 +0900
Message-Id: <20200305163248.361572-4-mans0n@gorani.run>
In-Reply-To: <20200305163248.361572-1-mans0n@gorani.run>
References: <20200305163248.361572-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_083317_083731_571A7C15 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.198.250.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 3/4] ar71xx: enable ethernet LED of Arduino
 Yun
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

Commit 05d73a2a7379 enabled GPIO on ethernet LED, but proper LED setup was
not added then. This commit fixes it by reverting the change on the LED.

Fixes: 05d73a2a7379 ("ar71xx: Arduino Yun board 'WLAN RST' button support")

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
index 5873248edf..8ab07d514b 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-arduino-yun.c
@@ -117,8 +117,7 @@ static void __init ds_setup(void)
 	ath79_gpio_function_disable(AR933X_GPIO_FUNC_ETH_SWITCH_LED0_EN |
 								AR933X_GPIO_FUNC_ETH_SWITCH_LED1_EN |
 								AR933X_GPIO_FUNC_ETH_SWITCH_LED2_EN |
-								AR933X_GPIO_FUNC_ETH_SWITCH_LED3_EN |
-								AR933X_GPIO_FUNC_ETH_SWITCH_LED4_EN);
+								AR933X_GPIO_FUNC_ETH_SWITCH_LED3_EN);
 
 	//Disable the Function for some pins to have GPIO functionality active
 	// GPIO6-7-8 and GPIO11
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
