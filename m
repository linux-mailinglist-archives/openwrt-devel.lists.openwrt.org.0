Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A161AAF51
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 19:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QVUHztQkjY3JfvJDFPc8G4kyY/AgZzrQJVawaJxTsi4=; b=KqhvRmgRrCr9YhzRykoIrxyMI
	RQR087Ptuzgikbyd/X0sR+DH9r72rrBUDk36HIENOBrxT69NeJoQsrGtHWm+qRsVz2StFUe9NzWEJ
	BaJl+Ia8uhHuZ3j1b0gYIJb+p3cLIMYQ8fBnxC9wnCDzfgnTIwm0tm6n0HqXJA6Zxc8NQPDnzKLjw
	9dXesfaVLgGikdd5MbR9le7TSFSI3RuaCFLRDxdgKpIFaaLU0IM3EGbt1tOG0lEwVULING6GX1CnA
	lxVYRsoQ/XDDtWajySLaOVabGrYi5tIEdLE5u2YTvmAo3dzLw9Xp8LSTO3+4ZoQwjMmviwCq5dCr/
	mu3xZO0lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlhv-0002AX-Oq; Wed, 15 Apr 2020 17:20:15 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlhh-0001Fq-1P
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 17:20:03 +0000
Received: from desktop ([188.192.136.31]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MdeSt-1ipR1D3kK9-00Zf3Z; Wed, 15 Apr 2020 19:19:58 +0200
From: <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20200415164719.134391-1-mail@david-bauer.net>
 <20200415164719.134391-2-mail@david-bauer.net>
In-Reply-To: <20200415164719.134391-2-mail@david-bauer.net>
Date: Wed, 15 Apr 2020 19:19:58 +0200
Message-ID: <011701d6134a$170cc9b0$45265d10$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGrIjESYKys0yhwOiaQjQqoP85EaAIU0EDFqL+nmyA=
X-Provags-ID: V03:K1:JO/rsm/1d4GFpdmyHG3C9i5eLsxHXucHwKA/pj8Dnc+jwCj2Bq7
 4c3TRnMDP/vDR86Pp4sqaizmvalnjK4FwAl+3k/WMnc8+ZKSp6qKPeuDRmZH+avwjFgdbFq
 Jb5L+ha1oue0w5XrxnIU4RMeva63i5ikwhdlFya+O9MwTmPNqv/B1DJc0/3TlF/L3nPU5BV
 YElwNbMjIqVrvrf4BvdLA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lt2jN4sShgA=:DeVKiN/GZtbiuhia5kEGJ5
 mhL540yA5BWVR+mb5qsIiAzHZCYyC5QdA7sJjov0RWNjeY+6yotDslpGYDEaHGiRmiMxSXFIm
 6B38qmtWQ0KkoJPmWPbfRNMparuSDCJcJCLh37XbqPqlAxbpNYkSWzLy/Gr77Wj4MePYxElpm
 I4cLbglmC35uGWz3Y8zvp1RXOKo6QKmxeprah+x0Krv1aPvH1ivpridhTr74fIMnVX0jwvGlz
 aOsPtSU1iIrHW6mSxG8n3ok3z9GxGWk72g6ckgtcg/eVYc9quuWyLToVw6VJ1J+SEuBBsEn6u
 t3CRQw/IHwfm2igKfpw5UUGCEv64tqJ9qIqvuDE1DQ112hIsLlXOMXOUKgHIKvG+zxvat7K8L
 mj2X9rwjq9/AjfUyAatZH+NVQGsYULj8fChv8PQEYOcBmAfylb5s1lsSZplvAtjBVDOjLVYtY
 FDhsmYdyFkhy0/S6n6ZBxBZ/8wPBaldbYtkcHBHUgQ3yTlGeJo64kP+dWXAsVgPxphwMoNat1
 DMjgQ0/BqRJIok6vBx1wiBOnFi8+PtMx5MhuPz4X4qbzvV8VlIEtJ+lC8o+cgrkfSPFSMCnKM
 TU8TbEsytW4lCxX7FfEjX/029DJ4yaaOd3TLLAgECr1GTCGlGCreZvPk3NBmQ3GU6GTfqx3FX
 b9CDeXkGZ0IbZP3XveTPbsNkgtzncI2y82uNY+tjtQcW4kZfvN5EYiVv9hdj4usUKp3KdMMDi
 giE0rtDouHZNHVKwNbnE0ROeV/fE0kmzjM08fd8BfP0uecFYab7na7dnH+Ee2Br+CRuP2+nnt
 X+CEgtWOVI4X+GLzlSsuP3zKNgU/03USJJZhaZlYM/kxbSOKdMIy2jrENHy6VTbg5buhbKk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_102001_378927_7C6E1E33 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for AVM
 FRITZ!WLAN Repeater 1750E
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
Content-Type: multipart/mixed; boundary="===============1048977856616328950=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1048977856616328950==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=k4zLaZDAOGh30y=-="

This is a multipart message in MIME format.

--=-=k4zLaZDAOGh30y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi David,

a few comments inline.

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of David Bauer
> Sent: Mittwoch, 15. April 2020 18:47
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH 2/2] ath79: add support for AVM
> FRITZ!WLAN Repeater 1750E
>=20
> This commit adds support for the AVM Fritz!WLAN Repeater 1750E
>=20
> SOC:	Qualcomm QCA9556 (Scorpion) 720MHz MIPS74Kc
> RAM:    64MB Zentel A3R12E40CBF DDR2
> FLASH:  16MiB Winbond W25Q128 SPI NOR
> WLAN1:  QCA9556 2.4 GHz 802.11b/g/n 3x3
> WLAN2:  QCA9880 5 GHz 802.11 n/ac 3x3
> INPUT:  WPS button
> LED:    Power, WiFi, LAN, RSSI indicator
> Serial: Header Next to Black metal shield
>         Pinout is 3.3V - RX - TX - GND (Square Pad is 3.3V)
>         The Serial setting is 115200-8-N-1.
>=20
> Tested and working:
>  - Ethernet
>  - 2.4 GHz WiFi (correct MAC)
>  - 5 GHz WiFi (correct MAC)
>  - Installation via EVA bootloader
>  - OpenWRT sysupgrade
>  - Buttons
>  - LEDs
>=20
> Installation via EVA:
> In the first seconds after Power is connected, the bootloader will listen=
 for
