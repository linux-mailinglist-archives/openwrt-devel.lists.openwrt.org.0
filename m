Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3772411E83D
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 17:26:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5eJByDAVckt0W7jUkuGarYBQRNJ86eQCsamQbI4ymv0=; b=lB/70v9LVOcu/u
	bs6tgwx+kutUjlaYWzILxbBEHpmTF8FQasHEOpMKzLbpU8g04TPz3rHKpjHEbvaBPlCZPVwlWaGQG
	V9iZzFqkziASUfRG89kutWec32eO019ujzxlwhz5pLF3zu/xsiwz2Ilk6uyTPRiUJx5Q9sVp9SjrC
	D/BIVXWXk0iy0Rcb6u9yIH1AaadPsgkOIQwoNTuxaO+MxSrXQd8llzATYIXIeKQ+fQyfOxvyZQr8U
	YDNfGNx+/iXwLd/1WDOYkI4ZcFdMRNJ7xKZS+1pN9qrx1Bza+DpD7hxeuTAmcNmBw6JrfPKJwoq+N
	Gj1kAnQ/l/lr1TERC4XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnm8-0007wt-Tr; Fri, 13 Dec 2019 16:26:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnlY-0007YP-Jw
 for openwrt-devel@bombadil.infradead.org; Fri, 13 Dec 2019 16:26:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eV9WrsXIJUZ3mPElwwN5Ik6jkznsRsYOr7CJTW3MmAA=; b=Z2cYhBnEA50BU1NVRJJmAHSm6K
 lANcoqOTrn4bIBLQ4oTu/ved4h6sQCHDLCSHMjNDHafGjR8R7xCL3Yofy4XAEUgAlf2McyR4EgOSl
 ItzG645cRscrqjaDiCdiv8X1MYJdoCstP0YLCyyGLFWv2F2CcxEVSRfcAj22/2JZWg1t6CNqCGUXe
 4s162og90STU3MasPTC6ox92wjOiPg7IseOF9qoY2KK4636qNrCbbrmGJvfznOKsNcouo8ABPwgf7
 Idyac3G0bEwsPpyRCKrEaHyEVGwg6f+/IRw59WUKkpiwnA6dBvg9gQXSAcIoPGV9ErFcV+hhAh/P4
 7TzJLD9w==;
Received: from smtpbgsg3.qq.com ([54.179.177.220])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnlQ-0007Kv-Qt
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 16:26:06 +0000
X-QQ-mid: bizesmtp29t1576254260tahdirlg
Received: from example.com (unknown [112.19.108.4])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 00:24:20 +0800 (CST)
X-QQ-SSF: 0140000000200060E2F0B00A0000000
X-QQ-FEAT: T9Tg8WUtjPgwMaMH6vYv3JhOgZH6CTw6W2U4t34POpKsTC6l1Peay8F4yuwsK
 4A+0x1yJHMo3TnuN8/TMSaADoAnN5vKLrMaVDhMYeCZwMm7LXhojjPjtAaIUVC1jI2nbrW0
 eV16Gxvi4Q96qbE5dtH8YLkwS8nIc2FeDvy2ar0MCifAxBfx2StoovFk3rDWGb3p695V0s0
 8EOV0brkeWuAsIDKmdvwYUh2eKxJpW+DP4EUc56LN/T4EpctKuf/mDAbad/1D62F83Lnsie
 /xqeG86fGtlb0l4D9vA+Kw1xWUEIiybrdJOxQ77Yr+mpAIGL8rlR0yGPE=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Dec 2019 00:24:19 +0800
Message-Id: <20191213162419.11469-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.179.177.220 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.179.177.220 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

MAC addresses map:
  0x0004  *:1c  wlan2g/wan/label
  0x8004  *:20  wlan5g
  0xe000  *:1b  lan
  0xe006  *:1a  not used in stock fw

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
Changes since v2:
	Flattened pinctrl node
	Add MAC addresses map in commit message
	Use kilobytes as JCG_MAXSIZE unit
---
 .../ramips/dts/mt7621_jcg_jhr-ac876m.dts      | 144 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  13 ++
 .../mt7621/base-files/etc/board.d/02_network  |   5 +
 3 files changed, 162 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts

diff --git a/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts b/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts
new file mode 100644
index 0000000000..10766c0649
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_jcg_jhr-ac876m.dts
@@ -0,0 +1,144 @@
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
+&state_default {
+	gpio {
+		ralink,group = "i2c", "uart3", "jtag", "wdt";
+		ralink,function = "gpio";
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 0b2b74800a..6120ad8ec9 100644
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
+  JCG_MAXSIZE := 16064k
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
index c9e3cbb984..ed2c5bb185 100755
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
@@ -218,6 +219,10 @@ ramips_setup_macs()
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
2.24.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
