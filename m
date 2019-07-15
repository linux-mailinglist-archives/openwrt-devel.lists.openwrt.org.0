Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26BB68A91
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 15:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DZaL5W9bAZPM3PmS9HQB9mUMwWGkABUEmcJ3SMXCH4s=; b=lp/j+0q2AnQKKQNDJnL7g0Stx
	v0V7HDEEkEEFj60DwZWdLbkY6wsdTckJzN1mFjSOKTyHetoUCUVoOzsFbT5sZf9V3qS5pwLagLK1A
	SjNqW7qaPXDjckdZsXy6SaRUkY7KEEQtP8pipepGMqN15L8CSfUekDnd18T6FHehoWyJjoDvkIsgh
	1YYEJhPSRbM7qrTqCYmDNyz/Ic7qE5jyZGnmFuvdifdJ3qd02AaoC6/0N46fzL7dEoTJTM4V/gWPo
	01dxLukcXDIIYDMu7b2R3GI2VVsB6fPgCXdA9gjinEaSsmPdIZCBObsmyjyw3AR7g1oyKQVVCxdEJ
	WsV5l7lCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn13B-0008T8-GY; Mon, 15 Jul 2019 13:29:53 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn12s-0008SF-VD
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 13:29:37 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MzR0i-1iiGOP0NtY-00vKvL; Mon, 15
 Jul 2019 15:29:29 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Chuanhong Guo'" <gch981213@gmail.com>, <openwrt-devel@lists.openwrt.org>
References: <20190715115342.4190-1-gch981213@gmail.com>
In-Reply-To: <20190715115342.4190-1-gch981213@gmail.com>
Date: Mon, 15 Jul 2019 15:29:27 +0200
Message-ID: <017401d53b11$543bb6a0$fcb323e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQH674KN3aOZ/CfDAt9spMBdYhysvKaAQy4Q
MIME-Version: 1.0
X-Provags-ID: V03:K1:DhtGkHO0vbfNyHuB65KXEBY2uIJMywF2hOlAESxazZ6mFZDYD7a
 IslhBLfeyKgmnDXmou6gkOXJa3ruEYr9QfOL6v5hZjE1ktSM4wH6/5zJHBRorbOcvV3hMyJ
 6Uc4lsx279wbpaMsOAReTFSwwtX4kcrRgjQ31mzCmZvEuqkIkJo6sd4aUT+MfDA8Y0ULNqR
 JZSLiIjma/vIg6eSBLmoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uZ2n/TRHFvM=:Wy14Xv9uGxnNGtOzMt2z+T
 5GNFdcYB8636qUh4fGGtDgJYHfdkh/WaKWmGI6WZfUrThAdgOeHRcH1RVQBEhmkHcn8yixTm0
 OjA5PH9LNowH6OcmrWYEyhs+pTOzLF+LM00bw0STZsWBwJaxNS5+42KMihUQMw6dBKFxgYaHF
 pBitbDUUDNdRVRgkscRplhYHGwfJiRp8BtB7luAoJc0ZC1Rfg9YO/gRJeae97/vPhXb7ZlZFp
 36PaA+IZUUOTHvowsVsJ2h29OyknEtiUqNDabqOH7OZ90MArfIMAbJbhgTFQReHdu/IVN/ZFI
 t9X3ArPmaeC7LySwdJnUkIjcIOczrozii9kpkKhRm+P62+FcNPVTvHw6eLdAAFEwV8uQZZBfm
 2bmKshuAiYFjXGPtwKi8MuVINOo6Mf4JbSbH7/WTCplWh6bJkxhxPRl60OaTfvdvd7pCewXnu
 +M3/NBoyN698yf6TzxHBQP4GYczFh/g5yod/mB0YHDeGXxU4Pi2+DXgYZ1GbjrsSfZQj6JMO0
 N9v4hKKBspHsLeq9yfKiE6fLXrick2rgqsZ0y1JGkftCrmccLSMRxV2Y9youeSWk2+MIZAl+b
 eyEQGDyWLEL/N67+cOVs4qg9gvUJ71QnMWwYfd+bH9dz2J62phXloaRfa942BuJUIahiSjdAp
 YdauVtnr7VBBFotjR62a+obyQD36H1q19zIG6nSW0GLithJkwakuVgtFgvah67bs8skRoVDeL
 d2Cv+HtNbJTmLfLxmvXjtQwJ+JSpA5boYJ6gh3Bgm3t4UQGg/KoIhmtj/QA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_062935_305423_DC6FD853 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Qihoo C301
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
Content-Type: multipart/mixed; boundary="===============8856717419334114309=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8856717419334114309==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=K3CXo5sTLJSez0=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=K3CXo5sTLJSez0=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

