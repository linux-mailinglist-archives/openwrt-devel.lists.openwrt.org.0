Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE50E1EF156
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 08:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:In-Reply-To:
	References:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUi5tElzlQE5r6aFMguJcO1d32PZnMjRRcRC5+fX9a8=; b=O76BZM0DpY/TF0
	YYQvleJ9DXzQOkhYmD7HPnUdg5Z0cqS4pvFF0cLwHzO1+Nd1hoCgz9LCzGq1dZh45V6nprGJV/X7t
	7AGBtB6ZlyRsVoe2MfGUFQ/B1zGq6TAbppGQ3ubwCK9dSnBKXIseV1I/JqNBjbG6SkWOtpMNn2Wav
	6H37zg+zdCjxKWk9rD86VzhTv3sEzirKLWKopFFKKVLR6ei4fc87XRSKJaDFRemmvLSXYC4z8N9mv
	CSITERMxo6CV/x1MC4fOQR9rTi7aFVXGg/H6h6XnVHt3wqhwiI4VomxvfwMgHxz/tj0sxa35ULTiY
	ZVQHRelmwumc8YYNlK9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh5q8-0006ly-OT; Fri, 05 Jun 2020 06:28:28 +0000
Received: from au-smtp-delivery-115.mimecast.com ([124.47.189.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh5pv-0006jV-QA
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 06:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uon.edu.au;
 s=mimecast20191001; t=1591338486;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FMcg0SDBCFVFaoiEATHZ0LxGkYOF9CcSPFSM5DxYKXY=;
 b=NDvVngQB5JxkZDVzMBTTy1cJtIcby/HCORUIxplKYiwdMBFOk7lULA0EXQafEJZAStXI8C
 wvbHAM0bZloBJ24uBeujgFl8u43eMHUsfadxolelyPyK3hqAV6BySM+9MXYue1UwZoNpdC
 bm9+zAklDIvog2dVelu2moZAV55tmEU=
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2053.outbound.protection.outlook.com [104.47.46.53]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 au-mta-88-T-90bnxaMrC_W5KHAafNlQ-1; Fri, 05 Jun 2020 16:28:00 +1000
X-MC-Unique: T-90bnxaMrC_W5KHAafNlQ-1
Received: from BN8PR19MB2979.namprd19.prod.outlook.com (2603:10b6:408:6a::17)
 by BN8PR19MB2932.namprd19.prod.outlook.com (2603:10b6:408:85::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Fri, 5 Jun
 2020 06:27:57 +0000
Received: from BN8PR19MB2979.namprd19.prod.outlook.com
 ([fe80::6129:ca97:21cd:62a5]) by BN8PR19MB2979.namprd19.prod.outlook.com
 ([fe80::6129:ca97:21cd:62a5%5]) with mapi id 15.20.3066.019; Fri, 5 Jun 2020
 06:27:57 +0000
From: Evan Jobling <Evan.Jobling@uon.edu.au>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: [PATCH] ramips: add support for netgear r6020
Thread-Index: AQHWOwJz637lkyaiF0mJ8eripKM5Hw==
Date: Fri, 5 Jun 2020 06:27:56 +0000
Message-ID: <BN8PR19MB2979D0EFD7183AEB508B94C9B7860@BN8PR19MB2979.namprd19.prod.outlook.com>
References: <BN8PR19MB29794D50F61BE3BC66C40F54B78C0@BN8PR19MB2979.namprd19.prod.outlook.com>
In-Reply-To: <BN8PR19MB29794D50F61BE3BC66C40F54B78C0@BN8PR19MB2979.namprd19.prod.outlook.com>
Accept-Language: en-AU, en-US
Content-Language: en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [134.148.107.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e15a6e0-6065-4d16-191b-08d80919961b
x-ms-traffictypediagnostic: BN8PR19MB2932:
x-microsoft-antispam-prvs: <BN8PR19MB29321EC44BDFA59400CA568BB7860@BN8PR19MB2932.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0425A67DEF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jkft7oTRTWi9BqEK0pEQj1xx7DTwkCgCgE+pi7EOhqNImdfYgIG4cB0hz2alXYHZK31OLkEJitOUEf+ZQYwrmIhqk/JDqb2D7/knksgRsrOsPYfSUTkkaXCjqh4Ojw3/XMuGk7mqzxbxwfDAbD9Rj5Z3kqouxvO3z7o9BNtX3MZ3+UGFio5S35AMDfeTXOeUEf2kW8dJr+9lbARzMHhP8+jqCoWIYqOqtDXUOIjYn3tg8XKcugB2T9KaIIYhpSAoiAt67nL9Ai+fGDgJgfn/Q2qipL/0VbMcv/lz+U4mohZ7ZXlWK8wpml3l73VmobTb/KDDjrrOlhHW9Gr/DWtDAiUYhxO9739GfWfmOpCPzTbAmMWnJdMooMWFIsmgOGtxbFTA7c2V/4k7ntGPv/P4ryPV7a1bCXQkMAKMVVzt/D0L5G6fmTyToK04er3kIc28kvjhevrzfxY3nBzW7FKZ1raT69lmbYBxpi7r5qEffWQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR19MB2979.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(346002)(396003)(136003)(366004)(26005)(83380400001)(186003)(6916009)(2906002)(53546011)(6506007)(71200400001)(86362001)(33656002)(76116006)(91956017)(66446008)(64756008)(66556008)(66476007)(66946007)(5660300002)(478600001)(966005)(54906003)(316002)(786003)(52536014)(4326008)(8936002)(8676002)(9686003)(55016002)(66574014)(7696005)(84152002)(473944003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: BXefP+qASymbQ1RhEDrrXNBLf9HkV9xTWnasmUdDmd9KUP2naeHRXBTl46MZKJMLKWsUaCSNncDGNq3Xv185v+UVv61IMuKu1BThK4vYmnB1fx135Ukt3YWAmlPC3X0ri1aRAvrRbKmT3eSPYQuQcFkKbJB+H1dAQHhwfTvI5rNoI1EpowMg9n2tvoUOz22827RNtru8nn6J/DKBaXsiERwRi4cM++Y3RV5tTClfyPn6yd+1P+MypbustUL5Eph47CsEhsAW4f0BKvVVtJT4TFwRnpPCEXmgv6N7rewF3uF+9II6NXUhszfj8L6B0W0a8yqmJvB+x/iU4tmfpl+U4SYcoWJYlNWoNLbUui5yJR3gvg2h7UKPof0cgaOOzcGlXuWXR7D7LKCnqJQ/CJl2lxcuERJtXXnFtZ7B63/i/4YrtEmT+ssHWKljjWExXGxVGy8bhsl99z6hK5j0c+dahngWjLA8En6LfufaWXvS+OLuI7rtl8YTZbboUO69H9a8
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: uon.edu.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e15a6e0-6065-4d16-191b-08d80919961b
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2020 06:27:56.8007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ee903dcb-2b77-4da5-be02-c45235783dad
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jB91SmFhvWc9c5YZ/z2tN7lWW0Loz4vkVzz+RPu/AhKJPqK3pIp9fTbEwdT761tD5UKRJPbkPrjIldXr7pRl0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR19MB2932
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: uon.edu.au
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_232816_328993_25FC66AB 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.47.189.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ramips: add support for netgear r6020
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
Cc: "ynezz@true.cz" <ynezz@true.cz>,
 "mail@adrianschmutzler.de" <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

It seems that the older patches got put into patchwork, and assigned to Pet=
r =8Atetiar?
Apologies for the mess I created.
I tried to put those patches to superseded?

Responses to feedback on my original patches, as well as the patch at the e=
nd.
Additional feedback and requests for changes/tests welcome.

>Typically, frequency can be raised with substantial gains in read speed.

I can increase if required.
Not sure how fast is reasonable/required?

At this stage I would rather not set up an oscilloscope
to experiment with how fast I can push it?

Datasheet of flash ic is 80MHz or so?
Not sure how fast the mt7628an can go?

>> mtd-mac-address =3D <&nvram 0x100b0>;
>
>Are these necessary, or will the address be correct if you just drop them?

It appears I need this line for the ethernet, otherwise random mac address =
is created.

>
>Despite, can you please check whether there are addresses in factory 0x28,=
 0x2e, 0xe000, 0xe006, 0x4, 0x8004?
>
>Which addresses are assigned on OEM firmware (lan, wan, 2g, 5g)?

You would like me to flash the OEM firmware, look at MAC addresses?
All the devices I have on hand are flashed to openwrt.
I can flash latest factory firmware?

I have it set up to be same mac address on wired and wlan.
It is the same one that is written on the device sticker.
The bootloader uses that mac address on the lan hardware.

>> ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g" "ph=
y0tpt"
>
>Please use a DTS trigger instead (for both 2g and 5g).

I don't understand.  R6120 lines look similar?
Do I need to remove the 2g/5g lines?
I tried to search for some documentation. I found [1], [2] ?

>The old PR has been closed quite some time ago due to inactivity. If there=
 is new progress now, it would be fine to just open a new PR by the "new au=
thor".

Is patch via email acceptable?
Alternatively,
I would need to create github account, and do pull request there?

I'm assuming keeping the same thread at this stage is the best way forward?
I understand the subject should have been something like
"Subject: [PATCH] ramips: add support for netgear r6020"

Cheers,
Evan.

[1] https://openwrt.org/docs/guide-user/base-system/led_configuration
[2] https://www.kernel.org/doc/Documentation/devicetree/bindings/leds/leds-=
gpio.txt

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

diff --git a/target/linux/ramips/dts/mt7628an_netgear_r6020.dts b/target/li=
nux/ramips/dts/mt7628an_netgear_r6020.dts
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
+       compatible =3D "netgear,r6020", "mediatek,mt7628an-soc";
+       model =3D "Netgear  R6020 (AC750)";
+
+       aliases {
+               led-boot =3D &led_power;
+               led-failsafe =3D &led_power;
+               led-running =3D &led_power;
+               led-upgrade =3D &led_power;
+       };
+
+       keys {
+               compatible =3D "gpio-keys";
+
+               reset {
+                       label =3D "reset";
+                       gpios =3D <&gpio 6 GPIO_ACTIVE_LOW>;
+                       linux,code =3D <KEY_RESTART>;
+               };
+       };
+
+       leds {
+               compatible =3D "gpio-leds";
+
+               lan {
+                       label =3D "r6020:green:lan";
+                       gpios =3D <&gpio 12 GPIO_ACTIVE_LOW>;
+               };
+
+               led_power: power {
+                       label =3D "r6020:green:power";
+                       gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
+               };
+
+               wlan {
+                       label =3D "r6020:green:wlan2g";
+                       gpios =3D <&gpio 10 GPIO_ACTIVE_LOW>;
+               };
+
+               wlan_orange {
+                       label =3D "r6020:orange:wlan2g";
+                       gpios =3D <&gpio 9 GPIO_ACTIVE_LOW>;
+               };
+
+               wlan5 {
+                       label =3D "r6020:green:wlan5g";
+                       gpios =3D <&gpio 8 GPIO_ACTIVE_LOW>;
+               };
+
+               wlan5_orange {
+                       label =3D "r6020:orange:wlan5g";
+                       gpios =3D <&gpio 7 GPIO_ACTIVE_LOW>;
+               };
+       };
+};
+
+&pinctrl {
+       state_default: pinctrl0 {
+               gpio {
+                       ralink,group =3D "p0led_an", "p1led_an", "p2led_an",
+                                      "p3led_an", "p4led_an", "wdt", "wled=
_an";
+                       ralink,function =3D "gpio";
+               };
+       };
+};
+
+&spi0 {
+       status =3D "okay";
+
+       flash@0 {
+               compatible =3D "jedec,spi-nor";
+               reg =3D <0>;
+               spi-max-frequency =3D <10000000>;
+               m25p,chunked-io =3D <32>;
+
+               partitions {
+                       compatible =3D "fixed-partitions";
+                       #address-cells =3D <1>;
+                       #size-cells =3D <1>;
+
+                       partition@0 {
+                               label =3D "u-boot";
+                               reg =3D <0x0 0x40000>;
+                               read-only;
+                       };
+
+                       factory: partition@40000 {
+                               label =3D "factory";
+                               reg =3D <0x40000 0x20000>;
+                               read-only;
+                       };
+
+                       nvram: partition@60000 {
+                               label =3D "nvram";
+                               reg =3D <0x60000 0x30000>;
+                               read-only;
+                       };
+
+                       partition@90000 {
+                               compatible =3D "denx,uimage";
+                               label =3D "firmware";
+                               reg =3D <0x90000 0x6f0000>;
+                       };
+
+                       partition@780000 {
+                               label =3D "reserved";
+                               reg =3D <0x780000 0x80000>;
+                               read-only;
+                       };
+               };
+       };
+};
+
+&wmac {
+       status =3D "okay";
+       mediatek,mtd-eeprom =3D <&factory 0x0>;
+};
+
+
+&ethernet {
+       mtd-mac-address =3D <&nvram 0x100b0>;
+};
+
+
+&pcie {
+       status =3D "okay";
+};
+
+&pcie0 {
+       wifi@0,0 {
+               reg =3D <0x0000 0 0 0 0>;
+               mediatek,mtd-eeprom =3D <&factory 0x8000>;
+               ieee80211-freq-limit =3D <5000000 6000000>;
+               mtd-mac-address-increment =3D <(2)>;
+       };
+};
diff --git a/target/linux/ramips/image/mt76x8.mk b/target/linux/ramips/imag=
e/mt76x8.mk
index 16b5958ad1..2bfe71e15f 100644
--- a/target/linux/ramips/image/mt76x8.mk
+++ b/target/linux/ramips/image/mt76x8.mk
@@ -189,6 +189,28 @@ define Device/mercury_mac1200r-v2
 endef
 TARGET_DEVICES +=3D mercury_mac1200r-v2

+
+define Device/netgear_r6020
+  BLOCKSIZE :=3D 64k
+  IMAGE_SIZE :=3D 7270k
+  DEVICE_VENDOR :=3D NETGEAR
+  DEVICE_MODEL :=3D  R6020
+  DEVICE_PACKAGES :=3D kmod-mt76x2 kmod-usb2 kmod-usb-ohci
+  SERCOMM_KERNEL_OFFSET :=3D 0x90000
+  SERCOMM_HWID :=3D CFR
+  SERCOMM_HWVER :=3D A001
+  SERCOMM_SWVER :=3D 0x0040
+  IMAGES +=3D factory.img
+  IMAGE/default :=3D append-kernel | pad-to $$$$(BLOCKSIZE)| append-rootfs=
 | pad-rootfs
+  IMAGE/sysupgrade.bin :=3D $$(IMAGE/default) | append-metadata | check-si=
ze
+  IMAGE/factory.img :=3D pad-extra 576k | $$(IMAGE/default) | \
+       pad-to $$$$(BLOCKSIZE) | sercom-footer | pad-to 128 | zip R6020.bin=
 | \
+       sercom-seal
+endef
+TARGET_DEVICES +=3D netgear_r6020
+
+
+
 define Device/netgear_r6120
   BLOCKSIZE :=3D 64k
   IMAGE_SIZE :=3D 15744k
@@ -208,6 +230,8 @@ define Device/netgear_r6120
 endef
 TARGET_DEVICES +=3D netgear_r6120

+
+
 define Device/onion_omega2
   IMAGE_SIZE :=3D 16064k
   DEVICE_VENDOR :=3D Onion
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds b/ta=
rget/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
index 685895452a..a80c5e8ef9 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds
@@ -46,6 +46,11 @@ hiwifi,hc5761a)
 mediatek,linkit-smart-7688)
        ucidef_set_led_wlan "wifi" "wifi" "linkit-smart-7688:orange:wifi" "=
phy0tpt"
        ;;
+netgear,r6020)
+       ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" =
"0x0f"
+       ucidef_set_led_wlan "wlan2g" "WiFi 2.4GHz" "$boardname:green:wlan2g=
" "phy0tpt"
+       ucidef_set_led_wlan "wlan5g" "WiFi 5GHz" "$boardname:green:wlan5g" =
"phy1tpt"
+       ;;
 netgear,r6120)
        ucidef_set_led_switch "lan" "lan" "$boardname:green:lan" "switch0" =
"0x0f"
        ucidef_set_led_switch "wan" "wan" "$boardname:green:wan" "switch0" =
"0x10"
diff --git a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network b=
/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
index 398b5e88c7..816ff54a6c 100755
--- a/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/mt76x8/base-files/etc/board.d/02_network
@@ -92,6 +92,7 @@ ramips_setup_interfaces()
                ucidef_add_switch "switch0" \
                        "1:lan:4" "2:lan:3" "3:lan:2" "4:lan:1" "0:wan" "6@=
eth0"
                ;;
+       netgear,r6020|\
        netgear,r6120)
                ucidef_add_switch "switch0" \
                        "0:lan:4" "1:lan:3" "2:lan:2" "3:lan:1" "4:wan" "6@=
eth0"
--
2.26.2



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
