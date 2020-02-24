Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F91716A5BB
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Feb 2020 13:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PDKQASKpoF8TKyGv4+/eO/IxgRU4tTE42aejkimhknY=; b=nZXSuc9lgEJsP+
	LevlEQ3MINGlQvB1XGbmms9ufY+5kFerjaOYOG5L2hQbBsVrmy15lq1Mqjp1W2uE5upgjeHtoa8Mv
	d5TU/zjJoAhgGv0NsjM03Q/fJ1HRX/1KoNSd00pjrmoE/ccb6XMCW3lHwbeJTBc5jBOq+IVLIS5RY
	rzNmATsAyOb8ricNWMWa7YeTLMbE4I3hX/K+fZlmX85sXr2AUOgmQ+IUsQQPzDC6vqSd6cGvVK1kV
	jPlYqhcXfVZsTUeklEuwvdYP5nqFxtBFEQxUIXf82F+I9GbjlKkIsWYyDq9LsfeukKicc4oTUogWA
	UWs50RieW+G4wXqW/+KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CWY-0003RF-Sf; Mon, 24 Feb 2020 12:07:46 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CWL-0003QK-12
 for openwrt-devel@lists.openwrt.org; Mon, 24 Feb 2020 12:07:41 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1582546056;
 h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=hx6YnZQ5m0U89KA72faKaaTd5BHCGvG9vUWu46FyHyE=;
 b=PsStcgFkgKdfZL7uI+VqGqjNtBsFw6pbQKtQ/smna3TGY/0UicBmAeGHMb6Kx0efu2OpxOEL
 Dt9ktg41SGNgapja9QddA+VEj/RRgw+/EmWMA0rqvyid6aUHxpyLwjMdBVsni4gOtENXmL+R
 hL6Lg3nTteq+rDLB8NQHcMzJV/U=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from ms-arch.lan (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5e53bc7e.7f6e35a4b540-smtp-out-n01;
 Mon, 24 Feb 2020 12:07:26 -0000 (UTC)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 24 Feb 2020 21:06:04 +0900
Message-Id: <20200224120605.152672-1-mans0n@gorani.run>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_040736_672143_B16986FB 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.61.254.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] kirkwood: convert DTS patches into plain
 DTS files
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Move DTS files newly created by patch files to files directory. This will make
these files much more maintainable.

Patching the kernel Makefile is unnecessary, as the DTS files specified in
DEVICE_DTS will be compiled by OpenWrt buildroot anyway.

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 .../arch/arm/boot/dts/kirkwood-goflexhome.dts | 124 ++++++++
 .../arm/boot/dts/kirkwood-linksys-audi.dts    | 250 +++++++++++++++++
 .../arch/arm/boot/dts/kirkwood-nsa310b.dts    | 132 +++++++++
 .../arch/arm/boot/dts/kirkwood-on100.dts      | 165 +++++++++++
 .../arch/arm/boot/dts/kirkwood-goflexhome.dts | 124 ++++++++
 .../arm/boot/dts/kirkwood-linksys-audi.dts    | 251 +++++++++++++++++
 .../arch/arm/boot/dts/kirkwood-nsa310b.dts    | 132 +++++++++
 .../arch/arm/boot/dts/kirkwood-on100.dts      | 163 +++++++++++
 .../kirkwood/patches-4.14/104-ea3500.patch    | 263 -----------------
 .../patches-4.14/105-goflexhome.patch         | 137 ---------
 .../patches-4.14/107-02-nsa310b.patch         | 155 ----------
 .../kirkwood/patches-4.14/108-on100.patch     | 178 ------------
 .../kirkwood/patches-4.19/104-ea3500.patch    | 264 ------------------
 .../patches-4.19/105-goflexhome.patch         | 137 ---------
 .../patches-4.19/107-02-nsa310b.patch         | 155 ----------
 .../kirkwood/patches-4.19/108-on100.patch     | 176 ------------
 16 files changed, 1341 insertions(+), 1465 deletions(-)
 create mode 100644 target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-goflexhome.dts
 create mode 100644 target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-linksys-audi.dts
 create mode 100644 target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-nsa310b.dts
 create mode 100644 target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-on100.dts
 create mode 100644 target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-goflexhome.dts
 create mode 100644 target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts
 create mode 100644 target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-nsa310b.dts
 create mode 100644 target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-on100.dts
 delete mode 100644 target/linux/kirkwood/patches-4.14/104-ea3500.patch
 delete mode 100644 target/linux/kirkwood/patches-4.14/105-goflexhome.patch
 delete mode 100644 target/linux/kirkwood/patches-4.14/107-02-nsa310b.patch
 delete mode 100644 target/linux/kirkwood/patches-4.14/108-on100.patch
 delete mode 100644 target/linux/kirkwood/patches-4.19/104-ea3500.patch
 delete mode 100644 target/linux/kirkwood/patches-4.19/105-goflexhome.patch
 delete mode 100644 target/linux/kirkwood/patches-4.19/107-02-nsa310b.patch
 delete mode 100644 target/linux/kirkwood/patches-4.19/108-on100.patch