can you tell which of the 4 MAC addresses is on the device label, so I can =
add it to my label-mac-address PR?

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Chuanhong Guo
> Sent: Montag, 15. Juli 2019 13:54
> To: openwrt-devel@lists.openwrt.org
> Cc: Chuanhong Guo <gch981213@gmail.com>
> Subject: [OpenWrt-Devel] [PATCH] ath79: add support for Qihoo C301
>=20
> Specifications:
> - SoC: AR9344
> - RAM: 128MB
> - Flash: 2 * 16MB (MX25L12845)
> - Ethernet: 2 * FE LAN & 1 * FE WAN
> - WiFi: 2.4G: AR9344 5G: QCA9882
>=20
> Flash instruction:
> 1. Hold reset and power up the router
> 2. Set your IP to 192.168.1.x
> 3. Open 192.168.1.1 and upload the generated *factory* firmware
>=20
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
>  package/boot/uboot-envtools/files/ath79       |   3 +
>  .../ath79/base-files/etc/board.d/01_leds      |   3 +
>  .../ath79/base-files/etc/board.d/02_network   |   9 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
>  .../ath79/base-files/etc/init.d/bootcount     |  11 +
>  target/linux/ath79/config-4.19                |   1 +
>  target/linux/ath79/dts/ar9344_qihoo_c301.dts  | 236 ++++++++++++++++++
>  target/linux/ath79/image/generic.mk           |  12 +
>  9 files changed, 283 insertions(+)
>  create mode 100755 target/linux/ath79/base-files/etc/init.d/bootcount
>  create mode 100644 target/linux/ath79/dts/ar9344_qihoo_c301.dts
>=20
> diff --git a/package/boot/uboot-envtools/files/ath79 b/package/boot/uboot-
> envtools/files/ath79
> index 069d7be06b..cc11725242 100644
> --- a/package/boot/uboot-envtools/files/ath79
> +++ b/package/boot/uboot-envtools/files/ath79
> @@ -29,6 +29,9 @@ openmesh,om5p-ac-v2|\
>  yuncore,a770)
>  	ubootenv_add_uci_config "/dev/mtd1" "0x0" "0x10000" "0x10000"
>  	;;
> +qihoo,c301)
> +	ubootenv_add_uci_config "/dev/mtd9" "0x0" "0x10000" "0x10000"
> +	;;
>  esac
>=20
>  config_load ubootenv
> diff --git a/target/linux/ath79/base-files/etc/board.d/01_leds
> b/target/linux/ath79/base-files/etc/board.d/01_leds
> index 46b3e51193..ecfb7b0694 100755
> --- a/target/linux/ath79/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/base-files/etc/board.d/01_leds
> @@ -104,6 +104,9 @@ pcs,cr3000)
>  	ucidef_set_led_switch "lan3" "LAN3" "pcs:blue:lan3" "switch0" "0x10"
>  	ucidef_set_led_switch "lan4" "LAN4" "pcs:blue:lan4" "switch0" "0x02"
>  	;;
> +qihoo,c301)
> +	ucidef_set_led_wlan "wlan" "WLAN" "$boardname:green:wlan"
> "phy0tpt"
> +	;;
>  tplink,archer-a7-v5|\
>  tplink,archer-c7-v4|\
>  tplink,archer-c7-v5)
> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network
> b/target/linux/ath79/base-files/etc/board.d/02_network
> index 85e57c6eb5..f7cac3e300 100755
> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> @@ -184,6 +184,11 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "3:lan:1" "5:lan:2" "4:wan"
>  		;;
> +	qihoo,c301)
> +		ucidef_set_interface_wan "eth1"
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "2:lan" "3:lan"
> +		;;
>  	rosinson,wr818)
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "1:lan" "2:lan" "3:wan"
> @@ -328,6 +333,10 @@ ath79_setup_macs()
>  		lan_mac=3D$(k2t_get_mac "lan_mac")
>  		wan_mac=3D$(k2t_get_mac "wan_mac")
>  		;;
> +	qihoo,c301)
> +		lan_mac=3D$(mtd_get_mac_ascii devdata lanmac)
> +		wan_mac=3D$(mtd_get_mac_ascii devdata wanmac)
> +		;;
>  	rosinson,wr818)
>  		wan_mac=3D$(mtd_get_mac_binary factory 0)
>  		lan_mac=3D$(macaddr_setbit_la "$wan_mac")
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9=
k-
> eeprom b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom
> index 5a20b84344..f049dbd46a 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> @@ -127,6 +127,10 @@ case "$FIRMWARE" in
>  		ath9k_eeprom_extract "art" 4096 1088
>  		ath9k_patch_fw_mac $(mtd_get_mac_text board_data 1664) 2
>  		;;
> +	qihoo,c301)
> +		ath9k_eeprom_extract "radiocfg" 4096 1088
> +		ath9k_patch_fw_mac $(mtd_get_mac_ascii devdata
> "wlan24mac") 2
> +		;;
>  	*)
>  		ath9k_eeprom_die "board $board is not supported yet"
>  		;;
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath1=
0k-
> caldata b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-
> caldata
> index 06a48e2258..149d744eb8 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> @@ -138,6 +138,10 @@ case "$FIRMWARE" in
>  		ath10kcal_extract "art" 20480 2116
>  		ath10kcal_patch_mac $(macaddr_add $(cat
> /sys/class/net/eth0/address) +16)
>  		;;
> +	qihoo,c301)
> +		ath10kcal_extract "radiocfg" 20480 2116
> +		ath10kcal_patch_mac_crc $(mtd_get_mac_ascii devdata
> wlan5mac)
> +		;;
>  	tplink,archer-a7-v5|\
>  	tplink,archer-c2-v3|\
>  	tplink,archer-c7-v4|\
> diff --git a/target/linux/ath79/base-files/etc/init.d/bootcount
> b/target/linux/ath79/base-files/etc/init.d/bootcount
> new file mode 100755
> index 0000000000..b71fbf9a69
> --- /dev/null
> +++ b/target/linux/ath79/base-files/etc/init.d/bootcount
> @@ -0,0 +1,11 @@
> +#!/bin/sh /etc/rc.common
> +START=3D99
> +
> +boot() {
> +	case $(board_name) in
> +	qihoo,c301)
> +		local n=3D$(fw_printenv activeregion | cut -d =3D -f 2)
> +		fw_setenv "image${n}trynum" 0
> +		;;
> +	esac
> +}
> diff --git a/target/linux/ath79/config-4.19 b/target/linux/ath79/config-4=
.19
> index 6cdbb968c3..3843702a38 100644
> --- a/target/linux/ath79/config-4.19
> +++ b/target/linux/ath79/config-4.19
> @@ -167,6 +167,7 @@ CONFIG_MTD_PARSER_CYBERTAN=3Dy
>  CONFIG_MTD_PHYSMAP=3Dy
>  CONFIG_MTD_SPI_NOR=3Dy
>  CONFIG_MTD_SPLIT_LZMA_FW=3Dy
> +CONFIG_MTD_SPLIT_SEAMA_FW=3Dy
>  CONFIG_MTD_SPLIT_TPLINK_FW=3Dy
>  CONFIG_MTD_SPLIT_UIMAGE_FW=3Dy
>  CONFIG_MTD_TPLINK_PARTS=3Dy
> diff --git a/target/linux/ath79/dts/ar9344_qihoo_c301.dts
> b/target/linux/ath79/dts/ar9344_qihoo_c301.dts
> new file mode 100644
> index 0000000000..92c4433070
> --- /dev/null
> +++ b/target/linux/ath79/dts/ar9344_qihoo_c301.dts
> @@ -0,0 +1,236 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "ar9344.dtsi"
> +
> +/ {
> +	model =3D "Qihoo 360 C301";
> +	compatible =3D "qihoo,c301";
> +
> +	aliases {
> +		led-boot =3D &led_wlan_g;
> +		led-failsafe =3D &led_wlan_o;
> +		led-upgrade =3D &led_wlan_o;
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&jtag_disable_pins>;
> +
> +		led_wlan_g: wlan_g {
> +			label =3D "c301:green:wlan";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		led_wlan_o: wlan_o {
> +			label =3D "c301:orange:wlan";
> +			gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1tpt";
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +
> +	reg_eth_led_vbus {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "eth_led_vbus";
> +		regulator-min-microvolt =3D <3300000>;
> +		regulator-max-microvolt =3D <3300000>;
> +		regulator-always-on;
> +		gpio =3D <&gpio 18 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	reg_usb_vbus {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "usb_vbus";
> +		regulator-min-microvolt =3D <5000000>;
> +		regulator-max-microvolt =3D <5000000>;
> +		enable-active-high;
> +		regulator-always-on;
> +		gpio =3D <&gpio 19 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&pinmux {
> +	pmx_spi_cs1: pinmux_spi_cs1 {
> +		pinctrl-single,bits =3D <0xc 0x07 0xff>;
> +	};
> +
> +	pmx_led_switch: pinmux_led_switch {
> +		pinctrl-single,bits =3D <0x0 0x2b2a2d00 0xffffff00>;
> +	};
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
> +&gpio {
> +	status =3D "okay";
> +
> +	gpio_ext_lna0 {
> +		gpio-hog;
> +		gpios =3D <14 0>;
> +		output-high;
> +		line-name =3D "c301:ext:lna0";
> +	};
> +
> +	gpio_ext_lna1 {
> +		gpio-hog;
> +		gpios =3D <15 0>;
> +		output-high;
> +		line-name =3D "c301:ext:lna1";
> +	};
> +};
> +
> +&builtin_switch {
> +    pinctrl-names =3D "default";
> +    pinctrl-0 =3D <&pmx_led_switch>;
> +};
> +
> +&spi {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&pmx_spi_cs1>;
> +	status =3D "okay";
> +
> +	num-cs =3D <2>;
> +	cs-gpios=3D <0>, <0>;
> +
> +	flash@0 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			uboot: partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x0 0x40000>;
> +				read-only;
> +			};
> +
> +			partition@40000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x40000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@50000 {
> +				label =3D "devdata";
> +				reg =3D <0x50000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label =3D "devconf";
> +				reg =3D <0x60000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@70000 {
> +				compatible =3D "seama";
> +				label =3D "firmware";
> +				reg =3D <0x70000 0xf60000>;
> +			};
> +
> +			partition@fd0000 {
> +				label =3D "warm_start";
> +				reg =3D <0xfd0000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@fe0000 {
> +				label =3D "action_image_config";
> +				reg =3D <0xfe0000 0x10000>;
> +			};
> +
> +			partition@ff0000 {
> +				label =3D "radiocfg";
> +				reg =3D <0xff0000 0x10000>;
> +				read-only;
> +			};
> +		};
> +	};
> +
> +	flash@1 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "jedec,spi-nor";
> +		reg =3D <1>;
> +		spi-max-frequency =3D <25000000>;
> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "firmware2";
> +				reg =3D <0x0 0xf00000>;
> +			};
> +
> +			partition@f00000 {
> +				label =3D "privatedata";
> +				reg =3D <0xf00000 0x100000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&usb {
> +	status =3D "okay";
> +};
> +
> +&usb_phy {
> +	status =3D "okay";
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +
> +	wifi@0,0 {
> +		compatible =3D "qcom,ath10k";
> +		reg =3D <0 0 0 0 0>;
> +	};
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +	qca,no-eeprom;
> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +	gmac-config {
> +		device =3D <&gmac>;
> +		switch-phy-swap =3D <1>;
> +		switch-only-mode =3D <1>;
> +	};
> +};
> +
> +&eth0 {
> +	status =3D "okay";
> +	phy-handle =3D <&swphy0>;
> +};
> diff --git a/target/linux/ath79/image/generic.mk
> b/target/linux/ath79/image/generic.mk
> index 0836751e2a..4662383541 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -728,6 +728,18 @@ define Device/phicomm_k2t
>  endef
>  TARGET_DEVICES +=3D phicomm_k2t
>=20
> +define Device/qihoo_c301
> +  $(Device/seama)
> +  ATH_SOC :=3D ar9344
> +  DEVICE_VENDOR :=3D Qihoo
> +  DEVICE_MODEL :=3D C301
> +  DEVICE_PACKAGES :=3D kmod-usb2 kmod-ath10k-ct ath10k-firmware-qca988x-
> ct uboot-envtools
> +  IMAGE_SIZE :=3D 15744k
> +  SEAMA_SIGNATURE :=3D wrgac26_qihoo360_360rg
> +  SUPPORTED_DEVICES +=3D qihoo-c301
> +endef
> +TARGET_DEVICES +=3D qihoo_c301
> +
>  define Device/rosinson_wr818
>    ATH_SOC :=3D qca9563
>    DEVICE_VENDOR :=3D Rosinson
> --
> 2.21.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=K3CXo5sTLJSez0=-=
Content-Transfer-Encoding: 7bit
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl0sf7QACgkQoNyKO7qx
AnBFKxAAhL0ZkKBFEn7h0HvCiDRdWVoL8s0BBi3Dy+gNdIZed5835fkfgDv0zUrj
w3FNr6EEoTkEnIw+HCAE3geiOs+HzwMMFtIqGkZ8SyenBjgTCIrrP8wNUjt5MhzZ
OMBOKlPNJBcb1qS3DFlao1jdC/+xecZeeT0AZLEanWl+/k9Lq3RrPX8bwGR6YEoH
iOp9rM5yhh1Mx69uOzPKBaHUWj+DbtU2xhgiTXDKIimPllRDddXlzqR19+VPLCLY
7mFWowpI53T9SVbyYaTOq4cVexuFmZNkuBuHXwaIJBiiRhEuUpbSGNsnrq2NquMc
8V/O7hM2pd9SOOj6I0W+8/9sJekJmZm7QgahP58RAhVs941xPXIYDvFB46t7s65F
j84IAIxgYaIq/e2oEpVfVzjxb5DjSCz6tOmmEb/919ubrUIpeIY/JFmUW2TdYmIo
OlNe1l1Acw+rK4dRM70M2Fq8eJpLAl9MKFsMDpy6SP7C37j95OKYFOOaNv7cCKkj
9b9Xue4Yf2JW5dtVIjkRIHXqB+lUmX1om401iyRktirWQS7WfN+AF2v+wWHY4sDm
i1tZDroHrzdIhqoh3zbqg2PR9F3VoNezE9XjBFAZ4aELhxC1aURpB744yPSZYjdK
UJMuMqG2W/zl5G1hexXY8YJWkcpKN4pvcpgnhUSRyV2VxDSj8qs=
=lNbr
-----END PGP SIGNATURE-----


--=-=K3CXo5sTLJSez0=-=--



--===============8856717419334114309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8856717419334114309==--


