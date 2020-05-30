Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495421E90E1
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 13:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XkMpQkV/DazDJRp+XXhj7zX0WqzZGr2KaQQrYZEXtoQ=; b=J6fezFK+nH/M5P
	XkOa0yETG7WB733suYE4PPLfGZZRfZE+NXg+R+USFvGV/W82zKTq34EKw4JLRECfoOZ2y6u4jOIJC
	P8TTag8ENP1oVSNOV+4vqOrfV/90eBz/BdE7hiIhgkpg+FT3IeX6FYu4evSbhqGGYpvHlPVEMtAQv
	KQPrSohkwHSUNWJ1Q1o3lIK5drFrBBFA+0q4/yN9xcRwDYLlc0a1OfyOleToOz3K+XxnOez7Aeq4r
	MUA+fNL8GKC88Nr6Z00hX8ewFBN7O9klMUgZsfr3hqPmW83dXuIQYKraVTng5UwHzomU7hCignauK
	/PO4ClTev2UB414EjIiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jezoY-00071o-Dl; Sat, 30 May 2020 11:38:10 +0000
Received: from au-smtp-delivery-115.mimecast.com ([180.189.28.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jezoQ-00070O-2m
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 11:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uon.edu.au;
 s=mimecast20191001; t=1590838670;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=mf8e1hOaw4CGyQYE+3kBm2nCPWWSL3oFtC8xbv/Xxww=;
 b=X7kkPXnErIApxewu066IQ8QVQCrUB6dTyRiNIks3uzake1mZcivFXAAgD2COKiEudk7JPU
 yIqOnWwajh2eMESjiqZ7+IZFVPNvIHUc1E0iDJhgP0lp/hQcm6YAgBcIu4mSN1rwsj+QrX
 qbuGORQzavNfQ+YVWqP1KY4b8Aazjs8=
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2171.outbound.protection.outlook.com [104.47.55.171])
 (Using TLS) by relay.mimecast.com with ESMTP id
 au-mta-25-1ll4CFFgOfip_k7zhneI5g-1; Sat, 30 May 2020 21:37:42 +1000
X-MC-Unique: 1ll4CFFgOfip_k7zhneI5g-1
Received: from BN8PR19MB2979.namprd19.prod.outlook.com (2603:10b6:408:6a::17)
 by BN8PR19MB2482.namprd19.prod.outlook.com (2603:10b6:408:9a::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sat, 30 May
 2020 11:37:36 +0000
Received: from BN8PR19MB2979.namprd19.prod.outlook.com
 ([fe80::6129:ca97:21cd:62a5]) by BN8PR19MB2979.namprd19.prod.outlook.com
 ([fe80::6129:ca97:21cd:62a5%5]) with mapi id 15.20.3045.018; Sat, 30 May 2020
 11:37:36 +0000
From: Evan Jobling <Evan.Jobling@uon.edu.au>
To: "mail@adrianschmutzler.de" <mail@adrianschmutzler.de>,
 "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [OpenWrt-Devel] add support for netgear R6020
Thread-Index: AQHWNnFAj6VjDQIKwkildPWxnvKPig==
Date: Sat, 30 May 2020 11:37:35 +0000
Message-ID: <BN8PR19MB29794D50F61BE3BC66C40F54B78C0@BN8PR19MB2979.namprd19.prod.outlook.com>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2001:4479:200:1101:f231:152c:1941:c2f3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b64f66f9-07d3-41a0-5639-08d8048dd995
x-ms-traffictypediagnostic: BN8PR19MB2482:
x-microsoft-antispam-prvs: <BN8PR19MB248221238F28A9A3ECC4D9D5B78C0@BN8PR19MB2482.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ThnCUHOzYoXSE60iybmXDE4W3GjT9H/eKSQKL46q4X/qMa6gVIYNl1mCQKvV51F9+Uz3YTGH3DldXFHR3V+JyUqa+iVWPGzMgo1oSvJ84sFKYT1jEVMDD+3CG3JHUe21cPujug1k7GSaGjB8tlhxMlkpv5BF39miicEsA959lOpnhbooqiOxCceM1xigZWoW/vF4emoZWt2lI26xytBSna+FwS7LJAKxRRrC49SFPvQn4g6pLxqXPUN5tMVkC/MI2jyZ5RzVy8TMd55SJ00ReNjjRpnZxs6npF080viv92XV0NLDVvEbfcCy810lK/5Y/nHyNmIxOfkDt7Nhmjpg43xkyh4zgUgj5gTwTw7wPYrX0Ee00y0Sb60NaREewVS0MEIOSUWGA2AB1r1AoISaN+fR1j+XWZSAkdgIbUCOEy9OPCyzMPIOU4OijNrknPtk7tcL8SVBZTCvjEDTjjMooLvdwoS5D8i/TS42UiljE40=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR19MB2979.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(396003)(366004)(136003)(346002)(376002)(8936002)(786003)(316002)(33656002)(5660300002)(66556008)(64756008)(66446008)(8676002)(186003)(66476007)(478600001)(9686003)(71200400001)(91956017)(2906002)(966005)(83380400001)(110136005)(53546011)(52536014)(7696005)(55016002)(76116006)(86362001)(6506007)(66946007)(84152002)(473944003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: r1wOeTuyfz+Zw518bd3Fl1p2sVJLLdyROnNYpLmCp1y+Yp6Z8CDYQv11iwlEwn+mDiM77M+1lI/wkU3vfPL3vzCJutPBBfUyXScKk4hkwv2RTLXt+vlOAnLuRuEJGZVp2A5elruc9mOFcH45XAPQ3MFpOiL+ng33rAGASnZlSIUXmrKpIyvJmzsq0nXI7nhgqLNLBpgZo/Z6XiH2diS8rXnaFdDy682letSmjhB6EfmIHh2jT42I8ik76XnhyKjmaR+cXUgFSM6ltRCB9pCVYPoXIlCWcl9r+SIm0mfcQucjI+3UODXZADEM6EtYxJabUeTIP9QZVrG6WxNcUFJoA4TEqm9cMjxkV6bmpNe3KTZYR+9P18FJv5T0Hn4u29YtHrtSB36Kc0SSU5a8xq51SNfeHJCE94VAZIzl6DCd7pLLac7xmhJSWAupyS84A5oT24KTqHzv52+kyQ9IhED7JOsUii/Ko/MPu/x4hUtj4gtx76GS0uwrvrCBY8qVV52iuXd3/x1UL3ytUXDDu6gIiaN8VdiAvItONybPgl7whsjaQbADQ18ggEWw04a0NqST
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: uon.edu.au
X-MS-Exchange-CrossTenant-Network-Message-Id: b64f66f9-07d3-41a0-5639-08d8048dd995
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 11:37:35.8158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ee903dcb-2b77-4da5-be02-c45235783dad
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +79mzG0h82NtpRZAnSvjnS5EIe53jjEWrNP4AfdrdBgsgwP6RRBmD5mgxgbJhWdVYzU4Ezs/r4BCLyXlT0Pg5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR19MB2482
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: uon.edu.au
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_043802_877766_6FAD7729 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [180.189.28.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] add support for netgear R6020
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

Hi, 

>Typically, frequency can be raised with substantial gains in read speed.

I can increase if required.
Not sure how fast is reasonable/required?

At this stage I would rather not set up an oscilloscope
to experiment with how fast I can push it?

Datasheet of flash ic is 80MHz or so?
Not sure how fast the mt7628an can go?

>> mtd-mac-address = <&nvram 0x100b0>;
>
>Are these necessary, or will the address be correct if you just drop them?

It appears I need this line for the ethernet, otherwise random mac address is created.

>
>Despite, can you please check whether there are addresses in factory 0x28, 0x2e, 0xe000, 0xe006, 0x4, 0x8004?
>
>Which addresses are assigned on OEM firmware (lan, wan, 2g, 5g)?

You would like me to flash the OEM firmware, look at MAC addresses?
All the devices I have on hand are flashed to openwrt.
I can flash latest factory firmware?

I have it set up to be same mac address on wired and wlan.
It is the same one that is written on the device sticker.
The bootloader uses that mac address on the lan hardware.

>> ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "phy0tpt"
>
>Please use a DTS trigger instead (for both 2g and 5g).

I don't understand.  R6120 lines look similar?
Do I need to remove the 2g/5g lines?
I tried to search for some documentation. I found [1], [2] ?

>The old PR has been closed quite some time ago due to inactivity. If there is new progress now, it would be fine to just open a new PR by the "new author".

Is patch via email acceptable?
Alternatively,
I would need to create github account, and do pull request there?

I'm assuming keeping the same thread at this stage is the best way forward?
I understand the subject should have been something like
"Subject: [PATCH] ramips: add support for netgear r6020"

Cheers,
Evan.

[1] https://openwrt.org/docs/guide-user/base-system/led_configuration
[2] https://www.kernel.org/doc/Documentation/devicetree/bindings/leds/leds-gpio.txt

From 8a2cf974be374612e8ea32d2182226d542ebbcdf Mon Sep 17 00:00:00 2001
From: Evan Jobling <evan.jobling@uon.edu.au>
Date: Sat, 30 May 2020 20:39:47 +1000
Subject: [PATCH] ramips: add support for netgear r6020

Signed-off-by: Evan Jobling <evan.jobling@uon.edu.au>
---
 .../ramips/dts/mt7628an_netgear_r6020.dts     | 144 ++++++++++++++++++
 target/linux/ramips/image/mt76x8.mk           |  24 +++
 .../mt76x8/base-files/etc/board.d/01_leds     |   5 +
 .../mt76x8/base-files/etc/board.d/02_network  |   1 +
 4 files changed, 174 insertions(+)
 create mode 100644 target/linux/ramips/dts/mt7628an_netgear_r6020.dts

diff --git a/target/linux/ramips/dts/mt7628an_netgear_r6020.dts b/target/linux/ramips/dts/mt7628an_netgear_r6020.dts
new file mode 100644
index 0000000000..717fdde3fa
--- /dev/null
+++ b/target/linux/ramips/dts/mt7628an_netgear_r6020.dts
@@ -0,0 +1,144 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/dts-v1/;
+
+#include "mt7628an.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	compatible = "netgear,r6020", "mediatek,mt7628an-soc";
+	model = "Netgear  R6020 (AC750)";
+
+	aliases {
+		led-boot = &led_power;
+		led-failsafe = &led_power;
+		led-running = &led_power;
+		led-upgrade = &led_power;
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "reset";
+			gpios = <&gpio 6 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_RESTART>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		lan {
+			label = "r6020:green:lan";
+			gpios = <&gpio 12 GPIO_ACTIVE_LOW>;
+		};
+
+		led_power: power {
+			label = "r6020:green:power";
+			gpios = <&gpio 11 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan {
+			label = "r6020:green:wlan2g";
+			gpios = <&gpio 10 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan_orange {
+			label = "r6020:orange:wlan2g";
+			gpios = <&gpio 9 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan5 {
+			label = "r6020:green:wlan5g";
+			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
+		};
+
+		wlan5_orange {
+			label = "r6020:orange:wlan5g";
+			gpios = <&gpio 7 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&pinctrl {
+	state_default: pinctrl0 {
+		gpio {
+			ralink,group = "p0led_an", "p1led_an", "p2led_an",
+				       "p3led_an", "p4led_an", "wdt", "wled_an";
+			ralink,function = "gpio";
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
+		spi-max-frequency = <10000000>;
+		m25p,chunked-io = <32>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "u-boot";
+				reg = <0x0 0x40000>;
+				read-only;
+			};
+
+			factory: partition@40000 {
+				label = "factory";
+				reg = <0x40000 0x20000>;
+				read-only;
+			};
+
+			nvram: partition@60000 {
+				label = "nvram";
+				reg = <0x60000 0x30000>;
+				read-only;
+			};
+
+			partition@90000 {
+				compatible = "denx,uimage";
+				label = "firmware";
+				reg = <0x90000 0x6f0000>;
+			};
+
+			partition@780000 {
+				label = "reserved";
+				reg = <0x780000 0x80000>;
+				read-only;
+			};
+		};
+	};
+};
+
+&wmac {
+	status = "okay";
+	mediatek,mtd-eeprom = <&factory 0x0>;
+};
+
+
+&ethernet {
+       mtd-mac-address = <&nvram 0x100b0>;
+};
+
+
+&pcie {
+	status = "okay";
+};
+
+&pcie0 {
+	wifi@0,0 {
+		reg = <0x0000 0 0 0 0>;
+		mediatek,mtd-eeprom = <&factory 0x8000>;
+		ieee80211-freq-limit = <5000000 6000000>;
+		mtd-mac-address-increment = <(2)>;
+	};
+};
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/image/mt76x8.mk
index 16b5958ad1..2bfe71e15f 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -189,6 +189,28 @@ define Device/mercury_mac1200r-v2
 endef
 TARGET_DEVICES += mercury_mac1200r-v2
 
+
+define Device/netgear_r6020
+  BLOCKSIZE := 64k
+  IMAGE_SIZE := 7270k
+  DEVICE_VENDOR := NETGEAR 
+  DEVICE_MODEL :=  R6020
+  DEVICE_PACKAGES := kmod-mt76x2 kmod-usb2 kmod-usb-ohci
+  SERCOMM_KERNEL_OFFSET := 0x90000
+  SERCOMM_HWID := CFR
+  SERCOMM_HWVER := A001
+  SERCOMM_SWVER := 0x0040
+  IMAGES += factory.img
+  IMAGE/default := append-kernel | pad-to $$$$(BLOCKSIZE)| append-rootfs | pad-rootfs
+  IMAGE/sysupgrade.bin := $$(IMAGE/default) | append-metadata | check-size 
+  IMAGE/factory.img := pad-extra 576k | $$(IMAGE/default) | \
+	pad-to $$$$(BLOCKSIZE) | sercom-footer | pad-to 128 | zip R6020.bin | \
+	sercom-seal
+endef
+TARGET_DEVICES += netgear_r6020
+
+
+
 define Device/netgear_r6120
   BLOCKSIZE := 64k
   IMAGE_SIZE := 15744k
@@ -208,6 +230,8 @@ define Device/netgear_r6120
 endef
 TARGET_DEVICES += netgear_r6120
 
+
+
 define Device/onion_omega2
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := Onion
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
index 685895452a..a80c5e8ef9 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
@@ -46,6 +46,11 @@ hiwifi,hc5761a)
 mediatek,linkit-smart-7688)
 	ucidef_set_led_wlan "wifi" "wifi" "linkit-smart-7688:orange:wifi" "phy0tpt"
 	;;
+netgear,r6020)
+	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
+	ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "phy0tpt"
+	ucidef_set_led_wlan "wlan5g" "WiFi 5GHz" "$boardname:green:wlan5g" "phy1tpt"
+	;;
 netgear,r6120)
 	ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" "0x0f"
 	ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" "0x10"
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index 398b5e88c7..816ff54a6c 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -92,6 +92,7 @@ ramips_setup_interfaces()
 		ucidef_add_switch "switch0" \
 			"1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@eth0"
 		;;
+	netgear,r6020|\
 	netgear,r6120)
 		ucidef_add_switch "switch0" \
 			"0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@eth0"
-- 
2.26.2



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
