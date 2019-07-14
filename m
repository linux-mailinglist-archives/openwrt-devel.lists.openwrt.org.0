Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F33C67CB9
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 04:44:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4hMex2WNlD+E8RrStGzIubm49svztmimzmaV/eU4sA4=; b=Sjdad8VJaAByQv
	ByLk8+96waPIWjunUdSJtUc5fNUnwcdqdnNsh1gOppIUX7wZWZMsHWQX2lUiVslYCX/fbEWTIh2Oi
	PH7e9KDMjGvy2s4ygx2jWMX81H6BI9Ji4Xd2zmDTAErfWgdTv1a7xhgpaXqexKtdA8Iws234Ien6Z
	p80mAXTUTHQ2I6IoWyR4LLAVDc6jj3lE2g59kRLsa6/44+G5GO7zLoxrHNnrIcN9+MqLRDTf21Sak
	bn7TaBBY4ITXYHUsk+0w4/fhXsQvgT9+C8vYrFCo8dwU+oWvQZqIm0KQB1Khz0IvBccO/I9BcdOp7
	Mh0ET7zh1XdlqvBgnGQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmUUS-0002ec-Js; Sun, 14 Jul 2019 02:43:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmUUI-0002eK-2U
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 02:43:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so6155995pgl.11
 for <openwrt-devel@lists.openwrt.org>; Sat, 13 Jul 2019 19:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+9nvMMFQ3591er4MoLi2lQZ4UfhvKtHy5X1f9xIEWwM=;
 b=QYbFz1mn8JnHICxImqHTWJv+R2LxCSpNKt/MJlxIKdrRRZk0JI0Rqat8IuNRPUUj0J
 yJ76qjS7pX5n/0XHP6lm8iYQULjXviHKN6yV0i3KBCkcXp6utYHqiAIH+WDh9VvNx22V
 FRLWwpcXaof3JyEL56V3ByVH+j8CMYy2cxB0cXEzlcWK04dlusDnM+UoMZ3XRNy62PaG
 MKdvbzOoPLMvabZ2VF/ss7j3nNnVaT9p+F5oD3dYgZ5Hw3cwU+UrmtYy5Z+0Q5stmEkk
 p9/qdaF9SvI95RbHBNI8qFRbnQB1eUxdB1iLhBT7CRvtJ3lbbpxW4zXG+Qxo3gYqpJX7
 v9ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+9nvMMFQ3591er4MoLi2lQZ4UfhvKtHy5X1f9xIEWwM=;
 b=R6crbp2QM1Q9rU9X3McZTHoBuhkpV15pyAl9vwv2fNATzzVHjGLQ+fxiQK1CMPWrt8
 QZUhUnNdszM9a3Cr0RFmjFGbPsxcTW+YpDxQMovAxvmWPG/z2i0FgywFWKvFR/MSOK36
 GS/KV112srpXhBgtwJ9+FQaERLa0hZ9fgcTKbkF/beegCCE24W5Lci/FM6nqjpUddOin
 v0En7ay83KKyLliuz9u0M6DS2CFcroHROuMs3MzBAAyQfX5xdvKWx6MsUQz2F+KM2mWn
 UqmMboaX1NmuWfFUlyza6FCm9PXuoVxUrwDLJcS8AFiN2QdAxFLPRGPI+PROLEAwNC9P
 eilA==
X-Gm-Message-State: APjAAAU4UeypwOll6ulsHWY2mFzRY/PkZ5aLUJ4Cma9HJ30Mwy0WvuuG
 WHWt2K3Kknjd7ef52rZvnsUTEsjQqUg=
X-Google-Smtp-Source: APXvYqzehYRrrYFJVwXlY7vo4x+qHOGlPJBc76wLtcNksTw8Y2AU0WPCIv9CJLgtoU8b2rWO5PRFxg==
X-Received: by 2002:a65:5c0a:: with SMTP id u10mr19796609pgr.410.1563072220512; 
 Sat, 13 Jul 2019 19:43:40 -0700 (PDT)
Received: from echampetier.lab1.anevia.com
 ([2601:646:8200:acf4:f6fd:cd2b:9563:c59a])
 by smtp.gmail.com with ESMTPSA id e13sm17681100pff.45.2019.07.13.19.43.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 19:43:39 -0700 (PDT)
From: Etienne Champetier <champetier.etienne@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 13 Jul 2019 19:43:28 -0700
Message-Id: <20190714024328.17271-1-champetier.etienne@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_194342_141996_D34F4F92 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ar71xx: enable QCA955x SGMII fixup on
 Mikrotik wAP AC
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
Cc: Etienne Champetier <champetier.etienne@gmail.com>,
 David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

fixes intermittent loss of connectivity on 1Gbit port, with log message:
> 803x_aneg_done: SGMII link is not ok

Thanks to David Bauer for pointing me in the right direction
I just had to figure out the right bus_id, which you find in this log:
> ag71xx ag71xx.1: connected to PHY at gpio-1:00 [uid=004dd074, driver=Atheros 8031 ethernet]

Fixes FS#2236

Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
---
 .../ar71xx/files/arch/mips/ath79/mach-rbspi.c    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c
index 96511a4080..1212a91d7e 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c
@@ -512,6 +512,18 @@ static struct platform_device rbwapgsc_phy_device = {
 	},
 };
 
+static struct at803x_platform_data rbwapgsc_at803x_data = {
+    .override_sgmii_aneg = 1,
+};
+
+static struct mdio_board_info rbwapgsc_mdio_info[] = {
+    {
+        .bus_id = "gpio-1",
+        .mdio_addr = RBWAPGSC_MDIO_PHYADDR,
+        .platform_data = &rbwapgsc_at803x_data,
+    },
+};
+
 /* RB911L GPIOs */
 #define RB911L_GPIO_BTN_RESET	15
 #define RB911L_GPIO_LED_1	13
@@ -1106,10 +1118,14 @@ static void __init rbwapgsc_setup(void)
 
 	platform_device_register(&rbwapgsc_phy_device);
 
+	mdiobus_register_board_info(rbwapgsc_mdio_info,
+				    ARRAY_SIZE(rbwapgsc_mdio_info));
+
 	ath79_init_mac(ath79_eth1_data.mac_addr, ath79_mac_base, 0);
 	ath79_eth1_data.mii_bus_dev = &rbwapgsc_phy_device.dev;
 	ath79_eth1_data.phy_if_mode = PHY_INTERFACE_MODE_SGMII;
 	ath79_eth1_data.phy_mask = BIT(RBWAPGSC_MDIO_PHYADDR);
+	ath79_eth1_data.enable_sgmii_fixup = 1;
 	ath79_eth1_pll_data.pll_1000 = 0x03000101;
 	ath79_eth1_pll_data.pll_100 = 0x80000101;
 	ath79_eth1_pll_data.pll_10 = 0x80001313;
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
