Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6631162DA
	for <lists+openwrt-devel@lfdr.de>; Sun,  8 Dec 2019 16:36:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xVkSuWVY/PmYrKG/fqdE9t650K9WvLHxTAJaQc4lyRQ=; b=cJO1hnjCHgqsOCb6bMPUGqhHas
	VZOaQaSiyR83cnGyR8AINw32rRKi2AwNBMSKUN3U6R6fv8ZLwBYwLmxjmoNSCD7fgXC/5emZNZHfN
	EeJ2n2ABjzVIk9+S1lNaV5B3xdKBc9VacLsC9oHTPbNxRlbiKBNgIvbTfciwTLccDF8C8LxwCFkuP
	WQpStLjbJRgmFXE/HAIwrGyqFj8SF7rAxUa/MciRdTQUUVfS+w9CZ4go0huDfZ+Z5NLvcnfrfraxY
	bhaqqfevK8oWincDpLcOsUKuMkaIRYoq2Sh3oyU+S+6YhOKw/xe5zIcRmT8Gv6LktaWGVd3Zd8EFE
	37VYzkLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idybL-000514-MU; Sun, 08 Dec 2019 15:36:03 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idyb0-0003xR-0X
 for openwrt-devel@lists.openwrt.org; Sun, 08 Dec 2019 15:35:44 +0000
