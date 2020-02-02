Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5A214FE83
	for <lists+openwrt-devel@lfdr.de>; Sun,  2 Feb 2020 18:15:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K29z37wC7USY99JrgcXHjVMt1a+n/xQrfgZrmMfCas4=; b=BflTCUGl7BVg6Jn8S5yplwzBf
	yBUpUmJjc8N0NiSU5qp/7vcrVqkUcXkiwV4cyzBShNHKTBlVAzdkKe/2uEfW3S/ekxAkeX24+0ca2
	vK3CL/QL4wQONoEIKJ6xcqPmBH5H7acTtAxx51IiJWaBn08tBFt6LdaYlILpDjkpAYbOOzad/ga1n
	eRwsXWUEpc9A2CEqauPErAlTckNY6P8RKUsUCu+O1HBqdrcwkNC+pLTMxfhKHJFrtH+2Nqkf01jN/
	kUhZtMgzztNxOCbK2x1cgBLu/91SYlQWeHrBR7KSMiGYWxnYHwCpJIWJzsjKT/9I9eHtgwklbslEQ
	UXvyWBSqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyIqe-0005Jt-2E; Sun, 02 Feb 2020 17:15:52 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyIqW-0005JM-Cw
 for openwrt-devel@lists.openwrt.org; Sun, 02 Feb 2020 17:15:46 +0000
