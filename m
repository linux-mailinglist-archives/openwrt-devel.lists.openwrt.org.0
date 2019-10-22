Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB06E0B2B
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 20:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V3LiD0EpelblPENMGW4NiwCBWefFYIE/XiO3fy+5oJs=; b=JhzAdVX6dLcjwXr/M68xYjRcq
	dYv8glMZr/S/Y/NglKDyiRzvX9KNHtYS3Tm2FtJxRWlZZHPe3Sq3o0IEXCXqHOUA2KIKoIRC8L+Z5
	nHeUoraN8QGCN0NJlWplp0xHeF+1VeqGm4nM/LVCCGazB5jv7xMlWLqA+6NdsdsJ95ddshqyZS0Iv
	R48spiabzL/bMBAY9qRk2trU+EjFgiSrClgwQGYWRNfLd/2xDpXtTJeHoRIzMQxEBdUGYICdmZFPq
	b67mwuyloBEZGbvbaxSOiefq6OhH61nrCG7f8BcEeRGeN3LOnb2PwhsCk1ZDMQAFKP+x2UxWppOBR
	vj5vkE9+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyTy-0008Ra-Ay; Tue, 22 Oct 2019 18:02:10 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyTq-0008R7-S4
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 18:02:05 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MnagF-1hdlu60smj-00jX6N; Tue, 22
 Oct 2019 20:01:51 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Andr=C3=A9_Valentin'?= <avalentin@marcant.net>,
 <openwrt-devel@lists.openwrt.org>
References: <20191022095149.2385-1-avalentin@marcant.net>
 <20191022095149.2385-4-avalentin@marcant.net>
In-Reply-To: <20191022095149.2385-4-avalentin@marcant.net>
Date: Tue, 22 Oct 2019 20:01:49 +0200
Message-ID: <00d501d58902$c7cc1bc0$57645340$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQEhd6LSZk6yrdPNDlimF4wZsgREkwE/zOMFqMUT3MA=
X-Provags-ID: V03:K1:RHhLb6TWZfp1CkNBWF2H5dOFXos7skUf46qJeMEPBo1LeOx21wI
 4gG39hENcuCNv+fE9fr2yNUKwNPLiQTKmXONEQUXxxYioJfyqvgdrKgkECm1Oz9zY9fB4Y1
 aiw1AHo4OdSZ5IV11rkYsyx+hI5cpmYJNt8yfjlCsT0AMZ9qIxaKJcig5CG1neM3s7+sjCD
 7ZI/wlC1TpRXxpUfdBBLQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2PmOznsg4U0=:tGDcLJOzP+d+dIpTGyGq4o
 Y6p3sq8RSMBknEife2zsuZVVYdNzVBxh+r+CUj7J4OwgMrreYa5mG1mSVjxmy9JCkv9WQp/Mp
 qkXDtxkYdersj7oB5uBl0jqWz7YIuaTCuQobmexmHkm1awswFbNiscdZixtPIbKb3DuILAcQH
 3M/amgQr5iMYqklnXfELvyKlrpZ4iUpv73KXfrVxCGo/paSnDfd2FjvuTJAgDsuRZoFa1e8gC
 uAufDz49bBuiPtNp2St57UdpTYu9yQp3I3lIhvTj1qEN/pGPYBoysWnKMBJ/g+Bu/qm4ewnpg
 qxq8CM5vnJeKFFaxrWbxib43oHoDXG5sGBbVUdkC5J17U59XhP4lVqpJOkLBAdznQdfDfJhRf
 Jw0JgxfkQRLwlw4jD54/ddhbET/0tJxyGR7sAgPjxj7I3k64zR1LLA/LePvbRpO7NKs/Up0Bj
 jLG29joaT74LBeloH5Z1j0pvCdm7N6d94sMrmrBE+4mSCZ55aoDT/sGHyWBHKFfI1B+3wVcjD
 NzFU7ItCDsOLr2r2Z8dSurKqlUJuzU+Gkh366y9jY1oXX4e/ydFDANPihXJ3b2rQ6nvEEC+Fm
 o7CWLB3UpVVxzRHETd2dwWkh3uiTiFusPrADKAiqmBiggEyVsdtJvdwNYrOj7mww+02ryKYxY
 BNjz5Ja9qu7BsQuwTMerbhikHTaVj2XwOjXwM+ZSwe51yeD3f8OxJkanvuTBuBec06+iFJ06s
 csT+JSIgIJLtNyn8uOPCQ6qk6JoyJf3SikGt6Ih2xP6Kw6NP33XFEQIoF4wp8Hll34MM9Yhkr
 Ko5OjLexbg/ZEIND8J9AF/E/kMfXbo40pW47QKfmAMZxE69Rwgb/G0UwKz2oHAMTB0CfYKG5B
 H2XNHRR/Nak/tCHS9YKp4FMTsg0bjOkv8Y9HqgfSk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_110203_214624_7A60F731 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for ZyXEL NBG6716
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
Content-Type: multipart/mixed; boundary="===============3963325477567012044=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============3963325477567012044==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=YHHUx6yBfU7jIx=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=YHHUx6yBfU7jIx=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Andr=C3=A9 Valentin
> Sent: Dienstag, 22. Oktober 2019 11:52
> To: openwrt-devel@lists.openwrt.org
> Cc: avalentin@marcant.net
> Subject: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for ZyXEL NBG6716
>=20
> Attention: Kernel partition size has been enlarged to 4MB.
> To switch, you must update to latest ar71xx-nand snapshort and flash the
> sysupgrade-4M-Kernel.bin:
>=20
> zcat openwrt-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade-4M-Kernel.bin |=
 mtd -r -e ubi write - firmware; reboot -f
