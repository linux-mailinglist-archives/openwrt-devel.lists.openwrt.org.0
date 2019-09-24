Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158B8BD107
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 19:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=djKj0c//T3HGYdYKwaALMyLAIB7ly0+YIkZ+VdEn3ps=; b=aQDTrmkSbrAs5/
	F+6QVqvaN3hvNwIUS2P5X6ojE8wpe0aHjmGuQj3nUsaRz6cIYohxSVB9EEyRVGD4L0QeN9QFQ/kWe
	r8coqjynCgDWRDemKdT79bq47YyWx1q1ayDxGCC6b6MjDhBGnUTRocSFai80GPwCz4UuYxuqw6XHT
	svI0VmydwXn7n0qfdpNnj1U1FsCxGlY6RBvxUdubyfuv+zHroXiIIJcKkxo7Kgrp5iLH2BaS123Qo
	2cIuUwxGjLxV6vLstIw2MTIIXpMmrH5YSfBr4sXX1D7JpBLqGZbsBAQ3WY0xAzNt0EanvCObI3JkK
	0TzewzUIEYIhQp/b/QPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCp14-0004gT-7a; Tue, 24 Sep 2019 17:54:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCp0L-0004fL-Iu
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 17:53:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id f22so1031852wmc.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 10:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DmBpLn2WqeTBQPqjXF30KcNUHejOIJ8kFNSlNftDrJI=;
 b=suh71PfY6bfsZ7YCKKWSu1qHERvM3mY1Lz4RsBzY0O18hxXQEU6AsxEcMY+k7xi7QB
 Qp2/U8bELOvg+IARajbABcx9cBM5aWh+Ozbx3fRf0FDvI8Y8Qu/jtqMbZIHGZOnDZgJE
 Rz2ctZJhKhGZICze1TaXjd7neudw56E/+/VzuSwbcEQU16N19ouELzrtD1G3FF+BBG1B
 W4AxdGAJ8+duUfBVcjYPDTAOXn9PwV/DEjJyDhTFp8e1q5PzbJgQ5lTE+YY52WFXwuJr
 O4ofpHjqga5b74xU3o2LqgsR+nNcnMFKgBBmiuMWqzp9D6mzuhWvZoFhSbJjPJ/W5gIv
 fATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DmBpLn2WqeTBQPqjXF30KcNUHejOIJ8kFNSlNftDrJI=;
 b=WfkvmZRw++RwYg9bqoMH44nr7D5aiz6eZhOi9Zda6uL7rkUxwXOi8BYfd7GIpUuENx
 TEWE//NBv9Q5kZ95fC+VcQgmNsWJodqFJQ3VKpIonUO5OQRFyuWH30HP1/Dy7sBEi8zr
 YtpJiFaONNiOp8AM65q2XjNdVPwKs2NDo74VtmHbXNgnQFuQ7K6+kK7sahO6I3xMx1Cu
 UjmAetL+zZ1RP356h/Z2SlVMhc/0c9Hg2q+/AsNAJ5Kv7NWUzu19Wo9M5+rBLuKC6TNj
 YrsFcbqqgN3hdEypp4KF5rDj6QL9NiMjpEbi2tm7VThHgvO+cvC4elmr9C8zss9QKWfs
 vS9g==
X-Gm-Message-State: APjAAAVRrriTQUlPXaVL+vrGXuKxOtSAy2uFLI+CUnmJWvq7OdNb6Px4
 cJOLMeceS2YoTIZqkKymb9iquAqWcR8=
X-Google-Smtp-Source: APXvYqwWVcl7KXzj2PYafZR2GixJW5qE+DvHxCAMZMGZ+RXtCY8t9tT9RIgXlivaEWlp2x43OAz9bA==
X-Received: by 2002:a1c:98c8:: with SMTP id a191mr1400198wme.17.1569347614097; 
 Tue, 24 Sep 2019 10:53:34 -0700 (PDT)
Received: from localhost.localdomain (catv-80-98-151-242.catv.broadband.hu.
 [80.98.151.242])
 by smtp.gmail.com with ESMTPSA id o9sm4578159wrh.46.2019.09.24.10.53.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 10:53:33 -0700 (PDT)
