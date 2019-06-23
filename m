Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945EA4FAF1
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Jun 2019 11:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOzxx6QElPrxdwVoFsH9MP8MTRz6bfxJNTWs5SrhSuE=; b=r1YtAGXbEZ+V1y
	++4QHhNzDjYGD2VgwaboRkp51tobSGbTMQrgBsNp7Ew+m3kQ66NWHEqJqZVGoBUEDOM4kB5yQkvti
	yXCWieBk86lYbApqlfo5ImdqNbrFetmbqqUkEanKTIGI8//uKMZXhb/USsTRV5GfQby0+q56tTBD3
	hOfKGl6VkOakH74xkXGnv0f+cjwqcSYeBfZQ+1cl+F6yXJ/OFeDS8Ejf5zsa5NHVc8BtFc+CEUDDT
	ms39SrE4L4oTSm84woG86k3PxcUL2Fm3mH+txgUqWluhGTPTz89ogL3rh25qKLcs88LDbC3gsSKTs
	aQAAi5QUzCznWUu0+7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heyko-000358-J3; Sun, 23 Jun 2019 09:25:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heyk5-0001iM-00
 for openwrt-devel@lists.openwrt.org; Sun, 23 Jun 2019 09:24:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id g135so9960579wme.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 23 Jun 2019 02:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EBsF1X5vQmHC11wAHQDooq/mx+iWk7TuXMUwt6Qe49w=;
 b=pNLUc/uk52vt7UWjEMW3VwN45ZGMWHpldMtVGIUm3cCS5h8L6qhxQ22f6y1neo63gd
 0f6HaFN1vJ5iv0qwhFoEXz3Q2sL2rqhMJ/QE05YHDvO6ydNuPn7cxydcfr4Hn8KJuVWQ
 /IIQOjuA1gTmFHaW5ysfYDTslsLTHCIMWNRfTHb75t69o4k96cXv5lOtZ2kkAvPGvOP+
 tsEs5ouJHchtewFCT8++LPUXnhruRJiBUf/gzxR8e4Wd6It6LSOS+beOQ9dihis+5P2/
 5+cChJVSLpPbK9T3jLh09DhEXT6ZFfbIKu/htETEAEbOpx1Vuo9s7p+gDLv+xddNZ5CL
 Bm1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EBsF1X5vQmHC11wAHQDooq/mx+iWk7TuXMUwt6Qe49w=;
 b=aUAaXPTltP3e6lJBnvKlM4RJcKzJhOi4BJWaKO5lRxh5zVLBiEl55Ndzcr6o8ZfEiX
 DNAWOYBagzIFAgB448okpLPpoiXhsHfWGMJWQVGs6juPYvmYUE6xXzschs3OQGlgSbss
 RU3BndH0oibT5GvBrwJKoDXW5c2rlwJxoJCwGykERzGXvoDPP7mE5sbshuHPAZAD+l59
 lAd6nVt+ekJIhBWivLaEz9mpvdRu2is3j/DEqT4R9TtWA/7j7xq0VSe4gYUtH9XXfFPn
 UAiAHYqYdIyYGPKvEID/TDdWIT7hIRcjI/PDE4SaaqCJOfwyWV9+KhDUIdPzGHTViZJC
 alQQ==
X-Gm-Message-State: APjAAAUr6WsgU4pJ4jS5FMRVb4v2ispQZzV/sEM+4N6cweKmYk9QV5TY
 VWiRwaxc1NeM8aZ3JFX2Q0WHq5fK
X-Google-Smtp-Source: APXvYqyuy3DTFSFCe00gXsP6JndIWn2pvkZibfzoPH4yuvJ3BYyLVr43nW+Kb1j07b/vjUuUcbBPNg==
X-Received: by 2002:a7b:c40c:: with SMTP id k12mr10320395wmi.122.1561281895201; 
 Sun, 23 Jun 2019 02:24:55 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id w7sm3388292wmc.46.2019.06.23.02.24.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 23 Jun 2019 02:24:54 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 23 Jun 2019 11:24:47 +0200
Message-Id: <20190623092448.27880-2-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190623092448.27880-1-kristian.evensen@gmail.com>
References: <20190623092448.27880-1-kristian.evensen@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_022457_039683_CD58507E 
X-CRM114-Status: GOOD (  17.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/2] ramips: Update ZBT WE1026 DTS-files
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit makes the following changes to the WE1026 DTS-files:

* The parts that are unique to the -5G-version (LED and 5GHz wifi)
are moved to a separate file, so that WE1026.dtsi can be referenced also
by the DTS for the -H version.
* Changed button from polled to interrupt.
* Use the generic "flash"-name for the spi-nor node.

All changes have been tested on the WE1026-5G-16M and work fine. I.e.,
the device works as before the DTS-changes.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 target/linux/ramips/dts/WE1026-5G-16M.dts |  77 ++---------------
 target/linux/ramips/dts/WE1026-5G.dtsi    |  93 ++------------------
 target/linux/ramips/dts/WE1026.dtsi       | 101 ++++++++++++++++++++++
 3 files changed, 112 insertions(+), 159 deletions(-)
 create mode 100644 target/linux/ramips/dts/WE1026.dtsi

