Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DBA10C54
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 May 2019 19:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x7/ez+bWzXgnCCWZmEqgixU+uSsFvdJBMmRX0r754X0=; b=hW8jxTirWWdJA6zIdXV3fSKU3X
	oQRlzekhSjzpb54DzxBAJl/6mW9xsfncH/FLzHKVzznSwfvka7FAwyJtYL6E3L3jWY9gObYi7hljb
	cJ+c45yhmaDCdOTrCn5OjOazYobCYYhFoMiH0yso33LNNq21LBa14flUQchdnuMeznr+2YgPxXkH3
	HiVu8nq/KA5tWnaxNTv5COz5xRgj8Md41hz98xsfjO+nqPXPSWcqAWiKxUM7bJsNBpC1unucYLvEy
	7SObfYm+eMScLpjg5JRsKM9OzPWykiJriI4WJvF8nZwQAvInShwn+CNqyfoPXZ9hW745Bk+2Glw7a
	YY7bUmvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLtGm-0000R4-Ui; Wed, 01 May 2019 17:43:48 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLtFh-0007PS-D2
 for openwrt-devel@lists.openwrt.org; Wed, 01 May 2019 17:42:47 +0000
Received: (wp-smtpd smtp.tlen.pl 5440 invoked from network);
 1 May 2019 19:42:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1556732558; bh=tM7J/Nx95/3RrQCExydvjuxdykYjeHzL31HjoAV9N7w=;
 h=From:To:Subject;
 b=kKQBM5bvJbWfiBJJ3e8Ygiy1IUBsHXg4qREB9apVbzJZDT5pIHbfCbjefsDAqmIkW
 T4W/Nj43D7SACaQlAJu5oFSJidh2Lpa2PVWs8onkG0/7aPFnO1T+pNnoZHACJIufM1
 eqzfwsJZYB61tWhKfH4kRTDfyPmWX+o+MQ3iUA3g=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 1 May 2019 19:42:38 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  1 May 2019 19:42:24 +0200
