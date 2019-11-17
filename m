Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF249FF955
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 Nov 2019 13:12:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I+SZY/vPALXwLm7EIP0/Uw6JGEtxCKWDIEWqt2vEDcU=; b=VV7FMueBkW/5Kt
	ccWsZBQN3hGDkTtkCLUWr49Wtr8C1CuOlL7Pewz8u5sCZf/KkfM9lwnqlTKIGTo0gFzxW2EfFy7B9
	CiRrUAeKVJSrL61nfcEjaMfeiQr3gkNraERkyHq4w6g+7w+TFcWjbwNAKkiWaYYWccJ8V/uqmeCgF
	Q5XyEdlDlqAEPxNaO2TUHrt72jrbYsvvMtm7vg6TC0vYdRLPx792LD7BllbtYuDYo7Ij1g0awCZSq
	cVQrqc/YKJcIyD3kRQenujaA2U3DPe9I5ySvivtVLHGnIjp4cfN42m66El2EBiLEMVt5Lrhz67XI3
	wXS5vaNI6mpZH8VX+UpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJQ9-0001qQ-FY; Sun, 17 Nov 2019 12:12:49 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJPq-0001fz-6S
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 12:12:31 +0000
Received: from buildfff.adridolf.com ([188.193.230.49]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N17gy-1hrENR3ujy-012X7E for <openwrt-devel@lists.openwrt.org>; Sun, 17
 Nov 2019 13:12:24 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 Nov 2019 13:11:35 +0100
Message-Id: <20191117121136.10705-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:B29vhLvDXRrNPiJCtbVvktSh+KhDiuAun2tIHlpkcIhCUvQnmxo
 aKQhCGww6J3fvJUoGYQaUtuJkd/mS3IC35IPUA8IXDF7vGlcZyzACz6aqGO04RPjqeDGEM+
 Cy6S4xuSk6BCyRbyR8uR9IuW0OFQy/6dJ8k4hP33CfjC/PONDFeTXAUnxQH5hoRacx5CWHg
 qy80LrCJM4g73qxs9CIKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+xSfLB6Ucfs=:46O8lcaGWcqP5agv0xgsXD
 1hhzNH7dWWsNnjtnZERLU8QYAoDjOcWjOE89CND9hd7HeglSi7oeHuR//8lHPQyugQ8CJGfrg
 yMXgtEzKkp/D5o8InMpmcEdg1MAIVGRIslEwhwDkjJnTsXZwL/qmha5uxnN0SqUyb9dFc1Vq7
 jDDNJxSWZLzNI0Fufes3Y8b2BPWm1NrDxZJTKerXwNh+U5B40nKazNsn+vF0N0HweH8ewhYEn
 I3Zn3yOJxmtRls2VZXT8JzBR0wB7GFvAzlWwgnixITZEWtZ+Bbs5UvsQzCjNozBq6TqgjmsrI
 eYFuYP3VClVEofCMMqjRv2XpvHt2KS6OUtP1RVtimec8RnicyH8Pl+1z3ywO+NvXX7xCdVdIx
 BYx411tczn2K8ckM6elPxe6OOa2cCVZeCrkiQjtjpCTnlBT+/FoLPzFJ5pbey8FarrNN9mRUo
 Ex7FgWdIxldLt3CzEo3nFdWIhgyLl1mor9TigY3FpdR3bo0NQU+y7F2co00gwdi43lKp1HwK0
 Mn34+db6xElLlwVnttNR+jBgkFZdJDqn4bS6t2n2RWvFwaMkjg47hunaBoLeYJZNXxbH6DoXE
 6QOMFIDcg+mXHLBybB2ipGpucjodR/g7DTILxYzfIAA/RHLGofplDhL8M/2UZw8CVxvnrlSF8
 e0IZ1PSw9bGUkAQe9GFGGz+6StOZsDADx0N3s1nGTbirjbiMoLsFHFAaj7AV9gOSkwOyQidPs
 tdha68u2gmxKLJp+3XhGaUdZTshYPFc9oKFCoSATCy/oK8V0FiVxpUJP0gqXszklIuw5F8KVL
 bP+e11hCj51XxaQpmLiU2zosaMsu3qNdrtRZriU5EwhPqmc8/N0NmqElrY1T4dp3Cnh7S/oaZ
 by97bjw3Ps7FMgSVK+UyAELd6IqtqHUe32sk4KTts=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_041230_541321_0B41D56C 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 1/2] ar71xx: fix LED setup for TL-WDR4900 v2
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