> FTP connections on 192.168.178.1. Firmware can be uploaded like following:
>=20
>   ftp> quote USER adam2
>   ftp> quote PASS adam2
>   ftp> binary
>   ftp> debug
>   ftp> passive
>   ftp> quote MEDIA FLSH
>   ftp> put openwrt-sysupgrade.bin mtd1
>=20
> Note that this procedure might take up to two minutes.
> You need to powercycle the Device afterwards to boot OpenWRT.
>=20
> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  .../ath79/dts/qca9556_avm_fritz1750e.dts      | 199 ++++++++++++++++++
>  .../generic/base-files/etc/board.d/01_leds    |  11 +-
>  .../generic/base-files/etc/board.d/02_network |   4 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   1 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   3 +
>  .../base-files/lib/preinit/10_fix_eth_mac.sh  |   3 +
>  target/linux/ath79/image/generic.mk           |  30 ++-
>  7 files changed, 239 insertions(+), 12 deletions(-)  create mode 100644
> target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
>=20
> diff --git a/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
> b/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
> new file mode 100644
> index 0000000000..b567e1ce62
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9556_avm_fritz1750e.dts
> @@ -0,0 +1,199 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT /dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca9557.dtsi"
> +
> +/ {
> +	compatible =3D "avm,fritz1750e", "qca,qca9557";
> +	model =3D "AVM FRITZ!WLAN Repeater 1750E";
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,115200n8";
> +	};
> +
> +	aliases {
> +		led-boot =3D &led_power;
> +		led-failsafe =3D &led_power;
> +		led-running =3D &led_power;
> +		led-upgrade =3D &led_power;
> +	};
> +
> +	led_spi {
> +		compatible =3D "spi-gpio";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		sck-gpios =3D <&gpio 14 GPIO_ACTIVE_HIGH>;
> +		mosi-gpios =3D <&gpio 15 GPIO_ACTIVE_HIGH>;
> +		num-chipselects =3D <0>;
> +
> +		spi_gpio: led_gpio@0 {
> +			compatible =3D "fairchild,74hc595";
> +			reg =3D <0>;
> +			gpio-controller;
> +			#gpio-cells =3D <2>;
> +			registers-number =3D <1>;
> +			spi-max-frequency =3D <10000000>;
> +
> +			gpio_latch_bit {
> +				gpio-hog;
> +				gpios =3D <7 GPIO_ACTIVE_HIGH>;
> +				output-high;
> +				line-name =3D "gpio-latch-bit";
> +			};
> +		};
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_power: power {
> +			label =3D "fritz1750e:green:power";
> +			gpios =3D <&spi_gpio 6 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		wlan {
> +			label =3D "fritz1750e:green:wlan";
> +			gpios =3D <&spi_gpio 5 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger =3D "phy1tpt";
> +		};
> +
> +		lan {
> +			label =3D "fritz1750e:green:lan";
> +			gpios =3D <&gpio 13 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		rssi0 {
> +			label =3D "fritz1750e:green:rssi0";
> +			gpios =3D <&spi_gpio 0 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		rssi1 {
> +			label =3D "fritz1750e:green:rssi1";
> +			gpios =3D <&spi_gpio 1 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		rssi2 {
> +			label =3D "fritz1750e:green:rssi2";
> +			gpios =3D <&spi_gpio 2 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		rssi3 {
> +			label =3D "fritz1750e:green:rssi3";
> +			gpios =3D <&spi_gpio 3 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		rssi4 {
> +			label =3D "fritz1750e:green:rssi4";
> +			gpios =3D <&spi_gpio 4 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		wps {
> +			label =3D "wps";
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +			gpios =3D <&gpio 4 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +};
> +
> +&pcie0 {
> +	status =3D "okay";
> +};
> +
> +&uart {
> +	status =3D "okay";
> +};
> +
> +&pll {
> +	clocks =3D <&extosc>;
> +};
> +
> +&spi {
> +	status =3D "okay";
> +	num-cs =3D <1>;
> +
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
> +				label =3D "urlader";
> +				reg =3D <0x0 0x20000>;
> +				read-only;
> +			};
> +
> +			partition@20000 {
> +				compatible =3D "avm,eva-firmware";
> +				label =3D "firmware";
> +				reg =3D <0x20000 0xee0000>;
> +			};
> +
> +			partition@f00000 {
> +				label =3D "tffs (1)";
> +				reg =3D <0xf00000 0x80000>;
> +				read-only;
> +			};
> +
> +			partition@f80000 {
> +				label =3D "tffs (2)";
> +				reg =3D <0xf80000 0x80000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&gpio {
> +	reset-pcie-ep {
> +		gpio-hog;
> +		gpios =3D <17 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name =3D "PCIE EP reset";
> +	};
> +
> +	reset-pcie {
> +		gpio-hog;
> +		gpios =3D <18 GPIO_ACTIVE_HIGH>;
> +		output-high;
> +		line-name =3D "PCIE Bus reset";
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
> +
> +	phy-handle =3D <&phy0>;
> +	pll-data =3D <0x3000000 0x101 0x1313>;
> +
> +	gmac-config {
> +		device =3D <&gmac>;
> +		ge0-sgmii =3D <0>;
> +	};
> +};
> +
> +&mdio1 {
> +	status =3D "okay";
> +
> +	phy0: ethernet-phy@0 {
> +		reg =3D <0>;
> +		reset-gpios =3D <&gpio 11 GPIO_ACTIVE_LOW>;
> +	};
> +};
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> index b946d0c63b..528455b2df 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/01_leds
> @@ -15,7 +15,16 @@ case "$board" in
>  alfa-network,ap121f)
>  	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
>  	;;
> -avm,fritz300e)
> +avm,fritz1750e)
> +	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
> +	ucidef_set_rssimon "wlan1" "200000" "1"
> +	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0"
> "wlan1" "1" "100"

I'd personally prefer to label the rssileds in DTS accordingly (label prope=
rty and node name) like done for other devices:
"$boardname:green:rssilow", rssilow
etc.

Just meant as an inspiration though ...

> +	ucidef_set_led_rssi "rssimediumlow" "RSSIMEDIUMLOW"
> "$boardname:green:rssi1" "wlan1" "20" "100"
> +	ucidef_set_led_rssi "rssimedium" "RSSIMEDIUM"
> "$boardname:green:rssi2" "wlan1" "40" "100"
> +	ucidef_set_led_rssi "rssimediumhigh" "RSSIMEDIUMHIGH"
> "$boardname:green:rssi3" "wlan1" "60" "100"
> +	ucidef_set_led_rssi "rssihigh" "RSSIHIGH" "$boardname:green:rssi4"
> "wlan1" "80" "100"
> +	;;
> +fritz300e)

"avm," cut off here.

>  	ucidef_set_led_netdev "lan" "LAN" "$boardname:green:lan" "eth0"
>  	ucidef_set_rssimon "wlan0" "200000" "1"
>  	ucidef_set_led_rssi "rssilow" "RSSILOW" "$boardname:green:rssi0"
> "wlan0" "1" "100"
> diff --git a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> index 77855d7ab7..96800d771f 100755
> --- a/target/linux/ath79/generic/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/generic/base-files/etc/board.d/02_network
> @@ -13,6 +13,7 @@ ath79_setup_interfaces()
>  	adtran,bsap1840|\
>  	alfa-network,ap121f|\
>  	aruba,ap-105|\
> +	avm,fritz1750e|\
>  	avm,fritz300e|\
>  	comfast,cf-wr752ac-v1|\
>  	devolo,dvl1200i|\
> @@ -337,6 +338,9 @@ ath79_setup_macs()
>  	alfa-network,ap121f)
>  		label_mac=3D$(mtd_get_mac_binary art 0x1002)
>  		;;
> +	avm,fritz1750e)
> +		label_mac=3D$(fritz_tffs -n macwlan -i $(find_mtd_part "tffs
> (1)"))
> +		;;
>  	avm,fritz300e)
>  		lan_mac=3D$(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
>  		label_mac=3D$(fritz_tffs -n macwlan -i $(find_mtd_part "tffs
> (1)")) diff --git a/target/linux/ath79/generic/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-ath9k-
> eeprom
> index da2063c58a..782e003911 100644
> --- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-
> ath9k-eeprom
> +++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/10-at
> +++ h9k-eeprom
> @@ -9,6 +9,7 @@ board=3D$(board_name)
>  case "$FIRMWARE" in
>  "ath9k-eeprom-ahb-18100000.wmac.bin")
>  	case $board in
> +	avm,fritz1750e|\
>  	avm,fritz4020)
>  		caldata_extract_reverse "urlader" 0x1541 0x440
>  		;;
> diff --git a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware=
/11-
> ath10k-caldata b/target/linux/ath79/generic/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> index c126d9df6a..014ab03003 100644
> --- a/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-
> ath10k-caldata
> +++ b/target/linux/ath79/generic/base-files/etc/hotplug.d/firmware/11-at
> +++ h10k-caldata
> @@ -10,6 +10,9 @@ board=3D$(board_name)
>  case "$FIRMWARE" in
>  "ath10k/cal-pci-0000:00:00.0.bin")
>  	case $board in
> +	avm,fritz1750e)
> +		caldata_extract "urlader" 6538 2116

Use hex here as well?

> +		;;
>  	comfast,cf-wr650ac-v1|\
>  	comfast,cf-wr650ac-v2|\
>  	devolo,magic-2-wifi|\
> diff --git a/target/linux/ath79/generic/base-
> files/lib/preinit/10_fix_eth_mac.sh b/target/linux/ath79/generic/base-
> files/lib/preinit/10_fix_eth_mac.sh
> index a0fb9fc717..371efd6a83 100644
> --- a/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.sh
> +++ b/target/linux/ath79/generic/base-files/lib/preinit/10_fix_eth_mac.s
> +++ h
> @@ -4,6 +4,9 @@
>=20
>  preinit_set_mac_address() {
>  	case $(board_name) in
> +	avm,fritz1750e)
> +		ip link set dev eth0 address $(fritz_tffs -n maca -i
> $(find_mtd_part "tffs (1)"))
> +		;;
>  	siemens,ws-ap3610)
>  		ip link set dev eth0 address $(mtd_get_mac_ascii cfg1
> ethaddr)
>  		;;
> diff --git a/target/linux/ath79/image/generic.mk
> b/target/linux/ath79/image/generic.mk
> index 69067c9de0..bd95ba2c3d 100644
> --- a/target/linux/ath79/image/generic.mk
> +++ b/target/linux/ath79/image/generic.mk
> @@ -162,32 +162,40 @@ define Device/aruba_ap-105  endef
> TARGET_DEVICES +=3D aruba_ap-105
>=20
> -define Device/avm_fritz300e
> -  SOC :=3D ar7242
> +define Device/avm
>    DEVICE_VENDOR :=3D AVM
> -  DEVICE_MODEL :=3D FRITZ!WLAN Repeater 300E
>    KERNEL :=3D kernel-bin | append-dtb | lzma | eva-image
>    KERNEL_INITRAMFS :=3D $$(KERNEL)
>    IMAGE_SIZE :=3D 15232k

Even though it's the same right now, I wouldn't put IMAGE_SIZE into the com=
mon part.
This is an invitation for later submissions to overlook it when it's actual=
ly different.

>    IMAGE/sysupgrade.bin :=3D append-kernel | pad-to 64k | \
>  	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs | pad-
> rootfs | \
>  	append-metadata | check-size
> -  DEVICE_PACKAGES :=3D fritz-tffs rssileds -swconfig
> +  DEVICE_PACKAGES :=3D fritz-tffs
> +endef
> +
> +define Device/avm_fritz1750e
> +  $(Device/avm)
> +  SOC :=3D qca9556
> +  DEVICE_MODEL :=3D FRITZ!WLAN Repeater 1750E
> +  DEVICE_PACKAGES +=3D rssileds kmod-ath10k-ct-smallbuffers | \
> +	ath10k-firmware-qca988x-ct -swconfig
> +endef
> +TARGET_DEVICES +=3D avm_fritz1750e
> +
> +define Device/avm_fritz300e
> +  $(Device/avm)
> +  SOC :=3D ar7242
> +  DEVICE_MODEL :=3D FRITZ!WLAN Repeater 300E
> +  DEVICE_PACKAGES +=3D rssileds -swconfig
>    SUPPORTED_DEVICES +=3D fritz300e
>  endef
>  TARGET_DEVICES +=3D avm_fritz300e
>=20
>  define Device/avm_fritz4020
> +  $(Device/avm)
>    SOC :=3D qca9561
>    DEVICE_VENDOR :=3D AVM

vendor can be removed (inherited)

Best

Adrian

>    DEVICE_MODEL :=3D FRITZ!Box 4020
> -  IMAGE_SIZE :=3D 15232k
> -  KERNEL :=3D kernel-bin | append-dtb | lzma | eva-image
> -  KERNEL_INITRAMFS :=3D $$(KERNEL)
> -  IMAGE/sysupgrade.bin :=3D append-kernel | pad-to 64k | \
> -	append-squashfs-fakeroot-be | pad-to 256 | append-rootfs | pad-
> rootfs | \
> -	append-metadata | check-size
> -  DEVICE_PACKAGES :=3D fritz-tffs
>    SUPPORTED_DEVICES +=3D fritz4020
>  endef
>  TARGET_DEVICES +=3D avm_fritz4020
> --
> 2.26.0
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=k4zLaZDAOGh30y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6XQjoACgkQoNyKO7qx
AnBWgA/+McsI/0mKg/svpPjqsRVsp/q5JtNPuY1oYqPfjgtHsLH3wULxbYLZ25pU
r+Of4gOOZhkiSnbU9PV/oUqoDoePOFx14Bi8zO9YKfDED8sUxCY1BjIP0gsSXqJf
5dip+tBneAVzMGGjjIOcnJteHBcF8FW0dAc3q+PHR9Z3vMuNBlOViHF+csDW/Ccy
HZmTaFDndLO0/3g+ihlN2zh8X1LzH3GwbUomI6kcBTxy/p7HRF8s8ggAE8U/VBtl
qBMRu9jlcOar/wCu6wpnfkfzvYP6tTlqGaX24r96HFKfCzVaVbfi15LjNnTqZ8Rw
AY5LZ1SSqF4Twn8SkOA7Lv6qw/ct/Or7gRU+uk//bIUWcTmu+y3NS8bncp44WnMz
m70x6nuStgiuCWDKdQj4N1yB/xgB4lI+ggM/D3ddyq+1gwI9UDF+cPeBATIXRqvW
OqyQN5JPXGD+erSj7UOF6f9fduJOvgRJrK37eiIwVE8r9y6eSwEU2SuYYNLBkUrJ
9SpkTkYYWo6KcFOEVttwPoWFVSk/9h3/CnG8moRejxtKdfdIlAQnouJaZV50P5X5
EdnMdRjXtPzlOyhKYzLd/n9VlMHpvn6MeXxkXSQOrY0k5BXRSWOBPRWbE7NUEUDN
r9NdD9Pi4TAv/992a2cLFJWCkZmUu9a+bZDrDSmqwUqajynYe/k=
=ZqkW
-----END PGP SIGNATURE-----


--=-=k4zLaZDAOGh30y=-=--



--===============1048977856616328950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1048977856616328950==--


