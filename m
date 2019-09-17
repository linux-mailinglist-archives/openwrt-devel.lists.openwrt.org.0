Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E36B44D6
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Sep 2019 02:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cb6PBYu2+mbqCNn6NTezhHRB52w3fyWkuy+FCruxEvQ=; b=R2ZWt8nFyUIbL8
	BzjG+/AIavpvJHgZWcjcJabS+pw0rrMuUrhxfzMUq5uioYdnXo2z38xqJWbGgSnqFr7dtPA4Qj1Oa
	mKnadJabmGDNb6hBS/JfNmQZ8Y0gCisDIh+h67Tsa7k7j9CuzAjxLVu0YXa45u6h8qzz37iR4mYfT
	ynyurvkTBTDrW0oFI8OShznu5qYjmILyoGCMgQN8mk/0kugdv3Peeg631D/NA9YtcE5TC9V7zDKB9
	YBUwP+Btfh/NwUFEVTBUBodtJqp9CzXZNuX6sx2IGTds09mjYuAi57YmGiJk9gsFsLDsXQ5yjjs2W
	jGUvH1yA7Mtoh+Jv4oLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA1F4-0008PM-U1; Tue, 17 Sep 2019 00:21:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA1Eu-0008P1-Vj
 for openwrt-devel@lists.openwrt.org; Tue, 17 Sep 2019 00:21:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id y21so1059931wmi.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 16 Sep 2019 17:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ScRvzcFBuZkWp68p1+Hk2mw+eDS5qo0EsmHfUAo2hvc=;
 b=mb9Bn3+jtPqVt38m0Sw5n4wPbqyJuaKYZRIg8x5ojXn/I/W8JR6+MipEd8cif+ulcM
 R29/mMPb838k4q3LLufCSAQPIwO1AZv5fJycTWEhlKv2Cvpuezwom/xGbEeoWcwteTgT
 2GeGPoEvIaF3K53VcX5bdCx0pxrro5Iut/XYxudhBTn1ZHj7QZRuByWqc0j8HaSbzmHN
 cla9eOmFbzkQWBNfZhfJVvudfB8HqwVz26DaPvLhB43XKRu+S3f7FRwYR3yrusLAnN5i
 N7ND7qsYbeMwtGO4UdDZ9VPfX96u5CVsVxcD1I8LICCLwaya/pkfKK0+CuqHiin+oKSs
 j/Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ScRvzcFBuZkWp68p1+Hk2mw+eDS5qo0EsmHfUAo2hvc=;
 b=Pw9gtvZ6bRzANZsXruEFdDrNhUEL6b65KaWu83WJNZPny3/Jaq03bjXnB4bl26lUAe
 oHWr19UZ6LGZrz+Y+M2RZ9DMysNT9GLHzU48DVO4KQOJGqvEgeZ8plPokAkB/cxvxGE4
 YJi0rxP0kc5L0yT6hz5dPRSWVBbngwq/Wv7YncYPDeB4VvMNxklbNalNyBq+PDjGXQ1P
 rC4N3Ky4aWjpFAyKFjUoGFfO96U0cxo5thb/14QCOil1simzoeOfdQy0bqNx/bC6/2fg
 CV9SBF3JIH4avO4BhMkTICaza+4/JLvXu4awUxLvclGS2MYL+A+9C25/kjb8aWOCgpU3
 pBkQ==
X-Gm-Message-State: APjAAAWBM0AiPlvwKkNusqHJmIP7JON2P1W9Qym5VfZxbXyQp8n7/VJh
 9QfLAMuq19EfE4P6Jj/GycOwVoFX
X-Google-Smtp-Source: APXvYqw83TYaDX+s8D5JmmHtVTPxZ3yDqgBgBGoZfGBom/jTJuARvh0yqs/xOxFxs4lXQfKqQXziHQ==
X-Received: by 2002:a1c:35c9:: with SMTP id c192mr45488wma.91.1568679662206;
 Mon, 16 Sep 2019 17:21:02 -0700 (PDT)
