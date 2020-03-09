Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F4E17DFD2
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Mar 2020 13:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tM8vrvNFD6YmvjIkLUc88OuolKrXegRFHUfzz6eAxsI=; b=m0Nws8w0O/mblc
	Llcgg1kXAIky1NXOrfrSHNielz/FdMJMmG2xhSdNJD/5NfyZ3lGiFyyTTTOIxXkyG+9DJgdbWNmLW
	J9cccVFXoJYQJ8Lq3qte7Ul0/qFyoB5+g0taNDxHXwRdYFm7GBQx20urYK+Ifi/bk62gGrn5yEJS/
	wVxKwaFgEiE/R8PV6F8rK/wESf++1F8ZtGy1KFTcaCIUkou3nIIczkQBNWQ2++4LnhnHXURpAZJZ5
	O0TuM7IxkS/rIg8AkoJZzwYYsErRmo07qs19u3ENrBewwX5NuPAIz5P76PNUUj+qID1sotaiYDhXP
	Q+I/t7zXHt+L79DmYolQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHMj-0000bT-3A; Mon, 09 Mar 2020 12:18:37 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHMa-0000aJ-24
 for openwrt-devel@lists.openwrt.org; Mon, 09 Mar 2020 12:18:30 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MzR0i-1jXT383kbw-00vLYN; Mon, 09
 Mar 2020 13:18:22 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'David Bauer'" <mail@david-bauer.net>, <openwrt-devel@lists.openwrt.org>
References: <20200309010710.11599-1-mail@david-bauer.net>
In-Reply-To: <20200309010710.11599-1-mail@david-bauer.net>
Date: Mon, 9 Mar 2020 13:18:22 +0100
Message-ID: <042501d5f60c$d39e6030$7adb2090$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIEK0+VneGAHnq/6tR0MMRLRCSxL6fjv/sQ
Content-Language: de
X-Provags-ID: V03:K1:UF0wwHVEZrSjCbEo5M+AGgJsbE/NPRyUhMh8hl1WkcEkiLPzbYp
 LdNV5qtYg+1DCguDYXYwLxJUwSxz27bG3xkTLXoNwna7s3YCNu2pTkKTNceZkrKsjcwUlCQ
 56X3bj7da2QjiGxZJDOzIxiGQFGk8sxNAt+s8REojgYvSwg8WQM6SgzrkTtiwXiypM0tnfV
 SCsIQfTfBw1gkek7LYVFw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XuSXdF6u5wo=:EA777NMQAPVWMky5IePS/X
 DpvHjrd4nklIMlfSljFXbxcPARxpwKUh6/iuL9ibI9qJVVXWGwjSX+nMSVvF/+BgxiVeiXUBW
 iGYqJOR2AZRevPtACp8hXe9+611HT+7EVrCL7cVN2ctJpl+KA7pCQTQ1AAcO+6ca2/uzCcn/5
 MyGhImkwToUFUGf5Tu30CM3wmgRzDYIBpqhbtbp/w+VHXYLPmhTpavcLdg68k70+Aj3EXNMSs
 A2LJXm5WWJm4TJWCwV4lEk8R/M9HYCJ38rSmZwmWAdgHOqfTi3gjrHn6Mx3TQiHJkhM/qILCn
 VAjDpGiGBaLbjTiIoIYG9nmCikQ1jaODkqFWau6q9Q6Lt/XNgZSLzhGL++2yTlm7GUppacGRW
 Z74KQiczBr1DjbS4dd27FjjBLPZsDorYx7GfjIHAZP8Wu0kqj1H4PPQO86pNlghB0twmBTuhR
 8BBgVcXcBBP68wdnyeCGqqQXFnzB2Q9MDahu4f4iHIcvEFP6n8M//+NEwVNv1yxqrISimI2+z
 /Dd61/VegXMa2vYS1/PJmUguLa/kiGVyGPHOVygrPI/xayLsykj2Gnig5JXR9o2+MAzbFSMso
 mV73CN+pPyBI6efxbQnxt7CQwOUDLUT+ColwwEDHmrXUZ0oOplIcKyIh0tKTdsqklJE4YdqF9
 AyC0MUMzFiM/Jj8+dU5MkVUkxKkBSw/uv9sCp8hHazoSKD1YOqGnmpiovMBeFXVIqGJpJKw0t
 Gz0e0v9DDa9uILKfWB+0LWfODJQ9emx8qhz26w8lHfbcT6NF3nRFSYpfGb/7L9vhW91IznO5n
 zYj5wifS3vEenuB+HRpkztA3c/a9d83p+gJX7z2iAmry2+DDNcplbH/vrAWtocwxwq0D6ht
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_051828_395803_EAC031EF 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Ubiquiti UniFi
 nanoHD
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi David,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of David Bauer
> Sent: Montag, 9. M=E4rz 2020 02:07
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] [PATCH] ramips: add support for Ubiquiti UniFi
> nanoHD
> =