From: vargagab@gmail.com
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Sep 2019 19:52:56 +0200
Message-Id: <20190924175256.3845-1-vargagab@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_105337_864286_253A6C23 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vargagab[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Asus RT-AC65P
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
Cc: ynezz@true.cz, gch981213@gmail.com, Gabor Varga <vargagab@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Gabor Varga <vargagab@gmail.com>

The Asus RT-AC65P router is identical with the RT-AC85P, but better to make separate images for it.

On both routers the installation can be done also via SSH:

Note: The user/password for SSH is identical with the one used in the
Web-interface.

1. Complete the initial setup wizard.
2. Activate SSH under "Administration" -> "System".
3. Transfer the OpenWrt factory image via scp:
 > scp openwrt-ramips-mt7621-asus_rt-ac65p-squashfs-factory.bin admin@192.168.50.1:/tmp
4. Connect via SSH to the router.
 > ssh admin@192.168.50.1
5. Write the OpenWrt image to flash.
 > mtd-write -i
/tmp/openwrt-ramips-mt7621-asus_rt-ac65p-squashfs-factory.bin -d linux
6. Reboot the router
 > reboot

Signed-off-by: Gabor Varga <vargagab@gmail.com>
---
 .../ramips/base-files/etc/board.d/02_network  |   2 +
 .../ramips/base-files/lib/upgrade/platform.sh |   2 +
 .../linux/ramips/dts/mt7621_asus_rt-ac65p.dts |   9 +
 .../linux/ramips/dts/mt7621_asus_rt-ac85p.dts | 155 +----------------
 .../ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi   | 159 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  16 ++
 6 files changed, 189 insertions(+), 154 deletions(-)
 create mode 100644 target/linux/ramips/dts/mt7621_asus_rt-ac65p.dts
 create mode 100644 target/linux/ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 63644331e5..f66b5742ec 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -233,6 +233,7 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan" "1:wan" "6@eth0"
 		;;
+	asus,rt-ac65p|\
 	asus,rt-ac85p|\
 	dlink,dir-860l-b1|\
 	elecom,wrc-1167ghbk2-s|\
@@ -561,6 +562,7 @@ ramips_setup_macs()
 	zbtlink,zbt-we3526)
 		wan_mac=$(mtd_get_mac_binary factory 0xe006)
 		;;
+	asus,rt-ac65p|\
 	asus,rt-ac85p)
 		wan_mac=$(mtd_get_mac_ascii u-boot-env et1macaddr)
 		;;
diff --git a/target/linux/ramips/base-files/lib/upgrade/platform.sh b/target/linux/ramips/base-files/lib/upgrade/platform.sh
index a62ded4b9d..03e994dfa4 100755
--- a/target/linux/ramips/base-files/lib/upgrade/platform.sh
+++ b/target/linux/ramips/base-files/lib/upgrade/platform.sh
@@ -18,6 +18,7 @@ platform_do_upgrade() {
 	mikrotik,rbm33g)
 		[ -z "$(rootfs_type)" ] && mtd erase firmware
 		;;
+	asus,rt-ac65p|\
 	asus,rt-ac85p)
 		echo "Backing up firmware"
 		dd if=/dev/mtd4 bs=1024 count=4096  > /tmp/backup_firmware.bin
