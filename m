Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18262FF954
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 13:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=awRgkazm2HOnIuzlYyhfIyO2z0cDF8+xuul4tdH/Qq8=; b=Yd/D8871KHWIrGYEArUy1gwski
	T11puPdqZWSVzjlOvcC1mvv7lKbocYUGLZAP+thPitkhTQVl0J7Dw7wk/pnBL1FXQaSel//u/s0qi
	c4ZzqVjkMADizlkP+RzDfa83z/siC26XH4a7Y7Q8Dd/HRmdvPuaRIV3/0+IWcjtQ3AE0twwtozsx0
	QaeDrfQYetaoDNFiBaasjr/qup4UMgxbrcaQICy6o5tkSYFFNc2JFnElIJLaZVW3VWmmx66dqfkvC
	a1wjfB6mKgPesQI2KvYDy6qmRXaZjrsvMvXZksPnQk3lhc4Xf3+/RpZrsXZD21ddgaq/+rm5mfSty
	LZas0DRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJPy-0001gn-9o; Sun, 17 Nov 2019 12:12:38 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJPo-0001fx-UD
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 12:12:30 +0000
Received: from buildfff.adridolf.com ([188.193.230.49]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MjSHc-1i8lE20IxO-00l0EO for <openwrt-devel@lists.openwrt.org>; Sun, 17
 Nov 2019 13:12:24 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 Nov 2019 13:11:36 +0100
Message-Id: <20191117121136.10705-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191117121136.10705-1-freifunk@adrianschmutzler.de>
References: <20191117121136.10705-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:TzzWwn7PS8ev4apjOoMmLgFMR1V5PvjUCLm0/wXtwItWF9dMLHf
 hkN1iqnwd3tbjD7JzCy66TTHiw7iAZAMsjc2dDLiodwEfVqGsL6iZ+hIJ+H+5jOHWrAz/wj
 dciMIbwOmAEn+I1QL7bQpRRsHzBYQgaRa0JoIFeaCgx3DRxKkpaQnJhbigfOSeSJ/8bU6Xk
 NJugBiESlu7q/JYNhffpA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/hcP+ZN9Hzg=:vrPWZNNWXuWLuAG+JAl2FL
 9pfhGHlgq3SKy1paD6mu0QsmbG4pcJyKW2orizDnhERBepbgTy/2GiMlKbdxbI+Oizr/vcIGW
 Ll731UIxd51VPuPKdZLr8ip/aOrhCEdeKDgCMA0PNsI2YLdoE2Bdbiazq49qTU6ZgGAG6ULA7
 HS8b05iLo/L4Nxm87S271nzNKajnrNlKa6/XJl46Q/wW+MailX/6qJ/mg3StxzrTkWLOcDEIi
 cmi7TQ9Svk+VctsdFeLR7uYlXrcjXpuj3ncDdOaDVsegiBcW53/oPHVVxu9BNax/Atj9vtw8v
 guOXj1JNVbxotJb/TWNz9vhBEtjK86rJReJyDdIbQMXxYtx0fKg4iAf4mUhc2Y0X4S6OkCxLJ
 xr1GT7u10wNwOav+3bUcdNF/IMxe/10IlshFyDP61xU7Z3xwRQxp5Z2FbYP3JOKW9CR9hO9fk
 PxeVAbCyNB3G8wjIeY/fsLcsWuuNghjKMswo52Ky8qotXQTc6N6ckgSOHoe/uEJmGmWY0fNrV
 Sc7S4UNbc+ST6Fac0ClYMwCMLlC5D2cVFYF0HKlTCk8pOS6Woezda0aq3z12a5MFtoEpua03t
 yV2fazpLBkY0dEBVA4G+jONUwPfMc4uViPA3vX8uk6ymUr0L3QGDiJdOJLrhPNQkWOnBLRyIA
 w2fm0ocjE5k0IUipnElLWPQfd7SbziDPVeu4u73PZgZZHOCNnHogEC73NLGWKlPJPZo757LKy
 9dK2q4lpkISSzOrKtcABuZUwj5tMCGWgwy5neHQCn8WAGy2RHV7+EntuUisi8PkTA3sQEMYW0
 SUe3IwmhlqGQ/S7grXI2FSRT/175xU5OkvaZqXbI7z0QbuuIeXCUdZKpApE3KhLXnTrQxyRZS
 smzktehV0L/fjtBz57NsFEyklqQkjeN590D6e+RaU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_041229_270651_ECC682D1 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ar71xx: fix buttons for TP-Link
 TL-WDR4900 v2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

TP-Link TL-WDR4900 v2 only has one combined WPS/Reset button, so
don't set up an RFKILL for this device.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../ar71xx/files/arch/mips/ath79/mach-archer-c7.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c
index d86cc385f5..53c539f85a 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c
@@ -169,6 +169,17 @@ static struct gpio_keys_button archer_c7_v2_gpio_keys[] __initdata = {
 	},
 };
 
+static struct gpio_keys_button wdr4900_gpio_keys[] __initdata = {
+	{
+		.desc		= "Reset button",
+		.type		= EV_KEY,
+		.code		= KEY_WPS_BUTTON,
+		.debounce_interval = ARCHER_C7_KEYS_DEBOUNCE_INTERVAL,
+		.gpio		= ARCHER_C7_GPIO_BTN_RESET,
+		.active_low	= 1,
+	},
+};
+
 static const struct ar8327_led_info archer_c7_leds_ar8327[] = {
 	AR8327_LED_INFO(PHY0_0, HW, "tp-link:green:wan"),
 	AR8327_LED_INFO(PHY1_0, HW, "tp-link:green:lan1"),
@@ -326,8 +337,8 @@ MIPS_MACHINE(ATH79_MACH_ARCHER_C7_V2, "ARCHER-C7-V2", "TP-LINK Archer C7",
 static void __init tl_wdr4900_v2_setup(void)
 {
 	ath79_register_gpio_keys_polled(-1, ARCHER_C7_KEYS_POLL_INTERVAL,
-					ARRAY_SIZE(archer_c7_gpio_keys),
-					archer_c7_gpio_keys);
+					ARRAY_SIZE(wdr4900_gpio_keys),
+					wdr4900_gpio_keys);
 	ath79_register_leds_gpio(-1, ARRAY_SIZE(wdr4900_leds_gpio),
 				 wdr4900_leds_gpio);
 	common_setup(false);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
