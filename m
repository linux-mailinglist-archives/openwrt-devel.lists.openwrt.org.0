Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6FC1945FE
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 19:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Eo0WRKTiNeU6+C0BJvjYk8P9c8pP6wsjswYHObDuIs=; b=Hf+eWxq3vDExdS
	Eba0wWHWo2n/GGIwVKMX6acb45i+mDM9j+S1Yd/br6pP9/WdiQA/ueFDfhwBMROn8p2ZvqLz/aZlS
	N/AxVo1OYcPLvcibxTD2CcmbAvqtUbBQcu+w6yy7Qyx8Vo20MiPJk2fE4JUSnMyaheCCeBLW9JIWV
	u73HR48ZWHmGSfhhZYZAEzCVsGwN18PTwsg3gnH9grs0X+At2HE9x334cq8cSnv6dDytK8/zhsaKr
	94AVNkcIz7xYzS7XYmu909xPuVcsqnAmYQfJDYy1foR5NwlWwsatWKTv/YZ2C3Kw/dIAXe/0U1+As
	LhCrLS1/ZUQJFsBAnnAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWrV-0004wO-IE; Thu, 26 Mar 2020 18:04:13 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWrM-0004vi-AM
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 18:04:06 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9]
 (helo=localhost.localdomain)
 by mails.bitsofnetworks.org with esmtp (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1jHWrG-0001FD-AD; Thu, 26 Mar 2020 19:03:58 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 26 Mar 2020 19:03:42 +0100
Message-Id: <20200326180342.726947-1-baptiste@bitsofnetworks.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110404_521316_64E5E3E4 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ar71xx: Fix gigabit switch support for
 Mikrotik RB951G-2HnD
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
Cc: Baptiste Jonglez <git@bitsofnetworks.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Baptiste Jonglez <git@bitsofnetworks.org>

Without this patch, when using rev 3 of the Atheros AR9344 SoC, the
gigabit switch (AR8327) does not work or works very erratically.

This is a re-spin of http://patchwork.ozlabs.org/patch/419857/ with a
different PLL value, according to the feedback from several users
(including myself) as shown here:

  https://openwrt.org/toh/mikrotik/rb2011uias#tracking_reported_experience_with_suggested_patch_for_the_5_gige_ports

Performance is acceptable: testing L3 forwarding without NAT yields a
performance of 370 Mbit/s (iperf3 TCP) and 41 Kpps (iperf3 UDP with 64
bytes payload). Both tests show that 100% of CPU time is spent on softirq.

A similar fix for a different device (RB2011) was added in e457d22261
("Make GBit switch work on RB2011").

Signed-off-by: Baptiste Jonglez <git@bitsofnetworks.org>
---

This bug is long-standing, the patch will need to be backported to 19.07 and 18.06.
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-rb95x.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-rb95x.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-rb95x.c
index 33c4f53133..c4cf5f12a8 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-rb95x.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-rb95x.c
@@ -266,6 +266,7 @@ static void __init rb951g_setup(void)
 		return;
 
 	ath79_setup_ar934x_eth_cfg(AR934X_ETH_CFG_RGMII_GMAC0 |
+				   AR934X_ETH_CFG_RXD_DELAY |
 				   AR934X_ETH_CFG_SW_ONLY_MODE);
 
 	ath79_register_mdio(0, 0x0);
@@ -276,6 +277,7 @@ static void __init rb951g_setup(void)
 	ath79_init_mac(ath79_eth0_data.mac_addr, ath79_mac_base, 0);
 	ath79_eth0_data.phy_if_mode = PHY_INTERFACE_MODE_RGMII;
 	ath79_eth0_data.phy_mask = BIT(0);
+	ath79_eth0_pll_data.pll_1000 = 0x6f000000;
 
 	ath79_register_eth(0);
 
-- 
2.26.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
