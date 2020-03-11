Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2E6180D18
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 02:07:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKoXJr/eb9mN8sS3dvHWi9HuCXhgUX78ZuEFko2+ZBw=; b=MddeEsWgh/dqX8
	laBefOV5E3lbir7DM45emKBZ/INeNeTrKBEdquDZavXowWF6y4tT7v+aoEWJafVkdqY2WVD23D7Gd
	3DUtsr1PdCVz9FTLogoISzpUnbNyJlwg06427z2TlGaL4H7duUGuK9CPWxv2ZmHTTkiyYWi1msyCi
	kxIQT7aRKH4r0fRhcCp3Hwk6r83q9+l0fbHsd6ww6tG/7jvjg0VMfudI68TdJmx2/vkZ1DZG1y7Pi
	5iPNcx0lTugGdQRbxO/cvgEyOa9NCRlTdg6Ugwts1I48p+OuHT1RTfmEZkPBOXDI2dU7lUFIx2mEi
	zZRJY1MFfxMOXNYlwVdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBppq-0007hZ-J7; Wed, 11 Mar 2020 01:06:58 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBppa-0007Xd-IQ
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 01:06:44 +0000
Received: by mail-pg1-x536.google.com with SMTP id x7so234897pgh.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 18:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/yV8nkbkjzYwMp9NEiCXXMsOE1XzWeDOQIta8aJX3I4=;
 b=kQa+PQ4N5dnBdUy25Zme9R2neWbEEIGq1gGwA/BD+x4sSm/qbSvU6pdUs2TXKe3OEc
 ze35cBxMtcm0DUGfCyYxuhGvxC3XyzUdWqxDcNueXVVBURw2Z2G5EqmXDKCSv0ED62W9
 Yr1EHhkMOUV7gQxpG4cf/31uZPXwphf3zU47QjpC+Q2iCfyS4tInESGBaYN+ixCvIB96
 q+nm2G9qHgyYl/iX+XKgM+OmAjlX57+BS0+kwiePgYKGDQGEdyFbsPwcDWx9wrfijhKH
 RNKUk+/dwKowBV2stPVHoIbM9psf4WBUzfYhhBWA42C8/6WIk5v3oLBQXRyCY7ynvxj5
 TJJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/yV8nkbkjzYwMp9NEiCXXMsOE1XzWeDOQIta8aJX3I4=;
 b=DVGSzzsUPJw3hIWmJkvtD9g6gZfXSI0EKWspJiyyvwb/Kus9/TNEaWHsMfggtPfVnt
 V34v5MLmTo7d9fktU9s1T0lTjkUxHvScLBzriMzpWbMTMzpaD4lKmHPiKSYkQWd9nt/z
 Iw+nHW4Rlz41DFafrsf7cOcnsjm9WW/fJHRuN4kPJ9Df+YCmFNS5M3BkxR2FNtpFFcpw
 sDiGY0Q8FlaOuPZYcNSSmx/m0rS1OcA7b3svcXjVr24oDie0E80R312wVPkNopZ7ksKc
 z+sUX0ix66+oxjJshlLQ/D+3AqwfFNeK4iW+qWcNokmH58z6R93qit+CoTup66XtAPQk
 P3Yg==
X-Gm-Message-State: ANhLgQ2i4cp5rA/HofGoeHGslBwEAC647VwH6/EkINCvWc/XBOELGxhT
 R6s/UlDcETWBRZLKSmPa5RmuJOfBCOQ/vA==
X-Google-Smtp-Source: ADFU+vsfabF9T/hCpWOyTpvdvLAzHklvOxnRSxfnqI1XOBQOl7wz80QV9zqkgW8PN9RbCUenUPvu0A==
X-Received: by 2002:a63:b04f:: with SMTP id z15mr416832pgo.58.1583888799616;
 Tue, 10 Mar 2020 18:06:39 -0700 (PDT)
Received: from hawg.ptp ([2602:3f:e4ac:bf00::70])
 by smtp.gmail.com with ESMTPSA id m18sm46353680pgd.39.2020.03.10.18.06.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:06:39 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Mar 2020 18:06:02 -0700
Message-Id: <20200311010605.2818827-2-russell@personaltelco.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311010605.2818827-1-russell@personaltelco.net>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <20200311010605.2818827-1-russell@personaltelco.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_180642_625454_AF4DC174 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4 1/4] ath79: generify ubnt_xm dtsi for
 ar7240 and ar7241
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
Cc: Russell Senior <russell@personaltelco.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

* Prepare to support the AR7240 variant of ubiquiti bullet m, by
  reorganizing the related dtsi files.

* Distribute SOC variable across ubnt-xm devices.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 target/linux/ath79/dts/ar7241_ubnt_airrouter.dts           | 3 ++-
 target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts            | 4 +++-
 target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts  | 4 +++-
 target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts       | 4 +++-
 target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts       | 4 +++-
 target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts            | 4 +++-
 .../ath79/dts/{ar7241_ubnt_xm.dtsi => ar724x_ubnt_xm.dtsi} | 5 -----
 ...41_ubnt_xm_outdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} | 2 --
 target/linux/ath79/image/generic-ubnt.mk                   | 7 ++++++-
 9 files changed, 23 insertions(+), 14 deletions(-)
 rename target/linux/ath79/dts/{ar7241_ubnt_xm.dtsi => ar724x_ubnt_xm.dtsi} (92%)
 rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} (94%)