Received: from buildfff.adridolf.com ([188.193.231.72]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MTAW9-1iAeg802cp-00UWSn for <openwrt-devel@lists.openwrt.org>; Sun, 08
 Dec 2019 16:35:39 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  8 Dec 2019 16:34:55 +0100
Message-Id: <20191208153455.27804-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208153455.27804-1-freifunk@adrianschmutzler.de>
References: <20191208153455.27804-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:b0aN0G9HZ3ycMpX2ZYBiJh+o5bOr3YotBjMPxP6mSdi87tiID1s
 Id3cWgHvmv5yQRb1H4JS+RKvbcRoMGd2sOkP9oHUFp66MOk0fnAebwXfzCeq2TOIRgApRfh
 YMt6ZhgC7aish2tA5YEcJKnWaRZFL/aclZKYJeIK0SRXzgEqUcw3OMwwm++X732M/cSO6O/
 b4xC8D4yNcqhv01Tvxn0g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:aLucrfEfRuo=:4Iy4tTiDvBs8+10zlusEmi
 pITHoPiA5TY9OnHrE9JZe1UEtzPLpfuucR59WZDTJPqRXq6UI2MZWTE4206rk5HB+JMrdhl8s
 t+OdZ9wClbN3spyQFJ97ttrojLNftKmtSSqKU0+LHl7YCVdUl2sU5EAr6uoImRJJiFibB3i+4
 CyHNrdqsm38zH1/+kjK9yPbIcu6ml3LrHaunV6/4jzbKmrjLqBymJbCa8XDrsxp+W7ZFxHcwA
 COr5/ZA4JcaqFLcpLYFdyCXXMLfvlurQYRV999Zf7vZ5bcnJ8+4zTtrWgU+KF03FQqA8DBCdR
 QnSbo6E5Vlz4TOUGkjpq0YA1vblpoD1u8irCSI3Qt7x8O3WBzFqOYGFcvnAl3kDao7awSZsrQ
 eIOBG08ntLNuikqM4QrH9FlKLyJWSG0lJB7aC7wWZhvWfjM52E0xtYDyjSrYRz5ie4yXOuG4T
 L7wUcyoHzoyQrEOyVIlvFZ2fX1+Ck42QGaCTCv61d/dSFS1gOe/wJtuihHvziNgix9b6W+XP4
 XNyrZXZbYW1D621mwrjkdW6cTz0UHYkeUxLgLmouNpGVB8+XdnEWhgUwWeW3J+clVU30pyJFd
 HD8mpoaeGLB7loUSCD+gU6+yIPm/40hnrRWpfeT/5jRE94nC34Ye20upsVgUG4gL90TG4U3ik
 +UzHWQLFwTuhnWDU3wd9kIKja2BsIxoj69X57XWtViHkCLzdYuUIwi+zsvQ9QQRrzycQFk7im
 m87mCuAzHy9aZAUQd1lEizipju/OEqkKQFPAS7BA3rce5sW5lPODlt+gcTyhUBNfDg3uStXPo
 CnCQkaNZKhbJ5NBG74DqQ8xkIr9orwnPTkTBufiTM3dFCyNP5RCU9OwHZgLHRBuC/HruIlrcR
 AQRfeLLuQuo8u60cNtbvWi6f2kxc0/6s1Tx+PI+ug=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_073542_353496_FD51A08A 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: create common DTSI for TP-Link
 Archer C20i/C20 v1/C50 v1
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

The TP-Link Archer C20i/C20 v1/C50 v1 seem to be almost the same,
so creating a common DTSI will reduce duplicate code.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../dts/mt7620a_tplink_archer-c20-v1.dts      | 126 +-----------------
 .../ramips/dts/mt7620a_tplink_archer-c20i.dts | 119 +----------------
 .../dts/mt7620a_tplink_archer-c50-v1.dts      | 126 +-----------------
 .../ramips/dts/mt7620a_tplink_archer.dtsi     | 124 +++++++++++++++++
 4 files changed, 137 insertions(+), 358 deletions(-)
 create mode 100644 target/linux/ramips/dts/mt7620a_tplink_archer.dtsi

diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
index bc47f52d23..23719c3f35 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c20-v1.dts
@@ -1,9 +1,6 @@
 /dts-v1/;
 
-#include "mt7620a.dtsi"
-
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/gpio/gpio.h>
+#include "mt7620a_tplink_archer.dtsi"
 
 / {
 	compatible = "tplink,archer-c20-v1", "ralink,mt7620a-soc";
@@ -16,10 +13,6 @@
 		led-upgrade = &led_power;
 	};
 
-	chosen {
-		bootargs = "console=ttyS0,115200";
-	};
-
 	leds {
 		compatible = "gpio-leds";
 
@@ -66,86 +59,6 @@
 			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
 		};
 	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		reset {
-			label = "reset";
-			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-
-		rfkill {
-			label = "rfkill";
-			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RFKILL>;
-		};
-	};
-};
-
-&gpio1 {
-	status = "okay";
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
-&spi0 {
-	status = "okay";
-
-	m25p80@0 {
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
-				reg = <0x0 0x20000>;
-				read-only;
-			};
-
-			partition@20000 {
-				compatible = "tplink,firmware";
-				label = "firmware";
-				reg = <0x20000 0x7a0000>;
-			};
-
-			partition@7c0000 {
-				label = "config";
-				reg = <0x7c0000 0x10000>;
-				read-only;
-			};
-
-			rom: partition@7d0000 {
-				label = "rom";
-				reg = <0x7d0000 0x10000>;
-				read-only;
-			};
-
-			partition@7e0000 {
-				label = "romfile";
-				reg = <0x7e0000 0x10000>;
-				read-only;
-			};
-
-			radio: partition@7f0000 {
-				label = "radio";
-				reg = <0x7f0000 0x10000>;
-				read-only;
-			};
-		};
-	};
 };
 
 &pinctrl {
@@ -157,42 +70,15 @@
 	};
 };
 
-&ethernet {
-		pinctrl-names = "default";
-		mtd-mac-address = <&rom 0xf100>;
-		mediatek,portmap = "wllll";
-	};
-
-&ehci {
-	status = "okay";
-};
-
-&ohci {
-	status = "okay";
-};
-
-&gsw {
-	mediatek,port4 = "ephy";
-};
-
 &wmac {
-	ralink,mtd-eeprom = <&radio 0>;
-	mtd-mac-address = <&rom 0xf100>;
-	mtd-mac-address-increment = <(-2)>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pa_pins>;
-};
 
-&pcie {
-	status = "okay";
+	mtd-mac-address = <&rom 0xf100>;
+	mtd-mac-address-increment = <(-2)>;
 };
 