@@ -27,6 +28,7 @@ platform_do_upgrade() {
 	esac
 
 	case "$board" in
+	asus,rt-ac65p|\
 	asus,rt-ac85p|\
 	hiwifi,hc5962|\
 	netgear,r6220|\
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac65p.dts b/target/linux/ramips/dts/mt7621_asus_rt-ac65p.dts
new file mode 100644
index 0000000000..d952221b48
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac65p.dts
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621_asus_rt-ac[68]5p.dtsi"
+
+/ {
+	compatible = "asus,rt-ac65p", "mediatek,mt7621-soc";
+	model = "ASUS RT-AC65P";
+};
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
index 3ddbfcfb7c..b24bbc8d06 100644
--- a/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac85p.dts
@@ -1,162 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
 /dts-v1/;
 
-#include "mt7621.dtsi"
-
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/input/input.h>
+#include "mt7621_asus_rt-ac[68]5p.dtsi"
 
 / {
 	compatible = "asus,rt-ac85p", "mediatek,mt7621-soc";
 	model = "ASUS RT-AC85P";
-
-	aliases {
-		led-boot = &led_power;
-		led-failsafe = &led_power;
-		led-running = &led_power;
-		led-upgrade = &led_power;
-	};
-
-	chosen {
-		bootargs = "console=ttyS0,57600";
-	};
-
-	palmbus: palmbus@1E000000 {
-		i2c@900 {
-			status = "okay";
-		};
-	};
-
-	keys {
-		compatible = "gpio-keys";
-
-		reset {
-			label = "reset";
-			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_RESTART>;
-		};
-
-		wps {
-			label = "wps";
-			gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
-			linux,code = <KEY_WPS_BUTTON>;
-		};
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		led_power: power {
-			label = "rt-ac85p:blue:power";
-			gpios = <&gpio0 4 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy0tpt";
-		};
-		wlan2g {
-			label = "rt-ac85p:blue:wlan2g";
-			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy0radio";
-		};
-
-		wlan5g {
-			label = "rt-ac85p:blue:wlan5g";
-			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
-			linux,default-trigger = "phy1radio";
-		};
-	};
-};
-
-&sdhci {
-	status = "okay";
-};
-
-&nand {
-	status = "okay";
-
-	partitions {
-		compatible = "fixed-partitions";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		partition@0 {
-			label = "u-boot";
-			reg = <0x0 0xe0000>;
-			read-only;
-		};
-
-		partition@e0000 {
-			label = "u-boot-env";
-			reg = <0xe0000 0x100000>;
-			read-only;
-		};
-
-		factory: partition@1e0000 {
-			label = "factory";
-			reg = <0x1e0000 0x100000>;
-			read-only;
-		};
-
-		factory2: partition@2e0000 {
-			label = "factory2";
-			reg = <0x2e0000 0x100000>;
-			read-only;
-		};
-
-		partition@3e0000 {
-			label = "kernel";
-			reg = <0x3e0000 0x400000>;
-		};
-
-		partition@7e0000 {
-			label = "ubi";
-			reg = <0x7e0000 0x2e00000>;
-		};
-
-		partition@35e0000 {
-			label = "firmware2";
-			reg = <0x35e0000 0x3200000>;
-		};
-	};
-};
-
-&pcie {
-	status = "okay";
-};
-
-&pcie0 {
-	wifi0: wifi@0,0 {
-		compatible = "pci14c3,7615";
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&factory 0x0000>;
-		ieee80211-freq-limit = <2400000 2500000>;
-	};
-};
-
-&pcie1 {
-	wifi1: wifi@0,0 {
-		compatible = "pci14c3,7615";
-		reg = <0x0000 0 0 0 0>;
-		mediatek,mtd-eeprom = <&factory 0x8000>;
-		ieee80211-freq-limit = <5000000 6000000>;
-	};
-};
-
-&ethernet {
-	mtd-mac-address = <&factory 0xe000>;
-	mediatek,portmap = "wllll";
-	port@5 {
-		status = "disabled";
-	};
-};
-
-&i2c {
-	status = "disabled";
-};
-
-&pinctrl {
-	state_default: pinctrl0 {
-		gpio {
-			ralink,group = "uart2", "uart3", "i2c";
-			ralink,function = "gpio";
-		};
-	};
 };
diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi b/target/linux/ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi
new file mode 100644
index 0000000000..d0f8a4b3ca
--- /dev/null
+++ b/target/linux/ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	palmbus: palmbus@1E000000 {
+		i2c@900 {
+			status = "okay";
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+
+		wps {
+			label = "wps";
+			gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_WPS_BUTTON>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_power: power {
+			label = "rt-ac85p:blue:power";
+			gpios = <&gpio0 4 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tpt";
+		};
+		wlan2g {
+			label = "rt-ac85p:blue:wlan2g";
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0radio";
+		};
+
+		wlan5g {
+			label = "rt-ac85p:blue:wlan5g";
+			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy1radio";
+		};
+	};
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&nand {
+	status = "okay";
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "u-boot";
+			reg = <0x0 0xe0000>;
+			read-only;
+		};
+
+		partition@e0000 {
+			label = "u-boot-env";
+			reg = <0xe0000 0x100000>;
+			read-only;
+		};
+
+		factory: partition@1e0000 {
+			label = "factory";
+			reg = <0x1e0000 0x100000>;
+			read-only;
+		};
+
+		factory2: partition@2e0000 {
+			label = "factory2";
+			reg = <0x2e0000 0x100000>;
+			read-only;
+		};
+
+		partition@3e0000 {
+			label = "kernel";
+			reg = <0x3e0000 0x400000>;
+		};
+
+		partition@7e0000 {
+			label = "ubi";
+			reg = <0x7e0000 0x2e00000>;
+		};
+
+		partition@35e0000 {
+			label = "firmware2";
+			reg = <0x35e0000 0x3200000>;
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi0: wifi@0,0 {
+		compatible = "pci14c3,7615";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x0000>;
+		ieee80211-freq-limit = <2400000 2500000>;
+	};
+};
+
+&pcie1 {
+	wifi1: wifi@0,0 {
+		compatible = "pci14c3,7615";
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+	};
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0xe000>;
+	mediatek,portmap = "wllll";
+	port@5 {
+		status = "disabled";
+	};
+};
+
+&i2c {
+	status = "disabled";
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "uart2", "uart3", "i2c";
+			ralink,function = "gpio";
+		};
+	};
+};
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index f098976dfc..56d29a8bf1 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -144,6 +144,22 @@ define Device/asus_rt-ac57u
 endef
 TARGET_DEVICES += asus_rt-ac57u
 
+define Device/asus_rt-ac65p
+  MTK_SOC := mt7621
+  DEVICE_VENDOR := ASUS
+  DEVICE_MODEL := RT-AC65P
+  IMAGE_SIZE := 51200k
+  UBINIZE_OPTS := -E 5
+  BLOCKSIZE := 128k
+  PAGESIZE := 2048
+  KERNEL_SIZE := 4096k
+  IMAGES += factory.bin
+  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
+  IMAGE/factory.bin := append-kernel | pad-to $$(KERNEL_SIZE) | append-ubi | check-size $$$$(IMAGE_SIZE)
+  DEVICE_PACKAGES := kmod-usb3 kmod-mt7615e wpad-basic uboot-envtools
+endef
+TARGET_DEVICES += asus_rt-ac65p
+
 define Device/asus_rt-ac85p
   MTK_SOC := mt7621
   DEVICE_VENDOR := ASUS
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
