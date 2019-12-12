Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A4011CF67
	for <lists+openwrt-devel@lfdr.de>; Thu, 12 Dec 2019 15:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TsvoTXW4kYGRhU204j4HaxDc9qGzvS1b6L/uGv7YsKk=; b=qSOkT6qdhMVF4K
	VXlfI4KnsTaFi18jvL3TqkGBR9Ce/cPA0+0xy9ZwmaojUw3MwND5lwqn8SYoS/mb2DuU4GFxMLi+t
	DZXSfjhFQcdTM4RKi1Szee1WKnXyoPz71cQJAZafF8l5PCmCF83asXKWIpk0QCHJs4uAuWauPODKo
	lg8+e1WTcDg4Fz/ejWzps/QpitZTGfTfShAB0oL1UeHKUkJRi2lCkinQQOLz5SYN3qnL+0T0/uwVk
	0d+y1bBieZ5vMbZTI558lpg/XMOqHsyN6nhsGnwemiRd7LCI7HMs25z4cucAcvfFc8HRB2AjFMikM
	B/fnQVwlatXS7ZXaKQlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPA4-0002Ws-T5; Thu, 12 Dec 2019 14:09:48 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifP9x-0002Wa-Cy
 for openwrt-devel@bombadil.infradead.org; Thu, 12 Dec 2019 14:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S9N9PRexYatngqPpt4q5l6R2H2DUbv/XlkbSBk5hYkI=; b=HjYSjc3NTOkA5K8fNiOGURaV1K
 vrzONr28Pyv2D8WbAu5JShQp7H2JI5M+27sWRRTx3wIl+GQoK+9DhYdpQIbLG5Cy8j81tbEmQ0It4
 pbIkhoHw6x/UvcSMcUby8H5p0Az+I2TTDBb+2/RMj2QJKsV8rm2iECqxu0Pl64dDdcLmF6ErOTfWT
 qzyMH+2lEop7X/JmbaX5dBljr6oI1NmtfhJOyfo8sH9vtxgYsFjuKKjURohmAnTTca7Ne0g9b+RAM
 nkCOO0AQ5vqOo0BM6BX8Wzr7c1fuRHAB3DALKGkeuqASX/G9ub74j6S49+PWva7DgjJjkP0Q074on
 kVByAQhg==;