LEDs in mach file for TL-WDR4900 v2 are just used as set up for
Archer C5/C7. However, WDR4900 uses blue front LEDs, while C7 uses
green ones. Despite, in base-files WDR4900 is actually set up with
LED labels containing "blue" for the mentioned LEDs.

This patch creates a separate LED struct for WDR4900, so the
LED can be set up correctly. Despite, the wlan5g LED is removed as
it is controlled by ath9k chip for WDR4900 (in contrast to C5/C7).

Note: While front LEDs are blue, USB LEDs (on the back) are green,
so colors seem mixed for the WDR4900 v2.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../files/arch/mips/ath79/mach-archer-c7.c    | 38 ++++++++++++++++++-
 1 file changed, 36 insertions(+), 2 deletions(-)

diff --git a/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c b/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c
index 304a8c7057..d86cc385f5 100644
--- a/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c
+++ b/target/linux/ar71xx/files/arch/mips/ath79/mach-archer-c7.c
@@ -105,6 +105,34 @@ static struct gpio_led archer_c7_leds_gpio[] __initdata = {
 	},
 };
 
+static struct gpio_led wdr4900_leds_gpio[] __initdata = {
+	{
+		.name		= "tp-link:blue:qss",
+		.gpio		= ARCHER_C7_GPIO_LED_QSS,
+		.active_low	= 1,
+	},
+	{
+		.name		= "tp-link:blue:system",
+		.gpio		= ARCHER_C7_GPIO_LED_SYSTEM,
+		.active_low	= 1,
+	},
+	{
+		.name		= "tp-link:blue:wlan2g",
+		.gpio		= ARCHER_C7_GPIO_LED_WLAN2G,
+		.active_low	= 1,
+	},
+	{
+		.name		= "tp-link:green:usb1",
+		.gpio		= ARCHER_C7_GPIO_LED_USB1,
+		.active_low	= 1,
+	},
+	{
+		.name		= "tp-link:green:usb2",
+		.gpio		= ARCHER_C7_GPIO_LED_USB2,
+		.active_low	= 1,
+	},
+};
+
 static struct gpio_keys_button archer_c7_gpio_keys[] __initdata = {
 	{
 		.desc		= "Reset button",
@@ -210,8 +238,6 @@ static void __init common_setup(bool pcie_slot)
 	u8 tmpmac2[ETH_ALEN];
 
 	ath79_register_m25p80(&archer_c7_flash_data);
-	ath79_register_leds_gpio(-1, ARRAY_SIZE(archer_c7_leds_gpio),
-				 archer_c7_leds_gpio);
 
 	if (pcie_slot) {
 		ath79_register_wmac(art + ARCHER_C7_WMAC_CALDATA_OFFSET, mac);
@@ -263,6 +289,8 @@ static void __init archer_c5_setup(void)
 	ath79_register_gpio_keys_polled(-1, ARCHER_C7_KEYS_POLL_INTERVAL,
 					ARRAY_SIZE(archer_c7_gpio_keys),
 					archer_c7_gpio_keys);
+	ath79_register_leds_gpio(-1, ARRAY_SIZE(archer_c7_leds_gpio),
+				 archer_c7_leds_gpio);
 	common_setup(true);
 }
 
@@ -274,6 +302,8 @@ static void __init archer_c7_setup(void)
 	ath79_register_gpio_keys_polled(-1, ARCHER_C7_KEYS_POLL_INTERVAL,
 					ARRAY_SIZE(archer_c7_gpio_keys),
 					archer_c7_gpio_keys);
+	ath79_register_leds_gpio(-1, ARRAY_SIZE(archer_c7_leds_gpio),
+				 archer_c7_leds_gpio);
 	common_setup(true);
 }
 
@@ -285,6 +315,8 @@ static void __init archer_c7_v2_setup(void)
 	ath79_register_gpio_keys_polled(-1, ARCHER_C7_KEYS_POLL_INTERVAL,
 					ARRAY_SIZE(archer_c7_v2_gpio_keys),
 					archer_c7_v2_gpio_keys);
+	ath79_register_leds_gpio(-1, ARRAY_SIZE(archer_c7_leds_gpio),
+				 archer_c7_leds_gpio);
 	common_setup(true);
 }
 
@@ -296,6 +328,8 @@ static void __init tl_wdr4900_v2_setup(void)
 	ath79_register_gpio_keys_polled(-1, ARCHER_C7_KEYS_POLL_INTERVAL,
 					ARRAY_SIZE(archer_c7_gpio_keys),
 					archer_c7_gpio_keys);
+	ath79_register_leds_gpio(-1, ARRAY_SIZE(wdr4900_leds_gpio),
+				 wdr4900_leds_gpio);
 	common_setup(false);
 }
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
