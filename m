Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23207B463
	for <lists+openwrt-devel@lfdr.de>; Tue, 30 Jul 2019 22:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kCb6Cvcz03WEe+uGrj8/3T7UK582LI7vC9JaMyoycE8=; b=KWPAcmcHLTXbar
	HS7iUNfz9qOfuIhAV244mmuWb+X+V309MDGhxW7dl7BTlNdu2126Kdm23Bbp4TTgXE+ybfQx7YPp+
	9xS1Dwhcw1ozEtG0luo57KvCoKHBaCxiVIvcfYP37Mp7fYD4H+6SNSkqVj44zr7Jcf0A+h0PO2ef9
	VO8R2xPzwYNcZqZQTcHxoS4qlL2CfEq08jSOyaApXi5tDtthty5+N1tWCdOx2WwrmW2Mzydb62Px6
	WbKNDuc6rQTGACsBLRjIO13kvh7+cTrhCg1Vuow57vZczMaQS+QDKnoFhkSwGdvYhDGzQNZ/jfzAj
	WEDKS8yste7zDR48POMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYuq-0002og-JZ; Tue, 30 Jul 2019 20:40:12 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYud-0002TV-Nc
 for openwrt-devel@lists.openwrt.org; Tue, 30 Jul 2019 20:40:02 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2001:678:6e0:1001:eccf:a4ff:feb4:d5e7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id B256322855;
 Tue, 30 Jul 2019 22:39:52 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 30 Jul 2019 22:39:35 +0200
Message-Id: <20190730203935.16662-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_133959_918976_8781C82C 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ar71xx: fix HiveAP 121 PLL for 1000M
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
Cc: chrisrblake93@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The Aerohive HiveAP 121 has the wrong PLL value set for Gigabit speeds,
leading to packet-loss. 10M and 100M work fine.

This commit sets the Gigabit Ethernet PLL value to the correct value,
fixing packet loss.

Confirmed with iperf and floodping.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ar71xx/files/arch/mips/ath79/mach-hiveap-121.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-hiveap-121.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-hiveap-121.c
index 363d73dd53..5cbb2054f7 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-hiveap-121.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-hiveap-121.c
@@ -111,7 +111,7 @@ static void __init hiveap_121_setup(void)
 	ath79_eth0_data.mii_bus_dev = &ath79_mdio0_device.dev;
 	ath79_eth0_data.phy_if_mode = PHY_INTERFACE_MODE_RGMII;
 	ath79_eth0_data.phy_mask = BIT(HIVEAP_121_LAN_PHYADDR);
-	ath79_eth0_pll_data.pll_1000 = 0x0e000000;
+	ath79_eth0_pll_data.pll_1000 = 0x06000000;
 	ath79_eth0_pll_data.pll_100 = 0x00000101;
 	ath79_eth0_pll_data.pll_10 = 0x00001313;
 	ath79_register_eth(0);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