diff --git a/target/linux/ramips/dts/WE1026-5G-16M.dts b/target/linux/ramips/dts/WE1026-5G-16M.dts
index 8954006ece..df31a723c5 100644
--- a/target/linux/ramips/dts/WE1026-5G-16M.dts
+++ b/target/linux/ramips/dts/WE1026-5G-16M.dts
@@ -1,81 +1,16 @@
-/*
- *  BSD LICENSE
- *
- *  Copyright(c) 2017 Kristian Evensen <kristian.evensen@gmail.com>.
- *  All rights reserved.
- *
- *  Redistribution and use in source and binary forms, with or without
- *  modification, are permitted provided that the following conditions
- *  are met:
- *
- *    * Redistributions of source code must retain the above copyright
- *      notice, this list of conditions and the following disclaimer.
- *    * Redistributions in binary form must reproduce the above copyright
- *      notice, this list of conditions and the following disclaimer in
- *      the documentation and/or other materials provided with the
- *      distribution.
- *    * Neither the name of Broadcom Corporation nor the names of its
- *      contributors may be used to endorse or promote products derived
- *      from this software without specific prior written permission.
- *
- *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
- *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
- *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
- *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
- *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
- */
-
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
 #include "WE1026-5G.dtsi"
 
 / {
-	compatible = "zbtlink,we1026-5g-16m", "ralink,mt7620a-soc";
+	compatible = "zbtlink,we1026-5g-16m", "zbtlink,we1026-5g",
+		     "zbtlink,we1026", "ralink,mt7620a-soc";
 	model = "ZBT WE1026-5G (16M)";
 };
 
-&spi0 {
-	status = "okay";
-
-	en25q128@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <10000000>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "u-boot";
-				reg = <0x0 0x30000>;
-				read-only;
-			};
 
-			partition@30000 {
-				label = "u-boot-env";
-				reg = <0x30000 0x10000>;
-				read-only;
-			};
-
-			factory: partition@40000 {
-				label = "factory";
-				reg = <0x40000 0x10000>;
-				read-only;
-			};
-
-			firmware: partition@50000 {
-				compatible = "denx,uimage";
-				label = "firmware";
-				reg = <0x50000 0xfb0000>;
-			};
-		};
-	};
+&firmware {
+	reg = <0x50000 0xfb0000>;
 };
+
diff --git a/target/linux/ramips/dts/WE1026-5G.dtsi b/target/linux/ramips/dts/WE1026-5G.dtsi
index e7e64e251a..d1a8471893 100644
--- a/target/linux/ramips/dts/WE1026-5G.dtsi
+++ b/target/linux/ramips/dts/WE1026-5G.dtsi
@@ -1,47 +1,11 @@
-/*
- *  BSD LICENSE
- *
- *  Copyright(c) 2017 Kristian Evensen <kristian.evensen@gmail.com>.
- *  All rights reserved.
- *
- *  Redistribution and use in source and binary forms, with or without
- *  modification, are permitted provided that the following conditions
- *  are met:
- *
- *    * Redistributions of source code must retain the above copyright
- *      notice, this list of conditions and the following disclaimer.
- *    * Redistributions in binary form must reproduce the above copyright
- *      notice, this list of conditions and the following disclaimer in
- *      the documentation and/or other materials provided with the
- *      distribution.
- *    * Neither the name of Broadcom Corporation nor the names of its
- *      contributors may be used to endorse or promote products derived
- *      from this software without specific prior written permission.
- *
- *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
- *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
- *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
- *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
- *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
- *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
- *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
- *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
- *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
- *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
- *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
- */
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
 
-#include "mt7620a.dtsi"
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
+#include "WE1026.dtsi"
 
 / {
-	compatible = "zbtlink,we1026-5g", "ralink,mt7620a-soc";
-
-	chosen {
-		bootargs = "console=ttyS0,115200";
-	};
+	compatible = "zbtlink,we1026-5g", "zbtlink,we1026",
+		     "ralink,mt7620a-soc";
 
 	leds {
 		compatible = "gpio-leds";
@@ -62,53 +26,6 @@
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
 		};
 	};
-
-	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
-		reset {
-			label = "reset";
-			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
-};
-
-&gpio2 {
-	status = "okay";
-};
-
-&gpio3 {
-	status = "okay";
-};
-
-&sdhci {
-	status = "okay";
-};
-
-&ehci {
-	status = "okay";
-};
-
-&ohci {
-	status = "okay";
-};
-
-&ethernet {
-	mtd-mac-address = <&factory 0x28>;
-};
-
-&wmac {
-	ralink,mtd-eeprom = <&factory 0>;
-};
-
-&pinctrl {
-	state_default: pinctrl0 {
-		default {
-			ralink,group = "i2c", "uartf", "spi refclk", "ephy", "wled";
-			ralink,function = "gpio";
-		};
-	};
 };
 
 &pcie {
diff --git a/target/linux/ramips/dts/WE1026.dtsi b/target/linux/ramips/dts/WE1026.dtsi
new file mode 100644
index 0000000000..0780d8f5b5
--- /dev/null
+++ b/target/linux/ramips/dts/WE1026.dtsi
@@ -0,0 +1,101 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7620a.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "zbtlink,we1026", "ralink,mt7620a-soc";
+
+	chosen {
+		bootargs = "console=ttyS0,115200";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x30000>;
+				read-only;
+			};
+
+			partition@30000 {
+				label = "u-boot-env";
+				reg = <0x30000 0x10000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			firmware: partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+			};
+		};
+	};
+};
+
+&gpio2 {
+	status = "okay";
+};
+
+&gpio3 {
+	status = "okay";
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&ehci {
+	status = "okay";
+};
+
+&ohci {
+	status = "okay";
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0x28>;
+};
+
+&wmac {
+	ralink,mtd-eeprom = <&factory 0>;
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		default {
+			ralink,group = "i2c", "uartf", "spi refclk", "ephy", "wled";
+			ralink,function = "gpio";
+		};
+	};
+};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
