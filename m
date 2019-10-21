Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE571DED45
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 15:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/PFjyKct/ETPNxEOcN/tpFht0Xau6KHsDtv1BQJXWLg=; b=oOl8guLyr1OWirzx9egBl7By9
	iCJnJYrq0qv6CPcywE7eLmCc6OyUVZWTpp6Dj39HHjmeCK4mHrfjMlnPXRuPw0wx1Oi1l9Kp37iuY
	4ekJuNBrT815wbdFw6vn7XZS9hRhbD3Xrgut1jup4Pu6T6Ov4omXpWXas/uZmnRi/eU1NplKi5QDL
	+WbMLoIfHXD/D2ZJ5uRNqMRCrjSS5ggO+yAm+gJIBi2Da33lYFKCXGFJq324zw+SgNFCYX8pboPyC
	kCwsMd5kkyYZHpmN7/erKshqT+h8R6ZRcSwjJQp14Pqd+OKvtrKbNRlStUSO+VewKajZTmp6FXlQB
	Y+VaGrSZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXXP-0004Nr-Ux; Mon, 21 Oct 2019 13:15:56 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXXC-0004ND-Hf
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 13:15:45 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M8QNs-1iQxNR0Zxw-004RSs; Mon, 21
 Oct 2019 15:15:37 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Andr=C3=A9_Valentin'?= <avalentin@marcant.net>,
 <openwrt-devel@lists.openwrt.org>
References: <20191021123214.2252-1-avalentin@marcant.net>
 <20191021123214.2252-4-avalentin@marcant.net>
In-Reply-To: <20191021123214.2252-4-avalentin@marcant.net>
Date: Mon, 21 Oct 2019 15:15:36 +0200
Message-ID: <011e01d58811$a0d876e0$e28964a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHrSvvojgzfq0dfM1zhMJ9F/aNC5AGXLnnNpyzQKzA=
X-Provags-ID: V03:K1:DnUqMwa6R4s/++X+xUUnkEU8rEMamrJpf6NgqjqZ05enHC+IKSM
 9LALoRWqk586fUQbNpcGLZPR5oFDCvM7lmmxuZKdwnjbbkXv5CAYu8GKayHDywtWjrJ7dg+
 bUPsR+KHzd/FHpPZLVL4TOVXatfSG303MsGiqXbcAZUur4M7B5UBHbG7zQ+Dy5QBs/7XqI5
 HmrbKyLE63v6e69aJTLoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:e4EsVpHIkFk=:1WDu92VqA9wgSAk6k6ZkU8
 EfWjMgv90FsD78LdafLiGzZX4Jo3oOGuSeIT2r6TqOqEjCfV9FkclHfda6KD+eUoiGB3XhoEU
 8doOLUuXcaZlhOVb5aCAKy83J9kdCc1IpRFUzP7uy8LKHNBmNMRMwHpkTexuQ6Tm0WKsq3g1e
 dDTkyXM4qXqifI5Cm3x+i9/taO9G7alIdX2kzLuavaxOvOm+6xd3Vcbn1vKVgKBMOemSdA98j
 qlOIfckVRLOhqeHVDbMGPoKDqv1qOX5WS0Tdm8bjSALBRq8jK30gGkZ36dZkRkaufIoBW3EOH
 1QgX5l1UCC/2OfVCwGYvzVybHERR6ax/IUu+v4Cqd/pYoN4Kee21DA02zSfXWtPGmaRDfgafd
 Bl99LDvcopuDaQwQ6lIvd96yR2VXsbaxdlA6SjrtdP9DW1WqFwdQ/UgGVTaqmj75+Q2c03N62
 uKzHLpMgizuhZlzGD2HZLXmtnjUQhs3kvnuevnCSy0u0Js6VcOmWx75Q7qaYA5wukxZhzERtf
 TdbuORCI7NbsyR9rN0AQwmb/PUF5Qru3VmJEUnpR52BeRvCbWT+MJNat0VnShy6hBxTgEH76s
 6PtFy5nv54sAFynKoTKGKH15deWeH4RS4QRw27eXiY4rYLmGE8NWDRMCHn+c3yP8FdoLuwQcw
 ZGus2Ax0y3qOVuEH6T4dvWJg+dCQOS0fcve/uLchUG26vdTIuPqE7dhgLX6AK9n3NLW2GR9cq
 PYveiROJmuTEjVumPMZpIfXwndxI6HX1HGHig5jxZ3W2p50ch7dyJDtajOAs3C5MnCWesyfVM
 n0sxGzUI1sBqivBPCsobBLenFHi4V4yF/wjqZ7gemYESrK54oMW59uAHBAVI1zb5WFTl0Cn1s
 cz8+d7nbbOR9ZJpT9oLpZdEqWVZIdM69HB6UZ+q/I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_061542_896162_771962DA 
X-CRM114-Status: GOOD (  26.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 3/5] ath79: add support for ZyXEL NBG6716
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
Content-Type: multipart/mixed; boundary="===============1213698489108503602=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1213698489108503602==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=/4yIoRtAFsCUSs=-="

