Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA27161425
	for <lists+openwrt-devel@lfdr.de>; Sun,  7 Jul 2019 07:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n50U3ERB7Qxmgy4C8fKqtsCE1si4nF7cYw/5GH/z2aE=; b=O/iEaxA0yLharF
	J+cj8quEqSyVkYlfuSsLJNDbvAFT4gKNLC8JQmT+45MtcApvTVQI9ok7XiKOgKKL7RMI3AlxZqRqN
	Bd+u4kNm67wu5qhHtWTh1juVl4KCVMhaE/dlD2K/nxgDa2h3n47nAm4yHfP3jiyIZauSrc3MzjTX9
	LdwrGVUT2lD9CSAav+/vXxb0LPDVusq9VGxm4dMs9mjjmDqLGqmGFw/QO4HIlkMjG+qopN7CcMmWs
	lfnrkrK6UlXSV2aT0Dgg4q/3E/xoWGlbBZNjy8dbNnjm/L7a3S2f2B+oHq02IQc8diPKwNAyqoMUj
	tdZpkDw07G0sbaJ7RhXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjzi7-0006VD-1N; Sun, 07 Jul 2019 05:27:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjzhp-0006Uk-E5
 for openwrt-devel@lists.openwrt.org; Sun, 07 Jul 2019 05:27:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id p184so5999289pfp.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 06 Jul 2019 22:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5CrofErXQKqhXfnMz/KVq9s+1MzwKFIFt6+yn2CkFVo=;
 b=B7eRO5CqxSIo8l7eVvqmoXLmI6RW6QOXduwF+FdF2TWBQZA/xlf+Q6kXGIIUU0n0+h
 6BKzU6zQhNhmJpHplgKDJNIdc1EejwfTiQajXfF2I0MUDtQcR+jFUvvWL2TaSHq6ns5j
 RXbSDjnHmFbDdyjDP06HV+pZjoMYYDEWmNZBKJ15br82PRRDoijIPcsUyLdGIG4bHGJD
 5xohE7dcDhA3aIaAH+N9WxzV9KRylSubxV/zvsXshQKapbs9tlLfsRG0SRgNRp4XB+/E
 xrtE53DCNZ/+IskuoxUvtaRXR/brcjCQdNlJCHQmludvBDoHzmlgTdskDLcKZMeLzrga
 JczQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5CrofErXQKqhXfnMz/KVq9s+1MzwKFIFt6+yn2CkFVo=;
 b=nJ58E/1Nc1pX05+f4vOeMLZO+pQOdV0mX3Ks8E1WcEQUqMDxwdT6eY7DF++kMLnPGB
 9gTp3KF9xOjPzWk/bU9QjU2GRx2+8Ep8UCzZLUwkpdOp97q1hQaKGy6WTskbT/8vH+UT
 F8IIiQ0yEGx6FYYU5dwnd/4kfM+Kb0lhHMtqxEgNklCK3uWJmmAs4E7LSFNbO9Y8+VA2
 YvtN3xxTZTgICKselUj5IGKUgQGRLjlZYLSVHKHxhv0TjEIrfXdHDNYAEJDIjciyVsim
 4yqm9p54HtgfLImsmV7CH7Gl0jz+KE2B3Goi0v0xfVuL7yNHcDB2ZkFYBtaFmtSYBiUK
 yORQ==
X-Gm-Message-State: APjAAAViTEY3T4IwxKXj+OPDM8Ixj8ko3R+I2L7wMKFc6H/UxU2k0uXG
 xkv3NXWofzf/q7W+A4DSDO5t7/YI
X-Google-Smtp-Source: APXvYqzR6F1k2Bfdl3fTI0lVve0ZZ92Rl16Bl1IOO+d1uqc3dpW9/Z+wmx+J09qGVse5xg11Km4IBw==
X-Received: by 2002:a17:90b:d8a:: with SMTP id
 bg10mr15422311pjb.92.1562477237452; 
 Sat, 06 Jul 2019 22:27:17 -0700 (PDT)
Received: from echampetier.lab1.anevia.com
 ([2601:646:8200:acf4:f6fd:cd2b:9563:c59a])
 by smtp.gmail.com with ESMTPSA id a18sm11327154pjq.0.2019.07.06.22.27.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 06 Jul 2019 22:27:16 -0700 (PDT)
