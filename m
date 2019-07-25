Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E05375274
	for <lists+openwrt-devel@lfdr.de>; Thu, 25 Jul 2019 17:20:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GOoPupPWfcLnwpoSrxM5IOyeCcfQG5JbyDJmXeRMidw=; b=eBzS5R4kIrZiGN31gMWUPCdxF
	xktV01cxn5hdI5bpZ27dNe4VnJe+bSfbWIbIPsjyu4warpd2+hIhg7xVyxE6ALzkIjfZviBauAtki
	ehQEa8lWnvUCikGvQxQTDdchgMsNFt3pBm0JfAiOL24zqvR0GQKDXZ1uB0pUnserH4DPBzFWp2Hlp
	mcgrIzFMyqmNHHFqAenRiKhtMXNB+kgbDElgaVonyKIZj10itc607XJ0ZzlcI149xE70JsVl50ogs
	g9TmXaKoeTYYmuRqRj/D6xZHffqUgJpFxtL88Gn/DnD6QYjfzZuJG74nYpRAtzJltut6h//2AVbbS
	gtYgIJ1nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfXp-0006sI-Iz; Thu, 25 Jul 2019 15:20:37 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfXR-0006rR-3U
 for openwrt-devel@lists.openwrt.org; Thu, 25 Jul 2019 15:20:15 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MVv4X-1i0GSO14Dt-00Rpbr; Thu, 25
 Jul 2019 17:20:05 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1563966043-28472-1-git-send-email-wurobinson@qq.com>
In-Reply-To: <1563966043-28472-1-git-send-email-wurobinson@qq.com>
Date: Thu, 25 Jul 2019 17:20:04 +0200
Message-ID: <01a501d542fc$6fd353d0$4f79fb70$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQIqNd/swEu8fw6aWeDzI+mO4PAggaYxjPHQ
X-Provags-ID: V03:K1:cPZgrz1PhmPafGeFDI+58SGH2pHgxuiQu8nTKUqhDgWuA3uql4K
 +YBURHphZ/u8NMxT3++4CPUwsHRJUJ9g4FaGd9fZ9LDRv2euNqtUorL0KS2nFpMGjcaTt7l
 4WRRfE989/r6eUUIzTnGlaR7t0HjDrOkdQzYQ7gyW8AXs0MXqY9brhg4VMJbX+iDv75gSYR
 qMXcP3ZVbp5nfe3bCDFPQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4+dn0RzaIco=:WOkr8pD4bU9hdSpKowjq0w
 RyWosCG1vRNPJKSkPxabEshi18RdQi455Tpaip8R6SCxR6ZJjgnUPj2KLwwVJPpGlFIk2I8Z9
 aw4BBAiBe48c8lDKr80Wn1HHdjNKzzMFxKOkGHsUwU/2WIMFTpCl6tGjQsY/o/xrYtCWi4D5Z
 vthR6oTsp+S88ogg/+clT2FWxqotg0JFzKIXz4orxkvqkiCfqH2BQuqMUEuVXixTfrFsUR1Rv
 bwlMf2BxXmBQfeWK/7BqZSQH13MJj7xXea0pf0KswwXLF1CYO/4XfVSm6y81nDexqZH4PceFa
 IHO9ofAWV8xjGgnPYKpbwUy5/KLloHnQ73pqqf0lWfNc8ebEaB+62vLq2Ue4hk2XY88yTJSsF
 A4dga3L71sO3KZQc2s5XBjGbVP2EFET0+/Q5NduPPG3Wnzn5nYw3rRDpu/yqIMUjzrvYRu34G
 WE8S9APf8by22PhJUr4o7Sau8QvTcdSxLnnXe6Qp47Mn+uGHOFkAHJJXZvcR8c31c8QlEMExg
 F8D0h2+OjQ6lbtQOpEOEZaVpQngfLyipGTP7p4mb3RdlEx6Nnm9gp1j2IBi11XO/QcH6dkcas
 H5ykvl+YItE8HFUnOLGMrctETyF09lG9O0Poru6MKYDaHBjdHnfF99sdjlRXVRSyHiBtytKft
 EKmipeIsb2Z9Ke09P8I04Si0qDE7/AYfp45XSf3GCsATWy/qSr1PJToFXfNBkLQfPr+RCigg5
 FRQQcTMGRltYgN8nSazN1xw9EKX53x7v+QqT5w+VMfeklilDUVJeFhFpv0U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_082013_449327_CAAA5EEB 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support to JS7628
 development board
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
Content-Type: multipart/mixed; boundary="===============4014482801239357441=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4014482801239357441==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=0Og8leCYCyNr2U=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=0Og8leCYCyNr2U=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Robinson Wu
> Sent: Mittwoch, 24. Juli 2019 13:01
> To: openwrt-devel@lists.openwrt.org
> Cc: Robinson Wu <wurobinson@qq.com>; mail@adrianschmutzler.de
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support to JS7628 development
> board
>=20
> This commit adds support for the ZhuoTK JS7628 development board,
> The device has the following specifications:
>=20
> - SOC:MT7628AN/NN
> - RAM:64/128/256 MB (DDR2)
> - FLASH:8/16/32 MB (SPI NOR)
> - Ethernet:3x 10/100 Mbps ethernet ports (MT7628 built-in switch)
> - WIFI:1x 2T2R 2.4 GHz Wi-Fi
> - LEDs:1x system status green LED, 1x wifi green LED,
>        3x ethernet green LED
> - Buttons:1x reset button, 2x user defined button
> - 1x microSD slot
> - 4x USB 2.0 port
> - 1x mini-usb debug UART
> - 1x DC jack for main power (DC 5V)
> - 1x TTL/RS232 UART
> - 1x TTL/RS485 UART
> - 13x GPIO header
> - 1x audio codec(wm8960)
>=20
> Installation via OpenWrt:
>=20
> The original firmware is OpenWrt, so both LuCI or sysupgrade can be used.
>=20
> Installation via U-boot web:
>=20
> 1. Power on board with reset button or key1 button pressed, release it
>    after wifi led start blinking.
> 2. Setup static IP 192.168.1.123/4 on your PC.
> 3. Go to 192.168.1.8 in browser and upload "sysupgrade" image.
>=20
> Installation via U-boot tftp:
> 1. Connect to serial console at the mini usb, which has been connected to=
 UART0