> You will end up with a fresh config if you do not inject config into the =
image.
>=20
> Access the real u-boot shell:
> ZyXEL uses a proprietary loader/shell on top of u-boot: "ZyXEL zloader v2=
.02"
> When the device is starting up, the user can enter the the loader shell
> by simply pressing a key within the 3 seconds once the following string
> appears on the serial console:
>=20
> |   Hit any key to stop autoboot:  3
>=20
> The user is then dropped to a locked shell.
>=20
> |NBG6716> HELP
> |ATEN    x[,y]     set BootExtension Debug Flag (y=3Dpassword)
> |ATSE    x         show the seed of password generator
> |ATSH              dump manufacturer related data in ROM
> |ATRT    [x,y,z,u] RAM read/write test (x=3Dlevel, y=3Dstart addr, z=3Den=
d addr, u=3Diterations)
> |ATGO              boot up whole system
> |ATUR    x         upgrade RAS image (filename)
> |NBG6716>
>=20
> In order to escape/unlock a password challenge has to be passed.
> Note: the value is dynamic! you have to calculate your own!
>=20
> First use ATSE $MODELNAME (MODELNAME is the hostname in u-boot env)
> to get the challange value/seed.
>=20
> |NBG6716> ATSE NBG6716
> |012345678901
>=20
> This seed/value can be converted to the password with the help of this
> bash script (Thanks to http://www.adslayuda.com/Zyxel650-9.html authors):
>=20
> - tool.sh -
> ror32() {
>   echo $(( ($1 >> $2) | (($1 << (32 - $2) & (2**32-1)) ) ))
> }
> v=3D"0x$1"
> a=3D"0x${v:2:6}"
> b=3D$(( $a + 0x10F0A563))
> c=3D$(( 0x${v:12:14} & 7 ))
> p=3D$(( $(ror32 $b $c) ^ $a ))
> printf "ATEN 1,%X\n" $p
> - end of tool.sh -
>=20
> |# bash ./tool.sh 012345678901
> |
> |ATEN 1,879C711
>=20
> copy and paste the result into the shell to unlock zloader.
>=20
> |NBG6716> ATEN 1,0046B0017430
>=20
> If the entered code was correct the shell will change to
> use the ATGU command to enter the real u-boot shell.
>=20
> |NBG6716> ATGU
> |NBG6716#
>=20
> idsfg
>=20
> Signed-off-by: Andr=C3=A9 Valentin <avalentin@marcant.net>
> ---
>  .../ath79/base-files/etc/board.d/02_network   |   8 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
>  .../etc/hotplug.d/ieee80211/00-wifi-migration |   3 +-
>  .../ath79/base-files/lib/upgrade/platform.sh  |   3 +
>  target/linux/ath79/dts/qca9557.dtsi           |  18 ++
>  .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts | 296 ++++++++++++++++++
>  target/linux/ath79/image/Makefile             |   1 +
>  target/linux/ath79/image/common-zyxel.mk      |  29 ++
>  target/linux/ath79/image/nand-zyxel.mk        |  21 ++
>  10 files changed, 386 insertions(+), 1 deletion(-)
>  create mode 100644 target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
>  create mode 100644 target/linux/ath79/image/common-zyxel.mk
>  create mode 100644 target/linux/ath79/image/nand-zyxel.mk
>=20
> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/targe=
t/linux/ath79/base-files/etc/board.d/02_network
> index fe74bddbf1..42f3462b89 100755
> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> @@ -301,6 +301,10 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "3:lan:1" "4:lan:2"
>  		;;
> +	zyxel,nbg6716)
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth1"
> +		;;
>  	*)
>  		ucidef_set_interfaces_lan_wan "eth0" "eth1"
>  		;;
> @@ -435,6 +439,10 @@ ath79_setup_macs()
>  	wd,mynet-wifi-rangeextender)
>  		lan_mac=3D$(nvram get et0macaddr)
>  		;;
> +	zyxel,nbg6716)
> +		lan_mac=3D$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
> +		wan_mac=3D$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)
> +		;;
>  	esac
>=20
>  	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9=
k-eeprom b/target/linux/ath79/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> index 3240026aec..cfffe5702a 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> @@ -46,6 +46,10 @@ case "$FIRMWARE" in
>  		caldata_extract "radiocfg" 0x1000 0x440
>  		ath9k_patch_mac $(mtd_get_mac_ascii devdata "wlan24mac")
>  		;;
> +	zyxel,nbg6716)
> +		caldata_extract "art" 0x1000 0x440
> +		ath9k_patch_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2