Received: from mStation.lan
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id y186sm1099371wmb.41.2019.09.16.17.21.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 17:21:01 -0700 (PDT)
From: Enrico Mioso <mrkiko.rs@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Sep 2019 02:20:48 +0200
Message-Id: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_172105_051318_05767A29 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: Filip Moc <lede@moc6.cz>, Piotr Dymacz <pepe2k@gmail.com>,
 Enrico Mioso <mrkiko.rs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This adds support to the ath79 target for the TP-Link MR6400 router.

As per original commit, hardware specifications (v1.0 EU):
- SoC: QCA9531
- Flash: Winbond W25Q64FV (8MiB)
- RAM: EtronTech EM6AB160TSE-5G (64MiB)
- Wireless: SoC platform only (2.4GHz b/g/n, 2x internal antenna)
- Ethernet: 2NIC (3x100M + 1x100M)
- WWAN: TP-LINK LTE MODULE (2x external detachable antenna)
- Power: DC 12V 1A

Flashing instructions:
You can flash via tftp recovery (serve factory image as /mr6400_tp_recovery.bin
on 192.168.0.66/24, connect to any ethernet port and power on device while
holding the reset button). Flashing via OEM web interface does not work.

Working:
- Wi-Fi
- TP-Link LTE module does it's thing (but see Notes)
- reset/rfkill keys
Untested:
- recovery via factory
- leds

Issues for which I need help:
eth1 detects link when infact it's not there, and occasionally causes kernel traces due to tx timeouts.
I promise I'll test untested items as well in final version

Note: as it happened occasionally in ar71xx, during bursty flash activity, LTE module init will fail, with USB enumeration errors.

Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
CC: Filip Moc <lede@moc6.cz>
CC: Piotr Dymacz <pepe2k@gmail.com>
---
 .../ath79/base-files/etc/board.d/01_leds      |   6 +
 .../ath79/base-files/etc/board.d/02_network   |   5 +
 .../ath79/dts/qca9531_tplink_tl-mr6400-v1.dts | 165 ++++++++++++++++++
 target/linux/ath79/image/generic-tp-link.mk   |  10 ++
 4 files changed, 186 insertions(+)
 create mode 100644 target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts

diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds b/target/linux/ath79/base-files/etc/board.d/01_leds
index 778316e450..5728aeb491 100755
--- a/target/linux/ath79/base-files/etc/board.d/01_leds
+++ b/target/linux/ath79/base-files/etc/board.d/01_leds
@@ -130,6 +130,12 @@ tplink,archer-c7-v5)
 	ucidef_set_led_switch "lan3" "LAN3" "tp-link:green:lan3" "switch0" "0x10"
 	ucidef_set_led_switch "lan4" "LAN4" "tp-link:green:lan4" "switch0" "0x20"
 	;;
+tplink,tl-mr6400-v1)
+	ucidef_set_led_netdev "lan" "LAN" "tp-link:white:lan" "eth0"
+	ucidef_set_led_netdev "wan" "WAN" "tp-link:white:wan" "eth1"
+	ucidef_set_led_netdev "4g" "4G" "tp-link:white:4g" "usb0"
+	ucidef_set_led_wlan "wlan" "WLAN" "tp-link:white:wlan" "phy0tpt"
+	;;
 tplink,archer-c2-v3|\
 tplink,tl-wr1043nd-v4|\
 tplink,tl-wr1043n-v5)
diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/target/linux/ath79/base-files/etc/board.d/02_network
index 5b47af8ef7..2b0e1ce400 100755
--- a/target/linux/ath79/base-files/etc/board.d/02_network
+++ b/target/linux/ath79/base-files/etc/board.d/02_network
@@ -56,6 +56,11 @@ ath79_setup_interfaces()
 	winchannel,wb2000)
 		ucidef_set_interface_lan "eth0"
 		;;