> Hardware
> --------
> SoC:   MediaTek MT7621AT
> WiFi:  MediaTek MT7603 bgn 2T2R
>        MediaTek MT7615 ac  4T4R
> Flash: 32M SPI (Macronix MX25L25635F)
> RAM:   128M DDR3 (Winbond W631GG6KB)
> LED:   Dome (Blue / White)
> BTN:   Reset
> =

> Installation
> ------------
> =

> These instructions were written for firmware version v3.9.27.
> Downgrade if necessary.
> =

> 1. Copy the OpenWrt sysupgrade image to the devices /tmp folder
>    via scp. On factory defaults, user and password is "ubnt" at
>    192.168.1.20/24.
> =

> 2. Write the bootselect flag. Otherwise, the device might boot from the
>    wrong partition. Verify the mtd partition used in the command below
>    is the one labled "bs" in /proc/mtd (as this might change in the
>    future).
> =

>    > dd if=3D/dev/zero bs=3D1 count=3D1 of=3D/dev/mtd4
> =

> 3. Write the OpenWrt sysupgrade to the mtd partitions labled
>    "kernel0" and "kernel1".
> =

>    > dd if=3D/tmp/openwrt-sysupgrade.bin of=3D/dev/mtdblock6
>    > dd if=3D/tmp/openwrt-sysupgrade.bin of=3D/dev/mtdblock7
> =

> 4. Reboot or powercycle the device.
> =

> Signed-off-by: David Bauer <mail@david-bauer.net>
> ---
>  .../dts/mt7621_ubiquiti_unifi-nanohd.dts      | 141 ++++++++++++++++++
>  target/linux/ramips/image/mt7621.mk           |   8 +
>  .../mt7621/base-files/etc/board.d/02_network  |   3 +-
>  3 files changed, 151 insertions(+), 1 deletion(-)
>  create mode 100644 target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.=
dts
> =

> diff --git a/target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.dts
> b/target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.dts
> new file mode 100644
> index 0000000000..7d39242efa
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_ubiquiti_unifi-nanohd.dts
> @@ -0,0 +1,141 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include "mt7621.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	compatible =3D "ubiquiti,unifi-nanohd", "mediatek,mt7621-soc";

The two Edgerouter X devices in ramips are the only two cases in trunk that=
 use
"ubiquiti" for the vendor string instead of the recommended "ubnt".

IMO we should use the latter also for this new device (and consider changin=
g the
edgerouter devices at some point as well).

