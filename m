Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA4A1746FE
	for <lists+openwrt-devel@lfdr.de>; Sat, 29 Feb 2020 14:09:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmwofZQqQ/K+UfX301RRH8pUsO2gSM9U2SdlmHhLpz0=; b=UnV/G4KF1qOAGS
	sgxIj9ZhapcHnMhxbCAvoN6pMXtXg+iDQWAHjhcj68He3IJeOR2Pi2BZtdp5BphxN+PaRhLqsLMcu
	OyPF72ZeDx4gjfmdr/k3C8S4NO7B6jB3xf/0ujpWQguBHKs/2L9ibdiSr/U6K9xISh30N2BpBbfwL
	5lJ59OvKrXJGqxqQdRMBo8jJrUFRSUDBCxoFCw8ip4Huqq9TVvWANoMP8ROvV268OyJ51lwjaB7pK
	lDpZxxfSlNEITUwqEdeUrgazAX82GpRP7fyMLGm2uLmkaxj9U5VgSonZD2W0tGpYTlMLDuHUXJlLl
	luUyYRBMGVe175YrmpUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j81sP-0005qj-1I; Sat, 29 Feb 2020 13:09:53 +0000
Received: from mail.klickitat.com ([54.70.207.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j81sJ-0005q2-6x
 for openwrt-devel@lists.openwrt.org; Sat, 29 Feb 2020 13:09:49 +0000
Received: by mail.klickitat.com (Postfix, from userid 182)
 id 53BC5A613C3; Sat, 29 Feb 2020 05:09:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on dodson.localdomain
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.3
Received: from husum.klickitat.com (husum.ptp [192.168.80.4])
 by mail.klickitat.com (Postfix) with ESMTP id EB3ADA613A5;
 Sat, 29 Feb 2020 05:09:39 -0800 (PST)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <877e05sk1d.fsf@husum.klickitat.com>
Date: Sat, 29 Feb 2020 05:09:39 -0800
In-Reply-To: <877e05sk1d.fsf@husum.klickitat.com> (Russell Senior's message of
 "Sat, 29 Feb 2020 03:35:42 -0800")
Message-ID: <87a751r14c.fsf_-_@husum.klickitat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_050947_330333_10D2BCBD 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RFC v3] ath79: add support for the
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

Changes since v2:

* generified ar7241_ubnt_xm.dtsi into ar724x_ubnt_xm.dtsi and converted
  the ubnt_xm family of devicetree's to stack #includes rather than chain
  them in order to avoid massive duplication between ar7240 and ar7241.

* fixed a broken reference to ar7241_ubnt_outdoor-xm.dtsi

Changes since v1:

* renamed -v0 and -v1 to -ar7240 and -ar7241, respectively, as
  suggested.

* abstracted ar7241_ubnt_outdoor-xm.dtsi to ar724x_ubnt_outdoor-xm.dtsi,
  so that it could be shared between ar7240 and ar7241. Included the new
    ar724x file in the terminal dts files rather than chain them.

Interested in feedback.

Tested on the AR7240 flavor.

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 .../ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts | 22 +++++++++++++++++++
 .../linux/ath79/dts/ar7241_ubnt_airrouter.dts |  3 ++-
 .../ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts | 15 +++++++++++++
 .../linux/ath79/dts/ar7241_ubnt_bullet-m.dts  | 13 -----------
 .../dts/ar7241_ubnt_nanostation-loco-m.dts    |  4 +++-
 .../ath79/dts/ar7241_ubnt_nanostation-m.dts   |  4 +++-
 .../ath79/dts/ar7241_ubnt_picostation-m.dts   |  4 +++-
 .../linux/ath79/dts/ar7241_ubnt_rocket-m.dts  |  4 +++-
 ...r7241_ubnt_xm.dtsi => ar724x_ubnt_xm.dtsi} |  5 -----
 ...tdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} |  2 --
 .../generic/base-files/etc/board.d/01_leds    |  3 ++-
 .../generic/base-files/etc/board.d/02_network |  3 ++-
 .../etc/hotplug.d/firmware/10-ath9k-eeprom    |  3 ++-
 target/linux/ath79/image/generic-ubnt.mk      | 17 ++++++++++----
 14 files changed, 70 insertions(+), 32 deletions(-)
 create mode 100644 target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
 create mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
 delete mode 100644 target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
 rename target/linux/ath79/dts/{ar7241_ubnt_xm.dtsi => ar724x_ubnt_xm.dtsi} (92%)
 rename target/linux/ath79/dts/{ar7241_ubnt_xm_outdoor.dtsi => ar724x_ubnt_xm_outdoor.dtsi} (94%)

diff --git a/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
new file mode 100644
index 0000000000..99bf971eec
--- /dev/null
+++ b/target/linux/ath79/dts/ar7240_ubnt_bullet-m-ar7240.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7240.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
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
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
new file mode 100644
index 0000000000..bb0f19c9eb
--- /dev/null
+++ b/target/linux/ath79/dts/ar7241_ubnt_bullet-m-ar7241.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "ar7241.dtsi"
+#include "ar724x_ubnt_xm.dtsi"
+#include "ar724x_ubnt_xm_outdoor.dtsi"
+
+/ {
+	compatible = "ubnt,bullet-m-ar7241", "ubnt,xm", "qca,ar7241";
+	model = "Ubiquiti Bullet M AR7241";
+};
+
+&eth1 {
+	compatible = "syscon", "simple-mfd";
+};
diff --git a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts b/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
deleted file mode 100644
index e16b5fa0be..0000000000
--- a/target/linux/ath79/dts/ar7241_ubnt_bullet-m.dts
+++ /dev/null
@@ -1,13 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
-/dts-v1/;
-
-#include "ar7241_ubnt_xm_outdoor.dtsi"
-
-/ {
-	compatible = "ubnt,bullet-m", "ubnt,xm", "qca,ar7241";
-	model = "Ubiquiti Bullet M";
-};
-
-&eth1 {
-	compatible = "syscon", "simple-mfd";
-};
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