>    on board (115200 8N1)
> 2. Setup static IP 192.168.1.123/4 on your PC.
> 3. Place openwrt-firmware.bin on your PC tftp server (192.168.1.123).
> 3. Connect one of LAN ports on board to your PC.
> 4. Start terminal software (e.g. screen /dev/ttyUSB0 115200) on PC.
> 5. Apply power to board.
> 6. Interrupt U-boot with keypress of "2".
> 7. At u-boot prompts:
>    Warning!! Erase Linux in Flash then burn new one. Are you sure?(Y/N) Y
>    Input device IP (192.168.1.8) =3D=3D:192.168.1.8
>    Input server IP (192.168.1.123) =3D=3D:192.168.1.123
>    Input Linux Kernel filename (root_uImage) =3D=3D:openwrt-firmware.bin
> 8. board will download file from tftp server, write it to flash and reboo=
t.
>=20
> Other notes:
>=20
> 1. This board is available with three types of RAM with flash
>    configuration. Chose one of the right "Target Profile" in
>    "make menuconfig" as listed below:
>=20
>    "ZhuoTK JS7628 8M flash/64M RAM"
>    "ZhuoTK JS7628 16M flash/128M RAM"
>    "ZhuoTK JS7628 32M flash/256M RAM"
>=20
>    to fit the board you have.
>=20
> Vist www.zhuotk.com for further information.
>=20
> Signed-off-by: Robinson Wu <wurobinson@qq.com>
> ---
>  target/linux/ramips/base-files/etc/board.d/01_leds |   6 ++
>  .../linux/ramips/base-files/etc/board.d/02_network |   3 +
>  .../ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts |  60 ++++++++++++
>  .../ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts |  60 ++++++++++++
>  .../ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts   |  60 ++++++++++++
>  .../linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi   | 106
> +++++++++++++++++++++
>  target/linux/ramips/image/mt76x8.mk                |  33 +++++++
>  7 files changed, 328 insertions(+)
>  create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-
> 128m.dts
>  create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-
> 256m.dts
>  create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-
> 64m.dts
>  create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
>=20
> diff --git a/target/linux/ramips/base-files/etc/board.d/01_leds
> b/target/linux/ramips/base-files/etc/board.d/01_leds
> index 57f0939..0d876c4 100755
> --- a/target/linux/ramips/base-files/etc/board.d/01_leds
> +++ b/target/linux/ramips/base-files/etc/board.d/01_leds
> @@ -458,6 +458,12 @@ zbtlink,zbt-we1226)
>  	ucidef_set_led_switch "lan2" "LAN2" "$boardname:green:lan2"
> "switch0" "0x02"
>  	ucidef_set_led_switch "wan" "WAN" "$boardname:green:wan"
> "switch0" "0x10"
>  	;;
> +zhuotk,js7628-8m-64m|\
> +zhuotk,js7628-16m-128m|\
> +zhuotk,js7628-32m-256m)
> +	ucidef_set_led_timer "system" "system" "js76x8:green:system" "1000"
> "1000"
> +	set_wifi_led "js76x8:green:wifi"
> +	;;
>  zorlik,zl5900v2)
>  	ucidef_set_led_netdev "lan" "lan" "$boardname:green:lan" eth0
>  	;;
> diff --git a/target/linux/ramips/base-files/etc/board.d/02_network
> b/target/linux/ramips/base-files/etc/board.d/02_network
> index a2b7d1c..f438b46 100755
> --- a/target/linux/ramips/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/base-files/etc/board.d/02_network
> @@ -103,6 +103,9 @@ ramips_setup_interfaces()
>  	zbtlink,zbt-wg3526-16m|\
>  	zbtlink,zbt-wg3526-32m|\
>  	zbtlink,zbt-wr8305rt|\
> +	zhuotk,js7628-8m-64m|\
> +	zhuotk,js7628-16m-128m|\
> +	zhuotk,js7628-32m-256m|\
>  	zyxel,keenetic|\
>  	zyxel,keenetic-omni)
>  		ucidef_add_switch "switch0" \
> diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts
> b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts
> new file mode 100644
> index 0000000..4fdaade
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts
> @@ -0,0 +1,60 @@
> +/dts-v1/;
> +
> +#include "mt7628an_zhuotk_js76x8.dtsi"
> +
> +/ {
> +	compatible =3D "zhuotk,js7628-16m-128m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS7628 (16M flash/128M RAM)";
> +};
> +
> +&spi0 {
> +	status =3D "okay";
> +
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&spi_pins>, <&spi_cs1_pins>;
> +
> +	m25p80@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <40000000>;
> +		m25p,chunked-io =3D <32>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x0 0x30000>;
> +				read-only;
> +			};
> +
> +			partition@30000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@40000 {
> +				label =3D "factory";
> +				reg =3D <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x50000 0xfb0000>;
> +			};
> +		};
> +	};
> +
> +	spidev@1 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "linux,spidev";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <40000000>;
> +	};
> +};
> diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts
> b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts
> new file mode 100644
> index 0000000..a309926
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts
> @@ -0,0 +1,60 @@
> +/dts-v1/;
> +
> +#include "mt7628an_zhuotk_js76x8.dtsi"
> +
> +/ {
> +	compatible =3D "zhuotk,js7628-32m-256m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS7628 (32M flash/256M RAM)";
> +};
> +
> +&spi0 {
> +	status =3D "okay";
> +
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&spi_pins>, <&spi_cs1_pins>;
> +
> +	m25p80@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <40000000>;
> +		m25p,chunked-io =3D <32>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x0 0x30000>;
> +				read-only;
> +			};
> +
> +			partition@30000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@40000 {
> +				label =3D "factory";
> +				reg =3D <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x50000 0x1fb0000>;
> +			};
> +		};
> +	};
> +
> +	spidev@1 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "linux,spidev";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <40000000>;
> +	};
> +};
> diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts
> b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts
> new file mode 100644
> index 0000000..a1a1de1
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts
> @@ -0,0 +1,60 @@
> +/dts-v1/;
> +
> +#include "mt7628an_zhuotk_js76x8.dtsi"
> +
> +/ {
> +	compatible =3D "zhuotk,js7628-8m-64m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS7628 (8M flash/64M RAM)";
> +};
> +
> +&spi0 {
> +	status =3D "okay";
> +
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&spi_pins>, <&spi_cs1_pins>;
> +
> +	m25p80@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <40000000>;
> +		m25p,chunked-io =3D <32>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x0 0x30000>;
> +				read-only;
> +			};
> +
> +			partition@30000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@40000 {
> +				label =3D "factory";
> +				reg =3D <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x50000 0x7b0000>;
> +			};
> +		};
> +	};
> +
> +	spidev@1 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "linux,spidev";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <40000000>;
> +	};
> +};
> diff --git a/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
> b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
> new file mode 100644
> index 0000000..42e9045
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
> @@ -0,0 +1,106 @@
> +#include "mt7628an.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "zhuotk,js76x8", "mediatek,mt7628an-soc";
> +
> +	aliases {
> +		led-boot =3D &led_system;
> +		led-failsafe =3D &led_system;
> +		led-running =3D &led_system;
> +		led-upgrade =3D &led_system;
> +	};
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,115200";
> +	};
> +
> +	gpio-leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_system: system {
> +			label =3D "js76x8:green:system";
> +			gpios =3D <&gpio1 5 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wifi {
> +			label =3D "js76x8:green:wifi";
> +			gpios =3D <&gpio1 12 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys-polled";
> +		poll-interval =3D <20>;

This can be replaced by interrupt-driven "gpio-keys". poll-interval can be =
removed.

Best

Adrian

> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio1 6 GPIO_ACTIVE_HIGH>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +	};
> +};
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group =3D "gpio","p3led_an","p4led_an",
> +				"pwm0","pwm1","refclk","wdt","wled_an";
> +			ralink,function =3D "gpio";
> +		};
> +
> +		p0led {
> +			ralink,group =3D "p0led_an";
> +			ralink,function =3D "p0led_an";
> +		};
> +
> +		p1led {
> +			ralink,group =3D "p1led_an";
> +			ralink,function =3D "p1led_an";
> +		};
> +
> +		p2led {
> +			ralink,group =3D "p2led_an";
> +			ralink,function =3D "p2led_an";
> +		};
> +
> +		pwm_2_3 {
> +			ralink,group =3D "uart2";
> +			ralink,function =3D "pwm";
> +		};
> +	};
> +
> +	uart2 {
> +		uart2 {
> +			ralink,group =3D "spis";
> +			ralink,function =3D "pwm_uart2";
> +		};
> +	};
> +};
> +
> +&i2c {
> +	status =3D "okay";
> +};
> +
> +&uart1 {
> +	status =3D "okay";
> +};
> +
> +&uart2 {
> +	status =3D "okay";
> +};
> +
> +&ethernet {
> +	mtd-mac-address =3D <&factory 0x28>;
> +};
> +
> +&sdhci {
> +	status =3D "okay";
> +	mediatek,cd-low;
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +};
> diff --git a/target/linux/ramips/image/mt76x8.mk
> b/target/linux/ramips/image/mt76x8.mk
> index fae9fb0..9fa8b7b 100644
> --- a/target/linux/ramips/image/mt76x8.mk
> +++ b/target/linux/ramips/image/mt76x8.mk
> @@ -549,6 +549,39 @@ define Device/zbtlink_zbt-we1226
>  endef
>  TARGET_DEVICES +=3D zbtlink_zbt-we1226
>=20
> +define Device/zhuotk_js7628-8m-64m
> +  MTK_SOC :=3D mt7628an
> +  IMAGE_SIZE :=3D 7872k
> +  DEVICE_VENDOR :=3D ZhuoTK
> +  DEVICE_MODEL :=3D JS7628
> +  DEVICE_VARIANT :=3D 8M flash/64M RAM
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci
> +  SUPPORTED_DEVICES +=3D js7628-8m-64m js7688-8m-64m ztk7628p-8m-64m
> +endef
> +TARGET_DEVICES +=3D zhuotk_js7628-8m-64m
> +
> +define Device/zhuotk_js7628-16m-128m
> +  MTK_SOC :=3D mt7628an
> +  IMAGE_SIZE :=3D 16064k
> +  DEVICE_VENDOR :=3D ZhuoTK
> +  DEVICE_MODEL :=3D JS7628
> +  DEVICE_VARIANT :=3D 16M flash/128M RAM
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci
> +  SUPPORTED_DEVICES +=3D js7628-16m-128m js7688-16m-128m ztk7628p-16m-
> 64m
> +endef
> +TARGET_DEVICES +=3D zhuotk_js7628-16m-128m
> +
> +define Device/zhuotk_js7628-32m-256m
> +  MTK_SOC :=3D mt7628an
> +  IMAGE_SIZE :=3D 32448k
> +  DEVICE_VENDOR :=3D ZhuoTK
> +  DEVICE_MODEL :=3D JS7628
> +  DEVICE_VARIANT :=3D 32M flash/256M RAM
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci
> +  SUPPORTED_DEVICES +=3D js7628-32m-256 js7688-32m-256m ztk7628p-32m-
> 64m
> +endef
> +TARGET_DEVICES +=3D zhuotk_js7628-32m-256m
> +
>  define Device/zyxel_keenetic-extra-ii
>    MTK_SOC :=3D mt7628an
>    IMAGE_SIZE :=3D 14912k
> --
> 2.7.4
>=20
>=20
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=0Og8leCYCyNr2U=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl05yKEACgkQoNyKO7qx
AnArqA/8DUlNQhE3ytChDwMez3j4zAFz3Fc1vjZd+4d1YAXCRobah2hSJjYbuvTd
O716tnHu4etNwABivA++u1UvoG3kt+fredHtnXro7cSJFjzZoSFwgzTj6p1/BubQ
EDREE4CHlkIypGiD1YblHMW6YEyWJwwHLK0AgoqxvluCzerJ42lQPdZ724a3PcLn
uR6YzR23hFzoDBZdeVI1ge36NmF5n7WslFtFqY+I+BmfNVNtwCPoHQFxQNqsEFu3
n95AaX4P56WWO3N0Ix0SiayZIl/5WLhr/jJfy3c5+gmuIEIctiur+tCffoonCgkX
IhHE5/YVb7030LsGXoRAXKgr3Ti+o5no2YyWlMpvyo+ytmOaWjajaMb/x97lueFF
jZwqVn2McOeWOEDxBgcwvvC7YM2fnlUyTMK0lDs47urnmCkDohTFbta1aOOdVQTi
HcGOxLEe6unLZUgOIyaWpPw85fOL50Nl64HJ7khsPU1XdiSg2mRWb25zCTZ8jqkz
pKL48GKaYcZKgpQ5nPEO8cCxT5l89+lRpfx4SfCW1rg6w+Z6JXnqkMU+HL1rs1rg
H4gytKoSghkdICz8bUFdaFFwzRNcqTOBHTcuUFTfANQq+hn9Sklu5RMhsZd/cwv+
ADdnpzUVkCZ2ueAMe3eFreXLJrV2k36aD5Flgawfio5jsH+zJ0c=
=fhCu
-----END PGP SIGNATURE-----


--=-=0Og8leCYCyNr2U=-=--



--===============4014482801239357441==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4014482801239357441==--