+	tplink,tl-mr6400-v1)
+		ucidef_set_interfaces_lan_wan "eth0.1 eth1" "usb0"
+		ucidef_add_switch "switch0" \
+			"0@eth0" "1:lan" "2:lan" "3:lan"
+		;;
 	avm,fritz4020|\
 	pcs,cr3000|\
 	tplink,archer-c58-v1|\
diff --git a/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
new file mode 100644
index 0000000000..4acb1a02a4
--- /dev/null
+++ b/target/linux/ath79/dts/qca9531_tplink_tl-mr6400-v1.dts
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+#include "qca953x.dtsi"
+
+/ {
+	compatible = "tplink,tl-mr6400-v1", "qca,qca9531";
+	model = "TP-Link TL-MR6400 v1.0";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	gpio_leds: leds {
+		compatible = "gpio-leds";
+
+		/* D12 */
+		led_wan: wan {
+			label = "tp-link:white:wan";
+			gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D11 */
+		led_4g: 4g {
+			label = "tp-link:white:4g";
+			gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D5 */
+		led_wps: wps {
+			label = "tp-link:white:wps";
+			gpios = <&gpio 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D3 */
+		led_wlan: wlan {
+			label = "tp-link:white:wlan";
+			gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D2 */
+		led_power: power {
+			label = "tp-link:white:power";
+			gpios = <&gpio 13 GPIO_ACTIVE_HIGH>;
+		};
+
+		/* D4 */
+		led_lan: lan {
+			label = "tp-link:white:lan";
+			gpios = <&gpio 16 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	gpio-export {
+		compatible = "gpio-export";
+		#size-cells = <0>;
+
+		gpio_usb_power {
+			gpio-export,name = "tp-link:power:LTE";
+			gpio-export,output = <0>;
+			gpios = <&gpio 4 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		/* SW2 */
+		reset {
+			label = "Reset button";
+			linux,code = <KEY_RESTART>;
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+			debounce-interval = <60>;
+		};
+
+		/* SW3 */
+		rfkill {
+			label = "RFKill button";
+			linux,code = <KEY_RFKILL>;
+			gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
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
+	num-cs = <1>;
+
+	flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot:	partition@0 {
+				label = "u-boot";
+				reg = <0x000000 0x020000>;
+				read-only;
+			};
+
+			partition@20000 {
+				compatible = "tplink,firmware";
+				label = "firmware";
+				reg = <0x020000 0x7d0000>;
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
+&eth1 {
+	mtd-mac-address = <&uboot 0x1fc00>;
+	mtd-mac-address-increment = <(-1)>;
+};
+
+&eth0 {
+	status = "okay";
+	phy-handle = <&swphy4>;
+
+	mtd-mac-address = <&uboot 0x1fc00>;
+	mtd-mac-address-increment = <1>;
+};
+
+&wmac {
+	status = "okay";
+	mtd-cal-data = <&art 0x1000>;
+	mtd-mac-address = <&uboot 0x1fc00>;
+};
+
+&usb0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	hub_port: port@1 {
+		reg = <1>;
+		#trigger-source-cells = <0>;
+	};
+};
+
+&usb_phy {
+	status = "okay";
+};
diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 5519e9c960..78d7810f29 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -393,6 +393,16 @@ define Device/tplink_tl-wr810n-v1
 endef
 TARGET_DEVICES += tplink_tl-wr810n-v1
 
+define Device/tplink_tl-mr6400-v1
+  $(Device/tplink-8mlzma)
+  ATH_SOC := qca9531
+  DEVICE_MODEL := TL-MR6400
+  DEVICE_VARIANT := v1
+  TPLINK_HWID := 0x64000001
+  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-net kmod-usb-net-rndis kmod-usb-serial kmod-usb-serial-option adb
+endef
+TARGET_DEVICES += tplink_tl-mr6400-v1
+
 define Device/tplink_tl-wr810n-v2
   $(Device/tplink-8mlzma)
   ATH_SOC := qca9533
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
