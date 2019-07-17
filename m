Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C266C04B
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 19:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R6AM0GpS8fmThcOIJgov023X1kcG+Xz9RUUYRVJ4Fng=; b=qpakqxJCISFiyc
	EuzrzRz5ReaVrvNpEtcwzAn8S7neur+cfvjnUsZhDc3ACmqFI3SuFYIbkKWSB53W7WJQFJfYCE+Dd
	hwZl9fYHhN1kF4YP4oEtr0Cdso1fTBn7pjT7TAh9B9TocGzdSR2FF67Hwei8zeC2xwSgad+t4wYN0
	uwsgVOlf6cF/ByXGaON2Mu53urEyJKY/PX6aYeKLa6neOws33RdNAFGfYe2BrQRaa7PrS/q/0EIE1
	SBT8tpXjSoHTDDW2TSwwCRrU20ZN47ifCpM9BvzG3WOJK4H/mwPjwxBt5Ig7DyZPs3kS4TKgqZu0P
	2ZrP1q7JeP2dOlBNtFQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnnd2-0005yM-VP; Wed, 17 Jul 2019 17:22:08 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnncr-0005xk-JW
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 17:21:59 +0000
Received: by mail-lf1-x143.google.com with SMTP id q26so17109492lfc.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 10:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X6AJRzBz4jYkiJvoAZ8E/p5bnCsVtY1dCm8DIDn1cC0=;
 b=CmIjgwBOxrp9M5QcHP5CEsvDxhLtLLIMyt/SLIa0qqZouiEJpjcbJ2SCFNuR48NP19
 ruWJqYNG/vt6Ct1wVKps0kyLa6dDWdoC8UJNrdAabZJdIVp4vRbf4kQn4lW0qHdbA4ia
 jTiXtwvUbxQb1ZZI1dMx/NThL5uNHJDT9V0GTPP1AIfbcfqjfS3Oy8syOzCQ7ziBQYGt
 idKXrzllNvIBHXFReEdnEksn5DhtnU/264l6s6X9ItecfpjmD26tCADvwrILCupOkRCn
 XV7JFsMBu5/GLUiJq3pf+5p8q4vylgdHMZ2zjvZ8xWWO9jB+cyx3E7X4RinsNlpSNwuw
 pWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X6AJRzBz4jYkiJvoAZ8E/p5bnCsVtY1dCm8DIDn1cC0=;
 b=AYktql0WFhTtzPJF/IjsmdVC0Sl1q40eTV7bX/dJbjNXGGowmnOKorqXypwcU7rcZw
 87CUrqwV+dRsIB0pxg+uIaLIycMsqfcMZx1cX8X9Sv1asGE4Ex0bwJQ6jQO9i6yuIbZ5
 fRjC+MhM/WcZjwIbizwQvtqWtl2p5RVE701w3lI3LYWxewXO+y9d7QH3ITHDyqdVS04R
 0K9c+LxtFOppgOj7Astrcr6MI+7CvTxDzd4bARmIm2pUJtr+fG24qNwgVGX1DKWbulDO
 T0nO3c5zj0p0TuVgem7OOIMRua/f4F8Ixpqx+z6aLT7AsiYMeE/anWGF8WlGAjBGi0bV
 pI8A==
X-Gm-Message-State: APjAAAUKft59Q9zqmzPmpfmNnd93R9jc6SBjYyFyxeKi2umieVASXkrI
 zY0KFsBXolV6JY6ulgmRV4S5yQ==
X-Google-Smtp-Source: APXvYqwm6vpOqihW4WDSYJLr/dguQU+CBR+ZAVv3f6z3foNQbmQ5UP/saXpK08tSA9bhwUFao3KcAg==
X-Received: by 2002:ac2:4839:: with SMTP id 25mr18555823lft.79.1563384113223; 
 Wed, 17 Jul 2019 10:21:53 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id o17sm4607298ljg.71.2019.07.17.10.21.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 10:21:52 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Wed, 17 Jul 2019 19:21:48 +0200
Message-Id: <20190717172148.7986-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_102157_704900_196A8297 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] gemini: Fix up some confused pin config on
 SL93512r
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Upstream patch fixing the errors in the device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 ...-gemini-Fix-up-confused-pin-settings.patch | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 target/linux/gemini/patches-4.19/0024-ARM-dts-gemini-Fix-up-confused-pin-settings.patch

diff --git a/target/linux/gemini/patches-4.19/0024-ARM-dts-gemini-Fix-up-confused-pin-settings.patch b/target/linux/gemini/patches-4.19/0024-ARM-dts-gemini-Fix-up-confused-pin-settings.patch
new file mode 100644
index 000000000000..9ae2a79cbf50
--- /dev/null
+++ b/target/linux/gemini/patches-4.19/0024-ARM-dts-gemini-Fix-up-confused-pin-settings.patch
@@ -0,0 +1,54 @@
+From 384ec5ed82845c2c81968743dde4a758f572c11b Mon Sep 17 00:00:00 2001
+From: Linus Walleij <linus.walleij@linaro.org>
+Date: Sat, 13 Jul 2019 11:52:29 +0200
+Subject: [PATCH] ARM: dts: gemini: Fix up confused pin settings
+
+The SL93512r board has its pin muxing set up for the wrong
+ASIC: SL3516 instead of SL3512 that it is using. Fix it
+up and reference the right GPIO for the WPS button.
+
+Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
+---
+ arch/arm/boot/dts/gemini-sl93512r.dts | 19 +++++++++++--------
+ 1 file changed, 11 insertions(+), 8 deletions(-)
+
+--- a/arch/arm/boot/dts/gemini-sl93512r.dts
++++ b/arch/arm/boot/dts/gemini-sl93512r.dts
+@@ -36,8 +36,8 @@
+ 			wakeup-source;
+ 			linux,code = <KEY_WPS_BUTTON>;
+ 			label = "WPS";
+-			/* Conflict with NAND flash */
+-			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
++			/* Conflicts with TVC and extended flash */
++			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
+ 		};
+ 
+ 		button-setup {
+@@ -153,17 +153,20 @@
+ 		syscon: syscon@40000000 {
+ 			pinctrl {
+ 				/*
+-				 * gpio0egrp cover line 16 used by HD LED
+-				 * gpio0fgrp cover line 17, 18 used by wireless LED and reset button
+-				 * gpio0hgrp cover line 21, 22 used by MDIO for Marvell PHY
+-				 * gpio0kgrp cover line 31 used by USB LED
++				 * gpio0agrp cover line 0, used by WPS button
++				 * gpio0fgrp cover line 16 used by HD LED
++				 * gpio0ggrp cover line 17, 18 used by wireless LAN LED and
++				 * reset button OR USB ID select on 17 and USB VBUS select
++				 * on 18. (Confusing.)
++				 * gpio0igrp cover line 21, 22 used by MDIO for Marvell PHY
+ 				 */
+ 				gpio0_default_pins: pinctrl-gpio0 {
+ 					mux {
+ 						function = "gpio0";
+-						groups = "gpio0egrp",
++						groups = "gpio0agrp",
+ 						"gpio0fgrp",
+-						"gpio0hgrp";
++						"gpio0ggrp",
++						"gpio0igrp";
+ 					};
+ 				};
+ 				/*
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