This is a multipart message in MIME format.

--=-=/4yIoRtAFsCUSs=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On B=
ehalf Of Andr=C3=A9 Valentin
> Sent: Montag, 21. Oktober 2019 14:32
> To: openwrt-devel@lists.openwrt.org
> Cc: avalentin@marcant.net
> Subject: [OpenWrt-Devel] [PATCH 3/5] ath79: add support for ZyXEL NBG6716
>=20
> Attention: Kernel partition size has been enlarged to 4MB.
> To switch, you must update to latest ar71xx-nand snapshort and flash the
> image:
> mtd -r write openwrt-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade-4M-Kern=
el.bin firmware
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
> Signed-off-by: Andr=C3=A9 Valentin <avalentin@marcant.net>
> ---
>  .../ath79/base-files/etc/board.d/02_network   |   8 +
>  .../etc/hotplug.d/firmware/10-ath9k-eeprom    |   4 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   4 +
>  .../etc/hotplug.d/ieee80211/00-wifi-migration |   1 +
>  .../ath79/base-files/lib/upgrade/platform.sh  |   3 +
>  target/linux/ath79/dts/qca9557.dtsi           |  18 ++
>  .../linux/ath79/dts/qca9558_zyxel_nbg6716.dts | 302 ++++++++++++++++++
>  target/linux/ath79/image/Makefile             |   2 +
>  target/linux/ath79/image/common-zyxel.mk      |  28 ++
>  target/linux/ath79/image/nand-zyxel.mk        |  20 ++
>  10 files changed, 390 insertions(+)
>  create mode 100644 target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
>  create mode 100644 target/linux/ath79/image/common-zyxel.mk
>  create mode 100644 target/linux/ath79/image/nand-zyxel.mk
>=20
> diff --git a/target/linux/ath79/base-files/etc/board.d/02_network b/targe=
t/linux/ath79/base-files/etc/board.d/02_network
> index fe74bddbf1..575e50c12d 100755
> --- a/target/linux/ath79/base-files/etc/board.d/02_network
> +++ b/target/linux/ath79/base-files/etc/board.d/02_network
> @@ -295,6 +295,10 @@ ath79_setup_interfaces()
>  		ucidef_add_switch "switch0" \
>  			"0@eth0" "5:lan" "1:wan"
>  		;;
> +	zyxel,nbg6716)
> +		ucidef_add_switch "switch0" \
> +			"0@eth0" "1:lan" "2:lan" "3:lan" "4:lan" "5:wan" "6@eth1"
> +		;;

Check sorting.

>  	zbtlink,zbt-wd323|\
>  	xiaomi,mi-router-4q)
>  		ucidef_set_interface_wan "eth1"
> @@ -435,6 +439,10 @@ ath79_setup_macs()
>  	wd,mynet-wifi-rangeextender)
>  		lan_mac=3D$(nvram get et0macaddr)
>  		;;
> +	zyxel,nbg6716)
> +		lan_mac=3D$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +2)
> +		wan_mac=3D$(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr) +3)

You already set MAC addresses in DTS, so you can remove this entire block.

> +		;;
>  	esac
>=20
>  	[ -n "$lan_mac" ] && ucidef_set_interface_macaddr "lan" $lan_mac
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9=
k-eeprom b/target/linux/ath79/base-
> files/etc/hotplug.d/firmware/10-ath9k-eeprom
> index 3240026aec..f8241541cd 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom
> @@ -46,6 +46,10 @@ case "$FIRMWARE" in
>  		caldata_extract "radiocfg" 0x1000 0x440
>  		ath9k_patch_mac $(mtd_get_mac_ascii devdata "wlan24mac")
>  		;;
> +	zyxel,nbg6716)
> +		ath9k_eeprom_extract "art" 0x1000 0x440
> +		ath9k_patch_fw_mac $(mtd_get_mac_ascii u-boot-env ethaddr) 0x2
> +		;;

The function names are outdated. Have you checked whether you can merge thi=
s definition?

>  	*)
>  		caldata_die "board $board is not supported yet"
>  		;;
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath1=
0k-caldata b/target/linux/ath79/base-
> files/etc/hotplug.d/firmware/11-ath10k-caldata
> index 8ab0f6f6ad..8b885864c6 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/firmware/11-ath10k-cald=
ata
> @@ -41,6 +41,10 @@ case "$FIRMWARE" in
>  		caldata_extract "art" 0x5000 0x844
>  		ath10k_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethaddr)=
 +1)
>  		;;
> +	zyxel,nbg6716)
> +		ath10kcal_extract "art" 0x5000 0x844
> +		ath10kcal_patch_mac $(macaddr_add $(mtd_get_mac_ascii u-boot-env ethad=
dr) +1)
> +		;;

The function have been renamed. However, you can merge this with previous n=
ode.

