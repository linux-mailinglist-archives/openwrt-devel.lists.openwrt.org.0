Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C86174686
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 12:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ctoO0WWW8e58EZ/FDovmFXff36wAFGicpTmyJSCbZ20=; b=irjuyXDnpwTqfw
	NceBtFZgrV+z0vDeQwR+4h3JY+g3MKhI0XXzxFf99QeFE1N8Y3CJmFaMRjmrFhFEmTPqFohYWsweq
	XCLJRC6l+FAnfALQ2f8nFOpuhXzgYbZ3Ql4ZlXSrFAcBgUUpeWouvffgCT9znDnmVQdipWN68w/M3
	5BKpZXv6dqPVRTTd+nKAwPCrC8e+wvE/UCDEaU3RfffC8+KsIe7SEYwl6combd6Dnfhfh7ZJZrKRL
	zSCo6M+otUrOFdcgjpKkQXCEP8NaVz9mfJSfyc/KS6qO2WzCJD+o48CDYmtntRHegg2lfEXLrjmMH
	opfYdzFPo1pHCwJLpLlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j80PX-00009A-6e; Sat, 29 Feb 2020 11:35:59 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j80PP-00008b-Jx
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 11:35:53 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 1B872A612D7; Sat, 29 Feb 2020 03:35:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=unavailable autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id EA518A61116;
 Sat, 29 Feb 2020 03:35:42 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
References: <87tv3dtzut.fsf@husum.klickitat.com>
Date: Sat, 29 Feb 2020 03:35:42 -0800
In-Reply-To: <87tv3dtzut.fsf@husum.klickitat.com> (Russell Senior's message of
 "Wed, 26 Feb 2020 02:19:38 -0800")
Message-ID: <877e05sk1d.fsf@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_033551_737393_DE33F376 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RFC v2] ath79: add support for the
 ar7240 version of the ubiquiti bullet
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
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
separately.

Changes since v1:

* renamed -v0 and -v1 to -ar7240 and -ar7241, respectively, as
  suggested.

* abstracted ar7241_ubnt_outdoor-xm.dtsi to ar724x_ubnt_outdoor-xm.dtsi,
  so that it could be shared between ar7240 and ar7241. Included the new
  ar724x file in the terminal dts files rather than chain them.


There is a further opportunity to share a
target/linux/ath79/dts/ar724x_ubnt_xm.dtsi file, as
target/linux/ath79/dts/ar7240_ubnt_xm.dtsi and
target/linux/ath79/dts/ar7241_ubnt_xm.dtsi differ in one line only.

Interested in feedback.

Tested on the AR7240 flavor.

Signed-off-by: Russell Senior <russell@personaltelco.net>


---
 .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 21 ++++
 target/linux/ath79/dts/ar7240_ubnt_xm.dtsi    | 99 +++++++++++++++++++
 ...-m.dts => ar7241_ubnt_bullet-m-ar7241.dts} |  1 +
 ...tdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} |  2 -
 .../generic/base-files/etc/board.d/01_leds    |  3 +-
 .../generic/base-files/etc/board.d/02_network |  3 +-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 +-
 target/linux/ath79/image/generic-ubnt.mk      | 17 +++-
 8 files changed, 140 insertions(+), 9 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_xm.dtsi
 rename target/linux/ath79/dts/{ar7241_ubnt_bullet-m.dts => ar7241_ubnt_bullet-m-ar7241.dts} (88%)
 rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} (94%)

diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
new file mode 100644
index 0000000000..5fb24b36c8
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
+
+/ {
+	compatible = "ubnt,bullet-m-ar7240", "ubnt,xm", "qca,ar7240";
+	model = "Ubiquiti Bullet M AR7240";
+};
+
+&eth0 {
+	fixed-link {
+		speed = <100>;
+		full-duplex;
+	};
+};
+
+&eth1 {
+	compatible = "syscon", "simple-mfd";
+};
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
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
similarity index 88%
rename from target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
rename to target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
index e16b5fa0be..dec97ab6d8 100644
--- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
+#include "ar7241_ubnt_xm.dtsi"
 #include "ar7241_ubnt_xm_outdoor.dtsi"
 
 / {
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
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
index 6668e15a74..857d607668 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
@@ -242,7 +242,8 @@ tplink,tl-wr842n-v2)
 trendnet,tew-823dru)
 	ucidef_set_led_netdev "wan" "WAN" "trendnet:green:planet" "eth0"
 	;;
-ubnt,bullet-m|\
+ubnt,bullet-m-ar7240|\
+ubnt,bullet-m-ar7241|\
 ubnt,bullet-m-xw|\
 ubnt,nanostation-loco-m|\
 ubnt,nanostation-loco-m-xw|\
diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network b/target/linux/ath79/generic/base-files/etc/board.d/02_network
index ef58d9e124..3a1f3d733b 100755
--- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
@@ -41,7 +41,8 @@ ath79_setup_interfaces()
 	tplink,re450-v1|\
 	tplink,re450-v2|\
 	tplink,tl-wr902ac-v1|\
-	ubnt,bullet-m|\
+	ubnt,bullet-m-ar7240|\
+	ubnt,bullet-m-ar7241|\
 	ubnt,bullet-m-xw|\
 	ubnt,lap-120|\
 	ubnt,litebeam-ac-gen2|\
diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
index 96f9d5c0d2..d90abe2981 100644
--- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
+++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
@@ -89,7 +89,8 @@ case "$FIRMWARE" in
 	tplink,tl-wr2543-v1|\
 	tplink,tl-wr842n-v1|\
 	ubnt,airrouter|\
-	ubnt,bullet-m|\
+	ubnt,bullet-m-ar7240|\
+	ubnt,bullet-m-ar7241|\
 	ubnt,nanostation-loco-m|\
 	ubnt,nanostation-m|\
 	ubnt,picostation-m|\
diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index a4aff09fec..44ce4d9b06 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -113,13 +113,22 @@ define Device/ubnt_airrouter
 endef
 TARGET_DEVICES += ubnt_airrouter
 
-define Device/ubnt_bullet-m
+define Device/ubnt_bullet-m-ar7240
   $(Device/ubnt-xm)
-  DEVICE_MODEL := Bullet-M
+  SOC := ar7240
+  DEVICE_MODEL := Bullet-M AR7240
   DEVICE_PACKAGES += rssileds
-  SUPPORTED_DEVICES += bullet-m
+  SUPPORTED_DEVICES += bullet-m-ar7240
+endef
+TARGET_DEVICES += ubnt_bullet-m-ar7240
+
+define Device/ubnt_bullet-m-ar7241
+  $(Device/ubnt-xm)
+  DEVICE_MODEL := Bullet-M AR7241
+  DEVICE_PACKAGES += rssileds
+  SUPPORTED_DEVICES += bullet-m-ar7241
 endef
-TARGET_DEVICES += ubnt_bullet-m
+TARGET_DEVICES += ubnt_bullet-m-ar7241
 
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