-&pcie0 {
-	mt76@0,0 {
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&radio 0x8000>;
-		ieee80211-freq-limit = <5000000 6000000>;
-		mtd-mac-address = <&rom 0xf100>;
-		mtd-mac-address-increment = <(-1)>;
-	};
+&wifi {
+	mtd-mac-address = <&rom 0xf100>;
+	mtd-mac-address-increment = <(-1)>;
 };
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
index 5ee6d67192..975e0af661 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c20i.dts
@@ -1,9 +1,6 @@
 /dts-v1/;
 
-#include "mt7620a.dtsi"
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
+#include "mt7620a_tplink_archer.dtsi"
 
 / {
 	compatible = "tplink,archer-c20i", "ralink,mt7620a-soc";
@@ -13,10 +10,6 @@
 		label-mac-device = &ethernet;
 	};
 
-	chosen {
-		bootargs = "console=ttyS0,115200";
-	};
-
 	leds {
 		compatible = "gpio-leds";
 
@@ -47,82 +40,6 @@
 			gpios = <&gpio3 0 GPIO_ACTIVE_LOW>;
 		};
 	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		rfkill {
-			label = "rfkill";
-			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RFKILL>;
-		};
-
-		reset_wps {
-			label = "reset_wps";
-			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-	};
-};
-
-&gpio1 {
-	status = "okay";
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
-&spi0 {
-	status = "okay";
-
-	m25p80@0 {
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
-				reg = <0x0 0x20000>;
-				read-only;
-			};
-
-			partition@20000 {
-				compatible = "tplink,firmware";
-				label = "firmware";
-				reg = <0x20000 0x7a0000>;
-			};
-
-			partition@7c0000 {
-				label = "config";
-				reg = <0x7c0000 0x10000>;
-			};
-
-			rom: partition@7d0000 {
-				label = "rom";
-				reg = <0x7d0000 0x10000>;
-			};
-
-			partition@7e0000 {
-				label = "romfile";
-				reg = <0x7e0000 0x10000>;
-			};
-
-			radio: partition@7f0000 {
-				label = "radio";
-				reg = <0x7f0000 0x10000>;
-			};
-		};
-	};
 };
 
 &pinctrl {
@@ -133,37 +50,3 @@
 		};
 	};
 };
-
-&ethernet {
-		pinctrl-names = "default";
-		mtd-mac-address = <&rom 0xf100>;
-		mediatek,portmap = "wllll";
-	};
-
-&ehci {
-	status = "okay";
-};
-
-&ohci {
-	status = "okay";
-};
-
-&gsw {
-	mediatek,port4 = "ephy";
-};
-
-&wmac {
-	ralink,mtd-eeprom = <&radio 0x0>;
-};
-
-&pcie {
-	status = "okay";
-};
-
-&pcie0 {
-	mt76@0,0 {
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&radio 0x8000>;
-		ieee80211-freq-limit = <5000000 6000000>;
-	};
-};
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts b/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
index e53e98e32b..77885853ef 100644
--- a/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer-c50-v1.dts
@@ -1,9 +1,6 @@
 /dts-v1/;
 
-#include "mt7620a.dtsi"
-
-#include <dt-bindings/input/input.h>
-#include <dt-bindings/gpio/gpio.h>
+#include "mt7620a_tplink_archer.dtsi"
 
 / {
 	compatible = "tplink,archer-c50-v1", "ralink,mt7620a-soc";
@@ -16,10 +13,6 @@
 		led-upgrade = &led_power;
 	};
 
