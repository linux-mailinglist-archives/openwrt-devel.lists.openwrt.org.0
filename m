Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3196A11896E
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 14:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+UkzB+EDKcqiJZKxSFgzVbk6LU2NZu1ZTsmGlYQSL6U=; b=E1K4jcplZvTrDj
	oPJwgfMHsFk3eczCoh0sKD26Pjo7lr2IxrInGuz1R404GZQMuyv3upSZYa5NlVKvWMpxRqAPOfsIv
	asSKxzPYWh3y+C3i1A0J35pSTAfn6IdJLJTBkSg8bqRannk70j1faxeyL14Q7Q75/l8hMp44Va/oX
	MdX90Ahaz0CBXiGn+ohG2IUE2m16bV1zgO/6Lisj/nwdrzV+7Nudr4CAaJURXTk4uE0RVDIB8JbrO
	FzVWEH/UXYdnZT0dWr4QYZiCCpM6OUBgfXRM30+9ouyIyVfwOCxpwZ7gCLo4231DMVV6Y2XATxtGh
	Wdi0zi0wjVqI/yONm6BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefTD-0000nQ-Qn; Tue, 10 Dec 2019 13:22:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefT5-0000nH-R6
 for openwrt-devel@bombadil.infradead.org; Tue, 10 Dec 2019 13:22:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hl29IZ0+k1+cL2JfJvpTenFBiKX7L87quxCJAxrMt8k=; b=0SsP2rlv6EovoN0CzObf+1i82Z
 aTOC2Ad7KFPQ5L4UjYFpm5r/3IZvbcxgTEfKryOGqHrzCXFwPvNF3gmLO1onPAkcDBfXmIacqa87U
 nEnSwVXy2aTlMOY0YXWWWdI9kDj1LgvfuNh8AVhRT6myegHSUNdbZtA+FcOwcU0KlzYsZKD3Wdmsr
 r/N9PfNQWO1kpv1O9n4NraYOYr1a61IEYVYf2Ij6RQi9ePOTvzWyCS0vg5bKpXdIZgahLiNbLCuV0
 Yk6ONkKZordNxINUEzeGD8Q/WBjWdaAEBKXs9rw9qculOrx+fMcC2LOQUw580ZOtcwAfbTE7VLyMA
 KWGJYagA==;
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefSy-0005em-E1
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 13:22:22 +0000
X-QQ-mid: bizesmtp25t1575984095tfa6wald
Received: from example.com (unknown [112.19.110.248])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Dec 2019 21:21:34 +0800 (CST)
X-QQ-SSF: 0140000000200050E190B00A0000000
X-QQ-FEAT: W55xVYr4DdaRtKeUwD/lA69UHDyW1xY3ifZCwTp9InLy3rU+xC21O7Wezr9up
 rhX8nHSJNoCuen+gUFuWnmNoMc/gyZ984cxIQpMRqG1ziLSLNka168NjCZGRX8Q10Yqelnz
 xU2U/Tbdg4hXJpKgSb3eWaKVCPPemeb6JvXEIrHVxoJW0iSGqOrNZIc/hXxBTrUxOJSX4DO
 b9fslhxaXlw2vjG1JgUkTdVJfjMFxvjTFSPgu/DUHoV8hfHtuZyvIbJDEu7v9Q3sOuvY/xa
 qdfJ6yhbXoIb1B7vB6BRetGsFlFutfId/MHBHJwsl9cIs7YhBB7QEcHYflhVqDNXmxltUD3
 gu7MHbO4tPYRdNx0NY=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Dec 2019 21:21:34 +0800
Message-Id: <20191210132134.28943-1-dengqf6@mail2.sysu.edu.cn>
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
 no trust [54.207.22.56 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.207.22.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for JCG JHR-AC876M
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
 .../ramips/dts/mt7621_jcg_jhr-ac876m.dts      | 147 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  13 ++
 .../mt7621/base-files/etc/board.d/02_network  |   4 +
 3 files changed, 164 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts

diff --git a/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts b/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts
new file mode 100644
index 0000000000..7aa644b124
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts
@@ -0,0 +1,147 @@
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
+		label-mac-device = &wifi2g;
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
+	wifi2g: wifi@0,0 {
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
index bb6e41e06f..904e82e09a 100755
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
@@ -223,6 +224,9 @@ ramips_setup_macs()
 		wan_mac=$(mtd_get_mac_ascii u-boot-env wanaddr)
 		label_mac=$wan_mac
 		;;
+	jcg,jhr-ac876m)
+		wan_mac=$(mtd_get_mac_binary factory 0x4)
+		;;
 	netgear,r6260|\
 	netgear,r6350|\
 	netgear,r6850)
-- 
2.24.0




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
