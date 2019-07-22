Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653806FD86
	for <lists+openwrt-devel@lfdr.de>; Mon, 22 Jul 2019 12:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DveApOxLxzoay4J/KbTjaeteDUX6zeTYox3IMZaKqdk=; b=TkyaPWD536adOKFDM+w7+UeLF
	I/Pc4opi/cH4Ks4RQSOYGe/fpX3CV69o6Io0hINyrc11L9S7F+WaTKwlAV6v1LyJoGtiX/Rzm5Vzh
	qKm2CVDeMQ6Yhm5XcjOyQtRyDfQWdWXH+Wm0bgo8w4PYFoasWHSKxbCapv6aJpwLAlygT5ymT0gV6
	Umi0PtFjdv1L9B3nzYtcU1XptaldOjH5TYy5AkFTeE5t0BAn5ttHH7M8KXimTBy1QrrpQs2LosfvZ
	KQy4kU9izVbgTWDoDFVBIfRswOwCKlY+K0cz8EQeeLJxlvGBSOK1EzACsgKQBphQD1qg15vXW56KW
	H8a6YLKGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpVN0-0002tM-P2; Mon, 22 Jul 2019 10:16:38 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpVMg-0002sf-Hu
 for openwrt-devel@lists.openwrt.org; Mon, 22 Jul 2019 10:16:20 +0000
