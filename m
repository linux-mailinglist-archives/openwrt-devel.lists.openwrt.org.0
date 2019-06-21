Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A874EC87
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 17:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LyOZROtPWzP/EIyqwPZ9ck9Nk1d8nkgcSrJTTzj/IV0=; b=bhLpQ+254l1uza
	uZ+eY+eo5PEJlVlWdHlJzHXtFHK4OavYUVhvu0eZVqA6pD1FIiFOIAJD980J/p24Tt7jRErU2uYiT
	rS9I5iKMYV+8Kov1eqN+DtIXzuL9M0gFa99drZ1q9FtIT/Vj+HwBlE/fFJTkBxAtSLpAQBo3JbYbR
	0ExRyVSZ3wTyZezpUywqup2zv2T9SQFg/UOifI55t8NR3vP7XFZiha8vEf3iGqMlno6Hr70AExB2H
	R/Sv7wCNLVe+e2BHXiXAbconcvGeTxUO7ggDq2fqO3/7ubB9XeRtGgx6e8DjckV5WSMtymre2Btjx
	/kVUEYs/mjJK/jI+ltvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLoX-0002Ww-FO; Fri, 21 Jun 2019 15:50:57 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLoL-0002W4-3A
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 15:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Cc:To:From;
 bh=du/0OjQvJAfp7Glaenn/RS+nQAz6l5DK7GqRVQkkTVE=; 
 b=heQosXW9pd9TFbPdC/gdhDvnUC3hTQ7muf11DUtWyut0r+5s0gRp3jTz/X8BpVQBpgRVN1p51r9IRmfES9DU0C0i1FHelFJ0apThbserh8Mi1xlwmREjfwS7EjtvMvjLA9zar1fyuBcHPQ8lKeVbnRlAdNoCs/J2/85W25XYtPU=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 21 Jun 2019 17:50:23 +0200
Message-Id: <20190621155023.16220-1-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:d01a:25a3:67be:70e9
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1heLoA-0000l0-Mj
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:d01a:25a3:67be:70e9]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1heLoA-0000l0-Mj; Fri, 21 Jun 2019 17:50:35 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_085045_609625_C88F4C7C 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 .../ramips/base-files/etc/board.d/02_network  |   5 +
 target/linux/ramips/base-files/lib/ramips.sh  |   3 +
 target/linux/ramips/dts/AP7621-001.dts        | 157 ++++++++++++++++++
 target/linux/ramips/image/mt7621.mk           |  12 ++
 target/linux/ramips/mt7621/config-4.14        |   1 +
 5 files changed, 178 insertions(+)
 create mode 100644 target/linux/ramips/dts/AP7621-001.dts

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 52204eacbf..ee0c23eeb5 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -39,6 +39,11 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan:5" "6@eth0"
 		;;
+	ap7621-001)
+		ucidef_set_interfaces_lan_wan "eth0.1" "eth0.2"
+		ucidef_set_interfaces relay ifname "'wwan' 'lan'" protocol relay
+		ucidef_add_switch "switch0" "0:lan" "4:wan" "6@eth0"
+		;;
 	3g150b|\
 	3g300m|\
 	a5-v11|\
diff --git a/target/linux/ramips/base-files/lib/ramips.sh b/target/linux/ramips/base-files/lib/ramips.sh
index 093303892c..2350e88354 100755
--- a/target/linux/ramips/base-files/lib/ramips.sh
+++ b/target/linux/ramips/base-files/lib/ramips.sh
@@ -46,6 +46,9 @@ ramips_board_detect() {
 	*"ALL5003")
 		name="all5003"
 		;;
+	*"AP7621-001")
+		name="ap7621-001"
+		;;
 	*"AR670W")
 		name="ar670w"
 		;;
diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
new file mode 100644
index 0000000000..587c26457e
--- /dev/null
+++ b/target/linux/ramips/dts/AP7621-001.dts
@@ -0,0 +1,157 @@
+/dts-v1/;
+#include "mt7621.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "asiarf,ap7621-001", "mediatek,mt7621-soc";
+	model = "AP7621-001";
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
+	palmbus: palmbus@1E000000 {
+		i2c@900 {
+			status = "okay";
+		};
+	};
+
+	gpio-keys-polled {
+		compatible = "gpio-keys-polled";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		poll-interval = <20>;
+
+		reset {
+			label = "reset";
+			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		wlan1 {
+			label = "ap7621-001:orange:wlan1";
+			gpios = <&gpio0 11 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
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
+        status = "okay";
+
+        m25p80@0 {
+                #address-cells = <1>;
+                #size-cells = <1>;
+                compatible = "jedec,spi-nor";
+                reg = <0>;
+                spi-max-frequency = <10000000>;
+                m25p,chunked-io = <32>;
+
+                partition@0 {
+                        label = "u-boot";
+                        reg = <0x0 0x30000>;
+                        read-only;
+                };
+
+//              partition@30000 {
+//                      label = "u-boot-env";
+//                      reg = <0x30000 0x10000>;
+//              };
+
+                partition@30000 {
+                        label = "u-boot-env";
+                        reg = <0x30000 0x2000>;
+                };
+
+                partition@32000 {
+                        label = "2860";
+                        reg = <0x32000 0x4000>;
+                };
+
+                partition@36000 {
+                        label = "rtdev";
+                        reg = <0x36000 0x2000>;
+                };
+
+                partition@38000 {
+                        label = "Reserve";
+                        reg = <0x38000 0x8000>;
+                };
+
+                factory: partition@40000 {
+                        label = "factory";
+                        reg = <0x40000 0x10000>;
+                        read-only;
+                };
+
+                firmware: partition@50000 {
+                        label = "firmware";
+                        reg = <0x50000 0xfa0000>;
+                };
+
+                partition@ff0000 {
+                        label = "nvram";
+                        reg = <0xff0000 0x10000>;
+                };
+        };
+};
+
+&pcie {
+	status = "okay";
+
+	pcie0 {
+		wifi@14c3,7662 {
+			compatible = "pci14c3,7662";
+			reg = <0x0000 0 0 0 0>;
+			mediatek,mtd-eeprom = <&factory 0x0000>;
+//			ieee80211-freq-limit = <2400000 2500000>;
+		};
+	};
+
+	pcie1 {
+		wifi@14c3,7662 {
+			compatible = "pci14c3,7662";
+			reg = <0x0000 0 0 0 0>;
+			mediatek,mtd-eeprom = <&factory 0x8000>;
+//			ieee80211-freq-limit = <5000000 6000000>;
+		};
+	};
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
+			ralink,group = "wdt", "jtag" ;
+			ralink,function = "gpio";
+		};
+	};
+};
+
diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 2eb7feb5bf..29e4111ce8 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -640,3 +640,15 @@ define Device/zbt-wg3526-32M
 	kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic
 endef
 TARGET_DEVICES += zbt-wg3526-32M
+
+define Device/ap7621-001
+  DTS := AP7621-001
+  IMAGE_SIZE := $(ralink_default_fw_size_16M)
+  SUPPORTED_DEVICES += ap7621-001
+  DEVICE_TITLE := AsiaRF AP7621-001
+  DEVICE_PACKAGES := \
+	kmod-ata-core kmod-ata-ahci kmod-sdhci-mt7620 kmod-mt7603 kmod-mt76x2 \
+	kmod-usb3 kmod-usb-ledtrig-usbport
+endef
+TARGET_DEVICES += ap7621-001
+
diff --git a/target/linux/ramips/mt7621/config-4.14 b/target/linux/ramips/mt7621/config-4.14
index b279c69879..3e18fc162e 100644
--- a/target/linux/ramips/mt7621/config-4.14
+++ b/target/linux/ramips/mt7621/config-4.14
@@ -192,6 +192,7 @@ CONFIG_MTD_SPLIT_SEAMA_FW=y
 CONFIG_MTD_SPLIT_TPLINK_FW=y
 CONFIG_MTD_SPLIT_TRX_FW=y
 CONFIG_MTD_SPLIT_UIMAGE_FW=y
+CONFIG_MTD_SPLIT_FIRMWARE=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_BEB_LIMIT=20
 CONFIG_MTD_UBI_BLOCK=y
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
