Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEF0187518
	for <lists+openwrt-devel@lfdr.de>; Mon, 16 Mar 2020 22:48:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cAHBwY2b3fqGPINyhuF9hE9l4WgN5d/ze/FjL62UOIE=; b=WONSssTnQ/R/sa
	5W/Bc7bb8pgw0xrov1QpAXx90yAzm4UXJV6vUni/B8rtcCIk2vXVsoHAQhJAVbG1QMkzQH+qZvTov
	4p6sIwAgxuH4wWEFAEE81VgQ/amQgc1gK1ZGcK2vnnZ/UL06zZC+ploknRIJGCX4RyDXzu7oqypwE
	1uzpC5LcFuP/PS6kKRwLD5ENsMrr4o6JcZYFrd+GE5qyqUn+RHNATDjf78JWWrR2vP/LFtJ+iP+la
	SVeRHACMnWW8lZLj9N/0QT6bbDpYJQ4YVuY5IgiPPIpHvCgDyjgzsoDmP2s7DubdFwSnwvUGgPNQB
	z5wGaPvjKe2N0ToazvkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDxas-0007GD-BU; Mon, 16 Mar 2020 21:48:18 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDxaj-0007Fn-Sv
 for openwrt-devel@lists.openwrt.org; Mon, 16 Mar 2020 21:48:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1584395285;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=rFVccpLIFd7nwefx77GA6xJ5GWrtok/IOXkIzn0Oq18=;
 b=ez6Kn6I2CQtYZH1vprYl1X1Qaeo0cX0UBcPgV6f54YY5f9UH1o42bijOXgh95JaeP2
 DEiXMMfiBEbokQGa11FtcsU1C7byU2x0ipk+XsZuFsphHS5IREp+jfT7bYU/zMGir35D
 CFvNP5cL25QHAY2IQu4EZx723cQPtCCUfdaVYgIYjlh21046FIsFNsC8J8RcfMYuKIKW
 W5CExyoIflpZdGTq5asYqQGjGvnoET+sgNQzfyZ+uXtLWzgSELh7qFoIyR7to4jr5gVH
 7K/ozq4W4XwOENw0JSn1CgkKLr1BGQQdsaHuweayWfE5Gp0fmslPtjvJzuYYKAvvHPf3
 NqsQ==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGbO3oK8Gj1q77lQW3dKg=="
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 46.2.0 DYNA|AUTH)
 with ESMTPSA id Q06422w2GLm4FEZ
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Mon, 16 Mar 2020 22:48:04 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id F3E0A1528F4;
 Mon, 16 Mar 2020 22:48:02 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 16 Mar 2020 22:47:44 +0100
Message-Id: <20200316214744.28270-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_144810_530529_FF9A7D72 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:11 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] mxs: fix user led for OLinuXino boards
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
Cc: Michael Heimpold <mhei@heimpold.de>, wigyori@uid0.hu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

More testing after kernel upgrade to 5.4 uncovered a regression: the user
led is not present anymore due to a pin mux "collision" in device tree.

A patch sent to upstream kernel was accepted now. Integrate this
pending fix as platform specific patch so that user led is available again.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 ...ARM-dts-imx23-introduce-mmc0_sck_cfg.patch | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 target/linux/mxs/patches-5.4/100-ARM-dts-imx23-introduce-mmc0_sck_cfg.patch

diff --git a/target/linux/mxs/patches-5.4/100-ARM-dts-imx23-introduce-mmc0_sck_cfg.patch b/target/linux/mxs/patches-5.4/100-ARM-dts-imx23-introduce-mmc0_sck_cfg.patch
new file mode 100644
index 0000000000..029fe6a8af
--- /dev/null
+++ b/target/linux/mxs/patches-5.4/100-ARM-dts-imx23-introduce-mmc0_sck_cfg.patch
@@ -0,0 +1,61 @@
+From e4fdac5def509ffb723b49d6a91f9043009119f9 Mon Sep 17 00:00:00 2001
+From: Michael Heimpold <mhei@heimpold.de>
+Date: Sun, 8 Mar 2020 23:21:44 +0100
+Subject: [PATCH] ARM: dts: imx23: introduce mmc0_sck_cfg
+
+The Olimex Olinuxino board has a user led connected to SSP1_DETECT.
+But since this pin is listed in mmc0_pins_fixup, it is already claimed
+by MMC driver and this results in this error during boot:
+
+[    1.390000] imx23-pinctrl 80018000.pinctrl: pin SSP1_DETECT already
+  requested by 80010000.spi; cannot claim for leds
+[    1.400000] imx23-pinctrl 80018000.pinctrl: pin-65 (leds) status -22
+[    1.410000] imx23-pinctrl 80018000.pinctrl: could not request pin 65
+   (SSP1_DETECT) from group led_gpio2_1.0  on device 80018000.pinctrl
+[    1.420000] leds-gpio leds: Error applying setting, reverse things back
+[    1.430000] leds-gpio: probe of leds failed with error -22
+
+This fix it, introduce mmc0_sck_cfg and switch the Olinuxino board to it.
+
+Signed-off-by: Michael Heimpold <mhei@heimpold.de>
+Signed-off-by: Shawn Guo <shawnguo@kernel.org>
+---
+ arch/arm/boot/dts/imx23-olinuxino.dts | 2 +-
+ arch/arm/boot/dts/imx23.dtsi          | 8 ++++++++
+ 2 files changed, 9 insertions(+), 1 deletion(-)
+
+diff --git a/arch/arm/boot/dts/imx23-olinuxino.dts b/arch/arm/boot/dts/imx23-olinuxino.dts
+index 4c9aafe00b5d..0729e72f2283 100644
+--- a/arch/arm/boot/dts/imx23-olinuxino.dts
++++ b/arch/arm/boot/dts/imx23-olinuxino.dts
+@@ -23,7 +23,7 @@
+ 			ssp0: spi@80010000 {
+ 				compatible = "fsl,imx23-mmc";
+ 				pinctrl-names = "default";
+-				pinctrl-0 = <&mmc0_4bit_pins_a &mmc0_pins_fixup>;
++				pinctrl-0 = <&mmc0_4bit_pins_a &mmc0_sck_cfg>;
+ 				bus-width = <4>;
+ 				broken-cd;
+ 				status = "okay";
+diff --git a/arch/arm/boot/dts/imx23.dtsi b/arch/arm/boot/dts/imx23.dtsi
+index eb0aeda1682c..c5edff381213 100644
+--- a/arch/arm/boot/dts/imx23.dtsi
++++ b/arch/arm/boot/dts/imx23.dtsi
+@@ -267,6 +267,14 @@
+ 					fsl,pull-up = <MXS_PULL_DISABLE>;
+ 				};
+ 
++				mmc0_sck_cfg: mmc0-sck-cfg@0 {
++					reg = <0>;
++					fsl,pinmux-ids = <
++						MX23_PAD_SSP1_SCK__SSP1_SCK
++					>;
++					fsl,pull-up = <MXS_PULL_DISABLE>;
++				};
++
+ 				mmc1_4bit_pins_a: mmc1-4bit@0 {
+ 					reg = <0>;
+ 					fsl,pinmux-ids = <
+-- 
+2.17.1
+
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