diff --git a/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-goflexhome.dts b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-goflexhome.dts
new file mode 100644
index 0000000000..af20cf9e2c
--- /dev/null
+++ b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-goflexhome.dts
@@ -0,0 +1,124 @@
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6281.dtsi"
+
+/ {
+	model = "Seagate GoFlex Home";
+	compatible = "seagate,goflexhome", "marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+	aliases {
+		led-boot = &led_health;
+		led-failsafe = &led_fault;
+		led-running = &led_health;
+		led-upgrade = &led_fault;
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x8000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 earlyprintk root=/dev/sda1 rootdelay=10";
+		stdout-path = &uart0;
+	};
+
+	ocp@f1000000 {
+		pinctrl: pin-controller@10000 {
+			pmx_usb_power_enable: pmx-usb-power-enable {
+				marvell,pins = "mpp29";
+				marvell,function = "gpio";
+			};
+			pmx_led_white: pmx-led-white {
+				marvell,pins = "mpp40";
+				marvell,function = "gpio";
+			};
+			pmx_led_green: pmx-led_green {
+				marvell,pins = "mpp46";
+				marvell,function = "gpio";
+			};
+			pmx_led_orange: pmx-led-orange {
+				marvell,pins = "mpp47";
+				marvell,function = "gpio";
+			};
+		};
+		serial@12000 {
+			status = "ok";
+		};
+
+		sata@80000 {
+			status = "okay";
+			nr-ports = <2>;
+		};
+
+	};
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_health: health {
+			label = "status:green:health";
+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+		led_fault: fault {
+			label = "status:orange:fault";
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+		};
+		misc {
+			label = "status:white:misc";
+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "disk-activity";
+		};
+	};
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = <&pmx_usb_power_enable>;
+		pinctrl-names = "default";
+
+		usb_power: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "USB Power";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&gpio0 29 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&nand {
+	chip-delay = <40>;
+	status = "okay";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x0000000 0x100000>;
+		read-only;
+	};
+
+	partition@100000 {
+		label = "ubi";
+		reg = <0x100000 0x0ff00000>;
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+	ethernet0-port@0 {
+		phy-handle = <&ethphy0>;
+	};
+};
diff --git a/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-linksys-audi.dts b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-linksys-audi.dts
new file mode 100644
index 0000000000..004ce10219
--- /dev/null
+++ b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-linksys-audi.dts
@@ -0,0 +1,250 @@
+/*
+ * kirkwood-linksys-audi.dts - Device Tree file for Linksys EA3500
+ *
+ * (c) 2013 Jonas Gorski <jogo@openwrt.org>
+ * (c) 2013 Deutsche Telekom Innovation Laboratories
+ * (c) 2014 Luka Perkov <luka@openwrt.org>
+ * (c) 2014 Dan Walters <dan@walters.io>
+ *
+ * This file is licensed under the terms of the GNU General Public
+ * License version 2.  This program is licensed "as is" without any
+ * warranty of any kind, whether express or implied.
+ */
+
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6282.dtsi"
+
+/ {
+	model = "Linksys Audi (EA3500)";
+	compatible = "linksys,audi", "marvell,kirkwood-88f6282", "marvell,kirkwood";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x4000000>;
+	};
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = < &pmx_btn_wps &pmx_btn_reset >;
+		pinctrl-names = "default";
+
+		wps {
+			label = "WPS Button";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+		};
+
+		reset {
+			label = "Reset Button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = < &pmx_led_green_power >;
+		pinctrl-names = "default";
+
+		led_power: power {
+			label = "audi:green:power";
+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+	};
+
+	mvsw61xx {
+		compatible = "marvell,88e6171";
+		status = "okay";
+		reg = <0x10>;
+
+		mii-bus = <&mdio>;
+		cpu-port-0 = <5>;
+		cpu-port-1 = <6>;
+		is-indirect;
+	};
+
+	dsa {
+		compatible = "marvell,dsa";
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		dsa,ethernet = <&eth0port>;
+		dsa,mii-bus = <&mdio>;
+
+		switch@16,0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <16 0>;	/* MDIO address 16, switch 0 in tree */
+
+			port@0 {
+				reg = <0>;
+				label = "ethernet1";
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "ethernet2";
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "ethernet3";
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "ethernet4";
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "internet";
+			};
+
+			port@5 {
+				reg = <5>;
+				label = "cpu";
+			};
+		};
+	};
+};
+
+&pinctrl {
+	pmx_led_green_power: pmx-led-green-power {
+		marvell,pins = "mpp7";
+		marvell,function = "gpo";
+	};
+	pmx_btn_wps: pmx-btn-wps {
+		marvell,pins = "mpp47";
+		marvell,function = "gpio";
+	};
+	pmx_btn_reset: pmx-btn-reset {
+		marvell,pins = "mpp48";
+		marvell,function = "gpio";
+	};
+};
+
+&nand {
+	status = "okay";
+	pinctrl-0 = <&pmx_nand>;
+	pinctrl-names = "default";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "u-boot";
+			reg = <0x0 0x80000>;
+			read-only;
+		};
+
+		partition@80000 {
+			label = "u_env";
+			reg = <0x80000 0x4000>;
+		};
+
+		partition@84000 {
+			label = "s_env";
+			reg = <0x84000 0x4000>;
+		};
+
+		partition@200000 {
+			label = "kernel1";
+			reg = <0x200000 0x290000>;
+		};
+
+		partition@490000 {
+			label = "rootfs1";
+			reg = <0x490000 0x1170000>;
+		};
+
+		partition@1600000 {
+			label = "kernel2";
+			reg = <0x1600000 0x290000>;
+		};
+
+		partition@1890000 {
+			label = "rootfs2";
+			reg = <0x1890000 0x1170000>;
+		};
+
+		partition@2a00000 {
+			label = "syscfg";
+			reg = <0x2a00000  0x1600000>;
+		};
+
+		partition@88000 {
+			label = "unused";
+			reg = <0x88000 0x178000>;
+		};
+
+	};
+};
+
+&pciec {
+	status = "okay";
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&pcie1 {
+	status = "okay";
+};
+
+&mdio {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+/* eth0 is connected to a Marvell 88E6171 switch, without a PHY. So set
+ * fixed speed and duplex.
+ */
+&eth0 {
+	status = "okay";
+	ethernet0-port@0 {
+		speed = <1000>;
+		duplex = <1>;
+	};
+};
+
+/* eth1 is connected to the switch at port 6. However DSA only supports a
+ * single CPU port. Upstream uses DSA so they disable this port to avoid confusion.
+ */
+&eth1 {
+	status = "okay";
+	ethernet1-port@0 {
+		speed = <1000>;
+		duplex = <1>;
+	};
+};
+
+/* There is no battery on the board, so the RTC does not keep
+ * time when there is no power, making it useless.
+ */
+&rtc {
+	status = "disabled";
+};
diff --git a/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-nsa310b.dts b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-nsa310b.dts
new file mode 100644
index 0000000000..a83a55af07
--- /dev/null
+++ b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-nsa310b.dts
@@ -0,0 +1,132 @@
+/dts-v1/;
+
+#include "kirkwood-nsa3x0-common.dtsi"
+
+/*
+ * There are at least two different NSA310 designs. This variant has
+ * a red/green USB Led (same as nsa310) and a lm85 temp/fan controller.
+ */
+
+/ {
+	model = "ZyXEL NSA310b";
+	compatible = "zyxel,nsa310b", "zyxel,nsa310", "marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+	aliases {
+		led-boot = &led_green_sys;
+		led-failsafe = &led_red_sys;
+		led-running = &led_green_sys;
+		led-upgrade = &led_red_sys;
+	};
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x10000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200";
+		stdout-path = &uart0;
+	};
+
+	ocp@f1000000 {
+		pinctrl: pin-controller@10000 {
+			pinctrl-names = "default";
+
+			pmx_led_esata_green: pmx-led-esata-green {
+				marvell,pins = "mpp12";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_esata_red: pmx-led-esata-red {
+				marvell,pins = "mpp13";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_usb_green: pmx-led-usb-green {
+				marvell,pins = "mpp15";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_usb_red: pmx-led-usb-red {
+				marvell,pins = "mpp16";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_sys_green: pmx-led-sys-green {
+				marvell,pins = "mpp28";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_sys_red: pmx-led-sys-red {
+				marvell,pins = "mpp29";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_hdd_green: pmx-led-hdd-green {
+				marvell,pins = "mpp41";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_hdd_red: pmx-led-hdd-red {
+				marvell,pins = "mpp42";
+				marvell,function = "gpio";
+			};
+
+		};
+
+		i2c@11000 {
+			status = "okay";
+
+			lm85: lm85@2e {
+				compatible = "national,lm85";
+				reg = <0x2e>;
+			};
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_green_sys: green-sys {
+			label = "nsa310:green:sys";
+			gpios = <&gpio0 28 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+		led_red_sys: red-sys {
+			label = "nsa310:red:sys";
+			gpios = <&gpio0 29 GPIO_ACTIVE_HIGH>;
+		};
+		green-hdd {
+			label = "nsa310:green:hdd";
+			gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+		};
+		red-hdd {
+			label = "nsa310:red:hdd";
+			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		};
+		green-esata {
+			label = "nsa310:green:esata";
+			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
+		};
+		red-esata {
+			label = "nsa310:red:esata";
+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
+		};
+		green-usb {
+			label = "nsa310:green:usb";
+			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
+		};
+		red-usb {
+			label = "nsa310:red:usb";
+			gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
+		};
+		green-copy {
+			label = "nsa310:green:copy";
+			gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		};
+		red-copy {
+			label = "nsa310:red:copy";
+			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
diff --git a/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-on100.dts b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-on100.dts
new file mode 100644
index 0000000000..9296c3fc71
--- /dev/null
+++ b/target/linux/kirkwood/files-4.14/arch/arm/boot/dts/kirkwood-on100.dts
@@ -0,0 +1,165 @@
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6282.dtsi"
+
+/ {
+	model = "Cisco Systems ON100";
+	compatible = "cisco,on100", "marvell,kirkwood-88f6282", "marvell,kirkwood";
+
+	memory {
+		device_type = "memory";
+		reg = <0x00000000 0x20000000>;
+	};
+
+	aliases {
+		led-boot = &led_health_green;
+		led-failsafe = &led_health_red;
+		led-running = &led_health_green;
+		led-upgrade = &led_health_red;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 earlyprintk";
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = <&pmx_btn_reset>;
+		pinctrl-names = "default";
+
+		button@1 {
+			label = "Reset Button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = < &pmx_led_health_r &pmx_led_health_g >;
+		pinctrl-names = "default";
+
+		led_health_green: health_green {
+			label = "on100:green:health";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		led_health_red: health_red {
+			label = "on100:red:health";
+			gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+		};
+
+		health2_green {
+			label = "on100:green:health2";
+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+		};
+
+		health2_red {
+			label = "on100:red:health2";
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	ethernet0-port@0 {
+		phy-handle = <&ethphy0>;
+		phy-connection-type = "rgmii-id";
+	};
+};
+
+&eth1 {
+	status = "okay";
+
+	ethernet1-port@0 {
+		phy-handle = <&ethphy1>;
+		phy-connection-type = "rgmii-id";
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy0: ethernet-phy@0 {
+		/* Marvell 88E1121R */
+		compatible = "ethernet-phy-id0141.0cb0",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+
+	ethphy1: ethernet-phy@1 {
+		/* Marvell 88E1121R */
+		compatible = "ethernet-phy-id0141.0cb0",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
+
+&nand {
+	status = "okay";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x00000000 0x000a0000>;
+		read-only;
+	};
+
+	partition@a0000 {
+		label = "u-boot environment";
+		reg = <0x000a0000 0x00020000>;
+		read-only;
+	};
+
+	partition@c0000 {
+		label = "kernel";
+		reg = <0x000c0000 0x00540000>;
+	};
+
+	partition@600000 {
+		label = "ubi";
+		reg = <0x00600000 0x1fa00000>;
+	};
+};
+
+&pinctrl {
+	pmx_led_health_r: pmx-led-health-r {
+		marvell,pins = "mpp45";
+		marvell,function = "gpio";
+	};
+
+	pmx_led_health_g: pmx-led-health-g {
+		marvell,pins = "mpp44";
+		marvell,function = "gpio";
+	};
+
+	pmx_led_health2_r: pmx-led-health2-r {
+		marvell,pins = "mpp47";
+		marvell,function = "gpio";
+	};
+
+	pmx_led_health2_g: pmx-led-health2-g {
+		marvell,pins = "mpp46";
+		marvell,function = "gpio";
+	};
+
+	pmx_btn_reset: pmx-led-reset {
+		marvell,pins = "mpp31";
+		marvell,function = "gpio";
+	};
+};
+
+&sdio {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-goflexhome.dts b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-goflexhome.dts
new file mode 100644
index 0000000000..6cb6f7249e
--- /dev/null
+++ b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-goflexhome.dts
@@ -0,0 +1,124 @@
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6281.dtsi"
+
+/ {
+	model = "Seagate GoFlex Home";
+	compatible = "seagate,goflexhome", "marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+	aliases {
+		led-boot = &led_health;
+		led-failsafe = &led_fault;
+		led-running = &led_health;
+		led-upgrade = &led_fault;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x8000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 earlyprintk root=/dev/sda1 rootdelay=10";
+		stdout-path = &uart0;
+	};
+
+	ocp@f1000000 {
+		pinctrl: pin-controller@10000 {
+			pmx_usb_power_enable: pmx-usb-power-enable {
+				marvell,pins = "mpp29";
+				marvell,function = "gpio";
+			};
+			pmx_led_white: pmx-led-white {
+				marvell,pins = "mpp40";
+				marvell,function = "gpio";
+			};
+			pmx_led_green: pmx-led_green {
+				marvell,pins = "mpp46";
+				marvell,function = "gpio";
+			};
+			pmx_led_orange: pmx-led-orange {
+				marvell,pins = "mpp47";
+				marvell,function = "gpio";
+			};
+		};
+		serial@12000 {
+			status = "ok";
+		};
+
+		sata@80000 {
+			status = "okay";
+			nr-ports = <2>;
+		};
+
+	};
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_health: health {
+			label = "status:green:health";
+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+		led_fault: fault {
+			label = "status:orange:fault";
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+		};
+		misc {
+			label = "status:white:misc";
+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "disk-activity";
+		};
+	};
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		pinctrl-0 = <&pmx_usb_power_enable>;
+		pinctrl-names = "default";
+
+		usb_power: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "USB Power";
+			regulator-min-microvolt = <5000000>;
+			regulator-max-microvolt = <5000000>;
+			enable-active-high;
+			regulator-always-on;
+			regulator-boot-on;
+			gpio = <&gpio0 29 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&nand {
+	chip-delay = <40>;
+	status = "okay";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x0000000 0x100000>;
+		read-only;
+	};
+
+	partition@100000 {
+		label = "ubi";
+		reg = <0x100000 0x0ff00000>;
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy0: ethernet-phy@0 {
+		reg = <0>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+	ethernet0-port@0 {
+		phy-handle = <&ethphy0>;
+	};
+};
diff --git a/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts
new file mode 100644
index 0000000000..ac9db1949c
--- /dev/null
+++ b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-linksys-audi.dts
@@ -0,0 +1,251 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * kirkwood-linksys-audi.dts - Device Tree file for Linksys EA3500
+ *
+ * (c) 2013 Jonas Gorski <jogo@openwrt.org>
+ * (c) 2013 Deutsche Telekom Innovation Laboratories
+ * (c) 2014 Luka Perkov <luka@openwrt.org>
+ * (c) 2014 Dan Walters <dan@walters.io>
+ *
+ */
+
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6282.dtsi"
+
+/ {
+	model = "Linksys Audi (EA3500)";
+	compatible = "linksys,audi", "marvell,kirkwood-88f6282", "marvell,kirkwood";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x4000000>;
+	};
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = < &pmx_btn_wps &pmx_btn_reset >;
+		pinctrl-names = "default";
+
+		wps {
+			label = "WPS Button";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+		};
+
+		reset {
+			label = "Reset Button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = < &pmx_led_green_power >;
+		pinctrl-names = "default";
+
+		led_power: power {
+			label = "audi:green:power";
+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+	};
+
+	switches {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		mvsw61xx@10 {
+			compatible = "marvell,88e6171";
+			status = "okay";
+			reg = <0x10>;
+
+			mii-bus = <&mdio>;
+			cpu-port-0 = <5>;
+			cpu-port-1 = <6>;
+			is-indirect;
+		};
+	};
+
+	dsa {
+		compatible = "marvell,dsa";
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		dsa,ethernet = <&eth0port>;
+		dsa,mii-bus = <&mdio>;
+
+		switch@16,0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <16 0>;	/* MDIO address 16, switch 0 in tree */
+
+			port@0 {
+				reg = <0>;
+				label = "ethernet1";
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "ethernet2";
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "ethernet3";
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "ethernet4";
+			};
+
+			port@4 {
+				reg = <4>;
+				label = "internet";
+			};
+
+			port@5 {
+				reg = <5>;
+				label = "cpu";
+			};
+		};
+	};
+};
+
+&pinctrl {
+	pmx_led_green_power: pmx-led-green-power {
+		marvell,pins = "mpp7";
+		marvell,function = "gpo";
+	};
+	pmx_btn_wps: pmx-btn-wps {
+		marvell,pins = "mpp47";
+		marvell,function = "gpio";
+	};
+	pmx_btn_reset: pmx-btn-reset {
+		marvell,pins = "mpp48";
+		marvell,function = "gpio";
+	};
+};
+
+&nand {
+	status = "okay";
+	pinctrl-0 = <&pmx_nand>;
+	pinctrl-names = "default";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "u-boot";
+			reg = <0x0 0x80000>;
+			read-only;
+		};
+
+		partition@80000 {
+			label = "u_env";
+			reg = <0x80000 0x4000>;
+		};
+
+		partition@84000 {
+			label = "s_env";
+			reg = <0x84000 0x4000>;
+		};
+
+		partition@200000 {
+			label = "kernel1";
+			reg = <0x200000 0x290000>;
+		};
+
+		partition@490000 {
+			label = "rootfs1";
+			reg = <0x490000 0x1170000>;
+		};
+
+		partition@1600000 {
+			label = "kernel2";
+			reg = <0x1600000 0x290000>;
+		};
+
+		partition@1890000 {
+			label = "rootfs2";
+			reg = <0x1890000 0x1170000>;
+		};
+
+		partition@2a00000 {
+			label = "syscfg";
+			reg = <0x2a00000  0x1600000>;
+		};
+
+		partition@88000 {
+			label = "unused";
+			reg = <0x88000 0x178000>;
+		};
+
+	};
+};
+
+&pciec {
+	status = "okay";
+};
+
+&pcie0 {
+	status = "okay";
+};
+
+&pcie1 {
+	status = "okay";
+};
+
+&mdio {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+/* eth0 is connected to a Marvell 88E6171 switch, without a PHY. So set
+ * fixed speed and duplex.
+ */
+&eth0 {
+	status = "okay";
+	ethernet0-port@0 {
+		speed = <1000>;
+		duplex = <1>;
+	};
+};
+
+/* eth1 is connected to the switch at port 6. However DSA only supports a
+ * single CPU port. Upstream uses DSA so they disable this port to avoid confusion.
+ */
+&eth1 {
+	status = "okay";
+	ethernet1-port@0 {
+		speed = <1000>;
+		duplex = <1>;
+	};
+};
+
+/* There is no battery on the board, so the RTC does not keep
+ * time when there is no power, making it useless.
+ */
+&rtc {
+	status = "disabled";
+};
diff --git a/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-nsa310b.dts b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-nsa310b.dts
new file mode 100644
index 0000000000..b06848576a
--- /dev/null
+++ b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-nsa310b.dts
@@ -0,0 +1,132 @@
+/dts-v1/;
+
+#include "kirkwood-nsa3x0-common.dtsi"
+
+/*
+ * There are at least two different NSA310 designs. This variant has
+ * a red/green USB Led (same as nsa310) and a lm85 temp/fan controller.
+ */
+
+/ {
+	model = "ZyXEL NSA310b";
+	compatible = "zyxel,nsa310b", "zyxel,nsa310", "marvell,kirkwood-88f6281", "marvell,kirkwood";
+
+	aliases {
+		led-boot = &led_green_sys;
+		led-failsafe = &led_red_sys;
+		led-running = &led_green_sys;
+		led-upgrade = &led_red_sys;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x10000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200";
+		stdout-path = &uart0;
+	};
+
+	ocp@f1000000 {
+		pinctrl: pin-controller@10000 {
+			pinctrl-names = "default";
+
+			pmx_led_esata_green: pmx-led-esata-green {
+				marvell,pins = "mpp12";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_esata_red: pmx-led-esata-red {
+				marvell,pins = "mpp13";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_usb_green: pmx-led-usb-green {
+				marvell,pins = "mpp15";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_usb_red: pmx-led-usb-red {
+				marvell,pins = "mpp16";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_sys_green: pmx-led-sys-green {
+				marvell,pins = "mpp28";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_sys_red: pmx-led-sys-red {
+				marvell,pins = "mpp29";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_hdd_green: pmx-led-hdd-green {
+				marvell,pins = "mpp41";
+				marvell,function = "gpio";
+			};
+
+			pmx_led_hdd_red: pmx-led-hdd-red {
+				marvell,pins = "mpp42";
+				marvell,function = "gpio";
+			};
+
+		};
+
+		i2c@11000 {
+			status = "okay";
+
+			lm85: lm85@2e {
+				compatible = "national,lm85";
+				reg = <0x2e>;
+			};
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_green_sys: green-sys {
+			label = "nsa310:green:sys";
+			gpios = <&gpio0 28 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+		led_red_sys: red-sys {
+			label = "nsa310:red:sys";
+			gpios = <&gpio0 29 GPIO_ACTIVE_HIGH>;
+		};
+		green-hdd {
+			label = "nsa310:green:hdd";
+			gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
+		};
+		red-hdd {
+			label = "nsa310:red:hdd";
+			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		};
+		green-esata {
+			label = "nsa310:green:esata";
+			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
+		};
+		red-esata {
+			label = "nsa310:red:esata";
+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
+		};
+		green-usb {
+			label = "nsa310:green:usb";
+			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
+		};
+		red-usb {
+			label = "nsa310:red:usb";
+			gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
+		};
+		green-copy {
+			label = "nsa310:green:copy";
+			gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		};
+		red-copy {
+			label = "nsa310:red:copy";
+			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
diff --git a/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-on100.dts b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-on100.dts
new file mode 100644
index 0000000000..6d45814050
--- /dev/null
+++ b/target/linux/kirkwood/files-4.19/arch/arm/boot/dts/kirkwood-on100.dts
@@ -0,0 +1,163 @@
+/dts-v1/;
+
+#include "kirkwood.dtsi"
+#include "kirkwood-6282.dtsi"
+
+/ {
+	model = "Cisco Systems ON100";
+	compatible = "cisco,on100", "marvell,kirkwood-88f6282", "marvell,kirkwood";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x20000000>;
+	};
+
+	aliases {
+		led-boot = &led_health_green;
+		led-failsafe = &led_health_red;
+		led-running = &led_health_green;
+		led-upgrade = &led_health_red;
+		serial0 = &uart0;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,115200n8 earlyprintk";
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+		pinctrl-0 = <&pmx_btn_reset>;
+		pinctrl-names = "default";
+
+		reset {
+			label = "Reset Button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = < &pmx_led_health_r &pmx_led_health_g >;
+		pinctrl-names = "default";
+
+		led_health_green: health_green {
+			label = "on100:green:health";
+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
+			default-state = "on";
+		};
+
+		led_health_red: health_red {
+			label = "on100:red:health";
+			gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
+		};
+
+		health2_green {
+			label = "on100:green:health2";
+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
+		};
+
+		health2_red {
+			label = "on100:red:health2";
+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&eth0 {
+	status = "okay";
+
+	ethernet0-port@0 {
+		phy-handle = <&ethphy0>;
+		phy-connection-type = "rgmii-id";
+	};
+};
+
+&eth1 {
+	status = "okay";
+
+	ethernet1-port@0 {
+		phy-handle = <&ethphy1>;
+		phy-connection-type = "rgmii-id";
+	};
+};
+
+&mdio {
+	status = "okay";
+
+	ethphy0: ethernet-phy@0 {
+		/* Marvell 88E1121R */
+		compatible = "ethernet-phy-id0141.0cb0",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+
+	ethphy1: ethernet-phy@1 {
+		/* Marvell 88E1121R */
+		compatible = "ethernet-phy-id0141.0cb0",
+			     "ethernet-phy-ieee802.3-c22";
+		reg = <1>;
+	};
+};
+
+&nand {
+	status = "okay";
+
+	partition@0 {
+		label = "u-boot";
+		reg = <0x00000000 0x000a0000>;
+		read-only;
+	};
+
+	partition@a0000 {
+		label = "u-boot environment";
+		reg = <0x000a0000 0x00020000>;
+		read-only;
+	};
+
+	partition@c0000 {
+		label = "kernel";
+		reg = <0x000c0000 0x00540000>;
+	};
+
+	partition@600000 {
+		label = "ubi";
+		reg = <0x00600000 0x1fa00000>;
+	};
+};
+
+&pinctrl {
+	pmx_led_health_r: pmx-led-health-r {
+		marvell,pins = "mpp45";
+		marvell,function = "gpio";
+	};
+
+	pmx_led_health_g: pmx-led-health-g {
+		marvell,pins = "mpp44";
+		marvell,function = "gpio";
+	};
+
+	pmx_led_health2_r: pmx-led-health2-r {
+		marvell,pins = "mpp47";
+		marvell,function = "gpio";
+	};
+
+	pmx_led_health2_g: pmx-led-health2-g {
+		marvell,pins = "mpp46";
+		marvell,function = "gpio";
+	};
+
+	pmx_btn_reset: pmx-led-reset {
+		marvell,pins = "mpp31";
+		marvell,function = "gpio";
+	};
+};
+
+&sdio {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/target/linux/kirkwood/patches-4.14/104-ea3500.patch b/target/linux/kirkwood/patches-4.14/104-ea3500.patch
deleted file mode 100644
index 851875c645..0000000000
--- a/target/linux/kirkwood/patches-4.14/104-ea3500.patch
+++ /dev/null
@@ -1,263 +0,0 @@
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -250,6 +250,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-linkstation-lswsxl.dtb \
- 	kirkwood-linkstation-lswvl.dtb \
- 	kirkwood-linkstation-lswxl.dtb \
-+	kirkwood-linksys-audi.dtb \
- 	kirkwood-linksys-viper.dtb \
- 	kirkwood-lschlv2.dtb \
- 	kirkwood-lsxhl.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-linksys-audi.dts
-@@ -0,0 +1,250 @@
-+/*
-+ * kirkwood-linksys-audi.dts - Device Tree file for Linksys EA3500
-+ *
-+ * (c) 2013 Jonas Gorski <jogo@openwrt.org>
-+ * (c) 2013 Deutsche Telekom Innovation Laboratories
-+ * (c) 2014 Luka Perkov <luka@openwrt.org>
-+ * (c) 2014 Dan Walters <dan@walters.io>
-+ *
-+ * This file is licensed under the terms of the GNU General Public
-+ * License version 2.  This program is licensed "as is" without any
-+ * warranty of any kind, whether express or implied.
-+ */
-+
-+/dts-v1/;
-+
-+#include "kirkwood.dtsi"
-+#include "kirkwood-6282.dtsi"
-+
-+/ {
-+	model = "Linksys Audi (EA3500)";
-+	compatible = "linksys,audi", "marvell,kirkwood-88f6282", "marvell,kirkwood";
-+
-+	memory {
-+		device_type = "memory";
-+		reg = <0x00000000 0x4000000>;
-+	};
-+
-+	aliases {
-+		led-boot = &led_power;
-+		led-failsafe = &led_power;
-+		led-running = &led_power;
-+		led-upgrade = &led_power;
-+		serial0 = &uart0;
-+	};
-+
-+	chosen {
-+		stdout-path = "serial0:115200n8";
-+	};
-+
-+	gpio_keys {
-+		compatible = "gpio-keys";
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+		pinctrl-0 = < &pmx_btn_wps &pmx_btn_reset >;
-+		pinctrl-names = "default";
-+
-+		wps {
-+			label = "WPS Button";
-+			linux,code = <KEY_WPS_BUTTON>;
-+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
-+		};
-+
-+		reset {
-+			label = "Reset Button";
-+			linux,code = <KEY_RESTART>;
-+			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
-+		};
-+	};
-+
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+		pinctrl-0 = < &pmx_led_green_power >;
-+		pinctrl-names = "default";
-+
-+		led_power: power {
-+			label = "audi:green:power";
-+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-+			default-state = "on";
-+		};
-+	};
-+
-+	mvsw61xx {
-+		compatible = "marvell,88e6171";
-+		status = "okay";
-+		reg = <0x10>;
-+
-+		mii-bus = <&mdio>;
-+		cpu-port-0 = <5>;
-+		cpu-port-1 = <6>;
-+		is-indirect;
-+	};
-+
-+	dsa {
-+		compatible = "marvell,dsa";
-+		#address-cells = <2>;
-+		#size-cells = <0>;
-+
-+		dsa,ethernet = <&eth0port>;
-+		dsa,mii-bus = <&mdio>;
-+
-+		switch@16,0 {
-+			#address-cells = <1>;
-+			#size-cells = <0>;
-+			reg = <16 0>;	/* MDIO address 16, switch 0 in tree */
-+
-+			port@0 {
-+				reg = <0>;
-+				label = "ethernet1";
-+			};
-+
-+			port@1 {
-+				reg = <1>;
-+				label = "ethernet2";
-+			};
-+
-+			port@2 {
-+				reg = <2>;
-+				label = "ethernet3";
-+			};
-+
-+			port@3 {
-+				reg = <3>;
-+				label = "ethernet4";
-+			};
-+
-+			port@4 {
-+				reg = <4>;
-+				label = "internet";
-+			};
-+
-+			port@5 {
-+				reg = <5>;
-+				label = "cpu";
-+			};
-+		};
-+	};
-+};
-+
-+&pinctrl {
-+	pmx_led_green_power: pmx-led-green-power {
-+		marvell,pins = "mpp7";
-+		marvell,function = "gpo";
-+	};
-+	pmx_btn_wps: pmx-btn-wps {
-+		marvell,pins = "mpp47";
-+		marvell,function = "gpio";
-+	};
-+	pmx_btn_reset: pmx-btn-reset {
-+		marvell,pins = "mpp48";
-+		marvell,function = "gpio";
-+	};
-+};
-+
-+&nand {
-+	status = "okay";
-+	pinctrl-0 = <&pmx_nand>;
-+	pinctrl-names = "default";
-+
-+	partitions {
-+		compatible = "fixed-partitions";
-+		#address-cells = <1>;
-+		#size-cells = <1>;
-+
-+		partition@0 {
-+			label = "u-boot";
-+			reg = <0x0 0x80000>;
-+			read-only;
-+		};
-+
-+		partition@80000 {
-+			label = "u_env";
-+			reg = <0x80000 0x4000>;
-+		};
-+
-+		partition@84000 {
-+			label = "s_env";
-+			reg = <0x84000 0x4000>;
-+		};
-+
-+		partition@200000 {
-+			label = "kernel1";
-+			reg = <0x200000 0x290000>;
-+		};
-+
-+		partition@490000 {
-+			label = "rootfs1";
-+			reg = <0x490000 0x1170000>;
-+		};
-+
-+		partition@1600000 {
-+			label = "kernel2";
-+			reg = <0x1600000 0x290000>;
-+		};
-+
-+		partition@1890000 {
-+			label = "rootfs2";
-+			reg = <0x1890000 0x1170000>;
-+		};
-+
-+		partition@2a00000 {
-+			label = "syscfg";
-+			reg = <0x2a00000  0x1600000>;
-+		};
-+
-+		partition@88000 {
-+			label = "unused";
-+			reg = <0x88000 0x178000>;
-+		};
-+
-+	};
-+};
-+
-+&pciec {
-+	status = "okay";
-+};
-+
-+&pcie0 {
-+	status = "okay";
-+};
-+
-+&pcie1 {
-+	status = "okay";
-+};
-+
-+&mdio {
-+	status = "okay";
-+};
-+
-+&uart0 {
-+	status = "okay";
-+};
-+
-+/* eth0 is connected to a Marvell 88E6171 switch, without a PHY. So set
-+ * fixed speed and duplex.
-+ */
-+&eth0 {
-+	status = "okay";
-+	ethernet0-port@0 {
-+		speed = <1000>;
-+		duplex = <1>;
-+	};
-+};
-+
-+/* eth1 is connected to the switch at port 6. However DSA only supports a
-+ * single CPU port. Upstream uses DSA so they disable this port to avoid confusion.
-+ */
-+&eth1 {
-+	status = "okay";
-+	ethernet1-port@0 {
-+		speed = <1000>;
-+		duplex = <1>;
-+	};
-+};
-+
-+/* There is no battery on the board, so the RTC does not keep
-+ * time when there is no power, making it useless.
-+ */
-+&rtc {
-+	status = "disabled";
-+};
diff --git a/target/linux/kirkwood/patches-4.14/105-goflexhome.patch b/target/linux/kirkwood/patches-4.14/105-goflexhome.patch
deleted file mode 100644
index fcccbf7f39..0000000000
--- a/target/linux/kirkwood/patches-4.14/105-goflexhome.patch
+++ /dev/null
@@ -1,137 +0,0 @@
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -237,6 +237,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-ds411.dtb \
- 	kirkwood-ds411j.dtb \
- 	kirkwood-ds411slim.dtb \
-+	kirkwood-goflexhome.dtb \
- 	kirkwood-goflexnet.dtb \
- 	kirkwood-guruplug-server-plus.dtb \
- 	kirkwood-ib62x0.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-goflexhome.dts
-@@ -0,0 +1,124 @@
-+/dts-v1/;
-+
-+#include "kirkwood.dtsi"
-+#include "kirkwood-6281.dtsi"
-+
-+/ {
-+	model = "Seagate GoFlex Home";
-+	compatible = "seagate,goflexhome", "marvell,kirkwood-88f6281", "marvell,kirkwood";
-+
-+	aliases {
-+		led-boot = &led_health;
-+		led-failsafe = &led_fault;
-+		led-running = &led_health;
-+		led-upgrade = &led_fault;
-+	};
-+
-+	memory {
-+		device_type = "memory";
-+		reg = <0x00000000 0x8000000>;
-+	};
-+
-+	chosen {
-+		bootargs = "console=ttyS0,115200n8 earlyprintk root=/dev/sda1 rootdelay=10";
-+		stdout-path = &uart0;
-+	};
-+
-+	ocp@f1000000 {
-+		pinctrl: pin-controller@10000 {
-+			pmx_usb_power_enable: pmx-usb-power-enable {
-+				marvell,pins = "mpp29";
-+				marvell,function = "gpio";
-+			};
-+			pmx_led_white: pmx-led-white {
-+				marvell,pins = "mpp40";
-+				marvell,function = "gpio";
-+			};
-+			pmx_led_green: pmx-led_green {
-+				marvell,pins = "mpp46";
-+				marvell,function = "gpio";
-+			};
-+			pmx_led_orange: pmx-led-orange {
-+				marvell,pins = "mpp47";
-+				marvell,function = "gpio";
-+			};
-+		};
-+		serial@12000 {
-+			status = "ok";
-+		};
-+
-+		sata@80000 {
-+			status = "okay";
-+			nr-ports = <2>;
-+		};
-+
-+	};
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+
-+		led_health: health {
-+			label = "status:green:health";
-+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
-+			default-state = "on";
-+		};
-+		led_fault: fault {
-+			label = "status:orange:fault";
-+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
-+		};
-+		misc {
-+			label = "status:white:misc";
-+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
-+			linux,default-trigger = "disk-activity";
-+		};
-+	};
-+	regulators {
-+		compatible = "simple-bus";
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+		pinctrl-0 = <&pmx_usb_power_enable>;
-+		pinctrl-names = "default";
-+
-+		usb_power: regulator@1 {
-+			compatible = "regulator-fixed";
-+			reg = <1>;
-+			regulator-name = "USB Power";
-+			regulator-min-microvolt = <5000000>;
-+			regulator-max-microvolt = <5000000>;
-+			enable-active-high;
-+			regulator-always-on;
-+			regulator-boot-on;
-+			gpio = <&gpio0 29 GPIO_ACTIVE_HIGH>;
-+		};
-+	};
-+};
-+
-+&nand {
-+	chip-delay = <40>;
-+	status = "okay";
-+
-+	partition@0 {
-+		label = "u-boot";
-+		reg = <0x0000000 0x100000>;
-+		read-only;
-+	};
-+
-+	partition@100000 {
-+		label = "ubi";
-+		reg = <0x100000 0x0ff00000>;
-+	};
-+};
-+
-+&mdio {
-+	status = "okay";
-+
-+	ethphy0: ethernet-phy@0 {
-+		reg = <0>;
-+	};
-+};
-+
-+&eth0 {
-+	status = "okay";
-+	ethernet0-port@0 {
-+		phy-handle = <&ethphy0>;
-+	};
-+};
diff --git a/target/linux/kirkwood/patches-4.14/107-02-nsa310b.patch b/target/linux/kirkwood/patches-4.14/107-02-nsa310b.patch
deleted file mode 100644
index 1f2718fb80..0000000000
--- a/target/linux/kirkwood/patches-4.14/107-02-nsa310b.patch
+++ /dev/null
@@ -1,155 +0,0 @@
-kirkwood: add nsa310b dtb, a zyxel nsa310 variant
-
-add support to a nsa310 variant with red/green usb led
-and lm85 temp/fan controller
-
-Signed-off-by: Alberto Bursi <alberto.bursi@outlook.it>
-
-NOTE: this patch can be upstreamed as-is, LEDE-specific
-		nand partitions are set in another patch
-
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -268,6 +268,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-ns2mini.dtb \
- 	kirkwood-nsa310.dtb \
- 	kirkwood-nsa310a.dtb \
-+	kirkwood-nsa310b.dtb \
- 	kirkwood-nsa320.dtb \
- 	kirkwood-nsa325.dtb \
- 	kirkwood-openblocks_a6.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-nsa310b.dts
-@@ -0,0 +1,132 @@
-+/dts-v1/;
-+
-+#include "kirkwood-nsa3x0-common.dtsi"
-+
-+/*
-+ * There are at least two different NSA310 designs. This variant has
-+ * a red/green USB Led (same as nsa310) and a lm85 temp/fan controller.
-+ */
-+
-+/ {
-+	model = "ZyXEL NSA310b";
-+	compatible = "zyxel,nsa310b", "zyxel,nsa310", "marvell,kirkwood-88f6281", "marvell,kirkwood";
-+
-+	aliases {
-+		led-boot = &led_green_sys;
-+		led-failsafe = &led_red_sys;
-+		led-running = &led_green_sys;
-+		led-upgrade = &led_red_sys;
-+	};
-+
-+	memory {
-+		device_type = "memory";
-+		reg = <0x00000000 0x10000000>;
-+	};
-+
-+	chosen {
-+		bootargs = "console=ttyS0,115200";
-+		stdout-path = &uart0;
-+	};
-+
-+	ocp@f1000000 {
-+		pinctrl: pin-controller@10000 {
-+			pinctrl-names = "default";
-+
-+			pmx_led_esata_green: pmx-led-esata-green {
-+				marvell,pins = "mpp12";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_esata_red: pmx-led-esata-red {
-+				marvell,pins = "mpp13";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_usb_green: pmx-led-usb-green {
-+				marvell,pins = "mpp15";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_usb_red: pmx-led-usb-red {
-+				marvell,pins = "mpp16";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_sys_green: pmx-led-sys-green {
-+				marvell,pins = "mpp28";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_sys_red: pmx-led-sys-red {
-+				marvell,pins = "mpp29";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_hdd_green: pmx-led-hdd-green {
-+				marvell,pins = "mpp41";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_hdd_red: pmx-led-hdd-red {
-+				marvell,pins = "mpp42";
-+				marvell,function = "gpio";
-+			};
-+
-+		};
-+
-+		i2c@11000 {
-+			status = "okay";
-+
-+			lm85: lm85@2e {
-+				compatible = "national,lm85";
-+				reg = <0x2e>;
-+			};
-+		};
-+	};
-+
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+
-+		led_green_sys: green-sys {
-+			label = "nsa310:green:sys";
-+			gpios = <&gpio0 28 GPIO_ACTIVE_HIGH>;
-+			default-state = "on";
-+		};
-+		led_red_sys: red-sys {
-+			label = "nsa310:red:sys";
-+			gpios = <&gpio0 29 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-hdd {
-+			label = "nsa310:green:hdd";
-+			gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-hdd {
-+			label = "nsa310:red:hdd";
-+			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-esata {
-+			label = "nsa310:green:esata";
-+			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-esata {
-+			label = "nsa310:red:esata";
-+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-usb {
-+			label = "nsa310:green:usb";
-+			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-usb {
-+			label = "nsa310:red:usb";
-+			gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-copy {
-+			label = "nsa310:green:copy";
-+			gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-copy {
-+			label = "nsa310:red:copy";
-+			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
-+		};
-+	};
-+};
diff --git a/target/linux/kirkwood/patches-4.14/108-on100.patch b/target/linux/kirkwood/patches-4.14/108-on100.patch
deleted file mode 100644
index 78f2f4a3fe..0000000000
--- a/target/linux/kirkwood/patches-4.14/108-on100.patch
+++ /dev/null
@@ -1,178 +0,0 @@
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-on100.dts
-@@ -0,0 +1,165 @@
-+/dts-v1/;
-+
-+#include "kirkwood.dtsi"
-+#include "kirkwood-6282.dtsi"
-+
-+/ {
-+	model = "Cisco Systems ON100";
-+	compatible = "cisco,on100", "marvell,kirkwood-88f6282", "marvell,kirkwood";
-+
-+	memory {
-+		device_type = "memory";
-+		reg = <0x00000000 0x20000000>;
-+	};
-+
-+	aliases {
-+		led-boot = &led_health_green;
-+		led-failsafe = &led_health_red;
-+		led-running = &led_health_green;
-+		led-upgrade = &led_health_red;
-+		serial0 = &uart0;
-+	};
-+
-+	chosen {
-+		bootargs = "console=ttyS0,115200n8 earlyprintk";
-+		stdout-path = "serial0:115200n8";
-+	};
-+
-+	gpio_keys {
-+		compatible = "gpio-keys";
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+		pinctrl-0 = <&pmx_btn_reset>;
-+		pinctrl-names = "default";
-+
-+		button@1 {
-+			label = "Reset Button";
-+			linux,code = <KEY_RESTART>;
-+			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
-+		};
-+	};
-+
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+		pinctrl-0 = < &pmx_led_health_r &pmx_led_health_g >;
-+		pinctrl-names = "default";
-+
-+		led_health_green: health_green {
-+			label = "on100:green:health";
-+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
-+			default-state = "on";
-+		};
-+
-+		led_health_red: health_red {
-+			label = "on100:red:health";
-+			gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
-+		};
-+
-+		health2_green {
-+			label = "on100:green:health2";
-+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
-+		};
-+
-+		health2_red {
-+			label = "on100:red:health2";
-+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
-+		};
-+	};
-+};
-+
-+&eth0 {
-+	status = "okay";
-+
-+	ethernet0-port@0 {
-+		phy-handle = <&ethphy0>;
-+		phy-connection-type = "rgmii-id";
-+	};
-+};
-+
-+&eth1 {
-+	status = "okay";
-+
-+	ethernet1-port@0 {
-+		phy-handle = <&ethphy1>;
-+		phy-connection-type = "rgmii-id";
-+	};
-+};
-+
-+&mdio {
-+	status = "okay";
-+
-+	ethphy0: ethernet-phy@0 {
-+		/* Marvell 88E1121R */
-+		compatible = "ethernet-phy-id0141.0cb0",
-+			     "ethernet-phy-ieee802.3-c22";
-+		reg = <0>;
-+	};
-+
-+	ethphy1: ethernet-phy@1 {
-+		/* Marvell 88E1121R */
-+		compatible = "ethernet-phy-id0141.0cb0",
-+			     "ethernet-phy-ieee802.3-c22";
-+		reg = <1>;
-+	};
-+};
-+
-+&nand {
-+	status = "okay";
-+
-+	partition@0 {
-+		label = "u-boot";
-+		reg = <0x00000000 0x000a0000>;
-+		read-only;
-+	};
-+
-+	partition@a0000 {
-+		label = "u-boot environment";
-+		reg = <0x000a0000 0x00020000>;
-+		read-only;
-+	};
-+
-+	partition@c0000 {
-+		label = "kernel";
-+		reg = <0x000c0000 0x00540000>;
-+	};
-+
-+	partition@600000 {
-+		label = "ubi";
-+		reg = <0x00600000 0x1fa00000>;
-+	};
-+};
-+
-+&pinctrl {
-+	pmx_led_health_r: pmx-led-health-r {
-+		marvell,pins = "mpp45";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_led_health_g: pmx-led-health-g {
-+		marvell,pins = "mpp44";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_led_health2_r: pmx-led-health2-r {
-+		marvell,pins = "mpp47";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_led_health2_g: pmx-led-health2-g {
-+		marvell,pins = "mpp46";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_btn_reset: pmx-led-reset {
-+		marvell,pins = "mpp31";
-+		marvell,function = "gpio";
-+	};
-+};
-+
-+&sdio {
-+	status = "okay";
-+};
-+
-+&uart0 {
-+	status = "okay";
-+};
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -271,6 +271,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-nsa310b.dtb \
- 	kirkwood-nsa320.dtb \
- 	kirkwood-nsa325.dtb \
-+	kirkwood-on100.dtb \
- 	kirkwood-openblocks_a6.dtb \
- 	kirkwood-openblocks_a7.dtb \
- 	kirkwood-openrd-base.dtb \
diff --git a/target/linux/kirkwood/patches-4.19/104-ea3500.patch b/target/linux/kirkwood/patches-4.19/104-ea3500.patch
deleted file mode 100644
index 04a919e072..0000000000
--- a/target/linux/kirkwood/patches-4.19/104-ea3500.patch
+++ /dev/null
@@ -1,264 +0,0 @@
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -269,6 +269,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-linkstation-lswsxl.dtb \
- 	kirkwood-linkstation-lswvl.dtb \
- 	kirkwood-linkstation-lswxl.dtb \
-+	kirkwood-linksys-audi.dtb \
- 	kirkwood-linksys-viper.dtb \
- 	kirkwood-lschlv2.dtb \
- 	kirkwood-lsxhl.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-linksys-audi.dts
-@@ -0,0 +1,251 @@
-+// SPDX-License-Identifier: GPL-2.0
-+/*
-+ * kirkwood-linksys-audi.dts - Device Tree file for Linksys EA3500
-+ *
-+ * (c) 2013 Jonas Gorski <jogo@openwrt.org>
-+ * (c) 2013 Deutsche Telekom Innovation Laboratories
-+ * (c) 2014 Luka Perkov <luka@openwrt.org>
-+ * (c) 2014 Dan Walters <dan@walters.io>
-+ *
-+ */
-+
-+/dts-v1/;
-+
-+#include "kirkwood.dtsi"
-+#include "kirkwood-6282.dtsi"
-+
-+/ {
-+	model = "Linksys Audi (EA3500)";
-+	compatible = "linksys,audi", "marvell,kirkwood-88f6282", "marvell,kirkwood";
-+
-+	memory@0 {
-+		device_type = "memory";
-+		reg = <0x00000000 0x4000000>;
-+	};
-+
-+	aliases {
-+		led-boot = &led_power;
-+		led-failsafe = &led_power;
-+		led-running = &led_power;
-+		led-upgrade = &led_power;
-+		serial0 = &uart0;
-+	};
-+
-+	chosen {
-+		stdout-path = "serial0:115200n8";
-+	};
-+
-+	gpio_keys {
-+		compatible = "gpio-keys";
-+		pinctrl-0 = < &pmx_btn_wps &pmx_btn_reset >;
-+		pinctrl-names = "default";
-+
-+		wps {
-+			label = "WPS Button";
-+			linux,code = <KEY_WPS_BUTTON>;
-+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
-+		};
-+
-+		reset {
-+			label = "Reset Button";
-+			linux,code = <KEY_RESTART>;
-+			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
-+		};
-+	};
-+
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+		pinctrl-0 = < &pmx_led_green_power >;
-+		pinctrl-names = "default";
-+
-+		led_power: power {
-+			label = "audi:green:power";
-+			gpios = <&gpio0 7 GPIO_ACTIVE_HIGH>;
-+			default-state = "on";
-+		};
-+	};
-+
-+	switches {
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+
-+		mvsw61xx@10 {
-+			compatible = "marvell,88e6171";
-+			status = "okay";
-+			reg = <0x10>;
-+
-+			mii-bus = <&mdio>;
-+			cpu-port-0 = <5>;
-+			cpu-port-1 = <6>;
-+			is-indirect;
-+		};
-+	};
-+
-+	dsa {
-+		compatible = "marvell,dsa";
-+		#address-cells = <2>;
-+		#size-cells = <0>;
-+
-+		dsa,ethernet = <&eth0port>;
-+		dsa,mii-bus = <&mdio>;
-+
-+		switch@16,0 {
-+			#address-cells = <1>;
-+			#size-cells = <0>;
-+			reg = <16 0>;	/* MDIO address 16, switch 0 in tree */
-+
-+			port@0 {
-+				reg = <0>;
-+				label = "ethernet1";
-+			};
-+
-+			port@1 {
-+				reg = <1>;
-+				label = "ethernet2";
-+			};
-+
-+			port@2 {
-+				reg = <2>;
-+				label = "ethernet3";
-+			};
-+
-+			port@3 {
-+				reg = <3>;
-+				label = "ethernet4";
-+			};
-+
-+			port@4 {
-+				reg = <4>;
-+				label = "internet";
-+			};
-+
-+			port@5 {
-+				reg = <5>;
-+				label = "cpu";
-+			};
-+		};
-+	};
-+};
-+
-+&pinctrl {
-+	pmx_led_green_power: pmx-led-green-power {
-+		marvell,pins = "mpp7";
-+		marvell,function = "gpo";
-+	};
-+	pmx_btn_wps: pmx-btn-wps {
-+		marvell,pins = "mpp47";
-+		marvell,function = "gpio";
-+	};
-+	pmx_btn_reset: pmx-btn-reset {
-+		marvell,pins = "mpp48";
-+		marvell,function = "gpio";
-+	};
-+};
-+
-+&nand {
-+	status = "okay";
-+	pinctrl-0 = <&pmx_nand>;
-+	pinctrl-names = "default";
-+
-+	partitions {
-+		compatible = "fixed-partitions";
-+		#address-cells = <1>;
-+		#size-cells = <1>;
-+
-+		partition@0 {
-+			label = "u-boot";
-+			reg = <0x0 0x80000>;
-+			read-only;
-+		};
-+
-+		partition@80000 {
-+			label = "u_env";
-+			reg = <0x80000 0x4000>;
-+		};
-+
-+		partition@84000 {
-+			label = "s_env";
-+			reg = <0x84000 0x4000>;
-+		};
-+
-+		partition@200000 {
-+			label = "kernel1";
-+			reg = <0x200000 0x290000>;
-+		};
-+
-+		partition@490000 {
-+			label = "rootfs1";
-+			reg = <0x490000 0x1170000>;
-+		};
-+
-+		partition@1600000 {
-+			label = "kernel2";
-+			reg = <0x1600000 0x290000>;
-+		};
-+
-+		partition@1890000 {
-+			label = "rootfs2";
-+			reg = <0x1890000 0x1170000>;
-+		};
-+
-+		partition@2a00000 {
-+			label = "syscfg";
-+			reg = <0x2a00000  0x1600000>;
-+		};
-+
-+		partition@88000 {
-+			label = "unused";
-+			reg = <0x88000 0x178000>;
-+		};
-+
-+	};
-+};
-+
-+&pciec {
-+	status = "okay";
-+};
-+
-+&pcie0 {
-+	status = "okay";
-+};
-+
-+&pcie1 {
-+	status = "okay";
-+};
-+
-+&mdio {
-+	status = "okay";
-+};
-+
-+&uart0 {
-+	status = "okay";
-+};
-+
-+/* eth0 is connected to a Marvell 88E6171 switch, without a PHY. So set
-+ * fixed speed and duplex.
-+ */
-+&eth0 {
-+	status = "okay";
-+	ethernet0-port@0 {
-+		speed = <1000>;
-+		duplex = <1>;
-+	};
-+};
-+
-+/* eth1 is connected to the switch at port 6. However DSA only supports a
-+ * single CPU port. Upstream uses DSA so they disable this port to avoid confusion.
-+ */
-+&eth1 {
-+	status = "okay";
-+	ethernet1-port@0 {
-+		speed = <1000>;
-+		duplex = <1>;
-+	};
-+};
-+
-+/* There is no battery on the board, so the RTC does not keep
-+ * time when there is no power, making it useless.
-+ */
-+&rtc {
-+	status = "disabled";
-+};
diff --git a/target/linux/kirkwood/patches-4.19/105-goflexhome.patch b/target/linux/kirkwood/patches-4.19/105-goflexhome.patch
deleted file mode 100644
index cca65f2141..0000000000
--- a/target/linux/kirkwood/patches-4.19/105-goflexhome.patch
+++ /dev/null
@@ -1,137 +0,0 @@
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -256,6 +256,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-ds411.dtb \
- 	kirkwood-ds411j.dtb \
- 	kirkwood-ds411slim.dtb \
-+	kirkwood-goflexhome.dtb \
- 	kirkwood-goflexnet.dtb \
- 	kirkwood-guruplug-server-plus.dtb \
- 	kirkwood-ib62x0.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-goflexhome.dts
-@@ -0,0 +1,124 @@
-+/dts-v1/;
-+
-+#include "kirkwood.dtsi"
-+#include "kirkwood-6281.dtsi"
-+
-+/ {
-+	model = "Seagate GoFlex Home";
-+	compatible = "seagate,goflexhome", "marvell,kirkwood-88f6281", "marvell,kirkwood";
-+
-+	aliases {
-+		led-boot = &led_health;
-+		led-failsafe = &led_fault;
-+		led-running = &led_health;
-+		led-upgrade = &led_fault;
-+	};
-+
-+	memory@0 {
-+		device_type = "memory";
-+		reg = <0x00000000 0x8000000>;
-+	};
-+
-+	chosen {
-+		bootargs = "console=ttyS0,115200n8 earlyprintk root=/dev/sda1 rootdelay=10";
-+		stdout-path = &uart0;
-+	};
-+
-+	ocp@f1000000 {
-+		pinctrl: pin-controller@10000 {
-+			pmx_usb_power_enable: pmx-usb-power-enable {
-+				marvell,pins = "mpp29";
-+				marvell,function = "gpio";
-+			};
-+			pmx_led_white: pmx-led-white {
-+				marvell,pins = "mpp40";
-+				marvell,function = "gpio";
-+			};
-+			pmx_led_green: pmx-led_green {
-+				marvell,pins = "mpp46";
-+				marvell,function = "gpio";
-+			};
-+			pmx_led_orange: pmx-led-orange {
-+				marvell,pins = "mpp47";
-+				marvell,function = "gpio";
-+			};
-+		};
-+		serial@12000 {
-+			status = "ok";
-+		};
-+
-+		sata@80000 {
-+			status = "okay";
-+			nr-ports = <2>;
-+		};
-+
-+	};
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+
-+		led_health: health {
-+			label = "status:green:health";
-+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
-+			default-state = "on";
-+		};
-+		led_fault: fault {
-+			label = "status:orange:fault";
-+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
-+		};
-+		misc {
-+			label = "status:white:misc";
-+			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
-+			linux,default-trigger = "disk-activity";
-+		};
-+	};
-+	regulators {
-+		compatible = "simple-bus";
-+		#address-cells = <1>;
-+		#size-cells = <0>;
-+		pinctrl-0 = <&pmx_usb_power_enable>;
-+		pinctrl-names = "default";
-+
-+		usb_power: regulator@1 {
-+			compatible = "regulator-fixed";
-+			reg = <1>;
-+			regulator-name = "USB Power";
-+			regulator-min-microvolt = <5000000>;
-+			regulator-max-microvolt = <5000000>;
-+			enable-active-high;
-+			regulator-always-on;
-+			regulator-boot-on;
-+			gpio = <&gpio0 29 GPIO_ACTIVE_HIGH>;
-+		};
-+	};
-+};
-+
-+&nand {
-+	chip-delay = <40>;
-+	status = "okay";
-+
-+	partition@0 {
-+		label = "u-boot";
-+		reg = <0x0000000 0x100000>;
-+		read-only;
-+	};
-+
-+	partition@100000 {
-+		label = "ubi";
-+		reg = <0x100000 0x0ff00000>;
-+	};
-+};
-+
-+&mdio {
-+	status = "okay";
-+
-+	ethphy0: ethernet-phy@0 {
-+		reg = <0>;
-+	};
-+};
-+
-+&eth0 {
-+	status = "okay";
-+	ethernet0-port@0 {
-+		phy-handle = <&ethphy0>;
-+	};
-+};
diff --git a/target/linux/kirkwood/patches-4.19/107-02-nsa310b.patch b/target/linux/kirkwood/patches-4.19/107-02-nsa310b.patch
deleted file mode 100644
index ba2ae7d2de..0000000000
--- a/target/linux/kirkwood/patches-4.19/107-02-nsa310b.patch
+++ /dev/null
@@ -1,155 +0,0 @@
-kirkwood: add nsa310b dtb, a zyxel nsa310 variant
-
-add support to a nsa310 variant with red/green usb led
-and lm85 temp/fan controller
-
-Signed-off-by: Alberto Bursi <alberto.bursi@outlook.it>
-
-NOTE: this patch can be upstreamed as-is, LEDE-specific
-		nand partitions are set in another patch
-
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -287,6 +287,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-ns2mini.dtb \
- 	kirkwood-nsa310.dtb \
- 	kirkwood-nsa310a.dtb \
-+	kirkwood-nsa310b.dtb \
- 	kirkwood-nsa320.dtb \
- 	kirkwood-nsa325.dtb \
- 	kirkwood-openblocks_a6.dtb \
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-nsa310b.dts
-@@ -0,0 +1,132 @@
-+/dts-v1/;
-+
-+#include "kirkwood-nsa3x0-common.dtsi"
-+
-+/*
-+ * There are at least two different NSA310 designs. This variant has
-+ * a red/green USB Led (same as nsa310) and a lm85 temp/fan controller.
-+ */
-+
-+/ {
-+	model = "ZyXEL NSA310b";
-+	compatible = "zyxel,nsa310b", "zyxel,nsa310", "marvell,kirkwood-88f6281", "marvell,kirkwood";
-+
-+	aliases {
-+		led-boot = &led_green_sys;
-+		led-failsafe = &led_red_sys;
-+		led-running = &led_green_sys;
-+		led-upgrade = &led_red_sys;
-+	};
-+
-+	memory@0 {
-+		device_type = "memory";
-+		reg = <0x00000000 0x10000000>;
-+	};
-+
-+	chosen {
-+		bootargs = "console=ttyS0,115200";
-+		stdout-path = &uart0;
-+	};
-+
-+	ocp@f1000000 {
-+		pinctrl: pin-controller@10000 {
-+			pinctrl-names = "default";
-+
-+			pmx_led_esata_green: pmx-led-esata-green {
-+				marvell,pins = "mpp12";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_esata_red: pmx-led-esata-red {
-+				marvell,pins = "mpp13";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_usb_green: pmx-led-usb-green {
-+				marvell,pins = "mpp15";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_usb_red: pmx-led-usb-red {
-+				marvell,pins = "mpp16";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_sys_green: pmx-led-sys-green {
-+				marvell,pins = "mpp28";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_sys_red: pmx-led-sys-red {
-+				marvell,pins = "mpp29";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_hdd_green: pmx-led-hdd-green {
-+				marvell,pins = "mpp41";
-+				marvell,function = "gpio";
-+			};
-+
-+			pmx_led_hdd_red: pmx-led-hdd-red {
-+				marvell,pins = "mpp42";
-+				marvell,function = "gpio";
-+			};
-+
-+		};
-+
-+		i2c@11000 {
-+			status = "okay";
-+
-+			lm85: lm85@2e {
-+				compatible = "national,lm85";
-+				reg = <0x2e>;
-+			};
-+		};
-+	};
-+
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+
-+		led_green_sys: green-sys {
-+			label = "nsa310:green:sys";
-+			gpios = <&gpio0 28 GPIO_ACTIVE_HIGH>;
-+			default-state = "on";
-+		};
-+		led_red_sys: red-sys {
-+			label = "nsa310:red:sys";
-+			gpios = <&gpio0 29 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-hdd {
-+			label = "nsa310:green:hdd";
-+			gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-hdd {
-+			label = "nsa310:red:hdd";
-+			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-esata {
-+			label = "nsa310:green:esata";
-+			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-esata {
-+			label = "nsa310:red:esata";
-+			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-usb {
-+			label = "nsa310:green:usb";
-+			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-usb {
-+			label = "nsa310:red:usb";
-+			gpios = <&gpio0 16 GPIO_ACTIVE_HIGH>;
-+		};
-+		green-copy {
-+			label = "nsa310:green:copy";
-+			gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
-+		};
-+		red-copy {
-+			label = "nsa310:red:copy";
-+			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
-+		};
-+	};
-+};
diff --git a/target/linux/kirkwood/patches-4.19/108-on100.patch b/target/linux/kirkwood/patches-4.19/108-on100.patch
deleted file mode 100644
index bc0916f161..0000000000
--- a/target/linux/kirkwood/patches-4.19/108-on100.patch
+++ /dev/null
@@ -1,176 +0,0 @@
---- /dev/null
-+++ b/arch/arm/boot/dts/kirkwood-on100.dts
-@@ -0,0 +1,163 @@
-+/dts-v1/;
-+
-+#include "kirkwood.dtsi"
-+#include "kirkwood-6282.dtsi"
-+
-+/ {
-+	model = "Cisco Systems ON100";
-+	compatible = "cisco,on100", "marvell,kirkwood-88f6282", "marvell,kirkwood";
-+
-+	memory@0 {
-+		device_type = "memory";
-+		reg = <0x00000000 0x20000000>;
-+	};
-+
-+	aliases {
-+		led-boot = &led_health_green;
-+		led-failsafe = &led_health_red;
-+		led-running = &led_health_green;
-+		led-upgrade = &led_health_red;
-+		serial0 = &uart0;
-+	};
-+
-+	chosen {
-+		bootargs = "console=ttyS0,115200n8 earlyprintk";
-+		stdout-path = "serial0:115200n8";
-+	};
-+
-+	gpio_keys {
-+		compatible = "gpio-keys";
-+		pinctrl-0 = <&pmx_btn_reset>;
-+		pinctrl-names = "default";
-+
-+		reset {
-+			label = "Reset Button";
-+			linux,code = <KEY_RESTART>;
-+			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
-+		};
-+	};
-+
-+	gpio-leds {
-+		compatible = "gpio-leds";
-+		pinctrl-0 = < &pmx_led_health_r &pmx_led_health_g >;
-+		pinctrl-names = "default";
-+
-+		led_health_green: health_green {
-+			label = "on100:green:health";
-+			gpios = <&gpio1 12 GPIO_ACTIVE_LOW>;
-+			default-state = "on";
-+		};
-+
-+		led_health_red: health_red {
-+			label = "on100:red:health";
-+			gpios = <&gpio1 13 GPIO_ACTIVE_LOW>;
-+		};
-+
-+		health2_green {
-+			label = "on100:green:health2";
-+			gpios = <&gpio1 14 GPIO_ACTIVE_LOW>;
-+		};
-+
-+		health2_red {
-+			label = "on100:red:health2";
-+			gpios = <&gpio1 15 GPIO_ACTIVE_LOW>;
-+		};
-+	};
-+};
-+
-+&eth0 {
-+	status = "okay";
-+
-+	ethernet0-port@0 {
-+		phy-handle = <&ethphy0>;
-+		phy-connection-type = "rgmii-id";
-+	};
-+};
-+
-+&eth1 {
-+	status = "okay";
-+
-+	ethernet1-port@0 {
-+		phy-handle = <&ethphy1>;
-+		phy-connection-type = "rgmii-id";
-+	};
-+};
-+
-+&mdio {
-+	status = "okay";
-+
-+	ethphy0: ethernet-phy@0 {
-+		/* Marvell 88E1121R */
-+		compatible = "ethernet-phy-id0141.0cb0",
-+			     "ethernet-phy-ieee802.3-c22";
-+		reg = <0>;
-+	};
-+
-+	ethphy1: ethernet-phy@1 {
-+		/* Marvell 88E1121R */
-+		compatible = "ethernet-phy-id0141.0cb0",
-+			     "ethernet-phy-ieee802.3-c22";
-+		reg = <1>;
-+	};
-+};
-+
-+&nand {
-+	status = "okay";
-+
-+	partition@0 {
-+		label = "u-boot";
-+		reg = <0x00000000 0x000a0000>;
-+		read-only;
-+	};
-+
-+	partition@a0000 {
-+		label = "u-boot environment";
-+		reg = <0x000a0000 0x00020000>;
-+		read-only;
-+	};
-+
-+	partition@c0000 {
-+		label = "kernel";
-+		reg = <0x000c0000 0x00540000>;
-+	};
-+
-+	partition@600000 {
-+		label = "ubi";
-+		reg = <0x00600000 0x1fa00000>;
-+	};
-+};
-+
-+&pinctrl {
-+	pmx_led_health_r: pmx-led-health-r {
-+		marvell,pins = "mpp45";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_led_health_g: pmx-led-health-g {
-+		marvell,pins = "mpp44";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_led_health2_r: pmx-led-health2-r {
-+		marvell,pins = "mpp47";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_led_health2_g: pmx-led-health2-g {
-+		marvell,pins = "mpp46";
-+		marvell,function = "gpio";
-+	};
-+
-+	pmx_btn_reset: pmx-led-reset {
-+		marvell,pins = "mpp31";
-+		marvell,function = "gpio";
-+	};
-+};
-+
-+&sdio {
-+	status = "okay";
-+};
-+
-+&uart0 {
-+	status = "okay";
-+};
---- a/arch/arm/boot/dts/Makefile
-+++ b/arch/arm/boot/dts/Makefile
-@@ -290,6 +290,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
- 	kirkwood-nsa310b.dtb \
- 	kirkwood-nsa320.dtb \
- 	kirkwood-nsa325.dtb \
-+	kirkwood-on100.dtb \
- 	kirkwood-openblocks_a6.dtb \
- 	kirkwood-openblocks_a7.dtb \
- 	kirkwood-openrd-base.dtb \
-- 
2.25.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
