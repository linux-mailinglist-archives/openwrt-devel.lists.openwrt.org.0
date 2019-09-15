Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1BEB31E2
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Sep 2019 21:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TSQhRBAG17VpLhDQ/1yHYs/2qKx5e9f0/zmNNs5QSAw=; b=oL6CTC6vq8B6XV
	ziGSRXgryi96U5VhPQDIpEPV9T9EKSfteBw/i9BczNZrlpLr81xKXA4uBy+8F6t6P8FzszpQwGbCw
	nmRrNgI24MMiad0tGRudq3vTXGth9pl/6R/5HwPUBxxeqjeMXx96xb6avTzR3VwZVK4/tCYVcxarn
	iFBEoxqU5RJs/75HCb0nAnhF6tuETSWCfwePjm7AF2KK2/Qs0XNYY0PuimlZBPY7PSr1ucPxbVKV9
	nOqWbTLRrn3upzJ9VeYGbCVEkWY755nIhLJBtpdPIzlBGf5ukkj+hBCpT4ALRZcngO0z8BQfE2XY8
	O83k+azN6CFMbnqz6MKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9abe-0001oJ-Qg; Sun, 15 Sep 2019 19:54:46 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9abU-0001nw-SE
 for openwrt-devel@lists.openwrt.org; Sun, 15 Sep 2019 19:54:38 +0000
Received: by mail-lj1-x243.google.com with SMTP id a22so31786591ljd.0
 for <openwrt-devel@lists.openwrt.org>; Sun, 15 Sep 2019 12:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZD8/Yz/SjHwTR4sGWKmUH5b1X+kUIuNzk/9k3Bexxiw=;
 b=XTuC9tWfTx3bn0fb7XunDzXKh8/cOKpixDpVH0vbp7aliPeRkbohSCC8/S9Ubw7bE+
 PToN2DxQYfLSDf4fOeEyAjnnmaE7U9h3jq6leMs1GwROt7+60vKZBUWk3tNCqchQXP3d
 QziNELHOovSfPNLOOMM2kbSqDAZgQTYwBR0w3fhwGH8qP8e2FtjYMuGaxxwXFnDZIeJ9
 oLIkWG24NINIVGuIK9zct8A24N0o6jj8G7n20KZhrkXvrlYzTKVP/8+WrBK0h7bKhRf5
 /DGeSmWJqJPq5Keyb3bVFs4mz5Li3Lj9n5eGUSJRL+ZGV3o5Ad8eN3GSvvkLZZbxS6Aj
 Ptdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZD8/Yz/SjHwTR4sGWKmUH5b1X+kUIuNzk/9k3Bexxiw=;
 b=cEe8uDwNybHW04Sgeib04SyZK96WOvcUxGtFtEZaC98ykBT515OMAFDpUP/yhDjwgH
 3yJlo7DIp9C2hd5byMI4aWbvUMz10+jMq0Gu/sr1cJoBieQ0LNPkJoblCtO9j3xkNsxu
 cI42pgvkOhE4DpVTwiEcWtfhASakW+rJphX3KyJgDC4auVh1stXM1bnPKl2COVQ26/68
 nLYB9YTZKYP4vO9/KPZhDYyh65ZO2K7W+fp4OON47redWpvTKi3Jii9Gn3MXBvlMR5T5
 c9SkgLxsfN30OJyxwCcCYFpD66NZ3fuHLQyLG3+MXJ+kVZ2nk+iWDQOPLGGg/sYZPQm8
 qBMQ==
X-Gm-Message-State: APjAAAWbOPNGW8WKel+TXWZT2PAcPnJHzqmAdnwuxaictNbQC5N1hkDw
 p8gnwj06kFPUIMlNAgB4ReE/9g==
