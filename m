Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160A316FBE3
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 11:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pi9GbPwG2SXP62sUdZwBpcx8LMqXNkc2Ods+41/wAis=; b=JruAzXerh/PrGQ
	CvhVDHSJLFCdCbQSZ12M8mCsLBVPXAYBZK+4Lx5osKvuFFHRSrxwRRZJNFftTjchflRHuS+mtivOz
	lFmVYGaBcv/BURJlNZJv0u0Qs73oRu1wmUlytHgXzSEZHvNmfAe4IfXr/LAKmb5JlbmTCJ+xJnhhv
	s5yyuQZA40LQC4Un/D/8tVt3LNL1U0h+MyK9w2jX0ar5lhCpxdAplV55efwsihBYAB7swPhfp4AEf
	vq4dYj7QX7i392fJHNLTeC7NuFVf0bfDkHeqxqjpl+XW9wDOCXCf9DFC88A4FPo4bKymoAQO2PGkQ
	6lRLBFODv8HEF42U8Bdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tnJ-000323-0g; Wed, 26 Feb 2020 10:19:57 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tn9-00031U-3l
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 10:19:51 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 95E5DA61476; Wed, 26 Feb 2020 02:19:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id 8AE7EA60E85;
 Wed, 26 Feb 2020 02:19:38 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 26 Feb 2020 02:19:38 -0800
Message-ID: <87tv3dtzut.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_021947_233804_D3D83956 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH RFC] ath79: add support for the ar7240
 version of the ubiquiti bullet
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


The Ubiquiti Bullet M2HP come in two flavors, based on ar7240 and
ar7241. Both are supported by ar71xx, despite the different SoCs. The
ath79 target, however, currently supports only the ar7241. The ar7240
version apparently has a differently wired ethernet interface and the
ar7241-based image comes up on the ar7240-based versions without a
working ethernet interface.

This is an attempt to support both flavors of ubnt-bullet-m,
separately. Some of the choices I made may be considered dubious and/or
harmful.

Interested in feedback.

Tested on the AR7240 flavor.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 target/linux/ath79/dts/ar7240_ubnt_xm.dtsi    | 99 +++++++++++++++++++
 .../ath79/dts/ar7240_ubnt_xm_outdoor.dtsi     | 35 +++++++
 .../ath79/dts/ar7241_ubnt_bullet-m-v0.dts     | 13 +++
 ...llet-m.dts => ar7241_ubnt_bullet-m-v1.dts} |  4 +-
 .../generic/base-files/etc/board.d/01_leds    |  3 +-
 .../generic/base-files/etc/board.d/02_network |  3 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 +-
 target/linux/ath79/image/generic-ubnt.mk      | 16 ++-
 8 files changed, 167 insertions(+), 9 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_xm_outdoor.dtsi
 create mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m-v0.dts
 rename target/linux/ath79/dts/{ar7241_ubnt_bullet-m.dts => ar7241_ubnt_bullet-m-v1.dts} (63%)