Received: from desktop ([188.194.32.21]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MmUDf-1iFWdi1zub-00iSAZ; Mon, 22
 Jul 2019 12:16:07 +0200
From: <mail@adrianschmutzler.de>
To: "'Robinson Wu'" <wurobinson@qq.com>,
	<openwrt-devel@lists.openwrt.org>
References: <1563710411-54574-1-git-send-email-wurobinson@qq.com>
In-Reply-To: <1563710411-54574-1-git-send-email-wurobinson@qq.com>
Date: Mon, 22 Jul 2019 12:16:06 +0200
Message-ID: <002c01d54076$7a073930$6e15ab90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKrB+58rGqwfrAz8w7kKtJN52K8vaUq2kcQ
X-Provags-ID: V03:K1:vN3JXMZHZa51Lai0x3eo8FjCRCwcEINbaiSSEwzuEQdoHlTljfz
 r6ztYEWWmZ5VUen8bncD3hKs4qeD7KkApCbDM/pAZx71V5AqUwXHuXm2LI1pFvlfHy6LtmU
 FtNMTnTNDMFJns0ISvX7lx0NNJm8MVqzr2S5FnwWq/Wt2P3tU3ZZfOg+XQGIixvhtH1Dl6L
 xmRVn0Ro7aCTRPkGUxagA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:afSa5eHiNOM=:MGqiQ8kWjhFK8uSATz0Z6r
 +bzJLZmIFmByjgDs6Y3IQ/zOWCPkX+7Jxa2xfPS9nVr/no4S2kP+/+S7So7Cvb9DjT3nMfEiG
 3V0Zo8J649pvK+LLNo3HOJ6iMOjLRfE+LrZjf9XYj18Z4QbPUv6s7hetqvJVMg2RfYZWkEdEW
 sb+3irKb9+ZnUxUr8fsFHN1z8NrzAfPPKEVwZDmK6laIt/TQ0IIgcEGIxnvusJik9TdUIN/o3
 7yLn0f6bwu77RktAattFCe6DDC6qkTFrtnQypaEePqx47StnOXyHz/zccS8pJbSP9i6Appm0z
 JSlXzLELISst1iV1j5gdyt47SxTSVvn5CVFREkFct8oWJHB3wrgx9yzze4qZ89qzgIhl0z/qi
 A9Ktdg/JpPPYPOLAIjGu41VBEzsXqyUtP2kOG3k+gliufx+o0t9y96BYUQ3O+EBfGuMXrq6SS
 lpxtCAn0NO2SmtucgVXATEWvAneEMx4xwDD21ooYDCEItZsMW8TE6Fv9omld1TefTawh0VJEj
 oF+Q1ZcSwFVpXyRdlHwfZ+lv5mjc8LzMtywOJUdZhYmQP6UNIIvIpGV5r+XEIfscYoazdRluK
 +paerUye0BJDvdaXUOHDLY9A+4HccW1gJEtNkCAGBsIXZLOpVzwr3U55GPK9rgS/f9O4cBCf5
 Y0WJsU9pQVDP+3CQxSRteEW7NAtyWNrbTLp9Z5MmR9Idhij5aS9XDYGbCMwbFqI9cU7gIE09d
 jWgfhYCEzJxfBymA/VC94f3LYsogZEIKuuxMFnQJIYcn7xT4owCJ+I0S0g0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_031618_887710_1A900270 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============0880036773627157581=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============0880036773627157581==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=K3CXo5sTLJSez0=-="

This is a multipart message in MIME format.

--=-=K3CXo5sTLJSez0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI,

you mix spaces and tabs for indentation in DTS files. Those should have tab=
 indentation.

Other comments below.

> -----Original Message-----
> From: Robinson Wu [mailto:wurobinson@qq.com]
> Sent: Sonntag, 21. Juli 2019 14:00
> To: openwrt-devel@lists.openwrt.org
> Cc: Robinson Wu <wurobinson@qq.com>
> Subject: [PATCH] ramips: add support to JS7628 development board
>=20
> This commit adds support for the ZhuoTK JS7628 development board, The
> device has the following specifications:
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
> 1. Connect to serial console at the mini usb, which has been connected to
> UART0
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
>    Input Linux Kernel filename (root_uImage) =3D=3D:openwrt-firmware.bin =
8.
> board will download file from tftp server, write it to flash and reboot.
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
>  target/linux/ramips/base-files/etc/board.d/01_leds |  6 ++
> .../linux/ramips/base-files/etc/board.d/02_network |  3 +
> .../ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts | 61
> +++++++++++++++++  .../ramips/dts/mt7628an_zhuotk_js7628-32m-
> 256m.dts | 61 +++++++++++++++++
>  .../ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts   | 61
> +++++++++++++++++
>  .../linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi   | 80
> ++++++++++++++++++++++
>  target/linux/ramips/image/mt76x8.mk                | 33 +++++++++
>  7 files changed, 305 insertions(+)
>  create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-
> 16m-128m.dts
>  create mode 100644 target/linux/ramips/dts/mt7628an_zhuotk_js7628-
> 32m-256m.dts
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
> +	ucidef_set_led_timer "system" "system" "js76x8:green:system"
> "1000" "1000"
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
> index 0000000..397cd01
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-16m-128m.dts
> @@ -0,0 +1,61 @@
> +/dts-v1/;
> +
> +
> +#include "mt7628an_zhuotk_js76x8.dtsi"
> +
> +/ {
> +	compatible =3D "zhuotk,js7628-16m-128m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS7628 (16M flash/128M RAM)"; };
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
> index 0000000..10970ea
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-32m-256m.dts
> @@ -0,0 +1,61 @@
> +/dts-v1/;
> +
> +
> +#include "mt7628an_zhuotk_js76x8.dtsi"
> +
> +/ {
> +	compatible =3D "zhuotk,js7628-32m-256m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS7628 (32M flash/256M RAM)"; };
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
> index 0000000..66db75f
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js7628-8m-64m.dts
> @@ -0,0 +1,61 @@
> +/dts-v1/;
> +
> +
> +#include "mt7628an_zhuotk_js76x8.dtsi"
> +
> +/ {
> +	compatible =3D "zhuotk,js7628-8m-64m", "zhuotk,js76x8",
> "mediatek,mt7628an-soc";
> +	model =3D "ZhuoTK JS7628 (8M flash/64M RAM)"; };
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
> index 0000000..0dcfd10
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7628an_zhuotk_js76x8.dtsi
> @@ -0,0 +1,80 @@
> +#include "mt7628an.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "zhuotk,js76x8", "mediatek,mt7628an-soc";
> +
> +        aliases {
> +                led-boot =3D &led_system;
> +                led-failsafe =3D &led_system;
> +                led-running =3D &led_system;
> +                led-upgrade =3D &led_system;
> +        };
> +
> +        chosen {
> +                bootargs =3D "console=3DttyS0,115200";
> +        };
> +
> +        gpio-leds {
> +                compatible =3D "gpio-leds";
> +
> +                led_system: system {
> +                        label =3D "js76x8:green:system";
> +                        gpios =3D <&gpio1 5 GPIO_ACTIVE_LOW>;
> +                };
> +
> +                wifi {
> +                        label =3D "js76x8:green:wifi";
> +                        gpios =3D <&gpio1 7 GPIO_ACTIVE_LOW>;
> +                };
> +        };
> +
> +	keys {
> +		compatible =3D "gpio-keys-polled";
> +		poll-interval =3D <20>;
> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio1 12 GPIO_ACTIVE_HIGH>;
> +			linux,code =3D <KEY_RESTART>;
> +                };
> +        };
> +};
> +
> +
> +&pinctrl {
> +	state_default: pinctrl0 {
> +		gpio {
> +			ralink,group =3D "gpio","wdt","pwm0","pwm1","spis",
> +				"refclk";
> +			ralink,function =3D "gpio";
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

Do these devices typically have a label with their MAC addresses printed on=
 it? If yes, does the printed MAC address correspond to ethernet here?

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
> index fae9fb0..f97d78a 100644
> --- a/target/linux/ramips/image/mt76x8.mk
> +++ b/target/linux/ramips/image/mt76x8.mk
> @@ -549,6 +549,39 @@ define Device/zbtlink_zbt-we1226  endef
> TARGET_DEVICES +=3D zbtlink_zbt-we1226
>=20
> +define Device/zhuotk_js7628-8m-64m
> +  MTK_SOC :=3D mt7628an
> +  IMAGE_SIZE :=3D $(ralink_default_fw_size_8M)

Please specify the IMAGE_SIZE in kiB, e.g. 7872k (also below).

> +  DEVICE_VENDOR :=3D ZhuoTK
> +  DEVICE_MODEL :=3D JS7628
> +  DEVICE_VARIANT :=3D 8M flash/64M RAM
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci
> +  SUPPORTED_DEVICES +=3D js7628-8m-64m js7688-8m-64m ztk7628p-8m-64m

What do you want to achieve with this line?

Best

Adrian Schmutzler

> +endef TARGET_DEVICES +=3D zhuotk_js7628-8m-64m
> +
> +define Device/zhuotk_js7628-16m-128m
> +  MTK_SOC :=3D mt7628an
> +  IMAGE_SIZE :=3D $(ralink_default_fw_size_16M)
> +  DEVICE_VENDOR :=3D ZhuoTK
> +  DEVICE_MODEL :=3D JS7628
> +  DEVICE_VARIANT :=3D 16M flash/128M RAM
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci
> +  SUPPORTED_DEVICES +=3D js7628-16m-128m js7688-16m-128m ztk7628p-
> 16m-64m
> +endef TARGET_DEVICES +=3D zhuotk_js7628-16m-128m
> +
> +define Device/zhuotk_js7628-32m-256m
> +  MTK_SOC :=3D mt7628an
> +  IMAGE_SIZE :=3D $(ralink_default_fw_size_32M)
> +  DEVICE_VENDOR :=3D ZhuoTK
> +  DEVICE_MODEL :=3D JS7628
> +  DEVICE_VARIANT :=3D 32M flash/256M RAM
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-ohci
> +  SUPPORTED_DEVICES +=3D js7628-32m-256 js7688-32m-256m ztk7628p-32m-
> 64m
> +endef TARGET_DEVICES +=3D zhuotk_js7628-32m-256m
> +
>  define Device/zyxel_keenetic-extra-ii
>    MTK_SOC :=3D mt7628an
>    IMAGE_SIZE :=3D 14912k
> --
> 2.7.4
>=20

--=-=K3CXo5sTLJSez0=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl01jOMACgkQoNyKO7qx
AnB2shAApjjlcwxxH4PyecwbrwpSEcwM3p3CUHcS/eBtPV4n9YAxlKoNrNqvR6FG
nH13Bx8V0NtxLaqk0pYpcRNGSgEBP75YySXjWVeq1za2MhjKNfwxOl4qk2sdwoCc
2S7ks2MO/IbLoGkFmF0wuD42TpuFUidgigfUTZP/ZvBKNLfYknBfGqvBP2ki2vr2
KKHk6/w4rEVKmhdZagngwZ67ckMnwVbirSJqoNle5VKB/QZ9D6lJEigDGuIKM3Wt
bt/BlVjHrXnv15Gf+zbrAU4zTRt7PIm65WYfNJmU0IdxwFmQy1sDZ4+VOKDQck1p
y5sa6at2bwH4wN7IatCLYBGPwwcJo97c759M28T+NkteDy1vWrwrp/G3L3PDyP89
DfxU8YxgLKJHI3GjJw+KZZm7LMCeExtVTCSGvlJ7ILGpN/RZRdQ6cWr2oZNMQcjb
fU+5gdXl5FO371KrYsx6IanY6Ex3E/4MCiMdBCfiiBhJ9R2Tv4uI93Hx371bRLAO
qeraWS/wdKHk9lbm+A4We9iW82S1IDqx2uTbMtPLcIBx9Udohv1MQAgYnCrMNDr6
FwwgGoXr2sFTvd4639eeENKsfknmlKrra54Fz8oLyZSxzOuPaKndax+f/Ki9Uuvu
Fr5FyT3fKk4G3ReFnUSrT2K8QQvW+wO4simuIjgoJ/EAq0Fkb1Y=
=cWkA
-----END PGP SIGNATURE-----


--=-=K3CXo5sTLJSez0=-=--



--===============0880036773627157581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0880036773627157581==--


