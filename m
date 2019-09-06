Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A934EAC2A4
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 00:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7nlF52SZ+jX2FuVVGoUNOaREJw8bQ3AlUf6ysmjVzz0=; b=Er6an04OObfoVI
	W15genx+SLzvLlD+nvCjQpSm4bmsirGE7mdKYwuzNdMhW3bNm11tWi/5UE1r7rkjYsFkVBjozzeIz
	GDqdpmlnBondrpMYXyHHv+lkbAG0g7/mfvq23k+PwPB1qWaDcRqt9uHUTGFBbe9UchAxDBWr9ZOxw
	BxjeP+IZOMv+VYl45JX+YLZux+vTzqpUGMR3cINlwbQTZqa/aiJ3Vroknbp+VOr39ygWnyMwwbEJi
	DG77tKQPvBqPrj/XEDr//2/sHBQqYoXeGZoqJd9QluHcq9uNbrtIlpIH/NZ/VyvW5wrOQhIp8Q5Yv
	Yv2XN9zLmsuA7cXgufkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6MxV-0005ym-MV; Fri, 06 Sep 2019 22:44:02 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6MxB-0005yR-Bw
 for openwrt-devel@lists.openwrt.org; Fri, 06 Sep 2019 22:43:43 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F078F00FC12D5F3A4F42A32.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:8f00:fc12:d5f3:a4f4:2a32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id AEA161E056
 for <openwrt-devel@lists.openwrt.org>; Sat,  7 Sep 2019 00:43:33 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Sep 2019 00:43:19 +0200
Message-Id: <20190906224319.12190-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_154341_564676_D8B76412 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ath79: fix UniFi AC LED mapping
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

The UniFi AC LED mapping is currently off. The blue/white LED are used
as WiFi indicators, while the vendor firmware does not feature WiFI
LEDs.

Instead, the LEDs are used to indicate the devices status. Align the LED
mapping to match the vendor firmware as good as possible.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
index 3ee43a6d4b..fdd4a01d86 100644
--- a/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
+++ b/target/linux/ath79/dts/qca9563_ubnt_unifiac.dtsi
@@ -6,6 +6,13 @@
 #include "qca956x.dtsi"
 
 / {
+	aliases {
+		led-boot = &led_white;
+		led-failsafe = &led_white;
+		led-running = &led_blue;
+		led-upgrade = &led_blue;
+	};
+
 	chosen {
 		bootargs = "console=ttyS0,115200n8";
 	};
@@ -13,16 +20,14 @@
 	leds {
 		compatible = "gpio-leds";
 
-		wifi_ac {
+		led_white: led_white {
 			label = "ubnt:white:dome";
 			gpios = <&gpio 7 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "phy0tpt";
 		};
 
-		wifi_n {
+		led_blue: led_blue {
 			label = "ubnt:blue:dome";
 			gpios = <&gpio 8 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "phy1tpt";
 		};
 
 	};
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