From: Etienne Champetier <champetier.etienne@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  6 Jul 2019 22:26:28 -0700
Message-Id: <20190707052628.23083-1-champetier.etienne@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_222721_526402_D197E347 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (champetier.etienne[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] [RFC] ar71xx: fix Mikrotik wAP AC QCA955X
 SGMII link loss
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

This commit rework
"ar71xx: allow to override at803x sgmii aneg status" (4e39e213af7e3e0cd747403e8c227e145cfef988)
by moving override_sgmii_aneg param from "at803x_platform_data" to "device" struct
Not sure if it's the right place for it, but wAP AC uses "mdio_gpio_platform_data" struct,
so the current patch is currently accessing some random memory.

Fixes FS#2236

Signed-off-by: Etienne Champetier <champetier.etienne@gmail.com>
---
 .../files/arch/mips/ath79/mach-fritz450e.c    |  2 +-
 .../files/arch/mips/ath79/mach-rambutan.c     |  2 +-
 .../ar71xx/files/arch/mips/ath79/mach-rbspi.c |  2 ++
 ...at803x-add-sgmii-aneg-override-pdata.patch | 36 ++++++-------------
 4 files changed, 14 insertions(+), 28 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c
index 83127e4c64..f21b2664ba 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-fritz450e.c
@@ -122,7 +122,6 @@ static struct gpio_keys_button fritz450E_gpio_keys[] __initdata = {
 static struct at803x_platform_data fritz450E_at803x_data = {
 	.disable_smarteee = 1,
 	.has_reset_gpio = 1,
-	.override_sgmii_aneg = 1,
 	.reset_gpio = FRITZ450E_GPIO_PHY_RESET,
 };
 
@@ -157,6 +156,7 @@ static void __init fritz450E_setup(void) {
 	ath79_eth0_data.phy_if_mode = PHY_INTERFACE_MODE_SGMII;
 	ath79_eth0_data.phy_mask = BIT(FRITZ450E_PHY_ADDRESS);
 	ath79_eth0_data.enable_sgmii_fixup = 1;
+	ath79_eth0_data.mii_bus_dev->override_sgmii_aneg = 1;
 	ath79_eth0_pll_data.pll_1000 = 0x03000000;
 	ath79_eth0_pll_data.pll_100 = 0x00000101;
 	ath79_eth0_pll_data.pll_10 = 0x00001313;
diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c
index 1730a29f33..cb76ddcb0f 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-rambutan.c
@@ -46,7 +46,6 @@ static struct mdio_board_info rambutan_mdio0_info[] = {
 
 static struct at803x_platform_data rambutan_ar8033_data = {
 	.has_reset_gpio = 1,
-	.override_sgmii_aneg = 1,
 	.reset_gpio = 23,
 };
 
@@ -82,6 +81,7 @@ static void __init rambutan_setup(void)
 	ath79_eth1_data.phy_mask = BIT(0);
 	ath79_eth1_data.mii_bus_dev = &ath79_mdio1_device.dev;
 	ath79_eth1_data.enable_sgmii_fixup = 1;
+	ath79_eth1_data.mii_bus_dev->override_sgmii_aneg = 1;
 	ath79_eth1_pll_data.pll_1000 = 0x17000000;
 	ath79_eth1_pll_data.pll_10 = 0x1313;
 	ath79_register_eth(1);
diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c
index 96511a4080..f737d8f5b0 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-rbspi.c
@@ -1115,6 +1115,8 @@ static void __init rbwapgsc_setup(void)
 	ath79_eth1_pll_data.pll_10 = 0x80001313;
 	ath79_eth1_data.speed = SPEED_1000;
 	ath79_eth1_data.duplex = DUPLEX_FULL;
+	ath79_eth1_data.enable_sgmii_fixup = 1;
+	ath79_eth1_data.mii_bus_dev->override_sgmii_aneg = 1;
 	ath79_register_eth(1);
 
 	rbspi_wlan_init(1, 2);
diff --git a/target/linux/ar71xx/patches-4.14/903-at803x-add-sgmii-aneg-override-pdata.patch b/target/linux/ar71xx/patches-4.14/903-at803x-add-sgmii-aneg-override-pdata.patch
index 8948fd4954..60a6d1a9a3 100644
--- a/target/linux/ar71xx/patches-4.14/903-at803x-add-sgmii-aneg-override-pdata.patch
+++ b/target/linux/ar71xx/patches-4.14/903-at803x-add-sgmii-aneg-override-pdata.patch
@@ -1,38 +1,22 @@
 --- a/drivers/net/phy/at803x.c
 +++ b/drivers/net/phy/at803x.c
-@@ -478,12 +478,15 @@ static void at803x_link_change_notify(st
- 
- static int at803x_aneg_done(struct phy_device *phydev)
- {
-+	struct at803x_platform_data *pdata;
- 	int ccr;
- 
- 	int aneg_done = genphy_aneg_done(phydev);
- 	if (aneg_done != BMSR_ANEGCOMPLETE)
- 		return aneg_done;
- 
-+	pdata = dev_get_platdata(&phydev->mdio.dev);
-+
- 	/*
- 	 * in SGMII mode, if copper side autoneg is successful,
- 	 * also check SGMII side autoneg result
-@@ -498,7 +501,8 @@ static int at803x_aneg_done(struct phy_d
+@@ -498,7 +498,8 @@ static int at803x_aneg_done(struct phy_d
  	/* check if the SGMII link is OK. */
  	if (!(phy_read(phydev, AT803X_PSSR) & AT803X_PSSR_MR_AN_COMPLETE)) {
  		pr_warn("803x_aneg_done: SGMII link is not ok\n");
 -		aneg_done = 0;
-+		if (!pdata || !pdata->override_sgmii_aneg)
++		if (phydev->mdio.dev.override_sgmii_aneg)
 +			aneg_done = 0;
  	}
  	/* switch back to copper page */
  	phy_write(phydev, AT803X_REG_CHIP_CONFIG, ccr | AT803X_BT_BX_REG_SEL);
---- a/include/linux/platform_data/phy-at803x.h
-+++ b/include/linux/platform_data/phy-at803x.h
-@@ -7,6 +7,7 @@ struct at803x_platform_data {
- 	int enable_rgmii_rx_delay:1;
- 	int fixup_rgmii_tx_delay:1;
- 	int has_reset_gpio:1;
-+	int override_sgmii_aneg:1;
- 	int reset_gpio;
+--- a/include/linux/device.h
++++ b/include/linux/device.h
+@@ -964,6 +964,7 @@ struct device {
+ 	bool			offline_disabled:1;
+ 	bool			offline:1;
+ 	bool			of_node_reused:1;
++	bool			override_sgmii_aneg:1;
  };
  
+ static inline struct device *kobj_to_dev(struct kobject *kobj)
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