Message-Id: <20190501174224.19089-9-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190501174224.19089-1-tomek_n@o2.pl>
References: <20190501174224.19089-1-tomek_n@o2.pl>
MIME-Version: 1.0
X-WP-MailID: 421f276e30858b53d3276cec42d391a6
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [UfN0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_104241_759122_EF74BDD1 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [193.222.135.175 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 8/8] mvebu: add images for additional
 ESPRESSObin boards
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

This commit adds support for different iterations of ESPRESSObin.
The added variants are:

ESPRESSObin with soldered eMMC,

ESPRESSObin V7, compared to V5 some passive elements changed and ethernet
ports labels positions have been reversed,

ESPRESSObin V7 with soldered eMMC.

Please refer to:
584d7c5 ("mvebu: new subtarget cortex A53")
for instruction how to boot OpenWrt image placed on SD card. It is
advised for owners of V5 and previous to upgrade bootloader based on
U-Boot 2015.01, to the latest version available at:
http://espressobin.net/tech-spec.

Signed-off-by: Tomasz Maciej Nowak <tomek_n@o2.pl>
---
 .../marvell/armada-3720-espressobin-emmc.dts  | 28 +++++++++++
 .../armada-3720-espressobin-v7-emmc.dts       | 43 ++++++++++++++++
 .../marvell/armada-3720-espressobin-v7.dts    | 31 ++++++++++++
 target/linux/mvebu/image/cortex-a53.mk        | 24 +++++++++
 ...l-armada37xx-Add-emmc-sdio-pinctrl-d.patch | 40 +++++++++++++++
 ...l-armada-37xx-Enable-emmc-on-espress.patch | 49 +++++++++++++++++++
 ...da-3720-espressobin-correct-spi-node.patch |  2 +-
 ...l-armada-3720-espressobin-add-ports-.patch | 26 ++++++++++
 8 files changed, 242 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
 create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
 create mode 100644 target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
 create mode 100644 target/linux/mvebu/patches-4.14/513-arm64-dts-marvell-armada37xx-Add-emmc-sdio-pinctrl-d.patch
 create mode 100644 target/linux/mvebu/patches-4.14/514-arm64-dts-marvell-armada-37xx-Enable-emmc-on-espress.patch
 create mode 100644 target/linux/mvebu/patches-4.14/522-arm64-dts-marvell-armada-3720-espressobin-add-ports-.patch

diff --git a/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
new file mode 100644
index 0000000000..ef90a1bd38
--- /dev/null
+++ b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for Globalscale Marvell ESPRESSOBin Board with eMMC
+ * Copyright (C) 2018 Marvell
+ *
+ * Romain Perier <romain.perier@free-electrons.com>
+ * Konstantin Porotchkin <kostap@marvell.com>
+ *
+ */
+
+#include "armada-3720-espressobin.dts"
+
+/ {
+	model = "Globalscale Marvell ESPRESSOBin Board (eMMC)";
+	compatible = "globalscale,espressobin-emmc", "globalscale,espressobin",
+		     "marvell,armada3720", "marvell,armada3710";
+};
+
+&sdhci0 {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	mmccard: mmccard@0 {
+		compatible = "mmc-card";
+		reg = <0>;
+	};
+};
diff --git a/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
new file mode 100644
index 0000000000..2b565ca8d8
--- /dev/null
+++ b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for Globalscale Marvell ESPRESSOBin Board V7 with eMMC
+ * Copyright (C) 2018 Marvell
+ *
+ * Romain Perier <romain.perier@free-electrons.com>
+ * Konstantin Porotchkin <kostap@marvell.com>
+ *
+ */
+
+#include "armada-3720-espressobin.dts"
+
+/ {
+	model = "Globalscale Marvell ESPRESSOBin Board V7 (eMMC)";
+	compatible = "globalscale,espressobin-v7-emmc", "globalscale,espressobin-v7",
+		     "globalscale,espressobin", "marvell,armada3720",
+		     "marvell,armada3710";
+};
+
+&ports {
+	port@1 {
+		reg = <1>;
+		label = "lan1";
+		phy-handle = <&switch0phy0>;
+	};
+
+	port@3 {
+		reg = <3>;
+		label = "wan";
+		phy-handle = <&switch0phy2>;
+	};
+};
+
+&sdhci0 {
+	status = "okay";
+
+	#address-cells = <1>;
+	#size-cells = <0>;
+	mmccard: mmccard@0 {
+		compatible = "mmc-card";
+		reg = <0>;
+	};
+};
diff --git a/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
new file mode 100644
index 0000000000..8a408c3c48
--- /dev/null
+++ b/target/linux/mvebu/files-4.14/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for Globalscale Marvell ESPRESSOBin Board V7
+ * Copyright (C) 2018 Marvell
+ *
+ * Romain Perier <romain.perier@free-electrons.com>
+ * Konstantin Porotchkin <kostap@marvell.com>
+ *
+ */
+
+#include "armada-3720-espressobin.dts"
+
+/ {
+	model = "Globalscale Marvell ESPRESSOBin Board V7";
+	compatible = "globalscale,espressobin-v7", "globalscale,espressobin",
+		     "marvell,armada3720", "marvell,armada3710";
+};
+
+&ports {
+	port@1 {
+		reg = <1>;
+		label = "lan1";
+		phy-handle = <&switch0phy0>;
+	};
+
+	port@3 {
+		reg = <3>;
+		label = "wan";
+		phy-handle = <&switch0phy2>;
+	};
+};
diff --git a/target/linux/mvebu/image/cortex-a53.mk b/target/linux/mvebu/image/cortex-a53.mk
index 4dd1e44665..94ee5d6583 100644
--- a/target/linux/mvebu/image/cortex-a53.mk
+++ b/target/linux/mvebu/image/cortex-a53.mk
@@ -8,6 +8,30 @@ define Device/globalscale-espressobin
 endef
 TARGET_DEVICES += globalscale-espressobin
 
+define Device/globalscale-espressobin-emmc
+  $(call Device/Default-arm64)
+  DEVICE_TITLE := ESPRESSObin eMMC (Marvell Armada 3700 Community Board)
+  DEVICE_DTS := armada-3720-espressobin-emmc
+  SUPPORTED_DEVICES := globalscale,espressobin-emmc
+endef
+TARGET_DEVICES += globalscale-espressobin-emmc
+
+define Device/globalscale-espressobin-v7
+  $(call Device/Default-arm64)
+  DEVICE_TITLE := ESPRESSObin V7 (Marvell Armada 3700 Community Board)
+  DEVICE_DTS := armada-3720-espressobin-v7
+  SUPPORTED_DEVICES := globalscale,espressobin-v7
+endef
+TARGET_DEVICES += globalscale-espressobin-v7
+
+define Device/globalscale-espressobin-v7-emmc
+  $(call Device/Default-arm64)
+  DEVICE_TITLE := ESPRESSObin V7 eMMC (Marvell Armada 3700 Community Board)
+  DEVICE_DTS := armada-3720-espressobin-v7-emmc
+  SUPPORTED_DEVICES := globalscale,espressobin-v7-emmc
+endef
+TARGET_DEVICES += globalscale-espressobin-v7-emmc
+
 define Device/marvell-armada-3720-db
   $(call Device/Default-arm64)
   DEVICE_TITLE := Marvell Armada 3720 Development Board DB-88F3720-DDR3
diff --git a/target/linux/mvebu/patches-4.14/513-arm64-dts-marvell-armada37xx-Add-emmc-sdio-pinctrl-d.patch b/target/linux/mvebu/patches-4.14/513-arm64-dts-marvell-armada37xx-Add-emmc-sdio-pinctrl-d.patch
new file mode 100644
index 0000000000..19702a61ed
--- /dev/null
+++ b/target/linux/mvebu/patches-4.14/513-arm64-dts-marvell-armada37xx-Add-emmc-sdio-pinctrl-d.patch
@@ -0,0 +1,40 @@
+From eefe328439642101774f0f5c4ea0dc6ba1cfb687 Mon Sep 17 00:00:00 2001
+From: Ding Tao <miyatsu@qq.com>
+Date: Fri, 26 Oct 2018 11:50:27 +0000
+Subject: [PATCH] arm64: dts: marvell: armada37xx: Add emmc/sdio pinctrl
+ definition
+
+Add emmc/sdio pinctrl definition for marvell armada37xx SoCs.
+
+Signed-off-by: Ding Tao <miyatsu@qq.com>
+Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
+---
+ arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 10 ++++++++++
+ 1 file changed, 10 insertions(+)
+
+--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
++++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+@@ -218,6 +218,11 @@
+ 					groups = "uart2";
+ 					function = "uart";
+ 				};
++
++				mmc_pins: mmc-pins {
++					groups = "emmc_nb";
++					function = "emmc";
++				};
+ 			};
+ 
+ 			nb_pm: syscon@14000 {
+@@ -247,6 +252,11 @@
+ 					function = "mii";
+ 				};
+ 
++				sdio_pins: sdio-pins {
++					groups = "sdio_sb";
++					function = "sdio";
++				};
++
+ 			};
+ 
+ 			eth0: ethernet@30000 {
diff --git a/target/linux/mvebu/patches-4.14/514-arm64-dts-marvell-armada-37xx-Enable-emmc-on-espress.patch b/target/linux/mvebu/patches-4.14/514-arm64-dts-marvell-armada-37xx-Enable-emmc-on-espress.patch
new file mode 100644
index 0000000000..26d090f050
--- /dev/null
+++ b/target/linux/mvebu/patches-4.14/514-arm64-dts-marvell-armada-37xx-Enable-emmc-on-espress.patch
@@ -0,0 +1,49 @@
+From 43ebc7c1b3ed8198b9acf3019eca16e722f7331c Mon Sep 17 00:00:00 2001
+From: Ding Tao <miyatsu@qq.com>
+Date: Fri, 26 Oct 2018 11:50:28 +0000
+Subject: [PATCH] arm64: dts: marvell: armada-37xx: Enable emmc on espressobin
+
+The ESPRESSObin board has a emmc interface available on U11: declare it
+and let the bootloader enable it if the emmc is present.
+
+[gregory.clement@bootlin.com: disable the emmc by default]
+Signed-off-by: Ding Tao <miyatsu@qq.com>
+Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
+---
+ .../dts/marvell/armada-3720-espressobin.dts   | 22 +++++++++++++++++++
+ 1 file changed, 22 insertions(+)
+
+--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
++++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
+@@ -93,9 +93,31 @@
+ 	cd-gpios = <&gpionb 3 GPIO_ACTIVE_LOW>;
+ 	marvell,pad-type = "sd";
+ 	vqmmc-supply = <&vcc_sd_reg1>;
++
++	pinctrl-names = "default";
++	pinctrl-0 = <&sdio_pins>;
+ 	status = "okay";
+ };
+ 
++/* U11 */
++&sdhci0 {
++	non-removable;
++	bus-width = <8>;
++	mmc-ddr-1_8v;
++	mmc-hs400-1_8v;
++	marvell,xenon-emmc;
++	marvell,xenon-tun-count = <9>;
++	marvell,pad-type = "fixed-1-8v";
++
++	pinctrl-names = "default";
++	pinctrl-0 = <&mmc_pins>;
++/*
++ * This eMMC is not populated on all boards, so disable it by
++ * default and let the bootloader enable it, if it is present
++ */
++	status = "disabled";
++};
++
+ &spi0 {
+ 	status = "okay";
+ 
diff --git a/target/linux/mvebu/patches-4.14/521-arm64-dts-armada-3720-espressobin-correct-spi-node.patch b/target/linux/mvebu/patches-4.14/521-arm64-dts-armada-3720-espressobin-correct-spi-node.patch
index 1d2bdfca75..fc7cb2af1e 100644
--- a/target/linux/mvebu/patches-4.14/521-arm64-dts-armada-3720-espressobin-correct-spi-node.patch
+++ b/target/linux/mvebu/patches-4.14/521-arm64-dts-armada-3720-espressobin-correct-spi-node.patch
@@ -29,7 +29,7 @@ Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>
 
 --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
 +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
-@@ -101,25 +101,9 @@
+@@ -123,25 +123,9 @@
  
  	flash@0 {
  		reg = <0>;
diff --git a/target/linux/mvebu/patches-4.14/522-arm64-dts-marvell-armada-3720-espressobin-add-ports-.patch b/target/linux/mvebu/patches-4.14/522-arm64-dts-marvell-armada-3720-espressobin-add-ports-.patch
new file mode 100644
index 0000000000..d0103bba19
--- /dev/null
+++ b/target/linux/mvebu/patches-4.14/522-arm64-dts-marvell-armada-3720-espressobin-add-ports-.patch
@@ -0,0 +1,26 @@
+From 6ea9a1ee9367fb35acff1c08a0dc4213ff4687a0 Mon Sep 17 00:00:00 2001
+From: Tomasz Maciej Nowak <tmn505@gmail.com>
+Date: Tue, 9 Apr 2019 15:53:42 +0200
+Subject: [PATCH] arm64: dts: marvell: armada-3720-espressobin: add ports
+ phandle
+
+Instead of referencing the whole mdio node, add ports phandle to adjust
+port labels in dts for different hardware iterations of ESPRESSObin
+boards.
+
+Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>
+---
+ arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
++++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
+@@ -153,7 +153,7 @@
+ 
+ 		dsa,member = <0 0>;
+ 
+-		ports {
++		ports: ports {
+ 			#address-cells = <1>;
+ 			#size-cells = <0>;
+ 
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