diff --git a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
index ad2762e20c..dd2421da8e 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_airrouter.dts
@@ -1,7 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "ar7241_ubnt_xm.dtsi"
+#include "ar7241.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
 
 / {
 	compatible = "ubnt,airrouter", "ubnt,xm", "qca,ar7241";
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts b/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
index e16b5fa0be..a43ed2afdc 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
@@ -1,7 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "ar7241_ubnt_xm_outdoor.dtsi"
+#include "ar7241.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
 
 / {
 	compatible = "ubnt,bullet-m", "ubnt,xm", "qca,ar7241";
diff --git a/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts b/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts
index 386b7c7073..60d5a21a22 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_nanostation-loco-m.dts
@@ -1,7 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "ar7241_ubnt_xm_outdoor.dtsi"
+#include "ar7241.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
 
 / {
 	compatible = "ubnt,nanostation-loco-m", "ubnt,xm", "qca,ar7241";
diff --git a/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts b/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts
index eebe65e53f..82344bb5ea 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_nanostation-m.dts
@@ -1,7 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "ar7241_ubnt_xm_outdoor.dtsi"
+#include "ar7241.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
 
 / {
 	compatible = "ubnt,nanostation-m", "ubnt,xm", "qca,ar7241";
diff --git a/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts b/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts
index e2376a1b92..d05aca3e67 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_picostation-m.dts
@@ -1,7 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "ar7241_ubnt_xm_outdoor.dtsi"
+#include "ar7241.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
 
 / {
 	compatible = "ubnt,picostation-m", "ubnt,xm", "qca,ar7241";
diff --git a/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts b/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts
index 35f5205b41..9e342177e2 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_rocket-m.dts
@@ -1,7 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "ar7241_ubnt_xm_outdoor.dtsi"
+#include "ar7241.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
 
 / {
 	compatible = "ubnt,rocket-m", "ubnt,xm", "qca,ar7241";
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi b/target/linux/ath79/dts/ar724x_ubnt_xm.dtsi
similarity index 92%
rename from target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
rename to target/linux/ath79/dts/ar724x_ubnt_xm.dtsi
index e2b653b3a7..b36b0d4fe2 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_xm.dtsi
+++ b/target/linux/ath79/dts/ar724x_ubnt_xm.dtsi
@@ -3,12 +3,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 
-#include "ar7241.dtsi"
-
 / {
-	compatible = "ubnt,xm", "qca,ar7241";
-	model = "Ubiquiti Networks XM (rev 1.0) board";
-
 	keys {
 		compatible = "gpio-keys";
 
diff --git a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi b/target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi
similarity index 94%
rename from target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
rename to target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi
index 75116edc51..a28f8fbcd4 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_xm_outdoor.dtsi
+++ b/target/linux/ath79/dts/ar724x_ubnt_xm_outdoor.dtsi
@@ -1,7 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 
-#include "ar7241_ubnt_xm.dtsi"
-
 / {
 	aliases {
 		led-boot = &led_link4;
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index a4aff09fec..aad177bf4a 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -71,7 +71,6 @@ endef
 
 define Device/ubnt-xm
   $(Device/ubnt)
-  SOC := ar7241
   DEVICE_VARIANT := XM
   DEVICE_PACKAGES += kmod-usb-ohci
   IMAGE_SIZE := 7448k
@@ -108,6 +107,7 @@ TARGET_DEVICES += ubnt_acb-isp
 
 define Device/ubnt_airrouter
   $(Device/ubnt-xm)
+  SOC := ar7241
   DEVICE_MODEL := AirRouter
   SUPPORTED_DEVICES += airrouter
 endef
@@ -115,6 +115,7 @@ TARGET_DEVICES += ubnt_airrouter
 
 define Device/ubnt_bullet-m
   $(Device/ubnt-xm)
+  SOC := ar7241
   DEVICE_MODEL := Bullet-M
   DEVICE_PACKAGES += rssileds
   SUPPORTED_DEVICES += bullet-m
@@ -181,6 +182,7 @@ TARGET_DEVICES += ubnt_nanostation-ac-loco
 
 define Device/ubnt_nanostation-loco-m
   $(Device/ubnt-xm)
+  SOC := ar7241
   DEVICE_MODEL := Nanostation Loco M
   DEVICE_PACKAGES += rssileds
   SUPPORTED_DEVICES += bullet-m
@@ -197,6 +199,7 @@ TARGET_DEVICES += ubnt_nanostation-loco-m-xw
 
 define Device/ubnt_nanostation-m
   $(Device/ubnt-xm)
+  SOC := ar7241
   DEVICE_MODEL := Nanostation M
   DEVICE_PACKAGES += rssileds
   SUPPORTED_DEVICES += nanostation-m
@@ -213,6 +216,7 @@ TARGET_DEVICES += ubnt_nanostation-m-xw
 
 define Device/ubnt_picostation-m
   $(Device/ubnt-xm)
+  SOC := ar7241
   DEVICE_MODEL := Picostation M
   DEVICE_PACKAGES += rssileds
   SUPPORTED_DEVICES += bullet-m
@@ -221,6 +225,7 @@ TARGET_DEVICES += ubnt_picostation-m
 
 define Device/ubnt_rocket-m
   $(Device/ubnt-xm)
+  SOC := ar7241
   DEVICE_MODEL := Rocket-M
   DEVICE_PACKAGES += rssileds
   SUPPORTED_DEVICES += rocket-m
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