Received: from smtpbguseast2.qq.com ([54.204.34.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifP9p-0001uh-Og
 for openwrt-devel@lists.openwrt.org; Thu, 12 Dec 2019 14:09:36 +0000
X-QQ-mid: bizesmtp19t1576159734tsfsgorq
Received: from example.com (unknown [112.19.111.89])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Dec 2019 22:08:53 +0800 (CST)
X-QQ-SSF: 0140000000200060E2F0000B0000000
X-QQ-FEAT: 9MsTBLS6yXE8fY5NUVVVigwuphTMes1sKOtxYO7jIHdhf41eYymOtAdwkGcmP
 lPGrLmnEiDaW7xeG2gEh/q0fVX47WEOvIi4F8ACBS6PMwczST/FO5zar8e9A1q81aPnfYsD
 xQ67e3uC3Q6P35QPWnUI/JOgmrnVtErgWTix14QM0M40gpgzJbW4uTGOK+PTZsE3Gd+OBlR
 RKjqlXGwi0A2zjd7GMYJkr51dC2vmxKynxfhqcEz1rxzVqBCbJ0mIUcDuPm6QpTRjgqZ+zj
 pl7crvb7A60X3alAmn7e3/GyfE79RSmqxdUWnTcZc3+8Zs32iDuVqxpO4UwNCMW5vDRefQf
 r9KK9uJNIIvfKtPyBo=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 12 Dec 2019 22:08:48 +0800
Message-Id: <20191212140848.8071-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign7
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.204.34.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH V2] ramips: add support for JCG JHR-AC876M
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

JCG JHR-AC876M is an AC2600M router

Hardware specs:
  SoC: MT7621AT
  2.4GHz: MT7615N 4x4 @ PCIe0
  5GHz: MT7615N 4x4 @ PCIe1
  Flash: Winbond W25Q128JVSQ 16MiB
  RAM: Nanya NT5CB128M16 256MiB
  USB 2.0 and 3.0 ports
  6 LEDs, 3 of which are connected to SoC GPIO
  Reset and WPS buttons

Flash instructions:
Stock to OpenWrt:
  Upload factory.bin in stock firmware's upgrade page,
  do not preserve settings

OpenWrt to stock:
  Push and hold the reset button for 5s while power cycling to
  enter recovery mode;
  Visit 192.168.1.1 and upload stock firmware

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
Changes since V1:
  Rebased and fixed label-mac

---
 .../ramips/dts/mt7621_jcg_jhr-ac876m.dts      | 146 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  13 ++
 .../mt7621/base-files/etc/board.d/02_network  |   5 +
 3 files changed, 164 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts

diff --git a/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts b/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts
new file mode 100644
index 0000000000..267043b5a1
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts
@@ -0,0 +1,146 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "jcg,jhr-ac876m", "mediatek,mt7621-soc";
+	model = "JCG JHR-AC876M";
+
+	aliases {
+		led-boot = &led_wps;
+		led-failsafe = &led_wps;
+		led-running = &led_wps;
+		led-upgrade = &led_wps;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		usb3 {
+			label = "jhr-ac876m:blue:usb3";
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&xhci_ehci_port1>;
+			linux,default-trigger = "usbport";
+		};
+
+		usb2 {
+			label = "jhr-ac876m:blue:usb2";
+			gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ehci_port2>;
+			linux,default-trigger = "usbport";
+		};
+
+		led_wps: wps {
+			label = "jhr-ac876m:blue:wps";
+			gpios = <&gpio0 14 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WPS_BUTTON>;
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
+		spi-max-frequency = <80000000>;
+		m25p,fast-read;
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
+			partition@50000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x50000 0xfb0000>;
+			};
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		compatible = "mediatek,mt76";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0>;
+		ieee80211-freq-limit = <2400000 2500000>;
+
+		led {
+			led-active-low;
+		};
+	};
+};
+
+&pcie1 {
+	wifi@0,0 {
+		compatible = "mediatek,mt76";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+
+		led {
+			led-active-low;
+		};
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0xe000>;
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "i2c", "uart3", "jtag", "wdt";
+			ralink,function = "gpio";
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index d663aa29da..cbbda06822 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -361,6 +361,19 @@ define Device/iodata_wnpr2600g
 endef
 TARGET_DEVICES += iodata_wnpr2600g
 
+define Device/jcg_jhr-ac876m
+  MTK_SOC := mt7621
+  IMAGE_SIZE := 16064k
+  IMAGES += factory.bin
+  IMAGE/factory.bin := \
+        $$(sysupgrade_bin) | check-size $$$$(IMAGE_SIZE) | jcg-header 89.1
+  JCG_MAXSIZE := 16449536
+  DEVICE_VENDOR := JCG
+  DEVICE_MODEL := JHR-AC876M
+  DEVICE_PACKAGES := kmod-mt7615e kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
+endef
+TARGET_DEVICES += jcg_jhr-ac876m
+
 define Device/lenovo_newifi-d1
   MTK_SOC := mt7621
   IMAGE_SIZE := 32448k
diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
index 2447ff8a8d..295be63d61 100755
--- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
@@ -14,6 +14,7 @@ ramips_setup_interfaces()
 	d-team,pbr-m1|\
 	firefly,firewrt|\
 	hiwifi,hc5962|\
+	jcg,jhr-ac876m|\
 	mediatek,ap-mt7621a-v60|\
 	mediatek,mt7621-eval-board|\
 	mqmaker,witi|\
@@ -217,6 +218,10 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
 		label_mac=$wan_mac
 		;;
+	jcg,jhr-ac876m)
+		label_mac=$(mtd_get_mac_binary factory 0x4)
+		wan_mac=$label_mac
+		;;
 	mediatek,ap-mt7621a-v60)
 		wan_mac=$(macaddr_add "$(mtd_get_mac_binary factory 0x5)" 1)
 		;;
-- 
2.24.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