-	chosen {
-		bootargs = "console=ttyS0,115200";
-	};
-
 	leds {
 		compatible = "gpio-leds";
 
@@ -66,86 +59,6 @@
 			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
 		};
 	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		reset {
-			label = "reset";
-			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-
-		rfkill {
-			label = "rfkill";
-			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RFKILL>;
-		};
-	};
-};
-
-&gpio1 {
-	status = "okay";
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
-&spi0 {
-	status = "okay";
-
-	m25p80@0 {
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
-				reg = <0x0 0x20000>;
-				read-only;
-			};
-
-			partition@20000 {
-				compatible = "tplink,firmware";
-				label = "firmware";
-				reg = <0x20000 0x7a0000>;
-			};
-
-			partition@7c0000 {
-				label = "config";
-				reg = <0x7c0000 0x10000>;
-				read-only;
-			};
-
-			rom: partition@7d0000 {
-				label = "rom";
-				reg = <0x7d0000 0x10000>;
-				read-only;
-			};
-
-			partition@7e0000 {
-				label = "romfile";
-				reg = <0x7e0000 0x10000>;
-				read-only;
-			};
-
-			radio: partition@7f0000 {
-				label = "radio";
-				reg = <0x7f0000 0x10000>;
-				read-only;
-			};
-		};
-	};
 };
 
 &pinctrl {
@@ -157,42 +70,15 @@
 	};
 };
 
-&ethernet {
-		pinctrl-names = "default";
-		mtd-mac-address = <&rom 0xf100>;
-		mediatek,portmap = "wllll";
-	};
-
-&ehci {
-	status = "okay";
-};
-
-&ohci {
-	status = "okay";
-};
-
-&gsw {
-	mediatek,port4 = "ephy";
-};
-
 &wmac {
-	ralink,mtd-eeprom = <&radio 0x0>;
-	mtd-mac-address = <&rom 0xf100>;
-	mtd-mac-address-increment = <(-2)>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pa_pins>;
-};
 
-&pcie {
-	status = "okay";
+	mtd-mac-address = <&rom 0xf100>;
+	mtd-mac-address-increment = <(-2)>;
 };
 
-&pcie0 {
-	mt76@0,0 {
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&radio 0x8000>;
-		ieee80211-freq-limit = <5000000 6000000>;
-		mtd-mac-address = <&rom 0xf100>;
-		mtd-mac-address-increment = <(-1)>;
-	};
+&wifi {
+	mtd-mac-address = <&rom 0xf100>;
+	mtd-mac-address-increment = <(-1)>;
 };
diff --git a/target/linux/ramips/dts/mt7620a_tplink_archer.dtsi b/target/linux/ramips/dts/mt7620a_tplink_archer.dtsi
new file mode 100644
index 0000000000..dd213ad219
--- /dev/null
+++ b/target/linux/ramips/dts/mt7620a_tplink_archer.dtsi
@@ -0,0 +1,124 @@
+#include "mt7620a.dtsi"
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	chosen {
+		bootargs = "console=ttyS0,115200";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		rfkill {
+			label = "rfkill";
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RFKILL>;
+		};
+	};
+};
+
+&gpio1 {
+	status = "okay";
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
+&spi0 {
+	status = "okay";
+
+	m25p80@0 {
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
+				reg = <0x0 0x20000>;
+				read-only;
+			};
+
+			partition@20000 {
+				compatible = "tplink,firmware";
+				label = "firmware";
+				reg = <0x20000 0x7a0000>;
+			};
+
+			partition@7c0000 {
+				label = "config";
+				reg = <0x7c0000 0x10000>;
+				read-only;
+			};
+
+			rom: partition@7d0000 {
+				label = "rom";
+				reg = <0x7d0000 0x10000>;
+				read-only;
+			};
+
+			partition@7e0000 {
+				label = "romfile";
+				reg = <0x7e0000 0x10000>;
+				read-only;
+			};
+
+			radio: partition@7f0000 {
+				label = "radio";
+				reg = <0x7f0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&ethernet {
+	pinctrl-names = "default";
+	mtd-mac-address = <&rom 0xf100>;
+	mediatek,portmap = "wllll";
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
+&gsw {
+	mediatek,port4 = "ephy";
+};
+
+&wmac {
+	ralink,mtd-eeprom = <&radio 0x0>;
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi: mt76@0,0 {
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&radio 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+	};
+};
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