Received: from desktop ([188.195.207.249]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MG9wg-1imGfq0stI-00GXNz; Sun, 02 Feb 2020 18:15:42 +0100
From: <mail@adrianschmutzler.de>
To: "'Daniel Golle'" <daniel@makrotopia.org>, <openwrt-devel@lists.openwrt.org>
References: <20200202163756.GA9941@makrotopia.org>
In-Reply-To: <20200202163756.GA9941@makrotopia.org>
Date: Sun, 2 Feb 2020 18:15:41 +0100
Message-ID: <00f301d5d9ec$65e67910$31b36b30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQGt1ZgpsoE16kOmY1b3vE05omGwXqhYKomA
Content-Language: de
X-Provags-ID: V03:K1:e9cKW6wAsBPSK0zIqaJqF7oq+zddJ3TVcV2o9Vyn3VtV0rqrmSY
 4d5Ygbf3eQW40NHdt7B43jGKgjEs9PBNs9vC/nslmT+e+LNZmf2MhzU9/l9ZtEb7T3pkNmM
 caqpEm5tlHv0GU8hOfJBB/yjq/F2sn5AoTtVuyka7/JDK2kc5DHf5o/037ix0vbY4v0YJGa
 HoSu51NzN6iuDRcs4J45A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3zHiKXs621I=:jfoo7vMyhHWt8K9RjKSpyD
 T2sFNRE99hEPH/Qf7Zp5uGPqrY4DXog6TggoTmn1gmb/v6iSSDPREXV3IAglN4Ihssa06tYyR
 0gLSH0ctDvqwWpuGmE4EcGuXOCF7o7FV3OAyGjACLBErOkJhYqDAPdtApXjh7pC9X5R6QQN8b
 P1SAZkkFPMoWtwE9eM9QIn5GZUlzYYayF5kcFaNz/7k2JIdSaD4kHjTbNygt7DA6boIHqH4C/
 /edNrMYFQW06X/n1i/lR2cNXun1c7dqBJSHy3Xc5uZLhouzD+pDbz8XWMHXbnueGLv/2Pwtl7
 FT2JZcuUPWUYnRo2O7NsQTm57LvWa3XQ2wZJrBcUjHTEICVOej1diukkDZeFAYCaLfHKBTLEj
 bu1tu4vwjoMtmPOAgtU5zBcrLTgS7EgGK0uAJCoNrelqRQ6ExoLwa7p9h+DYF22Zm+3gQTSR7
 NvqmzrX+qTtBywfPHd2+oeB11EXPD3HGbrrSvXt1qEsF9hoVwQcl5OKPnz3y01mt0Fon0uBcJ
 U/pmt6aAWclPdZ3qCLq6Z8zCgoVCovHa+2jCEqEF9dFCwgyLDJjlSIFfi4tZo+I0lFgxs5ZeV
 D8DmGajZ5ng1icV5PcXqJ20bwBNp69ohD5YFI0LAW3hOwBnF6O4iw/laxrw4hPEQcu5vNl3oW
 7qjzU1nzLypz8HDOQ/TqQHCL4S8crZ5+WOnOJKygJGfZkUOzpS9503WRFE4ECVM/Elzpydqt7
 A8yUONlfNRsY1pgZ3aeJLBbKzsSLYJ79C4UWoSZZWo/qz6JzHbGQeyrR4LVLr3tjqai6RxTCi
 zDbYYw4gAhfurF8lQvofEunqNkjv4OznKLnBZLQY5ZDwJm2AjAmuXzHLW2dqCPhMQX1OCEc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_091544_735984_5F7ABF84 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for Teltonika
 RUT955
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
Content-Type: multipart/mixed; boundary="===============8921701935858865067=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8921701935858865067==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=LhQeMsDMzmF0xO=-="

This is a multipart message in MIME format.

--=-=LhQeMsDMzmF0xO=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

several comments inline below.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Daniel Golle
> Sent: Sonntag, 2. Februar 2020 17:42
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for Teltonika
> RUT955
>=20
> The Teltonika RUT955 is an industrial 2G/3G/4G WiFi router with various
> additional inputs and outputs.
>=20
> Specification:
>=20
> - 550/400/200 MHz (CPU/DDR/AHB)
> - 128 MB of RAM (DDR2)
> - 16 MB of FLASH (SPI NOR)
> - 4x 10/100 Mbps Ethernet, with passive PoE support on LAN1
> - 2T2R 2,4 GHz (AR9344)
> - built-in 3G module (example: Qutectel EC-25EU)
> - RS232 on D-Sub9 port (Cypress ACM via USB, /dev/ttyACM0)
> - RS422/RS485 (AR934x high speed UART, /dev/ttyATH1)
> - analog 0-9V input (MCP3221)
> - various digital inputs and outputs incl. a relay
> - 2x miniSIM slot (can be swapped via GPIO)
> - 2x RP-SMA/F (Wi-Fi), 2x SMA/F (3G), 1x GPS
> - 2x 74HC595 shift registers providing 16 GPOs
> - 12x LED (4 are driven by AR9344, 7 by 74HC595)
> - 1x button (reset)
> - DC jack for main power input (9-30 V)
> - debugging UART available on PCB edge connector
>=20
> Serial console (/dev/ttyS0) pinout:
>=20
> - RX: pin1 (square) on top side of the main PCB (AR9344 is on top)
> - TX: pin1 (square) on bottom side
>=20
> Flash instruction:
>=20
> Vendor firmware is based on OpenWrt CC release. Use the "factory" image
> directly in GUI (make sure to uncheck "keep settings") or in U-Boot web
> based recovery. To avoid any problems, make sure to first update vendor
> firmware to latest version - "factory" image was successfully tested on d=
evice
> running "RUT9XX_R_00.06.051" firmware and U-Boot "3.0.2".
>=20
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  target/linux/ath79/dts/ar9344_tlt_rut955.dts  | 301 ++++++++++++++++++
>  .../generic/base-files/etc/board.d/02_network |   5 +
>  target/linux/ath79/image/generic.mk           |  37 +++
>  3 files changed, 343 insertions(+)
>  create mode 100644 target/linux/ath79/dts/ar9344_tlt_rut955.dts
>=20
> diff --git a/target/linux/ath79/dts/ar9344_tlt_rut955.dts
> b/target/linux/ath79/dts/ar9344_tlt_rut955.dts
> new file mode 100644
> index 0000000000..06d18f8d26
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar9344_tlt_rut955.dts
> @@ -0,0 +1,301 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar9344.dtsi"
> +
> +/ {
> +	model =3D "Teltonika RUT955";
> +	compatible =3D "tlt,rut955", "qca,ar9344";

I would prefer having the full vendor name here (teltonika,rut955), as we t=
ried to avoid abbreviations in names for ath79 wherever possible (with the =
exception of ubnt).

> +
> +	aliases {
> +		serial0 =3D &uart;
> +		serial1 =3D &hs_uart;
> +		led-boot =3D &led_system_green;
> +		led-failsafe =3D &led_system_red;
> +		led-running =3D &led_system_green;
> +		led-upgrade =3D &led_system_red;
> +		label-mac-device =3D &eth1;
> +	};
> +
> +	i2c {
> +		compatible =3D "i2c-gpio";
> +		scl-gpios =3D <&gpio 16
> (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		sda-gpios =3D <&gpio 17
> (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		hwmon@4d {
> +			compatible =3D "microchip,mcp3221";
> +			reg =3D <0x4d>;
> +		};
> +	};
> +
> +	gpio_ext_spi {
> +		compatible =3D "spi-gpio";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pmx_led_spi_gpio>;
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		sck-gpios =3D <&gpio 4 GPIO_ACTIVE_HIGH>;     // 74HC595
> SRCLK (Serial Clock)
> +		mosi-gpios =3D <&gpio 12 GPIO_ACTIVE_HIGH>;   // 74HC595
> SER (Serial)
> +		cs-gpios =3D <&gpio 20 GPIO_ACTIVE_HIGH>;     // 74HC595
> RCLK (Register Clock)
> +		num-chipselects =3D <1>;
> +
> +		gpio_ext: gpio_ext@0 {
> +			compatible =3D "fairchild,74hc595";
> +			reg =3D <0>;
> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			registers-number =3D <2>;
> +			spi-max-frequency =3D <10000000>;
> +			gpio-line-names =3D "signal_bar0", "signal_bar1",
> "signal_bar2", "signal_bar3",
> +				"signal_bar4", "status_red", "status_green",
> "sim_sel",
> +				"", "relay", "modem_vbus", "modem_rst",
> +				"", "", "", "";
> +		};
> +	};
> +
> +	reg_usb_modem_vbus: reg_usb_modem_vbus {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usb_modem_vbus";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		gpio =3D <&gpio_ext 10 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		signal0 {
> +			label =3D "rut955:green:signal1";

I'd prefer having the same numbering for node and label here (signal0<>sign=
al1).

> +			gpios =3D <&gpio_ext 0 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "off";
> +		};
> +
> +		signal1 {
> +			label =3D "rut955:green:signal2";
> +			gpios =3D <&gpio_ext 1 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "off";
> +		};
> +
> +		signal2 {
> +			label =3D "rut955:green:signal3";
> +			gpios =3D <&gpio_ext 2 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "off";
> +		};
> +
> +		signal3 {
> +			label =3D "rut955:green:signal4";
> +			gpios =3D <&gpio_ext 3 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "off";
> +		};
> +
> +		signal4 {
> +			label =3D "rut955:green:signal5";
> +			gpios =3D <&gpio_ext 4 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "off";
> +		};
> +
> +		led_system_red: systemred {

Please add an underscore: system_red

> +			label =3D "rut955:green:red";

This should be rut955:red:system ?

> +			gpios =3D <&gpio_ext 5 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "off";

Default-state "off" is default, so I think this is not needed (also above).

> +		};
> +
> +		led_system_green: systemgreen {
> +			label =3D "rut955:green:system";
> +			gpios =3D <&gpio_ext 6 GPIO_ACTIVE_HIGH>;
> +			default-state =3D "on";
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 15 GPIO_ACTIVE_HIGH>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +};
> +
> +&gpio {
> +	gpio-line-names =3D "", "wan_led", "input", "mmc_cs",
> +		"leds_sck", "", "", "",
> +		"", "", "", "",
> +		"leds_mosi", "lan2_led", "lan1_led", "",
> +		"i2c_scl", "i2c_sda", "", "DIN2",
> +		"spi?", "DIN1", "lan3_led";
> +};
> +
> +&ref {
> +	clock-frequency =3D <40000000>;
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&hs_uart {
> +	status =3D "okay";

Style nitpick: Typically we have an empty line after status.

> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pmx_uart2>;
> +};
> +
> +&spi {
> +	cs-gpios =3D <0>, <0>;
> +	num-cs =3D <2>;
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&jtag_disable_pins>, <&pmx_spi_cs1>;
> +
> +	status =3D "okay";
> +

Style nitpick: Typically, status comes first.

> +	flash@0 {
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x0 0x20000>;
> +				read-only;
> +			};
> +
> +			config: partition@20000 {
> +				label =3D "config";
> +				reg =3D <0x20000 0x10000>;
> +				read-only;
> +			};
> +
> +			art: partition@30000 {
> +				label =3D "art";
> +				reg =3D <0x30000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label =3D "firmware";
> +				reg =3D <0x40000 0xf30000>;
> +				compatible =3D "tplink,firmware";
> +			};
> +
> +			partition@f70000 {
> +				label =3D "event-log";
> +				reg =3D <0xf70000 0x80000>;
> +			};

There are 0x10000 left empty at the end?
Is this writeable by intention?

> +		};
> +	};
> +
> +	microsd@1 {
> +		compatible =3D "mmc-spi-slot";
> +		spi-max-frequency =3D <25000000>;
> +		reg =3D <1>;
> +		voltage-ranges =3D <3200 3400>;
> +		broken-cd;
> +		status =3D "disabled";
> +	};
> +};
> +
> +&usb {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	status =3D "okay";
> +
> +	port@1 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		reg =3D <1>;
> +
> +		hub_port1: port@1 { // user USB port
> +			compatible =3D "usb-a-connector";
> +			reg =3D <1>;
> +		};
> +
> +		hub_port2: port@2 { // N/C
> +			reg =3D <2>;
> +		};
> +
> +		hub_port3: port@3 { // Cypress CDC-ACM serial (RS-232 D-
> Sub9)
> +			reg =3D <3>;
> +		};
> +
> +		hub_port4: port@4 { // Quectel EC-25 modem
> +			reg =3D <4>;
> +			vbus-supply =3D <&reg_usb_modem_vbus>;
> +		};
> +	};
> +};
> +
> +&usb_phy {
> +	status =3D "okay";
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +
> +	mtd-cal-data =3D <&art 0x1000>;
> +	mtd-mac-address =3D <&config 0x0>;
> +	mtd-mac-address-increment =3D <2>;

No other addresses available in flash? art 0x1002 not usable?

> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +
> +	mtd-mac-address =3D <&config 0x0>;
> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		switch-phy-swap =3D <0>;
> +		switch-only-mode =3D <1>;
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	phy-handle =3D <&swphy4>;
> +
> +	mtd-mac-address =3D <&config 0x0>;
> +	mtd-mac-address-increment =3D <1>;
> +};
> +
> +&builtin_switch {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pmx_leds_switch>;
> +};
> +
> +&pinmux {
> +	pmx_spi_cs1: pinmux_spi_cs1 {
> +		pinctrl-single,bits =3D <0x0 0x07000000 0xff000000>;
> +	};
> +
> +	pmx_led_spi_gpio: pinmux_led_spi_gpio {
> +		pinctrl-single,bits =3D <0x4 0x0 0xff>,
> +					<0xc 0x0 0xff>,
> +					<0x14 0x0 0xff>;
> +	};
> +
> +	pmx_leds_switch: pinmux_leds_switch {
> +		pinctrl-single,bits =3D  <0x0 0x00002d00 0x0000ff00>,
> +					<0xc 0x002c2b00 0x00ffff00>,
> +					<0x14 0x002a0000 0x00ff0000>;
> +	};
> +
> +	pmx_uart2: pinmux_uart2 {
> +		pinctrl-single,bits =3D <0x10 0x4f000000 0xff000000>,
> +				<0x3c 0x000b0000 0x00ff0000>;
> +	};
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index 4630cf8447..4b75dc0359 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -210,6 +210,11 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "1:lan" "2:lan" "3:wan"
>  		;;
> +	tlt,rut955)
> +		ucidef_set_interface_wan "eth1"
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "2:lan:3" "3:lan:2" "4:lan:1"
> +		;;
>  	tplink,archer-a7-v5|\
>  	tplink,archer-c6-v2|\
>  	tplink,archer-c6-v2-us|\
> diff --git a/target/linux/ath79/image/generic.mk
> b/target/linux/ath79/image/generic.mk
> index 1bc7b2d68e..ab11120da8 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -36,6 +36,11 @@ define Build/addpattern
>  	-mv "$@.new" "$@"
>  endef
>=20
> +define Build/append-md5sum-bin
> +	$(STAGING_DIR_HOST)/bin/mkhash md5 $@ | sed 's/../\\\\x&/g' |\
> +		xargs echo -ne >> $@
> +endef
> +
>  define Build/cybertan-trx
>  	@echo -n '' > $@-empty.bin
>  	-$(STAGING_DIR_HOST)/bin/trx -o $@.new \ @@ -73,6 +78,17 @@
> define Build/pisen_wmb001n-factory
>    rm -rf "$@.tmp"
>  endef
>=20
> +define Build/teltonika-fw-fake-checksum
> +	# Teltonika U-Boot web based firmware upgrade/recovery routine
> compares
> +	# 16 bytes from md5sum1[16] field in TP-Link v1 header (offset: 76
> bytes
> +	# from begin of the firmware file) with 16 bytes stored just before
> +	# 0xdeadc0de marker. Values are only compared, MD5 sum is not
> verified.
> +	let \
> +		offs=3D"$$(stat -c%s $@) - 20"; \
> +		dd if=3D$@ bs=3D1 count=3D16 skip=3D76 |\
> +		dd of=3D$@ bs=3D1 count=3D16 seek=3D$$offs conv=3Dnotrunc endef
> +
>  define Device/seama
>    KERNEL :=3D kernel-bin | append-dtb | relocate-kernel | lzma
>    KERNEL_INITRAMFS :=3D $$(KERNEL) | seama @@ -1044,6 +1060,27 @@
> define Device/sitecom_wlr-7100  endef  TARGET_DEVICES +=3D sitecom_wlr-
> 7100
>=20
> +define Device/tlt_rut955
> +  SOC :=3D ar9344
> +  DEVICE_TITLE :=3D Teltonika RUT955