X-Google-Smtp-Source: APXvYqxNb8cE1dFXhyKVPwMeO0IIeYrCE7Oc8uAcIyhbdjT3U+y3IfbR6mS5Ht7njpZgvU4bVSijBg==
X-Received: by 2002:a2e:7d0d:: with SMTP id y13mr35838126ljc.191.1568577273955; 
 Sun, 15 Sep 2019 12:54:33 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id g13sm7807815ljj.73.2019.09.15.12.54.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 12:54:32 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Sun, 15 Sep 2019 21:54:05 +0200
Message-Id: <20190915195405.3398-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_125436_944300_F6EC4631 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] gemini: dir685: Restore graphics
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

One of the v4.19 patches had a bug, this is fixed upstream,
but in OpenWrt we can fix it by just fixing the bug in the
patch.

We also need to augment the config file to select the
CONFIG_DRM_FBDEV_EMULATION symbol.

This restores the display controller on the DIR-685 to
working state: penguin and graphics on the little screen
with default OpenWrt install.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/config-4.19               |  1 +
 ...8-ARM-dts-Enable-Gemini-flash-access.patch | 19 +++++--------------
 2 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/target/linux/gemini/config-4.19 b/target/linux/gemini/config-4.19
index a817303ec8a0..ac295f085787 100644
--- a/target/linux/gemini/config-4.19
+++ b/target/linux/gemini/config-4.19
@@ -146,6 +146,7 @@ CONFIG_DRM=y
 CONFIG_DRM_BRIDGE=y
 # CONFIG_DRM_CDNS_DSI is not set
 # CONFIG_DRM_DEBUG_SELFTEST is not set
+CONFIG_DRM_FBDEV_EMULATION=y
 CONFIG_DRM_GEM_CMA_HELPER=y
 # CONFIG_DRM_I2C_NXP_TDA9950 is not set
 CONFIG_DRM_KMS_CMA_HELPER=y
diff --git a/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch b/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch
index 372242c68b44..4a33c43f08c9 100644
--- a/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch
+++ b/target/linux/gemini/patches-4.19/0008-ARM-dts-Enable-Gemini-flash-access.patch
@@ -1,7 +1,7 @@
-From 74631102645df8984acbdf67b731e4d437f27fed Mon Sep 17 00:00:00 2001
+From 928681e6b46cb70317f7721aae8435ea89fcfd80 Mon Sep 17 00:00:00 2001
 From: Linus Walleij <linus.walleij@linaro.org>
 Date: Thu, 11 Oct 2018 20:06:23 +0200
-Subject: [PATCH 08/18] ARM: dts: Enable Gemini flash access
+Subject: [PATCH] ARM: dts: Enable Gemini flash access
 
 Some Gemini platforms have a parallel NOR flash which conflicts
 with use cases reusing some of the flash lines (such as CE1)
@@ -16,9 +16,9 @@ access.
 
 Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
 ---
- arch/arm/boot/dts/gemini-dlink-dir-685.dts | 35 +++++++++++++++-------
- arch/arm/boot/dts/gemini-sq201.dts         | 31 ++++++++++---------
- 2 files changed, 41 insertions(+), 25 deletions(-)
+ arch/arm/boot/dts/gemini-dlink-dir-685.dts | 33 +++++++++++++++-------
+ arch/arm/boot/dts/gemini-sq201.dts         | 31 +++++++++++---------
+ 2 files changed, 40 insertions(+), 24 deletions(-)
 
 --- a/arch/arm/boot/dts/gemini-dlink-dir-685.dts
 +++ b/arch/arm/boot/dts/gemini-dlink-dir-685.dts
@@ -84,15 +84,6 @@ Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
  				pinctrl-gmii {
  					mux {
  						function = "gmii";
-@@ -430,7 +443,7 @@
- 		};
- 
- 		display-controller@6a000000 {
--			status = "okay";
-+			status = "disabled";
- 
- 			port@0 {
- 				reg = <0>;
 --- a/arch/arm/boot/dts/gemini-sq201.dts
 +++ b/arch/arm/boot/dts/gemini-sq201.dts
 @@ -41,14 +41,12 @@
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