>  	engenius,ews511ap)
>  		caldata_extract "art" 0x5000 0x844
>  		ath10k_patch_mac $(macaddr_add $(cat /sys/class/net/eth0/address) +1)
> diff --git a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wif=
i-migration b/target/linux/ath79/base-
> files/etc/hotplug.d/ieee80211/00-wifi-migration
> index 37a1346fe7..637bfe9ea0 100644
> --- a/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wifi-migra=
tion
> +++ b/target/linux/ath79/base-files/etc/hotplug.d/ieee80211/00-wifi-migra=
tion
> @@ -14,6 +14,7 @@ migrate_wifi_path() {
>  			board=3D$(board_name)
>=20
>  			case "$board" in
> +				zyxel,nbg6716|\

Sorting!

>  				tplink,archer-c7-v1|\
>  				tplink,archer-c7-v2)
>  					path=3D"pci0000:00/0000:00:00.0"
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
> index 0000000000..677aa7aac5
> --- /dev/null
> +++ b/target/linux/ath79/dts/qca9558_zyxel_nbg6716.dts
> @@ -0,0 +1,302 @@
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
> +	};
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
> +                        partition@40000 {
> +                                label =3D "u-boot-env";
> +                                reg =3D <0x040000 0x010000>;
> +                        };
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
> +	mtd-mac-address =3D <&uboot 0x5E2>;

I'd prefer lower-case for the "E".

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
> +	mtd-mac-address =3D <&uboot 0x5E2>;

I'd prefer lower-case for the "E".

> +	mtd-mac-address-increment =3D <1>;
> +	phy-handle =3D <&phy1>;
> +	fixed-link {
> +		speed =3D <1000>;
> +		full-duplex;
> +	};
> +};
> +
> +// This node is required for the Ethernet ports to work correctly.

Checked or copy-paste?

> +&gpio {
> +	status =3D "okay";
> +};
> +
> +&wmac {
> +	status =3D "okay";
> +	mtd-cal-data =3D <&art 0x1000>;
> +	mtd-mac-address =3D <&uboot 0x5E2>;
> +	mtd-mac-address-increment =3D <3>;

You almost convinced, but now I doubt:
If you set up wmac here and ath10k below, then your 10-ath9k-eeprom is bogu=
s?
Despite, the MAC address increments in DTS and in base-files are different.

So, to sort this out correctly, please explain which addresses you find for=
 which interface (lan, wan, 2.4 ghz, 5 ghz) on stock firmware and tell us t=
o which <&uboot 0x5E2> and $(mtd_get_mac_ascii u-boot-env ethaddr) correspo=
nd.

After having looked at this node, it looks to me like you just distributed =
them randomly.

> +};
> +
> +&pcie1 {
> +        status =3D "okay";
> +
> +	wifi@0,0 {
> +		compatible =3D "qcom,ath10k";
> +		reg =3D <0 0 0 0 0>;
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
> diff --git a/target/linux/ath79/image/Makefile b/target/linux/ath79/image=
/Makefile
> index 24768ef5e0..21775b4b48 100644
> --- a/target/linux/ath79/image/Makefile
> +++ b/target/linux/ath79/image/Makefile
> @@ -77,6 +77,8 @@ include ./generic-ubnt.mk
>  endif
>  ifeq ($(SUBTARGET),nand)
>  include ./nand.mk
> +include ./nand-netgear.mk

That seems unrelated. Remove it and do it separately (if it was done by int=
ention.)

Best

Adrian=20

--=-=/4yIoRtAFsCUSs=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2tr3UACgkQoNyKO7qx
AnCr/Q/+NPiK5oKeMS15VVMgmegRmhzrjQdDe7PILMYKVGMlmblqHZMUuPP8c4Lb
VMNSyFVzCarrahlXI1NH5oFRA46vPwcYzNFT+KlPoKCbqFxOopP93695zwlsdref
mcGkWnXIBwSsanOLioMCRFyJKJvtd6vs8O0xqREfzpcyNMl7DeasyYifQQfodkCQ
tzTYeB01025PAWYf2UNaZmy5iUZEtjpFa8bhExcIGNbqGwInXOAGmLQPrKfBrtSA
eyKM0dQd24lpZ9LWeE2DFRjfvuqrGUTWvD1YtTX2yWAqGHjan33dS1wMhxgwfo+6
aHx6iU/FwTO4JC78AkegaKU4dyJ213l4RRc8RwNh0kLAf6+UlVdK1P6avBqOaw98
0lCRT4nD3GR16n7+DYSUxOt60+E5Y2KK1X6BATy7JZmhl0pjXx7kchemXKJnJu6G
31BLzVGPM83KVI0XLQzgmWKLND8LV0wUXj4ahmrVEeCA1Bs4QeyIimr3cIfIFmfb
E+qbVtjjplaq140hFiqDflh8tscI7dhKDC8bHLwsOpCjDp9aGGRIIVU+dxhdP66b
hkvlH5DmDCln6VxWfIH08UlMUe4IaEoDJXTWIEQWdB0sC0eYlX0aNbmyWTlIHfwl
fDdFpDbPerGiOrBdR/DoEE2usuYx7ot0is8L+8CUX3pnUl71FCY=
=K5EH
-----END PGP SIGNATURE-----


--=-=/4yIoRtAFsCUSs=-=--



--===============1213698489108503602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1213698489108503602==--


