Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B639D52751
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 10:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=juVxb0Z4yOj+6UUyWibGjI4apj4jlFRnPYJoV7toyNI=; b=c83YZRLbDCkDGf
	bbEPMr1Mu52bNQWJLjWz1gyJjQE8rOAurQ2ZjRUBIC58lF9LyzbE6u1+XcJXzLTmAH8urOSZ57lzH
	sQJzGjQbq4lJ9v7OzHwOYA/7Zk2OVP2eJp96aIR8QFKHuGRHXedsryYL9fu/DJgpvKmTtKTKD1nwv
	89wctc1Wkv3xPrWMNsKVi9O2K3MR+xhn/2nH3lBPscOKIkLLN7F/VUEDai59MvAHbBuxylSNUvA+9
	CkCvUptBCOSE0xo42ly/xlZNjdD1Ho95rO8Dkxqu5Zxia7Ys7eA0NHyzCmgyB0xsuwdY5vOTO/nwz
	14jEAXruhCXksVHoyxUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhHn-00028s-U5; Tue, 25 Jun 2019 08:58:44 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhHd-00028Q-1P
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 08:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=NHoDmppRcV6WwskmumTFIUgAaoeDxGSOr+T/RYWgNL0=; 
 b=QIvbyTFo5B8p/Zk0kOqeWmvHM0tE0Uq8gHMxzKaSgQQav9s5Ar1FLY18Mt9G9o03I/DKQM5hkHCOH0J2XQZ2i+kMaSAtTRVzezaKMEvo/HAeaFooUeslPdMNlYWyGpKUTsWjtbVdyi9qFEKiy8U1nOX2rQkV35wnyNAx/Myhjwg=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 25 Jun 2019 10:58:25 +0200
Message-Id: <20190625085825.17620-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:563:31a4:bd89:e4a6
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1hfhHf-0003Rs-U4
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:563:31a4:bd89:e4a6]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1hfhHf-0003Rs-U4; Tue, 25 Jun 2019 10:58:36 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_015833_376129_81CB528D 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

    SoC:    Mediatek MT7621A
    CPU:    4x 880Mhz
    Cache:  32 KB I-Cache and 32 KB D-Cach
            256 KB L2 Cache (shared by Dual-Core)
    RAM:    DDR3 512MB 16bits BUS
    FLASH:  16MB
    Switch: Mediatek Gigabit Switch (1 x LAN, 1 x WAN)
    USB:    1x 3.0
    PCI:    3x Mini PCIe
    GPS:    Quectel L70B
    BTN:    Reset
    LED:    - Power
            - Ethernet
            - Wifi
            - USB
    UART:  UART is present as Pads with throughholes on the PCB.
	   They are located on left side.
           3.3V - RX - GND - TX / 57600-8N1
           3.3V is the square pad

    Installation
    ------------
    The stock image is a modified openwrt and can be overflashed via sysupgrade -F

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 .../ramips/base-files/etc/board.d/02_network  |   3 +
 target/linux/ramips/dts/AP7621-001.dts        | 128 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  10 ++
 3 files changed, 141 insertions(+)
 create mode 100644 target/linux/ramips/dts/AP7621-001.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 52204eacbf..ffd1689263 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -39,6 +39,9 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
 		;;
+	asiarf,ap7621-001)
+		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
+		;;
 	3g150b|\
 	3g300m|\
 	a5-v11|\
diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
new file mode 100644
index 0000000000..497c196fa7
--- /dev/null
+++ b/target/linux/ramips/dts/AP7621-001.dts
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "asiarf,ap7621-001", "mediatek,mt7621-soc";
+	model = "AsiaRF AP7621-001";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x1c000000>, <0x20000000 0x4000000>;
+	};
+
+	chosen {
+		bootargs = "console=ttyS0,57600";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		wlan1 {
+			label = "ap7621-001:orange:wlan1";
+			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan0 {
+			label = "ap7621-001:orange:wlan0";
+			gpios = <&gpio0 12 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&sdhci {
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <40000000>;
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
+				reg = <0x30000 0x2000>;
+			};
+
+			partition@32000 {
+				label = "2860";
+				reg = <0x32000 0x4000>;
+			};
+
+			partition@36000 {
+				label = "rtdev";
+				reg = <0x36000 0x2000>;
+			};
+
+			partition@38000 {
+				label = "Reserve";
+				reg = <0x38000 0x8000>;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x10000>;
+				read-only;
+			};
+
+			firmware: partition@50000 {
+				label = "firmware";
+				reg = <0x50000 0xfa0000>;
+				compatible = "denx,uimage";
+			};
+
+			partition@ff0000 {
+				label = "nvram";
+				reg = <0xff0000 0x10000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&pcie {
+	status = "okay";
+};
+
+&ethernet {
+	mtd-mac-address = <&factory 0xe000>;
+	mediatek,portmap = "llllw";
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "wdt", "jtag";
+			ralink,function = "gpio";
+		};
+	};
+};
+
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 2eb7feb5bf..c1e445f84c 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -640,3 +640,13 @@ define Device/zbt-wg3526-32M
 	kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
 endef
 TARGET_DEVICES += zbt-wg3526-32M
+
+define Device/asiarf_ap7621-001
+  DTS := AP7621-001
+  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  DEVICE_TITLE := AsiaRF AP7621-001
+  DEVICE_PACKAGES := \
+	kmod-sdhci-mt7620 kmod-mt76x2 kmod-usb3
+endef
+TARGET_DEVICES += asiarf_ap7621-001
+
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