diff --git a/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi b/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
new file mode 100644
index 0000000000..7165ce5668
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "ar7240.dtsi"
+
+/ {
+	compatible = "ubnt,xm", "qca,ar7240";
+	model = "Ubiquiti Networks XM (rev 1.0) board";
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+	};
+};
+
+&uart {
+	status = "okay";
+};
+
+&spi {
+	status = "okay";
+
+	num-cs = <1>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <25000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x000000 0x040000>;
+				read-only;
+			};
+
+			partition@40000 {
+				label = "u-boot-env";
+				reg = <0x040000 0x010000>;
+			};
+
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x050000 0x750000>;
+			};
+
+			partition@7a0000 {
+				label = "board_config";
+				reg = <0x7a0000 0x010000>;
+				read-only;
+			};
+
+			partition@7b0000 {
+				label = "cfg";
+				reg = <0x7b0000 0x040000>;
+				read-only;
+			};
+
+			art: partition@7f0000 {
+				label = "art";
+				reg = <0x7f0000 0x010000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+
+	wifi: wifi@0,0 {
+		reg = <0x0000 0 0 0 0>;
+		qca,no-eeprom;
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x0>;
+};
+
+&eth1 {
+	status = "okay";
+
+	mtd-mac-address = <&art 0x6>;
+};
diff --git a/target/linux/ath79/dts/ar7240_ubnt_xm_outdoor.dtsi b/target/linux/ath79/dts/ar7240_ubnt_xm_outdoor.dtsi
new file mode 100644
index 0000000000..c9178d8762
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_ubnt_xm_outdoor.dtsi
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#include "ar7240_ubnt_xm.dtsi"
+
+/ {
+	aliases {
+		led-boot = &led_link4;
+		led-failsafe = &led_link4;
+		label-mac-device = &wifi;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		link1 {
+			label = "ubnt:red:link1";
+			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		link2 {
+			label = "ubnt:orange:link2";
+			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		link3 {
+			label = "ubnt:green:link3";
+			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+		};
+
+		led_link4: link4 {
+			label = "ubnt:green:link4";
+			gpios = <&gpio 7 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m-v0.dts b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-v0.dts
new file mode 100644
index 0000000000..f258436def
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-v0.dts
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240_ubnt_xm_outdoor.dtsi"
+
+/ {
+	compatible = "ubnt,bullet-m-v0", "ubnt,xm", "qca,ar7240";
+	model = "Ubiquiti Bullet M v0";
+};
+
+&eth1 {
+	compatible = "syscon", "simple-mfd";
+};
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-v1.dts
similarity index 63%
rename from target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
rename to target/linux/ath79/dts/ar7241_ubnt_bullet-m-v1.dts
index e16b5fa0be..c5b3b61ab0 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-v1.dts
@@ -4,8 +4,8 @@
 #include "ar7241_ubnt_xm_outdoor.dtsi"
 
 / {
-	compatible = "ubnt,bullet-m", "ubnt,xm", "qca,ar7241";
-	model = "Ubiquiti Bullet M";
+	compatible = "ubnt,bullet-m-v1", "ubnt,xm", "qca,ar7241";
+	model = "Ubiquiti Bullet M v1";
 };
 
 &eth1 {
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index 6668e15a74..d3ad1a3571 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -242,7 +242,8 @@ tplink,tl-wr842n-v2)
 trendnet,tew-823dru)
 	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
 	;;
-ubnt,bullet-m|\
+ubnt,bullet-m-v0|\
+ubnt,bullet-m-v1|\
 ubnt,bullet-m-xw|\
 ubnt,nanostation-loco-m|\
 ubnt,nanostation-loco-m-xw|\
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index ef58d9e124..641678bd8c 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -41,7 +41,8 @@ ath79_setup_interfaces()
 	tplink,re450-v1|\
 	tplink,re450-v2|\
 	tplink,tl-wr902ac-v1|\
-	ubnt,bullet-m|\
+	ubnt,bullet-m-v0|\
+	ubnt,bullet-m-v1|\
 	ubnt,bullet-m-xw|\
 	ubnt,lap-120|\
 	ubnt,litebeam-ac-gen2|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 96f9d5c0d2..4b08ac5a54 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -89,7 +89,8 @@ case "$FIRMWARE" in
 	tplink,tl-wr2543-v1|\
 	tplink,tl-wr842n-v1|\
 	ubnt,airrouter|\
-	ubnt,bullet-m|\
+	ubnt,bullet-m-v0|\
+	ubnt,bullet-m-v1|\
 	ubnt,nanostation-loco-m|\
 	ubnt,nanostation-m|\
 	ubnt,picostation-m|\
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index a4aff09fec..448a0e197b 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -113,13 +113,21 @@ define Device/ubnt_airrouter
 endef
 TARGET_DEVICES += ubnt_airrouter
 
-define Device/ubnt_bullet-m
+define Device/ubnt_bullet-m-v0
   $(Device/ubnt-xm)
-  DEVICE_MODEL := Bullet-M
+  DEVICE_MODEL := Bullet-M v0
   DEVICE_PACKAGES += rssileds
-  SUPPORTED_DEVICES += bullet-m
+  SUPPORTED_DEVICES += bullet-m-v0
+endef
+TARGET_DEVICES += ubnt_bullet-m-v0
+
+define Device/ubnt_bullet-m-v1
+  $(Device/ubnt-xm)
+  DEVICE_MODEL := Bullet-M v1
+  DEVICE_PACKAGES += rssileds
+  SUPPORTED_DEVICES += bullet-m-v1
 endef
-TARGET_DEVICES += ubnt_bullet-m
+TARGET_DEVICES += ubnt_bullet-m-v1
 
 define Device/ubnt_bullet-m-xw
   $(Device/ubnt-xw)
-- 
2.25.1



-- 
Russell Senior, President
russell@personaltelco.net

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