You need to remove the "0x2".

> +		;;
>  	*)
>  		caldata_die "board $board is not supported yet"
>  		;;
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath1=
0k-caldata b/target/linux/ath79/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 8ab0f6f6ad..cc0cd2b7c0 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> @@ -112,6 +112,10 @@ case "$FIRMWARE" in
>  	ubnt,unifiac-pro)
>  		caldata_extract "EEPROM" 0x5000 0x844
>  		;;
> +	zyxel,nbg6716)
> +		caldata_extract "art" 0x5000 0x844
> +		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethad=
dr) +1)
> +		;;
>  	esac
>  	;;
>  "ath10k/pre-cal-pci-0000:00:00.0.bin")
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wif=
i-migration b/target/linux/ath79/base-
> files/etc/hotplug.d/ieee80211/00-wifi-migration
> index 37a1346fe7..b0a5d79f9d 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wifi-migra=
tion
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wifi-migra=
tion
> @@ -15,7 +15,8 @@ migrate_wifi_path() {
>=20
>  			case "$board" in
>  				tplink,archer-c7-v1|\
> -				tplink,archer-c7-v2)
> +				tplink,archer-c7-v2|\
> +				zyxel,nbg6716)
>  					path=3D"pci0000:00/0000:00:00.0"
>  					WIFI_PATH_CHANGED=3D1
>  				;;
> diff --git a/target/linux/ath79/base-files/lib/upgrade/platform.sh b/targ=
et/linux/ath79/base-files/lib/upgrade/platform.sh
> index f4fca06384..46bd6ab9ef 100644
> --- a/target/linux/ath79/base-files/lib/upgrade/platform.sh
> +++ b/target/linux/ath79/base-files/lib/upgrade/platform.sh
> @@ -51,6 +51,9 @@ platform_do_upgrade() {
>  	ubnt,routerstation-pro)
>  		redboot_fis_do_upgrade "$1" kernel
>  		;;
> +	zyxel,nbg6716)
> +		nand_do_upgrade "$1"
> +		;;
>  	*)
>  		default_do_upgrade "$1"
>  		;;
> diff --git a/target/linux/ath79/dts/qca9557.dtsi b/target/linux/ath79/dts=
/qca9557.dtsi
> index b29dfc72b2..61e1d5f6a4 100644
> --- a/target/linux/ath79/dts/qca9557.dtsi
> +++ b/target/linux/ath79/dts/qca9557.dtsi
> @@ -178,6 +178,24 @@
>  			};
>  		};
>=20
> +		nand: nand@1b800200 {
> +			compatible =3D "qca,ar934x-nand";
> +			reg =3D <0x1b800200 0xb8>;
> +
> +			interrupts =3D <21>;
> +			interrupt-parent =3D <&miscintc>;
> +
> +			resets =3D <&rst 14>;
> +			reset-names =3D "nand";
> +
> +			nand-ecc-mode =3D "hw";
> +
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			status =3D "disabled";
> +		};
> +
>  		gmac: gmac@18070000 {
>  			compatible =3D "qca,qca9550-gmac";
>  			reg =3D <0x18070000 0x58>;
> diff --git a/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts b/target/li=
nux/ath79/dts/qca9558_zyxel_nbg6716.dts
> new file mode 100644
> index 0000000000..e0065cc012
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
> @@ -0,0 +1,296 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +#include "qca9557.dtsi"
> +
> +/ {
> +	compatible =3D "zyxel,nbg6716", "qca,qca9558";
> +	model =3D "ZyXEL NBG6716";
> +
> +	chosen {
> +		bootargs =3D "console=3DttyS0,115200n8";
> +	};
> +
> +	aliases {
> +		led-boot =3D &power;
> +		led-failsafe =3D &power;
> +		led-running =3D &power;
> +		led-upgrade =3D &power;
> +		label-mac-device =3D &eth0;

This won't work after you have removed the mtd-mac-address entries from DTS.
You will need to use label_mac in 02_network.

Despite, I'm still waiting for your explanation on the MAC address assignme=
nt.

> +	};

Empty line missing.

> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		power: power {
> +			label =3D "nbg6716:white:power";
> +			gpios =3D <&gpio 15 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wan {
> +			label =3D "nbg6716:white:internet";
> +			gpios =3D <&gpio 18 GPIO_ACTIVE_LOW>;
> +		};
> +		usb1 {
> +			label =3D "nbg6716:white:usb1";
> +			gpios =3D <&gpio 4 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "usbport";
> +			trigger-sources =3D <&hub_port0>;
> +		};
> +		usb2 {
> +			label =3D "nbg6716:white:usb2";
> +			gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "usbport";
> +			trigger-sources =3D <&hub_port1>;
> +		};
> +		wifi2 {
> +			label =3D "nbg6716:white:wifi2";
> +			gpios =3D <&gpio 19 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy1tpt";
> +		};
> +		wifi5 {
> +			label =3D "nbg6716:white:wifi5";
> +			gpios =3D <&gpio 17 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "phy0tpt";
> +		};
> +		wps {
> +			label =3D "nbg6716:white:wps";
> +			gpios =3D <&gpio 2 GPIO_ACTIVE_LOW>;
> +		};

All nodes should be separated by one empty line, but without an empty line =
at the beginning and the end inside the parent node.

> +	};
> +
> +	keys {
> +		compatible =3D "gpio-keys";
> +
> +		reset {
> +			label =3D "reset";
> +			linux,code =3D <KEY_RESTART>;
> +			gpios =3D <&gpio 23 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +
> +	        wifi_button {
> +                        label =3D "WiFi button";
> +			linux,code =3D <KEY_RFKILL>;
> +			gpios =3D <&gpio 1 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +
> +	        usb1 {
> +                        label =3D "USB1 eject button";
> +			gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +
> +	        usb2 {
> +                        label =3D "USB2 eject button";
> +			gpios =3D <&gpio 14 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};

Here, the indent is wrong.

> +
> +		wps {
> +			label =3D "WPS button";
> +			linux,code =3D <KEY_WPS_BUTTON>;
> +			gpios =3D <&gpio 22 GPIO_ACTIVE_LOW>;
> +			debounce-interval =3D <60>;
> +		};
> +	};
> +	gpio-export {
> +		compatible =3D "gpio-export";
> +		#size-cells =3D <0>;
> +
> +		gpio_usb_power {
> +			gpio-export,name =3D "nbg6716:power:usb";
> +			gpio-export,output =3D <1>;
> +			gpios =3D <&gpio 16 GPIO_ACTIVE_HIGH>;
> +		};
> +	};

gpio-export is deprecated. Have a look at gpio-hog (should be easy to grep =
inside the ath79 target).

> +};
> +
> +&uart {
> +	status =3D "okay";
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
> +			uboot: partition@0 {
> +				label =3D "u-boot";
> +				reg =3D <0x000000 0x040000>;
> +				read-only;
> +			};
> +
> +                        uboot_env: partition@40000 {
> +                                label =3D "u-boot-env";
> +                                reg =3D <0x040000 0x010000>;
> +                        };

Indent!

> +
> +			art: partition@50000 {
> +				label =3D "art";
> +				reg =3D <0x050000 0x010000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label =3D "nbu";
> +				reg =3D <0x060000 0xFA0000>;

Consider switching to lower case.

> +			};
> +		};
> +	};
> +};
> +
> +&nand {
> +	status =3D "okay";
> +
> +	partitions {
> +		compatible =3D "fixed-partitions";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +
> +		partition@0 {
> +			label =3D "zyxel_rfsd";
> +			reg =3D <0x0 0x200000>;
> +		};
> +
> +		partition@200000 {
> +			label =3D "romd";
> +			reg =3D <0x200000 0x200000>;
> +		};
> +
> +		partition@400000 {
> +			label =3D "header";
> +			reg =3D <0x400000 0x100000>;
> +		};
> +
> +		firmware@500000 {
> +			label =3D "firmware";
> +			reg =3D <0x500000 0x7B00000>;

Consider switching to lower case.

> +		};
> +
> +		partition@500000 {
> +			label =3D "kernel";
> +			reg =3D <0x500000 0x400000>;
> +		};
> +
> +		partition@900000 {
> +			label =3D "ubi";
> +			reg =3D <0x900000 0x7700000>;
> +		};
> +	};
> +};
> +
> +&mdio0 {
> +	status =3D "okay";
> +
> +	phy0: ethernet-phy@0 {
> +		reg =3D <17>;
> +		phy-mode =3D "rgmii-id";
> +	};
> +
> +	switch0@1f {
> +		compatible =3D "qca,ar8327";
> +		reg =3D <0x1f>;
> +		qca,ar8327-initvals =3D <
> +			0x04 0x87600000 /* PORT0 PAD MODE CTRL */
> +			0x0c 0x00080080 /* PORT6 PAD MODE CTRL */
> +			0x10 0x81000080 /* POWER_ON_STRIP */
> +			0x50 0xffb7ffb7 /* LED_CTRL0 */
> +			0x54 0xffb7ffb7 /* LED_CTRL1 */
> +			0x58 0xffb7ffb7 /* LED_CTRL2 */
> +			0x5c 0x03ffff00 /* LED_CTRL3 */
> +			0x7c 0x0000007e /* PORT0_STATUS */
> +			0x94 0x0000007e /* PORT6 STATUS */
> +			>;
> +	};
> +};
> +
> +&mdio1 {
> +	status =3D "okay";
> +
> +	phy1: ethernet-phy@1 {
> +		reg =3D <1>;
> +		phy-mode =3D "sgmii";
> +	};
> +};
> +
> +
> +&eth0 {
> +	status =3D "okay";
> +
> +	pll-data =3D <0xa6000000 0x00000101 0x00001616>;
> +	phy-handle =3D <&phy0>;
> +	fixed-link {
> +		speed =3D <1000>;
> +		full-duplex;
> +	};
> +};
> +
> +&eth1 {
> +	status =3D "okay";
> +
> +	pll-data =3D <0x03000101 0x00000101 0x00001616>;
> +	phy-handle =3D <&phy1>;
> +	fixed-link {
> +		speed =3D <1000>;
> +		full-duplex;
> +	};
> +};
> +
> +&gpio {
> +	status =3D "okay";
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +};
> +
> +&pcie1 {
> +        status =3D "okay";
> +
> +	wifi@0,0 {
> +		compatible =3D "qcom,ath10k";
> +		reg =3D <0 0 0 0 0>;
> +		qcom,ath10k-calibration-variant =3D "ZyXEL-NBG6716";
> +	};
> +};
> +
> +&usb_phy0 {
> +        status =3D "okay";
> +};
> +
> +&usb_phy1 {
> +        status =3D "okay";
> +};
> +
> +&usb0 {
> +        status =3D "okay";
> +
> +	hub_port0: port@1 {
> +		reg =3D <1>;
> +		#trigger-source-cells =3D <0>;
> +	};
> +
> +};
> +
> +&usb1 {
> +        status =3D "okay";
> +
> +	hub_port1: port@1 {
> +		reg =3D <1>;
> +		#trigger-source-cells =3D <0>;
> +	};
> +};
> +

Remove empty line at the end.

> diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image=
/Makefile
> index 24768ef5e0..074d7ead02 100644
> --- a/target/linux/ath79/image/Makefile
> +++ b/target/linux/ath79/image/Makefile
> @@ -77,6 +77,7 @@ include ./generic-ubnt.mk
>  endif
>  ifeq ($(SUBTARGET),nand)
>  include ./nand.mk
> +include ./nand-zyxel.mk

At the moment, we have _one_ device inside nand.mk (and still only four aft=
er jeffsf's changes).

I strongly suggest to just put the contents of both common-zyxel.mk and nan=
d-zyxel.mk into nand.mk, and not have one file per definition.

Best

Adrian

--=-=YHHUx6yBfU7jIx=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2vRAoACgkQoNyKO7qx
AnDCRxAAkXvwUwFVCQ2cFBOQg4OQJCoqYQLYPssXPaViDQSAevuAUsz7q2AwJICG
5Fm1eNoMla/PfFwA0SqKheZyYdMzIfqmmay1sFBhVOjZqXvIvGbST0LFtFfMF1yV
P4cw4ZmLTPET2A5TXGvkxpBLW7qNCb3EyOH85IvLv57NhrSgMK/sToDhnzCEd7Ms
ugU91RxKBaXobPW5ykJVBMFb622J5R8tH/1MBjVvD9j2ykINe5EXK6dIm8BKGlSz
gxPR1CtfEkr13gefY60PT1hTt2GvGCqdYw2cVo5Fo1fkplc08iY3yPqrIN7Sx6iY
1bfGmmimigoUAyw6HrqEzUZSoK8y216esQNhlC2T/897GV/lqRIjCoACPKh1Uz1b
Lec95AeV37NS89/TN44/DQMIfR8hgyen2ejlNNmvBTfF7XJjTUUDbXDz13ABc0XO
Lk6vlqVZFJvykBw+2KwhOgDP/oLRp6Ms7AQr9IK6yMD1wjiNFbkjjEe+kXSGVD87
G+KxvFbcsyWXQ7XuAJJOiwHwHBAYFONNNZiZNql2wOnPHSymAScpUSfhOS6Hk+GX
vdoSbvsnfQ5ZSDL3lJhoL4NLmMTkfPk4Oc6lGJ6pJWZu0f1sIVhn0abPgqIES3ht
Wvfzhdz+DY5JIGBBZoSfdt6CmTrDmrV0R0jvxKZkx9+J4X1egyY=
=pIDv
-----END PGP SIGNATURE-----


--=-=YHHUx6yBfU7jIx=-=--



--===============3963325477567012044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3963325477567012044==--