> +	model =3D "Ubiquiti UniFi nanoHD";
> +
> +	aliases {
> +		led-boot =3D &led_white;
> +		led-failsafe =3D &led_white;
> +		led-running =3D &led_blue;
> +		led-upgrade =3D &led_blue;
> +
> +		label-mac-device =3D &ethernet;
> +	};
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,115200";
> +	};
> +
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led_blue: power_amber {

power_amber?

> +			label =3D "nanohd:blue:dome";
> +			gpios =3D <&gpio0 3 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		led_white: power_green {

power_green?

> +			label =3D "nanohd:white:dome";
> +			gpios =3D <&gpio0 4 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			label =3D "reset";
> +			gpios =3D <&gpio1 12 GPIO_ACTIVE_LOW>;
> +			linux,code =3D <KEY_RESTART>;
> +		};
> +	};
> +};
> +
> +&spi0 {
> +	status =3D "okay";
> +
> +	flash@0 {
> +		compatible =3D "mx25l25635f", "jedec,spi-nor";
> +		reg =3D <0>;
> +		spi-max-frequency =3D <10000000>;

No higher speed possible?

> +
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x0 0x60000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label =3D "u-boot-env";
> +				reg =3D <0x60000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@70000 {
> +				label =3D "factory";
> +				reg =3D <0x70000 0x10000>;
> +				read-only;
> +			};
> +
> +			eeprom: partition@80000 {
> +				label =3D "eeprom";
> +				reg =3D <0x80000 0x10000>;
> +				read-only;
> +			};
> +
> +			partition@90000 {
> +				label =3D "bs";
> +				reg =3D <0x90000 0x10000>;
> +			};
> +
> +			partition@a0000 {
> +				label =3D "cfg";
> +				reg =3D <0xa0000 0x100000>;
> +				read-only;
> +			};
> +
> +			partition@1a0000 {
> +				compatible =3D "denx,uimage";
> +				label =3D "firmware";
> +				reg =3D <0x1a0000 0xf30000>;
> +			};
> +
> +			partition@10d0000 {
> +				label =3D "kernel1";
> +				reg =3D <0x10d0000 0xf30000>;
> +				read-only;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status =3D "okay";
> +};
> +
> +&pcie0 {
> +	wifi@0,0 {
> +		reg =3D <0x0 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x0000>;
> +	};
> +};
> +
> +&pcie1 {
> +	wifi@0,0 {
> +		reg =3D <0x0 0 0 0 0>;
> +		mediatek,mtd-eeprom =3D <&factory 0x8000>;
> +	};
> +};
> +
> +&ethernet {
> +	mtd-mac-address =3D <&eeprom 0x0>;
> +};
> +
> +&state_default {
> +	gpio {
> +		ralink,group =3D "i2c", "uart2";

uart2 would match <&gpio0 12 ...>, but you have <&gpio1 12 ...> for the key?

Best

Adrian

> +		ralink,function =3D "gpio";
> +	};
> +};
> diff --git a/target/linux/ramips/image/mt7621.mk
> b/target/linux/ramips/image/mt7621.mk
> index 98d83f944f..4a51333de8 100644
> --- a/target/linux/ramips/image/mt7621.mk
> +++ b/target/linux/ramips/image/mt7621.mk
> @@ -792,6 +792,14 @@ define Device/ubiquiti_edgerouterx-sfp
>  endef
>  TARGET_DEVICES +=3D ubiquiti_edgerouterx-sfp
> =

> +define Device/ubiquiti_unifi-nanohd
> +  DEVICE_VENDOR :=3D Ubiquiti
> +  DEVICE_MODEL :=3D UniFi nanoHD
> +  DEVICE_PACKAGES +=3D kmod-mt7603 kmod-mt7615e wpad-basic
> +  IMAGE_SIZE :=3D 15552k
> +endef
> +TARGET_DEVICES +=3D ubiquiti_unifi-nanohd
> +
>  define Device/unielec_u7621-06-16m
>    IMAGE_SIZE :=3D 16064k
>    DEVICE_VENDOR :=3D UniElec
> diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> index c930f34592..ace19cc8fe 100755
> --- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> @@ -129,7 +129,8 @@ ramips_setup_interfaces()
>  		;;
>  	netgear,ex6150|\
>  	tplink,re350-v1|\
> -	tplink,re650-v1)
> +	tplink,re650-v1|\
> +	ubiquiti,unifi-nanohd)
>  		ucidef_add_switch "switch0" \
>  			"0:lan" "6@eth0"
>  		;;
> --
> 2.25.1
> =

> =

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