Please use newer syntax:

DEVICE_VENDOR :=3D Teltonika
DEVICE_MODEL :=3D RUT955

> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-usb-acm  kmod-usb-net-qmi-
> wwan

Double space after -acm; I'd like a line break here.

> +kmod-usb-serial-option kmod-hwmon-mcp3021 uqmi -uboot-envtools
> +  IMAGE_SIZE :=3D 15552k
> +  TPLINK_HWID :=3D 0x35000001
> +  TPLINK_HWREV :=3D 0x1
> +  TPLINK_HEADER_VERSION :=3D 1
> +  KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-v1-header
> +  KERNEL_INITRAMFS :=3D kernel-bin | append-dtb | lzma | uImage lzma
> +  IMAGES :=3D sysupgrade.bin factory.bin

Could also use "IMAGES +=3D factory.bin" here.

Best

Adrian

> +  IMAGE/factory.bin :=3D append-kernel | pad-to $$$$(BLOCKSIZE) | append-
> rootfs |\
> +	pad-rootfs | teltonika-fw-fake-checksum | append-string master |\
> +	append-md5sum-bin | check-size $$$$(IMAGE_SIZE)
> +  IMAGE/sysupgrade.bin :=3D append-kernel | pad-to $$$$(BLOCKSIZE) |\
> +	append-rootfs | pad-rootfs | append-metadata |\
> +	check-size $$$$(IMAGE_SIZE)
> +  SUPPORTED_DEVICES +=3D rut900
> +endef
> +TARGET_DEVICES +=3D tlt_rut955
> +
>  define Device/trendnet_tew-823dru
>    SOC :=3D qca9558
>    DEVICE_VENDOR :=3D Trendnet
> --
> 2.25.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=LhQeMsDMzmF0xO=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl43A7gACgkQoNyKO7qx
AnDU5w/6Ar62yckW2w3XOwxkoAqEfCRhbklW/RMYAJRzNWwKjDy899mV+Jo/ol62
VQ+1elaFgzTtACEKp+e2cgwHaRIePjXJqFGtd76oqzckI1xr2hm1VrOXMWwiHfpU
P+21H+Bo98fju9G5aCcfPLORJHKaA9PRuUAcuC2p5rAcwSBELtwbj9YcJoBmmVvt
1wVDBsdAHo5mxv7gvUIzH1WOciAGONo0O46VclbPI9EcLUJDBK7SHdoQsFgnhkOA
rxPRo0ICxFnKkjom6OMyf1ElRwf1BcrxmmjPh3UlmP2na4i3sjenOsYtTDa9MeJZ
4YBUJpzf/L7ZlNEoDXSO2FITvVRmUj4MyTFqMQITO85O0f4owhkgxK9ANH0dkIFK
8y2dhjn+p4DFxa961fyiPedcppvFtTATBnf4ddPzS5wO9TwfpTrHztxBovPFHuX1
DwdXY8tD/NbjoDvtCVcKERidJcOyafAZbWj/IT9/TUNJSACKdi+Nk4HQhqcAvyMc
mxr1IHVaSITsGarb4/sODvZB4wcgJSDY/up3mnBaAkQvuCmMMpDf9AzjyUXeOg+a
mxbLr6pKUc9kP163P/YZ7rx2u0TY5nURrNbSWC4k7icGSDb1zeTE1WuAXcDZO7DI
I+aH83hEH5UdOHTO4JiTgMWZR+IDScPeoKi2EsJyBBDlgpS7iNQ=
=z5KM
-----END PGP SIGNATURE-----


--=-=LhQeMsDMzmF0xO=-=--



--===============8921701935858865067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8921701935858865067==--


